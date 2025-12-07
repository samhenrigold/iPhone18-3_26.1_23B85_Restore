unint64_t sub_100447A84()
{
  result = qword_1005DCB20;
  if (!qword_1005DCB20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InvalidMailboxNameError, &type metadata for InvalidMailboxNameError, v0, v1);
    atomic_store(result, &qword_1005DCB20);
  }

  return result;
}

unint64_t sub_100447AD8()
{
  result = qword_1005DCB28;
  if (!qword_1005DCB28)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MailboxTooBigError, &type metadata for MailboxTooBigError, v0, v1);
    atomic_store(result, &qword_1005DCB28);
  }

  return result;
}

unint64_t sub_100447B30()
{
  result = qword_1005DCB30;
  if (!qword_1005DCB30)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MailboxPath, &type metadata for MailboxPath, v0, v1);
    atomic_store(result, &qword_1005DCB30);
  }

  return result;
}

double sub_100447BE8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, unint64_t a5)
{
  v6 = (a5 >> 37) & 7;
  if (v6 == 4 || v6 == 3)
  {
  }

  else if (v6 == 1)
  {

    return sub_100051190(a3, a4);
  }

  return result;
}

uint64_t static MailboxPatterns.__derived_enum_equals(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a3 & 0x100000000000000) == 0)
  {
    if ((a6 & 0x100000000000000) == 0)
    {
      return sub_10020FBD0(a1, a2, a3 & 0xFFFFFFFFFFFFFFLL, a4, a5, a6 & 0xFFFFFFFFFFFFFFLL);
    }

    return 0;
  }

  if ((a6 & 0x100000000000000) == 0)
  {
    return 0;
  }

  return sub_1003A370C();
}

void MailboxPatterns.hash(into:)(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x100000000000000) != 0)
  {
    sub_1004A6EB4(1uLL);
    v5 = *(a2 + 16);
    sub_1004A6EB4(v5);
    if (v5)
    {
      v6 = a2 + 54;
      do
      {
        v6 += 24;
        swift_beginAccess();
        sub_1004A6EA4();
        --v5;
      }

      while (v5);
    }
  }

  else
  {
    sub_1004A6EB4(0);
    swift_beginAccess();
    sub_1004A6EA4();
  }
}

Swift::Int MailboxPatterns.hashValue.getter(uint64_t a1, unint64_t a2, unint64_t a3)
{
  sub_1004A6E94();
  if ((a3 & 0x100000000000000) != 0)
  {
    sub_1004A6EB4(1uLL);
    v5 = *(a1 + 16);
    sub_1004A6EB4(v5);
    if (v5)
    {
      v6 = a1 + 54;
      do
      {
        v6 += 24;
        swift_beginAccess();
        sub_1004A6EA4();
        --v5;
      }

      while (v5);
    }
  }

  else
  {
    sub_1004A6EB4(0);
    swift_beginAccess();
    sub_1004A6EA4();
  }

  return sub_1004A6F14();
}

Swift::Int sub_100447F1C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16) | ((*(v1 + 20) | (*(v1 + 22) << 16)) << 32);
  v5 = *(v1 + 23);
  sub_1004A6E94();
  MailboxPatterns.hash(into:)(v7, v2, v3, v4 | (v5 << 56));
  return sub_1004A6F14();
}

uint64_t sub_100447F90(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  if (*(a1 + 23))
  {
    if (*(a2 + 23))
    {
      return sub_1003A370C();
    }

    return 0;
  }

  if (*(a2 + 23))
  {
    return 0;
  }

  return sub_10020FBD0(v3, *(a1 + 8), *(a1 + 16) | ((*(a1 + 20) | (*(a1 + 22) << 16)) << 32), *a2, *(a2 + 8), (*(a2 + 16) | ((*(a2 + 20) | (*(a2 + 22) << 16)) << 32)) & 0xFFFFFFFFFFFFFFLL);
}

unint64_t sub_100447FFC()
{
  result = qword_1005DCB40;
  if (!qword_1005DCB40)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MailboxPatterns, &type metadata for MailboxPatterns, v0, v1);
    atomic_store(result, &qword_1005DCB40);
  }

  return result;
}

uint64_t static MailboxUIDValidity.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 == a4 && a2 == a5 || (v8 = sub_1004A6D34(), result = 0, (v8 & 1) != 0))
  {
    if ((a3 & 0x100000000) != 0)
    {
      if ((a6 & 0x100000000) != 0)
      {
        return 1;
      }
    }

    else if ((a6 & 0x100000000) == 0 && a3 == a6)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1004480DC(unint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 20);
  result = sub_1002F178C(a1, a2, v3 + 8, v8);
  if (v10)
  {
    v11._countAndFlagsBits = a1;
    v11._object = a2;
    result = ByteBuffer._setStringSlowpath(_:at:)(v11, v8);
  }

  v12 = *(v3 + 20);
  v13 = (v12 + result);
  if (__CFADD__(v12, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  *(v3 + 20) = v13;
  if ((a3 & 0x100000000) != 0)
  {
    v30 = 0;
  }

  else
  {
    v14 = result;
    result = sub_1002F178C(0x494C41564449553BuLL, 0xED00003D59544944, v3 + 8, v13);
    if (v15)
    {
      v16._countAndFlagsBits = 0x494C41564449553BLL;
      v16._object = 0xED00003D59544944;
      result = ByteBuffer._setStringSlowpath(_:at:)(v16, v13);
    }

    v17 = result;
    v18 = *(v3 + 20);
    v19 = (v18 + result);
    if (__CFADD__(v18, result))
    {
      goto LABEL_18;
    }

    *(v3 + 20) = v19;
    v20 = sub_1004A6CE4();
    v22 = v21;
    v23 = sub_1002F178C(v20, v21, v3 + 8, v19);
    if (v24)
    {
      v25._countAndFlagsBits = v20;
      v25._object = v22;
      v23 = ByteBuffer._setStringSlowpath(_:at:)(v25, v19);
    }

    v26 = v23;

    v27 = *(v4 + 20);
    v28 = __CFADD__(v27, v26);
    v29 = v27 + v26;
    if (v28)
    {
      goto LABEL_19;
    }

    *(v4 + 20) = v29;
    v30 = v17 + v26;
    if (__OFADD__(v17, v26))
    {
LABEL_20:
      __break(1u);
      return result;
    }

    result = v14;
  }

  v31 = __OFADD__(result, v30);
  result += v30;
  if (v31)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  return result;
}

NIOIMAPCore2::MailboxUIDValidity __swiftcall MailboxUIDValidity.init(encodeMailbox:uidValidity:)(NIOIMAPCore2::MailboxUIDValidity encodeMailbox, NIOIMAPCore2::UIDValidity_optional uidValidity)
{
  v2 = uidValidity.value.rawValue | (uidValidity.is_nil << 32);
  encodeMailbox.uidValidity = v2;
  return encodeMailbox;
}

uint64_t MailboxUIDValidity.uidValidity.setter(uint64_t result)
{
  *(v1 + 16) = result;
  *(v1 + 20) = BYTE4(result) & 1;
  return result;
}

void MailboxUIDValidity.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if ((a4 & 0x100000000) != 0)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EE4(a4);
  }
}

Swift::Int MailboxUIDValidity.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if ((a3 & 0x100000000) != 0)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EE4(a3);
  }

  return sub_1004A6F14();
}

Swift::Int sub_100448374()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 20);
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if (v2 == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EE4(v1);
  }

  return sub_1004A6F14();
}

void sub_100448400(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 20);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if (v3 == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EE4(v2);
  }
}

Swift::Int sub_100448464(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 20);
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if (v3 == 1)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EE4(v2);
  }

  return sub_1004A6F14();
}

uint64_t sub_1004484EC(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  v3 = *(a1 + 20);
  v4 = *(a2 + 16);
  v5 = *(a2 + 20);
  v6 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v6 || (v7 = sub_1004A6D34(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v5)
      {
        return 1;
      }
    }

    else
    {
      if (v2 == v4)
      {
        v9 = v5;
      }

      else
      {
        v9 = 1;
      }

      if ((v9 & 1) == 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_100448578()
{
  result = qword_1005DCB48;
  if (!qword_1005DCB48)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MailboxUIDValidity, &type metadata for MailboxUIDValidity, v0, v1);
    atomic_store(result, &qword_1005DCB48);
  }

  return result;
}

uint64_t sub_1004485CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 21))
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

uint64_t sub_100448614(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 21) = 1;
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

    *(result + 21) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t MechanismBase64.init(mechanism:base64:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  *(a6 + 38) = BYTE6(a5);
  *(a6 + 36) = WORD2(a5);
  return result;
}

void MechanismBase64.hash(into:)(uint64_t a1)
{
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if (*(v1 + 16))
  {
    sub_1004A6EC4(1u);
    swift_beginAccess();
    sub_1004A6EA4();
  }

  else
  {
    sub_1004A6EC4(0);
  }
}

Swift::Int MechanismBase64.hashValue.getter()
{
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if (*(v0 + 16))
  {
    sub_1004A6EC4(1u);
    swift_beginAccess();
    sub_1004A6EA4();
  }

  else
  {
    sub_1004A6EC4(0);
  }

  return sub_1004A6F14();
}

Swift::Int sub_1004487E4(uint64_t a1)
{
  sub_1004A6E94();
  MechanismBase64.hash(into:)(v2);
  return sub_1004A6F14();
}

uint64_t sub_100448820(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 15) = *(a1 + 31);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 15) = *(a2 + 31);
  return _s12NIOIMAPCore215MechanismBase64V23__derived_struct_equalsySbAC_ACtFZ_0(&v5, &v7) & 1;
}

uint64_t sub_10044886C(uint64_t a1)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(v1 + 20);
  result = sub_1002F178C(*a1, v4, v1 + 8, v5);
  if (v7)
  {
    v8._countAndFlagsBits = v3;
    v8._object = v4;
    result = ByteBuffer._setStringSlowpath(_:at:)(v8, v5);
  }

  v9 = result;
  v10 = *(v1 + 20);
  v11 = (v10 + result);
  if (__CFADD__(v10, result))
  {
    goto LABEL_13;
  }

  *(v1 + 20) = v11;
  if (*(a1 + 16))
  {
    v12 = *(a1 + 24);
    v13 = *(a1 + 32) | ((*(a1 + 36) | (*(a1 + 38) << 16)) << 32);
    v23[0] = *(a1 + 16);
    v23[1] = v12;
    v24 = v13;
    v25 = WORD2(v13);
    v26 = BYTE6(v13);

    result = sub_1002F178C(0x3DuLL, 0xE100000000000000, v1 + 8, v11);
    if (v14)
    {
      v15._countAndFlagsBits = 61;
      v15._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v15, v11);
    }

    v16 = result;
    v17 = *(v1 + 20);
    v18 = __CFADD__(v17, result);
    v19 = v17 + result;
    if (v18)
    {
      goto LABEL_14;
    }

    *(v1 + 20) = v19;
    EncodeBuffer.writeBuffer(_:)(v23);
    v21 = v20;

    v22 = v16 + v21;
    if (__OFADD__(v16, v21))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    result = v9 + v22;
    if (!__OFADD__(v9, v22))
    {
      return result;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  return result;
}

uint64_t _s12NIOIMAPCore215MechanismBase64V23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v4 || (v5 = sub_1004A6D34(), result = 0, (v5 & 1) != 0))
  {
    v7 = *(a2 + 16);
    if (a1[2])
    {
      if (v7)
      {
        v8 = a1[3];
        v9 = *(a1 + 8) | ((*(a1 + 18) | (*(a1 + 38) << 16)) << 32);
        v10 = *(a2 + 24);
        v11 = *(a2 + 32) | ((*(a2 + 36) | (*(a2 + 38) << 16)) << 32);

        LOBYTE(v11) = sub_10020FBD0(v12, v8, v9 & 0xFFFFFFFFFFFFFFLL, v7, v10, v11 & 0xFFFFFFFFFFFFFFLL);

        if (v11)
        {
          return 1;
        }
      }
    }

    else if (!v7)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

unint64_t sub_100448ABC()
{
  result = qword_1005DCB50;
  if (!qword_1005DCB50)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MechanismBase64, &type metadata for MechanismBase64, v0, v1);
    atomic_store(result, &qword_1005DCB50);
  }

  return result;
}

__n128 sub_100448B10(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100448B24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 39))
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

uint64_t sub_100448B6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 38) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 39) = 1;
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

    *(result + 39) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t *Media.TopLevelType.application.unsafeMutableAddressor()
{
  if (qword_1005DBB88 != -1)
  {
    swift_once();
  }

  return &static Media.TopLevelType.application;
}

uint64_t *Media.TopLevelType.audio.unsafeMutableAddressor()
{
  if (qword_1005DBB90 != -1)
  {
    swift_once();
  }

  return &static Media.TopLevelType.audio;
}

uint64_t *Media.TopLevelType.image.unsafeMutableAddressor()
{
  if (qword_1005DBB98 != -1)
  {
    swift_once();
  }

  return &static Media.TopLevelType.image;
}

uint64_t *Media.TopLevelType.message.unsafeMutableAddressor()
{
  if (qword_1005DBBA0 != -1)
  {
    swift_once();
  }

  return &static Media.TopLevelType.message;
}

uint64_t *Media.TopLevelType.video.unsafeMutableAddressor()
{
  if (qword_1005DBBA8 != -1)
  {
    swift_once();
  }

  return &static Media.TopLevelType.video;
}

uint64_t *Media.Subtype.rfc822.unsafeMutableAddressor()
{
  if (qword_1005DBBD0 != -1)
  {
    swift_once();
  }

  return &static Media.Subtype.rfc822;
}

uint64_t *Media.Subtype.alternative.unsafeMutableAddressor()
{
  if (qword_1005DBBB8 != -1)
  {
    swift_once();
  }

  return &static Media.Subtype.alternative;
}

uint64_t *Media.Subtype.mixed.unsafeMutableAddressor()
{
  if (qword_1005DBBC8 != -1)
  {
    swift_once();
  }

  return &static Media.Subtype.mixed;
}

uint64_t *Media.Subtype.related.unsafeMutableAddressor()
{
  if (qword_1005DBBC0 != -1)
  {
    swift_once();
  }

  return &static Media.Subtype.related;
}

NIOIMAPCore2::Media::MediaType __swiftcall Media.MediaType.init(topLevel:sub:)(Swift::String topLevel, Swift::String sub)
{
  v2 = sub_1004A5814();
  v4 = v3;

  v5 = sub_1004A5814();
  v7 = v6;

  v8 = v2;
  v9 = v4;
  v10 = v5;
  v11 = v7;
  result.sub.stringValue._object = v11;
  result.sub.stringValue._countAndFlagsBits = v10;
  result.topLevel.stringValue._object = v9;
  result.topLevel.stringValue._countAndFlagsBits = v8;
  return result;
}

uint64_t sub_100448F10()
{
  result = sub_1004A5814();
  static Media.TopLevelType.multipart = result;
  unk_1005DE9B0 = v1;
  return result;
}

uint64_t *Media.TopLevelType.multipart.unsafeMutableAddressor()
{
  if (qword_1005DBB78 != -1)
  {
    swift_once();
  }

  return &static Media.TopLevelType.multipart;
}

uint64_t sub_100448FC4()
{
  result = sub_1004A5814();
  static Media.TopLevelType.text = result;
  unk_1005DE9C0 = v1;
  return result;
}

uint64_t *Media.TopLevelType.text.unsafeMutableAddressor()
{
  if (qword_1005DBB80 != -1)
  {
    swift_once();
  }

  return &static Media.TopLevelType.text;
}

uint64_t sub_10044906C()
{
  result = sub_1004A5814();
  static Media.TopLevelType.application = result;
  unk_1005DE9D0 = v1;
  return result;
}

uint64_t sub_1004490D4()
{
  result = sub_1004A5814();
  static Media.TopLevelType.audio = result;
  unk_1005DE9E0 = v1;
  return result;
}

uint64_t sub_100449130()
{
  result = sub_1004A5814();
  static Media.TopLevelType.image = result;
  unk_1005DE9F0 = v1;
  return result;
}

uint64_t sub_10044918C()
{
  result = sub_1004A5814();
  static Media.TopLevelType.message = result;
  unk_1005DEA00 = v1;
  return result;
}

uint64_t sub_1004491EC()
{
  result = sub_1004A5814();
  static Media.TopLevelType.video = result;
  unk_1005DEA10 = v1;
  return result;
}

uint64_t sub_100449248()
{
  result = sub_1004A5814();
  static Media.TopLevelType.font = result;
  unk_1005DEA20 = v1;
  return result;
}

uint64_t *Media.TopLevelType.font.unsafeMutableAddressor()
{
  if (qword_1005DBBB0 != -1)
  {
    swift_once();
  }

  return &static Media.TopLevelType.font;
}

uint64_t sub_1004492F0()
{
  result = sub_1004A5814();
  static Media.Subtype.alternative = result;
  unk_1005DEA30 = v1;
  return result;
}

uint64_t sub_100449358()
{
  result = sub_1004A5814();
  static Media.Subtype.related = result;
  unk_1005DEA40 = v1;
  return result;
}

uint64_t sub_1004493B8()
{
  result = sub_1004A5814();
  static Media.Subtype.mixed = result;
  unk_1005DEA50 = v1;
  return result;
}

uint64_t sub_100449414()
{
  result = sub_1004A5814();
  static Media.Subtype.rfc822 = result;
  unk_1005DEA60 = v1;
  return result;
}

uint64_t BodyStructure.mediaType.getter()
{
  v1 = *(v0 + 144);
  v10[8] = *(v0 + 128);
  v10[9] = v1;
  v10[10] = *(v0 + 160);
  v11 = *(v0 + 176);
  v2 = *(v0 + 80);
  v10[4] = *(v0 + 64);
  v10[5] = v2;
  v3 = *(v0 + 112);
  v10[6] = *(v0 + 96);
  v10[7] = v3;
  v4 = *(v0 + 16);
  v10[0] = *v0;
  v10[1] = v4;
  v5 = *(v0 + 48);
  v10[2] = *(v0 + 32);
  v10[3] = v5;
  if (sub_10000FE88(v10) == 1)
  {
    UInt32.init(_:)(v10);
    if (qword_1005DBB78 != -1)
    {
      swift_once();
    }

    v6 = static Media.TopLevelType.multipart;
    goto LABEL_11;
  }

  v7 = *UInt32.init(_:)(v10);
  if (!(v7 >> 62))
  {
    v6 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
LABEL_11:

    goto LABEL_12;
  }

  if (v7 >> 62 == 1)
  {
    if (qword_1005DBBA0 != -1)
    {
      swift_once();
    }

    v6 = static Media.TopLevelType.message;
    sub_1004A5814();
  }

  else
  {
    v9 = qword_1005DBB80;

    if (v9 != -1)
    {
      swift_once();
    }

    v6 = static Media.TopLevelType.text;
  }

LABEL_12:

  return v6;
}

unint64_t sub_10044963C()
{
  result = qword_1005DCB58;
  if (!qword_1005DCB58)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Media.MediaType, &type metadata for Media.MediaType, v0, v1);
    atomic_store(result, &qword_1005DCB58);
  }

  return result;
}

unint64_t sub_100449694()
{
  result = qword_1005DCB60;
  if (!qword_1005DCB60)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Media.TopLevelType, &type metadata for Media.TopLevelType, v0, v1);
    atomic_store(result, &qword_1005DCB60);
  }

  return result;
}

unint64_t sub_1004496EC()
{
  result = qword_1005DCB68;
  if (!qword_1005DCB68)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Media.TopLevelType, &type metadata for Media.TopLevelType, v0, v1);
    atomic_store(result, &qword_1005DCB68);
  }

  return result;
}

unint64_t sub_100449744()
{
  result = qword_1005DCB70;
  if (!qword_1005DCB70)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Media.TopLevelType, &type metadata for Media.TopLevelType, v0, v1);
    atomic_store(result, &qword_1005DCB70);
  }

  return result;
}

unint64_t sub_10044979C()
{
  result = qword_1005DCB78;
  if (!qword_1005DCB78)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Media.Subtype, &type metadata for Media.Subtype, v0, v1);
    atomic_store(result, &qword_1005DCB78);
  }

  return result;
}

unint64_t sub_1004497F4()
{
  result = qword_1005DCB80;
  if (!qword_1005DCB80)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Media.Subtype, &type metadata for Media.Subtype, v0, v1);
    atomic_store(result, &qword_1005DCB80);
  }

  return result;
}

unint64_t sub_10044984C()
{
  result = qword_1005DCB88;
  if (!qword_1005DCB88)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Media.Subtype, &type metadata for Media.Subtype, v0, v1);
    atomic_store(result, &qword_1005DCB88);
  }

  return result;
}

unint64_t sub_1004498E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13._countAndFlagsBits = sub_1004A5834();
  sub_1004A5994(v13);

  v14._countAndFlagsBits = 34;
  v14._object = 0xE100000000000000;
  sub_1004A5994(v14);
  v4 = *(v2 + 20);
  v5 = sub_1002F178C(0x22uLL, 0xE100000000000000, v3 + 8, *(v3 + 20));
  if (v6)
  {
    v7._countAndFlagsBits = 34;
    v7._object = 0xE100000000000000;
    v5 = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = v5;

  v10 = *(v3 + 20);
  v11 = __CFADD__(v10, v8);
  v12 = v10 + v8;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 20) = v12;
    return v8;
  }

  return result;
}

