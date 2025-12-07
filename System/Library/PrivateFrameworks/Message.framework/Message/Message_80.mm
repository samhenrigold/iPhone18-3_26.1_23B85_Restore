uint64_t get_enum_tag_for_layout_string_12NIOIMAPCore28EnvelopeVSg(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B0CF80C8(uint64_t a1, int a2)
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

uint64_t sub_1B0CF8110(uint64_t result, int a2, int a3)
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

void sub_1B0CF8228(uint64_t a1)
{
  sub_1B0CF82BC();
  if (v1 <= 0x3F)
  {
    sub_1B0CF830C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B0CF82BC()
{
  if (!qword_1EB6DA320)
  {
    v0 = sub_1B0E45D88();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6DA320);
    }
  }
}

void sub_1B0CF830C(uint64_t a1)
{
  if (!qword_1EB6DD1A0)
  {
    type metadata accessor for MessageData.BodyData(255);
    v1 = sub_1B0E45D88();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB6DD1A0);
    }
  }
}

uint64_t sub_1B0CF8364(uint64_t a1)
{
  v2 = type metadata accessor for MessageData.BodyData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B0CF83C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageData.BodyData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0CF8424(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t MessageData.BodyData.underlying.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B0E443C8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MessageData.BodyData.underlying.setter(uint64_t a1)
{
  v3 = sub_1B0E443C8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t MessageData.BodyData.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B0E443C8();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_1B0CF85EC(uint64_t a1)
{
  v1 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
  if (v1 != _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0())
  {
    return 0;
  }

  sub_1B0E443C8();
  sub_1B075CEE0();
  sub_1B0E45668();
  v2 = sub_1B0E456C8();
  if (v5 == v4)
  {
    return 1;
  }

  MEMORY[0x1EEE9AC00](v2);
  sub_1B0E44328();
  return v5;
}

void ByteBuffer.init(_:)(uint64_t a1)
{
  v2 = sub_1B0E443C8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
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
      *(v19 + 48) = sub_1B0B815B8;
      *(v19 + 56) = sub_1B0439080;
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
      sub_1B0CF8364(a1);
      (*(v3 + 8))(v6, v2);
      return;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

uint64_t MessageData.BodyData.init(_:)(uint64_t a1, unsigned int a2, unint64_t a3)
{
  swift_beginAccess();
  sub_1B0E44358();
}

uint64_t type metadata accessor for MessageData.BodyData(uint64_t a1)
{
  result = qword_1EB6DD1A8;
  if (!qword_1EB6DD1A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Namespace.prefix.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Namespace.separator.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t Namespace.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 16);
  MEMORY[0x1B2728D70](v5);
  if (v5)
  {
    v6 = a2 + 32;
    do
    {
      ++v6;
      sub_1B0E46C68();
      --v5;
    }

    while (v5);
  }

  return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t Namespace.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B0E46C28();
  v4 = *(a1 + 16);
  MEMORY[0x1B2728D70](v4);
  if (v4)
  {
    v5 = a1 + 32;
    do
    {
      ++v5;
      sub_1B0E46C68();
      --v4;
    }

    while (v4);
  }

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CF8C7C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  MEMORY[0x1B2728D70](v3);
  if (v3)
  {
    v4 = v2 + 32;
    do
    {
      ++v4;
      sub_1B0E46C68();
      --v3;
    }

    while (v3);
  }

  return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1B0CF8CF8(uint64_t a1)
{
  v2 = *v1;
  sub_1B0E46C28();
  v3 = *(v2 + 16);
  MEMORY[0x1B2728D70](v3);
  if (v3)
  {
    v4 = v2 + 32;
    do
    {
      ++v4;
      sub_1B0E46C68();
      --v3;
    }

    while (v3);
  }

  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1B0E46CB8();
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
    sub_1B070B280(&v12, &v11);

    v9 = MailboxName.init(_:)(v8, v3, v4 | (v5 << 32) | (v6 << 48));
    v1 = _s13IMAP2Protocol9NamespaceV6prefix9separatorACSays5UInt8VG_SJtcfC_0(v9, v2, v1);
    sub_1B0CF98D4(a1);
  }

  else
  {
    sub_1B0CF98D4(a1);
  }

  return v1;
}

uint64_t Namespace.contains(_:)(uint64_t a1, unsigned int a2, _BOOL8 a3)
{
  if (sub_1B0CF8EF4(a3, a1))
  {
    return 1;
  }

  v6 = MailboxName.inbox.unsafeMutableAddressor();
  if ((a2 | (a2 << 32)) != (*(v6 + 2) | (*(v6 + 2) << 32)))
  {
    return 0;
  }

  v7 = *v6;

  return sub_1B04520BC(a1, v7);
}

BOOL sub_1B0CF8EF4(_BOOL8 result, uint64_t a2)
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

uint64_t Namespace.addPrefix(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v3 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0C31A28(v3);

  return MailboxName.init(_:)(a3);
}

uint64_t Namespace.addPrefix(to:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = HIDWORD(a2);
  v10 = sub_1B0B9C9AC(BYTE4(a2));
  if (!v11)
  {
    goto LABEL_9;
  }

  if (v10 == a4 && v11 == a5)
  {

    goto LABEL_6;
  }

  v12 = sub_1B0E46A78();

  if ((v12 & 1) == 0)
  {
LABEL_9:
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return a1;
  }

LABEL_6:
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v13 = _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0C31A28(v13);
  a1 = MailboxName.init(_:)(a3);
  sub_1B0B9C9AC(v9);
  if (!v14)
  {
    return a1;
  }

  if ((sub_1B0E447F8() & 0x100) == 0)
  {
    sub_1B0E447F8();

    return a1;
  }

  sub_1B0CF9928();
  swift_allocError();
  *v16 = 0xD000000000000029;
  v16[1] = 0x80000001B0F2F3D0;
  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t Namespace.removePrefix(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  if (!sub_1B0CF8EF4(a3, a1))
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return v4;
  }

  v5 = *(a3 + 16);
  v6 = *(v4 + 16);
  if (v6 >= v5)
  {
    v7 = *(a3 + 16);
  }

  else
  {
    v7 = *(v4 + 16);
  }

  if (v5)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  sub_1B0E46AD8();
  swift_unknownObjectRetain_n();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = MEMORY[0x1E69E7CC0];
  }

  v10 = *(v9 + 16);

  if (v10 != v6 - v8)
  {
    swift_unknownObjectRelease();
    sub_1B0C14438(v4, v4 + 32, v8, (2 * v6) | 1);
    v11 = v13;
    goto LABEL_13;
  }

  v11 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v11)
  {
    v11 = MEMORY[0x1E69E7CC0];
LABEL_13:
    swift_unknownObjectRelease();
  }

  return MailboxName.init(_:)(v11);
}

uint64_t Namespace.removePrefix(_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = HIDWORD(a2);
  v10 = sub_1B0B9C9AC(BYTE4(a2));
  if (!v11)
  {
    goto LABEL_20;
  }

  if (v10 == a4 && v11 == a5)
  {

    goto LABEL_6;
  }

  v12 = sub_1B0E46A78();

  if ((v12 & 1) == 0)
  {
LABEL_20:
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    return a1;
  }

LABEL_6:
  if (sub_1B0CF8EF4(a3, a1))
  {
    v13 = *(a3 + 16);
    v14 = *(a1 + 16);
    if (v14 >= v13)
    {
      v15 = *(a3 + 16);
    }

    else
    {
      v15 = *(a1 + 16);
    }

    if (v13)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    sub_1B0E46AD8();
    swift_unknownObjectRetain_n();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v17 = swift_dynamicCastClass();
    if (!v17)
    {
      swift_unknownObjectRelease();
      v17 = MEMORY[0x1E69E7CC0];
    }

    v18 = *(v17 + 16);

    if (v18 == v14 - v16)
    {
      v19 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (v19)
      {
LABEL_19:
        a1 = MailboxName.init(_:)(v19);
        goto LABEL_22;
      }

      v19 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      swift_unknownObjectRelease();
      sub_1B0C14438(a1, a1 + 32, v16, (2 * v14) | 1);
      v19 = v22;
    }

    swift_unknownObjectRelease();
    goto LABEL_19;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
LABEL_22:
  sub_1B0B9C9AC(v9);
  if (!v20)
  {
    return a1;
  }

  if ((sub_1B0E447F8() & 0x100) == 0)
  {
    sub_1B0E447F8();

    return a1;
  }

  sub_1B0CF9928();
  swift_allocError();
  *v23 = 0xD000000000000029;
  v23[1] = 0x80000001B0F2F3D0;
  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t Namespace.isNotes(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a1;
  if (sub_1B0CF8EF4(a3, a1))
  {
    v9 = *(a3 + 16);
    v10 = *(v8 + 16);
    if (v10 >= v9)
    {
      v11 = *(a3 + 16);
    }

    else
    {
      v11 = *(v8 + 16);
    }

    if (v9)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    sub_1B0E46AD8();
    swift_unknownObjectRetain_n();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v13 = swift_dynamicCastClass();
    if (!v13)
    {
      swift_unknownObjectRelease();
      v13 = MEMORY[0x1E69E7CC0];
    }

    v14 = *(v13 + 16);

    if (v14 == v10 - v12)
    {
      v15 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (v15)
      {
LABEL_14:
        v8 = MailboxName.init(_:)(v15);
        goto LABEL_16;
      }

      v15 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      swift_unknownObjectRelease();
      sub_1B0C14438(v8, v8 + 32, v12, (2 * v10) | 1);
      v15 = v19;
    }

    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
LABEL_16:
  if (sub_1B03A7FD8(0x7365746F4EuLL, 0xE500000000000000, v8))
  {

    return 1;
  }

  else
  {
    MEMORY[0x1B2726E80](a4, a5);
    v17 = *(v8 + 16);
    if (v17 >= 5)
    {
      v17 = 5;
    }

    v18 = sub_1B0CF997C(0x7365746F4EuLL, 0xE500000000000000, v8 + 32, 0, 2 * v17 + 1);

    swift_unknownObjectRelease();
    return v18 & 1;
  }
}

uint64_t _s13IMAP2Protocol9NamespaceV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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
      return sub_1B0E46A78();
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

  if (a2 == 2573 && a3 == 0xE200000000000000 || (sub_1B0E46A78() & 1) != 0)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v6 = 10;
    goto LABEL_11;
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  if ((sub_1B0E44818() & 1) == 0)
  {
    goto LABEL_20;
  }

  result = sub_1B0C04CF0(a2, a3);
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

  result = sub_1B0C04CF0(a2, a3);
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
        v5 = sub_1B0C0C114(0, *(v5 + 2) + 1, 1, v5);
      }

      v11 = *(v5 + 2);
      v10 = *(v5 + 3);
      if (v11 >= v10 >> 1)
      {
        v5 = sub_1B0C0C114((v10 > 1), v11 + 1, 1, v5);
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

unint64_t sub_1B0CF9928()
{
  result = qword_1EB6E64C8;
  if (!qword_1EB6E64C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E64C8);
  }

  return result;
}

unint64_t sub_1B0CF997C(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
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
      v25 = sub_1B0A6D6C4(result, a1, a2);
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
      v26 = sub_1B0E44E08();
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
          v23 = sub_1B0E46368();
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
        result = sub_1B0A6D6C4(result, a1, a2);
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

    result = sub_1B0E44DD8();
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

unint64_t sub_1B0CF9BB8()
{
  result = qword_1EB6E64D0;
  if (!qword_1EB6E64D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E64D0);
  }

  return result;
}

uint64_t sub_1B0CF9C1C(uint64_t a1)
{
  v3 = type metadata accessor for SelectParameter(0);
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
    return v8;
  }

  v28 = v1;
  v36 = MEMORY[0x1E69E7CC0];
  v30 = v4;
  sub_1B0CEF5DC(0, v7, 0);
  v8 = v36;
  v9 = v30 + 56;
  result = sub_1B0E460B8();
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
    v20 = *(v8 + 16);
    v19 = *(v8 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_1B0CEF5DC((v19 > 1), v20 + 1, 1);
      v8 = v36;
    }

    *(v8 + 16) = v20 + 1;
    result = sub_1B0CFD0B8(v18, v8 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v20, type metadata accessor for SelectParameter);
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
          result = sub_1B0425168(v11, v35, 0);
          v12 = v30;
          v14 = __clz(__rbit64(v26)) + v23;
          goto LABEL_4;
        }
      }

      result = sub_1B0425168(v11, v35, 0);
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
  return sub_1B0CFA5E8(sub_1B0CF244C, v5, a3 & 0x101FF, a4);
}

uint64_t ClientCommandEncoder.idle(tag:)@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v46 = a3;
  v47 = a1;
  v4 = a2 & 0x100;
  v5 = HIWORD(a2) & 1;
  v40 = type metadata accessor for CommandStreamPart(0);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B0E44B68();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v38 = type metadata accessor for TaggedCommand(0);
  MEMORY[0x1EEE9AC00](v38);
  v9 = (&v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = sub_1B0E443C8();
  v10 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v43 = &v37 - v13;
  v14 = ByteBufferAllocator.zeroCapacityWithDefaultAllocator.unsafeMutableAddressor();
  v15 = v14[1];
  v16 = qword_1B0EE7350[v3];
  v17 = *(v14 + 4) | (*(v14 + 10) << 32) | (*(v14 + 22) << 48);
  v39 = v4 << 24;
  v18 = v39 | v16;

  v41 = v5;
  CommandEncodeBuffer.init(buffer:options:encodedAtLeastOneCatenateElement:loggingMode:)(v19, v15, v17, v18 | 1, 0, v5, v54);
  *&v52[0] = sub_1B0D0D4B0(v47 & 0xFFFFFFFF000000FFLL);
  sub_1B0E44B48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E21D0, &unk_1B0EA2E70);
  sub_1B07B517C();
  v20 = sub_1B0E44B08();
  v22 = v21;

  if (v22)
  {
    v24 = v3;
    type metadata accessor for Command(0);
    swift_storeEnumTagMultiPayload();
    v9->_countAndFlagsBits = v20;
    v9->_object = v22;
    CommandEncodeBuffer.writeCommand(_:)(v9);
    sub_1B0CFD058(v9, type metadata accessor for TaggedCommand);
    EncodeBuffer.nextChunk()();
    swift_beginAccess();
    v25 = v43;
    sub_1B0E44358();

    v52[0] = v54[0];
    v52[1] = v54[1];
    v53[0] = v55[0];
    *(v53 + 9) = *(v55 + 9);
    sub_1B0CFBECC(v52);
    v26 = v14[1];
    v27 = *(v14 + 4) | (*(v14 + 10) << 32) | (*(v14 + 22) << 48);
    v28 = v39 | qword_1B0EE7350[v24];

    CommandEncodeBuffer.init(buffer:options:encodedAtLeastOneCatenateElement:loggingMode:)(v29, v26, v27, v28 | 1, 0, v41, v50);
    v30 = v42;
    swift_storeEnumTagMultiPayload();
    CommandEncodeBuffer.writeCommandStream(_:)(v30, v31);
    sub_1B0CFD058(v30, type metadata accessor for CommandStreamPart);
    EncodeBuffer.nextChunk()();
    swift_beginAccess();
    v32 = v44;
    sub_1B0E44358();

    v48[0] = v50[0];
    v48[1] = v50[1];
    v49[0] = v51[0];
    *(v49 + 9) = *(v51 + 9);
    sub_1B0CFBECC(v48);
    v34 = v45;
    v33 = v46;
    (*(v10 + 16))(v46, v25, v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E63C0, &qword_1B0EE61E8);
    v35 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1B0EC1E70;
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

uint64_t sub_1B0CFA488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for CommandStreamPart(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B0CFC5A8(a2 & 0xFFFFFFFF000000FFLL, a3);
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = v9 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v12 = *(v6 + 72);
    do
    {
      sub_1B0CFD120(v11, v8, type metadata accessor for CommandStreamPart);
      CommandEncodeBuffer.writeCommandStream(_:)(v8, v13);
      sub_1B0CFD058(v8, type metadata accessor for CommandStreamPart);
      v11 += v12;
      --v10;
    }

    while (v10);
  }
}

uint64_t sub_1B0CFA5E8@<X0>(uint64_t (*a1)(__int128 *)@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t (*a4)(__int128 *)@<X8>)
{
  v4 = a3;
  v32 = a2;
  v33 = a1;
  v6 = HIWORD(a3) & 1;
  v7 = sub_1B0E443C8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = ByteBufferAllocator.zeroCapacityWithDefaultAllocator.unsafeMutableAddressor();
  v12 = v11[1];
  v13 = qword_1B0EE7380[v4];
  v14 = qword_1B0EE7398[v4];
  v15 = *(v11 + 4) | (*(v11 + 10) << 32) | (*(v11 + 22) << 48);
  v16 = 0x100000001;
  if ((v4 & 0x100) == 0)
  {
    v16 = 1;
  }

  v17 = v16 | qword_1B0EE7368[v4];
  v18 = v13 | v14;

  CommandEncodeBuffer.init(buffer:options:encodedAtLeastOneCatenateElement:loggingMode:)(v19, v12, v15, v17 | v18, 0, v6, &v37);
  v33(&v37);
  v20 = EncodeBuffer.nextChunk()();
  v22 = v21;
  swift_beginAccess();
  sub_1B0E44358();
  v23 = *(type metadata accessor for ClientCommand.Encoded(0) + 20);
  v33 = a4;
  *(a4 + v23) = MEMORY[0x1E69E7CC0];
  if ((v22 & 0x100000000000000) != 0)
  {
    v24 = v23;
    v32 = v20;
    v25 = MEMORY[0x1E69E7CC0];
    do
    {
      EncodeBuffer.nextChunk()();
      v27 = v26;
      swift_beginAccess();
      sub_1B0E44358();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_1B0D05474(0, v25[2] + 1, 1, v25);
      }

      v29 = v25[2];
      v28 = v25[3];
      if (v29 >= v28 >> 1)
      {
        v25 = sub_1B0D05474((v28 > 1), v29 + 1, 1, v25);
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
    sub_1B0CFBECC(&v34);
  }

  else
  {
    v34 = v37;
    v35 = v38;
    v36[0] = v39[0];
    *(v36 + 9) = *(v39 + 9);
    sub_1B0CFBECC(&v34);
  }
}

uint64_t sub_1B0CFA934()
{
  result = Capability.init(_:)(0xD000000000000011, 0x80000001B0F2D460);
  static Capability.applePushService = result;
  *algn_1EB7380E8 = v1;
  qword_1EB7380F0 = v2;
  byte_1EB7380F8 = v3 & 1;
  return result;
}

uint64_t *Capability.applePushService.unsafeMutableAddressor()
{
  if (qword_1EB6DEA50 != -1)
  {
    swift_once();
  }

  return &static Capability.applePushService;
}

uint64_t static Capability.applePushService.getter()
{
  if (qword_1EB6DEA50 != -1)
  {
    swift_once();
  }

  v0 = static Capability.applePushService;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v0;
}

void sub_1B0CFAA4C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v81[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v81[-v8];
  v10 = type metadata accessor for ClientCommand(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v81[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B0CFD120(a1, v12, type metadata accessor for ClientCommand);
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
      v37 = sub_1B0CF9C1C(*(v12 + 2));

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
      *(a2 + 16) = MEMORY[0x1E69E7CC0];
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
      v42 = sub_1B0D05B20(MEMORY[0x1E69E7CC0]);
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
        v71 = ByteBufferAllocator.buffer(string:)(0, 0xE000000000000000, j__malloc, j__realloc, sub_1B0B815B8, sub_1B0439080);
        v60 = MailboxName.init(_:)(v71, v73, v72 & 0xFFFFFFFFFFFFFFLL);
        v63 = v74;
      }

      if (!v61)
      {
        v61 = MEMORY[0x1E69E7CC0];
      }

      sub_1B0CFC440(v61, v13);
      v76 = v75;
      v78 = v77;
      v80 = v79;

      LOBYTE(v82) = 0;
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

      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4BC0, &unk_1B0ED8640);
      v58 = *(v57 + 64);
      sub_1B0391D50(*&v12[*(v57 + 80)], *&v12[*(v57 + 80) + 8]);
      v59 = type metadata accessor for Command(0);
      (*(*(v59 - 8) + 56))(a2, 1, 1, v59);
      sub_1B0398EFC(&v12[v58], &unk_1EB6E2990, &qword_1B0E9B060);
      return;
    case 0xBu:
      *a2 = *v12;
      *(a2 + 8) = xmmword_1B0EE72C0;
      *(a2 + 24) = MEMORY[0x1E69E7CC0];
      goto LABEL_26;
    case 0xCu:
      v27 = *v12;
      v26 = *(v12 + 1);
      if (!*(v26 + 16))
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EB8, &qword_1B0EC2020);
        type metadata accessor for SearchReturnOption(0);
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_1B0EC1E70;
        swift_storeEnumTagMultiPayload();
      }

      *a2 = v27;
      *(a2 + 8) = xmmword_1B0EE72C0;
      *(a2 + 24) = v26;
      goto LABEL_26;
    case 0xDu:
      *a2 = *v12;
      *(a2 + 8) = xmmword_1B0EE72C0;
      *(a2 + 24) = MEMORY[0x1E69E7CC0];
      goto LABEL_26;
    case 0xEu:
      v24 = *v12;
      v23 = *(v12 + 1);
      if (!*(v23 + 16))
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3EB8, &qword_1B0EC2020);
        type metadata accessor for SearchReturnOption(0);
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_1B0EC1E70;
        swift_storeEnumTagMultiPayload();
      }

      *a2 = v24;
      *(a2 + 8) = xmmword_1B0EE72C0;
      *(a2 + 24) = v23;
      goto LABEL_26;
    case 0xFu:
      v30 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FE0, &unk_1B0EC26C0) + 48)];
      v31 = *v30;
      v32 = *(v30 + 1);
      v33 = v30[16];
      sub_1B03C60A4(v12, v9, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      if (v33)
      {
        v34 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E64E0, &unk_1B0EE7330);
        v69 = *(type metadata accessor for FetchModifier(0) - 8);
        v70 = (*(v69 + 80) + 32) & ~*(v69 + 80);
        v34 = swift_allocObject();
        *(v34 + 16) = xmmword_1B0EC1E70;
        *(v34 + v70) = v32;
        swift_storeEnumTagMultiPayload();
      }

      static Command.uidFetch(messages:attributes:modifiers:)(v9, v31, v34, a2);

      sub_1B0398EFC(v9, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      return;
    case 0x10u:
      v18 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4A00, &qword_1B0ECD770) + 48)];
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v18 + 1);
      sub_1B03C60A4(v12, v6, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v22 = 256;
      if (!v20)
      {
        v22 = 0;
      }

      static Command.uidStore(messages:modifiers:data:)(v6, MEMORY[0x1E69E7CC0], v22 | v19, v21, a2);

      sub_1B0398EFC(v6, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      return;
    case 0x11u:
      v47 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E49F8, &qword_1B0EC7000) + 48)];
      v48 = *v47;
      v49 = *(v47 + 2);
      sub_1B03C60A4(v12, v6, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      static Command.uidCopy(messages:mailbox:)(v6, v48, v49, a2);
      goto LABEL_29;
    case 0x12u:
      v54 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E49F8, &qword_1B0EC7000) + 48)];
      v55 = *v54;
      v56 = *(v54 + 2);
      sub_1B03C60A4(v12, v6, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      static Command.uidMove(messages:mailbox:)(v6, v55, v56, a2);
LABEL_29:

      sub_1B0398EFC(v6, &unk_1EB6E1AF0, &unk_1B0E9AF40);
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
      v82 = *v12;
      v83 = v50;
      v51 = *(v12 + 3);
      v84 = *(v12 + 2);
      v85 = v51;
      v52 = sub_1B0CFB608();
      sub_1B0A1C37C();
      *a2 = 0xD000000000000011;
      *(a2 + 8) = 0x80000001B0F2D460;
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
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
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

uint64_t *sub_1B0CFB608()
{
  v1 = v0;
  sub_1B0E46298();
  MEMORY[0x1B2726E80](0x737265762D737061, 0xEC000000206E6F69);
  LODWORD(v73) = *v0;
  v2 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v2);

  MEMORY[0x1B2726E80](0xD000000000000010, 0x80000001B0F2F440);
  v3 = sub_1B0CFBCD8(*(v0 + 8));
  MEMORY[0x1B2726E80](v3);

  MEMORY[0x1B2726E80](0xD000000000000012, 0x80000001B0F2F460);
  v4 = sub_1B0CFBCD8(*(v0 + 24));
  MEMORY[0x1B2726E80](v4);

  MEMORY[0x1B2726E80](0x6275732D73706120, 0xEE00206369706F74);
  v5 = sub_1B0CFBCD8(*(v0 + 40));
  MEMORY[0x1B2726E80](v5);

  MEMORY[0x1B2726E80](0x786F626C69616D20, 0xEC00000028207365);
  v6 = ByteBufferAllocator.buffer(string:)(0, 0xE000000000000000, j__malloc, j__realloc, sub_1B0B815B8, sub_1B0439080);
  v8 = v7;
  v10 = v9;

  v11 = sub_1B0D054C4(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v13 = *(v11 + 2);
  v12 = *(v11 + 3);
  v14 = v13 + 1;
  if (v13 >= v12 >> 1)
  {
LABEL_44:
    v11 = sub_1B0D054C4((v12 > 1), v14, 1, v11);
  }

  *(v11 + 2) = v14;
  v15 = &v11[24 * v13];
  *(v15 + 4) = v6 | 0x8000000000000000;
  *(v15 + 5) = v8;
  v15[54] = BYTE6(v10);
  *(v15 + 26) = WORD2(v10);
  *(v15 + 12) = v10;
  v16 = *(v1 + 56);
  v17 = *(v16 + 16);
  if (!v17)
  {
LABEL_37:
    v57 = v11;
    v58 = ByteBufferAllocator.buffer(string:)(0x29uLL, 0xE100000000000000, j__malloc, j__realloc, sub_1B0B815B8, sub_1B0439080);
    v61 = v57;
    v62 = *(v57 + 2);
    v63 = *(v61 + 3);
    if (v62 >= v63 >> 1)
    {
      v65 = v58;
      v66 = v59;
      v67 = v60;
      v68 = sub_1B0D054C4((v63 > 1), v62 + 1, 1, v61);
      v59 = v66;
      v60 = v67;
      v61 = v68;
      v58 = v65;
    }

    *(v61 + 2) = v62 + 1;
    v64 = &v61[24 * v62];
    *(v64 + 4) = v58 | 0x8000000000000000;
    *(v64 + 5) = v59;
    *(v64 + 12) = v60;
    v64[54] = BYTE6(v60);
    *(v64 + 26) = WORD2(v60);
    return v61;
  }

  v18 = 0;
  v1 = 0;
  v69 = v16 + 32;
  while (1)
  {
    v71 = v17;
    v72 = v11;
    v8 = *(v69 + v18);
    if (!v18)
    {
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v36 = *(v8 + 16);
      if (!v36)
      {
        goto LABEL_17;
      }

      goto LABEL_12;
    }

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    result = malloc(1uLL);
    if (!result)
    {
      break;
    }

    v10 = result;
    type metadata accessor for ByteBuffer._Storage();
    v20 = swift_allocObject();
    *(v20 + 16) = 1;
    *(v20 + 24) = v10;
    *(v20 + 32) = j__malloc;
    *(v20 + 40) = j__realloc;
    *(v20 + 48) = sub_1B0B815B8;
    *(v20 + 56) = sub_1B0439080;
    v73 = v20;
    v74 = 0;
    v75 = 1;
    v76 = 0;
    v77 = 0;
    v21 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, &v73, 0);
    if (v22)
    {
      v10 = &v73;
      v23._countAndFlagsBits = 32;
      v23._object = 0xE100000000000000;
      v21 = ByteBuffer._setStringSlowpath(_:at:)(v23, 0);
    }

    v24 = v72;
    v12 = HIDWORD(v74);
    v25 = (HIDWORD(v74) + v21);
    if (__CFADD__(HIDWORD(v74), v21))
    {
      goto LABEL_43;
    }

    v70 = v1;
    v26 = v18;
    v27 = v8;
    v28 = v73;
    v29 = v74;
    v30 = v75;
    v31 = v76;
    v32 = v77;
    v34 = *(v72 + 2);
    v33 = *(v72 + 3);
    v10 = (v34 + 1);
    if (v34 >= v33 >> 1)
    {
      v24 = sub_1B0D054C4((v33 > 1), v34 + 1, 1, v72);
    }

    *(v24 + 2) = v10;
    v72 = v24;
    v35 = &v24[24 * v34];
    *(v35 + 4) = v28 | 0x8000000000000000;
    *(v35 + 5) = v29 | (v25 << 32);
    v35[54] = v32;
    *(v35 + 26) = v31;
    *(v35 + 12) = v30;
    v8 = v27;
    v18 = v26;
    v1 = v70;
    v36 = *(v8 + 16);
    if (!v36)
    {
LABEL_17:
      v43 = ByteBufferAllocator.zeroCapacityWithDefaultAllocator.unsafeMutableAddressor();
      v44 = *(v43 + 2);
      v6 = *(v43 + 3);
      v42 = *(v43 + 4);
      v45 = *(v43 + 10);
      v46 = *(v43 + 22);

      goto LABEL_21;
    }

LABEL_12:
    if (v36)
    {
      v37 = (v36 - 1) | ((v36 - 1) >> 1) | (((v36 - 1) | ((v36 - 1) >> 1)) >> 2);
      v38 = v37 | (v37 >> 4) | ((v37 | (v37 >> 4)) >> 8);
      v39 = v38 | HIWORD(v38);
      v40 = __CFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        v42 = -1;
      }

      else
      {
        v42 = v41;
      }
    }

    else
    {
      v42 = 0;
    }

    result = malloc(v42);
    if (!result)
    {
      goto LABEL_46;
    }

    v10 = result;
    type metadata accessor for ByteBuffer._Storage();
    v47 = swift_allocObject();
    v44 = 0;
    v6 = 0;
    v45 = 0;
    v46 = 0;
    *(v47 + 16) = v42;
    *(v47 + 24) = v10;
    *(v47 + 32) = j__malloc;
    *(v47 + 40) = j__realloc;
    *(v47 + 48) = sub_1B0B815B8;
    *(v47 + 56) = sub_1B0439080;
LABEL_21:
    v73 = v47;
    v74 = __PAIR64__(v6, v44);
    v75 = v42;
    v76 = v45;
    v77 = v46;
    v14 = *(v8 + 16);
    v13 = (v6 + v14);
    if (__CFADD__(v6, v14))
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
      if (v13 >= v42)
      {
        v48 = v13 - v42;
      }

      else
      {
        v48 = 0;
      }

      v49 = sub_1B03904C0();
      v10 = &v73;
      ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v48, v49 & 1);
    }

    v12 = HIDWORD(v14);
    if (HIDWORD(v14))
    {
      goto LABEL_41;
    }

    v10 = &v73;
    ByteBuffer._ensureAvailableCapacity(_:at:)(v14, v6);
    v13 = v73;
    v50 = v75;
    v51 = v76;
    v52 = v77;
    swift_beginAccess();
    v53 = v52 | (v51 << 8);
    LODWORD(v54) = v50 - v53;
    if (v50 - v53 >= v6)
    {
      LODWORD(v54) = v6;
    }

    if (v6)
    {
      v54 = v54;
    }

    else
    {
      v54 = 0;
    }

    memmove((*(v13 + 24) + v53 + v54), (v8 + 32), v14);

    v12 = HIDWORD(v74);
    v8 = (HIDWORD(v74) + v14);
    if (__CFADD__(HIDWORD(v74), v14))
    {
      goto LABEL_42;
    }

    v14 = v74;
    v11 = v72;
    v6 = *(v72 + 2);
    v55 = *(v72 + 3);
    v10 = (v6 + 1);
    if (v6 >= v55 >> 1)
    {
      v11 = sub_1B0D054C4((v55 > 1), v6 + 1, 1, v72);
    }

    *(v11 + 2) = v10;
    v56 = &v11[24 * v6];
    *(v56 + 4) = v13;
    *(v56 + 5) = v14 | (v8 << 32);
    v56[54] = v52;
    *(v56 + 26) = v51;
    *(v56 + 12) = v50;
    v18 += 16;
    v17 = v71 - 1;
    if (v71 == 1)
    {
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_1B0CFBCD8(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  while (1)
  {
    v2 = sub_1B0E44DB8();
    if (!v3)
    {

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      return a1;
    }

    v4 = v2;
    v5 = v3;
    if (v2 == 2573 && v3 == 0xE200000000000000)
    {
      goto LABEL_30;
    }

    result = sub_1B0E46A78();
    if (result)
    {
      goto LABEL_30;
    }

    v7 = (v5 & 0x2000000000000000) != 0 ? HIBYTE(v5) & 0xF : v4 & 0xFFFFFFFFFFFFLL;
    if (!v7)
    {
      break;
    }

    if ((v5 & 0x1000000000000000) != 0)
    {
      v12 = sub_1B0E44C18();
    }

    else
    {
      if ((v5 & 0x2000000000000000) != 0)
      {
        v9 = v4;
      }

      else
      {
        if ((v4 & 0x1000000000000000) != 0)
        {
          v8 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v8 = sub_1B0E46368();
        }

        v9 = *v8;
      }

      v10 = v9;
      v11 = (__clz(~v9) - 24) << 16;
      if (v10 < 0)
      {
        v12 = v11;
      }

      else
      {
        v12 = 65541;
      }
    }

    if (v12 >> 14 != 4 * v7)
    {
      goto LABEL_30;
    }

    result = sub_1B0C04CF0(v4, v5);
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

    result = sub_1B0C04CF0(v4, v5);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_36;
    }

    v13 = result;

    if ((v13 & 0xFFFFFF00) != 0)
    {
      goto LABEL_34;
    }

    if (v13 - 47 <= 0xFFFFFFFD && v13 - 58 <= 0xFFFFFFF5 && (v13 & 0xDFu) - 91 < 0xFFFFFFE6)
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

void *sub_1B0CFBF20(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E64E8, &unk_1B0EE7340);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size_0(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

uint64_t sub_1B0CFBFB0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B0CFC42C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1B0CFC0B8(v5);
  *a1 = v2;
  return result;
}

void sub_1B0CFC01C(uint64_t a1, uint64_t a2)
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

      v11 = sub_1B03904C0();
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

uint64_t sub_1B0CFC0B8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1B0E469A8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1B0E45278();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1B0C2C134(v7, v8, a1, v4);
      *(v6 + 16) = 0;
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
    return sub_1B0C2C064(0, v2, 1, a1);
  }

  return result;
}

