uint64_t OSLogInterpolation.appendInterpolation(_:)(uint64_t (*a1)(uint64_t))
{
  v2 = sub_1004A49D4();
  __chkstk_darwin(v2 - 8);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1004A48E4();
  __chkstk_darwin(v5 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  v9 = a1(v8);
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = swift_allocObject();
  v16[2] = v9;
  v16[3] = v11;
  v16[4] = v13;
  v16[5] = v15;
  sub_1004A48B4();
  sub_1000EADE8();
  sub_1004A4964();
  sub_1004390D4(v4, &type metadata accessor for OSLogStringAlignment);
  sub_1004390D4(v7, &type metadata accessor for OSLogPrivacy);

  v20._countAndFlagsBits = sub_1004A58F4("/", 1uLL, 1);
  sub_1004A49B4(v20);

  v17 = swift_allocObject();
  v17[2] = v9;
  v17[3] = v11;
  v17[4] = v13;
  v17[5] = v15;
  sub_1004A48B4();
  sub_1000EADE8();
  sub_1004A4964();
  sub_1004390D4(v4, &type metadata accessor for OSLogStringAlignment);
  sub_1004390D4(v7, &type metadata accessor for OSLogPrivacy);
}

uint64_t sub_10043A7CC()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10043A83C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = sub_1004A49D4();
  __chkstk_darwin(v10 - 8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1004A48E4();
  __chkstk_darwin(v13 - 8);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19._countAndFlagsBits = sub_1004A58F4(a3, 1uLL, 1);
  sub_1004A49B4(v19);

  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  sub_1004A48B4();
  sub_1000EADE8();
  sub_1004A4964();
  sub_1004390D4(v12, &type metadata accessor for OSLogStringAlignment);
  sub_1004390D4(v15, &type metadata accessor for OSLogPrivacy);

  v20._countAndFlagsBits = sub_1004A58F4(a6, 1uLL, 1);
  sub_1004A49B4(v20);
}

uint64_t sub_10043AA68(uint64_t (*a1)(void))
{
  v1 = a1();
  v2 = *(v1 + 16);
  if (v2)
  {
    sub_100134BC4(0, v2, 0);
    v3 = (v1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v7 = _swiftEmptyArrayStorage[2];
      v6 = _swiftEmptyArrayStorage[3];

      if (v7 >= v6 >> 1)
      {
        sub_100134BC4((v6 > 1), v7 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v7 + 1;
      v8 = &_swiftEmptyArrayStorage[2 * v7];
      v8[4] = v5;
      v8[5] = v4;
      v3 += 2;
      --v2;
    }

    while (v2);
  }

  sub_10000C9C0(&unk_1005DA9A0, &unk_1004CF770);
  sub_100031CDC();
  v9 = sub_1004A5614();

  return v9;
}

char *sub_10043ABD4()
{
  v1 = (*(v0 + 16))();
  v2 = ResponseTextCode.debugDescription.getter(v1);
  sub_100011160(v1);
  return v2;
}

uint64_t sub_10043AC90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1004A48C4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1004A48E4();
  __chkstk_darwin(v10 - 8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1004A49D4();
  __chkstk_darwin(v13 - 8);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);

  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  sub_1004A49C4();
  (*(v7 + 104))(v9, enum case for OSLogPrivacy._MailMask.mailbox(_:), v6);
  sub_1004A48A4();
  (*(v7 + 8))(v9, v6);
  sub_1004A4964();
  sub_1004390D4(v12, &type metadata accessor for OSLogPrivacy);
  sub_1004390D4(v15, &type metadata accessor for OSLogStringAlignment);
}

uint64_t sub_10043AEA8()
{
  if ((*(v0 + 16))())
  {
    return sub_1004A5824();
  }

  else
  {
    return 8425698;
  }
}

NIOIMAPCore2::EngineMailboxLoggerID __swiftcall EngineMailboxLoggerID.init(engine:counter:mailbox:)(Swift::UInt8 engine, NIOIMAPCore2::MailboxLoggingCounter counter, NIOIMAPCore2::MailboxName mailbox)
{
  v3 = engine | (*&counter << 16);
  rawValue = mailbox.bytes._rawValue;
  value = mailbox._hashValue._value;
  result.mailbox.bytes._rawValue = rawValue;
  result.mailbox._hashValue._value = value;
  result.engine = v3;
  result.counter = *(&v3 + 2);
  return result;
}

uint64_t sub_10043B560()
{
  v1 = (*(v0 + 16))();

  return v1;
}

uint64_t sub_10043B598()
{
  v1 = (*(v0 + 16))();

  return HIWORD(v1);
}

uint64_t sub_10043BD54()
{
  v1 = (*(v0 + 16))();

  return v1;
}

Swift::Int MailboxLoggingCounter.hashValue.getter(uint64_t a1)
{
  v1 = a1;
  sub_1004A6E94();
  sub_1004A6ED4(v1);
  return sub_1004A6F14();
}

unint64_t sub_10043BE90()
{
  result = qword_1005DCAA0;
  if (!qword_1005DCAA0)
  {
    result = swift_getWitnessTable("Y\r\b", &type metadata for MailboxLoggingCounter, v0, v1);
    atomic_store(result, &qword_1005DCAA0);
  }

  return result;
}

uint64_t sub_10043C008(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE800000000000000;
    v12 = 0xE700000000000000;
    v13 = 0x5458454E444955;
    if (a1 != 2)
    {
      v13 = 0x44494C4156444955;
      v12 = 0xEB00000000595449;
    }

    v14 = 0x544E45434552;
    if (a1)
    {
      v11 = 0xE600000000000000;
    }

    else
    {
      v14 = 0x534547415353454DLL;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v13;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v3 = 0x4D54534548474948;
    v4 = 0xED0000514553444FLL;
    v5 = 0x494C444E45505041;
    v6 = 0xEB0000000054494DLL;
    if (a1 != 7)
    {
      v5 = 0x49584F424C49414DLL;
      v6 = 0xE900000000000044;
    }

    if (a1 != 6)
    {
      v3 = v5;
      v4 = v6;
    }

    v7 = 0xE600000000000000;
    v8 = 0x4E4545534E55;
    if (a1 != 4)
    {
      v8 = 1163544915;
      v7 = 0xE400000000000000;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v3;
    }

    if (v2 <= 5)
    {
      v10 = v7;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 != 2)
      {
        v15 = 0x44494C4156444955;
        v16 = 5854281;
LABEL_45:
        v17 = v16 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
        if (v9 != v15)
        {
          goto LABEL_52;
        }

        goto LABEL_50;
      }

      v17 = 0xE700000000000000;
      if (v9 != 0x5458454E444955)
      {
        goto LABEL_52;
      }
    }

    else if (a2)
    {
      v17 = 0xE600000000000000;
      if (v9 != 0x544E45434552)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v17 = 0xE800000000000000;
      if (v9 != 0x534547415353454DLL)
      {
        goto LABEL_52;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v17 = 0xE600000000000000;
      if (v9 != 0x4E4545534E55)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v17 = 0xE400000000000000;
      if (v9 != 1163544915)
      {
LABEL_52:
        v18 = sub_1004A6D34();
        goto LABEL_53;
      }
    }
  }

  else
  {
    if (a2 != 6)
    {
      if (a2 != 7)
      {
        v17 = 0xE900000000000044;
        if (v9 != 0x49584F424C49414DLL)
        {
          goto LABEL_52;
        }

        goto LABEL_50;
      }

      v15 = 0x494C444E45505041;
      v16 = 5523789;
      goto LABEL_45;
    }

    v17 = 0xED0000514553444FLL;
    if (v9 != 0x4D54534548474948)
    {
      goto LABEL_52;
    }
  }

LABEL_50:
  if (v10 != v17)
  {
    goto LABEL_52;
  }

  v18 = 1;
LABEL_53:

  return v18 & 1;
}

uint64_t sub_10043C2DC(uint64_t a1, unsigned __int8 a2)
{
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_10043C43C(uint64_t result)
{
  v2 = v1;
  v3 = result;
  v20 = result;
  v4 = *(result + 16);
  if (v4)
  {
    v5 = *(v1 + 20);
    result = sub_1002F178C(0, 0xE000000000000000, v1 + 8, v5);
    if (v6)
    {
      v7._countAndFlagsBits = 0;
      v7._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v7, v5);
    }

    v8 = result;
    v9 = *(v2 + 20);
    v10 = __CFADD__(v9, result);
    v11 = v9 + result;
    if (v10)
    {
      goto LABEL_17;
    }

    *(v2 + 20) = v11;
  }

  else
  {
    v8 = 0;
  }

  __chkstk_darwin(result);
  v19[2] = sub_10043E1C0;
  v19[3] = 0;
  v19[4] = v2;
  v19[5] = &v20;
  v19[6] = 32;
  v19[7] = 0xE100000000000000;
  result = sub_100452370(0, sub_10043E1A8, v19, v3);
  v12 = v8 + result;
  if (__OFADD__(v8, result))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (!v4)
  {
    result += v8;
    return result;
  }

  v13 = *(v2 + 20);
  result = sub_1002F178C(0, 0xE000000000000000, v2 + 8, v13);
  if (v14)
  {
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v15, v13);
  }

  v16 = *(v2 + 20);
  v10 = __CFADD__(v16, result);
  v17 = v16 + result;
  if (v10)
  {
    goto LABEL_18;
  }

  *(v2 + 20) = v17;
  v18 = __OFADD__(v12, result);
  result += v12;
  if (v18)
  {
    __break(1u);
    goto LABEL_16;
  }

  return result;
}

void __swiftcall MailboxStatus.init(messageCount:recentCount:nextUID:uidValidity:unseenCount:size:highestModificationSequence:appendLimit:mailboxID:)(NIOIMAPCore2::MailboxStatus *__return_ptr retstr, Swift::Int_optional messageCount, Swift::Int_optional recentCount, NIOIMAPCore2::UID_optional nextUID, NIOIMAPCore2::UIDValidity_optional uidValidity, Swift::Int_optional unseenCount, Swift::Int_optional size, NIOIMAPCore2::ModificationSequenceValue_optional highestModificationSequence, Swift::Int_optional appendLimit, NIOIMAPCore2::MailboxID_optional mailboxID)
{
  v15[184] = messageCount.is_nil;
  v15[176] = recentCount.is_nil;
  v15[168] = nextUID.is_nil;
  v15[160] = uidValidity.is_nil;
  v15[152] = unseenCount.is_nil;
  v15[144] = size.is_nil;
  v15[136] = highestModificationSequence.is_nil;
  v15[128] = appendLimit.is_nil;
  *&v16 = messageCount.value;
  BYTE8(v16) = messageCount.is_nil;
  *&v17 = recentCount.value;
  BYTE8(v17) = recentCount.is_nil;
  HIDWORD(v17) = nextUID.value.rawValue;
  LOBYTE(v18) = nextUID.is_nil;
  DWORD1(v18) = uidValidity.value.rawValue;
  BYTE8(v18) = uidValidity.is_nil;
  *&v19 = unseenCount.value;
  BYTE8(v19) = unseenCount.is_nil;
  v20.objectID.rawValue._countAndFlagsBits = size.value;
  LOBYTE(v20.objectID.rawValue._object) = size.is_nil;
  *&v21 = highestModificationSequence.value.value;
  BYTE8(v21) = highestModificationSequence.is_nil;
  *&v22 = appendLimit.value;
  BYTE8(v22) = appendLimit.is_nil;
  value = mailboxID.value;
  v24 = messageCount.value;
  is_nil = messageCount.is_nil;
  v26 = recentCount.value;
  v27 = recentCount.is_nil;
  rawValue = nextUID.value.rawValue;
  v29 = nextUID.is_nil;
  v30 = uidValidity.value.rawValue;
  v31 = uidValidity.is_nil;
  v32 = unseenCount.value;
  v33 = unseenCount.is_nil;
  v34 = size.value;
  v35 = size.is_nil;
  v36 = highestModificationSequence.value.value;
  v37 = highestModificationSequence.is_nil;
  v38 = appendLimit.value;
  v39 = appendLimit.is_nil;
  countAndFlagsBits = mailboxID.value.objectID.rawValue._countAndFlagsBits;
  object = mailboxID.value.objectID.rawValue._object;
  sub_1000CB8B8(&v16, v15);
  sub_10009A0FC(&v24);
  v11 = v21;
  retstr->mailboxID.value = v20;
  *&retstr->mailboxID.is_nil = v11;
  v12 = value;
  *(&retstr[1].recentCount.value + 6) = v22;
  *(&retstr[1].unseenCount.value + 3) = v12;
  v13 = v17;
  *&retstr->messageCount.value = v16;
  *(&retstr->recentCount.value + 7) = v13;
  v14 = v19;
  *(&retstr->unseenCount.value + 4) = v18;
  *(&retstr->highestModificationSequence.value.value + 2) = v14;
}

uint64_t MailboxAttribute.rawValue.getter(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x534547415353454DLL;
    v6 = 0x5458454E444955;
    if (a1 != 2)
    {
      v6 = 0x44494C4156444955;
    }

    if (a1)
    {
      v5 = 0x544E45434552;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x4D54534548474948;
    v2 = 0x494C444E45505041;
    if (a1 != 7)
    {
      v2 = 0x49584F424C49414DLL;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x4E4545534E55;
    if (a1 != 4)
    {
      v3 = 1163544915;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

Swift::Int sub_10043C850()
{
  v1 = *v0;
  sub_1004A6E94();
  sub_10043C2DC(v3, v1);
  return sub_1004A6F14();
}

Swift::Int sub_10043C8A0(uint64_t a1)
{
  v2 = *v1;
  sub_1004A6E94();
  sub_10043C2DC(v4, v2);
  return sub_1004A6F14();
}

unint64_t sub_10043C8E4@<X0>(Swift::String *a1@<X0>, NIOIMAPCore2::MailboxAttribute_optional *a2@<X8>)
{
  result = _s12NIOIMAPCore216MailboxAttributeO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

uint64_t sub_10043C914@<X0>(uint64_t *a1@<X8>)
{
  result = MailboxAttribute.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t SearchCorrelator.uidValidity.setter(uint64_t result)
{
  *(v1 + 28) = result;
  *(v1 + 32) = BYTE4(result) & 1;
  return result;
}

uint64_t MailboxStatus.uidValidity.setter(uint64_t result)
{
  *(v1 + 36) = result;
  *(v1 + 40) = BYTE4(result) & 1;
  return result;
}

uint64_t MailboxStatus.size.setter(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

uint64_t MailboxStatus.highestModificationSequence.setter(uint64_t result, char a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2 & 1;
  return result;
}

uint64_t MailboxStatus.appendLimit.setter(uint64_t result, char a2)
{
  *(v2 + 96) = result;
  *(v2 + 104) = a2 & 1;
  return result;
}

void MailboxStatus.hash(into:)(uint64_t a1)
{
  if (*(v1 + 8) == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    v2 = *v1;
    sub_1004A6EC4(1u);
    sub_1004A6EB4(v2);
  }

  if (*(v1 + 24) == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    v3 = *(v1 + 16);
    sub_1004A6EC4(1u);
    sub_1004A6EB4(v3);
  }

  if (*(v1 + 32) == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    v4 = *(v1 + 28);
    sub_1004A6EC4(1u);
    sub_1004A6EE4(v4);
  }

  if (*(v1 + 40) == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    v5 = *(v1 + 36);
    sub_1004A6EC4(1u);
    sub_1004A6EE4(v5);
  }

  if (*(v1 + 56) == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    v6 = *(v1 + 48);
    sub_1004A6EC4(1u);
    sub_1004A6EB4(v6);
  }

  if (*(v1 + 72) == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    v7 = *(v1 + 64);
    sub_1004A6EC4(1u);
    sub_1004A6EB4(v7);
  }

  if (*(v1 + 88) == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    v8 = *(v1 + 80);
    sub_1004A6EC4(1u);
    sub_1004A6EF4(v8);
  }

  if (*(v1 + 104) != 1)
  {
    v9 = *(v1 + 96);
    sub_1004A6EC4(1u);
    sub_1004A6EB4(v9);
    if (*(v1 + 120))
    {
      goto LABEL_24;
    }

LABEL_28:
    sub_1004A6EC4(0);
    return;
  }

  sub_1004A6EC4(0);
  if (!*(v1 + 120))
  {
    goto LABEL_28;
  }

LABEL_24:
  sub_1004A6EC4(1u);

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

Swift::Int MailboxStatus.hashValue.getter()
{
  sub_1004A6E94();
  MailboxStatus.hash(into:)(v1);
  return sub_1004A6F14();
}

Swift::Int sub_10043CC70(uint64_t a1)
{
  sub_1004A6E94();
  MailboxStatus.hash(into:)(v2);
  return sub_1004A6F14();
}

BOOL sub_10043CCAC(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[7];
  v13[6] = a1[6];
  v13[7] = v3;
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[3];
  v14[2] = a2[2];
  v14[3] = v8;
  v14[0] = v6;
  v14[1] = v7;
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[7];
  v14[6] = a2[6];
  v14[7] = v11;
  v14[4] = v9;
  v14[5] = v10;
  return _s12NIOIMAPCore213MailboxStatusV23__derived_struct_equalsySbAC_ACtFZ_0(v13, v14);
}

unint64_t sub_10043CD20(unsigned __int8 a1)
{
  v2 = v1;
  if (a1 <= 3u)
  {
    v11 = 0xE800000000000000;
    v12 = 0x534547415353454DLL;
    v13 = 0xE700000000000000;
    v14 = 0x5458454E444955;
    if (a1 != 2)
    {
      v14 = 0x44494C4156444955;
      v13 = 0xEB00000000595449;
    }

    if (a1)
    {
      v12 = 0x544E45434552;
      v11 = 0xE600000000000000;
    }

    if (a1 <= 1u)
    {
      v9 = v12;
    }

    else
    {
      v9 = v14;
    }

    if (a1 <= 1u)
    {
      v10 = v11;
    }

    else
    {
      v10 = v13;
    }
  }

  else
  {
    v3 = 0xED0000514553444FLL;
    v4 = 0x4D54534548474948;
    v5 = 0xEB0000000054494DLL;
    v6 = 0x494C444E45505041;
    if (a1 != 7)
    {
      v6 = 0x49584F424C49414DLL;
      v5 = 0xE900000000000044;
    }

    if (a1 != 6)
    {
      v4 = v6;
      v3 = v5;
    }

    v7 = 0xE600000000000000;
    v8 = 0x4E4545534E55;
    if (a1 != 4)
    {
      v8 = 1163544915;
      v7 = 0xE400000000000000;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v4;
    }

    if (a1 <= 5u)
    {
      v10 = v7;
    }

    else
    {
      v10 = v3;
    }
  }

  v15 = *(v1 + 20);
  v16 = sub_1002F178C(v9, v10, v1 + 8, v15);
  if (v17)
  {
    v18._countAndFlagsBits = v9;
    v18._object = v10;
    v16 = ByteBuffer._setStringSlowpath(_:at:)(v18, v15);
  }

  v19 = v16;

  v21 = *(v2 + 20);
  v22 = __CFADD__(v21, v19);
  v23 = v21 + v19;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 20) = v23;
    return v19;
  }

  return result;
}

uint64_t sub_10043CED8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 20);
  result = sub_1002F178C(0x20535554415453uLL, 0xE700000000000000, v1 + 8, v4);
  if (v6)
  {
    v7._countAndFlagsBits = 0x20535554415453;
    v7._object = 0xE700000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = result;
  v9 = *(v1 + 20);
  v10 = (v9 + result);
  if (__CFADD__(v9, result))
  {
    goto LABEL_28;
  }

  *(v1 + 20) = v10;
  v36 = a1;
  v11 = *(a1 + 16);
  if (v11)
  {
    result = sub_1002F178C(0, 0xE000000000000000, v1 + 8, v10);
    if (v12)
    {
      v13._countAndFlagsBits = 0;
      v13._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v13, v10);
    }

    v14 = result;
    v15 = *(v1 + 20);
    LODWORD(v10) = v15 + result;
    if (__CFADD__(v15, result))
    {
      goto LABEL_35;
    }

    *(v1 + 20) = v10;
  }

  else
  {
    v14 = 0;
  }

  result = sub_1002F178C(0x28uLL, 0xE100000000000000, v1 + 8, v10);
  if (v16)
  {
    v17._countAndFlagsBits = 40;
    v17._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v17, v10);
  }

  v18 = *(v1 + 20);
  v19 = __CFADD__(v18, result);
  v20 = v18 + result;
  if (v19)
  {
    goto LABEL_29;
  }

  *(v1 + 20) = v20;
  v21 = v14 + result;
  if (__OFADD__(v14, result))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  __chkstk_darwin(result);
  v35[2] = sub_10043E1C0;
  v35[3] = 0;
  v35[4] = v2;
  v35[5] = &v36;
  v35[6] = 32;
  v35[7] = 0xE100000000000000;
  result = sub_100452370(0, sub_10043E138, v35, a1);
  v22 = v21 + result;
  if (__OFADD__(v21, result))
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v23 = *(v2 + 20);
  result = sub_1002F178C(0x29uLL, 0xE100000000000000, v2 + 8, v23);
  if (v24)
  {
    v25._countAndFlagsBits = 41;
    v25._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v25, v23);
  }

  v26 = *(v2 + 20);
  v27 = (v26 + result);
  if (__CFADD__(v26, result))
  {
    goto LABEL_32;
  }

  *(v2 + 20) = v27;
  v28 = __OFADD__(v22, result);
  v29 = v22 + result;
  if (v28)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (!v11)
  {
    v34 = v29;
    goto LABEL_24;
  }

  result = sub_1002F178C(0, 0xE000000000000000, v2 + 8, v27);
  if (v30)
  {
    v31._countAndFlagsBits = 0;
    v31._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v31, v27);
  }

  v32 = *(v2 + 20);
  v19 = __CFADD__(v32, result);
  v33 = v32 + result;
  if (v19)
  {
    goto LABEL_36;
  }

  *(v2 + 20) = v33;
  v34 = v29 + result;
  if (__OFADD__(v29, result))
  {
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

LABEL_24:
  result = v8 + v34;
  if (__OFADD__(v8, v34))
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  return result;
}

uint64_t sub_10043D17C(__int128 *a1)
{
  v2 = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = _swiftEmptyArrayStorage;
  KeyPath = swift_getKeyPath();
  sub_10043D558(KeyPath, 0x534547415353454DLL, 0xE800000000000000, a1, v4);

  v6 = swift_getKeyPath();
  sub_10043D558(v6, 0x544E45434552, 0xE600000000000000, a1, v4);

  v7 = swift_getKeyPath();
  sub_10043D6F0(v7, 0x5458454E444955, 0xE700000000000000, a1, v4);

  v8 = swift_getKeyPath();
  sub_10043D6F0(v8, 0x44494C4156444955, 0xEB00000000595449, a1, v4);

  v9 = swift_getKeyPath();
  sub_10043D558(v9, 0x4E4545534E55, 0xE600000000000000, a1, v4);

  v10 = swift_getKeyPath();
  sub_10043D558(v10, 1163544915, 0xE400000000000000, a1, v4);

  v11 = swift_getKeyPath();
  sub_10043D88C(v11, 0x4D54534548474948, 0xED0000514553444FLL, a1, v4);

  v12 = swift_getKeyPath();
  sub_10043D558(v12, 0x494C444E45505041, 0xEB0000000054494DLL, a1, v4);

  v13 = swift_getKeyPath();
  sub_10043DA24(v13, 0x49584F424C49414DLL, 0xE900000000000044, a1, v4);

  result = swift_beginAccess();
  v32 = *(v4 + 16);
  v15 = v32;
  if (*(v32 + 16))
  {
    v16 = *(v1 + 20);
    result = sub_1002F178C(0, 0xE000000000000000, v1 + 8, v16);
    if (v17)
    {
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v18, v16);
    }

    v19 = result;
    v20 = *(v2 + 20);
    v21 = __CFADD__(v20, result);
    v22 = v20 + result;
    if (v21)
    {
      goto LABEL_17;
    }

    *(v2 + 20) = v22;
  }

  else
  {
    v19 = 0;
  }

  __chkstk_darwin(result);
  v31[2] = sub_10043DBC4;
  v31[3] = 0;
  v31[4] = v2;
  v31[5] = &v32;
  v31[6] = 32;
  v31[7] = 0xE100000000000000;
  result = sub_100452DD0(0, sub_10043E114, v31, v15);
  v23 = v19 + result;
  if (__OFADD__(v19, result))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (!*(v15 + 16))
  {

    return v23;
  }

  v24 = *(v2 + 20);
  v25 = sub_1002F178C(0, 0xE000000000000000, v2 + 8, v24);
  if (v26)
  {
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    v25 = ByteBuffer._setStringSlowpath(_:at:)(v27, v24);
  }

  v28 = v25;

  v29 = *(v2 + 20);
  v21 = __CFADD__(v29, v28);
  v30 = v29 + v28;
  if (v21)
  {
    goto LABEL_18;
  }

  *(v2 + 20) = v30;
  result = v23 + v28;
  if (__OFADD__(v23, v28))
  {
    __break(1u);
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_10043D558(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v19 = a4[4];
  v20 = a4[5];
  v21 = a4[6];
  v22 = a4[7];
  v15 = *a4;
  v16 = a4[1];
  v17 = a4[2];
  v18 = a4[3];
  sub_1000CB8B8(a4, v23);
  swift_getAtKeyPath();
  v23[4] = v19;
  v23[5] = v20;
  v23[6] = v21;
  v23[7] = v22;
  v23[0] = v15;
  v23[1] = v16;
  v23[2] = v17;
  v23[3] = v18;
  result = sub_10009A0FC(v23);
  if ((v14 & 1) == 0)
  {

    sub_1004A6934();
    swift_beginAccess();
    v9 = *(a5 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a5 + 16) = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_100461F9C(0, v9[2] + 1, 1, v9);
      *(a5 + 16) = v9;
    }

    v12 = v9[2];
    v11 = v9[3];
    if (v12 >= v11 >> 1)
    {
      v9 = sub_100461F9C((v11 > 1), v12 + 1, 1, v9);
    }

    v9[2] = v12 + 1;
    v13 = &v9[4 * v12];
    v13[4] = a2;
    v13[5] = a3;
    v13[6] = 0;
    v13[7] = 0xE000000000000000;
    *(a5 + 16) = v9;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_10043D6F0(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v19 = a4[4];
  v20 = a4[5];
  v21 = a4[6];
  v22 = a4[7];
  v15 = *a4;
  v16 = a4[1];
  v17 = a4[2];
  v18 = a4[3];
  sub_1000CB8B8(a4, v23);
  swift_getAtKeyPath();
  v23[4] = v19;
  v23[5] = v20;
  v23[6] = v21;
  v23[7] = v22;
  v23[0] = v15;
  v23[1] = v16;
  v23[2] = v17;
  v23[3] = v18;
  result = sub_10009A0FC(v23);
  if ((v14 & 1) == 0)
  {

    sub_1004A6934();
    swift_beginAccess();
    v9 = *(a5 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a5 + 16) = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_100461F9C(0, v9[2] + 1, 1, v9);
      *(a5 + 16) = v9;
    }

    v12 = v9[2];
    v11 = v9[3];
    if (v12 >= v11 >> 1)
    {
      v9 = sub_100461F9C((v11 > 1), v12 + 1, 1, v9);
    }

    v9[2] = v12 + 1;
    v13 = &v9[4 * v12];
    v13[4] = a2;
    v13[5] = a3;
    v13[6] = 0;
    v13[7] = 0xE000000000000000;
    *(a5 + 16) = v9;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_10043D88C(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v19 = a4[4];
  v20 = a4[5];
  v21 = a4[6];
  v22 = a4[7];
  v15 = *a4;
  v16 = a4[1];
  v17 = a4[2];
  v18 = a4[3];
  sub_1000CB8B8(a4, v23);
  swift_getAtKeyPath();
  v23[4] = v19;
  v23[5] = v20;
  v23[6] = v21;
  v23[7] = v22;
  v23[0] = v15;
  v23[1] = v16;
  v23[2] = v17;
  v23[3] = v18;
  result = sub_10009A0FC(v23);
  if ((v14 & 1) == 0)
  {

    sub_1004A6934();
    swift_beginAccess();
    v9 = *(a5 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a5 + 16) = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_100461F9C(0, v9[2] + 1, 1, v9);
      *(a5 + 16) = v9;
    }

    v12 = v9[2];
    v11 = v9[3];
    if (v12 >= v11 >> 1)
    {
      v9 = sub_100461F9C((v11 > 1), v12 + 1, 1, v9);
    }

    v9[2] = v12 + 1;
    v13 = &v9[4 * v12];
    v13[4] = a2;
    v13[5] = a3;
    v13[6] = 0;
    v13[7] = 0xE000000000000000;
    *(a5 + 16) = v9;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_10043DA24(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v19 = a4[4];
  v20 = a4[5];
  v21 = a4[6];
  v22 = a4[7];
  v15 = *a4;
  v16 = a4[1];
  v17 = a4[2];
  v18 = a4[3];
  sub_1000CB8B8(a4, v23);
  swift_getAtKeyPath();
  v23[4] = v19;
  v23[5] = v20;
  v23[6] = v21;
  v23[7] = v22;
  v23[0] = v15;
  v23[1] = v16;
  v23[2] = v17;
  v23[3] = v18;
  result = sub_10009A0FC(v23);
  if (v14)
  {

    sub_1004A6934();
    swift_beginAccess();
    v9 = *(a5 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a5 + 16) = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_100461F9C(0, v9[2] + 1, 1, v9);
      *(a5 + 16) = v9;
    }

    v12 = v9[2];
    v11 = v9[3];
    if (v12 >= v11 >> 1)
    {
      v9 = sub_100461F9C((v11 > 1), v12 + 1, 1, v9);
    }

    v9[2] = v12 + 1;
    v13 = &v9[4 * v12];
    v13[4] = a2;
    v13[5] = a3;
    v13[6] = 0;
    v13[7] = 0xE000000000000000;
    *(a5 + 16) = v9;
    swift_endAccess();
  }

  return result;
}

unint64_t sub_10043DBC4(Swift::String *a1, uint64_t a2)
{
  countAndFlagsBits = a1[1]._countAndFlagsBits;
  object = a1[1]._object;
  v13 = *a1;

  v14._countAndFlagsBits = 32;
  v14._object = 0xE100000000000000;
  sub_1004A5994(v14);
  v15._countAndFlagsBits = countAndFlagsBits;
  v15._object = object;
  sub_1004A5994(v15);
  v5 = *(a2 + 20);
  v6 = sub_1002F178C(v13._countAndFlagsBits, v13._object, a2 + 8, v5);
  if (v7)
  {
    v6 = ByteBuffer._setStringSlowpath(_:at:)(v13, v5);
  }

  v8 = v6;

  v10 = *(a2 + 20);
  v11 = __CFADD__(v10, v8);
  v12 = v10 + v8;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 20) = v12;
    return v8;
  }

  return result;
}

uint64_t sub_10043DC8C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void *, uint64_t, __n128)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X8>, unint64_t a8@<X6>, void *a9@<X7>)
{
  v11 = *a1;
  v12 = *(a2 + 32);
  v13 = *a6;
  v14 = *(a2 + 16);
  v16[0] = *a2;
  v16[1] = v14;
  v17 = v12;
  result = sub_100492644(v11, v16, a3, a4, a5, v13, a8, a9);
  if (!v9)
  {
    *a7 = result;
  }

  return result;
}

BOOL _s12NIOIMAPCore213MailboxStatusV23__derived_struct_equalsySbAC_ACtFZ_0(_BOOL8 result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(result + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*result != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v3 = *(a2 + 24);
  if (*(result + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(result + 16) != *(a2 + 16))
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  v4 = *(a2 + 32);
  if (*(result + 32))
  {
    if (!*(a2 + 32))
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 28) != *(result + 28))
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v5 = *(a2 + 40);
  if (*(result + 40))
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (*(result + 36) != *(a2 + 36))
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  v6 = *(a2 + 56);
  if (*(result + 56))
  {
    if (!*(a2 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (*(result + 48) != *(a2 + 48))
    {
      v6 = 1;
    }

    if (v6)
    {
      return 0;
    }
  }

  v7 = *(a2 + 72);
  if (*(result + 72))
  {
    if (!*(a2 + 72))
    {
      return 0;
    }
  }

  else
  {
    if (*(result + 64) != *(a2 + 64))
    {
      v7 = 1;
    }

    if (v7)
    {
      return 0;
    }
  }

  if (*(result + 88))
  {
    if ((*(a2 + 88) & 1) == 0)
    {
      return 0;
    }

LABEL_43:
    v10 = *(a2 + 104);
    if (*(result + 104))
    {
      if (!*(a2 + 104))
      {
        return 0;
      }
    }

    else
    {
      if (*(result + 96) != *(a2 + 96))
      {
        v10 = 1;
      }

      if (v10)
      {
        return 0;
      }
    }

    v11 = *(result + 120);
    v12 = *(a2 + 120);
    if (v11)
    {
      return v12 && (*(result + 112) == *(a2 + 112) && v11 == v12 || (sub_1004A6D34() & 1) != 0);
    }

    return !v12;
  }

  if (*(a2 + 88))
  {
    return 0;
  }

  v8 = *(result + 80);
  v9 = *(a2 + 80);
  if (((v9 | v8) & 0x8000000000000000) == 0)
  {
    if (v9 != v8)
    {
      return 0;
    }

    goto LABEL_43;
  }

  __break(1u);
  return result;
}

unint64_t _s12NIOIMAPCore216MailboxAttributeO8rawValueACSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005BB688;
  v6._object = a2;
  v4 = sub_1004A6AF4(v3, v6);

  if (v4 >= 9)
  {
    return 9;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10043DED8()
{
  result = qword_1005DCAA8;
  if (!qword_1005DCAA8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MailboxAttribute, &type metadata for MailboxAttribute, v0, v1);
    atomic_store(result, &qword_1005DCAA8);
  }

  return result;
}

unint64_t sub_10043DF30()
{
  result = qword_1005DCAB0;
  if (!qword_1005DCAB0)
  {
    v3 = sub_10000DEFC(&qword_1005D7E20, &qword_100506180);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v3, v0, v1);
    atomic_store(result, &qword_1005DCAB0);
  }

  return result;
}

unint64_t sub_10043DF98()
{
  result = qword_1005DCAB8;
  if (!qword_1005DCAB8)
  {
    result = swift_getWitnessTable("i\v\b", &type metadata for MailboxStatus, v0, v1);
    atomic_store(result, &qword_1005DCAB8);
  }

  return result;
}

uint64_t sub_10043DFFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 128))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 120);
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

uint64_t sub_10043E058(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 0;
    }

    if (a2)
    {
      *(result + 120) = a2;
    }
  }

  return result;
}