uint64_t sub_1004499A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(v2 + 20);
  result = sub_1002F178C(0x22uLL, 0xE100000000000000, v2 + 8, v4);
  if (v6)
  {
    v7._countAndFlagsBits = 34;
    v7._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = result;
  v9 = *(v2 + 20);
  v10 = (v9 + result);
  if (__CFADD__(v9, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *(v2 + 20) = v10;
  v11 = sub_1004A5834();
  v13 = v12;
  v14 = sub_1002F178C(v11, v12, v2 + 8, v10);
  if (v15)
  {
    v16._countAndFlagsBits = v11;
    v16._object = v13;
    v14 = ByteBuffer._setStringSlowpath(_:at:)(v16, v10);
  }

  v17 = v14;

  v18 = *(v3 + 20);
  v19 = (v18 + v17);
  if (__CFADD__(v18, v17))
  {
    goto LABEL_14;
  }

  *(v3 + 20) = v19;
  v20 = __OFADD__(v8, v17);
  v21 = v8 + v17;
  if (v20)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = sub_1002F178C(0x22uLL, 0xE100000000000000, v3 + 8, (v18 + v17));
  if (v22)
  {
    v23._countAndFlagsBits = 34;
    v23._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v23, v19);
  }

  v24 = *(v3 + 20);
  v25 = __CFADD__(v24, result);
  v26 = v24 + result;
  if (v25)
  {
    goto LABEL_16;
  }

  *(v3 + 20) = v26;
  v20 = __OFADD__(v21, result);
  result += v21;
  if (v20)
  {
LABEL_17:
    __break(1u);
  }

  return result;
}

void MessageAttribute.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 144);
  v71[8] = *(v1 + 128);
  v71[9] = v3;
  v71[10] = *(v1 + 160);
  v72 = *(v1 + 176);
  v4 = *(v1 + 80);
  v71[4] = *(v1 + 64);
  v71[5] = v4;
  v5 = *(v1 + 112);
  v71[6] = *(v1 + 96);
  v71[7] = v5;
  v6 = *(v1 + 16);
  v71[0] = *v1;
  v71[1] = v6;
  v7 = *(v1 + 48);
  v71[2] = *(v1 + 32);
  v71[3] = v7;
  switch(sub_10030445C(v71))
  {
    case 1u:
      v21 = sub_100304468(v71);
      v63 = *(v21 + 64);
      v64 = *(v21 + 80);
      v65 = *(v21 + 96);
      *&v66 = *(v21 + 112);
      v59 = *v21;
      v60 = *(v21 + 16);
      v61 = *(v21 + 32);
      v62 = *(v21 + 48);
      sub_1004A6EB4(1uLL);
      Envelope.hash(into:)(a1);
      return;
    case 2u:
      v17 = *sub_100304468(v71);
      v18 = 2;
      goto LABEL_30;
    case 3u:
      v19 = *sub_100304468(v71);
      sub_1004A6EB4(3uLL);
      sub_1004A6EE4(v19);
      return;
    case 4u:
      v16 = *sub_100304468(v71);
      sub_1004A6EB4(4uLL);
      sub_1004A6EB4(v16);
      return;
    case 5u:
      v22 = sub_100304468(v71);
      v23 = *(v22 + 144);
      v55 = *(v22 + 128);
      v56 = v23;
      v57 = *(v22 + 160);
      v58 = *(v22 + 176);
      v24 = *(v22 + 80);
      v51 = *(v22 + 64);
      v52 = v24;
      v25 = *(v22 + 112);
      v53 = *(v22 + 96);
      v54 = v25;
      v26 = *(v22 + 16);
      v47 = *v22;
      v48 = v26;
      v27 = *(v22 + 48);
      v49 = *(v22 + 32);
      v50 = v27;
      v28 = *(v22 + 177);
      sub_1004A6EB4(5uLL);
      v67 = v55;
      v68 = v56;
      v69 = v57;
      v70 = v58;
      v63 = v51;
      v64 = v52;
      v65 = v53;
      v66 = v54;
      v59 = v47;
      v60 = v48;
      v61 = v49;
      v62 = v50;
      if (sub_10000FE74(&v59) == 1)
      {
        sub_1004A6EB4(1uLL);
      }

      else
      {
        sub_1004A6EB4(0);
        v45[8] = v67;
        v45[9] = v68;
        v45[10] = v69;
        v46 = v70;
        v45[4] = v63;
        v45[5] = v64;
        v45[6] = v65;
        v45[7] = v66;
        v45[0] = v59;
        v45[1] = v60;
        v45[2] = v61;
        v45[3] = v62;
        if (sub_10000FE88(v45) == 1)
        {
          v36 = UInt32.init(_:)(v45);
          sub_1004A6EB4(1uLL);
          sub_1003AF454(a1, *v36);
          _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
          v37 = *(v36 + 72);
          v80 = *(v36 + 56);
          v81 = v37;
          v38 = *(v36 + 104);
          v82 = *(v36 + 88);
          v83 = v38;
          v39 = *(v36 + 40);
          v78 = *(v36 + 24);
          v79 = v39;
          sub_1003B053C(a1);
        }

        else
        {
          v40 = UInt32.init(_:)(v45);
          sub_1004A6EB4(0);
          BodyStructure.Singlepart.Kind.hash(into:)(a1, *v40);
          v41 = *(v40 + 24);
          v42 = *(v40 + 56);
          v75 = *(v40 + 40);
          v76 = v42;
          v77 = *(v40 + 72);
          v73 = *(v40 + 8);
          v74 = v41;
          BodyStructure.Fields.hash(into:)(a1);
          v43 = *(v40 + 136);
          v80 = *(v40 + 120);
          v81 = v43;
          v82 = *(v40 + 152);
          *&v83 = *(v40 + 168);
          v44 = *(v40 + 104);
          v78 = *(v40 + 88);
          v79 = v44;
          sub_1003B0920(a1);
        }
      }

      v35 = v28 & 1;
      goto LABEL_36;
    case 6u:
      v29 = sub_100304468(v71);
      v31 = *v29;
      v30 = v29[1];
      sub_1004A6EB4(6uLL);
      v32 = *(v31 + 16);
      sub_1004A6EB4(v32);
      if (v32)
      {
        v33 = (v31 + 32);
        do
        {
          v34 = *v33++;
          sub_1004A6EB4(v34);
          --v32;
        }

        while (v32);
      }

      sub_1004A6EB4(v30);
      return;
    case 7u:
      v20 = sub_100304468(v71);
      v59 = *v20;
      v60 = *(v20 + 16);
      LOBYTE(v61) = *(v20 + 32);
      sub_1004A6EB4(7uLL);
      StreamingKind.hash(into:)(a1);
      return;
    case 8u:
      v17 = *sub_100304468(v71);
      v18 = 8;
      goto LABEL_30;
    case 9u:
      v17 = *sub_100304468(v71);
      v18 = 9;
      goto LABEL_30;
    case 0xAu:
      v17 = *sub_100304468(v71);
      v18 = 10;
LABEL_30:
      sub_1004A6EB4(v18);
      sub_1004A6EF4(v17);
      return;
    case 0xBu:
      v13 = *sub_100304468(v71);
      sub_1004A6EB4(0xBuLL);
      v14 = *(v13 + 16);
      sub_1004A6EB4(v14);
      if (v14)
      {
        v15 = v13 + 54;
        do
        {
          v15 += 24;
          swift_beginAccess();
          sub_1004A6EA4();
          --v14;
        }

        while (v14);
      }

      return;
    case 0xCu:
      v11 = *(sub_100304468(v71) + 8);
      v12 = 12;
      goto LABEL_13;
    case 0xDu:
      sub_100304468(v71);
      sub_1004A6EB4(0xDuLL);
      goto LABEL_23;
    case 0xEu:
      v11 = *(sub_100304468(v71) + 8);
      v12 = 14;
LABEL_13:
      sub_1004A6EB4(v12);
      if (v11)
      {
        sub_1004A6EC4(1u);
LABEL_23:
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      }

      else
      {
        v35 = 0;
LABEL_36:
        sub_1004A6EC4(v35);
      }

      break;
    default:
      v8 = *sub_100304468(v71);
      sub_1004A6EB4(0);
      v9 = *(v8 + 16);
      sub_1004A6EB4(v9);
      if (v9)
      {
        v10 = v8 + 40;
        do
        {
          sub_1004A5834();

          _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

          v10 += 16;
          --v9;
        }

        while (v9);
      }

      break;
  }
}

Swift::Int MessageAttribute.hashValue.getter()
{
  sub_1004A6E94();
  MessageAttribute.hash(into:)(v1);
  return sub_1004A6F14();
}

Swift::Int sub_10044A110(uint64_t a1)
{
  sub_1004A6E94();
  MessageAttribute.hash(into:)(v2);
  return sub_1004A6F14();
}

uint64_t sub_10044A14C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 144);
  v13[8] = *(a1 + 128);
  v13[9] = v2;
  v13[10] = *(a1 + 160);
  v14 = *(a1 + 176);
  v3 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v3;
  v4 = *(a1 + 112);
  v13[6] = *(a1 + 96);
  v13[7] = v4;
  v5 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v5;
  v6 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v6;
  v7 = *(a2 + 144);
  v15[8] = *(a2 + 128);
  v15[9] = v7;
  v15[10] = *(a2 + 160);
  v16 = *(a2 + 176);
  v8 = *(a2 + 80);
  v15[4] = *(a2 + 64);
  v15[5] = v8;
  v9 = *(a2 + 112);
  v15[6] = *(a2 + 96);
  v15[7] = v9;
  v10 = *(a2 + 16);
  v15[0] = *a2;
  v15[1] = v10;
  v11 = *(a2 + 48);
  v15[2] = *(a2 + 32);
  v15[3] = v11;
  return _s12NIOIMAPCore216MessageAttributeO21__derived_enum_equalsySbAC_ACtFZ_0(v13, v15) & 1;
}

void *MessageAttribute.debugDescription.getter()
{
  v1 = v0;
  if (qword_1005DB9D0 != -1)
  {
    swift_once();
  }

  v2 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
  v3 = dword_1005DE398;
  v4 = word_1005DE39C;
  v5 = byte_1005DE39E;

  LOBYTE(v10) = 0;
  BYTE5(v10) = 0;
  *(&v10 + 1) = 65537;
  *(&v10 + 1) = v2;
  *&v11 = qword_1005DE390;
  DWORD2(v11) = v3;
  WORD6(v11) = v4;
  BYTE14(v11) = v5;
  *&v12 = sub_1003DBA20(_swiftEmptyArrayStorage);
  *(&v12 + 1) = v6;
  v13 = v7;
  result = sub_10044A37C(v1);
  if (DWORD1(v11) < v11)
  {
    __break(1u);
  }

  else if (v3 - (v5 | (v4 << 8)) >= DWORD1(v11))
  {
    v14[0] = v2;
    v14[1] = v11;
    v15 = v3;
    v16 = WORD6(v11);
    v17 = v5;
    v18 = v11;
    v19 = DWORD1(v11);
    *&v20[0] = 0;
    *(&v20[0] + 1) = 0xE000000000000000;

    sub_1004A5874(DWORD1(v11) - v11);
    sub_1003BB2E4(v14, v20);
    sub_1003A52D0(v14);
    v9 = *&v20[0];
    v20[0] = v10;
    v20[1] = v11;
    v20[2] = v12;
    v21 = v13;
    sub_1003E5C94(v20);
    return v9;
  }

  __break(1u);
  return result;
}

void *sub_10044A37C(uint64_t a1)
{
  v2 = *(a1 + 144);
  v51[8] = *(a1 + 128);
  v51[9] = v2;
  v51[10] = *(a1 + 160);
  v52 = *(a1 + 176);
  v3 = *(a1 + 80);
  v51[4] = *(a1 + 64);
  v51[5] = v3;
  v4 = *(a1 + 112);
  v51[6] = *(a1 + 96);
  v51[7] = v4;
  v5 = *(a1 + 16);
  v51[0] = *a1;
  v51[1] = v5;
  v6 = *(a1 + 48);
  v51[2] = *(a1 + 32);
  v51[3] = v6;
  v7 = sub_10030445C(v51);
  result = sub_100304468(v51);
  switch(v7)
  {
    case 1:
      v35 = *(result + 5);
      v57 = *(result + 4);
      v58 = v35;
      v59 = *(result + 6);
      *&v60 = result[14];
      v36 = *(result + 1);
      v53 = *result;
      v54 = v36;
      v37 = *(result + 3);
      v55 = *(result + 2);
      v56 = v37;
      v38 = *(v1 + 20);
      v39 = sub_1002F178C(0x45504F4C45564E45uLL, 0xE900000000000020, v1 + 8, v38);
      if (v40)
      {
        v41._countAndFlagsBits = 0x45504F4C45564E45;
        v41._object = 0xE900000000000020;
        v39 = ByteBuffer._setStringSlowpath(_:at:)(v41, v38);
      }

      v42 = v39;
      v43 = *(v1 + 20);
      v16 = __CFADD__(v43, v39);
      v44 = v43 + v39;
      if (v16)
      {
        goto LABEL_37;
      }

      *(v1 + 20) = v44;
      sub_1003E7CBC(&v53);
      v27 = __OFADD__(v42, v45);
      result = (v42 + v45);
      if (v27)
      {
        __break(1u);
LABEL_29:
        v46 = *(result + 9);
        v61 = *(result + 8);
        v62 = v46;
        v63 = *(result + 10);
        v64 = *(result + 176);
        v47 = *(result + 5);
        v57 = *(result + 4);
        v58 = v47;
        v48 = *(result + 7);
        v59 = *(result + 6);
        v60 = v48;
        v49 = *(result + 1);
        v53 = *result;
        v54 = v49;
        v50 = *(result + 3);
        v55 = *(result + 2);
        v56 = v50;
        return sub_10044A804(&v53, *(result + 177) & 1);
      }

      return result;
    case 2:
      v18 = *result;
      v19 = *(v1 + 20);
      v20 = sub_1002F178C(0x4C414E5245544E49uLL, 0xED00002045544144, v1 + 8, v19);
      if (v21)
      {
        v22._countAndFlagsBits = 0x4C414E5245544E49;
        v22._object = 0xED00002045544144;
        v20 = ByteBuffer._setStringSlowpath(_:at:)(v22, v19);
      }

      v23 = v20;
      v24 = *(v1 + 20);
      v16 = __CFADD__(v24, v20);
      v25 = v24 + v20;
      if (v16)
      {
        __break(1u);
        goto LABEL_36;
      }

      *(v1 + 20) = v25;
      v26 = sub_1004338EC(v18);
      v27 = __OFADD__(v23, v26);
      result = (v26 + v23);
      if (v27)
      {
        __break(1u);
LABEL_18:
        *&v53 = 541346133;
        *(&v53 + 1) = 0xE400000000000000;
        v66._countAndFlagsBits = sub_1004A6CE4();
        sub_1004A5994(v66);
        v9 = v1;

        v28 = v53;
        v29 = *(v1 + 20);
        v30 = sub_1002F178C(v53, *(&v53 + 1), v9 + 8, *(v9 + 20));
        if (v31)
        {
          v30 = ByteBuffer._setStringSlowpath(_:at:)(v28, v29);
          v9 = v1;
        }

        v32 = v30;

        v33 = *(v9 + 20);
        result = v32;
        v16 = __CFADD__(v33, v32);
        v17 = v33 + v32;
        if (!v16)
        {
LABEL_21:
          *(v9 + 20) = v17;
          return result;
        }

LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        JUMPOUT(0x10044A7C4);
      }

      return result;
    case 3:
      goto LABEL_18;
    case 4:
      strcpy(&v53, "RFC822.SIZE ");
      BYTE13(v53) = 0;
      HIWORD(v53) = -5120;
      v65._countAndFlagsBits = sub_1004A6CE4();
      sub_1004A5994(v65);
      v9 = v1;

      v10 = v53;
      v11 = *(v1 + 20);
      v12 = sub_1002F178C(v53, *(&v53 + 1), v9 + 8, *(v9 + 20));
      if (v13)
      {
        v12 = ByteBuffer._setStringSlowpath(_:at:)(v10, v11);
        v9 = v1;
      }

      v14 = v12;

      v15 = *(v9 + 20);
      result = v14;
      v16 = __CFADD__(v15, v14);
      v17 = v15 + v14;
      if (!v16)
      {
        goto LABEL_21;
      }

      __break(1u);
      return sub_10044B1F4(*result, result[1]);
    case 5:
      goto LABEL_29;
    case 6:
      return sub_10044A980(*result);
    case 7:
      v34 = *(result + 1);
      v53 = *result;
      v54 = v34;
      LOBYTE(v55) = *(result + 32);
      return sub_10044AD64(&v53);
    case 8:
      return sub_1003EF7F0();
    case 9:
      return sub_10044AE4C(*result, 0x47534D2D4D472D58uLL);
    case 10:
      return sub_10044AE4C(*result, 0x5248542D4D472D58uLL);
    case 11:
      return sub_10044AF20(*result);
    case 12:
      return sub_10044B1F4(*result, result[1]);
    case 13:
      return sub_10044B36C(*result, result[1]);
    case 14:
      return sub_10044B4C4(*result, result[1]);
    default:
      return sub_10044AAEC(*result);
  }
}

uint64_t sub_10044A804(__int128 *a1, char a2)
{
  v5 = *(v2 + 20);
  result = sub_1002F178C(0x59444F42uLL, 0xE400000000000000, v2 + 8, v5);
  if (v7)
  {
    v8._countAndFlagsBits = 1497648962;
    v8._object = 0xE400000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v8, v5);
  }

  v9 = *(v2 + 20);
  v10 = (v9 + result);
  if (__CFADD__(v9, result))
  {
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  *(v2 + 20) = v10;
  if (a2)
  {
    v11 = result;
    result = sub_1002F178C(0x5255544355525453uLL, 0xE900000000000045, v2 + 8, v10);
    if (v12)
    {
      v13._countAndFlagsBits = 0x5255544355525453;
      v13._object = 0xE900000000000045;
      result = ByteBuffer._setStringSlowpath(_:at:)(v13, v10);
    }

    v14 = result;
    v15 = *(v2 + 20);
    LODWORD(v10) = v15 + result;
    if (__CFADD__(v15, result))
    {
      goto LABEL_22;
    }

    result = v11;
    *(v2 + 20) = v10;
  }

  else
  {
    v14 = 0;
  }

  v16 = result + v14;
  if (__OFADD__(result, v14))
  {
    goto LABEL_18;
  }

  result = sub_1002F178C(0x20uLL, 0xE100000000000000, v2 + 8, v10);
  if (v17)
  {
    v18._countAndFlagsBits = 32;
    v18._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v18, v10);
  }

  v19 = *(v2 + 20);
  v20 = __CFADD__(v19, result);
  v21 = v19 + result;
  if (v20)
  {
    goto LABEL_19;
  }

  *(v2 + 20) = v21;
  v22 = v16 + result;
  if (__OFADD__(v16, result))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v23 = sub_1003AA504(a1);
  v24 = __OFADD__(v22, v23);
  result = v22 + v23;
  if (v24)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  return result;
}

uint64_t sub_10044A980(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 20);
  result = sub_1002F178C(0x532E5952414E4942uLL, 0xEB00000000455A49, v1 + 8, v4);
  if (v6)
  {
    v7._countAndFlagsBits = 0x532E5952414E4942;
    v7._object = 0xEB00000000455A49;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = result;
  v9 = *(v1 + 20);
  v10 = __CFADD__(v9, result);
  v11 = v9 + result;
  if (v10)
  {
    __break(1u);
    goto LABEL_11;
  }

  *(v1 + 20) = v11;
  result = sub_100492F74(a1);
  v12 = v8 + result;
  if (__OFADD__(v8, result))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v20._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v20);

  v13 = *(v1 + 20);
  v14 = sub_1002F178C(0x20uLL, 0xE100000000000000, v1 + 8, v13);
  if (v15)
  {
    v16._countAndFlagsBits = 32;
    v16._object = 0xE100000000000000;
    v14 = ByteBuffer._setStringSlowpath(_:at:)(v16, v13);
  }

  v17 = v14;

  v18 = *(v2 + 20);
  v10 = __CFADD__(v18, v17);
  v19 = v18 + v17;
  if (v10)
  {
    goto LABEL_12;
  }

  *(v2 + 20) = v19;
  result = v12 + v17;
  if (__OFADD__(v12, v17))
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t sub_10044AAEC(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 20);
  result = sub_1002F178C(0x205347414C46uLL, 0xE600000000000000, v1 + 8, v4);
  if (v6)
  {
    v7._countAndFlagsBits = 0x205347414C46;
    v7._object = 0xE600000000000000;
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
  v11 = a1[2];
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
  v35[2] = sub_1003C40B8;
  v35[3] = 0;
  v35[4] = v2;
  v35[5] = &v36;
  v35[6] = 32;
  v35[7] = 0xE100000000000000;
  result = sub_1004594A4(0, sub_1003A3458, v35, a1);
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

uint64_t sub_10044AD64(uint64_t a1)
{
  v2 = sub_10047C5F4(a1);
  v3 = *(v1 + 20);
  result = sub_1002F178C(0x20uLL, 0xE100000000000000, v1 + 8, v3);
  if (v5)
  {
    v6._countAndFlagsBits = 32;
    v6._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v6, v3);
  }

  v7 = *(v1 + 20);
  v8 = (v7 + result);
  if (__CFADD__(v7, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  *(v1 + 20) = v8;
  v9 = __OFADD__(v2, result);
  v10 = v2 + result;
  if (v9)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = sub_1002F178C(0x4C494EuLL, 0xE300000000000000, v1 + 8, v8);
  if (v11)
  {
    v12._countAndFlagsBits = 4999502;
    v12._object = 0xE300000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v12, v8);
  }

  v13 = *(v1 + 20);
  v14 = __CFADD__(v13, result);
  v15 = v13 + result;
  if (v14)
  {
    goto LABEL_12;
  }

  *(v1 + 20) = v15;
  v9 = __OFADD__(v10, result);
  result += v10;
  if (v9)
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

unint64_t sub_10044AE4C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v14._countAndFlagsBits = sub_1004A6CE4();
  sub_1004A5994(v14);

  v4 = *(v2 + 20);
  v5 = sub_1002F178C(a2, 0xEB00000000204449, v3 + 8, *(v3 + 20));
  if (v6)
  {
    v7._countAndFlagsBits = a2;
    v7._object = 0xEB00000000204449;
    v5 = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = v5;

  v10 = *(v3 + 20);
  v11 = __CFADD__(v10, v8);
  v12 = v10 + v8;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 20) = v12;
    return v8;
  }

  return result;
}