unint64_t sub_1B0CFC1B0(unint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
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
      v8 = sub_1B0E46368();
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

      v18 = sub_1B03904C0();
      ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v17, v18 & 1);
    }

    ByteBuffer._ensureAvailableCapacity(_:at:)(v4 & 0xF, a4);
    ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)(v19, v19 + v12, a4);
    return v12;
  }

  __break(1u);
  return result;
}

void *sub_1B0CFC2B4(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

void sub_1B0CFC440(uint64_t a1, double a2)
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
    *(v13 + 48) = sub_1B0B815B8;
    *(v13 + 56) = sub_1B0439080;
  }

  else
  {
    v10 = *(ByteBufferAllocator.zeroCapacityWithDefaultAllocator.unsafeMutableAddressor() + 3);
  }

  sub_1B0CFC01C(a1, v10);
  if (__CFADD__(v10, v14))
  {
    __break(1u);
LABEL_13:
    __break(1u);
  }
}

uint64_t sub_1B0CFC5A8(uint64_t a1, uint64_t a2)
{
  v85 = a1;
  v84 = type metadata accessor for CommandStreamPart(0);
  v3 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v5 = (v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1B0E43108();
  v81 = *(v6 - 8);
  v82 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v76 = v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v77 = v72 - v9;
  v83 = type metadata accessor for ClientCommand(0);
  MEMORY[0x1EEE9AC00](v83);
  v11 = v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2990, &qword_1B0E9B060);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v80 = v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v86 = v72 - v15;
  v16 = sub_1B0E44B68();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E64D8, &unk_1B0EE7310);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = (v72 - v20);
  v22 = type metadata accessor for Command(0);
  v23 = *(v22 - 1);
  MEMORY[0x1EEE9AC00](v22);
  v25 = (v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B0CFAA4C(a2, v21);
  if ((*(v23 + 48))(v21, 1, v22) != 1)
  {
LABEL_6:
    sub_1B0CFD0B8(v21, v25, type metadata accessor for Command);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6420, &unk_1B0EE7320);
    v35 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1B0EC1E70;
    *&v88 = sub_1B0D0D4B0(v85 & 0xFFFFFFFF000000FFLL);
    sub_1B0E44B48();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E21D0, &unk_1B0EA2E70);
    sub_1B07B517C();
    v22 = sub_1B0E44B08();
    v38 = v37;

    if (v38)
    {
      v39 = (v36 + v35);
      v40 = type metadata accessor for TaggedCommand(0);
      sub_1B0CFD120(v25, v36 + v35 + *(v40 + 20), type metadata accessor for Command);
      *v39 = v22;
      v39[1] = v38;
      swift_storeEnumTagMultiPayload();
      sub_1B0CFD058(v25, type metadata accessor for Command);
      return v36;
    }

    goto LABEL_31;
  }

  v75 = v18;
  sub_1B0398EFC(v21, &qword_1EB6E64D8, &unk_1B0EE7310);
  sub_1B0CFD120(a2, v11, type metadata accessor for ClientCommand);
  if (swift_getEnumCaseMultiPayload() == 10)
  {
    v26 = *(v11 + 2);
    v73 = *v11;
    v74 = v26;
    v27 = *(v11 + 2);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4BC0, &unk_1B0ED8640);
    v29 = *(v28 + 64);
    v30 = &v11[*(v28 + 80)];
    v32 = *v30;
    v31 = v30[1];
    v83 = v32;
    v79 = v31;
    sub_1B03C60A4(&v11[v29], v86, &unk_1EB6E2990, &qword_1B0E9B060);
    v33 = *(v27 + 16);
    if (v33)
    {
      v21 = sub_1B0B88FB4(*(v27 + 16), 0);
      v25 = sub_1B0B8C5CC(&v88, v21 + 4, v33, v27);
      v34 = v88;
      v78 = *(&v89 + 1);
      v11 = v89;
      v72[1] = *&v90[0];
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B03D91F8(v34);
      if (v25 != v33)
      {
        __break(1u);
        goto LABEL_6;
      }
    }

    else
    {
      v21 = MEMORY[0x1E69E7CC0];
    }

    *&v88 = v21;
    sub_1B0CFBFB0(&v88);
    v41 = v80;

    v78 = v88;
    sub_1B06BC2F4(v86, v41);
    v42 = v81;
    v22 = v82;
    v11 = (*(v81 + 48))(v41, 1, v82);
    v43 = v79;
    if (v11 == 1)
    {
      v44 = 0;
    }

    else
    {
      v45 = v77;
      (*(v42 + 32))(v77, v41, v22);
      v46 = v76;
      (*(v42 + 16))(v76, v45, v22);
      ServerMessageDate.init(_:)(v46);
      v44 = v47;
      (*(v42 + 8))(v45, v22);
    }

    v48 = sub_1B0D05E68(MEMORY[0x1E69E7CC0]);
    v81 = v49;
    v82 = v48;
    v80 = v50;
    v51 = v43 >> 62;
    if ((v43 >> 62) > 1)
    {
      if (v51 != 2)
      {
        v52 = 0;
        goto LABEL_22;
      }

      v54 = *(v83 + 16);
      v53 = *(v83 + 24);
      v52 = v53 - v54;
      if (!__OFSUB__(v53, v54))
      {
LABEL_22:
        v22 = sub_1B0D0D4B0(v85 & 0xFFFFFFFF000000FFLL);
        *&v88 = v22;
        sub_1B0E44B48();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E21D0, &unk_1B0EA2E70);
        sub_1B07B517C();
        v55 = sub_1B0E44B08();
        v57 = v56;

        if (v57)
        {
          v93 = v55;
          v94[0] = v57;
          v94[1] = v73;
          v94[2] = v74;
          v95 = 0;
          v94[3] = 0;
          v94[4] = 0;
          LOBYTE(v88) = v11 == 1;
          v96 = v78;
          v97 = v44;
          v98 = v11 == 1;
          v99 = v82;
          v100 = v81 & 0xFFFFFFFFFFFFFF8;
          v101 = v80 & 0xFFFFFFFFFFFFFF8;
          v102 = v52;
          v58 = 4;
          v103 = 32;

          v59 = v83;
          v60 = v79;
          sub_1B03B2000(v83, v79);
          v61 = sub_1B0BD09D4(v59, v60, j__malloc, j__realloc, sub_1B0B815B8, sub_1B0439080);
          v63 = v62;
          v65 = v64;
          sub_1B0391D50(v59, v60);
          v104 = v61;
          v105 = v63;
          v107 = 0;
          v108 = 0;
          v106 = v65 & 0xFFFFFFFFFFFFFFLL;
          v109 = 64;
          v110 = 0u;
          v111 = 0u;
          v112 = 0u;
          v113 = 0;
          v114 = -64;
          v115 = 2;
          v116 = 0u;
          v117 = 0u;
          v118 = 0u;
          v119 = -64;
          v91 = MEMORY[0x1E69E7CC0];
          sub_1B0CEF620(0, 5, 0);
          v36 = v91;
          while (1)
          {
            v66 = *&v92[v58 * 8 + 16];
            v88 = *&v92[v58 * 8];
            v89 = v66;
            v90[0] = *&v92[v58 * 8 + 32];
            v67 = v90[0];
            *(v90 + 9) = *(&v94[v58] + 1);
            v68 = *(v90 + 9);
            *v5 = v88;
            v5[1] = v66;
            v5[2] = v67;
            *(v5 + 41) = v68;
            swift_storeEnumTagMultiPayload();
            sub_1B0CFCFFC(&v88, &v87);
            v91 = v36;
            v70 = *(v36 + 16);
            v69 = *(v36 + 24);
            if (v70 >= v69 >> 1)
            {
              sub_1B0CEF620((v69 > 1), v70 + 1, 1);
              v36 = v91;
            }

            *(v36 + 16) = v70 + 1;
            sub_1B0CFD0B8(v5, v36 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v70, type metadata accessor for CommandStreamPart);
            if (v58 == 36)
            {
              break;
            }

            v58 += 8;
          }

          sub_1B0398EFC(v86, &unk_1EB6E2990, &qword_1B0E9B060);
          swift_arrayDestroy();

          sub_1B0391D50(v83, v60);
          return v36;
        }

        goto LABEL_32;
      }

      __break(1u);
    }

    else if (!v51)
    {
      v52 = BYTE6(v43);
      goto LABEL_22;
    }

    if (__OFSUB__(HIDWORD(v83), v83))
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v52 = HIDWORD(v83) - v83;
    goto LABEL_22;
  }