uint64_t sub_10043E0DC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10043E150@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1004918F8(*a1, *a2, *(a2 + 8), *(v3 + 16), *(v3 + 24), *(v3 + 32), **(v3 + 40), *(v3 + 48), *(v3 + 56));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

void MailboxData.hash(into:)(uint64_t a1)
{
  v3 = v1[7];
  v39[6] = v1[6];
  v39[7] = v3;
  v39[8] = v1[8];
  v4 = v1[3];
  v39[2] = v1[2];
  v39[3] = v4;
  v5 = v1[5];
  v39[4] = v1[4];
  v39[5] = v5;
  v6 = v1[1];
  v39[0] = *v1;
  v39[1] = v6;
  v7 = sub_1003045D0(v39);
  v8 = sub_1003045DC(v39);
  if (v7 > 4)
  {
    if (v7 <= 7)
    {
      if (v7 == 5)
      {
        v28 = *(v8 + 8);
        v29 = *(v8 + 96);
        v44 = *(v8 + 80);
        v45 = v29;
        v30 = *(v8 + 128);
        v46 = *(v8 + 112);
        v47 = v30;
        v31 = *(v8 + 32);
        v40 = *(v8 + 16);
        v41 = v31;
        v32 = *(v8 + 64);
        v42 = *(v8 + 48);
        v43 = v32;
        sub_1004A6EB4(5uLL);
        sub_1004A6EB4(v28 | (v28 << 32));
        MailboxStatus.hash(into:)(a1);
      }

      else
      {
        v9 = *v8;
        if (v7 == 6)
        {
          v10 = 6;
        }

        else
        {
          v10 = 7;
        }

        sub_1004A6EB4(v10);
        sub_1004A6EB4(v9);
      }

      return;
    }

    if (v7 == 8)
    {
      v33 = *v8;
      v34 = *(v8 + 8);
      v35 = *(v8 + 16);
      sub_1004A6EB4(8uLL);
      sub_1003AF0EC(a1, v33);
      sub_1003AF0EC(a1, v34);
      sub_1003AF0EC(a1, v35);
      return;
    }

    if (v7 != 9)
    {
      v38 = *(v8 + 16);
      v40 = *v8;
      v41 = v38;
      v42 = *(v8 + 32);
      sub_1004A6EB4(0xAuLL);
      UIDBatchesResponse.hash(into:)(a1);
      return;
    }

    v18 = *v8;
    v17 = *(v8 + 8);
    sub_1004A6EB4(9uLL);
    v19 = *(v18 + 16);
    sub_1004A6EB4(v19);
    if (v19)
    {
      v20 = (v18 + 32);
      do
      {
        v21 = *v20++;
        sub_1004A6EB4(v21);
        --v19;
      }

      while (v19);
    }

    v22 = v17;
LABEL_35:
    sub_1004A6EF4(v22);
    return;
  }

  if (v7 > 1)
  {
    if (v7 != 2)
    {
      if (v7 != 3)
      {
        v36 = *(v8 + 16);
        v40 = *v8;
        v41 = v36;
        v42 = *(v8 + 32);
        sub_1004A6EB4(4uLL);
        ExtendedSearchResponse.hash(into:)(a1);
        return;
      }

      v12 = *v8;
      v11 = *(v8 + 8);
      v13 = *(v8 + 16);
      sub_1004A6EB4(3uLL);
      v14 = *(v12 + 16);
      sub_1004A6EB4(v14);
      if (v14)
      {
        v15 = (v12 + 32);
        do
        {
          v16 = *v15++;
          sub_1004A6EE4(v16);
          --v14;
        }

        while (v14);
      }

      if (v13)
      {
        sub_1004A6EC4(0);
        return;
      }

      sub_1004A6EC4(1u);
      v22 = v11;
      goto LABEL_35;
    }

    v26 = *(v8 + 16);
    v40 = *v8;
    v41 = v26;
    v42 = *(v8 + 32);
    v27 = 2;
LABEL_30:
    sub_1004A6EB4(v27);
    MailboxInfo.hash(into:)(a1);
    return;
  }

  if (v7)
  {
    v37 = *(v8 + 16);
    v40 = *v8;
    v41 = v37;
    v42 = *(v8 + 32);
    v27 = 1;
    goto LABEL_30;
  }

  v23 = *v8;
  sub_1004A6EB4(0);
  v24 = *(v23 + 16);
  sub_1004A6EB4(v24);
  if (v24)
  {
    v25 = v23 + 40;
    do
    {
      sub_1004A5834();

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      v25 += 16;
      --v24;
    }

    while (v24);
  }
}

Swift::Int MailboxData.hashValue.getter()
{
  sub_1004A6E94();
  MailboxData.hash(into:)(v1);
  return sub_1004A6F14();
}

Swift::Int sub_10043E538(uint64_t a1)
{
  sub_1004A6E94();
  MailboxData.hash(into:)(v2);
  return sub_1004A6F14();
}

unint64_t sub_10043E574(_OWORD *a1, __int128 *a2)
{
  v2 = a1[7];
  v11[6] = a1[6];
  v11[7] = v2;
  v11[8] = a1[8];
  v3 = a1[3];
  v11[2] = a1[2];
  v11[3] = v3;
  v4 = a1[5];
  v11[4] = a1[4];
  v11[5] = v4;
  v5 = a1[1];
  v11[0] = *a1;
  v11[1] = v5;
  v6 = a2[7];
  v12[6] = a2[6];
  v12[7] = v6;
  v12[8] = a2[8];
  v7 = a2[3];
  v12[2] = a2[2];
  v12[3] = v7;
  v8 = a2[5];
  v12[4] = a2[4];
  v12[5] = v8;
  v9 = a2[1];
  v12[0] = *a2;
  v12[1] = v9;
  return _s12NIOIMAPCore211MailboxDataO21__derived_enum_equalsySbAC_ACtFZ_0(v11, v12) & 1;
}

void MailboxData.SearchSort.hash(into:)(uint64_t a1, uint64_t a2, Swift::UInt64 a3)
{
  v5 = *(a2 + 16);
  sub_1004A6EB4(v5);
  if (v5)
  {
    v6 = (a2 + 32);
    do
    {
      v7 = *v6++;
      sub_1004A6EB4(v7);
      --v5;
    }

    while (v5);
  }

  sub_1004A6EF4(a3);
}

Swift::Int MailboxData.SearchSort.hashValue.getter(uint64_t a1, Swift::UInt64 a2)
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
      sub_1004A6EB4(v6);
      --v4;
    }

    while (v4);
  }

  sub_1004A6EF4(a2);
  return sub_1004A6F14();
}

void sub_10043E6DC()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(*v0 + 16);
  sub_1004A6EB4(v3);
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      v5 = *v4++;
      sub_1004A6EB4(v5);
      --v3;
    }

    while (v3);
  }

  sub_1004A6EF4(v1);
}

Swift::Int sub_10043E738(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  sub_1004A6E94();
  v4 = *(v3 + 16);
  sub_1004A6EB4(v4);
  if (v4)
  {
    v5 = (v3 + 32);
    do
    {
      v6 = *v5++;
      sub_1004A6EB4(v6);
      --v4;
    }

    while (v4);
  }

  sub_1004A6EF4(v2);
  return sub_1004A6F14();
}

uint64_t sub_10043E7C4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v46 = *result;
  v4 = v46;
  if (v46[2])
  {
    v5 = *(a2 + 20);
    result = sub_1002F178C(0x20uLL, 0xE100000000000000, a2 + 8, v5);
    if (v6)
    {
      v7._countAndFlagsBits = 32;
      v7._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v7, v5);
    }

    v8 = result;
    v9 = *(a2 + 20);
    v10 = __CFADD__(v9, result);
    v11 = v9 + result;
    if (v10)
    {
      goto LABEL_41;
    }

    *(a2 + 20) = v11;
  }

  else
  {
    v8 = 0;
  }

  __chkstk_darwin(result);
  v45[2] = sub_10043EAC4;
  v45[3] = 0;
  v45[4] = a2;
  v45[5] = &v46;
  v45[6] = 32;
  v45[7] = 0xE100000000000000;
  result = sub_100452D20(0, sub_10043BF1C, v45, v4);
  v12 = v8 + result;
  if (__OFADD__(v8, result))
  {
    goto LABEL_32;
  }

  if (v4[2])
  {
    v13 = *(a2 + 20);
    result = sub_1002F178C(0, 0xE000000000000000, a2 + 8, v13);
    if (v14)
    {
      v15._countAndFlagsBits = 0;
      v15._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v15, v13);
    }

    v16 = *(a2 + 20);
    v10 = __CFADD__(v16, result);
    v17 = v16 + result;
    if (v10)
    {
      goto LABEL_42;
    }

    *(a2 + 20) = v17;
    v18 = __OFADD__(v12, result);
    v12 += result;
    if (v18)
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }
  }

  v19 = *(a2 + 20);
  result = sub_1002F178C(0x20uLL, 0xE100000000000000, a2 + 8, v19);
  if (v20)
  {
    v21._countAndFlagsBits = 32;
    v21._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v21, v19);
  }

  v22 = *(a2 + 20);
  v23 = (v22 + result);
  if (__CFADD__(v22, result))
  {
    goto LABEL_33;
  }

  *(a2 + 20) = v23;
  v24 = v12 + result;
  if (__OFADD__(v12, result))
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  result = sub_1002F178C(0x20514553444F4D28uLL, 0xE800000000000000, a2 + 8, v23);
  if (v25)
  {
    v26._countAndFlagsBits = 0x20514553444F4D28;
    v26._object = 0xE800000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v26, v23);
  }

  v27 = *(a2 + 20);
  v10 = __CFADD__(v27, result);
  v28 = v27 + result;
  if (v10)
  {
    goto LABEL_35;
  }

  *(a2 + 20) = v28;
  v18 = __OFADD__(v24, result);
  v29 = v24 + result;
  if (v18)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v46 = *(v3 + 8);
  v30 = sub_1004A6CE4();
  v32 = v31;
  v33 = *(a2 + 20);
  v34 = sub_1002F178C(v30, v31, a2 + 8, v33);
  if (v35)
  {
    v36._countAndFlagsBits = v30;
    v36._object = v32;
    v34 = ByteBuffer._setStringSlowpath(_:at:)(v36, v33);
  }

  v37 = v34;

  v38 = *(a2 + 20);
  v39 = (v38 + v37);
  if (__CFADD__(v38, v37))
  {
    goto LABEL_37;
  }

  *(a2 + 20) = v39;
  v40 = v29 + v37;
  if (__OFADD__(v29, v37))
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  result = sub_1002F178C(0x29uLL, 0xE100000000000000, a2 + 8, (v38 + v37));
  if (v41)
  {
    v42._countAndFlagsBits = 41;
    v42._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v42, v39);
  }

  v43 = *(a2 + 20);
  v10 = __CFADD__(v43, result);
  v44 = v43 + result;
  if (v10)
  {
    goto LABEL_39;
  }

  *(a2 + 20) = v44;
  v18 = __OFADD__(v40, result);
  result += v40;
  if (v18)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
  }

  return result;
}

unint64_t sub_10043EAC4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1004A6CE4();
  v5 = v4;
  v6 = *(a2 + 20);
  v7 = sub_1002F178C(v3, v4, a2 + 8, v6);
  if (v8)
  {
    v9._countAndFlagsBits = v3;
    v9._object = v5;
    v7 = ByteBuffer._setStringSlowpath(_:at:)(v9, v6);
  }

  v10 = v7;

  v12 = *(a2 + 20);
  v13 = __CFADD__(v12, v10);
  v14 = v12 + v10;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 20) = v14;
    return v10;
  }

  return result;
}

void sub_10043EB74(_OWORD *a1)
{
  v3 = a1[7];
  v70[6] = a1[6];
  v70[7] = v3;
  v70[8] = a1[8];
  v4 = a1[3];
  v70[2] = a1[2];
  v70[3] = v4;
  v5 = a1[5];
  v70[4] = a1[4];
  v70[5] = v5;
  v6 = a1[1];
  v70[0] = *a1;
  v70[1] = v6;
  LODWORD(v7) = sub_1003045D0(v70);
  v8 = sub_1003045DC(v70);
  if (v7 > 4)
  {
    if (v7 > 7)
    {
      if (v7 == 8)
      {
        sub_10046002C(*v8, *(v8 + 8), *(v8 + 16));
        return;
      }

      if (v7 != 9)
      {
        v68 = *(v8 + 16);
        v71 = *v8;
        v72 = v68;
        v73 = *(v8 + 32);
        sub_1004A0994(&v71);
        return;
      }

      v71 = *v8;
      v19 = *(v1 + 20);
      v20 = sub_1002F178C(0x484352414553uLL, 0xE600000000000000, v1 + 8, v19);
      if (v21)
      {
        v22._countAndFlagsBits = 0x484352414553;
        v22._object = 0xE600000000000000;
        v20 = ByteBuffer._setStringSlowpath(_:at:)(v22, v19);
      }

      v7 = v20;
      v23 = *(v1 + 20);
      v17 = __CFADD__(v23, v20);
      v24 = v23 + v20;
      if (v17)
      {
        goto LABEL_53;
      }

      *(v1 + 20) = v24;
      v69 = v71;
      v25 = sub_10043E7C4(&v69, v1);
      v26 = __OFADD__(v7, v25);
      v8 = v7 + v25;
      if (!v26)
      {
        return;
      }

      __break(1u);
      goto LABEL_22;
    }

    if (v7 == 5)
    {
      goto LABEL_35;
    }

    v2 = v1;
    if (v7 != 6)
    {
      goto LABEL_44;
    }

    *&v69 = *v8;
    *&v71 = sub_1004A6CE4();
    *(&v71 + 1) = v9;
    v79._countAndFlagsBits = 0x53545349584520;
    v79._object = 0xE700000000000000;
    sub_1004A5994(v79);
    v7 = *(&v71 + 1);
    v10 = v71;
    v11 = v1;
    v12 = *(v1 + 20);
    v13 = sub_1002F178C(v71, *(&v71 + 1), v1 + 8, v12);
    if (v14)
    {
      v15._countAndFlagsBits = v10;
      v15._object = v7;
      v13 = ByteBuffer._setStringSlowpath(_:at:)(v15, v12);
      v11 = v1;
    }

    v1 = v13;

    v16 = *(v11 + 20);
    v8 = v1;
    v17 = __CFADD__(v16, v1);
    v18 = v16 + v1;
    if (!v17)
    {
      goto LABEL_47;
    }

    __break(1u);
  }

  if (v7 <= 1)
  {
LABEL_22:
    if (!v7)
    {
      v27 = *v8;
      v28 = *(v1 + 20);
      v29 = sub_1002F178C(0x205347414C46uLL, 0xE600000000000000, v1 + 8, v28);
      if (v30)
      {
        v31._countAndFlagsBits = 0x205347414C46;
        v31._object = 0xE600000000000000;
        v29 = ByteBuffer._setStringSlowpath(_:at:)(v31, v28);
      }

      v32 = v29;
      v33 = *(v1 + 20);
      v17 = __CFADD__(v33, v29);
      v34 = v33 + v29;
      if (v17)
      {
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
        return;
      }

      *(v1 + 20) = v34;
      v35 = sub_1003F0FE8(v27);
      v26 = __OFADD__(v32, v35);
      v8 = v32 + v35;
      if (!v26)
      {
        return;
      }

      __break(1u);
LABEL_29:
      v36 = *(v8 + 16);
      v71 = *v8;
      v72 = v36;
      v73 = *(v8 + 32);
      v37 = *(v1 + 20);
      v38 = sub_1002F178C(0x204255534CuLL, 0xE500000000000000, v1 + 8, v37);
      if (v39)
      {
        v40._countAndFlagsBits = 0x204255534CLL;
        v40._object = 0xE500000000000000;
        v38 = ByteBuffer._setStringSlowpath(_:at:)(v40, v37);
      }

      v41 = v38;
      v42 = *(v1 + 20);
      v17 = __CFADD__(v42, v38);
      v43 = v42 + v38;
      if (!v17)
      {
        *(v1 + 20) = v43;
        v44 = sub_100444458(&v71);
        v26 = __OFADD__(v41, v44);
        v8 = v41 + v44;
        if (!v26)
        {
          return;
        }

        __break(1u);
LABEL_35:
        v45 = *v8;
        v46 = *(v8 + 8);
        v47 = *(v8 + 96);
        v75 = *(v8 + 80);
        v76 = v47;
        v48 = *(v8 + 128);
        v77 = *(v8 + 112);
        v78 = v48;
        v49 = *(v8 + 32);
        v71 = *(v8 + 16);
        v72 = v49;
        v50 = *(v8 + 64);
        v73 = *(v8 + 48);
        v74 = v50;
        sub_10043F344(v45, v46, &v71);
        return;
      }

      __break(1u);
      goto LABEL_51;
    }

    v52 = *(v8 + 16);
    v71 = *v8;
    v72 = v52;
    v73 = *(v8 + 32);
    v53 = *(v1 + 20);
    v54 = sub_1002F178C(0x205453494CuLL, 0xE500000000000000, v1 + 8, v53);
    if (v55)
    {
      v56._countAndFlagsBits = 0x205453494CLL;
      v56._object = 0xE500000000000000;
      v54 = ByteBuffer._setStringSlowpath(_:at:)(v56, v53);
    }

    v57 = v54;
    v58 = *(v1 + 20);
    v17 = __CFADD__(v58, v54);
    v59 = v58 + v54;
    if (v17)
    {
      goto LABEL_52;
    }

    *(v1 + 20) = v59;
    v60 = sub_100444458(&v71);
    v26 = __OFADD__(v57, v60);
    v8 = v57 + v60;
    if (!v26)
    {
      return;
    }

    __break(1u);
LABEL_44:
    *&v69 = *v8;
    *&v71 = sub_1004A6CE4();
    *(&v71 + 1) = v61;
    v80._countAndFlagsBits = 0x544E4543455220;
    v80._object = 0xE700000000000000;
    sub_1004A5994(v80);
    v62 = v71;
    v11 = v2;
    v63 = *(v2 + 20);
    v64 = sub_1002F178C(v71, *(&v71 + 1), v2 + 8, v63);
    if (v65)
    {
      v64 = ByteBuffer._setStringSlowpath(_:at:)(v62, v63);
      v11 = v2;
    }

    v66 = v64;

    v67 = *(v11 + 20);
    v17 = __CFADD__(v67, v66);
    v18 = v67 + v66;
    if (!v17)
    {
LABEL_47:
      *(v11 + 20) = v18;
      return;
    }

    goto LABEL_54;
  }

  if (v7 == 2)
  {
    goto LABEL_29;
  }

  if (v7 == 3)
  {
    sub_10043F020(*v8, *(v8 + 8), *(v8 + 16));
  }

  else
  {
    v51 = *(v8 + 16);
    v71 = *v8;
    v72 = v51;
    v73 = *(v8 + 32);
    sub_1003EBA78(&v71);
  }
}

