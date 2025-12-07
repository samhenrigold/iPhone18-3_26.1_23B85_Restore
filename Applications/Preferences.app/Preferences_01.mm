ValueMetadata *sub_100022744()
{
  result = qword_10015B500;
  if (!qword_10015B500)
  {
    result = &type metadata for PrimarySettingsListValueLinkModel;
    atomic_store(&type metadata for PrimarySettingsListValueLinkModel, &qword_10015B500);
  }

  return result;
}

ValueMetadata *sub_100022774()
{
  result = qword_10015B4F0;
  if (!qword_10015B4F0)
  {
    result = &type metadata for PrimarySettingsListLinkModel;
    atomic_store(&type metadata for PrimarySettingsListLinkModel, &qword_10015B4F0);
  }

  return result;
}

ValueMetadata *sub_1000227A4()
{
  result = qword_10015B4F8;
  if (!qword_10015B4F8)
  {
    result = &type metadata for PrimarySettingsListBadgedLinkModel;
    atomic_store(&type metadata for PrimarySettingsListBadgedLinkModel, &qword_10015B4F8);
  }

  return result;
}

ValueMetadata *sub_1000227D4()
{
  result = qword_10015B508;
  if (!qword_10015B508)
  {
    result = &type metadata for PrimarySettingsListSubtitleLinkModel;
    atomic_store(&type metadata for PrimarySettingsListSubtitleLinkModel, &qword_10015B508);
  }

  return result;
}

uint64_t type metadata accessor for PrimarySettingsListSection(uint64_t a1)
{
  result = qword_10015C058;
  if (!qword_10015C058)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100022860(uint64_t a1)
{
  sub_1000228E4(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PrimarySettingsListSectionModel(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000228E4(uint64_t a1)
{
  if (!qword_10015B9B0)
  {
    type metadata accessor for SettingsAppModel(255);
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &qword_10015B9B0);
    }
  }
}

unint64_t sub_100022944()
{
  result = qword_10015BF38;
  if (!qword_10015BF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015BF38);
  }

  return result;
}

unint64_t sub_100022998()
{
  result = qword_10015B368;
  if (!qword_10015B368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015B368);
  }

  return result;
}