LABEL_33:
  sub_1B0CFD058(v11, type metadata accessor for ClientCommand);
  sub_1B0E465B8();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1B0CFD058(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B0CFD0B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0CFD120(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0CFD188(uint64_t a1, uint64_t a2, uint64_t a3)
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
      if (v10 || (sub_1B0E46A78() & 1) != 0)
      {
        break;
      }
    }

    if (!--v8)
    {
      return 0;
    }
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return a1;
}

uint64_t sub_1B0CFD270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  v8 = *(*(v3 + 32) + 16);
  swift_beginAccess();
  if (v8)
  {
    v3 = sub_1B0441754(v8);
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

  result = sub_1B0CFD418(v8);
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
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    swift_endAccess();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1B0CFD388()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1B0CFD3D0(void *a1, void *a2)
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
    return sub_1B0E46A78();
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

uint64_t sub_1B0CFD500(uint64_t a1, uint64_t a2)
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
        sub_1B0CF21A0(&v10, v9);
        sub_1B0CF21A0(&v12, v9);
        v7 = static FetchAttribute.__derived_enum_equals(_:_:)(&v10, &v12);
        sub_1B0CF21FC(&v12);
        sub_1B0CF21FC(&v10);
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

uint64_t sub_1B0CFD5E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageData.BodyData(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v46 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4178, &unk_1B0EE7570);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v41 - v8;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E64C0, &qword_1B0EE71D0);
  MEMORY[0x1EEE9AC00](v48);
  v11 = &v41 - v10;
  v47 = type metadata accessor for MessageData.BodySection(0);
  MEMORY[0x1EEE9AC00](v47);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
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
      sub_1B0CFE9F4(v20, v17, type metadata accessor for MessageData.BodySection);
      sub_1B0CFE9F4(v21, v13, type metadata accessor for MessageData.BodySection);
      if ((static SectionSpecifier.__derived_struct_equals(_:_:)(*v17, *(v17 + 1), v17[16], *v13, *(v13 + 1), v13[16]) & 1) == 0)
      {
LABEL_27:
        sub_1B0CFEA5C(v13, type metadata accessor for MessageData.BodySection);
        sub_1B0CFEA5C(v17, type metadata accessor for MessageData.BodySection);
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
      sub_1B0CFE984(&v17[v27], v11);
      sub_1B0CFE984(&v13[v27], &v11[v28]);
      v29 = *v22;
      v30 = v11;
      v31 = v11;
      v32 = v45;
      if ((*v22)(v30, 1, v45) == 1)
      {
        break;
      }

      sub_1B0CFE984(v31, v9);
      if (v29((v31 + v28), 1, v32) == 1)
      {
        sub_1B0CFEA5C(v9, type metadata accessor for MessageData.BodyData);
        v11 = v31;
LABEL_24:
        v39 = &qword_1EB6E64C0;
        v40 = &qword_1B0EE71D0;
LABEL_26:
        sub_1B0398EFC(v11, v39, v40);
        goto LABEL_27;
      }

      v33 = v9;
      sub_1B0CF83C0(v31 + v28, v46);
      v34 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
      v11 = v31;
      if (v34 != _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0())
      {
        sub_1B0CFEA5C(v46, type metadata accessor for MessageData.BodyData);
        sub_1B0CFEA5C(v9, type metadata accessor for MessageData.BodyData);
        v39 = &qword_1EB6E4178;
        v40 = &unk_1B0EE7570;
        goto LABEL_26;
      }

      sub_1B0E443C8();
      sub_1B075CEE0();
      sub_1B0E45668();
      v35 = sub_1B0E456C8();
      if (v51 == v50)
      {
        sub_1B0CFEA5C(v46, type metadata accessor for MessageData.BodyData);
        sub_1B0CFEA5C(v9, type metadata accessor for MessageData.BodyData);
        v22 = v42;
        v25 = v49;
LABEL_6:
        sub_1B0398EFC(v11, &qword_1EB6E4178, &unk_1B0EE7570);
        sub_1B0CFEA5C(v13, type metadata accessor for MessageData.BodySection);
        sub_1B0CFEA5C(v17, type metadata accessor for MessageData.BodySection);
        goto LABEL_7;
      }

      MEMORY[0x1EEE9AC00](v35);
      v36 = v46;
      *(&v41 - 2) = v46;
      *(&v41 - 1) = v33;
      v37 = v43;
      sub_1B0E44328();
      v43 = v37;
      LOBYTE(v37) = v51;
      sub_1B0CFEA5C(v36, type metadata accessor for MessageData.BodyData);
      sub_1B0CFEA5C(v33, type metadata accessor for MessageData.BodyData);
      sub_1B0398EFC(v31, &qword_1EB6E4178, &unk_1B0EE7570);
      sub_1B0CFEA5C(v13, type metadata accessor for MessageData.BodySection);
      sub_1B0CFEA5C(v17, type metadata accessor for MessageData.BodySection);
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

uint64_t sub_1B0CFDC08(uint64_t a1, uint64_t a2)
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
        sub_1B0CF22B8(v12, v11);
        sub_1B0CF22B8(v13, v11);
        v9 = static ReturnOption.__derived_enum_equals(_:_:)(v12, v13);
        sub_1B0CF2314(v13);
        sub_1B0CF2314(v12);
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

uint64_t sub_1B0CFDCE8(uint64_t a1, uint64_t a2)
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
        v5 = sub_1B0E46A78();

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

uint64_t sub_1B0CFE01C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchReturnOption(0) - 8;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
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
        sub_1B0CFE9F4(v13, v10, type metadata accessor for SearchReturnOption);
        sub_1B0CFE9F4(v14, v6, type metadata accessor for SearchReturnOption);
        v16 = static SearchReturnOption.__derived_enum_equals(_:_:)(v10, v6);
        sub_1B0CFEA5C(v6, type metadata accessor for SearchReturnOption);
        sub_1B0CFEA5C(v10, type metadata accessor for SearchReturnOption);
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

uint64_t PushRegistrationInfo.init(apsVersion:accountID:deviceToken:subtopic:mailboxes:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  return result;
}

uint64_t PushRegistrationInfo.accountID.getter()
{
  v1 = *(v0 + 8);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t PushRegistrationInfo.accountID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t PushRegistrationInfo.deviceToken.getter()
{
  v1 = *(v0 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t PushRegistrationInfo.deviceToken.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t PushRegistrationInfo.subtopic.getter()
{
  v1 = *(v0 + 40);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t PushRegistrationInfo.subtopic.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t PushRegistrationInfo.mailboxes.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t PushRegistrationInfo.hash(into:)(uint64_t a1)
{
  sub_1B0E46C88();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v2 = *(v1 + 56);
  v3 = *(v2 + 16);
  result = MEMORY[0x1B2728D70](v3);
  if (v3)
  {
    v5 = (v2 + 40);
    do
    {
      v6 = *v5;
      v5 += 4;
      result = MEMORY[0x1B2728D70](v6 | (v6 << 32));
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t PushRegistrationInfo.hashValue.getter()
{
  sub_1B0E46C28();
  PushRegistrationInfo.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CFE4D0()
{
  sub_1B0E46C28();
  PushRegistrationInfo.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CFE514(uint64_t a1)
{
  sub_1B0E46C28();
  PushRegistrationInfo.hash(into:)(v2);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0CFE550(_OWORD *a1, _OWORD *a2)
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

uint64_t PushRegistrationResponse.topic.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t PushRegistrationResponse.mailboxes.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
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
    v11 = sub_1B0E46A78();
    a4 = v9;
    a8 = v10;
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  return _s12NIOIMAPCore29MailboxesV23__derived_struct_equalsySbAC_ACtFZ_0(a4, a8);
}

uint64_t sub_1B0CFE72C(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  v4 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v4 && (sub_1B0E46A78() & 1) == 0)
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
  if (!v4 && (sub_1B0E46A78() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32);
  if (!v5 && (sub_1B0E46A78() & 1) == 0 || (*(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48)) && (sub_1B0E46A78() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 56);
  v7 = *(a2 + 56);

  return _s12NIOIMAPCore29MailboxesV23__derived_struct_equalsySbAC_ACtFZ_0(v6, v7);
}

unint64_t sub_1B0CFE878()
{
  result = qword_1EB6E64F0;
  if (!qword_1EB6E64F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E64F0);
  }

  return result;
}

uint64_t sub_1B0CFE8CC(uint64_t a1, int a2)
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

uint64_t sub_1B0CFE914(uint64_t result, int a2, int a3)
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

uint64_t sub_1B0CFE984(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4178, &unk_1B0EE7570);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0CFE9F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0CFEA5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B0CFEABC(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = sub_1B0D02788(a1, a2);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v6 = v4;
  v41 = MEMORY[0x1E69E7CC0];
  result = sub_1B0CEF59C(0, v4 & ~(v4 >> 63), 0);
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
          result = sub_1B0A6D6C4(v12, v3, a2);
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
          v19 = sub_1B0C04F4C(result, v3, a2);
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
        result = sub_1B0E46288();
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
            v20 = sub_1B0E46368();
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
      v25 = *(v5 + 16);
      v24 = *(v5 + 24);
      if (v25 >= v24 >> 1)
      {
        v34 = v16;
        result = sub_1B0CEF59C((v24 > 1), v25 + 1, 1);
        v16 = v34;
        v11 = v38;
        v5 = v41;
      }

      *(v5 + 16) = v25 + 1;
      *(v5 + 4 * v25 + 32) = v23;
      if (v16)
      {
        v10 = v35;
        v26 = v36;
        v3 = v37;
        if (v14 == v35)
        {
          result = sub_1B0A6D6C4(v12, v37, a2);
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
          result = sub_1B0C04F4C(v12, v37, a2);
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
        result = sub_1B0E44C18();
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
            result = sub_1B0E46368();
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
  sub_1B0CFEFA4(&v12);
  v0 = v14;
  v1 = v15;
  v2 = __swift_project_boxed_opaque_existential_0(&v12, v14);
  v3 = static Response.descriptionWithoutPII<A>(_:)(v2, v0, v1);
  v5 = v4;
  __swift_destroy_boxed_opaque_existential_0(&v12);
  v6 = sub_1B0E44CF8();
  v12 = 0;
  v13 = 0xE000000000000000;
  MEMORY[0x1B2726D50](v6);
  v7 = v12;
  v8 = v13;
  sub_1B0CFEABC(v3, v5);

  v12 = v7;
  v13 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E64F8, &qword_1B0EE7580);
  sub_1B039E3F8(&qword_1EB6DADD8, &qword_1EB6E64F8, &qword_1B0EE7580, MEMORY[0x1E69E6328]);
  sub_1B0E44C48();

  v9 = v12;
  v10 = v13;
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

uint64_t sub_1B0CFEFA4@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v85.i8[-v5];
  v7 = type metadata accessor for UntaggedResponse(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (v85.i64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B0D04274(v2, v9, type metadata accessor for UntaggedResponse);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v86 = *v9;
      v38 = v9[2];
      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6510, &qword_1B0EE7CB0);
      a1[4] = sub_1B039E3F8(&qword_1EB6E6518, &qword_1EB6E6510, &qword_1B0EE7CB0, MEMORY[0x1E69E6BD0]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
      *boxed_opaque_existential_1 = v86;
      boxed_opaque_existential_1[2] = v38;
      v20 = 1;
      goto LABEL_14;
    case 2u:
      v86 = *v9;
      v31 = v9[2];
      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6510, &qword_1B0EE7CB0);
      a1[4] = sub_1B039E3F8(&qword_1EB6E6518, &qword_1EB6E6510, &qword_1B0EE7CB0, MEMORY[0x1E69E6BD0]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
      *boxed_opaque_existential_1 = v86;
      boxed_opaque_existential_1[2] = v31;
      v20 = 2;
      goto LABEL_14;
    case 3u:
      v86 = *v9;
      v33 = v9[2];
      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6510, &qword_1B0EE7CB0);
      a1[4] = sub_1B039E3F8(&qword_1EB6E6518, &qword_1EB6E6510, &qword_1B0EE7CB0, MEMORY[0x1E69E6BD0]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
      *boxed_opaque_existential_1 = v86;
      boxed_opaque_existential_1[2] = v33;
      v20 = 3;
      goto LABEL_14;
    case 4u:
      v86 = *v9;
      v18 = v9[2];
      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6510, &qword_1B0EE7CB0);
      a1[4] = sub_1B039E3F8(&qword_1EB6E6518, &qword_1EB6E6510, &qword_1B0EE7CB0, MEMORY[0x1E69E6BD0]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
      *boxed_opaque_existential_1 = v86;
      boxed_opaque_existential_1[2] = v18;
      v20 = 4;
LABEL_14:
      *(boxed_opaque_existential_1 + 24) = v20;
      goto LABEL_15;
    case 5u:
    case 6u:
      goto LABEL_24;
    case 7u:
      v34 = *(v9 + 4);
      v35 = *(v9 + 20);
      v36 = v9[3];
      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6510, &qword_1B0EE7CB0);
      a1[4] = sub_1B039E3F8(&qword_1EB6E6518, &qword_1EB6E6510, &qword_1B0EE7CB0, MEMORY[0x1E69E6BD0]);
      v37 = *(v9 + 2);
      v85 = *v9;
      v86 = v37;
      v9 = __swift_allocate_boxed_opaque_existential_1(a1);
      v99[0] = v85;
      v99[1].i32[0] = v34;
      v99[1].i8[4] = v35;
      v99[1].i64[1] = v36;
      v99[2] = v86;
      sub_1B0D0464C(v99);
      goto LABEL_32;
    case 8u:
      v48 = *(v9 + 4);
      v49 = *(v9 + 20);
      v50 = v9[3];
      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6510, &qword_1B0EE7CB0);
      a1[4] = sub_1B039E3F8(&qword_1EB6E6518, &qword_1EB6E6510, &qword_1B0EE7CB0, MEMORY[0x1E69E6BD0]);
      v51 = *(v9 + 2);
      v85 = *v9;
      v86 = v51;
      v9 = __swift_allocate_boxed_opaque_existential_1(a1);
      v99[0] = v85;
      v99[1].i32[0] = v48;
      v99[1].i8[4] = v49;
      v99[1].i64[1] = v50;
      v99[2] = v86;
      sub_1B0D04600(v99);
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
      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6510, &qword_1B0EE7CB0);
      a1[4] = sub_1B039E3F8(&qword_1EB6E6518, &qword_1EB6E6510, &qword_1B0EE7CB0, MEMORY[0x1E69E6BD0]);
      v9 = __swift_allocate_boxed_opaque_existential_1(a1);
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
      sub_1B0D045B4(v99);
      goto LABEL_32;
    case 0xAu:
      v47 = v9[2];
      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6510, &qword_1B0EE7CB0);
      a1[4] = sub_1B039E3F8(&qword_1EB6E6518, &qword_1EB6E6510, &qword_1B0EE7CB0, MEMORY[0x1E69E6BD0]);
      v86 = *v9;
      v9 = __swift_allocate_boxed_opaque_existential_1(a1);
      v99[0] = v86;
      v99[1].i64[0] = v47;
      sub_1B0D04568(v99);
      goto LABEL_32;
    case 0xBu:
      v17 = *v9;
      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6510, &qword_1B0EE7CB0);
      a1[4] = sub_1B039E3F8(&qword_1EB6E6518, &qword_1EB6E6510, &qword_1B0EE7CB0, MEMORY[0x1E69E6BD0]);
      v9 = __swift_allocate_boxed_opaque_existential_1(a1);
      v99[0] = v17;
      v99[1].i8[0] = 1;
      sub_1B0D0451C(v99);
      goto LABEL_32;
    case 0xCu:
      v21 = *(v9 + 32);
      v22 = *(v9 + 33);
      v23 = v9[5];
      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6510, &qword_1B0EE7CB0);
      a1[4] = sub_1B039E3F8(&qword_1EB6E6518, &qword_1EB6E6510, &qword_1B0EE7CB0, MEMORY[0x1E69E6BD0]);
      v24 = *v9;
      v85 = *(v9 + 1);
      v86 = v24;
      v9 = __swift_allocate_boxed_opaque_existential_1(a1);
      v99[0] = v86;
      v99[1] = v85;
      v99[2].i8[0] = v21;
      v99[2].i8[1] = v22;
      v99[2].i64[1] = v23;
      sub_1B0D044D0(v99);
      goto LABEL_32;
    case 0xDu:
      v43 = *v9;
      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6510, &qword_1B0EE7CB0);
      a1[4] = sub_1B039E3F8(&qword_1EB6E6518, &qword_1EB6E6510, &qword_1B0EE7CB0, MEMORY[0x1E69E6BD0]);
      v9 = __swift_allocate_boxed_opaque_existential_1(a1);
      v44 = *(v43 + 16);
      if (v44)
      {
        a1 = sub_1B0B88FB4(*(v43 + 16), 0);
        v45 = sub_1B0B8C5CC(v99, a1 + 4, v44, v43);
        sub_1B03D91F8(v99[0].i64[0]);
        if (v45 != v44)
        {
          __break(1u);
LABEL_24:
          v46 = *v9;
          a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6510, &qword_1B0EE7CB0);
          a1[4] = sub_1B039E3F8(&qword_1EB6E6518, &qword_1EB6E6510, &qword_1B0EE7CB0, MEMORY[0x1E69E6BD0]);
          *__swift_allocate_boxed_opaque_existential_1(a1) = v46;
          type metadata accessor for ResponsePayload(0);
          goto LABEL_33;
        }
      }

      else
      {

        a1 = MEMORY[0x1E69E7CC0];
      }

      v99[0].i64[0] = a1;
      sub_1B0D04488(v99);
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
      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6510, &qword_1B0EE7CB0);
      a1[4] = sub_1B039E3F8(&qword_1EB6E6518, &qword_1EB6E6510, &qword_1B0EE7CB0, MEMORY[0x1E69E6BD0]);
      v16 = v9[3];
      v9 = __swift_allocate_boxed_opaque_existential_1(a1);
      v99[0] = v86;
      v99[1].i64[0] = v13;
      v99[1].i64[1] = v16;
      v99[2].i8[0] = v14;
      v99[2].i64[1] = v15;
      sub_1B0D04390(v99);
      goto LABEL_32;
    case 0xFu:
      v32 = *v9;
      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6510, &qword_1B0EE7CB0);
      a1[4] = sub_1B039E3F8(&qword_1EB6E6518, &qword_1EB6E6510, &qword_1B0EE7CB0, MEMORY[0x1E69E6BD0]);
      v9 = __swift_allocate_boxed_opaque_existential_1(a1);
      v99[0].i64[0] = v32;
      sub_1B0D0443C(v99);
      goto LABEL_32;
    case 0x10u:
      v12 = *v9;
      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6510, &qword_1B0EE7CB0);
      a1[4] = sub_1B039E3F8(&qword_1EB6E6518, &qword_1EB6E6510, &qword_1B0EE7CB0, MEMORY[0x1E69E6BD0]);
      v9 = __swift_allocate_boxed_opaque_existential_1(a1);
      v99[0].i64[0] = v12;
      sub_1B0D043F0(v99);
      goto LABEL_32;
    case 0x11u:
      v39 = *v9;
      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6510, &qword_1B0EE7CB0);
      a1[4] = sub_1B039E3F8(&qword_1EB6E6518, &qword_1EB6E6510, &qword_1B0EE7CB0, MEMORY[0x1E69E6BD0]);
      *__swift_allocate_boxed_opaque_existential_1(a1) = v39;
      type metadata accessor for MessageData(0);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for ResponsePayload(0);
      goto LABEL_33;
    case 0x12u:
    case 0x13u:
      sub_1B074BA2C(v9, v6);
      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6510, &qword_1B0EE7CB0);
      a1[4] = sub_1B039E3F8(&qword_1EB6E6518, &qword_1EB6E6510, &qword_1B0EE7CB0, MEMORY[0x1E69E6BD0]);
      v55 = __swift_allocate_boxed_opaque_existential_1(a1);
      sub_1B03B5C80(v6, v55, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      type metadata accessor for MessageData(0);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for ResponsePayload(0);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for Response(0);
      swift_storeEnumTagMultiPayload();
      return sub_1B0398EFC(v6, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    case 0x14u:
      memcpy(v99, v9, 0x268uLL);
      if (v99[0].i8[4])
      {
        if (v99[0].i8[12])
        {
          a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6520, &qword_1B0EE7CB8);
          a1[4] = sub_1B039E3F8(&qword_1EB6E6528, &qword_1EB6E6520, &qword_1B0EE7CB8, MEMORY[0x1E69E6328]);
          result = sub_1B0AA4C0C(v99);
          *a1 = MEMORY[0x1E69E7CC0];
          return result;
        }

        v73 = v99[0].i32[2];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6530, &unk_1B0EE7CC0);
        v74 = *(type metadata accessor for Response(0) - 8);
        v75 = (*(v74 + 80) + 32) & ~*(v74 + 80);
        v59 = swift_allocObject();
        *(v59 + 16) = xmmword_1B0EC1E70;
        v76 = v59 + v75;
        LODWORD(v95[0]) = v73;
        sub_1B0D043DC(v95);
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6530, &unk_1B0EE7CC0);
        v57 = *(type metadata accessor for Response(0) - 8);
        v58 = (*(v57 + 80) + 32) & ~*(v57 + 80);
        v59 = swift_allocObject();
        *(v59 + 16) = xmmword_1B0EC1E70;
        v60 = v59 + v58;
        LODWORD(v95[0]) = v56;
        sub_1B041BA38(v95);
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

      v82 = sub_1B0D00088(v66);
      *&v87 = v59;
      sub_1B0CEF42C(v83, v82);
      v84 = v87;
      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6520, &qword_1B0EE7CB8);
      a1[4] = sub_1B039E3F8(&qword_1EB6E6528, &qword_1EB6E6520, &qword_1B0EE7CB8, MEMORY[0x1E69E6328]);
      result = sub_1B0AA4C0C(v99);
      *a1 = v84;
      return result;
    case 0x15u:
      v41 = *v9;
      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6510, &qword_1B0EE7CB0);
      a1[4] = sub_1B039E3F8(&qword_1EB6E6518, &qword_1EB6E6510, &qword_1B0EE7CB0, MEMORY[0x1E69E6BD0]);
      v86 = *(v9 + 1);
      v42 = __swift_allocate_boxed_opaque_existential_1(a1);
      *v42 = v41;
      *(v42 + 1) = v86;
      type metadata accessor for ResponsePayload(0);
      goto LABEL_33;
    case 0x16u:
      v86 = *v9;
      v52 = v9[2];
      v53 = *(v9 + 24);
      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6510, &qword_1B0EE7CB0);
      a1[4] = sub_1B039E3F8(&qword_1EB6E6518, &qword_1EB6E6510, &qword_1B0EE7CB0, MEMORY[0x1E69E6BD0]);
      v54 = __swift_allocate_boxed_opaque_existential_1(a1);
      *v54 = v86;
      v54[2] = v52;
      *(v54 + 24) = v53;
      type metadata accessor for ResponsePayload(0);
      goto LABEL_33;
    default:
      v86 = *v9;
      v10 = v9[2];
      a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6510, &qword_1B0EE7CB0);
      a1[4] = sub_1B039E3F8(&qword_1EB6E6518, &qword_1EB6E6510, &qword_1B0EE7CB0, MEMORY[0x1E69E6BD0]);
      v11 = __swift_allocate_boxed_opaque_existential_1(a1);
      *v11 = v86;
      v11[2] = v10;
      *(v11 + 24) = 0;