uint64_t sub_10043F020(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *(v3 + 20);
  result = sub_1002F178C(0x484352414553uLL, 0xE600000000000000, v3 + 8, v8);
  if (v10)
  {
    v11._countAndFlagsBits = 0x484352414553;
    v11._object = 0xE600000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v11, v8);
  }

  v12 = result;
  v13 = *(v3 + 20);
  v14 = (v13 + result);
  if (__CFADD__(v13, result))
  {
    goto LABEL_34;
  }

  *(v3 + 20) = v14;
  v53 = a1;
  v15 = *(a1 + 16);
  if (v15)
  {
    result = sub_1002F178C(0x20uLL, 0xE100000000000000, v3 + 8, v14);
    if (v16)
    {
      v17._countAndFlagsBits = 32;
      v17._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v17, v14);
    }

    v18 = result;
    v19 = *(v4 + 20);
    v20 = __CFADD__(v19, result);
    v21 = v19 + result;
    if (v20)
    {
      goto LABEL_38;
    }

    *(v4 + 20) = v21;
  }

  else
  {
    v18 = 0;
  }

  __chkstk_darwin(result);
  v52[2] = sub_10043F4B8;
  v52[3] = 0;
  v52[4] = v4;
  v52[5] = &v53;
  v52[6] = 32;
  v52[7] = 0xE100000000000000;
  result = sub_100452EBC(0, sub_10044007C, v52, a1);
  v22 = v18 + result;
  if (__OFADD__(v18, result))
  {
    goto LABEL_35;
  }

  if (!v15)
  {
    result = 0;
    v28 = v22;
    goto LABEL_16;
  }

  v23 = *(v4 + 20);
  result = sub_1002F178C(0, 0xE000000000000000, v4 + 8, v23);
  if (v24)
  {
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v25, v23);
  }

  v26 = *(v4 + 20);
  v20 = __CFADD__(v26, result);
  v27 = v26 + result;
  if (v20)
  {
    goto LABEL_39;
  }

  *(v4 + 20) = v27;
  v28 = v22 + result;
  if (__OFADD__(v22, result))
  {
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

LABEL_16:
  v29 = v12 + v28;
  if (__OFADD__(v12, v28))
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (a3)
  {
    v30 = 0;
  }

  else
  {
    v31 = *(v4 + 20);
    result = sub_1002F178C(0x514553444F4D2820uLL, 0xE900000000000020, v4 + 8, v31);
    if (v32)
    {
      v33._countAndFlagsBits = 0x514553444F4D2820;
      v33._object = 0xE900000000000020;
      result = ByteBuffer._setStringSlowpath(_:at:)(v33, v31);
    }

    v34 = result;
    v35 = *(v4 + 20);
    v36 = (v35 + result);
    if (__CFADD__(v35, result))
    {
      goto LABEL_40;
    }

    *(v4 + 20) = v36;
    v53 = a2;
    v37 = sub_1004A6CE4();
    v39 = v38;
    v40 = sub_1002F178C(v37, v38, v4 + 8, v36);
    if (v41)
    {
      v42._countAndFlagsBits = v37;
      v42._object = v39;
      v40 = ByteBuffer._setStringSlowpath(_:at:)(v42, v36);
    }

    v43 = v40;

    v44 = *(v4 + 20);
    v45 = (v44 + v43);
    if (__CFADD__(v44, v43))
    {
      goto LABEL_41;
    }

    *(v4 + 20) = v45;
    v46 = __OFADD__(v34, v43);
    v47 = v34 + v43;
    if (v46)
    {
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    result = sub_1002F178C(0x29uLL, 0xE100000000000000, v4 + 8, (v44 + v43));
    if (v48)
    {
      v49._countAndFlagsBits = 41;
      v49._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v49, v45);
    }

    v50 = *(v4 + 20);
    v20 = __CFADD__(v50, result);
    v51 = v50 + result;
    if (v20)
    {
      goto LABEL_43;
    }

    *(v4 + 20) = v51;
    v30 = v47 + result;
    if (__OFADD__(v47, result))
    {
LABEL_44:
      __break(1u);
      return result;
    }
  }

  result = v29 + v30;
  if (__OFADD__(v29, v30))
  {
    goto LABEL_37;
  }

  return result;
}

void sub_10043F344(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = *(v3 + 20);
  v7 = sub_1002F178C(0x20535554415453uLL, 0xE700000000000000, v3 + 8, v6);
  if (v8)
  {
    v9._countAndFlagsBits = 0x20535554415453;
    v9._object = 0xE700000000000000;
    v7 = ByteBuffer._setStringSlowpath(_:at:)(v9, v6);
  }

  v10 = v7;
  v11 = *(v3 + 20);
  v12 = __CFADD__(v11, v7);
  v13 = v11 + v7;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  *(v3 + 20) = v13;
  sub_100441F24(a1);
  v15 = v10 + v14;
  if (__OFADD__(v10, v14))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v16 = *(v3 + 20);
  v17 = sub_1002F178C(0x2820uLL, 0xE200000000000000, v3 + 8, v16);
  if (v18)
  {
    v19._countAndFlagsBits = 10272;
    v19._object = 0xE200000000000000;
    v17 = ByteBuffer._setStringSlowpath(_:at:)(v19, v16);
  }

  v20 = *(v3 + 20);
  v12 = __CFADD__(v20, v17);
  v21 = v20 + v17;
  if (v12)
  {
    goto LABEL_17;
  }

  *(v3 + 20) = v21;
  v22 = v15 + v17;
  if (__OFADD__(v15, v17))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v23 = sub_10043D17C(a3);
  v24 = __OFADD__(v22, v23);
  v25 = v22 + v23;
  if (v24)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v26 = *(v3 + 20);
  v27 = sub_1002F178C(0x29uLL, 0xE100000000000000, v3 + 8, v26);
  if (v28)
  {
    v29._countAndFlagsBits = 41;
    v29._object = 0xE100000000000000;
    v27 = ByteBuffer._setStringSlowpath(_:at:)(v29, v26);
  }

  v30 = *(v3 + 20);
  v12 = __CFADD__(v30, v27);
  v31 = v30 + v27;
  if (v12)
  {
    goto LABEL_20;
  }

  *(v3 + 20) = v31;
  if (__OFADD__(v25, v27))
  {
LABEL_21:
    __break(1u);
  }
}

BOOL _s12NIOIMAPCore211MailboxDataO10SearchSortV23__derived_struct_equalsySbAE_AEtFZ_0(_BOOL8 result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 16);
  if (v4 != *(a3 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = result == a3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
LABEL_10:
    if (((a4 | a2) & 0x8000000000000000) == 0)
    {
      return a4 == a2;
    }
  }

  else
  {
    v6 = (result + 32);
    v7 = (a3 + 32);
    while (v4)
    {
      if (*v6 != *v7)
      {
        return 0;
      }

      ++v6;
      ++v7;
      if (!--v4)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t *_s12NIOIMAPCore211MailboxDataO21__derived_enum_equalsySbAC_ACtFZ_0(_OWORD *a1, __int128 *a2)
{
  v3 = a1[7];
  v155[6] = a1[6];
  v155[7] = v3;
  v155[8] = a1[8];
  v4 = a1[3];
  v155[2] = a1[2];
  v155[3] = v4;
  v5 = a1[5];
  v155[4] = a1[4];
  v155[5] = v5;
  v6 = a1[1];
  v155[0] = *a1;
  v155[1] = v6;
  v7 = sub_1003045D0(v155);
  if (v7 <= 4)
  {
    if (v7 <= 1)
    {
      if (!v7)
      {
        v39 = *sub_1003045DC(v155);
        v40 = a2[3];
        v148 = a2[2];
        v149 = v40;
        v41 = a2[1];
        v146 = *a2;
        v147 = v41;
        v42 = a2[8];
        v153 = a2[7];
        v154 = v42;
        v43 = a2[6];
        v151 = a2[5];
        v152 = v43;
        v150 = a2[4];
        if (sub_1003045D0(&v146))
        {
          goto LABEL_87;
        }

        v44 = sub_1003045DC(&v146);
        v45 = sub_10010321C(v39, *v44);
        return (v45 & 1);
      }

      v106 = sub_1003045DC(v155);
      v48 = *v106;
      v47 = *(v106 + 8);
      v49 = *(v106 + 16);
      v50 = *(v106 + 20);
      v52 = *(v106 + 32);
      v51 = *(v106 + 40);
      v107 = a2[7];
      v152 = a2[6];
      v153 = v107;
      v154 = a2[8];
      v108 = a2[3];
      v148 = a2[2];
      v149 = v108;
      v109 = a2[5];
      v150 = a2[4];
      v151 = v109;
      v110 = a2[1];
      v146 = *a2;
      v147 = v110;
      if (sub_1003045D0(&v146) != 1)
      {
        goto LABEL_87;
      }
    }

    else
    {
      if (v7 != 2)
      {
        if (v7 == 3)
        {
          v13 = sub_1003045DC(v155);
          v15 = *v13;
          v14 = *(v13 + 8);
          v16 = *(v13 + 16);
          v17 = a2[7];
          v152 = a2[6];
          v153 = v17;
          v154 = a2[8];
          v18 = a2[1];
          v146 = *a2;
          v147 = v18;
          v19 = a2[3];
          v148 = a2[2];
          v149 = v19;
          v20 = a2[5];
          v150 = a2[4];
          v151 = v20;
          if (sub_1003045D0(&v146) != 3)
          {
            goto LABEL_87;
          }

          result = sub_1003045DC(&v146);
          v22 = *result;
          v23 = *(v15 + 16);
          if (v23 != *(*result + 16))
          {
            goto LABEL_87;
          }

          v24 = result[1];
          if (v23 && v15 != v22)
          {
            v25 = (v15 + 32);
            v26 = (v22 + 32);
            while (*v26 == *v25)
            {
              ++v25;
              ++v26;
              if (!--v23)
              {
                goto LABEL_17;
              }
            }

            goto LABEL_87;
          }

LABEL_17:
          if (v16)
          {
            if ((result[2] & 1) == 0)
            {
              goto LABEL_87;
            }

            goto LABEL_86;
          }

          if (result[2])
          {
            goto LABEL_87;
          }

          if ((v24 | v14) < 0)
          {
            goto LABEL_90;
          }

          if (v24 != v14)
          {
            goto LABEL_87;
          }

LABEL_86:
          v45 = 1;
          return (v45 & 1);
        }

        v86 = sub_1003045DC(v155);
        v88 = *v86;
        v87 = *(v86 + 8);
        v90 = *(v86 + 16);
        v89 = *(v86 + 24);
        v91 = *(v86 + 32);
        v92 = *(v86 + 33);
        v93 = *(v86 + 40);
        v94 = a2[7];
        v152 = a2[6];
        v153 = v94;
        v154 = a2[8];
        v95 = a2[3];
        v148 = a2[2];
        v149 = v95;
        v96 = a2[5];
        v150 = a2[4];
        v151 = v96;
        v97 = a2[1];
        v146 = *a2;
        v147 = v97;
        if (sub_1003045D0(&v146) != 4)
        {
          goto LABEL_87;
        }

        v141 = v92;
        v139 = v93;
        v98 = sub_1003045DC(&v146);
        v99 = *v98;
        v100 = *(v98 + 8);
        v101 = *(v98 + 16);
        v102 = *(v98 + 24);
        v103 = *(v98 + 32);
        v104 = *(v98 + 33);
        v105 = *(v98 + 40);
        if (v87)
        {
          if (v100)
          {
            *v145 = *v98;
            *&v145[8] = v100;
            *&v145[16] = v101;
            *&v145[24] = v102;
            v145[32] = v103 & 1;
            *v144 = v88;
            *&v144[8] = v87;
            *&v144[16] = v90;
            *&v144[24] = v89;
            v144[32] = v91 & 1;
            v138 = v105;
            v137 = v104;
            v136 = _s12NIOIMAPCore216SearchCorrelatorV23__derived_struct_equalsySbAC_ACtFZ_0(v144, v145);
            sub_1003E97D0(v99, v100);
            sub_1003E97D0(v88, v87);

            sub_100073984(v88, v87, v90);
            v104 = v137;
            v105 = v138;
            if (!v136)
            {
              goto LABEL_87;
            }

            goto LABEL_72;
          }
        }

        else if (!v100)
        {
LABEL_72:
          if (((v141 ^ v104) & 1) != 0 || (sub_100397CD4(v139, v105) & 1) == 0)
          {
            goto LABEL_87;
          }

          goto LABEL_86;
        }

        sub_1003E97D0(*v98, v100);
        sub_1003E97D0(v88, v87);
        sub_100073984(v88, v87, v90);
        sub_100073984(v99, v100, v101);
        goto LABEL_87;
      }

      v46 = sub_1003045DC(v155);
      v48 = *v46;
      v47 = *(v46 + 8);
      v49 = *(v46 + 16);
      v50 = *(v46 + 20);
      v52 = *(v46 + 32);
      v51 = *(v46 + 40);
      v53 = a2[7];
      v152 = a2[6];
      v153 = v53;
      v154 = a2[8];
      v54 = a2[3];
      v148 = a2[2];
      v149 = v54;
      v55 = a2[5];
      v150 = a2[4];
      v151 = v55;
      v56 = a2[1];
      v146 = *a2;
      v147 = v56;
      if (sub_1003045D0(&v146) != 2)
      {
        goto LABEL_87;
      }
    }

    v111 = sub_1003045DC(&v146);
    v112 = *(v111 + 8);
    v113 = *(v111 + 16);
    v114 = *(v111 + 20);
    v115 = *(v111 + 32);
    v142 = *(v111 + 40);
    if ((sub_1003A3710(v48, *v111) & 1) == 0 || (v49 | (v49 << 32)) != (v113 | (v113 << 32)) || (sub_1000FFC98(v47, v112) & 1) == 0 || v50 != v114 || (sub_1003A0868(v52, v115) & 1) == 0 || (sub_1003A0B30(v51, v142) & 1) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_86;
  }

  if (v7 <= 7)
  {
    if (v7 != 5)
    {
      if (v7 == 6)
      {
        v8 = *sub_1003045DC(v155);
        v9 = a2[3];
        v148 = a2[2];
        v149 = v9;
        v10 = a2[1];
        v146 = *a2;
        v147 = v10;
        v11 = a2[8];
        v153 = a2[7];
        v154 = v11;
        v12 = a2[6];
        v151 = a2[5];
        v152 = v12;
        v150 = a2[4];
        if (sub_1003045D0(&v146) != 6)
        {
          goto LABEL_87;
        }

        goto LABEL_60;
      }

      v8 = *sub_1003045DC(v155);
      v116 = a2[3];
      v148 = a2[2];
      v149 = v116;
      v117 = a2[1];
      v146 = *a2;
      v147 = v117;
      v118 = a2[8];
      v153 = a2[7];
      v154 = v118;
      v119 = a2[6];
      v151 = a2[5];
      v152 = v119;
      v150 = a2[4];
      if (sub_1003045D0(&v146) == 7)
      {
LABEL_60:
        v45 = v8 == *sub_1003045DC(&v146);
        return (v45 & 1);
      }

      goto LABEL_87;
    }

    v57 = sub_1003045DC(v155);
    v58 = *v57;
    v59 = *(v57 + 8);
    v60 = *(v57 + 92);
    v61 = *(v57 + 124);
    *&v145[96] = *(v57 + 108);
    *&v145[112] = v61;
    *&v145[128] = *(v57 + 140);
    v62 = *(v57 + 28);
    v63 = *(v57 + 60);
    *&v145[32] = *(v57 + 44);
    *&v145[48] = v63;
    *&v145[64] = *(v57 + 76);
    *&v145[80] = v60;
    *v145 = *(v57 + 12);
    *&v145[16] = v62;
    v64 = a2[8];
    v153 = a2[7];
    v154 = v64;
    v65 = a2[6];
    v151 = a2[5];
    v152 = v65;
    v66 = a2[4];
    v149 = a2[3];
    v150 = v66;
    v67 = a2[2];
    v147 = a2[1];
    v148 = v67;
    v146 = *a2;
    if (sub_1003045D0(&v146) != 5)
    {
      goto LABEL_87;
    }

    v68 = sub_1003045DC(&v146);
    v69 = *v68;
    v70 = *(v68 + 8);
    v71 = *(v68 + 92);
    v72 = *(v68 + 124);
    *&v144[96] = *(v68 + 108);
    *&v144[112] = v72;
    *&v144[128] = *(v68 + 140);
    v73 = *(v68 + 28);
    v74 = *(v68 + 60);
    *&v144[32] = *(v68 + 44);
    *&v144[48] = v74;
    *&v144[64] = *(v68 + 76);
    *&v144[80] = v71;
    *v144 = *(v68 + 12);
    *&v144[16] = v73;
    if ((v59 | (v59 << 32)) != (v70 | (v70 << 32)) || (sub_1000FFC98(v58, v69) & 1) == 0)
    {
      goto LABEL_87;
    }

    v156[4] = *&v145[68];
    v156[5] = *&v145[84];
    v156[6] = *&v145[100];
    v156[7] = *&v145[116];
    v156[0] = *&v145[4];
    v156[1] = *&v145[20];
    v156[2] = *&v145[36];
    v156[3] = *&v145[52];
    v157[2] = *&v144[36];
    v157[3] = *&v144[52];
    v157[0] = *&v144[4];
    v157[1] = *&v144[20];
    v157[6] = *&v144[100];
    v157[7] = *&v144[116];
    v157[4] = *&v144[68];
    v157[5] = *&v144[84];
    v45 = _s12NIOIMAPCore213MailboxStatusV23__derived_struct_equalsySbAC_ACtFZ_0(v156, v157);
    return (v45 & 1);
  }

  if (v7 == 8)
  {
    v75 = sub_1003045DC(v155);
    v77 = *v75;
    v76 = v75[1];
    v78 = v75[2];
    v79 = a2[7];
    v152 = a2[6];
    v153 = v79;
    v154 = a2[8];
    v80 = a2[1];
    v146 = *a2;
    v147 = v80;
    v81 = a2[3];
    v148 = a2[2];
    v149 = v81;
    v82 = a2[5];
    v150 = a2[4];
    v151 = v82;
    if (sub_1003045D0(&v146) != 8)
    {
      goto LABEL_87;
    }

    v83 = sub_1003045DC(&v146);
    v84 = v83[1];
    v85 = v83[2];
    if ((sub_10039EF50(v77, *v83) & 1) == 0 || (sub_10039EF50(v76, v84) & 1) == 0 || (sub_10039EF50(v78, v85) & 1) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_86;
  }

  if (v7 != 9)
  {
    v120 = sub_1003045DC(v155);
    v121 = *v120;
    v122 = *(v120 + 8);
    v123 = *(v120 + 16);
    v125 = *(v120 + 24);
    v124 = *(v120 + 28);
    v126 = *(v120 + 32);
    v127 = *(v120 + 40);
    v128 = a2[7];
    v152 = a2[6];
    v153 = v128;
    v154 = a2[8];
    v129 = a2[3];
    v148 = a2[2];
    v149 = v129;
    v130 = a2[5];
    v150 = a2[4];
    v151 = v130;
    v131 = a2[1];
    v146 = *a2;
    v147 = v131;
    if (sub_1003045D0(&v146) != 10)
    {
      goto LABEL_87;
    }

    v132 = sub_1003045DC(&v146);
    v133 = *(v132 + 16);
    v134 = *(v132 + 24);
    v140 = *(v132 + 28);
    v135 = *(v132 + 32);
    v143 = *(v132 + 40);
    if ((v121 != *v132 || v122 != *(v132 + 8)) && (sub_1004A6D34() & 1) == 0)
    {
      goto LABEL_87;
    }

    if (v123)
    {
      if (!v133 || (v125 | (v125 << 32)) != (v134 | (v134 << 32)) || (sub_1000FFC98(v123, v133) & 1) == 0)
      {
        goto LABEL_87;
      }
    }

    else if (v133)
    {
      goto LABEL_87;
    }

    if (v126)
    {
      if ((v135 & 1) == 0)
      {
        goto LABEL_87;
      }
    }

    else if ((v135 & 1) != 0 || v124 != v140)
    {
      goto LABEL_87;
    }

    if ((sub_100102A80(v127, v143) & 1) == 0)
    {
LABEL_87:
      v45 = 0;
      return (v45 & 1);
    }

    goto LABEL_86;
  }

  v27 = sub_1003045DC(v155);
  v29 = *v27;
  v28 = v27[1];
  v30 = a2[7];
  v152 = a2[6];
  v153 = v30;
  v154 = a2[8];
  v31 = a2[3];
  v148 = a2[2];
  v149 = v31;
  v32 = a2[5];
  v150 = a2[4];
  v151 = v32;
  v33 = a2[1];
  v146 = *a2;
  v147 = v33;
  if (sub_1003045D0(&v146) != 9)
  {
    goto LABEL_87;
  }

  result = sub_1003045DC(&v146);
  v34 = *result;
  v35 = *(v29 + 16);
  if (v35 != *(*result + 16))
  {
    goto LABEL_87;
  }

  v36 = result[1];
  if (v35 && v29 != v34)
  {
    v37 = (v29 + 32);
    v38 = (v34 + 32);
    while (*v37 == *v38)
    {
      ++v37;
      ++v38;
      if (!--v35)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_87;
  }

LABEL_29:
  if (((v36 | v28) & 0x8000000000000000) == 0)
  {
    if (v36 != v28)
    {
      goto LABEL_87;
    }

    goto LABEL_86;
  }

  __break(1u);
LABEL_90:
  __break(1u);
  return result;
}

unint64_t sub_10043FE4C()
{
  result = qword_1005DCAC0;
  if (!qword_1005DCAC0)
  {
    result = swift_getWitnessTable("a\t\b", &type metadata for MailboxData, v0, v1);
    atomic_store(result, &qword_1005DCAC0);
  }

  return result;
}

unint64_t sub_10043FEA4()
{
  result = qword_1005DCAC8;
  if (!qword_1005DCAC8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MailboxData.SearchSort, &type metadata for MailboxData.SearchSort, v0, v1);
    atomic_store(result, &qword_1005DCAC8);
  }

  return result;
}

__n128 sub_10043FF04(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_10043FF30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 48) >> 1) & 0x7FFFFFFF | ((*(a1 + 56) >> 1) << 31);
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

double sub_10043FF8C(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 136) = 0;
    result = 0.0;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 144) = 1;
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
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 48) = (-2 * a2);
      *(a1 + 56) = 2;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 96) = 0u;
      *(a1 + 112) = 0u;
      *(a1 + 128) = 0u;
      return result;
    }

    *(a1 + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

int8x16_t sub_100440010(int8x16_t *a1, uint64_t a2)
{
  v2 = a1[4].i64[1] & 1;
  v3 = a1[5].i64[1] & 1;
  v4 = a1[6].i64[1] & 1;
  v5 = a1[7].i64[1] & 1 | (a2 << 60);
  result = vandq_s8(a1[3], xmmword_1004DDD00);
  a1[3] = result;
  a1[4].i64[1] = v2;
  a1[5].i64[1] = v3;
  a1[6].i64[1] = v4;
  a1[7].i64[1] = v5;
  return result;
}

uint64_t sub_10044007C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_100492780(*a1, *a2, *(a2 + 8), *(v3 + 16), *(v3 + 24), *(v3 + 32), **(v3 + 40), *(v3 + 48), *(v3 + 56));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

NIOIMAPCore2::Mailboxes_optional __swiftcall Mailboxes.init(_:)(NIOIMAPCore2::Mailboxes_optional result)
{
  if (!*(result.value.content._rawValue + 2))
  {

    return 0;
  }

  return result;
}

void Mailboxes.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  sub_1004A6EB4(v3);
  if (v3)
  {
    v4 = (a2 + 40);
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

Swift::Int Mailboxes.hashValue.getter(uint64_t a1)
{
  sub_1004A6E94();
  v2 = *(a1 + 16);
  sub_1004A6EB4(v2);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v4 = *v3;
      v3 += 4;
      sub_1004A6EB4(v4 | (v4 << 32));
      --v2;
    }

    while (v2);
  }

  return sub_1004A6F14();
}