uint64_t sub_10044AF20(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 20);
  result = sub_1002F178C(0x42414C2D4D472D58uLL, 0xEB00000000534C45, v1 + 8, v4);
  if (v6)
  {
    v7._countAndFlagsBits = 0x42414C2D4D472D58;
    v7._object = 0xEB00000000534C45;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = result;
  v9 = *(v1 + 20);
  v10 = (v9 + result);
  if (__CFADD__(v9, result))
  {
    goto LABEL_32;
  }

  *(v1 + 20) = v10;
  result = sub_1002F178C(0x20uLL, 0xE100000000000000, v1 + 8, v10);
  if (v11)
  {
    v12._countAndFlagsBits = 32;
    v12._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v12, v10);
  }

  v13 = *(v1 + 20);
  v14 = (v13 + result);
  if (__CFADD__(v13, result))
  {
    goto LABEL_33;
  }

  *(v1 + 20) = v14;
  v15 = v8 + result;
  if (__OFADD__(v8, result))
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v41 = a1;
  v16 = *(a1 + 16);
  if (v16)
  {
    result = sub_1002F178C(0, 0xE000000000000000, v1 + 8, v14);
    if (v17)
    {
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v18, v14);
    }

    v19 = result;
    v20 = *(v1 + 20);
    LODWORD(v14) = v20 + result;
    if (__CFADD__(v20, result))
    {
      goto LABEL_41;
    }

    *(v1 + 20) = v14;
  }

  else
  {
    v19 = 0;
  }

  result = sub_1002F178C(0x28uLL, 0xE100000000000000, v1 + 8, v14);
  if (v21)
  {
    v22._countAndFlagsBits = 40;
    v22._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v22, v14);
  }

  v23 = *(v1 + 20);
  v24 = __CFADD__(v23, result);
  v25 = v23 + result;
  if (v24)
  {
    goto LABEL_35;
  }

  *(v1 + 20) = v25;
  v26 = v19 + result;
  if (__OFADD__(v19, result))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  __chkstk_darwin(result);
  v40[2] = sub_1003F5FB4;
  v40[3] = 0;
  v40[4] = v2;
  v40[5] = &v41;
  v40[6] = 32;
  v40[7] = 0xE100000000000000;
  result = sub_10045948C(0, sub_1003E73E4, v40, a1);
  v27 = v26 + result;
  if (__OFADD__(v26, result))
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v28 = *(v2 + 20);
  result = sub_1002F178C(0x29uLL, 0xE100000000000000, v2 + 8, v28);
  if (v29)
  {
    v30._countAndFlagsBits = 41;
    v30._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v30, v28);
  }

  v31 = *(v2 + 20);
  v32 = (v31 + result);
  if (__CFADD__(v31, result))
  {
    goto LABEL_38;
  }

  *(v2 + 20) = v32;
  v33 = __OFADD__(v27, result);
  v34 = v27 + result;
  if (v33)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (!v16)
  {
    v39 = v34;
    goto LABEL_28;
  }

  result = sub_1002F178C(0, 0xE000000000000000, v2 + 8, v32);
  if (v35)
  {
    v36._countAndFlagsBits = 0;
    v36._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v36, v32);
  }

  v37 = *(v2 + 20);
  v24 = __CFADD__(v37, result);
  v38 = v37 + result;
  if (v24)
  {
    goto LABEL_42;
  }

  *(v2 + 20) = v38;
  v39 = v34 + result;
  if (__OFADD__(v34, result))
  {
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

LABEL_28:
  result = v15 + v39;
  if (__OFADD__(v15, v39))
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

uint64_t sub_10044B1F4(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 20);
  result = sub_1002F178C(0x57454956455250uLL, 0xE700000000000000, v2 + 8, v6);
  if (v8)
  {
    v9._countAndFlagsBits = 0x57454956455250;
    v9._object = 0xE700000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v9, v6);
  }

  v10 = result;
  v11 = *(v2 + 20);
  v12 = (v11 + result);
  if (__CFADD__(v11, result))
  {
    goto LABEL_17;
  }

  *(v2 + 20) = v12;
  result = sub_1002F178C(0x20uLL, 0xE100000000000000, v2 + 8, v12);
  if (v13)
  {
    v14._countAndFlagsBits = 32;
    v14._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v14, v12);
  }

  v15 = *(v2 + 20);
  v16 = (v15 + result);
  if (__CFADD__(v15, result))
  {
    goto LABEL_18;
  }

  *(v2 + 20) = v16;
  v17 = __OFADD__(v10, result);
  v18 = v10 + result;
  if (v17)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (a2)
  {

    sub_100441B60(a1, a2);
    v20 = v19;

    result = v18 + v20;
    if (!__OFADD__(v18, v20))
    {
      return result;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  result = sub_1002F178C(0x4C494EuLL, 0xE300000000000000, v2 + 8, v16);
  if (v21)
  {
    v22._countAndFlagsBits = 4999502;
    v22._object = 0xE300000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v22, v16);
  }

  v23 = result;
  v24 = *(v3 + 20);
  v25 = __CFADD__(v24, result);
  v26 = v24 + result;
  if (v25)
  {
    goto LABEL_20;
  }

  *(v3 + 20) = v26;
  result += v18;
  if (__OFADD__(v18, v23))
  {
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_10044B36C(unint64_t a1, void *a2)
{
  v3 = v2;
  v6 = *(v2 + 20);
  result = sub_1002F178C(0x2044494C49414D45uLL, 0xE900000000000028, v2 + 8, v6);
  if (v8)
  {
    v9._countAndFlagsBits = 0x2044494C49414D45;
    v9._object = 0xE900000000000028;
    result = ByteBuffer._setStringSlowpath(_:at:)(v9, v6);
  }

  v10 = result;
  v11 = *(v2 + 20);
  v12 = (v11 + result);
  if (__CFADD__(v11, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *(v2 + 20) = v12;

  v13 = sub_1002F178C(a1, a2, v2 + 8, v12);
  if (v14)
  {
    v15._countAndFlagsBits = a1;
    v15._object = a2;
    v13 = ByteBuffer._setStringSlowpath(_:at:)(v15, v12);
  }

  v16 = v13;

  v17 = *(v3 + 20);
  v18 = (v17 + v16);
  if (__CFADD__(v17, v16))
  {
    goto LABEL_14;
  }

  *(v3 + 20) = v18;
  v19 = __OFADD__(v10, v16);
  v20 = v10 + v16;
  if (v19)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = sub_1002F178C(0x29uLL, 0xE100000000000000, v3 + 8, (v17 + v16));
  if (v21)
  {
    v22._countAndFlagsBits = 41;
    v22._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v22, v18);
  }

  v23 = *(v3 + 20);
  v24 = __CFADD__(v23, result);
  v25 = v23 + result;
  if (v24)
  {
    goto LABEL_16;
  }

  *(v3 + 20) = v25;
  v19 = __OFADD__(v20, result);
  result += v20;
  if (v19)
  {
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_10044B4C4(unint64_t a1, void *a2)
{
  v3 = v2;
  v4 = 0x4449444145524854;
  if (!a2)
  {
    goto LABEL_15;
  }

  v7 = *(v2 + 20);
  result = sub_1002F178C(0x4449444145524854uLL, 0xEA00000000002820, v2 + 8, v7);
  if (v9)
  {
    v10._countAndFlagsBits = 0x4449444145524854;
    v10._object = 0xEA00000000002820;
    result = ByteBuffer._setStringSlowpath(_:at:)(v10, v7);
  }

  v11 = result;
  v12 = *(v2 + 20);
  v4 = (v12 + result);
  if (__CFADD__(v12, result))
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  *(v2 + 20) = v4;

  v13 = sub_1002F178C(a1, a2, v2 + 8, v4);
  if (v14)
  {
    v15._countAndFlagsBits = a1;
    v15._object = a2;
    v13 = ByteBuffer._setStringSlowpath(_:at:)(v15, v4);
  }

  v16 = v13;

  v17 = *(v3 + 20);
  v18 = (v17 + v16);
  if (__CFADD__(v17, v16))
  {
    goto LABEL_20;
  }

  *(v3 + 20) = v18;
  v19 = v11 + v16;
  if (__OFADD__(v11, v16))
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return result;
  }

  result = sub_1002F178C(0x29uLL, 0xE100000000000000, v3 + 8, (v17 + v16));
  if (v20)
  {
    v21._countAndFlagsBits = 41;
    v21._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v21, v18);
  }

  v22 = *(v3 + 20);
  v23 = __CFADD__(v22, result);
  v24 = v22 + result;
  if (v23)
  {
    goto LABEL_22;
  }

  *(v3 + 20) = v24;
  v25 = __OFADD__(v19, result);
  result += v19;
  if (v25)
  {
    __break(1u);
LABEL_15:
    v26 = *(v3 + 20);
    result = sub_1002F178C(v4, 0xEC0000004C494E20, v3 + 8, v26);
    if (v27)
    {
      v28._countAndFlagsBits = v4;
      v28._object = 0xEC0000004C494E20;
      result = ByteBuffer._setStringSlowpath(_:at:)(v28, v26);
    }

    v29 = *(v3 + 20);
    v23 = __CFADD__(v29, result);
    v30 = v29 + result;
    if (!v23)
    {
      *(v3 + 20) = v30;
      return result;
    }

    goto LABEL_23;
  }

  return result;
}

uint64_t _s12NIOIMAPCore216MessageAttributeO21__derived_enum_equalsySbAC_ACtFZ_0(__int128 *a1, __int128 *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v239[3] = a1[3];
  v239[2] = v5;
  v239[1] = v4;
  v239[0] = v3;
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v239[7] = a1[7];
  v239[6] = v8;
  v239[5] = v7;
  v239[4] = v6;
  v9 = a1[8];
  v10 = a1[9];
  v11 = a1[10];
  v240 = *(a1 + 88);
  v239[10] = v11;
  v239[9] = v10;
  v239[8] = v9;
  switch(sub_10030445C(v239))
  {
    case 1u:
      v78 = sub_100304468(v239);
      v79 = *(v78 + 64);
      v220 = *(v78 + 80);
      v221 = *(v78 + 96);
      *&v222 = *(v78 + 112);
      v80 = *(v78 + 16);
      v215 = *v78;
      v216 = v80;
      v81 = *(v78 + 48);
      v217 = *(v78 + 32);
      v218 = v81;
      v219 = v79;
      v82 = a2[9];
      v235 = a2[8];
      v236 = v82;
      v237 = a2[10];
      v238 = *(a2 + 88);
      v83 = a2[5];
      v231 = a2[4];
      v232 = v83;
      v84 = a2[7];
      v233 = a2[6];
      v234 = v84;
      v85 = a2[1];
      v227 = *a2;
      v228 = v85;
      v86 = a2[3];
      v229 = a2[2];
      v230 = v86;
      if (sub_10030445C(&v227) != 1)
      {
        goto LABEL_51;
      }

      v87 = sub_100304468(&v227);
      v207 = *(v87 + 64);
      v208 = *(v87 + 80);
      v209 = *(v87 + 96);
      *&v210 = *(v87 + 112);
      v203 = *v87;
      v204 = *(v87 + 16);
      v205 = *(v87 + 32);
      v206 = *(v87 + 48);
      v20 = _s12NIOIMAPCore28EnvelopeV23__derived_struct_equalsySbAC_ACtFZ_0(v215.i64, &v203);
      return v20 & 1;
    case 2u:
      v35 = *sub_100304468(v239);
      v56 = a2[2];
      v230 = a2[3];
      v229 = v56;
      v57 = *a2;
      v228 = a2[1];
      v227 = v57;
      v58 = a2[6];
      v234 = a2[7];
      v233 = v58;
      v59 = a2[4];
      v232 = a2[5];
      v231 = v59;
      v238 = *(a2 + 88);
      v60 = a2[9];
      v237 = a2[10];
      v61 = a2[8];
      v236 = v60;
      v235 = v61;
      if (sub_10030445C(&v227) == 2)
      {
        goto LABEL_44;
      }

      goto LABEL_51;
    case 3u:
      v62 = *sub_100304468(v239);
      v63 = a2[2];
      v230 = a2[3];
      v229 = v63;
      v64 = *a2;
      v228 = a2[1];
      v227 = v64;
      v65 = a2[6];
      v234 = a2[7];
      v233 = v65;
      v66 = a2[4];
      v232 = a2[5];
      v231 = v66;
      v238 = *(a2 + 88);
      v67 = a2[9];
      v237 = a2[10];
      v68 = a2[8];
      v236 = v67;
      v235 = v68;
      if (sub_10030445C(&v227) != 3)
      {
        goto LABEL_51;
      }

      v20 = *sub_100304468(&v227) == v62;
      return v20 & 1;
    case 4u:
      v35 = *sub_100304468(v239);
      v36 = a2[2];
      v230 = a2[3];
      v229 = v36;
      v37 = *a2;
      v228 = a2[1];
      v227 = v37;
      v38 = a2[6];
      v234 = a2[7];
      v233 = v38;
      v39 = a2[4];
      v232 = a2[5];
      v231 = v39;
      v238 = *(a2 + 88);
      v40 = a2[9];
      v237 = a2[10];
      v41 = a2[8];
      v236 = v40;
      v235 = v41;
      if (sub_10030445C(&v227) != 4)
      {
        goto LABEL_51;
      }

      goto LABEL_44;
    case 5u:
      v88 = sub_100304468(v239);
      v89 = *(v88 + 144);
      v223 = *(v88 + 128);
      v224 = v89;
      v225 = *(v88 + 160);
      v226 = *(v88 + 176);
      v90 = *(v88 + 64);
      v220 = *(v88 + 80);
      v91 = *(v88 + 112);
      v221 = *(v88 + 96);
      v222 = v91;
      v92 = *(v88 + 16);
      v215 = *v88;
      v216 = v92;
      v93 = *(v88 + 48);
      v217 = *(v88 + 32);
      v218 = v93;
      v219 = v90;
      v94 = *(v88 + 177);
      v95 = a2[9];
      v237 = a2[10];
      v96 = a2[8];
      v236 = v95;
      v235 = v96;
      v97 = a2[6];
      v234 = a2[7];
      v233 = v97;
      v98 = a2[4];
      v232 = a2[5];
      v231 = v98;
      v99 = a2[2];
      v230 = a2[3];
      v229 = v99;
      v100 = *a2;
      v228 = a2[1];
      v227 = v100;
      v238 = *(a2 + 88);
      if (sub_10030445C(&v227) != 5)
      {
        goto LABEL_51;
      }

      v101 = sub_100304468(&v227);
      v102 = *(v101 + 144);
      v199 = *(v101 + 128);
      v200 = v102;
      v201 = *(v101 + 160);
      v202 = *(v101 + 176);
      v103 = *(v101 + 80);
      v195 = *(v101 + 64);
      v196 = v103;
      v104 = *(v101 + 112);
      v197 = *(v101 + 96);
      v198 = v104;
      v105 = *(v101 + 16);
      v191 = *v101;
      v192 = v105;
      v106 = *(v101 + 48);
      v193 = *(v101 + 32);
      v194 = v106;
      v107 = *(v101 + 177);
      v214 = v226;
      v212 = v224;
      v213 = v225;
      v210 = v222;
      v211 = v223;
      v208 = v220;
      v209 = v221;
      v206 = v218;
      v207 = v219;
      v204 = v216;
      v205 = v217;
      v203 = v215;
      if (sub_10000FE74(&v203) == 1)
      {
        v187 = v199;
        v188 = v200;
        v189 = v201;
        v190 = v202;
        v183 = v195;
        v184 = v196;
        v185 = v197;
        v186 = v198;
        v179 = v191;
        v180 = v192;
        v181 = v193;
        v182 = v194;
        if (sub_10000FE74(&v179) != 1)
        {
          goto LABEL_51;
        }

        goto LABEL_30;
      }

      v187 = v199;
      v188 = v200;
      v189 = v201;
      v190 = v202;
      v183 = v195;
      v184 = v196;
      v185 = v197;
      v186 = v198;
      v179 = v191;
      v180 = v192;
      v181 = v193;
      v182 = v194;
      if (sub_10000FE74(&v179) == 1)
      {
        goto LABEL_51;
      }

      v177[8] = v211;
      v177[9] = v212;
      v177[10] = v213;
      v178 = v214;
      v177[4] = v207;
      v177[5] = v208;
      v177[6] = v209;
      v177[7] = v210;
      v177[0] = v203;
      v177[1] = v204;
      v177[2] = v205;
      v177[3] = v206;
      if (sub_10000FE88(v177) == 1)
      {
        v145 = UInt32.init(_:)(v177);
        v146 = *(v145 + 80);
        v245 = *(v145 + 64);
        v246 = v146;
        v247 = *(v145 + 96);
        *&v248 = *(v145 + 112);
        v147 = *(v145 + 16);
        v241 = *v145;
        v242 = v147;
        v148 = *(v145 + 48);
        v243 = *(v145 + 32);
        v244 = v148;
        v173 = v187;
        v174 = v188;
        v175 = v189;
        v176 = v190;
        v169 = v183;
        v170 = v184;
        v171 = v185;
        v172 = v186;
        v165 = v179;
        v166 = v180;
        v167 = v181;
        v168 = v182;
        if (sub_10000FE88(&v165) == 1)
        {
          v149 = UInt32.init(_:)(&v165);
          v150 = *(v149 + 80);
          v256 = *(v149 + 64);
          v257 = v150;
          v258 = *(v149 + 96);
          *&v259 = *(v149 + 112);
          v151 = *(v149 + 16);
          v252 = *v149;
          v253 = v151;
          v152 = *(v149 + 48);
          v254 = *(v149 + 32);
          v255 = v152;
          if (!_s12NIOIMAPCore213BodyStructureO9MultipartV23__derived_struct_equalsySbAE_AEtFZ_0(&v241, &v252))
          {
            goto LABEL_51;
          }

LABEL_30:
          v20 = v94 ^ v107 ^ 1;
          return v20 & 1;
        }
      }

      else
      {
        v153 = UInt32.init(_:)(v177);
        v154 = v153[9];
        v249 = v153[8];
        v250 = v154;
        v251 = v153[10];
        v155 = v153[5];
        v245 = v153[4];
        v246 = v155;
        v156 = v153[6];
        v248 = v153[7];
        v247 = v156;
        v157 = v153[1];
        v241 = *v153;
        v242 = v157;
        v158 = v153[2];
        v244 = v153[3];
        v243 = v158;
        v176 = v190;
        v174 = v188;
        v175 = v189;
        v172 = v186;
        v173 = v187;
        v170 = v184;
        v171 = v185;
        v168 = v182;
        v169 = v183;
        v166 = v180;
        v167 = v181;
        v165 = v179;
        if (sub_10000FE88(&v165) != 1)
        {
          v159 = UInt32.init(_:)(&v165);
          v160 = v159[9];
          v260 = v159[8];
          v261 = v160;
          v262 = v159[10];
          v161 = v159[5];
          v256 = v159[4];
          v257 = v161;
          v162 = v159[7];
          v258 = v159[6];
          v259 = v162;
          v163 = v159[1];
          v252 = *v159;
          v253 = v163;
          v164 = v159[3];
          v254 = v159[2];
          v255 = v164;
          if (!static BodyStructure.Singlepart.__derived_struct_equals(_:_:)(&v241, &v252))
          {
            goto LABEL_51;
          }

          goto LABEL_30;
        }
      }

      UInt32.init(_:)(&v165);
LABEL_51:
      v20 = 0;
      return v20 & 1;
    case 6u:
      v117 = sub_100304468(v239);
      v119 = *v117;
      v118 = v117[1];
      v120 = a2[9];
      v235 = a2[8];
      v236 = v120;
      v237 = a2[10];
      v238 = *(a2 + 88);
      v121 = a2[5];
      v231 = a2[4];
      v232 = v121;
      v122 = a2[7];
      v233 = a2[6];
      v234 = v122;
      v123 = a2[1];
      v227 = *a2;
      v228 = v123;
      v124 = a2[3];
      v229 = a2[2];
      v230 = v124;
      if (sub_10030445C(&v227) != 6)
      {
        goto LABEL_51;
      }

      v125 = sub_100304468(&v227);
      v126 = *v125;
      v127 = *(v119 + 16);
      if (v127 != *(*v125 + 16))
      {
        goto LABEL_51;
      }

      if (!v127 || v119 == v126)
      {
        goto LABEL_42;
      }

      v128 = (v119 + 32);
      v129 = (v126 + 32);
      while (*v128 == *v129)
      {
        ++v128;
        ++v129;
        if (!--v127)
        {
LABEL_42:
          v20 = v118 == v125[1];
          return v20 & 1;
        }
      }

      goto LABEL_51;
    case 7u:
      v69 = sub_100304468(v239);
      v70 = *(v69 + 16);
      v215 = *v69;
      v216 = v70;
      LOBYTE(v217) = *(v69 + 32);
      v71 = a2[2];
      v230 = a2[3];
      v229 = v71;
      v72 = *a2;
      v228 = a2[1];
      v227 = v72;
      v73 = a2[6];
      v234 = a2[7];
      v233 = v73;
      v74 = a2[4];
      v232 = a2[5];
      v231 = v74;
      v238 = *(a2 + 88);
      v75 = a2[9];
      v237 = a2[10];
      v76 = a2[8];
      v236 = v75;
      v235 = v76;
      if (sub_10030445C(&v227) != 7)
      {
        goto LABEL_51;
      }

      v77 = sub_100304468(&v227);
      v203 = *v77;
      v204 = *(v77 + 16);
      LOBYTE(v205) = *(v77 + 32);
      v20 = _s12NIOIMAPCore213StreamingKindO21__derived_enum_equalsySbAC_ACtFZ_0(v215.i64, &v203);
      return v20 & 1;
    case 8u:
      v136 = *sub_100304468(v239);
      v137 = a2[2];
      v230 = a2[3];
      v229 = v137;
      v138 = *a2;
      v228 = a2[1];
      v227 = v138;
      v139 = a2[6];
      v234 = a2[7];
      v233 = v139;
      v140 = a2[4];
      v232 = a2[5];
      v231 = v140;
      v238 = *(a2 + 88);
      v141 = a2[9];
      v237 = a2[10];
      v142 = a2[8];
      v236 = v141;
      v235 = v142;
      if (sub_10030445C(&v227) != 8)
      {
        goto LABEL_51;
      }

      v143 = *sub_100304468(&v227);
      if ((v143 | v136) < 0)
      {
        __break(1u);
        JUMPOUT(0x10044C2ECLL);
      }

      v20 = v143 == v136;
      return v20 & 1;
    case 9u:
      v35 = *sub_100304468(v239);
      v50 = a2[2];
      v230 = a2[3];
      v229 = v50;
      v51 = *a2;
      v228 = a2[1];
      v227 = v51;
      v52 = a2[6];
      v234 = a2[7];
      v233 = v52;
      v53 = a2[4];
      v232 = a2[5];
      v231 = v53;
      v238 = *(a2 + 88);
      v54 = a2[9];
      v237 = a2[10];
      v55 = a2[8];
      v236 = v54;
      v235 = v55;
      if (sub_10030445C(&v227) != 9)
      {
        goto LABEL_51;
      }

      goto LABEL_44;
    case 0xAu:
      v35 = *sub_100304468(v239);
      v130 = a2[2];
      v230 = a2[3];
      v229 = v130;
      v131 = *a2;
      v228 = a2[1];
      v227 = v131;
      v132 = a2[6];
      v234 = a2[7];
      v233 = v132;
      v133 = a2[4];
      v232 = a2[5];
      v231 = v133;
      v238 = *(a2 + 88);
      v134 = a2[9];
      v237 = a2[10];
      v135 = a2[8];
      v236 = v134;
      v235 = v135;
      if (sub_10030445C(&v227) != 10)
      {
        goto LABEL_51;
      }

LABEL_44:
      v20 = v35 == *sub_100304468(&v227);
      return v20 & 1;
    case 0xBu:
      sub_100304468(v239);
      v29 = a2[2];
      v230 = a2[3];
      v229 = v29;
      v30 = *a2;
      v228 = a2[1];
      v227 = v30;
      v31 = a2[6];
      v234 = a2[7];
      v233 = v31;
      v32 = a2[4];
      v232 = a2[5];
      v231 = v32;
      v238 = *(a2 + 88);
      v33 = a2[9];
      v237 = a2[10];
      v34 = a2[8];
      v236 = v33;
      v235 = v34;
      if (sub_10030445C(&v227) != 11)
      {
        goto LABEL_51;
      }

      sub_100304468(&v227);
      v20 = sub_1003A370C();
      return v20 & 1;
    case 0xCu:
      v42 = sub_100304468(v239);
      v23 = *v42;
      v22 = v42[1];
      v43 = a2[9];
      v235 = a2[8];
      v236 = v43;
      v237 = a2[10];
      v238 = *(a2 + 88);
      v44 = a2[5];
      v231 = a2[4];
      v232 = v44;
      v45 = a2[7];
      v233 = a2[6];
      v234 = v45;
      v46 = a2[1];
      v227 = *a2;
      v228 = v46;
      v47 = a2[3];
      v229 = a2[2];
      v230 = v47;
      if (sub_10030445C(&v227) == 12)
      {
        goto LABEL_11;
      }

      goto LABEL_51;
    case 0xDu:
      v108 = sub_100304468(v239);
      v109 = *v108;
      v110 = v108[1];
      v111 = a2[9];
      v235 = a2[8];
      v236 = v111;
      v237 = a2[10];
      v238 = *(a2 + 88);
      v112 = a2[5];
      v231 = a2[4];
      v232 = v112;
      v113 = a2[7];
      v233 = a2[6];
      v234 = v113;
      v114 = a2[1];
      v227 = *a2;
      v228 = v114;
      v115 = a2[3];
      v229 = a2[2];
      v230 = v115;
      if (sub_10030445C(&v227) != 13)
      {
        goto LABEL_51;
      }

      v116 = sub_100304468(&v227);
      if (v109 == *v116 && v110 == v116[1])
      {
        goto LABEL_49;
      }

      v20 = sub_1004A6D34();
      return v20 & 1;
    case 0xEu:
      v21 = sub_100304468(v239);
      v23 = *v21;
      v22 = v21[1];
      v24 = a2[9];
      v235 = a2[8];
      v236 = v24;
      v237 = a2[10];
      v238 = *(a2 + 88);
      v25 = a2[5];
      v231 = a2[4];
      v232 = v25;
      v26 = a2[7];
      v233 = a2[6];
      v234 = v26;
      v27 = a2[1];
      v227 = *a2;
      v228 = v27;
      v28 = a2[3];
      v229 = a2[2];
      v230 = v28;
      if (sub_10030445C(&v227) != 14)
      {
        goto LABEL_51;
      }

LABEL_11:
      v48 = sub_100304468(&v227);
      v49 = v48[1];
      if (v22)
      {
        if (!v49 || (v23 != *v48 || v22 != v49) && (sub_1004A6D34() & 1) == 0)
        {
          goto LABEL_51;
        }
      }

      else if (v49)
      {
        goto LABEL_51;
      }

LABEL_49:
      v20 = 1;
      return v20 & 1;
    default:
      v12 = *sub_100304468(v239);
      v13 = a2[2];
      v230 = a2[3];
      v229 = v13;
      v14 = *a2;
      v228 = a2[1];
      v227 = v14;
      v15 = a2[6];
      v234 = a2[7];
      v233 = v15;
      v16 = a2[4];
      v232 = a2[5];
      v231 = v16;
      v238 = *(a2 + 88);
      v17 = a2[9];
      v237 = a2[10];
      v18 = a2[8];
      v236 = v17;
      v235 = v18;
      if (sub_10030445C(&v227))
      {
        goto LABEL_51;
      }

      v19 = sub_100304468(&v227);
      v20 = sub_10010321C(v12, *v19);
      return v20 & 1;
  }
}

unint64_t sub_10044C32C()
{
  result = qword_1005DCB90;
  if (!qword_1005DCB90)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MessageAttribute, &type metadata for MessageAttribute, v0, v1);
    atomic_store(result, &qword_1005DCB90);
  }

  return result;
}

uint64_t sub_10044C380(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x72 && *(a1 + 178))
  {
    return (*a1 + 114);
  }

  v3 = ((*(a1 + 176) >> 5) & 0x70 | (*(a1 + 176) >> 12)) ^ 0x7F;
  if (v3 >= 0x71)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10044C3D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x71)
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
    *(result + 176) = 0;
    *result = a2 - 114;
    if (a3 >= 0x72)
    {
      *(result + 178) = 1;
    }
  }

  else
  {
    if (a3 >= 0x72)
    {
      *(result + 178) = 0;
    }

    if (a2)
    {
      *(result + 144) = 0u;
      *(result + 160) = 0u;
      *(result + 112) = 0u;
      *(result + 128) = 0u;
      *(result + 80) = 0u;
      *(result + 96) = 0u;
      *(result + 48) = 0u;
      *(result + 64) = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 176) = (((-a2 >> 4) & 7) - 8 * a2) << 9;
    }
  }

  return result;
}

void MessageData.hash(into:)(uint64_t a1)
{
  v2 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v2 - 8);
  v4 = &v19 - v3;
  v5 = type metadata accessor for MessageData(0);
  __chkstk_darwin(v5);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10044D504(v1, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v12 = *v7;
      sub_1004A6EB4(0);
      sub_1004A6EE4(v12);
      return;
    }

    sub_100020950(v7, v4);
    v13 = 1;
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_100020950(v7, v4);
    v13 = 2;
LABEL_19:
    sub_1004A6EB4(v13);
    sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
    sub_1000956A0();
    sub_1004A5564();
    sub_100025F40(v4, &unk_1005D91B0, &unk_1004CF400);
    return;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v9 = *v7;
    sub_1004A6EB4(3uLL);
    sub_1004A6EB4(*(v9 + 16));
    v10 = *(v9 + 16);
    if (v10)
    {
      v11 = v9 + 54;
      do
      {
        v11 += 24;
        swift_beginAccess();
        sub_1004A6EA4();
        --v10;
      }

      while (v10);
    }
  }

  else
  {
    v14 = *v7;
    sub_1004A6EB4(4uLL);
    sub_1004A6EB4(*(v14 + 16));
    v15 = *(v14 + 16);
    if (v15)
    {
      v16 = 0;
      v19 = v14;
      do
      {
        v18 = *(v14 + v16 + 56);
        v17 = *(v14 + v16 + 64);
        v20 = *(v14 + v16 + 78);
        v21 = *(v14 + v16 + 72);
        v22 = v17;
        swift_beginAccess();
        sub_1004A6EA4();
        if (v18)
        {
          sub_1004A6EC4(1u);
          swift_beginAccess();
          sub_1004A6EA4();
        }

        else
        {
          sub_1004A6EC4(0);
        }

        v16 += 48;
        --v15;
        v14 = v19;
      }

      while (v15);
    }
  }
}

Swift::Int MessageData.hashValue.getter()
{
  sub_1004A6E94();
  MessageData.hash(into:)(v1);
  return sub_1004A6F14();
}

Swift::Int sub_10044C7E4(uint64_t a1)
{
  sub_1004A6E94();
  MessageData.hash(into:)(v2);
  return sub_1004A6F14();
}