LABEL_15:
      type metadata accessor for ResponsePayload(0);
      goto LABEL_33;
  }
}

void *sub_1B0D00088(int a1)
{
  LODWORD(v265) = a1;
  v276 = sub_1B0E443C8();
  v256 = *(v276 - 8);
  MEMORY[0x1EEE9AC00](v276);
  v275 = v252 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4178, &unk_1B0EE7570);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v252 - v4;
  v279 = type metadata accessor for MessageData.BodyData(0);
  v264 = *(v279 - 8);
  MEMORY[0x1EEE9AC00](v279);
  v274 = v252 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v280 = v252 - v8;
  v278 = type metadata accessor for MessageData.BodySection(0);
  v257 = *(v278 - 8);
  MEMORY[0x1EEE9AC00](v278);
  v267 = v252 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Response(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v261 = v252 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v260 = v252 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v259 = v252 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v258 = v252 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v277 = v252 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v273 = v252 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v272 = v252 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v266 = v252 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v282 = v252 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v271 = (v252 - v30);
  MEMORY[0x1EEE9AC00](v31);
  v269 = v252 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v268 = v252 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v37 = v252 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = v252 - v39;
  MEMORY[0x1EEE9AC00](v41);
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
    sub_1B0D04858(&v334);
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
    sub_1B0D046AC(&v346);
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
    sub_1B03B5C80(&v360, &v322, &qword_1EB6E64B0, &unk_1B0EE81A0);
    sub_1B0D0486C(&v283, &v322);
    v56 = sub_1B0D0549C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v58 = v56[2];
    v57 = v56[3];
    v59 = v56;
    if (v58 >= v57 >> 1)
    {
      v59 = sub_1B0D0549C((v57 > 1), v58 + 1, 1, v56);
    }

    sub_1B0398EFC(&v360, &qword_1EB6E64B0, &unk_1B0EE81A0);
    v59[2] = v58 + 1;
    v60 = v59;
    sub_1B0D046C0(v43, v59 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v58, type metadata accessor for Response);
  }

  else
  {
    v60 = MEMORY[0x1E69E7CC0];
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
      v65 = sub_1B0B88FB4(*(v62 + 16), 0);
      v66 = sub_1B0B8C5CC(&v346, v65 + 4, v64, v62);
      v67 = v346;
      v254 = v347;
      v255 = *(&v346 + 1);
      v252[1] = v348;
      v253 = *(&v347 + 1);
      sub_1B03B5C80(&v359, &v334, &qword_1EB6E6538, &qword_1B0EE7CD0);
      sub_1B03D91F8(v67);
      if (v66 == v64)
      {
LABEL_11:
        *&v334 = v65;
        sub_1B0D04848(&v334);
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
        sub_1B0D046AC(&v346);
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
          v73 = sub_1B0D0549C(0, v73[2] + 1, 1, v73);
        }

        v76 = v73[2];
        v75 = v73[3];
        v77 = v73;
        if (v76 >= v75 >> 1)
        {
          v77 = sub_1B0D0549C((v75 > 1), v76 + 1, 1, v73);
        }

        v77[2] = v76 + 1;
        v60 = v77;
        sub_1B0D046C0(v40, v77 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v76, type metadata accessor for Response);
        goto LABEL_16;
      }

      __break(1u);
    }

    v65 = MEMORY[0x1E69E7CC0];
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
    v80 = sub_1B0CFBF20(*(v78 + 16), 0);
    v81 = sub_1B0CFC2B4(&v346, (v80 + 4), v60, v78);
    v82 = v346;
    v254 = *(&v347 + 1);
    v255 = v347;
    v253 = v348;
    sub_1B03B5C80(&v358, &v334, &qword_1EB6E4898, &qword_1B0EC6340);
    sub_1B03D91F8(v82);
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
    v80 = MEMORY[0x1E69E7CC0];
  }

  *&v334 = v80;
  sub_1B0D04834(&v334);
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
  sub_1B0D046AC(&v346);
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
    v60 = sub_1B0D0549C(0, v79[2] + 1, 1, v79);
  }

  v91 = v60[2];
  v90 = v60[3];
  if (v91 >= v90 >> 1)
  {
    v60 = sub_1B0D0549C((v90 > 1), v91 + 1, 1, v60);
  }

  v60[2] = v91 + 1;
  sub_1B0D046C0(v37, v60 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v91, type metadata accessor for Response);
  if ((*(v83 + 536) & 1) == 0)
  {
LABEL_28:
    *&v334 = *(v83 + 528);
    sub_1B0D04820(&v334);
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
    sub_1B0D046AC(&v346);
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
      v60 = sub_1B0D0549C(0, v60[2] + 1, 1, v60);
    }

    v99 = v60[2];
    v98 = v60[3];
    if (v99 >= v98 >> 1)
    {
      v60 = sub_1B0D0549C((v98 > 1), v99 + 1, 1, v60);
    }

    v60[2] = v99 + 1;
    sub_1B0D046C0(v268, v60 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v99, type metadata accessor for Response);
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
  sub_1B0D0480C(&v334);
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
  sub_1B0D046AC(&v346);
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
    v60 = sub_1B0D0549C(0, v60[2] + 1, 1, v60);
  }

  v107 = v60[2];
  v106 = v60[3];
  if (v107 >= v106 >> 1)
  {
    v60 = sub_1B0D0549C((v106 > 1), v107 + 1, 1, v60);
  }

  v60[2] = v107 + 1;
  sub_1B0D046C0(v269, v60 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v107, type metadata accessor for Response);
  if ((*(v83 + 12) & 1) == 0)
  {
LABEL_41:
    if (v265)
    {
      LODWORD(v334) = *(v83 + 8);
      sub_1B0D047F8(&v334);
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
      sub_1B0D046AC(&v346);
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
        v60 = sub_1B0D0549C(0, v60[2] + 1, 1, v60);
      }

      v115 = v60[2];
      v114 = v60[3];
      if (v115 >= v114 >> 1)
      {
        v60 = sub_1B0D0549C((v114 > 1), v115 + 1, 1, v60);
      }

      v60[2] = v115 + 1;
      sub_1B0D046C0(v271, v60 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v115, type metadata accessor for Response);
    }
  }

LABEL_47:
  if ((*(v83 + 560) & 1) == 0)
  {
    *&v334 = *(v83 + 552);
    sub_1B0D047E4(&v334);
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
    sub_1B0D046AC(&v346);
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
      v60 = sub_1B0D0549C(0, v60[2] + 1, 1, v60);
    }

    v123 = v60[2];
    v122 = v60[3];
    if (v123 >= v122 >> 1)
    {
      v60 = sub_1B0D0549C((v122 > 1), v123 + 1, 1, v60);
    }

    v60[2] = v123 + 1;
    sub_1B0D046C0(v282, v60 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v123, type metadata accessor for Response);
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
      sub_1B0D04274(v126, v127, type metadata accessor for MessageData.BodySection);
      sub_1B03B5C80(v127 + *(v278 + 24), v5, &qword_1EB6E4178, &unk_1B0EE7570);
      if ((*v271)(v5, 1, v279) == 1)
      {
        sub_1B0398EFC(v5, &qword_1EB6E4178, &unk_1B0EE7570);
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
        sub_1B0D04698(&v334);
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
        sub_1B0D046AC(&v346);
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
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0ACE964(v129, v132);
        v60 = v128;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v60 = sub_1B0D0549C(0, v128[2] + 1, 1, v128);
        }

        v140 = v60[2];
        v139 = v60[3];
        if (v140 >= v139 >> 1)
        {
          v60 = sub_1B0D0549C((v139 > 1), v140 + 1, 1, v60);
        }

        sub_1B0D042DC(v127, type metadata accessor for MessageData.BodySection);
        v60[2] = v140 + 1;
        sub_1B0D046C0(v277, v60 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v140, type metadata accessor for Response);
      }

      else
      {
        sub_1B0D046C0(v5, v280, type metadata accessor for MessageData.BodyData);
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
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0ACE964(v142, v145);
        v147 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
        *&v346 = v141;
        *(&v346 + 1) = v142;
        *&v347 = v145;
        *(&v347 + 1) = v144;
        LOBYTE(v348) = v146;
        *(&v348 + 1) = v147;
        sub_1B0D04794(&v346);
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
          v153 = sub_1B0D0549C(0, v128[2] + 1, 1, v128);
        }

        v155 = v153[2];
        v154 = v153[3];
        v156 = v270;
        if (v155 >= v154 >> 1)
        {
          v153 = sub_1B0D0549C((v154 > 1), v155 + 1, 1, v153);
        }

        v153[2] = v155 + 1;
        v157 = (*(v156 + 80) + 32) & ~*(v156 + 80);
        v158 = *(v156 + 72);
        sub_1B0D046C0(v11, v153 + v157 + v158 * v155, type metadata accessor for Response);
        v159 = v274;
        sub_1B0D04274(v280, v274, type metadata accessor for MessageData.BodyData);
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
          *(v170 + 48) = sub_1B0B815B8;
          *(v170 + 56) = sub_1B0439080;
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
        sub_1B0D042DC(v274, type metadata accessor for MessageData.BodyData);
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
        sub_1B0D047A8(&v334);
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
          v182 = sub_1B0D0549C((v183 > 1), v184 + 1, 1, v153);
        }

        v11 = v270;
        v186 = v268;
        v182[2] = v185;
        sub_1B0D046C0(v272, v182 + v186 + v184 * v158, type metadata accessor for Response);
        sub_1B0D047BC(&v283);
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
          v193 = sub_1B0D0549C((v194 > 1), v184 + 2, 1, v182);
        }

        v127 = v267;
        sub_1B0D042DC(v280, type metadata accessor for MessageData.BodyData);
        sub_1B0D042DC(v127, type metadata accessor for MessageData.BodySection);
        v193[2] = v195;
        v60 = v193;
        sub_1B0D046C0(v273, v193 + v186 + v185 * v158, type metadata accessor for Response);
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
  if (sub_1B07AB810(&v283) == 1)
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
    sub_1B0D04780(&v334);
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
    sub_1B0D046AC(&v346);
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
    sub_1B03B5C80(&v322, &v298, &qword_1EB6E4148, &qword_1B0EE17F0);
    sub_1B075DC38(&v310, &v298);
    v126 = v60;
    v215 = swift_isUniquelyReferenced_nonNull_native();
    v208 = v260;
    v156 = v261;
    if ((v215 & 1) == 0)
    {
      v126 = sub_1B0D0549C(0, v126[2] + 1, 1, v126);
    }

    v217 = v126[2];
    v216 = v126[3];
    if (v217 >= v216 >> 1)
    {
      v126 = sub_1B0D0549C((v216 > 1), v217 + 1, 1, v126);
    }

    sub_1B0398EFC(&v322, &qword_1EB6E4148, &qword_1B0EE17F0);
    v126[2] = v217 + 1;
    sub_1B0D046C0(v258, v126 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v217, type metadata accessor for Response);
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
  if (sub_1B07AB810(&v310) != 1)
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
    sub_1B0D04780(&v334);
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
    sub_1B0D046AC(&v346);
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
    sub_1B03B5C80(&v298, v295, &qword_1EB6E4148, &qword_1B0EE17F0);
    sub_1B075DC38(v296, v295);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v126 = sub_1B0D0549C(0, v126[2] + 1, 1, v126);
    }

    v236 = v126[2];
    v235 = v126[3];
    if (v236 >= v235 >> 1)
    {
      v126 = sub_1B0D0549C((v235 > 1), v236 + 1, 1, v126);
    }

    sub_1B0398EFC(&v298, &qword_1EB6E4148, &qword_1B0EE17F0);
    v126[2] = v236 + 1;
    sub_1B0D046C0(v259, v126 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v236, type metadata accessor for Response);
  }

  v237 = *(v196 + 576);
  if (v237)
  {
    *&v334 = *(v196 + 568);
    *(&v334 + 1) = v237;
    sub_1B0D0476C(&v334);
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
    sub_1B0D046AC(&v346);
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
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v126 = sub_1B0D0549C(0, v126[2] + 1, 1, v126);
    }

    v244 = v126[2];
    v243 = v126[3];
    if (v244 >= v243 >> 1)
    {
      v126 = sub_1B0D0549C((v243 > 1), v244 + 1, 1, v126);
    }

    v126[2] = v244 + 1;
    sub_1B0D046C0(v208, v126 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v244, type metadata accessor for Response);
  }

  sub_1B0D04728(&v346);
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
    v126 = sub_1B0D0549C(0, v126[2] + 1, 1, v126);
  }

  v251 = v126[2];
  v250 = v126[3];
  if (v251 >= v250 >> 1)
  {
    v126 = sub_1B0D0549C((v250 > 1), v251 + 1, 1, v126);
  }

  v126[2] = v251 + 1;
  sub_1B0D046C0(v156, v126 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v251, type metadata accessor for Response);
  return v126;
}

uint64_t UntaggedResponse.logIdentifier.getter()
{
  type metadata accessor for UntaggedResponse(0);
  sub_1B0E46508();
  return 0;
}

unint64_t UntaggedResponse.name.getter()
{
  v1 = type metadata accessor for UntaggedResponse(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0D04274(v0, v3, type metadata accessor for UntaggedResponse);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x535453495845;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_1B0D042DC(v3, type metadata accessor for UntaggedResponse);
      result = 20302;
      break;
    case 2:
      sub_1B0D042DC(v3, type metadata accessor for UntaggedResponse);
      result = 4473154;
      break;
    case 3:
      sub_1B0D042DC(v3, type metadata accessor for UntaggedResponse);
      result = 0x48545541455250;
      break;
    case 4:
      sub_1B0D042DC(v3, type metadata accessor for UntaggedResponse);
      result = 4544834;
      break;
    case 5:
      sub_1B0D042DC(v3, type metadata accessor for UntaggedResponse);
      result = 0x494C494241504143;
      break;
    case 6:
      sub_1B0D042DC(v3, type metadata accessor for UntaggedResponse);
      result = 0x44454C42414E45;
      break;
    case 7:
      sub_1B0D042DC(v3, type metadata accessor for UntaggedResponse);
      result = 1414744396;
      break;
    case 8:
      sub_1B0D042DC(v3, type metadata accessor for UntaggedResponse);
      result = 1112888140;
      break;
    case 9:
      sub_1B0D042DC(v3, type metadata accessor for UntaggedResponse);
      result = 0x535554415453;
      break;
    case 10:
      sub_1B0D042DC(v3, type metadata accessor for UntaggedResponse);
      result = 0x43415053454D414ELL;
      break;
    case 11:
      sub_1B0D042DC(v3, type metadata accessor for UntaggedResponse);
      result = 0x484352414553;
      break;
    case 12:
      sub_1B0D042DC(v3, type metadata accessor for UntaggedResponse);
      result = 0x48435241455345;
      break;
    case 13:
      sub_1B0D042DC(v3, type metadata accessor for UntaggedResponse);
      result = 0x5347414C46;
      break;
    case 14:
      sub_1B0D042DC(v3, type metadata accessor for UntaggedResponse);
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
      sub_1B0D042DC(v3, type metadata accessor for UntaggedResponse);
      result = 0x44454853494E4156;
      break;
    case 19:
    case 22:
      sub_1B0D042DC(v3, type metadata accessor for UntaggedResponse);
      result = 0xD000000000000011;
      break;
    case 20:
      sub_1B0D042DC(v3, type metadata accessor for UntaggedResponse);
      result = 0x4843544546;
      break;
    case 21:
      sub_1B0D042DC(v3, type metadata accessor for UntaggedResponse);
      result = 17481;
      break;
    default:
      sub_1B0D042DC(v3, type metadata accessor for UntaggedResponse);
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
        return static ResponseText.__derived_struct_equals(_:_:)(a1, a2, a3, a5, a6, a7);
      }
    }

    else if (a8 == 2)
    {
      return static ResponseText.__derived_struct_equals(_:_:)(a1, a2, a3, a5, a6, a7);
    }
  }

  else if (!a8)
  {
    return static ResponseText.__derived_struct_equals(_:_:)(a1, a2, a3, a5, a6, a7);
  }

  return 0;
}

uint64_t sub_1B0D026E8(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = *(a1 + 24);
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = *(a2 + 24);
  if (v7)
  {
    if (v7 == 1)
    {
      if (v11 == 1)
      {
        return static ResponseText.__derived_struct_equals(_:_:)(v4, v5, v6, v8, v9, v10);
      }
    }

    else if (v11 == 2)
    {
      return static ResponseText.__derived_struct_equals(_:_:)(v4, v5, v6, v8, v9, v10);
    }
  }

  else if (!v11)
  {
    return static ResponseText.__derived_struct_equals(_:_:)(v4, v5, v6, v8, v9, v10);
  }

  return 0;
}

uint64_t CommandCompletionResponse.responseText.getter(uint64_t a1)
{
  sub_1B04420D8(a1);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return a1;
}

unint64_t sub_1B0D02788(unint64_t a1, unint64_t a2)
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
  v7 = sub_1B0D029C4(0xFuLL, a1, a2);
  v8 = sub_1B0D029C4(v6, a1, a2);
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
        result = sub_1B0E44C18();
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
            v15 = sub_1B0E46368();
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
        result = sub_1B0E44C28();
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
            v20 = sub_1B0E46368();
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

unint64_t sub_1B0D029C4(unint64_t result, unint64_t a2, unint64_t a3)
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
    result = sub_1B0D02A5C(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1B0C04F4C(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_1B0D02A5C(unint64_t result, unint64_t a2, unint64_t a3)
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
    result = sub_1B0A6D6C4(result, a2, a3);
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
  v181 = a1;
  v182 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v162 = &v161 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v161 = &v161 - v5;
  v180 = type metadata accessor for UntaggedResponse(0);
  MEMORY[0x1EEE9AC00](v180);
  v177 = &v161 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v176 = &v161 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v175 = &v161 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v179 = &v161 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v178 = &v161 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v174 = (&v161 - v16);
  MEMORY[0x1EEE9AC00](v17);
  v173 = (&v161 - v18);
  MEMORY[0x1EEE9AC00](v19);
  v171 = (&v161 - v20);
  MEMORY[0x1EEE9AC00](v21);
  v172 = (&v161 - v22);
  MEMORY[0x1EEE9AC00](v23);
  v170 = (&v161 - v24);
  MEMORY[0x1EEE9AC00](v25);
  v169 = (&v161 - v26);
  MEMORY[0x1EEE9AC00](v27);
  v167 = (&v161 - v28);
  MEMORY[0x1EEE9AC00](v29);
  v166 = (&v161 - v30);
  MEMORY[0x1EEE9AC00](v31);
  v168 = &v161 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v165 = (&v161 - v34);
  MEMORY[0x1EEE9AC00](v35);
  v164 = (&v161 - v36);
  MEMORY[0x1EEE9AC00](v37);
  v163 = (&v161 - v38);
  MEMORY[0x1EEE9AC00](v39);
  v41 = (&v161 - v40);
  MEMORY[0x1EEE9AC00](v42);
  v44 = (&v161 - v43);
  MEMORY[0x1EEE9AC00](v45);
  v47 = (&v161 - v46);
  MEMORY[0x1EEE9AC00](v48);
  v50 = (&v161 - v49);
  MEMORY[0x1EEE9AC00](v51);
  v53 = (&v161 - v52);
  MEMORY[0x1EEE9AC00](v54);
  v56 = (&v161 - v55);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6508, &qword_1B0EE7C98);
  MEMORY[0x1EEE9AC00](v57 - 8);
  v59 = &v161 - v58;
  v61 = (&v161 + *(v60 + 56) - v58);
  sub_1B0D04274(v181, &v161 - v58, type metadata accessor for UntaggedResponse);
  v62 = v182;
  v182 = v61;
  sub_1B0D04274(v62, v61, type metadata accessor for UntaggedResponse);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1B0D04274(v59, v53, type metadata accessor for UntaggedResponse);
      v78 = *v53;
      v79 = v53[2];
      v115 = v182;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_33;
      }

      v81 = v53[1];
      v63 = v59;
      v109 = *v115;
      v108 = v115[1];
      v110 = v115[2];
      goto LABEL_29;
    case 2u:
      sub_1B0D04274(v59, v50, type metadata accessor for UntaggedResponse);
      v63 = v59;
      v64 = *v50;
      v101 = v50[2];
      v102 = v182;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_3;
      }

      v103 = v50[1];
      v104 = *v102;
      v73 = static ResponseText.__derived_struct_equals(_:_:)(v64, v103, v101, *v102, v102[1], v102[2]);
      sub_1B0447F00(v104);

      v105 = v64;
      goto LABEL_30;
    case 3u:
      sub_1B0D04274(v59, v47, type metadata accessor for UntaggedResponse);
      v78 = *v47;
      v79 = v47[2];
      v80 = v182;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_33;
      }

      v81 = v47[1];
      goto LABEL_24;
    case 4u:
      sub_1B0D04274(v59, v44, type metadata accessor for UntaggedResponse);
      v78 = *v44;
      v79 = v44[2];
      v80 = v182;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v81 = v44[1];