Swift::Int sub_1004401DC(uint64_t a1)
{
  v2 = *v1;
  sub_1004A6E94();
  Mailboxes.hash(into:)(v4, v2);
  return sub_1004A6F14();
}

uint64_t sub_10044022C(uint64_t a1)
{
  v2 = v1;
  v32 = a1;
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = *(v1 + 20);
    result = sub_1002F178C(0, 0xE000000000000000, v1 + 8, v5);
    if (v7)
    {
      v8._countAndFlagsBits = 0;
      v8._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v8, v5);
    }

    v9 = result;
    v10 = *(v1 + 20);
    v11 = __CFADD__(v10, result);
    v12 = v10 + result;
    if (v11)
    {
      goto LABEL_29;
    }

    *(v1 + 20) = v12;
  }

  else
  {
    v9 = 0;
    v12 = *(v1 + 20);
  }

  v13 = v12;
  result = sub_1002F178C(0x28uLL, 0xE100000000000000, v1 + 8, v12);
  if (v14)
  {
    v15._countAndFlagsBits = 40;
    v15._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v15, v13);
  }

  v16 = *(v1 + 20);
  v11 = __CFADD__(v16, result);
  v17 = v16 + result;
  if (v11)
  {
    goto LABEL_24;
  }

  *(v1 + 20) = v17;
  v18 = v9 + result;
  if (__OFADD__(v9, result))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  __chkstk_darwin(result);
  v31[2] = sub_10044044C;
  v31[3] = 0;
  v31[4] = v2;
  v31[5] = &v32;
  v31[6] = 32;
  v31[7] = 0xE100000000000000;
  result = sub_100452C54(0, sub_100440540, v31, a1);
  v19 = v18 + result;
  if (__OFADD__(v18, result))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v20 = *(v2 + 20);
  result = sub_1002F178C(0x29uLL, 0xE100000000000000, v2 + 8, v20);
  if (v21)
  {
    v22._countAndFlagsBits = 41;
    v22._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v22, v20);
  }

  v23 = *(v2 + 20);
  v24 = (v23 + result);
  if (__CFADD__(v23, result))
  {
    goto LABEL_27;
  }

  *(v2 + 20) = v24;
  v25 = __OFADD__(v19, result);
  v26 = v19 + result;
  if (v25)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return result;
  }

  if (!v4)
  {
    return v26;
  }

  result = sub_1002F178C(0, 0xE000000000000000, v2 + 8, v24);
  if (v27)
  {
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v28, v24);
  }

  v29 = *(v2 + 20);
  v11 = __CFADD__(v29, result);
  v30 = v29 + result;
  if (v11)
  {
    goto LABEL_30;
  }

  *(v2 + 20) = v30;
  v25 = __OFADD__(v26, result);
  result += v26;
  if (v25)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  return result;
}

unint64_t sub_100440478()
{
  result = qword_1005DCAD0;
  if (!qword_1005DCAD0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Mailboxes, &type metadata for Mailboxes, v0, v1);
    atomic_store(result, &qword_1005DCAD0);
  }

  return result;
}

uint64_t sub_1004404DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, unint64_t a7@<X6>, void *a8@<X7>, uint64_t *a9@<X8>)
{
  result = sub_100492448(*a1, *a2, *(a2 + 8), *(a2 + 16), a3, a4, a5, *a6, a7, a8);
  if (!v9)
  {
    *a9 = result;
  }

  return result;
}

uint64_t sub_100440564(uint64_t a1, unsigned __int8 a2)
{
  v4 = a2;
  if (a2 <= 1u)
  {
    if (a2)
    {
      goto LABEL_16;
    }

    v5 = v2[5];
    result = sub_1002F178C(0x2065657274627573uLL, 0xE800000000000000, (v2 + 2), v5);
    if (v7)
    {
      v8._countAndFlagsBits = 0x2065657274627573;
      v8._object = 0xE800000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v8, v5);
    }

    v9 = result;
    v10 = v2[5];
    v11 = __CFADD__(v10, result);
    v12 = v10 + result;
    if (v11)
    {
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v2[5] = v12;
    v13 = sub_10044022C(a1);
    v14 = __OFADD__(v9, v13);
    result = v9 + v13;
    if (!v14)
    {
      return result;
    }

    __break(1u);
  }

  if (v4 != 2)
  {
    goto LABEL_22;
  }

  v15 = v2[5];
  result = sub_1002F178C(0x2D65657274627573uLL, 0xEC00000020656E6FLL, (v2 + 2), v15);
  if (v16)
  {
    v17._countAndFlagsBits = 0x2D65657274627573;
    v17._object = 0xEC00000020656E6FLL;
    result = ByteBuffer._setStringSlowpath(_:at:)(v17, v15);
  }

  v18 = result;
  v19 = v2[5];
  v11 = __CFADD__(v19, result);
  v20 = v19 + result;
  if (v11)
  {
    goto LABEL_51;
  }

  v2[5] = v20;
  v21 = sub_10044022C(a1);
  v14 = __OFADD__(v18, v21);
  result = v18 + v21;
  if (!v14)
  {
    return result;
  }

  __break(1u);
LABEL_16:
  v22 = v2[5];
  result = sub_1002F178C(0x65786F626C69616DuLL, 0xEA00000000002073, (v2 + 2), v22);
  if (v23)
  {
    v24._countAndFlagsBits = 0x65786F626C69616DLL;
    v24._object = 0xEA00000000002073;
    result = ByteBuffer._setStringSlowpath(_:at:)(v24, v22);
  }

  v25 = result;
  v26 = v2[5];
  v11 = __CFADD__(v26, result);
  v27 = v26 + result;
  if (v11)
  {
    goto LABEL_52;
  }

  v2[5] = v27;
  v28 = sub_10044022C(a1);
  v14 = __OFADD__(v25, v28);
  result = v25 + v28;
  if (v14)
  {
    __break(1u);
LABEL_22:
    if (a1 > 1)
    {
      if (a1 == 2)
      {
LABEL_36:
        v39 = v2[5];
        v2 += 5;
        v38 = v39;
        result = sub_1002F178C(0x6269726373627573uLL, 0xEA00000000006465, (v2 - 3), v39);
        if (v40)
        {
          v41._countAndFlagsBits = 0x6269726373627573;
          v41._object = 0xEA00000000006465;
          result = ByteBuffer._setStringSlowpath(_:at:)(v41, v38);
        }

        v33 = *v2 + result;
        if (!__CFADD__(*v2, result))
        {
          goto LABEL_49;
        }

        __break(1u);
        goto LABEL_41;
      }

      if (a1 != 3)
      {
LABEL_41:
        v43 = v2[5];
        v2 += 5;
        v42 = v43;
        result = sub_1002F178C(0xD000000000000010, 0x80000001004B0DA0, (v2 - 3), v43);
        if (v44)
        {
          v45._object = 0x80000001004B0DA0;
          v45._countAndFlagsBits = 0xD000000000000010;
          result = ByteBuffer._setStringSlowpath(_:at:)(v45, v42);
        }

        v33 = *v2 + result;
        if (!__CFADD__(*v2, result))
        {
          goto LABEL_49;
        }

        __break(1u);
LABEL_46:
        v47 = v2[5];
        v2 += 5;
        v46 = v47;
        result = sub_1002F178C(0x6C616E6F73726570uLL, 0xE800000000000000, (v2 - 3), v47);
        if (v48)
        {
          v49._countAndFlagsBits = 0x6C616E6F73726570;
          v49._object = 0xE800000000000000;
          result = ByteBuffer._setStringSlowpath(_:at:)(v49, v46);
        }

        v33 = *v2 + result;
        if (!__CFADD__(*v2, result))
        {
LABEL_49:
          *v2 = v33;
          return result;
        }

LABEL_53:
        __break(1u);
        return result;
      }

      v29 = v2[5];
      v2 += 5;
      a1 = v29;
      result = sub_1002F178C(0x64657463656C6573uLL, 0xE800000000000000, (v2 - 3), v29);
      if (v30)
      {
        v31._countAndFlagsBits = 0x64657463656C6573;
        v31._object = 0xE800000000000000;
        v32 = a1;
        a1 = v2;
        result = ByteBuffer._setStringSlowpath(_:at:)(v31, v32);
      }

      v33 = *v2 + result;
      if (!__CFADD__(*v2, result))
      {
        goto LABEL_49;
      }

      __break(1u);
    }

    if (a1)
    {
      goto LABEL_46;
    }

    v35 = v2[5];
    v2 += 5;
    v34 = v35;
    result = sub_1002F178C(0x7365786F626E69uLL, 0xE700000000000000, (v2 - 3), v35);
    if (v36)
    {
      v37._countAndFlagsBits = 0x7365786F626E69;
      v37._object = 0xE700000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v37, v34);
    }

    v33 = *v2 + result;
    if (!__CFADD__(*v2, result))
    {
      goto LABEL_49;
    }

    __break(1u);
    goto LABEL_36;
  }

  return result;
}

void MailboxFilter.hash(into:)(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      sub_1004A6EB4(7uLL);
      v7 = *(a2 + 16);
      sub_1004A6EB4(v7);
      if (v7)
      {
        v8 = (a2 + 40);
        do
        {
          v9 = *v8;
          v8 += 4;
          sub_1004A6EB4(v9 | (v9 << 32));
          --v7;
        }

        while (v7);
      }
    }

    else
    {
      sub_1004A6EB4(qword_100506868[a2]);
    }
  }

  else if (a3)
  {
    sub_1004A6EB4(4uLL);
    v10 = *(a2 + 16);
    sub_1004A6EB4(v10);
    if (v10)
    {
      v11 = (a2 + 40);
      do
      {
        v12 = *v11;
        v11 += 4;
        sub_1004A6EB4(v12 | (v12 << 32));
        --v10;
      }

      while (v10);
    }
  }

  else
  {
    sub_1004A6EB4(3uLL);
    v4 = *(a2 + 16);
    sub_1004A6EB4(v4);
    if (v4)
    {
      v5 = (a2 + 40);
      do
      {
        v6 = *v5;
        v5 += 4;
        sub_1004A6EB4(v6 | (v6 << 32));
        --v4;
      }

      while (v4);
    }
  }
}

Swift::Int MailboxFilter.hashValue.getter(uint64_t a1, unsigned __int8 a2)
{
  sub_1004A6E94();
  MailboxFilter.hash(into:)(v5, a1, a2);
  return sub_1004A6F14();
}

Swift::Int sub_100440A80()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1004A6E94();
  MailboxFilter.hash(into:)(v4, v1, v2);
  return sub_1004A6F14();
}

Swift::Int sub_100440ADC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_1004A6E94();
  MailboxFilter.hash(into:)(v5, v2, v3);
  return sub_1004A6F14();
}

uint64_t _s12NIOIMAPCore213MailboxFilterO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, unsigned __int8 a2, uint64_t a3, char a4)
{
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      if (a4 == 2)
      {
        v4 = a3;
        return _s12NIOIMAPCore29MailboxesV23__derived_struct_equalsySbAC_ACtFZ_0(a1, v4);
      }
    }

    else if (a1 <= 1)
    {
      if (a1)
      {
        if (a4 == 3 && a3 == 1)
        {
          return 1;
        }
      }

      else if (a4 == 3 && !a3)
      {
        return 1;
      }
    }

    else if (a1 == 2)
    {
      if (a4 == 3 && a3 == 2)
      {
        return 1;
      }
    }

    else if (a1 == 3)
    {
      if (a4 == 3 && a3 == 3)
      {
        return 1;
      }
    }

    else if (a4 == 3 && a3 == 4)
    {
      return 1;
    }
  }

  else if (a2)
  {
    if (a4 == 1)
    {
LABEL_10:
      v4 = a3;
      return _s12NIOIMAPCore29MailboxesV23__derived_struct_equalsySbAC_ACtFZ_0(a1, v4);
    }
  }

  else if (!a4)
  {
    goto LABEL_10;
  }

  return 0;
}

unint64_t sub_100440C28()
{
  result = qword_1005DCAD8;
  if (!qword_1005DCAD8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MailboxFilter, &type metadata for MailboxFilter, v0, v1);
    atomic_store(result, &qword_1005DCAD8);
  }

  return result;
}

uint64_t sub_100440C7C(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_100440C98(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100440CE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_100440D24(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

double EmailAddressGroup.init(groupName:sourceRoot:children:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *&v12 = a1;
  *(&v12 + 1) = a2;
  LODWORD(v13) = a3;
  WORD2(v13) = WORD2(a3);
  BYTE6(v13) = BYTE6(a3);
  *(&v13 + 1) = a4;
  *&v14 = a5;
  DWORD2(v14) = a6;
  BYTE14(v14) = BYTE6(a6);
  WORD6(v14) = WORD2(a6);
  v15 = a7;
  v16[0] = a1;
  v16[1] = a2;
  v17 = a3;
  v18 = WORD2(a3);
  v19 = BYTE6(a3);
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v24 = BYTE6(a6);
  v23 = WORD2(a6);
  v25 = a7;
  sub_1003A31B0(&v12, v11);
  sub_1003A320C(v16);
  v9 = v13;
  *a8 = v12;
  *(a8 + 16) = v9;
  result = *&v14;
  *(a8 + 32) = v14;
  *(a8 + 48) = v15;
  return result;
}

void EmailAddressGroup.hash(into:)(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  sub_1004A6EA4();
  if (*(v2 + 24))
  {
    sub_1004A6EC4(1u);
    swift_beginAccess();
    sub_1004A6EA4();
  }

  else
  {
    sub_1004A6EC4(0);
  }

  sub_1003AB028(a1, *(v2 + 48));
}

Swift::Int EmailAddressGroup.hashValue.getter()
{
  sub_1004A6E94();
  EmailAddressGroup.hash(into:)(v1);
  return sub_1004A6F14();
}

Swift::Int sub_100440F2C(uint64_t a1)
{
  sub_1004A6E94();
  EmailAddressGroup.hash(into:)(v2);
  return sub_1004A6F14();
}

uint64_t sub_100440F68(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return _s12NIOIMAPCore217EmailAddressGroupV23__derived_struct_equalsySbAC_ACtFZ_0(v5, v7) & 1;
}

void EmailAddressListElement.hash(into:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    v3 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x28);
    v4 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x40);
    sub_1004A6EB4(1uLL);
    swift_beginAccess();
    sub_1004A6EA4();
    if (v3)
    {
      sub_1004A6EC4(1u);
      swift_beginAccess();
      sub_1004A6EA4();
    }

    else
    {
      sub_1004A6EC4(0);
    }

    sub_1003AB028(a1, v4);
  }

  else
  {
    sub_1004A6EB4(0);
    EmailAddress.hash(into:)();
  }
}

Swift::Int EmailAddressListElement.hashValue.getter(unint64_t a1)
{
  sub_1004A6E94();
  EmailAddressListElement.hash(into:)(v3, a1);
  return sub_1004A6F14();
}

Swift::Int sub_1004411A4()
{
  v1 = *v0;
  sub_1004A6E94();
  EmailAddressListElement.hash(into:)(v3, v1);
  return sub_1004A6F14();
}

Swift::Int sub_1004411F4(uint64_t a1)
{
  v2 = *v1;
  sub_1004A6E94();
  EmailAddressListElement.hash(into:)(v4, v2);
  return sub_1004A6F14();
}

uint64_t sub_100441244(uint64_t *a1)
{
  v2 = v1;
  *v38 = *(a1 + 3);
  *&v32[1] = *(a1 + 3);
  v46 = *v32;
  *&v38[15] = *(a1 + 39);
  v4 = *(a1 + 4);
  v5 = *(a1 + 22);
  v6 = (v5 << 48) | (*(a1 + 10) << 32);
  *&v32[16] = *(a1 + 39);
  v47 = *&v32[16];
  v8 = *a1;
  v7 = a1[1];
  memset(v45, 0, sizeof(v45));
  v48 = v8;
  v49 = v7;
  v52 = v5;
  v51 = WORD2(v6);
  v50 = v4;
  v53 = 0;
  v54[0] = 0;
  *(v54 + 7) = 0;
  memset(v55, 0, sizeof(v55));
  v57 = *&v32[16];
  v56 = *v32;
  v58 = v8;
  v59 = v7;
  v62 = v5;
  v61 = WORD2(v6);
  v60 = v4;
  v63 = 0;
  v64[0] = 0;
  *(v64 + 7) = 0;
  sub_1004419B4(v38, v39);
  sub_1004419B4(v38, v39);

  sub_1003A3260(v45, v39);
  sub_1003A32BC(v55);
  v9 = sub_1003E367C(v45);
  result = sub_1003A32BC(v45);
  v11 = a1[6];
  v37 = v11;
  v12 = v11[2];
  if (v12)
  {
    v13 = *(v2 + 20);
    result = sub_1002F178C(0, 0xE000000000000000, v2 + 8, v13);
    if (v14)
    {
      v15._countAndFlagsBits = 0;
      v15._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v15, v13);
    }

    v16 = result;
    v17 = *(v2 + 20);
    v18 = __CFADD__(v17, result);
    v19 = v17 + result;
    if (v18)
    {
      goto LABEL_21;
    }

    *(v2 + 20) = v19;
  }

  else
  {
    v16 = 0;
  }

  __chkstk_darwin(result);
  v29[2] = sub_1003E7C08;
  v29[3] = 0;
  v29[4] = v2;
  v29[5] = &v37;
  v29[6] = 0;
  v29[7] = 0xE000000000000000;
  result = sub_100451C5C(0, sub_100441A24, v29, v11);
  v20 = v16 + result;
  if (__OFADD__(v16, result))
  {
    goto LABEL_18;
  }

  if (!v12)
  {
    result = 0;
    v26 = v20;
    goto LABEL_13;
  }

  v21 = *(v2 + 20);
  result = sub_1002F178C(0, 0xE000000000000000, v2 + 8, v21);
  if (v22)
  {
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v23, v21);
  }

  v24 = *(v2 + 20);
  v18 = __CFADD__(v24, result);
  v25 = v24 + result;
  if (v18)
  {
    goto LABEL_22;
  }

  *(v2 + 20) = v25;
  v26 = v20 + result;
  if (__OFADD__(v20, result))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  v27 = v9 + v26;
  if (__OFADD__(v9, v26))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  *&v31[1] = *v38;
  v40 = *v31;
  *&v31[16] = *&v38[15];
  memset(v32, 0, 23);
  v41 = *&v38[15];
  memset(v39, 0, sizeof(v39));
  v42 = 0;
  v43[0] = 0;
  *(v43 + 7) = 0;
  v43[2] = 0;
  v44[0] = 0;
  *(v44 + 7) = 0;
  v33 = *&v38[15];
  *&v32[23] = *v31;
  v34 = 0;
  v35[0] = 0;
  *(v35 + 7) = 0;
  v35[2] = 0;
  v36[0] = 0;
  *(v36 + 7) = 0;
  sub_1003A3260(v39, &v30);
  sub_1003A32BC(v32);
  v28 = sub_1003E367C(v39);
  sub_1003A32BC(v39);
  result = v27 + v28;
  if (__OFADD__(v27, v28))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  return result;
}

uint64_t _s12NIOIMAPCore217EmailAddressGroupV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (!sub_10020FBD0(*a1, *(a1 + 8), *(a1 + 16) | (*(a1 + 20) << 32) | (*(a1 + 22) << 48), *a2, *(a2 + 8), *(a2 + 16) | (*(a2 + 20) << 32) | (*(a2 + 22) << 48)))
  {
    return 0;
  }

  v4 = *(a2 + 24);
  if (!*(a1 + 24))
  {
    if (!v4)
    {
      goto LABEL_5;
    }

    return 0;
  }

  if (!v4)
  {
    return 0;
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 40) | ((*(a1 + 44) | (*(a1 + 46) << 16)) << 32);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40) | ((*(a2 + 44) | (*(a2 + 46) << 16)) << 32);

  LOBYTE(v5) = sub_10020FBD0(v9, v5, v6 & 0xFFFFFFFFFFFFFFLL, v4, v7, v8 & 0xFFFFFFFFFFFFFFLL);

  if ((v5 & 1) == 0)
  {
    return 0;
  }

LABEL_5:
  v10 = *(a1 + 48);
  v11 = *(a2 + 48);

  return sub_100398218(v10, v11);
}

uint64_t _s12NIOIMAPCore223EmailAddressListElementO21__derived_enum_equalsySbAC_ACtFZ_0(unint64_t a1, unint64_t a2)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    v7 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
    v11 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v12 = v7;
    v13 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x30);
    *&v14 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x40);
    if ((a2 & 0x8000000000000000) != 0)
    {
      v8 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
      v16 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
      v17 = v8;
      v18 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x30);
      *&v19 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x40);
      sub_1003A31B0(&v16, v10);
      v6 = _s12NIOIMAPCore217EmailAddressGroupV23__derived_struct_equalsySbAC_ACtFZ_0(&v11, &v16);
      sub_1003A320C(&v16);
      return v6 & 1;
    }

    goto LABEL_5;
  }

  v2 = *(a1 + 64);
  v13 = *(a1 + 48);
  v14 = v2;
  v15[0] = *(a1 + 80);
  *(v15 + 15) = *(a1 + 95);
  v3 = *(a1 + 32);
  v11 = *(a1 + 16);
  v12 = v3;
  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_5:
    v6 = 0;
    return v6 & 1;
  }

  v4 = *(a2 + 64);
  v18 = *(a2 + 48);
  v19 = v4;
  v20[0] = *(a2 + 80);
  *(v20 + 15) = *(a2 + 95);
  v5 = *(a2 + 32);
  v16 = *(a2 + 16);
  v17 = v5;
  sub_1003A3260(&v16, v10);
  v6 = _s12NIOIMAPCore212EmailAddressV23__derived_struct_equalsySbAC_ACtFZ_0(&v11, &v16);
  sub_1003A32BC(&v16);
  return v6 & 1;
}

unint64_t sub_10044179C()
{
  result = qword_1005DCAE0;
  if (!qword_1005DCAE0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EmailAddressGroup, &type metadata for EmailAddressGroup, v0, v1);
    atomic_store(result, &qword_1005DCAE0);
  }

  return result;
}

unint64_t sub_1004417F4()
{
  result = qword_1005DCAE8;
  if (!qword_1005DCAE8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EmailAddressListElement, &type metadata for EmailAddressListElement, v0, v1);
    atomic_store(result, &qword_1005DCAE8);
  }

  return result;
}

uint64_t sub_100441848(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_100441890(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1004418F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 8))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100441954(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1004419B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D8528, &qword_1004F4B48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100441A4C()
{
  result = qword_1005DCAF0;
  if (!qword_1005DCAF0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MailboxID, &type metadata for MailboxID, v0, v1);
    atomic_store(result, &qword_1005DCAF0);
  }

  return result;
}

