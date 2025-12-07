void sub_1001266CC(id a1)
{
  if ([v1 sharingStyle] != a1)
  {
    v2 = OBJC_IVAR____TtC5Music22ActivityViewController_defaultExcludedActivityTypes;
    swift_beginAccess();
    v3 = *&v1[v2];

    if ([v1 sharingStyle] == 2)
    {
      v4 = UIActivityTypeCopyToPasteboard;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_100498C88(0, v3[2] + 1, 1, v3);
      }

      v5 = v3[2];
      v6 = v3[3];
      v7 = v5 + 1;
      if (v5 >= v6 >> 1)
      {
        v12 = v5 + 1;
        v9 = v3;
        v10 = v3[2];
        v11 = sub_100498C88((v6 > 1), v5 + 1, 1, v9);
        v5 = v10;
        v7 = v12;
        v3 = v11;
      }

      v3[2] = v7;
      v3[v5 + 4] = v4;
    }

    type metadata accessor for ActivityType(0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v1 setExcludedActivityTypes:isa];
  }
}

void sub_100126814(uint64_t a1)
{
  v17.receiver = v1;
  v17.super_class = type metadata accessor for ActivityViewController();
  objc_msgSendSuper2(&v17, "_prepareActivity:", a1);
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = *&v1[OBJC_IVAR____TtC5Music22ActivityViewController_recipientPhoneNumber + 8];
    if (!v4)
    {
      return;
    }

    v5 = *&v1[OBJC_IVAR____TtC5Music22ActivityViewController_recipientPhoneNumber];
    v6 = v3;

    v7 = [v6 messageComposeViewController];
    if (v7)
    {
      v8 = v7;
      sub_10010FC20(&unk_101181640, &qword_100EBD090);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_100EBC6B0;
      *(v9 + 32) = v5;
      *(v9 + 40) = v4;
      v10.super.isa = Array._bridgeToObjectiveC()().super.isa;

      [v8 setRecipients:v10.super.isa];
LABEL_9:

      return;
    }

LABEL_10:

    return;
  }

  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v12 = *&v1[OBJC_IVAR____TtC5Music22ActivityViewController_recipientEmail + 8];
    if (v12)
    {
      v13 = *&v1[OBJC_IVAR____TtC5Music22ActivityViewController_recipientEmail];
      v14 = v11;

      v15 = [v14 mailComposeViewController];
      if (v15)
      {
        v8 = v15;
        sub_10010FC20(&unk_101181640, &qword_100EBD090);
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_100EBC6B0;
        *(v16 + 32) = v13;
        *(v16 + 40) = v12;
        v10.super.isa = Array._bridgeToObjectiveC()().super.isa;

        [v8 setToRecipients:v10.super.isa];
        goto LABEL_9;
      }

      goto LABEL_10;
    }
  }
}

id sub_100126F24(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for ShareActivityItemProvider(uint64_t a1)
{
  result = qword_1011814B0;
  if (!qword_1011814B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10012700C(uint64_t a1)
{
  sub_100039B3C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1001270A4(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v2 = result;
  return result;
}

uint64_t sub_100127144(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100020674(&qword_101181518, &qword_101181510, &unk_100EBCFC0, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_10010FC20(&qword_101181510, &unk_100EBCFC0);
            v9 = sub_1006CAC94(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100009F78(0, &unk_101183F50, UIActivity_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1001272F8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100020674(&qword_1011815A8, &qword_1011815A0, &qword_100EBD028, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_10010FC20(&qword_1011815A0, &qword_100EBD028);
            v9 = sub_1006CAD94(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100009F78(0, &qword_1011838A0, NSLayoutConstraint_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1001274AC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100020674(&qword_101181630, &qword_101181628, &qword_100EBD080, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_10010FC20(&qword_101181628, &qword_100EBD080);
            v9 = sub_1006CAE14(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100009F78(0, &qword_101181620, UIView_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100127660(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100020674(&qword_101181558, &qword_101181550, &unk_100EBCFF0, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_10010FC20(&qword_101181550, &unk_100EBCFF0);
            v9 = sub_1006CAE94(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100009F78(0, &qword_10118CDE0, UIMenuElement_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100127814(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v13 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v13;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100020674(&unk_101181590, &qword_101181588, &qword_100EBD020, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_10010FC20(&qword_101181588, &qword_100EBD020);
            v10 = sub_1006CAF1C(v14, i, a3, v9);
            v12 = *v11;
            (v10)(v14, 0);
            *(v4 + 8 * i) = v12;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100009F78(0, &qword_101181580, UIBarButtonItem_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1001279C8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100020674(&qword_101181568, &qword_101181560, &qword_100ECD1D0, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_10010FC20(&qword_101181560, &qword_100ECD1D0);
            v9 = sub_1006CAF9C(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for MusicLibrary();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100127B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[87] = a6;
  v6[86] = a5;
  v6[85] = a4;
  v6[84] = a3;
  v6[83] = a2;
  type metadata accessor for Locale();
  v6[88] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v6[89] = swift_task_alloc();
  v9 = type metadata accessor for URL();
  v6[90] = v9;
  v6[91] = *(v9 - 8);
  v6[92] = swift_task_alloc();
  v6[93] = swift_task_alloc();
  v6[94] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v6[95] = v10;
  v6[96] = *(v10 - 8);
  v6[97] = swift_task_alloc();
  v6[98] = swift_task_alloc();
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  v6[99] = swift_task_alloc();
  v6[100] = swift_task_alloc();
  v6[101] = swift_task_alloc();
  v6[102] = swift_task_alloc();
  v6[103] = swift_task_alloc();
  v6[104] = swift_task_alloc();
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  v6[105] = swift_task_alloc();
  v6[106] = swift_task_alloc();
  v11 = type metadata accessor for Playlist();
  v6[107] = v11;
  v6[108] = *(v11 - 8);
  v6[109] = swift_task_alloc();
  v6[110] = swift_task_alloc();
  sub_10010FC20(&unk_101183960, &unk_100EBCF90);
  v6[111] = swift_task_alloc();
  v12 = type metadata accessor for Song();
  v6[112] = v12;
  v13 = *(v12 - 8);
  v6[113] = v13;
  v6[114] = *(v13 + 64);
  v6[115] = swift_task_alloc();
  v6[116] = swift_task_alloc();
  v6[17] = a5;
  v6[18] = a6;
  v6[117] = sub_10001C8B8(v6 + 14);
  (*(*(a5 - 8) + 16))();
  type metadata accessor for MainActor();
  v6[118] = static MainActor.shared.getter();
  v15 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[119] = v15;
  v6[120] = v14;

  return _swift_task_switch(sub_100127F68, v15, v14);
}

uint64_t sub_100127F68()
{
  v97 = v0;
  v1 = swift_allocObject();
  *(v0 + 968) = v1;
  *(v1 + 16) = _swiftEmptyArrayStorage;
  v2 = (v1 + 16);
  sub_100008FE4(v0 + 112, v0 + 192);
  *(v0 + 976) = sub_10010FC20(&unk_1011814E0, &unk_100EBF9B0);
  sub_10010FC20(&unk_101183FF0, &unk_100EBCFA0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 672);
    sub_100059A8C((v0 + 232), v0 + 152);
    v4 = swift_task_alloc();
    *(v4 + 16) = v0 + 152;
    *(v4 + 24) = v3;
    v5 = sub_100123E44(sub_10012B91C, v4, &off_10109B810);

    if (v5 >> 62)
    {
      sub_100009F78(0, &unk_101183F50, UIActivity_ptr);

      v6 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      sub_100009F78(0, &unk_101183F50, UIActivity_ptr);
      v6 = v5;
    }

    sub_1001251E0(v6, sub_100127144);
    sub_10000959C((v0 + 152));
  }

  else
  {
    *(v0 + 264) = 0;
    *(v0 + 248) = 0u;
    *(v0 + 232) = 0u;
    sub_1000095E8(v0 + 232, &unk_1011814F0, &unk_100EBF9C0);
  }

  v7 = *(v0 + 904);
  sub_100008FE4(v0 + 112, v0 + 272);
  v8 = swift_dynamicCast();
  v9 = *(v7 + 56);
  if (v8)
  {
    v10 = *(v0 + 928);
    v11 = *(v0 + 904);
    v12 = *(v0 + 896);
    v13 = *(v0 + 888);
    v9(v13, 0, 1, v12);
    v14 = *(v11 + 32);
    v14(v10, v13, v12);
    type metadata accessor for LyricsLoader();
    if ((static LyricsLoader.supportsLyrics(for:)(v10) & 1) == 0)
    {
      goto LABEL_10;
    }

    sub_1001EBB88();
    if (v15)
    {
      goto LABEL_10;
    }

    v16 = [objc_opt_self() currentTraitCollection];
    v17 = [v16 userInterfaceIdiom];

    if (v17 == 6)
    {
      goto LABEL_10;
    }

    v66 = Song.hasLyrics.getter();
    v18 = *(v0 + 928);
    if ((v66 & 1) == 0)
    {
      goto LABEL_11;
    }

    if ((Song.hasTimeSyncedLyrics.getter() & 1) == 0)
    {
LABEL_10:
      v18 = *(v0 + 928);
LABEL_11:
      (*(*(v0 + 904) + 8))(v18, *(v0 + 896));
      goto LABEL_13;
    }

    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    v67 = String.init(localized:table:bundle:locale:comment:)();
    v92 = v68;
    v95 = v67;
    v69 = String._bridgeToObjectiveC()();
    v90 = [objc_opt_self() imageNamed:v69];

    if (qword_10117FC20 != -1)
    {
      swift_once();
    }

    v70 = *(v0 + 912);
    v71 = *(v0 + 904);
    v72 = *(v0 + 896);
    v87 = *(v0 + 920);
    v88 = *(v0 + 680);
    v73 = *(v0 + 672);
    v89 = qword_1012193C8;
    (*(v71 + 16))();
    sub_10012B7A8(v73, v0 + 16);
    v74 = (*(v71 + 80) + 16) & ~*(v71 + 80);
    v75 = (v70 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
    v76 = swift_allocObject();
    v14(v76 + v74, v87, v72);
    sub_10012B828(v0 + 16, v76 + v75);
    *(v76 + ((v75 + 103) & 0xFFFFFFFFFFFFFFF8)) = v88;
    v77 = _s8ActivityCMa();
    v78 = objc_allocWithZone(v77);
    v79 = OBJC_IVAR____TtCC5Music35LyricsSharingActivityViewController8Activity_image;
    *&v78[OBJC_IVAR____TtCC5Music35LyricsSharingActivityViewController8Activity_image] = 0;
    v80 = OBJC_IVAR____TtCC5Music35LyricsSharingActivityViewController8Activity__activityType;
    *&v78[OBJC_IVAR____TtCC5Music35LyricsSharingActivityViewController8Activity__activityType] = 0;
    v81 = &v78[OBJC_IVAR____TtCC5Music35LyricsSharingActivityViewController8Activity_title];
    *v81 = v95;
    *(v81 + 1) = v92;
    *&v78[v79] = v90;
    *&v78[v80] = v89;
    v82 = &v78[OBJC_IVAR____TtCC5Music35LyricsSharingActivityViewController8Activity_performBlock];
    *v82 = sub_10012B884;
    v82[1] = v76;
    *(v0 + 640) = v78;
    *(v0 + 648) = v77;
    v83 = v89;
    objc_msgSendSuper2((v0 + 640), "init");
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v84 = *(v0 + 928);
    v85 = *(v0 + 904);
    v86 = *(v0 + 896);
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    (*(v85 + 8))(v84, v86);
  }

  else
  {
    v19 = *(v0 + 888);
    v9(v19, 1, 1, *(v0 + 896));
    sub_1000095E8(v19, &unk_101183960, &unk_100EBCF90);
  }

LABEL_13:
  v20 = *(v0 + 864);
  sub_100008FE4(v0 + 112, v0 + 312);
  v21 = swift_dynamicCast();
  v22 = *(v20 + 56);
  if (v21)
  {
    v23 = *(v0 + 880);
    v24 = *(v0 + 864);
    v25 = *(v0 + 856);
    v26 = *(v0 + 848);
    v27 = *(v0 + 832);
    v28 = *(v0 + 728);
    v29 = *(v0 + 720);
    v22(v26, 0, 1, v25);
    v30 = *(v24 + 32);
    *(v0 + 984) = v30;
    *(v0 + 992) = (v24 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v30(v23, v26, v25);
    Playlist.url.getter();
    v31 = *(v28 + 48);
    *(v0 + 1000) = v31;
    *(v0 + 1008) = (v28 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (v31(v27, 1, v29) == 1)
    {
      sub_1000095E8(*(v0 + 832), &qword_101183A20, &unk_100EBCF80);
      v32 = swift_task_alloc();
      *(v0 + 1016) = v32;
      *v32 = v0;
      v32[1] = sub_100128B48;
      v33 = *(v0 + 840);

      return Playlist.publish()(v33);
    }

    v35 = *(v0 + 832);
    (*(*(v0 + 864) + 8))(*(v0 + 880), *(v0 + 856));
    v36 = &qword_101183A20;
    v37 = &unk_100EBCF80;
  }

  else
  {
    v35 = *(v0 + 848);
    v22(v35, 1, 1, *(v0 + 856));
    v36 = &unk_1011814D0;
    v37 = &qword_100EC12A0;
  }

  sub_1000095E8(v35, v36, v37);
  sub_100008FE4(v0 + 112, v0 + 392);
  sub_10010FC20(&unk_101184000, &unk_100EBCFB0);
  if (swift_dynamicCast())
  {
    v38 = *(v0 + 784);
    v39 = *(v0 + 768);
    v40 = *(v0 + 760);
    v41 = *(v0 + 376);
    v42 = *(v0 + 384);
    sub_10000954C((v0 + 352), v41);
    v43 = (*(v42 + 8))(v41, v42);
    sub_10000959C((v0 + 352));
    *(v0 + 656) = v43;
    v44 = Logger.actions.unsafeMutableAddressor();
    (*(v39 + 16))(v38, v44, v40);
    sub_100008FE4(v0 + 112, v0 + 512);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = *(v0 + 784);
      v48 = *(v0 + 768);
      v49 = *(v0 + 760);
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v96[0] = v51;
      *v50 = 136446210;
      sub_100008FE4(v0 + 512, v0 + 552);
      v52 = String.init<A>(describing:)();
      v54 = v53;
      sub_10000959C((v0 + 512));
      v55 = sub_1000105AC(v52, v54, v96);

      *(v50 + 4) = v55;
      _os_log_impl(&_mh_execute_header, v45, v46, "Requesting sharing URL and offers for item=%{public}s", v50, 0xCu);
      sub_10000959C(v51);

      (*(v48 + 8))(v47, v49);
    }

    else
    {
      v60 = *(v0 + 784);
      v61 = *(v0 + 768);
      v62 = *(v0 + 760);

      sub_10000959C((v0 + 512));
      (*(v61 + 8))(v60, v62);
    }

    v94 = (*(*(v0 + 696) + 40) + **(*(v0 + 696) + 40));
    v63 = swift_task_alloc();
    *(v0 + 1032) = v63;
    *v63 = v0;
    v63[1] = sub_100129AA0;
    v64 = *(v0 + 696);
    v65 = *(v0 + 688);

    return v94(v0 + 656, v65, v64);
  }

  else
  {
    v93 = *(v0 + 696);
    *(v0 + 352) = 0u;
    *(v0 + 368) = 0u;
    *(v0 + 384) = 0;
    sub_1000095E8(v0 + 352, &unk_101181500, &qword_100EBF9D0);
    v91 = (*(v93 + 24) + **(v93 + 24));
    v56 = swift_task_alloc();
    *(v0 + 1024) = v56;
    *v56 = v0;
    v56[1] = sub_1001294D8;
    v57 = *(v0 + 824);
    v58 = *(v0 + 696);
    v59 = *(v0 + 688);

    return v91(v57, v59, v58);
  }
}

uint64_t sub_100128B48()
{
  v1 = *v0;

  v2 = *(v1 + 960);
  v3 = *(v1 + 952);

  return _swift_task_switch(sub_100128C68, v3, v2);
}

uint64_t sub_100128C68()
{
  v75 = v0;
  v1 = *(v0 + 864);
  v2 = *(v0 + 856);
  v3 = *(v0 + 840);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    (*(v1 + 8))(*(v0 + 880), v2);
    v4 = &unk_1011814D0;
    v5 = &qword_100EC12A0;
    v6 = v3;
    goto LABEL_5;
  }

  v7 = *(v0 + 1000);
  v8 = *(v0 + 800);
  v9 = *(v0 + 720);
  (*(v0 + 984))(*(v0 + 872), v3, v2);
  Playlist.url.getter();
  if (v7(v8, 1, v9) == 1)
  {
    v10 = *(v0 + 880);
    v11 = *(v0 + 856);
    v12 = *(v0 + 800);
    v13 = *(*(v0 + 864) + 8);
    v13(*(v0 + 872), v11);
    v13(v10, v11);
    v4 = &qword_101183A20;
    v5 = &unk_100EBCF80;
    v6 = v12;
LABEL_5:
    sub_1000095E8(v6, v4, v5);
    sub_100008FE4(v0 + 112, v0 + 392);
    sub_10010FC20(&unk_101184000, &unk_100EBCFB0);
    if (swift_dynamicCast())
    {
      v14 = *(v0 + 784);
      v15 = *(v0 + 768);
      v16 = *(v0 + 760);
      v17 = *(v0 + 376);
      v18 = *(v0 + 384);
      sub_10000954C((v0 + 352), v17);
      v19 = (*(v18 + 8))(v17, v18);
      sub_10000959C((v0 + 352));
      *(v0 + 656) = v19;
      v20 = Logger.actions.unsafeMutableAddressor();
      (*(v15 + 16))(v14, v20, v16);
      sub_100008FE4(v0 + 112, v0 + 512);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = *(v0 + 784);
        v24 = *(v0 + 768);
        v25 = *(v0 + 760);
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v74 = v27;
        *v26 = 136446210;
        sub_100008FE4(v0 + 512, v0 + 552);
        v28 = String.init<A>(describing:)();
        v30 = v29;
        sub_10000959C((v0 + 512));
        v31 = sub_1000105AC(v28, v30, &v74);

        *(v26 + 4) = v31;
        _os_log_impl(&_mh_execute_header, v21, v22, "Requesting sharing URL and offers for item=%{public}s", v26, 0xCu);
        sub_10000959C(v27);

        (*(v24 + 8))(v23, v25);
      }

      else
      {
        v51 = *(v0 + 784);
        v52 = *(v0 + 768);
        v53 = *(v0 + 760);

        sub_10000959C((v0 + 512));
        (*(v52 + 8))(v51, v53);
      }

      v72 = (*(*(v0 + 696) + 40) + **(*(v0 + 696) + 40));
      v54 = swift_task_alloc();
      *(v0 + 1032) = v54;
      *v54 = v0;
      v54[1] = sub_100129AA0;
      v55 = *(v0 + 696);
      v56 = *(v0 + 688);

      return v72(v0 + 656, v56, v55);
    }

    else
    {
      v71 = *(v0 + 696);
      *(v0 + 352) = 0u;
      *(v0 + 368) = 0u;
      *(v0 + 384) = 0;
      sub_1000095E8(v0 + 352, &unk_101181500, &qword_100EBF9D0);
      v69 = (*(v71 + 24) + **(v71 + 24));
      v32 = swift_task_alloc();
      *(v0 + 1024) = v32;
      *v32 = v0;
      v32[1] = sub_1001294D8;
      v33 = *(v0 + 824);
      v34 = *(v0 + 696);
      v35 = *(v0 + 688);

      return v69(v33, v35, v34);
    }
  }

  v37 = *(v0 + 800);
  v38 = *(v0 + 736);
  v39 = *(v0 + 728);
  v40 = *(v0 + 720);

  (*(v39 + 32))(v38, v37, v40);
  v41 = sub_100562380();
  URL._bridgeToObjectiveC()(v42);
  v44 = v43;
  [v41 setOriginalURL:v43];

  v45 = type metadata accessor for ShareActivityItemProvider(0);
  v46 = objc_allocWithZone(v45);
  v47 = v41;
  v48 = [v47 originalURL];
  if (v48)
  {
    v49 = v48;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v50 = 0;
  }

  else
  {
    v50 = 1;
  }

  v70 = *(v0 + 872);
  v73 = *(v0 + 880);
  v57 = *(v0 + 864);
  v58 = *(v0 + 856);
  v59 = *(v0 + 792);
  v67 = *(v0 + 968);
  v68 = *(v0 + 736);
  v60 = *(v0 + 728);
  v61 = *(v0 + 720);
  v66 = *(v0 + 672);
  v62 = *(v0 + 664);
  (*(v60 + 56))(v59, v50, 1, v61);
  sub_10003D17C(v59, &v46[OBJC_IVAR____TtC5Music25ShareActivityItemProvider_url], &qword_101183A20, &unk_100EBCF80);
  *&v46[OBJC_IVAR____TtC5Music25ShareActivityItemProvider_linkMetadata] = v47;
  *(v0 + 624) = v46;
  *(v0 + 632) = v45;
  v63 = objc_msgSendSuper2((v0 + 624), "init");
  sub_10012AA30(v63, v62, v67, v66);

  (*(v60 + 8))(v68, v61);
  v64 = *(v57 + 8);
  v64(v70, v58);
  v64(v73, v58);

  sub_10000959C((v0 + 112));

  v65 = *(v0 + 8);

  return v65();
}

uint64_t sub_1001294D8()
{
  v1 = *v0;

  v2 = *(v1 + 960);
  v3 = *(v1 + 952);

  return _swift_task_switch(sub_1001295F8, v3, v2);
}

uint64_t sub_1001295F8()
{
  v42 = v0;
  v1 = *(v0 + 824);
  v2 = *(v0 + 728);
  v3 = *(v0 + 720);

  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = *(v0 + 936);
    v5 = *(v0 + 696);
    v6 = *(v0 + 688);
    v7 = *(v0 + 672);
    sub_1000095E8(*(v0 + 824), &qword_101183A20, &unk_100EBCF80);
    sub_100129F18(v4, v7, v6, v5);
  }

  else
  {
    v8 = *(v0 + 776);
    v9 = *(v0 + 768);
    v10 = *(v0 + 760);
    (*(*(v0 + 728) + 32))(*(v0 + 752), *(v0 + 824), *(v0 + 720));
    v11 = Logger.actions.unsafeMutableAddressor();
    (*(v9 + 16))(v8, v11, v10);
    sub_100008FE4(v0 + 112, v0 + 432);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v0 + 776);
      v15 = *(v0 + 768);
      v16 = *(v0 + 760);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v41 = v18;
      *v17 = 136446210;
      sub_100008FE4(v0 + 432, v0 + 472);
      v19 = String.init<A>(describing:)();
      v21 = v20;
      sub_10000959C((v0 + 432));
      v22 = sub_1000105AC(v19, v21, &v41);

      *(v17 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v12, v13, "Requesting sharing URL for item=%{public}s", v17, 0xCu);
      sub_10000959C(v18);

      (*(v15 + 8))(v14, v16);
    }

    else
    {
      v23 = *(v0 + 776);
      v24 = *(v0 + 768);
      v25 = *(v0 + 760);

      sub_10000959C((v0 + 432));
      (*(v24 + 8))(v23, v25);
    }

    v26 = *(v0 + 968);
    v27 = *(v0 + 744);
    v28 = *(v0 + 728);
    v29 = *(v0 + 720);
    v39 = *(v0 + 672);
    v40 = *(v0 + 752);
    v38 = *(v0 + 664);
    v30 = *(v28 + 16);
    v30(v27);
    v31 = type metadata accessor for ShareActivityItemProvider(0);
    v32 = objc_allocWithZone(v31);
    v33 = OBJC_IVAR____TtC5Music25ShareActivityItemProvider_url;
    (v30)(&v32[OBJC_IVAR____TtC5Music25ShareActivityItemProvider_url], v27, v29);
    (*(v28 + 56))(&v32[v33], 0, 1, v29);
    *&v32[OBJC_IVAR____TtC5Music25ShareActivityItemProvider_linkMetadata] = 0;
    *(v0 + 592) = v32;
    *(v0 + 600) = v31;
    v34 = objc_msgSendSuper2((v0 + 592), "init");
    v35 = *(v28 + 8);
    v35(v27, v29);
    sub_10012AA30(v34, v38, v26, v39);

    v35(v40, v29);
  }

  sub_10000959C((v0 + 112));

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_100129AA0()
{
  v1 = *v0;

  v2 = *(v1 + 960);
  v3 = *(v1 + 952);

  return _swift_task_switch(sub_100129BC0, v3, v2);
}

uint64_t sub_100129BC0()
{

  receiver = v0[41].receiver;
  v2 = [receiver originalURL];
  if (v2)
  {
    v3 = v0[51].receiver;
    super_class = v0[45].super_class;
    v5 = v0[45].receiver;
    v6 = v2;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = 1;
    v24 = *(super_class + 7);
    v24(v3, 0, 1, v5);
    sub_1000095E8(v3, &qword_101183A20, &unk_100EBCF80);
    v8 = type metadata accessor for ShareActivityItemProvider(0);
    v9 = objc_allocWithZone(v8);
    v10 = receiver;
    v11 = [v10 originalURL];
    if (v11)
    {
      v12 = v11;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v7 = 0;
    }

    v13 = v0[60].super_class;
    v14 = v0[50].super_class;
    v15 = v0[42].receiver;
    v16 = v0[41].super_class;
    v24(v14, v7, 1, v0[45].receiver);
    sub_10003D17C(v14, &v9[OBJC_IVAR____TtC5Music25ShareActivityItemProvider_url], &qword_101183A20, &unk_100EBCF80);
    *&v9[OBJC_IVAR____TtC5Music25ShareActivityItemProvider_linkMetadata] = v10;
    v0[38].receiver = v9;
    v0[38].super_class = v8;
    receiver = objc_msgSendSuper2(v0 + 38, "init");
    sub_10012AA30(receiver, v16, v13, v15);
  }

  else
  {
    v17 = v0[58].super_class;
    v18 = v0[51].receiver;
    v19 = v0[43].super_class;
    v20 = v0[43].receiver;
    v21 = v0[42].receiver;
    (*(v0[45].super_class + 7))(v18, 1, 1, v0[45].receiver);
    sub_1000095E8(v18, &qword_101183A20, &unk_100EBCF80);
    sub_100129F18(v17, v21, v20, v19);
  }

  sub_10000959C(&v0[7].receiver);

  v22 = v0->super_class;

  return v22();
}

uint64_t sub_100129F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46[3] = a3;
  v46[4] = a4;
  v16 = sub_10001C8B8(v46);
  v17 = *(*(a3 - 8) + 16);
  v42 = v16;
  v17(v16, a1, a3);
  v18 = Logger.actions.unsafeMutableAddressor();
  (*(v13 + 16))(v15, v18, v12);
  sub_100008FE4(v46, v45);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v38 = v12;
    v22 = v21;
    v23 = swift_slowAlloc();
    v41 = a2;
    v24 = v23;
    v44 = v23;
    *v22 = 136446210;
    sub_100008FE4(v45, v43);
    sub_10010FC20(&unk_1011814E0, &unk_100EBF9B0);
    v25 = String.init<A>(describing:)();
    v39 = v9;
    v40 = v11;
    v26 = v25;
    v27 = a3;
    v28 = a4;
    v30 = v29;
    sub_10000959C(v45);
    v31 = sub_1000105AC(v26, v30, &v44);
    a4 = v28;
    a3 = v27;

    *(v22 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v19, v20, "No sharing url for item=%{public}s", v22, 0xCu);
    sub_10000959C(v24);

    (*(v13 + 8))(v15, v38);
  }

  else
  {

    sub_10000959C(v45);
    (*(v13 + 8))(v15, v12);
  }

  (*(a4 + 32))(a3, a4);
  v32 = String._bridgeToObjectiveC()();

  v33 = [objc_opt_self() alertControllerWithTitle:v32 message:0 preferredStyle:1];

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v34 = String._bridgeToObjectiveC()();

  v35 = [objc_opt_self() actionWithTitle:v34 style:1 handler:0];

  [v33 addAction:v35];
  PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v33, 1, 1, 0, 0);

  return sub_10000959C(v46);
}

void sub_10012A364(uint64_t a1, char *a2)
{
  v54 = type metadata accessor for UITraitOverrides();
  __chkstk_darwin();
  v4 = type metadata accessor for Song();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin();
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v5 + 16);
  v9(v8, a1, v4, v6);
  v55 = a2;
  sub_10012B7A8(a2, v57);
  v53 = type metadata accessor for LyricsSharingActivityViewController(0);
  v10 = objc_allocWithZone(v53);
  v11 = &v10[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_lyricsID];
  *v11 = 0;
  v11[1] = 0;
  *&v10[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_selectionManager] = 0;
  *&v10[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_lyricsLoader] = 0;
  v12 = &v10[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_reportConcernData];
  v52 = xmmword_100EBCEE0;
  v12[1] = 0u;
  v12[2] = 0u;
  *v12 = xmmword_100EBCEE0;
  *&v10[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_windowBackgroundView] = 0;
  *&v10[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_leadingSilence] = 0;
  v10[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_needsLyricsReporting] = 0;
  *&v10[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_visibleDuration] = 0;
  v13 = OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_lyricsVisibilityStart;
  v14 = type metadata accessor for Date();
  (*(*(v14 - 8) + 56))(&v10[v13], 1, 1, v14);
  v10[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_isVisible] = 0;
  *&v10[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_backgroundObserver] = 0;
  *&v10[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_foregroundObserver] = 0;
  *&v10[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_presentationObserver] = 0;
  *&v10[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_dismissalObserver] = 0;
  (v9)(&v10[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_song], v8, v4);
  *v11 = 0;
  v11[1] = 0;
  sub_10012B7A8(v57, &v10[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_presentationSource]);
  *v12 = v52;
  type metadata accessor for LyricsSelectionViewController(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12[1] = 0u;
  v12[2] = 0u;
  v16 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v10[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_selectionViewController] = v16;
  v17 = [objc_allocWithZone(LPLinkMetadata) init];
  v18 = OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_headerMetadata;
  *&v10[OBJC_IVAR____TtC5Music35LyricsSharingActivityViewController_headerMetadata] = v17;
  v19 = sub_100564124();
  v20 = [v19 specialization];

  if (v20)
  {
    objc_opt_self();
    v21 = swift_dynamicCastObjCClass();
    if (!v21)
    {
    }
  }

  else
  {
    v21 = 0;
  }

  v22 = *&v10[v18];
  v23 = [v21 artwork];
  [v22 setImage:v23];

  isa = Array._bridgeToObjectiveC()().super.isa;
  v56.receiver = v10;
  v56.super_class = v53;
  v25 = objc_msgSendSuper2(&v56, "initWithActivityItems:applicationActivities:", isa, 0);

  v26 = v25;
  UIViewController.traitOverrides.getter();
  sub_100050078();
  dispatch thunk of UIMutableTraits.subscript.setter();
  UIViewController.traitOverrides.setter();
  sub_1001E0BC4(1);

  sub_10012BA6C(v57);
  (*(v5 + 8))(v8, v4);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v28 = Strong, v29 = sub_10003169C(), v28, !v29) || (v30 = swift_unknownObjectWeakLoadStrong(), , !v30))
  {
    PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v26, 0, 1, 0, 0);
    goto LABEL_13;
  }

  v31 = sub_1005CD758();
  [v31 setHidden:0];

  v32 = (v30 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode);
  v33 = *(v30 + OBJC_IVAR____TtC5Music24NowPlayingViewController_mode);
  if (v33 >> 62 != 1)
  {
    PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v26, 0, 1, 0, 0);

    v26 = v30;
    goto LABEL_13;
  }

  v34 = v32[1];
  v35 = v32[2];
  v36 = v32[3];
  v37 = v32[4];
  v38 = v32[5];
  v39 = v32[6];
  v40 = (v33 & 0x3FFFFFFFFFFFFFFFLL);
  v41 = ((v33 & 0x3FFFFFFFFFFFFFFFLL) + OBJC_IVAR___MusicNowPlayingLyricsViewController_state);
  v42 = v41[8];
  v54 = v38;
  if (v42 == 1 && *v41 == 2)
  {
    v43 = v34;
    v51 = v37;
    sub_10012BAC0(v33, v34, v35, v36, v37, v38, v39);
    v53 = v40;
    v44 = v43;

    PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v26, 0, 1, 0, 0);

    sub_10012BB6C(v33, v43, v35, v36, v51, v54, v39);
    v26 = v30;
LABEL_13:

    return;
  }

  v45 = *&v40[OBJC_IVAR___MusicNowPlayingLyricsViewController_syncedLyricsViewController];
  if (v45)
  {
    v46 = (swift_isaMask & *v45) + 1256;
    v53 = *((swift_isaMask & *v45) + 0x4E8);
    *&v52 = v46;
    v47 = v34;
    sub_10012BAC0(v33, v34, v35, v36, v37, v38, v39);
    v55 = v40;
    v48 = v47;

    v49 = v45;
    (v53)();

    sub_10012BB6C(v33, v47, v35, v36, v37, v54, v39);

    v26 = v30;
    goto LABEL_13;
  }

  __break(1u);
}

uint64_t sub_10012AA30(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_10010FC20(&qword_101181530, &unk_100EBCFE0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100EBC6B0;
  *(v7 + 56) = type metadata accessor for ShareActivityItemProvider(0);
  *(v7 + 32) = a1;
  if (a2)
  {
    v26 = sub_100009F78(0, &unk_101181540, NSItemProvider_ptr);
    *&v25 = a2;
    v8 = a1;
    v9 = a2;
    v7 = sub_100498DB0(1, 2, 1, v7);
    *(v7 + 16) = 2;
    sub_100016270(&v25, (v7 + 64));
    swift_beginAccess();
    v10 = _swiftEmptyArrayStorage;
  }

  else
  {
    v11 = a1;
    swift_beginAccess();
    sub_10010FC20(&qword_101181538, &unk_100ECF030);
    v10 = swift_allocObject();
    *(v10 + 1) = xmmword_100EBC6B0;
    v10[4] = UIActivityTypeSharePlay;
    v12 = UIActivityTypeSharePlay;
  }

  objc_allocWithZone(type metadata accessor for ActivityViewController());

  sub_1001260A8(v13, v7, v10, 0, 0, 0, 0);
  v15 = v14;
  [v14 setSharingStyle:0];
  sub_10012B7A8(a4, &v25);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v18 = [Strong traitCollection];
    v19 = [v18 userInterfaceIdiom];

    if (v19 == 6)
    {
      v20 = [v17 popoverPresentationController];
      if (v20)
      {

        v21 = [v17 presentingViewController];
        if (v21)
        {
          memset(v27, 0, sizeof(v27));
          v28 = 0;
          v29 = xmmword_100EBCEF0;
          v22 = v21;
          PresentationSource.init(viewController:position:)(v22, v27, v24);
          sub_10012BA6C(&v25);
          sub_10012B828(v24, &v25);
          [v17 dismissViewControllerAnimated:1 completion:0];

          v17 = v22;
        }
      }
    }
  }

  PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v15, 1, 1, 0, 0);

  return sub_10012BA6C(&v25);
}

uint64_t sub_10012ACF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[44] = a5;
  v6[45] = a6;
  v6[42] = a3;
  v6[43] = a4;
  v6[40] = a1;
  v6[41] = a2;
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  v6[46] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v6[47] = v7;
  v6[48] = *(v7 - 8);
  v6[49] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[50] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10012AE28, v9, v8);
}

uint64_t sub_10012AE28()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 376);
  v3 = *(v0 + 384);

  v4 = sub_100562828();
  SocialProfileDescriptor.url.getter();
  URL._bridgeToObjectiveC()(v5);
  v7 = v6;
  (*(v3 + 8))(v1, v2);
  [v4 setOriginalURL:v7];

  sub_10010FC20(&qword_101181530, &unk_100EBCFE0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100EBC6B0;
  v9 = type metadata accessor for ShareActivityItemProvider(0);
  v10 = objc_allocWithZone(v9);
  v35 = v4;
  v11 = [v35 originalURL];
  if (v11)
  {
    v12 = v11;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  v15 = *(v0 + 360);
  v14 = *(v0 + 368);
  v17 = *(v0 + 344);
  v16 = *(v0 + 352);
  v19 = *(v0 + 328);
  v18 = *(v0 + 336);
  (*(*(v0 + 384) + 56))(v14, v13, 1, *(v0 + 376));
  sub_10003D17C(v14, &v10[OBJC_IVAR____TtC5Music25ShareActivityItemProvider_url], &qword_101183A20, &unk_100EBCF80);
  *&v10[OBJC_IVAR____TtC5Music25ShareActivityItemProvider_linkMetadata] = v35;
  *(v0 + 304) = v10;
  *(v0 + 312) = v9;
  v20 = objc_msgSendSuper2((v0 + 304), "init");
  *(v8 + 56) = v9;
  *(v8 + 32) = v20;
  sub_10010FC20(&qword_101181538, &unk_100ECF030);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBC6B0;
  *(inited + 32) = UIActivityTypeSharePlay;
  v22 = objc_allocWithZone(type metadata accessor for ActivityViewController());

  v23 = UIActivityTypeSharePlay;

  sub_1001260A8(0, v8, inited, v19, v18, v17, v16);
  v25 = v24;
  [v24 setSharingStyle:0];
  sub_10012B7A8(v15, v0 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    v28 = [Strong traitCollection];
    v29 = [v28 userInterfaceIdiom];

    if (v29 == 6)
    {
      v30 = [v27 popoverPresentationController];
      if (v30)
      {

        v31 = [v27 presentingViewController];
        if (v31)
        {
          *(v0 + 240) = 0;
          *(v0 + 208) = 0u;
          *(v0 + 224) = 0u;
          *(v0 + 248) = xmmword_100EBCEF0;
          v32 = v31;
          PresentationSource.init(viewController:position:)(v32, v0 + 208, v0 + 112);
          sub_10012BA6C(v0 + 16);
          sub_10012B828(v0 + 112, v0 + 16);
          [v27 dismissViewControllerAnimated:1 completion:0];

          v27 = v32;
        }
      }
    }
  }

  PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v25, 1, 1, 0, 0);

  sub_10012BA6C(v0 + 16);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_10012B1C0(uint64_t a1, uint64_t a2)
{
  v2[50] = a1;
  v2[51] = a2;
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  v2[52] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v2[53] = v3;
  v2[54] = *(v3 - 8);
  v2[55] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[56] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10012B2EC, v5, v4);
}

uint64_t sub_10012B2EC()
{

  v1 = sub_100562B08();
  if (v1)
  {
    v2 = v1;
    v4 = *(v0 + 432);
    v3 = *(v0 + 440);
    v5 = *(v0 + 424);
    ShareURLDescriptor.url.getter();
    URL._bridgeToObjectiveC()(v6);
    v8 = v7;
    (*(v4 + 8))(v3, v5);
    [v2 setOriginalURL:v8];

    v9 = type metadata accessor for ShareActivityItemProvider(0);
    v10 = objc_allocWithZone(v9);
    v11 = v2;
    v12 = [v11 originalURL];
    if (v12)
    {
      v13 = v12;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v14 = 0;
    }

    else
    {
      v14 = 1;
    }

    v15 = (v0 + 336);
    v27 = *(v0 + 416);
    (*(*(v0 + 432) + 56))(v27, v14, 1, *(v0 + 424));
    sub_10003D17C(v27, &v10[OBJC_IVAR____TtC5Music25ShareActivityItemProvider_url], &qword_101183A20, &unk_100EBCF80);
    *&v10[OBJC_IVAR____TtC5Music25ShareActivityItemProvider_linkMetadata] = v2;
    *(v0 + 384) = v10;
    *(v0 + 392) = v9;
    v28 = objc_msgSendSuper2((v0 + 384), "init");
    *(v0 + 360) = v9;
    *(v0 + 336) = v28;
    v23 = sub_100498DB0(0, 1, 1, _swiftEmptyArrayStorage);
    v25 = *(v23 + 2);
    v29 = *(v23 + 3);
    v26 = v25 + 1;
    if (v25 >= v29 >> 1)
    {
      v23 = sub_100498DB0((v29 > 1), v25 + 1, 1, v23);
    }
  }

  else
  {
    v15 = (v0 + 304);
    v17 = *(v0 + 432);
    v16 = *(v0 + 440);
    v18 = *(v0 + 424);
    ShareURLDescriptor.url.getter();
    v19 = type metadata accessor for ShareActivityItemProvider(0);
    v20 = objc_allocWithZone(v19);
    v21 = OBJC_IVAR____TtC5Music25ShareActivityItemProvider_url;
    (*(v17 + 16))(&v20[OBJC_IVAR____TtC5Music25ShareActivityItemProvider_url], v16, v18);
    (*(v17 + 56))(&v20[v21], 0, 1, v18);
    *&v20[OBJC_IVAR____TtC5Music25ShareActivityItemProvider_linkMetadata] = 0;
    *(v0 + 368) = v20;
    *(v0 + 376) = v19;
    v22 = objc_msgSendSuper2((v0 + 368), "init");
    (*(v17 + 8))(v16, v18);
    *(v0 + 328) = v19;
    *(v0 + 304) = v22;
    v23 = sub_100498DB0(0, 1, 1, _swiftEmptyArrayStorage);
    v25 = *(v23 + 2);
    v24 = *(v23 + 3);
    v26 = v25 + 1;
    if (v25 >= v24 >> 1)
    {
      v23 = sub_100498DB0((v24 > 1), v25 + 1, 1, v23);
    }
  }

  *(v23 + 2) = v26;
  sub_100016270(v15, &v23[32 * v25 + 32]);
  v30 = *(v0 + 408);
  sub_10010FC20(&qword_101181538, &unk_100ECF030);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBC6B0;
  *(inited + 32) = UIActivityTypeSharePlay;
  v32 = objc_allocWithZone(type metadata accessor for ActivityViewController());
  v33 = UIActivityTypeSharePlay;
  sub_1001260A8(0, v23, inited, 0, 0, 0, 0);
  v35 = v34;
  [v34 setSharingStyle:0];
  sub_10012B7A8(v30, v0 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v37 = Strong;
    v38 = [Strong traitCollection];
    v39 = [v38 userInterfaceIdiom];

    if (v39 == 6)
    {
      v40 = [v37 popoverPresentationController];
      if (v40)
      {

        v41 = [v37 presentingViewController];
        if (v41)
        {
          *(v0 + 240) = 0;
          *(v0 + 208) = 0u;
          *(v0 + 224) = 0u;
          *(v0 + 248) = xmmword_100EBCEF0;
          v42 = v41;
          PresentationSource.init(viewController:position:)(v42, v0 + 208, v0 + 112);
          sub_10012BA6C(v0 + 16);
          sub_10012B828(v0 + 112, v0 + 16);
          [v37 dismissViewControllerAnimated:1 completion:0];

          v37 = v42;
        }
      }
    }
  }

  PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v35, 1, 1, 0, 0);

  sub_10012BA6C(v0 + 16);

  v43 = *(v0 + 8);

  return v43();
}

double sub_10012B804(id a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 == 2)
  {
    swift_unknownObjectRelease();
  }

  else if (a6 <= 1u)
  {
  }

  return result;
}

double sub_10012B884()
{
  v1 = *(type metadata accessor for Song() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + ((v3 + 103) & 0xFFFFFFFFFFFFFFF8));

  return sub_100125D3C(v0 + v2, v0 + v3, v4);
}

uint64_t sub_10012B938(uint64_t a1)
{
  v4 = *(type metadata accessor for Song() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002F3F4;

  return sub_100125F6C(a1, v7, v8, v1 + v5, v1 + v6);
}

unint64_t sub_10012BAC0(unint64_t result, void *a2, void *a3, void *a4, void *a5, uint64_t a6, void *a7)
{
  if (result >> 62 == 1)
  {
    v16 = (result & 0x3FFFFFFFFFFFFFFFLL);
    v17 = a2;
  }

  else
  {
    if (result >> 62)
    {
      return result;
    }

    v11 = result;
    v12 = a2;
    v13 = a3;
    v14 = a4;
    v15 = a5;
  }
}

unint64_t sub_10012BB6C(unint64_t result, void *a2, void *a3, void *a4, void *a5, uint64_t a6, void *a7)
{
  if (result >> 62 == 1)
  {
  }

  else
  {
    if (result >> 62)
    {
      return result;
    }
  }
}

uint64_t sub_10012BC40()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, qword_101218608);
  sub_1000060E4(v0, qword_101218608);
  String.musicSubsystem.unsafeMutableAddressor();

  return Logger.init(subsystem:category:)();
}

double sub_10012BCD4()
{
  if (qword_10117F200 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000060E4(v0, static Logger.previewPlaybackController);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 67109120;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v5);

    *(v3 + 4) = v5;

    _os_log_impl(&_mh_execute_header, v1, v2, "isPreviewing: %{BOOL}d", v3, 8u);
  }

  else
  {
  }

  return result;
}

uint64_t Logger.previewPlaybackController.unsafeMutableAddressor()
{
  if (qword_10117F200 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_1000060E4(v0, static Logger.previewPlaybackController);
}

uint64_t sub_10012BEB8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v1);

  return v1;
}

uint64_t sub_10012BF2C(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&unk_10119E440, &qword_100EDD2E0);
  __chkstk_darwin();
  v4 = (&v13 - v3);
  v5 = type metadata accessor for PreviewPlaybackController.Context(0);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = (&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!a2)
  {
    goto LABEL_9;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v4);

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1000095E8(v4, &unk_10119E440, &qword_100EDD2E0);
LABEL_9:
    *&result = 0.0;
    return result;
  }

  sub_1001325C8(v4, v8, type metadata accessor for PreviewPlaybackController.Context);
  type metadata accessor for Song();
  if ((MusicItem.contains(_:)() & 1) == 0)
  {
    sub_100132630(v8);
    goto LABEL_9;
  }

  v9 = *(v8 + *(v5 + 32));
  if (v9 != 2 && v9)
  {
    sub_100132630(v8);
    *&result = 0.0;
  }

  else
  {
    v11 = *v8;
    v10 = v8[1];
    sub_100132630(v8);
    *&result = 1.0 - v10 / v11;
  }

  return result;
}