LABEL_24:
        v63 = v59;
        v109 = *v80;
        v108 = v80[1];
        v110 = v80[2];
LABEL_29:
        v73 = static ResponseText.__derived_struct_equals(_:_:)(v78, v81, v79, v109, v108, v110);
        sub_1B0447F00(v109);

        v105 = v78;
LABEL_30:
        sub_1B0447F00(v105);
        goto LABEL_31;
      }

LABEL_33:
      sub_1B0447F00(v78);
LABEL_50:

      goto LABEL_73;
    case 5u:
      sub_1B0D04274(v59, v41, type metadata accessor for UntaggedResponse);
      v120 = *v41;
      v121 = v182;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_50;
      }

      goto LABEL_48;
    case 6u:
      v133 = v163;
      sub_1B0D04274(v59, v163, type metadata accessor for UntaggedResponse);
      v120 = *v133;
      v121 = v182;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_50;
      }

LABEL_48:
      v77 = sub_1B044DA4C(v120, *v121);
      goto LABEL_49;
    case 7u:
      v111 = v164;
      sub_1B0D04274(v59, v164, type metadata accessor for UntaggedResponse);
      v112 = v111[1];
      v183[0] = *v111;
      v183[1] = v112;
      v183[2] = v111[2];
      v113 = v182;
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_26;
      }

      goto LABEL_56;
    case 8u:
      v144 = v165;
      sub_1B0D04274(v59, v165, type metadata accessor for UntaggedResponse);
      v145 = v144[1];
      v183[0] = *v144;
      v183[1] = v145;
      v183[2] = v144[2];
      v113 = v182;
      if (swift_getEnumCaseMultiPayload() == 8)
      {
LABEL_26:
        v114 = *(v113 + 1);
        v184[0] = *v113;
        v184[1] = v114;
        v184[2] = *(v113 + 2);
        v73 = static MailboxInfo.__derived_struct_equals(_:_:)(v183, v184);
        sub_1B0D0433C(v184);
        sub_1B0D0433C(v183);
        goto LABEL_62;
      }

LABEL_56:
      sub_1B0D0433C(v183);
      goto LABEL_73;
    case 9u:
      v86 = v168;
      sub_1B0D04274(v59, v168, type metadata accessor for UntaggedResponse);
      v87 = *v86;
      v88 = *(v86 + 8);
      v89 = *(v86 + 96);
      v183[4] = *(v86 + 80);
      v183[5] = v89;
      v90 = *(v86 + 128);
      v183[6] = *(v86 + 112);
      v183[7] = v90;
      v91 = *(v86 + 32);
      v183[0] = *(v86 + 16);
      v183[1] = v91;
      v92 = *(v86 + 64);
      v183[2] = *(v86 + 48);
      v183[3] = v92;
      v93 = v182;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        sub_1B0B11B9C(v183);

        goto LABEL_73;
      }

      v94 = *v93;
      v95 = *(v93 + 2);
      v96 = *(v93 + 6);
      v184[4] = *(v93 + 5);
      v184[5] = v96;
      v97 = *(v93 + 8);
      v184[6] = *(v93 + 7);
      v184[7] = v97;
      v98 = *(v93 + 2);
      v184[0] = *(v93 + 1);
      v184[1] = v98;
      v99 = *(v93 + 4);
      v184[2] = *(v93 + 3);
      v184[3] = v99;
      if ((v88 | (v88 << 32)) == (v95 | (v95 << 32)))
      {
        v100 = sub_1B04520BC(v87, v94);

        if (v100)
        {
          v73 = static MailboxStatus.__derived_struct_equals(_:_:)(v183, v184);
          sub_1B0B11B9C(v183);
          sub_1B0B11B9C(v184);
          goto LABEL_62;
        }

        sub_1B0B11B9C(v183);
        sub_1B0B11B9C(v184);
      }

      else
      {
        sub_1B0B11B9C(v183);
        sub_1B0B11B9C(v184);
      }

      sub_1B0D042DC(v59, type metadata accessor for UntaggedResponse);
      goto LABEL_74;
    case 0xAu:
      v138 = v166;
      sub_1B0D04274(v59, v166, type metadata accessor for UntaggedResponse);
      v139 = *v138;
      v140 = v138[1];
      v141 = v59;
      v142 = v138[2];
      v143 = v182;
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        v73 = static NamespaceResponse.__derived_struct_equals(_:_:)(v139, v140, v142, *v143, v143[1], v143[2]);

        sub_1B0D042DC(v141, type metadata accessor for UntaggedResponse);
        return v73 & 1;
      }

      v59 = v141;
      goto LABEL_73;
    case 0xBu:
      v74 = v167;
      sub_1B0D04274(v59, v167, type metadata accessor for UntaggedResponse);
      v75 = *v74;
      v76 = v182;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_50;
      }

      v77 = sub_1B03D2D0C(v75, *v76);
      goto LABEL_49;
    case 0xCu:
      v82 = v169;
      sub_1B0D04274(v59, v169, type metadata accessor for UntaggedResponse);
      v83 = v82[1];
      v183[0] = *v82;
      v183[1] = v83;
      v183[2] = v82[2];
      v84 = v182;
      if (swift_getEnumCaseMultiPayload() == 12)
      {
        v85 = *(v84 + 1);
        v184[0] = *v84;
        v184[1] = v85;
        v184[2] = *(v84 + 2);
        v73 = static ExtendedSearchResponse.__derived_struct_equals(_:_:)(v183, v184);
        sub_1B0A96464(v183);
        sub_1B0A96464(v184);
        goto LABEL_62;
      }

      sub_1B0A96464(v183);
      goto LABEL_73;
    case 0xDu:
      v130 = v170;
      sub_1B0D04274(v59, v170, type metadata accessor for UntaggedResponse);
      v131 = *v130;
      v132 = v182;
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_50;
      }

      v77 = sub_1B0AFE1EC(v131, *v132);
LABEL_49:
      v73 = v77;

      goto LABEL_62;
    case 0xEu:
      v69 = v172;
      sub_1B0D04274(v59, v172, type metadata accessor for UntaggedResponse);
      v70 = v69[1];
      v183[0] = *v69;
      v183[1] = v70;
      v183[2] = v69[2];
      v71 = v182;
      if (swift_getEnumCaseMultiPayload() == 14)
      {
        v72 = *(v71 + 1);
        v184[0] = *v71;
        v184[1] = v72;
        v184[2] = *(v71 + 2);
        v73 = static UIDBatchesResponse.__derived_struct_equals(_:_:)(v183, v184);
        v192[0] = v183[0];
        sub_1B03B1198(v192);
        v189 = *&v183[1];
        v190 = DWORD2(v183[1]);
        sub_1B0398EFC(&v189, &qword_1EB6E63F0, &unk_1B0EE7CA0);
        v191 = *(&v183[2] + 1);
        v63 = v59;
        sub_1B0398EFC(&v191, &qword_1EB6E24F8, &qword_1B0E9CD00);
        v187 = v184[0];
        sub_1B03B1198(&v187);
        v185 = *&v184[1];
        v186 = DWORD2(v184[1]);
        sub_1B0398EFC(&v185, &qword_1EB6E63F0, &unk_1B0EE7CA0);
        v188 = *(&v184[2] + 1);
        sub_1B0398EFC(&v188, &qword_1EB6E24F8, &qword_1B0E9CD00);
        goto LABEL_32;
      }

      v157 = v69[1];
      v184[0] = *v69;
      v184[1] = v157;
      LOBYTE(v184[2]) = *(v69 + 32);
      v192[0] = v184[0];
      sub_1B03B1198(v192);
      *&v187 = *&v184[1];
      DWORD2(v187) = DWORD2(v184[1]);
      sub_1B0398EFC(&v187, &qword_1EB6E63F0, &unk_1B0EE7CA0);
      v189 = *(&v183[2] + 1);
      sub_1B0398EFC(&v189, &qword_1EB6E24F8, &qword_1B0E9CD00);
      goto LABEL_73;
    case 0xFu:
      v67 = v171;
      sub_1B0D04274(v59, v171, type metadata accessor for UntaggedResponse);
      v68 = v182;
      if (swift_getEnumCaseMultiPayload() == 15)
      {
        goto LABEL_21;
      }

      goto LABEL_73;
    case 0x10u:
      v67 = v173;
      sub_1B0D04274(v59, v173, type metadata accessor for UntaggedResponse);
      v68 = v182;
      if (swift_getEnumCaseMultiPayload() != 16)
      {
        goto LABEL_73;
      }

LABEL_21:
      v106 = *v67;
      v107 = *v68;
      goto LABEL_36;
    case 0x11u:
      v116 = v174;
      sub_1B0D04274(v59, v174, type metadata accessor for UntaggedResponse);
      v117 = v182;
      if (swift_getEnumCaseMultiPayload() != 17)
      {
        goto LABEL_73;
      }

      v106 = *v117;
      v107 = *v116;
LABEL_36:
      v73 = v106 == v107;
      goto LABEL_62;
    case 0x12u:
      v134 = v178;
      sub_1B0D04274(v59, v178, type metadata accessor for UntaggedResponse);
      v135 = v182;
      if (swift_getEnumCaseMultiPayload() != 18)
      {
        goto LABEL_63;
      }

      v136 = v135;
      v137 = v161;
      goto LABEL_61;
    case 0x13u:
      v134 = v179;
      sub_1B0D04274(v59, v179, type metadata accessor for UntaggedResponse);
      v156 = v182;
      if (swift_getEnumCaseMultiPayload() != 19)
      {
LABEL_63:
        sub_1B0398EFC(v134, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        goto LABEL_73;
      }

      v136 = v156;
      v137 = v162;
LABEL_61:
      sub_1B074BA2C(v136, v137);
      sub_1B03D06F8();
      v73 = sub_1B0E46E08();
      sub_1B0398EFC(v137, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B0398EFC(v134, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      goto LABEL_62;
    case 0x14u:
      v118 = v175;
      sub_1B0D04274(v59, v175, type metadata accessor for UntaggedResponse);
      memcpy(v183, v118, 0x268uLL);
      v119 = v182;
      if (swift_getEnumCaseMultiPayload() != 20)
      {
        sub_1B0AA4C0C(v183);
        goto LABEL_73;
      }

      memcpy(v184, v119, 0x268uLL);
      v73 = _s13IMAP2Protocol11MessageDataV23__derived_struct_equalsySbAC_ACtFZ_0(v183);
      sub_1B0AA4C0C(v184);
      sub_1B0AA4C0C(v183);
LABEL_62:
      sub_1B0D042DC(v59, type metadata accessor for UntaggedResponse);
      return v73 & 1;
    case 0x15u:
      v122 = v176;
      sub_1B0D04274(v59, v176, type metadata accessor for UntaggedResponse);
      v123 = *(v122 + 8);
      v124 = *(v122 + 16);
      v125 = v182;
      if (swift_getEnumCaseMultiPayload() != 21)
      {

        goto LABEL_73;
      }

      v126 = v59;
      v127 = v125[1];
      v128 = v125[2];
      if (sub_1B045202C(v123, v127))
      {
        v129 = sub_1B0C2DAB0(v124, v128);

        if (v129)
        {
          sub_1B0D042DC(v126, type metadata accessor for UntaggedResponse);
          v73 = 1;
          return v73 & 1;
        }
      }

      else
      {
      }

      sub_1B0D042DC(v126, type metadata accessor for UntaggedResponse);
      goto LABEL_74;
    case 0x16u:
      v146 = v177;
      sub_1B0D04274(v59, v177, type metadata accessor for UntaggedResponse);
      v147 = *v146;
      v148 = *(v146 + 8);
      v63 = v59;
      v149 = *(v146 + 16);
      v150 = *(v146 + 24);
      v151 = v182;
      if (swift_getEnumCaseMultiPayload() == 22)
      {
        v181 = v63;
        v152 = *v151;
        v153 = v151[1];
        v154 = v151[2];
        v155 = *(v151 + 24);
        v73 = static ApplePushService.__derived_enum_equals(_:_:)(v147, v148, v149, v150, *v151, v153, v154, v155);
        sub_1B0C26CD4(v152, v153, v154, v155);
        sub_1B0C26CD4(v147, v148, v149, v150);
        sub_1B0D042DC(v181, type metadata accessor for UntaggedResponse);
        return v73 & 1;
      }

      sub_1B0C26CD4(v147, v148, v149, v150);
      goto LABEL_72;
    default:
      sub_1B0D04274(v59, v56, type metadata accessor for UntaggedResponse);
      v63 = v59;
      v64 = *v56;
      v65 = v56[2];
      v66 = v182;
      if (swift_getEnumCaseMultiPayload())
      {
LABEL_3:
        sub_1B0447F00(v64);

LABEL_72:
        v59 = v63;
LABEL_73:
        sub_1B0398EFC(v59, &qword_1EB6E6508, &qword_1B0EE7C98);
LABEL_74:
        v73 = 0;
      }

      else
      {
        v159 = v56[1];
        v160 = *v66;
        v73 = static ResponseText.__derived_struct_equals(_:_:)(v64, v159, v65, *v66, v66[1], v66[2]);
        sub_1B0447F00(v160);

        sub_1B0447F00(v64);
LABEL_31:

LABEL_32:
        sub_1B0D042DC(v63, type metadata accessor for UntaggedResponse);
      }

      return v73 & 1;
  }
}

uint64_t _s13IMAP2Protocol8ResponseO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UntaggedResponse(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for Response(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v41 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6500, &unk_1B0EE7C88);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v41 - v14;
  v17 = &v41 + *(v16 + 56) - v14;
  sub_1B0D04274(a1, &v41 - v14, type metadata accessor for Response);
  sub_1B0D04274(a2, v17, type metadata accessor for Response);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B0D04274(v15, v9, type metadata accessor for Response);
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
            v28 = static ResponseText.__derived_struct_equals(_:_:)(v20, v19, v21, v25, v26, v23);
            sub_1B0BB6FE0(v25, v26, v27, 1u);
            v29 = v20;
            v30 = v19;
            v31 = v21;
            v32 = 1;
            goto LABEL_18;
          }

LABEL_20:
          sub_1B0BB6FE0(*(v17 + 1), *(v17 + 2), v23, v24);
          sub_1B0BB6FE0(v20, v19, v21, v22);
LABEL_21:
          sub_1B0D042DC(v15, type metadata accessor for Response);
          goto LABEL_22;
        }

        if (v24 != 2)
        {
          goto LABEL_20;
        }

        v37 = *(v17 + 1);
        v38 = *(v17 + 2);
        v39 = v23;
        v28 = static ResponseText.__derived_struct_equals(_:_:)(v20, v19, v21, v37, v38, v23);
        sub_1B0BB6FE0(v37, v38, v39, 2u);
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
        v28 = static ResponseText.__derived_struct_equals(_:_:)(v20, v19, v21, v34, v35, v23);
        sub_1B0BB6FE0(v34, v35, v36, 0);
        v29 = v20;
        v30 = v19;
        v31 = v21;
        v32 = 0;
      }

LABEL_18:
      sub_1B0BB6FE0(v29, v30, v31, v32);
      if (v28)
      {
        sub_1B0D042DC(v15, type metadata accessor for Response);
        v33 = 1;
        return v33 & 1;
      }

      goto LABEL_21;
    }

    sub_1B0BB6FE0(v20, v19, v21, v22);
LABEL_12:
    sub_1B0398EFC(v15, &qword_1EB6E6500, &unk_1B0EE7C88);
LABEL_22:
    v33 = 0;
    return v33 & 1;
  }

  sub_1B0D04274(v15, v12, type metadata accessor for Response);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B0D042DC(v12, type metadata accessor for UntaggedResponse);
    goto LABEL_12;
  }

  sub_1B0D046C0(v17, v6, type metadata accessor for UntaggedResponse);
  v33 = _s13IMAP2Protocol16UntaggedResponseO21__derived_enum_equalsySbAC_ACtFZ_0(v12, v6);
  sub_1B0D042DC(v6, type metadata accessor for UntaggedResponse);
  sub_1B0D042DC(v12, type metadata accessor for UntaggedResponse);
  sub_1B0D042DC(v15, type metadata accessor for Response);
  return v33 & 1;
}