uint64_t sub_10044C820(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v4 - 8);
  v6 = v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v88 - v8;
  v10 = type metadata accessor for MessageData(0);
  __chkstk_darwin(v10);
  v12 = (v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10044D504(a1, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v18 = 0x44454853494E4156;
      sub_100020950(v12, v9);
      v56 = *(v2 + 20);
      result = sub_1002F178C(0x44454853494E4156uLL, 0xE900000000000020, v2 + 8, v56);
      if (v57)
      {
        v58._countAndFlagsBits = 0x44454853494E4156;
        v58._object = 0xE900000000000020;
        result = ByteBuffer._setStringSlowpath(_:at:)(v58, v56);
      }

      v59 = result;
      v60 = *(v2 + 20);
      v25 = __CFADD__(v60, result);
      v61 = v60 + result;
      if (v25)
      {
        goto LABEL_77;
      }

      *(v2 + 20) = v61;
      v2 = sub_10048E5D0(v2);
      sub_100025F40(v9, &unk_1005D91B0, &unk_1004CF400);
      result = v59 + v2;
      if (!__OFADD__(v59, v2))
      {
        return result;
      }

      __break(1u);
      goto LABEL_42;
    }

    LODWORD(v88[0]) = *v12;
    v12 = v88;
    v27 = sub_1004A6CE4();
    v29 = v28;
    v30 = *(v2 + 20);
    v31 = sub_1002F178C(v27, v28, v2 + 8, v30);
    if (v32)
    {
      v12 = (v2 + 8);
      v33._countAndFlagsBits = v27;
      v33._object = v29;
      v31 = ByteBuffer._setStringSlowpath(_:at:)(v33, v30);
    }

    v6 = v31;

    v34 = *(v2 + 20);
    v35 = (v34 + v6);
    if (__CFADD__(v34, v6))
    {
      goto LABEL_76;
    }

    *(v2 + 20) = v35;
    result = sub_1002F178C(0x45474E5550584520uLL, 0xE800000000000000, v2 + 8, (v34 + v6));
    if (v36)
    {
      v12 = (v2 + 8);
      v37._countAndFlagsBits = 0x45474E5550584520;
      v37._object = 0xE800000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v37, v35);
    }

    v38 = *(v2 + 20);
    v25 = __CFADD__(v38, result);
    v39 = v38 + result;
    if (v25)
    {
      goto LABEL_78;
    }

    *(v2 + 20) = v39;
    v40 = __OFADD__(v6, result);
    result += v6;
    if (!v40)
    {
      return result;
    }

    __break(1u);
    goto LABEL_22;
  }

  if (EnumCaseMultiPayload == 2)
  {
LABEL_22:
    sub_100020950(v12, v6);
    v41 = *(v2 + 20);
    result = sub_1002F178C(0xD000000000000013, 0x80000001004B09F0, v2 + 8, v41);
    if (v42)
    {
      v43._object = 0x80000001004B09F0;
      v43._countAndFlagsBits = 0xD000000000000013;
      result = ByteBuffer._setStringSlowpath(_:at:)(v43, v41);
    }

    v44 = result;
    v45 = *(v2 + 20);
    v25 = __CFADD__(v45, result);
    v46 = v45 + result;
    if (v25)
    {
      goto LABEL_73;
    }

    *(v2 + 20) = v46;
    v12 = v6;
    v2 = sub_10048E5D0(v2);
    sub_100025F40(v6, &unk_1005D91B0, &unk_1004CF400);
    result = v44 + v2;
    if (!__OFADD__(v44, v2))
    {
      return result;
    }

    __break(1u);
    goto LABEL_28;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v9 = *v12;
    v14 = *(v2 + 20);
    result = sub_1002F178C(0x55414C52554E4547uLL, 0xEA00000000004854, v2 + 8, v14);
    if (v16)
    {
      v17._countAndFlagsBits = 0x55414C52554E4547;
      v17._object = 0xEA00000000004854;
      result = ByteBuffer._setStringSlowpath(_:at:)(v17, v14);
    }

    v18 = result;
    v19 = *(v2 + 20);
    v20 = (v19 + result);
    if (__CFADD__(v19, result))
    {
      goto LABEL_74;
    }

    *(v2 + 20) = v20;
    v88[0] = v9;
    if (*(v9 + 2))
    {
      result = sub_1002F178C(0x20uLL, 0xE100000000000000, v2 + 8, v20);
      if (v21)
      {
        v22._countAndFlagsBits = 32;
        v22._object = 0xE100000000000000;
        result = ByteBuffer._setStringSlowpath(_:at:)(v22, v20);
      }

      v23 = result;
      v24 = *(v2 + 20);
      v25 = __CFADD__(v24, result);
      v26 = v24 + result;
      if (v25)
      {
        goto LABEL_86;
      }

      *(v2 + 20) = v26;
      goto LABEL_43;
    }

LABEL_42:
    v23 = 0;
LABEL_43:
    __chkstk_darwin(result);
    v88[-6] = sub_10044CF7C;
    v88[-5] = 0;
    v88[-4] = v2;
    v88[-3] = v88;
    v88[-2] = 32;
    v88[-1] = 0xE100000000000000;
    result = sub_1004520C0(0, sub_10044D69C, &v88[-8], v9);
    v51 = v23 + result;
    if (__OFADD__(v23, result))
    {
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    if (*(v9 + 2))
    {
      v62 = *(v2 + 20);
      v63 = sub_1002F178C(0, 0xE000000000000000, v2 + 8, v62);
      if (v64)
      {
        v65._countAndFlagsBits = 0;
        v65._object = 0xE000000000000000;
        v63 = ByteBuffer._setStringSlowpath(_:at:)(v65, v62);
      }

      v66 = v63;

      v67 = *(v2 + 20);
      v25 = __CFADD__(v67, v66);
      v68 = v67 + v66;
      if (v25)
      {
        goto LABEL_88;
      }

      *(v2 + 20) = v68;
      v69 = v51 + v66;
      if (__OFADD__(v51, v66))
      {
        __break(1u);
        goto LABEL_71;
      }
    }

    else
    {

      v69 = v51;
    }

    result = v18 + v69;
    if (!__OFADD__(v18, v69))
    {
      return result;
    }

    __break(1u);
    goto LABEL_52;
  }

LABEL_28:
  v9 = *v12;
  v47 = *(v2 + 20);
  result = sub_1002F178C(0x48435445464C5255uLL, 0xE800000000000000, v2 + 8, v47);
  if (v48)
  {
    v49._countAndFlagsBits = 0x48435445464C5255;
    v49._object = 0xE800000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v49, v47);
  }

  v18 = result;
  v50 = *(v2 + 20);
  v51 = (v50 + result);
  if (__CFADD__(v50, result))
  {
    goto LABEL_75;
  }

  *(v2 + 20) = v51;
  v88[0] = v9;
  if (!*(v9 + 2))
  {
LABEL_52:
    v54 = 0;
    goto LABEL_53;
  }

  result = sub_1002F178C(0, 0xE000000000000000, v2 + 8, v51);
  if (v52)
  {
    v53._countAndFlagsBits = 0;
    v53._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v53, v51);
  }

  v54 = result;
  v55 = *(v2 + 20);
  LODWORD(v51) = v55 + result;
  if (__CFADD__(v55, result))
  {
    goto LABEL_87;
  }

  *(v2 + 20) = v51;
LABEL_53:
  result = sub_1002F178C(0x28uLL, 0xE100000000000000, v2 + 8, v51);
  if (v70)
  {
    v71._countAndFlagsBits = 40;
    v71._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v71, v51);
  }

  v72 = *(v2 + 20);
  v25 = __CFADD__(v72, result);
  v73 = v72 + result;
  if (v25)
  {
    goto LABEL_80;
  }

  *(v2 + 20) = v73;
  v74 = v54 + result;
  if (__OFADD__(v54, result))
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  __chkstk_darwin(result);
  v88[-6] = sub_10044CFBC;
  v88[-5] = 0;
  v88[-4] = v2;
  v88[-3] = v88;
  v88[-2] = 32;
  v88[-1] = 0xE100000000000000;
  result = sub_10045318C(0, sub_10044D678, &v88[-8], v9);
  v75 = v74 + result;
  if (__OFADD__(v74, result))
  {
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v76 = *(v2 + 20);
  result = sub_1002F178C(0x29uLL, 0xE100000000000000, v2 + 8, v76);
  if (v77)
  {
    v78._countAndFlagsBits = 41;
    v78._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v78, v76);
  }

  v79 = *(v2 + 20);
  v80 = (v79 + result);
  if (__CFADD__(v79, result))
  {
    goto LABEL_83;
  }

  *(v2 + 20) = v80;
  v40 = __OFADD__(v75, result);
  v51 = v75 + result;
  if (v40)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  if (!*(v9 + 2))
  {
LABEL_71:

    v87 = v51;
    goto LABEL_67;
  }

  v81 = sub_1002F178C(0, 0xE000000000000000, v2 + 8, v80);
  if (v82)
  {
    v83._countAndFlagsBits = 0;
    v83._object = 0xE000000000000000;
    v81 = ByteBuffer._setStringSlowpath(_:at:)(v83, v80);
  }

  v84 = v81;

  v85 = *(v2 + 20);
  v25 = __CFADD__(v85, v84);
  v86 = v85 + v84;
  if (v25)
  {
    goto LABEL_89;
  }

  *(v2 + 20) = v86;
  v87 = v51 + v84;
  if (__OFADD__(v51, v84))
  {
    __break(1u);
LABEL_73:
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
    goto LABEL_79;
  }

LABEL_67:
  result = v18 + v87;
  if (__OFADD__(v18, v87))
  {
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
  }

  return result;
}

uint64_t sub_10044CFBC(__int128 *a1)
{
  v1 = a1[1];
  v3 = *a1;
  v4[0] = v1;
  *(v4 + 15) = *(a1 + 31);
  return sub_1004A320C(&v3);
}

uint64_t sub_10044CFFC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(__int128 *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X8>, unint64_t a8@<X6>, void *a9@<X7>)
{
  v11 = *a2;
  v12 = a2[1];
  v13 = *(a2 + 6);
  v14 = *(a2 + 14);
  v15 = *(a2 + 30);
  v23[2] = a2[2];
  v16 = *(a2 + 2);
  v19 = *(a2 + 12);
  v17 = a2 + 6;
  v18 = v19;
  LOWORD(v19) = *(v17 + 2);
  v20 = *a1;
  v21 = *a6;
  v23[0] = v11;
  v23[1] = v12;
  v24 = v13;
  v25 = v14;
  v26 = v15;
  v27 = v16;
  v28 = v18;
  v29 = v19;
  v30 = *(v17 + 6);
  result = sub_100492A08(v20, v23, a3, a4, a5, v21, a8, a9);
  if (!v9)
  {
    *a7 = result;
  }

  return result;
}

uint64_t _s12NIOIMAPCore211MessageDataO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v3 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  __chkstk_darwin(v3 - 8);
  v36 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v36 - v6;
  v8 = type metadata accessor for MessageData(0);
  __chkstk_darwin(v8);
  v10 = (&v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v13 = &v36 - v12;
  __chkstk_darwin(v14);
  v16 = &v36 - v15;
  __chkstk_darwin(v17);
  v19 = &v36 - v18;
  __chkstk_darwin(v20);
  v22 = (&v36 - v21);
  v23 = sub_10000C9C0(&qword_1005DCC50, &qword_100507CD8);
  __chkstk_darwin(v23 - 8);
  v25 = &v36 - v24;
  v27 = *(v26 + 56);
  sub_10044D504(a1, &v36 - v24);
  sub_10044D504(v37, &v25[v27]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        sub_10044D504(v25, v13);
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          v29 = sub_1003A370C();
LABEL_13:
          v30 = v29;

          goto LABEL_18;
        }
      }

      else
      {
        sub_10044D504(v25, v10);
        v33 = *v10;
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          v29 = sub_10039F5E8(v33, *&v25[v27]);
          goto LABEL_13;
        }
      }

LABEL_22:
      sub_100025F40(v25, &qword_1005DCC50, &qword_100507CD8);
      v30 = 0;
      return v30 & 1;
    }

    sub_10044D504(v25, v16);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v31 = v36;
      sub_100020950(&v25[v27], v36);
      sub_100016D2C();
      v30 = sub_1004A7034();
      sub_100025F40(v31, &unk_1005D91B0, &unk_1004CF400);
      v32 = v16;
LABEL_17:
      sub_100025F40(v32, &unk_1005D91B0, &unk_1004CF400);
      goto LABEL_18;
    }

    v34 = v16;
    goto LABEL_21;
  }

  if (EnumCaseMultiPayload)
  {
    sub_10044D504(v25, v19);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_100020950(&v25[v27], v7);
      sub_100016D2C();
      v30 = sub_1004A7034();
      sub_100025F40(v7, &unk_1005D91B0, &unk_1004CF400);
      v32 = v19;
      goto LABEL_17;
    }

    v34 = v19;
LABEL_21:
    sub_100025F40(v34, &unk_1005D91B0, &unk_1004CF400);
    goto LABEL_22;
  }

  sub_10044D504(v25, v22);
  if (swift_getEnumCaseMultiPayload())
  {
    goto LABEL_22;
  }

  v30 = *&v25[v27] == *v22;
LABEL_18:
  sub_10044D6C0(v25);
  return v30 & 1;
}

uint64_t type metadata accessor for MessageData(uint64_t a1)
{
  result = qword_1005DCC10;
  if (!qword_1005DCC10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10044D504(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10044D56C()
{
  result = qword_1005DCB98;
  if (!qword_1005DCB98)
  {
    v3 = type metadata accessor for MessageData(255);
    result = swift_getWitnessTable(protocol conformance descriptor for MessageData, v3, v0, v1);
    atomic_store(result, &qword_1005DCB98);
  }

  return result;
}

void sub_10044D5C4(uint64_t a1)
{
  sub_100050DB8(319);
  if (v1 <= 0x3F)
  {
    sub_100050E14(319, &qword_1005DC2B0, &type metadata for ByteBuffer);
    if (v2 <= 0x3F)
    {
      sub_100050E14(319, &unk_1005DCC20, &type metadata for URLFetchData);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_10044D6C0(uint64_t a1)
{
  v2 = type metadata accessor for MessageData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10044D720()
{
  result = qword_1005DCC58;
  if (!qword_1005DCC58)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MessageID, &type metadata for MessageID, v0, v1);
    atomic_store(result, &qword_1005DCC58);
  }

  return result;
}

unint64_t sub_10044D778()
{
  result = qword_1005DCC60;
  if (!qword_1005DCC60)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MessageID, &type metadata for MessageID, v0, v1);
    atomic_store(result, &qword_1005DCC60);
  }

  return result;
}

unint64_t sub_10044D7D0()
{
  result = qword_1005DCC68;
  if (!qword_1005DCC68)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MessageID, &type metadata for MessageID, v0, v1);
    atomic_store(result, &qword_1005DCC68);
  }

  return result;
}

uint64_t MessageIdentifier.init<A>(exactly:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v34 = a4;
  v35 = a6;
  v36 = a2;
  v33[1] = *(*(a5 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin(AssociatedTypeWitness);
  v9 = *(a3 - 8);
  __chkstk_darwin(v10);
  v12 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v33 - v14;
  v16 = sub_1004A64B4();
  v17 = sub_1004A64A4();
  v37 = a1;
  if (v16)
  {
    if (v17 > 64)
    {
      goto LABEL_3;
    }
  }

  else if (v17 > 63)
  {
LABEL_3:
    v38 = 0;
    sub_1001C08B0();
    sub_1004A6474();
    v18 = sub_1004A5634();
    v19 = *(v9 + 8);
    v19(v15, a3);
    if ((v18 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_7;
  }

  (*(v9 + 16))(v15, a1, a3);
  v20 = sub_1004A6494();
  v19 = *(v9 + 8);
  v19(v15, a3);
  if (v20 <= 0)
  {
    goto LABEL_17;
  }

LABEL_7:
  (*(v9 + 16))(v12, v37, a3);
  if ((sub_1004A64B4() & 1) == 0 || (swift_getAssociatedConformanceWitness(), sub_1004A6DE4(), sub_1004A6D04(), v21 = sub_1004A5634(), v19(v15, a3), (v21 & 1) == 0))
  {
    if (sub_1004A64A4() < 32)
    {
      goto LABEL_19;
    }

    LODWORD(v38) = -1;
    v22 = sub_1004A64B4();
    v23 = sub_1004A64A4();
    if (v22)
    {
      if (v23 <= 32)
      {
        swift_getAssociatedConformanceWitness();
        sub_1004A6DE4();
        sub_1004A6D04();
        v24 = sub_1004A5624();
        v19(v15, a3);
        if ((v24 & 1) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }
    }

    else if (v23 < 33)
    {
LABEL_18:
      sub_1004A6494();
      goto LABEL_19;
    }

    sub_1000D40AC();
    sub_1004A6474();
    v25 = sub_1004A5634();
    v19(v15, a3);
    if ((v25 & 1) == 0)
    {
LABEL_19:
      v29 = sub_1004A6494();
      v19(v12, a3);
      v30 = v35;
      v31 = v29;
      v26 = v36;
      (*(v34 + 80))(v31, v36);
      v19(v37, a3);
      v28 = v30;
      v27 = 0;
      return (*(*(v26 - 8) + 56))(v28, v27, 1, v26);
    }
  }

  v19(v12, a3);
LABEL_17:
  v26 = v36;
  v19(v37, a3);
  v27 = 1;
  v28 = v35;
  return (*(*(v26 - 8) + 56))(v28, v27, 1, v26);
}

uint64_t BinaryInteger.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(a5 + 56))(a3, a5);
  sub_1000D40AC();
  sub_1004A64D4();
  return (*(*(a3 - 8) + 8))(a1, a3);
}

BOOL static MessageIdentifier.<= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 56);
  v7 = v6(a3, a4);
  return v6(a3, a4) >= v7;
}

uint64_t sub_10044DEF4(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v4 = v3;
  v6 = a2;
  v7 = *(a2 - 1);
  v8 = __chkstk_darwin(a1);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 80))(0xFFFFFFFFLL, v8);
  v12 = sub_1004A5724();
  (*(v7 + 8))(v10, v6);
  if (v12)
  {
    v14 = v4[5];
    v4 += 5;
    v13 = v14;
    v6 = v4 - 3;
    a3 = 0;
    result = sub_1002F178C(0x2AuLL, 0xE100000000000000, (v4 - 3), v14);
    if (v16)
    {
      v17._countAndFlagsBits = 42;
      v17._object = 0xE100000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v17, v13);
    }

    v18 = *v4 + result;
    if (!__CFADD__(*v4, result))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  v28[3] = (*(a3 + 56))(v6, a3);
  v19 = sub_1004A6CE4();
  v21 = v20;
  v23 = v4[5];
  v4 += 5;
  v22 = v23;
  v24 = sub_1002F178C(v19, v20, (v4 - 3), v23);
  if (v25)
  {
    v26._countAndFlagsBits = v19;
    v26._object = v21;
    v24 = ByteBuffer._setStringSlowpath(_:at:)(v26, v22);
  }

  v27 = v24;

  result = v27;
  v18 = *v4 + v27;
  if (!__CFADD__(*v4, v27))
  {
LABEL_10:
    *v4 = v18;
    return result;
  }

  __break(1u);
  return result;
}

void sub_10044E10C(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1004A6374();
  __chkstk_darwin(v8 - 8);
  v10 = &v13 - v9;
  if (a1 == -1)
  {
    __break(1u);
  }

  else
  {
    v14 = a1 + 1;
    v11 = sub_1000D40AC();
    MessageIdentifier.init<A>(exactly:)(&v14, a2, &type metadata for UInt32, a3, v11, v10);
    v12 = *(a2 - 8);
    if ((*(v12 + 48))(v10, 1, a2) != 1)
    {
      (*(v12 + 32))(a4, v10, a2);
      return;
    }
  }

  __break(1u);
}

uint64_t sub_10044E2A8(uint64_t a1)
{
  v2 = sub_10044EB38();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10044E2E4(uint64_t a1)
{
  v2 = sub_10044EB38();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t UnknownMessageIdentifier.encode(to:)(void *a1, uint64_t a2)
{
  v3 = sub_10000C9C0(&qword_1005DCC70, &qword_100507E40);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - v5;
  sub_10002587C(a1, a1[3]);
  sub_10044EB38();
  sub_1004A6FA4();
  sub_1004A6C94();
  return (*(v4 + 8))(v6, v3);
}

void *UnknownMessageIdentifier.init(from:)(void *a1)
{
  v3 = sub_10000C9C0(&qword_1005DCC80, &qword_100507E48);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = sub_10002587C(a1, a1[3]);
  sub_10044EB38();
  sub_1004A6F84();
  if (!v1)
  {
    v7 = sub_1004A6BB4();
    (*(v4 + 8))(v6, v3);
  }

  sub_1000197E0(a1);
  return v7;
}

uint64_t sub_10044E5AC@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = sub_10000C9C0(&qword_1005DCC80, &qword_100507E48);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_10002587C(a1, a1[3]);
  sub_10044EB38();
  sub_1004A6F84();
  if (v2)
  {
    return sub_1000197E0(a1);
  }

  v9 = sub_1004A6BB4();
  (*(v6 + 8))(v8, v5);
  result = sub_1000197E0(a1);
  *a2 = v9;
  return result;
}

uint64_t sub_10044E70C(void *a1)
{
  v2 = sub_10000C9C0(&qword_1005DCC70, &qword_100507E40);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_10002587C(a1, a1[3]);
  sub_10044EB38();
  sub_1004A6FA4();
  sub_1004A6C94();
  return (*(v3 + 8))(v5, v2);
}

unint64_t MessageIdentifier.distance(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 56);
  v6 = v5(a2, a3);
  return v6 - v5(a2, a3);
}

uint64_t *sub_10044E8E4@<X0>(uint64_t *result@<X0>, _DWORD *a2@<X8>)
{
  if (*result > 0xFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = *result + *v2;
  if (v3 < 1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (!HIDWORD(v3))
  {
    *a2 = v3;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void MessageIdentifier.advanced(by:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1004A6374();
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v14 - v10;
  if (a1 > 0xFFFFFFFFLL)
  {
    __break(1u);
  }

  else
  {
    v15 = a1 + (*(a3 + 56))(a2, a3, v9);
    v12 = sub_10044EB8C();
    MessageIdentifier.init<A>(exactly:)(&v15, a2, &type metadata for Int64, a3, v12, v11);
    v13 = *(a2 - 8);
    if ((*(v13 + 48))(v11, 1, a2) != 1)
    {
      (*(v13 + 32))(a4, v11, a2);
      return;
    }
  }

  __break(1u);
}

_DWORD *sub_10044EA70(_DWORD *result, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t *a6)
{
  if (*a6 > 0xFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = *a6 + *a4;
  if (v6 < 1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (!HIDWORD(v6))
  {
    *result = v6;
    return 0;
  }

LABEL_7:
  __break(1u);
  return result;
}

BOOL static MessageIdentifier.< infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 56);
  v7 = v6(a3, a4);
  return v7 < v6(a3, a4);
}

unint64_t sub_10044EB38()
{
  result = qword_1005DCC78;
  if (!qword_1005DCC78)
  {
    result = swift_getWitnessTable(asc_10050813C, &type metadata for UnknownMessageIdentifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DCC78);
  }

  return result;
}

unint64_t sub_10044EB8C()
{
  result = qword_1005DCC88;
  if (!qword_1005DCC88)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Int64, &type metadata for Int64, v0, v1);
    atomic_store(result, &qword_1005DCC88);
  }

  return result;
}

unint64_t sub_10044EBE0(void *a1)
{
  a1[1] = sub_10044EC30();
  a1[2] = sub_10044EC84();
  a1[3] = sub_10044ECD8();
  a1[4] = sub_10044ED2C();
  a1[5] = sub_10044ED80();
  result = sub_10044EDD4();
  a1[6] = result;
  return result;
}

unint64_t sub_10044EC30()
{
  result = qword_1005DCC90;
  if (!qword_1005DCC90)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UnknownMessageIdentifier, &type metadata for UnknownMessageIdentifier, v0, v1);
    atomic_store(result, &qword_1005DCC90);
  }

  return result;
}

unint64_t sub_10044EC84()
{
  result = qword_1005DCC98;
  if (!qword_1005DCC98)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UnknownMessageIdentifier, &type metadata for UnknownMessageIdentifier, v0, v1);
    atomic_store(result, &qword_1005DCC98);
  }

  return result;
}

unint64_t sub_10044ECD8()
{
  result = qword_1005DCCA0;
  if (!qword_1005DCCA0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UnknownMessageIdentifier, &type metadata for UnknownMessageIdentifier, v0, v1);
    atomic_store(result, &qword_1005DCCA0);
  }

  return result;
}

unint64_t sub_10044ED2C()
{
  result = qword_1005DCCA8;
  if (!qword_1005DCCA8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UnknownMessageIdentifier, &type metadata for UnknownMessageIdentifier, v0, v1);
    atomic_store(result, &qword_1005DCCA8);
  }

  return result;
}

unint64_t sub_10044ED80()
{
  result = qword_1005DCCB0;
  if (!qword_1005DCCB0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UnknownMessageIdentifier, &type metadata for UnknownMessageIdentifier, v0, v1);
    atomic_store(result, &qword_1005DCCB0);
  }

  return result;
}

unint64_t sub_10044EDD4()
{
  result = qword_1005DCCB8;
  if (!qword_1005DCCB8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UnknownMessageIdentifier, &type metadata for UnknownMessageIdentifier, v0, v1);
    atomic_store(result, &qword_1005DCCB8);
  }

  return result;
}

unint64_t sub_10044EE2C()
{
  result = qword_1005DCCC0;
  if (!qword_1005DCCC0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UnknownMessageIdentifier, &type metadata for UnknownMessageIdentifier, v0, v1);
    atomic_store(result, &qword_1005DCCC0);
  }

  return result;
}

unint64_t sub_10044EE84()
{
  result = qword_1005DCCC8;
  if (!qword_1005DCCC8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UnknownMessageIdentifier, &type metadata for UnknownMessageIdentifier, v0, v1);
    atomic_store(result, &qword_1005DCCC8);
  }

  return result;
}