uint64_t sub_10012C194(uint64_t a1, int a2)
{
  v100 = a2;
  sub_10010FC20(&unk_10119E440, &qword_100EDD2E0);
  __chkstk_darwin();
  v94 = &v79[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v93 = &v79[-v4];
  v5 = type metadata accessor for ContentRating();
  v90 = *(v5 - 8);
  __chkstk_darwin();
  v83 = &v79[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v86 = sub_10010FC20(&qword_1011819C0, &unk_100EBD2E0);
  __chkstk_darwin();
  v99 = &v79[-v7];
  sub_10010FC20(&unk_10118D2F0, &unk_100EBCE10);
  __chkstk_darwin();
  v85 = &v79[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v89 = &v79[-v9];
  __chkstk_darwin();
  v11 = &v79[-v10];
  v12 = type metadata accessor for Song();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v88 = &v79[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v91 = v16;
  v92 = &v79[-v15];
  __chkstk_darwin();
  v18 = &v79[-v17];
  if (qword_10117F200 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  v20 = sub_1000060E4(v19, static Logger.previewPlaybackController);
  v97 = *(v13 + 16);
  v98 = v13 + 16;
  v97(v18, a1, v12);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v84 = v5;
    v24 = v23;
    v82 = swift_slowAlloc();
    v103 = v82;
    *v24 = 136446466;
    sub_1000295F0(&unk_101183F40, &type metadata accessor for Song, &protocol conformance descriptor for Song);
    v81 = v21;
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v80 = v22;
    v96 = a1;
    v27 = v26;
    v87 = *(v13 + 8);
    (v87)(v18, v12);
    v28 = sub_1000105AC(v25, v27, &v103);
    a1 = v96;

    *(v24 + 4) = v28;
    *(v24 + 12) = 2082;
    v102[0] = v100;
    sub_10010FC20(&qword_1011819D8, &unk_100EBD2F0);
    v29 = String.init<A>(describing:)();
    v31 = sub_1000105AC(v29, v30, &v103);

    *(v24 + 14) = v31;
    v32 = v81;
    _os_log_impl(&_mh_execute_header, v81, v80, "Start Preview called for song=%{public}s | origin=%{public}s", v24, 0x16u);
    swift_arrayDestroy();

    v5 = v84;
  }

  else
  {

    v87 = *(v13 + 8);
    (v87)(v18, v12);
  }

  ExplicitRestrictionsController.shared.unsafeMutableAddressor();

  v33 = ExplicitRestrictionsController.explicitContentIsAllowed.getter();

  v34 = Song.catalogID.getter();
  if (!v35)
  {
    v41 = v88;
    v97(v88, a1, v12);
    v42 = Logger.logObject.getter();
    v43 = v12;
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v44))
    {
      v45 = v41;
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v103 = v47;
      *v46 = 136446210;
      sub_1000295F0(&unk_101183F40, &type metadata accessor for Song, &protocol conformance descriptor for Song);
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      v50 = v49;
      (v87)(v45, v43);
      v51 = sub_1000105AC(v48, v50, &v103);

      *(v46 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v42, v44, "No catalogID found for song %{public}s", v46, 0xCu);
      sub_10000959C(v47);
    }

    else
    {

      (v87)(v41, v43);
    }

    v52 = 0;
    goto LABEL_23;
  }

  v84 = v34;
  v87 = v13;
  v88 = v35;
  if (v33)
  {
    goto LABEL_18;
  }

  v82 = v20;
  v96 = a1;
  Song.contentRating.getter();
  v37 = v89;
  v36 = v90;
  (*(v90 + 104))(v89, enum case for ContentRating.explicit(_:), v5);
  (*(v36 + 56))(v37, 0, 1, v5);
  v38 = *(v86 + 48);
  v39 = v99;
  sub_1000089F8(v11, v99, &unk_10118D2F0, &unk_100EBCE10);
  v86 = v38;
  sub_1000089F8(v37, &v39[v38], &unk_10118D2F0, &unk_100EBCE10);
  v40 = *(v36 + 48);
  if (v40(v39, 1, v5) != 1)
  {
    v81 = v11;
    v53 = v99;
    v54 = v85;
    sub_1000089F8(v99, v85, &unk_10118D2F0, &unk_100EBCE10);
    v55 = &v53[v86];
    v56 = v86;
    if (v40(v55, 1, v5) == 1)
    {
      sub_1000095E8(v89, &unk_10118D2F0, &unk_100EBCE10);
      sub_1000095E8(v81, &unk_10118D2F0, &unk_100EBCE10);
      (*(v90 + 8))(v54, v5);
      goto LABEL_17;
    }

    v69 = v90;
    v70 = v99;
    v71 = v83;
    (*(v90 + 32))(v83, &v99[v56], v5);
    sub_1000295F0(&qword_1011819D0, &type metadata accessor for ContentRating, &protocol conformance descriptor for ContentRating);
    v72 = dispatch thunk of static Equatable.== infix(_:_:)();
    v73 = *(v69 + 8);
    v73(v71, v5);
    sub_1000095E8(v89, &unk_10118D2F0, &unk_100EBCE10);
    sub_1000095E8(v81, &unk_10118D2F0, &unk_100EBCE10);
    v73(v54, v5);
    sub_1000095E8(v70, &unk_10118D2F0, &unk_100EBCE10);
    a1 = v96;
    if (v72)
    {
      goto LABEL_20;
    }

LABEL_18:
    v57 = type metadata accessor for PreviewPlaybackController.Context(0);
    v58 = v93;
    (*(*(v57 - 8) + 56))(v93, 1, 1, v57);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000089F8(v58, v94, &unk_10119E440, &qword_100EDD2E0);
    v59 = v12;
    v60 = v95;

    static Published.subscript.setter();
    sub_1000095E8(v58, &unk_10119E440, &qword_100EDD2E0);
    v61 = v92;
    v97(v92, a1, v59);
    v62 = v87;
    v63 = (*(v87 + 80) + 40) & ~*(v87 + 80);
    v64 = v63 + v91;
    v65 = swift_allocObject();
    v66 = v84;
    v67 = v88;
    *(v65 + 2) = v84;
    *(v65 + 3) = v67;
    *(v65 + 4) = v60;
    (*(v62 + 32))(&v65[v63], v61, v59);
    v65[v64] = v100;

    sub_100131EBC(v66, v67, sub_100131E14, v65);
  }

  sub_1000095E8(v37, &unk_10118D2F0, &unk_100EBCE10);
  sub_1000095E8(v11, &unk_10118D2F0, &unk_100EBCE10);
  if (v40(&v99[v86], 1, v5) != 1)
  {
LABEL_17:
    sub_1000095E8(v99, &qword_1011819C0, &unk_100EBD2E0);
    a1 = v96;
    goto LABEL_18;
  }

  sub_1000095E8(v99, &unk_10118D2F0, &unk_100EBCE10);
LABEL_20:

  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    *v76 = 0;
    _os_log_impl(&_mh_execute_header, v74, v75, "Explict content is not allowed.", v76, 2u);
  }

  v52 = 1;
LABEL_23:
  sub_100131DC0();
  v77 = swift_allocError();
  *v78 = v52;
  v101 = v77;
  return swift_willThrow();
}

void sub_10012CDB8(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, char *a5, char *a6, int a7)
{
  v52 = a7;
  v49 = a5;
  v50 = a6;
  v10 = type metadata accessor for Song();
  v51 = *(v10 - 8);
  v11 = *(v51 + 64);
  __chkstk_darwin();
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v13 = &v43 - v12;
  v14 = *(*(type metadata accessor for URL() - 8) + 64);
  __chkstk_darwin();
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v43 - v18;
  if (a1)
  {
    v47 = v16;
    v48 = v17;
    v53 = a1;
    if ([v53 isFinalResponse])
    {
      v46 = a3;
      v20 = String._bridgeToObjectiveC()();
      v21 = [v53 storeItemMetadataForItemIdentifier:v20];

      if (v21)
      {
        v22 = sub_1001320C8(v21);
        if (v22)
        {
          v23 = v22;
          v45 = v21;
          v24 = [v22 previewURL];
          if (v24)
          {
            v25 = v24;
            static URL._unconditionallyBridgeFromObjectiveC(_:)();

            v26 = type metadata accessor for TaskPriority();
            (*(*(v26 - 8) + 56))(v13, 1, 1, v26);
            v46 = swift_allocObject();
            swift_weakInit();
            v49 = v23;
            v27 = v51;
            (*(v51 + 16))(&v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v50, v10);
            (*(v48 + 16))(v15, v19, v47);
            type metadata accessor for MainActor();

            v50 = v49;
            v44 = static MainActor.shared.getter();
            v28 = (*(v27 + 80) + 48) & ~*(v27 + 80);
            v49 = (v28 + v11);
            v29 = (*(v48 + 80) + v28 + v11 + 1) & ~*(v48 + 80);
            v30 = swift_allocObject();
            *(v30 + 2) = v44;
            *(v30 + 3) = &protocol witness table for MainActor;
            v31 = v50;
            *(v30 + 4) = v46;
            *(v30 + 5) = v31;
            (*(v27 + 32))(&v30[v28], &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
            v32 = v48;
            v49[v30] = v52;
            v33 = &v30[v29];
            v34 = v47;
            (*(v32 + 32))(v33, v15, v47);

            sub_1001F4CB8(0, 0, v13, &unk_100EBD308, v30);

            (*(v32 + 8))(v19, v34);
            return;
          }

          v21 = v45;
        }
      }

      if (qword_10117F200 != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      sub_1000060E4(v35, static Logger.previewPlaybackController);

      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();

      v38 = os_log_type_enabled(v36, v37);
      v39 = v46;
      if (v38)
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v54 = v41;
        *v40 = 136315138;
        *(v40 + 4) = sub_1000105AC(v39, a4, &v54);
        _os_log_impl(&_mh_execute_header, v36, v37, "Could not retrieve preview details for identifier %s", v40, 0xCu);
        sub_10000959C(v41);

        return;
      }
    }

    v42 = v53;
  }
}

uint64_t sub_10012D34C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 120) = a7;
  *(v8 + 80) = a6;
  *(v8 + 88) = a8;
  *(v8 + 64) = a4;
  *(v8 + 72) = a5;
  sub_10010FC20(&unk_10119E440, &qword_100EDD2E0);
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v8 + 112) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10012D430, v10, v9);
}

uint64_t sub_10012D430()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v2 = *(v0 + 96);
    v1 = *(v0 + 104);
    v3 = *(v0 + 120);
    v4 = *(v0 + 80);
    [*(v0 + 72) duration];
    v6 = v5;
    v7 = type metadata accessor for PreviewPlaybackController.Context(0);
    v8 = *(v7 + 28);
    v9 = type metadata accessor for Song();
    (*(*(v9 - 8) + 16))(v1 + v8, v4, v9);
    *(v1 + *(v7 + 32)) = 1;
    *v1 = v6;
    *(v1 + 8) = v6;
    *(v1 + 16) = v3;
    (*(*(v7 - 8) + 56))(v1, 0, 1, v7);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000089F8(v1, v2, &unk_10119E440, &qword_100EDD2E0);
    static Published.subscript.setter();
    sub_1000095E8(v1, &unk_10119E440, &qword_100EDD2E0);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10012D634(*(v0 + 88));
  }

  v10 = *(v0 + 8);

  return v10();
}

void sub_10012D634(uint64_t a1)
{
  v2 = v1;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v5 = v31 - v4;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10117F200 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000060E4(v10, static Logger.previewPlaybackController);
  (*(v7 + 16))(v9, a1, v6);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v32 = v1;
    v14 = v13;
    v15 = swift_slowAlloc();
    v31[1] = a1;
    v16 = v15;
    v33 = v15;
    *v14 = 136446210;
    sub_1000295F0(&qword_1011A4850, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v19 = v18;
    (*(v7 + 8))(v9, v6);
    v20 = sub_1000105AC(v17, v19, &v33);

    *(v14 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "Intent to start preview with URL=%{public}s", v14, 0xCu);
    sub_10000959C(v16);

    v2 = v32;
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  v21 = objc_allocWithZone(AVPlayerItem);
  URL._bridgeToObjectiveC()(v22);
  v24 = v23;
  v25 = [v21 initWithURL:v23];

  v26 = type metadata accessor for TaskPriority();
  (*(*(v26 - 8) + 56))(v5, 1, 1, v26);
  v27 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for MainActor();

  v28 = v25;
  v29 = static MainActor.shared.getter();
  v30 = swift_allocObject();
  v30[2] = v29;
  v30[3] = &protocol witness table for MainActor;
  v30[4] = v27;
  v30[5] = v28;

  sub_1001F4F78(0, 0, v5, &unk_100EBD2D8, v30);

  [*(v2 + OBJC_IVAR____TtC5Music25PreviewPlaybackController_player) replaceCurrentItemWithPlayerItem:v28];
  sub_10012E578();
}

uint64_t sub_10012DA44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  type metadata accessor for MainActor();
  v5[8] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[9] = v7;
  v5[10] = v6;

  return _swift_task_switch(sub_10012DAE0, v7, v6);
}