void sub_1B0D041E8(uint64_t a1)
{
  type metadata accessor for UntaggedResponse(319);
  if (v1 <= 0x3F)
  {
    sub_1B041C13C(319, &qword_1EB6DD0D0, &type metadata for Tag, &type metadata for CommandCompletionResponse);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_1B0D04274(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0D042DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

int8x16_t sub_1B0D04390(int8x16_t *a1)
{
  v1 = a1[4].i64[1] & 1;
  v2 = a1[5].i64[1] & 1;
  v3 = a1[6].i64[1] & 1;
  v4 = a1[7].i64[1] & 1 | 0xA000000000000000;
  result = vandq_s8(a1[3], xmmword_1B0ED0F80);
  a1[3] = result;
  a1[4].i64[1] = v1;
  a1[5].i64[1] = v2;
  a1[6].i64[1] = v3;
  a1[7].i64[1] = v4;
  return result;
}

int8x16_t sub_1B0D043F0(int8x16_t *a1)
{
  v1 = a1[4].i64[1] & 1;
  v2 = a1[5].i64[1] & 1;
  v3 = a1[6].i64[1] & 1;
  v4 = a1[7].i64[1] & 1 | 0x7000000000000000;
  result = vandq_s8(a1[3], xmmword_1B0ED0F80);
  a1[3] = result;
  a1[4].i64[1] = v1;
  a1[5].i64[1] = v2;
  a1[6].i64[1] = v3;
  a1[7].i64[1] = v4;
  return result;
}

int8x16_t sub_1B0D0443C(int8x16_t *a1)
{
  v1 = a1[4].i64[1] & 1;
  v2 = a1[5].i64[1] & 1;
  v3 = a1[6].i64[1] & 1;
  v4 = a1[7].i64[1] & 1 | 0x6000000000000000;
  result = vandq_s8(a1[3], xmmword_1B0ED0F80);
  a1[3] = result;
  a1[4].i64[1] = v1;
  a1[5].i64[1] = v2;
  a1[6].i64[1] = v3;
  a1[7].i64[1] = v4;
  return result;
}

int8x16_t sub_1B0D04488(int8x16_t *a1)
{
  v1 = a1[4].i64[1] & 1;
  v2 = a1[5].i64[1] & 1;
  v3 = a1[6].i64[1] & 1;
  v4 = a1[7].i64[1] & 1;
  result = vandq_s8(a1[3], xmmword_1B0ED0F80);
  a1[3] = result;
  a1[4].i64[1] = v1;
  a1[5].i64[1] = v2;
  a1[6].i64[1] = v3;
  a1[7].i64[1] = v4;
  return result;
}

int8x16_t sub_1B0D044D0(int8x16_t *a1)
{
  v1 = a1[4].i64[1] & 1;
  v2 = a1[5].i64[1] & 1;
  v3 = a1[6].i64[1] & 1;
  v4 = a1[7].i64[1] & 1 | 0x4000000000000000;
  result = vandq_s8(a1[3], xmmword_1B0ED0F80);
  a1[3] = result;
  a1[4].i64[1] = v1;
  a1[5].i64[1] = v2;
  a1[6].i64[1] = v3;
  a1[7].i64[1] = v4;
  return result;
}

int8x16_t sub_1B0D0451C(int8x16_t *a1)
{
  v1 = a1[4].i64[1] & 1;
  v2 = a1[5].i64[1] & 1;
  v3 = a1[6].i64[1] & 1;
  v4 = a1[7].i64[1] & 1 | 0x3000000000000000;
  result = vandq_s8(a1[3], xmmword_1B0ED0F80);
  a1[3] = result;
  a1[4].i64[1] = v1;
  a1[5].i64[1] = v2;
  a1[6].i64[1] = v3;
  a1[7].i64[1] = v4;
  return result;
}

int8x16_t sub_1B0D04568(int8x16_t *a1)
{
  v1 = a1[4].i64[1] & 1;
  v2 = a1[5].i64[1] & 1;
  v3 = a1[6].i64[1] & 1;
  v4 = a1[7].i64[1] & 1 | 0x8000000000000000;
  result = vandq_s8(a1[3], xmmword_1B0ED0F80);
  a1[3] = result;
  a1[4].i64[1] = v1;
  a1[5].i64[1] = v2;
  a1[6].i64[1] = v3;
  a1[7].i64[1] = v4;
  return result;
}

int8x16_t sub_1B0D045B4(int8x16_t *a1)
{
  v1 = a1[4].i64[1] & 1;
  v2 = a1[5].i64[1] & 1;
  v3 = a1[6].i64[1] & 1;
  v4 = a1[7].i64[1] & 1 | 0x5000000000000000;
  result = vandq_s8(a1[3], xmmword_1B0ED0F80);
  a1[3] = result;
  a1[4].i64[1] = v1;
  a1[5].i64[1] = v2;
  a1[6].i64[1] = v3;
  a1[7].i64[1] = v4;
  return result;
}

int8x16_t sub_1B0D04600(int8x16_t *a1)
{
  v1 = a1[4].i64[1] & 1;
  v2 = a1[5].i64[1] & 1;
  v3 = a1[6].i64[1] & 1;
  v4 = a1[7].i64[1] & 1 | 0x2000000000000000;
  result = vandq_s8(a1[3], xmmword_1B0ED0F80);
  a1[3] = result;
  a1[4].i64[1] = v1;
  a1[5].i64[1] = v2;
  a1[6].i64[1] = v3;
  a1[7].i64[1] = v4;
  return result;
}

int8x16_t sub_1B0D0464C(int8x16_t *a1)
{
  v1 = a1[4].i64[1] & 1;
  v2 = a1[5].i64[1] & 1;
  v3 = a1[6].i64[1] & 1;
  v4 = a1[7].i64[1] & 1 | 0x1000000000000000;
  result = vandq_s8(a1[3], xmmword_1B0ED0F80);
  a1[3] = result;
  a1[4].i64[1] = v1;
  a1[5].i64[1] = v2;
  a1[6].i64[1] = v3;
  a1[7].i64[1] = v4;
  return result;
}

uint64_t sub_1B0D046C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_1B0D04728(uint64_t a1)
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

double sub_1B0D047BC(uint64_t a1)
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

__n128 ServerID.init(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1B041DB30(a1, a2, a3, v10);
  v5 = v10[9];
  *(a4 + 128) = v10[8];
  *(a4 + 144) = v5;
  *(a4 + 160) = v10[10];
  v6 = v10[5];
  *(a4 + 64) = v10[4];
  *(a4 + 80) = v6;
  v7 = v10[7];
  *(a4 + 96) = v10[6];
  *(a4 + 112) = v7;
  v8 = v10[1];
  *a4 = v10[0];
  *(a4 + 16) = v8;
  result = v10[3];
  *(a4 + 32) = v10[2];
  *(a4 + 48) = result;
  return result;
}

uint64_t static ServerID.empty.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_1EB6DD0B8 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_1B039F420(&static ServerID.empty, v2);
}

uint64_t ServerID.name.getter()
{
  v1 = *v0;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t ServerID.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ServerID.version.getter()
{
  v1 = *(v0 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t ServerID.version.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t ServerID.os.getter()
{
  v1 = *(v0 + 32);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t ServerID.os.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t ServerID.osVersion.getter()
{
  v1 = *(v0 + 48);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t ServerID.osVersion.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t ServerID.vendor.getter()
{
  v1 = *(v0 + 64);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t ServerID.vendor.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t ServerID.supportURL.getter()
{
  v1 = *(v0 + 80);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t ServerID.supportURL.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t ServerID.address.getter()
{
  v1 = *(v0 + 96);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
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
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
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
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
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
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
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
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t ServerID.environment.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  return result;
}

uint64_t sub_1B0D04F74(_OWORD *a1, _OWORD *a2)
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

uint64_t ServerID.logDescription.getter()
{
  v1 = v0;
  v35 = 1701667182;
  v36 = 0xE400000000000000;
  v37[0] = swift_getKeyPath();
  v37[1] = 0x6E6F6973726576;
  v37[2] = 0xE700000000000000;
  v37[3] = swift_getKeyPath();
  v37[4] = 29551;
  v37[5] = 0xE200000000000000;
  v37[6] = swift_getKeyPath();
  v37[7] = 0x6F6973726556736FLL;
  v37[8] = 0xE90000000000006ELL;
  v37[9] = swift_getKeyPath();
  v37[10] = 0x726F646E6576;
  v37[11] = 0xE600000000000000;
  v37[12] = swift_getKeyPath();
  v37[13] = 0x5574726F70707573;
  v37[14] = 0xEA00000000004C52;
  v37[15] = swift_getKeyPath();
  v37[16] = 0x73736572646461;
  v37[17] = 0xE700000000000000;
  v37[18] = swift_getKeyPath();
  v37[19] = 1702125924;
  v37[20] = 0xE400000000000000;
  v37[21] = swift_getKeyPath();
  v37[22] = 0x646E616D6D6F63;
  v37[23] = 0xE700000000000000;
  v37[24] = swift_getKeyPath();
  v37[25] = 0x746E656D75677261;
  v37[26] = 0xE900000000000073;
  v37[27] = swift_getKeyPath();
  v37[28] = 0x6D6E6F7269766E65;
  v37[29] = 0xEB00000000746E65;
  result = swift_getKeyPath();
  v3 = 0;
  v37[30] = result;
  v4 = MEMORY[0x1E69E7CC0];
  do
  {
    v5 = 11;
    if (v3 > 0xB)
    {
      v5 = v3;
    }

    v6 = -v5;
    v7 = &v37[3 * v3++];
    while (1)
    {
      if (v6 + v3 == 1)
      {
        __break(1u);
        return result;
      }

      v9 = *(v7 - 2);
      v8 = *(v7 - 1);
      v10 = v1[9];
      v31 = v1[8];
      v32 = v10;
      v33 = v1[10];
      v11 = v1[5];
      v27 = v1[4];
      v28 = v11;
      v12 = v1[7];
      v29 = v1[6];
      v30 = v12;
      v13 = v1[1];
      v23 = *v1;
      v24 = v13;
      v14 = v1[3];
      v25 = v1[2];
      v26 = v14;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      sub_1B039F420(v1, v21);
      swift_getAtKeyPath();
      v34[8] = v31;
      v34[9] = v32;
      v34[10] = v33;
      v34[4] = v27;
      v34[5] = v28;
      v34[6] = v29;
      v34[7] = v30;
      v34[0] = v23;
      v34[1] = v24;
      v34[2] = v25;
      v34[3] = v26;
      sub_1B039FF14(v34);
      v15 = v22;
      if (v22)
      {
        break;
      }

      ++v3;
      v7 += 3;
      if (v3 == 12)
      {
        goto LABEL_14;
      }
    }

    v16 = v21[22];
    *&v23 = v9;
    *(&v23 + 1) = v8;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    MEMORY[0x1B2726E80](8250, 0xE200000000000000);
    MEMORY[0x1B2726E80](v16, v15);

    v17 = v23;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B0AFF0E8(0, *(v4 + 16) + 1, 1, v4);
      v4 = result;
    }

    v19 = *(v4 + 16);
    v18 = *(v4 + 24);
    if (v19 >= v18 >> 1)
    {
      result = sub_1B0AFF0E8((v18 > 1), v19 + 1, 1, v4);
      v4 = result;
    }

    *(v4 + 16) = v19 + 1;
    *(v4 + 16 * v19 + 32) = v17;
  }

  while (v3 != 11);
LABEL_14:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6540, &qword_1B0EE7E38);
  swift_arrayDestroy();
  if (*(v4 + 16))
  {
    *&v34[0] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
    sub_1B03B11C4();
    v20 = sub_1B0E448E8();
  }

  else
  {

    return 0;
  }

  return v20;
}

char *sub_1B0D054C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6578, &qword_1B0EE7F10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1B0D055E0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6550, &qword_1B0EE7EF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6558, &qword_1B0EE8180);
    swift_arrayInitWithCopy();
  }

  return v10;
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
      v7 = sub_1B0E46A78();
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
      v13 = sub_1B0E46A78();
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
      v19 = sub_1B0E46A78();
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
      v25 = sub_1B0E46A78();
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
      v31 = sub_1B0E46A78();
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
      v37 = sub_1B0E46A78();
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
      v43 = sub_1B0E46A78();
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
      v49 = sub_1B0E46A78();
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
      v55 = sub_1B0E46A78();
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
      v61 = sub_1B0E46A78();
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
    if (v64 && (a1[20] == a2[20] && v63 == v64 || (sub_1B0E46A78() & 1) != 0))
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

uint64_t sub_1B0D05B20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6440, &unk_1B0EF3530);
  v32 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - v6;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6570, &unk_1B0EF3540);
  v8 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v10 = (&v29 - v9);
  v11 = MEMORY[0x1E69E7CC0];
  v35 = 0;
  v36 = MEMORY[0x1E69E7CC0];
  v12 = *(a1 + 16);
  sub_1B041C260(v12, 0);
  v34 = v11;
  sub_1B0CEF5BC(0, v12, 0);
  v13 = v34;
  v31 = v12;
  if (!v12)
  {
    return v35;
  }

  v14 = 0;
  v30 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v29 = *(v8 + 72);
  while (1)
  {
    sub_1B03B5C80(v30 + v29 * v14, v10, &qword_1EB6E6570, &unk_1B0EF3540);
    v16 = *v10;
    v15 = v10[1];
    sub_1B0D063A4(v10 + *(v33 + 48), v7);
    v17 = v35;
    v18 = v36;
    v19 = *(v36 + 16);
    if (!v35)
    {
      break;
    }

    sub_1B0C08B5C(v16, v15, v18 + 32, v19, (v17 + 16), v17 + 32);
    v21 = v20;
    v23 = v22;

    if ((v21 & 1) == 0)
    {
      goto LABEL_21;
    }

LABEL_15:
    sub_1B0C07E68(v16, v15, v23);
    sub_1B03B5C80(v7, v4, &qword_1EB6E6440, &unk_1B0EF3530);
    v34 = v13;
    v28 = *(v13 + 16);
    v27 = *(v13 + 24);
    if (v28 >= v27 >> 1)
    {
      sub_1B0CEF5BC((v27 > 1), v28 + 1, 1);

      v13 = v34;
    }

    else
    {
    }

    ++v14;
    sub_1B0D06414(v7);
    *(v13 + 16) = v28 + 1;
    sub_1B0D063A4(v4, v13 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v28);
    if (v14 == v31)
    {
      return v35;
    }
  }

  if (!v19)
  {
LABEL_14:
    v23 = 0;
    goto LABEL_15;
  }

  v25 = (v36 + 40);
  while (1)
  {
    result = *(v25 - 1);
    if (result == v16 && *v25 == v15)
    {
      break;
    }

    result = sub_1B0E46A78();
    if (result)
    {
      break;
    }

    v25 += 2;
    if (!--v19)
    {
      goto LABEL_14;
    }
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1B0D05E68(uint64_t a1)
{
  v2 = type metadata accessor for ParameterValue(0);
  v32 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - v6;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6568, &qword_1B0EE7F08);
  v8 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v10 = (&v29 - v9);
  v11 = MEMORY[0x1E69E7CC0];
  v35 = 0;
  v36 = MEMORY[0x1E69E7CC0];
  v12 = *(a1 + 16);
  sub_1B041C260(v12, 0);
  v34 = v11;
  sub_1B0CEF664(0, v12, 0);
  v13 = v34;
  v31 = v12;
  if (!v12)
  {
    return v35;
  }

  v14 = 0;
  v30 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v29 = *(v8 + 72);
  while (1)
  {
    sub_1B03B5C80(v30 + v29 * v14, v10, &qword_1EB6E6568, &qword_1B0EE7F08);
    v16 = *v10;
    v15 = v10[1];
    sub_1B0D06280(v10 + *(v33 + 48), v7);
    v17 = v35;
    v18 = v36;
    v19 = *(v36 + 16);
    if (!v35)
    {
      break;
    }

    sub_1B0C08B5C(v16, v15, v18 + 32, v19, (v17 + 16), v17 + 32);
    v21 = v20;
    v23 = v22;

    if ((v21 & 1) == 0)
    {
      goto LABEL_21;
    }

LABEL_15:
    sub_1B0C07E68(v16, v15, v23);
    sub_1B0D062E4(v7, v4);
    v34 = v13;
    v28 = *(v13 + 16);
    v27 = *(v13 + 24);
    if (v28 >= v27 >> 1)
    {
      sub_1B0CEF664((v27 > 1), v28 + 1, 1);

      v13 = v34;
    }

    else
    {
    }

    ++v14;
    sub_1B0D06348(v7);
    *(v13 + 16) = v28 + 1;
    sub_1B0D06280(v4, v13 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v28);
    if (v14 == v31)
    {
      return v35;
    }
  }

  if (!v19)
  {
LABEL_14:
    v23 = 0;
    goto LABEL_15;
  }

  v25 = (v36 + 40);
  while (1)
  {
    result = *(v25 - 1);
    if (result == v16 && *v25 == v15)
    {
      break;
    }

    result = sub_1B0E46A78();
    if (result)
    {
      break;
    }

    v25 += 2;
    if (!--v19)
    {
      goto LABEL_14;
    }
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1B0D06194(uint64_t a1, unsigned int a2)
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

uint64_t sub_1B0D061F0(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1B0D06280(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParameterValue(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0D062E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParameterValue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0D06348(uint64_t a1)
{
  v2 = type metadata accessor for ParameterValue(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B0D063A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6440, &unk_1B0EF3530);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0D06414(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6440, &unk_1B0EF3530);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::String __swiftcall ServerResponseTranscoder.makeParsingErrorDescription()()
{
  v1 = v0;
  v2 = type metadata accessor for Response(0);
  v26 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v1[3];
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v23 = v1;
    v28 = MEMORY[0x1E69E7CC0];
    sub_1B041D32C(0, v5 & ~(v5 >> 63), 0);
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

        sub_1B0446A38(&v24[(v7 + v10 - v11) * *(v26 + 72)], v4, type metadata accessor for Response);
        sub_1B0D0ABA8(v4, v27);
        sub_1B0446AA0(v4, type metadata accessor for Response);
        v12 = v27[0];
        v13 = v27[1];
        v28 = v6;
        v15 = *(v6 + 16);
        v14 = *(v6 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_1B041D32C((v14 > 1), v15 + 1, 1);
          v8 = v23;
          v6 = v28;
        }

        *(v6 + 16) = v15 + 1;
        v16 = v6 + 16 * v15;
        *(v16 + 32) = v12;
        *(v16 + 40) = v13;
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
    sub_1B0446AA0(v4, type metadata accessor for Response);

    __break(1u);
  }

  else
  {
LABEL_12:
    v27[0] = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
    sub_1B03B11C4();
    v17 = sub_1B0E448E8();
    v19 = v18;

    v20 = v17;
    v21 = v19;
  }

  result._object = v21;
  result._countAndFlagsBits = v20;
  return result;
}

uint64_t sub_1B0D066F4()
{
  v0 = sub_1B0E439A8();
  __swift_allocate_value_buffer(v0, qword_1EB7383B8);
  __swift_project_value_buffer(v0, qword_1EB7383B8);
  return sub_1B0E43998();
}

uint64_t sub_1B0D0677C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = type metadata accessor for ResponsePayload(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Response(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0446A38(v3, v10, type metadata accessor for Response);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload == 4)
      {
        sub_1B0446AA0(v10, type metadata accessor for Response);
        sub_1B0D0CB74();
        swift_allocError();
        v26 = 9;
      }

      else
      {
        sub_1B0D0CB74();
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
    sub_1B044533C(v10, v7, type metadata accessor for ResponsePayload);
    sub_1B0D0A440(a1);
    result = sub_1B0446AA0(v7, type metadata accessor for ResponsePayload);
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
    v23 = sub_1B0D0CBC8(v45);
    if (v23 == 1)
    {
      v31 = *sub_1B041BA38(v45);
      sub_1B0D0CB74();
      swift_allocError();
      *v32 = v31;
      *(v32 + 4) = 0;
      return swift_willThrow();
    }

    if (!v23)
    {
      sub_1B041BA38(v45);
      sub_1B0D0CB74();
      swift_allocError();
      *v24 = 0;
      v25 = 1;
LABEL_18:
      *(v24 + 4) = v25;
      return swift_willThrow();
    }

    sub_1B0D0CB74();
    swift_allocError();
    *v33 = 1;
    *(v33 + 4) = 256;
    swift_willThrow();
    return sub_1B0D0CBE4(v34);
  }

  else
  {
    v29 = *(v10 + 1);
    v47 = *v10;
    v48[0] = v29;
    *(v48 + 9) = *(v10 + 25);
    sub_1B0D0AA68(a1);
    if (v2)
    {
      v51 = v47;
      sub_1B03B1198(&v51);
      v52[0] = v48[0];
      *(v52 + 9) = *(v48 + 9);
      v30 = v52;
    }

    else
    {
      v49 = v47;
      sub_1B03B1198(&v49);
      v50[0] = v48[0];
      *(v50 + 9) = *(v48 + 9);
      v30 = v50;
    }

    return sub_1B0D0CD48(v30);
  }
}

uint64_t sub_1B0D06B78@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  v11 = MEMORY[0x1E69E7CC0];
  sub_1B0D0703C(a1 | ((HIDWORD(a1) & 1) << 32));
  if (v2)
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1748, &qword_1B0E99930);
    if (swift_dynamicCast() && v10 == 1 && ((v8 | (v9 << 32)) & 0xFFFFFFFFFFLL) == 0)
    {

      swift_beginAccess();
      sub_1B0D0A0C4(v11);
      v5 = type metadata accessor for Response(0);
      (*(*(v5 - 8) + 56))(a2, 1, 1, v5);
    }
  }

  else
  {
    v7 = type metadata accessor for Response(0);
    (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
  }
}

uint64_t sub_1B0D06D08@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Response(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6580, &unk_1B0EE7F58);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v26 - v12;
  if (*(*a1 + 24) < 1)
  {
    v25 = *(v7 + 56);
    v25(v13, 1, 1, v6, v11);
    sub_1B0398EFC(v13, &qword_1EB6E6580, &unk_1B0EE7F58);
    return (v25)(a3, 1, 1, v6);
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1B0D0B5C8();
  }

  v14 = *a1;
  v15 = *(v7 + 80);
  v16 = *(v7 + 72);
  sub_1B044533C(v14 + ((v15 + 40) & ~v15) + v16 * v14[4], v13, type metadata accessor for Response);
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
  sub_1B044533C(v13, a3, type metadata accessor for Response);
  sub_1B0446A38(a3, v9, type metadata accessor for Response);
  swift_beginAccess();
  v14 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v14;
  v28 = a3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_15:
    v14 = sub_1B0D0549C(0, v14[2] + 1, 1, v14);
    *a2 = v14;
  }

  v23 = v14[2];
  v22 = v14[3];
  if (v23 >= v22 >> 1)
  {
    v14 = sub_1B0D0549C((v22 > 1), v23 + 1, 1, v14);
  }

  v14[2] = v23 + 1;
  sub_1B044533C(v9, v14 + ((v15 + 32) & ~v15) + v23 * v16, type metadata accessor for Response);
  *a2 = v14;
  swift_endAccess();
  return (v27)(v28, 0, 1, v6);
}

__int128 *sub_1B0D0703C(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v301 = v1;
  v349 = v2;
  v584 = v3;
  v339 = v4;
  v300 = v5;
  v324 = sub_1B0E443C8();
  v305 = *(v324 - 8);
  MEMORY[0x1EEE9AC00](v324);
  v310 = &v280 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2070, &qword_1B0E9F040);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v314 = &v280 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v307 = &v280 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v304 = &v280 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v320 = &v280 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4178, &unk_1B0EE7570);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v315 = &v280 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v309 = &v280 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v302 = &v280 - v20;
  v21 = type metadata accessor for MessageData.BodySection(0);
  v316 = *(v21 - 8);
  v317 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v319 = &v280 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v345 = &v280 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v303 = &v280 - v26;
  v326 = type metadata accessor for StreamedBodySection(0);
  v321 = *(v326 - 8);
  MEMORY[0x1EEE9AC00](v326);
  v308 = &v280 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v318 = &v280 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v322 = &v280 - v31;
  v348 = type metadata accessor for Response(0);
  v346 = *(v348 - 8);
  MEMORY[0x1EEE9AC00](v348);
  v325 = &v280 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v342 = &v280 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v341 = &v280 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E65A8, &unk_1B0EE8190);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v306 = &v280 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v312 = &v280 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v313 = &v280 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v311 = &v280 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v338 = &v280 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6580, &unk_1B0EE7F58);
  MEMORY[0x1EEE9AC00](v47 - 8);
  v344 = &v280 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v343 = &v280 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v280 - v52;
  MEMORY[0x1EEE9AC00](v54);
  v347 = &v280 - v55;
  sub_1B0ACEC5C(&v475);
  v360 = v484;
  v361 = v485;
  v355 = v479;
  v356 = v480;
  v357 = v481;
  v358 = v482;
  v359 = v483;
  v351 = v475;
  v352 = v476;
  v353 = v477;
  v354 = v478;
  v487[8] = v483;
  v487[9] = v484;
  v487[10] = v485;
  v487[4] = v479;
  v487[5] = v480;
  v487[6] = v481;
  v487[7] = v482;
  v487[0] = v475;
  v487[1] = v476;
  v362 = v486;
  LOBYTE(v380[0]) = 1;
  LOBYTE(v378[0]) = 1;
  v488 = v486;
  v487[2] = v477;
  v487[3] = v478;
  sub_1B0398EFC(v487, &qword_1EB6E4148, &qword_1B0EE17F0);
  *(&v363[8] + 3) = v483;
  *(&v363[9] + 3) = v484;
  *(&v363[10] + 3) = v485;
  BYTE3(v363[11]) = v486;
  *(&v363[4] + 3) = v479;
  *(&v363[5] + 3) = v480;
  *(&v363[6] + 3) = v481;
  *(&v363[7] + 3) = v482;
  *(v363 + 3) = v475;
  *(&v363[1] + 3) = v476;
  *(&v363[2] + 3) = v477;
  *(&v363[3] + 3) = v478;
  v489[8] = v359;
  v489[9] = v360;
  v489[10] = v361;
  v490 = v362;
  v489[4] = v355;
  v489[5] = v356;
  v489[6] = v357;
  v489[7] = v358;
  v489[0] = v351;
  v489[1] = v352;
  v489[2] = v353;
  v489[3] = v354;
  sub_1B0398EFC(v489, &qword_1EB6E4148, &qword_1B0EE17F0);
  v360 = v484;
  v361 = v485;
  v355 = v479;
  v356 = v480;
  v357 = v481;
  v362 = v486;
  v358 = v482;
  v359 = v483;
  v351 = v475;
  v352 = v476;
  v353 = v477;
  v354 = v478;
  v492 = 0;
  memset(v491, 0, sizeof(v491));
  sub_1B0398EFC(v491, &qword_1EB6E64B0, &unk_1B0EE81A0);
  v507 = v363[8];
  v508 = v363[9];
  v509 = v363[10];
  v503 = v363[4];
  v504 = v363[5];
  v505 = v363[6];
  v506 = v363[7];
  v499 = v363[0];
  v500 = v363[1];
  v501 = v363[2];
  v502 = v363[3];
  v521 = v359;
  v522 = v360;
  v523 = v361;
  v517 = v355;
  v518 = v356;
  v519 = v357;
  v520 = v358;
  v513 = v351;
  v514 = v352;
  v515 = v353;
  v516 = v354;
  v550 = v363[8];
  v551 = v363[9];
  v552 = v363[10];
  v546 = v363[4];
  v547 = v363[5];
  v548 = v363[6];
  v549 = v363[7];
  v542 = v363[0];
  v543 = v363[1];
  v544 = v363[2];
  v545 = v363[3];
  v563 = v359;
  v564 = v360;
  v565 = v361;
  v559 = v355;
  v560 = v356;
  v561 = v357;
  v562 = v358;
  v555 = v351;
  v556 = v352;
  LOBYTE(v366) = 1;
  LOBYTE(v364[0]) = 1;
  v350[0] = 1;
  v494 = v380[0];
  v493 = 0;
  v497 = 0;
  v498 = v378[0];
  v510 = v363[11];
  v512 = MEMORY[0x1E69E7CC0];
  v524 = v362;
  memset(&v525[7], 0, 144);
  v526 = 1;
  v529 = 0;
  v530 = 1;
  v532 = 0;
  v533 = 1;
  v535 = 0u;
  v536 = 0u;
  v537 = 0u;
  v539 = v380[0];
  v538 = 0;
  v540 = 0;
  v541 = v378[0];
  v553 = v363[11];
  v554 = MEMORY[0x1E69E7CC0];
  v566 = v362;
  v557 = v353;
  v558 = v354;
  v574 = 0u;
  v575 = 0u;
  v572 = 0u;
  v573 = 0u;
  v570 = 0u;
  v571 = 0u;
  v568 = 0u;
  v569 = 0u;
  v567 = 0u;
  v576 = 1;
  v577 = 0;
  v578 = 1;
  v579 = 0;
  v580 = 1;
  v581 = 0u;
  v582 = 0u;
  v583 = 0u;
  sub_1B0CF6930(&v493, v382);
  sub_1B0AA4C0C(&v538);
  v464 = v494;
  v462 = v495;
  v463 = v496;
  v337 = v493;
  v461 = v498;
  v451 = v501;
  v452 = v502;
  v449 = v499;
  v450 = v500;
  v455 = v505;
  v456 = v506;
  v453 = v503;
  v454 = v504;
  v460 = v510;
  v458 = v508;
  v459 = v509;
  v457 = v507;
  v448[0] = *v511;
  *(v448 + 3) = *&v511[3];
  v444 = v521;
  v445 = v522;
  v446 = v523;
  v447 = v524;
  v440 = v517;
  v441 = v518;
  v442 = v519;
  v443 = v520;
  v436 = v513;
  v437 = v514;
  v438 = v515;
  v439 = v516;
  v433 = *&v525[64];
  v434 = *&v525[80];
  v435[0] = *&v525[96];
  *(v435 + 15) = *&v525[111];
  v429 = *v525;
  v430 = *&v525[16];
  v431 = *&v525[32];
  v432 = *&v525[48];
  v340 = v512;
  v332 = *&v525[127];
  v333 = *&v525[143];
  v428 = v526;
  v426 = v527;
  v427 = v528;
  v331 = v529;
  v425 = v530;
  v424[0] = *v531;
  *(v424 + 3) = *&v531[3];
  v423 = v533;
  v56 = v422;
  v422[0] = *v534;
  *(v422 + 3) = *&v534[3];
  v328 = v535;
  v334 = v532;
  v335 = *(&v535 + 1);
  v329 = *(&v536 + 1);
  v330 = v536;
  v336 = *(&v537 + 1);
  v57 = v537;
  if ((v339 & 0x100000000) != 0)
  {
    LODWORD(v339) = v497;
  }

  else
  {
    v461 = 0;
  }

  v58 = v347;
  sub_1B0D06D08(v584, v349, v347);
  v59 = v346;
  v60 = v348;
  if ((*(v346 + 48))(v58, 1, v348) == 1)
  {
    goto LABEL_14;
  }

  sub_1B03B5C80(v58, v53, &qword_1EB6E6580, &unk_1B0EE7F58);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B0446AA0(v53, type metadata accessor for Response);
LABEL_14:
    sub_1B0D0CB74();
    swift_allocError();
    *v74 = 1;
    *(v74 + 4) = 256;
    swift_willThrow();
    v75 = &qword_1EB6E6580;
    v76 = &unk_1B0EE7F58;
    v77 = v58;
LABEL_15:
    sub_1B0398EFC(v77, v75, v76);
    goto LABEL_16;
  }

  v61 = *(v53 + 7);
  v378[8] = *(v53 + 8);
  v62 = *(v53 + 8);
  v378[9] = *(v53 + 9);
  v63 = *(v53 + 9);
  v378[10] = *(v53 + 10);
  v64 = *(v53 + 3);
  v378[4] = *(v53 + 4);
  v65 = *(v53 + 4);
  v378[5] = *(v53 + 5);
  v66 = *(v53 + 5);
  v378[6] = *(v53 + 6);
  v67 = *(v53 + 6);
  v378[7] = *(v53 + 7);
  v68 = *(v53 + 1);
  v378[0] = *v53;
  v378[1] = v68;
  v70 = *v53;
  v69 = *(v53 + 1);
  v378[2] = *(v53 + 2);
  v71 = *(v53 + 2);
  v378[3] = *(v53 + 3);
  v380[8] = v62;
  v380[9] = v63;
  v380[10] = *(v53 + 10);
  v380[4] = v65;
  v380[5] = v66;
  v380[6] = v67;
  v380[7] = v61;
  v380[0] = v70;
  v380[1] = v69;
  v380[2] = v71;
  v379 = *(v53 + 88);
  v381 = *(v53 + 88);
  v380[3] = v64;
  v72 = sub_1B0D0CBC8(v380);
  if (!v72)
  {
    v298 = v57;
    v337 = *sub_1B041BA38(v380);
    v464 = 0;
    goto LABEL_11;
  }

  if (v72 != 1)
  {
    sub_1B0D0CBE4(v378);
    goto LABEL_14;
  }

  v298 = v57;
  LODWORD(v339) = *sub_1B041BA38(v380);
  v461 = 0;