unint64_t sub_100441AA4()
{
  result = qword_1005DCAF8;
  if (!qword_1005DCAF8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MailboxID, &type metadata for MailboxID, v0, v1);
    atomic_store(result, &qword_1005DCAF8);
  }

  return result;
}

unint64_t sub_100441AFC()
{
  result = qword_1005DCB00;
  if (!qword_1005DCB00)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MailboxID, &type metadata for MailboxID, v0, v1);
    atomic_store(result, &qword_1005DCB00);
  }

  return result;
}

void sub_100441B60(unint64_t a1, unint64_t a2)
{
  if (*v2 == 1)
  {

    sub_1004425C0(a1, a2);
    return;
  }

  v26 = *v2;
  v5 = HIDWORD(*(v2 + 2));
  v6 = sub_100442FFC(a1, a2);
  if (v6 <= 1)
  {
    if (!v6)
    {

      sub_100443574(a1, a2);
      return;
    }

LABEL_21:
    if ((a2 & 0x1000000000000000) == 0)
    {
LABEL_22:
      v30._countAndFlagsBits = sub_1004A6CE4();
      sub_1004A5994(v30);

      v31._countAndFlagsBits = 658813;
      v31._object = 0xE300000000000000;
      sub_1004A5994(v31);
      v13 = sub_1002F178C(0x7BuLL, 0xE100000000000000, v2 + 8, v5);
      if (v14)
      {
        v15._countAndFlagsBits = 123;
        v15._object = 0xE100000000000000;
        v13 = ByteBuffer._setStringSlowpath(_:at:)(v15, v5);
      }

      v16 = v13;

      v17 = *(v2 + 5);
      v18 = __CFADD__(v17, v16);
      v19 = v17 + v16;
      if (v18)
      {
        __break(1u);
LABEL_37:
        sub_1004A59E4();
LABEL_29:
        v32._countAndFlagsBits = sub_1004A6CE4();
        sub_1004A5994(v32);

        v33._countAndFlagsBits = 168656171;
        v33._object = 0xE400000000000000;
        sub_1004A5994(v33);
        v20 = sub_1002F178C(0x7BuLL, 0xE100000000000000, v2 + 8, v5);
        if (v21)
        {
          v22._countAndFlagsBits = 123;
          v22._object = 0xE100000000000000;
          v20 = ByteBuffer._setStringSlowpath(_:at:)(v22, v5);
        }

        v23 = v20;

        v24 = *(v2 + 5);
        v18 = __CFADD__(v24, v23);
        v25 = v24 + v23;
        if (v18)
        {
          __break(1u);
        }

        else
        {
          *(v2 + 5) = v25;
          if (!__OFADD__(v23, sub_1003E0978(a1, a2)))
          {
            return;
          }
        }

        __break(1u);
        return;
      }

      *(v2 + 5) = v19;
      if (!__OFADD__(v16, sub_1003E0978(a1, a2)))
      {
        return;
      }

      __break(1u);
LABEL_28:
      if ((a2 & 0x1000000000000000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_37;
    }

LABEL_35:
    sub_1004A59E4();
    goto LABEL_22;
  }

  if (v6 != 2)
  {
    goto LABEL_28;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    sub_1004A59E4();
  }

  v28._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v28);

  v29._countAndFlagsBits = 658813;
  v29._object = 0xE300000000000000;
  sub_1004A5994(v29);
  v7 = sub_1002F178C(0x7BuLL, 0xE100000000000000, v2 + 8, v5);
  if (v8)
  {
    v9._countAndFlagsBits = 123;
    v9._object = 0xE100000000000000;
    v7 = ByteBuffer._setStringSlowpath(_:at:)(v9, v5);
  }

  v10 = v7;

  v11 = *(v2 + 5);
  v12 = (v11 + v10);
  if (__CFADD__(v11, v10))
  {
    __break(1u);
    goto LABEL_35;
  }

  *(v2 + 5) = v12;
  if (((*(&v26 + 1) | (SBYTE5(v26) << 32)) & 0x8000000000000000) == 0)
  {
    sub_1003E46E4(v12);
  }

  if (__OFADD__(v10, sub_1003E0978(a1, a2)))
  {
    __break(1u);
    goto LABEL_21;
  }
}

void sub_100441F24(uint64_t a1)
{
  if (*v1 == 1)
  {

    sub_100442968(a1);
    return;
  }

  v27 = *v1;
  v3 = HIDWORD(*(v1 + 2));
  v4 = sub_10044314C(a1);
  if (v4 <= 1)
  {
    if (!v4)
    {

      sub_100443A50(a1);
      return;
    }

LABEL_19:
    v31._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v31);

    v32._countAndFlagsBits = 658813;
    v32._object = 0xE300000000000000;
    sub_1004A5994(v32);
    v12 = sub_1002F178C(0x7BuLL, 0xE100000000000000, v1 + 8, v3);
    if (v13)
    {
      v14._countAndFlagsBits = 123;
      v14._object = 0xE100000000000000;
      v12 = ByteBuffer._setStringSlowpath(_:at:)(v14, v3);
    }

    v15 = v12;

    v16 = *(v1 + 5);
    v17 = __CFADD__(v16, v15);
    v18 = v16 + v15;
    if (!v17)
    {
      *(v1 + 5) = v18;
      sub_1003E0AC4(a1);
      if (!__OFADD__(v15, v19))
      {
        return;
      }

      __break(1u);
LABEL_25:
      v33._countAndFlagsBits = sub_1004A6CE4();
      sub_1004A5994(v33);

      v34._countAndFlagsBits = 168656171;
      v34._object = 0xE400000000000000;
      sub_1004A5994(v34);
      v20 = sub_1002F178C(0x7BuLL, 0xE100000000000000, v1 + 8, v3);
      if (v21)
      {
        v22._countAndFlagsBits = 123;
        v22._object = 0xE100000000000000;
        v20 = ByteBuffer._setStringSlowpath(_:at:)(v22, v3);
      }

      v23 = v20;

      v24 = *(v1 + 5);
      v17 = __CFADD__(v24, v23);
      v25 = v24 + v23;
      if (!v17)
      {
        *(v1 + 5) = v25;
        sub_1003E0AC4(a1);
        if (!__OFADD__(v23, v26))
        {
          return;
        }

LABEL_33:
        __break(1u);
        return;
      }

LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v4 != 2)
  {
    goto LABEL_25;
  }

  v29._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v29);

  v30._countAndFlagsBits = 658813;
  v30._object = 0xE300000000000000;
  sub_1004A5994(v30);
  v5 = sub_1002F178C(0x7BuLL, 0xE100000000000000, v1 + 8, v3);
  if (v6)
  {
    v7._countAndFlagsBits = 123;
    v7._object = 0xE100000000000000;
    v5 = ByteBuffer._setStringSlowpath(_:at:)(v7, v3);
  }

  v8 = v5;

  v9 = *(v1 + 5);
  v10 = (v9 + v8);
  if (__CFADD__(v9, v8))
  {
    __break(1u);
    goto LABEL_31;
  }

  *(v1 + 5) = v10;
  if (((*(&v27 + 1) | (SBYTE5(v27) << 32)) & 0x8000000000000000) == 0)
  {
    sub_1003E46E4(v10);
  }

  sub_1003E0AC4(a1);
  if (__OFADD__(v8, v11))
  {
    __break(1u);
    goto LABEL_19;
  }
}

void sub_10044226C(uint64_t *a1)
{
  if (*v1 == 1)
  {

    sub_100442CAC(a1);
    return;
  }

  v27 = *v1;
  v3 = HIDWORD(*(v1 + 2));
  v4 = sub_1004434C4(a1);
  if (v4 <= 1)
  {
    if (!v4)
    {

      sub_100443DD8(a1);
      return;
    }

LABEL_19:
    v31._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v31);

    v32._countAndFlagsBits = 658813;
    v32._object = 0xE300000000000000;
    sub_1004A5994(v32);
    v12 = sub_1002F178C(0x7BuLL, 0xE100000000000000, v1 + 8, v3);
    if (v13)
    {
      v14._countAndFlagsBits = 123;
      v14._object = 0xE100000000000000;
      v12 = ByteBuffer._setStringSlowpath(_:at:)(v14, v3);
    }

    v15 = v12;

    v16 = *(v1 + 5);
    v17 = __CFADD__(v16, v15);
    v18 = v16 + v15;
    if (!v17)
    {
      *(v1 + 5) = v18;
      sub_1003E0BCC(a1);
      if (!__OFADD__(v15, v19))
      {
        return;
      }

      __break(1u);
LABEL_25:
      v33._countAndFlagsBits = sub_1004A6CE4();
      sub_1004A5994(v33);

      v34._countAndFlagsBits = 168656171;
      v34._object = 0xE400000000000000;
      sub_1004A5994(v34);
      v20 = sub_1002F178C(0x7BuLL, 0xE100000000000000, v1 + 8, v3);
      if (v21)
      {
        v22._countAndFlagsBits = 123;
        v22._object = 0xE100000000000000;
        v20 = ByteBuffer._setStringSlowpath(_:at:)(v22, v3);
      }

      v23 = v20;

      v24 = *(v1 + 5);
      v17 = __CFADD__(v24, v23);
      v25 = v24 + v23;
      if (!v17)
      {
        *(v1 + 5) = v25;
        sub_1003E0BCC(a1);
        if (!__OFADD__(v23, v26))
        {
          return;
        }

LABEL_33:
        __break(1u);
        return;
      }

LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v4 != 2)
  {
    goto LABEL_25;
  }

  v29._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v29);

  v30._countAndFlagsBits = 658813;
  v30._object = 0xE300000000000000;
  sub_1004A5994(v30);
  v5 = sub_1002F178C(0x7BuLL, 0xE100000000000000, v1 + 8, v3);
  if (v6)
  {
    v7._countAndFlagsBits = 123;
    v7._object = 0xE100000000000000;
    v5 = ByteBuffer._setStringSlowpath(_:at:)(v7, v3);
  }

  v8 = v5;

  v9 = *(v1 + 5);
  v10 = (v9 + v8);
  if (__CFADD__(v9, v8))
  {
    __break(1u);
    goto LABEL_31;
  }

  *(v1 + 5) = v10;
  if (((*(&v27 + 1) | (SBYTE5(v27) << 32)) & 0x8000000000000000) == 0)
  {
    sub_1003E46E4(v10);
  }

  sub_1003E0BCC(a1);
  if (__OFADD__(v8, v11))
  {
    __break(1u);
    goto LABEL_19;
  }
}

uint64_t sub_1004425C0(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v32 = *v2;
  v5 = HIDWORD(*(v2 + 2));
  v6 = sub_100442FFC(a1, a2);
  if (v6 <= 1)
  {
    if (v6)
    {
      goto LABEL_22;
    }

    v4 = 0;
    result = sub_1002F178C(0x228588E222uLL, 0xA500000000000000, (v2 + 2), v5);
    if (v8)
    {
      v9._countAndFlagsBits = 0x228588E222;
      v9._object = 0xA500000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v9, v5);
    }

    v10 = v2[5];
    v3 = v2 + 5;
    v6 = v10 + result;
    if (!__CFADD__(v10, result))
    {
      goto LABEL_33;
    }

    __break(1u);
  }

  if (v6 != 2)
  {
LABEL_28:
    if ((v4 & 0x1000000000000000) != 0)
    {
      sub_1004A59E4();
    }

    v37._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v37);

    v38._countAndFlagsBits = 0x8588E20A0D7D2BLL;
    v38._object = 0xA700000000000000;
    sub_1004A5994(v38);
    v27 = sub_1002F178C(0x7BuLL, 0xE100000000000000, (v3 + 2), v5);
    if (v28)
    {
      v29._countAndFlagsBits = 123;
      v29._object = 0xE100000000000000;
      v27 = ByteBuffer._setStringSlowpath(_:at:)(v29, v5);
    }

    v30 = v27;

    v31 = v3[5];
    v3 += 5;
    result = v30;
    v6 = v31 + v30;
    if (!__CFADD__(v31, v30))
    {
LABEL_33:
      *v3 = v6;
      return result;
    }

    __break(1u);
LABEL_37:
    __break(1u);
    return result;
  }

  if ((v4 & 0x1000000000000000) != 0)
  {
    sub_1004A59E4();
  }

  v33._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v33);

  v34._countAndFlagsBits = 658813;
  v34._object = 0xE300000000000000;
  sub_1004A5994(v34);
  v4 = 0;
  v11 = sub_1002F178C(0x7BuLL, 0xE100000000000000, (v3 + 2), v5);
  if (v12)
  {
    v13._countAndFlagsBits = 123;
    v13._object = 0xE100000000000000;
    v11 = ByteBuffer._setStringSlowpath(_:at:)(v13, v5);
  }

  v14 = v11;

  v15 = v3[5];
  v5 = v15 + v14;
  if (__CFADD__(v15, v14))
  {
    __break(1u);
    goto LABEL_35;
  }

  v3[5] = v5;
  if (((*(&v32 + 1) | (SBYTE5(v32) << 32)) & 0x8000000000000000) == 0)
  {
    sub_1003E46E4(v5);
  }

  result = sub_1002F178C(0x8588E2uLL, 0xA300000000000000, (v3 + 2), v5);
  if (v16)
  {
    v17._countAndFlagsBits = 8751330;
    v17._object = 0xA300000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v17, v5);
  }

  v18 = v3[5];
  v19 = __CFADD__(v18, result);
  v20 = v18 + result;
  if (v19)
  {
    goto LABEL_37;
  }

  v3[5] = v20;
  v21 = __OFADD__(v14, result);
  result += v14;
  if (v21)
  {
    __break(1u);
LABEL_22:
    if ((v4 & 0x1000000000000000) == 0)
    {
LABEL_23:
      v35._countAndFlagsBits = sub_1004A6CE4();
      sub_1004A5994(v35);

      v36._countAndFlagsBits = 0x8588E20A0D7DLL;
      v36._object = 0xA600000000000000;
      sub_1004A5994(v36);
      v4 = 0;
      v22 = sub_1002F178C(0x7BuLL, 0xE100000000000000, (v3 + 2), v5);
      if (v23)
      {
        v24._countAndFlagsBits = 123;
        v24._object = 0xE100000000000000;
        v22 = ByteBuffer._setStringSlowpath(_:at:)(v24, v5);
      }

      v25 = v22;

      v26 = v3[5];
      v3 += 5;
      result = v25;
      v6 = v26 + v25;
      if (!__CFADD__(v26, v25))
      {
        goto LABEL_33;
      }

      __break(1u);
      goto LABEL_28;
    }

LABEL_35:
    sub_1004A59E4();
    goto LABEL_23;
  }

  return result;
}

uint64_t sub_100442968(uint64_t a1)
{
  v2 = v1;
  v30 = *v1;
  v3 = HIDWORD(*(v1 + 2));
  v4 = sub_10044314C(a1);
  if (v4 <= 1)
  {
    if (v4)
    {
      goto LABEL_20;
    }

    result = sub_1002F178C(0x228588E222uLL, 0xA500000000000000, (v1 + 2), v3);
    if (v6)
    {
      v7._countAndFlagsBits = 0x228588E222;
      v7._object = 0xA500000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v7, v3);
    }

    v8 = v1[5];
    v2 = v1 + 5;
    v4 = v8 + result;
    if (!__CFADD__(v8, result))
    {
      goto LABEL_28;
    }

    __break(1u);
  }

  if (v4 != 2)
  {
    goto LABEL_25;
  }

  v31._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v31);

  v32._countAndFlagsBits = 658813;
  v32._object = 0xE300000000000000;
  sub_1004A5994(v32);
  v9 = sub_1002F178C(0x7BuLL, 0xE100000000000000, (v2 + 2), v3);
  if (v10)
  {
    v11._countAndFlagsBits = 123;
    v11._object = 0xE100000000000000;
    v9 = ByteBuffer._setStringSlowpath(_:at:)(v11, v3);
  }

  v12 = v9;

  v13 = v2[5];
  v3 = v13 + v12;
  if (__CFADD__(v13, v12))
  {
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    return result;
  }

  v2[5] = v3;
  if (((*(&v30 + 1) | (SBYTE5(v30) << 32)) & 0x8000000000000000) == 0)
  {
    sub_1003E46E4(v3);
  }

  result = sub_1002F178C(0x8588E2uLL, 0xA300000000000000, (v2 + 2), v3);
  if (v14)
  {
    v15._countAndFlagsBits = 8751330;
    v15._object = 0xA300000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v15, v3);
  }

  v16 = v2[5];
  v17 = __CFADD__(v16, result);
  v18 = v16 + result;
  if (v17)
  {
    goto LABEL_32;
  }

  v2[5] = v18;
  v19 = __OFADD__(v12, result);
  result += v12;
  if (!v19)
  {
    return result;
  }

  __break(1u);
LABEL_20:
  v33._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v33);

  v34._countAndFlagsBits = 0x8588E20A0D7DLL;
  v34._object = 0xA600000000000000;
  sub_1004A5994(v34);
  v20 = sub_1002F178C(0x7BuLL, 0xE100000000000000, (v2 + 2), v3);
  if (v21)
  {
    v22._countAndFlagsBits = 123;
    v22._object = 0xE100000000000000;
    v20 = ByteBuffer._setStringSlowpath(_:at:)(v22, v3);
  }

  v23 = v20;

  v24 = v2[5];
  v2 += 5;
  result = v23;
  v4 = v24 + v23;
  if (!__CFADD__(v24, v23))
  {
    goto LABEL_28;
  }

  __break(1u);
LABEL_25:
  v35._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v35);

  v36._countAndFlagsBits = 0x8588E20A0D7D2BLL;
  v36._object = 0xA700000000000000;
  sub_1004A5994(v36);
  v25 = sub_1002F178C(0x7BuLL, 0xE100000000000000, (v2 + 2), v3);
  if (v26)
  {
    v27._countAndFlagsBits = 123;
    v27._object = 0xE100000000000000;
    v25 = ByteBuffer._setStringSlowpath(_:at:)(v27, v3);
  }

  v28 = v25;

  v29 = v2[5];
  v2 += 5;
  result = v28;
  v4 = v29 + v28;
  if (__CFADD__(v29, v28))
  {
    goto LABEL_31;
  }

LABEL_28:
  *v2 = v4;
  return result;
}

uint64_t sub_100442CAC(uint64_t *a1)
{
  v2 = v1;
  v30 = *v1;
  v3 = HIDWORD(*(v1 + 2));
  v4 = sub_1004434C4(a1);
  if (v4 <= 1)
  {
    if (v4)
    {
      goto LABEL_20;
    }

    result = sub_1002F178C(0x228588E222uLL, 0xA500000000000000, (v1 + 2), v3);
    if (v6)
    {
      v7._countAndFlagsBits = 0x228588E222;
      v7._object = 0xA500000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v7, v3);
    }

    v8 = v1[5];
    v2 = v1 + 5;
    v4 = v8 + result;
    if (!__CFADD__(v8, result))
    {
      goto LABEL_28;
    }

    __break(1u);
  }

  if (v4 != 2)
  {
    goto LABEL_25;
  }

  v31._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v31);

  v32._countAndFlagsBits = 658813;
  v32._object = 0xE300000000000000;
  sub_1004A5994(v32);
  v9 = sub_1002F178C(0x7BuLL, 0xE100000000000000, (v2 + 2), v3);
  if (v10)
  {
    v11._countAndFlagsBits = 123;
    v11._object = 0xE100000000000000;
    v9 = ByteBuffer._setStringSlowpath(_:at:)(v11, v3);
  }

  v12 = v9;

  v13 = v2[5];
  v3 = v13 + v12;
  if (__CFADD__(v13, v12))
  {
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    return result;
  }

  v2[5] = v3;
  if (((*(&v30 + 1) | (SBYTE5(v30) << 32)) & 0x8000000000000000) == 0)
  {
    sub_1003E46E4(v3);
  }

  result = sub_1002F178C(0x8588E2uLL, 0xA300000000000000, (v2 + 2), v3);
  if (v14)
  {
    v15._countAndFlagsBits = 8751330;
    v15._object = 0xA300000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v15, v3);
  }

  v16 = v2[5];
  v17 = __CFADD__(v16, result);
  v18 = v16 + result;
  if (v17)
  {
    goto LABEL_32;
  }

  v2[5] = v18;
  v19 = __OFADD__(v12, result);
  result += v12;
  if (!v19)
  {
    return result;
  }

  __break(1u);
LABEL_20:
  v33._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v33);

  v34._countAndFlagsBits = 0x8588E20A0D7DLL;
  v34._object = 0xA600000000000000;
  sub_1004A5994(v34);
  v20 = sub_1002F178C(0x7BuLL, 0xE100000000000000, (v2 + 2), v3);
  if (v21)
  {
    v22._countAndFlagsBits = 123;
    v22._object = 0xE100000000000000;
    v20 = ByteBuffer._setStringSlowpath(_:at:)(v22, v3);
  }

  v23 = v20;

  v24 = v2[5];
  v2 += 5;
  result = v23;
  v4 = v24 + v23;
  if (!__CFADD__(v24, v23))
  {
    goto LABEL_28;
  }

  __break(1u);
LABEL_25:
  v35._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v35);

  v36._countAndFlagsBits = 0x8588E20A0D7D2BLL;
  v36._object = 0xA700000000000000;
  sub_1004A5994(v36);
  v25 = sub_1002F178C(0x7BuLL, 0xE100000000000000, (v2 + 2), v3);
  if (v26)
  {
    v27._countAndFlagsBits = 123;
    v27._object = 0xE100000000000000;
    v25 = ByteBuffer._setStringSlowpath(_:at:)(v27, v3);
  }

  v28 = v25;

  v29 = v2[5];
  v2 += 5;
  result = v28;
  v4 = v29 + v28;
  if (__CFADD__(v29, v28))
  {
    goto LABEL_31;
  }

LABEL_28:
  *v2 = v4;
  return result;
}

uint64_t sub_100442FFC(unint64_t a1, unint64_t a2)
{
  if (v2[5] < 0)
  {
    if (v2[2])
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v17 = a1;
        v12 = a2;
        v13 = sub_1004A59E4();
        a2 = v12;
        v14 = v13;
        a1 = v17;
        if (v14 > 70)
        {
          return 1;
        }
      }

      else if ((a2 & 0x2000000000000000) == 0 && (a1 & 0xFFFFFFFFFFFFLL) > 0x46)
      {
        return 1;
      }

      v18 = 0;
      if (sub_10044425C(a1, a2, &v18))
      {
        return 0;
      }
    }

    return 1;
  }

  v3 = v2[4];
  v4 = v2[3];
  if ((v2[1] & 1) == 0)
  {
    goto LABEL_6;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v16 = a1;
    v6 = a2;
    v7 = sub_1004A59E4();
    a2 = v6;
    v8 = v7;
    a1 = v16;
    if (v8 > 70)
    {
      goto LABEL_6;
    }

LABEL_15:
    v18 = 0;
    v9 = a1;
    v10 = a2;
    v11 = sub_10044425C(a1, a2, &v18) & 1;
    if (v11)
    {
      v5 = 0;
    }

    else
    {
      v5 = 3;
    }

    if (v11)
    {
      return v5;
    }

    a2 = v10;
    a1 = v9;
    if (v4)
    {
      return v5;
    }

    goto LABEL_20;
  }

  if ((a2 & 0x2000000000000000) != 0 || (a1 & 0xFFFFFFFFFFFFLL) <= 0x46)
  {
    goto LABEL_15;
  }

LABEL_6:
  if (v4)
  {
    return 3;
  }

LABEL_20:
  if (v3)
  {
    if ((a2 & 0x1000000000000000) != 0)
    {
      if (sub_1004A59E4() <= 4096)
      {
        return 3;
      }
    }

    else if ((a2 & 0x2000000000000000) != 0 || (a1 & 0xFFFFFFFFFFFFLL) <= 0x1000)
    {
      return 3;
    }
  }

  return 2;
}