uint64_t sub_10012DAE0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 88) = Strong;
  if (Strong)
  {
    v2 = [*(v0 + 56) asset];
    *(v0 + 96) = v2;
    v3 = swift_task_alloc();
    *(v0 + 104) = v3;
    *v3 = v0;
    v3[1] = sub_10012DC08;

    return sub_10012DDD8(v2);
  }

  else
  {

    **(v0 + 40) = *(v0 + 88) == 0;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_10012DC08()
{
  v1 = *v0;
  v2 = *(*v0 + 96);

  v3 = *(v1 + 80);
  v4 = *(v1 + 72);

  return _swift_task_switch(sub_10012DD64, v4, v3);
}

uint64_t sub_10012DD64()
{

  **(v0 + 40) = *(v0 + 88) == 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10012DDD8(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  v2[5] = swift_task_alloc();

  return _swift_task_switch(sub_10012DE74, 0, 0);
}

uint64_t sub_10012DE74()
{
  sub_10010FC20(&qword_1011819B8, &qword_100EBD2B8);
  v1 = static AVPartialAsyncProperty<A>.duration.getter();
  *(v0 + 48) = v1;
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_10012DF40;

  return AVAsynchronousKeyValueLoading.load<A>(_:isolation:)(v0 + 72, v1, 0, 0);
}

uint64_t sub_10012DF40()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_10012E1C8;
  }

  else
  {

    v2 = sub_10012E05C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10012E05C()
{
  v1 = v0[5];
  v2 = v0[9];
  v3 = v0[11];
  v4 = type metadata accessor for TaskPriority();
  v5 = v0[10];
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v6 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for MainActor();

  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v6;
  v8[5] = v2;
  v8[6] = v5;
  v8[7] = v3;

  sub_1001F4F78(0, 0, v1, &unk_100EBD2C8, v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10012E1C8()
{
  v14 = v0;

  if (qword_10117F200 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, static Logger.previewPlaybackController);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[8];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    v0[2] = v5;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v8 = String.init<A>(describing:)();
    v10 = sub_1000105AC(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to fetch duration on preview asset with error =%{public}s", v6, 0xCu);
    sub_10000959C(v7);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_10012E3A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  v7[9] = a1;
  type metadata accessor for MainActor();
  v7[14] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10012E448, v9, v8);
}

uint64_t sub_10012E448()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v1 = sub_10012FE8C((v0 + 16));
    v3 = v2;
    v4 = type metadata accessor for PreviewPlaybackController.Context(0);
    v5 = (*(*(v4 - 8) + 48))(v3, 1, v4);
    v6 = v5 != 0;
    if (!v5)
    {
      CMTime.seconds.getter();
      *v3 = v7;
    }

    (v1)(v0 + 16, 0);
  }

  else
  {
    v6 = 1;
  }

  **(v0 + 72) = v6;
  v8 = *(v0 + 8);

  return v8();
}

double sub_10012E578()
{
  v1 = v0;
  sub_10010FC20(&qword_101182140, &unk_100EBD2A0);
  __chkstk_darwin();
  v3 = &v51 - v2;
  v4 = sub_10010FC20(&unk_101183D80, &qword_100EC5830);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v59 = &v51 - v6;
  v7 = sub_10010FC20(&qword_101189DE0, &qword_100EBD2B0);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v60 = &v51 - v9;
  sub_10010FC20(&unk_10119E440, &qword_100EDD2E0);
  __chkstk_darwin();
  v11 = (&v51 - v10);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v11);

  v12 = type metadata accessor for PreviewPlaybackController.Context(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12))
  {
    sub_1000095E8(v11, &unk_10119E440, &qword_100EDD2E0);
  }

  else
  {
    v13 = *(v11 + *(v12 + 32));
    sub_1000095E8(v11, &unk_10119E440, &qword_100EDD2E0);
    if (v13 == 2)
    {
      return result;
    }
  }

  v55 = v5;
  v56 = v3;
  v57 = v4;
  v15 = OBJC_IVAR____TtC5Music25PreviewPlaybackController_player;
  [*(v1 + OBJC_IVAR____TtC5Music25PreviewPlaybackController_player) play];
  if (qword_10117F200 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_1000060E4(v16, static Logger.previewPlaybackController);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Play command called", v19, 2u);
  }

  v20 = [*(v1 + v15) error];
  v58 = v8;
  if (v20)
  {
    v54 = v7;
    v62 = v20;
    v21 = v20;
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    type metadata accessor for AVError(0);
    if (swift_dynamicCast())
    {
      v53 = v61;
      v22 = v21;
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();

      v25 = os_log_type_enabled(v23, v24);
      v52 = v22;
      if (v25)
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v61 = v22;
        v62 = v27;
        *v26 = 136446210;
        v28 = v22;
        v29 = String.init<A>(describing:)();
        v31 = sub_1000105AC(v29, v30, &v62);

        *(v26 + 4) = v31;
        _os_log_impl(&_mh_execute_header, v23, v24, "Failed to play preview with AVerror =%{public}s", v26, 0xCu);
        sub_10000959C(v27);
      }

      v62 = v53;
      sub_1000295F0(&qword_101180840, type metadata accessor for AVError, &unk_100EBC1B8);
      _BridgedStoredNSError.code.getter();
      if (v61 == -11912)
      {
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.default.getter();
        v34 = os_log_type_enabled(v32, v33);
        v35 = v52;
        if (v34)
        {
          v36 = swift_slowAlloc();
          *v36 = 0;
        }

        v37 = sub_100131AB0();
        v38 = *(v1 + v15);
        *(v1 + v15) = v37;
        v39 = v37;

        sub_10012F974();
        sub_10012F974();
        sub_10012E578();

        return result;
      }
    }

    else
    {
    }

    v7 = v54;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v62) = 1;

  static Published.subscript.setter();

  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 67109120;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v62);

    *(v42 + 4) = v62;

    _os_log_impl(&_mh_execute_header, v40, v41, "isPreviewing: %{BOOL}d", v42, 8u);
  }

  else
  {
  }

  v44 = v56;
  v43 = v57;
  v45 = v55;
  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  v46 = v59;
  (*(*qword_101218AC8 + 456))();
  sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
  v47 = static OS_dispatch_queue.main.getter();
  v62 = v47;
  v48 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v48 - 8) + 56))(v44, 1, 1, v48);
  sub_100020674(&unk_1011A4650, &unk_101183D80, &qword_100EC5830, &protocol conformance descriptor for Published<A>.Publisher);
  sub_1000206BC();
  v49 = v60;
  Publisher.receive<A>(on:options:)();
  sub_1000095E8(v44, &qword_101182140, &unk_100EBD2A0);

  (*(v45 + 8))(v46, v43);
  swift_allocObject();
  swift_weakInit();
  sub_100020674(&unk_10118ACC0, &qword_101189DE0, &qword_100EBD2B0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v50 = Publisher<>.sink(receiveValue:)();

  (*(v58 + 8))(v49, v7);
  *(v1 + OBJC_IVAR____TtC5Music25PreviewPlaybackController_nowPlayingSubscription) = v50;

  return result;
}

double sub_10012EED8(void **a1, uint64_t a2)
{
  sub_10010FC20(&unk_10119E440, &qword_100EDD2E0);
  __chkstk_darwin();
  v4 = &v10[-v3];
  v5 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v4);

    v7 = type metadata accessor for PreviewPlaybackController.Context(0);
    if ((*(*(v7 - 8) + 48))(v4, 1, v7))
    {
      sub_1000095E8(v4, &unk_10119E440, &qword_100EDD2E0);
      return result;
    }

    v8 = *(v4 + *(v7 + 32));
    sub_1000095E8(v4, &unk_10119E440, &qword_100EDD2E0);
    v9 = v8 != 2 || v5 == 0;
    if (!v9 && [v5 state] == 2)
    {
      if ([v5 isSharedListeningSession])
      {
        swift_beginAccess();
        if (!swift_weakLoadStrong())
        {
          return result;
        }

        sub_10012F360();
      }

      else
      {
        swift_beginAccess();
        if (!swift_weakLoadStrong())
        {
          return result;
        }

        sub_10012F0E8();
      }
    }
  }

  return result;
}

double sub_10012F0E8()
{
  v1 = v0;
  sub_10010FC20(&unk_10119E440, &qword_100EDD2E0);
  __chkstk_darwin();
  v3 = v15 - v2;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v3);

  v4 = type metadata accessor for PreviewPlaybackController.Context(0);
  v5 = *(*(v4 - 8) + 48);
  if (v5(v3, 1, v4))
  {
    sub_1000095E8(v3, &unk_10119E440, &qword_100EDD2E0);
  }

  else
  {
    v6 = *&v3[*(v4 + 32)];
    sub_1000095E8(v3, &unk_10119E440, &qword_100EDD2E0);
    if (!v6)
    {
      return result;
    }
  }

  v8 = sub_10012FE8C(v15);
  v10 = v9;
  if (!v5(v9, 1, v4))
  {
    *&v10[*(v4 + 32)] = 0;
  }

  (v8)(v15, 0);
  [*(v1 + OBJC_IVAR____TtC5Music25PreviewPlaybackController_player) pause];
  if (qword_10117F200 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000060E4(v11, static Logger.previewPlaybackController);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Pause command called", v14, 2u);
  }

  return sub_100130004();
}

double sub_10012F360()
{
  v1 = v0;
  sub_10010FC20(&unk_10119E440, &qword_100EDD2E0);
  __chkstk_darwin();
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v22 - v4;
  __chkstk_darwin();
  v7 = (&v22 - v6);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(v7);

  v8 = type metadata accessor for PreviewPlaybackController.Context(0);
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v7, 1, v8);
  sub_1000095E8(v7, &unk_10119E440, &qword_100EDD2E0);
  if (v10 != 1)
  {
    if (qword_10117F200 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000060E4(v12, static Logger.previewPlaybackController);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Finish command called", v15, 2u);
    }

    v16 = (v1 + OBJC_IVAR____TtC5Music25PreviewPlaybackController_playbackFinishedHandler);
    v17 = *(v1 + OBJC_IVAR____TtC5Music25PreviewPlaybackController_playbackFinishedHandler);
    if (v17)
    {
      v18 = v16[1];

      v17(v19);
      sub_100020438(v17, v18);
      v20 = *v16;
    }

    else
    {
      v20 = 0;
    }

    v21 = v16[1];
    *v16 = 0;
    v16[1] = 0;
    sub_100020438(v20, v21);
    [*(v1 + OBJC_IVAR____TtC5Music25PreviewPlaybackController_player) replaceCurrentItemWithPlayerItem:0];
    (*(v9 + 56))(v5, 1, 1, v8);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1000089F8(v5, v3, &unk_10119E440, &qword_100EDD2E0);

    static Published.subscript.setter();
    sub_1000095E8(v5, &unk_10119E440, &qword_100EDD2E0);
    *(v1 + OBJC_IVAR____TtC5Music25PreviewPlaybackController_nowPlayingSubscription) = 0;

    return sub_100130004();
  }

  return result;
}

unint64_t sub_10012F6B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  result = sub_10012F908();
  v6 = 0;
  v7 = result + 64;
  v8 = 1 << *(result + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(result + 64);
  v11 = OBJC_IVAR____TtC5Music25PreviewPlaybackController_previewUpsellTriggerCountPerContainer;
  v12 = (v8 + 63) >> 6;
  if (!v10)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v14 = *(*(result + 56) + ((v6 << 9) | (8 * v13)));
      if (v14 >= *(v2 + v11))
      {
        break;
      }

      if (!v10)
      {
        goto LABEL_6;
      }
    }

    v30 = result;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_10066C89C(0, _swiftEmptyArrayStorage[2] + 1, 1);
    }

    v17 = _swiftEmptyArrayStorage[2];
    v16 = _swiftEmptyArrayStorage[3];
    v18 = v17 + 1;
    result = v30;
    if (v17 >= v16 >> 1)
    {
      sub_10066C89C((v16 > 1), v17 + 1, 1);
      v18 = v17 + 1;
      result = v30;
    }

    _swiftEmptyArrayStorage[2] = v18;
    _swiftEmptyArrayStorage[v17 + 4] = v14;
  }

  while (v10);
LABEL_6:
  while (1)
  {
    v15 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v15 >= v12)
    {

      v19 = _swiftEmptyArrayStorage[2];

      if (v19 >= *(v2 + OBJC_IVAR____TtC5Music25PreviewPlaybackController_maxUpsellDisplays) || a2 == 0)
      {
        return 0;
      }

      v21 = OBJC_IVAR____TtC5Music25PreviewPlaybackController____lazy_storage___containerPreviewCountDictionary;
      v22 = *(v2 + OBJC_IVAR____TtC5Music25PreviewPlaybackController____lazy_storage___containerPreviewCountDictionary);
      if (!*(v22 + 16))
      {
        goto LABEL_27;
      }

      v23 = a1;
      v24 = sub_100019C10(a1, a2);
      if (v25)
      {
        v26 = *(*(v22 + 56) + 8 * v24);

        v27 = v26 + 1;
        if (!__OFADD__(v26, 1))
        {
          goto LABEL_29;
        }

        __break(1u);
LABEL_27:
        v27 = 1;
        v23 = a1;
      }

      else
      {

        v27 = 1;
      }

LABEL_29:
      v28 = *(v3 + v21);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1006C53A4(v27, v23, a2, isUniquelyReferenced_nonNull_native);
      *(v3 + v21) = v28;

      return v27 == *(v3 + v11);
    }

    v10 = *(v7 + 8 * v15);
    ++v6;
    if (v10)
    {
      v6 = v15;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10012F908()
{
  v1 = OBJC_IVAR____TtC5Music25PreviewPlaybackController____lazy_storage___containerPreviewCountDictionary;
  if (*(v0 + OBJC_IVAR____TtC5Music25PreviewPlaybackController____lazy_storage___containerPreviewCountDictionary))
  {
    v2 = *(v0 + OBJC_IVAR____TtC5Music25PreviewPlaybackController____lazy_storage___containerPreviewCountDictionary);
  }

  else
  {
    v2 = sub_10010C22C(_swiftEmptyArrayStorage);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_10012F974()
{
  v18 = CMTime.init(seconds:preferredTimescale:)(0.5, 1000000000);
  value = v18.value;
  timescale = v18.timescale;
  epoch = v18.epoch;
  v4 = HIDWORD(*&v18.timescale);
  v5 = *(v0 + OBJC_IVAR____TtC5Music25PreviewPlaybackController_player);
  sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
  v6 = v5;
  v7 = static OS_dispatch_queue.main.getter();
  v8 = swift_allocObject();
  swift_weakInit();
  v16 = sub_100131C1C;
  v17 = v8;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_10012FF98;
  v15 = &unk_10109D988;
  v9 = _Block_copy(&v12);

  v12 = value;
  v13 = __PAIR64__(v4, timescale);
  v14 = epoch;
  v10 = [v6 addPeriodicTimeObserverForInterval:&v12 queue:v7 usingBlock:v9];
  _Block_release(v9);

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  return sub_10000959C(&v12);
}

void sub_10012FAF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10010FC20(&unk_10119E440, &qword_100EDD2E0);
  __chkstk_darwin();
  v5 = (&v24[-1] - v4);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(v5);

    v8 = type metadata accessor for PreviewPlaybackController.Context(0);
    v9 = *(*(v8 - 8) + 48);
    if (v9(v5, 1, v8))
    {

      sub_1000095E8(v5, &unk_10119E440, &qword_100EDD2E0);
    }

    else
    {
      v10 = *v5;
      sub_1000095E8(v5, &unk_10119E440, &qword_100EDD2E0);
      CMTime.seconds.getter();
      v12 = v10 - v11;
      v13 = sub_10012FE8C(v24);
      v15 = v14;
      if (!v9(v14, 1, v8))
      {
        *(v15 + 8) = v12;
      }

      (v13)(v24, 0);
      v16 = sub_10012FE8C(v24);
      v18 = v17;
      if (!v9(v17, 1, v8))
      {
        *(v18 + *(v8 + 32)) = [*(v7 + OBJC_IVAR____TtC5Music25PreviewPlaybackController_player) timeControlStatus];
      }

      (v16)(v24, 0);
      if (v12 <= 0.0)
      {
        if (qword_10117F200 != -1)
        {
          swift_once();
        }

        v19 = type metadata accessor for Logger();
        sub_1000060E4(v19, static Logger.previewPlaybackController);
        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          *v22 = 0;
          _os_log_impl(&_mh_execute_header, v20, v21, "Reaching the end of the preview", v22, 2u);
        }

        sub_10012F360();
      }
    }
  }
}

double sub_10012FE14@<D0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a1);

  return result;
}

uint64_t (*sub_10012FE8C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_10012FF30;
}

void sub_10012FF30(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

double sub_10012FF98(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = *(a1 + 32);

  v5(v2, v3, v4);

  return result;
}

double sub_100130004()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v1 - 8);
  __chkstk_darwin();
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v4 = *(v15 - 8);
  __chkstk_darwin();
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS.QoSClass();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
  (*(v8 + 104))(v10, enum case for DispatchQoS.QoSClass.userInitiated(_:), v7);
  v11 = static OS_dispatch_queue.global(qos:)();
  (*(v8 + 8))(v10, v7);
  aBlock[4] = sub_100131C0C;
  v19 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002BC98;
  aBlock[3] = &unk_10109D910;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v17 = _swiftEmptyArrayStorage;
  sub_1000295F0(&qword_101183F60, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10010FC20(&qword_101182970, &qword_100EBD250);
  sub_100020674(&qword_101183F70, &qword_101182970, &qword_100EBD250, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);

  (*(v16 + 8))(v3, v1);
  (*(v4 + 8))(v6, v15);

  return result;
}

uint64_t sub_10013039C(char *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v2 - 8);
  __chkstk_darwin();
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v5 = *(v16 - 8);
  *&v6 = __chkstk_darwin().n128_u64[0];
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [*&a1[OBJC_IVAR____TtC5Music25PreviewPlaybackController_player] audioSession];
  aBlock[0] = 0;
  v10 = [v9 setActive:0 withOptions:1 error:aBlock];

  if (v10)
  {
    v11 = aBlock[0];
  }

  else
  {
    v12 = aBlock[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  sub_100009F78(0, &qword_101182960, OS_dispatch_queue_ptr);
  v13 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_100131C14;
  aBlock[5] = a1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002BC98;
  aBlock[3] = &unk_10109D938;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000295F0(&qword_101183F60, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10010FC20(&qword_101182970, &qword_100EBD250);
  sub_100020674(&qword_101183F70, &qword_101182970, &qword_100EBD250, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v17 + 8))(v4, v2);
  return (*(v5 + 8))(v8, v16);
}

double sub_100130728(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  BYTE1(v6) = 0;

  static Published.subscript.setter();
  if (qword_10117F200 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000060E4(v1, static Logger.previewPlaybackController);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter(&v6);

    *(v4 + 4) = v6;

    _os_log_impl(&_mh_execute_header, v2, v3, "isPreviewing: %{BOOL}d", v4, 8u);
  }

  else
  {
  }

  return result;
}

uint64_t sub_1001308C8()
{
  v1 = OBJC_IVAR____TtC5Music25PreviewPlaybackController__isPreviewing;
  v2 = sub_10010FC20(&unk_101189E60, &unk_100EC0CF0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100020438(*(v0 + OBJC_IVAR____TtC5Music25PreviewPlaybackController_playbackFinishedHandler), *(v0 + OBJC_IVAR____TtC5Music25PreviewPlaybackController_playbackFinishedHandler + 8));

  v3 = OBJC_IVAR____TtC5Music25PreviewPlaybackController__context;
  v4 = sub_10010FC20(&qword_1011819B0, &unk_100EBD240);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_100130A00@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for PreviewPlaybackController(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

double Actions.Preview.Context.init(song:playbackContext:metricsReportingContext:)@<D0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v26 = a2;
  v27 = a3;
  v28 = a4;
  v5 = type metadata accessor for Song();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v23 - v9;
  v11 = __chkstk_darwin();
  v24 = a1;
  v25 = &v23 - v12;
  v13 = *(v6 + 16);
  v13(v11);
  (v13)(v10, a1, v5);
  v14 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v15 = *(type metadata accessor for Actions.PlaybackContext(0) - 8);
  v16 = (v14 + v7 + *(v15 + 80)) & ~*(v15 + 80);
  v17 = swift_allocObject();
  v18 = *(v6 + 32);
  v18(v17 + v14, v10, v5);
  sub_1001325C8(v26, v17 + v16, type metadata accessor for Actions.PlaybackContext);
  v18(v8, v24, v5);
  v19 = swift_allocObject();
  v18(v19 + v14, v8, v5);
  Actions.Preview.Context.init<A>(item:canPreview:preview:metricsReportingContext:)(v25, sub_1001317A4, v17, sub_100131870, v19, v27, v5, &protocol witness table for Song, v29);
  v20 = v29[1];
  v21 = v28;
  *v28 = v29[0];
  v21[1] = v20;
  result = *&v30;
  v21[2] = v30;
  return result;
}

uint64_t sub_100130CE4(void (*a1)(char *, uint64_t, uint64_t), uint64_t *a2)
{
  v65 = a1;
  v3 = type metadata accessor for ContentRating();
  v63 = *(v3 - 8);
  __chkstk_darwin();
  v61 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10010FC20(&qword_1011819C0, &unk_100EBD2E0);
  __chkstk_darwin();
  v62 = &v56 - v6;
  sub_10010FC20(&unk_10118D2F0, &unk_100EBCE10);
  __chkstk_darwin();
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v56 - v9;
  __chkstk_darwin();
  v12 = &v56 - v11;
  v13 = type metadata accessor for MusicPlayer.PreviewCapabilityStatus();
  v64 = *(v13 - 8);
  __chkstk_darwin();
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v56 - v16;
  static ApplicationCapabilities.shared.getter(v66);
  v18 = v67;
  if ((sub_10048BBDC(5, v67) & 1) == 0)
  {
    sub_100014984(v66);
    return 0xD000000000000016;
  }

  v19 = sub_10048BBDC(0, v18);
  sub_100014984(v66);
  if ((v19 & 1) == 0)
  {
    return 0xD000000000000016;
  }

  v20 = Song.catalogID.getter();
  if (!v21)
  {
    return 0xD000000000000012;
  }

  v59 = v20;
  v60 = v21;
  v22 = *a2;
  v23 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
  swift_beginAccess();
  v24 = *(v22 + v23);
  if (!v24 || (v58 = v3, v25 = *(*v24 + 432), v26 = , v27 = v25(v26), , !v27))
  {

    return 0x6F70736572206F4ELL;
  }

  if (([v27 isSharedListeningSession] & 1) == 0)
  {

    return 0xD00000000000001CLL;
  }

  v57 = v27;
  v28 = [v27 tracklist];
  v29 = [v28 playingItem];

  if (!v29 || (v30 = [v29 metadataObject], v29, !v30))
  {
    v56 = 0;
    goto LABEL_22;
  }

  v31 = [v30 innermostModelObject];

  v32 = v31;
  v33 = MPModelObject.bestIdentifier(for:)(3, 2u);
  v35 = v34;
  v56 = v32;

  if (!v35)
  {
LABEL_22:

    goto LABEL_23;
  }

  if (v33 == v59 && v35 == v60)
  {

LABEL_32:

    return 0xD00000000000001BLL;
  }

  v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v37)
  {
    goto LABEL_32;
  }

LABEL_23:
  if (qword_10117F5F8 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Song();
  v40 = *Player.state<A>(for:)(v65, v39, &protocol witness table for Song);
  (*(v40 + 304))();

  v41 = v64;
  (*(v64 + 104))(v15, enum case for MusicPlayer.PreviewCapabilityStatus.previewable(_:), v13);
  v42 = static MusicPlayer.PreviewCapabilityStatus.== infix(_:_:)();
  v43 = *(v41 + 8);
  v43(v15, v13);
  v43(v17, v13);
  if ((v42 & 1) == 0)
  {

    return 0xD00000000000001DLL;
  }

  ExplicitRestrictionsController.shared.unsafeMutableAddressor();

  v44 = ExplicitRestrictionsController.explicitContentIsAllowed.getter();

  if (v44)
  {
    goto LABEL_36;
  }

  Song.contentRating.getter();
  v45 = v63;
  v46 = v58;
  (*(v63 + 104))(v10, enum case for ContentRating.explicit(_:), v58);
  (*(v45 + 56))(v10, 0, 1, v46);
  v47 = *(v5 + 48);
  v48 = v62;
  sub_1000089F8(v12, v62, &unk_10118D2F0, &unk_100EBCE10);
  sub_1000089F8(v10, v48 + v47, &unk_10118D2F0, &unk_100EBCE10);
  v49 = *(v45 + 48);
  if (v49(v48, 1, v46) != 1)
  {
    sub_1000089F8(v48, v8, &unk_10118D2F0, &unk_100EBCE10);
    if (v49(v48 + v47, 1, v46) != 1)
    {
      v51 = v63;
      v52 = v48 + v47;
      v53 = v61;
      (*(v63 + 32))(v61, v52, v46);
      sub_1000295F0(&qword_1011819D0, &type metadata accessor for ContentRating, &protocol conformance descriptor for ContentRating);
      v54 = dispatch thunk of static Equatable.== infix(_:_:)();
      v55 = *(v51 + 8);
      v55(v53, v46);
      sub_1000095E8(v10, &unk_10118D2F0, &unk_100EBCE10);
      sub_1000095E8(v12, &unk_10118D2F0, &unk_100EBCE10);
      v55(v8, v46);
      sub_1000095E8(v48, &unk_10118D2F0, &unk_100EBCE10);
      v50 = v57;
      if (v54)
      {
        goto LABEL_39;
      }

LABEL_37:

      return 0;
    }

    sub_1000095E8(v10, &unk_10118D2F0, &unk_100EBCE10);
    sub_1000095E8(v12, &unk_10118D2F0, &unk_100EBCE10);
    (*(v63 + 8))(v8, v46);
    goto LABEL_35;
  }

  sub_1000095E8(v10, &unk_10118D2F0, &unk_100EBCE10);
  sub_1000095E8(v12, &unk_10118D2F0, &unk_100EBCE10);
  if (v49(v48 + v47, 1, v46) != 1)
  {
LABEL_35:
    sub_1000095E8(v48, &qword_1011819C0, &unk_100EBD2E0);
LABEL_36:
    v50 = v57;
    goto LABEL_37;
  }

  sub_1000095E8(v48, &unk_10118D2F0, &unk_100EBCE10);
  v50 = v57;
LABEL_39:

  return 0xD00000000000002BLL;
}

uint64_t sub_100131698(uint64_t a1)
{
  if (qword_10117F1F8 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  return sub_10012C194(a1, 2);
}

uint64_t sub_100131740()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, static Logger.previewPlaybackController);
  sub_1000060E4(v0, static Logger.previewPlaybackController);
  return static Logger.music(_:)(0xD000000000000019, 0x8000000100EBD0A0);
}

uint64_t sub_1001317A4()
{
  v1 = *(type metadata accessor for Song() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for Actions.PlaybackContext(0) - 8);
  v5 = (v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80)));

  return sub_100130CE4((v0 + v2), v5);
}

uint64_t sub_100131870()
{
  v1 = *(type metadata accessor for Song() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_100131698(v2);
}

uint64_t static Logger.previewPlaybackController.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_10117F200 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_1000060E4(v2, static Logger.previewPlaybackController);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_100131994()
{
  result = qword_1011819A8;
  if (!qword_1011819A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011819A8);
  }

  return result;
}

BOOL sub_1001319E8(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (v2 != 2)
  {
    v8 = (v3 ^ v2) & 1;
    if (v3 != 2 && v8 == 0)
    {
      goto LABEL_5;
    }

    return 0;
  }

  if (v3 != 2)
  {
    return 0;
  }

LABEL_5:
  v6 = type metadata accessor for PreviewPlaybackController.Context(0);
  return (static Song.== infix(_:_:)() & 1) != 0 && *(a1 + *(v6 + 32)) == *(a2 + *(v6 + 32));
}

id sub_100131AB0()
{
  v0 = [objc_opt_self() auxiliarySession];
  v7 = 0;
  if ([v0 setParticipatesInNowPlayingAppPolicy:0 error:&v7])
  {
    v1 = v7;
  }

  else
  {
    v2 = v7;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v7 = 0;
  if ([v0 setCategory:AVAudioSessionCategoryPlayback error:&v7])
  {
    v3 = v7;
  }

  else
  {
    v4 = v7;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v5 = [objc_allocWithZone(AVPlayer) init];
  [v5 setAudioSession:v0];

  return v5;
}

uint64_t sub_100131C2C(uint64_t a1)
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
  v10[1] = sub_100008F30;

  return sub_10012E3A8(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100131D00(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002F3F4;

  return sub_10012DA44(a1, v4, v5, v7, v6);
}

unint64_t sub_100131DC0()
{
  result = qword_1011819C8;
  if (!qword_1011819C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011819C8);
  }

  return result;
}

void sub_100131E14(void *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for Song() - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2 + ((*(v5 + 80) + 40) & ~*(v5 + 80));
  v10 = v9[*(v5 + 64)];

  sub_10012CDB8(a1, a2, v6, v7, v8, v9, v10);
}

void sub_100131EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [objc_allocWithZone(MPStoreItemMetadataRequest) init];
  [v8 setReason:2];
  sub_10010FC20(&unk_101181640, &qword_100EBD090);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100EBC6B0;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v8 setItemIdentifiers:isa];

  sub_100009F78(0, &qword_101189A20, NSNumber_ptr);
  v11 = NSNumber.init(floatLiteral:)(10.0).super.super.isa;
  [v8 setTimeoutInterval:v11];

  [v8 setPersonalizationStyle:2];
  [v8 setShouldIgnoreCache:0];
  v12 = [objc_opt_self() sharedStoreItemMetadataRequestController];
  v15[4] = a3;
  v15[5] = a4;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_10000B378;
  v15[3] = &unk_10109DA28;
  v13 = _Block_copy(v15);

  v14 = [v12 getStoreItemMetadataForRequest:v8 responseHandler:v13];
  _Block_release(v13);
}

char *sub_1001320C8(void *a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  *&v6 = __chkstk_darwin().n128_u64[0];
  v8 = &v25 - v7;
  v9 = [a1 offers];
  if (v9)
  {
    v10 = v9;
    sub_100009F78(0, &qword_1011819E0, MPStoreItemOffer_ptr);
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v11 >> 62)
    {
      goto LABEL_22;
    }

    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      do
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v12 = sub_1007E9124(0, v11);
        }

        else
        {
          if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_26:
            v15 = _CocoaArrayWrapper.endIndex.getter();
            if (!v15)
            {
              break;
            }

            goto LABEL_10;
          }

          v12 = *(v11 + 32);
        }

        v13 = v12;

        v14 = [v13 assets];

        if (!v14)
        {
          return 0;
        }

        sub_100009F78(0, &qword_1011819E8, MPStoreItemOfferAsset_ptr);
        v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v25 = v5;
        v26 = v3;
        if (v11 >> 62)
        {
          goto LABEL_26;
        }

        v15 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v15)
        {
          break;
        }

LABEL_10:
        v16 = 0;
        v3 = v11 & 0xC000000000000001;
        v17 = (v26 + 56);
        while (1)
        {
          if (v3)
          {
            v18 = sub_1007E9110(v16, v11);
          }

          else
          {
            if (v16 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_21;
            }

            v18 = *(v11 + 8 * v16 + 32);
          }

          v5 = v18;
          v19 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            break;
          }

          v20 = [v18 previewURL];
          if (v20)
          {
            v21 = v20;

            v22 = v25;
            static URL._unconditionallyBridgeFromObjectiveC(_:)();

            v23 = v26 + 32;
            (*(v26 + 32))(v8, v22, v2);
            (*(v23 + 24))(v8, 0, 1, v2);
            sub_1000095E8(v8, &qword_101183A20, &unk_100EBCF80);
            return v5;
          }

          (*v17)(v8, 1, 1, v2);
          sub_1000095E8(v8, &qword_101183A20, &unk_100EBCF80);
          ++v16;
          if (v19 == v15)
          {
            goto LABEL_27;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        ;
      }

      while (_CocoaArrayWrapper.endIndex.getter());
    }

LABEL_27:
  }

  return 0;
}

uint64_t sub_100132450(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Song() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(type metadata accessor for URL() - 8);
  v9 = (v7 + *(v8 + 80) + 1) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = v1[5];
  v14 = *(v1 + v7);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_100008F30;

  return sub_10012D34C(a1, v10, v11, v12, v13, v1 + v6, v14, v1 + v9);
}