uint64_t type metadata accessor for FamilyListItemProvider(uint64_t a1)
{
  result = qword_1001607B0;
  if (!qword_1001607B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100022AD0(uint64_t a1)
{
  result = type metadata accessor for FamilyRowStatus();
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

uint64_t sub_100022B88(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 1;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 6;
  static FamilySettingsFactory.sharedProvider.getter();
  sub_100018544(v6, v6[3]);
  dispatch thunk of FamilySettingsViewsProtocol.rowStatus.getter();
  sub_10000665C(v6);
  v3 = (a2 + OBJC_IVAR____TtC11SettingsApp22FamilyListItemProvider_familyRowInfo);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  *(a2 + OBJC_IVAR____TtC11SettingsApp22FamilyListItemProvider_invalidator + 8) = 0;
  v4 = swift_unknownObjectWeakInit();
  *(a2 + OBJC_IVAR____TtC11SettingsApp22FamilyListItemProvider_notificationTask) = 0;
  *(v4 + 8) = &off_100150230;
  swift_unknownObjectWeakAssign();
  return a2;
}

void *sub_100022C64(void *result, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  v4 = result[2];
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v8 = result + 4;
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = *v8;
    v11 = *(*v8 + 16);
    v12 = v9[2];
    if (__OFADD__(v12, v11))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v12 + v11 <= v9[3] >> 1)
    {
      if (*(v10 + 16))
      {
        goto LABEL_11;
      }
    }

    else
    {
      result = a2();
      v9 = result;
      if (*(v10 + 16))
      {
LABEL_11:
        if ((v9[3] >> 1) - v9[2] < v11)
        {
          goto LABEL_19;
        }

        sub_10004DED0(a3, a4);
        swift_arrayInitWithCopy();

        if (v11)
        {
          v13 = v9[2];
          v14 = __OFADD__(v13, v11);
          v15 = v13 + v11;
          if (v14)
          {
            goto LABEL_20;
          }

          v9[2] = v15;
        }

        goto LABEL_4;
      }
    }

    if (v11)
    {
      goto LABEL_18;
    }

LABEL_4:
    ++v8;
    if (!--v4)
    {
      return v9;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

void *sub_100022DB8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_10004DED0(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10004DED0(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t type metadata accessor for CoreFollowUpSectionModelProvider(uint64_t a1)
{
  result = qword_10015FA88;
  if (!qword_10015FA88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100022F94(uint64_t a1)
{
  sub_1000231B0(319, &unk_10015F8A0, &qword_10015C900, &qword_1001123C0, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_1000231B0(319, &unk_10015F8B0, &unk_10015FAA0, qword_100112870, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_1000231B0(319, &unk_10015F8C0, qword_10015FAB0, &unk_100115D00, &type metadata accessor for AsyncStream);
      if (v3 <= 0x3F)
      {
        sub_1000231B0(319, &unk_10015F8D0, qword_10015FAB0, &unk_100115D00, &type metadata accessor for AsyncStream.Continuation);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1000231B0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100052374(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_100023214(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_100052374(a3, a4);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_100023268(uint64_t a1, int a2, uint64_t a3)
{
  v21 = a2;
  v20[1] = a1;
  v4 = sub_10004DED0(&unk_10015EA10, &unk_1001170D0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (v20 - v6);
  v22 = sub_10004DED0(&unk_10015F990, &unk_100115CF0);
  v8 = *(v22 - 8);
  __chkstk_darwin(v22);
  v10 = v20 - v9;
  v11 = sub_10004DED0(&qword_10015EA20, &unk_1001170E0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v20 - v13;
  *(a3 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(a3 + 40) = 0;
  v15 = OBJC_IVAR____TtC11SettingsApp32CoreFollowUpSectionModelProvider_updateStream;
  v16 = sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  (*(*(v16 - 8) + 56))(a3 + v15, 1, 1, v16);
  v17 = OBJC_IVAR____TtC11SettingsApp32CoreFollowUpSectionModelProvider_updateStreamContinuation;
  v18 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  (*(*(v18 - 8) + 56))(a3 + v17, 1, 1, v18);
  *(a3 + OBJC_IVAR____TtC11SettingsApp32CoreFollowUpSectionModelProvider_observationTasks) = _swiftEmptyArrayStorage;
  *(a3 + 24) = &off_100150230;
  swift_unknownObjectWeakAssign();
  *(a3 + 32) = v21;
  *v7 = 1;
  (*(v5 + 104))(v7, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v4);
  sub_10004DED0(qword_10015FAB0, &unk_100115D00);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v5 + 8))(v7, v4);
  (*(v12 + 32))(a3 + OBJC_IVAR____TtC11SettingsApp32CoreFollowUpSectionModelProvider_modelStream, v14, v11);
  (*(v8 + 32))(a3 + OBJC_IVAR____TtC11SettingsApp32CoreFollowUpSectionModelProvider_modelStreamContinuation, v10, v22);
  return a3;
}

uint64_t type metadata accessor for CoreFollowUpNoGroupSectionCollectionModelProvider(uint64_t a1)
{
  result = qword_10015F890;
  if (!qword_10015F890)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10002367C(uint64_t a1)
{
  sub_1000231B0(319, &unk_10015F8A0, &qword_10015C900, &qword_1001123C0, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_1000231B0(319, &unk_10015F8B0, &unk_10015FAA0, qword_100112870, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_1000231B0(319, &unk_10015F8C0, qword_10015FAB0, &unk_100115D00, &type metadata accessor for AsyncStream);
      if (v3 <= 0x3F)
      {
        sub_1000231B0(319, &unk_10015F8D0, qword_10015FAB0, &unk_100115D00, &type metadata accessor for AsyncStream.Continuation);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_100023898(uint64_t a1, uint64_t a2, int a3)
{
  v21 = a3;
  v20[0] = a2;
  v20[1] = a1;
  v4 = sub_10004DED0(&unk_10015EA10, &unk_1001170D0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (v20 - v6);
  v22 = sub_10004DED0(&unk_10015F990, &unk_100115CF0);
  v8 = *(v22 - 8);
  __chkstk_darwin(v22);
  v10 = v20 - v9;
  v11 = sub_10004DED0(&qword_10015EA20, &unk_1001170E0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v20 - v13;
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 32) = 0;
  v15 = OBJC_IVAR____TtC11SettingsApp49CoreFollowUpNoGroupSectionCollectionModelProvider_updateStream;
  v16 = sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  (*(*(v16 - 8) + 56))(v3 + v15, 1, 1, v16);
  v17 = OBJC_IVAR____TtC11SettingsApp49CoreFollowUpNoGroupSectionCollectionModelProvider_updateStreamContinuation;
  v18 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  (*(*(v18 - 8) + 56))(v3 + v17, 1, 1, v18);
  *(v3 + OBJC_IVAR____TtC11SettingsApp49CoreFollowUpNoGroupSectionCollectionModelProvider_observationTasks) = _swiftEmptyArrayStorage;
  *(v3 + 24) = v20[0];
  swift_unknownObjectWeakAssign();
  *(v3 + OBJC_IVAR____TtC11SettingsApp49CoreFollowUpNoGroupSectionCollectionModelProvider_group) = v21;
  *v7 = 1;
  (*(v5 + 104))(v7, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v4);
  sub_10004DED0(qword_10015FAB0, &unk_100115D00);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v5 + 8))(v7, v4);
  (*(v12 + 32))(v3 + OBJC_IVAR____TtC11SettingsApp49CoreFollowUpNoGroupSectionCollectionModelProvider_modelStream, v14, v11);
  (*(v8 + 32))(v3 + OBJC_IVAR____TtC11SettingsApp49CoreFollowUpNoGroupSectionCollectionModelProvider_modelStreamContinuation, v10, v22);
  return v3;
}

uint64_t type metadata accessor for ConnectedHeadphonesSectionModelProvider(uint64_t a1)
{
  result = qword_10015F6B8;
  if (!qword_10015F6B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100023CA8()
{
  v1 = OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel____lazy_storage___connectedHeadphonesSectionModelProvider;
  if (*(v0 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel____lazy_storage___connectedHeadphonesSectionModelProvider))
  {
    v2 = *(v0 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel____lazy_storage___connectedHeadphonesSectionModelProvider);
  }

  else
  {
    type metadata accessor for ConnectedHeadphonesSectionModelProvider(0);
    v3 = swift_allocObject();

    v2 = sub_100023E64(v4, v3);

    *(v0 + v1) = v2;
  }

  return v2;
}

void sub_100023D38(uint64_t a1)
{
  sub_10001D810(319, &unk_10015C500, &type metadata accessor for AsyncStream);
  if (v1 <= 0x3F)
  {
    sub_10001D810(319, &unk_10015C358, &type metadata accessor for AsyncStream.Continuation);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_100023E64(uint64_t a1, uint64_t a2)
{
  v16[1] = a1;
  v3 = sub_10004DED0(&qword_10015C580, &unk_1001123B0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (v16 - v5);
  v7 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v16 - v9;
  v11 = sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v16 - v13;
  *(a2 + 16) = xmmword_100115880;
  *(a2 + 32) = 3;
  *(a2 + 48) = 0;
  swift_unknownObjectWeakInit();
  *(a2 + 56) = _swiftEmptyArrayStorage;
  *(a2 + 64) = 0;
  *(a2 + OBJC_IVAR____TtC11SettingsApp39ConnectedHeadphonesSectionModelProvider_observationTask) = 0;
  *(a2 + 48) = &off_100150230;
  swift_unknownObjectWeakAssign();
  *v6 = 1;
  (*(v4 + 104))(v6, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v3);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v4 + 8))(v6, v3);
  (*(v12 + 32))(a2 + OBJC_IVAR____TtC11SettingsApp39ConnectedHeadphonesSectionModelProvider_deviceChangeStream, v14, v11);
  (*(v8 + 32))(a2 + OBJC_IVAR____TtC11SettingsApp39ConnectedHeadphonesSectionModelProvider_deviceChangeStreamContinuation, v10, v7);
  return a2;
}

uint64_t type metadata accessor for BluetoothListItemProvider(uint64_t a1)
{
  result = qword_100160230;
  if (!qword_100160230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100024254(uint64_t a1)
{
  sub_10001D810(319, &unk_10015C500, &type metadata accessor for AsyncStream);
  if (v1 <= 0x3F)
  {
    sub_10001D810(319, &unk_10015C358, &type metadata accessor for AsyncStream.Continuation);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_10002437C(uint64_t a1, uint64_t a2)
{
  v16[1] = a1;
  v3 = sub_10004DED0(&qword_10015C580, &unk_1001123B0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (v16 - v5);
  v7 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v16 - v9;
  v11 = sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v16 - v13;
  *(a2 + 16) = 5;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 6;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 80) = 0;
  swift_unknownObjectWeakInit();
  *(a2 + OBJC_IVAR____TtC11SettingsApp25BluetoothListItemProvider_observationTask) = 0;
  *(a2 + 80) = &off_100150230;
  swift_unknownObjectWeakAssign();
  *v6 = 1;
  (*(v4 + 104))(v6, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v3);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v4 + 8))(v6, v3);
  (*(v12 + 32))(a2 + OBJC_IVAR____TtC11SettingsApp25BluetoothListItemProvider_stateChangeStream, v14, v11);
  (*(v8 + 32))(a2 + OBJC_IVAR____TtC11SettingsApp25BluetoothListItemProvider_stateChangeStreamContinuation, v10, v7);
  return a2;
}

uint64_t type metadata accessor for VPNListItemProvider(uint64_t a1)
{
  result = qword_100160D70;
  if (!qword_100160D70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000246E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_100052374(&qword_10015EA08, &unk_100115CE0);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_10002474C(uint64_t a1)
{
  sub_1000246E0(319, &qword_100160D80, &type metadata accessor for AsyncStream);
  if (v1 <= 0x3F)
  {
    sub_1000246E0(319, &unk_100160D88, &type metadata accessor for AsyncStream.Continuation);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1000248B0(uint64_t a1, uint64_t a2)
{
  v16[1] = a1;
  v3 = sub_10004DED0(&qword_10015E9F0, &qword_100115CC8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (v16 - v5);
  v7 = sub_10004DED0(&qword_10015E9F8, &unk_100115CD0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v16 - v9;
  v11 = sub_10004DED0(&qword_10015EA00, &qword_100118250);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v16 - v13;
  *(a2 + 16) = 8;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 6;
  *(a2 + 56) = xmmword_100115890;
  *(a2 + 80) = 0;
  swift_unknownObjectWeakInit();
  *(a2 + 88) = 0;
  *(a2 + OBJC_IVAR____TtC11SettingsApp19VPNListItemProvider_observationTask) = 0;
  *(a2 + OBJC_IVAR____TtC11SettingsApp19VPNListItemProvider____lazy_storage___toggleState) = 0;
  *(a2 + 80) = &off_100150230;
  swift_unknownObjectWeakAssign();
  *v6 = 1;
  (*(v4 + 104))(v6, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v3);
  sub_10004DED0(&qword_10015EA08, &unk_100115CE0);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v4 + 8))(v6, v3);
  (*(v12 + 32))(a2 + OBJC_IVAR____TtC11SettingsApp19VPNListItemProvider_connectivityUpdateStream, v14, v11);
  (*(v8 + 32))(a2 + OBJC_IVAR____TtC11SettingsApp19VPNListItemProvider_connectivityUpdateStreamContinuation, v10, v7);
  return a2;
}

uint64_t type metadata accessor for GeneralSettingsListItemProvider(uint64_t a1)
{
  result = qword_1001608C8;
  if (!qword_1001608C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100024C10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for Bool);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100024C64(uint64_t a1)
{
  sub_100024C10(319, &qword_10015FD78, &type metadata accessor for AsyncStream);
  if (v1 <= 0x3F)
  {
    sub_100024C10(319, &qword_10015FD80, &type metadata accessor for AsyncStream.Continuation);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

id sub_100024D8C(uint64_t a1, _BYTE *a2)
{
  v17 = a1;
  ObjectType = swift_getObjectType();
  v3 = sub_10004DED0(&qword_10015E9D8, &unk_100115CB0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v17 - v5);
  v7 = sub_10004DED0(&unk_10015E9E0, &unk_1001173F0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - v9;
  v11 = sub_10004DED0(&unk_10015FDF0, &qword_100115CC0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v17 - v13;
  v15 = &a2[OBJC_IVAR____TtC11SettingsApp31GeneralSettingsListItemProvider_id];
  *v15 = 15;
  *(v15 + 1) = 0;
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  v15[32] = 6;
  a2[OBJC_IVAR____TtC11SettingsApp31GeneralSettingsListItemProvider_badgedForSoftwareUpdate] = 0;
  *&a2[OBJC_IVAR____TtC11SettingsApp31GeneralSettingsListItemProvider_softwareUpdateClient] = 0;
  *&a2[OBJC_IVAR____TtC11SettingsApp31GeneralSettingsListItemProvider_invalidator + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = &off_100150230;
  swift_unknownObjectWeakAssign();
  *v6 = 1;
  (*(v4 + 104))(v6, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v3);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v4 + 8))(v6, v3);
  (*(v12 + 32))(&a2[OBJC_IVAR____TtC11SettingsApp31GeneralSettingsListItemProvider_shouldBadgeStream], v14, v11);
  (*(v8 + 32))(&a2[OBJC_IVAR____TtC11SettingsApp31GeneralSettingsListItemProvider_shouldBadgeStreamContinuation], v10, v7);
  v19.receiver = a2;
  v19.super_class = ObjectType;
  return objc_msgSendSuper2(&v19, "init", v17);
}

uint64_t type metadata accessor for WalletAndApplePayOrPaymentAndContactlessListItemProvider(uint64_t a1)
{
  result = qword_100160F28;
  if (!qword_100160F28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100025148(uint64_t a1)
{
  sub_100023214(319, &unk_10015F8A0, &qword_10015C900, &qword_1001123C0);
  if (v1 <= 0x3F)
  {
    sub_100023214(319, &unk_10015F8B0, &unk_10015FAA0, qword_100112870);
    if (v2 <= 0x3F)
    {
      sub_100025324(319, &qword_100160F38, &type metadata accessor for AsyncStream);
      if (v3 <= 0x3F)
      {
        sub_100025324(319, &unk_100160F40, &type metadata accessor for AsyncStream.Continuation);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_100025324(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for PaymentAndContactlessState);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100025378(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v3 = sub_10004DED0(&qword_10015E9A0, &qword_100115C78);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v19 - v5);
  v20 = sub_10004DED0(&qword_10015E9A8, &unk_100115C80);
  v7 = *(v20 - 8);
  __chkstk_darwin(v20);
  v9 = &v19 - v8;
  v10 = sub_10004DED0(&qword_10015E9B0, &qword_100118370);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - v12;
  *(a2 + 16) = 32;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 6;
  *(a2 + 64) = 0;
  swift_unknownObjectWeakInit();
  v14 = OBJC_IVAR____TtC11SettingsApp56WalletAndApplePayOrPaymentAndContactlessListItemProvider_updateStream;
  v15 = sub_10004DED0(&qword_10015C900, &qword_1001123C0);
  (*(*(v15 - 8) + 56))(a2 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtC11SettingsApp56WalletAndApplePayOrPaymentAndContactlessListItemProvider_updateStreamContinuation;
  v17 = sub_10004DED0(&unk_10015FAA0, qword_100112870);
  (*(*(v17 - 8) + 56))(a2 + v16, 1, 1, v17);
  *(a2 + OBJC_IVAR____TtC11SettingsApp56WalletAndApplePayOrPaymentAndContactlessListItemProvider_appSettingsContext) = 0;
  *(a2 + OBJC_IVAR____TtC11SettingsApp56WalletAndApplePayOrPaymentAndContactlessListItemProvider_observationTasks) = _swiftEmptyArrayStorage;
  *(a2 + 64) = &off_100150230;
  swift_unknownObjectWeakAssign();
  *v6 = 1;
  (*(v4 + 104))(v6, enum case for AsyncStream.Continuation.BufferingPolicy.bufferingNewest<A>(_:), v3);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v4 + 8))(v6, v3);
  (*(v11 + 32))(a2 + OBJC_IVAR____TtC11SettingsApp56WalletAndApplePayOrPaymentAndContactlessListItemProvider_stateUpdateStream, v13, v10);
  (*(v7 + 32))(a2 + OBJC_IVAR____TtC11SettingsApp56WalletAndApplePayOrPaymentAndContactlessListItemProvider_stateUpdateStreamContinuation, v9, v20);
  return a2;
}

uint64_t sub_100025750(uint64_t a1)
{
  v1 = *(a1 + 16) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_100025790()
{
  _StringGuts.grow(_:)(26);
  v1 = _typeName(_:qualified:)();

  v8 = v1;
  v2._object = 0x80000001001212A0;
  v2._countAndFlagsBits = 0xD000000000000014;
  String.append(_:)(v2);
  v3 = v0[5];
  v4 = v0[6];
  sub_100018544(v0 + 2, v3);
  v5._countAndFlagsBits = (*(v4 + 16))(v3, v4);
  String.append(_:)(v5);

  v6._countAndFlagsBits = 32032;
  v6._object = 0xE200000000000000;
  String.append(_:)(v6);
  return v8;
}

uint64_t sub_100025894(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a3;
  v13 = _typeName(_:qualified:)();
  v6._countAndFlagsBits = 0x203A6469207B20;
  v6._object = 0xE700000000000000;
  String.append(_:)(v6);
  sub_100025974(a1, a2, v3);
  v7 = sub_10002598C(a1, a2, v3);
  v9 = v8;
  sub_100025CD8(a1, a2, v3);
  v10._countAndFlagsBits = v7;
  v10._object = v9;
  String.append(_:)(v10);

  v11._countAndFlagsBits = 32032;
  v11._object = 0xE200000000000000;
  String.append(_:)(v11);
  return v13;
}

uint64_t sub_100025974(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

unint64_t sub_10002598C(uint64_t a1, void *a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    _StringGuts.grow(_:)(29);

    v5 = 0xD00000000000001BLL;
LABEL_5:
    v8 = v5;
    v6._countAndFlagsBits = a1;
    v6._object = a2;
    String.append(_:)(v6);
    return v8;
  }

  if (a3 == 2)
  {
    _StringGuts.grow(_:)(24);

    v5 = 0xD000000000000016;
    goto LABEL_5;
  }

  result = 0x7974697275636573;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
      result = 0x6F46656369766564;
      break;
    case 6:
      result = 0xD000000000000019;
      break;
    case 7:
      result = 0xD00000000000001ALL;
      break;
    case 8:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0xD000000000000013;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
    case 15:
      result = 0xD000000000000012;
      break;
    case 13:
      result = 0x6C616E6F73726570;
      break;
    case 16:
      result = 0x65636976726573;
      break;
    case 17:
      result = 1936748641;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_100025CD8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

unint64_t sub_100025CF0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100025DBC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10001EE30(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000665C(v11);
  return v7;
}

unint64_t sub_100025DBC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10002D948(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_100025EC8(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_100025EF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10004DED0(&unk_10015FB70, &unk_100112010);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100025FD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10004DED0(&unk_10015FB70, &unk_100112010);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1000260A0(uint64_t a1)
{
  v2 = sub_10004DED0(&qword_10015BDA8, &unk_100111BF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_100026144(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_10004DED0(a5, a6);
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

uint64_t sub_100026320(uint64_t a1, uint64_t a2)
{
  swift_getDynamicType();
  v15 = _typeName(_:qualified:)();
  v4._countAndFlagsBits = 0x203A6469207B20;
  v4._object = 0xE700000000000000;
  String.append(_:)(v4);
  v5 = (*(a2 + 8))(a1, a2);
  v7 = v6;
  LOBYTE(a2) = v8;
  v9 = sub_10002598C(v5, v6, v8);
  v11 = v10;
  sub_100025CD8(v5, v7, a2);
  v12._countAndFlagsBits = v9;
  v12._object = v11;
  String.append(_:)(v12);

  v13._countAndFlagsBits = 32032;
  v13._object = 0xE200000000000000;
  String.append(_:)(v13);
  return v15;
}

uint64_t sub_100026414()
{
  v1 = *(*v0 + 16);
  sub_100025974(v1, *(*v0 + 24), *(*v0 + 32));
  return v1;
}

uint64_t sub_100026460()
{
  v25[0] = 0;
  v25[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(39);
  v1 = _typeName(_:qualified:)();
  v3 = v2;

  v29 = v1;
  v30 = v3;
  v4._countAndFlagsBits = 0x203A6469207B20;
  v4._object = 0xE700000000000000;
  String.append(_:)(v4);
  v5._countAndFlagsBits = sub_10002598C(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  String.append(_:)(v5);

  v6._object = 0x8000000100121110;
  v6._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v6);
  v7 = *(v0 + 40);
  v8 = *(v7 + 16);
  v9 = _swiftEmptyArrayStorage;
  if (v8)
  {
    v28 = _swiftEmptyArrayStorage;
    sub_1000267D0(0, v8, 0);
    v9 = _swiftEmptyArrayStorage;
    v10 = v7 + 32;
    do
    {
      sub_10000B270(v10, v25);
      v11 = v26;
      v12 = v27;
      sub_100018544(v25, v26);
      v13 = (*(v12 + 16))(v11, v12);
      v15 = v14;
      sub_10000665C(v25);
      v28 = v9;
      v17 = v9[2];
      v16 = v9[3];
      if (v17 >= v16 >> 1)
      {
        sub_1000267D0((v16 > 1), v17 + 1, 1);
        v9 = v28;
      }

      v9[2] = v17 + 1;
      v18 = &v9[2 * v17];
      v18[4] = v13;
      v18[5] = v15;
      v10 += 40;
      --v8;
    }

    while (v8);
  }

  v25[0] = v9;
  sub_10004DED0(&unk_10015FC00, &qword_100111C00);
  sub_1000268F8();
  v19 = BidirectionalCollection<>.joined(separator:)();
  v21 = v20;

  v22._countAndFlagsBits = v19;
  v22._object = v21;
  String.append(_:)(v22);

  v23._countAndFlagsBits = 2099272992;
  v23._object = 0xE400000000000000;
  String.append(_:)(v23);
  return v29;
}

char *sub_1000266C4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10004DED0(&qword_10015C470, &qword_100112480);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000267D0(char *a1, int64_t a2, char a3)
{
  result = sub_1000266C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_100026814()
{
  v9 = _typeName(_:qualified:)();
  v1._countAndFlagsBits = 0x203A6469207B20;
  v1._object = 0xE700000000000000;
  String.append(_:)(v1);
  v2 = qword_100111DB0[*(v0 + 32)];
  v3 = sub_10002598C(v2, 0, 3u);
  v5 = v4;
  sub_100025CD8(v2, 0, 3u);
  v6._countAndFlagsBits = v3;
  v6._object = v5;
  String.append(_:)(v6);

  v7._countAndFlagsBits = 32032;
  v7._object = 0xE200000000000000;
  String.append(_:)(v7);
  return v9;
}

unint64_t sub_1000268F8()
{
  result = qword_10015EF80;
  if (!qword_10015EF80)
  {
    sub_100052374(&unk_10015FC00, &qword_100111C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015EF80);
  }

  return result;
}

uint64_t sub_1000269E8(uint64_t a1)
{
  if ((*(a1 + 32) & 7u) <= 5)
  {
    return *(a1 + 32) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_100026A58()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  if (v5 <= 2)
  {
    if (*(v0 + 32))
    {
      if (v5 == 1)
      {
        strcpy(v18, "followUpItem.");
        HIWORD(v18[1]) = -4864;
LABEL_23:
        v13 = v1;
        v14 = v2;
        goto LABEL_24;
      }

      v18[0] = 0;
      v18[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(24);

      v9 = 0x800000010011F000;
      v10 = 0xD000000000000013;
    }

    else
    {
      v8 = HIBYTE(v3) & 0xF;
      if ((v3 & 0x2000000000000000) == 0)
      {
        v8 = v4 & 0xFFFFFFFFFFFFLL;
      }

      if (!v8)
      {
        v18[0] = 0;
        v18[1] = 0xE000000000000000;
        _StringGuts.grow(_:)(22);

        v6 = 0x800000010011F020;
        v7 = 0xD000000000000014;
        goto LABEL_22;
      }

      v18[0] = 0;
      v18[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(25);

      v9 = 0x800000010011F020;
      v10 = 0xD000000000000014;
    }

    v18[0] = v10;
    v18[1] = v9;
    v11._countAndFlagsBits = v1;
    v11._object = v2;
    String.append(_:)(v11);
    v12._countAndFlagsBits = 46;
    v12._object = 0xE100000000000000;
    String.append(_:)(v12);
    v13 = v4;
    v14 = v3;
LABEL_24:
    String.append(_:)(*&v13);
    return v18[0];
  }

  if (*(v0 + 32) <= 4u)
  {
    v18[0] = 0;
    v18[1] = 0xE000000000000000;
    if (v5 == 3)
    {
      _StringGuts.grow(_:)(22);

      v6 = 0x800000010011EFE0;
      v7 = 0xD000000000000014;
    }

    else
    {
      _StringGuts.grow(_:)(36);

      v6 = 0x800000010011EFB0;
      v7 = 0xD000000000000022;
    }

    goto LABEL_22;
  }

  if (v5 == 5)
  {
    v18[0] = 0;
    v18[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(21);

    v6 = 0x800000010011EF90;
    v7 = 0xD000000000000013;
LABEL_22:
    v18[0] = v7;
    v18[1] = v6;
    goto LABEL_23;
  }

  if (!(v4 | v2 | v1 | v3))
  {
    return 0xD000000000000013;
  }

  v15 = v4 | v2 | v3;
  if (v1 == 1 && !v15)
  {
    return 0x796C696D6166;
  }

  if (v1 == 2 && !v15)
  {
    return 0x656E616C70726961;
  }

  if (v1 == 3 && !v15)
  {
    return 1768319351;
  }

  if (v1 == 4 && !v15)
  {
    return 0x74656E7265687465;
  }

  if (v1 == 5 && !v15)
  {
    return 0x746F6F7465756C62;
  }

  if (v1 == 6 && !v15)
  {
    return 0x72616C756C6C6563;
  }

  if (v1 == 7 && !v15)
  {
    return 0x6C616E6F73726570;
  }

  if (v1 == 8 && !v15)
  {
    return 7237750;
  }

  if (v1 == 9 && !v15)
  {
    return 0x6F6F727373616C63;
  }

  if (v1 == 10 && !v15)
  {
    return 0x74696C6C65746173;
  }

  if (v1 == 11 && !v15)
  {
    return 0x6163696669746F6ELL;
  }

  if (v1 == 12 && !v15)
  {
    return 0x73646E756F73;
  }

  if (v1 == 13 && !v15)
  {
    return 0x7375636F66;
  }

  if (v1 == 14 && !v15)
  {
    return 0x69546E6565726373;
  }

  if (v1 == 15 && !v15)
  {
    return 0x6C6172656E6567;
  }

  if (v1 == 16 && !v15)
  {
    return 0x436C6F72746E6F63;
  }

  if (v1 == 17 && !v15)
  {
    return 0x75426E6F69746361;
  }

  if (v1 == 18 && !v15)
  {
    return 0xD000000000000014;
  }

  if (v1 == 19 && !v15)
  {
    return 0x65726353656D6F68;
  }

  if (v1 == 20 && !v15)
  {
    return 0xD000000000000017;
  }

  if (v1 == 21 && !v15)
  {
    return 0x6269737365636361;
  }

  if (v1 == 22 && !v15)
  {
    v17 = 0x61706C6C6177;
    return v17 & 0xFFFFFFFFFFFFLL | 0x6570000000000000;
  }

  if (v1 == 23 && !v15)
  {
    return 0x7942646E617473;
  }

  if (v1 == 24 && !v15)
  {
    return 1769105779;
  }

  if (v1 == 25 && !v15)
  {
    return 0x686372616573;
  }

  if (v1 == 26 && !v15)
  {
    return 0x6C69636E6570;
  }

  if (v1 == 27 && !v15)
  {
    return 0xD000000000000015;
  }

  if (v1 == 28 && !v15)
  {
    return 7565171;
  }

  if (v1 == 29 && !v15)
  {
    return 0xD000000000000015;
  }

  if (v1 == 30 && !v15)
  {
    return 0x79726574746162;
  }

  if (v1 == 31 && !v15)
  {
    return 0xD000000000000012;
  }

  if (v1 == 32 && !v15)
  {
    return 0xD000000000000011;
  }

  if (v1 == 33 && !v15)
  {
    return 0xD000000000000015;
  }

  if (v1 == 34 && !v15)
  {
    return 0x74694B7373616C63;
  }

  if (v1 == 35 && !v15)
  {
    return 0x6172656D6163;
  }

  if (v1 == 36 && !v15)
  {
    return 0x746E6543656D6167;
  }

  if (v1 == 37 && !v15)
  {
    return 0x64756F6C4369;
  }

  if (v1 == 38 && !v15)
  {
    v17 = 0x6F6C65766564;
    return v17 & 0xFFFFFFFFFFFFLL | 0x6570000000000000;
  }

  if (v1 == 39 && !v15)
  {
    return 0x72656972726163;
  }

  if (v1 == 40 && !v15)
  {
    return 0x6C616E7265746E69;
  }

  if (v1 == 41 && !v15 || v1 == 42 && !v15)
  {
    return 0xD000000000000011;
  }

  if (v1 == 43 && !v15)
  {
    return 0xD000000000000013;
  }

  result = 1936748641;
  if (v1 == 44 && !v15)
  {
    return 0xD000000000000012;
  }

  return result;
}

void *sub_100027320()
{
  if (*(v0 + 32) == 6)
  {
    v1 = *v0;
    v2 = v0[1];
    v3 = v0[2] | v0[3];
    if (!(v3 | *v0 | v2))
    {
      goto LABEL_98;
    }

    v4 = v3 | v2;
    if (v1 == 2 && v4 == 0)
    {
      goto LABEL_61;
    }

    if (v1 == 3 && v4 == 0)
    {
      sub_10004DED0(&qword_10015B378, &qword_100110628);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1001103C0;
      *(v7 + 32) = 0;
      v8 = v7 + 32;
      sub_10004DED0(&qword_10015B380, &qword_100110630);
      v13 = *(type metadata accessor for PrimarySettingsListItemVisibilityRule(0) - 8);
      v14 = *(v13 + 72);
      v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1001103D0;
      v17 = v16 + v15;
      *v17 = swift_getKeyPath();
      *(v17 + 8) = 0;
      swift_storeEnumTagMultiPayload();
      v18 = (v17 + v14);
      sub_10004DED0(&qword_10015B390, &qword_100110640);
      v19 = 0x7474655369466957;
      v20 = 0xEC00000073676E69;
LABEL_15:
      *v18 = v19;
      v18[1] = v20;
LABEL_16:
      static NSBundle.PluginLocation.preferences.getter();
LABEL_17:
      swift_storeEnumTagMultiPayload();
      *(v7 + 40) = v16;
LABEL_100:
      v132 = sub_100029C78(v7);
      swift_setDeallocating();
      sub_100029EBC(v8);
      swift_deallocClassInstance();
      return v132;
    }

    if (v1 == 4 && !v4)
    {
      sub_10004DED0(&qword_10015B378, &qword_100110628);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1001103C0;
      *(v7 + 32) = 0;
      v8 = v7 + 32;
      sub_10004DED0(&qword_10015B380, &qword_100110630);
      v9 = *(type metadata accessor for PrimarySettingsListItemVisibilityRule(0) - 8);
      v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1001103C0;
      v12 = (v11 + v10);
      sub_10004DED0(&qword_10015B390, &qword_100110640);
      *v12 = 0xD000000000000020;
      v12[1] = 0x800000010011F160;
      static NSBundle.PluginLocation.preferences.getter();
LABEL_99:
      swift_storeEnumTagMultiPayload();
      *(v7 + 40) = v11;
      goto LABEL_100;
    }

    if (v1 == 5 && !v4)
    {
      sub_10004DED0(&qword_10015B378, &qword_100110628);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1001103C0;
      *(v7 + 32) = 0;
      v8 = v7 + 32;
      sub_10004DED0(&qword_10015B380, &qword_100110630);
      v21 = *(type metadata accessor for PrimarySettingsListItemVisibilityRule(0) - 8);
      v22 = *(v21 + 72);
      v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
      v24 = 2 * v22;
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1001103E0;
      v25 = v16 + v23;
      *v25 = swift_getKeyPath();
      *(v25 + 8) = 1;
      swift_storeEnumTagMultiPayload();
      v26 = v25 + v22;
      *v26 = swift_getKeyPath();
      *(v26 + 8) = 0;
      swift_storeEnumTagMultiPayload();
      v27 = (v25 + v24);
      sub_10004DED0(&qword_10015B390, &qword_100110640);
      *v27 = 0xD000000000000011;
      v27[1] = 0x800000010011F140;
      goto LABEL_16;
    }

    if (v1 == 6 && !v4)
    {
      sub_10004DED0(&qword_10015B378, &qword_100110628);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1001103C0;
      *(v7 + 32) = 0;
      v8 = v7 + 32;
      sub_10004DED0(&qword_10015B380, &qword_100110630);
      v28 = *(type metadata accessor for PrimarySettingsListItemVisibilityRule(0) - 8);
      v29 = *(v28 + 72);
      v30 = (*(v28 + 80) + 32) & ~*(v28 + 80);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1001103F0;
      v31 = (v16 + v30);
      *v31 = 1;
      swift_storeEnumTagMultiPayload();
      v32 = &v31[v29];
      *v32 = swift_getKeyPath();
      v32[8] = 1;
      swift_storeEnumTagMultiPayload();
      v33 = &v31[2 * v29];
      *v33 = swift_getKeyPath();
      v33[8] = 0;
      swift_storeEnumTagMultiPayload();
      v34 = &v31[3 * v29];
      sub_10004DED0(&qword_10015B390, &qword_100110640);
      *v34 = 0xD000000000000010;
      v34[1] = 0x800000010011F120;
      goto LABEL_16;
    }

    if (v1 == 7 && !v4)
    {
      sub_10004DED0(&qword_10015B378, &qword_100110628);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1001103C0;
      *(v7 + 32) = 0;
      v8 = v7 + 32;
      sub_10004DED0(&qword_10015B380, &qword_100110630);
      v35 = *(type metadata accessor for PrimarySettingsListItemVisibilityRule(0) - 8);
      v36 = *(v35 + 72);
      v37 = (*(v35 + 80) + 32) & ~*(v35 + 80);
      v38 = 2 * v36;
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1001103E0;
      v39 = (v16 + v37);
      *v39 = 1;
      swift_storeEnumTagMultiPayload();
      v40 = &v39[v36];
      *v40 = swift_getKeyPath();
      v40[8] = 0;
      swift_storeEnumTagMultiPayload();
      v41 = &v39[v38];
      *v41 = swift_getKeyPath();
      v41[8] = 0;
      goto LABEL_17;
    }

    if (v1 == 8 && !v4)
    {
      sub_10004DED0(&qword_10015B378, &qword_100110628);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1001103C0;
      *(v7 + 32) = 0;
      v8 = v7 + 32;
      sub_10004DED0(&qword_10015B380, &qword_100110630);
      v42 = *(type metadata accessor for PrimarySettingsListItemVisibilityRule(0) - 8);
      v43 = *(v42 + 72);
      v44 = (*(v42 + 80) + 32) & ~*(v42 + 80);
      v45 = 2 * v43;
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1001103E0;
      v46 = (v16 + v44);
      *v46 = 1;
      swift_storeEnumTagMultiPayload();
      v47 = &v46[v43];
      *v47 = swift_getKeyPath();
      v47[8] = 1;
      swift_storeEnumTagMultiPayload();
      v18 = &v46[v45];
      sub_10004DED0(&qword_10015B390, &qword_100110640);
      v19 = 0x65666572504E5056;
      v20 = 0xEE007365636E6572;
      goto LABEL_15;
    }

    if (v1 == 9 && !v4)
    {
      sub_10004DED0(&qword_10015B378, &qword_100110628);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1001103C0;
      *(v7 + 32) = 0;
      v8 = v7 + 32;
      sub_10004DED0(&qword_10015B380, &qword_100110630);
      v48 = *(type metadata accessor for PrimarySettingsListItemVisibilityRule(0) - 8);
      v49 = *(v48 + 72);
      v50 = (*(v48 + 80) + 32) & ~*(v48 + 80);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1001103D0;
      v51 = v11 + v50;
      *v51 = swift_getKeyPath();
      *(v51 + 8) = 0;
      swift_storeEnumTagMultiPayload();
      v52 = v51 + v49;
      *v52 = swift_getKeyPath();
      *(v52 + 8) = 0;
      goto LABEL_99;
    }

    if (v1 == 11 && !v4)
    {
      goto LABEL_35;
    }

    if (v1 == 12 && !v4)
    {
      sub_10004DED0(&qword_10015B378, &qword_100110628);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1001103C0;
      *(inited + 32) = 0;
      v54 = inited + 32;
      sub_10004DED0(&qword_10015B380, &qword_100110630);
      v60 = *(type metadata accessor for PrimarySettingsListItemVisibilityRule(0) - 8);
      v61 = (*(v60 + 80) + 32) & ~*(v60 + 80);
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_1001103C0;
      v62 = v58 + v61;
      *v62 = swift_getKeyPath();
      *(v62 + 8) = 1;
      goto LABEL_39;
    }

    if (v1 == 13 && !v4)
    {
LABEL_35:
      sub_10004DED0(&qword_10015B378, &qword_100110628);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1001103C0;
      *(inited + 32) = 0;
      v54 = inited + 32;
      sub_10004DED0(&qword_10015B380, &qword_100110630);
      v55 = *(type metadata accessor for PrimarySettingsListItemVisibilityRule(0) - 8);
      v56 = *(v55 + 72);
      v57 = (*(v55 + 80) + 32) & ~*(v55 + 80);
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_1001103D0;
      v59 = v58 + v57;
      *v59 = swift_getKeyPath();
      *(v59 + 8) = 1;
      swift_storeEnumTagMultiPayload();
      *(v59 + v56) = 1;
LABEL_39:
      swift_storeEnumTagMultiPayload();
      *(inited + 40) = v58;
LABEL_40:
      v63 = sub_100029C78(inited);
      swift_setDeallocating();
      sub_100029EBC(v54);
      return v63;
    }

    if (v1 == 14 && !v4)
    {
      goto LABEL_45;
    }

    if (v1 == 16 && !v4)
    {
      sub_10004DED0(&qword_10015B378, &qword_100110628);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1001103C0;
      *(v7 + 32) = 0;
      v8 = v7 + 32;
      sub_10004DED0(&qword_10015B380, &qword_100110630);
      v71 = *(type metadata accessor for PrimarySettingsListItemVisibilityRule(0) - 8);
      v72 = *(v71 + 72);
      v73 = (*(v71 + 80) + 32) & ~*(v71 + 80);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1001103D0;
      v74 = v11 + v73;
      *v74 = swift_getKeyPath();
      *(v74 + 8) = 1;
      swift_storeEnumTagMultiPayload();
      *(v74 + v72) = 1;
      goto LABEL_99;
    }

    if (v1 == 17 && !v4)
    {
      sub_10004DED0(&qword_10015B378, &qword_100110628);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1001103C0;
      *(inited + 32) = 0;
      v54 = inited + 32;
      sub_10004DED0(&qword_10015B380, &qword_100110630);
      v75 = *(type metadata accessor for PrimarySettingsListItemVisibilityRule(0) - 8);
      v76 = *(v75 + 72);
      v77 = (*(v75 + 80) + 32) & ~*(v75 + 80);
      v78 = swift_allocObject();
      *(v78 + 16) = xmmword_1001103D0;
      v79 = v78 + v77;
      *v79 = swift_getKeyPath();
      *(v79 + 8) = 0;
      swift_storeEnumTagMultiPayload();
      v80 = (v79 + v76);
      sub_10004DED0(&qword_10015B390, &qword_100110640);
      v81 = 0x800000010011F0A0;
      v82 = 0xD000000000000014;
LABEL_53:
      *v80 = v82;
      v80[1] = v81;
LABEL_54:
      static NSBundle.PluginLocation.preferences.getter();
LABEL_55:
      swift_storeEnumTagMultiPayload();
      *(inited + 40) = v78;
      goto LABEL_40;
    }

    if (v1 == 18 && !v4)
    {
      sub_10004DED0(&qword_10015B378, &qword_100110628);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1001103C0;
      *(v7 + 32) = 0;
      v8 = v7 + 32;
      sub_10004DED0(&qword_10015B380, &qword_100110630);
      v83 = *(type metadata accessor for PrimarySettingsListItemVisibilityRule(0) - 8);
      v84 = (*(v83 + 80) + 32) & ~*(v83 + 80);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1001103C0;
      v85 = v11 + v84;
      *v85 = swift_getKeyPath();
      *(v85 + 8) = 1;
      goto LABEL_99;
    }

    if (v1 == 19 && !v4)
    {
LABEL_61:
      sub_10004DED0(&qword_10015B378, &qword_100110628);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1001103C0;
      *(v7 + 32) = 0;
      v8 = v7 + 32;
      sub_10004DED0(&qword_10015B380, &qword_100110630);
      v86 = *(type metadata accessor for PrimarySettingsListItemVisibilityRule(0) - 8);
      v87 = (*(v86 + 80) + 32) & ~*(v86 + 80);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1001103C0;
      *(v11 + v87) = 1;
      goto LABEL_99;
    }

    if (v1 == 20 && !v4)
    {
      sub_10004DED0(&qword_10015B378, &qword_100110628);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1001103C0;
      *(inited + 32) = 0;
      v54 = inited + 32;
      sub_10004DED0(&qword_10015B380, &qword_100110630);
      v88 = *(type metadata accessor for PrimarySettingsListItemVisibilityRule(0) - 8);
      v89 = *(v88 + 72);
      v90 = (*(v88 + 80) + 32) & ~*(v88 + 80);
      v78 = swift_allocObject();
      *(v78 + 16) = xmmword_1001103E0;
      v91 = v78 + v90;
      *v91 = swift_getKeyPath();
      *(v91 + 8) = 0;
      swift_storeEnumTagMultiPayload();
      *(v91 + v89) = 1;
      swift_storeEnumTagMultiPayload();
      v80 = (v91 + 2 * v89);
      sub_10004DED0(&qword_10015B390, &qword_100110640);
      v81 = 0x800000010011F100;
      v82 = 0xD00000000000001FLL;
      goto LABEL_53;
    }

    if (v1 == 21 && !v4)
    {
LABEL_67:
      sub_10004DED0(&qword_10015B378, &qword_100110628);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1001103C0;
      *(inited + 32) = 0;
      v54 = inited + 32;
      sub_10004DED0(&qword_10015B380, &qword_100110630);
      v92 = *(type metadata accessor for PrimarySettingsListItemVisibilityRule(0) - 8);
      v93 = (*(v92 + 80) + 32) & ~*(v92 + 80);
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_1001103C0;
      v94 = v58 + v93;
      *v94 = swift_getKeyPath();
      *(v94 + 8) = 0;
      goto LABEL_39;
    }

    if (v1 == 22 && !v4)
    {
      sub_10004DED0(&qword_10015B378, &qword_100110628);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1001103C0;
      *(inited + 32) = 0;
      v54 = inited + 32;
      sub_10004DED0(&qword_10015B380, &qword_100110630);
      v95 = *(type metadata accessor for PrimarySettingsListItemVisibilityRule(0) - 8);
      v96 = *(v95 + 72);
      v97 = (*(v95 + 80) + 32) & ~*(v95 + 80);
      v78 = swift_allocObject();
      *(v78 + 16) = xmmword_1001103E0;
      v98 = v78 + v97;
      *v98 = swift_getKeyPath();
      *(v98 + 8) = 1;
      swift_storeEnumTagMultiPayload();
      *(v98 + v96) = 1;
      swift_storeEnumTagMultiPayload();
      v99 = (v98 + 2 * v96);
LABEL_71:
      *v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v99[1] = v100;
      goto LABEL_55;
    }

    if (v1 == 23 && !v4)
    {
      sub_10004DED0(&qword_10015B378, &qword_100110628);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1001103C0;
      *(inited + 32) = 0;
      v54 = inited + 32;
      sub_10004DED0(&qword_10015B380, &qword_100110630);
      v101 = *(type metadata accessor for PrimarySettingsListItemVisibilityRule(0) - 8);
      v102 = *(v101 + 72);
      v103 = (*(v101 + 80) + 32) & ~*(v101 + 80);
      v78 = swift_allocObject();
      *(v78 + 16) = xmmword_1001103D0;
      v104 = v78 + v103;
      *v104 = swift_getKeyPath();
      *(v104 + 8) = 1;
      swift_storeEnumTagMultiPayload();
      v105 = (v104 + v102);
      sub_10004DED0(&qword_10015B390, &qword_100110640);
      *v105 = 0x53746E6569626D41;
      v105[1] = 0xEF73676E69747465;
      goto LABEL_54;
    }

    if (v1 == 24 && !v4)
    {
      goto LABEL_67;
    }

    if (v1 == 25 && !v4)
    {
      sub_10004DED0(&qword_10015B378, &qword_100110628);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1001103C0;
      *(inited + 32) = 0;
      v54 = inited + 32;
      sub_10004DED0(&qword_10015B380, &qword_100110630);
      v106 = *(type metadata accessor for PrimarySettingsListItemVisibilityRule(0) - 8);
      v107 = (*(v106 + 80) + 32) & ~*(v106 + 80);
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_1001103C0;
      v69 = (v58 + v107);
      goto LABEL_46;
    }

    if (v1 == 26 && !v4)
    {
      goto LABEL_67;
    }

    if (v1 == 27 && !v4)
    {
      sub_10004DED0(&qword_10015B378, &qword_100110628);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1001103C0;
      *(inited + 32) = 0;
      v54 = inited + 32;
      sub_10004DED0(&qword_10015B380, &qword_100110630);
      v108 = *(type metadata accessor for PrimarySettingsListItemVisibilityRule(0) - 8);
      v109 = *(v108 + 72);
      v110 = (*(v108 + 80) + 32) & ~*(v108 + 80);
      v111 = 2 * v109;
      v78 = swift_allocObject();
      *(v78 + 16) = xmmword_1001103E0;
      v112 = (v78 + v110);
      *v112 = 1;
      swift_storeEnumTagMultiPayload();
      v113 = &v112[v109];
      *v113 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v113[1] = v114;
      swift_storeEnumTagMultiPayload();
      v115 = &v112[v111];
      *v115 = sub_10002EB34();
      v115[1] = 1;
      goto LABEL_55;
    }

    if (v1 == 29 && !v4)
    {
      sub_10004DED0(&qword_10015B378, &qword_100110628);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1001103C0;
      *(inited + 32) = 0;
      v54 = inited + 32;
      sub_10004DED0(&qword_10015B380, &qword_100110630);
      v116 = *(type metadata accessor for PrimarySettingsListItemVisibilityRule(0) - 8);
      v117 = *(v116 + 72);
      v118 = (*(v116 + 80) + 32) & ~*(v116 + 80);
      v78 = swift_allocObject();
      *(v78 + 16) = xmmword_1001103D0;
      v119 = v78 + v118;
      *v119 = swift_getKeyPath();
      *(v119 + 8) = 1;
      swift_storeEnumTagMultiPayload();
      v80 = (v119 + v117);
      sub_10004DED0(&qword_10015B390, &qword_100110640);
      v81 = 0x800000010011F0E0;
      v82 = 0xD00000000000001ELL;
      goto LABEL_53;
    }

    if (v1 == 30 && !v4)
    {
      sub_10004DED0(&qword_10015B378, &qword_100110628);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1001103C0;
      *(inited + 32) = 0;
      v54 = inited + 32;
      sub_10004DED0(&qword_10015B380, &qword_100110630);
      v120 = *(type metadata accessor for PrimarySettingsListItemVisibilityRule(0) - 8);
      v121 = (*(v120 + 80) + 32) & ~*(v120 + 80);
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_1001103C0;
      v122 = (v58 + v121);
      sub_10004DED0(&qword_10015B390, &qword_100110640);
      strcpy(v122, "BatteryUsageUI");
      v122[15] = -18;
      static NSBundle.PluginLocation.preferences.getter();
      goto LABEL_39;
    }

    if (v1 == 35 && !v4)
    {
      sub_10004DED0(&qword_10015B378, &qword_100110628);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1001103C0;
      *(inited + 32) = 0;
      v54 = inited + 32;
      sub_10004DED0(&qword_10015B380, &qword_100110630);
      v123 = *(type metadata accessor for PrimarySettingsListItemVisibilityRule(0) - 8);
      v124 = *(v123 + 72);
      v125 = (*(v123 + 80) + 32) & ~*(v123 + 80);
      v78 = swift_allocObject();
      *(v78 + 16) = xmmword_1001103E0;
      v126 = (v78 + v125);
      *v126 = 1;
      swift_storeEnumTagMultiPayload();
      v127 = &v126[v124];
      *v127 = 0xD000000000000010;
      v127[1] = 0x800000010011F0C0;
      swift_storeEnumTagMultiPayload();
      v99 = &v126[2 * v124];
      goto LABEL_71;
    }

    if (v1 == 36 && !v4)
    {
LABEL_45:
      sub_10004DED0(&qword_10015B378, &qword_100110628);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1001103C0;
      *(inited + 32) = 0;
      v54 = inited + 32;
      sub_10004DED0(&qword_10015B380, &qword_100110630);
      v65 = *(type metadata accessor for PrimarySettingsListItemVisibilityRule(0) - 8);
      v66 = *(v65 + 72);
      v67 = (*(v65 + 80) + 32) & ~*(v65 + 80);
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_1001103D0;
      v68 = (v58 + v67);
      *v68 = 1;
      swift_storeEnumTagMultiPayload();
      v69 = &v68[v66];
LABEL_46:
      *v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v69[1] = v70;
      goto LABEL_39;
    }

    if (v1 == 37 && !v4)
    {
LABEL_98:
      sub_10004DED0(&qword_10015B378, &qword_100110628);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1001103C0;
      *(v7 + 32) = 1;
      v8 = v7 + 32;
      sub_10004DED0(&qword_10015B380, &qword_100110630);
      v128 = *(type metadata accessor for PrimarySettingsListItemVisibilityRule(0) - 8);
      v129 = (*(v128 + 80) + 32) & ~*(v128 + 80);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1001103C0;
      v130 = (v11 + v129);
      *v130 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v130[1] = v131;
      goto LABEL_99;
    }

    if (v1 == 38 && !v4)
    {
      sub_10004DED0(&qword_10015B378, &qword_100110628);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1001103C0;
      *(inited + 32) = 0;
      v54 = inited + 32;
      sub_10004DED0(&qword_10015B380, &qword_100110630);
      v133 = *(type metadata accessor for PrimarySettingsListItemVisibilityRule(0) - 8);
      v134 = (*(v133 + 80) + 32) & ~*(v133 + 80);
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_1001103C0;
      v135 = v58 + v134;
      *(v135 + 24) = &type metadata for SettingsAppFeatureFlags;
      *(v135 + 32) = sub_10000631C();
      *v135 = 1;
      *(v135 + 40) = 1;
      goto LABEL_39;
    }

    if (v1 == 39 && !v4)
    {
      sub_10004DED0(&qword_10015B378, &qword_100110628);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1001103C0;
      *(inited + 32) = 0;
      v54 = inited + 32;
      sub_10004DED0(&qword_10015B380, &qword_100110630);
      v136 = *(type metadata accessor for PrimarySettingsListItemVisibilityRule(0) - 8);
      v137 = *(v136 + 72);
      v138 = (*(v136 + 80) + 32) & ~*(v136 + 80);
      v78 = swift_allocObject();
      *(v78 + 16) = xmmword_1001103D0;
      v139 = (v78 + v138);
      sub_10004DED0(&qword_10015B390, &qword_100110640);
      *v139 = 0xD000000000000010;
      v139[1] = 0x800000010011F060;
      static NSBundle.PluginLocation.appleInternalPreferences.getter();
      swift_storeEnumTagMultiPayload();
      v140 = v139 + v137;
      *(v140 + 3) = &type metadata for SettingsAppFeatureFlags;
      *(v140 + 4) = sub_10000631C();
      v141 = 2;
LABEL_110:
      *v140 = v141;
      v140[40] = 1;
      goto LABEL_55;
    }

    if (v1 == 40 && !v4)
    {
      sub_10004DED0(&qword_10015B378, &qword_100110628);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1001103C0;
      *(inited + 32) = 0;
      v54 = inited + 32;
      sub_10004DED0(&qword_10015B380, &qword_100110630);
      v142 = *(type metadata accessor for PrimarySettingsListItemVisibilityRule(0) - 8);
      v143 = *(v142 + 72);
      v144 = (*(v142 + 80) + 32) & ~*(v142 + 80);
      v78 = swift_allocObject();
      *(v78 + 16) = xmmword_1001103D0;
      v145 = (v78 + v144);
      sub_10004DED0(&qword_10015B390, &qword_100110640);
      *v145 = 0xD000000000000011;
      v145[1] = 0x800000010011F080;
      static NSBundle.PluginLocation.appleInternalPreferences.getter();
      swift_storeEnumTagMultiPayload();
      v140 = v145 + v143;
      *(v140 + 3) = &type metadata for SettingsAppFeatureFlags;
      *(v140 + 4) = sub_10000631C();
      v141 = 3;
      goto LABEL_110;
    }
  }

  return sub_100029C78(_swiftEmptyArrayStorage);
}

uint64_t sub_10002973C@<X0>(_BYTE *a2@<X8>)
{
  result = MobileGestalt_get_ringerButtonCapability();
  *a2 = result;
  return result;
}

uint64_t sub_100029768@<X0>(_BYTE *a2@<X8>)
{
  result = MobileGestalt_get_iPadCapability();
  *a2 = result;
  return result;
}

uint64_t sub_100029794@<X0>(_BYTE *a2@<X8>)
{
  result = MobileGestalt_get_isSimulator();
  *a2 = result;
  return result;
}

uint64_t sub_1000297C0@<X0>(_BYTE *a2@<X8>)
{
  result = MobileGestalt_get_deviceSupportsApplePencil();
  *a2 = result;
  return result;
}

uint64_t sub_1000297EC@<X0>(_BYTE *a2@<X8>)
{
  result = MobileGestalt_get_assistantCapability();
  *a2 = result;
  return result;
}

uint64_t sub_100029818@<X0>(_BYTE *a2@<X8>)
{
  result = MobileGestalt_get_accessibilityCapability();
  *a2 = result;
  return result;
}

uint64_t sub_100029844@<X0>(_BYTE *a2@<X8>)
{
  result = MobileGestalt_get_bluetoothLECapability();
  *a2 = result;
  return result;
}

uint64_t sub_100029870@<X0>(_BYTE *a2@<X8>)
{
  result = MobileGestalt_get_cellularDataCapability();
  *a2 = result;
  return result;
}

uint64_t sub_10002989C@<X0>(_BYTE *a2@<X8>)
{
  result = MobileGestalt_get_personalHotspotCapability();
  *a2 = result;
  return result;
}

uint64_t sub_1000298C8@<X0>(_BYTE *a2@<X8>)
{
  result = MobileGestalt_get_bluetoothCapability();
  *a2 = result;
  return result;
}

uint64_t sub_1000298F4@<X0>(_BYTE *a2@<X8>)
{
  result = MobileGestalt_get_wifiCapability();
  *a2 = result;
  return result;
}

void sub_100029920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 5u)
  {
    if (((1 << a5) & 0x3A) != 0)
    {
    }

    else
    {
    }
  }
}

uint64_t type metadata accessor for PrimarySettingsListItemVisibilityRule(uint64_t a1)
{
  result = qword_10015C180;
  if (!qword_10015C180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000299F0(uint64_t a1)
{
  sub_100029B1C(319);
  if (v1 <= 0x3F)
  {
    sub_100029B88();
    if (v2 <= 0x3F)
    {
      sub_100029BB8();
      if (v3 <= 0x3F)
      {
        sub_100061A58(319);
        if (v4 <= 0x3F)
        {
          sub_100061AD0(319, &qword_10015C1B0, &qword_10015C1B8, &qword_1001121E0, "capability hideWhen ");
          if (v5 <= 0x3F)
          {
            sub_100061AD0(319, &qword_10015C1C0, &qword_10015C1C8, &qword_1001121E8, "featureFlag hideWhen ");
            if (v6 <= 0x3F)
            {
              sub_100029BE8();
              if (v7 <= 0x3F)
              {
                sub_100029C48();
                if (v8 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_100029B1C(uint64_t a1)
{
  if (!qword_10015C190)
  {
    type metadata accessor for NSBundle.PluginLocation();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_10015C190);
    }
  }
}

void *sub_100029B88()
{
  result = qword_10015C198;
  if (!qword_10015C198)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_10015C198);
  }

  return result;
}

void *sub_100029BB8()
{
  result = qword_10015C1A0;
  if (!qword_10015C1A0)
  {
    result = &type metadata for String;
    atomic_store(&type metadata for String, &qword_10015C1A0);
  }

  return result;
}

void sub_100029BE8()
{
  if (!qword_10015C1D0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_10015C1D0);
    }
  }
}

void *sub_100029C48()
{
  result = qword_10015C1D8;
  if (!qword_10015C1D8)
  {
    result = &type metadata for Bool;
    atomic_store(&type metadata for Bool, &qword_10015C1D8);
  }

  return result;
}

void *sub_100029C78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_10004DED0(&unk_10015EDC0, &unk_100116020);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_100029DE0(v4);
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
    *(v3[6] + v8) = v4;
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
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_100029DE0(v4);
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

unint64_t sub_100029D8C()
{
  result = qword_10015C208;
  if (!qword_10015C208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015C208);
  }

  return result;
}

unint64_t sub_100029DE0(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  v2 = Hasher._finalize()();

  return sub_100029E4C(a1 & 1, v2);
}

unint64_t sub_100029E4C(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (((*(*(v2 + 48) + result) ^ a1) & 1) == 0)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_100029EBC(uint64_t a1)
{
  v2 = sub_10004DED0(&qword_10015B388, &qword_100110638);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100029F24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrimarySettingsListItemVisibilityRule(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100029F88()
{
  v1 = *v0;
  v2 = *(v0 + 32);
  result = 0;
  if (((1 << v2) & 0x37) != 0)
  {
    return result;
  }

  if (v2 == 3)
  {
    return 0xD00000000000001ALL;
  }

  v4 = v0[1];
  v5 = v0[2] | v0[3];
  if (!(v5 | v1 | v4))
  {
    return 0xD00000000000001ELL;
  }

  v6 = v5 | v4;
  if (v1 == 1 && v6 == 0)
  {
    return 0xD000000000000021;
  }

  if (v1 == 2 && !v6)
  {
    return 0xD000000000000024;
  }

  if (v1 == 3 && !v6)
  {
    return 0xD00000000000001BLL;
  }

  if (v1 == 4 && !v6)
  {
    return 0xD00000000000001FLL;
  }

  if (v1 == 5 && !v6)
  {
    return 0xD000000000000020;
  }

  if (v1 == 6 && !v6)
  {
    return 0xD000000000000028;
  }

  if (v1 == 7 && !v6)
  {
    return 0xD000000000000027;
  }

  if (v1 == 8 && !v6)
  {
    return 0xD00000000000001ALL;
  }

  if (v1 == 9 && !v6)
  {
    return 0xD000000000000024;
  }

  if (v1 == 10 && !v6)
  {
    return 0xD000000000000020;
  }

  if (v1 == 11 && !v6)
  {
    return 0xD000000000000024;
  }

  if (v1 == 12 && !v6 || v1 == 13 && !v6)
  {
    return 0xD00000000000001CLL;
  }

  if (v1 == 14 && !v6)
  {
    return 0xD000000000000022;
  }

  if (v1 == 15 && !v6)
  {
    return 0xD00000000000001BLL;
  }

  if (v1 == 16 && !v6)
  {
    return 0xD000000000000025;
  }

  if (v1 == 17 && !v6)
  {
    return 0xD00000000000002BLL;
  }

  if (v1 == 18 && !v6)
  {
    return 0xD00000000000001ELL;
  }

  if (v1 == 19 && !v6)
  {
    v8 = MobileGestalt_get_current_device();
    if (v8)
    {
      v9 = v8;
      iPadCapability = MobileGestalt_get_iPadCapability();

      if (iPadCapability)
      {
        return 0xD000000000000023;
      }

      else
      {
        return 0xD000000000000025;
      }
    }

    __break(1u);
    goto LABEL_131;
  }

  if (v1 == 20 && !v6 || v1 == 21 && !v6)
  {
    return 0xD000000000000024;
  }

  if (v1 == 22 && !v6)
  {
    return 0xD000000000000020;
  }

  if (v1 == 23 && !v6)
  {
    return 0xD00000000000001ELL;
  }

  if (v1 == 24 && !v6)
  {
    if ((sub_10002DBB0() & 1) == 0)
    {
      return 0x6C7070612E6D6F63;
    }

    return 0xD00000000000002DLL;
  }

  if (v1 == 25 && !v6 || v1 == 26 && !v6)
  {
    return 0xD00000000000001DLL;
  }

  if (v1 == 27 && !v6)
  {
    result = MobileGestalt_get_current_device();
    if (result)
    {
      v11 = result;
      pearlIDCapability = MobileGestalt_get_pearlIDCapability();

      if (pearlIDCapability)
      {
        result = MobileGestalt_get_current_device();
        if (!result)
        {
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
          goto LABEL_141;
        }

        v13 = result;
        isSimulator = MobileGestalt_get_isSimulator();

        if ((isSimulator & 1) == 0)
        {
          return 0xD00000000000001ELL;
        }
      }

      result = MobileGestalt_get_current_device();
      if (result)
      {
        v15 = result;
        touchIDCapability = MobileGestalt_get_touchIDCapability();

        if (!touchIDCapability)
        {
          return 0xD00000000000001FLL;
        }

        result = MobileGestalt_get_current_device();
        if (result)
        {
          v17 = result;
          MobileGestalt_get_isSimulator();

          return 0xD00000000000001FLL;
        }

        goto LABEL_140;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_139;
  }

  if (v1 == 28 && !v6)
  {
    return 0xD000000000000024;
  }

  if (v1 == 29 && !v6)
  {
    return 0xD00000000000002DLL;
  }

  if (v1 == 30 && !v6)
  {
    return 0xD00000000000001ELL;
  }

  if (v1 == 31 && !v6)
  {
    return 0xD00000000000001ELL;
  }

  if (v1 == 32 && !v6)
  {
    result = MobileGestalt_get_current_device();
    if (result)
    {
      v18 = result;
      v19 = MobileGestalt_get_iPadCapability();

      if (v19)
      {
        return 0xD000000000000016;
      }

      else
      {
        return 0xD000000000000012;
      }
    }

LABEL_141:
    __break(1u);
    return result;
  }

  if (v1 == 33 && !v6)
  {
    return 0xD00000000000002ELL;
  }

  if (v1 == 34 && !v6)
  {
    return 0xD000000000000023;
  }

  if (v1 == 35 && !v6)
  {
    return 0xD00000000000001DLL;
  }

  if (v1 == 36 && !v6)
  {
    return 0xD00000000000001CLL;
  }

  if (v1 == 37 && !v6)
  {
    return 0xD000000000000021;
  }

  if (v1 == 38 && !v6)
  {
    return 0xD000000000000026;
  }

  if (v1 == 39 && !v6)
  {
    return 0xD000000000000027;
  }

LABEL_131:
  if (v1 == 40 && !v6)
  {
    return 0xD000000000000028;
  }

  if ((v1 - 41) > 3 || v6)
  {
    return 0xD000000000000022;
  }

  else
  {
    return 0xD000000000000023;
  }
}

void sub_10002A748(void *a1, uint64_t a2, char a3)
{
  if (a3 == 2 || a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

id sub_10002A770(id a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 32) < 6u)
  {
    _StringGuts.grow(_:)(42);

    v4._countAndFlagsBits = sub_100026A58();
    String.append(_:)(v4);

    v5._countAndFlagsBits = 0x6120656C6966202CLL;
    v5._object = 0xEC00000067756220;
    String.append(_:)(v5);
    return 0xD00000000000001CLL;
  }

  v7 = *v3;
  v8 = *(v3 + 8);
  v9 = *(v3 + 16) | *(v3 + 24);
  if (!(v9 | *v3 | v8))
  {
    v16 = [objc_opt_self() mainBundle];
    v41 = 0x800000010011EB70;
    v17 = 0x634120656C707041;
    v19 = 0x746E756F63;
LABEL_21:
    v18 = v19 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
    goto LABEL_22;
  }

  v10 = v9 | v8;
  if (v7 == 1 && v10 == 0)
  {
    v16 = [objc_opt_self() mainBundle];
    v41 = 0x800000010011EB70;
    v17 = 0x796C696D6146;
LABEL_19:
    v18 = 0xE600000000000000;
LABEL_22:
    v20._countAndFlagsBits = 0;
    v20._object = 0xE000000000000000;
    v21 = 0xD000000000000014;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v17, 0, v16, v20, *(&v41 - 1))._countAndFlagsBits;

    return countAndFlagsBits;
  }

  if (v7 == 2 && v10 == 0)
  {
    v16 = [objc_opt_self() mainBundle];
    v41 = 0x800000010011FBA0;
    v17 = 0x656E616C70726941;
    v19 = 0x65646F4D20;
    goto LABEL_21;
  }

  if (v7 == 3 && !v10)
  {
    v13 = MobileGestalt_get_current_device();
    if (v13)
    {
      v14 = v13;
      wapiCapability = MobileGestalt_get_wapiCapability();

      v16 = [objc_opt_self() mainBundle];
      v41 = 0x800000010011EB70;
      if (wapiCapability)
      {
        v17 = 1312902231;
        v18 = 0xE400000000000000;
      }

      else
      {
        v17 = 0x69462D6957;
        v18 = 0xE500000000000000;
      }

      goto LABEL_22;
    }

    __break(1u);
    goto LABEL_96;
  }

  if (v7 == 4 && !v10)
  {
    v16 = [objc_opt_self() mainBundle];
    v41 = 0x800000010011EB70;
    v17 = 0x74656E7265687445;
    v18 = 0xE800000000000000;
    goto LABEL_22;
  }

  if (v7 == 5 && !v10)
  {
    v16 = [objc_opt_self() mainBundle];
    v18 = 0xE900000000000068;
    v41 = 0x800000010011EB70;
    v17 = 0x746F6F7465756C42;
    goto LABEL_22;
  }

  if (v7 == 6 && !v10)
  {
    v16 = [objc_opt_self() mainBundle];
    v41 = 0x800000010011EB70;
    v17 = 0x72616C756C6C6543;
    v18 = 0xE800000000000000;
    goto LABEL_22;
  }

  if (v7 == 7 && !v10)
  {
    v23 = "Sounds & Haptics";
    v16 = [objc_opt_self() mainBundle];
    v17 = 0xD000000000000010;
    goto LABEL_36;
  }

  if (v7 == 8 && !v10)
  {
    v16 = [objc_opt_self() mainBundle];
    v41 = 0x800000010011EB70;
    v17 = 5132374;
    v18 = 0xE300000000000000;
    goto LABEL_22;
  }

  if (v7 == 9 && !v10)
  {
    v16 = [objc_opt_self() mainBundle];
    v18 = 0xE90000000000006DLL;
    v41 = 0x800000010011EB70;
    v17 = 0x6F6F727373616C43;
    goto LABEL_22;
  }

  if (v7 == 10 && !v10)
  {
    v16 = [objc_opt_self() mainBundle];
    v18 = 0xE900000000000065;
    v41 = 0x800000010011EB70;
    v17 = 0x74696C6C65746153;
    goto LABEL_22;
  }

  if (v7 == 11 && !v10)
  {
    v16 = [objc_opt_self() mainBundle];
    v41 = 0x800000010011EB70;
    v17 = 0x6163696669746F4ELL;
    v19 = 0x736E6F6974;
    goto LABEL_21;
  }

  if (v7 == 12 && !v10)
  {
    v24 = MobileGestalt_get_current_device();
    if (v24)
    {
      v25 = v24;
      deviceSupportsClosedLoopHaptics = MobileGestalt_get_deviceSupportsClosedLoopHaptics();

      if (deviceSupportsClosedLoopHaptics)
      {
        v16 = [objc_opt_self() mainBundle];
        v17 = 0xD000000000000010;
        v41 = 0x800000010011EB70;
        v18 = 0x800000010011FB60;
        goto LABEL_22;
      }

      v16 = [objc_opt_self() mainBundle];
      v41 = 0x800000010011EB70;
      v17 = 0x73646E756F53;
      goto LABEL_19;
    }

    __break(1u);
LABEL_134:
    if (v7 == 33 && !v10)
    {
      v16 = [objc_opt_self() mainBundle];
      v41 = 0x800000010011EB70;
      v17 = v3 + 1;
      v18 = 0x800000010011FA20;
      goto LABEL_22;
    }

    if (v7 == 34 && !v10)
    {
      v16 = [objc_opt_self() mainBundle];
      v41 = 0x800000010011EB70;
      v17 = 0x7250207373616C43;
      v18 = 0xEE0073736572676FLL;
      goto LABEL_22;
    }

    if (v7 == 35 && !v10)
    {
      v16 = [objc_opt_self() mainBundle];
      v41 = 0x800000010011EB70;
      v17 = 0x6172656D6143;
      goto LABEL_19;
    }

    if (v7 == 36 && !v10)
    {
      v16 = [objc_opt_self() mainBundle];
      v41 = 0x800000010011EB70;
      v17 = 0x6E654320656D6147;
      v18 = 0xEB00000000726574;
      goto LABEL_22;
    }

    if (v7 == 37 && !v10)
    {
      v16 = [objc_opt_self() mainBundle];
      v41 = 0x800000010011EB70;
      v17 = 0x64756F6C4369;
      goto LABEL_19;
    }

    if (v7 == 38 && !v10)
    {
      v16 = [objc_opt_self() mainBundle];
      v41 = 0x800000010011EB70;
      v29 = 0x6F6C65766544;
      goto LABEL_86;
    }

    if (v7 == 39 && !v10)
    {
      v39 = "primaryAppleAccount";
      v16 = [objc_opt_self() mainBundle];
      v17 = v3 - 4;
      goto LABEL_129;
    }

    if (v7 == 40 && !v10)
    {
      v39 = "Carrier Settings";
      v16 = [objc_opt_self() mainBundle];
      v17 = v3 - 3;
      goto LABEL_129;
    }

    if (v7 == 41 && !v10)
    {
      v39 = "iMessage Debugging";
      v40 = [objc_opt_self() mainBundle];
      goto LABEL_128;
    }

    if (v7 == 42 && !v10)
    {
      v39 = "Continuity Debugging";
      v40 = [objc_opt_self() mainBundle];
      goto LABEL_128;
    }

    if (v7 != 43 || v10)
    {
      if (v7 != 44 || v10)
      {
        v16 = [objc_opt_self() mainBundle];
        v41 = 0x800000010011EB70;
        v17 = 1936748609;
        v18 = 0xE400000000000000;
        goto LABEL_22;
      }

      v39 = "Unexpected Display Name for ";
      v16 = [objc_opt_self() mainBundle];
      v17 = v3 - 1;
      goto LABEL_129;
    }

    v27 = "Accessory Developer";
    v28 = [objc_opt_self() mainBundle];
LABEL_73:
    v16 = v28;
    v41 = 0x800000010011EB70;
    v18 = v27 | 0x8000000000000000;
    v17 = 0xD000000000000014;
    goto LABEL_22;
  }

  if (v7 == 13 && !v10)
  {
    v16 = [objc_opt_self() mainBundle];
    v41 = 0x800000010011EB70;
    v17 = 0x7375636F46;
    v18 = 0xE500000000000000;
    goto LABEL_22;
  }

  if (v7 == 14 && !v10)
  {
    v16 = [objc_opt_self() mainBundle];
    v41 = 0x800000010011EB70;
    v17 = 0x54206E6565726353;
    v18 = 0xEB00000000656D69;
    goto LABEL_22;
  }

  if (v7 == 15 && !v10)
  {
    v16 = [objc_opt_self() mainBundle];
    v41 = 0x800000010011EB70;
    v17 = 0x6C6172656E6547;
    v18 = 0xE700000000000000;
    goto LABEL_22;
  }

  if (v7 == 16 && !v10)
  {
    v16 = [objc_opt_self() mainBundle];
    v41 = 0x800000010011EB70;
    v17 = 0x206C6F72746E6F43;
    v18 = 0xEE007265746E6543;
    goto LABEL_22;
  }

  if (v7 == 17 && !v10)
  {
    v16 = [objc_opt_self() mainBundle];
    v41 = 0x800000010011EB70;
    v17 = 0x42206E6F69746341;
    v19 = 0x6E6F747475;
    goto LABEL_21;
  }

  if (v7 == 18 && !v10)
  {
    v27 = "Home Screen & App Library";
    v28 = [objc_opt_self() mainBundle];
    goto LABEL_73;
  }

  if (v7 == 19 && !v10)
  {
    v16 = [objc_opt_self() mainBundle];
    v41 = 0x800000010011EB70;
    v17 = 0xD000000000000019;
    v18 = 0x800000010011FB20;
    goto LABEL_22;
  }

  if (v7 == 20 && !v10)
  {
    v16 = [objc_opt_self() mainBundle];
    v41 = 0x800000010011EB70;
    v17 = 0xD000000000000017;
    v18 = 0x800000010011FB00;
    goto LABEL_22;
  }

  if (v7 == 21 && !v10)
  {
    v16 = [objc_opt_self() mainBundle];
    v41 = 0x800000010011EB70;
    v17 = 0x6269737365636341;
    v19 = 0x7974696C69;
    goto LABEL_21;
  }

  if (v7 == 22 && !v10)
  {
    v16 = [objc_opt_self() mainBundle];
    v41 = 0x800000010011EB70;
    v29 = 0x61706C6C6157;
LABEL_86:
    v17 = v29 & 0xFFFFFFFFFFFFLL | 0x6570000000000000;
    v18 = 0xE900000000000072;
    goto LABEL_22;
  }

  if (v7 == 23 && !v10)
  {
    v16 = [objc_opt_self() mainBundle];
    v41 = 0x800000010011EB70;
    v30 = 0x42646E617453;
LABEL_90:
    v17 = v30 & 0xFFFFFFFFFFFFLL | 0x79000000000000;
    v18 = 0xE700000000000000;
    goto LABEL_22;
  }

  if (v7 == 24 && !v10)
  {
    if (sub_10002DBB0())
    {
      v16 = [objc_opt_self() mainBundle];
      v41 = 0x800000010011EB70;
      v17 = 0xD000000000000019;
      v18 = 0x800000010011FAE0;
    }

    else
    {
      v16 = [objc_opt_self() mainBundle];
      v41 = 0x800000010011EB70;
      v17 = 1769105747;
      v18 = 0xE400000000000000;
    }

    goto LABEL_22;
  }

LABEL_96:
  if (v7 == 25 && !v10)
  {
    v16 = [objc_opt_self() mainBundle];
    v41 = 0x800000010011EB70;
    v17 = 0x686372616553;
    goto LABEL_19;
  }

  if (v7 == 26 && !v10)
  {
    v16 = [objc_opt_self() mainBundle];
    v41 = 0x800000010011EB70;
    v17 = 0x655020656C707041;
    v18 = 0xEC0000006C69636ELL;
    goto LABEL_22;
  }

  if (v7 != 27 || v10)
  {
    v3 = 0xD000000000000014;
    if (v7 == 28 && !v10)
    {
      v16 = [objc_opt_self() mainBundle];
      v41 = 0x800000010011EB70;
      v17 = 0x636E656772656D45;
      v19 = 0x534F532079;
      goto LABEL_21;
    }

    if (v7 == 29 && !v10)
    {
      v16 = [objc_opt_self() mainBundle];
      v41 = 0x800000010011EB70;
      v17 = 0xD000000000000016;
      v18 = 0x800000010011FA80;
      goto LABEL_22;
    }

    if (v7 == 30 && !v10)
    {
      v16 = [objc_opt_self() mainBundle];
      v41 = 0x800000010011EB70;
      v30 = 0x726574746142;
      goto LABEL_90;
    }

    if (v7 == 31 && !v10)
    {
      v39 = "Wallet & Apple Pay";
      v40 = [objc_opt_self() mainBundle];
LABEL_128:
      v16 = v40;
      v17 = v3 - 2;
LABEL_129:
      v41 = 0x800000010011EB70;
      v18 = v39 | 0x8000000000000000;
      goto LABEL_22;
    }

    if (v7 == 32 && !v10)
    {
      v16 = [objc_opt_self() mainBundle];
      v41 = 0x800000010011EB70;
      v18 = 0x800000010011FA40;
      v17 = 0x1000000000000013;
      goto LABEL_22;
    }

    goto LABEL_134;
  }

  result = MobileGestalt_get_current_device();
  if (!result)
  {
    __break(1u);
    goto LABEL_172;
  }

  v31 = result;
  pearlIDCapability = MobileGestalt_get_pearlIDCapability();

  if (pearlIDCapability)
  {
    result = MobileGestalt_get_current_device();
    if (!result)
    {
LABEL_173:
      __break(1u);
      goto LABEL_174;
    }

    v33 = result;
    isSimulator = MobileGestalt_get_isSimulator();

    if ((isSimulator & 1) == 0)
    {
      v23 = "Touch ID & Passcode";
      v16 = [objc_opt_self() mainBundle];
      v17 = 0xD000000000000012;
      goto LABEL_36;
    }
  }

  result = MobileGestalt_get_current_device();
  if (!result)
  {
LABEL_172:
    __break(1u);
    goto LABEL_173;
  }

  v35 = result;
  touchIDCapability = MobileGestalt_get_touchIDCapability();

  if (!touchIDCapability)
  {
LABEL_113:
    v16 = [objc_opt_self() mainBundle];
    v41 = 0x800000010011EB70;
    v17 = 0x65646F6373736150;
    v18 = 0xE800000000000000;
    goto LABEL_22;
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v37 = result;
    v38 = MobileGestalt_get_isSimulator();

    if (v38)
    {
      goto LABEL_113;
    }

    v23 = "Exposure Notifications";
    v16 = [objc_opt_self() mainBundle];
    v17 = 0xD000000000000013;
LABEL_36:
    v41 = 0x800000010011EB70;
    v18 = v23 | 0x8000000000000000;
    goto LABEL_22;
  }

LABEL_174:
  __break(1u);
  return result;
}

uint64_t sub_10002BB48(uint64_t *a1, int8x16_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  if (v7 <= 2)
  {
    if (v7)
    {
      if (v7 == 1)
      {
        if (a2[2].i8[0] == 1)
        {
          goto LABEL_27;
        }

        return 0;
      }

      if (a2[2].i8[0] != 2)
      {
        return 0;
      }

      v8 = a2[1].i64[0];
      v9 = a2[1].i64[1];
      if (v3 != a2->i64[0] || v4 != a2->i64[1])
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (a2[2].i8[0])
      {
        return 0;
      }

      v8 = a2[1].i64[0];
      v9 = a2[1].i64[1];
      if (v3 != a2->i64[0] || v4 != a2->i64[1])
      {
LABEL_22:
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }
      }
    }

    if (v5 == v8 && v6 == v9)
    {
      return 1;
    }

    goto LABEL_30;
  }

  if (v7 > 4)
  {
    if (v7 == 5)
    {
      if (a2[2].i8[0] != 5)
      {
        return 0;
      }

      goto LABEL_27;
    }

    v12 = v5 | v4;
    if (v12 | v3 | v6)
    {
      v13 = v12 | v6;
      if (v3 != 1 || v13)
      {
        if (v3 != 2 || v13)
        {
          if (v3 != 3 || v13)
          {
            if (v3 != 4 || v13)
            {
              if (v3 != 5 || v13)
              {
                if (v3 != 6 || v13)
                {
                  if (v3 != 7 || v13)
                  {
                    if (v3 != 8 || v13)
                    {
                      if (v3 != 9 || v13)
                      {
                        if (v3 != 10 || v13)
                        {
                          if (v3 != 11 || v13)
                          {
                            if (v3 != 12 || v13)
                            {
                              if (v3 != 13 || v13)
                              {
                                if (v3 != 14 || v13)
                                {
                                  if (v3 != 15 || v13)
                                  {
                                    if (v3 != 16 || v13)
                                    {
                                      if (v3 != 17 || v13)
                                      {
                                        if (v3 != 18 || v13)
                                        {
                                          if (v3 != 19 || v13)
                                          {
                                            if (v3 != 20 || v13)
                                            {
                                              if (v3 != 21 || v13)
                                              {
                                                if (v3 != 22 || v13)
                                                {
                                                  if (v3 != 23 || v13)
                                                  {
                                                    if (v3 != 24 || v13)
                                                    {
                                                      if (v3 != 25 || v13)
                                                      {
                                                        if (v3 != 26 || v13)
                                                        {
                                                          if (v3 != 27 || v13)
                                                          {
                                                            if (v3 != 28 || v13)
                                                            {
                                                              if (v3 != 29 || v13)
                                                              {
                                                                if (v3 != 30 || v13)
                                                                {
                                                                  if (v3 != 31 || v13)
                                                                  {
                                                                    if (v3 != 32 || v13)
                                                                    {
                                                                      if (v3 != 33 || v13)
                                                                      {
                                                                        if (v3 != 34 || v13)
                                                                        {
                                                                          if (v3 != 35 || v13)
                                                                          {
                                                                            if (v3 != 36 || v13)
                                                                            {
                                                                              if (v3 != 37 || v13)
                                                                              {
                                                                                if (v3 != 38 || v13)
                                                                                {
                                                                                  if (v3 != 39 || v13)
                                                                                  {
                                                                                    if (v3 != 40 || v13)
                                                                                    {
                                                                                      if (v3 != 41 || v13)
                                                                                      {
                                                                                        if (v3 != 42 || v13)
                                                                                        {
                                                                                          if (v3 != 43 || v13)
                                                                                          {
                                                                                            if (v3 != 44 || v13)
                                                                                            {
                                                                                              if (a2[2].i8[0] != 6 || a2->i64[0] != 45)
                                                                                              {
                                                                                                return 0;
                                                                                              }
                                                                                            }

                                                                                            else if (a2[2].i8[0] != 6 || a2->i64[0] != 44)
                                                                                            {
                                                                                              return 0;
                                                                                            }
                                                                                          }

                                                                                          else if (a2[2].i8[0] != 6 || a2->i64[0] != 43)
                                                                                          {
                                                                                            return 0;
                                                                                          }
                                                                                        }

                                                                                        else if (a2[2].i8[0] != 6 || a2->i64[0] != 42)
                                                                                        {
                                                                                          return 0;
                                                                                        }
                                                                                      }

                                                                                      else if (a2[2].i8[0] != 6 || a2->i64[0] != 41)
                                                                                      {
                                                                                        return 0;
                                                                                      }
                                                                                    }

                                                                                    else if (a2[2].i8[0] != 6 || a2->i64[0] != 40)
                                                                                    {
                                                                                      return 0;
                                                                                    }
                                                                                  }

                                                                                  else if (a2[2].i8[0] != 6 || a2->i64[0] != 39)
                                                                                  {
                                                                                    return 0;
                                                                                  }
                                                                                }

                                                                                else if (a2[2].i8[0] != 6 || a2->i64[0] != 38)
                                                                                {
                                                                                  return 0;
                                                                                }
                                                                              }

                                                                              else if (a2[2].i8[0] != 6 || a2->i64[0] != 37)
                                                                              {
                                                                                return 0;
                                                                              }
                                                                            }

                                                                            else if (a2[2].i8[0] != 6 || a2->i64[0] != 36)
                                                                            {
                                                                              return 0;
                                                                            }
                                                                          }

                                                                          else if (a2[2].i8[0] != 6 || a2->i64[0] != 35)
                                                                          {
                                                                            return 0;
                                                                          }
                                                                        }

                                                                        else if (a2[2].i8[0] != 6 || a2->i64[0] != 34)
                                                                        {
                                                                          return 0;
                                                                        }
                                                                      }

                                                                      else if (a2[2].i8[0] != 6 || a2->i64[0] != 33)
                                                                      {
                                                                        return 0;
                                                                      }
                                                                    }

                                                                    else if (a2[2].i8[0] != 6 || a2->i64[0] != 32)
                                                                    {
                                                                      return 0;
                                                                    }
                                                                  }

                                                                  else if (a2[2].i8[0] != 6 || a2->i64[0] != 31)
                                                                  {
                                                                    return 0;
                                                                  }
                                                                }

                                                                else if (a2[2].i8[0] != 6 || a2->i64[0] != 30)
                                                                {
                                                                  return 0;
                                                                }
                                                              }

                                                              else if (a2[2].i8[0] != 6 || a2->i64[0] != 29)
                                                              {
                                                                return 0;
                                                              }
                                                            }

                                                            else if (a2[2].i8[0] != 6 || a2->i64[0] != 28)
                                                            {
                                                              return 0;
                                                            }
                                                          }

                                                          else if (a2[2].i8[0] != 6 || a2->i64[0] != 27)
                                                          {
                                                            return 0;
                                                          }
                                                        }

                                                        else if (a2[2].i8[0] != 6 || a2->i64[0] != 26)
                                                        {
                                                          return 0;
                                                        }
                                                      }

                                                      else if (a2[2].i8[0] != 6 || a2->i64[0] != 25)
                                                      {
                                                        return 0;
                                                      }
                                                    }

                                                    else if (a2[2].i8[0] != 6 || a2->i64[0] != 24)
                                                    {
                                                      return 0;
                                                    }
                                                  }

                                                  else if (a2[2].i8[0] != 6 || a2->i64[0] != 23)
                                                  {
                                                    return 0;
                                                  }
                                                }

                                                else if (a2[2].i8[0] != 6 || a2->i64[0] != 22)
                                                {
                                                  return 0;
                                                }
                                              }

                                              else if (a2[2].i8[0] != 6 || a2->i64[0] != 21)
                                              {
                                                return 0;
                                              }
                                            }

                                            else if (a2[2].i8[0] != 6 || a2->i64[0] != 20)
                                            {
                                              return 0;
                                            }
                                          }

                                          else if (a2[2].i8[0] != 6 || a2->i64[0] != 19)
                                          {
                                            return 0;
                                          }
                                        }

                                        else if (a2[2].i8[0] != 6 || a2->i64[0] != 18)
                                        {
                                          return 0;
                                        }
                                      }

                                      else if (a2[2].i8[0] != 6 || a2->i64[0] != 17)
                                      {
                                        return 0;
                                      }
                                    }

                                    else if (a2[2].i8[0] != 6 || a2->i64[0] != 16)
                                    {
                                      return 0;
                                    }
                                  }

                                  else if (a2[2].i8[0] != 6 || a2->i64[0] != 15)
                                  {
                                    return 0;
                                  }
                                }

                                else if (a2[2].i8[0] != 6 || a2->i64[0] != 14)
                                {
                                  return 0;
                                }
                              }

                              else if (a2[2].i8[0] != 6 || a2->i64[0] != 13)
                              {
                                return 0;
                              }
                            }

                            else if (a2[2].i8[0] != 6 || a2->i64[0] != 12)
                            {
                              return 0;
                            }
                          }

                          else if (a2[2].i8[0] != 6 || a2->i64[0] != 11)
                          {
                            return 0;
                          }
                        }

                        else if (a2[2].i8[0] != 6 || a2->i64[0] != 10)
                        {
                          return 0;
                        }
                      }

                      else if (a2[2].i8[0] != 6 || a2->i64[0] != 9)
                      {
                        return 0;
                      }
                    }

                    else if (a2[2].i8[0] != 6 || a2->i64[0] != 8)
                    {
                      return 0;
                    }
                  }

                  else if (a2[2].i8[0] != 6 || a2->i64[0] != 7)
                  {
                    return 0;
                  }
                }

                else if (a2[2].i8[0] != 6 || a2->i64[0] != 6)
                {
                  return 0;
                }
              }

              else if (a2[2].i8[0] != 6 || a2->i64[0] != 5)
              {
                return 0;
              }
            }

            else if (a2[2].i8[0] != 6 || a2->i64[0] != 4)
            {
              return 0;
            }
          }

          else if (a2[2].i8[0] != 6 || a2->i64[0] != 3)
          {
            return 0;
          }
        }

        else if (a2[2].i8[0] != 6 || a2->i64[0] != 2)
        {
          return 0;
        }
      }

      else if (a2[2].i8[0] != 6 || a2->i64[0] != 1)
      {
        return 0;
      }

      if (a2[1].i64[0] | a2[1].i64[1] | a2->i64[1])
      {
        return 0;
      }
    }

    else
    {
      if (a2[2].i8[0] != 6)
      {
        return 0;
      }

      v14 = vorrq_s8(*a2, a2[1]);
      if (vorr_s8(*v14.i8, *&vextq_s8(v14, v14, 8uLL)))
      {
        return 0;
      }
    }

    return 1;
  }

  if (v7 != 3)
  {
    if (a2[2].i8[0] == 4)
    {
      goto LABEL_27;
    }

    return 0;
  }

  if (a2[2].i8[0] != 3)
  {
    return 0;
  }

LABEL_27:
  if (v3 == a2->i64[0] && v4 == a2->i64[1])
  {
    return 1;
  }

LABEL_30:

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_10002C3F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrimarySettingsListItemViewType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002C468(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 249)
  {
    *(result + 32) = -a2;
  }

  else
  {
    v7 = type metadata accessor for PrimarySettingsListItemViewType(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10002C51C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 249)
  {
    v4 = *(a1 + 32);
    if (v4 > 6)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for PrimarySettingsListItemViewType(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void sub_10002C5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 5u)
  {
    if (((1 << a5) & 0x3A) != 0)
    {
    }

    else
    {
    }
  }
}

uint64_t sub_10002C634(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrimarySettingsListItemModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002C698(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10002C6F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10002C758(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10002C7B8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0x3Fu)
  {
  }

  return result;
}

uint64_t sub_10002C7D0(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_10002C7EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrimarySettingsListItemModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002C878(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10002C8C0(uint64_t a1)
{
  v2 = sub_10004DED0(&unk_10015EDB0, &unk_100111C70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002C928(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrimarySettingsListSectionModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002C98C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004DED0(&unk_10015FB70, &unk_100112010);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002CA38(uint64_t a1)
{
  v2 = type metadata accessor for PrimarySettingsListSectionModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002CA94(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004DED0(&unk_10015FB70, &unk_100112010);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002CB58()
{
  v11 = _typeName(_:qualified:)();
  v12 = v1;
  v2._countAndFlagsBits = 0x203A6469207B20;
  v2._object = 0xE700000000000000;
  String.append(_:)(v2);
  v3 = *(v0 + 48);
  v13[0] = *(v0 + 32);
  v13[1] = v3;
  v14 = *(v0 + 64);
  sub_10002698C(v13, v10);
  v4 = sub_100026A58();
  v6 = v5;
  sub_100026A04(v13);
  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 32032;
  v8._object = 0xE200000000000000;
  String.append(_:)(v8);
  return v11;
}

unint64_t sub_10002CC5C()
{
  result = qword_10015C2B0;
  if (!qword_10015C2B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10015C2B0);
  }

  return result;
}

uint64_t sub_10002CCA8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = [objc_opt_self() mainBundle];
      v12 = 0x80000001001255B0;
      v4 = 0x494649575F46464FLL;
      v9 = 0xD000000000000026;
      v5 = 0xE800000000000000;
      v6.super.isa = v3;
      v7 = 0;
      v8 = 0xE000000000000000;
      goto LABEL_12;
    }

    if (v2 == 3)
    {
      v3 = [objc_opt_self() mainBundle];
      v12 = 0x8000000100120D70;
      v4 = 0x6E6E6F4320746F4ELL;
      v5 = 0xED00006465746365;
      goto LABEL_8;
    }
  }

  else
  {
    if (!v2)
    {
      countAndFlagsBits = 0;
      goto LABEL_13;
    }

    if (v2 == 1)
    {
      v3 = [objc_opt_self() mainBundle];
      v12 = 0x8000000100120D70;
      v4 = 0x616C696176616E55;
      v5 = 0xEB00000000656C62;
LABEL_8:
      v6.super.isa = v3;
      v7 = 0;
      v8 = 0xE000000000000000;
      v9 = 0xD000000000000010;
LABEL_12:
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v4, 0, v6, *&v7, *(&v12 - 1))._countAndFlagsBits;

      goto LABEL_13;
    }
  }

  countAndFlagsBits = v1;
LABEL_13:
  sub_10002CE7C(v1, v2);
  return countAndFlagsBits;
}

uint64_t sub_10002CE7C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

uint64_t sub_10002CE90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrimarySettingsListItemViewType(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002CEF4()
{
  countAndFlagsBits = *(v0 + 64);
  if (countAndFlagsBits <= 1)
  {
    if (!countAndFlagsBits)
    {
      return countAndFlagsBits;
    }

    v2 = [objc_opt_self() mainBundle];
    v10 = 0x8000000100120D70;
    v3 = 0x616C696176616E55;
    v4 = 0xEB00000000656C62;
    goto LABEL_11;
  }

  if (countAndFlagsBits == 2)
  {
    v2 = [objc_opt_self() mainBundle];
    v10 = 0x80000001001255B0;
    v3 = 0x45554C425F46464FLL;
    v4 = 0xED000048544F4F54;
    v5 = 0xD000000000000026;
    goto LABEL_8;
  }

  if (countAndFlagsBits != 3)
  {
    v2 = [objc_opt_self() mainBundle];
    v10 = 0x8000000100120D70;
    v3 = 0x6E6E6F4320746F4ELL;
    v4 = 0xED00006465746365;
LABEL_11:
    v6.super.isa = v2;
    v7 = 0;
    v8 = 0xE000000000000000;
    v5 = 0xD000000000000010;
    goto LABEL_12;
  }

  v2 = [objc_opt_self() mainBundle];
  v10 = 0x8000000100125580;
  v3 = 0x5445554C425F4E4FLL;
  v4 = 0xEC00000048544F4FLL;
  v5 = 0xD000000000000025;
LABEL_8:
  v6.super.isa = v2;
  v7 = 0;
  v8 = 0xE000000000000000;
LABEL_12:
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v3, 0, v6, *&v7, *&v5)._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_10002D10C(uint64_t a1)
{
  v2 = type metadata accessor for PrimarySettingsListItemModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002D168(uint64_t a1)
{
  if ((a1 & 0x10100000000) == 0)
  {
    v1 = [objc_opt_self() mainBundle];
    v12 = 0x80000001001255B0;
    v5 = 0x4C4C45435F46464FLL;
    v6 = 0xEC00000052414C55;
    v7 = 0xD000000000000026;
    v8.super.isa = v1;
    v9 = 0;
    v10 = 0xE000000000000000;
LABEL_7:
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v5, 0, v8, *&v9, *&v7)._countAndFlagsBits;
    goto LABEL_8;
  }

  if ((~a1 & 0x10000010100) != 0)
  {
    if ((a1 & 1) == 0)
    {
      return 0;
    }

    v1 = [objc_opt_self() mainBundle];
    v12 = 0x8000000100120D70;
    v5 = 0x656E616C70726941;
    v6 = 0xED000065646F4D20;
    v8.super.isa = v1;
    v9 = 0;
    v10 = 0xE000000000000000;
    v7 = 0xD000000000000010;
    goto LABEL_7;
  }

  v1 = [objc_opt_self() mainBundle];
  v13._object = 0x8000000100120D70;
  v2._countAndFlagsBits = 0x4D4953206F4ELL;
  v2._object = 0xE600000000000000;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v13._countAndFlagsBits = 0xD000000000000010;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v1, v3, v13)._countAndFlagsBits;
LABEL_8:

  return countAndFlagsBits;
}

uint64_t sub_10002D348()
{
  v11 = _typeName(_:qualified:)();
  v12 = v1;
  v2._countAndFlagsBits = 0x203A6469207B20;
  v2._object = 0xE700000000000000;
  String.append(_:)(v2);
  v3 = *(v0 + 16);
  v13[0] = *v0;
  v13[1] = v3;
  v14 = *(v0 + 32);
  sub_10002698C(v13, v10);
  v4 = sub_100026A58();
  v6 = v5;
  sub_100026A04(v13);
  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 32032;
  v8._object = 0xE200000000000000;
  String.append(_:)(v8);
  return v11;
}

unint64_t sub_10002D444(unint64_t countAndFlagsBits, uint64_t a2, char a3)
{
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = sub_10004DED0(&qword_10015FE08, &qword_1001174F8);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v25 - v10;
  if (!a3)
  {

    return countAndFlagsBits;
  }

  if (a3 != 1)
  {
    if (countAndFlagsBits > 1)
    {
      if (countAndFlagsBits ^ 2 | a2)
      {
        v14 = [objc_opt_self() mainBundle];
        v24 = 0x80000001001250D0;
        v16 = 0x657463656E6E6F43;
        v18 = 0xE900000000000064;
        v20.super.isa = v14;
        v21 = 0;
        v22 = 0xE000000000000000;
        v19 = 0xD000000000000020;
        goto LABEL_12;
      }

      v14 = [objc_opt_self() mainBundle];
      v15 = 67;
      v24 = 0x8000000100125100;
      v16 = 0x6E6E6F4320746F4ELL;
      v17 = 0x6465746365;
    }

    else
    {
      v13 = countAndFlagsBits | a2;
      countAndFlagsBits = 0;
      if (!v13)
      {
        return countAndFlagsBits;
      }

      v14 = [objc_opt_self() mainBundle];
      v15 = 22;
      v24 = 0x8000000100125170;
      v16 = 0x455441535F46464FLL;
      v17 = 0x4554494C4CLL;
    }

    v18 = v17 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
    v19 = v15 | 0xD000000000000020;
    v20.super.isa = v14;
    v21 = 0;
    v22 = 0xE000000000000000;
LABEL_12:
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v16, 0, v20, *&v21, *(&v24 - 1))._countAndFlagsBits;

    return countAndFlagsBits;
  }

  v25[1] = countAndFlagsBits;
  v12 = v9;
  static Locale.autoupdatingCurrent.getter();
  sub_100058918();
  IntegerFormatStyle.init(locale:)();
  sub_1000D5FEC();
  BinaryInteger.formatted<A>(_:)();
  (*(v8 + 8))(v11, v12);
  return v25[2];
}

uint64_t sub_10002D778(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t sub_10002D78C(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

id sub_10002D7CC(uint64_t a1, uint64_t a2, char a3)
{
  v5 = String._bridgeToObjectiveC()();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

void *sub_10002D8D4(uint64_t a1, uint64_t a2)
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

  sub_10004DED0(&unk_10015ED80, &qword_100115FC0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_10002D948(uint64_t a1, unint64_t a2)
{
  v3 = sub_10002D994(a1, a2);
  sub_10002DAC4(&off_10014CBE8);
  return v3;
}

void *sub_10002D994(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_10002D8D4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10002D8D4(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10002DAC4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1000B883C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10002DBB0()
{
  v38 = type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason();
  v42 = *(v38 - 8);
  __chkstk_darwin(v38);
  v37 = &v33 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = type metadata accessor for GenerativeModelsAvailability.Availability.UnavailableInfo();
  v40 = *(v1 - 8);
  v41 = v1;
  __chkstk_darwin(v1);
  v39 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for GenerativeModelsAvailability.Availability();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v33 - v8;
  v10 = type metadata accessor for GenerativeModelsAvailability.Parameters();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for GenerativeModelsAvailability();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  GenerativeModelsAvailability.Parameters.init(useCaseIdentifier:)();
  static GenerativeModelsAvailability.current(parameters:)();
  (*(v11 + 8))(v13, v10);
  GenerativeModelsAvailability.availability.getter();
  (*(v4 + 16))(v7, v9, v3);
  if ((*(v4 + 88))(v7, v3) == enum case for GenerativeModelsAvailability.Availability.unavailable(_:))
  {
    v35 = v15;
    v36 = v14;
    (*(v4 + 96))(v7, v3);
    (*(v40 + 32))(v39, v7, v41);
    v18 = GenerativeModelsAvailability.Availability.UnavailableInfo.reasons.getter();
    v19 = v42;
    v21 = v37;
    v20 = v38;
    v34 = *(v42 + 104);
    v34(v37, enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.deviceNotCapable(_:), v38);
    v22 = sub_100061E00(v21, v18);

    v23 = v20;
    v24 = *(v19 + 8);
    v42 = v19 + 8;
    v24(v21, v23);
    if (v22)
    {
      (*(v40 + 8))(v39, v41);
      (*(v4 + 8))(v9, v3);
      (*(v35 + 8))(v17, v36);
      v25 = 0;
    }

    else
    {
      v27 = v39;
      v28 = GenerativeModelsAvailability.Availability.UnavailableInfo.reasons.getter();
      v30 = v37;
      v29 = v38;
      v34(v37, enum case for GenerativeModelsAvailability.Availability.UnavailableInfo.UnavailableReason.regionIneligible(_:), v38);
      v31 = sub_100061E00(v30, v28);

      v24(v30, v29);
      (*(v40 + 8))(v27, v41);
      (*(v4 + 8))(v9, v3);
      (*(v35 + 8))(v17, v36);
      v25 = v31 ^ 1;
    }
  }

  else
  {
    v26 = *(v4 + 8);
    v26(v9, v3);
    (*(v15 + 8))(v17, v14);
    v26(v7, v3);
    v25 = 1;
  }

  return v25 & 1;
}

uint64_t sub_10002E120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for PrimarySettingsListItemViewType(0);
  v9 = __chkstk_darwin(v8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v53 - v12;
  v14 = type metadata accessor for PrimarySettingsListItemModel(0);
  v15 = __chkstk_darwin(v14);
  v62 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v71 = &v53 - v18;
  result = __chkstk_darwin(v17);
  v22 = &v53 - v21;
  v55 = a2;
  if (a3 != a2)
  {
    v23 = result;
    v24 = *a4;
    v25 = *(v20 + 72);
    v26 = *a4 + v25 * (a3 - 1);
    v60 = -v25;
    v61 = v24;
    v27 = a1 - a3;
    v54 = v25;
    v28 = v24 + v25 * a3;
    v64 = result;
    v65 = v8;
    v63 = &v53 - v21;
LABEL_6:
    v58 = v26;
    v59 = a3;
    v56 = v28;
    v57 = v27;
    v29 = v27;
    while (1)
    {
      sub_10002E9A8(v28, v22, type metadata accessor for PrimarySettingsListItemModel);
      sub_10002E9A8(v26, v71, type metadata accessor for PrimarySettingsListItemModel);
      sub_10002E9A8(&v22[*(v23 + 20)], v13, type metadata accessor for PrimarySettingsListItemViewType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 4)
      {
        if (EnumCaseMultiPayload <= 1)
        {
          if (EnumCaseMultiPayload)
          {
            v37 = type metadata accessor for PrimarySettingsListFamilyLinkModel;
          }

          else
          {
            v37 = type metadata accessor for PrimarySettingsListItemViewType;
          }

          sub_10002E888(v13, v37);
          v31 = 0;
          v32 = 0;
        }

        else if (EnumCaseMultiPayload == 2)
        {
          v38 = *v13;
          v39 = *(v13 + 1);
          v32 = *(v13 + 4);
          v66 = *(v13 + 3);
          sub_10002A748(v38, v39, v13[16]);
          v31 = v66;
        }

        else
        {
          v31 = *v13;
          v32 = *(v13 + 1);
        }
      }

      else
      {
        if (EnumCaseMultiPayload <= 7)
        {
          if (EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 6)
          {
            v31 = *(v13 + 3);
            v32 = *(v13 + 4);
            sub_10002A748(*v13, *(v13 + 1), v13[16]);
            goto LABEL_26;
          }

LABEL_18:
          v35 = *v13;
          v36 = *(v13 + 1);
          v32 = *(v13 + 4);
          v66 = *(v13 + 3);
          sub_10002A748(v35, v36, v13[16]);
LABEL_19:
          v31 = v66;

          goto LABEL_26;
        }

        if (EnumCaseMultiPayload == 8)
        {
          goto LABEL_18;
        }

        if (EnumCaseMultiPayload == 9)
        {
          v33 = *v13;
          v34 = *(v13 + 1);
          v32 = *(v13 + 4);
          v66 = *(v13 + 3);
          sub_100054F18(v33, v34, v13[16]);
          goto LABEL_19;
        }

        v31 = *(v13 + 3);
        v32 = *(v13 + 4);
        sub_100054F18(*v13, *(v13 + 1), v13[16]);
      }

LABEL_26:
      sub_10002E9A8(v71 + *(v23 + 20), v11, type metadata accessor for PrimarySettingsListItemViewType);
      v40 = swift_getEnumCaseMultiPayload();
      if (v40 <= 4)
      {
        if (v40 <= 1)
        {
          if (v40)
          {
            v47 = type metadata accessor for PrimarySettingsListFamilyLinkModel;
          }

          else
          {
            v47 = type metadata accessor for PrimarySettingsListItemViewType;
          }

          sub_10002E888(v11, v47);
          v41 = 0;
          v42 = 0;
          if (!v32)
          {
LABEL_58:
            if (v42)
            {
            }

            sub_10002E888(v71, type metadata accessor for PrimarySettingsListItemModel);
            v22 = v63;
            result = sub_10002E888(v63, type metadata accessor for PrimarySettingsListItemModel);
            v23 = v64;
LABEL_5:
            a3 = v59 + 1;
            v26 = v58 + v54;
            v27 = v57 - 1;
            v28 = v56 + v54;
            if (v59 + 1 == v55)
            {
              return result;
            }

            goto LABEL_6;
          }
        }

        else if (v40 == 2)
        {
          v48 = *v11;
          v49 = *(v11 + 1);
          v41 = *(v11 + 3);
          v42 = *(v11 + 4);
          v66 = v31;
          sub_10002A748(v48, v49, v11[16]);
          v31 = v66;

          if (!v32)
          {
            goto LABEL_58;
          }
        }

        else
        {
          v41 = *v11;
          v42 = *(v11 + 1);
          if (!v32)
          {
            goto LABEL_58;
          }
        }
      }

      else
      {
        if (v40 <= 7)
        {
          if (v40 == 5 || v40 == 6)
          {
            v41 = *(v11 + 3);
            v42 = *(v11 + 4);
            sub_10002A748(*v11, *(v11 + 1), v11[16]);
            if (!v32)
            {
              goto LABEL_58;
            }

            goto LABEL_50;
          }

LABEL_39:
          v45 = *v11;
          v46 = *(v11 + 1);
          v41 = *(v11 + 3);
          v42 = *(v11 + 4);
          v66 = v31;
          sub_10002A748(v45, v46, v11[16]);
LABEL_40:
          v31 = v66;

          if (!v32)
          {
            goto LABEL_58;
          }

          goto LABEL_50;
        }

        if (v40 == 8)
        {
          goto LABEL_39;
        }

        if (v40 == 9)
        {
          v43 = *v11;
          v44 = *(v11 + 1);
          v41 = *(v11 + 3);
          v42 = *(v11 + 4);
          v66 = v31;
          sub_100054F18(v43, v44, v11[16]);
          goto LABEL_40;
        }

        v41 = *(v11 + 3);
        v42 = *(v11 + 4);
        sub_100054F18(*v11, *(v11 + 1), v11[16]);
        if (!v32)
        {
          goto LABEL_58;
        }
      }

LABEL_50:
      if (v42)
      {
        v69 = v31;
        v70 = v32;
        v67 = v41;
        v68 = v42;
        sub_10002EAE0();
        v50 = StringProtocol.localizedStandardCompare<A>(_:)();

        sub_10002E888(v71, type metadata accessor for PrimarySettingsListItemModel);
        v22 = v63;
        result = sub_10002E888(v63, type metadata accessor for PrimarySettingsListItemModel);
        v23 = v64;
        if (v50 != -1)
        {
          goto LABEL_5;
        }

        if (!v61)
        {
          goto LABEL_60;
        }
      }

      else
      {

        sub_10002E888(v71, type metadata accessor for PrimarySettingsListItemModel);
        v22 = v63;
        result = sub_10002E888(v63, type metadata accessor for PrimarySettingsListItemModel);
        v23 = v64;
        if (!v61)
        {
LABEL_60:
          __break(1u);
          return result;
        }
      }

      v51 = v62;
      sub_10002C634(v28, v62);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_10002C634(v51, v26);
      v26 += v60;
      v28 += v60;
      if (__CFADD__(v29++, 1))
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

Swift::Int sub_10002E75C(char *a1)
{
  v2 = *(a1 + 1);
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for PrimarySettingsListItemModel(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for PrimarySettingsListItemModel(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_10005C190(v8, v9, a1, v4);
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
    return sub_10002E120(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10002E888(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10002E8E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10002E948(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10002E9A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002EA10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002EA78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_10002EAE0()
{
  result = qword_10015EB20;
  if (!qword_10015EB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015EB20);
  }

  return result;
}

BOOL sub_10002EB34()
{
  keyExistsAndHasValidFormat = 0;
  v0 = String._bridgeToObjectiveC()();
  v1 = String._bridgeToObjectiveC()();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v0, v1, &keyExistsAndHasValidFormat);

  if (keyExistsAndHasValidFormat)
  {
    v3 = AppBooleanValue == 0;
  }

  else
  {
    v3 = 1;
  }

  return !v3;
}

uint64_t sub_10002EC04()
{
  _StringGuts.grow(_:)(30);
  swift_getObjectType();
  v1 = _typeName(_:qualified:)();

  v2._countAndFlagsBits = 0x203A6469207B20;
  v2._object = 0xE700000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = sub_100026A58();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 0x6C7561666564202CLL;
  v4._object = 0xEF203A79654B7374;
  String.append(_:)(v4);
  String.append(_:)(*(v0 + OBJC_IVAR____TtC11SettingsApp48DefaultsObservingPrimarySettingsListItemProvider_defaultsKey));
  v5._countAndFlagsBits = 32032;
  v5._object = 0xE200000000000000;
  String.append(_:)(v5);
  return v1;
}

uint64_t sub_10002ED3C(uint64_t a1)
{
  v2 = type metadata accessor for PrimarySettingsListItemModel(0);
  v69 = *(v2 - 8);
  v3 = __chkstk_darwin(v2 - 8);
  v70 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v60 - v5;
  v7 = type metadata accessor for PrimarySettingsListSectionModel(0);
  v8 = __chkstk_darwin(v7);
  v67 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v66 = &v60 - v12;
  v64 = *(a1 + 16);
  if (v64)
  {
    v13 = 0;
    v14 = &_swiftEmptyDictionarySingleton;
    v63 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v15 = *(v10 + 28);
    v61 = a1;
    v62 = v15;
    v68 = &_swiftEmptyDictionarySingleton;
    v60 = v11;
    while (1)
    {
      if (v13 >= *(a1 + 16))
      {
        goto LABEL_35;
      }

      v16 = *(v11 + 72);
      v65 = v13;
      v17 = v63 + v16 * v13;
      v18 = v66;
      sub_10002F2E0(v17, v66, type metadata accessor for PrimarySettingsListSectionModel);
      v20 = *v18;
      v19 = *(v18 + 8);
      v21 = *(v18 + 16);
      sub_10002F2E0(v18, v67, type metadata accessor for PrimarySettingsListSectionModel);
      v22 = v68;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v71 = v22;
      v25 = sub_10002F348(v20, v19, v21);
      v26 = v22[2];
      v27 = (v24 & 1) == 0;
      v28 = v26 + v27;
      if (__OFADD__(v26, v27))
      {
        break;
      }

      v29 = v24;
      if (v22[3] >= v28)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1000B9DA8();
        }
      }

      else
      {
        sub_10002F55C(v28, isUniquelyReferenced_nonNull_native);
        v30 = sub_10002F348(v20, v19, v21);
        if ((v29 & 1) != (v31 & 1))
        {
          goto LABEL_39;
        }

        v25 = v30;
      }

      v32 = v71;
      v68 = v71;
      if (v29)
      {
        sub_1000C564C(v67, v71[7] + v25 * v16, type metadata accessor for PrimarySettingsListSectionModel);
      }

      else
      {
        v71[(v25 >> 6) + 8] |= 1 << v25;
        v33 = v32[6] + 24 * v25;
        *v33 = v20;
        *(v33 + 8) = v19;
        *(v33 + 16) = v21;
        sub_10002FE10(v67, v32[7] + v25 * v16, type metadata accessor for PrimarySettingsListSectionModel);
        v34 = v68[2];
        v35 = __OFADD__(v34, 1);
        v36 = v34 + 1;
        if (v35)
        {
          goto LABEL_37;
        }

        v68[2] = v36;
        sub_100025974(v20, v19, v21);
      }

      v37 = v66;
      v38 = *(v66 + v62);

      sub_10002CA38(v37);
      v39 = *(v38 + 16);
      if (v39)
      {
        v40 = 0;
        v41 = v38 + ((*(v69 + 80) + 32) & ~*(v69 + 80));
        while (1)
        {
          if (v40 >= *(v38 + 16))
          {
            __break(1u);
LABEL_33:
            __break(1u);
LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
            goto LABEL_36;
          }

          v43 = *(v69 + 72);
          sub_10002F2E0(v41 + v43 * v40, v6, type metadata accessor for PrimarySettingsListItemModel);
          v44 = *(v6 + 1);
          v72 = *v6;
          v73 = v44;
          v74 = v6[32];
          sub_10002FE10(v6, v70, type metadata accessor for PrimarySettingsListItemModel);
          sub_10002698C(&v72, &v71);
          v45 = swift_isUniquelyReferenced_nonNull_native();
          v71 = v14;
          v46 = sub_100030300(&v72);
          v48 = v14[2];
          v49 = (v47 & 1) == 0;
          v35 = __OFADD__(v48, v49);
          v50 = v48 + v49;
          if (v35)
          {
            goto LABEL_33;
          }

          v51 = v47;
          if (v14[3] < v50)
          {
            break;
          }

          if (v45)
          {
            goto LABEL_25;
          }

          v58 = v46;
          sub_1000B9B18();
          v46 = v58;
          if (v51)
          {
LABEL_17:
            v42 = v46;
            sub_100026A04(&v72);
            v14 = v71;
            sub_1000C564C(v70, v71[7] + v42 * v43, type metadata accessor for PrimarySettingsListItemModel);
            goto LABEL_18;
          }

LABEL_26:
          v14 = v71;
          v71[(v46 >> 6) + 8] |= 1 << v46;
          v53 = v14[6] + 40 * v46;
          v54 = v74;
          v55 = v73;
          *v53 = v72;
          *(v53 + 16) = v55;
          *(v53 + 32) = v54;
          sub_10002FE10(v70, v14[7] + v46 * v43, type metadata accessor for PrimarySettingsListItemModel);
          v56 = v14[2];
          v35 = __OFADD__(v56, 1);
          v57 = v56 + 1;
          if (v35)
          {
            goto LABEL_34;
          }

          v14[2] = v57;
LABEL_18:
          if (v39 == ++v40)
          {
            goto LABEL_3;
          }
        }

        sub_10003036C(v50, v45);
        v46 = sub_100030300(&v72);
        if ((v51 & 1) != (v52 & 1))
        {
          goto LABEL_38;
        }

LABEL_25:
        if (v51)
        {
          goto LABEL_17;
        }

        goto LABEL_26;
      }

LABEL_3:
      v13 = v65 + 1;

      v11 = v60;
      a1 = v61;
      if (v13 == v64)
      {
        return a1;
      }
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
LABEL_39:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    v68 = &_swiftEmptyDictionarySingleton;
    return a1;
  }

  return result;
}

uint64_t sub_10002F2E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_10002F348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  Hasher.init(_seed:)();
  sub_10002F3D4(v8, a1, a2, v3);
  v6 = Hasher._finalize()();

  return sub_10002FA68(a1, a2, v3, v6);
}

void sub_10002F3D4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
    if (a4)
    {
      v4 = 6;
    }

    else
    {
      v4 = 5;
    }

LABEL_7:
    Hasher._combine(_:)(v4);

    String.hash(into:)();
    return;
  }

  if (a4 == 2)
  {
    v4 = 7;
    goto LABEL_7;
  }

  switch(a2)
  {
    case 1:
      v5 = 1;
      break;
    case 2:
      v5 = 2;
      break;
    case 3:
      v5 = 3;
      break;
    case 4:
      v5 = 4;
      break;
    case 5:
      v5 = 8;
      break;
    case 6:
      v5 = 9;
      break;
    case 7:
      v5 = 10;
      break;
    case 8:
      v5 = 11;
      break;
    case 9:
      v5 = 12;
      break;
    case 10:
      v5 = 13;
      break;
    case 11:
      v5 = 14;
      break;
    case 12:
      v5 = 15;
      break;
    case 13:
      v5 = 16;
      break;
    case 14:
      v5 = 17;
      break;
    case 15:
      v5 = 18;
      break;
    case 16:
      v5 = 19;
      break;
    case 17:
      v5 = 20;
      break;
    default:
      v5 = 0;
      break;
  }

  Hasher._combine(_:)(v5);
}

uint64_t sub_10002F55C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for PrimarySettingsListSectionModel(0);
  v45 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v48 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_10004DED0(&qword_10015EF38, &qword_100116178);
  v46 = v4;
  v8 = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = v8;
  if (!*(v7 + 16))
  {
    goto LABEL_60;
  }

  v43 = v2;
  v44 = v7;
  v10 = 0;
  v11 = (v7 + 64);
  v12 = 1 << *(v7 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(v7 + 64);
  v15 = (v12 + 63) >> 6;
  v16 = v8 + 64;
  while (v14)
  {
    v19 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_15:
    v22 = v19 | (v10 << 6);
    v23 = *(v7 + 56);
    v24 = *(v7 + 48) + 24 * v22;
    v25 = *v24;
    v26 = *(v24 + 8);
    v27 = *(v24 + 16);
    v28 = *(v45 + 72);
    v29 = v23 + v28 * v22;
    if (v46)
    {
      sub_100030854(v29, v48, type metadata accessor for PrimarySettingsListSectionModel);
    }

    else
    {
      sub_10000822C(v29, v48, type metadata accessor for PrimarySettingsListSectionModel);
      sub_100025974(v25, v26, v27);
    }

    Hasher.init(_seed:)();
    v47 = v28;
    if (v27 <= 1)
    {
      if (v27)
      {
        v30 = 6;
      }

      else
      {
        v30 = 5;
      }

      goto LABEL_24;
    }

    if (v27 == 2)
    {
      v30 = 7;
LABEL_24:
      Hasher._combine(_:)(v30);
      String.hash(into:)();
      goto LABEL_45;
    }

    switch(v25)
    {
      case 1:
        v31 = 1;
        break;
      case 2:
        v31 = 2;
        break;
      case 3:
        v31 = 3;
        break;
      case 4:
        v31 = 4;
        break;
      case 5:
        v31 = 8;
        break;
      case 6:
        v31 = 9;
        break;
      case 7:
        v31 = 10;
        break;
      case 8:
        v31 = 11;
        break;
      case 9:
        v31 = 12;
        break;
      case 10:
        v31 = 13;
        break;
      case 11:
        v31 = 14;
        break;
      case 12:
        v31 = 15;
        break;
      case 13:
        v31 = 16;
        break;
      case 14:
        v31 = 17;
        break;
      case 15:
        v31 = 18;
        break;
      case 16:
        v31 = 19;
        break;
      case 17:
        v31 = 20;
        break;
      default:
        v31 = 0;
        break;
    }

    Hasher._combine(_:)(v31);
LABEL_45:
    v32 = Hasher._finalize()();
    v33 = -1 << *(v9 + 32);
    v34 = v32 & ~v33;
    v35 = v34 >> 6;
    if (((-1 << v34) & ~*(v16 + 8 * (v34 >> 6))) != 0)
    {
      v17 = __clz(__rbit64((-1 << v34) & ~*(v16 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v36 = 0;
      v37 = (63 - v33) >> 6;
      do
      {
        if (++v35 == v37 && (v36 & 1) != 0)
        {
          goto LABEL_63;
        }

        v38 = v35 == v37;
        if (v35 == v37)
        {
          v35 = 0;
        }

        v36 |= v38;
        v39 = *(v16 + 8 * v35);
      }

      while (v39 == -1);
      v17 = __clz(__rbit64(~v39)) + (v35 << 6);
    }

    *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
    v18 = *(v9 + 48) + 24 * v17;
    *v18 = v25;
    *(v18 + 8) = v26;
    *(v18 + 16) = v27;
    sub_100030854(v48, *(v9 + 56) + v47 * v17, type metadata accessor for PrimarySettingsListSectionModel);
    ++*(v9 + 16);
    v7 = v44;
  }

  v20 = v10;
  while (1)
  {
    v10 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_63:
      __break(1u);
      JUMPOUT(0x10002FA20);
    }

    if (v10 >= v15)
    {
      break;
    }

    v21 = v11[v10];
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v14 = (v21 - 1) & v21;
      goto LABEL_15;
    }
  }

  if (v46)
  {
    v40 = 1 << *(v7 + 32);
    v3 = v43;
    if (v40 >= 64)
    {
      bzero(v11, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v40;
    }

    *(v7 + 16) = 0;
LABEL_60:
  }

  else
  {

    v3 = v43;
  }

  *v3 = v9;
  return result;
}

unint64_t sub_10002FA68(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if (((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return v7;
  }

  v11 = ~v6;
  v12 = *(v4 + 48);
  v13 = a3;
  v14 = a1 != 17;
  v15 = a1 != 16;
  v16 = a1 != 15;
  v17 = a1 != 14;
  v18 = a1 != 13;
  v19 = a1 != 12;
  v20 = a1 != 11;
  v21 = a1 != 10;
  v22 = a1 == 9;
  v23 = a1 == 8;
  v24 = a1 == 7;
  v25 = a1 == 6;
  v26 = a1 == 5;
  v27 = a1 == 4;
  v28 = a1 == 3;
  v29 = a1 == 2;
  v30 = a1 == 1;
  if (a2)
  {
    v14 = 1;
    v15 = 1;
    v16 = 1;
    v17 = 1;
    v18 = 1;
    v19 = 1;
    v20 = 1;
    v21 = 1;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
  }

  v31 = v13 == 3;
  if (!v31)
  {
    v22 = 0;
  }

  v69 = v22;
  v32 = v31 && v23;
  v68 = v32;
  v33 = v31 && v24;
  v34 = v31 && v25;
  v66 = v34;
  v67 = v33;
  v35 = v31 && v26;
  v36 = v31 && v27;
  v64 = v36;
  v65 = v35;
  v37 = v31 && v28;
  v38 = v31 && v29;
  v62 = v38;
  v63 = v37;
  v39 = v31 && v30;
  if (!v31)
  {
    v14 = 1;
  }

  v60 = v14;
  v61 = v39;
  v40 = !v31 || v15;
  v59 = v40;
  v41 = !v31 || v16;
  v42 = !v31 || v17;
  v57 = v42;
  v58 = v41;
  v43 = !v31 || v18;
  v44 = !v31 || v19;
  v55 = v44;
  v56 = v43;
  v45 = !v31 || v20;
  v54 = v45;
  v46 = !v31 || v21;
  if (a2 | a1)
  {
    v47 = 0;
  }

  else
  {
    v47 = v31;
  }

  while (1)
  {
    v48 = (v12 + 24 * v7);
    v49 = *v48;
    v50 = v48[1];
    v51 = *(v48 + 16);
    if (v51 > 1)
    {
      break;
    }

    if (v51)
    {
      if (a3 != 1)
      {
        goto LABEL_57;
      }
    }

    else if (a3)
    {
      goto LABEL_57;
    }

LABEL_64:
    v52 = v49 == a1 && v50 == a2;
    if (v52 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      return v7;
    }

LABEL_57:
    v7 = (v7 + 1) & v11;
    if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return v7;
    }
  }

  if (v51 == 2)
  {
    if (a3 != 2)
    {
      goto LABEL_57;
    }

    goto LABEL_64;
  }

  switch(v49)
  {
    case 1:
      if (!v61)
      {
        goto LABEL_57;
      }

      break;
    case 2:
      if (!v62)
      {
        goto LABEL_57;
      }

      break;
    case 3:
      if (!v63)
      {
        goto LABEL_57;
      }

      break;
    case 4:
      if (!v64)
      {
        goto LABEL_57;
      }

      break;
    case 5:
      if (!v65)
      {
        goto LABEL_57;
      }

      break;
    case 6:
      if (!v66)
      {
        goto LABEL_57;
      }

      break;
    case 7:
      if (!v67)
      {
        goto LABEL_57;
      }

      break;
    case 8:
      if (!v68)
      {
        goto LABEL_57;
      }

      break;
    case 9:
      if (!v69)
      {
        goto LABEL_57;
      }

      break;
    case 10:
      if (v46)
      {
        goto LABEL_57;
      }

      break;
    case 11:
      if (v54)
      {
        goto LABEL_57;
      }

      break;
    case 12:
      if (v55)
      {
        goto LABEL_57;
      }

      break;
    case 13:
      if (v56)
      {
        goto LABEL_57;
      }

      break;
    case 14:
      if (v57)
      {
        goto LABEL_57;
      }

      break;
    case 15:
      if (v58)
      {
        goto LABEL_57;
      }

      break;
    case 16:
      if (v59)
      {
        goto LABEL_57;
      }

      break;
    case 17:
      if (v60)
      {
        goto LABEL_57;
      }

      break;
    default:
      if (!v47)
      {
        goto LABEL_57;
      }

      break;
  }

  return v7;
}

uint64_t sub_10002FE10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_10002FE78(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  v6 = *(v1 + 32);
  if (v6 <= 2)
  {
    if (*(v1 + 32))
    {
      if (v6 == 1)
      {
        v7 = 3;
LABEL_14:
        Hasher._combine(_:)(v7);
        goto LABEL_15;
      }

      v8 = 4;
    }

    else
    {
      v8 = 2;
    }

    Hasher._combine(_:)(v8);
    String.hash(into:)();
LABEL_15:

    String.hash(into:)();
    return;
  }

  if (*(v1 + 32) <= 4u)
  {
    if (v6 == 3)
    {
      v7 = 5;
    }

    else
    {
      v7 = 6;
    }

    goto LABEL_14;
  }

  if (v6 == 5)
  {
    v7 = 7;
    goto LABEL_14;
  }

  if (v5 | v3 | v2 | v4)
  {
    v9 = v5 | v3 | v4;
    if (v2 != 1 || v9)
    {
      if (v2 != 2 || v9)
      {
        if (v2 != 3 || v9)
        {
          if (v2 != 4 || v9)
          {
            if (v2 != 5 || v9)
            {
              if (v2 != 6 || v9)
              {
                if (v2 != 7 || v9)
                {
                  if (v2 != 8 || v9)
                  {
                    if (v2 != 9 || v9)
                    {
                      if (v2 != 10 || v9)
                      {
                        if (v2 != 11 || v9)
                        {
                          if (v2 != 12 || v9)
                          {
                            if (v2 != 13 || v9)
                            {
                              if (v2 != 14 || v9)
                              {
                                if (v2 != 15 || v9)
                                {
                                  if (v2 != 16 || v9)
                                  {
                                    if (v2 != 17 || v9)
                                    {
                                      if (v2 != 18 || v9)
                                      {
                                        if (v2 != 19 || v9)
                                        {
                                          if (v2 != 20 || v9)
                                          {
                                            if (v2 != 21 || v9)
                                            {
                                              if (v2 != 22 || v9)
                                              {
                                                if (v2 != 23 || v9)
                                                {
                                                  if (v2 != 24 || v9)
                                                  {
                                                    if (v2 != 25 || v9)
                                                    {
                                                      if (v2 != 26 || v9)
                                                      {
                                                        if (v2 != 27 || v9)
                                                        {
                                                          if (v2 != 28 || v9)
                                                          {
                                                            if (v2 != 29 || v9)
                                                            {
                                                              if (v2 != 30 || v9)
                                                              {
                                                                if (v2 != 31 || v9)
                                                                {
                                                                  if (v2 != 32 || v9)
                                                                  {
                                                                    if (v2 != 33 || v9)
                                                                    {
                                                                      if (v2 != 34 || v9)
                                                                      {
                                                                        if (v2 != 35 || v9)
                                                                        {
                                                                          if (v2 != 36 || v9)
                                                                          {
                                                                            if (v2 != 37 || v9)
                                                                            {
                                                                              if (v2 != 38 || v9)
                                                                              {
                                                                                if (v2 != 39 || v9)
                                                                                {
                                                                                  if (v2 != 40 || v9)
                                                                                  {
                                                                                    if (v2 != 41 || v9)
                                                                                    {
                                                                                      if (v2 != 42 || v9)
                                                                                      {
                                                                                        if (v2 != 43 || v9)
                                                                                        {
                                                                                          if (v2 != 44 || v9)
                                                                                          {
                                                                                            v10 = 51;
                                                                                          }

                                                                                          else
                                                                                          {
                                                                                            v10 = 50;
                                                                                          }
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          v10 = 49;
                                                                                        }
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v10 = 48;
                                                                                      }
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v10 = 47;
                                                                                    }
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v10 = 46;
                                                                                  }
                                                                                }

                                                                                else
                                                                                {
                                                                                  v10 = 45;
                                                                                }
                                                                              }

                                                                              else
                                                                              {
                                                                                v10 = 44;
                                                                              }
                                                                            }

                                                                            else
                                                                            {
                                                                              v10 = 43;
                                                                            }
                                                                          }

                                                                          else
                                                                          {
                                                                            v10 = 42;
                                                                          }
                                                                        }

                                                                        else
                                                                        {
                                                                          v10 = 41;
                                                                        }
                                                                      }

                                                                      else
                                                                      {
                                                                        v10 = 40;
                                                                      }
                                                                    }

                                                                    else
                                                                    {
                                                                      v10 = 39;
                                                                    }
                                                                  }

                                                                  else
                                                                  {
                                                                    v10 = 38;
                                                                  }
                                                                }

                                                                else
                                                                {
                                                                  v10 = 37;
                                                                }
                                                              }

                                                              else
                                                              {
                                                                v10 = 36;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              v10 = 35;
                                                            }
                                                          }

                                                          else
                                                          {
                                                            v10 = 34;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          v10 = 33;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        v10 = 32;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      v10 = 31;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v10 = 30;
                                                  }
                                                }

                                                else
                                                {
                                                  v10 = 29;
                                                }
                                              }

                                              else
                                              {
                                                v10 = 28;
                                              }
                                            }

                                            else
                                            {
                                              v10 = 27;
                                            }
                                          }

                                          else
                                          {
                                            v10 = 26;
                                          }
                                        }

                                        else
                                        {
                                          v10 = 25;
                                        }
                                      }

                                      else
                                      {
                                        v10 = 24;
                                      }
                                    }

                                    else
                                    {
                                      v10 = 23;
                                    }
                                  }

                                  else
                                  {
                                    v10 = 22;
                                  }
                                }

                                else
                                {
                                  v10 = 21;
                                }
                              }

                              else
                              {
                                v10 = 20;
                              }
                            }

                            else
                            {
                              v10 = 19;
                            }
                          }

                          else
                          {
                            v10 = 18;
                          }
                        }

                        else
                        {
                          v10 = 17;
                        }
                      }

                      else
                      {
                        v10 = 16;
                      }
                    }

                    else
                    {
                      v10 = 15;
                    }
                  }

                  else
                  {
                    v10 = 14;
                  }
                }

                else
                {
                  v10 = 13;
                }
              }

              else
              {
                v10 = 12;
              }
            }

            else
            {
              v10 = 11;
            }
          }

          else
          {
            v10 = 10;
          }
        }

        else
        {
          v10 = 9;
        }
      }

      else
      {
        v10 = 8;
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

  Hasher._combine(_:)(v10);
}

unint64_t sub_100030300(int8x16_t *a1)
{
  Hasher.init(_seed:)();
  sub_10002FE78(v4);
  v2 = Hasher._finalize()();

  return sub_100030730(a1, v2);
}

Swift::Int sub_10003036C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for PrimarySettingsListItemModel(0);
  v42 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v46 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_10004DED0(&qword_10015EF40, &qword_100116180);
  v43 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v40 = v2;
    v41 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v20 = __clz(__rbit64(v14));
      v45 = (v14 - 1) & v14;
LABEL_15:
      v23 = v20 | (v10 << 6);
      v24 = *(v7 + 56);
      v25 = *(v7 + 48) + 40 * v23;
      v26 = *v25;
      v27 = *(v25 + 8);
      v29 = *(v25 + 16);
      v28 = *(v25 + 24);
      v30 = *(v25 + 32);
      v44 = *(v42 + 72);
      v31 = v24 + v44 * v23;
      if (v43)
      {
        sub_100030854(v31, v46, type metadata accessor for PrimarySettingsListItemModel);
      }

      else
      {
        sub_10000822C(v31, v46, type metadata accessor for PrimarySettingsListItemModel);
        sub_100029920(v26, v27, v29, v28, v30);
      }

      *&v48 = v26;
      *(&v48 + 1) = v27;
      *&v49 = v29;
      *(&v49 + 1) = v28;
      v50 = v30;
      Hasher.init(_seed:)();
      sub_10002FE78(v47);
      result = Hasher._finalize()();
      v32 = -1 << *(v9 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v16 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        v7 = v41;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v16 + 8 * v34);
          if (v38 != -1)
          {
            v17 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v33) & ~*(v16 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
      v7 = v41;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = *(v9 + 48) + 40 * v17;
      v19 = v49;
      *v18 = v48;
      *(v18 + 16) = v19;
      *(v18 + 32) = v50;
      result = sub_100030854(v46, *(v9 + 56) + v44 * v17, type metadata accessor for PrimarySettingsListItemModel);
      ++*(v9 + 16);
      v14 = v45;
    }

    v21 = v10;
    while (1)
    {
      v10 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v22 = v11[v10];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v45 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v39 = 1 << *(v7 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v11, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v39;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

unint64_t sub_100030730(int8x16_t *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      v7 = *(v2 + 48) + 40 * v4;
      v8 = *(v7 + 16);
      v10[0] = *v7;
      v10[1] = v8;
      v11 = *(v7 + 32);
      if (sub_10002BB48(v10, a1))
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1000307EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100030854(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1000308BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (v3 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__cachedDataModel);
  v8 = *(v3 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__cachedDataModel);
  v9 = *(v3 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__cachedDataModel + 8);
  v10 = *(v3 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__cachedDataModel + 16);
  sub_100030A7C(v8, v9, v10);
  v11 = sub_100030B14(v8, v9, v10, a1, a2, a3);
  sub_100030AC8(v8, v9, v10);
  if (v11)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel, &unk_1001159D8);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    sub_100030AC8(a1, a2, a3);
  }

  else
  {
    v13 = *v7;
    v14 = v7[1];
    v15 = v7[2];
    *v7 = a1;
    v7[1] = a2;
    v7[2] = a3;
    sub_100030AC8(v13, v14, v15);

    sub_100030BD8();
  }
}

uint64_t sub_100030A7C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100030AC8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

BOOL sub_100030B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = (a1 | a4) == 0;
  if (a1 && a4)
  {

    if (sub_10006C7EC(a1, a4) & 1) != 0 && (sub_1000A2E68(a2, a5))
    {
      v6 = sub_1000A3B54(a3, a6);
    }

    else
    {
      v6 = 0;
    }
  }

  return (v6 & 1) == 0;
}

void sub_100030BD8()
{
  v1 = v0;
  v2 = type metadata accessor for PrimarySettingsListSectionModel(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v46 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v5 = OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel___observationRegistrar;
  v55 = v0;
  v6 = sub_10000A520(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel, &unk_1001159D8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *(v0 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__cachedDataModel);
  if (v7)
  {
    v8 = *(v0 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__cachedDataModel + 16);
    swift_getKeyPath();
    v55 = v0;

    v48 = v6;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_100031408(v0, v7, v8);
      swift_unknownObjectRelease();
    }

    if (qword_10015ABA8 != -1)
    {
      goto LABEL_41;
    }

    while (1)
    {
      v9 = byte_1001698C0;

      if (v9 != 1)
      {

        return;
      }

      v45 = *(v7 + 16);
      if (!v45)
      {
        break;
      }

      v10 = 0;
      v44 = *(v2 + 28);
      v52 = OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__topLevelListManager;
      v43 = v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
      v42 = v3;
      v41 = v7;
      while (v10 < *(v7 + 16))
      {
        v11 = *(v3 + 72);
        v47 = v10;
        v12 = v46;
        sub_10002EA78(v43 + v11 * v10, v46, type metadata accessor for PrimarySettingsListSectionModel);
        v13 = *(v12 + v44);

        sub_10002E948(v12, type metadata accessor for PrimarySettingsListSectionModel);
        v51 = *(v13 + 16);
        if (v51)
        {
          v14 = 0;
          v50 = *(type metadata accessor for PrimarySettingsListItemModel(0) - 8);
          v49 = v13 + ((*(v50 + 80) + 32) & ~*(v50 + 80));
          while (v14 < *(v13 + 16))
          {
            v15 = (v49 + *(v50 + 72) * v14);
            v16 = v15[1];
            v57 = *v15;
            v58 = v16;
            v59 = *(v15 + 32);
            v17 = sub_100029F88();
            v20 = v17;
            v21 = v18;
            if (v19 != 2 && v19 != 1)
            {
              sub_10002A748(v17, v18, v19);
              v20 = 0;
              v21 = 0xE000000000000000;
            }

            v22 = HIBYTE(v21) & 0xF;
            if ((v21 & 0x2000000000000000) == 0)
            {
              v22 = v20 & 0xFFFFFFFFFFFFLL;
            }

            if (v22)
            {
              swift_getKeyPath();
              v55 = v1;
              v7 = v5;
              ObservationRegistrar.access<A, B>(_:keyPath:)();

              v23 = *(v1 + v52);
              swift_beginAccess();
              v24 = *(v23 + 24);

              v28 = sub_10002A770(v25, v26, v27);
              v30 = v29;
              if (*(v24 + 16) && (v31 = v28, Hasher.init(_seed:)(), String.hash(into:)(), v32 = Hasher._finalize()(), v33 = -1 << *(v24 + 32), v3 = v32 & ~v33, ((*(v24 + 56 + ((v3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v3) & 1) != 0))
              {
                v2 = ~v33;
                while (1)
                {
                  v34 = (*(v24 + 48) + 16 * v3);
                  v35 = *v34 == v31 && v34[1] == v30;
                  if (v35 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {
                    break;
                  }

                  v3 = (v3 + 1) & v2;
                  if (((*(v24 + 56 + ((v3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v3) & 1) == 0)
                  {
                    goto LABEL_13;
                  }
                }

                v5 = v7;
              }

              else
              {
LABEL_13:

                swift_getKeyPath();
                v55 = v1;
                v5 = v7;
                ObservationRegistrar.access<A, B>(_:keyPath:)();

                sub_1001092E0();
              }
            }

            if (++v14 == v51)
            {

              v3 = v42;
              v7 = v41;
              goto LABEL_9;
            }
          }

          __break(1u);
          break;
        }

LABEL_9:
        v10 = v47 + 1;
        if (v47 + 1 == v45)
        {
          goto LABEL_35;
        }
      }

      __break(1u);
LABEL_41:
      swift_once();
    }

LABEL_35:

    swift_getKeyPath();
    v55 = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v36 = *(*(v1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__topLevelListManager) + 32);
    v37 = qword_10015AB98;

    v38 = v36;
    if (v37 != -1)
    {
      swift_once();
    }

    v55 = 0xD000000000000017;
    v56 = 0x8000000100123FC0;
    v53 = qword_100169898;
    v54 = unk_1001698A0;

    v53 = String.init<A>(_:)();
    v54 = v39;
    String.append<A>(contentsOf:)();
    v40 = String._bridgeToObjectiveC()();

    [v38 writeToFile:v40 atomically:1];
  }
}

void sub_100031370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (a1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__cachedDataModel);
  v5 = *(a1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__cachedDataModel);
  v6 = *(a1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__cachedDataModel + 8);
  v7 = *(a1 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__cachedDataModel + 16);
  *v4 = a2;
  v4[1] = a3;
  v4[2] = a4;
  sub_100030A7C(a2, a3, a4);
  sub_100030AC8(v5, v6, v7);
  sub_100030BD8();
}

void sub_100031408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v68 = a3;
  v80 = a2;
  v76 = a1;
  v5 = sub_10004DED0(&unk_10015EDB0, &unk_100111C70);
  __chkstk_darwin(v5 - 8);
  v69 = &v65 - v6;
  v72 = type metadata accessor for SettingsURLDestination.Action(0);
  __chkstk_darwin(v72);
  v73 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10004DED0(&qword_10015ED78, &qword_100115FB8);
  v9 = __chkstk_darwin(v8 - 8);
  v82 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v77 = &v65 - v11;
  v12 = type metadata accessor for SettingsURLDestination(0);
  v13 = *(v12 - 8);
  v78 = v12;
  v79 = v13;
  v14 = __chkstk_darwin(v12);
  v66 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v65 = &v65 - v17;
  __chkstk_darwin(v16);
  v74 = &v65 - v18;
  v67 = type metadata accessor for PrimarySettingsListItemModel(0);
  v19 = *(v67 - 8);
  __chkstk_darwin(v67);
  v21 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100010CD0();
  swift_getKeyPath();
  *&v87[0] = v22;
  v75 = sub_100018684(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel, &unk_1001159D8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v24 = *(v22 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection);
  v23 = *(v22 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 8);
  v26 = *(v22 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 16);
  v25 = *(v22 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 24);
  v27 = *(v22 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 32);
  sub_100031DF8(v24, v23, v26, v25, *(v22 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 32));

  v28 = v82;
  v81 = v4;
  if (v27 != 255)
  {
    v88.i64[0] = v24;
    v88.i64[1] = v23;
    v70 = v26;
    v71 = v25;
    v89 = v26;
    v90 = v25;
    v91 = v27;
    v29 = sub_1000C5400(v80);
    v30 = 0;
    v31 = v29[2];
    while (1)
    {
      if (v31 == v30)
      {
        sub_100032660(v24, v23, v70, v71, v27);

LABEL_10:
        v83 = 0u;
        v84 = 0u;
        v85 = 6;
        sub_1000A57A4(&v83);
        return;
      }

      if (v30 >= v29[2])
      {
        break;
      }

      sub_10000822C(v29 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v30++, v21, type metadata accessor for PrimarySettingsListItemModel);
      v32 = *(v21 + 1);
      v92[0] = *v21;
      v92[1] = v32;
      v93 = v21[32];
      v22 = sub_10002BB48(v92, &v88);
      sub_100046460(v21, type metadata accessor for PrimarySettingsListItemModel);
      if (v22)
      {

        v33 = sub_100027320();
        sub_100032660(v24, v23, v70, v71, v27);
        swift_getKeyPath();
        v34 = v76;
        *&v87[0] = v76;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v35 = *(v34 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot + 48);
        v87[2] = *(v34 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot + 32);
        v87[3] = v35;
        v87[4] = *(v34 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot + 64);
        v36 = *(v34 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot + 16);
        v87[0] = *(v34 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel__systemStateSnapshot);
        v87[1] = v36;
        sub_100063D94(v87, &v83);
        v37 = sub_100063C90(v33, v87);
        sub_100063DF0(v87);

        v4 = v81;
        v28 = v82;
        if (v37)
        {
          goto LABEL_7;
        }

        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_29;
  }

LABEL_7:
  v38 = v28;
  v39 = OBJC_IVAR____TtC11SettingsApp26SettingsAppNavigationModel_pendingURLDestination;
  swift_beginAccess();
  v40 = v4 + v39;
  v41 = v77;
  sub_100059CA0(v40, v77, &qword_10015ED78, &qword_100115FB8);
  v22 = v78;
  v42 = v79 + 48;
  v23 = *(v79 + 48);
  if (v23(v41, 1, v78) == 1)
  {
    v43 = &qword_10015ED78;
    v44 = &qword_100115FB8;
LABEL_21:
    sub_1000068B0(v41, v43, v44);
    return;
  }

  v27 = v74;
  sub_100030854(v41, v74, type metadata accessor for SettingsURLDestination);
  v45 = v73;
  sub_10000822C(v27 + *(v22 + 20), v73, type metadata accessor for SettingsURLDestination.Action);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100046460(v27, type metadata accessor for SettingsURLDestination);
    sub_100046460(v45, type metadata accessor for SettingsURLDestination.Action);
    return;
  }

  v46 = *(v45 + 16);
  v83 = *v45;
  v84 = v46;
  v85 = *(v45 + 32);
  if (!*(v68 + 16))
  {
    sub_100046460(v27, type metadata accessor for SettingsURLDestination);
    sub_100026A04(&v83);
LABEL_20:
    v41 = v69;
    (*(v19 + 56))(v69, 1, 1, v67);
    v43 = &unk_10015EDB0;
    v44 = &unk_100111C70;
    goto LABEL_21;
  }

  v47 = v68;
  v48 = sub_100030300(&v83);
  v50 = v49;
  sub_100026A04(&v83);
  if ((v50 & 1) == 0)
  {
    sub_100046460(v27, type metadata accessor for SettingsURLDestination);
    goto LABEL_20;
  }

  v79 = v42;
  v24 = v38;
  v51 = *(v47 + 56) + *(v19 + 72) * v48;
  v52 = v69;
  sub_10000822C(v51, v69, type metadata accessor for PrimarySettingsListItemModel);
  (*(v19 + 56))(v52, 0, 1, v67);
  sub_1000068B0(v52, &unk_10015EDB0, &unk_100111C70);
  if (qword_10015AAB8 != -1)
  {
LABEL_29:
    swift_once();
  }

  v53 = type metadata accessor for Logger();
  sub_10000659C(v53, qword_1001696A0);
  v54 = v65;
  sub_10000822C(v27, v65, type metadata accessor for SettingsURLDestination);
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v86[0] = v58;
    *v57 = 141558275;
    *(v57 + 4) = 1752392040;
    *(v57 + 12) = 2081;
    v59 = sub_1000F41C0();
    v60 = v54;
    v62 = v61;
    sub_100046460(v60, type metadata accessor for SettingsURLDestination);
    v63 = sub_100025CF0(v59, v62, v86);

    *(v57 + 14) = v63;
    _os_log_impl(&_mh_execute_header, v55, v56, "Pending URL Destination '%{private,mask.hash}s' has actionable selection now.", v57, 0x16u);
    sub_10000665C(v58);
    v22 = v78;

    v27 = v74;
  }

  else
  {

    sub_100046460(v54, type metadata accessor for SettingsURLDestination);
  }

  v64 = v66;
  sub_1000A94D8(v24);
  if (v23(v24, 1, v22) == 1)
  {
    sub_10000822C(v27, v64, type metadata accessor for SettingsURLDestination);
    if (v23(v24, 1, v22) != 1)
    {
      sub_1000068B0(v24, &qword_10015ED78, &qword_100115FB8);
    }
  }

  else
  {
    sub_100030854(v24, v64, type metadata accessor for SettingsURLDestination);
  }

  sub_1000A59A0(v64);
  sub_100046460(v64, type metadata accessor for SettingsURLDestination);
  sub_100046460(v27, type metadata accessor for SettingsURLDestination);
}

void sub_100031DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 != 0xFF)
  {
    sub_100029920(a1, a2, a3, a4, a5);
  }
}

uint64_t sub_100031E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for SettingsURLDestination.Action(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

void sub_100031F2C()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 sf_isInternalInstall];

  if (v1)
  {
    if (qword_10015AB10 != -1)
    {
      swift_once();
    }

    v2 = qword_100169798;
    v3 = String._bridgeToObjectiveC()();
    v4 = [v2 BOOLForKey:v3];
  }

  else
  {
    v4 = 0;
  }

  byte_1001698C0 = v4;
}

void sub_10003201C(uint64_t *a1@<X0>, uint64_t a3@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_100018684(&unk_10015E8D0, type metadata accessor for PrimarySettingsListModel, &unk_1001159D8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = v4 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection;
  v6 = *(v4 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection);
  v7 = *(v4 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 8);
  v8 = *(v4 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 16);
  v9 = *(v4 + OBJC_IVAR____TtC11SettingsApp24PrimarySettingsListModel_effectiveSelection + 24);
  *a3 = v6;
  *(a3 + 8) = v7;
  *(a3 + 16) = v8;
  *(a3 + 24) = v9;
  v10 = *(v5 + 32);
  *(a3 + 32) = v10;
  sub_100031DF8(v6, v7, v8, v9, v10);
}

uint64_t sub_1000320E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v1;
  v5 = *(a1 + 32);
  sub_100059CA0(v4, v3, &qword_10015E690, &qword_100115788);
  return sub_1000954AC(v4);
}

unint64_t sub_100032144()
{
  result = qword_10015B370;
  if (!qword_10015B370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015B370);
  }

  return result;
}

unint64_t sub_100032198()
{
  result = qword_10015E638;
  if (!qword_10015E638)
  {
    sub_100052374(&qword_10015E630, &qword_100115738);
    sub_100020BE0(&qword_10015E640, type metadata accessor for PrimarySettingsListSection, &unk_10011209C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015E638);
  }

  return result;
}

uint64_t sub_10003224C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v12 = *a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  v6 = sub_10004DED0(&qword_10015E6B0, &qword_100115790);
  v7 = type metadata accessor for PrimarySettingsListSection(0);
  v8 = sub_1000525A0(&qword_10015E6B8, &qword_10015E6B0, &qword_100115790, &protocol conformance descriptor for [A]);
  v9 = sub_100020BE0(&qword_10015E640, type metadata accessor for PrimarySettingsListSection, &unk_10011209C);
  v10 = sub_100020BE0(&qword_10015E6C0, type metadata accessor for PrimarySettingsListSectionModel, &unk_100112040);
  return ForEach<>.init(_:content:)(&v12, sub_1000332F4, v5, v6, &type metadata for PrimarySettingsListSectionIdentifier, v7, v8, v9, v10);
}

uint64_t sub_1000323C4()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100032408()
{
  result = qword_10015BF40;
  if (!qword_10015BF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015BF40);
  }

  return result;
}

unint64_t sub_100032460()
{
  result = qword_10015E650;
  if (!qword_10015E650)
  {
    sub_100052374(&qword_10015E610, &qword_1001156F0);
    sub_100032518();
    sub_1000525A0(&qword_10015E680, &qword_10015E688, &qword_100115758, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015E650);
  }

  return result;
}

unint64_t sub_100032518()
{
  result = qword_10015E658;
  if (!qword_10015E658)
  {
    sub_100052374(&qword_10015E648, &qword_100115740);
    sub_1000525A0(&qword_10015E660, &qword_10015E668, &qword_100115748, &protocol conformance descriptor for List<A, B>);
    sub_1000525A0(&qword_10015E670, &qword_10015E678, &qword_100115750, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015E658);
  }

  return result;
}

uint64_t sub_1000325FC()
{
  v0 = type metadata accessor for PPTTestCase.Name();
  sub_100006538(v0, qword_100169820);
  sub_10000659C(v0, qword_100169820);
  return PPTTestCase.Name.init(_:)();
}

void sub_100032660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 != 0xFF)
  {
    sub_10002C5C0(a1, a2, a3, a4, a5);
  }
}

double sub_100032674()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);

  v7 = v5;
  if ((v6 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    v7 = v14;
  }

  swift_getKeyPath();
  v14 = v7;
  sub_100020BE0(&qword_10015AFA0, type metadata accessor for SettingsOmniSearchViewModel, &unk_1001185A0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = *(v7 + 16);

  result = 0.0;
  if (v9 != 2)
  {

    if ((v6 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v11 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v2 + 8))(v4, v1);
      v5 = v14;
    }

    swift_getKeyPath();
    v14 = v5;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v12 = *(v5 + 16);

    result = 1.0;
    if (v12 == 3)
    {
      return 0.0;
    }
  }

  return result;
}

uint64_t sub_100032944(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 248)
  {
    *(result + 32) = ~a2;
  }

  else
  {
    v7 = type metadata accessor for SettingsAppDetailContent.ContentType(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000329F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 248)
  {
    v4 = *(a1 + 32);
    if (v4 <= 6)
    {
      return 0;
    }

    else
    {
      return v4 ^ 0xFF;
    }
  }

  else
  {
    v8 = type metadata accessor for SettingsAppDetailContent.ContentType(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

BOOL sub_100032A9C(uint64_t a1, uint64_t a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *(a1 + 32);
  v10 = *a2;
  v9 = *(a2 + 8);
  v12 = *(a2 + 16);
  v11 = *(a2 + 24);
  v13 = *(a2 + 32);
  if (v8 != 255)
  {
    if (v13 != 255)
    {
      v20.i64[0] = *a2;
      v20.i64[1] = v9;
      v21 = v12;
      v22 = v11;
      v23 = v13;
      v18[0] = v5;
      v18[1] = v4;
      v18[2] = v7;
      v18[3] = v6;
      v19 = v8;
      if (sub_10002BB48(v18, &v20))
      {
        goto LABEL_8;
      }

      return 0;
    }

LABEL_6:
    v14 = *(a1 + 16);
    v15 = *(a1 + 24);
    sub_100031DF8(*a1, v4, v7, v6, v8);
    sub_100031DF8(v10, v9, v12, v11, v13);
    sub_100032660(v5, v4, v14, v15, v8);
    sub_100032660(v10, v9, v12, v11, v13);
    return 0;
  }

  if (v13 != 255)
  {
    goto LABEL_6;
  }

LABEL_8:
  v17 = *(type metadata accessor for SettingsAppDetailContent(0) + 20);

  return sub_100032BF8(a1 + v17, a2 + v17);
}

BOOL sub_100032BF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsPaneRecipe();
  v37 = *(v4 - 8);
  v38 = v4;
  v5 = __chkstk_darwin(v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v37 - v8;
  v10 = type metadata accessor for SettingsAppDetailContent.ContentType(0);
  v11 = __chkstk_darwin(v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v37 - v15;
  __chkstk_darwin(v14);
  v18 = &v37 - v17;
  v19 = sub_10004DED0(&qword_10015E4C8, &qword_1001155F8);
  v20 = __chkstk_darwin(v19 - 8);
  v22 = &v37 - v21;
  v23 = &v37 + *(v20 + 56) - v21;
  sub_100032FE4(a1, &v37 - v21);
  sub_100032FE4(a2, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_100032FE4(v22, v16);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for PreferencesControllerRepresentableModel();
        v25 = static PreferencesControllerRepresentableModel.== infix(_:_:)();
        goto LABEL_11;
      }
    }

    else
    {
      sub_100032FE4(v22, v18);
      if (!swift_getEnumCaseMultiPayload())
      {
        type metadata accessor for SettingsAnyPlatformViewControllerModel();
        v25 = static SettingsAnyPlatformViewControllerModel.== infix(_:_:)();
LABEL_11:
        v35 = v25;

LABEL_18:
        sub_100033048(v22);
        return v35;
      }
    }

    goto LABEL_16;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_100032FE4(v22, v13);
    v26 = *(sub_10004DED0(&unk_10015E300, &unk_100115600) + 48);
    v27 = *&v13[v26];
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v28 = *&v23[v26];
      v29 = v37;
      v30 = *(v37 + 32);
      v31 = v13;
      v32 = v38;
      v30(v9, v31, v38);
      v30(v7, v23, v32);
      v33 = static SettingsPaneRecipe.== infix(_:_:)();
      v34 = *(v29 + 8);
      v34(v7, v32);
      v34(v9, v32);

      v35 = (v33 & 1) != 0 && v27 == v28;
      goto LABEL_18;
    }

    (*(v37 + 8))(v13, v38);
    goto LABEL_16;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
LABEL_16:
    sub_100092A80(v22);
    return 0;
  }

  sub_100033048(v22);
  return 1;
}

uint64_t sub_100032FE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsAppDetailContent.ContentType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100033048(uint64_t a1)
{
  v2 = type metadata accessor for SettingsAppDetailContent.ContentType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000330A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *v2;
  v5 = v2[1];
  v7 = *(v2 + 16);
  v8 = v2[3];
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = v5;
  *(v9 + 32) = v7;
  *(v9 + 40) = v8;
  v10 = sub_10004DED0(&qword_10015DE38, &qword_100114968);
  (*(*(v10 - 8) + 16))(a2, a1, v10);
  v11 = (a2 + *(sub_10004DED0(&qword_10015DE40, &qword_100114970) + 36));
  *v11 = sub_10003F038;
  v11[1] = v9;
  v11[2] = 0;
  v11[3] = 0;
}

uint64_t sub_1000331A8()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000331E8@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_100025974(v2, v3, v4);
}

__n128 sub_1000331FC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

Swift::Int sub_100033210(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  Hasher.init(_seed:)();
  sub_10002F3D4(v6, v2, v3, v4);
  return Hasher._finalize()();
}

uint64_t sub_100033268(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000332AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
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

uint64_t type metadata accessor for PrimarySettingsListItem(uint64_t a1)
{
  result = qword_10015B9A0;
  if (!qword_10015B9A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100033368(uint64_t a1)
{
  sub_1000228E4(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PrimarySettingsListItemModel(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_10003340C()
{
  result = qword_10015C100;
  if (!qword_10015C100)
  {
    sub_100052374(&qword_10015C108, qword_100112170);
    sub_10000A5B0();
    sub_1000334AC();
    sub_1000335A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015C100);
  }

  return result;
}

unint64_t sub_1000334AC()
{
  result = qword_10015C0B0;
  if (!qword_10015C0B0)
  {
    sub_100052374(&qword_10015C0A0, &qword_100112100);
    sub_100033560(&qword_10015C0B8, type metadata accessor for PrimarySettingsListItem, &unk_1001114E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015C0B0);
  }

  return result;
}

uint64_t sub_100033560(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000335A8()
{
  result = qword_10015C0C0;
  if (!qword_10015C0C0)
  {
    sub_100052374(&qword_10015C090, &unk_1001120F0);
    sub_10003362C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015C0C0);
  }

  return result;
}

unint64_t sub_10003362C()
{
  result = qword_10015C0C8;
  if (!qword_10015C0C8)
  {
    sub_100052374(&qword_10015C0D0, &qword_100112108);
    sub_1000525A0(&qword_10015C0D8, &qword_10015C0E0, &unk_100112110, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015C0C8);
  }

  return result;
}

uint64_t sub_10003373C(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 <= 1u)
  {
    if (a3)
    {
      if (a6 == 1)
      {
        if (a1 == a4 && a2 == a5)
        {
          return 1;
        }

        return _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else if (!a6)
    {
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    return 0;
  }

  if (a3 == 2)
  {
    if (a6 == 2)
    {
      if (a1 == a4 && a2 == a5)
      {
        return 1;
      }

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    return 0;
  }

  switch(a1)
  {
    case 1:
      if (a6 != 3 || a4 != 1 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 2:
      if (a6 != 3 || a4 != 2 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 3:
      if (a6 != 3 || a4 != 3 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 4:
      if (a6 != 3 || a4 != 4 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 5:
      if (a6 != 3 || a4 != 5 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 6:
      if (a6 != 3 || a4 != 6 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 7:
      if (a6 != 3 || a4 != 7 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 8:
      if (a6 != 3 || a4 != 8 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 9:
      if (a6 != 3 || a4 != 9 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 10:
      if (a6 != 3 || a4 != 10 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 11:
      if (a6 != 3 || a4 != 11 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 12:
      if (a6 != 3 || a4 != 12 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 13:
      if (a6 != 3 || a4 != 13 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 14:
      if (a6 != 3 || a4 != 14 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 15:
      if (a6 != 3 || a4 != 15 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 16:
      if (a6 != 3 || a4 != 16 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    case 17:
      if (a6 != 3 || a4 != 17 || a5)
      {
        return 0;
      }

      result = 1;
      break;
    default:
      if (a6 != 3 || a5 | a4)
      {
        return 0;
      }

      result = 1;
      break;
  }

  return result;
}

uint64_t sub_100033A7C()
{
  v1 = sub_10004DED0(&qword_10015C090, &unk_1001120F0);
  __chkstk_darwin(v1);
  v3 = &v5[-v2];
  v6 = v0;
  sub_100033BB4(v0, v7);
  sub_100033C60(v0, v3);
  sub_10004DED0(&qword_10015C098, &qword_100116660);
  sub_10004DED0(&qword_10015C0A0, &qword_100112100);
  sub_10000A5B0();
  sub_1000334AC();
  sub_1000335A8();
  return Section<>.init(header:footer:content:)();
}

uint64_t sub_100033BB4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for PrimarySettingsListSection(0) + 20);
  v4 = *(v3 + 32);
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = *(v3 + 24);
  v6 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v6 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    sub_10002EAE0();

    result = Text.init<A>(_:)();
    v11 = v10 & 1;
  }

  else
  {
LABEL_6:
    result = 0;
    v8 = 0;
    v11 = 0;
    v9 = 0;
  }

  *a2 = result;
  a2[1] = v8;
  a2[2] = v11;
  a2[3] = v9;
  return result;
}

uint64_t sub_100033C60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = type metadata accessor for PrimarySettingsListSection(0);
  v4 = v3 - 8;
  v42 = *(v3 - 8);
  v5 = *(v42 + 64);
  __chkstk_darwin(v3);
  v43 = &v37[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v44 = sub_10004DED0(&qword_10015C0D0, &qword_100112108);
  v6 = *(v44 - 8);
  __chkstk_darwin(v44);
  v8 = &v37[-v7];
  v9 = sub_10004DED0(&unk_10015FB70, &unk_100112010);
  __chkstk_darwin(v9 - 8);
  v11 = &v37[-v10];
  v12 = type metadata accessor for LocalizedStringResource();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v37[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v18 = &v37[-v17];
  v19 = *(v4 + 28);
  v20 = type metadata accessor for PrimarySettingsListSectionModel(0);
  sub_10002C98C(a1 + *(v20 + 24) + v19, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1000341D8(v11);
    v21 = 1;
    v23 = v44;
    v22 = v45;
  }

  else
  {
    (*(v13 + 32))(v18, v11, v12);
    (*(v13 + 16))(v16, v18, v12);
    v24 = Text.init(_:)();
    v39 = v25;
    v40 = v24;
    v38 = v26;
    v41 = v27;
    KeyPath = swift_getKeyPath();
    v29 = v43;
    sub_100034514(a1, v43, type metadata accessor for PrimarySettingsListSection);
    v30 = (*(v42 + 80) + 16) & ~*(v42 + 80);
    v31 = swift_allocObject();
    sub_100061724(v29, v31 + v30);
    v32 = v44;
    v33 = &v8[*(v44 + 36)];
    sub_10004DED0(&qword_10015C0E0, &unk_100112110);
    OpenURLAction.init(handler:)();
    (*(v13 + 8))(v18, v12);
    *v33 = KeyPath;
    v34 = v39;
    *v8 = v40;
    *(v8 + 1) = v34;
    v8[16] = v38 & 1;
    *(v8 + 3) = v41;
    v35 = v45;
    sub_100061808(v8, v45);
    v21 = 0;
    v22 = v35;
    v23 = v32;
  }

  return (*(v6 + 56))(v22, v21, 1, v23);
}

uint64_t sub_100034074()
{
  v1 = (type metadata accessor for PrimarySettingsListSection(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[7];
  sub_100025CD8(*v5, *(v5 + 8), *(v5 + 16));

  v6 = *(type metadata accessor for PrimarySettingsListSectionModel(0) + 24);
  v7 = type metadata accessor for LocalizedStringResource();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v5 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000341D8(uint64_t a1)
{
  v2 = sub_10004DED0(&unk_10015FB70, &unk_100112010);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100034240(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for PrimarySettingsListSection(0) + 20);
  v8 = *(v1 + *(type metadata accessor for PrimarySettingsListSectionModel(0) + 28));

  v2 = sub_10004DED0(&qword_10015C0E8, &qword_100112168);
  v3 = type metadata accessor for PrimarySettingsListItem(0);
  v4 = sub_1000525A0(&qword_10015C0F0, &qword_10015C0E8, &qword_100112168, &protocol conformance descriptor for [A]);
  v5 = sub_100033560(&qword_10015C0B8, type metadata accessor for PrimarySettingsListItem, &unk_1001114E8);
  v6 = sub_100033560(&qword_10015C0F8, type metadata accessor for PrimarySettingsListItemModel, &unk_1001108C0);
  return ForEach<>.init(_:content:)(&v8, sub_100034468, 0, v2, &type metadata for PrimarySettingsListItemIdentifier, v3, v4, v5, v6);
}

void sub_1000343B4(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 32);
  *(a1 + 32) = v6;
  sub_100029920(v2, v3, v4, v5, v6);
}

__n128 sub_1000343D0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

Swift::Int sub_1000343E4(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_10002FE78(v2);
  return Hasher._finalize()();
}

uint64_t sub_100034420(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_100034468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PrimarySettingsListItem(0);
  sub_100034514(a1, a2 + *(v4 + 20), type metadata accessor for PrimarySettingsListItemModel);
  type metadata accessor for SettingsAppModel(0);
  sub_100033560(&qword_10015AFB8, type metadata accessor for SettingsAppModel, &unk_10010FC24);
  result = Environment.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_100034514(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000345A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata accessor for PrimarySettingsListFamilyLink(uint64_t a1)
{
  result = qword_10015B7C0;
  if (!qword_10015B7C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10003462C(uint64_t a1)
{
  result = type metadata accessor for PrimarySettingsListFamilyLinkModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for PrimarySettingsListFollowUpHeader(uint64_t a1)
{
  result = qword_10015B8A8;
  if (!qword_10015B8A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100034754(uint64_t a1)
{
  sub_10003483C(319, &qword_10015B8B8, sub_10003489C, &type metadata for CGFloat);
  if (v1 <= 0x3F)
  {
    sub_10003483C(319, &qword_10015B8C8, sub_1000348F0, &type metadata for Double);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10003483C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = type metadata accessor for ScaledMetric();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_10003489C()
{
  result = qword_10015B8C0;
  if (!qword_10015B8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015B8C0);
  }

  return result;
}

unint64_t sub_1000348F0()
{
  result = qword_10015B8D0;
  if (!qword_10015B8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015B8D0);
  }

  return result;
}

uint64_t sub_100034960(int a1, int a2, int a3, int a4)
{
  if (qword_1001694F8 == -1)
  {
    if (qword_100169500)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_100034AEC();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_100169500)
    {
      return _availability_version_check();
    }
  }

  if (qword_1001694F0 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_10010949C();
    a3 = v10;
    a4 = v9;
    v8 = dword_1001694E0 < v11;
    if (dword_1001694E0 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_1001694E4 > a3)
      {
        return 1;
      }

      if (dword_1001694E4 >= a3)
      {
        return dword_1001694E8 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_1001694E0 < a2;
  if (dword_1001694E0 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_100034B0C(uint64_t result)
{
  v1 = qword_100169500;
  if (qword_100169500)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_100169500 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_1001694E0, &dword_1001694E4, &dword_1001694E8);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100034E50(uint64_t *a1)
{
  if (sub_100034960(2, 26, 0, 0))
  {
    type metadata accessor for _TagTraitWritingModifier();

    return type metadata accessor for ModifiedContent();
  }

  else
  {
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    type metadata accessor for ModifiedContent();
    type metadata accessor for Optional();
    swift_getWitnessTable();
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    return type metadata accessor for ModifiedContent();
  }
}

uint64_t sub_100034FB4(uint64_t *a1)
{
  if (sub_100034960(2, 26, 0, 0))
  {
    type metadata accessor for _TagTraitWritingModifier();
    type metadata accessor for ModifiedContent();
  }

  else
  {
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    type metadata accessor for ModifiedContent();
    type metadata accessor for Optional();
    swift_getWitnessTable();
    type metadata accessor for TagValueTraitKey();
    swift_getWitnessTable();
    type metadata accessor for _TraitWritingModifier();
    type metadata accessor for ModifiedContent();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t sub_1000351B8()
{
  result = qword_10015BB70;
  if (!qword_10015BB70)
  {
    sub_100052374(&qword_10015BA20, &qword_1001115A0);
    sub_100035270();
    sub_1000525A0(&qword_10015BB88, &qword_10015BB90, &unk_100111650, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015BB70);
  }

  return result;
}

unint64_t sub_100035270()
{
  result = qword_10015BB78;
  if (!qword_10015BB78)
  {
    sub_100052374(&qword_10015B9F8, &unk_100111558);
    sub_100052374(&qword_10015B9E8, &qword_100111548);
    sub_100035368();
    swift_getOpaqueTypeConformance2();
    sub_1000354E8(&qword_10015BB80, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015BB78);
  }

  return result;
}

unint64_t sub_100035368()
{
  result = qword_10015BA08;
  if (!qword_10015BA08)
  {
    sub_100052374(&qword_10015B9E8, &qword_100111548);
    sub_100052374(&qword_10015ABC8, &qword_100111540);
    sub_100052374(&qword_10015B9E0, &qword_100111538);
    sub_1000525A0(&qword_10015BA00, &qword_10015B9E0, &qword_100111538, &protocol conformance descriptor for _UnaryViewAdaptor<A>);
    swift_getOpaqueTypeConformance2();
    sub_100032144();
    swift_getOpaqueTypeConformance2();
    sub_1000525A0(&qword_10015BA10, &qword_10015BA18, &qword_100111568, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015BA08);
  }

  return result;
}

uint64_t sub_1000354E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100035530(uint64_t a1, int8x16_t *a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8 = a2[2].i8[0];
  return sub_10002BB48(v5, v7) & 1;
}

uint64_t sub_10003557C@<X0>(uint64_t a1@<X8>)
{
  v72 = a1;
  v68 = type metadata accessor for PrimarySettingsListItemViewType(0);
  __chkstk_darwin(v68);
  v66 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for AccessibilityTraits();
  v70 = *(v3 - 8);
  v71 = v3;
  v4 = __chkstk_darwin(v3);
  v69 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v67 = &v52 - v6;
  v7 = type metadata accessor for AccessibilityChildBehavior();
  v64 = *(v7 - 8);
  v65 = v7;
  __chkstk_darwin(v7);
  v60 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PrimarySettingsListItem(0);
  v10 = v9 - 8;
  v52 = *(v9 - 8);
  v11 = *(v52 + 64);
  __chkstk_darwin(v9);
  *&v54 = sub_10004DED0(&qword_10015B9E0, &qword_100111538);
  __chkstk_darwin(v54);
  v13 = (&v52 - v12);
  v56 = sub_10004DED0(&qword_10015ABC8, &qword_100111540);
  *&v55 = *(v56 - 8);
  __chkstk_darwin(v56);
  v15 = &v52 - v14;
  v57 = sub_10004DED0(&qword_10015B9E8, &qword_100111548);
  __chkstk_darwin(v57);
  v17 = &v52 - v16;
  v58 = sub_10004DED0(&qword_10015B9F0, &qword_100111550);
  v59 = *(v58 - 8);
  __chkstk_darwin(v58);
  v53 = &v52 - v18;
  v62 = sub_10004DED0(&qword_10015B9F8, &unk_100111558);
  v19 = __chkstk_darwin(v62);
  v21 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v61 = &v52 - v23;
  __chkstk_darwin(v22);
  v63 = &v52 - v24;
  sub_100036178(v13);
  v25 = v1;
  sub_100038C3C(v1, &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PrimarySettingsListItem);
  v26 = (*(v52 + 80) + 16) & ~*(v52 + 80);
  v27 = swift_allocObject();
  sub_100039318(&v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26, type metadata accessor for PrimarySettingsListItem);
  sub_1000525A0(&qword_10015BA00, &qword_10015B9E0, &qword_100111538, &protocol conformance descriptor for _UnaryViewAdaptor<A>);
  View.onScrollVisibilityChange(threshold:_:)();

  sub_1000068B0(v13, &qword_10015B9E0, &qword_100111538);
  v28 = v25 + *(v10 + 28);
  v75 = *(v28 + 32);
  v29 = v75;
  v30 = *(v28 + 16);
  v54 = *v28;
  v74[0] = v54;
  v74[1] = v30;
  v31 = *(v55 + 32);
  v55 = *(v28 + 16);
  v31(v17, v15, v56);
  v32 = &v17[*(sub_10004DED0(&unk_10015ABD0, &qword_10010EBC0) + 36)];
  v33 = v55;
  *v32 = v54;
  *(v32 + 1) = v33;
  v32[32] = v29;
  v32[33] = 1;
  v34 = type metadata accessor for PrimarySettingsListItemModel(0);
  v56 = *(v28 + *(v34 + 24));
  v35 = v57;
  v17[*(v57 + 36)] = (v56 & 5) == 0;
  sub_10002698C(v74, v73);
  v36 = v60;
  static AccessibilityChildBehavior.combine.getter();
  v37 = sub_100035368();
  v38 = v53;
  View.accessibilityElement(children:)();
  (*(v64 + 8))(v36, v65);
  sub_1000068B0(v17, &qword_10015B9E8, &qword_100111548);
  sub_100039380();
  v73[0] = v35;
  v73[1] = v37;
  swift_getOpaqueTypeConformance2();
  v39 = v58;
  View.accessibility(identifier:)();

  (*(v59 + 8))(v38, v39);
  v40 = v66;
  sub_100038C3C(v28 + *(v34 + 20), v66, type metadata accessor for PrimarySettingsListItemViewType);
  LODWORD(v34) = swift_getEnumCaseMultiPayload();
  sub_10002C6F8(v40, type metadata accessor for PrimarySettingsListItemViewType);
  if (v34 == 9)
  {
    v41 = v67;
    static AccessibilityTraits.isHeader.getter();
  }

  else
  {
    v41 = v67;
    static AccessibilityTraits.isButton.getter();
  }

  v42 = v61;
  ModifiedContent<>.accessibilityAddTraits(_:)();
  v43 = v71;
  v44 = *(v70 + 8);
  v44(v41, v71);
  sub_1000068B0(v21, &qword_10015B9F8, &unk_100111558);
  v45 = v69;
  static AccessibilityTraits.isStaticText.getter();
  v46 = v63;
  ModifiedContent<>.accessibilityAddTraits(_:)();
  v44(v45, v43);
  sub_1000068B0(v42, &qword_10015B9F8, &unk_100111558);
  KeyPath = swift_getKeyPath();
  v48 = swift_allocObject();
  *(v48 + 16) = v56 & 1;
  v49 = v72;
  sub_100036104(v46, v72);
  result = sub_10004DED0(&qword_10015BA20, &qword_1001115A0);
  v51 = (v49 + *(result + 36));
  *v51 = KeyPath;
  v51[1] = sub_10003F730;
  v51[2] = v48;
  return result;
}

uint64_t sub_100035E64()
{
  v1 = (type metadata accessor for PrimarySettingsListItem(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[7];
  sub_10002C5C0(*v5, *(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32));
  v6 = v5 + *(type metadata accessor for PrimarySettingsListItemModel(0) + 20);
  type metadata accessor for PrimarySettingsListItemViewType(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload > 7)
    {
      if (EnumCaseMultiPayload == 8)
      {
LABEL_20:
        v12 = *v6;
        v13 = *(v6 + 8);
        LOBYTE(v14) = *(v6 + 16);
        goto LABEL_24;
      }

      if (EnumCaseMultiPayload == 9)
      {
        v14 = *(v6 + 16);
        if (v14 == 255)
        {
LABEL_25:

          goto LABEL_26;
        }

        v12 = *v6;
        v13 = *(v6 + 8);
LABEL_24:
        sub_10002A748(v12, v13, v14);
        goto LABEL_25;
      }

      if (EnumCaseMultiPayload != 10)
      {
        goto LABEL_27;
      }

      v8 = *(v6 + 16);
      if (v8 == 255)
      {
        goto LABEL_26;
      }

      v9 = *v6;
      v10 = *(v6 + 8);
    }

    else
    {
      if (EnumCaseMultiPayload != 5 && EnumCaseMultiPayload != 6)
      {
        goto LABEL_20;
      }

      v9 = *v6;
      v10 = *(v6 + 8);
      LOBYTE(v8) = *(v6 + 16);
    }

    sub_10002A748(v9, v10, v8);
    goto LABEL_26;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_100045DB4(*v6, *(v6 + 8), *(v6 + 16));
      goto LABEL_27;
    }

    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_27;
    }

    v11 = type metadata accessor for FamilyRowStatus();
    (*(*(v11 - 8) + 8))(v6, v11);
    type metadata accessor for PrimarySettingsListFamilyLinkModel(0);
    goto LABEL_26;
  }

  if (EnumCaseMultiPayload != 2)
  {
LABEL_26:

    goto LABEL_27;
  }

  sub_10002A748(*v6, *(v6 + 8), *(v6 + 16));

LABEL_27:

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10003609C@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100036104(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004DED0(&qword_10015B9F8, &unk_100111558);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100036178@<X0>(void *a1@<X8>)
{
  v223 = a1;
  v214 = type metadata accessor for PrimarySettingsListFollowUpHeader(0);
  __chkstk_darwin(v214);
  v211 = &v200[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v216 = sub_10004DED0(&qword_10015BA28, &qword_1001115A8);
  __chkstk_darwin(v216);
  v218 = &v200[-v3];
  v212 = sub_10004DED0(&qword_10015BA30, &qword_1001115B0);
  __chkstk_darwin(v212);
  v213 = &v200[-v4];
  v217 = sub_10004DED0(&qword_10015BA38, &qword_1001115B8);
  __chkstk_darwin(v217);
  v215 = &v200[-v5];
  v222 = sub_10004DED0(&qword_10015BA40, &qword_1001115C0);
  __chkstk_darwin(v222);
  *&v219 = &v200[-v6];
  v7 = type metadata accessor for PrimarySettingsListFamilyLink(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7 - 8);
  v11 = &v200[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v13 = &v200[-v12];
  v14 = type metadata accessor for PrimarySettingsListFamilyLinkModel(0);
  __chkstk_darwin(v14 - 8);
  v16 = &v200[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v220 = sub_10004DED0(&qword_10015BA48, &qword_1001115C8);
  __chkstk_darwin(v220);
  v221 = &v200[-v17];
  v18 = type metadata accessor for PrimarySettingsListItemViewType(0);
  __chkstk_darwin(v18);
  v20 = &v200[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = v1 + *(type metadata accessor for PrimarySettingsListItem(0) + 20);
  v22 = type metadata accessor for PrimarySettingsListItemModel(0);
  sub_100038C3C(v21 + *(v22 + 20), v20, type metadata accessor for PrimarySettingsListItemViewType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload > 7)
    {
      if (EnumCaseMultiPayload == 8)
      {
        v111 = *v20;
        v112 = *(v20 + 1);
        v114 = *(v20 + 3);
        v113 = *(v20 + 4);
        v116 = *(v20 + 5);
        v115 = *(v20 + 6);
        v117 = *v21;
        v204 = *(v21 + 8);
        v205 = v117;
        v118 = *(v21 + 16);
        v202 = *(v21 + 24);
        v203 = v118;
        v206 = *(v21 + *(v22 + 24));
        v119 = v20[16];
        LODWORD(v208) = v119;
        v201 = *(v21 + 32);
        v120 = swift_allocObject();
        v209 = v112;
        v210 = v111;
        *(v120 + 16) = v111;
        *(v120 + 24) = v112;
        *(v120 + 32) = v119;
        *(v120 + 40) = v114;
        *(v120 + 48) = v113;
        v211 = v113;
        *(v120 + 56) = v116;
        *(v120 + 64) = v115;
        v207 = v115;
        type metadata accessor for SettingsAppModel(0);
        sub_100039F14(v111, v112, v119);

        v122 = v204;
        v121 = v205;
        v124 = v202;
        v123 = v203;
        LOBYTE(v116) = v201;
        sub_100029920(v205, v204, v203, v202, v201);
        sub_1000354E8(&qword_10015AFB8, type metadata accessor for SettingsAppModel, &unk_10010FC24);
        v125 = Environment.init<A>(_:)();
        LOBYTE(v242) = v126 & 1;
        *&v237 = v125;
        BYTE8(v237) = v126 & 1;
        HIDWORD(v237) = *(&v224 + 3);
        *(&v237 + 9) = v224;
        *&v238 = v121;
        *(&v238 + 1) = v122;
        *&v239 = v123;
        *(&v239 + 1) = v124;
        LOBYTE(v240) = v116;
        *(&v240 + 1) = v231;
        DWORD1(v240) = *(&v231 + 3);
        *(&v240 + 1) = v206;
        *&v241[0] = sub_100043284;
        *(&v241[0] + 1) = v120;
        v127 = v240;
        v128 = v213;
        *(v213 + 2) = v239;
        v128[3] = v127;
        v128[4] = v241[0];
        v129 = v238;
        *v128 = v237;
        v128[1] = v129;
        swift_storeEnumTagMultiPayload();
        sub_100059CA0(&v237, &v224, &qword_10015BA68, &qword_1001115D8);
        sub_10004DED0(&qword_10015BA68, &qword_1001115D8);
        sub_1000525A0(&qword_10015BA60, &qword_10015BA68, &qword_1001115D8, &unk_1001147D8);
        sub_1000354E8(&qword_10015BA70, type metadata accessor for PrimarySettingsListFollowUpHeader, &unk_1001113A4);
        v130 = v215;
        _ConditionalContent<>.init(storage:)();
        sub_100059CA0(v130, v218, &qword_10015BA38, &qword_1001115B8);
        swift_storeEnumTagMultiPayload();
        sub_10004DED0(&qword_10015BA50, &qword_1001115D0);
        sub_100039230();
        sub_1000525A0(&qword_10015BA78, &qword_10015BA50, &qword_1001115D0, &unk_1001147D8);
        v131 = v219;
        _ConditionalContent<>.init(storage:)();
        sub_1000068B0(v130, &qword_10015BA38, &qword_1001115B8);
        sub_100059CA0(v131, v221, &qword_10015BA40, &qword_1001115C0);
        swift_storeEnumTagMultiPayload();
        sub_10004DED0(&qword_10015BA80, &qword_1001115E0);
        sub_100059E10();
        sub_100039178();
        _ConditionalContent<>.init(storage:)();
        sub_1000068B0(&v237, &qword_10015BA68, &qword_1001115D8);
        sub_10002A748(v210, v209, v208);

        v43 = v131;
        v44 = &qword_10015BA40;
        v45 = &qword_1001115C0;
        return sub_1000068B0(v43, v44, v45);
      }

      if (EnumCaseMultiPayload == 9)
      {
        v60 = v20[16];
        v61 = *(v20 + 24);
        v62 = *(v20 + 5);
        v63 = *(v20 + 6);
        v64 = v211;
        *v211 = *v20;
        *(v64 + 16) = v60;
        *(v64 + 24) = v61;
        *(v64 + 5) = v62;
        *(v64 + 6) = v63;
        v65 = v214;
        *&v237 = 0x403C000000000000;
        sub_10003489C();
        ScaledMetric.init(wrappedValue:)();
        *(v64 + v65[6]) = 0x4020000000000000;
        *(v64 + v65[7]) = 0xC01E000000000000;
        *&v237 = 0x4014000000000000;
        sub_1000348F0();
        ScaledMetric.init(wrappedValue:)();
        *(v64 + v65[9]) = 0xC000000000000000;
        sub_100038C3C(v64, v213, type metadata accessor for PrimarySettingsListFollowUpHeader);
        swift_storeEnumTagMultiPayload();
        sub_10004DED0(&qword_10015BA68, &qword_1001115D8);
        sub_1000525A0(&qword_10015BA60, &qword_10015BA68, &qword_1001115D8, &unk_1001147D8);
        sub_1000354E8(&qword_10015BA70, type metadata accessor for PrimarySettingsListFollowUpHeader, &unk_1001113A4);
        v66 = v215;
        _ConditionalContent<>.init(storage:)();
        sub_100059CA0(v66, v218, &qword_10015BA38, &qword_1001115B8);
        swift_storeEnumTagMultiPayload();
        sub_10004DED0(&qword_10015BA50, &qword_1001115D0);
        sub_100039230();
        sub_1000525A0(&qword_10015BA78, &qword_10015BA50, &qword_1001115D0, &unk_1001147D8);
        v67 = v219;
        _ConditionalContent<>.init(storage:)();
        sub_1000068B0(v66, &qword_10015BA38, &qword_1001115B8);
        sub_100059CA0(v67, v221, &qword_10015BA40, &qword_1001115C0);
        swift_storeEnumTagMultiPayload();
        sub_10004DED0(&qword_10015BA80, &qword_1001115E0);
        sub_100059E10();
        sub_100039178();
        _ConditionalContent<>.init(storage:)();
        sub_1000068B0(v67, &qword_10015BA40, &qword_1001115C0);
        return sub_10002C6F8(v64, type metadata accessor for PrimarySettingsListFollowUpHeader);
      }

      v181 = *v20;
      v182 = *(v20 + 1);
      v183 = *(v20 + 3);
      v184 = *(v20 + 4);
      v186 = *v21;
      v185 = *(v21 + 8);
      v187 = *(v21 + 24);
      v209 = *(v21 + 16);
      v210 = v185;
      v208 = v187;
      v211 = *(v21 + *(v22 + 24));
      v188 = v20[16];
      LODWORD(v212) = v188;
      v189 = *(v21 + 32);
      v190 = swift_allocObject();
      v213 = v182;
      v214 = v181;
      *(v190 + 16) = v181;
      *(v190 + 24) = v182;
      *(v190 + 32) = v188;
      *(v190 + 40) = v183;
      *(v190 + 48) = v184;
      v215 = v184;
      type metadata accessor for SettingsAppModel(0);
      sub_10005950C(v181, v182, v188);

      v192 = v209;
      v191 = v210;
      v193 = v208;
      sub_100029920(v186, v210, v209, v208, v189);
      sub_1000354E8(&qword_10015AFB8, type metadata accessor for SettingsAppModel, &unk_10010FC24);
      v194 = Environment.init<A>(_:)();
      LOBYTE(v242) = v195 & 1;
      *&v237 = v194;
      BYTE8(v237) = v195 & 1;
      HIDWORD(v237) = *(&v224 + 3);
      *(&v237 + 9) = v224;
      *&v238 = v186;
      *(&v238 + 1) = v191;
      *&v239 = v192;
      *(&v239 + 1) = v193;
      LOBYTE(v240) = v189;
      *(&v240 + 1) = v231;
      DWORD1(v240) = *(&v231 + 3);
      *(&v240 + 1) = v211;
      *&v241[0] = sub_100059E08;
      *(&v241[0] + 1) = v190;
      v196 = v240;
      v197 = v218;
      v218[2] = v239;
      v197[3] = v196;
      v197[4] = v241[0];
      v198 = v238;
      *v197 = v237;
      v197[1] = v198;
      swift_storeEnumTagMultiPayload();
      sub_100059CA0(&v237, &v224, &qword_10015BA50, &qword_1001115D0);
      sub_10004DED0(&qword_10015BA50, &qword_1001115D0);
      sub_100039230();
      sub_1000525A0(&qword_10015BA78, &qword_10015BA50, &qword_1001115D0, &unk_1001147D8);
      v199 = v219;
      _ConditionalContent<>.init(storage:)();
      v177 = &qword_1001115C0;
      sub_100059CA0(v199, v221, &qword_10015BA40, &qword_1001115C0);
      swift_storeEnumTagMultiPayload();
      sub_10004DED0(&qword_10015BA80, &qword_1001115E0);
      sub_100059E10();
      sub_100039178();
      _ConditionalContent<>.init(storage:)();
      sub_1000068B0(&v237, &qword_10015BA50, &qword_1001115D0);
      sub_100054F18(v214, v213, v212);

      v43 = v199;
      v44 = &qword_10015BA40;
    }

    else
    {
      if (EnumCaseMultiPayload == 5)
      {
        v93 = *v20;
        v94 = *(v20 + 1);
        v95 = *(v20 + 3);
        v96 = *(v20 + 4);
        v98 = *v21;
        v97 = *(v21 + 8);
        v99 = *(v21 + 24);
        v213 = *(v21 + 16);
        v214 = v97;
        v212 = v99;
        v215 = *(v21 + *(v22 + 24));
        v100 = v20[16];
        LODWORD(v216) = v100;
        v101 = *(v21 + 32);
        v102 = swift_allocObject();
        v217 = v94;
        v218 = v93;
        *(v102 + 16) = v93;
        *(v102 + 24) = v94;
        *(v102 + 32) = v100;
        *(v102 + 40) = v95;
        *(v102 + 48) = v96;
        *&v219 = v96;
        type metadata accessor for SettingsAppModel(0);
        sub_100039F14(v93, v94, v100);

        v104 = v213;
        v103 = v214;
        v105 = v212;
        sub_100029920(v98, v214, v213, v212, v101);
        sub_1000354E8(&qword_10015AFB8, type metadata accessor for SettingsAppModel, &unk_10010FC24);
        v106 = Environment.init<A>(_:)();
        LOBYTE(v231) = v107 & 1;
        *&v242 = v106;
        BYTE8(v242) = v107 & 1;
        *(&v242 + 9) = v237;
        HIDWORD(v242) = *(&v237 + 3);
        *&v243 = v98;
        *(&v243 + 1) = v103;
        *&v244 = v104;
        *(&v244 + 1) = v105;
        LOBYTE(v245) = v101;
        *(&v245 + 1) = v224;
        DWORD1(v245) = *(&v224 + 3);
        *(&v245 + 1) = v215;
        *&v246 = sub_1000437EC;
        *(&v246 + 1) = v102;
        v239 = v244;
        v240 = v245;
        v241[0] = v246;
        v237 = v242;
        v238 = v243;
        v247 = 1;
        LOBYTE(v241[1]) = 1;
        sub_100059CA0(&v242, &v224, &qword_10015BB30, &qword_100111630);
        sub_10004DED0(&qword_10015BB20, &qword_100111628);
        sub_10004DED0(&qword_10015BB30, &qword_100111630);
        sub_1000525A0(&qword_10015BB18, &qword_10015BB20, &qword_100111628, &unk_1001147D8);
        sub_1000525A0(&qword_10015BB28, &qword_10015BB30, &qword_100111630, &unk_1001147D8);
        _ConditionalContent<>.init(storage:)();
        v239 = v226;
        v240 = v227;
        v241[0] = v228;
        LOWORD(v241[1]) = v229;
        v237 = v224;
        v238 = v225;
        v248 = 0;
        sub_10004DED0(&qword_10015BB10, &qword_100111620);
        sub_10004DED0(&qword_10015BB40, &qword_100111638);
        sub_100038F2C();
        sub_100039098();
        _ConditionalContent<>.init(storage:)();
        v226 = v233;
        v227 = v234;
        v228 = v235;
        v229 = v236;
        v224 = v231;
        v225 = v232;
        v249 = 1;
        v230 = 1;
        sub_10004DED0(&qword_10015BA98, &qword_1001115E8);
        sub_10004DED0(&qword_10015BB00, &qword_100111618);
        sub_100038EA0();
        sub_10003900C();
        _ConditionalContent<>.init(storage:)();
        v108 = v240;
        v109 = v221;
        *(v221 + 2) = v239;
        *(v109 + 3) = v108;
        *(v109 + 4) = v241[0];
        *(v109 + 79) = *(v241 + 15);
        v110 = v238;
        *v109 = v237;
        *(v109 + 1) = v110;
        swift_storeEnumTagMultiPayload();
        sub_10004DED0(&qword_10015BA80, &qword_1001115E0);
        sub_100059E10();
        sub_100039178();
        _ConditionalContent<>.init(storage:)();
        sub_10002A748(v218, v217, v216);

        v43 = &v242;
        v44 = &qword_10015BB30;
        v45 = &qword_100111630;
        return sub_1000068B0(v43, v44, v45);
      }

      if (EnumCaseMultiPayload == 6)
      {
        v24 = *v20;
        v25 = *(v20 + 1);
        v26 = *(v20 + 3);
        v27 = *(v20 + 4);
        v28 = *(v20 + 5);
        v29 = *v21;
        v213 = *(v21 + 8);
        v214 = v29;
        v30 = *(v21 + 16);
        v211 = *(v21 + 24);
        v212 = v30;
        v215 = *(v21 + *(v22 + 24));
        v31 = v20[16];
        LODWORD(v216) = v31;
        v32 = *(v21 + 32);
        v33 = swift_allocObject();
        v217 = v25;
        v218 = v24;
        *(v33 + 16) = v24;
        *(v33 + 24) = v25;
        *(v33 + 32) = v31;
        *(v33 + 40) = v26;
        *(v33 + 48) = v27;
        *&v219 = v27;
        *(v33 + 56) = v28;
        type metadata accessor for SettingsAppModel(0);
        sub_100039F14(v24, v25, v31);

        v35 = v213;
        v34 = v214;
        v37 = v211;
        v36 = v212;
        sub_100029920(v214, v213, v212, v211, v32);
        sub_1000354E8(&qword_10015AFB8, type metadata accessor for SettingsAppModel, &unk_10010FC24);
        v38 = Environment.init<A>(_:)();
        LOBYTE(v231) = v39 & 1;
        *&v242 = v38;
        BYTE8(v242) = v39 & 1;
        *(&v242 + 9) = v237;
        HIDWORD(v242) = *(&v237 + 3);
        *&v243 = v34;
        *(&v243 + 1) = v35;
        *&v244 = v36;
        *(&v244 + 1) = v37;
        LOBYTE(v245) = v32;
        *(&v245 + 1) = v224;
        DWORD1(v245) = *(&v224 + 3);
        *(&v245 + 1) = v215;
        *&v246 = sub_100059F40;
        *(&v246 + 1) = v33;
        v239 = v244;
        v240 = v245;
        v241[0] = v246;
        v237 = v242;
        v238 = v243;
        v247 = 0;
        LOBYTE(v241[1]) = 0;
        sub_100059CA0(&v242, &v224, &qword_10015BB50, &qword_100111640);
        sub_10004DED0(&qword_10015BB50, &qword_100111640);
        sub_10004DED0(&qword_10015BB60, &qword_100111648);
        sub_1000525A0(&qword_10015BB48, &qword_10015BB50, &qword_100111640, &unk_1001147D8);
        sub_1000525A0(&qword_10015BB58, &qword_10015BB60, &qword_100111648, &unk_1001147D8);
        _ConditionalContent<>.init(storage:)();
        v239 = v226;
        v240 = v227;
        v241[0] = v228;
        LOBYTE(v241[1]) = v229;
        v237 = v224;
        v238 = v225;
        v248 = 1;
        BYTE1(v241[1]) = 1;
        sub_10004DED0(&qword_10015BB10, &qword_100111620);
        sub_10004DED0(&qword_10015BB40, &qword_100111638);
        sub_100038F2C();
        sub_100039098();
        _ConditionalContent<>.init(storage:)();
        v226 = v233;
        v227 = v234;
        v228 = v235;
        v229 = v236;
        v224 = v231;
        v225 = v232;
        v249 = 1;
        v230 = 1;
        sub_10004DED0(&qword_10015BA98, &qword_1001115E8);
        sub_10004DED0(&qword_10015BB00, &qword_100111618);
        sub_100038EA0();
        sub_10003900C();
        _ConditionalContent<>.init(storage:)();
        v40 = v240;
        v41 = v221;
        *(v221 + 2) = v239;
        *(v41 + 3) = v40;
        *(v41 + 4) = v241[0];
        *(v41 + 79) = *(v241 + 15);
        v42 = v238;
        *v41 = v237;
        *(v41 + 1) = v42;
        swift_storeEnumTagMultiPayload();
        sub_10004DED0(&qword_10015BA80, &qword_1001115E0);
        sub_100059E10();
        sub_100039178();
        _ConditionalContent<>.init(storage:)();
        sub_10002A748(v218, v217, v216);

        v43 = &v242;
        v44 = &qword_10015BB50;
        v45 = &qword_100111640;
        return sub_1000068B0(v43, v44, v45);
      }

      v161 = *v20;
      v162 = *(v20 + 1);
      v164 = *(v20 + 3);
      v163 = *(v20 + 4);
      v165 = *(v20 + 5);
      v166 = *(v20 + 6);
      v167 = *v21;
      v212 = *(v21 + 8);
      v213 = v167;
      v168 = *(v21 + 16);
      v210 = *(v21 + 24);
      v211 = v168;
      v214 = *(v21 + *(v22 + 24));
      v169 = v20[16];
      LODWORD(v216) = v169;
      LODWORD(v209) = *(v21 + 32);
      v170 = swift_allocObject();
      v217 = v162;
      v218 = v161;
      *(v170 + 16) = v161;
      *(v170 + 24) = v162;
      *(v170 + 32) = v169;
      *(v170 + 40) = v164;
      *(v170 + 48) = v163;
      *&v219 = v163;
      *(v170 + 56) = v165;
      *(v170 + 64) = v166;
      v215 = v166;
      type metadata accessor for SettingsAppModel(0);
      sub_100039F14(v161, v162, v169);

      v172 = v212;
      v171 = v213;
      v174 = v210;
      v173 = v211;
      LOBYTE(v161) = v209;
      sub_100029920(v213, v212, v211, v210, v209);
      sub_1000354E8(&qword_10015AFB8, type metadata accessor for SettingsAppModel, &unk_10010FC24);
      v175 = Environment.init<A>(_:)();
      LOBYTE(v231) = v176 & 1;
      *&v242 = v175;
      BYTE8(v242) = v176 & 1;
      *(&v242 + 9) = v237;
      HIDWORD(v242) = *(&v237 + 3);
      *&v243 = v171;
      *(&v243 + 1) = v172;
      *&v244 = v173;
      *(&v244 + 1) = v174;
      LOBYTE(v245) = v161;
      *(&v245 + 1) = v224;
      DWORD1(v245) = *(&v224 + 3);
      *(&v245 + 1) = v214;
      *&v246 = sub_100043300;
      *(&v246 + 1) = v170;
      v239 = v244;
      v240 = v245;
      v241[0] = v246;
      v237 = v242;
      v238 = v243;
      v247 = 1;
      LOBYTE(v241[1]) = 1;
      v177 = &qword_100111648;
      sub_100059CA0(&v242, &v224, &qword_10015BB60, &qword_100111648);
      sub_10004DED0(&qword_10015BB50, &qword_100111640);
      sub_10004DED0(&qword_10015BB60, &qword_100111648);
      sub_1000525A0(&qword_10015BB48, &qword_10015BB50, &qword_100111640, &unk_1001147D8);
      sub_1000525A0(&qword_10015BB58, &qword_10015BB60, &qword_100111648, &unk_1001147D8);
      _ConditionalContent<>.init(storage:)();
      v239 = v226;
      v240 = v227;
      v241[0] = v228;
      LOBYTE(v241[1]) = v229;
      v237 = v224;
      v238 = v225;
      v248 = 1;
      BYTE1(v241[1]) = 1;
      sub_10004DED0(&qword_10015BB10, &qword_100111620);
      sub_10004DED0(&qword_10015BB40, &qword_100111638);
      sub_100038F2C();
      sub_100039098();
      _ConditionalContent<>.init(storage:)();
      v226 = v233;
      v227 = v234;
      v228 = v235;
      v229 = v236;
      v224 = v231;
      v225 = v232;
      v249 = 1;
      v230 = 1;
      sub_10004DED0(&qword_10015BA98, &qword_1001115E8);
      sub_10004DED0(&qword_10015BB00, &qword_100111618);
      sub_100038EA0();
      sub_10003900C();
      _ConditionalContent<>.init(storage:)();
      v178 = v240;
      v179 = v221;
      *(v221 + 2) = v239;
      *(v179 + 3) = v178;
      *(v179 + 4) = v241[0];
      *(v179 + 79) = *(v241 + 15);
      v180 = v238;
      *v179 = v237;
      *(v179 + 1) = v180;
      swift_storeEnumTagMultiPayload();
      sub_10004DED0(&qword_10015BA80, &qword_1001115E0);
      sub_100059E10();
      sub_100039178();
      _ConditionalContent<>.init(storage:)();
      sub_10002A748(v218, v217, v216);

      v43 = &v242;
      v44 = &qword_10015BB60;
    }

    v45 = v177;
    return sub_1000068B0(v43, v44, v45);
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v210 = v16;
      sub_100039318(v20, v16, type metadata accessor for PrimarySettingsListFamilyLinkModel);
      sub_100038C3C(v16, v13, type metadata accessor for PrimarySettingsListFamilyLinkModel);
      v143 = *v21;
      v144 = *(v21 + 8);
      v145 = *(v21 + 16);
      v217 = *(v21 + 24);
      v218 = v145;
      *&v219 = *(v21 + *(v22 + 24));
      v146 = *(v21 + 32);
      sub_100038C3C(v13, v11, type metadata accessor for PrimarySettingsListFamilyLink);
      v147 = (*(v8 + 80) + 16) & ~*(v8 + 80);
      v148 = swift_allocObject();
      sub_100039318(v11, v148 + v147, type metadata accessor for PrimarySettingsListFamilyLink);
      type metadata accessor for SettingsAppModel(0);
      v149 = v143;
      v150 = v143;
      v151 = v144;
      v152 = v144;
      v154 = v217;
      v153 = v218;
      sub_100029920(v150, v152, v218, v217, v146);
      sub_1000354E8(&qword_10015AFB8, type metadata accessor for SettingsAppModel, &unk_10010FC24);
      v155 = Environment.init<A>(_:)();
      v157 = v156;
      sub_10002C6F8(v13, type metadata accessor for PrimarySettingsListFamilyLink);
      LOBYTE(v231) = v157 & 1;
      *&v242 = v155;
      BYTE8(v242) = v157 & 1;
      *(&v242 + 9) = v237;
      HIDWORD(v242) = *(&v237 + 3);
      *&v243 = v149;
      *(&v243 + 1) = v151;
      *&v244 = v153;
      *(&v244 + 1) = v154;
      LOBYTE(v245) = v146;
      *(&v245 + 1) = v224;
      DWORD1(v245) = *(&v224 + 3);
      *(&v245 + 1) = v219;
      *&v246 = sub_100059FB8;
      *(&v246 + 1) = v148;
      v239 = v244;
      v240 = v245;
      v241[0] = v246;
      v237 = v242;
      v238 = v243;
      v247 = 1;
      LOBYTE(v241[1]) = 1;
      sub_100059CA0(&v242, &v224, &qword_10015BAC8, &qword_100111600);
      sub_10004DED0(&qword_10015BAB8, &qword_1001115F8);
      sub_10004DED0(&qword_10015BAC8, &qword_100111600);
      sub_1000525A0(&qword_10015BAB0, &qword_10015BAB8, &qword_1001115F8, &unk_1001147D8);
      sub_1000525A0(&qword_10015BAC0, &qword_10015BAC8, &qword_100111600, &unk_1001147D8);
      _ConditionalContent<>.init(storage:)();
      v239 = v226;
      v240 = v227;
      v241[0] = v228;
      LOWORD(v241[1]) = v229;
      v237 = v224;
      v238 = v225;
      v248 = 0;
      sub_10004DED0(&qword_10015BAA8, &qword_1001115F0);
      sub_10004DED0(&qword_10015BAD8, &qword_100111608);
      sub_100038CB4();
      sub_100038D94();
      _ConditionalContent<>.init(storage:)();
      v226 = v233;
      v227 = v234;
      v228 = v235;
      v229 = v236;
      v224 = v231;
      v225 = v232;
      v249 = 0;
      v230 = 0;
      sub_10004DED0(&qword_10015BA98, &qword_1001115E8);
      sub_10004DED0(&qword_10015BB00, &qword_100111618);
      sub_100038EA0();
      sub_10003900C();
      _ConditionalContent<>.init(storage:)();
      v158 = v240;
      v159 = v221;
      *(v221 + 2) = v239;
      *(v159 + 3) = v158;
      *(v159 + 4) = v241[0];
      *(v159 + 79) = *(v241 + 15);
      v160 = v238;
      *v159 = v237;
      *(v159 + 1) = v160;
      swift_storeEnumTagMultiPayload();
      sub_10004DED0(&qword_10015BA80, &qword_1001115E0);
      sub_100059E10();
      sub_100039178();
      _ConditionalContent<>.init(storage:)();
      sub_1000068B0(&v242, &qword_10015BAC8, &qword_100111600);
      return sub_10002C6F8(v210, type metadata accessor for PrimarySettingsListFamilyLinkModel);
    }

    v70 = *v20;
    v69 = *(v20 + 1);
    v71 = v20[16];
    v72 = *v21;
    v74 = *(v21 + 16);
    v73 = *(v21 + 24);
    v75 = *(v21 + *(v22 + 24));
    v218 = *(v21 + 8);
    *&v219 = v75;
    v76 = *(v21 + 32);
    v77 = swift_allocObject();
    *(v77 + 16) = v70;
    *(v77 + 24) = v69;
    *(v77 + 32) = v71;
    type metadata accessor for SettingsAppModel(0);
    v78 = v218;
    sub_100029920(v72, v218, v74, v73, v76);
    sub_1000354E8(&qword_10015AFB8, type metadata accessor for SettingsAppModel, &unk_10010FC24);
    v79 = Environment.init<A>(_:)();
    LOBYTE(v231) = v80 & 1;
    *&v242 = v79;
    BYTE8(v242) = v80 & 1;
    *(&v242 + 9) = v237;
    HIDWORD(v242) = *(&v237 + 3);
    *&v243 = v72;
    *(&v243 + 1) = v78;
    *&v244 = v74;
    *(&v244 + 1) = v73;
    LOBYTE(v245) = v76;
    *(&v245 + 1) = v224;
    DWORD1(v245) = *(&v224 + 3);
    *(&v245 + 1) = v219;
    *&v246 = sub_1000407DC;
    *(&v246 + 1) = v77;
    v239 = v244;
    v240 = v245;
    v241[0] = v246;
    v237 = v242;
    v238 = v243;
    v247 = 0;
    LOBYTE(v241[1]) = 0;
    sub_100059CA0(&v242, &v224, &qword_10015BAB8, &qword_1001115F8);
    sub_10004DED0(&qword_10015BAB8, &qword_1001115F8);
    sub_10004DED0(&qword_10015BAC8, &qword_100111600);
    sub_1000525A0(&qword_10015BAB0, &qword_10015BAB8, &qword_1001115F8, &unk_1001147D8);
    sub_1000525A0(&qword_10015BAC0, &qword_10015BAC8, &qword_100111600, &unk_1001147D8);
    _ConditionalContent<>.init(storage:)();
    v239 = v226;
    v240 = v227;
    v241[0] = v228;
    LOWORD(v241[1]) = v229;
    v237 = v224;
    v238 = v225;
    v248 = 0;
    sub_10004DED0(&qword_10015BAA8, &qword_1001115F0);
    sub_10004DED0(&qword_10015BAD8, &qword_100111608);
    sub_100038CB4();
    sub_100038D94();
    _ConditionalContent<>.init(storage:)();
    v226 = v233;
    v227 = v234;
    v228 = v235;
    v229 = v236;
    v224 = v231;
    v225 = v232;
    v249 = 0;
    v230 = 0;
    sub_10004DED0(&qword_10015BA98, &qword_1001115E8);
    sub_10004DED0(&qword_10015BB00, &qword_100111618);
    sub_100038EA0();
    sub_10003900C();
    _ConditionalContent<>.init(storage:)();
    v81 = v240;
    v82 = v221;
    *(v221 + 2) = v239;
    *(v82 + 3) = v81;
    *(v82 + 4) = v241[0];
    *(v82 + 79) = *(v241 + 15);
    v83 = v238;
    *v82 = v237;
    *(v82 + 1) = v83;
    swift_storeEnumTagMultiPayload();
    sub_10004DED0(&qword_10015BA80, &qword_1001115E0);
    sub_100059E10();
    sub_100039178();
    _ConditionalContent<>.init(storage:)();
    v43 = &v242;
    v44 = &qword_10015BAB8;
    v45 = &qword_1001115F8;
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v84 = *v20;
      v85 = *(v20 + 1);
      v86 = *(v20 + 3);
      v87 = *(v20 + 4);
      v88 = *(v20 + 5);
      v89 = v20[16];
      v248 = 0;
      *&v237 = v84;
      *(&v237 + 1) = v85;
      LOBYTE(v238) = v89;
      *(&v238 + 1) = v86;
      *&v239 = v87;
      *(&v239 + 1) = v88;
      LOBYTE(v241[1]) = 0;
      sub_100039F14(v84, v85, v89);

      sub_10004DED0(&qword_10015BAF0, &qword_100111610);
      sub_100038E4C();
      sub_1000525A0(&qword_10015BAE8, &qword_10015BAF0, &qword_100111610, &unk_1001147D8);
      _ConditionalContent<>.init(storage:)();
      v239 = v226;
      v240 = v227;
      v241[0] = v228;
      LOBYTE(v241[1]) = v229;
      v237 = v224;
      v238 = v225;
      v249 = 1;
      BYTE1(v241[1]) = 1;
      sub_10004DED0(&qword_10015BAA8, &qword_1001115F0);
      sub_10004DED0(&qword_10015BAD8, &qword_100111608);
      sub_100038CB4();
      sub_100038D94();
      _ConditionalContent<>.init(storage:)();
      v226 = v233;
      v227 = v234;
      v228 = v235;
      v229 = v236;
      v224 = v231;
      v225 = v232;
      LOBYTE(v242) = 0;
      v230 = 0;
      sub_10004DED0(&qword_10015BA98, &qword_1001115E8);
      sub_10004DED0(&qword_10015BB00, &qword_100111618);
      sub_100038EA0();
      sub_10003900C();
      _ConditionalContent<>.init(storage:)();
      v90 = v240;
      v91 = v221;
      *(v221 + 2) = v239;
      *(v91 + 3) = v90;
      *(v91 + 4) = v241[0];
      *(v91 + 79) = *(v241 + 15);
      v92 = v238;
      *v91 = v237;
      *(v91 + 1) = v92;
      swift_storeEnumTagMultiPayload();
      sub_10004DED0(&qword_10015BA80, &qword_1001115E0);
      sub_100059E10();
      sub_100039178();
      _ConditionalContent<>.init(storage:)();
      sub_10002A748(v84, v85, v89);
    }

    if (EnumCaseMultiPayload == 3)
    {
      v46 = *v20;
      v47 = *(v20 + 1);
      v48 = *v21;
      v49 = *(v21 + 8);
      v51 = *(v21 + 16);
      v50 = *(v21 + 24);
      *&v219 = *(v21 + *(v22 + 24));
      v52 = *(v21 + 32);
      v53 = swift_allocObject();
      *(v53 + 16) = v46;
      *(v53 + 24) = v47;
      type metadata accessor for SettingsAppModel(0);
      sub_100029920(v48, v49, v51, v50, v52);
      sub_1000354E8(&qword_10015AFB8, type metadata accessor for SettingsAppModel, &unk_10010FC24);
      v54 = Environment.init<A>(_:)();
      LOBYTE(v231) = v55 & 1;
      *&v242 = v54;
      BYTE8(v242) = v55 & 1;
      *(&v242 + 9) = v237;
      HIDWORD(v242) = *(&v237 + 3);
      *&v243 = v48;
      *(&v243 + 1) = v49;
      *&v244 = v51;
      *(&v244 + 1) = v50;
      LOBYTE(v245) = v52;
      *(&v245 + 1) = v224;
      DWORD1(v245) = *(&v224 + 3);
      *(&v245 + 1) = v219;
      *&v246 = sub_100059FAC;
      *(&v246 + 1) = v53;
      v239 = v244;
      v240 = v245;
      v241[0] = v246;
      v237 = v242;
      v238 = v243;
      v247 = 1;
      LOBYTE(v241[1]) = 1;
      v56 = &qword_10015BAF0;
      v57 = &qword_100111610;
      sub_100059CA0(&v242, &v224, &qword_10015BAF0, &qword_100111610);
      sub_10004DED0(&qword_10015BAF0, &qword_100111610);
      sub_100038E4C();
      sub_1000525A0(&qword_10015BAE8, &qword_10015BAF0, &qword_100111610, &unk_1001147D8);
      _ConditionalContent<>.init(storage:)();
      v239 = v226;
      v240 = v227;
      v241[0] = v228;
      LOBYTE(v241[1]) = v229;
      v237 = v224;
      v238 = v225;
      v248 = 1;
      BYTE1(v241[1]) = 1;
      sub_10004DED0(&qword_10015BAA8, &qword_1001115F0);
      sub_10004DED0(&qword_10015BAD8, &qword_100111608);
      sub_100038CB4();
      sub_100038D94();
      _ConditionalContent<>.init(storage:)();
      v226 = v233;
      v227 = v234;
      v228 = v235;
      v229 = v236;
      v224 = v231;
      v225 = v232;
      v249 = 0;
      v230 = 0;
    }

    else
    {
      v219 = *v20;
      v132 = *(v20 + 2);
      v133 = *v21;
      v134 = *(v21 + 8);
      v136 = *(v21 + 16);
      v135 = *(v21 + 24);
      v137 = *(v21 + *(v22 + 24));
      v138 = *(v21 + 32);
      v139 = swift_allocObject();
      *(v139 + 16) = v219;
      *(v139 + 32) = v132;
      type metadata accessor for SettingsAppModel(0);
      sub_100029920(v133, v134, v136, v135, v138);
      sub_1000354E8(&qword_10015AFB8, type metadata accessor for SettingsAppModel, &unk_10010FC24);
      v140 = Environment.init<A>(_:)();
      LOBYTE(v231) = v141 & 1;
      *&v242 = v140;
      BYTE8(v242) = v141 & 1;
      *(&v242 + 9) = v237;
      HIDWORD(v242) = *(&v237 + 3);
      *&v243 = v133;
      *(&v243 + 1) = v134;
      *&v244 = v136;
      *(&v244 + 1) = v135;
      LOBYTE(v245) = v138;
      *(&v245 + 1) = v224;
      DWORD1(v245) = *(&v224 + 3);
      *(&v245 + 1) = v137;
      *&v246 = sub_100059F98;
      *(&v246 + 1) = v139;
      v239 = v244;
      v240 = v245;
      v241[0] = v246;
      v237 = v242;
      v238 = v243;
      v247 = 0;
      LOBYTE(v241[1]) = 0;
      v56 = &qword_10015BB20;
      v57 = &qword_100111628;
      sub_100059CA0(&v242, &v224, &qword_10015BB20, &qword_100111628);
      sub_10004DED0(&qword_10015BB20, &qword_100111628);
      sub_10004DED0(&qword_10015BB30, &qword_100111630);
      sub_1000525A0(&qword_10015BB18, &qword_10015BB20, &qword_100111628, &unk_1001147D8);
      sub_1000525A0(&qword_10015BB28, &qword_10015BB30, &qword_100111630, &unk_1001147D8);
      _ConditionalContent<>.init(storage:)();
      v239 = v226;
      v240 = v227;
      v241[0] = v228;
      LOWORD(v241[1]) = v229;
      v237 = v224;
      v238 = v225;
      v248 = 0;
      sub_10004DED0(&qword_10015BB10, &qword_100111620);
      sub_10004DED0(&qword_10015BB40, &qword_100111638);
      sub_100038F2C();
      sub_100039098();
      _ConditionalContent<>.init(storage:)();
      v226 = v233;
      v227 = v234;
      v228 = v235;
      v229 = v236;
      v224 = v231;
      v225 = v232;
      v249 = 1;
      v230 = 1;
    }

    sub_10004DED0(&qword_10015BA98, &qword_1001115E8);
    sub_10004DED0(&qword_10015BB00, &qword_100111618);
    sub_100038EA0();
    sub_10003900C();
    _ConditionalContent<>.init(storage:)();
    v58 = v240;
    v59 = v221;
    *(v221 + 2) = v239;
    *(v59 + 3) = v58;
    *(v59 + 4) = v241[0];
    *(v59 + 79) = *(v241 + 15);
    v142 = v238;
    *v59 = v237;
    *(v59 + 1) = v142;
    swift_storeEnumTagMultiPayload();
    sub_10004DED0(&qword_10015BA80, &qword_1001115E0);
    sub_100059E10();
    sub_100039178();
    _ConditionalContent<>.init(storage:)();
    v43 = &v242;
    v44 = v56;
    v45 = v57;
  }

  return sub_1000068B0(v43, v44, v45);
}