unint64_t sub_10044EF14()
{
  result = qword_1005DCCD0;
  if (!qword_1005DCCD0)
  {
    result = swift_getWitnessTable(aU_26, &type metadata for UnknownMessageIdentifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DCCD0);
  }

  return result;
}

unint64_t sub_10044EF6C()
{
  result = qword_1005DCCD8;
  if (!qword_1005DCCD8)
  {
    result = swift_getWitnessTable(asc_100508084, &type metadata for UnknownMessageIdentifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DCCD8);
  }

  return result;
}

unint64_t sub_10044EFC4()
{
  result = qword_1005DCCE0;
  if (!qword_1005DCCE0)
  {
    result = swift_getWitnessTable(byte_1005080AC, &type metadata for UnknownMessageIdentifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_1005DCCE0);
  }

  return result;
}

uint64_t static MessageIdentifier.... infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v31 = a5;
  v32 = a2;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin(TupleTypeMetadata2);
  v30 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v27 - v11;
  v13 = sub_1004A5704();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v27 - v15;
  v17 = a1;
  v18 = v32;
  result = sub_1004A5654();
  if (result)
  {
    v20 = *(a3 - 8);
    v21 = v20;
    v29 = v14;
    v22 = *(v20 + 16);
    v28 = v13;
    v22(v12, v17, a3);
    v22(&v12[*(TupleTypeMetadata2 + 48)], v18, a3);
    v23 = v30;
    (*(v8 + 16))(v30, v12, TupleTypeMetadata2);
    v32 = *(TupleTypeMetadata2 + 48);
    v24 = *(v21 + 32);
    v24(v16, v23, a3);
    v25 = *(v21 + 8);
    v25(&v23[v32], a3);
    (*(v8 + 32))(v23, v12, TupleTypeMetadata2);
    v26 = v28;
    v24(&v16[*(v28 + 36)], &v23[*(TupleTypeMetadata2 + 48)], a3);
    v25(v23, a3);
    return (*(v29 + 32))(v31, v16, v26);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10044F32C(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  v7 = *(a3 - 1);
  __chkstk_darwin(a1);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v13 = v27 - v11;
  if (v14)
  {
    v15 = sub_1004A5704();
    v16 = *(v7 + 16);
    v16(v13, a1 + *(v15 + 36), a3);
    v17 = v9;
    v18 = a1;
  }

  else
  {
    v16 = *(v7 + 16);
    (v16)(v27 - v11, a1, a3, v12);
    v18 = a1 + *(sub_1004A5704() + 36);
    v17 = v9;
  }

  v16(v17, v18, a3);
  v27[0] = a4;
  v19 = a4;
  v20 = v27[1];
  v21 = sub_10044DEF4(v13, a3, v19);
  sub_1004A5704();
  v22 = 0;
  if (sub_1004A5634())
  {
    v22 = sub_100451320(v20, v9, a3, v27[0]);
  }

  v23 = *(v7 + 8);
  result = v23(v13, a3);
  v25 = __OFADD__(v21, v22);
  v26 = v21 + v22;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    v23(v9, a3);
    return v26;
  }

  return result;
}

uint64_t MessageIdentifierRange.upperBound.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = sub_1004A5704();
  v7 = *(*(v5 - 8) + 16);
  v8 = v3 + *(v6 + 36);

  return v7(a2, v8, v5);
}

uint64_t MessageIdentifierRange.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v7 = sub_1004A5704();
  v8 = *(*(v7 - 8) + 32);

  return v8(a4, a1, v7);
}

uint64_t MessageIdentifierRange.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin(TupleTypeMetadata2);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v28 - v12;
  v14 = sub_1004A5704();
  v33 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v28 - v15;
  result = sub_1004A5654();
  if (result)
  {
    v18 = *(a2 - 8);
    v31 = v14;
    v19 = v18;
    (*(v18 + 16))(v13, a1, a2);
    v20 = *(TupleTypeMetadata2 + 48);
    v32 = a4;
    v21 = *(v19 + 32);
    v21(&v13[v20], a1, a2);
    (*(v8 + 16))(v10, v13, TupleTypeMetadata2);
    v30 = *(TupleTypeMetadata2 + 48);
    v22 = v16;
    v21(v16, v10, a2);
    v23 = v8;
    v24 = v33;
    v29 = v13;
    v25 = *(v19 + 8);
    v25(&v10[v30], a2);
    (*(v23 + 32))(v10, v29, TupleTypeMetadata2);
    v26 = *(TupleTypeMetadata2 + 48);
    v27 = v31;
    v21(&v22[*(v31 + 36)], &v10[v26], a2);
    v25(v10, a2);
    return (*(v24 + 32))(v32, v22, v27);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MessageIdentifierRange.range.getter@<X0>(uint64_t a2@<X8>)
{
  v5 = sub_1004A5704();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v3, v5);
}

uint64_t MessageIdentifierRange.range.setter(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = sub_1004A5704();
  v6 = *(*(v5 - 8) + 40);

  return v6(v3, a1, v5);
}

uint64_t MessageIdentifierRange.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a4;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(TupleTypeMetadata2 - 8);
  v34 = TupleTypeMetadata2;
  v35 = v8;
  __chkstk_darwin(TupleTypeMetadata2);
  v33 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v31 - v11;
  v13 = *(a2 - 8);
  __chkstk_darwin(v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v31 - v18;
  v20 = sub_1004A5704();
  v36 = *(v20 - 8);
  v37 = v20;
  __chkstk_darwin(v20);
  v22 = &v31 - v21;
  static MessageIdentifier.min.getter(a2, a3);
  (*(v13 + 16))(v16, a1, a2);
  LOBYTE(a3) = sub_1004A5654();
  v23 = sub_1004A6A94();
  result = (*(*(v23 - 8) + 8))(a1, v23);
  if (a3)
  {
    v25 = *(v13 + 32);
    v25(v12, v19, a2);
    v26 = v34;
    v25(&v12[*(v34 + 48)], v16, a2);
    v27 = v35;
    v28 = v33;
    (*(v35 + 16))(v33, v12, v26);
    v29 = *(v26 + 48);
    v25(v22, v28, a2);
    v32 = *(v13 + 8);
    v32(&v28[v29], a2);
    (*(v27 + 32))(v28, v12, v26);
    v30 = v37;
    v25(&v22[*(v37 + 36)], &v28[*(v26 + 48)], a2);
    v32(v28, a2);
    return (*(v36 + 32))(v38, v22, v30);
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v39 = a4;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(TupleTypeMetadata2 - 8);
  v35 = TupleTypeMetadata2;
  v36 = v8;
  __chkstk_darwin(TupleTypeMetadata2);
  v34 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v32 - v11;
  v13 = *(a2 - 8);
  __chkstk_darwin(v14);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v32 - v18;
  v20 = sub_1004A5704();
  v37 = *(v20 - 8);
  v38 = v20;
  v21 = __chkstk_darwin(v20);
  v23 = &v32 - v22;
  (*(v13 + 16))(v19, a1, a2, v21);
  static MessageIdentifier.max.getter(a2, a3);
  LOBYTE(a3) = sub_1004A5654();
  v24 = sub_1004A6954();
  result = (*(*(v24 - 8) + 8))(a1, v24);
  if (a3)
  {
    v26 = *(v13 + 32);
    v26(v12, v19, a2);
    v27 = v35;
    v26(&v12[*(v35 + 48)], v16, a2);
    v28 = v36;
    v29 = v34;
    (*(v36 + 16))(v34, v12, v27);
    v30 = *(v27 + 48);
    v26(v23, v29, a2);
    v33 = *(v13 + 8);
    v33(&v29[v30], a2);
    (*(v28 + 32))(v29, v12, v27);
    v31 = v38;
    v26(&v23[*(v38 + 36)], &v29[*(v27 + 48)], a2);
    v33(v29, a2);
    return (*(v37 + 32))(v39, v23, v31);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MessageIdentifierRange.hash(into:)(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = *(a2 + 24);
  v5 = sub_1004A5704();
  v6 = *(v4 + 40);

  return ClosedRange<>.hash(into:)(a1, v5, v6);
}

Swift::Int MessageIdentifierRange.hashValue.getter(uint64_t a1)
{
  sub_1004A6E94();
  MessageIdentifierRange.hash(into:)(v4, a1, v2);
  return sub_1004A6F14();
}

Swift::Int sub_1004502C4(uint64_t a1, uint64_t a2)
{
  sub_1004A6E94();
  MessageIdentifierRange.hash(into:)(v5, a2, v3);
  return sub_1004A6F14();
}

uint64_t MessageIdentifierRange.init(integerLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  __chkstk_darwin(a1);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MessageIdentifier.init(integerLiteral:)(v8, v9, v10);
  return MessageIdentifierRange.init(_:)(v7, a2, a4);
}

uint64_t static MessageIdentifierRange.all.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin(TupleTypeMetadata2);
  v29 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  v11 = *(a1 - 8);
  __chkstk_darwin(v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v27 - v16;
  v18 = sub_1004A5704();
  v30 = *(v18 - 8);
  v31 = v18;
  __chkstk_darwin(v18);
  v20 = &v27 - v19;
  static MessageIdentifier.min.getter(a1, a2);
  static MessageIdentifier.max.getter(a1, a2);
  result = sub_1004A5654();
  if (result)
  {
    v22 = *(v11 + 32);
    v22(v10, v17, a1);
    v22(&v10[*(TupleTypeMetadata2 + 48)], v14, a1);
    v23 = v29;
    (*(v6 + 16))(v29, v10, TupleTypeMetadata2);
    v28 = *(TupleTypeMetadata2 + 48);
    v22(v20, v23, a1);
    v24 = *(v11 + 8);
    v24(&v23[v28], a1);
    (*(v6 + 32))(v23, v10, TupleTypeMetadata2);
    v25 = *(TupleTypeMetadata2 + 48);
    v26 = v31;
    v22(&v20[*(v31 + 36)], &v23[v25], a1);
    v24(v23, a1);
    return (*(v30 + 32))(v32, v20, v26);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static MessageIdentifier.... prefix(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a4;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin(TupleTypeMetadata2);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v27 - v11;
  v13 = *(a2 - 8);
  __chkstk_darwin(v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1004A5704();
  v31 = *(v17 - 8);
  v32 = v17;
  __chkstk_darwin(v17);
  v28 = &v27 - v18;
  static MessageIdentifier.min.getter(a2, a3);
  v19 = a1;
  result = sub_1004A5654();
  if (result)
  {
    v21 = TupleTypeMetadata2;
    v22 = *(v13 + 32);
    v22(v12, v16, a2);
    v27 = v22;
    (*(v13 + 16))(&v12[*(v21 + 48)], v19, a2);
    (*(v7 + 16))(v9, v12, v21);
    v23 = *(v21 + 48);
    v24 = v28;
    v22(v28, v9, a2);
    v25 = *(v13 + 8);
    v25(&v9[v23], a2);
    (*(v7 + 32))(v9, v12, v21);
    v26 = v32;
    v27(&v24[*(v32 + 36)], &v9[*(v21 + 48)], a2);
    v25(v9, a2);
    return (*(v31 + 32))(v30, v24, v26);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static MessageIdentifier.... postfix(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a4;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin(TupleTypeMetadata2);
  v27 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v25 - v11;
  v13 = *(a2 - 8);
  __chkstk_darwin(v14);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1004A5704();
  v29 = *(v17 - 8);
  v30 = v17;
  __chkstk_darwin(v17);
  v19 = &v25 - v18;
  static MessageIdentifier.max.getter(a2, a3);
  result = sub_1004A5654();
  if (result)
  {
    (*(v13 + 16))(v12, a1, a2);
    v21 = *(v13 + 32);
    v21(&v12[*(TupleTypeMetadata2 + 48)], v16, a2);
    v22 = v27;
    (*(v8 + 16))(v27, v12, TupleTypeMetadata2);
    v26 = *(TupleTypeMetadata2 + 48);
    v21(v19, v22, a2);
    v23 = *(v13 + 8);
    v23(&v22[v26], a2);
    (*(v8 + 32))(v22, v12, TupleTypeMetadata2);
    v24 = v30;
    v21(&v19[*(v30 + 36)], &v22[*(TupleTypeMetadata2 + 48)], a2);
    v23(v22, a2);
    return (*(v29 + 32))(v28, v19, v24);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MessageIdentifierRange.count.getter(uint64_t a1, __n128 a2)
{
  v2 = *(*(a1 + 24) + 48);
  v3 = sub_1004A5704();
  v5[0] = v2;
  v5[1] = sub_1004513D8();
  swift_getWitnessTable(&protocol conformance descriptor for <> ClosedRange<A>, v3, v5);
  return sub_1004A5EE4();
}

uint64_t MessageIdentifierRange.clamped(to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v47 = a3;
  v6 = *(a2 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v46 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin(TupleTypeMetadata2);
  v42 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v43 = &v40 - v10;
  v11 = *(v6 - 8);
  __chkstk_darwin(v12);
  v40 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v40 - v15;
  v17 = sub_1004A5704();
  v44 = *(v17 - 8);
  __chkstk_darwin(v17);
  v41 = &v40 - v18;
  if (sub_1004A5624())
  {
    v19 = v11;
    v20 = *(v11 + 16);
    v21 = v16;
    v20(v16, a1, v6);
  }

  else
  {
    v21 = v16;
    v22 = *(v17 + 36);
    v23 = sub_1004A5634();
    v19 = v11;
    v24 = v4;
    v20 = *(v11 + 16);
    if (v23)
    {
      v24 = a1 + v22;
    }

    v20(v21, v24, v6);
  }

  v25 = *(v17 + 36);
  v26 = sub_1004A5634();
  v45 = v17;
  if (v26)
  {
    v27 = v19;
    v28 = v40;
    v20(v40, a1 + v25, v6);
  }

  else
  {
    if (sub_1004A5624())
    {
      v28 = v40;
      v29 = v40;
      v30 = a1;
    }

    else
    {
      v30 = v4 + v25;
      v28 = v40;
      v29 = v40;
    }

    v20(v29, v30, v6);
    v27 = v19;
  }

  v31 = *(v27 + 32);
  v32 = v43;
  v31(v43, v21, v6);
  v31(&v32[*(TupleTypeMetadata2 + 48)], v28, v6);
  v33 = v46;
  v34 = v42;
  (*(v46 + 16))(v42, v32, TupleTypeMetadata2);
  v40 = *(TupleTypeMetadata2 + 48);
  v35 = v41;
  v31(v41, v34, v6);
  v36 = *(v27 + 8);
  v36(&v40[v34], v6);
  (*(v33 + 32))(v34, v32, TupleTypeMetadata2);
  v37 = *(TupleTypeMetadata2 + 48);
  v38 = v45;
  v31(&v35[*(v45 + 36)], &v34[v37], v6);
  v36(v34, v6);
  return (*(v44 + 32))(v47, v35, v38);
}

uint64_t sub_1004512BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), __n128 a4)
{
  v5 = sub_1004A5704();

  return a3(a1, v5);
}

uint64_t sub_100451320(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  v8 = *(a1 + 20);
  result = sub_1002F178C(0x3AuLL, 0xE100000000000000, a1 + 8, v8);
  if (v10)
  {
    v11._countAndFlagsBits = 58;
    v11._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v11, v8);
  }

  v12 = result;
  v13 = *(a1 + 20);
  v14 = __CFADD__(v13, result);
  v15 = v13 + result;
  if (v14)
  {
    __break(1u);
    goto LABEL_7;
  }

  *(a1 + 20) = v15;
  v16 = sub_10044DEF4(a2, a3, a4);
  v17 = __OFADD__(v12, v16);
  result = v12 + v16;
  if (v17)
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

unint64_t sub_1004513D8()
{
  result = qword_1005DCCE8[0];
  if (!qword_1005DCCE8[0])
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for Int64, &type metadata for Int64, v0, v1);
    atomic_store(result, qword_1005DCCE8);
  }

  return result;
}

uint64_t sub_100451448(uint64_t a1, __n128 a2)
{
  result = sub_1004A5704();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1004514C0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v6 = *(*(*(a3 + 16) - 8) + 64);
  v8 = ((v6 + *(v4 + 80)) & ~*(v4 + 80)) + v6;
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
        return (*(v4 + 48))();
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

char *sub_100451610(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + *(v5 + 80)) & ~*(v5 + 80)) + *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_100451840(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, void *), uint64_t a3)
{
  v26 = a2;
  v27 = a3;
  v6 = sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - v8;
  v10 = sub_10000C9C0(&qword_1005DCD70, &unk_100508290);
  __chkstk_darwin(v10 - 8);
  v12 = &v24 - v11;
  v13 = sub_10000C9C0(&qword_1005DCF28, &qword_100508A88);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v24 - v15;
  v30 = a1;
  sub_10045935C(v3, v12);
  (*(v7 + 32))(v9, v12, v6);
  sub_1003DAA44(&qword_1005DC2F8, &protocol conformance descriptor for RangeSet<A>.Ranges);
  sub_1004A5AC4();
  v25 = *(v14 + 44);
  v17 = *(sub_10000C9C0(&qword_1005DC2F0, &qword_100500E20) + 36);
  sub_1003DAA44(&qword_1005DC300, &protocol conformance descriptor for RangeSet<A>.Ranges);
  sub_1004A5EA4();
  if (*&v16[v17] == v29[0])
  {
    v18 = 0;
LABEL_7:
    *&v16[v25] = v18;
    sub_100025F40(v16, &qword_1005DCF28, &qword_100508A88);
    return a1;
  }

  else
  {
    v19 = 0;
    while (1)
    {
      v20 = sub_1004A5F34();
      v22 = *v21;
      v20(v29, 0);
      result = sub_1004A5EB4();
      v18 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      v29[0] = v19;
      v29[1] = v22;
      v26(&v28, &v30, v29);
      if (!v4)
      {
        a1 = v28;
        v30 = v28;
        sub_1004A5EA4();
        ++v19;
        if (*&v16[v17] != v29[0])
        {
          continue;
        }
      }

      goto LABEL_7;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100451B60(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, uint64_t *), uint64_t a3, void *a4)
{
  v5 = a1;
  v20 = a1;
  v6 = a4[2];
  if (v6)
  {
    v9 = a4[4];
    v10 = a4[5];
    v17 = 0;
    v18 = v9;
    v19 = v10;

    a2(&v16, &v20, &v17);
    if (v4)
    {
    }

    else
    {
      v11 = a4 + 7;
      for (i = 1; ; ++i)
      {

        v5 = v16;
        v20 = v16;
        if (v6 == i)
        {
          break;
        }

        v13 = *(v11 - 1);
        v14 = *v11;
        v17 = i;
        v18 = v13;
        v19 = v14;

        a2(&v16, &v20, &v17);
        v11 += 2;
      }
    }
  }

  return v5;
}

uint64_t sub_100451C5C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, uint64_t *), uint64_t a3, void *a4)
{
  v5 = a1;
  v17 = a1;
  v6 = a4[2];
  if (v6)
  {
    v9 = a4[4];
    v15 = 0;
    v16 = v9;

    a2(&v14, &v17, &v15);
    if (v4)
    {
    }

    else
    {
      v10 = a4 + 5;
      for (i = 1; ; ++i)
      {

        v5 = v14;
        v17 = v14;
        if (v6 == i)
        {
          break;
        }

        v12 = *v10++;
        v15 = i;
        v16 = v12;

        a2(&v14, &v17, &v15);
      }
    }
  }

  return v5;
}

uint64_t sub_100451D54(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, void *, __n128), uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v18 = a1;
  v6 = *(a4 + 16);
  if (v6)
  {
    v8 = 0;
    for (i = (a4 + 56); ; i += 32)
    {
      v10 = *i;
      v12 = *(i - 2);
      v11 = *(i - 1);
      v13 = *(i - 3);
      v16[0] = v8;
      v16[1] = v13;
      v16[2] = v12;
      v16[3] = v11;
      v17 = v10;

      (a2)(&v15, &v18, v16);
      if (v4)
      {
        break;
      }

      ++v8;

      v5 = v15;
      v18 = v15;
      if (v6 == v8)
      {
        return v5;
      }
    }
  }

  return v5;
}

uint64_t sub_100451EC8(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, uint64_t *), uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void, __n128), uint64_t (*a8)(void))
{
  v33 = a5;
  v34 = a6;
  v14 = sub_10000C9C0(a5, a6);
  v15 = __chkstk_darwin(v14);
  v17 = (&v30 - v16);
  v36 = a1;
  v30 = a4;
  v32 = *(a4 + 16);
  if (v32)
  {
    v18 = *(a7(0, v15) - 8);
    v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v20 = *(v18 + 72);
    v21 = *(v14 + 48);
    *v17 = 0;
    sub_1004593CC(v30 + v19, v17 + v21, a8);
    a2(&v35, &v36, v17);
    if (v8)
    {
      sub_100025F40(v17, v33, v34);
    }

    else
    {
      v22 = a8;
      v23 = v14;
      v31 = a2;
      v24 = v22;
      v25 = v20;
      v26 = v30 + v20 + v19;
      for (i = 1; ; ++i)
      {
        sub_100025F40(v17, v33, v34);
        a1 = v35;
        v36 = v35;
        if (v32 == i)
        {
          break;
        }

        v28 = *(v23 + 48);
        *v17 = i;
        sub_1004593CC(v26, v17 + v28, v24);
        v31(&v35, &v36, v17);
        v26 += v25;
      }
    }
  }

  return a1;
}

uint64_t sub_1004520C0(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v20 = a1;
  v5 = a1;
  v6 = *(a4 + 16);
  if (v6)
  {
    v8 = 0;
    v9 = (a4 + 54);
    while (1)
    {
      v10 = *v9;
      v11 = *(v9 - 1);
      v12 = *(v9 - 6);
      v13 = *(v9 - 22);
      v16[0] = v8;
      v16[1] = v13;
      v16[2] = *(v9 - 14);
      v17 = v12;
      v18 = v11;
      v19 = v10;

      a2(&v15, &v20, v16);
      if (v4)
      {
        break;
      }

      v9 += 24;
      ++v8;

      v5 = v15;
      v20 = v15;
      if (v6 == v8)
      {
        return v5;
      }
    }
  }

  return v5;
}

uint64_t sub_100452214(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *, _BYTE *), uint64_t a3, uint64_t a4, void (*a5)(_OWORD *, __int128 *), uint64_t *a6, uint64_t *a7)
{
  v31 = a7;
  v8 = a1;
  v30[0] = a1;
  v9 = *(a4 + 16);
  if (v9)
  {
    v12 = 0;
    for (i = (a4 + 32); ; i += 4)
    {
      v14 = i[1];
      v27[0] = *i;
      v27[1] = v14;
      v15 = i[3];
      v17 = *i;
      v16 = i[1];
      v28 = i[2];
      v29 = v15;
      *&v26[8] = v17;
      *&v26[24] = v16;
      *&v26[40] = v28;
      *&v26[56] = i[3];
      *v26 = v12;
      (a5)(v27, &v20, a3);
      a2(&v25, v30, v26);
      if (v7)
      {
        break;
      }

      ++v12;
      v22 = *&v26[32];
      v23 = *&v26[48];
      v24 = *&v26[64];
      v20 = *v26;
      v21 = *&v26[16];
      sub_100025F40(&v20, a6, v31);
      v8 = v25;
      v30[0] = v25;
      if (v9 == v12)
      {
        return v8;
      }
    }

    v22 = *&v26[32];
    v23 = *&v26[48];
    v24 = *&v26[64];
    v20 = *v26;
    v21 = *&v26[16];
    sub_100025F40(&v20, a6, v31);
  }

  return v8;
}

uint64_t sub_100452370(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, uint64_t *), uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v17 = a1;
  v6 = *(a4 + 16);
  if (v6)
  {
    v9 = *(a4 + 32);
    v15 = 0;
    v16 = v9;
    a2(&v14, &v17, &v15);
    if (!v4)
    {
      v10 = (a4 + 33);
      for (i = 1; ; ++i)
      {
        v5 = v14;
        v17 = v14;
        if (v6 == i)
        {
          break;
        }

        v12 = *v10++;
        v15 = i;
        v16 = v12;
        a2(&v14, &v17, &v15);
      }
    }
  }

  return v5;
}

uint64_t sub_100452428(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, void *, double), uint64_t a3, uint64_t a4)
{
  v4 = a1;
  v23 = a1;
  v16 = *(a4 + 16);
  if (v16)
  {
    v5 = 0;
    for (i = (a4 + 64); ; i += 10)
    {
      v7 = *(i - 4);
      v8 = *(i - 3);
      v9 = *(i - 2);
      v10 = *(i - 1);
      v11 = *(i + 4);
      v12 = *i;
      v13 = v12 | (v11 << 32);
      v20[0] = v5;
      v20[1] = v7;
      v20[2] = v8;
      v20[3] = v9;
      v20[4] = v10;
      v22 = v11;
      v21 = v12;
      v14 = sub_100447BE8(v7, v8, v9, v10, v13);
      a2(&v19, &v23, v20, v14);
      if (v18)
      {
        break;
      }

      ++v5;
      sub_1001FC9B4(v7, v8, v9, v10, v13);
      v4 = v19;
      v23 = v19;
      if (v16 == v5)
      {
        return v4;
      }
    }

    sub_1001FC9B4(v7, v8, v9, v10, v13);
  }

  return v4;
}