uint64_t sub_10044314C(uint64_t result)
{
  if (v1[5] < 0)
  {
    if ((v1[2] & 1) == 0)
    {
      return 1;
    }

    v3 = *(result + 16);
    if (v3 > 0x46)
    {
      return 1;
    }

    v9 = 0;
    v10 = result + 32;
    while (v3 != v9)
    {
      v11 = *(v10 + v9);
      if ((v11 - 127) < 0xFFFFFFA1)
      {
        return 1;
      }

      ++v9;
      if (v11 == 92 || v11 == 34)
      {
        while (v3 != v9)
        {
          if (__OFADD__(v9, 1))
          {
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
            return result;
          }

          v12 = *(v10 + v9);
          if ((v12 - 127) < 0xFFFFFFA1)
          {
            return 1;
          }

          ++v9;
          if (v12 == 92 || v12 == 34)
          {
            while (v3 != v9)
            {
              if (v9 >= v3)
              {
                goto LABEL_95;
              }

              if (__OFADD__(v9, 1))
              {
                goto LABEL_93;
              }

              v13 = *(v10 + v9);
              if ((v13 - 127) < 0xFFFFFFA1)
              {
                return 1;
              }

              ++v9;
              if (v13 == 92 || v13 == 34)
              {
                v19 = v3 - v9;
                v20 = (v10 + v9);
                while (v19)
                {
                  if (v9 >= v3)
                  {
                    goto LABEL_95;
                  }

                  if (__OFADD__(v9, 1))
                  {
                    goto LABEL_93;
                  }

                  v21 = *v20;
                  if ((v21 - 127) < 0xFFFFFFA1)
                  {
                    return 1;
                  }

                  ++v9;
                  ++v20;
                  --v19;
                  if (v21 == 92 || v21 == 34)
                  {
                    while (v19)
                    {
                      if (v9 >= v3)
                      {
                        goto LABEL_95;
                      }

                      if (__OFADD__(v9, 1))
                      {
                        goto LABEL_93;
                      }

                      v22 = *v20;
                      if ((v22 - 127) < 0xFFFFFFA1)
                      {
                        return 1;
                      }

                      --v19;
                      ++v20;
                      ++v9;
                      if (v22 == 92 || v22 == 34)
                      {
                        result = 1;
                        while (v19)
                        {
                          if (v9 >= v3)
                          {
                            goto LABEL_95;
                          }

                          if (__OFADD__(v9, 1))
                          {
                            goto LABEL_93;
                          }

                          v23 = *v20;
                          if ((v23 - 127) < 0xFFFFFFA1)
                          {
                            return 1;
                          }

                          if (v23 != 34)
                          {
                            ++v9;
                            ++v20;
                            --v19;
                            if (v23 != 92)
                            {
                              continue;
                            }
                          }

                          return result;
                        }

                        return 0;
                      }
                    }

                    return 0;
                  }
                }

                return 0;
              }
            }

            return 0;
          }
        }

        return 0;
      }
    }

    return 0;
  }

  if (v1[1])
  {
    v2 = *(result + 16);
    if (v2 <= 0x46)
    {
      v4 = 0;
      v5 = result + 32;
      while (v2 != v4)
      {
        v6 = *(v5 + v4);
        if ((v6 - 127) < 0xFFFFFFA1)
        {
          goto LABEL_4;
        }

        ++v4;
        if (v6 == 92 || v6 == 34)
        {
          while (v2 != v4)
          {
            if (__OFADD__(v4, 1))
            {
LABEL_92:
              __break(1u);
              goto LABEL_93;
            }

            v7 = *(v5 + v4);
            if ((v7 - 127) < 0xFFFFFFA1)
            {
              goto LABEL_4;
            }

            ++v4;
            if (v7 == 92 || v7 == 34)
            {
              while (v2 != v4)
              {
                if (v4 >= v2)
                {
                  goto LABEL_94;
                }

                if (__OFADD__(v4, 1))
                {
                  goto LABEL_92;
                }

                v8 = *(v5 + v4);
                if ((v8 - 127) < 0xFFFFFFA1)
                {
                  goto LABEL_4;
                }

                ++v4;
                if (v8 == 92 || v8 == 34)
                {
                  v14 = v2 - v4;
                  v15 = (v5 + v4);
                  while (v14)
                  {
                    if (v4 >= v2)
                    {
                      goto LABEL_94;
                    }

                    if (__OFADD__(v4, 1))
                    {
                      goto LABEL_92;
                    }

                    v16 = *v15;
                    if ((v16 - 127) < 0xFFFFFFA1)
                    {
                      goto LABEL_4;
                    }

                    ++v4;
                    ++v15;
                    --v14;
                    if (v16 == 92 || v16 == 34)
                    {
                      while (v14)
                      {
                        if (v4 >= v2)
                        {
                          goto LABEL_94;
                        }

                        if (__OFADD__(v4, 1))
                        {
                          goto LABEL_92;
                        }

                        v17 = *v15;
                        if ((v17 - 127) < 0xFFFFFFA1)
                        {
                          goto LABEL_4;
                        }

                        --v14;
                        ++v15;
                        ++v4;
                        if (v17 == 92 || v17 == 34)
                        {
                          while (v14)
                          {
                            if (v4 >= v2)
                            {
                              goto LABEL_94;
                            }

                            if (__OFADD__(v4, 1))
                            {
                              goto LABEL_92;
                            }

                            v18 = *v15;
                            if ((v18 - 127) >= 0xFFFFFFA1 && v18 != 34)
                            {
                              ++v4;
                              ++v15;
                              --v14;
                              if (v18 != 92)
                              {
                                continue;
                              }
                            }

                            goto LABEL_4;
                          }

                          return 0;
                        }
                      }

                      return 0;
                    }
                  }

                  return 0;
                }
              }

              return 0;
            }
          }

          return 0;
        }
      }

      return 0;
    }
  }

LABEL_4:
  if ((v1[3] & 1) != 0 || (v1[4] & 1) != 0 && *(result + 16) <= 0x1000uLL)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1004434C4(uint64_t *a1)
{
  v2 = a1;
  if ((v1[5] & 0x80000000) == 0)
  {
    v3 = v1[4];
    v4 = v1[3];
    if (v1[1])
    {
      v6 = sub_1004450E4(a1) & 1;
      if (v6)
      {
        result = 0;
      }

      else
      {
        result = 3;
      }

      if (v6)
      {
        return result;
      }

      v2 = a1;
      if (v4)
      {
        return result;
      }
    }

    else if (v1[3])
    {
      return 3;
    }

    if ((v3 & 1) == 0 || v2[4] - v2[3] > 4096)
    {
      return 2;
    }

    return 3;
  }

  return (v1[2] & 1) == 0 || (sub_1004450E4(a1) & 1) == 0;
}

void sub_100443574(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v5 = a1;
  if (*v2 == 1)
  {
    v66[5] = 91;
    v66[6] = 0xE100000000000000;
    v6 = sub_10015BC90(a1, a2)[2];

    v66[2] = v6;
    v67._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v67);

    v68._countAndFlagsBits = 0x5D736574796220;
    v68._object = 0xE700000000000000;
    sub_1004A5994(v68);
    v7 = *(v3 + 20);
    v8 = sub_1002F178C(0x5BuLL, 0xE100000000000000, v3 + 8, v7);
    if (v9)
    {
      v10._countAndFlagsBits = 91;
      v10._object = 0xE100000000000000;
      v8 = ByteBuffer._setStringSlowpath(_:at:)(v10, v7);
    }

    v11 = v8;

    v12 = *(v3 + 20);
    v13 = __CFADD__(v12, v11);
    v14 = v12 + v11;
    if (v13)
    {
      goto LABEL_83;
    }

    *(v3 + 20) = v14;
    return;
  }

  v15 = *(v2 + 20);
  v16 = sub_1002F178C(0x22uLL, 0xE100000000000000, v2 + 8, v15);
  if (v17)
  {
    v18._countAndFlagsBits = 34;
    v18._object = 0xE100000000000000;
    v16 = ByteBuffer._setStringSlowpath(_:at:)(v18, v15);
  }

  v19 = v16;
  v20 = *(v2 + 20);
  v21 = v20 + v16;
  if (__CFADD__(v20, v16))
  {
    goto LABEL_84;
  }

  *(v2 + 20) = v21;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v22 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v22 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v22)
  {
    v64 = v5;
    v65 = 4 * v22;
    v23 = (v5 >> 59) & 1;
    if ((a2 & 0x1000000000000000) == 0)
    {
      LOBYTE(v23) = 1;
    }

    v24 = 4 << v23;
    v25 = 15;
    v63 = v22;
    do
    {
      v26 = v25 & 0xC;
      v27 = v25;
      if (v26 == v24)
      {
        v27 = sub_10010C210(v25, v5, a2);
      }

      v28 = v27 >> 16;
      if (v27 >> 16 >= v22)
      {
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v30 = sub_1004A5A24();
        if (v26 != v24)
        {
          goto LABEL_28;
        }
      }

      else if ((a2 & 0x2000000000000000) != 0)
      {
        v66[0] = v5;
        v66[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v30 = *(v66 + v28);
        if (v26 != v24)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v29 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((v5 & 0x1000000000000000) == 0)
        {
          v29 = sub_1004A67E4();
        }

        v30 = *(v29 + v28);
        if (v26 != v24)
        {
LABEL_28:
          if ((a2 & 0x1000000000000000) == 0)
          {
            goto LABEL_29;
          }

          goto LABEL_32;
        }
      }

      v25 = sub_10010C210(v25, v5, a2);
      if ((a2 & 0x1000000000000000) == 0)
      {
LABEL_29:
        v25 = (v25 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_34;
      }

LABEL_32:
      if (v22 <= v25 >> 16)
      {
        goto LABEL_74;
      }

      v25 = sub_1004A59F4();
LABEL_34:
      if (v30 == 34)
      {
        v44 = v21 + 2;
        if (v21 >= 0xFFFFFFFE)
        {
          goto LABEL_77;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = *(v3 + 24);
          v13 = v44 >= v45;
          v46 = v44 - v45;
          if (v13)
          {
            v47 = v46;
          }

          else
          {
            v47 = 0;
          }

          v48 = variable initialization expression of Engine.isProcessingUpdates();
          ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v47, v48 & 1);
        }

        ByteBuffer._ensureAvailableCapacity(_:at:)(2u, v21);
        v49 = *(v3 + 8);
        v50 = *(v3 + 24);
        v51 = *(v3 + 28);
        v52 = *(v3 + 30);
        swift_beginAccess();
        v53 = v52 | (v51 << 8);
        v54 = v50 - v53;
        if (v50 - v53 >= v21)
        {
          v54 = v21;
        }

        if (!v21)
        {
          v54 = 0;
        }

        *(*(v49 + 24) + v53 + v54) = 8796;
        v55 = *(v3 + 20);
        v21 = v55 + 2;
        if (v55 >= 0xFFFFFFFE)
        {
          goto LABEL_78;
        }

        *(v3 + 20) = v21;
        v43 = __OFADD__(v19, 2);
        v19 += 2;
        if (v43)
        {
          goto LABEL_82;
        }

LABEL_16:
        v22 = v63;
        v5 = v64;
        continue;
      }

      if (v30 == 92)
      {
        v31 = v21 + 2;
        if (v21 >= 0xFFFFFFFE)
        {
          goto LABEL_76;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = *(v3 + 24);
          v13 = v31 >= v32;
          v33 = v31 - v32;
          if (v13)
          {
            v34 = v33;
          }

          else
          {
            v34 = 0;
          }

          v35 = variable initialization expression of Engine.isProcessingUpdates();
          ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v34, v35 & 1);
        }

        ByteBuffer._ensureAvailableCapacity(_:at:)(2u, v21);
        v36 = *(v3 + 8);
        v37 = *(v3 + 24);
        v38 = *(v3 + 28);
        v39 = *(v3 + 30);
        swift_beginAccess();
        v40 = v39 | (v38 << 8);
        v41 = v37 - v40;
        if (v37 - v40 >= v21)
        {
          v41 = v21;
        }

        if (!v21)
        {
          v41 = 0;
        }

        *(*(v36 + 24) + v40 + v41) = 23644;
        v42 = *(v3 + 20);
        v21 = v42 + 2;
        if (v42 >= 0xFFFFFFFE)
        {
          goto LABEL_79;
        }

        *(v3 + 20) = v21;
        v43 = __OFADD__(v19, 2);
        v19 += 2;
        if (v43)
        {
          goto LABEL_81;
        }

        goto LABEL_16;
      }

      v56 = sub_1003B5C9C();
      v57 = *(v3 + 20);
      v21 = v57 + v56;
      if (__CFADD__(v57, v56))
      {
        goto LABEL_75;
      }

      *(v3 + 20) = v21;
      v43 = __OFADD__(v19, v56);
      v19 += v56;
      if (v43)
      {
        goto LABEL_80;
      }
    }

    while (v65 != v25 >> 14);
  }

  v58 = sub_1002F178C(0x22uLL, 0xE100000000000000, v3 + 8, v21);
  if (v59)
  {
    v60._countAndFlagsBits = 34;
    v60._object = 0xE100000000000000;
    v58 = ByteBuffer._setStringSlowpath(_:at:)(v60, v21);
  }

  v61 = *(v3 + 20);
  v13 = __CFADD__(v61, v58);
  v62 = v61 + v58;
  if (v13)
  {
    goto LABEL_85;
  }

  *(v3 + 20) = v62;
  if (__OFADD__(v19, v58))
  {
LABEL_86:
    __break(1u);
  }
}

void sub_100443A50(uint64_t a1)
{
  v2 = v1;
  if (*v1 == 1)
  {
    v55._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v55);

    v56._countAndFlagsBits = 0x5D736574796220;
    v56._object = 0xE700000000000000;
    sub_1004A5994(v56);
    v4 = *(v1 + 20);
    v5 = sub_1002F178C(0x5BuLL, 0xE100000000000000, v1 + 8, v4);
    if (v6)
    {
      v7._countAndFlagsBits = 91;
      v7._object = 0xE100000000000000;
      v5 = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
    }

    v8 = v5;

    v9 = *(v2 + 20);
    v10 = __CFADD__(v9, v8);
    v11 = v9 + v8;
    if (v10)
    {
      goto LABEL_58;
    }

    *(v2 + 20) = v11;
  }

  else
  {
    v12 = *(v1 + 20);
    v13 = sub_1002F178C(0x22uLL, 0xE100000000000000, v1 + 8, v12);
    if (v14)
    {
      v15._countAndFlagsBits = 34;
      v15._object = 0xE100000000000000;
      v13 = ByteBuffer._setStringSlowpath(_:at:)(v15, v12);
    }

    v16 = v13;
    v17 = *(v1 + 20);
    v18 = v17 + v13;
    if (__CFADD__(v17, v13))
    {
      goto LABEL_59;
    }

    *(v1 + 20) = v18;
    v19 = *(a1 + 16);
    if (v19)
    {
      v20 = (a1 + 32);
      do
      {
        v22 = *v20++;
        v21 = v22;
        if (v22 == 34)
        {
          v36 = v18 + 2;
          if (v18 >= 0xFFFFFFFE)
          {
            goto LABEL_53;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v37 = *(v2 + 24);
            v10 = v36 >= v37;
            v38 = v36 - v37;
            if (v10)
            {
              v39 = v38;
            }

            else
            {
              v39 = 0;
            }

            v40 = variable initialization expression of Engine.isProcessingUpdates();
            ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v39, v40 & 1);
          }

          ByteBuffer._ensureAvailableCapacity(_:at:)(2u, v18);
          v41 = *(v2 + 8);
          v42 = *(v2 + 24);
          v43 = *(v2 + 28);
          v44 = *(v2 + 30);
          swift_beginAccess();
          v45 = v44 | (v43 << 8);
          v46 = v42 - v45;
          if (v42 - v45 >= v18)
          {
            v46 = v18;
          }

          if (!v18)
          {
            v46 = 0;
          }

          *(*(v41 + 24) + v45 + v46) = 8796;
          v47 = *(v2 + 20);
          v18 = v47 + 2;
          if (v47 >= 0xFFFFFFFE)
          {
            goto LABEL_54;
          }

          *(v2 + 20) = v18;
          v35 = __OFADD__(v16, 2);
          v16 += 2;
          if (v35)
          {
            goto LABEL_56;
          }
        }

        else if (v21 == 92)
        {
          v23 = v18 + 2;
          if (v18 >= 0xFFFFFFFE)
          {
            goto LABEL_52;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v24 = *(v2 + 24);
            v10 = v23 >= v24;
            v25 = v23 - v24;
            if (v10)
            {
              v26 = v25;
            }

            else
            {
              v26 = 0;
            }

            v27 = variable initialization expression of Engine.isProcessingUpdates();
            ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v26, v27 & 1);
          }

          ByteBuffer._ensureAvailableCapacity(_:at:)(2u, v18);
          v28 = *(v2 + 8);
          v29 = *(v2 + 24);
          v30 = *(v2 + 28);
          v31 = *(v2 + 30);
          swift_beginAccess();
          v32 = v31 | (v30 << 8);
          v33 = v29 - v32;
          if (v29 - v32 >= v18)
          {
            v33 = v18;
          }

          if (!v18)
          {
            v33 = 0;
          }

          *(*(v28 + 24) + v32 + v33) = 23644;
          v34 = *(v2 + 20);
          v18 = v34 + 2;
          if (v34 >= 0xFFFFFFFE)
          {
            goto LABEL_55;
          }

          *(v2 + 20) = v18;
          v35 = __OFADD__(v16, 2);
          v16 += 2;
          if (v35)
          {
            goto LABEL_57;
          }
        }

        else
        {
          v48 = sub_1003B5C9C();
          v49 = *(v2 + 20);
          v18 = v49 + v48;
          if (__CFADD__(v49, v48))
          {
            __break(1u);
LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
LABEL_54:
            __break(1u);
LABEL_55:
            __break(1u);
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
LABEL_58:
            __break(1u);
LABEL_59:
            __break(1u);
LABEL_60:
            __break(1u);
            goto LABEL_61;
          }

          *(v2 + 20) = v18;
          v35 = __OFADD__(v16, v48);
          v16 += v48;
          if (v35)
          {
            __break(1u);
            break;
          }
        }

        --v19;
      }

      while (v19);
    }

    v50 = sub_1002F178C(0x22uLL, 0xE100000000000000, v2 + 8, v18);
    if (v51)
    {
      v52._countAndFlagsBits = 34;
      v52._object = 0xE100000000000000;
      v50 = ByteBuffer._setStringSlowpath(_:at:)(v52, v18);
    }

    v53 = *(v2 + 20);
    v10 = __CFADD__(v53, v50);
    v54 = v53 + v50;
    if (v10)
    {
      goto LABEL_60;
    }

    *(v2 + 20) = v54;
    if (__OFADD__(v16, v50))
    {
LABEL_61:
      __break(1u);
    }
  }
}

void sub_100443DD8(uint64_t *a1)
{
  v2 = v1;
  if (*v1 == 1)
  {
    v75 = 91;
    v76 = 0xE100000000000000;
    v4 = a1[3];
    v5 = a1[4];
    v6 = v5 - v4;
    if (v5 == v4)
    {
      v7 = _swiftEmptyArrayStorage;
LABEL_15:
      v29 = v7[2];

      v74[0] = v29;
      v77._countAndFlagsBits = sub_1004A6CE4();
      sub_1004A5994(v77);

      v78._countAndFlagsBits = 0x5D736574796220;
      v78._object = 0xE700000000000000;
      sub_1004A5994(v78);
      v31 = v75;
      v30 = v76;
      v32 = *(v2 + 20);
      v33 = sub_1002F178C(v75, v76, v2 + 8, v32);
      if (v34)
      {
        v35._countAndFlagsBits = v31;
        v35._object = v30;
        v33 = ByteBuffer._setStringSlowpath(_:at:)(v35, v32);
      }

      v36 = v33;

      v37 = *(v2 + 20);
      v25 = __CFADD__(v37, v36);
      v38 = v37 + v36;
      if (v25)
      {
        goto LABEL_73;
      }

      *(v2 + 20) = v38;
      return;
    }

LABEL_14:
    v27 = sub_10015BEAC(v6, 0);
    ByteBufferView._copyContents(initializing:)(v27 + 4, v6, v74);
    v28 = v74[6];

    v7 = v27;
    if (v28 != v6)
    {
      goto LABEL_75;
    }

    goto LABEL_15;
  }

  v8 = *(v1 + 20);
  v9 = sub_1002F178C(0x22uLL, 0xE100000000000000, v1 + 8, v8);
  if (v10)
  {
    v11._countAndFlagsBits = 34;
    v11._object = 0xE100000000000000;
    v9 = ByteBuffer._setStringSlowpath(_:at:)(v11, v8);
  }

  v12 = v9;
  v13 = *(v1 + 20);
  v14 = v13 + v9;
  if (__CFADD__(v13, v9))
  {
    goto LABEL_72;
  }

  *(v1 + 20) = v14;
  v16 = a1[3];
  v15 = a1[4];
  v17 = *a1;
  v18 = *(a1 + 2);
  v19 = *(a1 + 3);
  v70 = *(a1 + 10);
  v20 = *(a1 + 22);
  sub_1003BD79C(a1, v74);
  v73 = v17;
  swift_beginAccess();
  if (v16 == v15)
  {
LABEL_8:

    v6 = 0;
    v21 = sub_1002F178C(0x22uLL, 0xE100000000000000, v2 + 8, v14);
    if (v22)
    {
      v23._countAndFlagsBits = 34;
      v23._object = 0xE100000000000000;
      v21 = ByteBuffer._setStringSlowpath(_:at:)(v23, v14);
    }

    v24 = *(v2 + 20);
    v25 = __CFADD__(v24, v21);
    v26 = v24 + v21;
    if (v25)
    {
      goto LABEL_74;
    }

    *(v2 + 20) = v26;
    if (!__OFADD__(v12, v21))
    {
      return;
    }

    __break(1u);
    goto LABEL_14;
  }

  if (v16 <= v18 + (v19 - v18))
  {
    v39 = v18 + (v19 - v18);
  }

  else
  {
    v39 = v16;
  }

  v71 = v20 | (v70 << 8);
  v72 = v39;
  v40 = v16;
  v69 = v18;
  while (v40 < v15)
  {
    if (v16 < v18)
    {
      goto LABEL_63;
    }

    if (v72 == v40)
    {
      goto LABEL_64;
    }

    v41 = *(*(v73 + 24) + v71 + v40);
    if (v41 == 34)
    {
      v55 = v14 + 2;
      if (v14 >= 0xFFFFFFFE)
      {
        goto LABEL_65;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v56 = *(v2 + 24);
        v25 = v55 >= v56;
        v57 = v55 - v56;
        if (v25)
        {
          v58 = v57;
        }

        else
        {
          v58 = 0;
        }

        v59 = variable initialization expression of Engine.isProcessingUpdates();
        ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v58, v59 & 1);
      }

      ByteBuffer._ensureAvailableCapacity(_:at:)(2u, v14);
      v60 = *(v2 + 8);
      v61 = *(v2 + 24);
      v62 = *(v2 + 28);
      v63 = *(v2 + 30);
      swift_beginAccess();
      v64 = v63 | (v62 << 8);
      v65 = v61 - v64;
      if (v61 - v64 >= v14)
      {
        v65 = v14;
      }

      if (!v14)
      {
        v65 = 0;
      }

      *(*(v60 + 24) + v64 + v65) = 8796;
      v66 = *(v2 + 20);
      v14 = v66 + 2;
      if (v66 >= 0xFFFFFFFE)
      {
        goto LABEL_69;
      }

      *(v2 + 20) = v14;
      v54 = __OFADD__(v12, 2);
      v12 += 2;
      if (v54)
      {
        goto LABEL_70;
      }

      goto LABEL_23;
    }

    if (v41 == 92)
    {
      v42 = v14 + 2;
      if (v14 >= 0xFFFFFFFE)
      {
        goto LABEL_67;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v43 = *(v2 + 24);
        v25 = v42 >= v43;
        v44 = v42 - v43;
        if (v25)
        {
          v45 = v44;
        }

        else
        {
          v45 = 0;
        }

        v46 = variable initialization expression of Engine.isProcessingUpdates();
        ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v45, v46 & 1);
      }

      ByteBuffer._ensureAvailableCapacity(_:at:)(2u, v14);
      v47 = *(v2 + 8);
      v48 = *(v2 + 24);
      v49 = *(v2 + 28);
      v50 = *(v2 + 30);
      swift_beginAccess();
      v51 = v50 | (v49 << 8);
      v52 = v48 - v51;
      if (v48 - v51 >= v14)
      {
        v52 = v14;
      }

      if (!v14)
      {
        v52 = 0;
      }

      *(*(v47 + 24) + v51 + v52) = 23644;
      v53 = *(v2 + 20);
      v14 = v53 + 2;
      if (v53 >= 0xFFFFFFFE)
      {
        goto LABEL_68;
      }

      *(v2 + 20) = v14;
      v54 = __OFADD__(v12, 2);
      v12 += 2;
      if (v54)
      {
        goto LABEL_71;
      }

LABEL_23:
      v18 = v69;
      goto LABEL_24;
    }

    v67 = sub_1003B5C9C();
    v68 = *(v2 + 20);
    v14 = v68 + v67;
    if (__CFADD__(v68, v67))
    {
      goto LABEL_66;
    }

    *(v2 + 20) = v14;
    v54 = __OFADD__(v12, v67);
    v12 += v67;
    if (v54)
    {
      __break(1u);
      break;
    }

LABEL_24:
    if (v15 == ++v40)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
}