uint64_t sub_1001325C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100132630(uint64_t a1)
{
  v2 = type metadata accessor for PreviewPlaybackController.Context(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for MotionArtworkManager.MotionDataClient(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MotionArtworkManager.MotionDataClient(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1001327E0()
{
  result = qword_1011819F0;
  if (!qword_1011819F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011819F0);
  }

  return result;
}

double sub_100132864@<D0>(char *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  v88 = a7;
  v83 = a4;
  v84 = a5;
  v82 = a3;
  v85 = a8;
  sub_10010FC20(&unk_1011846B0, &unk_100ECB630);
  __chkstk_darwin();
  v70 = &v66 - v11;
  v71 = type metadata accessor for MusicVideo();
  v69 = *(v71 - 8);
  __chkstk_darwin();
  v66 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101183960, &unk_100EBCF90);
  __chkstk_darwin();
  v81 = &v66 - v13;
  v73 = type metadata accessor for Song();
  v72 = *(v73 - 8);
  __chkstk_darwin();
  v68 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_10118A530, &qword_100EC64E0);
  __chkstk_darwin();
  v16 = &v66 - v15;
  v17 = *(a6 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin();
  v78 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v76 = &v66 - v19;
  __chkstk_darwin();
  v87 = &v66 - v20;
  __chkstk_darwin();
  v67 = &v66 - v21;
  __chkstk_darwin();
  v74 = &v66 - v22;
  __chkstk_darwin();
  v24 = &v66 - v23;
  v25 = type metadata accessor for Track();
  v26 = *(v25 - 8);
  __chkstk_darwin();
  v28 = &v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = a2;
  v77 = MusicLibrary.state<A>(for:)();
  v79 = v17;
  v29 = *(v17 + 16);
  v86 = a1;
  v29(v24, a1, a6);
  v75 = a6;
  v30 = swift_dynamicCast();
  v31 = *(v26 + 56);
  if (v30)
  {
    v31(v16, 0, 1, v25);
    (*(v26 + 32))(v28, v16, v25);
    v81 = Track.albumTitle.getter();
    v74 = v32;
    (*(v26 + 8))(v28, v25);
    v33 = v86;
    v34 = v75;
    v35 = v29;
    v29(v87, v86, v75);
  }

  else
  {
    v31(v16, 1, 1, v25);
    sub_1000095E8(v16, &qword_10118A530, &qword_100EC64E0);
    v33 = v86;
    v34 = v75;
    v29(v74, v86, v75);
    v36 = v81;
    v37 = v73;
    v38 = swift_dynamicCast();
    v39 = v72;
    v40 = *(v72 + 56);
    v35 = v29;
    if (v38)
    {
      v40(v36, 0, 1, v37);
      v41 = v68;
      (*(v39 + 32))(v68, v36, v37);
      v81 = Song.albumTitle.getter();
      v74 = v42;
      (*(v39 + 8))(v41, v37);
    }

    else
    {
      v40(v36, 1, 1, v37);
      sub_1000095E8(v36, &unk_101183960, &unk_100EBCF90);
      v29(v67, v33, v34);
      v43 = v70;
      v44 = v71;
      v45 = swift_dynamicCast();
      v46 = v69;
      v47 = *(v69 + 56);
      if (v45)
      {
        v47(v43, 0, 1, v44);
        v48 = v66;
        (*(v46 + 32))(v66, v43, v44);
        v81 = MusicVideo.albumTitle.getter();
        v74 = v49;
        (*(v46 + 8))(v48, v44);
      }

      else
      {
        v47(v43, 1, 1, v44);
        sub_1000095E8(v43, &unk_1011846B0, &unk_100ECB630);
        v81 = 0;
        v74 = 0;
      }
    }

    v35(v87, v33, v34);
  }

  v50 = v76;
  v35(v76, v33, v34);
  v51 = v34;
  v52 = v79;
  v53 = *(v79 + 80);
  v54 = (v53 + 40) & ~v53;
  v55 = swift_allocObject();
  v56 = v88;
  *(v55 + 2) = v51;
  *(v55 + 3) = v56;
  *(v55 + 4) = v80;
  v57 = *(v52 + 32);
  v57(&v55[v54], v50, v51);
  v58 = v77;
  *&v55[(v18 + 7 + v54) & 0xFFFFFFFFFFFFFFF8] = v77;
  v59 = v78;
  v57(v78, v86, v51);
  v60 = (v53 + 41) & ~v53;
  v61 = swift_allocObject();
  *(v61 + 16) = v51;
  *(v61 + 24) = v56;
  *(v61 + 32) = v58;
  *(v61 + 40) = v82;
  v57((v61 + v60), v59, v51);
  *(v61 + ((v18 + 7 + v60) & 0xFFFFFFFFFFFFFFF8)) = v83;
  Actions.GoToAlbum.Context.init<A>(item:subtitle:canGoToAlbum:goToAlbum:metricsReportingContext:)(v87, v81, v74, sub_100138B04, v55, &unk_100EBD3F8, v61, v84, v89, v51, *(v56 + 8));
  v62 = v89[1];
  v63 = v85;
  *v85 = v89[0];
  v63[1] = v62;
  v64 = v89[3];
  v63[2] = v89[2];
  v63[3] = v64;

  return result;
}

unint64_t sub_100133140(uint64_t a1, uint64_t a2, void *a3)
{
  v53 = a2;
  v54 = a3;
  v55 = a1;
  v3 = *a3;
  sub_10010FC20(&unk_1011846B0, &unk_100ECB630);
  __chkstk_darwin();
  v47 = &v44 - v4;
  v5 = type metadata accessor for MusicVideo();
  v48 = *(v5 - 8);
  v49 = v5;
  __chkstk_darwin();
  v44 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_101183960, &unk_100EBCF90);
  __chkstk_darwin();
  v50 = &v44 - v7;
  v8 = type metadata accessor for Song();
  v51 = *(v8 - 8);
  v52 = v8;
  __chkstk_darwin();
  v45 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_10118A530, &qword_100EC64E0);
  __chkstk_darwin();
  v11 = &v44 - v10;
  v12 = *(v3 + class metadata base offset for MusicLibrary.ItemState);
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v46 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v44 - v15;
  __chkstk_darwin();
  v18 = &v44 - v17;
  v19 = type metadata accessor for Track();
  v20 = *(v19 - 8);
  __chkstk_darwin();
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MusicLibrary();
  static MusicLibrary.shared.getter();
  LOBYTE(v3) = static MusicLibrary.== infix(_:_:)();

  if ((v3 & 1) == 0)
  {
    return 0xD00000000000001DLL;
  }

  v23 = *(v13 + 16);
  v24 = v53;
  v55 = v13 + 16;
  v23(v18, v53, v12);
  v25 = swift_dynamicCast();
  v26 = *(v20 + 56);
  if (v25)
  {
    v26(v11, 0, 1, v19);
    (*(v20 + 32))(v22, v11, v19);
    sub_10010FC20(&unk_10118A5F0, &qword_100EC5E40);
    if (swift_dynamicCastClass())
    {

      v27 = Track.supportsContainerNavigation(itemState:)();

      (*(v20 + 8))(v22, v19);
      if (v27)
      {
        return 0;
      }
    }

    else
    {
      (*(v20 + 8))(v22, v19);
    }
  }

  else
  {
    v26(v11, 1, 1, v19);
    sub_1000095E8(v11, &qword_10118A530, &qword_100EC64E0);
  }

  v23(v16, v24, v12);
  v29 = v50;
  v30 = v52;
  v31 = swift_dynamicCast();
  v32 = v51;
  v33 = *(v51 + 56);
  if (v31)
  {
    v33(v29, 0, 1, v30);
    v34 = v45;
    (*(v32 + 32))(v45, v29, v30);
    sub_10010FC20(&qword_101193DD0, &unk_100EE3A50);
    v35 = swift_dynamicCastClass();
    if (v35)
    {
      v36 = v35;

      LOBYTE(v36) = Song.supportsContainerNavigation(itemState:)(v36);

      (*(v32 + 8))(v34, v30);
      if (v36)
      {
        return 0;
      }
    }

    else
    {
      (*(v32 + 8))(v34, v30);
    }
  }

  else
  {
    v33(v29, 1, 1, v30);
    sub_1000095E8(v29, &unk_101183960, &unk_100EBCF90);
  }

  v23(v46, v24, v12);
  v37 = v47;
  v38 = v49;
  v39 = swift_dynamicCast();
  v40 = v48;
  v41 = *(v48 + 56);
  if (v39)
  {
    v41(v37, 0, 1, v38);
    v42 = v44;
    (*(v40 + 32))(v44, v37, v38);
    sub_10010FC20(&unk_101184820, &unk_100ED1590);
    if (swift_dynamicCastClass())
    {

      v43 = MusicVideo.supportsContainerNavigation(itemState:)();

      (*(v40 + 8))(v42, v38);
      if (v43)
      {
        return 0;
      }
    }

    else
    {
      (*(v40 + 8))(v42, v38);
    }
  }

  else
  {
    v41(v37, 1, 1, v38);
    sub_1000095E8(v37, &unk_1011846B0, &unk_100ECB630);
  }

  return 0xD000000000000010;
}

uint64_t sub_100133914(uint64_t *a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 240) = a2;
  *(v4 + 16) = a1;
  v5 = *a1;
  sub_10010FC20(&unk_1011846B0, &unk_100ECB630);
  *(v4 + 40) = swift_task_alloc();
  v6 = type metadata accessor for MusicVideo();
  *(v4 + 48) = v6;
  *(v4 + 56) = *(v6 - 8);
  *(v4 + 64) = swift_task_alloc();
  sub_10010FC20(&unk_101183960, &unk_100EBCF90);
  *(v4 + 72) = swift_task_alloc();
  v7 = type metadata accessor for Song();
  *(v4 + 80) = v7;
  *(v4 + 88) = *(v7 - 8);
  *(v4 + 96) = swift_task_alloc();
  sub_10010FC20(&qword_10118A530, &qword_100EC64E0);
  *(v4 + 104) = swift_task_alloc();
  v8 = *(v5 + class metadata base offset for MusicLibrary.ItemState);
  *(v4 + 112) = v8;
  *(v4 + 120) = *(v8 - 8);
  *(v4 + 128) = swift_task_alloc();
  *(v4 + 136) = swift_task_alloc();
  *(v4 + 144) = swift_task_alloc();
  v9 = type metadata accessor for Track();
  *(v4 + 152) = v9;
  *(v4 + 160) = *(v9 - 8);
  *(v4 + 168) = swift_task_alloc();
  *(v4 + 176) = swift_task_alloc();
  sub_10010FC20(&qword_1011819F8, &qword_100EBD3E8);
  *(v4 + 184) = swift_task_alloc();
  v10 = type metadata accessor for MusicPropertySource();
  *(v4 + 192) = v10;
  *(v4 + 200) = *(v10 - 8);
  *(v4 + 208) = swift_task_alloc();

  return _swift_task_switch(sub_100133C80, 0, 0);
}

uint64_t sub_100133C80()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 184);
  MusicLibrary.ItemState.containerLoadingSource.getter(v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 184);
    v5 = &qword_1011819F8;
    v6 = &qword_100EBD3E8;
LABEL_3:
    sub_1000095E8(v4, v5, v6);

    v7 = *(v0 + 8);

    return v7();
  }

  v9 = *(v0 + 160);
  v10 = *(v0 + 144);
  v11 = *(v0 + 112);
  v12 = *(v0 + 120);
  v13 = *(v0 + 24);
  v14 = *(v0 + 240);
  (*(*(v0 + 200) + 32))(*(v0 + 208), *(v0 + 184), *(v0 + 192));
  v15 = *(v12 + 16);
  v15(v10, v13, v11);
  v16 = swift_dynamicCast();
  v17 = *(v9 + 56);
  v18 = *(v0 + 104);
  if (v16)
  {
    v19 = *(v0 + 176);
    v20 = *(v0 + 152);
    v21 = *(v0 + 160);
    v17(*(v0 + 104), 0, 1, v20);
    (*(v21 + 32))(v19, v18, v20);
    v22 = swift_task_alloc();
    *(v0 + 216) = v22;
    *v22 = v0;
    v22[1] = sub_10013426C;
    v23 = *(v0 + 208);
    v24 = *(v0 + 176);
    v25 = *(v0 + 32);
    v26 = v14 < 2;
  }

  else
  {
    v57 = v14;
    v27 = *(v0 + 136);
    v28 = *(v0 + 112);
    v29 = *(v0 + 88);
    v30 = *(v0 + 24);
    v17(v18, 1, 1, *(v0 + 152));
    sub_1000095E8(v18, &qword_10118A530, &qword_100EC64E0);
    v15(v27, v30, v28);
    v31 = swift_dynamicCast();
    v32 = *(v29 + 56);
    if (v31)
    {
      v33 = v57 < 2;
      v35 = *(v0 + 160);
      v34 = *(v0 + 168);
      v36 = *(v0 + 152);
      v38 = *(v0 + 88);
      v37 = *(v0 + 96);
      v40 = *(v0 + 72);
      v39 = *(v0 + 80);
      v32(v40, 0, 1, v39);
      (*(v38 + 32))(v37, v40, v39);
      (*(v38 + 16))(v34, v37, v39);
      (*(v35 + 104))(v34, enum case for Track.song(_:), v36);
      v41 = swift_task_alloc();
      *(v0 + 224) = v41;
      *v41 = v0;
      v42 = sub_10013449C;
    }

    else
    {
      v43 = *(v0 + 128);
      v44 = *(v0 + 112);
      v45 = *(v0 + 72);
      v46 = *(v0 + 24);
      v32(v45, 1, 1, *(v0 + 80));
      sub_1000095E8(v45, &unk_101183960, &unk_100EBCF90);
      v15(v43, v46, v44);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v54 = *(v0 + 48);
        v55 = *(v0 + 56);
        v56 = *(v0 + 40);
        (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
        (*(v55 + 56))(v56, 1, 1, v54);
        v5 = &unk_1011846B0;
        v6 = &unk_100ECB630;
        v4 = v56;
        goto LABEL_3;
      }

      v33 = v57 < 2;
      v48 = *(v0 + 160);
      v47 = *(v0 + 168);
      v49 = *(v0 + 152);
      v51 = *(v0 + 56);
      v50 = *(v0 + 64);
      v53 = *(v0 + 40);
      v52 = *(v0 + 48);
      (*(v51 + 56))(v53, 0, 1, v52);
      (*(v51 + 32))(v50, v53, v52);
      (*(v51 + 16))(v47, v50, v52);
      (*(v48 + 104))(v47, enum case for Track.musicVideo(_:), v49);
      v41 = swift_task_alloc();
      *(v0 + 232) = v41;
      *v41 = v0;
      v42 = sub_100134728;
    }

    v41[1] = v42;
    v23 = *(v0 + 208);
    v24 = *(v0 + 168);
    v25 = *(v0 + 32);
    v26 = v33;
  }

  return sub_100138C84(v25, v24, v23, v26);
}

uint64_t sub_10013426C()
{

  return _swift_task_switch(sub_100134368, 0, 0);
}

uint64_t sub_100134368()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  (*(v0[20] + 8))(v0[22], v0[19]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10013449C()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 152);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_1001345F4, 0, 0);
}

uint64_t sub_1001345F4()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100134728()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 152);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_100134880, 0, 0);
}

uint64_t sub_100134880()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  (*(v0[7] + 8))(v0[8], v0[6]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

unint64_t sub_1001349B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a3;
  v4 = type metadata accessor for Playlist();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Playlist.Folder.Item();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MusicLibrary();
  static MusicLibrary.shared.getter();
  v12 = static MusicLibrary.== infix(_:_:)();

  if ((v12 & 1) == 0)
  {
    v15 = 13;
    return v15 | 0xD000000000000010;
  }

  (*(v9 + 16))(v11, a2, v8);
  v13 = (*(v9 + 88))(v11, v8);
  if (v13 == enum case for Playlist.Folder.Item.folder(_:))
  {
    (*(v9 + 8))(v11, v8);
    return 0;
  }

  if (v13 != enum case for Playlist.Folder.Item.playlist(_:))
  {
    (*(v9 + 8))(v11, v8);
    return 0xD000000000000010;
  }

  (*(v9 + 96))(v11, v8);
  (*(v5 + 32))(v7, v11, v4);
  if (!v18)
  {
    (*(v5 + 8))(v7, v4);
    v15 = 10;
    return v15 | 0xD000000000000010;
  }

  if (Playlist.supportsContainerNavigation(itemState:)(v16))
  {
    (*(v5 + 8))(v7, v4);

    return 0;
  }

  (*(v5 + 8))(v7, v4);
  return 0xD000000000000024;
}

uint64_t sub_100134CF4(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 72) = a4;
  *(v5 + 80) = a5;
  *(v5 + 56) = a2;
  *(v5 + 64) = a3;
  *(v5 + 128) = a1;
  v6 = type metadata accessor for Playlist.Folder.Item();
  *(v5 + 88) = v6;
  v7 = *(v6 - 8);
  *(v5 + 96) = v7;
  *(v5 + 104) = *(v7 + 64);
  *(v5 + 112) = swift_task_alloc();
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  *(v5 + 120) = swift_task_alloc();

  return _swift_task_switch(sub_100134DFC, 0, 0);
}

uint64_t sub_100134DFC()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 96);
  v18 = *(v0 + 104);
  v4 = *(v0 + 88);
  v16 = *(v0 + 80);
  v17 = v4;
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);
  v7 = *(v0 + 56);
  v19 = *(v0 + 128);
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  (*(v3 + 16))(v1, v7, v4);
  sub_100008FE4(v5, v0 + 16);
  type metadata accessor for MainActor();

  v9 = static MainActor.shared.getter();
  v10 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  v11 = (v18 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  *(v13 + 24) = &protocol witness table for MainActor;
  *(v13 + 32) = v19;
  (*(v3 + 32))(v13 + v10, v1, v17);
  *(v13 + v11) = v6;
  sub_100059A8C((v0 + 16), v13 + v12);
  *(v13 + ((v12 + 47) & 0xFFFFFFFFFFFFFFF8)) = v16;
  sub_1001F4CB8(0, 0, v2, &unk_100EBD3E0, v13);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_100134FF8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 48) = a7;
  *(v8 + 56) = a8;
  *(v8 + 32) = a5;
  *(v8 + 40) = a6;
  *(v8 + 328) = a4;
  *(v8 + 64) = _s9PlaylistsV5ScopeVMa(0);
  *(v8 + 72) = swift_task_alloc();
  v9 = type metadata accessor for Playlist.Folder();
  *(v8 + 80) = v9;
  *(v8 + 88) = *(v9 - 8);
  *(v8 + 96) = swift_task_alloc();
  v10 = type metadata accessor for UITraitOverrides();
  *(v8 + 104) = v10;
  *(v8 + 112) = *(v10 - 8);
  *(v8 + 120) = swift_task_alloc();
  v11 = type metadata accessor for AppInterfaceContext.Activity(0);
  *(v8 + 128) = v11;
  v12 = *(v11 - 8);
  *(v8 + 136) = v12;
  *(v8 + 144) = *(v12 + 64);
  *(v8 + 152) = swift_task_alloc();
  *(v8 + 160) = swift_task_alloc();
  *(v8 + 168) = swift_task_alloc();
  *(v8 + 176) = swift_task_alloc();
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  *(v8 + 184) = swift_task_alloc();
  *(v8 + 192) = swift_task_alloc();
  type metadata accessor for ContainerDetail.Source(0);
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = swift_task_alloc();
  sub_10010FC20(&qword_1011819F8, &qword_100EBD3E8);
  *(v8 + 216) = swift_task_alloc();
  v13 = type metadata accessor for MusicPropertySource();
  *(v8 + 224) = v13;
  *(v8 + 232) = *(v13 - 8);
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();
  v14 = type metadata accessor for Playlist();
  *(v8 + 256) = v14;
  *(v8 + 264) = *(v14 - 8);
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_task_alloc();
  *(v8 + 288) = swift_task_alloc();
  v15 = type metadata accessor for Playlist.Folder.Item();
  *(v8 + 296) = v15;
  *(v8 + 304) = *(v15 - 8);
  *(v8 + 312) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v8 + 320) = static MainActor.shared.getter();
  v17 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001353F4, v17, v16);
}

uint64_t sub_1001353F4()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 296);
  v3 = *(v0 + 304);
  v4 = *(v0 + 32);
  v5 = *(v0 + 328);

  (*(v3 + 16))(v1, v4, v2);
  v6 = (*(v3 + 88))(v1, v2);
  if (v6 == enum case for Playlist.Folder.Item.folder(_:))
  {
    v7 = *(v0 + 312);
    v9 = *(v0 + 88);
    v8 = *(v0 + 96);
    v11 = *(v0 + 72);
    v10 = *(v0 + 80);
    v12 = *(v0 + 64);
    (*(*(v0 + 304) + 96))(v7, *(v0 + 296));
    (*(v9 + 32))(v8, v7, v10);
    v13 = *(v12 + 20);
    (*(v9 + 16))(v11 + v13, v8, v10);
    (*(v9 + 56))(v11 + v13, 0, 1, v10);
    if (qword_10117F5D8 != -1)
    {
      swift_once();
    }

    v14 = *(v0 + 152);
    v15 = *(v0 + 64);
    v16 = *(v0 + 72);
    v17 = *(v0 + 328);
    *v16 = qword_101218AB8;
    *(v16 + *(v15 + 24)) = 0;
    v18 = objc_opt_self();

    v19 = [v18 currentTraitCollection];
    v20 = [v19 horizontalSizeClass];

    v21 = objc_allocWithZone(type metadata accessor for LibraryPlaylistsViewController(0));
    v22 = sub_10037E11C(v16, 0, v20 != 2);
    v23 = *(sub_10010FC20(&unk_10118CE00, L"F\n.") + 48);
    *v14 = v22;
    if (v17 > 1)
    {
      (*(*(v0 + 112) + 56))(v14 + v23, 1, 1, *(v0 + 104));
      v40 = v22;
    }

    else
    {
      v25 = *(v0 + 112);
      v24 = *(v0 + 120);
      v26 = *(v0 + 104);
      v27 = v22;
      UIViewController.traitOverrides.getter();
      type metadata accessor for MusicLibrary();
      *(v0 + 16) = static MusicLibrary.shared.getter();
      sub_100137E8C();
      dispatch thunk of UIMutableTraits.subscript.setter();
      (*(v25 + 16))(v14 + v23, v24, v26);
      UIViewController.traitOverrides.setter();

      (*(v25 + 56))(v14 + v23, 0, 1, v26);
    }

    v42 = *(v0 + 160);
    v41 = *(v0 + 168);
    v43 = *(v0 + 152);
    v44 = *(v0 + 136);
    v45 = *(v0 + 88);
    v98 = *(v0 + 96);
    v95 = *(v0 + 80);
    v46 = (v43 + *(sub_10010FC20(&unk_1011841E0, &unk_100ECDA60) + 48));
    type metadata accessor for AppInterfaceContext.Activity.Destination(0);
    swift_storeEnumTagMultiPayload();
    v47 = swift_allocObject();
    *(v47 + 16) = v22;
    *v46 = sub_100137E80;
    v46[1] = v47;
    swift_storeEnumTagMultiPayload();
    sub_100137EE0(v43, v41, type metadata accessor for AppInterfaceContext.Activity);
    sub_100137EE0(v41, v42, type metadata accessor for AppInterfaceContext.Activity);
    v48 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    v49 = swift_allocObject();
    *(v49 + 16) = 0;
    *(v49 + 24) = 0;
    sub_100115BB4(v42, v49 + v48);
    sub_100706900(v41, sub_100137E88, v49);

    sub_1001385B8(v41, type metadata accessor for AppInterfaceContext.Activity);
    sub_1001385B8(v43, type metadata accessor for AppInterfaceContext.Activity);
    (*(v45 + 8))(v98, v95);
  }

  else
  {
    v28 = *(v0 + 304);
    v29 = *(v0 + 312);
    v30 = *(v0 + 296);
    if (v6 == enum case for Playlist.Folder.Item.playlist(_:))
    {
      v31 = *(v0 + 288);
      v32 = *(v0 + 256);
      v33 = *(v0 + 264);
      v34 = *(v0 + 40);
      (*(v28 + 96))(*(v0 + 312), v30);
      (*(v33 + 32))(v31, v29, v32);
      if (v34)
      {
        v35 = *(v0 + 224);
        v36 = *(v0 + 232);
        v37 = *(v0 + 216);
        MusicLibrary.ItemState.containerLoadingSource.getter(v37);
        v38 = (*(v36 + 48))(v37, 1, v35);
        v39 = *(v0 + 288);
        if (v38 != 1)
        {
          v96 = v5 == 0;
          v53 = *(v0 + 280);
          v86 = *(v0 + 272);
          v54 = *(v0 + 256);
          v55 = *(v0 + 264);
          v56 = *(v0 + 248);
          v57 = *(v0 + 224);
          v58 = *(v0 + 232);
          v82 = *(v0 + 208);
          v83 = *(v0 + 240);
          v85 = *(v0 + 192);
          v94 = *(v0 + 184);
          v88 = *(v0 + 200);
          v90 = *(v0 + 176);
          v59 = *(v0 + 48);
          v92 = *(v0 + 328);
          (*(v58 + 32))(v56, *(v0 + 216), v57);
          v60 = *(v55 + 16);
          v60(v53, v39, v54);
          (*(v58 + 16))(v83, v56, v57);
          sub_10069BA44(v83, v82);
          sub_10000954C(v59, v59[3]);
          v84 = dispatch thunk of MusicItem.id.getter();
          v62 = v61;
          v63 = type metadata accessor for URL();
          (*(*(v63 - 8) + 56))(v85, 1, 1, v63);
          v60(v86, v53, v54);
          sub_100137EE0(v82, v88, type metadata accessor for ContainerDetail.Source);
          sub_1000089F8(v85, v94, &qword_101183A20, &unk_100EBCF80);
          v64 = sub_100866288(v86, v88, v84, v62, v94, v96);
          v65 = objc_allocWithZone(type metadata accessor for ContainerDetail.ViewController(0));
          v66 = sub_100137F80(v64, v65, &off_1010C1998, &OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_playActivityFeatureIdentifier, &OBJC_IVAR____TtC5Music24PlaylistDetailDataSource_artwork);
          sub_1000095E8(v85, &qword_101183A20, &unk_100EBCF80);
          sub_1001385B8(v82, type metadata accessor for ContainerDetail.Source);
          v97 = *(v55 + 8);
          v97(v53, v54);
          v67 = *(sub_10010FC20(&unk_10118CE00, L"F\n.") + 48);
          *v90 = v66;
          if (v92 > 1)
          {
            (*(*(v0 + 112) + 56))(v90 + v67, 1, 1, *(v0 + 104));
            v71 = v66;
          }

          else
          {
            v69 = *(v0 + 112);
            v68 = *(v0 + 120);
            v70 = *(v0 + 104);
            v66;
            UIViewController.traitOverrides.getter();
            type metadata accessor for MusicLibrary();
            *(v0 + 24) = static MusicLibrary.shared.getter();
            sub_100137E8C();
            dispatch thunk of UIMutableTraits.subscript.setter();
            (*(v69 + 16))(v90 + v67, v68, v70);
            UIViewController.traitOverrides.setter();
            (*(v69 + 56))(v90 + v67, 0, 1, v70);
          }

          v91 = *(v0 + 256);
          v93 = *(v0 + 288);
          v72 = *(v0 + 232);
          v87 = *(v0 + 224);
          v89 = *(v0 + 248);
          v74 = *(v0 + 168);
          v73 = *(v0 + 176);
          v75 = *(v0 + 160);
          v76 = *(v0 + 136);
          v77 = (v73 + *(sub_10010FC20(&unk_1011841E0, &unk_100ECDA60) + 48));
          type metadata accessor for AppInterfaceContext.Activity.Destination(0);
          swift_storeEnumTagMultiPayload();
          *v77 = 0;
          v77[1] = 0;
          swift_storeEnumTagMultiPayload();
          sub_100137EE0(v73, v74, type metadata accessor for AppInterfaceContext.Activity);
          sub_100137EE0(v74, v75, type metadata accessor for AppInterfaceContext.Activity);
          v78 = (*(v76 + 80) + 32) & ~*(v76 + 80);
          v79 = swift_allocObject();
          *(v79 + 16) = 0;
          *(v79 + 24) = 0;
          sub_100115BB4(v75, v79 + v78);
          sub_100706900(v74, sub_100139B24, v79);

          sub_1001385B8(v74, type metadata accessor for AppInterfaceContext.Activity);
          sub_1001385B8(v73, type metadata accessor for AppInterfaceContext.Activity);
          (*(v72 + 8))(v89, v87);
          v97(v93, v91);
          goto LABEL_19;
        }

        (*(*(v0 + 264) + 8))(*(v0 + 288), *(v0 + 256));
      }

      else
      {
        v50 = *(v0 + 224);
        v51 = *(v0 + 232);
        v52 = *(v0 + 216);
        (*(*(v0 + 264) + 8))(*(v0 + 288), *(v0 + 256));
        (*(v51 + 56))(v52, 1, 1, v50);
      }

      sub_1000095E8(*(v0 + 216), &qword_1011819F8, &qword_100EBD3E8);
    }

    else
    {
      (*(v28 + 8))(*(v0 + 312), v30);
    }
  }

LABEL_19:

  v80 = *(v0 + 8);

  return v80();
}

uint64_t sub_100135EDC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Playlist.Folder.Item() - 8);
  v6 = (*(v5 + 80) + 33) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v7);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + ((v8 + 47) & 0xFFFFFFFFFFFFFFF8));
  v13 = *(v1 + 32);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_10002F3F4;

  return sub_100134FF8(a1, v10, v11, v13, v1 + v6, v9, v1 + v8, v12);
}

unint64_t sub_100136034(uint64_t a1)
{
  sub_10010FC20(&unk_101184930, &unk_100EC05C0);
  __chkstk_darwin();
  v3 = &v11[-v2];
  v4 = type metadata accessor for Artist();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000089F8(a1, v3, &unk_101184930, &unk_100EC05C0);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1000095E8(v3, &unk_101184930, &unk_100EC05C0);
    return 0xD000000000000021;
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    ApplicationCapabilities.Controller.capabilities.getter(v11);
    sub_100014984(v11);
    if (v11[1])
    {
      Artist.catalogID.getter();
      if (v9)
      {

        v8 = 0;
      }

      else
      {
        v8 = 0xD000000000000016;
      }
    }

    else
    {
      v8 = 0xD000000000000016;
    }

    (*(v5 + 8))(v7, v4);
  }

  return v8;
}

uint64_t sub_10013625C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = type metadata accessor for AppInterfaceContext.Activity(0);
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  sub_10010FC20(&unk_101184930, &unk_100EC05C0);
  v2[7] = swift_task_alloc();
  v3 = type metadata accessor for Artist();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_100136390, 0, 0);
}

uint64_t sub_100136390()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  sub_1000089F8(v0[2], v3, &unk_101184930, &unk_100EC05C0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000095E8(v0[7], &unk_101184930, &unk_100EC05C0);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v7 = v0[9];
    v6 = v0[10];
    v8 = v0[8];
    v9 = v0[5];
    (*(v7 + 32))(v6, v0[7], v8);
    v10 = (v9 + *(sub_10010FC20(&unk_1011841E0, &unk_100ECDA60) + 48));
    v11 = *(sub_10010FC20(&qword_101181A10, &qword_100EBD420) + 48);
    (*(v7 + 16))(v9, v6, v8);
    *(v9 + v11) = 0;
    type metadata accessor for AppInterfaceContext.Activity.Destination(0);
    swift_storeEnumTagMultiPayload();
    *v10 = 0;
    v10[1] = 0;
    swift_storeEnumTagMultiPayload();
    v12 = swift_task_alloc();
    v0[11] = v12;
    *v12 = v0;
    v12[1] = sub_1001365B0;
    v14 = v0[5];
    v13 = v0[6];

    return sub_100706024(v13, v14);
  }
}