uint64_t sub_100452600(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, void *, __n128), uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v16 = a1;
  v6 = *(a4 + 16);
  if (v6)
  {
    v8 = 0;
    v9 = (a4 + 48);
    while (1)
    {
      v11 = *(v9 - 1);
      v10 = *v9;
      v12 = *(v9 - 2);
      v15[0] = v8;
      v15[1] = v12;
      v15[2] = v11;
      v15[3] = v10;

      (a2)(&v14, &v16, v15);
      if (v4)
      {
        break;
      }

      v9 += 3;
      ++v8;

      v5 = v14;
      v16 = v14;
      if (v6 == v8)
      {
        return v5;
      }
    }
  }

  return v5;
}

uint64_t sub_100452734(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, _BYTE *), uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v19 = a1;
  v6 = *(a4 + 16);
  if (v6)
  {
    v8 = 0;
    for (i = a4 + 32; ; i += 40)
    {
      v10 = *(i + 16);
      v17[0] = *i;
      v17[1] = v10;
      v18 = *(i + 32);
      *&v16[8] = v17[0];
      *&v16[24] = *(i + 16);
      *&v16[40] = *(i + 32);
      *v16 = v8;
      sub_1003A365C(v17, &v12);
      a2(&v15, &v19, v16);
      if (v4)
      {
        break;
      }

      ++v8;
      v12 = *v16;
      v13 = *&v16[16];
      v14 = *&v16[32];
      sub_100025F40(&v12, qword_1005DCF78, &unk_10050C820);
      v5 = v15;
      v19 = v15;
      if (v6 == v8)
      {
        return v5;
      }
    }

    v12 = *v16;
    v13 = *&v16[16];
    v14 = *&v16[32];
    sub_100025F40(&v12, qword_1005DCF78, &unk_10050C820);
  }

  return v5;
}

uint64_t sub_100452870(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, uint64_t *), uint64_t a3, uint64_t a4)
{
  v23 = a1;
  v5 = a1;
  v6 = *(a4 + 16);
  if (v6)
  {
    v8 = 0;
    for (i = (a4 + 48); ; i += 6)
    {
      v10 = *(i + 6);
      v11 = *(i + 2);
      v12 = *i;
      v13 = *(i - 2);
      v14 = *(i - 1);
      v17 = v8;
      v18 = v13;
      v19 = v14;
      v20 = v12;
      v22 = v10;
      v21 = v11;
      sub_10045945C();
      a2(&v16, &v23, &v17);
      if (v4)
      {
        break;
      }

      ++v8;
      sub_100020D08(v18);
      v5 = v16;
      v23 = v16;
      if (v6 == v8)
      {
        return v5;
      }
    }

    sub_100020D08(v18);
  }

  return v5;
}

uint64_t sub_1004529B8(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, uint64_t *), uint64_t a3, uint64_t a4)
{
  v25 = a1;
  v5 = a1;
  v6 = *(a4 + 16);
  if (v6)
  {
    v8 = 0;
    for (i = (a4 + 55); ; i += 24)
    {
      v10 = *i;
      v11 = *(i - 7);
      v12 = *(i - 1);
      v13 = *(i - 3) | (v12 << 16);
      v14 = *(i - 15);
      v15 = *(i - 23);
      v18 = v8;
      v19 = v15;
      v20 = v14;
      v21 = v11;
      v23 = v12;
      v22 = v13;
      v24 = v10;
      sub_1003A30E8(v15, v14, v11 | (v13 << 32), v10);
      a2(&v17, &v25, &v18);
      if (v4)
      {
        break;
      }

      ++v8;
      sub_1003A30F4(v19, v20, v21 | ((v22 | (v23 << 16)) << 32), v24);
      v5 = v17;
      v25 = v17;
      if (v6 == v8)
      {
        return v5;
      }
    }

    sub_1003A30F4(v19, v20, v21 | ((v22 | (v23 << 16)) << 32), v24);
  }

  return v5;
}

uint64_t sub_100452B28(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v17 = a1;
  v5 = a1;
  v6 = *(a4 + 16);
  if (v6)
  {
    v8 = 0;
    v9 = (a4 + 40);
    while (1)
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      v15[0] = v8;
      v15[1] = v10;
      v16 = v11;
      v12 = sub_100459434(v10, v11);
      (a2)(&v14, &v17, v15, v12);
      if (v4)
      {
        break;
      }

      v9 += 16;
      ++v8;
      sub_100459448(v10, v11);
      v5 = v14;
      v17 = v14;
      if (v6 == v8)
      {
        return v5;
      }
    }

    sub_100459448(v10, v11);
  }

  return v5;
}

uint64_t sub_100452C54(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, void *, __n128), uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v16 = a1;
  v6 = *(a4 + 16);
  if (v6)
  {
    v8 = 0;
    v9 = (a4 + 40);
    while (1)
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      v14[0] = v8;
      v14[1] = v10;
      v15 = v11;

      (a2)(&v13, &v16, v14);
      if (v4)
      {
        break;
      }

      v9 += 4;
      ++v8;

      v5 = v13;
      v16 = v13;
      if (v6 == v8)
      {
        return v5;
      }
    }
  }

  return v5;
}

uint64_t sub_100452D20(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, uint64_t *), uint64_t a3, void *a4)
{
  v5 = a1;
  v17 = a1;
  v6 = a4[2];
  if (v6)
  {
    v9 = a4[4];
    v15 = 0;
    v16 = v9;
    a2(&v14, &v17, &v15);
    if (!v4)
    {
      v10 = a4 + 5;
      for (i = 1; ; ++i)
      {
        v5 = v14;
        v17 = v14;
        if (v6 == i)
        {
          break;
        }

        v12 = *v10++;
        v15 = i;
        v16 = v12;
        a2(&v14, &v17, &v15);
      }
    }
  }

  return v5;
}

uint64_t sub_100452DD0(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, void *, __n128), uint64_t a3, uint64_t a4)
{
  v17 = a1;
  v5 = a1;
  v6 = *(a4 + 16);
  if (v6)
  {
    v8 = 0;
    for (i = (a4 + 56); ; i += 4)
    {
      v10 = *(i - 1);
      v11 = *i;
      v12 = *(i - 3);
      v13 = *(i - 2);
      v16[0] = v8;
      v16[1] = v12;
      v16[2] = v13;
      v16[3] = v10;
      v16[4] = v11;

      (a2)(&v15, &v17, v16);
      if (v4)
      {
        break;
      }

      ++v8;

      v5 = v15;
      v17 = v15;
      if (v6 == v8)
      {
        return v5;
      }
    }
  }

  return v5;
}

uint64_t sub_100452EBC(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, uint64_t *), uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v17 = a1;
  v6 = *(a4 + 16);
  if (v6)
  {
    v9 = *(a4 + 32);
    v15 = 0;
    v16 = v9;
    a2(&v14, &v17, &v15);
    if (!v4)
    {
      v10 = (a4 + 36);
      for (i = 1; ; ++i)
      {
        v5 = v14;
        v17 = v14;
        if (v6 == i)
        {
          break;
        }

        v12 = *v10++;
        v15 = i;
        v16 = v12;
        a2(&v14, &v17, &v15);
      }
    }
  }

  return v5;
}

uint64_t sub_100452F74(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *, _BYTE *), uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v25[0] = a1;
  v6 = *(a4 + 16);
  if (v6)
  {
    v8 = 0;
    for (i = (a4 + 32); ; i += 4)
    {
      v10 = i[1];
      v22[0] = *i;
      v22[1] = v10;
      v11 = i[3];
      v13 = *i;
      v12 = i[1];
      v23 = i[2];
      v24 = v11;
      *&v21[8] = v13;
      *&v21[24] = v12;
      *&v21[40] = v23;
      *&v21[56] = i[3];
      *v21 = v8;
      sub_1003A3310(v22, &v15);
      a2(&v20, v25, v21);
      if (v4)
      {
        break;
      }

      ++v8;
      v17 = *&v21[32];
      v18 = *&v21[48];
      v19 = *&v21[64];
      v15 = *v21;
      v16 = *&v21[16];
      sub_100025F40(&v15, &qword_1005DCF18, &unk_10050C7D0);
      v5 = v20;
      v25[0] = v20;
      if (v6 == v8)
      {
        return v5;
      }
    }

    v17 = *&v21[32];
    v18 = *&v21[48];
    v19 = *&v21[64];
    v15 = *v21;
    v16 = *&v21[16];
    sub_100025F40(&v15, &qword_1005DCF18, &unk_10050C7D0);
  }

  return v5;
}

uint64_t sub_1004530D4(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, uint64_t *), uint64_t a3, void *a4)
{
  v5 = a1;
  v16 = a1;
  v6 = a4[2];
  if (v6)
  {
    v14 = 0;
    v15 = a4[4];
    a2(&v13, &v16, &v14);
    if (!v4)
    {
      v9 = a4 + 5;
      for (i = 1; ; ++i)
      {
        v5 = v13;
        v16 = v13;
        if (v6 == i)
        {
          break;
        }

        v14 = i;
        v11 = *v9++;
        v15 = v11;
        a2(&v13, &v16, &v14);
      }
    }
  }

  return v5;
}

uint64_t sub_10045318C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, _BYTE *), uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v19 = a1;
  v6 = *(a4 + 16);
  if (v6)
  {
    v8 = 0;
    for (i = (a4 + 32); ; i += 3)
    {
      v10 = i[1];
      v17 = *i;
      v18[0] = v10;
      *(v18 + 15) = *(i + 31);
      *&v16[8] = v17;
      *&v16[24] = i[1];
      *&v16[39] = *(i + 31);
      *v16 = v8;
      sub_1003A3100(&v17, &v12);
      a2(&v15, &v19, v16);
      if (v4)
      {
        break;
      }

      ++v8;
      v12 = *v16;
      v13 = *&v16[16];
      v14[0] = *&v16[32];
      *(v14 + 15) = *&v16[47];
      sub_100025F40(&v12, &qword_1005DCF20, &qword_100508A80);
      v5 = v15;
      v19 = v15;
      if (v6 == v8)
      {
        return v5;
      }
    }

    v12 = *v16;
    v13 = *&v16[16];
    v14[0] = *&v16[32];
    *(v14 + 15) = *&v16[47];
    sub_100025F40(&v12, &qword_1005DCF20, &qword_100508A80);
  }

  return v5;
}

uint64_t sub_1004532E0(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, uint64_t *), uint64_t a3, void *a4)
{
  v5 = a1;
  v18 = a1;
  v6 = a4[2];
  if (v6)
  {
    v9 = a4[4];
    v10 = a4[5];
    v16 = 0;
    *&v17 = v9;
    *(&v17 + 1) = v10;

    a2(&v15, &v18, &v16);
    if (v4)
    {
    }

    else
    {
      v11 = (a4 + 6);
      for (i = 1; ; ++i)
      {

        v5 = v15;
        v18 = v15;
        if (v6 == i)
        {
          break;
        }

        v16 = i;
        v13 = *v11++;
        v17 = v13;

        a2(&v15, &v18, &v16);
      }
    }
  }

  return v5;
}

uint64_t sub_1004533DC(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, void *, __n128), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = a1;
  v23 = a1;
  v7 = *(a4 + 16);
  if (v7)
  {
    v9 = 0;
    for (i = (a4 + 64); ; i += 10)
    {
      v11 = *(i + 2);
      v12 = *i;
      v13 = *(i - 4);
      v14 = *(i - 3);
      v15 = *(i + 6);
      v18[0] = v9;
      v18[1] = v13;
      v18[2] = v14;
      v19 = *(i - 1);
      v22 = v15;
      v21 = v11;
      v20 = v12;

      (a2)(&v17, &v23, v18);
      if (v5)
      {
        break;
      }

      ++v9;

      v6 = v17;
      v23 = v17;
      if (v7 == v9)
      {
        return v6;
      }
    }
  }

  return v6;
}

uint64_t MessageIdentifierSet.init(arrayLiteral:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  type metadata accessor for MessageIdentifierRange(255, a2, a3, a4);
  v5 = sub_1004A5CD4();
  swift_getWitnessTable(&protocol conformance descriptor for [A], v5);
  return MessageIdentifierSet.init<A>(_:)(&v7, a2, v5);
}

uint64_t MessageIdentifierSet.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100016D2C();
  sub_1004A7114();
  sub_1004A5B84();
  return (*(*(a3 - 8) + 8))(a1, a3);
}

uint64_t MessageIdentifierSet.isEmpty.getter()
{
  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);

  return sub_1004A70C4();
}

uint64_t static MessageIdentifierSet.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_100016D2C();

  return sub_1004A7034();
}

uint64_t static MessageIdentifierSet.all.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for MessageIdentifierRange(0, a1, a2, a4);
  __chkstk_darwin(v6 - 8);
  v8 = &v10 - v7;
  static MessageIdentifierRange.all.getter(a1, a2, &v10 - v7);
  return MessageIdentifierSet.init(_:)(v8, a1, a2);
}

uint64_t MessageIdentifierSet.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100458C20(a1, a2, a3);
  sub_100016D2C();
  sub_1004A7124();
  v7 = type metadata accessor for MessageIdentifierRange(0, a2, a3, v6);
  return (*(*(v7 - 8) + 8))(a1, v7);
}

{
  v6 = *(a3 + 56);
  result = v6(a2, a3);
  v8 = result - 1;
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  result = v6(a2, a3);
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v8 <= result)
  {
    sub_100016D2C();
    sub_1004A7124();
    return (*(*(a2 - 8) + 8))(a1, a2);
  }

LABEL_7:
  __break(1u);
  return result;
}

{
  return sub_100455454(a1, a2, a3, &type metadata accessor for ClosedRange, MessageIdentifierRange.init(_:));
}

{
  return sub_100455454(a1, a2, a3, &type metadata accessor for PartialRangeThrough, MessageIdentifierRange.init(_:));
}

{
  return sub_100455454(a1, a2, a3, &type metadata accessor for PartialRangeFrom, MessageIdentifierRange.init(_:));
}

{
  v6 = *(a2 - 8);
  __chkstk_darwin(a1);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MessageIdentifierRange(0, v9, v10, v11);
  __chkstk_darwin(v12 - 8);
  v14 = v18 - v13;
  v15 = sub_1004A5FD4();
  if (sub_1004A5FC4())
  {
    sub_100016D2C();
    sub_1004A7114();
    v16 = *(*(v15 - 8) + 8);

    return v16(a1, v15);
  }

  else
  {
    v18[1] = -1;
    sub_1004A6424();
    static MessageIdentifier.... infix(_:_:)(a1, v8, a2, v14);
    (*(v6 + 8))(v8, a2);
    MessageIdentifierSet.init(_:)(v14, a2, a3);
    return (*(*(v15 - 8) + 8))(a1, v15);
  }
}

uint64_t static MessageIdentifierSet.empty.getter()
{
  sub_100016D2C();

  return sub_1004A7114();
}

uint64_t MessageIdentifierSet._ranges.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MessageIdentifierSet._ranges.setter(uint64_t a1)
{
  v3 = sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

unint64_t sub_10045396C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_100458C20(a1, a3, a5);
  v8 = result;
  if (HIDWORD(result) != result)
  {
    sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
    v6 = sub_1004A70B4();
    sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
    sub_1004A7064();
    return v6(v7, 0);
  }

  return result;
}

unint64_t Range<>.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100458C20(a1, a2, a3);
  v8 = type metadata accessor for MessageIdentifierRange(0, a2, a3, v7);
  (*(*(v8 - 8) + 8))(a1, v8);
  return v6;
}

NIOIMAPCore2::MessageIdentificationShiftWrapper __swiftcall MessageIdentificationShiftWrapper.advanced(by:)(Swift::Int64 by)
{
  v2 = __OFADD__(by, v1);
  v3 = by + v1;
  if (v2)
  {
    __break(1u);
  }

  else if ((v3 & 0x8000000000000000) == 0)
  {
    if (!HIDWORD(v3))
    {
      return v3;
    }

    goto LABEL_7;
  }

  __break(1u);
LABEL_7:
  __break(1u);
  return v3;
}

uint64_t MessageIdentifierSet.hash(into:)(uint64_t a1)
{
  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  sub_1000956A0();

  return sub_1004A5564();
}

Swift::Int MessageIdentifierSet.hashValue.getter()
{
  sub_1004A6E94();
  MessageIdentifierSet.hash(into:)(v1);
  return sub_1004A6F14();
}

Swift::Int sub_100453C80(uint64_t a1)
{
  sub_1004A6E94();
  MessageIdentifierSet.hash(into:)(v2);
  return sub_1004A6F14();
}

void *sub_100453CCC@<X0>(void *result@<X0>, _DWORD *a2@<X8>)
{
  v3 = *v2;
  v4 = v3 + *result;
  if (__OFADD__(v3, *result))
  {
    __break(1u);
    goto LABEL_6;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (!HIDWORD(v4))
  {
    *a2 = v4;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

_DWORD *sub_100453CFC(_DWORD *result, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, void *a6)
{
  v6 = *a4;
  v7 = __OFADD__(v6, *a6);
  v8 = v6 + *a6;
  if (v7)
  {
    __break(1u);
    goto LABEL_6;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (!HIDWORD(v8))
  {
    *result = v8;
    return 0;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_100453D84(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a4;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v27 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin(TupleTypeMetadata2);
  v29 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v26 - v10;
  v12 = *(a2 - 8);
  __chkstk_darwin(v13);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v26 - v17;
  v28 = sub_1004A5704();
  __chkstk_darwin(v28);
  v20 = v26 - v19;
  sub_10044E10C(a1, a2, a3, v18);
  if (HIDWORD(a1))
  {
    sub_10044E10C(HIDWORD(a1) - 1, a2, a3, v15);
    if (sub_1004A5654())
    {
      v26[1] = a3;
      v21 = *(v12 + 32);
      v21(v11, v18, a2);
      v22 = TupleTypeMetadata2;
      v21(&v11[*(TupleTypeMetadata2 + 48)], v15, a2);
      v23 = v27;
      v24 = v29;
      (*(v27 + 16))(v29, v11, v22);
      v26[0] = *(v22 + 48);
      v21(v20, v24, a2);
      v25 = *(v12 + 8);
      v25(&v24[v26[0]], a2);
      (*(v23 + 32))(v24, v11, v22);
      v21(&v20[*(v28 + 36)], &v24[*(v22 + 48)], a2);
      v25(v24, a2);
      MessageIdentifierRange.init(_:)(v20, v30);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t MessageIdentifierSet.min()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = sub_1004A5704();
  v28 = *(v5 - 8);
  v29 = v5;
  __chkstk_darwin(v5);
  v7 = &v27 - v6;
  v9 = type metadata accessor for MessageIdentifierSet.RangeView(0, v3, v4, v8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27 - v11;
  v14 = type metadata accessor for MessageIdentifierRange(255, v3, v4, v13);
  v15 = sub_1004A6374();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v27 - v17;
  MessageIdentifierSet.ranges.getter(v12);
  swift_getWitnessTable(protocol conformance descriptor for MessageIdentifierSet<A>.RangeView, v9);
  sub_1004A5EF4();
  (*(v10 + 8))(v12, v9);
  v19 = *(v14 - 8);
  if ((*(v19 + 48))(v18, 1, v14) == 1)
  {
    (*(v16 + 8))(v18, v15);
    v20 = *(v3 - 8);
    v21 = 1;
    v22 = v30;
  }

  else
  {
    v24 = v28;
    v23 = v29;
    (*(v28 + 16))(v7, v18, v29);
    (*(v19 + 8))(v18, v14);
    v20 = *(v3 - 8);
    v25 = v30;
    (*(v20 + 16))(v30, v7, v3);
    (*(v24 + 8))(v7, v23);
    v21 = 0;
    v22 = v25;
  }

  return (*(v20 + 56))(v22, v21, 1, v3);
}

uint64_t MessageIdentifierSet.ranges.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v7 - v3;
  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  sub_1004A7094();
  v5 = sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
  return (*(*(v5 - 8) + 32))(a1, v4, v5);
}

uint64_t MessageIdentifierSet.max()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = sub_1004A5704();
  v28 = *(v5 - 8);
  v29 = v5;
  __chkstk_darwin(v5);
  v7 = &v27 - v6;
  v9 = type metadata accessor for MessageIdentifierSet.RangeView(0, v3, v4, v8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27 - v11;
  v14 = type metadata accessor for MessageIdentifierRange(255, v3, v4, v13);
  v15 = sub_1004A6374();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v27 - v17;
  MessageIdentifierSet.ranges.getter(v12);
  swift_getWitnessTable(protocol conformance descriptor for MessageIdentifierSet<A>.RangeView, v9);
  sub_1004A55D4();
  (*(v10 + 8))(v12, v9);
  v19 = *(v14 - 8);
  if ((*(v19 + 48))(v18, 1, v14) == 1)
  {
    (*(v16 + 8))(v18, v15);
    v20 = *(v3 - 8);
    v21 = 1;
    v22 = v30;
  }

  else
  {
    v24 = v28;
    v23 = v29;
    (*(v28 + 16))(v7, v18, v29);
    (*(v19 + 8))(v18, v14);
    v20 = *(v3 - 8);
    v25 = v30;
    (*(v20 + 16))(v30, &v7[*(v23 + 36)], v3);
    (*(v24 + 8))(v7, v23);
    v21 = 0;
    v22 = v25;
  }

  return (*(v20 + 56))(v22, v21, 1, v3);
}

BOOL MessageIdentifierSet.isContiguous.getter()
{
  v0 = sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - v2;
  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  sub_1004A7094();
  v4 = sub_1004A7054();
  (*(v1 + 8))(v3, v0);
  return v4 < 2;
}

uint64_t MessageIdentifierSet.RangeView.startIndex.getter()
{
  sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);

  return sub_1004A7044();
}

uint64_t MessageIdentifierSet.RangeView.endIndex.getter()
{
  sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);

  return sub_1004A7074();
}

void MessageIdentifierSet.RangeView.subscript.getter(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
  sub_1004A7084();
  sub_100453D84(v5, *(a2 + 16), *(a2 + 24), a3);
}

uint64_t sub_100454A98(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable("q\t\b");

  return sub_1004A5E24();
}

uint64_t sub_100454B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable("q\t\b", a3);

  return RandomAccessCollection<>.index(_:offsetBy:)(a1, a2, a3, WitnessTable, &protocol witness table for Int);
}

uint64_t sub_100454BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getWitnessTable("q\t\b", a4);

  return sub_1004A5E04();
}

uint64_t sub_100454C28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable("q\t\b", a3);

  return RandomAccessCollection<>.distance(from:to:)(a1, a2, a3, WitnessTable, &protocol witness table for Int);
}

uint64_t sub_100454C9C@<X0>(uint64_t *a1@<X8>)
{
  result = MessageIdentifierSet.RangeView.startIndex.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100454CC4@<X0>(uint64_t *a1@<X8>)
{
  result = MessageIdentifierSet.RangeView.endIndex.getter();
  *a1 = result;
  return result;
}

void (*sub_100454CEC(uint64_t **a1, uint64_t *a2, uint64_t a3))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_100454D78(v6, *a2, a3, v7);
  return sub_100454D74;
}

void (*sub_100454D78(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *)
{
  v6 = type metadata accessor for MessageIdentifierRange(0, *(a3 + 16), *(a3 + 24), a4);
  *a1 = v6;
  v7 = *(v6 - 8);
  a1[1] = v7;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  a1[2] = v8;
  MessageIdentifierSet.RangeView.subscript.getter(a3, v8);
  return sub_100454E50;
}

uint64_t sub_100454E58(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable("q\t\b", a1);

  return RandomAccessCollection<>.indices.getter(a1, WitnessTable, &protocol witness table for Int);
}

uint64_t sub_100454F60(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable("q\t\b");

  return RandomAccessCollection<>.index(after:)(a1, a2, WitnessTable, &protocol witness table for Int);
}

uint64_t sub_100454FE8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, void *))
{
  v8 = *a1;
  WitnessTable = swift_getWitnessTable("q\t\b", a2, a3);
  return a4(&v8, a2, WitnessTable, &protocol witness table for Int);
}

uint64_t sub_100455060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  (*(v5 + 16))(a2, v2, a1);
  swift_getWitnessTable(protocol conformance descriptor for MessageIdentifierSet<A>.RangeView, a1);
  v6 = *(sub_1004A6944() + 36);
  v7 = MessageIdentifierSet.RangeView.startIndex.getter();
  result = (*(v5 + 8))(v2, a1);
  *(a2 + v6) = v7;
  return result;
}

uint64_t sub_100455148(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for MessageIdentifierSet<A>.RangeView, a1);

  return Collection.underestimatedCount.getter(a1, WitnessTable);
}

uint64_t MessageIdentifierSet.RangeView.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v9 = type metadata accessor for MessageIdentifierSet(0, a2, a3, a5);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - v11;
  v17 = a1;
  type metadata accessor for MessageIdentifierRange(255, a2, a3, v13);
  v14 = sub_1004A5CD4();
  swift_getWitnessTable(&protocol conformance descriptor for [A], v14);
  MessageIdentifierSet.init<A>(_:)(&v17, a2, v14);
  MessageIdentifierSet.ranges.getter(a4);
  return (*(v10 + 8))(v12, v9);
}