unint64_t sub_10044425C(unint64_t a1, unint64_t a2, uint64_t *a3)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return 1;
  }

  v7 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v7) = 1;
  }

  v8 = 4 << v7;
  v21 = a2 & 0xFFFFFFFFFFFFFFLL;
  v9 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  result = 15;
  while (1)
  {
    v11 = result & 0xC;
    v12 = result;
    if (v11 == v8)
    {
      v16 = result;
      v12 = sub_10010C210(result, a1, a2);
      result = v16;
    }

    v13 = v12 >> 16;
    if (v12 >> 16 >= v3)
    {
      break;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v19 = result;
      v15 = sub_1004A5A24();
      result = v19;
      if (v11 != v8)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v20[0] = a1;
        v20[1] = v21;
        v14 = v20;
      }

      else
      {
        v14 = v9;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v18 = result;
          v14 = sub_1004A67E4();
          result = v18;
        }
      }

      v15 = *(v14 + v13);
      if (v11 != v8)
      {
LABEL_18:
        if ((a2 & 0x1000000000000000) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_22;
      }
    }

    result = sub_10010C210(result, a1, a2);
    if ((a2 & 0x1000000000000000) == 0)
    {
LABEL_19:
      result = (result & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_24;
    }

LABEL_22:
    if (v3 <= result >> 16)
    {
      goto LABEL_34;
    }

    result = sub_1004A59F4();
LABEL_24:
    if ((v15 - 127) < 0xA1u)
    {
      return 0;
    }

    if (v15 == 34 || v15 == 92)
    {
      v17 = *a3 + 1;
      if (__OFADD__(*a3, 1))
      {
        goto LABEL_33;
      }

      *a3 = v17;
      if (v17 >= 6)
      {
        return 0;
      }
    }

    if (4 * v3 == result >> 14)
    {
      return 1;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t MailboxInfo.init(attributes:path:extensions:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 20) = BYTE4(a3);
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

uint64_t sub_100444458(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 20);
  result = sub_1002F178C(0x28uLL, 0xE100000000000000, v1 + 8, v4);
  if (v6)
  {
    v7._countAndFlagsBits = 40;
    v7._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = result;
  v9 = *(v1 + 20);
  v10 = (v9 + result);
  if (__CFADD__(v9, result))
  {
    goto LABEL_30;
  }

  *(v1 + 20) = v10;
  v47 = *a1;
  v11 = v47;
  v12 = v47[2];
  if (v12)
  {
    result = sub_1002F178C(0, 0xE000000000000000, v1 + 8, v10);
    if (v13)
    {
      v14._countAndFlagsBits = 0;
      v14._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v14, v10);
    }

    v15 = result;
    v16 = *(v2 + 20);
    v17 = __CFADD__(v16, result);
    v18 = v16 + result;
    if (v17)
    {
      goto LABEL_39;
    }

    *(v2 + 20) = v18;
  }

  else
  {
    v15 = 0;
  }

  __chkstk_darwin(result);
  v46[2] = sub_1003C40B8;
  v46[3] = 0;
  v46[4] = v2;
  v46[5] = &v47;
  v46[6] = 32;
  v46[7] = 0xE100000000000000;
  result = sub_1004594A4(0, sub_1003DACD4, v46, v11);
  v19 = v15 + result;
  if (__OFADD__(v15, result))
  {
    goto LABEL_31;
  }

  if (!v12)
  {
    result = 0;
    v25 = v19;
    goto LABEL_16;
  }

  v20 = *(v2 + 20);
  result = sub_1002F178C(0, 0xE000000000000000, v2 + 8, v20);
  if (v21)
  {
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v22, v20);
  }

  v23 = *(v2 + 20);
  v17 = __CFADD__(v23, result);
  v24 = v23 + result;
  if (v17)
  {
    goto LABEL_40;
  }

  *(v2 + 20) = v24;
  v25 = v19 + result;
  if (__OFADD__(v19, result))
  {
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

LABEL_16:
  v26 = v8 + v25;
  if (__OFADD__(v8, v25))
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v27 = *(v2 + 20);
  result = sub_1002F178C(0x2029uLL, 0xE200000000000000, v2 + 8, v27);
  if (v28)
  {
    v29._countAndFlagsBits = 8233;
    v29._object = 0xE200000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v29, v27);
  }

  v30 = *(v2 + 20);
  v17 = __CFADD__(v30, result);
  v31 = v30 + result;
  if (v17)
  {
    goto LABEL_33;
  }

  *(v2 + 20) = v31;
  v32 = __OFADD__(v26, result);
  v33 = v26 + result;
  if (v32)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v34 = *(a1 + 8);
  v35 = sub_10014A364(*(a1 + 20));
  v37 = sub_100444D34(v35, v36);

  v32 = __OFADD__(v33, v37);
  v38 = v33 + v37;
  if (v32)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v39 = *(v2 + 20);
  result = sub_1002F178C(0x20uLL, 0xE100000000000000, v2 + 8, v39);
  if (v40)
  {
    v41._countAndFlagsBits = 32;
    v41._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v41, v39);
  }

  v42 = *(v2 + 20);
  v17 = __CFADD__(v42, result);
  v43 = v42 + result;
  if (v17)
  {
    goto LABEL_36;
  }

  *(v2 + 20) = v43;
  v44 = v38 + result;
  if (__OFADD__(v38, result))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  sub_100441F24(v34);
  v32 = __OFADD__(v44, v45);
  result = v44 + v45;
  if (v32)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

  return result;
}

uint64_t MailboxInfo.path.setter(uint64_t a1, unint64_t a2)
{
  v3 = a2;
  v5 = HIDWORD(a2);

  *(v2 + 8) = a1;
  *(v2 + 16) = v3;
  *(v2 + 20) = v5;
  return result;
}

uint64_t MailboxInfo.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(*v2 + 16);
  sub_1004A6EB4(v5);
  if (v5)
  {
    v6 = v4 + 40;
    do
    {
      sub_1004A5814();

      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      v6 += 16;
      --v5;
    }

    while (v5);
  }

  v7 = v2[20];
  sub_1004A6EB4(*(v2 + 4) | (*(v2 + 4) << 32));
  sub_1004A6EC4(v7);
  v8 = *(v2 + 4);
  v9 = *(v2 + 5);

  return sub_1003A2110(a1, v8, v9);
}

Swift::Int MailboxInfo.hashValue.getter()
{
  sub_1004A6E94();
  MailboxInfo.hash(into:)(v1);
  return sub_1004A6F14();
}

Swift::Int sub_10044489C(uint64_t a1)
{
  sub_1004A6E94();
  MailboxInfo.hash(into:)(v2);
  return sub_1004A6F14();
}

BOOL sub_1004448D8(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return _s12NIOIMAPCore211MailboxInfoV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v8);
}

uint64_t static UseAttribute.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1004A5814();
  v6 = v5;
  if (v4 == sub_1004A5814() && v6 == v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1004A6D34();
  }

  return v8 & 1;
}

uint64_t UseAttribute.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1004A5814();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

Swift::Int UseAttribute.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1004A6E94();
  sub_1004A5814();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1004A6F14();
}

Swift::Int sub_100444B80()
{
  sub_1004A6E94();
  sub_1004A5814();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1004A6F14();
}

uint64_t sub_100444BE8(uint64_t a1)
{
  sub_1004A5814();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

Swift::Int sub_100444C3C(uint64_t a1)
{
  sub_1004A6E94();
  sub_1004A5814();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1004A6F14();
}

uint64_t sub_100444CA0(void *a1, uint64_t *a2)
{
  v2 = sub_1004A5814();
  v4 = v3;
  if (v2 == sub_1004A5814() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1004A6D34();
  }

  return v7 & 1;
}

uint64_t sub_100444D34(_DWORD *a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  if (a2)
  {
    v5 = a1;
    if ((a1 != 92 || a2 != 0xE100000000000000) && (sub_1004A6D34() & 1) == 0)
    {
      goto LABEL_15;
    }

    v3 = v2 + 5;
    v6 = v2[5];
    v4 = 0;
    result = sub_1002F178C(0x225C22uLL, 0xE300000000000000, (v3 - 3), v6);
    if (v8)
    {
      v9._countAndFlagsBits = 2251810;
      v9._object = 0xE300000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v9, v6);
    }

    v10 = *v3 + result;
    if (!__CFADD__(*v3, result))
    {
      goto LABEL_26;
    }

    __break(1u);
  }

  v12 = v3[5];
  v3 += 5;
  v11 = v12;
  v5 = v3 - 3;
  result = sub_1002F178C(0x4C494EuLL, 0xE300000000000000, (v3 - 3), v12);
  if (v13)
  {
    v14._countAndFlagsBits = 4999502;
    v14._object = 0xE300000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v14, v11);
  }

  v10 = *v3 + result;
  if (!__CFADD__(*v3, result))
  {
    goto LABEL_26;
  }

  __break(1u);
LABEL_15:
  if (v5 == 34 && v4 == 0xE100000000000000 || (sub_1004A6D34() & 1) != 0)
  {
    v16 = v3[5];
    v3 += 5;
    v15 = v16;
    result = sub_1002F178C(0x225C5C22uLL, 0xE400000000000000, (v3 - 3), v16);
    if (v17)
    {
      v18._countAndFlagsBits = 576478242;
      v18._object = 0xE400000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v18, v15);
    }

    v10 = *v3 + result;
    if (!__CFADD__(*v3, result))
    {
      goto LABEL_26;
    }

    __break(1u);
  }

  v25._countAndFlagsBits = 34;
  v25._object = 0xE100000000000000;
  sub_1004A5994(v25);
  sub_1004A55C4();
  v26._countAndFlagsBits = 34;
  v26._object = 0xE100000000000000;
  sub_1004A5994(v26);
  v20 = v3[5];
  v3 += 5;
  v19 = v20;
  v21 = sub_1002F178C(0, 0xE000000000000000, (v3 - 3), v20);
  if (v22)
  {
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    v21 = ByteBuffer._setStringSlowpath(_:at:)(v23, v19);
  }

  v24 = v21;

  result = v24;
  v10 = *v3 + v24;
  if (!__CFADD__(*v3, v24))
  {
LABEL_26:
    *v3 = v10;
    return result;
  }

  __break(1u);
  return result;
}

BOOL _s12NIOIMAPCore211MailboxInfoV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1003A3710(*a1, *a2) & 1) == 0 || (*(a1 + 16) | (*(a1 + 16) << 32)) != (*(a2 + 16) | (*(a2 + 16) << 32)))
  {
    return 0;
  }

  v4 = *(a2 + 20);
  v5 = *(a1 + 20);
  v6 = sub_1000FFC98(*(a1 + 8), *(a2 + 8));
  result = 0;
  if ((v6 & 1) != 0 && v5 == v4)
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a2 + 32);
    v11 = *(a2 + 40);
    return (sub_1003A0868(v8, v10) & 1) != 0 && (sub_1003A0B30(v9, v11) & 1) != 0;
  }

  return result;
}

unint64_t sub_100445018()
{
  result = qword_1005DCB08;
  if (!qword_1005DCB08)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MailboxInfo, &type metadata for MailboxInfo, v0, v1);
    atomic_store(result, &qword_1005DCB08);
  }

  return result;
}

unint64_t sub_100445070()
{
  result = qword_1005DCB10;
  if (!qword_1005DCB10)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MailboxInfo.Attribute, &type metadata for MailboxInfo.Attribute, v0, v1);
    atomic_store(result, &qword_1005DCB10);
  }

  return result;
}

uint64_t *sub_1004450E4(uint64_t *a1)
{
  v2 = a1[3];
  v1 = a1[4];
  if (v1 - v2 <= 70)
  {
    v4 = *a1;
    v5 = *(a1 + 2);
    v6 = *(a1 + 3);
    v7 = *(a1 + 10);
    v8 = *(a1 + 22);
    swift_beginAccess();
    result = a1;
    v11 = v5 + (v6 - v5);
    v12 = v7 << 8;
    if (v2 <= v11)
    {
      v13 = v5 + (v6 - v5);
    }

    else
    {
      v13 = v2;
    }

    if (v2 <= v1)
    {
      v14 = v1;
    }

    else
    {
      v14 = v2;
    }

    v15 = v2;
    while (1)
    {
      v3 = v1 == v15;
      if (v1 == v15)
      {
        goto LABEL_61;
      }

      if (v14 == v15)
      {
        goto LABEL_64;
      }

      if (v2 < v5)
      {
        goto LABEL_65;
      }

      if (v13 == v15)
      {
        break;
      }

      v16 = *(v4 + 24);
      v17 = *(v16 + (v8 & 0xFFFFFFFFFF0000FFLL | (v7 << 8)) + v15);
      if ((v17 - 127) <= 0xFFFFFFA0)
      {
        goto LABEL_61;
      }

      ++v15;
      if (v17 == 92 || v17 == 34)
      {
        if (v15 <= v11)
        {
          v18 = v5 + (v6 - v5);
        }

        else
        {
          v18 = v15;
        }

        v19 = v15;
        while (1)
        {
          v3 = v1 == v19;
          if (v1 == v19)
          {
            break;
          }

          if (v15 < v2 || v19 >= v1)
          {
            goto LABEL_64;
          }

          if (v18 == v19)
          {
            goto LABEL_63;
          }

          v20 = *(v16 + v12 + v8 + v19);
          if ((v20 - 127) < 0xFFFFFFA1)
          {
            break;
          }

          ++v19;
          if (v20 == 92 || v20 == 34)
          {
            if (v19 <= v11)
            {
              v21 = v5 + (v6 - v5);
            }

            else
            {
              v21 = v19;
            }

            v22 = (v16 + v12 + v8 + v19);
            v23 = v1 - v19;
            while (1)
            {
              v3 = v23 == 0;
              if (!v23)
              {
                goto LABEL_61;
              }

              if (v21 == v19)
              {
                goto LABEL_63;
              }

              v24 = *v22;
              if ((v24 - 127) < 0xFFFFFFA1)
              {
                goto LABEL_61;
              }

              ++v19;
              --v23;
              ++v22;
              if (v24 == 92 || v24 == 34)
              {
                if (v19 <= v11)
                {
                  v25 = v5 + (v6 - v5);
                }

                else
                {
                  v25 = v19;
                }

                while (1)
                {
                  v3 = v23 == 0;
                  if (!v23)
                  {
                    goto LABEL_61;
                  }

                  if (v25 == v19)
                  {
                    goto LABEL_63;
                  }

                  v26 = *v22;
                  if ((v26 - 127) < 0xFFFFFFA1)
                  {
                    goto LABEL_61;
                  }

                  ++v19;
                  ++v22;
                  --v23;
                  if (v26 == 92 || v26 == 34)
                  {
                    if (v19 <= v11)
                    {
                      v27 = v5 + (v6 - v5);
                    }

                    else
                    {
                      v27 = v19;
                    }

                    while (1)
                    {
                      v3 = v23 == 0;
                      if (!v23)
                      {
                        goto LABEL_61;
                      }

                      if (v27 == v19)
                      {
                        goto LABEL_63;
                      }

                      v28 = *v22;
                      if ((v28 - 127) < 0xFFFFFFA1)
                      {
                        goto LABEL_61;
                      }

                      ++v19;
                      --v23;
                      ++v22;
                      if (v28 == 92 || v28 == 34)
                      {
                        if (v19 > v11)
                        {
                          v11 = v19;
                        }

                        v29 = v11 - v19;
                        do
                        {
                          v3 = v23 == 0;
                          if (!v23)
                          {
                            break;
                          }

                          if (!v29)
                          {
                            goto LABEL_63;
                          }

                          v30 = *v22;
                          if ((v30 - 127) < 0xFFFFFFA1)
                          {
                            break;
                          }

                          if (v30 == 34)
                          {
                            break;
                          }

                          ++v22;
                          --v29;
                          --v23;
                        }

                        while (v30 != 92);
                        goto LABEL_61;
                      }
                    }
                  }
                }
              }
            }
          }
        }

LABEL_61:
        sub_1003BD79C(result, &v31);

        return v3;
      }
    }

LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

unsigned __int8 *MailboxName.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_100447588(a1, a2, HIDWORD(a2), WORD2(a3), BYTE6(a3));

  return v3;
}

NIOIMAPCore2::MailboxPath __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MailboxPath.init(name:pathSeparator:)(NIOIMAPCore2::MailboxName name, Swift::String_optional pathSeparator)
{
  value = name._hashValue._value;
  if (pathSeparator.value._object)
  {
    rawValue = name.bytes._rawValue;
    if ((sub_1004A5584() & 0x100) != 0)
    {

      sub_1002EEE28();
      swift_allocError();
      *v4 = 0xD000000000000029;
      v4[1] = 0x80000001004AE390;
      name.bytes._rawValue = swift_willThrow();
      goto LABEL_6;
    }

    sub_1004A5584();

    name.bytes._rawValue = rawValue;
  }

  name._hashValue._value = value;
LABEL_6:
  result._pathSeparator = pathSeparator.value._countAndFlagsBits;
  result.name = name;
  return result;
}

void MailboxPath.hash(into:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = HIDWORD(a3);
  sub_1004A6EB4(a3 | (a3 << 32));
  sub_1004A6EC4(v3);
}

Swift::Int MailboxPath.hashValue.getter(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = HIDWORD(a2);
  sub_1004A6E94();
  sub_1004A6EB4(v2 | (v2 << 32));
  sub_1004A6EC4(v3);
  return sub_1004A6F14();
}

Swift::Int sub_100445570()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 12);
  sub_1004A6E94();
  sub_1004A6EB4(v1 | (v1 << 32));
  sub_1004A6EC4(v2);
  return sub_1004A6F14();
}

void sub_1004455D0()
{
  v1 = *(v0 + 12);
  sub_1004A6EB4(*(v0 + 8) | (*(v0 + 8) << 32));
  sub_1004A6EC4(v1);
}

Swift::Int sub_100445614(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 12);
  sub_1004A6E94();
  sub_1004A6EB4(v2 | (v2 << 32));
  sub_1004A6EC4(v3);
  return sub_1004A6F14();
}

void MailboxPath.displayStringComponents(omittingEmptySubsequences:)(char a1, char *a2, uint64_t a3)
{
  sub_10014A364(BYTE4(a3));
  if (!v5)
  {
    sub_10000C9C0(&qword_1005CEFD8, &qword_1004D1EC0);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_1004CEAA0;
    sub_1003F5A98(a2, j__malloc, j__realloc, sub_100127C74, sub_100127C84);
    v55 = GmailLabel.makeDisplayString()();

    *(v54 + 32) = v55;
    return;
  }

  v6 = sub_1004A5584();
  if ((v6 & 0x100) == 0)
  {
    v7 = v6;

    LOBYTE(v73) = v7;
    __chkstk_darwin(v8);
    v56[2] = &v73;
    v9 = sub_1004470E0(0x7FFFFFFFFFFFFFFFLL, a1 & 1, sub_100447A50, v56, a2, &v57);
    v10 = *(v9 + 16);
    if (!v10)
    {
LABEL_31:

      return;
    }

    v72 = _swiftEmptyArrayStorage;
    sub_100091A08(0, v10, 0);
    if (*(v9 + 16))
    {
      v11 = 0;
      v12 = v72;
      v13 = (v9 + 56);
      v58 = v10 - 1;
      v59 = v9;
      while (1)
      {
        v64 = v11;
        v14 = *(v13 - 3);
        v15 = *(v13 - 2);
        v17 = *(v13 - 1);
        v16 = *v13;
        v63 = v13;
        v62 = v14;
        swift_unknownObjectRetain();
        sub_1003BD9F8(&v73);
        v18 = *(&v74 + 1);
        v19 = v75;
        v69 = v73;
        v70 = v74;
        v71 = v75;
        v20 = (v16 >> 1) - v17;
        if (__OFSUB__(v16 >> 1, v17))
        {
          break;
        }

        v21 = v75 + v20;
        if (__CFADD__(v75, v20))
        {
          goto LABEL_34;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          if (v21 >= v74)
          {
            v22 = v21 - v74;
          }

          else
          {
            v22 = 0;
          }

          v23 = variable initialization expression of Engine.isProcessingUpdates();
          ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v22, v23 & 1);
        }

        if (v20 > 0xFFFFFFFFLL)
        {
          goto LABEL_35;
        }

        ByteBuffer._ensureAvailableCapacity(_:at:)(v20, v19);
        ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)((v15 + v17), v15 + v17 + v20, v19);
        v24 = v19 + v20;
        if (__OFADD__(v19, v20))
        {
          goto LABEL_36;
        }

        if (v24 < v18)
        {
          goto LABEL_37;
        }

        *(&v70 + 1) = v18;
        v71 = v19 + v20;
        if (v70 - (BYTE6(v70) | (WORD2(v70) << 8)) < v24)
        {
          goto LABEL_38;
        }

        HIDWORD(v69) = v19 + v20;
        v66 = v69;
        v67 = v70;
        v68 = v71;
        v25 = *(&v70 + 1);
        v26 = v71 - *(&v70 + 1);
        if (v24 - (v71 - *(&v70 + 1)) < *(&v70 + 1) || v24 < v26 || *(&v70 + 1) < DWORD2(v66) || (v26 | *(&v70 + 1)) < 0)
        {
          goto LABEL_39;
        }

        v27 = WORD2(v67);
        v28 = BYTE6(v67);
        v29 = BYTE6(v67) | (WORD2(v67) << 8);
        v30 = __CFADD__(v29, DWORD2(v70));
        v31 = v29 + DWORD2(v70);
        if (v30)
        {
          goto LABEL_40;
        }

        v60 = v12;
        v32 = v66;
        if (HIBYTE(v31))
        {
          v33 = v67;
          sub_1003BD79C(&v66, v65);
          v57 = v57 & 0xFF00000000000000 | v33 | (v27 << 32) | (v28 << 48);
          v34 = ByteBuffer._copyIntoByteBufferWithSliceIndex0_slowPath(index:length:)(v25, v26, v32);
          v36 = v35;
          v38 = v37;
          v26 = HIDWORD(v35);
          v40 = v39;
          v42 = v41;
          sub_1003A52D0(&v66);
          sub_1003A52D0(&v66);
        }

        else
        {
          v34 = v66;
          v36 = 0;
          v40 = (v31 >> 8);
          v38 = v31 + v26;
          v42 = v31;
        }

        v61 = v61 & 0xFF00000000000000 | v38 | (v40 << 32) | (v42 << 48);
        sub_10045C954(v34, v36 | (v26 << 32), v61);
        v44 = v43;
        v46 = v45;
        swift_unknownObjectRelease();

        v47 = v46;
        v12 = v60;
        v72 = v60;
        v49 = v60[2];
        v48 = v60[3];
        v50 = v59;
        v51 = v63;
        if (v49 >= v48 >> 1)
        {
          v53 = v47;
          sub_100091A08((v48 > 1), v49 + 1, 1);
          v47 = v53;
          v12 = v72;
        }

        v12[2] = v49 + 1;
        v52 = &v12[2 * v49];
        v52[4] = v47;
        v52[5] = v44;
        if (v58 == v64)
        {
          goto LABEL_31;
        }

        v13 = v51 + 4;
        v11 = v64 + 1;
        if ((v64 + 1) >= *(v50 + 16))
        {
          goto LABEL_32;
        }
      }
    }

    else
    {
LABEL_32:
      __break(1u);
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    __break(1u);
    __break(1u);
  }

  __break(1u);
}

unsigned __int8 *static MailboxPath.makeRootMailbox(displayName:pathSeparator:)(Swift::Int a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v7 = a1;
  if ((a2 & 0x1000000000000000) != 0)
  {
    a1 = sub_1004A59E4();
    if (a1 > 1000)
    {
      v8 = sub_1004A59E4();
LABEL_4:
      sub_100447AD8();
      swift_allocError();
      *v9 = 1000;
      v9[1] = v8;
LABEL_10:
      swift_willThrow();
      return v6;
    }
  }

  else if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
    if ((a1 & 0xFFFFFFFFFFFFuLL) > 0x3E8)
    {
      goto LABEL_4;
    }
  }

  if (a4)
  {
    v27 = a3;
    v28 = a4;
    __chkstk_darwin(a1);
    v26[2] = &v27;
    if (sub_100446F74(sub_100447A68, v26, v7, v6))
    {
      v27 = 0;
      v28 = 0xE000000000000000;
      sub_1004A6724(34);
      v29._countAndFlagsBits = v7;
      v29._object = v6;
      sub_1004A5994(v29);
      v30._object = 0x80000001004B0DC0;
      v30._countAndFlagsBits = 0xD00000000000001ELL;
      sub_1004A5994(v30);
      sub_1004A55C4();
      v10 = v27;
      v11 = v28;
      sub_100447A84();
      swift_allocError();
      *v12 = v10;
      v12[1] = v11;
      goto LABEL_10;
    }
  }

  v13 = sub_10045CF70(v7, v6);
  v15 = v14;
  v17 = HIDWORD(v16);
  v18 = v16;
  swift_beginAccess();
  v19 = v17 - v18;
  if (v19)
  {
    v21 = *(v13 + 24);
    v22 = ((v15 >> 24) & 0xFFFF00 | BYTE6(v15)) + v18;
    v23 = sub_10015BEAC(v19, 0);
    memcpy(v23 + 32, (v21 + v22), v19);
    v20 = v23;
  }

  else
  {
    v20 = _swiftEmptyArrayStorage;
  }

  v6 = _s12NIOIMAPCore211MailboxNameVyACSays5UInt8VGcfC_0(v20);
  if (a4)
  {
    if ((sub_1004A5584() & 0x100) != 0)
    {

      sub_1002EEE28();
      swift_allocError();
      *v25 = 0xD000000000000029;
      v25[1] = 0x80000001004AE390;
      swift_willThrow();
    }

    else
    {
      sub_1004A5584();
    }
  }

  return v6;
}