LABEL_11:
  v287 = *(&v536 + 1);
  v288 = *(&v537 + 1);
  v285 = *&v525[135];
  v286 = *(&v535 + 1);
  v299 = v512;
  v284 = *&v525[127];
  sub_1B0398EFC(v58, &qword_1EB6E6580, &unk_1B0EE7F58);
  v73 = v321;
  v295 = *(v321 + 56);
  v296 = v321 + 56;
  v295(v338, 1, 1, v326);
  if (*(*v584 + 24) <= 0)
  {
    v83 = *(v59 + 56);
LABEL_119:
    v255 = v344;
    v83(v344, 1, 1, v60);
    sub_1B0398EFC(v255, &qword_1EB6E6580, &unk_1B0EE7F58);
    v256 = v343;
    v83(v343, 1, 1, v60);
    sub_1B0398EFC(v256, &qword_1EB6E6580, &unk_1B0EE7F58);
    sub_1B0D0CB74();
    swift_allocError();
    *v257 = 0;
    *(v257 + 4) = 256;
    swift_willThrow();
    goto LABEL_124;
  }

  v327 = 0;
  v323 = (v59 + 56);
  v293 = 0;
  v294 = (v73 + 48);
  v297 = (v305 + 48);
  v291 = (v305 + 56);
  v292 = (v305 + 8);
  v281 = &v449 + 3;
  v282 = &v429 + 7;
  v283 = (v305 + 32);
  while (1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1B0D0B5C8();
    }

    v92 = *v584;
    v93 = *(v59 + 80);
    v94 = *(v59 + 72);
    result = sub_1B044533C(*v584 + ((v93 + 40) & ~v93) + v94 * *(*v584 + 32), v344, type metadata accessor for Response);
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
      return result;
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
    v99 = v344;
    v321 = *v323;
    (v321)(v344, 0, 1, v60);
    v100 = v99;
    v101 = v343;
    sub_1B044533C(v100, v343, type metadata accessor for Response);
    sub_1B0446A38(v101, v342, type metadata accessor for Response);
    v102 = v349;
    swift_beginAccess();
    v103 = *v102;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v102 = v103;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v103 = sub_1B0D0549C(0, v103[2] + 1, 1, v103);
      *v349 = v103;
    }

    v106 = v103[2];
    v105 = v103[3];
    if (v106 >= v105 >> 1)
    {
      v103 = sub_1B0D0549C((v105 > 1), v106 + 1, 1, v103);
    }

    v103[2] = v106 + 1;
    sub_1B044533C(v342, v103 + ((v93 + 32) & ~v93) + v106 * v94, type metadata accessor for Response);
    *v349 = v103;
    swift_endAccess();
    v107 = v343;
    v60 = v348;
    (v321)(v343, 0, 1, v348);
    v108 = v107;
    v109 = v341;
    sub_1B044533C(v108, v341, type metadata accessor for Response);
    v110 = v325;
    sub_1B0446A38(v109, v325, type metadata accessor for Response);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1B0446AA0(v110, type metadata accessor for Response);
      sub_1B0D0CB74();
      swift_allocError();
      *v251 = 1;
      *(v251 + 4) = 256;
      swift_willThrow();
      v252 = v341;
      goto LABEL_123;
    }

    v111 = *(v110 + 144);
    v374 = *(v110 + 128);
    v375 = v111;
    v376 = *(v110 + 160);
    v377 = *(v110 + 176);
    v112 = *(v110 + 80);
    v370 = *(v110 + 64);
    v371 = v112;
    v113 = *(v110 + 112);
    v372 = *(v110 + 96);
    v373 = v113;
    v114 = *(v110 + 16);
    v366 = *v110;
    v367 = v114;
    v115 = *(v110 + 48);
    v368 = *(v110 + 32);
    v369 = v115;
    if (v327 == 99999)
    {
      sub_1B0D0CB74();
      swift_allocError();
      v254 = 2;
LABEL_121:
      *v253 = v254;
      *(v253 + 4) = 256;
      swift_willThrow();
      sub_1B0D0CBE4(&v366);
      goto LABEL_122;
    }

    v116 = *(v110 + 144);
    v364[8] = *(v110 + 128);
    v364[9] = v116;
    v364[10] = *(v110 + 160);
    v365 = *(v110 + 176);
    v117 = *(v110 + 80);
    v364[4] = *(v110 + 64);
    v364[5] = v117;
    v118 = *(v110 + 112);
    v364[6] = *(v110 + 96);
    v364[7] = v118;
    v119 = *(v110 + 16);
    v364[0] = *v110;
    v364[1] = v119;
    v120 = *(v110 + 48);
    v364[2] = *(v110 + 32);
    v364[3] = v120;
    v121 = sub_1B0D0CBC8(v364);
    if (v121 > 3)
    {
      break;
    }

    if (v121 == 2)
    {
      result = sub_1B041BA38(v364);
      if (__OFADD__(v293, 1))
      {
        goto LABEL_141;
      }

      v57 = v298;
      v59 = v346;
      if (v293 + 1 >= 50)
      {
        sub_1B0D0CB74();
        swift_allocError();
        *v267 = 3;
        *(v267 + 4) = 256;
        swift_willThrow();
        sub_1B0D0CBE4(&v366);
LABEL_133:
        sub_1B0446AA0(v341, type metadata accessor for Response);
        v75 = &qword_1EB6E65A8;
        v76 = &unk_1B0EE8190;
        v77 = v338;
        goto LABEL_15;
      }

      ++v293;
      v165 = *result;
      v166 = result[1];
      v167 = result[3];
      *&v382[32] = result[2];
      *&v382[48] = v167;
      *v382 = v165;
      *&v382[16] = v166;
      v168 = result[4];
      v169 = result[5];
      v170 = result[7];
      *&v382[96] = result[6];
      *&v382[112] = v170;
      *&v382[64] = v168;
      *&v382[80] = v169;
      v171 = result[8];
      v172 = result[9];
      v173 = result[10];
      *&v382[176] = *(result + 88);
      *&v382[144] = v172;
      *&v382[160] = v173;
      *&v382[128] = v171;
      switch(sub_1B0D0CC38(v382))
      {
        case 1u:
          v210 = sub_1B0504D0C(v382);
          sub_1B0446AA0(v341, type metadata accessor for Response);
          v355 = *(v210 + 64);
          v356 = *(v210 + 80);
          v357 = *(v210 + 96);
          *&v358 = *(v210 + 112);
          v351 = *v210;
          v352 = *(v210 + 16);
          v353 = *(v210 + 32);
          v354 = *(v210 + 48);
          v211 = v282;
          v212 = *(v282 + 5);
          v363[4] = *(v282 + 4);
          v363[5] = v212;
          v363[6] = *(v282 + 6);
          *&v363[7] = *(v282 + 14);
          v213 = *(v282 + 1);
          v363[0] = *v282;
          v363[1] = v213;
          v214 = *(v282 + 3);
          v363[2] = *(v282 + 2);
          v363[3] = v214;
          sub_1B0398EFC(v363, &qword_1EB6E64B0, &unk_1B0EE81A0);
          v215 = v356;
          v211[4] = v355;
          v211[5] = v215;
          v211[6] = v357;
          *(v211 + 14) = v358;
          goto LABEL_109;
        case 2u:
          v333 = *sub_1B0504D0C(v382);
          sub_1B0446AA0(v341, type metadata accessor for Response);
          v428 = 0;
          goto LABEL_22;
        case 3u:
          LODWORD(v339) = *sub_1B0504D0C(v382);
          sub_1B0446AA0(v341, type metadata accessor for Response);
          v461 = 0;
          goto LABEL_22;
        case 4u:
          v184 = *sub_1B0504D0C(v382);
          if (HIDWORD(v184))
          {
            goto LABEL_138;
          }

          sub_1B0446AA0(v341, type metadata accessor for Response);
          v425 = 0;
          v331 = v184;
          goto LABEL_22;
        case 5u:
          v216 = sub_1B0504D0C(v382);
          sub_1B0446AA0(v341, type metadata accessor for Response);
          v217 = *v216;
          v218 = *(v216 + 16);
          v219 = *(v216 + 48);
          if (*(v216 + 177))
          {
            v353 = *(v216 + 32);
            v354 = v219;
            v351 = v217;
            v352 = v218;
            v220 = *(v216 + 64);
            v221 = *(v216 + 80);
            v222 = *(v216 + 96);
            v358 = *(v216 + 112);
            v356 = v221;
            v357 = v222;
            v355 = v220;
            v223 = *(v216 + 128);
            v224 = *(v216 + 144);
            v225 = *(v216 + 160);
            v362 = *(v216 + 176);
            v360 = v224;
            v361 = v225;
            v359 = v223;
            __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
            v211 = &v436;
            v363[8] = v444;
            v363[9] = v445;
            v363[10] = v446;
            LOBYTE(v363[11]) = v447;
            v363[4] = v440;
            v363[5] = v441;
            v363[6] = v442;
            v363[7] = v443;
            v363[0] = v436;
            v363[1] = v437;
            v363[2] = v438;
            v363[3] = v439;
            sub_1B0398EFC(v363, &qword_1EB6E4148, &qword_1B0EE17F0);
            v226 = v358;
            v444 = v359;
            v445 = v360;
            v446 = v361;
            v447 = v362;
          }

          else
          {
            v353 = *(v216 + 32);
            v354 = v219;
            v351 = v217;
            v352 = v218;
            v227 = *(v216 + 64);
            v228 = *(v216 + 80);
            v229 = *(v216 + 96);
            v358 = *(v216 + 112);
            v356 = v228;
            v357 = v229;
            v355 = v227;
            v230 = *(v216 + 128);
            v231 = *(v216 + 144);
            v232 = *(v216 + 160);
            v362 = *(v216 + 176);
            v360 = v231;
            v361 = v232;
            v359 = v230;
            __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
            v211 = v281;
            v233 = *(v281 + 9);
            v363[8] = *(v281 + 8);
            v363[9] = v233;
            v363[10] = *(v281 + 10);
            LOBYTE(v363[11]) = v281[176];
            v234 = *(v281 + 5);
            v363[4] = *(v281 + 4);
            v363[5] = v234;
            v235 = *(v281 + 7);
            v363[6] = *(v281 + 6);
            v363[7] = v235;
            v236 = *(v281 + 1);
            v363[0] = *v281;
            v363[1] = v236;
            v237 = *(v281 + 3);
            v363[2] = *(v281 + 2);
            v363[3] = v237;
            sub_1B0398EFC(v363, &qword_1EB6E4148, &qword_1B0EE17F0);
            v238 = v360;
            v239 = v361;
            v226 = v358;
            v211[8] = v359;
            v211[9] = v238;
            v211[10] = v239;
            *(v211 + 176) = v362;
          }

          v240 = v356;
          v211[4] = v355;
          v211[5] = v240;
          v211[6] = v357;
          v211[7] = v226;
LABEL_109:
          v241 = v352;
          *v211 = v351;
          v211[1] = v241;
          v242 = v354;
          v211[2] = v353;
          v211[3] = v242;
          goto LABEL_22;
        case 6u:
        case 9u:
        case 0xAu:
          sub_1B0504D0C(v382);
          v363[8] = v374;
          v363[9] = v375;
          v363[10] = v376;
          LOWORD(v363[11]) = v377;
          v363[4] = v370;
          v363[5] = v371;
          v363[6] = v372;
          v363[7] = v373;
          v363[0] = v366;
          v363[1] = v367;
          v363[2] = v368;
          v363[3] = v369;
          sub_1B0D0CCA0();
          swift_allocError();
          v269 = v363[3];
          v271 = v363[0];
          v270 = v363[1];
          *(v272 + 32) = v363[2];
          *(v272 + 48) = v269;
          *v272 = v271;
          *(v272 + 16) = v270;
          v273 = v363[7];
          v275 = v363[4];
          v274 = v363[5];
          *(v272 + 96) = v363[6];
          *(v272 + 112) = v273;
          *(v272 + 64) = v275;
          *(v272 + 80) = v274;
          v277 = v363[9];
          v276 = v363[10];
          v278 = v363[8];
          *(v272 + 176) = v363[11];
          *(v272 + 144) = v277;
          *(v272 + 160) = v276;
          *(v272 + 128) = v278;
          swift_willThrow();
          goto LABEL_133;
        case 7u:
          v198 = sub_1B0504D0C(v382);
          v199 = *(v198 + 8);
          v200 = *(v198 + 16);
          v201 = *(v198 + 24);
          v202 = *(v198 + 32);
          v465 = *v198;
          v466 = v199;
          v467 = v200;
          v468 = v201;
          v469 = v202;
          v363[8] = v374;
          v363[9] = v375;
          v363[10] = v376;
          LOWORD(v363[11]) = v377;
          v363[4] = v370;
          v363[5] = v371;
          v363[6] = v372;
          v363[7] = v373;
          v363[2] = v368;
          v363[3] = v369;
          v363[0] = v366;
          v363[1] = v367;
          v203 = sub_1B041BA38(v363);
          sub_1B0D0CC44(v203, &v351);
          v347 = StreamingKind.sectionSpecifier.getter();
          v340 = v204;
          LODWORD(v305) = v205;
          if (!(v202 >> 6))
          {
            goto LABEL_95;
          }

          if (v202 >> 6 == 1)
          {
            v199 = v201;
            LOBYTE(v200) = v202;
LABEL_95:
            v206 = v200 | (HIDWORD(v199) != 0);
            if (v206)
            {
              v207 = 0;
            }

            else
            {
              v207 = v199;
            }
          }

          else
          {
            v207 = 0;
            v206 = 1;
          }

          v243 = type metadata accessor for MessageData.BodyData(0);
          v244 = *(*(v243 - 8) + 56);
          v245 = v302;
          v244(v302, 1, 1, v243);
          v246 = *(v317 + 24);
          v247 = v303;
          v244(&v303[v246], 1, 1, v243);
          v248 = v340;
          *v247 = v347;
          *(v247 + 1) = v248;
          v247[16] = v305;
          *(v247 + 5) = v207;
          v247[24] = v206 & 1;
          sub_1B0C8C870(v245, &v247[v246], &qword_1EB6E4178, &unk_1B0EE7570);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v299 = sub_1B0D05728(0, v299[2] + 1, 1, v299);
          }

          v56 = v422;
          v60 = v348;
          v59 = v346;
          v250 = v299[2];
          v249 = v299[3];
          if (v250 >= v249 >> 1)
          {
            v299 = sub_1B0D05728((v249 > 1), v250 + 1, 1, v299);
          }

          sub_1B0D0CBE4(&v366);
          sub_1B0D0CBE4(&v366);
          sub_1B0446AA0(v341, type metadata accessor for Response);
          v152 = v299;
          v299[2] = v250 + 1;
          v153 = v152 + ((*(v316 + 80) + 32) & ~*(v316 + 80)) + *(v316 + 72) * v250;
          v154 = v303;
          break;
        case 8u:
          v334 = *sub_1B0504D0C(v382);
          sub_1B0446AA0(v341, type metadata accessor for Response);
          v423 = 0;
          goto LABEL_22;
        case 0xBu:
          v192 = sub_1B0504D0C(v382);
          v193 = sub_1B0D0C6B0(*v192);
          sub_1B0D0CBE4(&v366);
          sub_1B0446AA0(v341, type metadata accessor for Response);

          *(&v332 + 1) = v193;
          v285 = v193;
          goto LABEL_22;
        case 0xCu:
          v196 = sub_1B0504D0C(v382);
          v197 = v196[1];
          v328 = *v196;
          sub_1B0446AA0(v341, type metadata accessor for Response);

          v335 = v197;
          v286 = v197;
          goto LABEL_22;
        case 0xDu:
          v194 = sub_1B0504D0C(v382);
          v195 = v194[1];
          v330 = *v194;
          sub_1B0446AA0(v341, type metadata accessor for Response);

          v329 = v195;
          v287 = v195;
          goto LABEL_22;
        case 0xEu:
          v208 = sub_1B0504D0C(v382);
          v209 = v208[1];
          v298 = *v208;
          sub_1B0446AA0(v341, type metadata accessor for Response);

          v336 = v209;
          v288 = v209;
          goto LABEL_22;
        default:
          v174 = sub_1B0504D0C(v382);
          v175 = sub_1B0D0C618(*v174);
          sub_1B0D0CBE4(&v366);
          sub_1B0446AA0(v341, type metadata accessor for Response);

          *&v332 = v175;
          v284 = v175;
          goto LABEL_22;
      }

      goto LABEL_56;
    }

    if (v121 != 3)
    {
      sub_1B041BA38(v364);
      sub_1B0D0CB74();
      swift_allocError();
      v254 = 1;
      goto LABEL_121;
    }

    v122 = sub_1B041BA38(v364);
    v123 = *(v122 + 8);
    v125 = *(v122 + 16);
    v124 = *(v122 + 24);
    v126 = *(v122 + 32);
    v470 = *v122;
    v471 = v123;
    v472 = v125;
    v473 = v124;
    v474 = v126;
    v127 = v311;
    sub_1B03B5C80(v338, v311, &qword_1EB6E65A8, &unk_1B0EE8190);
    v128 = (*v294)(v127, 1, v326);
    sub_1B0398EFC(v127, &qword_1EB6E65A8, &unk_1B0EE8190);
    if (v128 != 1)
    {
      sub_1B0D0CB74();
      swift_allocError();
      *v266 = 5;
      *(v266 + 4) = 256;
      swift_willThrow();
      sub_1B0D0CBE4(&v366);
      sub_1B0446AA0(v341, type metadata accessor for Response);
      v264 = v338;
      goto LABEL_131;
    }

    if (v126 >> 6)
    {
      if (v126 >> 6 != 1)
      {
        LODWORD(v305) = 0;
        LODWORD(v347) = 1;
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
        v56 = v422;
        v191 = v130;
        if (v129)
        {
          v191 = 0;
        }

        if (v129 || v124 != v191)
        {
          sub_1B0D0CB74();
          swift_allocError();
          v254 = 8;
          goto LABEL_121;
        }

        LODWORD(v347) = 0;
        goto LABEL_20;
      }
    }

    LODWORD(v347) = 1;