uint64_t static MessageIdentifierSet.RangeView.== infix(_:_:)(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for MessageIdentifierSet.RangeView(0, a4, a5, a5);
  swift_getWitnessTable(protocol conformance descriptor for MessageIdentifierSet<A>.RangeView, v7);
  v9 = type metadata accessor for MessageIdentifierRange(255, a4, a5, v8);
  swift_getWitnessTable(protocol conformance descriptor for MessageIdentifierRange<A>, v9);
  return sub_1004A5BA4() & 1;
}

uint64_t sub_100455454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, void), void (*a5)(char *, uint64_t, uint64_t))
{
  v9 = a4(0, a2, *(*(a3 + 48) + 8));
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - v11;
  v14 = type metadata accessor for MessageIdentifierRange(0, a2, a3, v13);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v19 - v16;
  (*(v10 + 16))(v12, a1, v9, v15);
  a5(v12, a2, a3);
  MessageIdentifierSet.init(_:)(v17, a2, a3);
  return (*(v10 + 8))(a1, v9);
}

uint64_t MessageIdentifierSet.writeIntoBuffer(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005DCD70, &unk_100508290);
  __chkstk_darwin(v4 - 8);
  v6 = &v29[-v5];
  v7 = sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29[-v9];
  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  sub_1004A7094();
  v30 = *(a2 + 16);
  sub_1003DAA44(&qword_1005DC300, &protocol conformance descriptor for RangeSet<A>.Ranges);
  if (sub_1004A5E84() < 1)
  {
    v15 = 0;
  }

  else
  {
    v11 = *(a1 + 20);
    result = sub_1002F178C(0, 0xE000000000000000, a1 + 8, v11);
    if (v13)
    {
      v14._countAndFlagsBits = 0;
      v14._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v14, v11);
    }

    v15 = result;
    v16 = *(a1 + 20);
    v17 = __CFADD__(v16, result);
    v18 = v16 + result;
    if (v17)
    {
      goto LABEL_17;
    }

    *(a1 + 20) = v18;
  }

  v19 = (*(v8 + 16))(v6, v10, v7);
  __chkstk_darwin(v19);
  *&v29[-48] = sub_100458D00;
  *&v29[-40] = v29;
  *&v29[-32] = a1;
  *&v29[-24] = v10;
  *&v29[-16] = 44;
  *&v29[-8] = 0xE100000000000000;
  v20 = sub_100451840(0, sub_100458D08, &v29[-64]);
  result = sub_100025F40(v6, &qword_1005DCD70, &unk_100508290);
  v21 = __OFADD__(v15, v20);
  v22 = v15 + v20;
  if (v21)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (sub_1004A5E84() < 1)
  {
    v28 = v22;
    goto LABEL_13;
  }

  v23 = *(a1 + 20);
  result = sub_1002F178C(0, 0xE000000000000000, a1 + 8, v23);
  if (v24)
  {
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v25, v23);
  }

  v26 = *(a1 + 20);
  v17 = __CFADD__(v26, result);
  v27 = v26 + result;
  if (!v17)
  {
    *(a1 + 20) = v27;
    v28 = v22 + result;
    if (!__OFADD__(v22, result))
    {
LABEL_13:
      (*(v8 + 8))(v10, v7);
      return v28;
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100455B9C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  sub_1004A7094();
  v7 = a2(v3);
  (*(v4 + 8))(v6, v3);
  return v7;
}

void MessageIdentifierSet.index(_:offsetBy:)(uint64_t a1, uint64_t a2, void (**a3)(char *, uint64_t))
{
  v7 = sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
  __chkstk_darwin(v7);
  v10 = &v21 - v9;
  v21 = v3;
  if ((a3 & 0x8000000000000000) != 0)
  {
    v12 = __OFADD__(a2, a3);
    a2 += a3;
    if (v12)
    {
LABEL_34:
      __break(1u);
    }

    else
    {
      a3 = (v8 + 8);
      while (a2 < 0)
      {
        sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
        sub_1004A7094();
        v18 = sub_1004A7044();
        v19 = *a3;
        (*a3)(v10, v7);
        if (v18 >= a1)
        {
          break;
        }

        sub_1004A7094();
        v26 = --a1;
        sub_1003DAA44(&qword_1005DC300, &protocol conformance descriptor for RangeSet<A>.Ranges);
        sub_1004A5E64();
        sub_1004A5EA4();
        v24 = v23;
        v25 = v22;
        sub_1004A5E74();
        v19(v10, v7);
        sub_1004A7094();
        sub_1004A7084();
        v19(v10, v7);
        v20 = HIDWORD(v24) - v24;
        v12 = __OFADD__(a2, v20);
        a2 += v20;
        if (v12)
        {
          __break(1u);
LABEL_26:
          if (__OFADD__(a2, a3))
          {
            __break(1u);
          }

          return;
        }
      }
    }
  }

  else
  {
    v11 = (v8 + 8);
    while (a3 >= 1)
    {
      sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
      sub_1004A7094();
      v14 = sub_1004A7074();
      v15 = *v11;
      (*v11)(v10, v7);
      if (a1 >= v14)
      {
        goto LABEL_26;
      }

      sub_1004A7094();
      sub_1004A7084();
      v15(v10, v7);
      if (__OFADD__(a2, a3))
      {
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      if (a3 + a2 < (HIDWORD(v24) - v24))
      {
        return;
      }

      sub_1004A7094();
      v26 = a1;
      sub_1003DAA44(&qword_1005DC300, &protocol conformance descriptor for RangeSet<A>.Ranges);
      sub_1004A5E64();
      sub_1004A5EA4();
      v24 = v23;
      v25 = v22;
      sub_1004A5E74();
      v15(v10, v7);
      sub_1004A7094();
      sub_1004A7084();
      v15(v10, v7);
      v16 = HIDWORD(v24) - v24;
      if ((v16 ^ a2) < 0)
      {
        if (a2 >= 0)
        {
          v17 = a2;
        }

        else
        {
          v17 = -a2;
        }

        if (v16 < 0)
        {
          v16 = v24 - HIDWORD(v24);
        }

        v13 = v16 + v17;
        if (v13 < 0)
        {
          goto LABEL_33;
        }

        if (a2 >= 0)
        {
          v13 = -v13;
        }
      }

      else
      {
        v12 = __OFSUB__(v16, a2);
        v13 = v16 - a2;
        if (v12)
        {
          goto LABEL_32;
        }
      }

      a2 = 0;
      ++a1;
      v12 = __OFSUB__(a3, v13);
      a3 = (a3 - v13);
      if (v12)
      {
        goto LABEL_31;
      }
    }
  }
}

void MessageIdentifierSet.distance(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26 - v13;
  v15 = a1 < a3;
  if (a1 == a3)
  {
    if ((a4 ^ a2) < 0)
    {
      goto LABEL_15;
    }

    v15 = a4 < a2;
    if (!__OFSUB__(a4, a2))
    {
      return;
    }

    __break(1u);
  }

  if (v15)
  {
    sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
    v29 = v5;
    sub_1004A7094();
    sub_1004A7084();
    v16 = *(v12 + 8);
    v16(v14, v11);
    v17 = HIDWORD(v31) - v31;
    v18 = __OFSUB__(v17, a2);
    v19 = v17 - a2;
    if (v18)
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v27 = v16;
    v28 = v19;
    a2 = v29;
    sub_1004A7094();
    v32 = a1;
    sub_1003DAA44(&qword_1005DC300, &protocol conformance descriptor for RangeSet<A>.Ranges);
    sub_1004A5E64();
    sub_1004A5EA4();
    v31 = v30;
    sub_1004A5E74();
    v27(v14, v11);
    MessageIdentifierSet.distance(from:to:)(a1 + 1, 0, a3, a4, a5);
    if (!__OFADD__(v28, v20))
    {
      return;
    }

    __break(1u);
  }

  MessageIdentifierSet.distance(from:to:)(a3, a4, a1, a2, a5);
  if (!__OFSUB__(0, v21))
  {
    return;
  }

  __break(1u);
LABEL_15:
  if (a2 >= 0)
  {
    v22 = a2;
  }

  else
  {
    v22 = -a2;
  }

  if (a4 >= 0)
  {
    v23 = a4;
  }

  else
  {
    v23 = -a4;
  }

  v24 = __CFADD__(v22, v23);
  v25 = v22 + v23;
  if (v24)
  {
    goto LABEL_25;
  }

  if (v25 < 0)
  {
LABEL_26:
    __break(1u);
  }
}

uint64_t MessageIdentifierSet.subscript.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v16 = a4;
  v6 = sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - v8;
  v10 = *(a3 + 16);
  v11 = *(v10 - 8);
  __chkstk_darwin(v12);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  sub_1004A7094();
  sub_1004A7084();
  (*(v7 + 8))(v9, v6);
  sub_10044E10C(v17, v10, *(a3 + 24), v14);
  v17 = a2;
  sub_1004A6424();
  return (*(v11 + 8))(v14, v10);
}

uint64_t MessageIdentifierSet.count.getter()
{
  v0 = sub_10000C9C0(&qword_1005DC2F0, &qword_100500E20);
  v1 = v0 - 8;
  __chkstk_darwin(v0);
  v3 = &v19 - v2;
  v4 = sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v19 - v9;
  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  sub_1004A7094();
  v20 = v5;
  (*(v5 + 16))(v7, v10, v4);
  sub_1003DAA44(&qword_1005DC2F8, &protocol conformance descriptor for RangeSet<A>.Ranges);
  sub_1004A5AC4();
  v11 = *(v1 + 44);
  sub_1003DAA44(&qword_1005DC300, &protocol conformance descriptor for RangeSet<A>.Ranges);
  v12 = 0;
  while (1)
  {
    sub_1004A5EA4();
    if (*&v3[v11] == v21[0])
    {
      break;
    }

    v13 = sub_1004A5F34();
    v16 = *v14;
    v15 = v14[1];
    v13(v21, 0);
    sub_1004A5EB4();
    v17 = __OFADD__(v12, v15 - v16);
    v12 += v15 - v16;
    if (v17)
    {
      __break(1u);
      break;
    }
  }

  sub_100025F40(v3, &qword_1005DC2F0, &qword_100500E20);
  (*(v20 + 8))(v10, v4);
  return v12;
}

void sub_1004567A0(uint64_t *a1@<X0>, void *a2@<X8>)
{
  MessageIdentifierSet.index(before:)(*a1, a1[1]);
  *a2 = v3;
  a2[1] = v4;
}

void sub_1004567D0(uint64_t *a1)
{
  MessageIdentifierSet.index(before:)(*a1, a1[1]);
  *a1 = v2;
  a1[1] = v3;
}

void sub_100456800(uint64_t *a1@<X0>, void (**a2)(char *, uint64_t)@<X1>, void *a3@<X8>)
{
  MessageIdentifierSet.index(_:offsetBy:)(*a1, a1[1], a2);
  *a3 = v4;
  a3[1] = v5;
}

uint64_t sub_100456850@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = MessageIdentifierSet.startIndex.getter(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100456878@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = MessageIdentifierSet.endIndex.getter(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

void (*sub_1004568A0(void *a1, uint64_t *a2, uint64_t a3))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_100456928(v6, *a2, a2[1], a3);
  return sub_1004594CC;
}

void (*sub_100456928(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *)
{
  v7 = *(a4 + 16);
  *a1 = v7;
  v8 = *(v7 - 8);
  a1[1] = v8;
  v9 = *(v8 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(v9);
  }

  a1[2] = v10;
  MessageIdentifierSet.subscript.getter(a3, a4, v10);
  return sub_1004594D0;
}

void sub_100456A08(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 256;
}

uint64_t sub_100456A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getWitnessTable(protocol conformance descriptor for MessageIdentifierSet<A>, a4);

  return sub_1004A55E4();
}

void sub_100456A9C(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  MessageIdentifierSet.index(after:)(*a1, a1[1], a2, a3);
  *a4 = v5;
  a4[1] = v6;
}

void sub_100456AD0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MessageIdentifierSet.index(after:)(*a1, a1[1], a2, a4);
  *a1 = v5;
  a1[1] = v6;
}

uint64_t sub_100456B04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 - 8);
  (*(v5 + 16))(a2, v2, a1);
  swift_getWitnessTable("q\a\b", a1);
  v6 = sub_1004A6944();
  v7 = (a2 + *(v6 + 36));
  v8 = MessageIdentifierSet.startIndex.getter(v6);
  v10 = v9;
  result = (*(v5 + 8))(v2, a1);
  *v7 = v8;
  v7[1] = v10;
  return result;
}

uint64_t sub_100456BF4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable("q\a\b", a1);

  return Collection.underestimatedCount.getter(a1, WitnessTable);
}

uint64_t sub_100456C60(uint64_t a1, uint64_t a2, const char *a3)
{
  WitnessTable = swift_getWitnessTable(a3, a1);
  v6 = sub_100458B50(v3, a1, WitnessTable);
  (*(*(a1 - 8) + 8))(v3, a1);
  return v6;
}

BOOL static MessageIdentifierSet.Index.< infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3)
  {
    return a2 < a4;
  }

  else
  {
    return a1 < a3;
  }
}

BOOL static MessageIdentifierSet.Index.> infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3)
  {
    return a4 < a2;
  }

  else
  {
    return a3 < a1;
  }
}

uint64_t MessageIdentifierSet.contains(_:)(uint64_t a1, uint64_t a2)
{
  result = (*(*(a2 + 24) + 56))(*(a2 + 16));
  if (result)
  {
    sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
    return sub_1004A70D4() & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100456E14@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X2>, uint64_t a3@<X8>)
{
  v7 = sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v21 - v12;
  v15 = __chkstk_darwin(v14);
  v17 = &v21 - v16;
  v18 = *(v8 + 16);
  v18(v13, v3, v7, v15);
  (v18)(v10, a1, v7);
  a2(v10, v7);
  v19 = sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  return (*(*(v19 - 8) + 32))(a3, v17, v19);
}

BOOL MessageIdentifierSet.insert(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = MessageIdentifierSet.contains(_:)(a2, a3);
  v7 = *(a3 + 16);
  if ((v6 & 1) == 0)
  {
    v11 = sub_100458ABC(a2, *(a3 + 16), *(a3 + 24));
    if (HIDWORD(v11) != v11)
    {
      sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
      v8 = sub_1004A70B4();
      sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
      sub_1004A7064();
      v8(v10, 0);
    }
  }

  (*(*(v7 - 8) + 16))(a1, a2, v7);
  return (v6 & 1) == 0;
}

uint64_t MessageIdentifierSet.remove(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (MessageIdentifierSet.contains(_:)(a1, a2))
  {
    v6 = *(a2 + 24);
    v7 = *(a2 + 16);
    sub_100458ABC(a1, v7, v6);
    sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
    sub_1004A70A4();
    v8 = *(v7 - 8);
    (*(v8 + 16))(a3, a1, v7);
    return (*(v8 + 56))(a3, 0, 1, v7);
  }

  else
  {
    v10 = *(*(*(a2 + 16) - 8) + 56);

    return v10(a3, 1, 1);
  }
}

uint64_t MessageIdentifierSet.update(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = MessageIdentifierSet.contains(_:)(a1, a2);
  v7 = *(a2 + 16);
  if (v6)
  {
    v11 = *(v7 - 8);
    (*(v11 + 16))(a3, a1, v7);
    v8 = *(v11 + 56);

    return v8(a3, 0, 1, v7);
  }

  else
  {
    v13 = sub_100458ABC(a1, *(a2 + 16), *(a2 + 24));
    if (HIDWORD(v13) != v13)
    {
      sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
      v10 = sub_1004A70B4();
      sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
      sub_1004A7064();
      v10(v12, 0);
    }

    return (*(*(v7 - 8) + 56))(a3, 1, 1, v7);
  }
}

uint64_t MessageIdentifierSet.formIntersection(_:)(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);

  return RangeSet.formIntersection(_:)(a1, v2);
}

uint64_t sub_100457434(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, uint64_t))
{
  v5 = sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v6 = __chkstk_darwin(v5);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1, v5, v6);
  return a3(v8, v5);
}

uint64_t sub_100457530@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, uint64_t)@<X2>, uint64_t a3@<X8>)
{
  v7 = sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  __chkstk_darwin(v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v17 - v12;
  (*(v14 + 16))(v9, v3, v7, v11);
  a2(a1, v7);
  v15 = sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  return (*(*(v15 - 8) + 32))(a3, v13, v15);
}

uint64_t MessageIdentifierSet.isSubset(of:)(uint64_t a1)
{
  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);

  return sub_1004A70E4();
}

uint64_t MessageIdentifierSet.isSuperset(of:)(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);

  return RangeSet.isSuperset(of:)(a1, v2);
}

uint64_t MessageIdentifierSet.subtract(_:)(uint64_t a1)
{
  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);

  return sub_1004A70F4();
}

uint64_t MessageIdentifierSet.isStrictSuperset(of:)(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);

  return RangeSet.isStrictSuperset(of:)(a1, v2);
}

uint64_t MessageIdentifierSet.isStrictSubset(of:)(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);

  return RangeSet.isStrictSubset(of:)(a1, v2);
}

uint64_t sub_100457868(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  a4(a1, a2, a3);
  v8 = *(*(a2 - 8) + 8);
  v8(v4, a2);

  return v8(a1, a2);
}

BOOL sub_100457900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MessageIdentifierSet.insert(_:)(a1, a2, a3);
  (*(*(*(a3 + 16) - 8) + 8))(a2);
  return v5;
}

uint64_t sub_10045796C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  MessageIdentifierSet.update(with:)(a1, a2, a3);
  v5 = *(*(*(a2 + 16) - 8) + 8);

  return v5(a1);
}

uint64_t sub_100457A0C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  a4(a1, a2, a3);
  v6 = *(*(a2 - 8) + 8);

  return v6(a1, a2);
}

uint64_t sub_100457A94(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  a4(a1, a2, a3);
  v6 = *(*(a2 - 8) + 8);

  return v6(v4, a2);
}

void MessageIdentifierSet.suffix(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v111 = a3;
  v5 = *(a2 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v97 = *(TupleTypeMetadata2 - 8);
  __chkstk_darwin(TupleTypeMetadata2);
  v98 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v96 = &v93 - v8;
  v9 = sub_1004A6374();
  __chkstk_darwin(v9 - 8);
  v107 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v109 = &v93 - v12;
  v13 = *(a2 + 24);
  v14 = *(v13 + 48);
  v100 = *(v14 + 8);
  v15 = sub_1004A5704();
  v102 = *(v15 - 8);
  __chkstk_darwin(v15);
  v106 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v103 = &v93 - v18;
  v19 = sub_1004513D8();
  v104 = v14;
  v130[0] = v14;
  v130[1] = v19;
  v101 = v19;
  WitnessTable = swift_getWitnessTable(&protocol conformance descriptor for <> ClosedRange<A>, v15, v130);
  v127 = v15;
  v21 = a1;
  v108 = sub_1004A6E74();
  v95 = *(v108 - 8);
  __chkstk_darwin(v108);
  v110 = &v93 - v22;
  v126 = type metadata accessor for MessageIdentifierRange(0, v5, v13, v23);
  v116 = *(v126 - 8);
  __chkstk_darwin(v126);
  v94 = &v93 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v120 = &v93 - v26;
  __chkstk_darwin(v27);
  v29 = &v93 - v28;
  __chkstk_darwin(v30);
  v121 = v13;
  v122 = &v93 - v31;
  v33 = type metadata accessor for MessageIdentifierSet.RangeView(0, v5, v13, v32);
  v34 = *(v33 - 8);
  *&v35 = __chkstk_darwin(v33).n128_u64[0];
  v37 = &v93 - v36;
  v38 = swift_getWitnessTable(protocol conformance descriptor for MessageIdentifierSet<A>.RangeView, v33, v35);
  v39 = sub_1004A6A24();
  __chkstk_darwin(v39 - 8);
  v41 = &v93 - v40;
  v124 = v33;
  v115 = v38;
  v113 = sub_1004A6A14();
  __chkstk_darwin(v113);
  v43 = &v93 - v42;
  v123 = a2;
  v112 = *(a2 - 8);
  __chkstk_darwin(v44);
  v119 = &v93 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v125 = &v93 - v48;
  if (v21 < 0)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
    v105 = v47;
    sub_100016D2C();
    if (!v21)
    {
      sub_1004A7114();
      return;
    }

    v117 = v5;
    sub_1004A7114();
    MessageIdentifierSet.ranges.getter(v37);
    v49 = v124;
    sub_1004A5604();
    (*(v34 + 16))(v43, v41, v49);
    v50 = *(v113 + 36);
    sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
    v51 = sub_1004A7074();
    v118 = v50;
    *&v43[v50] = v51;
    (*(v34 + 8))(v41, v49);
    v52 = 0;
    v53 = (v116 + 4);
    v114 = (v116 + 2);
    v115 = (v112 + 8);
    ++v116;
    while (1)
    {
      sub_10000C9C0(&qword_1005CD7B0, &unk_1004D16C0);
      if (v51 == sub_1004A7044())
      {
        goto LABEL_16;
      }

      v129[2] = v51;
      v54 = v124;
      swift_getWitnessTable("q\t\b", v124);
      v55 = v118;
      sub_1004A5E24();
      v51 = *&v43[v55];
      v56 = v122;
      MessageIdentifierSet.RangeView.subscript.getter(v54, v122);
      (*v53)(v29, v56, v126);
      v57 = sub_1004A5EE4();
      if (__OFADD__(v52, v57))
      {
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      if (v52 + v57 > v21)
      {
        break;
      }

      v58 = sub_1004A5EE4();
      v59 = __OFADD__(v52, v58);
      v52 += v58;
      if (v59)
      {
        goto LABEL_19;
      }

      v60 = v120;
      v61 = WitnessTable;
      v62 = v21;
      v63 = v126;
      (*v114)(v120, v29, v126);
      v64 = v43;
      v65 = v29;
      v66 = v119;
      MessageIdentifierSet.init(_:)(v60, v117, v121);
      MessageIdentifierSet.formUnion(_:)(v66, v67);
      v68 = v66;
      v29 = v65;
      v43 = v64;
      (*v115)(v68, v123);
      v69 = v63;
      v21 = v62;
      WitnessTable = v61;
      (*v116)(v29, v69);
      if (v52 >= v21)
      {
        goto LABEL_16;
      }
    }

    if (__OFSUB__(v21, v52))
    {
      goto LABEL_21;
    }

    v70 = v127;
    (*(v102 + 16))(v103, v29, v127);
    v129[0] = v104;
    v129[1] = v101;
    v71 = swift_getWitnessTable(&protocol conformance descriptor for <> ClosedRange<A>, v70, v129);
    sub_1004A55F4();
    v72 = v108;
    swift_getWitnessTable(&protocol conformance descriptor for Slice<A>, v108);
    v73 = v109;
    sub_1004A5EF4();
    v74 = v117;
    v75 = *(v117 - 8);
    v76 = v75[6];
    if (v76(v73, 1, v117) == 1)
    {
      goto LABEL_23;
    }

    v128 = v71;
    swift_getWitnessTable(&protocol conformance descriptor for <> Slice<A>, v72, &v128);
    v77 = v107;
    sub_1004A55D4();
    if (v76(v77, 1, v74) == 1)
    {
      goto LABEL_24;
    }

    if (sub_1004A5654())
    {
      v78 = v75[2];
      v79 = v96;
      v78(v96, v73, v74);
      v80 = TupleTypeMetadata2;
      v78(&v79[*(TupleTypeMetadata2 + 48)], v77, v74);
      v81 = v97;
      v82 = v98;
      (*(v97 + 16))(v98, v79, v80);
      v122 = *(v80 + 48);
      v124 = v75[4];
      v124(v106, v82, v74);
      v83 = v75[1];
      v83(&v82[v122], v74);
      (*(v81 + 32))(v82, v79, v80);
      v84 = v106;
      v124(&v106[*(v127 + 36)], &v82[*(v80 + 48)], v74);
      v83(v82, v74);
      v83(v107, v74);
      v83(v109, v74);
      v85 = v94;
      v86 = v84;
      v87 = v121;
      MessageIdentifierRange.init(_:)(v86, v94);
      v88 = v120;
      v89 = v126;
      (*v114)(v120, v85, v126);
      v90 = v119;
      MessageIdentifierSet.init(_:)(v88, v74, v87);
      MessageIdentifierSet.formUnion(_:)(v90, v91);
      (*v115)(v90, v123);
      v92 = *v116;
      (*v116)(v85, v89);
      (*(v95 + 8))(v110, v108);
      v92(v29, v89);
LABEL_16:
      (*(v105 + 8))(v43, v113);
      (*(v112 + 32))(v111, v125, v123);
      return;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
}

uint64_t sub_1004587F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_10045886C(unint64_t *a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  v7 = type metadata accessor for MessageIdentifierRange(0, a3, a4, a4);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - v9;
  sub_100453D84(*a1, a3, a4, &v13 - v9);
  v11 = sub_10044F32C(v10, 0, a3, a4);
  (*(v8 + 8))(v10, v7);
  return v11;
}

uint64_t sub_10045897C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(uint64_t *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, void *a8@<X7>, uint64_t *a9@<X8>)
{
  result = sub_100490EA4(*a1, *a2, a2[1], a3, a4, a5, a6, a7, a8);
  if (!v9)
  {
    *a9 = result;
  }

  return result;
}

uint64_t sub_1004589D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_1004A5654();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

unint64_t sub_100458ABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 56);
  result = v5(a2, a3);
  v7 = (result - 1);
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  result = v5(a2, a3);
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v7 <= result)
  {
    return v7 | (result << 32);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_100458B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_1004A5654();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_1004A5FD4();
  result = sub_1004A5654();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

unint64_t sub_100458C20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 56);
  result = v5(a2, a3);
  v7 = (result - 1);
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_1004A5704();
  result = v5(a2, a3);
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v7 <= result)
  {
    return v7 | (result << 32);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_100458D08@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_100490EA4(*a1, *a2, a2[1], *(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), *(v3 + 48), *(v3 + 56));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

unint64_t sub_100458D78()
{
  result = qword_1005DCD78;
  if (!qword_1005DCD78)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MessageIdentificationShiftWrapper, &type metadata for MessageIdentificationShiftWrapper, v0, v1);
    atomic_store(result, &qword_1005DCD78);
  }

  return result;
}