NIOIMAPCore2::MailboxPath __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MailboxPath.makeSubMailbox(displayName:)(Swift::String displayName)
{
  v3 = v1;
  object = displayName._object;
  countAndFlagsBits = displayName._countAndFlagsBits;
  v6 = sub_10014A364(BYTE4(v2));
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    v42 = v6;
    v43 = v7;
    __chkstk_darwin(v6);
    v41[2] = &v42;
    if ((sub_100446F74(sub_100447C68, v41, countAndFlagsBits, object) & 1) == 0)
    {
      v48 = sub_1003F5A98(v3, j__malloc, j__realloc, sub_100127C74, sub_100127C84);
      v17 = HIDWORD(v16);
      v49 = v16;
      v50 = v18;
      v51 = v19;
      v52 = v20;

      v21 = sub_1003B2588(v8, v9, &v48, v17);
      if ((v21 & 0x100000000) != 0)
      {
        v22 = sub_1003B51F4(v8, v9, v17);
      }

      else
      {
        v22 = v21;
      }

      if (__CFADD__(HIDWORD(v49), v22))
      {
        __break(1u);
        goto LABEL_21;
      }

      HIDWORD(v49) += v22;
      v44[0] = sub_10045CF70(countAndFlagsBits, object);
      v44[1] = v23;
      v45 = v24;
      v47 = v25;
      v46 = v26;
      ByteBuffer.writeBuffer(_:)(v44);
      v27 = v49;
      countAndFlagsBits = HIDWORD(v49);
      v28 = (HIDWORD(v49) - v49);
      if (v28 <= 0x3E8)
      {
        v30 = v51;
        v31 = v52;
        v53 = v48;
        swift_beginAccess();
        if (countAndFlagsBits == v27)
        {
          v32 = _swiftEmptyArrayStorage;
        }

        else
        {
          v33 = countAndFlagsBits - v27;
          v34 = *(v53 + 24);
          v35 = (v31 | (v30 << 8)) + v27;
          v36 = sub_10015BEAC(v33, 0);
          memcpy(v36 + 32, (v34 + v35), v33);
          v32 = v36;
        }

        countAndFlagsBits = _s12NIOIMAPCore211MailboxNameVyACSays5UInt8VGcfC_0(v32);
        v38 = v37;

        v39 = sub_1004A5584();

        if ((v39 & 0x100) == 0)
        {
          sub_1004A5584();

          v14 = v38;
          goto LABEL_19;
        }

        sub_1002EEE28();
        swift_allocError();
        *v40 = 0xD000000000000029;
        v40[1] = 0x80000001004AE390;
        swift_willThrow();
      }

      else
      {

        sub_100447AD8();
        swift_allocError();
        *v29 = 1000;
        v29[1] = v28;
        swift_willThrow();
      }

      goto LABEL_19;
    }

    v42 = 0;
    v43 = 0xE000000000000000;
    sub_1004A6724(34);
    v54._countAndFlagsBits = countAndFlagsBits;
    v54._object = object;
    sub_1004A5994(v54);
    v55._object = 0x80000001004B0DC0;
    v55._countAndFlagsBits = 0xD00000000000001ELL;
    sub_1004A5994(v55);
    sub_1004A55C4();

    v10 = v42;
    v11 = v43;
    sub_100447A84();
    swift_allocError();
    *v12 = v10;
    v12[1] = v11;
  }

  else
  {
    sub_1002EEE28();
    swift_allocError();
    *v13 = 0xD00000000000002BLL;
    v13[1] = 0x80000001004B0DE0;
  }

  swift_willThrow();
LABEL_19:
  result.name.bytes._rawValue = countAndFlagsBits;
LABEL_21:
  result.name._hashValue._value = v14;
  result._pathSeparator = v15;
  return result;
}

uint64_t sub_1004463C4()
{
  v0 = ByteBufferAllocator.buffer(string:)(0x584F424E49uLL, 0xE500000000000000, j__malloc, j__realloc, sub_100127C74, sub_100127C84);
  v2 = v1;
  v4 = HIDWORD(v3);
  v5 = v3;
  swift_beginAccess();
  v6 = v4 - v5;
  if (v6)
  {
    v8 = *(v0 + 24);
    v9 = ((v2 >> 24) & 0xFFFF00 | BYTE6(v2)) + v5;
    v10 = sub_10015BEAC(v6, 0);
    memcpy(v10 + 32, (v8 + v9), v6);
    v7 = v10;
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  v11 = _s12NIOIMAPCore211MailboxNameVyACSays5UInt8VGcfC_0(v7);
  v13 = v12;

  static MailboxName.inbox = v11;
  dword_1005DE9A0 = v13;
  return result;
}

uint64_t *MailboxName.inbox.unsafeMutableAddressor()
{
  if (qword_1005DBB68 != -1)
  {
    swift_once();
  }

  return &static MailboxName.inbox;
}

double static MailboxName.inbox.getter()
{
  if (qword_1005DBB68 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t MailboxName.isInbox.getter(uint64_t a1, unsigned int a2)
{
  v2 = a2 | (a2 << 32);
  if (qword_1005DBB70 != -1)
  {
    v19 = a1;
    swift_once();
    a1 = v19;
  }

  if (v2 != qword_1005DCB18 || *(a1 + 16) != 5)
  {
    return 0;
  }

  v3 = a1;
  sub_1001D606C(0, 5, 0);
  v4 = *(v3 + 32);
  v6 = _swiftEmptyArrayStorage[2];
  v5 = _swiftEmptyArrayStorage[3];
  v7 = v5 >> 1;
  v8 = v6 + 1;
  if (v5 >> 1 <= v6)
  {
    sub_1001D606C((v5 > 1), v6 + 1, 1);
    v9 = v3;
    v5 = _swiftEmptyArrayStorage[3];
    v7 = v5 >> 1;
  }

  else
  {
    v9 = v3;
  }

  _swiftEmptyArrayStorage[2] = v8;
  *(&_swiftEmptyArrayStorage[4] + v6) = v4 & 0xDF;
  v10 = v9[33];
  v11 = v6 + 2;
  if (v7 <= v8)
  {
    v20 = v9[33];
    sub_1001D606C((v5 > 1), v6 + 2, 1);
    v10 = v20;
    v9 = v3;
    v5 = _swiftEmptyArrayStorage[3];
    v7 = v5 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v11;
  *(&_swiftEmptyArrayStorage[4] + v8) = v10 & 0xDF;
  v12 = v9[34];
  v13 = v6 + 3;
  if (v7 <= v11)
  {
    v21 = v9[34];
    sub_1001D606C((v5 > 1), v6 + 3, 1);
    v12 = v21;
    v9 = v3;
    v5 = _swiftEmptyArrayStorage[3];
    v7 = v5 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v13;
  *(&_swiftEmptyArrayStorage[4] + v11) = v12 & 0xDF;
  v14 = v9[35];
  v15 = v6 + 4;
  if (v7 <= v13)
  {
    v22 = v9[35];
    sub_1001D606C((v5 > 1), v6 + 4, 1);
    v14 = v22;
    v9 = v3;
    v5 = _swiftEmptyArrayStorage[3];
    v7 = v5 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v15;
  *(&_swiftEmptyArrayStorage[4] + v13) = v14 & 0xDF;
  v16 = v9[36];
  if (v7 <= v15)
  {
    sub_1001D606C((v5 > 1), v6 + 5, 1);
  }

  _swiftEmptyArrayStorage[2] = v6 + 5;
  *(&_swiftEmptyArrayStorage[4] + v15) = v16 & 0xDF;
  v17 = sub_1002EE92C(0x584F424E49uLL, 0xE500000000000000, _swiftEmptyArrayStorage);

  return v17 & 1;
}

void sub_10044683C(unint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, void *, __n128))
{
  v5 = *(a3 + 16);
  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v20 = a3 + 32;
  v23 = v6;
  v22 = 4 * v6;
  v7 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v7) = 1;
  }

  v8 = 4 << v7;
  v18 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v19 = a2 & 0xFFFFFFFFFFFFFFLL;

  v9 = 0;
  v10 = 15;
  while (1)
  {
    if (v9 == v5)
    {
      if (v22 == v10 >> 14)
      {
        goto LABEL_31;
      }

      v12 = 0;
      v11 = v5;
    }

    else
    {
      if (v9 >= v5)
      {
        goto LABEL_33;
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_34;
      }

      LOBYTE(v25[0]) = *(v20 + v9);
      (a4)(&v26, v25);
      if (v22 == v10 >> 14)
      {
        goto LABEL_31;
      }

      v12 = v26;
    }

    v13 = v10 & 0xC;
    v14 = v10;
    if (v13 == v8)
    {
      v14 = sub_10010C210(v10, a1, a2);
    }

    v15 = v14 >> 16;
    if (v14 >> 16 >= v23)
    {
      break;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v17 = sub_1004A5A24();
      if (v13 != v8)
      {
        goto LABEL_23;
      }
    }

    else if ((a2 & 0x2000000000000000) != 0)
    {
      v25[0] = a1;
      v25[1] = v19;
      v17 = *(v25 + v15);
      if (v13 != v8)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v16 = v18;
      if ((a1 & 0x1000000000000000) == 0)
      {
        v16 = sub_1004A67E4();
      }

      v17 = *(v16 + v15);
      if (v13 != v8)
      {
LABEL_23:
        if ((a2 & 0x1000000000000000) == 0)
        {
          goto LABEL_24;
        }

        goto LABEL_27;
      }
    }

    v10 = sub_10010C210(v10, a1, a2);
    if ((a2 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v10 = (v10 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v10 >> 16)
    {
      goto LABEL_35;
    }

    v10 = sub_1004A59F4();
LABEL_29:
    if (v9 != v5)
    {
      v9 = v11;
      if (v12 == v17)
      {
        continue;
      }
    }

LABEL_31:

    return;
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_100446A6C()
{
  if (qword_1005DBB68 != -1)
  {
    result = swift_once();
  }

  qword_1005DCB18 = dword_1005DE9A0 | (dword_1005DE9A0 << 32);
  return result;
}

uint64_t sub_100446ADC(unsigned __int8 *a1, uint64_t a2)
{
  v2 = 0x220FA12722E887A4;
  if (!a1)
  {
    v4 = 0x220FA12722E887A4;
    if (a2 < 0)
    {
      goto LABEL_29;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    v4 = 0x220FA12722E887A4;
    goto LABEL_31;
  }

  v3 = &a1[a2];
  v4 = 0x220FA12722E887A4;
  do
  {
    v5 = a1 + 1;
    v6 = *a1;
    if (a1 + 1 != v3)
    {
      v6 = a1[1] | (v6 << 8);
      v7 = a1 + 2;
      if (a1 + 2 == v3)
      {
        goto LABEL_13;
      }

      v6 = a1[2] | (v6 << 8);
      v5 = a1 + 3;
      if (a1 + 3 != v3)
      {
        v6 = a1[3] | (v6 << 8);
        v7 = a1 + 4;
        if (a1 + 4 == v3)
        {
          goto LABEL_13;
        }

        v6 = a1[4] | (v6 << 8);
        v5 = a1 + 5;
        if (a1 + 5 != v3)
        {
          v6 = a1[5] | (v6 << 8);
          v7 = a1 + 6;
          if (a1 + 6 == v3)
          {
            goto LABEL_13;
          }

          v6 = a1[6] | (v6 << 8);
          v5 = a1 + 7;
          if (a1 + 7 != v3)
          {
            v6 = a1[7] | (v6 << 8);
            v7 = a1 + 8;
LABEL_13:
            a1 = v5;
            if (v7 == v3)
            {
              goto LABEL_4;
            }

            goto LABEL_17;
          }
        }
      }

      a1 = v7;
    }

    v7 = v5;
    if (v5 == v3)
    {
      goto LABEL_4;
    }

LABEL_17:
    v7 = a1 + 2;
    if (a1 + 2 != v3)
    {
      v7 = a1 + 3;
      if (a1 + 3 != v3)
      {
        v7 = a1 + 4;
        if (a1 + 4 != v3)
        {
          v7 = a1 + 5;
          if (a1 + 5 != v3)
          {
            v7 = a1 + 6;
            if (a1 + 6 != v3)
            {
              v7 = a1 + 7;
              if (a1 + 7 != v3)
              {
                v7 = a1 + 8;
                v8 = a1 + 9;
                if (v7 != v3)
                {
                  v7 = v8;
                }
              }
            }
          }
        }
      }
    }

LABEL_4:
    v4 = 5 * (__ROR8__((0x4CF5AD432745937FLL * ((0x88A129EA80000000 * v6) | ((0x87C37B91114253D5 * v6) >> 33))) ^ v4, 37) + v2) + 1390208809;
    v2 = 10 * v4 + 944331445;
    a1 = v7;
  }

  while (v7 != v3);
  if (a2 < 0)
  {
LABEL_29:
    a2 = 0;
  }

LABEL_31:
  v9 = v2 ^ a2;
  v10 = (v4 ^ a2) + v9;
  v11 = v10 + v9;
  v12 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v10 ^ (v10 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v10 ^ (v10 >> 33))) >> 33));
  v13 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v11 ^ (v11 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v11 ^ (v11 >> 33))) >> 33));
  v14 = ((v13 ^ (v13 >> 33)) + (v12 ^ (v12 >> 33)) + (v13 ^ (v13 >> 33))) ^ ((v13 ^ (v13 >> 33)) + (v12 ^ (v12 >> 33)));
  return HIDWORD(v14) ^ v14;
}

Swift::Int sub_100446D78(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_1004A6E94();
  sub_1004A6EB4(v2 | (v2 << 32));
  return sub_1004A6F14();
}

uint64_t sub_100446DBC(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 8) | (*(a1 + 8) << 32)) == (*(a2 + 8) | (*(a2 + 8) << 32)))
  {
    return sub_1000FFC98(*a1, *a2);
  }

  else
  {
    return 0;
  }
}

uint64_t MailboxName.debugDescription.getter(uint64_t a1)
{

  v2 = sub_10044763C(v1);

  return v2;
}

uint64_t sub_100446E30()
{

  v1 = sub_10044763C(v0);

  return v1;
}

uint64_t sub_100446E7C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v4 = v3 - 1;
    v5 = (a3 + 64);
    do
    {
      v6 = *(v5 - 4);
      v7 = *(v5 - 3);
      v8 = *(v5 - 2);
      v9 = *(v5 - 1);
      v10 = *(v5 + 4);
      v11 = *v5;
      v18 = v11 | (v10 << 32);
      v19[0] = v6;
      v19[1] = v7;
      v19[2] = v8;
      v19[3] = v9;
      v21 = v10;
      v20 = v11;
      v12 = sub_100447BE8(v6, v7, v8, v9, v18);
      v13 = v22;
      v14 = (a1)(v19, v12);
      sub_1001FC9B4(v6, v7, v8, v9, v18);
      v22 = v13;
      if (v13)
      {
        break;
      }

      v15 = v4-- == 0;
      v5 += 10;
    }

    while (((v14 | v15) & 1) == 0);
  }

  else
  {
    LOBYTE(v14) = 0;
  }

  return v14 & 1;
}

uint64_t sub_100446F74(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  v13[2] = a3;
  v13[3] = a4;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v13[4] = 0;
  v13[5] = v6;

  v7 = sub_1004A59D4();
  if (v8)
  {
    v9 = v8;
    while (1)
    {
      v13[0] = v7;
      v13[1] = v9;
      v10 = a1(v13);

      if (v4 || (v10 & 1) != 0)
      {
        break;
      }

      v7 = sub_1004A59D4();
      v9 = v11;
      if (!v11)
      {
        goto LABEL_8;
      }
    }

    return 1;
  }

  else
  {
LABEL_8:

    return 0;
  }
}

void *sub_100447044(uint64_t a1, uint64_t a2)
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

  sub_10000C9C0(&qword_1005DCB38, &qword_100507088);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 184);
  return result;
}

uint64_t sub_1004470E0@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t (*a3)(char *)@<X2>, void *a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X8>)
{
  if (result < 0)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    result = sub_1004620D0((a6 > 1), v7, 1, result);
LABEL_32:
    *(result + 16) = v7;
    v26 = (result + 32 * v9);
    v26[4] = v6;
    v26[5] = v6 + 32;
    v26[6] = 0;
    v26[7] = (2 * v10) | 1;
    return result;
  }

  v6 = a5;
  v11 = result;
  v10 = *(a5 + 16);
  if (!result || !v10)
  {
    if (!v10 && (a2 & 1) != 0)
    {

      return _swiftEmptyArrayStorage;
    }

    result = sub_1004620D0(0, 1, 1, _swiftEmptyArrayStorage);
    v9 = *(result + 16);
    a6 = *(result + 24);
    v7 = (v9 + 1);
    if (v9 < a6 >> 1)
    {
      goto LABEL_32;
    }

    goto LABEL_49;
  }

  v7 = a4;
  v13 = 0;
  v14 = a5 + 32;
  v15 = -v10;
  result = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v13 == v10)
    {
      v13 = v10;
      goto LABEL_36;
    }

    v32 = v11;
    v33 = v15;
    v35 = v10;
    v36 = result;
    v16 = (2 * v13) | 1;
    v34 = v14;
    v17 = v14 + v13;
LABEL_7:
    v18 = 0;
    v10 = v15 + v13;
    v9 = v16;
    while (1)
    {
      a6 = v13 + v18;
      if (v13 + v18 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_48;
      }

      v38 = *(v17 + v18);
      result = a3(&v38);
      if (v8)
      {
      }

      if (result)
      {
        break;
      }

      ++v18;
      v9 += 2;
      if (!(v10 + v18))
      {
        v10 = v35;
        goto LABEL_34;
      }
    }

    if (!v18 && (a2 & 1) != 0)
    {
      break;
    }

    if ((v13 + v18) < v13)
    {
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      return result;
    }

    v19 = v36;
    v14 = v34;
    if ((v13 & 0x8000000000000000) != 0)
    {
      goto LABEL_55;
    }

    v20 = *(v6 + 16);
    if (v20 < v13 || v20 < v13 + v18)
    {
      goto LABEL_56;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_1004620D0(0, v36[2] + 1, 1, v36);
    }

    result = v19;
    v21 = v19[2];
    v22 = *(result + 24);
    v23 = v21 + 1;
    if (v21 >= v22 >> 1)
    {
      result = sub_1004620D0((v22 > 1), v21 + 1, 1, result);
      v23 = v21 + 1;
    }

    *(result + 16) = v23;
    v24 = (result + 32 * v21);
    v24[4] = v6;
    v24[5] = v34;
    v24[6] = v13;
    v24[7] = v9;
    v13 += v18 + 1;
    v25 = v23 == v32;
    v11 = v32;
    v10 = v35;
    v15 = v33;
    if (v25)
    {
      goto LABEL_35;
    }
  }

  ++v13;
  v16 += 2;
  ++v17;
  v10 = v35;
  v15 = v33;
  if (v13 != v35)
  {
    goto LABEL_7;
  }

  v13 = v35;
LABEL_34:
  result = v36;
  v14 = v34;
LABEL_35:
  if (v13 != v10)
  {
    goto LABEL_39;
  }

LABEL_36:
  if (a2)
  {
    v27 = result;

    return v27;
  }

LABEL_39:
  if (v10 < v13)
  {
    __break(1u);
    goto LABEL_51;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v28 = *(v6 + 16);
  if (v28 < v13 || v28 < v10)
  {
    goto LABEL_52;
  }

  v7 = result;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_53:
    v7 = sub_1004620D0(0, v7[2] + 1, 1, v7);
  }

  result = v7;
  v30 = v7[2];
  v29 = v7[3];
  if (v30 >= v29 >> 1)
  {
    result = sub_1004620D0((v29 > 1), v30 + 1, 1, v7);
  }

  *(result + 16) = v30 + 1;
  v31 = (result + 32 * v30);
  v31[4] = v6;
  v31[5] = v14;
  v31[6] = v13;
  v31[7] = (2 * v10) | 1;
  return result;
}

BOOL sub_10044747C(_BOOL8 result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a4)
  {
    return 0;
  }

  v4 = *(result + 16);
  if (v4 != *(a3 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = result == a3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return BYTE4(a2) == BYTE4(a4);
  }

  v6 = (result + 32);
  v7 = (a3 + 32);
  while (v4)
  {
    if (*v6 != *v7)
    {
      return 0;
    }

    ++v6;
    ++v7;
    if (!--v4)
    {
      return BYTE4(a2) == BYTE4(a4);
    }
  }

  __break(1u);
  return result;
}

unsigned __int8 *_s12NIOIMAPCore211MailboxNameVyACSays5UInt8VGcfC_0(unsigned __int8 *a1)
{

  sub_10044683C(0x584F424E49uLL, 0xE500000000000000, a1, sub_100446ACC);
  v3 = v2;

  if (v3)
  {

    a1 = sub_10015BC90(0x584F424E49, 0xE500000000000000);
  }

  sub_100446ADC(a1 + 32, *(a1 + 2));
  return a1;
}

unsigned __int8 *sub_100447588(uint64_t a1, unsigned int a2, unsigned int a3, unsigned __int16 a4, unsigned __int8 a5)
{
  swift_beginAccess();
  if (a3 == a2)
  {
    v10 = _swiftEmptyArrayStorage;
  }

  else
  {
    v11 = a3 - a2;
    v12 = *(a1 + 24);
    v13 = (a5 | (a4 << 8)) + a2;
    v14 = sub_10015BEAC(v11, 0);
    memcpy(v14 + 32, (v12 + v13), v11);
    v10 = v14;
  }

  return _s12NIOIMAPCore211MailboxNameVyACSays5UInt8VGcfC_0(v10);
}

uint64_t sub_10044763C(uint64_t a1)
{
  v19 = 0;
  v20 = 0xE000000000000000;
  v2 = *(a1 + 16);
  sub_1004A5874(v2);
  LODWORD(v3) = 0;
  v4 = 0;
  v5 = (a1 + 32);
  v6 = &v5[v2];
  while (1)
  {
    v17 = v3;
    v18 = v4;
    if (!v4)
    {
      break;
    }

    if ((v3 & 0x80) != 0)
    {
      if (!v5)
      {
        goto LABEL_19;
      }

      v8 = v5;
      if (v5 == v6)
      {
        goto LABEL_19;
      }

LABEL_7:
      v5 = (v8 + 1);
      LODWORD(v3) = (*v8 << v4) | ((-255 << v4) - 1) & v3;
      v10 = v4 + 8;
      if ((v4 + 8) >= 0x20u)
      {
        goto LABEL_18;
      }

      if (v5 == v6)
      {
        goto LABEL_16;
      }

      v5 = (v8 + 2);
      LODWORD(v3) = (v8[1] << (v4 + 8)) | ((-255 << (v4 + 8)) - 1) & v3;
      v10 = v4 + 16;
      if ((v4 + 16) > 0x1Fu)
      {
        goto LABEL_18;
      }

      if (v5 == v6)
      {
        goto LABEL_16;
      }

      v5 = (v8 + 3);
      LODWORD(v3) = (v8[2] << v10) | ((-255 << v10) - 1) & v3;
      v10 = v4 + 24;
      if ((v4 + 24) > 0x1Fu)
      {
        goto LABEL_18;
      }

      if (v5 == v6)
      {
        goto LABEL_16;
      }

      v5 = (v8 + 4);
      LODWORD(v3) = (v8[3] << v10) | ((-255 << v10) - 1) & v3;
      v10 = v4 + 32;
      if (v4 < 0xE0u)
      {
LABEL_18:
        v4 = v10;
        goto LABEL_19;
      }

      if (v5 == v6 || (v5 = (v8 + 5), LODWORD(v3) = (v8[4] << v4) | ((-255 << v4) - 1) & v3, v10 = v4 + 40, v4 += 40, v4 < 0x20u))
      {
LABEL_16:
        v4 = v10;
        if (!v10)
        {
          return v19;
        }
      }

LABEL_19:
      if ((v3 & 0xC0E0) == 0x80C0)
      {
        if ((v3 & 0x1E) != 0)
        {
          v11 = 16;
LABEL_22:
          v17 = v3 >> v11;
          v18 = v4 - v11;
          goto LABEL_23;
        }
      }

      else if ((v3 & 0xC0C0F0) == 0x8080E0)
      {
        if ((v3 & 0x200F) != 0 && (v3 & 0x200F) != 0x200D)
        {
          v11 = 24;
          goto LABEL_22;
        }
      }

      else if ((v3 & 0xC0C0C0F8) == 0x808080F0 && (v3 & 0x3007) != 0 && __rev16(v3 & 0x3007) <= 0x400)
      {
        v11 = 32;
        goto LABEL_22;
      }

      v12 = sub_1004A6FB4();
      v3 = v3 >> ((8 * v12) & 0x38);
      v4 -= 8 * v12;
    }

    else
    {
      sub_1002A57BC();
      v13 = UnsafeExtractedAttachment.part.modify();
      sub_1002A5810(0);
      (v13)(&v15, 0);
LABEL_23:
      LODWORD(v3) = v17;
      v4 = v18;
      v15 = v19;
      v16 = v20;
      sub_1004A58C4();
      v19 = v15;
      v20 = v16;
    }
  }

  if (v5 && v6 != v5)
  {
    v7 = *v5++;
    v8 = v5;
    v9 = v7;
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    LODWORD(v3) = v3 & 0xFFFFFF00 | v9;
    v4 = 8;
    if (v5 == v6)
    {
      goto LABEL_19;
    }

    goto LABEL_7;
  }

  return v19;
}