uint64_t sub_1001365B0()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  *(*v1 + 96) = v0;

  sub_1001385B8(v3, type metadata accessor for AppInterfaceContext.Activity);
  if (v0)
  {
    v4 = sub_1001367BC;
  }

  else
  {
    sub_1001385B8(*(v2 + 48), type metadata accessor for AppInterfaceContext.Activity);
    v4 = sub_100136718;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100136718()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1001367BC()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100136860(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for Logger();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  sub_10010FC20(&unk_10119F3A0, &qword_100EC7CD0);
  v2[8] = swift_task_alloc();
  v2[9] = type metadata accessor for AppInterfaceContext.Activity(0);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v4 = sub_10010FC20(&unk_10119DA70, &qword_100EC0AC0);
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_1001369FC, 0, 0);
}

uint64_t sub_1001369FC(uint64_t a1)
{
  Artist.catalogID.getter();
  if (v2)
  {

    v1[15] = type metadata accessor for MainActor();
    v1[16] = static MainActor.shared.getter();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100136B14, v4, v3);
  }

  else
  {

    v5 = v1[1];

    return v5();
  }
}

uint64_t sub_100136B14()
{
  v1 = *(v0 + 24);

  *(v0 + 136) = *(v1 + 16);

  return _swift_task_switch(sub_100136B90, 0, 0);
}

uint64_t sub_100136B90(uint64_t a1)
{
  if (v1[17])
  {
    v1[18] = *(v1[3] + 24);
    v1[19] = static MainActor.shared.getter();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100136C9C, v3, v2);
  }

  else
  {

    v4 = v1[1];

    return v4();
  }
}

uint64_t sub_100136C9C()
{
  v1 = *(v0 + 144);

  if (*(v1 + 16))
  {
    v2 = [*(v1 + 16) selectedTab];
    if (!v2 || (v3 = v2, v4 = sub_10003F0FC(), v3, v4 == 7))
    {
      v4 = 1;
    }

    *(v0 + 160) = sub_1006BD694(v4);
    v5 = sub_100136E0C;
  }

  else
  {
    v5 = sub_100136D74;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100136D74()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100136E0C()
{
  if (v0[20])
  {
    v1 = v0[14];
    v2 = v0[12];
    v3 = v0[13];
    v4 = v0[4];
    v5 = type metadata accessor for Artist();
    (*(*(v5 - 8) + 16))(v1, v4, v5);
    (*(v3 + 104))(v1, enum case for MusicPageProvider.Destination.artistDetail<A, B>(_:), v2);
    v0[21] = static MainActor.shared.getter();
    v7 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100136F88, v7, v6);
  }

  else
  {

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_100136F88()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];

  v0[22] = MusicPageProvider.page(for:stackAuthority:motionCacheBucketID:)();
  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_10013703C, 0, 0);
}

uint64_t sub_10013703C()
{
  v1 = v0[22];
  v2 = v0[10];
  v3 = v0[8];
  v4 = (v2 + *(sub_10010FC20(&unk_1011841E0, &unk_100ECDA60) + 48));
  v5 = *(sub_10010FC20(&unk_10118CE00, L"F\n.") + 48);
  *v2 = v1;
  v6 = type metadata accessor for UITraitOverrides();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  sub_100139AB4(v3, v2 + v5);
  type metadata accessor for AppInterfaceContext.Activity.Destination(0);
  swift_storeEnumTagMultiPayload();
  *v4 = 0;
  v4[1] = 0;
  swift_storeEnumTagMultiPayload();
  v7 = v1;
  v8 = swift_task_alloc();
  v0[23] = v8;
  *v8 = v0;
  v8[1] = sub_1001371A8;
  v10 = v0[10];
  v9 = v0[11];

  return sub_100706024(v9, v10);
}

uint64_t sub_1001371A8()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  *(*v1 + 192) = v0;

  sub_1001385B8(v3, type metadata accessor for AppInterfaceContext.Activity);
  if (v0)
  {
    v4 = sub_1001373C0;
  }

  else
  {
    sub_1001385B8(*(v2 + 88), type metadata accessor for AppInterfaceContext.Activity);
    v4 = sub_100137310;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100137310()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1001373C0(uint64_t a1)
{
  v24 = v1;
  v3 = *(v1 + 48);
  v2 = *(v1 + 56);
  v4 = *(v1 + 40);
  v5 = Logger.actions.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v1 + 192);
    v20 = *(v1 + 176);
    v9 = *(v1 + 48);
    v21 = *(v1 + 40);
    v22 = *(v1 + 56);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 136315138;
    *(v1 + 16) = v8;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v12 = String.init<A>(describing:)();
    v14 = sub_1000105AC(v12, v13, &v23);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to navigate to artist detail view controller with error=%s", v10, 0xCu);
    sub_10000959C(v11);

    (*(v9 + 8))(v22, v21);
  }

  else
  {
    v16 = *(v1 + 48);
    v15 = *(v1 + 56);
    v17 = *(v1 + 40);

    (*(v16 + 8))(v15, v17);
  }

  v18 = *(v1 + 8);

  return v18();
}

uint64_t sub_100137638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 216) = a8;
  *(v8 + 40) = a6;
  *(v8 + 48) = a7;
  *(v8 + 24) = a4;
  *(v8 + 32) = a5;
  v9 = type metadata accessor for UITraitOverrides();
  *(v8 + 56) = v9;
  *(v8 + 64) = *(v9 - 8);
  *(v8 + 72) = swift_task_alloc();
  *(v8 + 80) = type metadata accessor for AppInterfaceContext.Activity(0);
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = swift_task_alloc();
  sub_10010FC20(&qword_10118A530, &qword_100EC64E0);
  *(v8 + 104) = swift_task_alloc();
  v10 = type metadata accessor for MusicPropertySource();
  *(v8 + 112) = v10;
  *(v8 + 120) = *(v10 - 8);
  *(v8 + 128) = swift_task_alloc();
  type metadata accessor for ContainerDetail.Source(0);
  *(v8 + 136) = swift_task_alloc();
  v11 = type metadata accessor for Album();
  *(v8 + 144) = v11;
  *(v8 + 152) = *(v11 - 8);
  *(v8 + 160) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v8 + 168) = static MainActor.shared.getter();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v8 + 176) = v13;
  *(v8 + 184) = v12;

  return _swift_task_switch(sub_10013788C, v13, v12);
}

uint64_t sub_10013788C()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 136);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v5 = *(v0 + 104);
  v6 = *(v0 + 112);
  v7 = *(v0 + 88);
  v24 = *(v0 + 216);
  v9 = *(v0 + 32);
  v8 = *(v0 + 40);
  (*(*(v0 + 152) + 16))(v1, *(v0 + 24), *(v0 + 144));
  (*(v4 + 16))(v3, v9, v6);
  sub_10069BA44(v3, v2);
  v10 = type metadata accessor for Track();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v5, v8, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  v12 = sub_1006A8C44(v1, v2, v5);
  *(v0 + 192) = v12;
  v13 = *(sub_10010FC20(&unk_10118CE00, L"F\n.") + 48);
  *v7 = v12;
  if (v24 == 1)
  {
    v15 = *(v0 + 64);
    v14 = *(v0 + 72);
    v16 = *(v0 + 56);
    v12;
    UIViewController.traitOverrides.getter();
    type metadata accessor for MusicLibrary();
    *(v0 + 16) = static MusicLibrary.shared.getter();
    sub_100137E8C();
    dispatch thunk of UIMutableTraits.subscript.setter();
    (*(v15 + 16))(v7 + v13, v14, v16);
    UIViewController.traitOverrides.setter();
    (*(v15 + 56))(v7 + v13, 0, 1, v16);
  }

  else
  {
    (*(*(v0 + 64) + 56))(v7 + v13, 1, 1, *(v0 + 56));
    v17 = v12;
  }

  v18 = *(v0 + 88);
  v19 = (v18 + *(sub_10010FC20(&unk_1011841E0, &unk_100ECDA60) + 48));
  type metadata accessor for AppInterfaceContext.Activity.Destination(0);
  swift_storeEnumTagMultiPayload();
  *v19 = 0;
  v19[1] = 0;
  swift_storeEnumTagMultiPayload();
  v20 = swift_task_alloc();
  *(v0 + 200) = v20;
  *v20 = v0;
  v20[1] = sub_100137B78;
  v22 = *(v0 + 88);
  v21 = *(v0 + 96);

  return sub_100706024(v21, v22);
}

uint64_t sub_100137B78()
{
  v2 = *v1;
  v3 = (*v1)[11];
  (*v1)[26] = v0;

  sub_1001385B8(v3, type metadata accessor for AppInterfaceContext.Activity);
  if (v0)
  {
    v4 = v2[22];
    v5 = v2[23];
    v6 = sub_100137DB0;
  }

  else
  {
    sub_1001385B8(v2[12], type metadata accessor for AppInterfaceContext.Activity);
    v4 = v2[22];
    v5 = v2[23];
    v6 = sub_100137CE0;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_100137CE0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100137DB0()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_100137E8C()
{
  result = qword_10118CDA0;
  if (!qword_10118CDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10118CDA0);
  }

  return result;
}

uint64_t sub_100137EE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

char *sub_100137F80(void *a1, _BYTE *a2, uint64_t a3, void *a4, uint64_t *a5)
{
  v46 = a5;
  sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  __chkstk_darwin();
  v10 = &v47[-v9 - 8];
  v11 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_durationCalculator;
  type metadata accessor for DurationCalculator();
  v12 = swift_allocObject();
  *&a2[v11] = v12;
  a2[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_needToRegisterGroupActivitySuggestion] = 0;
  *&a2[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_loadingTimer] = 0;
  *(v12 + 16) = 0;
  *&a2[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___trailingBarButtonItemGroup] = 0;
  *&a2[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___headerCoordinator] = 0;
  v13 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_artwork;
  v14 = type metadata accessor for Artwork();
  (*(*(v14 - 8) + 56))(&a2[v13], 1, 1, v14);
  *&a2[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___backdropContainer] = 0;
  *&a2[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_backdropView] = 0;
  v15 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_backdropTask;
  v16 = sub_10010FC20(&qword_101181A00, &qword_100EC94D0);
  (*(*(v16 - 8) + 56))(&a2[v15], 1, 1, v16);
  *&a2[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_floatingArtworkDataSource] = 0;
  a2[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_hideFloatingArtwork] = 0;
  v17 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_floatingArtworkContainer;
  *&a2[v17] = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  a2[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_isShowingRelatedContent] = 0;
  a2[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_includeRelatedContentOnNextReload] = 0;
  *&a2[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___relatedContentSpacingData] = 0;
  *&a2[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_relatedContentLeadingPadding] = 0;
  v18 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_relatedContentState;
  v19 = enum case for RelatedContentProvider.State.loading(_:);
  v20 = type metadata accessor for RelatedContentProvider.State();
  (*(*(v20 - 8) + 104))(&a2[v18], v19, v20);
  v21 = &a2[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_relatedContentStateSubscription];
  *(v21 + 4) = 0;
  *v21 = 0u;
  *(v21 + 1) = 0u;
  *&a2[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___impressionsTracker] = 0;
  v22 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___pageProperties;
  v23 = sub_10010FC20(&unk_1011839D0, &qword_100EBF430);
  (*(*(v23 - 8) + 56))(&a2[v22], 1, 1, v23);
  *&a2[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___popoverProvider] = 1;
  *&a2[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_storeItemMetadataDidChangeObserver] = 0;
  a2[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_needsMetricsPageEvent] = 0;
  a2[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_hasScrolledToProminentItem] = 0;
  *&a2[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_sheetPresenterDataSource] = 0;
  *&a2[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___collectionViewLayout] = 0;
  *&a2[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___collectionView] = 0;
  v24 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_artworkCachingReference;
  type metadata accessor for ArtworkPrefetchingController.CacheReference();
  v25 = swift_allocObject();
  *(v25 + 16) = 0xD00000000000001FLL;
  *(v25 + 24) = 0x8000000100E3D5F0;
  *(v25 + 32) = 0;
  *(v25 + 40) = 1;
  *&a2[v24] = v25;
  *&a2[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController____lazy_storage___contextualActionsBarButtonItem] = 0;
  *&a2[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dragDropController] = 0;
  v26 = &a2[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource];
  *v26 = a1;
  v26[1] = a3;
  v27 = type metadata accessor for ContainerDetail.ViewController(0);
  v49.receiver = a2;
  v49.super_class = v27;
  v28 = a1;
  v29 = objc_msgSendSuper2(&v49, "initWithNibName:bundle:", 0, 0);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v47[8] = 0;
  v30 = &v29[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_dataSource];
  swift_beginAccess();
  v32 = *v30;
  v31 = *(v30 + 1);
  ObjectType = swift_getObjectType();
  v48 = v32;
  v34 = *(v31 + 24);
  v35 = v29;
  v34(v47, ObjectType, v31);
  *v30 = v48;
  *(v30 + 1) = v31;
  swift_endAccess();
  UIViewController.playActivityFeatureIdentifier.setter(v28[*a4]);
  v36 = *v46;
  swift_beginAccess();
  sub_1000089F8(&v28[v36], v10, &unk_101188920, &qword_100EBCC50);

  v37 = OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_artwork;
  swift_beginAccess();
  sub_100138A94(v10, &v35[v37]);
  swift_endAccess();
  v38 = [v35 navigationItem];
  [v38 setLargeTitleDisplayMode:2];

  v39 = [v35 navigationItem];
  if (qword_10117FD78 != -1)
  {
    swift_once();
  }

  v40 = qword_1011A3E68;
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  objc_setAssociatedObject(v39, v40, isa, 3);

  v42 = [v35 traitCollection];
  v43 = [v42 userInterfaceIdiom];

  if (v43 != 6)
  {
    v44 = [v35 navigationItem];
    [v44 setBackButtonDisplayMode:2];
  }

  return v35;
}

uint64_t sub_1001385B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100138618()
{
  v1 = *(type metadata accessor for AppInterfaceContext.Activity(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  if (*(v0 + 16))
  {
  }

  v3 = (v0 + v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {

LABEL_24:

      goto LABEL_30;
    }

    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload != 4)
      {
        goto LABEL_30;
      }

      type metadata accessor for PlaylistPicker.Mode(0);
      v5 = swift_getEnumCaseMultiPayload() == 1 ? type metadata accessor for Playlist.Folder.Item() : sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
      (*(*(v5 - 8) + 8))(v0 + v2, v5);
      if (*(v3 + *(type metadata accessor for PlaylistPicker.Context(0) + 20) + 16) == 1)
      {
        goto LABEL_30;
      }

      goto LABEL_24;
    }

    v9 = type metadata accessor for Playlist.Folder();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v0 + v2, 1, v9))
    {
      (*(v10 + 8))(v0 + v2, v9);
    }

    v11 = type metadata accessor for PlaylistCreation.Context(0);

    v12 = *(v11 + 24);
    v13 = sub_10010FC20(&unk_1011841D0, &qword_100EC5DB0);
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v3 + v12, 1, v13))
    {
      (*(v14 + 8))(v3 + v12, v13);
    }

    v15 = *(v11 + 28);
    goto LABEL_28;
  }

  if (!EnumCaseMultiPayload)
  {
    type metadata accessor for AppInterfaceContext.Activity.Destination(0);
    v16 = swift_getEnumCaseMultiPayload();
    if (v16 == 4)
    {

      v18 = *(sub_10010FC20(&unk_10118CE00, L"F\n.") + 48);
      v19 = type metadata accessor for UITraitOverrides();
      v20 = *(v19 - 8);
      if (!(*(v20 + 48))(v3 + v18, 1, v19))
      {
        (*(v20 + 8))(v3 + v18, v19);
      }
    }

    else if (v16 == 3)
    {
      v17 = type metadata accessor for Artist();
      (*(*(v17 - 8) + 8))(v0 + v2, v17);
    }

    v15 = *(sub_10010FC20(&unk_1011841E0, &unk_100ECDA60) + 48);
LABEL_28:
    if (*(v3 + v15))
    {
    }

    goto LABEL_30;
  }

  if (EnumCaseMultiPayload == 1)
  {

    v6 = *(sub_10010FC20(&unk_10118A290, &unk_100EC73D0) + 48);
    v7 = type metadata accessor for SearchScope();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v3 + v6, 1, v7))
    {
      (*(v8 + 8))(v3 + v6, v7);
    }
  }

LABEL_30:

  return swift_deallocObject();
}