void sub_1004590FC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t, ValueMetadata *, unint64_t))
{
  sub_1004592A4(319, a4, a5);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_100459198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v7 = sub_10000C9C0(a4, a5);
  v8 = *(*(v7 - 8) + 48);

  return v8(a1, a2, v7);
}

uint64_t sub_100459230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v8 = sub_10000C9C0(a5, a6);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, a2, a2, v8);
}

void sub_1004592A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_100016D2C();
    v7 = a3(a1, &type metadata for MessageIdentificationShiftWrapper, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_100459308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10045935C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005DCD70, &unk_100508290);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004593CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_100459434(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
  }

  return result;
}

uint64_t sub_100459448(uint64_t result, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
  }

  return v2;
}

uint64_t MessageIdentifierSetNonEmpty.init(set:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v9 = type metadata accessor for MessageIdentifierSetNonEmpty(0, a2, a3, a5);
  v19 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v18 - v10;
  v13 = type metadata accessor for MessageIdentifierSet(0, a2, a3, v12);
  v14 = MessageIdentifierSet.count.getter();
  v15 = *(v13 - 8);
  if (v14 < 1)
  {
    (*(v15 + 8))(a1, v13);
    v17 = *(v19 + 56);

    return v17(a4, 1, 1, v9);
  }

  else
  {
    (*(v15 + 32))(v11, a1, v13);
    (*(v19 + 32))(a4, v11, v9);
    return (*(v19 + 56))(a4, 0, 1, v9);
  }
}

uint64_t MessageIdentifierSetNonEmpty.init(range:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for MessageIdentifierRange(0, a2, a3, a4);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v13 - v10;
  (*(v8 + 16))(&v13 - v10, a1, v7, v9);
  MessageIdentifierSet.init(_:)(v11, a2, a3);
  return (*(v8 + 8))(a1, v7);
}

uint64_t MessageIdentifierSetNonEmpty.writeIntoBuffer(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for MessageIdentifierSet(0, *(a2 + 16), *(a2 + 24), a4);

  return MessageIdentifierSet.writeIntoBuffer(_:)(a1, v5);
}

uint64_t static MessageIdentifierSetNonEmpty.all.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = type metadata accessor for MessageIdentifierSet(0, a1, a2, a3);
  __chkstk_darwin(v7 - 8);
  v9 = &v20 - v8;
  v11 = type metadata accessor for MessageIdentifierSetNonEmpty(255, a1, a2, v10);
  v12 = sub_1004A6374();
  __chkstk_darwin(v12 - 8);
  v14 = &v20 - v13;
  static MessageIdentifierSet.all.getter(a1, a2, v15, v16);
  MessageIdentifierSetNonEmpty.init(set:)(v9, a1, a2, v14, v17);
  v18 = *(v11 - 8);
  result = (*(v18 + 48))(v14, 1, v11);
  if (result != 1)
  {
    return (*(v18 + 32))(a4, v14, v11);
  }

  __break(1u);
  return result;
}

uint64_t MessageIdentifierSetNonEmpty.set.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for MessageIdentifierSet(0, *(a1 + 16), *(a1 + 24), a2);
  v6 = *(*(v5 - 8) + 16);

  return v6(a3, v3, v5);
}

uint64_t MessageIdentifierSetNonEmpty.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MessageIdentifierSet(0, *(a2 + 16), *(a2 + 24), a4);

  return MessageIdentifierSet.hash(into:)(a1);
}

Swift::Int MessageIdentifierSetNonEmpty.hashValue.getter(uint64_t a1)
{
  sub_1004A6E94();
  type metadata accessor for MessageIdentifierSet(0, *(a1 + 16), *(a1 + 24), v2);
  MessageIdentifierSet.hash(into:)(v4);
  return sub_1004A6F14();
}

Swift::Int sub_100459AA0(uint64_t a1, uint64_t a2)
{
  sub_1004A6E94();
  MessageIdentifierSetNonEmpty.hash(into:)(v6, a2, v3, v4);
  return sub_1004A6F14();
}

uint64_t MessageIdentifierSetNonEmpty.debugDescription.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MessageIdentifierSet(0, *(a1 + 16), *(a1 + 24), a4);

  return MessageIdentifierSet.debugDescription.getter();
}

uint64_t MessageIdentifierSetNonEmpty.init(arrayLiteral:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MessageIdentifierRange(0, a2, a3, a4);
  result = sub_1004A5C94();
  if (result < 1)
  {
    __break(1u);
  }

  else
  {
    v9 = a1;
    v8 = sub_1004A5CD4();
    swift_getWitnessTable(&protocol conformance descriptor for [A], v8);
    return MessageIdentifierSet.init<A>(_:)(&v9, a2, v8);
  }

  return result;
}

uint64_t sub_100459C14@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 16);
  v7 = sub_1004A6374();
  __chkstk_darwin(v7 - 8);
  v9 = &v14 - v8;
  v11 = type metadata accessor for MessageIdentifierSet(0, v6, *(a1 + 24), v10);
  a2(v11);
  v12 = *(v6 - 8);
  result = (*(v12 + 48))(v9, 1, v6);
  if (result != 1)
  {
    return (*(v12 + 32))(a3, v9, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_100459D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for MessageIdentifierSet(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100459DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for MessageIdentifierSet(0, *(a3 + 16), *(a3 + 24), a4);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t sub_100459E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for MessageIdentifierSet(0, *(a4 + 16), *(a4 + 24), a4);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a2, v6);
}

__n128 MessagePath.init(mailboxReference:iUID:section:range:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int32 a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int16 a10)
{
  v13[68] = BYTE4(a3) & 1;
  v13[67] = HIBYTE(a10) & 1;
  *&v14 = a1;
  *(&v14 + 1) = a2;
  v15.n128_u32[0] = a3;
  v15.n128_u8[4] = BYTE4(a3) & 1;
  v15.n128_u32[2] = a4;
  *&v16 = a5;
  *(&v16 + 1) = a6;
  *&v17 = a7;
  *(&v17 + 1) = a8;
  v18 = a10 & 0x1FF;
  v19[0] = a1;
  v19[1] = a2;
  v20 = a3;
  v21 = BYTE4(a3) & 1;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v25 = a7;
  v26 = a8;
  v27 = a10 & 0x1FF;
  sub_1004308A4(&v14, v13);
  sub_10042ED74(v19);
  v11 = v17;
  *(a9 + 32) = v16;
  *(a9 + 48) = v11;
  *(a9 + 64) = v18;
  result = v15;
  *a9 = v14;
  *(a9 + 16) = result;
  return result;
}

uint64_t MessagePath.range.setter(uint64_t result, uint64_t a2, __int16 a3)
{
  *(v3 + 48) = result;
  *(v3 + 56) = a2;
  *(v3 + 64) = a3;
  *(v3 + 65) = HIBYTE(a3) & 1;
  return result;
}

void MessagePath.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 20);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if (v3)
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EE4(v2);
  }

  sub_1004A6EE4(*(v1 + 24));
  if (*(v1 + 40))
  {
    sub_1004A6EC4(1u);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    sub_1004A6EC4(0);
  }

  if (*(v1 + 65) == 1 || (v4 = *(v1 + 64), v5 = *(v1 + 48), v6 = *(v1 + 56), sub_1004A6EC4(1u), sub_1004A6EB4(v5), (v4 & 1) != 0))
  {
    sub_1004A6EC4(0);
  }

  else
  {
    sub_1004A6EC4(1u);
    sub_1004A6EB4(v6);
  }
}

Swift::Int MessagePath.hashValue.getter()
{
  sub_1004A6E94();
  MessagePath.hash(into:)(v1);
  return sub_1004A6F14();
}

Swift::Int sub_10045A0C8(uint64_t a1)
{
  sub_1004A6E94();
  MessagePath.hash(into:)(v2);
  return sub_1004A6F14();
}

BOOL sub_10045A104(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return _s12NIOIMAPCore211MessagePathV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v9);
}

uint64_t sub_10045A160(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1004480DC(*a1, *(a1 + 8), *(a1 + 16) | (*(a1 + 20) << 32));
  result = sub_100434480(*(a1 + 24));
  v6 = v4 + result;
  if (__OFADD__(v4, result))
  {
    goto LABEL_17;
  }

  v7._object = *(a1 + 40);
  if (v7._object)
  {
    v7._countAndFlagsBits = *(a1 + 32);
    sub_1004A5994(v7);
    v8 = *(v1 + 20);
    v9 = sub_1002F178C(0x4F49544345533B2FuLL, 0xEA00000000003D4ELL, v1 + 8, v8);
    if (v10)
    {
      v11._countAndFlagsBits = 0x4F49544345533B2FLL;
      v11._object = 0xEA00000000003D4ELL;
      v9 = ByteBuffer._setStringSlowpath(_:at:)(v11, v8);
    }

    v12 = v9;

    v13 = *(v2 + 20);
    v14 = __CFADD__(v13, v12);
    v15 = v13 + v12;
    if (v14)
    {
      goto LABEL_19;
    }

    *(v2 + 20) = v15;
    v16 = __OFADD__(v6, v12);
    v6 += v12;
    if (v16)
    {
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }
  }

  if (*(a1 + 65))
  {
    v17 = 0;
  }

  else
  {
    v18 = *(a1 + 48);
    v19 = *(a1 + 56);
    v20 = *(a1 + 64);
    v21 = *(v2 + 20);
    result = sub_1002F178C(0x4149545241503B2FuLL, 0xEA00000000003D4CLL, v2 + 8, v21);
    if (v22)
    {
      v23._countAndFlagsBits = 0x4149545241503B2FLL;
      v23._object = 0xEA00000000003D4CLL;
      result = ByteBuffer._setStringSlowpath(_:at:)(v23, v21);
    }

    v24 = result;
    v25 = *(v2 + 20);
    v14 = __CFADD__(v25, result);
    v26 = v25 + result;
    if (v14)
    {
      goto LABEL_20;
    }

    *(v2 + 20) = v26;
    result = sub_1003BE414(v18, v19, v20 & 1);
    v17 = v24 + result;
    if (__OFADD__(v24, result))
    {
LABEL_21:
      __break(1u);
      return result;
    }
  }

  result = v6 + v17;
  if (__OFADD__(v6, v17))
  {
    goto LABEL_18;
  }

  return result;
}

BOOL _s12NIOIMAPCore211MessagePathV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *(a1 + 4);
  v5 = *(a1 + 20);
  v6 = *(a2 + 16);
  v7 = *(a2 + 20);
  v8 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v8 && (sub_1004A6D34() & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if ((v7 & 1) == 0)
    {
      return 0;
    }

LABEL_11:
    if (*(a2 + 24) == *(a1 + 6))
    {
      v10 = a1[5];
      v11 = *(a2 + 40);
      if (v10)
      {
        if (!v11 || (a1[4] != *(a2 + 32) || v10 != v11) && (sub_1004A6D34() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v11)
      {
        return 0;
      }

      v12 = *(a2 + 65);
      if ((*(a1 + 65) & 1) == 0)
      {
        if ((*(a2 + 65) & 1) != 0 || a1[6] != *(a2 + 48))
        {
          return 0;
        }

        v12 = *(a2 + 64);
        if ((a1[8] & 1) == 0)
        {
          return (*(a2 + 64) & 1) == 0 && a1[7] == *(a2 + 56);
        }
      }

      if (v12)
      {
        return 1;
      }
    }

    return 0;
  }

  result = 0;
  if ((v7 & 1) == 0 && v4 == v6)
  {
    goto LABEL_11;
  }

  return result;
}

unint64_t sub_10045A450()
{
  result = qword_1005DD000;
  if (!qword_1005DD000)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MessagePath, &type metadata for MessagePath, v0, v1);
    atomic_store(result, &qword_1005DD000);
  }

  return result;
}

uint64_t sub_10045A4A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 66))
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

uint64_t sub_10045A4EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 66) = 1;
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

    *(result + 66) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t MessagePath.ByteRange.range.setter(uint64_t result, uint64_t a2, char a3)
{
  *v3 = result;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3 & 1;
  return result;
}

unint64_t sub_10045A564()
{
  result = qword_1005DD008;
  if (!qword_1005DD008)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MessagePath.ByteRange, &type metadata for MessagePath.ByteRange, v0, v1);
    atomic_store(result, &qword_1005DD008);
  }

  return result;
}

uint64_t String.init(_:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  swift_beginAccess();
  v3 = sub_1004A58D4();

  return v3;
}

uint64_t sub_10045A660@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = ByteBufferAllocator.buffer(string:)(*a1, a1[1], j__malloc, j__realloc, sub_100127C74, sub_100127C84);
  v5 = v4;
  v7 = v6;

  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 20) = WORD2(v7);
  *(a2 + 22) = BYTE6(v7);
  return result;
}

unint64_t sub_10045A718()
{
  result = qword_1005DD010;
  if (!qword_1005DD010)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MetadataEntryName, &type metadata for MetadataEntryName, v0, v1);
    atomic_store(result, &qword_1005DD010);
  }

  return result;
}

unint64_t sub_10045A770()
{
  result = qword_1005DD018;
  if (!qword_1005DD018)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MetadataEntryName, &type metadata for MetadataEntryName, v0, v1);
    atomic_store(result, &qword_1005DD018);
  }

  return result;
}

unint64_t sub_10045A7C8()
{
  result = qword_1005DD020;
  if (!qword_1005DD020)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MetadataEntryName, &type metadata for MetadataEntryName, v0, v1);
    atomic_store(result, &qword_1005DD020);
  }

  return result;
}

void MetadataOption.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ParameterValue(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C9C0(&qword_1005D7F50, &unk_100502FF0);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - v9;
  v11 = sub_10000C9C0(&qword_1005DBCA8, &unk_100504BF0);
  __chkstk_darwin(v11);
  v13 = &v19 - v12;
  v14 = type metadata accessor for MetadataOption(0);
  __chkstk_darwin(v14);
  v16 = (&v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10045B1E4(v2, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1004A6EB4(1uLL);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    }

    else
    {
      sub_1003E05A4(v16, v13);
      sub_1004A6EB4(2uLL);
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      sub_1003E0614(&v13[*(v11 + 52)], v10);
      if ((*(v5 + 48))(v10, 1, v4) == 1)
      {
        sub_1004A6EC4(0);
      }

      else
      {
        sub_1002FC114(v10, v7);
        sub_1004A6EC4(1u);
        ParameterValue.hash(into:)(a1);
        sub_10045B34C(v7, type metadata accessor for ParameterValue);
      }

      sub_100025F40(v13, &qword_1005DBCA8, &unk_100504BF0);
    }
  }

  else
  {
    v18 = *v16;
    sub_1004A6EB4(0);
    sub_1004A6EB4(v18);
  }
}

Swift::Int MetadataOption.hashValue.getter()
{
  sub_1004A6E94();
  MetadataOption.hash(into:)(v1);
  return sub_1004A6F14();
}

Swift::Int sub_10045AB74(uint64_t a1)
{
  sub_1004A6E94();
  MetadataOption.hash(into:)(v2);
  return sub_1004A6F14();
}

unint64_t sub_10045ABB0(uint64_t a1)
{
  v3 = sub_10000C9C0(&qword_1005DBCA8, &unk_100504BF0);
  __chkstk_darwin(v3 - 8);
  v5 = (v24 - v4);
  v6 = type metadata accessor for MetadataOption(0);
  __chkstk_darwin(v6);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10045B1E4(a1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      return sub_100487C1C(*v8);
    }

    else
    {
      sub_1003E05A4(v8, v5);
      v23 = sub_10049EB14(v5);
      sub_100025F40(v5, &qword_1005DBCA8, &unk_100504BF0);
      return v23;
    }
  }

  else
  {
    v11 = *v8;
    v25 = 0x20455A495358414DLL;
    v26 = 0xE800000000000000;
    v24[1] = v11;
    v27._countAndFlagsBits = sub_1004A6CE4();
    sub_1004A5994(v27);
    v12 = v1;

    v14 = v25;
    v13 = v26;
    v15 = *(v1 + 20);
    v16 = sub_1002F178C(v25, v26, v12 + 8, *(v12 + 20));
    if (v17)
    {
      v18._countAndFlagsBits = v14;
      v18._object = v13;
      v16 = ByteBuffer._setStringSlowpath(_:at:)(v18, v15);
      v12 = v1;
    }

    v19 = v16;

    v20 = *(v12 + 20);
    result = v19;
    v21 = __CFADD__(v20, v19);
    v22 = v20 + v19;
    if (v21)
    {
      __break(1u);
    }

    else
    {
      *(v12 + 20) = v22;
    }
  }

  return result;
}

BOOL _s12NIOIMAPCore214MetadataOptionO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005DBCA8, &unk_100504BF0);
  __chkstk_darwin(v4 - 8);
  v6 = (&v28 - v5);
  v7 = type metadata accessor for MetadataOption(0);
  __chkstk_darwin(v7);
  v9 = (&v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v12 = &v28 - v11;
  __chkstk_darwin(v13);
  v15 = (&v28 - v14);
  v16 = sub_10000C9C0(&qword_1005DD0D8, &qword_100508F18);
  __chkstk_darwin(v16 - 8);
  v18 = &v28 - v17;
  v20 = *(v19 + 56);
  sub_10045B1E4(a1, &v28 - v17);
  sub_10045B1E4(a2, &v18[v20]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_10045B1E4(v18, v12);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        if (*v12)
        {
          if (*v12 == 1)
          {
            v22 = 0xE100000000000000;
            v23 = 49;
            if (!v18[v20])
            {
LABEL_22:
              v26 = 0xE100000000000000;
              if (v23 != 48)
              {
                goto LABEL_27;
              }

LABEL_25:
              if (v22 == v26)
              {

LABEL_28:
                sub_10045B34C(v18, type metadata accessor for MetadataOption);
                return 1;
              }

              goto LABEL_27;
            }
          }

          else
          {
            v22 = 0xE800000000000000;
            v23 = 0x7974696E69666E69;
            if (!v18[v20])
            {
              goto LABEL_22;
            }
          }
        }

        else
        {
          v22 = 0xE100000000000000;
          v23 = 48;
          if (!v18[v20])
          {
            goto LABEL_22;
          }
        }

        if (v18[v20] == 1)
        {
          v26 = 0xE100000000000000;
          if (v23 == 49)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v26 = 0xE800000000000000;
          if (v23 == 0x7974696E69666E69)
          {
            goto LABEL_25;
          }
        }

LABEL_27:
        v27 = sub_1004A6D34();

        if (v27)
        {
          goto LABEL_28;
        }

        sub_10045B34C(v18, type metadata accessor for MetadataOption);
        return 0;
      }

LABEL_14:
      sub_100025F40(v18, &qword_1005DD0D8, &qword_100508F18);
      return 0;
    }

    sub_10045B1E4(v18, v9);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_100025F40(v9, &qword_1005DBCA8, &unk_100504BF0);
      goto LABEL_14;
    }

    sub_1003E05A4(&v18[v20], v6);
    v24 = sub_100436BFC(v9, v6);
    sub_100025F40(v6, &qword_1005DBCA8, &unk_100504BF0);
    sub_100025F40(v9, &qword_1005DBCA8, &unk_100504BF0);
  }

  else
  {
    sub_10045B1E4(v18, v15);
    if (swift_getEnumCaseMultiPayload())
    {
      goto LABEL_14;
    }

    v24 = *v15 == *&v18[v20];
  }

  sub_10045B34C(v18, type metadata accessor for MetadataOption);
  return v24;
}

uint64_t type metadata accessor for MetadataOption(uint64_t a1)
{
  result = qword_1005DD0A0;
  if (!qword_1005DD0A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10045B1E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetadataOption(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_10045B290(uint64_t a1)
{
  sub_1003E0740(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

uint64_t sub_10045B304(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_10045B34C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void MetadataResponse.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = v2[2];
  if (v4 < 0)
  {
    v8 = *v2;
    sub_1004A6EB4(1uLL);
    v9 = *(v8 + 16);
    sub_1004A6EB4(v9);
    if (v9)
    {
      v10 = v8 + 54;
      do
      {
        v10 += 24;
        swift_beginAccess();
        sub_1004A6EA4();
        --v9;
      }

      while (v9);
    }

    v7 = v4 | (v4 << 32);
  }

  else
  {
    v5 = *(v2 + 8);
    v6 = v2[1];
    sub_1004A6EB4(0);
    sub_1003A1460(a1, v6, v4);
    v7 = v5 | (v5 << 32);
  }

  sub_1004A6EB4(v7);
}

Swift::Int MetadataResponse.hashValue.getter()
{
  sub_1004A6E94();
  v1 = v0[2];
  if (v1 < 0)
  {
    v5 = *v0;
    sub_1004A6EB4(1uLL);
    v6 = *(v5 + 16);
    sub_1004A6EB4(v6);
    if (v6)
    {
      v7 = v5 + 54;
      do
      {
        v7 += 24;
        swift_beginAccess();
        sub_1004A6EA4();
        --v6;
      }

      while (v6);
    }

    v4 = v1 | (v1 << 32);
  }

  else
  {
    v2 = *(v0 + 8);
    v3 = v0[1];
    sub_1004A6EB4(0);
    sub_1003A1460(v9, v3, v1);
    v4 = v2 | (v2 << 32);
  }

  sub_1004A6EB4(v4);
  return sub_1004A6F14();
}

Swift::Int sub_10045B5B0(uint64_t a1)
{
  sub_1004A6E94();
  MetadataResponse.hash(into:)(v2);
  return sub_1004A6F14();
}

uint64_t sub_10045B5EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s12NIOIMAPCore216MetadataResponseO21__derived_enum_equalsySbAC_ACtFZ_0(v5, v7) & 1;
}

void sub_10045B638(uint64_t *a1)
{
  v2 = 0x415441444154454DLL;
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  if (v5 < 0)
  {
    goto LABEL_13;
  }

  v6 = a1[3];
  v7 = *(v1 + 20);
  v8 = sub_1002F178C(0x415441444154454DuLL, 0xE900000000000020, v1 + 8, v7);
  if (v9)
  {
    v10._countAndFlagsBits = 0x415441444154454DLL;
    v10._object = 0xE900000000000020;
    v8 = ByteBuffer._setStringSlowpath(_:at:)(v10, v7);
  }

  v11 = v8;
  v12 = *(v1 + 20);
  v13 = __CFADD__(v12, v8);
  v14 = v12 + v8;
  if (v13)
  {
    __break(1u);
    goto LABEL_24;
  }

  *(v1 + 20) = v14;
  sub_100441F24(v6);
  v16 = v11 + v15;
  if (__OFADD__(v11, v15))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v2 = *(v1 + 20);
  v17 = sub_1002F178C(0x20uLL, 0xE100000000000000, v1 + 8, v2);
  if (v18)
  {
    v19._countAndFlagsBits = 32;
    v19._object = 0xE100000000000000;
    v17 = ByteBuffer._setStringSlowpath(_:at:)(v19, v2);
  }

  v20 = *(v1 + 20);
  v13 = __CFADD__(v20, v17);
  v21 = v20 + v17;
  if (v13)
  {
    goto LABEL_25;
  }

  *(v1 + 20) = v21;
  v22 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  sub_1003E6AB8(v3, v4, v5);
  if (!__OFADD__(v22, v23))
  {
    return;
  }

  __break(1u);
LABEL_13:
  v24 = *(v1 + 20);
  v25 = sub_1002F178C(v2, 0xE900000000000020, v1 + 8, v24);
  if (v26)
  {
    v27._countAndFlagsBits = v2;
    v27._object = 0xE900000000000020;
    v25 = ByteBuffer._setStringSlowpath(_:at:)(v27, v24);
  }

  v28 = v25;
  v29 = *(v1 + 20);
  v13 = __CFADD__(v29, v25);
  v30 = v29 + v25;
  if (v13)
  {
    goto LABEL_27;
  }

  *(v1 + 20) = v30;
  sub_100441F24(v4);
  v32 = __OFADD__(v28, v31);
  v33 = v28 + v31;
  if (v32)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v34 = *(v1 + 20);
  v35 = sub_1002F178C(0x20uLL, 0xE100000000000000, v1 + 8, v34);
  if (v36)
  {
    v37._countAndFlagsBits = 32;
    v37._object = 0xE100000000000000;
    v35 = ByteBuffer._setStringSlowpath(_:at:)(v37, v34);
  }

  v38 = *(v1 + 20);
  v13 = __CFADD__(v38, v35);
  v39 = v38 + v35;
  if (v13)
  {
    goto LABEL_29;
  }

  *(v1 + 20) = v39;
  if (__OFADD__(v33, v35))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (__OFADD__(v33 + v35, sub_1003E7120(v3)))
  {
LABEL_31:
    __break(1u);
  }
}