LABEL_20:
    LODWORD(v305) = v130;
LABEL_21:
    v84 = StreamingKind.sectionSpecifier.getter();
    v86 = v85;
    v88 = v87;
    sub_1B0D0CBE4(&v366);
    sub_1B0446AA0(v341, type metadata accessor for Response);
    v89 = v338;
    sub_1B0398EFC(v338, &qword_1EB6E65A8, &unk_1B0EE8190);
    v90 = v326;
    v91 = v306;
    (*v291)(&v306[*(v326 + 24)], 1, 1, v324);
    *v91 = v84;
    *(v91 + 8) = v86;
    *(v91 + 16) = v88;
    *(v91 + 20) = v305;
    *(v91 + 24) = v347;
    v295(v91, 0, 1, v90);
    sub_1B03C60A4(v91, v89, &qword_1EB6E65A8, &unk_1B0EE8190);
    v60 = v348;
    v59 = v346;
    v56 = v422;
LABEL_22:
    ++v327;
    if (*(*v584 + 24) <= 0)
    {
      v83 = v321;
      goto LABEL_119;
    }
  }

  v131 = v298;
  v132 = v320;
  if (v121 != 4)
  {
    if (v121 != 5)
    {
      sub_1B0446AA0(v341, type metadata accessor for Response);
      sub_1B0398EFC(v338, &qword_1EB6E65A8, &unk_1B0EE8190);
      LODWORD(v363[0]) = v337;
      BYTE4(v363[0]) = v464;
      *(v363 + 5) = v462;
      BYTE7(v363[0]) = v463;
      v259 = v339;
      DWORD2(v363[0]) = v339;
      BYTE12(v363[0]) = v461;
      *(&v363[8] + 13) = v457;
      *(&v363[9] + 13) = v458;
      *(&v363[10] + 13) = v459;
      *(&v363[11] + 13) = v460;
      *(&v363[4] + 13) = v453;
      *(&v363[5] + 13) = v454;
      *(&v363[6] + 13) = v455;
      *(&v363[7] + 13) = v456;
      *(v363 + 13) = v449;
      *(&v363[1] + 13) = v450;
      *(&v363[2] + 13) = v451;
      *(&v363[3] + 13) = v452;
      *(&v363[12] + 1) = v448[0];
      DWORD1(v363[12]) = *(v448 + 3);
      *(&v363[12] + 1) = v340;
      v363[21] = v444;
      v363[22] = v445;
      v363[23] = v446;
      LOBYTE(v363[24]) = v447;
      v363[17] = v440;
      v363[18] = v441;
      v363[19] = v442;
      v363[20] = v443;
      v363[13] = v436;
      v363[14] = v437;
      v363[15] = v438;
      v363[16] = v439;
      *(&v363[28] + 1) = v433;
      *(&v363[29] + 1) = v434;
      *(&v363[30] + 1) = v435[0];
      *(&v363[24] + 1) = v429;
      *(&v363[25] + 1) = v430;
      *(&v363[26] + 1) = v431;
      *(&v363[27] + 1) = v432;
      v363[31] = *(v435 + 15);
      v363[32] = v332;
      *&v363[33] = v333;
      BYTE8(v363[33]) = v428;
      *(&v363[33] + 9) = v426;
      BYTE11(v363[33]) = v427;
      HIDWORD(v363[33]) = v331;
      LOBYTE(v363[34]) = v425;
      *(&v363[34] + 1) = v424[0];
      DWORD1(v363[34]) = *(v424 + 3);
      *(&v363[34] + 1) = v334;
      LOBYTE(v363[35]) = v423;
      *(&v363[35] + 1) = v422[0];
      DWORD1(v363[35]) = *(v422 + 3);
      v261 = v328;
      v260 = v329;
      *(&v363[35] + 1) = v328;
      *&v363[36] = v335;
      v262 = v330;
      *(&v363[36] + 1) = v330;
      *&v363[37] = v329;
      *(&v363[37] + 1) = v131;
      *&v363[38] = v336;
      memcpy(v300, v363, 0x268uLL);
      type metadata accessor for UntaggedResponse(0);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for Response(0);
      swift_storeEnumTagMultiPayload();
      *v382 = v337;
      v382[4] = v464;
      *&v382[5] = v462;
      v382[7] = v463;
      *&v382[8] = v259;
      v382[12] = v461;
      *&v382[141] = v457;
      *&v382[157] = v458;
      *&v382[173] = v459;
      v383 = v460;
      *&v382[77] = v453;
      *&v382[93] = v454;
      *&v382[109] = v455;
      *&v382[125] = v456;
      *&v382[13] = v449;
      *&v382[29] = v450;
      *&v382[45] = v451;
      *&v382[61] = v452;
      *v384 = v448[0];
      *&v384[3] = *(v448 + 3);
      v385 = v340;
      v394 = v444;
      v395 = v445;
      v396 = v446;
      v397 = v447;
      v390 = v440;
      v391 = v441;
      v392 = v442;
      v393 = v443;
      v386 = v436;
      v387 = v437;
      v388 = v438;
      v389 = v439;
      v402 = v433;
      v403 = v434;
      *v404 = v435[0];
      v398 = v429;
      v399 = v430;
      v400 = v431;
      v401 = v432;
      *&v404[15] = *(v435 + 15);
      v405 = v332;
      v406 = v333;
      v407 = v428;
      v408 = v426;
      v409 = v427;
      v410 = v331;
      v411 = v425;
      *v412 = v424[0];
      *&v412[3] = *(v424 + 3);
      v413 = v334;
      v414 = v423;
      *v415 = v422[0];
      *&v415[3] = *(v422 + 3);
      v416 = v261;
      v417 = v335;
      v418 = v262;
      v419 = v260;
      v420 = v131;
      v421 = v336;
      sub_1B0CF6930(v363, &v351);
      return sub_1B0AA4C0C(v382);
    }

    v133 = v338;
    v134 = v312;
    sub_1B03B5C80(v338, v312, &qword_1EB6E65A8, &unk_1B0EE8190);
    v135 = v326;
    if ((*v294)(v134, 1, v326) == 1)
    {
      sub_1B0398EFC(v134, &qword_1EB6E65A8, &unk_1B0EE8190);
      sub_1B0D0CB74();
      swift_allocError();
      *v265 = 7;
      *(v265 + 4) = 256;
      swift_willThrow();
      sub_1B0446AA0(v341, type metadata accessor for Response);
      v258 = v133;
      goto LABEL_125;
    }

    sub_1B0398EFC(v133, &qword_1EB6E65A8, &unk_1B0EE8190);
    v136 = v318;
    sub_1B044533C(v134, v318, type metadata accessor for StreamedBodySection);
    v137 = 1;
    v295(v133, 1, 1, v135);
    v138 = v308;
    sub_1B0446A38(v136, v308, type metadata accessor for StreamedBodySection);
    v139 = *v138;
    v140 = *(v138 + 8);
    v141 = *(v138 + 16);
    LODWORD(v305) = *(v138 + 20);
    LODWORD(v290) = *(v138 + 24);
    v142 = v314;
    sub_1B03B5C80(v138 + *(v135 + 24), v314, &qword_1EB6E2070, &qword_1B0E9F040);
    v347 = v139;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v340 = v140;
    sub_1B0ACE964(v140, v141);
    sub_1B0446AA0(v138, type metadata accessor for StreamedBodySection);
    if ((*v297)(v142, 1, v324) != 1)
    {
      (*v283)(v315, v314, v324);
      v137 = 0;
    }

    v143 = type metadata accessor for MessageData.BodyData(0);
    v144 = *(*(v143 - 8) + 56);
    v145 = v315;
    v144(v315, v137, 1, v143);
    v146 = *(v317 + 24);
    v147 = v319;
    v144(&v319[v146], 1, 1, v143);
    v148 = v340;
    *v147 = v347;
    *(v147 + 1) = v148;
    v147[16] = v141;
    *(v147 + 5) = v305;
    v147[24] = v290;
    sub_1B0C8C870(v145, &v147[v146], &qword_1EB6E4178, &unk_1B0EE7570);
    v149 = v299;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v299 = sub_1B0D05728(0, v149[2] + 1, 1, v149);
    }

    v56 = v422;
    v60 = v348;
    v59 = v346;
    v151 = v299[2];
    v150 = v299[3];
    if (v151 >= v150 >> 1)
    {
      v299 = sub_1B0D05728((v150 > 1), v151 + 1, 1, v299);
    }

    sub_1B0446AA0(v318, type metadata accessor for StreamedBodySection);
    sub_1B0446AA0(v341, type metadata accessor for Response);
    v152 = v299;
    v299[2] = v151 + 1;
    v153 = v152 + ((*(v316 + 80) + 32) & ~*(v316 + 80)) + *(v316 + 72) * v151;
    v154 = v319;
LABEL_56:
    sub_1B044533C(v154, v153, type metadata accessor for MessageData.BodySection);
    v340 = v152;
    goto LABEL_22;
  }

  v155 = sub_1B041BA38(v364);
  v156 = *(v155 + 8);
  v157 = *(v155 + 12);
  v158 = v313;
  sub_1B03B5C80(v338, v313, &qword_1EB6E65A8, &unk_1B0EE8190);
  v159 = v326;
  if ((*v294)(v158, 1, v326) == 1)
  {
    *&v382[128] = v374;
    *&v382[144] = v375;
    *&v382[160] = v376;
    *&v382[176] = v377;
    *&v382[64] = v370;
    *&v382[80] = v371;
    *&v382[96] = v372;
    *&v382[112] = v373;
    *v382 = v366;
    *&v382[16] = v367;
    *&v382[32] = v368;
    *&v382[48] = v369;
    sub_1B041BA38(v382);

    sub_1B0398EFC(v158, &qword_1EB6E65A8, &unk_1B0EE8190);
    sub_1B0D0CB74();
    swift_allocError();
    *v263 = 6;
    *(v263 + 4) = 256;
    swift_willThrow();
    sub_1B0D0CBE4(&v366);
    sub_1B0D0CBE4(&v366);
    sub_1B0446AA0(v341, type metadata accessor for Response);
    v264 = v338;
LABEL_131:
    sub_1B0398EFC(v264, &qword_1EB6E65A8, &unk_1B0EE8190);
    v56 = v422;
    goto LABEL_126;
  }

  v290 = v157;
  v347 = v156;
  v160 = v158;
  v161 = v322;
  sub_1B044533C(v160, v322, type metadata accessor for StreamedBodySection);
  v162 = *(v159 + 24);
  sub_1B03B5C80(v161 + v162, v132, &qword_1EB6E2070, &qword_1B0E9F040);
  v163 = v324;
  v305 = *v297;
  if (v305(v132, 1, v324) == 1)
  {
    *&v382[128] = v374;
    *&v382[144] = v375;
    *&v382[160] = v376;
    *&v382[176] = v377;
    *&v382[64] = v370;
    *&v382[80] = v371;
    *&v382[96] = v372;
    *&v382[112] = v373;
    *v382 = v366;
    *&v382[16] = v367;
    *&v382[32] = v368;
    *&v382[48] = v369;
    sub_1B041BA38(v382);

    sub_1B0398EFC(v132, &qword_1EB6E2070, &qword_1B0E9F040);
    v164 = v304;
    sub_1B0E44378();
    (*v291)(v164, 0, 1, v163);
    sub_1B0C8C870(v164, v161 + v162, &qword_1EB6E2070, &qword_1B0E9F040);
  }

  else
  {
    *&v382[128] = v374;
    *&v382[144] = v375;
    *&v382[160] = v376;
    *&v382[176] = v377;
    *&v382[64] = v370;
    *&v382[80] = v371;
    *&v382[96] = v372;
    *&v382[112] = v373;
    *v382 = v366;
    *&v382[16] = v367;
    *&v382[32] = v368;
    *&v382[48] = v369;
    sub_1B041BA38(v382);

    sub_1B0398EFC(v132, &qword_1EB6E2070, &qword_1B0E9F040);
  }

  swift_beginAccess();
  v176 = v310;
  sub_1B0E44358();
  result = (v305)(v161 + v162, 1, v163);
  v177 = v309;
  if (result == 1)
  {
    goto LABEL_143;
  }

  v290 = v162;
  sub_1B0E44388();
  v289 = *v292;
  v289(v176, v163);
  v178 = v299[2];
  if (!v178)
  {
    v179 = 0;
LABEL_74:
    v185 = v307;
    sub_1B03B5C80(v322 + v290, v307, &qword_1EB6E2070, &qword_1B0E9F040);
    v186 = v324;
    result = (v305)(v185, 1, v324);
    if (result == 1)
    {
      goto LABEL_144;
    }

    v187 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
    result = (v289)(v185, v186);
    v188 = v179 + v187;
    v56 = v422;
    v59 = v346;
    if (__OFADD__(v179, v187))
    {
      goto LABEL_142;
    }

    v60 = v348;
    if (v188 > 999999)
    {
      sub_1B0D0CB74();
      swift_allocError();
      *v268 = 4;
      *(v268 + 4) = 256;
      swift_willThrow();
      sub_1B0D0CBE4(&v366);
      sub_1B0D0CBE4(&v366);
      sub_1B0446AA0(v341, type metadata accessor for Response);
      sub_1B0398EFC(v338, &qword_1EB6E65A8, &unk_1B0EE8190);
      sub_1B0446AA0(v322, type metadata accessor for StreamedBodySection);
      goto LABEL_126;
    }

    sub_1B0D0CBE4(&v366);
    sub_1B0D0CBE4(&v366);
    sub_1B0446AA0(v341, type metadata accessor for Response);
    v189 = v338;
    sub_1B0398EFC(v338, &qword_1EB6E65A8, &unk_1B0EE8190);
    v190 = v322;
    sub_1B0446A38(v322, v189, type metadata accessor for StreamedBodySection);
    v295(v189, 0, 1, v326);
    sub_1B0446AA0(v190, type metadata accessor for StreamedBodySection);
    goto LABEL_22;
  }

  v179 = 0;
  v347 = *(v317 + 24);
  v56 = v299 + ((*(v316 + 80) + 32) & ~*(v316 + 80));
  v180 = *(v316 + 72);
  v181 = v345;
  while (2)
  {
    sub_1B0446A38(v56, v181, type metadata accessor for MessageData.BodySection);
    sub_1B03B5C80(v181 + v347, v177, &qword_1EB6E4178, &unk_1B0EE7570);
    v182 = type metadata accessor for MessageData.BodyData(0);
    if ((*(*(v182 - 8) + 48))(v177, 1, v182) == 1)
    {
      sub_1B0446AA0(v181, type metadata accessor for MessageData.BodySection);
      sub_1B0398EFC(v177, &qword_1EB6E4178, &unk_1B0EE7570);
      goto LABEL_69;
    }

    v183 = v181;
    v184 = _s13IMAP2Protocol11MessageDataV04BodyD0V5countSivg_0();
    sub_1B0446AA0(v183, type metadata accessor for MessageData.BodySection);
    sub_1B0446AA0(v177, type metadata accessor for MessageData.BodyData);
    v96 = __OFADD__(v179, v184);
    v179 += v184;
    if (!v96)
    {
      v181 = v345;
LABEL_69:
      v56 += v180;
      if (!--v178)
      {
        goto LABEL_74;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_138:
  sub_1B0D0CB00();
  swift_allocError();
  *v279 = v184;
  *(v279 + 8) = 0;
  *(v279 + 16) = 2;
  swift_willThrow();
LABEL_122:
  v252 = v341;
LABEL_123:
  sub_1B0446AA0(v252, type metadata accessor for Response);
LABEL_124:
  v258 = v338;
LABEL_125:
  sub_1B0398EFC(v258, &qword_1EB6E65A8, &unk_1B0EE8190);
LABEL_126:
  v57 = v298;
LABEL_16:
  *v382 = v337;
  v382[4] = v464;
  *&v382[5] = v462;
  v382[7] = v463;
  *&v382[8] = v339;
  v382[12] = v461;
  *&v382[141] = v457;
  *&v382[157] = v458;
  *&v382[173] = v459;
  v383 = v460;
  *&v382[77] = v453;
  *&v382[93] = v454;
  *&v382[109] = v455;
  *&v382[125] = v456;
  *&v382[13] = v449;
  *&v382[29] = v450;
  *&v382[45] = v451;
  *&v382[61] = v452;
  *v384 = v448[0];
  *&v384[3] = *(v448 + 3);
  v385 = v340;
  v394 = v444;
  v395 = v445;
  v396 = v446;
  v397 = v447;
  v390 = v440;
  v391 = v441;
  v392 = v442;
  v393 = v443;
  v386 = v436;
  v387 = v437;
  v388 = v438;
  v389 = v439;
  v78 = *(v56 + 120);
  v402 = *(v56 + 104);
  v403 = v78;
  *v404 = *(v56 + 136);
  v79 = *(v56 + 56);
  v398 = *(v56 + 40);
  v399 = v79;
  v80 = *(v56 + 88);
  v400 = *(v56 + 72);
  v401 = v80;
  *&v404[15] = *(v56 + 151);
  v405 = v332;
  v406 = v333;
  v407 = v428;
  v408 = v426;
  v409 = v427;
  v410 = v331;
  v411 = v425;
  *v412 = v424[0];
  *&v412[3] = *(v56 + 19);
  v413 = v334;
  v414 = v423;
  v81 = *(v56 + 3);
  *v415 = v422[0];
  *&v415[3] = v81;
  v416 = v328;
  v417 = v335;
  v418 = v330;
  v419 = v329;
  v420 = v57;
  v421 = v336;
  return sub_1B0AA4C0C(v382);
}