uint64_t sub_100138A94(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_101188920, &qword_100EBCC50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100138B70()
{
  v2 = (*(*(*(v0 + 16) - 8) + 80) + 41) & ~*(*(*(v0 + 16) - 8) + 80);
  v3 = *(v0 + 32);
  v4 = *(v0 + ((*(*(*(v0 + 16) - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100008F30;

  return sub_100133914(v3, v5, v0 + v2, v4);
}

uint64_t sub_100138C84(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 224) = a4;
  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  *(v4 + 24) = a1;
  v5 = type metadata accessor for Logger();
  *(v4 + 48) = v5;
  *(v4 + 56) = *(v5 - 8);
  *(v4 + 64) = swift_task_alloc();
  v6 = type metadata accessor for Track();
  *(v4 + 72) = v6;
  v7 = *(v6 - 8);
  *(v4 + 80) = v7;
  *(v4 + 88) = *(v7 + 64);
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  v8 = type metadata accessor for MusicPropertySource();
  *(v4 + 112) = v8;
  v9 = *(v8 - 8);
  *(v4 + 120) = v9;
  *(v4 + 128) = *(v9 + 64);
  *(v4 + 136) = swift_task_alloc();
  *(v4 + 144) = swift_task_alloc();
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  *(v4 + 152) = swift_task_alloc();
  sub_10010FC20(&qword_1011819F8, &qword_100EBD3E8);
  *(v4 + 160) = swift_task_alloc();
  v10 = type metadata accessor for Album();
  *(v4 + 168) = v10;
  v11 = *(v10 - 8);
  *(v4 + 176) = v11;
  *(v4 + 184) = *(v11 + 64);
  *(v4 + 192) = swift_task_alloc();
  *(v4 + 200) = swift_task_alloc();

  return _swift_task_switch(sub_100138F0C, 0, 0);
}

uint64_t sub_100138F0C()
{
  v1 = v0[20];
  v2 = v0[14];
  v3 = v0[15];
  (*(v3 + 104))(v1, enum case for MusicPropertySource.catalog(_:), v2);
  (*(v3 + 56))(v1, 0, 1, v2);
  v4 = swift_task_alloc();
  v0[26] = v4;
  *v4 = v0;
  v4[1] = sub_100139004;
  v5 = v0[25];
  v6 = v0[20];
  v7 = v0[5];

  return Track.album(from:fallbackSource:)(v5, v7, v6);
}

uint64_t sub_100139004()
{
  v2 = *(*v1 + 160);
  *(*v1 + 216) = v0;

  sub_1000095E8(v2, &qword_1011819F8, &qword_100EBD3E8);
  if (v0)
  {
    v3 = sub_100139454;
  }

  else
  {
    v3 = sub_100139144;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100139144()
{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v19 = *(v0 + 176);
  v3 = *(v0 + 168);
  v4 = *(v0 + 144);
  v5 = *(v0 + 152);
  v28 = v5;
  v29 = v1;
  v23 = v2;
  v24 = v4;
  v6 = *(v0 + 120);
  v25 = *(v0 + 128);
  v26 = *(v0 + 184);
  v7 = *(v0 + 112);
  v31 = *(v0 + 104);
  v8 = *(v0 + 80);
  v27 = *(v0 + 88);
  v9 = *(v0 + 72);
  v22 = v9;
  v30 = *(v0 + 224);
  v20 = *(v0 + 40);
  v21 = *(v0 + 32);
  v32 = *(v0 + 24);
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  (*(v19 + 16))(v2, v1, v3);
  (*(v6 + 16))(v4, v20, v7);
  (*(v8 + 16))(v31, v21, v9);
  type metadata accessor for MainActor();

  v11 = static MainActor.shared.getter();
  v12 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v13 = (v26 + *(v6 + 80) + v12) & ~*(v6 + 80);
  v14 = (v25 + *(v8 + 80) + v13) & ~*(v8 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v11;
  *(v15 + 24) = &protocol witness table for MainActor;
  (*(v19 + 32))(v15 + v12, v23, v3);
  (*(v6 + 32))(v15 + v13, v24, v7);
  (*(v8 + 32))(v15 + v14, v31, v22);
  v16 = v15 + ((v27 + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v16 = v32;
  *(v16 + 8) = v30;
  sub_10086E3AC(0, 0, v28, &unk_100EBD410, v15);

  (*(v19 + 8))(v29, v3);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_100139454(uint64_t a1)
{
  v54 = v1;
  v50 = v1[17];
  v2 = v1[15];
  v48 = v1[14];
  v3 = v1[12];
  v5 = v1[9];
  v4 = v1[10];
  v6 = v1[7];
  v7 = v1[8];
  v9 = v1[5];
  v8 = v1[6];
  v10 = v1[4];
  v11 = Logger.actions.unsafeMutableAddressor();
  (*(v6 + 16))(v7, v11, v8);
  (*(v4 + 16))(v3, v10, v5);
  v12 = *(v2 + 16);
  v12(v50, v9, v48);
  swift_errorRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  log = v13;
  if (os_log_type_enabled(v13, v14))
  {
    v42 = v1[18];
    v43 = v1[17];
    v44 = v1[27];
    v45 = v14;
    v16 = v1[14];
    v15 = v1[15];
    v17 = v1[12];
    v18 = v1[9];
    v19 = v1[10];
    v46 = v1[7];
    v47 = v1[6];
    v49 = v1[8];
    v20 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *v20 = 136446722;
    sub_100139864();
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    (*(v19 + 8))(v17, v18);
    v24 = sub_1000105AC(v21, v23, &v53);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2080;
    v12(v42, v43, v16);
    v25 = String.init<A>(describing:)();
    v27 = v26;
    (*(v15 + 8))(v43, v16);
    v28 = sub_1000105AC(v25, v27, &v53);

    *(v20 + 14) = v28;
    *(v20 + 22) = 2082;
    v1[2] = v44;
    swift_errorRetain();
    sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
    v29 = String.init<A>(describing:)();
    v31 = sub_1000105AC(v29, v30, &v53);

    *(v20 + 24) = v31;
    _os_log_impl(&_mh_execute_header, log, v45, "Failed to navigate to album for track %{public}s from source: %s. Error=%{public}s", v20, 0x20u);
    swift_arrayDestroy();

    (*(v46 + 8))(v49, v47);
  }

  else
  {
    v32 = v1[17];
    v34 = v1[14];
    v33 = v1[15];
    v35 = v1[12];
    v36 = v1[9];
    v37 = v1[10];
    v38 = v1[7];
    v51 = v1[8];
    v39 = v1[6];

    (*(v33 + 8))(v32, v34);
    (*(v37 + 8))(v35, v36);
    (*(v38 + 8))(v51, v39);
  }

  v40 = v1[1];

  return v40();
}

unint64_t sub_100139864()
{
  result = qword_101181A08;
  if (!qword_101181A08)
  {
    type metadata accessor for Track();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101181A08);
  }

  return result;
}

uint64_t sub_1001398BC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Album() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for MusicPropertySource() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for Track() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = v1 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
  v16 = *v15;
  v17 = *(v15 + 8);
  v18 = swift_task_alloc();
  *(v3 + 16) = v18;
  *v18 = v3;
  v18[1] = sub_10002F3F4;

  return sub_100137638(a1, v13, v14, v1 + v6, v1 + v9, v1 + v12, v16, v17);
}

uint64_t sub_100139AB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_10119F3A0, &qword_100EC7CD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100139CF4(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = Logger.sharePlayTogether.unsafeMutableAddressor();
  (*(v4 + 16))(v6, v7, v3);
  v8 = a2;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134349056;
    v12 = *((*((swift_isaMask & v8->isa) + 0x180))() + 16);

    *(v11 + 4) = v12;

    _os_log_impl(&_mh_execute_header, v9, v10, "[MCDSharePlayTogetherViewModel] session.objectWillChange participant count: %{public}ld", v11, 0xCu);
  }

  else
  {

    v9 = v8;
  }

  (*(v4 + 8))(v6, v3);
  v13 = [objc_opt_self() defaultCenter];
  if (qword_10117F208 != -1)
  {
    swift_once();
  }

  [v13 postNotificationName:qword_101218648 object:0];
}

id Gliss.Coordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MCDSharePlayTogetherViewModel.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MCDSharePlayTogetherViewModel();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_10013A078(void *a1)
{
  v2 = v1;
  sub_10010FC20(&qword_101182140, &unk_100EBD2A0);
  __chkstk_darwin();
  v5 = &v19 - v4;
  v6 = sub_10010FC20(&unk_101183B90, &unk_100EBD478);
  v7 = *(v6 - 8);
  v19 = v6;
  v20 = v7;
  __chkstk_darwin();
  v9 = &v19 - v8;
  v10 = OBJC_IVAR____TtC5Music29MCDSharePlayTogetherViewModel_participantsSubscription;
  *&v2[OBJC_IVAR____TtC5Music29MCDSharePlayTogetherViewModel_participantsSubscription] = 0;
  *&v2[OBJC_IVAR____TtC5Music29MCDSharePlayTogetherViewModel_session] = a1;
  type metadata accessor for SharePlayTogetherSession(0);
  sub_10013A380(&unk_101189E70, type metadata accessor for SharePlayTogetherSession, &protocol conformance descriptor for SharePlayTogetherSession);
  v11 = a1;
  v23 = ObservableObject<>.objectWillChange.getter();
  sub_100027010();
  v12 = static OS_dispatch_queue.main.getter();
  v22 = v12;
  v13 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  type metadata accessor for ObservableObjectPublisher();
  sub_10013A380(&qword_101184920, sub_100027010, &protocol conformance descriptor for OS_dispatch_queue);
  Publisher.receive<A>(on:options:)();
  sub_10013A3C8(v5);

  *(swift_allocObject() + 16) = v11;
  sub_10013A438();
  v14 = v11;
  v15 = v19;
  v16 = Publisher<>.sink(receiveValue:)();

  (*(v20 + 8))(v9, v15);
  *&v2[v10] = v16;

  v17 = type metadata accessor for MCDSharePlayTogetherViewModel();
  v21.receiver = v2;
  v21.super_class = v17;
  return objc_msgSendSuper2(&v21, "init");
}

uint64_t sub_10013A380(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10013A3C8(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_101182140, &unk_100EBD2A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10013A438()
{
  result = qword_101183BA0;
  if (!qword_101183BA0)
  {
    sub_1001109D0(&unk_101183B90, &unk_100EBD478);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_101183BA0);
  }

  return result;
}

uint64_t sub_10013A49C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MusicSiriRepresentation.Kind();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin();
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == enum case for MusicSiriRepresentation.Kind.album(_:))
  {
    v10 = &enum case for IntentMediaItem.ItemType.album(_:);
LABEL_8:
    v11 = *v10;
    v12 = type metadata accessor for IntentMediaItem.ItemType();
    v13 = *(*(v12 - 8) + 104);
    v14 = a1;
    v15 = v11;
    return v13(v14, v15, v12);
  }

  if (v9 == enum case for MusicSiriRepresentation.Kind.artist(_:))
  {
    v10 = &enum case for IntentMediaItem.ItemType.artist(_:);
    goto LABEL_8;
  }

  if (v9 == enum case for MusicSiriRepresentation.Kind.composer(_:) || v9 == enum case for MusicSiriRepresentation.Kind.curator(_:))
  {
    goto LABEL_7;
  }

  if (v9 == enum case for MusicSiriRepresentation.Kind.editorialItem(_:))
  {
    v10 = &enum case for IntentMediaItem.ItemType.unknown(_:);
    goto LABEL_8;
  }

  if (v9 == enum case for MusicSiriRepresentation.Kind.genre(_:))
  {
    v10 = &enum case for IntentMediaItem.ItemType.genre(_:);
    goto LABEL_8;
  }

  if (v9 == enum case for MusicSiriRepresentation.Kind.musicMovie(_:))
  {
    v10 = &enum case for IntentMediaItem.ItemType.movie(_:);
    goto LABEL_8;
  }

  if (v9 == enum case for MusicSiriRepresentation.Kind.musicVideo(_:))
  {
    v10 = &enum case for IntentMediaItem.ItemType.musicVideo(_:);
    goto LABEL_8;
  }

  if (v9 == enum case for MusicSiriRepresentation.Kind.playlist(_:))
  {
    v10 = &enum case for IntentMediaItem.ItemType.playlist(_:);
    goto LABEL_8;
  }

  if (v9 == enum case for MusicSiriRepresentation.Kind.playlistEntry(_:) || v9 == enum case for MusicSiriRepresentation.Kind.radioShow(_:) || v9 == enum case for MusicSiriRepresentation.Kind.recordLabel(_:))
  {
    goto LABEL_7;
  }

  if (v9 == enum case for MusicSiriRepresentation.Kind.song(_:))
  {
    v10 = &enum case for IntentMediaItem.ItemType.song(_:);
    goto LABEL_8;
  }

  if (v9 == enum case for MusicSiriRepresentation.Kind.station(_:))
  {
    v10 = &enum case for IntentMediaItem.ItemType.station(_:);
    goto LABEL_8;
  }

  if (v9 == enum case for MusicSiriRepresentation.Kind.tvEpisode(_:))
  {
    v10 = &enum case for IntentMediaItem.ItemType.tvShowEpisode(_:);
    goto LABEL_8;
  }

  v17 = v9;
  if (v9 == enum case for MusicSiriRepresentation.Kind.tvSeason(_:))
  {
    goto LABEL_7;
  }

  if (v9 == enum case for MusicSiriRepresentation.Kind.tvShow(_:))
  {
    v10 = &enum case for IntentMediaItem.ItemType.tvShow(_:);
    goto LABEL_8;
  }

  if (v9 == enum case for MusicSiriRepresentation.Kind.uploadedAudio(_:))
  {
LABEL_7:
    v10 = &enum case for IntentMediaItem.ItemType.music(_:);
    goto LABEL_8;
  }

  v18 = enum case for MusicSiriRepresentation.Kind.uploadedVideo(_:);
  v12 = type metadata accessor for IntentMediaItem.ItemType();
  v13 = *(*(v12 - 8) + 104);
  if (v17 != v18)
  {
    v13(a1, enum case for IntentMediaItem.ItemType.unknown(_:), v12);
    return (*(v5 + 8))(v8, v4);
  }

  v15 = enum case for IntentMediaItem.ItemType.music(_:);
  v14 = a1;
  return v13(v14, v15, v12);
}

uint64_t sub_10013A848(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[133] = a3;
  v3[132] = a2;
  v3[131] = a1;
  v4 = sub_10010FC20(&qword_101181A88, &qword_100EBD528);
  v3[134] = v4;
  v3[135] = *(v4 - 8);
  v3[136] = swift_task_alloc();
  v5 = sub_10010FC20(&qword_101181A90, &qword_100EBD530);
  v3[137] = v5;
  v3[138] = *(v5 - 8);
  v3[139] = swift_task_alloc();
  v6 = sub_10010FC20(&qword_101181A98, &qword_100EBD538);
  v3[140] = v6;
  v3[141] = *(v6 - 8);
  v3[142] = swift_task_alloc();
  v7 = sub_10010FC20(&qword_101181AA0, &qword_100EBD540);
  v3[143] = v7;
  v3[144] = *(v7 - 8);
  v3[145] = swift_task_alloc();
  v8 = sub_10010FC20(&qword_101181AA8, &qword_100EBD548);
  v3[146] = v8;
  v3[147] = *(v8 - 8);
  v3[148] = swift_task_alloc();
  v9 = sub_10010FC20(&qword_101181AB0, &unk_100EBD550);
  v3[149] = v9;
  v3[150] = *(v9 - 8);
  v3[151] = swift_task_alloc();
  v10 = sub_10010FC20(&unk_101192980, &unk_100ECFEC0);
  v3[152] = v10;
  v3[153] = *(v10 - 8);
  v3[154] = swift_task_alloc();
  v11 = sub_10010FC20(&qword_101181AB8, &unk_100EBD560);
  v3[155] = v11;
  v3[156] = *(v11 - 8);
  v3[157] = swift_task_alloc();
  v12 = sub_10010FC20(&qword_101181AC0, &unk_100EC9240);
  v3[158] = v12;
  v3[159] = *(v12 - 8);
  v3[160] = swift_task_alloc();
  v13 = sub_10010FC20(&qword_101181AC8, &qword_100EBD570);
  v3[161] = v13;
  v3[162] = *(v13 - 8);
  v3[163] = swift_task_alloc();
  v14 = sub_10010FC20(&qword_101181AD0, &qword_100EBD578);
  v3[164] = v14;
  v3[165] = *(v14 - 8);
  v3[166] = swift_task_alloc();
  v15 = sub_10010FC20(&qword_101181AD8, &qword_100EBD580);
  v3[167] = v15;
  v3[168] = *(v15 - 8);
  v3[169] = swift_task_alloc();
  v16 = sub_10010FC20(&qword_101181AE0, &qword_100EBD588);
  v3[170] = v16;
  v3[171] = *(v16 - 8);
  v3[172] = swift_task_alloc();
  v17 = sub_10010FC20(&qword_101181AE8, &qword_100EBD590);
  v3[173] = v17;
  v3[174] = *(v17 - 8);
  v3[175] = swift_task_alloc();
  v18 = sub_10010FC20(&qword_101181AF0, &qword_100EBD598);
  v3[176] = v18;
  v3[177] = *(v18 - 8);
  v3[178] = swift_task_alloc();
  v19 = sub_10010FC20(&qword_101181AF8, &unk_100EBD5A0);
  v3[179] = v19;
  v3[180] = *(v19 - 8);
  v3[181] = swift_task_alloc();
  sub_10010FC20(&unk_10118C4F0, &qword_100ECB9A0);
  v3[182] = swift_task_alloc();
  v20 = sub_10010FC20(&qword_10118C550, &qword_100EBD5B0);
  v3[183] = v20;
  v3[184] = *(v20 - 8);
  v3[185] = swift_task_alloc();
  v21 = type metadata accessor for Composer();
  v3[186] = v21;
  v3[187] = *(v21 - 8);
  v3[188] = swift_task_alloc();
  v22 = sub_10010FC20(&qword_101181B00, &qword_100EBD5B8);
  v3[189] = v22;
  v3[190] = *(v22 - 8);
  v3[191] = swift_task_alloc();
  v23 = sub_10010FC20(&qword_101181B08, &qword_100EBD5C0);
  v3[192] = v23;
  v3[193] = *(v23 - 8);
  v3[194] = swift_task_alloc();
  v24 = sub_10010FC20(&qword_101181B10, &qword_100EBD5C8);
  v3[195] = v24;
  v3[196] = *(v24 - 8);
  v3[197] = swift_task_alloc();
  v25 = sub_10010FC20(&qword_101181B18, &unk_100EBD5D0);
  v3[198] = v25;
  v3[199] = *(v25 - 8);
  v3[200] = swift_task_alloc();
  v26 = sub_10010FC20(&unk_1011929A0, &unk_100ECBC80);
  v3[201] = v26;
  v3[202] = *(v26 - 8);
  v3[203] = swift_task_alloc();
  v27 = sub_10010FC20(&qword_101181B20, &qword_100EBD5E0);
  v3[204] = v27;
  v3[205] = *(v27 - 8);
  v3[206] = swift_task_alloc();
  v28 = type metadata accessor for MusicSiriRepresentation.Kind();
  v3[207] = v28;
  v3[208] = *(v28 - 8);
  v3[209] = swift_task_alloc();
  v3[210] = swift_task_alloc();
  v3[211] = swift_task_alloc();
  v3[212] = swift_task_alloc();
  v3[213] = swift_task_alloc();
  sub_10010FC20(&qword_101181B28, &qword_100EBD5E8);
  v3[214] = swift_task_alloc();
  v29 = sub_10010FC20(&qword_101181B30, &qword_100EBD5F0);
  v3[215] = v29;
  v3[216] = *(v29 - 8);
  v3[217] = swift_task_alloc();
  v30 = type metadata accessor for UploadedVideo();
  v3[218] = v30;
  v3[219] = *(v30 - 8);
  v3[220] = swift_task_alloc();
  v31 = sub_10010FC20(&qword_101181B38, &qword_100EBD5F8);
  v3[221] = v31;
  v3[222] = *(v31 - 8);
  v3[223] = swift_task_alloc();
  v32 = sub_10010FC20(&qword_101181B40, &qword_100EBD600);
  v3[224] = v32;
  v3[225] = *(v32 - 8);
  v3[226] = swift_task_alloc();
  sub_10010FC20(&qword_101181B48, &qword_100EBD608);
  v3[227] = swift_task_alloc();
  v33 = sub_10010FC20(&qword_101181B50, &qword_100EBD610);
  v3[228] = v33;
  v3[229] = *(v33 - 8);
  v3[230] = swift_task_alloc();
  v34 = type metadata accessor for UploadedAudio();
  v3[231] = v34;
  v3[232] = *(v34 - 8);
  v3[233] = swift_task_alloc();
  v35 = sub_10010FC20(&qword_101181B58, &qword_100EBD618);
  v3[234] = v35;
  v3[235] = *(v35 - 8);
  v3[236] = swift_task_alloc();
  v36 = sub_10010FC20(&qword_101181B60, &unk_100EBD620);
  v3[237] = v36;
  v3[238] = *(v36 - 8);
  v3[239] = swift_task_alloc();
  sub_10010FC20(&unk_1011A38A0, &qword_100EE5560);
  v3[240] = swift_task_alloc();
  v3[241] = swift_task_alloc();
  v37 = sub_10010FC20(&qword_1011A3890, &qword_100EBD630);
  v3[242] = v37;
  v3[243] = *(v37 - 8);
  v3[244] = swift_task_alloc();
  v3[245] = swift_task_alloc();
  v38 = type metadata accessor for TVShow();
  v3[246] = v38;
  v3[247] = *(v38 - 8);
  v3[248] = swift_task_alloc();
  v3[249] = swift_task_alloc();
  v39 = sub_10010FC20(&qword_101181B68, &qword_100EBD638);
  v3[250] = v39;
  v3[251] = *(v39 - 8);
  v3[252] = swift_task_alloc();
  v40 = sub_10010FC20(&qword_101181B70, &qword_100EBD640);
  v3[253] = v40;
  v3[254] = *(v40 - 8);
  v3[255] = swift_task_alloc();
  sub_10010FC20(&qword_101181B78, &qword_100EBD648);
  v3[256] = swift_task_alloc();
  v3[257] = swift_task_alloc();
  v41 = sub_10010FC20(&qword_101181B80, &qword_100EBD650);
  v3[258] = v41;
  v3[259] = *(v41 - 8);
  v3[260] = swift_task_alloc();
  v3[261] = swift_task_alloc();
  v42 = type metadata accessor for TVSeason();
  v3[262] = v42;
  v3[263] = *(v42 - 8);
  v3[264] = swift_task_alloc();
  v3[265] = swift_task_alloc();
  v43 = sub_10010FC20(&qword_101181B88, &qword_100EBD658);
  v3[266] = v43;
  v3[267] = *(v43 - 8);
  v3[268] = swift_task_alloc();
  v44 = sub_10010FC20(&qword_101181B90, &unk_100EBD660);
  v3[269] = v44;
  v3[270] = *(v44 - 8);
  v3[271] = swift_task_alloc();
  sub_10010FC20(&unk_1011996D0, &unk_100ED8090);
  v3[272] = swift_task_alloc();
  v3[273] = swift_task_alloc();
  v45 = sub_10010FC20(&qword_10118D130, &qword_100EBD670);
  v3[274] = v45;
  v3[275] = *(v45 - 8);
  v3[276] = swift_task_alloc();
  v3[277] = swift_task_alloc();
  v46 = type metadata accessor for TVEpisode();
  v3[278] = v46;
  v3[279] = *(v46 - 8);
  v3[280] = swift_task_alloc();
  v3[281] = swift_task_alloc();
  v47 = sub_10010FC20(&qword_101181B98, &qword_100EBD678);
  v3[282] = v47;
  v3[283] = *(v47 - 8);
  v3[284] = swift_task_alloc();
  v48 = sub_10010FC20(&qword_101181BA0, &qword_100EBD680);
  v3[285] = v48;
  v3[286] = *(v48 - 8);
  v3[287] = swift_task_alloc();
  sub_10010FC20(&unk_1011838C0, &qword_100EBD688);
  v3[288] = swift_task_alloc();
  v49 = sub_10010FC20(&qword_10118C190, &qword_100EBD690);
  v3[289] = v49;
  v3[290] = *(v49 - 8);
  v3[291] = swift_task_alloc();
  v50 = type metadata accessor for Station();
  v3[292] = v50;
  v3[293] = *(v50 - 8);
  v3[294] = swift_task_alloc();
  v51 = sub_10010FC20(&qword_101181BA8, &qword_100EBD698);
  v3[295] = v51;
  v3[296] = *(v51 - 8);
  v3[297] = swift_task_alloc();
  v52 = sub_10010FC20(&qword_101181BB0, &unk_100EBD6A0);
  v3[298] = v52;
  v3[299] = *(v52 - 8);
  v3[300] = swift_task_alloc();
  sub_10010FC20(&unk_101183960, &unk_100EBCF90);
  v3[301] = swift_task_alloc();
  v3[302] = swift_task_alloc();
  v53 = sub_10010FC20(&qword_10118D1A0, &qword_100EBD6B0);
  v3[303] = v53;
  v3[304] = *(v53 - 8);
  v3[305] = swift_task_alloc();
  v3[306] = swift_task_alloc();
  v54 = type metadata accessor for Song();
  v3[307] = v54;
  v3[308] = *(v54 - 8);
  v3[309] = swift_task_alloc();
  v3[310] = swift_task_alloc();
  v55 = sub_10010FC20(&unk_10118A320, &qword_100EBD6B8);
  v3[311] = v55;
  v3[312] = *(v55 - 8);
  v3[313] = swift_task_alloc();
  v56 = sub_10010FC20(&unk_10118A310, &qword_100EBD6C0);
  v3[314] = v56;
  v3[315] = *(v56 - 8);
  v3[316] = swift_task_alloc();
  sub_10010FC20(&qword_101181BB8, &qword_100EBD6C8);
  v3[317] = swift_task_alloc();
  v57 = sub_10010FC20(&qword_101184C70, &qword_100EBD6D0);
  v3[318] = v57;
  v3[319] = *(v57 - 8);
  v3[320] = swift_task_alloc();
  v58 = type metadata accessor for RecordLabel();
  v3[321] = v58;
  v3[322] = *(v58 - 8);
  v3[323] = swift_task_alloc();
  v59 = sub_10010FC20(&qword_101181BC0, &qword_100EBD6D8);
  v3[324] = v59;
  v3[325] = *(v59 - 8);
  v3[326] = swift_task_alloc();
  v60 = sub_10010FC20(&qword_101181BC8, &qword_100EBD6E0);
  v3[327] = v60;
  v3[328] = *(v60 - 8);
  v3[329] = swift_task_alloc();
  sub_10010FC20(&qword_1011A4770, &qword_100EBD6E8);
  v3[330] = swift_task_alloc();
  v61 = sub_10010FC20(&qword_101181BD0, &qword_100EBD6F0);
  v3[331] = v61;
  v3[332] = *(v61 - 8);
  v3[333] = swift_task_alloc();
  v62 = type metadata accessor for RadioShow();
  v3[334] = v62;
  v3[335] = *(v62 - 8);
  v3[336] = swift_task_alloc();
  v63 = sub_10010FC20(&qword_101181BD8, &qword_100EBD6F8);
  v3[337] = v63;
  v3[338] = *(v63 - 8);
  v3[339] = swift_task_alloc();
  v64 = sub_10010FC20(&qword_101181BE0, &unk_100EBD700);
  v3[340] = v64;
  v3[341] = *(v64 - 8);
  v3[342] = swift_task_alloc();
  sub_10010FC20(&unk_1011814D0, &qword_100EC12A0);
  v3[343] = swift_task_alloc();
  v3[344] = swift_task_alloc();
  v65 = sub_10010FC20(&qword_101181BE8, &unk_100EBD710);
  v3[345] = v65;
  v3[346] = *(v65 - 8);
  v3[347] = swift_task_alloc();
  v3[348] = swift_task_alloc();
  v66 = type metadata accessor for Playlist();
  v3[349] = v66;
  v3[350] = *(v66 - 8);
  v3[351] = swift_task_alloc();
  v3[352] = swift_task_alloc();
  v67 = sub_10010FC20(&unk_1011A4990, &unk_100EE5070);
  v3[353] = v67;
  v3[354] = *(v67 - 8);
  v3[355] = swift_task_alloc();
  v68 = sub_10010FC20(&qword_101181BF0, &unk_100EBD720);
  v3[356] = v68;
  v3[357] = *(v68 - 8);
  v3[358] = swift_task_alloc();
  sub_10010FC20(&unk_1011803F0, &qword_100EBA6C0);
  v3[359] = swift_task_alloc();
  v3[360] = swift_task_alloc();
  v69 = sub_10010FC20(&qword_10118D0B0, &qword_100EBD730);
  v3[361] = v69;
  v3[362] = *(v69 - 8);
  v3[363] = swift_task_alloc();
  v3[364] = swift_task_alloc();
  v70 = type metadata accessor for MusicMovie();
  v3[365] = v70;
  v3[366] = *(v70 - 8);
  v3[367] = swift_task_alloc();
  v3[368] = swift_task_alloc();
  v71 = sub_10010FC20(&qword_101181BF8, &qword_100EBD738);
  v3[369] = v71;
  v3[370] = *(v71 - 8);
  v3[371] = swift_task_alloc();
  v72 = sub_10010FC20(&qword_101181C00, &qword_100EBD740);
  v3[372] = v72;
  v3[373] = *(v72 - 8);
  v3[374] = swift_task_alloc();
  sub_10010FC20(&unk_1011846B0, &unk_100ECB630);
  v3[375] = swift_task_alloc();
  v3[376] = swift_task_alloc();
  v73 = sub_10010FC20(&unk_101181600, &unk_100EBD070);
  v3[377] = v73;
  v3[378] = *(v73 - 8);
  v3[379] = swift_task_alloc();
  v3[380] = swift_task_alloc();
  v74 = type metadata accessor for MusicVideo();
  v3[381] = v74;
  v3[382] = *(v74 - 8);
  v3[383] = swift_task_alloc();
  v3[384] = swift_task_alloc();
  v75 = sub_10010FC20(&qword_101181C08, &qword_100EBD748);
  v3[385] = v75;
  v3[386] = *(v75 - 8);
  v3[387] = swift_task_alloc();
  v76 = sub_10010FC20(&qword_101181C10, &unk_100EBD750);
  v3[388] = v76;
  v3[389] = *(v76 - 8);
  v3[390] = swift_task_alloc();
  sub_10010FC20(&qword_10118DE80, &unk_100EE4D70);
  v3[391] = swift_task_alloc();
  v3[392] = swift_task_alloc();
  v77 = sub_10010FC20(&qword_10118D210, &qword_100EBD760);
  v3[393] = v77;
  v3[394] = *(v77 - 8);
  v3[395] = swift_task_alloc();
  v3[396] = swift_task_alloc();
  v78 = type metadata accessor for Genre();
  v3[397] = v78;
  v3[398] = *(v78 - 8);
  v3[399] = swift_task_alloc();
  v3[400] = swift_task_alloc();
  v79 = sub_10010FC20(&qword_101181C18, &qword_100EBD768);
  v3[401] = v79;
  v3[402] = *(v79 - 8);
  v3[403] = swift_task_alloc();
  v80 = sub_10010FC20(&qword_101181C20, &qword_100EBD770);
  v3[404] = v80;
  v3[405] = *(v80 - 8);
  v3[406] = swift_task_alloc();
  sub_10010FC20(&unk_10118C170, &qword_100EBD778);
  v3[407] = swift_task_alloc();
  v81 = sub_10010FC20(&qword_101181C28, &qword_100EBD780);
  v3[408] = v81;
  v3[409] = *(v81 - 8);
  v3[410] = swift_task_alloc();
  v82 = type metadata accessor for Curator();
  v3[411] = v82;
  v3[412] = *(v82 - 8);
  v3[413] = swift_task_alloc();
  v83 = sub_10010FC20(&qword_101181C30, &qword_100EBD788);
  v3[414] = v83;
  v3[415] = *(v83 - 8);
  v3[416] = swift_task_alloc();
  v84 = sub_10010FC20(&qword_101181C38, &unk_100EBD790);
  v3[417] = v84;
  v3[418] = *(v84 - 8);
  v3[419] = swift_task_alloc();
  sub_10010FC20(&unk_101184930, &unk_100EC05C0);
  v3[420] = swift_task_alloc();
  v3[421] = swift_task_alloc();
  v85 = sub_10010FC20(&qword_101193B90, &qword_100EBD7A0);
  v3[422] = v85;
  v3[423] = *(v85 - 8);
  v3[424] = swift_task_alloc();
  v3[425] = swift_task_alloc();
  v86 = type metadata accessor for Artist();
  v3[426] = v86;
  v3[427] = *(v86 - 8);
  v3[428] = swift_task_alloc();
  v3[429] = swift_task_alloc();
  v87 = sub_10010FC20(&qword_101181C40, &qword_100EBD7A8);
  v3[430] = v87;
  v3[431] = *(v87 - 8);
  v3[432] = swift_task_alloc();
  v88 = sub_10010FC20(&qword_101181C48, &qword_100EBD7B0);
  v3[433] = v88;
  v3[434] = *(v88 - 8);
  v3[435] = swift_task_alloc();
  sub_10010FC20(&unk_101184730, &unk_100ECB920);
  v3[436] = swift_task_alloc();
  v3[437] = swift_task_alloc();
  v89 = sub_10010FC20(&qword_1011815C0, &unk_100EBD040);
  v3[438] = v89;
  v3[439] = *(v89 - 8);
  v3[440] = swift_task_alloc();
  v3[441] = swift_task_alloc();
  v90 = type metadata accessor for Album();
  v3[442] = v90;
  v3[443] = *(v90 - 8);
  v3[444] = swift_task_alloc();
  v3[445] = swift_task_alloc();
  v91 = sub_10010FC20(&qword_101181C50, &qword_100EBD7B8);
  v3[446] = v91;
  v3[447] = *(v91 - 8);
  v3[448] = swift_task_alloc();
  v92 = type metadata accessor for MusicDataRequest.Source();
  v3[449] = v92;
  v3[450] = *(v92 - 8);
  v3[451] = swift_task_alloc();
  v93 = sub_10010FC20(&unk_101192970, &qword_100EBD7C0);
  v3[452] = v93;
  v3[453] = *(v93 - 8);
  v3[454] = swift_task_alloc();
  v94 = type metadata accessor for MusicSiriRepresentation.ParsedIdentifier();
  v3[455] = v94;
  v3[456] = *(v94 - 8);
  v3[457] = swift_task_alloc();
  v3[458] = swift_task_alloc();
  v3[459] = swift_task_alloc();
  v3[460] = swift_task_alloc();

  return _swift_task_switch(sub_10013D230, 0, 0);
}

uint64_t sub_10013D230()
{
  v199 = v0;
  static MusicSiriRepresentation.parse(_:)();
  v1 = v0[459];
  v3 = v0[456];
  v4 = v0[455];
  v5 = *(v3 + 16);
  v5(v1, v0[460], v4);
  v6 = (*(v3 + 88))(v1, v4);
  if (v6 == enum case for MusicSiriRepresentation.ParsedIdentifier.catalog(_:))
  {
    v7 = v0[459];
    (*(v0[456] + 96))(v7, v0[455]);
    v8 = *v7;
    v0[461] = *v7;
    v9 = v7[1];
    v0[462] = v9;
    v10 = v7[2];
    v0[463] = v10;
    v11 = v7[3];
    v0[464] = v11;
    if (v10 == 0x736D75626C61 && v11 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v12 = v0[451];
      v13 = v0[450];
      v189 = v0[449];
      swift_getKeyPath();
      v0[70] = v8;
      v0[71] = v9;
      sub_10016A478(&qword_101192880, &type metadata accessor for Album, &protocol conformance descriptor for Album);

      MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
      (*(v13 + 104))(v12, enum case for MusicDataRequest.Source.appIntents(_:), v189);
      MusicCatalogResourceRequest.source.setter();
      v14 = MusicCatalogResourceRequest.configuration.modify();
      MusicRequestConfiguration.performAutomaticLibraryMapping.setter();
      v14(v0 + 2, 0);
      v15 = swift_task_alloc();
      v0[465] = v15;
      *v15 = v0;
      v15[1] = sub_1001410E0;
      v16 = v0[452];
      v17 = v0[448];
LABEL_10:

      return MusicCatalogResourceRequest.response()(v17, v16);
    }

    if (v10 == 0x73747369747261 && v11 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v51 = v0[451];
      v52 = v0[450];
      v191 = v0[449];
      swift_getKeyPath();
      v0[74] = v8;
      v0[75] = v9;
      sub_10016A478(&qword_101181D10, &type metadata accessor for Artist, &protocol conformance descriptor for Artist);

      MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
      (*(v52 + 104))(v51, enum case for MusicDataRequest.Source.appIntents(_:), v191);
      MusicCatalogResourceRequest.source.setter();
      v53 = MusicCatalogResourceRequest.configuration.modify();
      MusicRequestConfiguration.performAutomaticLibraryMapping.setter();
      v53(v0 + 10, 0);
      v54 = swift_task_alloc();
      v0[467] = v54;
      *v54 = v0;
      v54[1] = sub_100141EDC;
      v16 = v0[433];
      v17 = v0[432];
      goto LABEL_10;
    }

    if (v10 == 0x75632D656C707061 && v11 == 0xEE0073726F746172 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v66 = v0[451];
      v67 = v0[450];
      v192 = v0[449];
      swift_getKeyPath();
      v0[84] = v8;
      v0[85] = v9;
      sub_10016A478(&qword_101181D08, &type metadata accessor for Curator, &protocol conformance descriptor for Curator);

      MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
      (*(v67 + 104))(v66, enum case for MusicDataRequest.Source.appIntents(_:), v192);
      MusicCatalogResourceRequest.source.setter();
      v68 = MusicCatalogResourceRequest.configuration.modify();
      MusicRequestConfiguration.performAutomaticLibraryMapping.setter();
      v68(v0 + 14, 0);
      v69 = swift_task_alloc();
      v0[469] = v69;
      *v69 = v0;
      v69[1] = sub_100142CD8;
      v16 = v0[417];
      v17 = v0[416];
      goto LABEL_10;
    }

    if (v10 == 0x7365726E6567 && v11 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v74 = v0[451];
      v75 = v0[450];
      v193 = v0[449];
      swift_getKeyPath();
      v0[92] = v8;
      v0[93] = v9;
      sub_10016A478(&qword_101181D00, &type metadata accessor for Genre, &protocol conformance descriptor for Genre);

      MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
      (*(v75 + 104))(v74, enum case for MusicDataRequest.Source.appIntents(_:), v193);
      MusicCatalogResourceRequest.source.setter();
      v76 = MusicCatalogResourceRequest.configuration.modify();
      MusicRequestConfiguration.performAutomaticLibraryMapping.setter();
      v76(v0 + 18, 0);
      v77 = swift_task_alloc();
      v0[471] = v77;
      *v77 = v0;
      v77[1] = sub_100143AD4;
      v16 = v0[404];
      v17 = v0[403];
      goto LABEL_10;
    }

    if (v10 == 0x69762D636973756DLL && v11 == 0xEC000000736F6564 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v82 = v0[451];
      v83 = v0[450];
      v194 = v0[449];
      swift_getKeyPath();
      v0[100] = v8;
      v0[101] = v9;
      sub_10016A478(&qword_101181CF8, &type metadata accessor for MusicVideo, &protocol conformance descriptor for MusicVideo);

      MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
      (*(v83 + 104))(v82, enum case for MusicDataRequest.Source.appIntents(_:), v194);
      MusicCatalogResourceRequest.source.setter();
      v84 = MusicCatalogResourceRequest.configuration.modify();
      MusicRequestConfiguration.performAutomaticLibraryMapping.setter();
      v84(v0 + 22, 0);
      v85 = swift_task_alloc();
      v0[473] = v85;
      *v85 = v0;
      v85[1] = sub_1001448D0;
      v16 = v0[388];
      v17 = v0[387];
      goto LABEL_10;
    }

    if (v10 == 0x6F6D2D636973756DLL && v11 == 0xEC00000073656976 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v90 = v0[451];
      v91 = v0[450];
      v195 = v0[449];
      swift_getKeyPath();
      v0[68] = v8;
      v0[69] = v9;
      sub_10016A478(&qword_101181CE8, &type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
      sub_10016A478(&qword_101181CF0, &type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);

      MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
      (*(v91 + 104))(v90, enum case for MusicDataRequest.Source.appIntents(_:), v195);
      MusicCatalogResourceRequest.source.setter();
      v92 = MusicCatalogResourceRequest.configuration.modify();
      MusicRequestConfiguration.performAutomaticLibraryMapping.setter();
      v92(v0 + 26, 0);
      v93 = swift_task_alloc();
      v0[475] = v93;
      *v93 = v0;
      v93[1] = sub_1001456CC;
      v16 = v0[372];
      v17 = v0[371];
      goto LABEL_10;
    }

    v196 = v9;
    if (v10 == 0x7473696C79616C70 && v11 == 0xE900000000000073 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v98 = v0[451];
      v99 = v0[450];
      v178 = v0[449];
      swift_getKeyPath();
      v0[114] = v8;
      v0[115] = v196;
      sub_10016A478(&unk_1011A47F0, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);

      MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
      (*(v99 + 104))(v98, enum case for MusicDataRequest.Source.appIntents(_:), v178);
      MusicCatalogResourceRequest.source.setter();
      v100 = MusicCatalogResourceRequest.configuration.modify();
      MusicRequestConfiguration.performAutomaticLibraryMapping.setter();
      v100(v0 + 30, 0);
      v101 = swift_task_alloc();
      v0[477] = v101;
      *v101 = v0;
      v101[1] = sub_1001464C8;
      v16 = v0[356];
      v17 = v0[355];
      goto LABEL_10;
    }

    if (v10 == 0x68732D6F69646172 && v11 == 0xEB0000000073776FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v124 = v0[451];
      v125 = v0[450];
      v180 = v0[449];
      swift_getKeyPath();
      v0[110] = v8;
      v0[111] = v196;
      sub_10016A478(&qword_101181CE0, &type metadata accessor for RadioShow, &protocol conformance descriptor for RadioShow);

      MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
      (*(v125 + 104))(v124, enum case for MusicDataRequest.Source.appIntents(_:), v180);
      MusicCatalogResourceRequest.source.setter();
      v126 = MusicCatalogResourceRequest.configuration.modify();
      MusicRequestConfiguration.performAutomaticLibraryMapping.setter();
      v126(v0 + 34, 0);
      v127 = swift_task_alloc();
      v0[479] = v127;
      *v127 = v0;
      v127[1] = sub_1001472C4;
      v16 = v0[340];
      v17 = v0[339];
      goto LABEL_10;
    }

    if (v10 == 0x6C2D64726F636572 && v11 == 0xED0000736C656261 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v128 = v0[451];
      v129 = v0[450];
      v181 = v0[449];
      swift_getKeyPath();
      v0[106] = v8;
      v0[107] = v196;
      sub_10016A478(&qword_101181CD8, &type metadata accessor for RecordLabel, &protocol conformance descriptor for RecordLabel);

      MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
      (*(v129 + 104))(v128, enum case for MusicDataRequest.Source.appIntents(_:), v181);
      MusicCatalogResourceRequest.source.setter();
      v130 = MusicCatalogResourceRequest.configuration.modify();
      MusicRequestConfiguration.performAutomaticLibraryMapping.setter();
      v130(v0 + 38, 0);
      v131 = swift_task_alloc();
      v0[481] = v131;
      *v131 = v0;
      v131[1] = sub_1001480C0;
      v16 = v0[327];
      v17 = v0[326];
      goto LABEL_10;
    }

    if (v10 == 0x73676E6F73 && v11 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v132 = v0[451];
      v133 = v0[450];
      v182 = v0[449];
      swift_getKeyPath();
      v0[102] = v8;
      v0[103] = v196;
      sub_10016A478(&unk_1011929D0, &type metadata accessor for Song, &protocol conformance descriptor for Song);

      MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
      (*(v133 + 104))(v132, enum case for MusicDataRequest.Source.appIntents(_:), v182);
      MusicCatalogResourceRequest.source.setter();
      v134 = MusicCatalogResourceRequest.configuration.modify();
      MusicRequestConfiguration.performAutomaticLibraryMapping.setter();
      v134(v0 + 42, 0);
      v135 = swift_task_alloc();
      v0[483] = v135;
      *v135 = v0;
      v135[1] = sub_100148EBC;
      v16 = v0[314];
      v17 = v0[313];
      goto LABEL_10;
    }

    if (v10 == 0x736E6F6974617473 && v11 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v136 = v0[451];
      v137 = v0[450];
      v183 = v0[449];
      swift_getKeyPath();
      v0[98] = v8;
      v0[99] = v196;
      sub_10016A478(&qword_101181CD0, &type metadata accessor for Station, &protocol conformance descriptor for Station);

      MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
      (*(v137 + 104))(v136, enum case for MusicDataRequest.Source.appIntents(_:), v183);
      MusicCatalogResourceRequest.source.setter();
      v138 = MusicCatalogResourceRequest.configuration.modify();
      MusicRequestConfiguration.performAutomaticLibraryMapping.setter();
      v138(v0 + 46, 0);
      v139 = swift_task_alloc();
      v0[485] = v139;
      *v139 = v0;
      v139[1] = sub_100149CB8;
      v16 = v0[298];
      v17 = v0[297];
      goto LABEL_10;
    }

    if (v10 == 0x6F736970652D7674 && v11 == 0xEB00000000736564 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v140 = v0[451];
      v141 = v0[450];
      v184 = v0[449];
      swift_getKeyPath();
      v0[94] = v8;
      v0[95] = v9;
      sub_10016A478(&qword_101181CC0, &type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
      sub_10016A478(&qword_101181CC8, &type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);

      MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
      (*(v141 + 104))(v140, enum case for MusicDataRequest.Source.appIntents(_:), v184);
      MusicCatalogResourceRequest.source.setter();
      v142 = MusicCatalogResourceRequest.configuration.modify();
      MusicRequestConfiguration.performAutomaticLibraryMapping.setter();
      v142(v0 + 50, 0);
      v143 = swift_task_alloc();
      v0[487] = v143;
      *v143 = v0;
      v143[1] = sub_10014AAB4;
      v16 = v0[285];
      v17 = v0[284];
      goto LABEL_10;
    }

    if (v10 == 0x6F736165732D7674 && v11 == 0xEA0000000000736ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v144 = v0[451];
      v145 = v0[450];
      v185 = v0[449];
      swift_getKeyPath();
      v0[90] = v8;
      v0[91] = v9;
      sub_10016A478(&qword_101181CB0, &type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
      sub_10016A478(&qword_101181CB8, &type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);

      MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
      (*(v145 + 104))(v144, enum case for MusicDataRequest.Source.appIntents(_:), v185);
      MusicCatalogResourceRequest.source.setter();
      v146 = MusicCatalogResourceRequest.configuration.modify();
      MusicRequestConfiguration.performAutomaticLibraryMapping.setter();
      v146(v0 + 54, 0);
      v147 = swift_task_alloc();
      v0[489] = v147;
      *v147 = v0;
      v147[1] = sub_10014B8B0;
      v16 = v0[269];
      v17 = v0[268];
      goto LABEL_10;
    }

    if (v10 == 0x73776F68732D7674 && v11 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v148 = v0[451];
      v149 = v0[450];
      v186 = v0[449];
      swift_getKeyPath();
      v0[86] = v8;
      v0[87] = v9;
      sub_10016A478(&qword_101181CA0, &type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);
      sub_10016A478(&qword_101181CA8, &type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);

      MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
      (*(v149 + 104))(v148, enum case for MusicDataRequest.Source.appIntents(_:), v186);
      MusicCatalogResourceRequest.source.setter();
      v150 = MusicCatalogResourceRequest.configuration.modify();
      MusicRequestConfiguration.performAutomaticLibraryMapping.setter();
      v150(v0 + 58, 0);
      v151 = swift_task_alloc();
      v0[491] = v151;
      *v151 = v0;
      v151[1] = sub_10014C6AC;
      v16 = v0[253];
      v17 = v0[252];
      goto LABEL_10;
    }

    if (v10 == 0x646564616F6C7075 && v11 == 0xEF736F696475612DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v152 = v0[451];
      v153 = v0[450];
      v187 = v0[449];
      swift_getKeyPath();
      v0[82] = v8;
      v0[83] = v9;
      sub_10016A478(&qword_101181C90, &type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);
      sub_10016A478(&qword_101181C98, &type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);

      MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
      (*(v153 + 104))(v152, enum case for MusicDataRequest.Source.appIntents(_:), v187);
      MusicCatalogResourceRequest.source.setter();
      v154 = MusicCatalogResourceRequest.configuration.modify();
      MusicRequestConfiguration.performAutomaticLibraryMapping.setter();
      v154(v0 + 62, 0);
      v155 = swift_task_alloc();
      v0[493] = v155;
      *v155 = v0;
      v155[1] = sub_10014D4A8;
      v16 = v0[237];
      v17 = v0[236];
      goto LABEL_10;
    }

    if (v10 == 0x646564616F6C7075 && v11 == 0xEF736F656469762DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v156 = v0[451];
      v157 = v0[450];
      v188 = v0[449];
      swift_getKeyPath();
      v0[78] = v8;
      v0[79] = v9;
      sub_10016A478(&qword_101181C80, &type metadata accessor for UploadedVideo, &protocol conformance descriptor for UploadedVideo);
      sub_10016A478(&qword_101181C88, &type metadata accessor for UploadedVideo, &protocol conformance descriptor for UploadedVideo);

      MusicCatalogResourceRequest.init<A>(matching:equalTo:)();
      (*(v157 + 104))(v156, enum case for MusicDataRequest.Source.appIntents(_:), v188);
      MusicCatalogResourceRequest.source.setter();
      v158 = MusicCatalogResourceRequest.configuration.modify();
      MusicRequestConfiguration.performAutomaticLibraryMapping.setter();
      v158(v0 + 6, 0);
      v159 = swift_task_alloc();
      v0[495] = v159;
      *v159 = v0;
      v159[1] = sub_10014E2A4;
      v16 = v0[224];
      v17 = v0[223];
      goto LABEL_10;
    }

    if (qword_10117F6D0 != -1)
    {
      swift_once();
    }

    v160 = type metadata accessor for Logger();
    sub_1000060E4(v160, qword_101218C28);

    v161 = Logger.logObject.getter();
    v162 = static os_log_type_t.error.getter();

    v163 = os_log_type_enabled(v161, v162);
    v164 = v0[460];
    v165 = v0[456];
    v166 = v0[455];
    if (v163)
    {
      v167 = swift_slowAlloc();
      v168 = swift_slowAlloc();
      v198[0] = v168;
      *v167 = 136446210;
      v169 = sub_1000105AC(v10, v11, v198);

      *(v167 + 4) = v169;
      _os_log_impl(&_mh_execute_header, v161, v162, "Unsupported catalog type: %{public}s", v167, 0xCu);
      sub_10000959C(v168);
    }

    else
    {
    }

    (*(v165 + 8))(v164, v166);
    v170 = v0[131];
    v171 = type metadata accessor for GenericMusicItem();
    (*(*(v171 - 8) + 56))(v170, 1, 1, v171);
    goto LABEL_28;
  }

  if (v6 != enum case for MusicSiriRepresentation.ParsedIdentifier.library(_:))
  {
    if (qword_10117F6D0 != -1)
    {
      swift_once();
    }

    v31 = v0[460];
    v32 = v0[458];
    v33 = v0[455];
    v34 = type metadata accessor for Logger();
    sub_1000060E4(v34, qword_101218C28);
    v5(v32, v31, v33);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    v37 = os_log_type_enabled(v35, v36);
    v38 = v0[460];
    v39 = v0[458];
    if (v37)
    {
      v40 = v0[457];
      v177 = v36;
      v41 = v0[456];
      v42 = v0[455];
      v190 = v0[460];
      v43 = swift_slowAlloc();
      v175 = swift_slowAlloc();
      v198[0] = v175;
      *v43 = 136446210;
      v5(v40, v39, v42);
      v44 = String.init<A>(describing:)();
      v46 = v45;
      v47 = *(v41 + 8);
      v47(v39, v42);
      v48 = sub_1000105AC(v44, v46, v198);

      *(v43 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v35, v177, "Unknown parsed id type: %{public}s", v43, 0xCu);
      sub_10000959C(v175);

      v49 = v190;
      v50 = v42;
    }

    else
    {
      v57 = v0[456];
      v58 = v0[455];

      v47 = *(v57 + 8);
      v47(v39, v58);
      v49 = v38;
      v50 = v58;
    }

    v47(v49, v50);
    v59 = v0[459];
    v60 = v0[455];
    v61 = v0[131];
    v62 = type metadata accessor for GenericMusicItem();
    (*(*(v62 - 8) + 56))(v61, 1, 1, v62);
    v47(v59, v60);
    goto LABEL_28;
  }

  v18 = v0[459];
  v19 = v0[213];
  v20 = v0[212];
  v21 = v0[208];
  v22 = v0[207];
  (*(v0[456] + 96))(v18, v0[455]);
  v23 = *v18;
  v0[497] = *v18;

  v24 = sub_10010FC20(&qword_101181C58, &qword_100EBD7C8);
  (*(v21 + 32))(v19, &v18[*(v24 + 64)], v22);
  v25 = *(v21 + 16);
  v0[498] = v25;
  v0[499] = (v21 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v25(v20, v19, v22);
  v26 = (*(v21 + 88))(v20, v22);
  if (v26 != enum case for MusicSiriRepresentation.Kind.album(_:))
  {
    if (v26 == enum case for MusicSiriRepresentation.Kind.artist(_:))
    {
      MusicLibraryRequest.init()();
      swift_getKeyPath();
      v0[128] = v23;
      dispatch thunk of CustomStringConvertible.description.getter();
      v0[104] = MusicItemID.init(_:)();
      v0[105] = v55;
      MusicLibraryRequest.filter<A>(matching:equalTo:)();

      v56 = swift_task_alloc();
      v0[502] = v56;
      *v56 = v0;
      v56[1] = sub_10014FEEC;
      v29 = v0[198];
      v30 = v0[197];
      goto LABEL_63;
    }

    if (v26 == enum case for MusicSiriRepresentation.Kind.composer(_:))
    {
      sub_10016A478(&qword_101181C78, &type metadata accessor for Composer, &protocol conformance descriptor for Composer);
      MusicLibraryRequest.init()();
      swift_getKeyPath();
      v0[129] = v23;
      dispatch thunk of CustomStringConvertible.description.getter();
      v0[108] = MusicItemID.init(_:)();
      v0[109] = v64;
      MusicLibraryRequest.filter<A>(matching:equalTo:)();

      v65 = swift_task_alloc();
      v0[504] = v65;
      *v65 = v0;
      v65[1] = sub_100150D38;
      v29 = v0[192];
      v30 = v0[191];
      goto LABEL_63;
    }

    if (v26 == enum case for MusicSiriRepresentation.Kind.genre(_:))
    {
      MusicLibraryRequest.init()();
      swift_getKeyPath();
      v0[120] = v23;
      dispatch thunk of CustomStringConvertible.description.getter();
      v0[112] = MusicItemID.init(_:)();
      v0[113] = v70;
      MusicLibraryRequest.filter<A>(matching:equalTo:)();

      v71 = swift_task_alloc();
      v0[506] = v71;
      *v71 = v0;
      v71[1] = sub_100151B88;
      v29 = v0[179];
      v30 = v0[178];
      goto LABEL_63;
    }

    if (v26 == enum case for MusicSiriRepresentation.Kind.musicMovie(_:))
    {
      sub_10016A478(&qword_1011800D8, &type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
      MusicLibraryRequest.init()();
      swift_getKeyPath();
      v0[126] = v23;
      dispatch thunk of CustomStringConvertible.description.getter();
      v0[116] = MusicItemID.init(_:)();
      v0[117] = v72;
      MusicLibraryRequest.filter<A>(matching:equalTo:)();

      v73 = swift_task_alloc();
      v0[508] = v73;
      *v73 = v0;
      v73[1] = sub_1001529D4;
      v29 = v0[173];
      v30 = v0[172];
      goto LABEL_63;
    }

    if (v26 == enum case for MusicSiriRepresentation.Kind.musicVideo(_:))
    {
      MusicLibraryRequest.init()();
      swift_getKeyPath();
      v0[125] = v23;
      dispatch thunk of CustomStringConvertible.description.getter();
      v0[118] = MusicItemID.init(_:)();
      v0[119] = v78;
      MusicLibraryRequest.filter<A>(matching:equalTo:)();

      v79 = swift_task_alloc();
      v0[510] = v79;
      *v79 = v0;
      v79[1] = sub_100153820;
      v29 = v0[167];
      v30 = v0[166];
      goto LABEL_63;
    }

    if (v26 == enum case for MusicSiriRepresentation.Kind.playlist(_:))
    {
      MusicLibraryRequest.init()();
      swift_getKeyPath();
      v0[124] = v23;
      dispatch thunk of CustomStringConvertible.description.getter();
      v0[96] = MusicItemID.init(_:)();
      v0[97] = v80;
      MusicLibraryRequest.filter<A>(matching:equalTo:)();

      v81 = swift_task_alloc();
      v0[512] = v81;
      *v81 = v0;
      v81[1] = sub_10015466C;
      v29 = v0[161];
      v30 = v0[160];
      goto LABEL_63;
    }

    if (v26 == enum case for MusicSiriRepresentation.Kind.song(_:))
    {
      MusicLibraryRequest.init()();
      swift_getKeyPath();
      v0[123] = v23;
      dispatch thunk of CustomStringConvertible.description.getter();
      v0[88] = MusicItemID.init(_:)();
      v0[89] = v86;
      MusicLibraryRequest.filter<A>(matching:equalTo:)();

      v87 = swift_task_alloc();
      v0[514] = v87;
      *v87 = v0;
      v87[1] = sub_1001554B8;
      v29 = v0[155];
      v30 = v0[154];
      goto LABEL_63;
    }

    if (v26 == enum case for MusicSiriRepresentation.Kind.tvEpisode(_:))
    {
      sub_10016A478(&qword_101181C70, &type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
      MusicLibraryRequest.init()();
      swift_getKeyPath();
      v0[122] = v23;
      dispatch thunk of CustomStringConvertible.description.getter();
      v0[80] = MusicItemID.init(_:)();
      v0[81] = v88;
      MusicLibraryRequest.filter<A>(matching:equalTo:)();

      v89 = swift_task_alloc();
      v0[516] = v89;
      *v89 = v0;
      v89[1] = sub_100156304;
      v29 = v0[149];
      v30 = v0[148];
      goto LABEL_63;
    }

    if (v26 == enum case for MusicSiriRepresentation.Kind.tvSeason(_:))
    {
      sub_10016A478(&qword_101181C68, &type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
      MusicLibraryRequest.init()();
      swift_getKeyPath();
      v0[121] = v23;
      dispatch thunk of CustomStringConvertible.description.getter();
      v0[72] = MusicItemID.init(_:)();
      v0[73] = v94;
      MusicLibraryRequest.filter<A>(matching:equalTo:)();

      v95 = swift_task_alloc();
      v0[518] = v95;
      *v95 = v0;
      v95[1] = sub_100157150;
      v29 = v0[143];
      v30 = v0[142];
      goto LABEL_63;
    }

    if (v26 == enum case for MusicSiriRepresentation.Kind.tvShow(_:))
    {
      sub_10016A478(&qword_101181C60, &type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);
      MusicLibraryRequest.init()();
      swift_getKeyPath();
      v0[130] = v23;
      dispatch thunk of CustomStringConvertible.description.getter();
      v0[66] = MusicItemID.init(_:)();
      v0[67] = v96;
      MusicLibraryRequest.filter<A>(matching:equalTo:)();

      v97 = swift_task_alloc();
      v0[520] = v97;
      *v97 = v0;
      v97[1] = sub_100157F9C;
      v29 = v0[137];
      v30 = v0[136];
      goto LABEL_63;
    }

    if (qword_10117F6D0 != -1)
    {
      swift_once();
    }

    v102 = v0[213];
    v103 = v0[211];
    v104 = v0[207];
    v105 = type metadata accessor for Logger();
    sub_1000060E4(v105, qword_101218C28);
    v25(v103, v102, v104);
    v106 = Logger.logObject.getter();
    v173 = static os_log_type_t.error.getter();
    v107 = os_log_type_enabled(v106, v173);
    v179 = v0[455];
    v197 = v0[460];
    v174 = v0[456];
    v176 = v0[213];
    v108 = v0[211];
    if (v107)
    {
      v109 = v0[210];
      v110 = v0[208];
      v111 = v0[207];
      v112 = swift_slowAlloc();
      v172 = swift_slowAlloc();
      v198[0] = v172;
      *v112 = 136446210;
      v25(v109, v108, v111);
      v113 = String.init<A>(describing:)();
      v115 = v114;
      v116 = *(v110 + 8);
      v116(v108, v111);
      v117 = sub_1000105AC(v113, v115, v198);

      *(v112 + 4) = v117;
      _os_log_impl(&_mh_execute_header, v106, v173, "Unsupported library kind: %{public}s", v112, 0xCu);
      sub_10000959C(v172);

      v116(v176, v111);
    }

    else
    {
      v118 = v0[208];
      v119 = v0[207];

      v116 = *(v118 + 8);
      v116(v108, v119);
      v116(v176, v119);
    }

    (*(v174 + 8))(v197, v179);
    v120 = v0[212];
    v121 = v0[207];
    v122 = v0[131];
    v123 = type metadata accessor for GenericMusicItem();
    (*(*(v123 - 8) + 56))(v122, 1, 1, v123);
    v116(v120, v121);
LABEL_28:

    v63 = v0[1];

    return v63();
  }

  MusicLibraryRequest.init()();
  swift_getKeyPath();
  v0[127] = v23;
  dispatch thunk of CustomStringConvertible.description.getter();
  v0[76] = MusicItemID.init(_:)();
  v0[77] = v27;
  MusicLibraryRequest.filter<A>(matching:equalTo:)();

  v28 = swift_task_alloc();
  v0[500] = v28;
  *v28 = v0;
  v28[1] = sub_10014F0A0;
  v29 = v0[204];
  v30 = v0[203];
LABEL_63:

  return MusicLibraryRequest.response()(v30, v29);
}

uint64_t sub_1001410E0()
{
  *(*v1 + 3728) = v0;

  if (v0)
  {

    v2 = sub_100158DE8;
  }

  else
  {
    v2 = sub_100141208;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100141208()
{
  v45 = v0;
  v1 = v0[453];
  v38 = v0[452];
  v40 = v0[454];
  v2 = v0[448];
  v3 = v0[447];
  v4 = v0[446];
  v5 = v0[443];
  v42 = v0[442];
  v6 = v0[441];
  v7 = v0[439];
  v37 = v0[438];
  v8 = v0[437];
  MusicCatalogResourceResponse.items.getter();
  sub_10034DA18(v8);
  (*(v7 + 8))(v6, v37);
  (*(v3 + 8))(v2, v4);
  (*(v1 + 8))(v40, v38);
  if ((*(v5 + 48))(v8, 1, v42) == 1)
  {
    sub_1000095E8(v0[437], &unk_101184730, &unk_100ECB920);
    if (qword_10117F6D0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000060E4(v9, qword_101218C28);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[464];
    if (v12)
    {
      v43 = v0[460];
      v14 = v0[456];
      v39 = v0[463];
      v41 = v0[455];
      v15 = swift_slowAlloc();
      v44[0] = swift_slowAlloc();
      *v15 = 136446466;
      v16 = MusicItemID.description.getter();
      v18 = v17;

      v19 = sub_1000105AC(v16, v18, v44);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2082;
      v20 = sub_1000105AC(v39, v13, v44);

      *(v15 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v10, v11, "No catalog item found for id: %{public}s, kind: %{public}s", v15, 0x16u);
      swift_arrayDestroy();

      (*(v14 + 8))(v43, v41);
    }

    else
    {
      v30 = v0[460];
      v31 = v0[456];
      v32 = v0[455];

      (*(v31 + 8))(v30, v32);
    }

    v33 = v0[131];
    v34 = type metadata accessor for GenericMusicItem();
    (*(*(v34 - 8) + 56))(v33, 1, 1, v34);
  }

  else
  {
    v21 = v0[445];
    v22 = v0[443];
    v23 = v0[442];
    v24 = v0[437];
    v25 = v0[131];
    (*(v0[456] + 8))(v0[460], v0[455]);

    v26 = *(v22 + 32);
    v26(v21, v24, v23);
    v26(v25, v21, v23);
    v27 = enum case for GenericMusicItem.album(_:);
    v28 = type metadata accessor for GenericMusicItem();
    v29 = *(v28 - 8);
    (*(v29 + 104))(v25, v27, v28);
    (*(v29 + 56))(v25, 0, 1, v28);
  }

  v35 = v0[1];

  return v35();
}

uint64_t sub_100141EDC()
{
  *(*v1 + 3744) = v0;

  if (v0)
  {

    v2 = sub_1001596F4;
  }

  else
  {
    v2 = sub_100142004;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100142004()
{
  v45 = v0;
  v1 = v0[434];
  v38 = v0[433];
  v40 = v0[435];
  v2 = v0[432];
  v3 = v0[431];
  v4 = v0[430];
  v5 = v0[427];
  v42 = v0[426];
  v6 = v0[425];
  v7 = v0[423];
  v37 = v0[422];
  v8 = v0[421];
  MusicCatalogResourceResponse.items.getter();
  sub_10034DA48(v8);
  (*(v7 + 8))(v6, v37);
  (*(v3 + 8))(v2, v4);
  (*(v1 + 8))(v40, v38);
  if ((*(v5 + 48))(v8, 1, v42) == 1)
  {
    sub_1000095E8(v0[421], &unk_101184930, &unk_100EC05C0);
    if (qword_10117F6D0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000060E4(v9, qword_101218C28);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[464];
    if (v12)
    {
      v43 = v0[460];
      v14 = v0[456];
      v39 = v0[463];
      v41 = v0[455];
      v15 = swift_slowAlloc();
      v44[0] = swift_slowAlloc();
      *v15 = 136446466;
      v16 = MusicItemID.description.getter();
      v18 = v17;

      v19 = sub_1000105AC(v16, v18, v44);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2082;
      v20 = sub_1000105AC(v39, v13, v44);

      *(v15 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v10, v11, "No catalog item found for id: %{public}s, kind: %{public}s", v15, 0x16u);
      swift_arrayDestroy();

      (*(v14 + 8))(v43, v41);
    }

    else
    {
      v30 = v0[460];
      v31 = v0[456];
      v32 = v0[455];

      (*(v31 + 8))(v30, v32);
    }

    v33 = v0[131];
    v34 = type metadata accessor for GenericMusicItem();
    (*(*(v34 - 8) + 56))(v33, 1, 1, v34);
  }

  else
  {
    v21 = v0[429];
    v22 = v0[427];
    v23 = v0[426];
    v24 = v0[421];
    v25 = v0[131];
    (*(v0[456] + 8))(v0[460], v0[455]);

    v26 = *(v22 + 32);
    v26(v21, v24, v23);
    v26(v25, v21, v23);
    v27 = enum case for GenericMusicItem.artist(_:);
    v28 = type metadata accessor for GenericMusicItem();
    v29 = *(v28 - 8);
    (*(v29 + 104))(v25, v27, v28);
    (*(v29 + 56))(v25, 0, 1, v28);
  }

  v35 = v0[1];

  return v35();
}

uint64_t sub_100142CD8()
{
  *(*v1 + 3760) = v0;

  if (v0)
  {

    v2 = sub_10015A000;
  }

  else
  {
    v2 = sub_100142E00;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100142E00()
{
  v45 = v0;
  v1 = v0[418];
  v38 = v0[417];
  v40 = v0[419];
  v2 = v0[416];
  v3 = v0[415];
  v4 = v0[414];
  v5 = v0[412];
  v42 = v0[411];
  v6 = v0[410];
  v7 = v0[409];
  v37 = v0[408];
  v8 = v0[407];
  MusicCatalogResourceResponse.items.getter();
  sub_10034DC1C(v8);
  (*(v7 + 8))(v6, v37);
  (*(v3 + 8))(v2, v4);
  (*(v1 + 8))(v40, v38);
  if ((*(v5 + 48))(v8, 1, v42) == 1)
  {
    sub_1000095E8(v0[407], &unk_10118C170, &qword_100EBD778);
    if (qword_10117F6D0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000060E4(v9, qword_101218C28);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[464];
    if (v12)
    {
      v43 = v0[460];
      v14 = v0[456];
      v39 = v0[463];
      v41 = v0[455];
      v15 = swift_slowAlloc();
      v44[0] = swift_slowAlloc();
      *v15 = 136446466;
      v16 = MusicItemID.description.getter();
      v18 = v17;

      v19 = sub_1000105AC(v16, v18, v44);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2082;
      v20 = sub_1000105AC(v39, v13, v44);

      *(v15 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v10, v11, "No catalog item found for id: %{public}s, kind: %{public}s", v15, 0x16u);
      swift_arrayDestroy();

      (*(v14 + 8))(v43, v41);
    }

    else
    {
      v30 = v0[460];
      v31 = v0[456];
      v32 = v0[455];

      (*(v31 + 8))(v30, v32);
    }

    v33 = v0[131];
    v34 = type metadata accessor for GenericMusicItem();
    (*(*(v34 - 8) + 56))(v33, 1, 1, v34);
  }

  else
  {
    v21 = v0[413];
    v22 = v0[412];
    v23 = v0[411];
    v24 = v0[407];
    v25 = v0[131];
    (*(v0[456] + 8))(v0[460], v0[455]);

    v26 = *(v22 + 32);
    v26(v21, v24, v23);
    v26(v25, v21, v23);
    v27 = enum case for GenericMusicItem.curator(_:);
    v28 = type metadata accessor for GenericMusicItem();
    v29 = *(v28 - 8);
    (*(v29 + 104))(v25, v27, v28);
    (*(v29 + 56))(v25, 0, 1, v28);
  }

  v35 = v0[1];

  return v35();
}

uint64_t sub_100143AD4()
{
  *(*v1 + 3776) = v0;

  if (v0)
  {

    v2 = sub_10015A90C;
  }

  else
  {
    v2 = sub_100143BFC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100143BFC()
{
  v45 = v0;
  v1 = v0[405];
  v38 = v0[404];
  v40 = v0[406];
  v2 = v0[403];
  v3 = v0[402];
  v4 = v0[401];
  v5 = v0[398];
  v42 = v0[397];
  v6 = v0[396];
  v7 = v0[394];
  v37 = v0[393];
  v8 = v0[392];
  MusicCatalogResourceResponse.items.getter();
  sub_10034DC4C(v8);
  (*(v7 + 8))(v6, v37);
  (*(v3 + 8))(v2, v4);
  (*(v1 + 8))(v40, v38);
  if ((*(v5 + 48))(v8, 1, v42) == 1)
  {
    sub_1000095E8(v0[392], &qword_10118DE80, &unk_100EE4D70);
    if (qword_10117F6D0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000060E4(v9, qword_101218C28);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[464];
    if (v12)
    {
      v43 = v0[460];
      v14 = v0[456];
      v39 = v0[463];
      v41 = v0[455];
      v15 = swift_slowAlloc();
      v44[0] = swift_slowAlloc();
      *v15 = 136446466;
      v16 = MusicItemID.description.getter();
      v18 = v17;

      v19 = sub_1000105AC(v16, v18, v44);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2082;
      v20 = sub_1000105AC(v39, v13, v44);

      *(v15 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v10, v11, "No catalog item found for id: %{public}s, kind: %{public}s", v15, 0x16u);
      swift_arrayDestroy();

      (*(v14 + 8))(v43, v41);
    }

    else
    {
      v30 = v0[460];
      v31 = v0[456];
      v32 = v0[455];

      (*(v31 + 8))(v30, v32);
    }

    v33 = v0[131];
    v34 = type metadata accessor for GenericMusicItem();
    (*(*(v34 - 8) + 56))(v33, 1, 1, v34);
  }

  else
  {
    v21 = v0[400];
    v22 = v0[398];
    v23 = v0[397];
    v24 = v0[392];
    v25 = v0[131];
    (*(v0[456] + 8))(v0[460], v0[455]);

    v26 = *(v22 + 32);
    v26(v21, v24, v23);
    v26(v25, v21, v23);
    v27 = enum case for GenericMusicItem.genre(_:);
    v28 = type metadata accessor for GenericMusicItem();
    v29 = *(v28 - 8);
    (*(v29 + 104))(v25, v27, v28);
    (*(v29 + 56))(v25, 0, 1, v28);
  }

  v35 = v0[1];

  return v35();
}

uint64_t sub_1001448D0()
{
  *(*v1 + 3792) = v0;

  if (v0)
  {

    v2 = sub_10015B218;
  }

  else
  {
    v2 = sub_1001449F8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001449F8()
{
  v45 = v0;
  v1 = v0[389];
  v38 = v0[388];
  v40 = v0[390];
  v2 = v0[387];
  v3 = v0[386];
  v4 = v0[385];
  v5 = v0[382];
  v42 = v0[381];
  v6 = v0[380];
  v7 = v0[378];
  v37 = v0[377];
  v8 = v0[376];
  MusicCatalogResourceResponse.items.getter();
  sub_10034DC7C(v8);
  (*(v7 + 8))(v6, v37);
  (*(v3 + 8))(v2, v4);
  (*(v1 + 8))(v40, v38);
  if ((*(v5 + 48))(v8, 1, v42) == 1)
  {
    sub_1000095E8(v0[376], &unk_1011846B0, &unk_100ECB630);
    if (qword_10117F6D0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000060E4(v9, qword_101218C28);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[464];
    if (v12)
    {
      v43 = v0[460];
      v14 = v0[456];
      v39 = v0[463];
      v41 = v0[455];
      v15 = swift_slowAlloc();
      v44[0] = swift_slowAlloc();
      *v15 = 136446466;
      v16 = MusicItemID.description.getter();
      v18 = v17;

      v19 = sub_1000105AC(v16, v18, v44);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2082;
      v20 = sub_1000105AC(v39, v13, v44);

      *(v15 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v10, v11, "No catalog item found for id: %{public}s, kind: %{public}s", v15, 0x16u);
      swift_arrayDestroy();

      (*(v14 + 8))(v43, v41);
    }

    else
    {
      v30 = v0[460];
      v31 = v0[456];
      v32 = v0[455];

      (*(v31 + 8))(v30, v32);
    }

    v33 = v0[131];
    v34 = type metadata accessor for GenericMusicItem();
    (*(*(v34 - 8) + 56))(v33, 1, 1, v34);
  }

  else
  {
    v21 = v0[384];
    v22 = v0[382];
    v23 = v0[381];
    v24 = v0[376];
    v25 = v0[131];
    (*(v0[456] + 8))(v0[460], v0[455]);

    v26 = *(v22 + 32);
    v26(v21, v24, v23);
    v26(v25, v21, v23);
    v27 = enum case for GenericMusicItem.musicVideo(_:);
    v28 = type metadata accessor for GenericMusicItem();
    v29 = *(v28 - 8);
    (*(v29 + 104))(v25, v27, v28);
    (*(v29 + 56))(v25, 0, 1, v28);
  }

  v35 = v0[1];

  return v35();
}

uint64_t sub_1001456CC()
{
  *(*v1 + 3808) = v0;

  if (v0)
  {

    v2 = sub_10015BB24;
  }

  else
  {
    v2 = sub_1001457F4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001457F4()
{
  v45 = v0;
  v1 = v0[373];
  v38 = v0[372];
  v40 = v0[374];
  v2 = v0[371];
  v3 = v0[370];
  v4 = v0[369];
  v5 = v0[366];
  v42 = v0[365];
  v6 = v0[364];
  v7 = v0[362];
  v37 = v0[361];
  v8 = v0[360];
  MusicCatalogResourceResponse.items.getter();
  sub_10034DCAC(v8);
  (*(v7 + 8))(v6, v37);
  (*(v3 + 8))(v2, v4);
  (*(v1 + 8))(v40, v38);
  if ((*(v5 + 48))(v8, 1, v42) == 1)
  {
    sub_1000095E8(v0[360], &unk_1011803F0, &qword_100EBA6C0);
    if (qword_10117F6D0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000060E4(v9, qword_101218C28);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[464];
    if (v12)
    {
      v43 = v0[460];
      v14 = v0[456];
      v39 = v0[463];
      v41 = v0[455];
      v15 = swift_slowAlloc();
      v44[0] = swift_slowAlloc();
      *v15 = 136446466;
      v16 = MusicItemID.description.getter();
      v18 = v17;

      v19 = sub_1000105AC(v16, v18, v44);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2082;
      v20 = sub_1000105AC(v39, v13, v44);

      *(v15 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v10, v11, "No catalog item found for id: %{public}s, kind: %{public}s", v15, 0x16u);
      swift_arrayDestroy();

      (*(v14 + 8))(v43, v41);
    }

    else
    {
      v30 = v0[460];
      v31 = v0[456];
      v32 = v0[455];

      (*(v31 + 8))(v30, v32);
    }

    v33 = v0[131];
    v34 = type metadata accessor for GenericMusicItem();
    (*(*(v34 - 8) + 56))(v33, 1, 1, v34);
  }

  else
  {
    v21 = v0[368];
    v22 = v0[366];
    v23 = v0[365];
    v24 = v0[360];
    v25 = v0[131];
    (*(v0[456] + 8))(v0[460], v0[455]);

    v26 = *(v22 + 32);
    v26(v21, v24, v23);
    v26(v25, v21, v23);
    v27 = enum case for GenericMusicItem.musicMovie(_:);
    v28 = type metadata accessor for GenericMusicItem();
    v29 = *(v28 - 8);
    (*(v29 + 104))(v25, v27, v28);
    (*(v29 + 56))(v25, 0, 1, v28);
  }

  v35 = v0[1];

  return v35();
}

uint64_t sub_1001464C8()
{
  *(*v1 + 3824) = v0;

  if (v0)
  {

    v2 = sub_10015C430;
  }

  else
  {
    v2 = sub_1001465F0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001465F0()
{
  v45 = v0;
  v1 = v0[357];
  v38 = v0[356];
  v40 = v0[358];
  v2 = v0[355];
  v3 = v0[354];
  v4 = v0[353];
  v5 = v0[350];
  v42 = v0[349];
  v6 = v0[348];
  v7 = v0[346];
  v37 = v0[345];
  v8 = v0[344];
  MusicCatalogResourceResponse.items.getter();
  sub_10034DCDC(v8);
  (*(v7 + 8))(v6, v37);
  (*(v3 + 8))(v2, v4);
  (*(v1 + 8))(v40, v38);
  if ((*(v5 + 48))(v8, 1, v42) == 1)
  {
    sub_1000095E8(v0[344], &unk_1011814D0, &qword_100EC12A0);
    if (qword_10117F6D0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000060E4(v9, qword_101218C28);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[464];
    if (v12)
    {
      v43 = v0[460];
      v14 = v0[456];
      v39 = v0[463];
      v41 = v0[455];
      v15 = swift_slowAlloc();
      v44[0] = swift_slowAlloc();
      *v15 = 136446466;
      v16 = MusicItemID.description.getter();
      v18 = v17;

      v19 = sub_1000105AC(v16, v18, v44);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2082;
      v20 = sub_1000105AC(v39, v13, v44);

      *(v15 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v10, v11, "No catalog item found for id: %{public}s, kind: %{public}s", v15, 0x16u);
      swift_arrayDestroy();

      (*(v14 + 8))(v43, v41);
    }

    else
    {
      v30 = v0[460];
      v31 = v0[456];
      v32 = v0[455];

      (*(v31 + 8))(v30, v32);
    }

    v33 = v0[131];
    v34 = type metadata accessor for GenericMusicItem();
    (*(*(v34 - 8) + 56))(v33, 1, 1, v34);
  }

  else
  {
    v21 = v0[352];
    v22 = v0[350];
    v23 = v0[349];
    v24 = v0[344];
    v25 = v0[131];
    (*(v0[456] + 8))(v0[460], v0[455]);

    v26 = *(v22 + 32);
    v26(v21, v24, v23);
    v26(v25, v21, v23);
    v27 = enum case for GenericMusicItem.playlist(_:);
    v28 = type metadata accessor for GenericMusicItem();
    v29 = *(v28 - 8);
    (*(v29 + 104))(v25, v27, v28);
    (*(v29 + 56))(v25, 0, 1, v28);
  }

  v35 = v0[1];

  return v35();
}

uint64_t sub_1001472C4()
{
  *(*v1 + 3840) = v0;

  if (v0)
  {

    v2 = sub_10015CD3C;
  }

  else
  {
    v2 = sub_1001473EC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001473EC()
{
  v45 = v0;
  v1 = v0[341];
  v38 = v0[340];
  v40 = v0[342];
  v2 = v0[339];
  v3 = v0[338];
  v4 = v0[337];
  v5 = v0[335];
  v42 = v0[334];
  v6 = v0[333];
  v7 = v0[332];
  v37 = v0[331];
  v8 = v0[330];
  MusicCatalogResourceResponse.items.getter();
  sub_10034DD0C(v8);
  (*(v7 + 8))(v6, v37);
  (*(v3 + 8))(v2, v4);
  (*(v1 + 8))(v40, v38);
  if ((*(v5 + 48))(v8, 1, v42) == 1)
  {
    sub_1000095E8(v0[330], &qword_1011A4770, &qword_100EBD6E8);
    if (qword_10117F6D0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000060E4(v9, qword_101218C28);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[464];
    if (v12)
    {
      v43 = v0[460];
      v14 = v0[456];
      v39 = v0[463];
      v41 = v0[455];
      v15 = swift_slowAlloc();
      v44[0] = swift_slowAlloc();
      *v15 = 136446466;
      v16 = MusicItemID.description.getter();
      v18 = v17;

      v19 = sub_1000105AC(v16, v18, v44);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2082;
      v20 = sub_1000105AC(v39, v13, v44);

      *(v15 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v10, v11, "No catalog item found for id: %{public}s, kind: %{public}s", v15, 0x16u);
      swift_arrayDestroy();

      (*(v14 + 8))(v43, v41);
    }

    else
    {
      v30 = v0[460];
      v31 = v0[456];
      v32 = v0[455];

      (*(v31 + 8))(v30, v32);
    }

    v33 = v0[131];
    v34 = type metadata accessor for GenericMusicItem();
    (*(*(v34 - 8) + 56))(v33, 1, 1, v34);
  }

  else
  {
    v21 = v0[336];
    v22 = v0[335];
    v23 = v0[334];
    v24 = v0[330];
    v25 = v0[131];
    (*(v0[456] + 8))(v0[460], v0[455]);

    v26 = *(v22 + 32);
    v26(v21, v24, v23);
    v26(v25, v21, v23);
    v27 = enum case for GenericMusicItem.radioShow(_:);
    v28 = type metadata accessor for GenericMusicItem();
    v29 = *(v28 - 8);
    (*(v29 + 104))(v25, v27, v28);
    (*(v29 + 56))(v25, 0, 1, v28);
  }

  v35 = v0[1];

  return v35();
}

uint64_t sub_1001480C0()
{
  *(*v1 + 3856) = v0;

  if (v0)
  {

    v2 = sub_10015D648;
  }

  else
  {
    v2 = sub_1001481E8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001481E8()
{
  v45 = v0;
  v1 = v0[328];
  v38 = v0[327];
  v40 = v0[329];
  v2 = v0[326];
  v3 = v0[325];
  v4 = v0[324];
  v5 = v0[322];
  v42 = v0[321];
  v6 = v0[320];
  v7 = v0[319];
  v37 = v0[318];
  v8 = v0[317];
  MusicCatalogResourceResponse.items.getter();
  sub_10034DD3C(v8);
  (*(v7 + 8))(v6, v37);
  (*(v3 + 8))(v2, v4);
  (*(v1 + 8))(v40, v38);
  if ((*(v5 + 48))(v8, 1, v42) == 1)
  {
    sub_1000095E8(v0[317], &qword_101181BB8, &qword_100EBD6C8);
    if (qword_10117F6D0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000060E4(v9, qword_101218C28);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[464];
    if (v12)
    {
      v43 = v0[460];
      v14 = v0[456];
      v39 = v0[463];
      v41 = v0[455];
      v15 = swift_slowAlloc();
      v44[0] = swift_slowAlloc();
      *v15 = 136446466;
      v16 = MusicItemID.description.getter();
      v18 = v17;

      v19 = sub_1000105AC(v16, v18, v44);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2082;
      v20 = sub_1000105AC(v39, v13, v44);

      *(v15 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v10, v11, "No catalog item found for id: %{public}s, kind: %{public}s", v15, 0x16u);
      swift_arrayDestroy();

      (*(v14 + 8))(v43, v41);
    }

    else
    {
      v30 = v0[460];
      v31 = v0[456];
      v32 = v0[455];

      (*(v31 + 8))(v30, v32);
    }

    v33 = v0[131];
    v34 = type metadata accessor for GenericMusicItem();
    (*(*(v34 - 8) + 56))(v33, 1, 1, v34);
  }

  else
  {
    v21 = v0[323];
    v22 = v0[322];
    v23 = v0[321];
    v24 = v0[317];
    v25 = v0[131];
    (*(v0[456] + 8))(v0[460], v0[455]);

    v26 = *(v22 + 32);
    v26(v21, v24, v23);
    v26(v25, v21, v23);
    v27 = enum case for GenericMusicItem.recordLabel(_:);
    v28 = type metadata accessor for GenericMusicItem();
    v29 = *(v28 - 8);
    (*(v29 + 104))(v25, v27, v28);
    (*(v29 + 56))(v25, 0, 1, v28);
  }

  v35 = v0[1];

  return v35();
}

uint64_t sub_100148EBC()
{
  *(*v1 + 3872) = v0;

  if (v0)
  {

    v2 = sub_10015DF54;
  }

  else
  {
    v2 = sub_100148FE4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100148FE4()
{
  v45 = v0;
  v1 = v0[315];
  v38 = v0[314];
  v40 = v0[316];
  v2 = v0[313];
  v3 = v0[312];
  v4 = v0[311];
  v5 = v0[308];
  v42 = v0[307];
  v6 = v0[306];
  v7 = v0[304];
  v37 = v0[303];
  v8 = v0[302];
  MusicCatalogResourceResponse.items.getter();
  sub_10034DD6C(v8);
  (*(v7 + 8))(v6, v37);
  (*(v3 + 8))(v2, v4);
  (*(v1 + 8))(v40, v38);
  if ((*(v5 + 48))(v8, 1, v42) == 1)
  {
    sub_1000095E8(v0[302], &unk_101183960, &unk_100EBCF90);
    if (qword_10117F6D0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000060E4(v9, qword_101218C28);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[464];
    if (v12)
    {
      v43 = v0[460];
      v14 = v0[456];
      v39 = v0[463];
      v41 = v0[455];
      v15 = swift_slowAlloc();
      v44[0] = swift_slowAlloc();
      *v15 = 136446466;
      v16 = MusicItemID.description.getter();
      v18 = v17;

      v19 = sub_1000105AC(v16, v18, v44);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2082;
      v20 = sub_1000105AC(v39, v13, v44);

      *(v15 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v10, v11, "No catalog item found for id: %{public}s, kind: %{public}s", v15, 0x16u);
      swift_arrayDestroy();

      (*(v14 + 8))(v43, v41);
    }

    else
    {
      v30 = v0[460];
      v31 = v0[456];
      v32 = v0[455];

      (*(v31 + 8))(v30, v32);
    }

    v33 = v0[131];
    v34 = type metadata accessor for GenericMusicItem();
    (*(*(v34 - 8) + 56))(v33, 1, 1, v34);
  }

  else
  {
    v21 = v0[310];
    v22 = v0[308];
    v23 = v0[307];
    v24 = v0[302];
    v25 = v0[131];
    (*(v0[456] + 8))(v0[460], v0[455]);

    v26 = *(v22 + 32);
    v26(v21, v24, v23);
    v26(v25, v21, v23);
    v27 = enum case for GenericMusicItem.song(_:);
    v28 = type metadata accessor for GenericMusicItem();
    v29 = *(v28 - 8);
    (*(v29 + 104))(v25, v27, v28);
    (*(v29 + 56))(v25, 0, 1, v28);
  }

  v35 = v0[1];

  return v35();
}

uint64_t sub_100149CB8()
{
  *(*v1 + 3888) = v0;

  if (v0)
  {

    v2 = sub_10015E860;
  }

  else
  {
    v2 = sub_100149DE0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100149DE0()
{
  v45 = v0;
  v1 = v0[299];
  v38 = v0[298];
  v40 = v0[300];
  v2 = v0[297];
  v3 = v0[296];
  v4 = v0[295];
  v5 = v0[293];
  v42 = v0[292];
  v6 = v0[291];
  v7 = v0[290];
  v37 = v0[289];
  v8 = v0[288];
  MusicCatalogResourceResponse.items.getter();
  sub_10034DD9C(v8);
  (*(v7 + 8))(v6, v37);
  (*(v3 + 8))(v2, v4);
  (*(v1 + 8))(v40, v38);
  if ((*(v5 + 48))(v8, 1, v42) == 1)
  {
    sub_1000095E8(v0[288], &unk_1011838C0, &qword_100EBD688);
    if (qword_10117F6D0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000060E4(v9, qword_101218C28);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[464];
    if (v12)
    {
      v43 = v0[460];
      v14 = v0[456];
      v39 = v0[463];
      v41 = v0[455];
      v15 = swift_slowAlloc();
      v44[0] = swift_slowAlloc();
      *v15 = 136446466;
      v16 = MusicItemID.description.getter();
      v18 = v17;

      v19 = sub_1000105AC(v16, v18, v44);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2082;
      v20 = sub_1000105AC(v39, v13, v44);

      *(v15 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v10, v11, "No catalog item found for id: %{public}s, kind: %{public}s", v15, 0x16u);
      swift_arrayDestroy();

      (*(v14 + 8))(v43, v41);
    }

    else
    {
      v30 = v0[460];
      v31 = v0[456];
      v32 = v0[455];

      (*(v31 + 8))(v30, v32);
    }

    v33 = v0[131];
    v34 = type metadata accessor for GenericMusicItem();
    (*(*(v34 - 8) + 56))(v33, 1, 1, v34);
  }

  else
  {
    v21 = v0[294];
    v22 = v0[293];
    v23 = v0[292];
    v24 = v0[288];
    v25 = v0[131];
    (*(v0[456] + 8))(v0[460], v0[455]);

    v26 = *(v22 + 32);
    v26(v21, v24, v23);
    v26(v25, v21, v23);
    v27 = enum case for GenericMusicItem.station(_:);
    v28 = type metadata accessor for GenericMusicItem();
    v29 = *(v28 - 8);
    (*(v29 + 104))(v25, v27, v28);
    (*(v29 + 56))(v25, 0, 1, v28);
  }

  v35 = v0[1];

  return v35();
}

uint64_t sub_10014AAB4()
{
  *(*v1 + 3904) = v0;

  if (v0)
  {

    v2 = sub_10015F16C;
  }

  else
  {
    v2 = sub_10014ABDC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10014ABDC()
{
  v45 = v0;
  v1 = v0[286];
  v38 = v0[285];
  v40 = v0[287];
  v2 = v0[284];
  v3 = v0[283];
  v4 = v0[282];
  v5 = v0[279];
  v42 = v0[278];
  v6 = v0[277];
  v7 = v0[275];
  v37 = v0[274];
  v8 = v0[273];
  MusicCatalogResourceResponse.items.getter();
  sub_10034DDCC(v8);
  (*(v7 + 8))(v6, v37);
  (*(v3 + 8))(v2, v4);
  (*(v1 + 8))(v40, v38);
  if ((*(v5 + 48))(v8, 1, v42) == 1)
  {
    sub_1000095E8(v0[273], &unk_1011996D0, &unk_100ED8090);
    if (qword_10117F6D0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000060E4(v9, qword_101218C28);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[464];
    if (v12)
    {
      v43 = v0[460];
      v14 = v0[456];
      v39 = v0[463];
      v41 = v0[455];
      v15 = swift_slowAlloc();
      v44[0] = swift_slowAlloc();
      *v15 = 136446466;
      v16 = MusicItemID.description.getter();
      v18 = v17;

      v19 = sub_1000105AC(v16, v18, v44);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2082;
      v20 = sub_1000105AC(v39, v13, v44);

      *(v15 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v10, v11, "No catalog item found for id: %{public}s, kind: %{public}s", v15, 0x16u);
      swift_arrayDestroy();

      (*(v14 + 8))(v43, v41);
    }

    else
    {
      v30 = v0[460];
      v31 = v0[456];
      v32 = v0[455];

      (*(v31 + 8))(v30, v32);
    }

    v33 = v0[131];
    v34 = type metadata accessor for GenericMusicItem();
    (*(*(v34 - 8) + 56))(v33, 1, 1, v34);
  }

  else
  {
    v21 = v0[281];
    v22 = v0[279];
    v23 = v0[278];
    v24 = v0[273];
    v25 = v0[131];
    (*(v0[456] + 8))(v0[460], v0[455]);

    v26 = *(v22 + 32);
    v26(v21, v24, v23);
    v26(v25, v21, v23);
    v27 = enum case for GenericMusicItem.tvEpisode(_:);
    v28 = type metadata accessor for GenericMusicItem();
    v29 = *(v28 - 8);
    (*(v29 + 104))(v25, v27, v28);
    (*(v29 + 56))(v25, 0, 1, v28);
  }

  v35 = v0[1];

  return v35();
}

uint64_t sub_10014B8B0()
{
  *(*v1 + 3920) = v0;

  if (v0)
  {

    v2 = sub_10015FA78;
  }

  else
  {
    v2 = sub_10014B9D8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10014B9D8()
{
  v45 = v0;
  v1 = v0[270];
  v38 = v0[269];
  v40 = v0[271];
  v2 = v0[268];
  v3 = v0[267];
  v4 = v0[266];
  v5 = v0[263];
  v42 = v0[262];
  v6 = v0[261];
  v7 = v0[259];
  v37 = v0[258];
  v8 = v0[257];
  MusicCatalogResourceResponse.items.getter();
  sub_10034DDFC(v8);
  (*(v7 + 8))(v6, v37);
  (*(v3 + 8))(v2, v4);
  (*(v1 + 8))(v40, v38);
  if ((*(v5 + 48))(v8, 1, v42) == 1)
  {
    sub_1000095E8(v0[257], &qword_101181B78, &qword_100EBD648);
    if (qword_10117F6D0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000060E4(v9, qword_101218C28);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[464];
    if (v12)
    {
      v43 = v0[460];
      v14 = v0[456];
      v39 = v0[463];
      v41 = v0[455];
      v15 = swift_slowAlloc();
      v44[0] = swift_slowAlloc();
      *v15 = 136446466;
      v16 = MusicItemID.description.getter();
      v18 = v17;

      v19 = sub_1000105AC(v16, v18, v44);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2082;
      v20 = sub_1000105AC(v39, v13, v44);

      *(v15 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v10, v11, "No catalog item found for id: %{public}s, kind: %{public}s", v15, 0x16u);
      swift_arrayDestroy();

      (*(v14 + 8))(v43, v41);
    }

    else
    {
      v30 = v0[460];
      v31 = v0[456];
      v32 = v0[455];

      (*(v31 + 8))(v30, v32);
    }

    v33 = v0[131];
    v34 = type metadata accessor for GenericMusicItem();
    (*(*(v34 - 8) + 56))(v33, 1, 1, v34);
  }

  else
  {
    v21 = v0[265];
    v22 = v0[263];
    v23 = v0[262];
    v24 = v0[257];
    v25 = v0[131];
    (*(v0[456] + 8))(v0[460], v0[455]);

    v26 = *(v22 + 32);
    v26(v21, v24, v23);
    v26(v25, v21, v23);
    v27 = enum case for GenericMusicItem.tvSeason(_:);
    v28 = type metadata accessor for GenericMusicItem();
    v29 = *(v28 - 8);
    (*(v29 + 104))(v25, v27, v28);
    (*(v29 + 56))(v25, 0, 1, v28);
  }

  v35 = v0[1];

  return v35();
}

uint64_t sub_10014C6AC()
{
  *(*v1 + 3936) = v0;

  if (v0)
  {

    v2 = sub_100160384;
  }

  else
  {
    v2 = sub_10014C7D4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10014C7D4()
{
  v45 = v0;
  v1 = v0[254];
  v38 = v0[253];
  v40 = v0[255];
  v2 = v0[252];
  v3 = v0[251];
  v4 = v0[250];
  v5 = v0[247];
  v42 = v0[246];
  v6 = v0[245];
  v7 = v0[243];
  v37 = v0[242];
  v8 = v0[241];
  MusicCatalogResourceResponse.items.getter();
  sub_10034DE2C(v8);
  (*(v7 + 8))(v6, v37);
  (*(v3 + 8))(v2, v4);
  (*(v1 + 8))(v40, v38);
  if ((*(v5 + 48))(v8, 1, v42) == 1)
  {
    sub_1000095E8(v0[241], &unk_1011A38A0, &qword_100EE5560);
    if (qword_10117F6D0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000060E4(v9, qword_101218C28);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[464];
    if (v12)
    {
      v43 = v0[460];
      v14 = v0[456];
      v39 = v0[463];
      v41 = v0[455];
      v15 = swift_slowAlloc();
      v44[0] = swift_slowAlloc();
      *v15 = 136446466;
      v16 = MusicItemID.description.getter();
      v18 = v17;

      v19 = sub_1000105AC(v16, v18, v44);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2082;
      v20 = sub_1000105AC(v39, v13, v44);

      *(v15 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v10, v11, "No catalog item found for id: %{public}s, kind: %{public}s", v15, 0x16u);
      swift_arrayDestroy();

      (*(v14 + 8))(v43, v41);
    }

    else
    {
      v30 = v0[460];
      v31 = v0[456];
      v32 = v0[455];

      (*(v31 + 8))(v30, v32);
    }

    v33 = v0[131];
    v34 = type metadata accessor for GenericMusicItem();
    (*(*(v34 - 8) + 56))(v33, 1, 1, v34);
  }

  else
  {
    v21 = v0[249];
    v22 = v0[247];
    v23 = v0[246];
    v24 = v0[241];
    v25 = v0[131];
    (*(v0[456] + 8))(v0[460], v0[455]);

    v26 = *(v22 + 32);
    v26(v21, v24, v23);
    v26(v25, v21, v23);
    v27 = enum case for GenericMusicItem.tvShow(_:);
    v28 = type metadata accessor for GenericMusicItem();
    v29 = *(v28 - 8);
    (*(v29 + 104))(v25, v27, v28);
    (*(v29 + 56))(v25, 0, 1, v28);
  }

  v35 = v0[1];

  return v35();
}

uint64_t sub_10014D4A8()
{
  *(*v1 + 3952) = v0;

  if (v0)
  {

    v2 = sub_100160C90;
  }

  else
  {
    v2 = sub_10014D5D0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10014D5D0()
{
  v45 = v0;
  v1 = v0[238];
  v38 = v0[237];
  v40 = v0[239];
  v2 = v0[236];
  v3 = v0[235];
  v4 = v0[234];
  v5 = v0[232];
  v42 = v0[231];
  v6 = v0[230];
  v7 = v0[229];
  v37 = v0[228];
  v8 = v0[227];
  MusicCatalogResourceResponse.items.getter();
  sub_10034DE5C(v8);
  (*(v7 + 8))(v6, v37);
  (*(v3 + 8))(v2, v4);
  (*(v1 + 8))(v40, v38);
  if ((*(v5 + 48))(v8, 1, v42) == 1)
  {
    sub_1000095E8(v0[227], &qword_101181B48, &qword_100EBD608);
    if (qword_10117F6D0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000060E4(v9, qword_101218C28);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[464];
    if (v12)
    {
      v43 = v0[460];
      v14 = v0[456];
      v39 = v0[463];
      v41 = v0[455];
      v15 = swift_slowAlloc();
      v44[0] = swift_slowAlloc();
      *v15 = 136446466;
      v16 = MusicItemID.description.getter();
      v18 = v17;

      v19 = sub_1000105AC(v16, v18, v44);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2082;
      v20 = sub_1000105AC(v39, v13, v44);

      *(v15 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v10, v11, "No catalog item found for id: %{public}s, kind: %{public}s", v15, 0x16u);
      swift_arrayDestroy();

      (*(v14 + 8))(v43, v41);
    }

    else
    {
      v30 = v0[460];
      v31 = v0[456];
      v32 = v0[455];

      (*(v31 + 8))(v30, v32);
    }

    v33 = v0[131];
    v34 = type metadata accessor for GenericMusicItem();
    (*(*(v34 - 8) + 56))(v33, 1, 1, v34);
  }

  else
  {
    v21 = v0[233];
    v22 = v0[232];
    v23 = v0[231];
    v24 = v0[227];
    v25 = v0[131];
    (*(v0[456] + 8))(v0[460], v0[455]);

    v26 = *(v22 + 32);
    v26(v21, v24, v23);
    v26(v25, v21, v23);
    v27 = enum case for GenericMusicItem.uploadedAudio(_:);
    v28 = type metadata accessor for GenericMusicItem();
    v29 = *(v28 - 8);
    (*(v29 + 104))(v25, v27, v28);
    (*(v29 + 56))(v25, 0, 1, v28);
  }

  v35 = v0[1];

  return v35();
}

uint64_t sub_10014E2A4()
{
  *(*v1 + 3968) = v0;

  if (v0)
  {

    v2 = sub_10016159C;
  }

  else
  {
    v2 = sub_10014E3CC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10014E3CC()
{
  v45 = v0;
  v1 = v0[225];
  v38 = v0[224];
  v40 = v0[226];
  v2 = v0[223];
  v3 = v0[222];
  v4 = v0[221];
  v5 = v0[219];
  v42 = v0[218];
  v6 = v0[217];
  v7 = v0[216];
  v37 = v0[215];
  v8 = v0[214];
  MusicCatalogResourceResponse.items.getter();
  sub_10034DE8C(v8);
  (*(v7 + 8))(v6, v37);
  (*(v3 + 8))(v2, v4);
  (*(v1 + 8))(v40, v38);
  if ((*(v5 + 48))(v8, 1, v42) == 1)
  {
    sub_1000095E8(v0[214], &qword_101181B28, &qword_100EBD5E8);
    if (qword_10117F6D0 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000060E4(v9, qword_101218C28);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[464];
    if (v12)
    {
      v43 = v0[460];
      v14 = v0[456];
      v39 = v0[463];
      v41 = v0[455];
      v15 = swift_slowAlloc();
      v44[0] = swift_slowAlloc();
      *v15 = 136446466;
      v16 = MusicItemID.description.getter();
      v18 = v17;

      v19 = sub_1000105AC(v16, v18, v44);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2082;
      v20 = sub_1000105AC(v39, v13, v44);

      *(v15 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v10, v11, "No catalog item found for id: %{public}s, kind: %{public}s", v15, 0x16u);
      swift_arrayDestroy();

      (*(v14 + 8))(v43, v41);
    }

    else
    {
      v30 = v0[460];
      v31 = v0[456];
      v32 = v0[455];

      (*(v31 + 8))(v30, v32);
    }

    v33 = v0[131];
    v34 = type metadata accessor for GenericMusicItem();
    (*(*(v34 - 8) + 56))(v33, 1, 1, v34);
  }

  else
  {
    v21 = v0[220];
    v22 = v0[219];
    v23 = v0[218];
    v24 = v0[214];
    v25 = v0[131];
    (*(v0[456] + 8))(v0[460], v0[455]);

    v26 = *(v22 + 32);
    v26(v21, v24, v23);
    v26(v25, v21, v23);
    v27 = enum case for GenericMusicItem.uploadedVideo(_:);
    v28 = type metadata accessor for GenericMusicItem();
    v29 = *(v28 - 8);
    (*(v29 + 104))(v25, v27, v28);
    (*(v29 + 56))(v25, 0, 1, v28);
  }

  v35 = v0[1];

  return v35();
}

uint64_t sub_10014F0A0()
{
  *(*v1 + 4008) = v0;

  if (v0)
  {
    v2 = sub_100161EA8;
  }

  else
  {
    v2 = sub_10014F1B4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10014F1B4()
{
  v63 = v0;
  v1 = v0[443];
  v2 = v0[440];
  v3 = v0[439];
  v4 = v0[436];
  v58 = v0[206];
  v60 = v0[442];
  v5 = v0[205];
  v54 = v0[438];
  v56 = v0[204];
  v6 = v0[203];
  v7 = v0[202];
  v8 = v0[201];
  MusicLibraryResponse.items.getter();
  sub_10034DA18(v4);
  (*(v3 + 8))(v2, v54);
  (*(v7 + 8))(v6, v8);
  (*(v5 + 8))(v58, v56);
  if ((*(v1 + 48))(v4, 1, v60) == 1)
  {
    sub_1000095E8(v0[436], &unk_101184730, &unk_100ECB920);
    if (qword_10117F6D0 != -1)
    {
      swift_once();
    }

    v9 = v0[498];
    v10 = v0[213];
    v11 = v0[209];
    v12 = v0[207];
    v13 = type metadata accessor for Logger();
    sub_1000060E4(v13, qword_101218C28);
    v9(v11, v10, v12);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v52 = v0[498];
      v16 = v0[497];
      v59 = v0[455];
      v61 = v0[460];
      v55 = v0[213];
      v57 = v0[456];
      v17 = v0[210];
      v53 = v15;
      v18 = v0[209];
      v19 = v0[208];
      v20 = v0[207];
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v62 = v22;
      *v21 = 134349314;
      *(v21 + 4) = v16;
      *(v21 + 12) = 2082;
      v52(v17, v18, v20);
      v23 = String.init<A>(describing:)();
      v25 = v24;
      v26 = *(v19 + 8);
      v26(v18, v20);
      v27 = sub_1000105AC(v23, v25, &v62);

      *(v21 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v14, v53, "No library item found for id: %{public}lld, kind: %{public}s", v21, 0x16u);
      sub_10000959C(v22);

      v26(v55, v20);
      (*(v57 + 8))(v61, v59);
    }

    else
    {
      v40 = v0[460];
      v41 = v0[456];
      v42 = v0[455];
      v43 = v0[213];
      v44 = v0[209];
      v45 = v0[208];
      v46 = v0[207];

      v47 = *(v45 + 8);
      v47(v44, v46);
      v47(v43, v46);
      (*(v41 + 8))(v40, v42);
    }

    v48 = v0[131];
    v49 = type metadata accessor for GenericMusicItem();
    (*(*(v49 - 8) + 56))(v48, 1, 1, v49);
  }

  else
  {
    v28 = v0[460];
    v29 = v0[456];
    v30 = v0[455];
    v31 = v0[444];
    v32 = v0[443];
    v33 = v0[442];
    v34 = v0[436];
    v35 = v0[131];
    (*(v0[208] + 8))(v0[213], v0[207]);
    (*(v29 + 8))(v28, v30);
    v36 = *(v32 + 32);
    v36(v31, v34, v33);
    v36(v35, v31, v33);
    v37 = enum case for GenericMusicItem.album(_:);
    v38 = type metadata accessor for GenericMusicItem();
    v39 = *(v38 - 8);
    (*(v39 + 104))(v35, v37, v38);
    (*(v39 + 56))(v35, 0, 1, v38);
  }

  v50 = v0[1];

  return v50();
}