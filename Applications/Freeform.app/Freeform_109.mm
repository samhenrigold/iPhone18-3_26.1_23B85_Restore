void *sub_100DC9C50(unint64_t a1, void *a2)
{
  v5 = sub_1005B981C(&qword_101A21D00, &unk_1014B6610);
  __chkstk_darwin(v5 - 8);
  v7 = &v21 - v6;
  v28 = type metadata accessor for CRLAssetAddress(0);
  v23 = *(v28 - 8);
  __chkstk_darwin(v28);
  v27 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v22 = &v21 - v10;
  if (a1 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v12 = 0;
    v25 = a1 & 0xFFFFFFFFFFFFFF8;
    v26 = a1 & 0xC000000000000001;
    v13 = (v23 + 48);
    v14 = _swiftEmptyArrayStorage;
    v21 = a2;
    v24 = i;
    while (v26)
    {
      v15 = a1;
      a1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v16 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_20;
      }

LABEL_9:
      v29 = a1;
      sub_100E3892C(&v29, a2, v7);
      if (v2)
      {

        return v14;
      }

      if ((*v13)(v7, 1, v28) == 1)
      {
        sub_10000CAAC(v7, &qword_101A21D00, &unk_1014B6610);
      }

      else
      {
        v17 = v22;
        sub_100025668(v7, v22, type metadata accessor for CRLAssetAddress);
        sub_100025668(v17, v27, type metadata accessor for CRLAssetAddress);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_100B38E74(0, v14[2] + 1, 1, v14);
        }

        v19 = v14[2];
        v18 = v14[3];
        if (v19 >= v18 >> 1)
        {
          v14 = sub_100B38E74((v18 > 1), v19 + 1, 1, v14);
        }

        v14[2] = v19 + 1;
        sub_100025668(v27, v14 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v19, type metadata accessor for CRLAssetAddress);
        a2 = v21;
      }

      ++v12;
      a1 = v15;
      if (v16 == v24)
      {
        return v14;
      }
    }

    if (v12 >= *(v25 + 16))
    {
      goto LABEL_21;
    }

    v15 = a1;
    a1 = *(a1 + 8 * v12 + 32);

    v16 = v12 + 1;
    if (!__OFADD__(v12, 1))
    {
      goto LABEL_9;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  return _swiftEmptyArrayStorage;
}

id sub_100DC9FB0()
{
  v1 = *&v0[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock];
  os_unfair_lock_lock(*(v1 + 16));
  v2 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
  v3 = *&v0[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
  if (v3)
  {
    v4 = *&v0[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
  }

  else
  {
    v5 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager(0));
    v6 = v0;
    v7 = v0;
    v8 = sub_10001F1A0(v6);

    v9 = *&v0[v2];
    *&v7[v2] = v8;
    v4 = v8;

    v3 = 0;
  }

  v10 = *(v1 + 16);
  v11 = v3;
  os_unfair_lock_unlock(v10);
  return v4;
}

void sub_100DCA060(uint64_t a1)
{
  type metadata accessor for CRLTransactableHashableWrapper();
  sub_1000066D0(&qword_101A22700, type metadata accessor for CRLTransactableHashableWrapper, "It5");
  v2 = 0;
  v10[1] = Set.init(minimumCapacity:)();
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  while (v5)
  {
    v7 = v2;
LABEL_9:
    v8 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v9 = *(*(a1 + 48) + ((v7 << 9) | (8 * v8)));

    sub_100E6B218(v10, v9);
  }

  while (1)
  {
    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v7 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v7);
    ++v2;
    if (v5)
    {
      v2 = v7;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_100DCA1B0(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v23 - v7;
  __chkstk_darwin(v9);
  v11 = v23 - v10;
  sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  result = Set.init(minimumCapacity:)();
  v13 = 0;
  v24 = a1;
  v25 = result;
  v16 = *(a1 + 64);
  v15 = a1 + 64;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v23[2] = v3 + 32;
  v23[3] = v3 + 16;
  v23[1] = v3 + 8;
  if ((v18 & v14) != 0)
  {
    do
    {
      v21 = v13;
LABEL_9:
      v22 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      (*(v3 + 16))(v11, *(v24 + 48) + *(v3 + 72) * (v22 | (v21 << 6)), v2);
      (*(v3 + 32))(v5, v11, v2);
      sub_100E6AF38(v8, v5);
      result = (*(v3 + 8))(v8, v2);
    }

    while (v19);
  }

  while (1)
  {
    v21 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v21 >= v20)
    {

      return v25;
    }

    v19 = *(v15 + 8 * v21);
    ++v13;
    if (v19)
    {
      v13 = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100DCA410(uint64_t a1)
{
  v2 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v20 - v7;
  __chkstk_darwin(v9);
  v11 = &v20 - v10;
  sub_1000066D0(&qword_101A21CA0, type metadata accessor for CRLBoardLibraryViewModel.Folder, byte_1014BB2A0);
  result = Set.init(minimumCapacity:)();
  v13 = 0;
  v21 = result;
  v14 = 1 << *(a1 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a1 + 64);
  for (i = (v14 + 63) >> 6; v16; result = sub_100026028(v8, type metadata accessor for CRLBoardLibraryViewModel.Folder))
  {
    v18 = v13;
LABEL_9:
    v19 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    sub_10000C83C(*(a1 + 56) + *(v3 + 72) * (v19 | (v18 << 6)), v11, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    sub_100025668(v11, v5, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    sub_100E6F3DC(v8, v5);
  }

  while (1)
  {
    v18 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v18 >= i)
    {

      return v21;
    }

    v16 = *(a1 + 64 + 8 * v18);
    ++v13;
    if (v16)
    {
      v13 = v18;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100DCA65C(uint64_t a1)
{
  v2 = _s5BoardVMa(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v20 - v7;
  __chkstk_darwin(v9);
  v11 = &v20 - v10;
  sub_1000066D0(&qword_101A21C98, _s5BoardVMa, byte_1014DE050);
  result = Set.init(minimumCapacity:)();
  v13 = 0;
  v21 = result;
  v14 = 1 << *(a1 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a1 + 64);
  for (i = (v14 + 63) >> 6; v16; result = sub_100026028(v8, _s5BoardVMa))
  {
    v18 = v13;
LABEL_9:
    v19 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    sub_10000C83C(*(a1 + 56) + *(v3 + 72) * (v19 | (v18 << 6)), v11, _s5BoardVMa);
    sub_100025668(v11, v5, _s5BoardVMa);
    sub_100E703AC(v8, v5);
  }

  while (1)
  {
    v18 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v18 >= i)
    {

      return v21;
    }

    v16 = *(a1 + 64 + 8 * v18);
    ++v13;
    if (v16)
    {
      v13 = v18;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_100DCA8A8(uint64_t a1)
{
  sub_100006370(0, &qword_1019F69D0, CKRecordZoneID_ptr);
  sub_10000FDE0(&qword_1019F69D8, &qword_1019F69D0, CKRecordZoneID_ptr, &protocol conformance descriptor for NSObject);
  v2 = 0;
  v9[1] = Set.init(minimumCapacity:)();
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  while (v5)
  {
    v7 = v2;
LABEL_9:
    v8 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    sub_100E7227C(v9, *(*(a1 + 48) + ((v7 << 9) | (8 * v8))), &qword_1019F69D0, CKRecordZoneID_ptr, &unk_1019F3540, &unk_1014B6540);
  }

  while (1)
  {
    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v7 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v7);
    ++v2;
    if (v5)
    {
      v2 = v7;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_100DCAA28(uint64_t a1)
{
  v2 = type metadata accessor for CRLSpotlightManager.ChangeType(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v41 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v40 = &v34 - v6;
  v7 = sub_1005B981C(&qword_101A19C30, &qword_1014A8B90);
  __chkstk_darwin(v7 - 8);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v34 - v11;
  sub_1000066D0(&qword_101A21FC8, type metadata accessor for CRLSpotlightManager.ChangeType, asc_1014A8A24);
  result = Set.init(minimumCapacity:)();
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v45 = result;
  v42 = (v3 + 56);
  v43 = v2;
  v39 = v3;
  v18 = (v3 + 48);
  v34 = a1 + 32;
  v35 = a1;
  v19 = 0xF000000000000007;
  while (1)
  {
    v44 = v19;
    if ((~v19 & 0xF000000000000007) == 0)
    {
      goto LABEL_19;
    }

    v37 = v17;
    v38 = v14;
    v20 = 0;
    v21 = (v14 + 64) >> 6;
    if (!v16)
    {
      break;
    }

    while (1)
    {
      v22 = v20;
      v2 = v43;
LABEL_12:
      v25 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      sub_10000C83C(*(v44 + 48) + *(v39 + 72) * (v25 | (v22 << 6)), v9, type metadata accessor for CRLSpotlightManager.ChangeType);
      v26 = 0;
      v24 = v22;
LABEL_13:
      (*v42)(v9, v26, 1, v2);
      v27 = *v18;
      if ((*v18)(v9, 1, v2) == 1)
      {
        break;
      }

      sub_10003DFF8(v9, v12, &qword_101A19C30, &qword_1014A8B90);
      if (v27(v12, 1, v2) == 1)
      {
        goto LABEL_27;
      }

      v14 = v41;
      sub_100025668(v12, v41, type metadata accessor for CRLSpotlightManager.ChangeType);
      v28 = v40;
      sub_10004BAE8(v40, v14);
      sub_100026028(v28, type metadata accessor for CRLSpotlightManager.ChangeType);
      v20 = v24;
      if (!v16)
      {
        goto LABEL_5;
      }
    }

    result = sub_10000CAAC(v9, &qword_101A19C30, &qword_1014A8B90);
    v17 = v37;
    v14 = v38;
LABEL_19:
    v29 = *(v35 + 16);
    if (v17 == v29)
    {
      goto LABEL_26;
    }

    if (v17 >= v29)
    {
      __break(1u);
      return result;
    }

    v19 = *(v34 + 8 * v17);
    v38 = v17 + 1;
    v30 = -1 << *(v19 + 32);
    v31 = *(v19 + 56);
    v37 = ~v30;
    v32 = -v30;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    else
    {
      v33 = -1;
    }

    v36 = v33 & v31;

    result = sub_100EA52CC(v44);
    v16 = v36;
    v14 = v37;
    v15 = v19 + 56;
    v17 = v38;
  }

LABEL_5:
  if (v21 <= v20 + 1)
  {
    v23 = v20 + 1;
  }

  else
  {
    v23 = v21;
  }

  v24 = v23 - 1;
  v2 = v43;
  while (1)
  {
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v22 >= v21)
    {
      v16 = 0;
      v26 = 1;
      goto LABEL_13;
    }

    v16 = *(v15 + 8 * v22);
    ++v20;
    if (v16)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_26:
  v38 = v14;
  (*v42)(v12, 1, 1, v2);
LABEL_27:

  sub_100EA52CC(v44);
  return v45;
}

uint64_t sub_100DCAE8C(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v23 - v7;
  __chkstk_darwin(v9);
  v11 = v23 - v10;
  sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  result = Set.init(minimumCapacity:)();
  v13 = 0;
  v24 = a1;
  v25 = result;
  v16 = *(a1 + 64);
  v15 = a1 + 64;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v23[2] = v3 + 32;
  v23[3] = v3 + 16;
  v23[1] = v3 + 8;
  if ((v18 & v14) != 0)
  {
    do
    {
      v21 = v13;
LABEL_9:
      v22 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      (*(v3 + 16))(v11, *(v24 + 56) + *(v3 + 72) * (v22 | (v21 << 6)), v2);
      (*(v3 + 32))(v5, v11, v2);
      sub_100E6AF38(v8, v5);
      result = (*(v3 + 8))(v8, v2);
    }

    while (v19);
  }

  while (1)
  {
    v21 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v21 >= v20)
    {

      return v25;
    }

    v19 = *(v15 + 8 * v21);
    ++v13;
    if (v19)
    {
      v13 = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100DCB0EC(uint64_t a1)
{
  result = Set.init(minimumCapacity:)();
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_100E6DE34(v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_100DCB208(uint64_t a1)
{
  type metadata accessor for CRLSceneInfo(0);
  sub_1000066D0(&qword_101A28670, type metadata accessor for CRLSceneInfo, &protocol conformance descriptor for NSObject);
  v2 = 0;
  v9[1] = Set.init(minimumCapacity:)();
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  while (v5)
  {
    v7 = v2;
LABEL_9:
    v8 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    sub_100E72958(v9, *(*(a1 + 48) + ((v7 << 9) | (8 * v8))), type metadata accessor for CRLSceneInfo, &qword_1019F3688, &unk_1014B6860, type metadata accessor for CRLSceneInfo);
  }

  while (1)
  {
    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v7 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v7);
    ++v2;
    if (v5)
    {
      v2 = v7;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_100DCB394()
{
  v1 = *&v0[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetDownloadManagerLock];
  os_unfair_lock_lock(*(v1 + 16));
  v2 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetDownloadManager;
  if (*&v0[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetDownloadManager])
  {
    v3 = *&v0[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetDownloadManager];
  }

  else
  {
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = *&v0[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock];
    os_unfair_lock_lock(*(v5 + 16));
    v6 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
    v7 = *&v0[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
    if (v7)
    {
      v8 = *&v0[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
    }

    else
    {
      v9 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager(0));
      v10 = v0;
      v11 = sub_10001F1A0(v10);

      v12 = *&v0[v6];
      *&v0[v6] = v11;
      v8 = v11;

      v7 = 0;
    }

    v13 = *(v5 + 16);
    v14 = v7;
    os_unfair_lock_unlock(v13);
    type metadata accessor for CRLAssetDownloadManager();
    v3 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v3 + 224) = 0u;
    *(v3 + 240) = 0u;
    *(v3 + 208) = 0u;
    *(v3 + 176) = 0u;
    *(v3 + 192) = 0u;
    *(v3 + 256) = 0;
    *(v3 + 264) = _swiftEmptySetSingleton;
    *(v3 + 272) = _swiftEmptyDictionarySingleton;
    *(v3 + 112) = v8;
    *(v3 + 120) = sub_100EA632C;
    *(v3 + 128) = v4;
    *(v3 + 136) = sub_10072CF0C;
    *(v3 + 144) = 0;
    *(v3 + 152) = 3;
    *(v3 + 160) = xmmword_1014B6240;
    *&v0[v2] = v3;
  }

  v15 = *(v1 + 16);

  os_unfair_lock_unlock(v15);
  return v3;
}

void sub_100DCB554(unint64_t a1)
{
  v20 = type metadata accessor for UUID();
  v2 = *(v20 - 8);
  __chkstk_darwin(v20);
  v19 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v18 = &v13 - v5;
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v7 = 0;
    v16 = a1 & 0xFFFFFFFFFFFFFF8;
    v17 = a1 & 0xC000000000000001;
    v14 = (v2 + 8);
    v15 = (v2 + 16);
    while (v17)
    {
      v8 = a1;
      v2 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      a1 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_12;
      }

LABEL_7:
      v9 = v19;
      v10 = v20;
      (*v15)(v19, v2 + OBJC_IVAR____TtC8Freeform28CRLAssetReferenceDatabaseRow_assetUUID, v20);
      v11 = v18;
      sub_100E6AF38(v18, v9);
      (*v14)(v11, v10);

      ++v7;
      v12 = a1 == i;
      a1 = v8;
      if (v12)
      {
        return;
      }
    }

    if (v7 >= *(v16 + 16))
    {
      goto LABEL_13;
    }

    v8 = a1;
    v2 = *(a1 + 8 * v7 + 32);

    a1 = v7 + 1;
    if (!__OFADD__(v7, 1))
    {
      goto LABEL_7;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_100DCB764(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {

    v3._countAndFlagsBits = 46;
    v3._object = 0xE100000000000000;
    String.append(_:)(v3);
    v5 = a1;
    v4 = a2;
  }

  else
  {
    v5 = 0;
    v4 = 0xE000000000000000;
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  do
  {
    v8 = *(&off_101872DD8 + v6++ + 32);
    v9 = 0x646567727570;
    if (v8 != 2)
    {
      v9 = 0xD000000000000028;
    }

    v10 = 0xE600000000000000;
    if (v8 != 2)
    {
      v10 = 0x80000001015A87B0;
    }

    v11 = 0x64695F656E6F7ALL;
    if (v8)
    {
      v11 = 0x646574656C6564;
    }

    if (v8 <= 1)
    {
      v12 = v11;
    }

    else
    {
      v12 = v9;
    }

    if (v8 <= 1)
    {
      v13 = 0xE700000000000000;
    }

    else
    {
      v13 = v10;
    }

    v14._countAndFlagsBits = v12;
    v14._object = v13;
    String.append(_:)(v14);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_100024CBC(0, *(v7 + 2) + 1, 1, v7);
    }

    v16 = *(v7 + 2);
    v15 = *(v7 + 3);
    if (v16 >= v15 >> 1)
    {
      v7 = sub_100024CBC((v15 > 1), v16 + 1, 1, v7);
    }

    *(v7 + 2) = v16 + 1;
    v17 = &v7[16 * v16];
    *(v17 + 4) = v5;
    *(v17 + 5) = v4;
  }

  while (v6 != 4);

  sub_1005B981C(&unk_1019F4D80, &unk_10146CF20);
  sub_10001A2F8(&qword_1019F61E0, &unk_1019F4D80, &unk_10146CF20, &protocol conformance descriptor for [A]);
  v18 = BidirectionalCollection<>.joined(separator:)();

  return v18;
}

uint64_t sub_100DCB998(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {

    v3._countAndFlagsBits = 46;
    v3._object = 0xE100000000000000;
    String.append(_:)(v3);
    v4 = a2;
    v26 = a1;
  }

  else
  {
    v26 = 0;
    v4 = 0xE000000000000000;
  }

  v5 = 0;
  v6 = _swiftEmptyArrayStorage;
  do
  {
    v7 = *(&off_101872E00 + v5++ + 32);
    v8 = 0x80000001015A3810;
    v9 = 0xD00000000000002DLL;
    v10 = 0x656C746974;
    if (v7 == 7)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v10 = 0xD000000000000012;
    }

    if (v7 != 6)
    {
      v9 = v10;
    }

    v11 = 0x80000001015A3760;
    if (v7 != 6)
    {
      v11 = v8;
    }

    v12 = 0xD000000000000014;
    if (v7 != 4)
    {
      v12 = 0xD000000000000026;
    }

    v13 = 0x80000001015A33F0;
    if (v7 == 4)
    {
      v13 = 0x80000001015A3590;
    }

    if (v7 <= 5)
    {
      v9 = v12;
      v11 = v13;
    }

    v14 = 0x5F65726168736B63;
    if (v7 != 2)
    {
      v14 = 0xD000000000000011;
    }

    v15 = 0xEC00000061746164;
    if (v7 != 2)
    {
      v15 = 0x80000001015A3BE0;
    }

    v16 = 0x696669746E656469;
    if (v7)
    {
      v16 = 1635017060;
    }

    v17 = 0xEA00000000007265;
    if (v7)
    {
      v17 = 0xE400000000000000;
    }

    if (v7 <= 1)
    {
      v14 = v16;
      v15 = v17;
    }

    if (v7 <= 3)
    {
      v18 = v14;
    }

    else
    {
      v18 = v9;
    }

    if (v7 <= 3)
    {
      v19 = v15;
    }

    else
    {
      v19 = v11;
    }

    v20._countAndFlagsBits = v18;
    v20._object = v19;
    String.append(_:)(v20);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_100024CBC(0, *(v6 + 2) + 1, 1, v6);
    }

    v22 = *(v6 + 2);
    v21 = *(v6 + 3);
    if (v22 >= v21 >> 1)
    {
      v6 = sub_100024CBC((v21 > 1), v22 + 1, 1, v6);
    }

    *(v6 + 2) = v22 + 1;
    v23 = &v6[16 * v22];
    *(v23 + 4) = v26;
    *(v23 + 5) = v4;
  }

  while (v5 != 9);

  sub_1005B981C(&unk_1019F4D80, &unk_10146CF20);
  sub_10001A2F8(&qword_1019F61E0, &unk_1019F4D80, &unk_10146CF20, &protocol conformance descriptor for [A]);
  v24 = BidirectionalCollection<>.joined(separator:)();

  return v24;
}

unint64_t sub_100DCBC88(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return String.subscript.getter();
  }

  __break(1u);
  return result;
}

void sub_100DCBCD4(uint64_t a1@<X8>)
{
  v50 = sub_1005B981C(&qword_101A21DF0, &unk_1014B6760);
  v47 = *(v50 - 8);
  __chkstk_darwin(v50);
  v43 = (&v42 - v3);
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&unk_101A22DD0, &unk_1014B8280);
  __chkstk_darwin(v8 - 8);
  v10 = &v42 - v9;
  v11 = sub_1005B981C(&qword_101A22DF0, &qword_1014B6750);
  v48 = *(v11 - 8);
  v49 = v11;
  v12 = __chkstk_darwin(v11);
  v14 = &v42 - v13;
  v15 = *v1;
  v16 = v1[1];
  v18 = v1[2];
  v17 = v1[3];
  v19 = v1[4];
  v42 = v14;
  v51 = v18;
  if (!v19)
  {
    v21 = (v18 + 64) >> 6;
    if (v21 <= v17 + 1)
    {
      v22 = v17 + 1;
    }

    else
    {
      v22 = (v18 + 64) >> 6;
    }

    v23 = v22 - 1;
    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v21)
      {
        v34 = v48;
        v29 = v49;
        v33 = v15;
        (*(v48 + 56))(v10, 1, 1, v49, v12);
        v35 = 0;
        goto LABEL_12;
      }

      v19 = *(v16 + 8 * v20);
      ++v17;
      if (v19)
      {
        v44 = v10;
        v46 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

  v44 = v10;
  v46 = a1;
  v20 = v17;
LABEL_11:
  v45 = (v19 - 1) & v19;
  v24 = __clz(__rbit64(v19)) | (v20 << 6);
  v25 = (*(v15 + 48) + 16 * v24);
  v26 = *v25;
  v27 = v25[1];
  v28 = v15;
  (*(v5 + 16))(v7, *(v15 + 56) + *(v5 + 72) * v24, v4, v12);
  v29 = v49;
  v30 = *(v49 + 48);
  v31 = v44;
  *v44 = v26;
  *(v31 + 1) = v27;
  v32 = v4;
  v33 = v28;
  v10 = v31;
  (*(v5 + 32))(&v31[v30], v7, v32);
  v34 = v48;
  (*(v48 + 56))(v10, 0, 1, v29);

  v35 = v45;
  a1 = v46;
  v23 = v20;
LABEL_12:
  *v1 = v33;
  v1[1] = v16;
  v1[2] = v51;
  v1[3] = v23;
  v1[4] = v35;
  if ((*(v34 + 48))(v10, 1, v29) == 1)
  {
    sub_10000CAAC(v10, &unk_101A22DD0, &unk_1014B8280);
    (*(v47 + 56))(a1, 1, 1, v50);
    return;
  }

  v36 = v10;
  v37 = v42;
  sub_10003DFF8(v36, v42, &qword_101A22DF0, &qword_1014B6750);
  v38 = v50;
  v39 = *(v50 + 48);
  v40 = v1[5];
  v41 = v43;
  *v43 = v40;
  sub_10003DFF8(v37, v41 + v39, &qword_101A22DF0, &qword_1014B6750);
  if (__OFADD__(v40, 1))
  {
    goto LABEL_19;
  }

  v1[5] = v40 + 1;
  sub_10003DFF8(v41, a1, &qword_101A21DF0, &unk_1014B6760);
  (*(v47 + 56))(a1, 0, 1, v38);
}

id sub_100DCC140()
{
  v1 = *&v0[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManagerLock];
  os_unfair_lock_lock(*(v1 + 16));
  v2 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager;
  v3 = *&v0[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
  if (v3)
  {
    v4 = *&v0[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
  }

  else
  {
    v5 = type metadata accessor for CRLAssetManager();
    v6 = objc_allocWithZone(v5);
    swift_unknownObjectWeakInit();
    v7 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_lock;
    type metadata accessor for CRLUnfairLock();
    v8 = swift_allocObject();
    v9 = v0;
    v10 = swift_slowAlloc();
    *v10 = 0;
    *(v8 + 16) = v10;
    atomic_thread_fence(memory_order_acq_rel);
    *&v6[v7] = v8;
    *&v6[OBJC_IVAR____TtC8Freeform15CRLAssetManager_assets] = _swiftEmptyDictionarySingleton;
    v11 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_owners;
    *&v6[v11] = [objc_opt_self() mapTableWithKeyOptions:517 valueOptions:0];
    *&v6[OBJC_IVAR____TtC8Freeform15CRLAssetManager_garbageCollectionWorkItem] = 0;
    swift_unknownObjectWeakAssign();
    v17.receiver = v6;
    v17.super_class = v5;
    v12 = objc_msgSendSuper2(&v17, "init");

    v13 = *&v0[v2];
    *&v0[v2] = v12;
    v4 = v12;

    v3 = 0;
  }

  v14 = *(v1 + 16);
  v15 = v3;
  os_unfair_lock_unlock(v14);
  return v4;
}

void sub_100DCC2C8(uint64_t a1)
{
  v1 = a1;
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v37 = v6;
  v34 = a1 + 64;

  while (v5)
  {
LABEL_10:
    v10 = *(*(v1 + 56) + ((v7 << 11) | (32 * __clz(__rbit64(v5)))) + 8);
    v11 = v10 >> 62;
    v12 = v10;
    if (v10 >> 62)
    {
      v13 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = v8 >> 62;
    if (v8 >> 62)
    {
      v15 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v15 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v39 = v13;
    v16 = __OFADD__(v15, v13);
    v17 = v15 + v13;
    if (v16)
    {
      goto LABEL_40;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v14)
      {
LABEL_21:
        _CocoaArrayWrapper.endIndex.getter();
      }

LABEL_22:
      v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v18 = v38 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_23;
    }

    if (v14)
    {
      goto LABEL_21;
    }

    v18 = v8 & 0xFFFFFFFFFFFFFF8;
    if (v17 > *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_22;
    }

    v38 = v8;
LABEL_23:
    v19 = *(v18 + 16);
    v20 = *(v18 + 24);
    v21 = v12;
    if (v11)
    {
      v23 = v18;
      v24 = _CocoaArrayWrapper.endIndex.getter();
      v18 = v23;
      v21 = v12;
      v22 = v24;
    }

    else
    {
      v22 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 &= v5 - 1;
    if (v22)
    {
      if (((v20 >> 1) - v19) < v39)
      {
        goto LABEL_42;
      }

      v25 = v18 + 8 * v19 + 32;
      v36 = v18;
      v41 = v21;
      if (v11)
      {
        if (v22 < 1)
        {
          goto LABEL_44;
        }

        sub_10001A2F8(&qword_101A22028, &qword_101A22020, &unk_1014B6B30, &protocol conformance descriptor for [A]);
        v26 = 0;
        do
        {
          sub_1005B981C(&qword_101A22020, &unk_1014B6B30);
          v27 = v22;
          v28 = v25;
          v29 = sub_100777974(v40, v26, v41);
          v31 = *v30;
          (v29)(v40, 0);
          v25 = v28;
          v22 = v27;
          *(v25 + 8 * v26++) = v31;
        }

        while (v27 != v26);
      }

      else
      {
        sub_100006370(0, &unk_101A22DC0, CKRecord_ptr);
        swift_arrayInitWithCopy();
      }

      v8 = v38;
      v2 = v34;
      v1 = v35;
      v6 = v37;
      if (v39 >= 1)
      {
        v32 = *(v36 + 16);
        v16 = __OFADD__(v32, v39);
        v33 = v32 + v39;
        if (v16)
        {
          goto LABEL_43;
        }

        *(v36 + 16) = v33;
      }
    }

    else
    {

      v8 = v38;
      v6 = v37;
      if (v39 > 0)
      {
        goto LABEL_41;
      }
    }
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return;
    }

    v5 = *(v2 + 8 * v9);
    ++v7;
    if (v5)
    {
      v7 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
}

uint64_t sub_100DCC63C(uint64_t a1)
{
  v31 = *(a1 + 16);
  if (!v31)
  {
    return _swiftEmptyArrayStorage;
  }

  v1 = 0;
  v2 = _swiftEmptyArrayStorage;
  v30 = a1 + 32;
  v3 = &unk_101A21F70;
  while (1)
  {
    sub_1005B981C(&qword_101A21F58, &qword_1014B6928);
    v35 = v1;
    v32 = *(v30 + 16 * v1);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    ObjectType = swift_getObjectType();
    v34[0] = v32;
    v7 = *(*(&v32 + 1) + 8);
    v8 = *(v7 + 8);
    swift_unknownObjectRetain();
    *(inited + 32) = v8(ObjectType, v7);
    *(inited + 40) = v32;
    swift_unknownObjectRetain();
    v9 = sub_100BD9674(inited);
    swift_setDeallocating();
    sub_10000CAAC(inited + 32, &qword_101A21F60, &qword_1014B6930);
    v10 = sub_100DD074C(v9, sub_100E5EF08, 0, sub_100EA6318, 0, sub_100EA631C, 0, &qword_1019F6DD8, &unk_10146FBC0, sub_100A912BC, sub_100AA8E90, sub_10113E260, sub_10067CF24, &qword_101A21F68, &qword_1014B6938);
    swift_unknownObjectRelease();

    v11 = v10 >> 62;
    if (v10 >> 62)
    {
      v12 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = v2 >> 62;
    if (v2 >> 62)
    {
      v29 = _CocoaArrayWrapper.endIndex.getter();
      v15 = v29 + v12;
      if (__OFADD__(v29, v12))
      {
LABEL_32:
        __break(1u);
        return _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v14 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v15 = v14 + v12;
      if (__OFADD__(v14, v12))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v13)
      {
        v16 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v15 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_15;
    }

    if (v13)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v2 = result;
    v16 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v17 = *(v16 + 16);
    v18 = *(v16 + 24);
    if (v11)
    {
      break;
    }

    v19 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v19)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v18 >> 1) - v17) < v12)
    {
      goto LABEL_36;
    }

    v33 = v2;
    v20 = v16 + 8 * v17 + 32;
    if (v11)
    {
      if (v19 < 1)
      {
        goto LABEL_38;
      }

      sub_10001A2F8(&qword_101A21F78, v3, &unk_1014B6940, &protocol conformance descriptor for [A]);
      v21 = v3;
      for (i = 0; i != v19; ++i)
      {
        sub_1005B981C(v21, &unk_1014B6940);
        v23 = sub_100777A74(v34, i, v10);
        v25 = *v24;

        (v23)(v34, 0);
        *(v20 + 8 * i) = v25;
        v21 = v3;
      }
    }

    else
    {
      sub_1005B981C(&qword_101A21F68, &qword_1014B6938);
      swift_arrayInitWithCopy();
      v21 = v3;
    }

    v3 = v21;

    v2 = v33;
    if (v12 >= 1)
    {
      v26 = *(v16 + 16);
      v27 = __OFADD__(v26, v12);
      v28 = v26 + v12;
      if (v27)
      {
        goto LABEL_37;
      }

      *(v16 + 16) = v28;
    }

LABEL_4:
    v1 = v35 + 1;
    if (v35 + 1 == v31)
    {
      return v2;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v19 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v12 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

sqlite3_stmt *sub_100DCCAB4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 != 2)
    {
      memset(v18, 0, 14);
      a1 = swift_beginAccess();
      LOBYTE(v8) = -1;
      if (a4 <= 0x7FFFFFFF)
      {
        LOBYTE(v8) = 0;
        if (a4 >= 0xFFFFFFFF80000000)
        {
          a1 = *(a3 + 24);
          if (qword_1019F17C8 != -1)
          {
            v16 = *(a3 + 24);
            swift_once();
            a1 = v16;
          }

          v9 = qword_101AD69D0;
          v11 = a4;
          v10 = 0;
          goto LABEL_16;
        }

        goto LABEL_22;
      }

      goto LABEL_20;
    }

    v8 = *(a1 + 16);
    v12 = *(a1 + 24);
  }

  else
  {
    if (!v6)
    {
      v18[0] = a1;
      LOWORD(v18[1]) = a2;
      BYTE2(v18[1]) = BYTE2(a2);
      BYTE3(v18[1]) = BYTE3(a2);
      BYTE4(v18[1]) = BYTE4(a2);
      BYTE5(v18[1]) = BYTE5(a2);
      a1 = swift_beginAccess();
      LOBYTE(v8) = -1;
      if (a4 <= 0x7FFFFFFF)
      {
        LOBYTE(v8) = 0;
        if (a4 >= 0xFFFFFFFF80000000)
        {
          v8 = HIWORD(a2);
          a1 = *(a3 + 24);
          if (qword_1019F17C8 == -1)
          {
LABEL_6:
            v9 = qword_101AD69D0;
            v10 = v8;
            v11 = a4;
LABEL_16:
            v13 = sqlite3_bind_blob(a1, v11, v18, v10, v9);

            return v13;
          }

LABEL_23:
          v17 = v8;
          v15 = a1;
          swift_once();
          LOBYTE(v8) = v17;
          a1 = v15;
          goto LABEL_6;
        }

        goto LABEL_21;
      }

      __break(1u);
      goto LABEL_19;
    }

    v8 = a1;
    v12 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }
  }

  v13 = sub_100E928A0(v8, v12, a2, a3, a4);

  return v13;
}

uint64_t sub_100DCCD2C(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return _swift_task_switch(sub_100DCCD4C, 0, 0);
}

uint64_t sub_100DCCD4C()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = sub_1005B981C(&qword_101A21CF0, &qword_1014B6600);
  *v2 = v0;
  v2[1] = sub_100DCCE58;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000019, 0x80000001015A3F40, sub_100EA2328, v1, v3);
}

uint64_t sub_100DCCE58()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1005DA3B0;
  }

  else
  {

    v2 = sub_100872780;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100DCCF74(uint64_t a1)
{
  if (swift_weakLoadStrong())
  {
    v27 = v1;
    v26 = objc_opt_self();
    v3 = [v26 _atomicIncrementAssertCount];
    v28 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v28, "expected nil value, but non-nil found", 37, 2u);
    StaticString.description.getter("init(root:)", 11, 2);
    v4 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Sync/CRLTree.swift", 72, 2);
    v5 = String._bridgeToObjectiveC()();

    v6 = [v5 lastPathComponent];

    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v10 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v3;
    v12 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v12;
    v13 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
    *(inited + 104) = v13;
    *(inited + 72) = v4;
    *(inited + 136) = &type metadata for String;
    v14 = sub_1000053B0();
    *(inited + 112) = v7;
    *(inited + 120) = v9;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v14;
    *(inited + 152) = 16;
    v15 = v28;
    *(inited + 216) = v12;
    *(inited + 224) = v13;
    *(inited + 192) = v15;
    v16 = v4;
    v17 = v15;
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v18, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v19, "expected nil value, but non-nil found", 37, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v20 = swift_allocObject();
    v20[2] = 8;
    v20[3] = 0;
    v20[4] = 0;
    v20[5] = 0;
    v21 = __VaListBuilder.va_list()();
    StaticString.description.getter("init(root:)", 11, 2);
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Sync/CRLTree.swift", 72, 2);
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter("expected nil value, but non-nil found", 37, 2);
    v24 = String._bridgeToObjectiveC()();

    [v26 handleFailureInFunction:v22 file:v23 lineNumber:16 isFatal:0 format:v24 args:v21];

    v1 = v27;
  }

  *(v1 + 16) = a1;
  return v1;
}

uint64_t sub_100DCD35C(uint64_t a1)
{
  if (swift_weakLoadStrong())
  {
    v27 = v1;
    v26 = objc_opt_self();
    v3 = [v26 _atomicIncrementAssertCount];
    v28 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v28, "expected nil value, but non-nil found", 37, 2u);
    StaticString.description.getter("init(root:)", 11, 2);
    v4 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Sync/CRLTree.swift", 72, 2);
    v5 = String._bridgeToObjectiveC()();

    v6 = [v5 lastPathComponent];

    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v10 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v3;
    v12 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v12;
    v13 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
    *(inited + 104) = v13;
    *(inited + 72) = v4;
    *(inited + 136) = &type metadata for String;
    v14 = sub_1000053B0();
    *(inited + 112) = v7;
    *(inited + 120) = v9;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v14;
    *(inited + 152) = 16;
    v15 = v28;
    *(inited + 216) = v12;
    *(inited + 224) = v13;
    *(inited + 192) = v15;
    v16 = v4;
    v17 = v15;
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v18, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v19, "expected nil value, but non-nil found", 37, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v20 = swift_allocObject();
    v20[2] = 8;
    v20[3] = 0;
    v20[4] = 0;
    v20[5] = 0;
    v21 = __VaListBuilder.va_list()();
    StaticString.description.getter("init(root:)", 11, 2);
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Sync/CRLTree.swift", 72, 2);
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter("expected nil value, but non-nil found", 37, 2);
    v24 = String._bridgeToObjectiveC()();

    [v26 handleFailureInFunction:v22 file:v23 lineNumber:16 isFatal:0 format:v24 args:v21];

    v1 = v27;
  }

  *(v1 + 16) = a1;
  return v1;
}

uint64_t sub_100DCD744(uint64_t a1)
{
  if (swift_weakLoadStrong())
  {
    v27 = v1;
    v26 = objc_opt_self();
    v3 = [v26 _atomicIncrementAssertCount];
    v28 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v28, "expected nil value, but non-nil found", 37, 2u);
    StaticString.description.getter("init(root:)", 11, 2);
    v4 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Sync/CRLTree.swift", 72, 2);
    v5 = String._bridgeToObjectiveC()();

    v6 = [v5 lastPathComponent];

    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v10 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v3;
    v12 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v12;
    v13 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
    *(inited + 104) = v13;
    *(inited + 72) = v4;
    *(inited + 136) = &type metadata for String;
    v14 = sub_1000053B0();
    *(inited + 112) = v7;
    *(inited + 120) = v9;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v14;
    *(inited + 152) = 16;
    v15 = v28;
    *(inited + 216) = v12;
    *(inited + 224) = v13;
    *(inited + 192) = v15;
    v16 = v4;
    v17 = v15;
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v18, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v19 = static os_log_type_t.error.getter();
    sub_100005404(v10, &_mh_execute_header, v19, "expected nil value, but non-nil found", 37, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v20 = swift_allocObject();
    v20[2] = 8;
    v20[3] = 0;
    v20[4] = 0;
    v20[5] = 0;
    v21 = __VaListBuilder.va_list()();
    StaticString.description.getter("init(root:)", 11, 2);
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Sync/CRLTree.swift", 72, 2);
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter("expected nil value, but non-nil found", 37, 2);
    v24 = String._bridgeToObjectiveC()();

    [v26 handleFailureInFunction:v22 file:v23 lineNumber:16 isFatal:0 format:v24 args:v21];

    v1 = v27;
  }

  *(v1 + 16) = a1;
  return v1;
}

void *sub_100DCDB40(uint64_t a1, void (*a2)(id *__return_ptr, uint64_t *), uint64_t a3, void (*a4)(id *__return_ptr, void *, __n128), uint64_t a5, void (*a6)(uint64_t **__return_ptr, void *), uint64_t a7)
{
  v7 = *(a1 + 16);
  v84 = _swiftEmptyArrayStorage;
  if (v7)
  {
    v9 = 0;
    v10 = a1 + 40;
    v11 = _swiftEmptyDictionarySingleton;
    v79 = a1 + 40;
    while (2)
    {
      v12 = (v10 + 16 * v9);
      v13 = v9;
      while (1)
      {
        if (v13 >= v7)
        {
          goto LABEL_53;
        }

        v9 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_54;
        }

        v14 = *v12;
        v89[0] = *(v12 - 1);
        v89[1] = v14;
        swift_unknownObjectRetain();
        a2(&v86, v89);
        v15 = v86;
        if (v86)
        {
          break;
        }

        swift_unknownObjectRelease();
        ++v13;
        v12 += 2;
        if (v9 == v7)
        {
          goto LABEL_28;
        }
      }

      v16 = v87;
      v88[0] = v86;
      v88[1] = v87;
      swift_unknownObjectRetain();
      v78 = a5;
      (a4)(&v86, v88);
      v17 = v86;
      v18 = v87;
      sub_1005B981C(&qword_1019F6DD8, &unk_10146FBC0);
      v19 = swift_allocObject();
      v19[6] = _swiftEmptyArrayStorage;
      swift_weakInit();
      v19[2] = v17;
      v19[3] = v18;
      v19[4] = v15;
      v19[5] = v16;
      v80 = v19;
      if (v11[2])
      {
        sub_10000BE7C(v17, v18);
        if (v20)
        {
          v21 = objc_opt_self();

          v77 = v21;
          v22 = [v21 _atomicIncrementAssertCount];
          v86 = [objc_allocWithZone(NSString) init];
          sub_100604538(_swiftEmptyArrayStorage, &v86, "expected nil value, but non-nil found", 37, 2u);
          StaticString.description.getter("constructDisjointTrees(from:transform:nodeIDProvider:nodeParentIDProvider:)", 75, 2);
          v75 = String._bridgeToObjectiveC()();

          StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Sync/CRLTree.swift", 72, 2);
          v23 = String._bridgeToObjectiveC()();

          v24 = [v23 lastPathComponent];

          v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v72 = v26;
          v73 = v25;

          if (qword_1019F20A0 != -1)
          {
            swift_once();
          }

          v74 = static OS_os_log.crlAssert;
          sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10146CA70;
          *(inited + 56) = &type metadata for Int32;
          *(inited + 64) = &protocol witness table for Int32;
          *(inited + 32) = v22;
          v28 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
          *(inited + 96) = v28;
          v29 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
          *(inited + 104) = v29;
          *(inited + 72) = v75;
          *(inited + 136) = &type metadata for String;
          v30 = sub_1000053B0();
          *(inited + 112) = v73;
          *(inited + 120) = v72;
          *(inited + 176) = &type metadata for UInt;
          *(inited + 144) = v30;
          *(inited + 152) = 54;
          v31 = v86;
          *(inited + 216) = v28;
          *(inited + 224) = v29;
          *(inited + 184) = &protocol witness table for UInt;
          *(inited + 192) = v31;
          v32 = v75;
          v33 = v31;
          v34 = static os_log_type_t.error.getter();
          sub_100005404(v74, &_mh_execute_header, v34, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
          swift_arrayDestroy();
          v35 = static os_log_type_t.error.getter();
          sub_100005404(v74, &_mh_execute_header, v35, "expected nil value, but non-nil found", 37, 2, _swiftEmptyArrayStorage);

          type metadata accessor for __VaListBuilder();
          v36 = swift_allocObject();
          v36[2] = 8;
          v36[3] = 0;
          v36[4] = 0;
          v36[5] = 0;
          v76 = __VaListBuilder.va_list()();
          StaticString.description.getter("constructDisjointTrees(from:transform:nodeIDProvider:nodeParentIDProvider:)", 75, 2);
          v37 = String._bridgeToObjectiveC()();

          StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Sync/CRLTree.swift", 72, 2);
          v38 = String._bridgeToObjectiveC()();

          StaticString.description.getter("expected nil value, but non-nil found", 37, 2);
          v39 = String._bridgeToObjectiveC()();

          [v77 handleFailureInFunction:v37 file:v38 lineNumber:54 isFatal:0 format:v39 args:v76];

          v19 = v80;
        }
      }

      v41 = v19[2];
      v40 = v19[3];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v86 = v11;
      v44 = sub_10000BE7C(v41, v40);
      v45 = v11[2];
      v46 = (v43 & 1) == 0;
      v47 = v45 + v46;
      if (__OFADD__(v45, v46))
      {
        goto LABEL_55;
      }

      v48 = v43;
      if (v11[3] < v47)
      {
        sub_100A912BC(v47, isUniquelyReferenced_nonNull_native);
        v49 = sub_10000BE7C(v41, v40);
        if ((v48 & 1) != (v50 & 1))
        {
          goto LABEL_57;
        }

        v44 = v49;
        v11 = v86;
        if ((v48 & 1) == 0)
        {
          goto LABEL_23;
        }

LABEL_21:
        *(v11[7] + 8 * v44) = v80;

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        goto LABEL_25;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v11 = v86;
        if (v43)
        {
          goto LABEL_21;
        }
      }

      else
      {
        sub_100AA8E90();
        v11 = v86;
        if (v48)
        {
          goto LABEL_21;
        }
      }

LABEL_23:
      v11[(v44 >> 6) + 8] |= 1 << v44;
      v51 = (v11[6] + 16 * v44);
      *v51 = v41;
      v51[1] = v40;
      *(v11[7] + 8 * v44) = v80;

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v52 = v11[2];
      v53 = __OFADD__(v52, 1);
      v54 = v52 + 1;
      if (v53)
      {
        goto LABEL_56;
      }

      v11[2] = v54;
LABEL_25:

      a5 = v78;
      v10 = v79;
      if (v9 != v7)
      {
        continue;
      }

      goto LABEL_28;
    }
  }

  v11 = _swiftEmptyDictionarySingleton;
LABEL_28:
  v89[0] = _swiftEmptySetSingleton;
  v55 = v11 + 8;
  v56 = 1 << *(v11 + 32);
  v57 = -1;
  if (v56 < 64)
  {
    v57 = ~(-1 << v56);
  }

  v58 = v57 & v11[8];
  v59 = (v56 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v60 = 0;
  if (v58)
  {
    while (1)
    {
      v61 = v60;
LABEL_36:
      v62 = __clz(__rbit64(v58));
      v58 &= v58 - 1;
      v63 = *(v11[7] + 8 * (v62 | (v61 << 6)));

      sub_100DD216C(v11, v63, v89, a6, a7, sub_10113E260, sub_10067CF24);

      if (!v58)
      {
        goto LABEL_32;
      }
    }
  }

  while (1)
  {
LABEL_32:
    v61 = v60 + 1;
    if (__OFADD__(v60, 1))
    {
      __break(1u);
      goto LABEL_52;
    }

    if (v61 >= v59)
    {
      break;
    }

    v58 = v55[v61];
    ++v60;
    if (v58)
    {
      v60 = v61;
      goto LABEL_36;
    }
  }

  v88[0] = _swiftEmptyArrayStorage;
  v64 = 1 << *(v11 + 32);
  v65 = -1;
  if (v64 < 64)
  {
    v65 = ~(-1 << v64);
  }

  v66 = v65 & v11[8];
  v67 = (v64 + 63) >> 6;

  v68 = 0;
  while (1)
  {
    v69 = v68;
    if (!v66)
    {
      break;
    }

LABEL_45:
    v66 &= v66 - 1;
    if (swift_weakLoadStrong())
    {
    }

    else
    {
      sub_1005B981C(&qword_101A21F68, &qword_1014B6938);
      swift_allocObject();

      sub_100DCCF74(v70);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v88[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v88[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v84 = v88[0];
    }
  }

  while (1)
  {
    v68 = v69 + 1;
    if (__OFADD__(v69, 1))
    {
      break;
    }

    if (v68 >= v67)
    {

      swift_bridgeObjectRelease_n();
      return v84;
    }

    v66 = v55[v68];
    ++v69;
    if (v66)
    {
      goto LABEL_45;
    }
  }

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
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_100DCE4F0(uint64_t a1, void (*a2)(void **__return_ptr, void **, double), uint64_t a3, void (*a4)(void **__return_ptr, uint64_t *), uint64_t a5, void (*a6)(void **__return_ptr, uint64_t *), uint64_t a7)
{
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  v115 = _swiftEmptyDictionarySingleton;
  while (1)
  {
    v13 = v12;
    if (!v10)
    {
      break;
    }

LABEL_8:
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v15 = v14 | (v12 << 6);
    v16 = *(*(a1 + 48) + 8 * v15);
    v17 = (*(a1 + 56) + 40 * v15);
    v18 = *v17;
    v19 = v17[1];
    v20 = v17[2];
    v21 = v17[3];
    v22 = v17[4];
    v126 = v16;
    v127 = v18;
    v128 = v19;
    v129 = v20;
    v130 = v21;
    v131 = v22;
    v23 = v16;
    v25 = sub_1009F5E18(v18, v19, v20, v21, v22, v24);
    a2(&v118, &v126, v25);
    v26 = v119;
    if ((~v119 & 0xF000000000000007) != 0)
    {
      v122 = v118;
      v123 = v119;
      v124 = v120;
      v125 = v121;
      a4(&v118, &v122);
      v34 = v123;
      v35 = v124;
      v109 = v122;
      v111 = v125;
      v36 = v118;
      v37 = v119;
      sub_1005B981C(&qword_1019F6E90, &qword_10146FC30);
      v38 = swift_allocObject();
      *(v38 + 72) = _swiftEmptyArrayStorage;
      swift_weakInit();
      v107 = v36;
      *(v38 + 16) = v36;
      *(v38 + 24) = v37;
      *(v38 + 32) = v109;
      *(v38 + 40) = v34;
      *(v38 + 48) = v35;
      v112 = v38;
      *(v38 + 64) = v111;
      v39 = v115;
      v40 = v115[2];
      sub_1009F5E18(v109, v34, v35, *(&v35 + 1), v111, v41);
      if (v40)
      {
        sub_10000BE7C(v107, v37);
        if (v42)
        {
          v43 = objc_opt_self();

          v110 = v43;
          v44 = [v43 _atomicIncrementAssertCount];
          v118 = [objc_allocWithZone(NSString) init];
          sub_100604538(_swiftEmptyArrayStorage, &v118, "expected nil value, but non-nil found", 37, 2u);
          StaticString.description.getter("constructDisjointTrees(from:transform:nodeIDProvider:nodeParentIDProvider:)", 75, 2);
          v108 = String._bridgeToObjectiveC()();

          StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Sync/CRLTree.swift", 72, 2);
          v45 = String._bridgeToObjectiveC()();

          v46 = [v45 lastPathComponent];

          v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v104 = v48;
          v105 = v47;

          if (qword_1019F20A0 != -1)
          {
            swift_once();
          }

          v106 = static OS_os_log.crlAssert;
          sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10146CA70;
          *(inited + 56) = &type metadata for Int32;
          *(inited + 64) = &protocol witness table for Int32;
          *(inited + 32) = v44;
          v50 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
          *(inited + 96) = v50;
          v51 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
          *(inited + 104) = v51;
          *(inited + 72) = v108;
          *(inited + 136) = &type metadata for String;
          v52 = sub_1000053B0();
          *(inited + 112) = v105;
          *(inited + 120) = v104;
          *(inited + 176) = &type metadata for UInt;
          *(inited + 144) = v52;
          *(inited + 152) = 54;
          v53 = v118;
          *(inited + 216) = v50;
          *(inited + 224) = v51;
          *(inited + 184) = &protocol witness table for UInt;
          *(inited + 192) = v53;
          v54 = v108;
          v55 = v53;
          v56 = static os_log_type_t.error.getter();
          sub_100005404(v106, &_mh_execute_header, v56, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
          swift_arrayDestroy();
          v57 = static os_log_type_t.error.getter();
          sub_100005404(v106, &_mh_execute_header, v57, "expected nil value, but non-nil found", 37, 2, _swiftEmptyArrayStorage);

          type metadata accessor for __VaListBuilder();
          v58 = swift_allocObject();
          v58[2] = 8;
          v58[3] = 0;
          v58[4] = 0;
          v58[5] = 0;
          v59 = __VaListBuilder.va_list()();
          StaticString.description.getter("constructDisjointTrees(from:transform:nodeIDProvider:nodeParentIDProvider:)", 75, 2);
          v60 = String._bridgeToObjectiveC()();

          StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Sync/CRLTree.swift", 72, 2);
          v61 = String._bridgeToObjectiveC()();

          StaticString.description.getter("expected nil value, but non-nil found", 37, 2);
          v62 = String._bridgeToObjectiveC()();

          [v110 handleFailureInFunction:v60 file:v61 lineNumber:54 isFatal:0 format:v62 args:v59];

          v39 = v115;
        }
      }

      v63 = *(v112 + 16);
      v64 = *(v112 + 24);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v118 = v39;
      v67 = sub_10000BE7C(v63, v64);
      v69 = v39[2];
      v70 = (v66 & 1) == 0;
      v71 = v69 + v70;
      if (__OFADD__(v69, v70))
      {
        goto LABEL_52;
      }

      v72 = v66;
      if (v39[3] >= v71)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100AAA744();
        }
      }

      else
      {
        sub_100A93F18(v71, isUniquelyReferenced_nonNull_native);
        v73 = sub_10000BE7C(v63, v64);
        if ((v72 & 1) != (v74 & 1))
        {
          goto LABEL_54;
        }

        v67 = v73;
      }

      v75 = v118;
      v115 = v118;
      if (v72)
      {
        *(v118[7] + 8 * v67) = v112;
      }

      else
      {
        v118[(v67 >> 6) + 8] |= 1 << v67;
        v76 = (v75[6] + 16 * v67);
        *v76 = v63;
        v76[1] = v64;
        *(v75[7] + 8 * v67) = v112;
        v77 = v75[2];
        v78 = __OFADD__(v77, 1);
        v79 = v77 + 1;
        if (v78)
        {
          goto LABEL_53;
        }

        v75[2] = v79;
      }

      sub_1009F5D34(v122, v123, v124, *(&v124 + 1), v125, v68);
      v80 = v127;
      v81 = v128;
      v82 = v129;
      v83 = v130;
      v84 = v131;

      sub_1009F5D34(v80, v81, v82, v83, v84, v85);
    }

    else
    {
      v27 = v127;
      v28 = v128;
      v29 = v129;
      v30 = v130;
      v31 = v131;

      v33 = sub_1009F5D34(v27, v28, v29, v30, v31, v32);
      sub_100EA5510(v118, v26, v120, *(&v120 + 1), v121, v33);
    }
  }

  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_50;
    }

    if (v12 >= v11)
    {
      break;
    }

    v10 = *(v7 + 8 * v12);
    ++v13;
    if (v10)
    {
      goto LABEL_8;
    }
  }

  v126 = _swiftEmptySetSingleton;
  v86 = v115 + 8;
  v87 = 1 << *(v115 + 32);
  v88 = -1;
  if (v87 < 64)
  {
    v88 = ~(-1 << v87);
  }

  v89 = v88 & v115[8];
  v90 = (v87 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v91 = 0;
  v92 = _swiftEmptyArrayStorage;
  while (v89)
  {
    v93 = v91;
LABEL_34:
    v94 = __clz(__rbit64(v89));
    v89 &= v89 - 1;
    v95 = *(v115[7] + 8 * (v94 | (v93 << 6)));

    sub_100DD2630(v115, v95, &v126, a6);
  }

  while (1)
  {
    v93 = v91 + 1;
    if (__OFADD__(v91, 1))
    {
      break;
    }

    if (v93 >= v90)
    {

      v122 = _swiftEmptyArrayStorage;
      v96 = 1 << *(v115 + 32);
      v97 = -1;
      if (v96 < 64)
      {
        v97 = ~(-1 << v96);
      }

      v98 = v97 & v115[8];
      v99 = (v96 + 63) >> 6;

      v100 = 0;
      while (1)
      {
        v101 = v100;
        if (!v98)
        {
          break;
        }

LABEL_43:
        v98 &= v98 - 1;
        if (swift_weakLoadStrong())
        {
        }

        else
        {
          sub_1005B981C(&qword_101A22018, &unk_1014B6B20);
          swift_allocObject();

          sub_100DCD35C(v102);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v122 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v122 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v92 = v122;
        }
      }

      while (1)
      {
        v100 = v101 + 1;
        if (__OFADD__(v101, 1))
        {
          goto LABEL_51;
        }

        if (v100 >= v99)
        {

          swift_bridgeObjectRelease_n();
          return v92;
        }

        v98 = v86[v100];
        ++v101;
        if (v98)
        {
          goto LABEL_43;
        }
      }
    }

    v89 = v86[v93];
    ++v91;
    if (v89)
    {
      v91 = v93;
      goto LABEL_34;
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
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_100DCEEA8(int64_t a1, void *a2, unsigned int (**a3)(id *, uint64_t, uint64_t), void (*a4)(unint64_t *, __n128), uint64_t a5, void (*a6)(uint64_t *), uint64_t a7)
{
  v124 = a6;
  v125 = a7;
  v111 = a4;
  v112 = a5;
  v129 = a3;
  v121 = a2;
  v8 = sub_1005B981C(&qword_101A21E30, &qword_1014B67D8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v113 = &v100 - v10;
  v11 = sub_1005B981C(&qword_101A21E38, &qword_1014B67E0);
  __chkstk_darwin(v11 - 8);
  v13 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = (&v100 - v15);
  v134 = type metadata accessor for UUID();
  v128 = *(v134 - 8);
  __chkstk_darwin(v134);
  v117 = (&v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v18);
  v123 = &v100 - v19;
  v116 = v9;
  if (a1 >> 62)
  {
    goto LABEL_68;
  }

  v130 = a1 & 0xFFFFFFFFFFFFFF8;
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v115 = v8;
    v131 = v16;
    v132 = v13;
    v122 = (v128 + 32);
    v126 = (v128 + 16);
    v127 = (v128 + 8);
    if (i)
    {
      break;
    }

    v8 = _swiftEmptyDictionarySingleton;
LABEL_33:
    v114 = _swiftEmptyArrayStorage;
    v137[0] = _swiftEmptySetSingleton;
    v71 = *(v8 + 64);
    v121 = (v8 + 64);
    v72 = 1 << *(v8 + 32);
    v73 = -1;
    if (v72 < 64)
    {
      v73 = ~(-1 << v72);
    }

    v74 = v73 & v71;
    a1 = (v72 + 63) >> 6;
    v129 = (v116 + 48);
    v130 = v116 + 56;
    v133 = v8;
    swift_bridgeObjectRetain_n();
    v75 = 0;
    v76 = v115;
    if (v74)
    {
      while (1)
      {
        v8 = v75;
LABEL_44:
        v79 = __clz(__rbit64(v74));
        v74 &= v74 - 1;
        v80 = v79 | (v8 << 6);
        v82 = v133;
        v81 = v134;
        v83 = v128;
        v84 = v123;
        (*(v128 + 16))(v123, *(v133 + 48) + *(v128 + 72) * v80, v134);
        v85 = *(*(v82 + 56) + 8 * v80);
        v86 = *(v76 + 48);
        v87 = *(v83 + 32);
        v13 = v132;
        v87(v132, v84, v81);
        *(v13 + v86) = v85;
        (*v130)(v13, 0, 1, v76);

        v78 = v8;
        v8 = v76;
LABEL_45:
        v16 = v131;
        sub_10003DFF8(v13, v131, &qword_101A21E38, &qword_1014B67E0);
        if ((*v129)(v16, 1, v8) == 1)
        {
          break;
        }

        sub_100DD2B50(v133, *(v16 + *(v8 + 48)), v137, v124, v125);

        (*v127)(v16, v134);
        v75 = v78;
        v76 = v8;
        if (!v74)
        {
          goto LABEL_37;
        }
      }

      v16 = v137[0];
      v88 = v133;

      v136 = _swiftEmptyArrayStorage;
      v89 = 1 << *(v88 + 32);
      v90 = -1;
      if (v89 < 64)
      {
        v90 = ~(-1 << v89);
      }

      v91 = v90 & *(v88 + 64);
      v92 = (v89 + 63) >> 6;

      v13 = 0;
      a1 = &qword_1014B67D8;
      v93 = v113;
LABEL_52:
      v94 = v13;
      v95 = v121;
      if (!v91)
      {
        goto LABEL_54;
      }

      do
      {
        v13 = v94;
LABEL_57:
        v96 = __clz(__rbit64(v91));
        v91 &= v91 - 1;
        v97 = v96 | (v13 << 6);
        (*(v128 + 16))(v93, *(v88 + 48) + *(v128 + 72) * v97, v134);
        v16 = *(*(v88 + 56) + 8 * v97);
        *(v93 + *(v8 + 48)) = v16;
        if (!swift_weakLoadStrong())
        {
          sub_1005B981C(&qword_101A21E40, &qword_1014B67E8);
          swift_allocObject();
          v98 = swift_retain_n();
          sub_100DCD744(v98);
          sub_10000CAAC(v93, &qword_101A21E30, &qword_1014B67D8);
          v16 = &v136;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v136 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v136 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v114 = v136;
          v88 = v133;
          goto LABEL_52;
        }

        sub_10000CAAC(v93, &qword_101A21E30, &qword_1014B67D8);
        v94 = v13;
        v88 = v133;
        v95 = v121;
      }

      while (v91);
LABEL_54:
      while (1)
      {
        v13 = v94 + 1;
        if (__OFADD__(v94, 1))
        {
          break;
        }

        if (v13 >= v92)
        {

          swift_bridgeObjectRelease_n();
          return v114;
        }

        v91 = v95[v13];
        ++v94;
        if (v91)
        {
          goto LABEL_57;
        }
      }
    }

    else
    {
LABEL_37:
      if (a1 <= v75 + 1)
      {
        v77 = v75 + 1;
      }

      else
      {
        v77 = a1;
      }

      v78 = v77 - 1;
      while (1)
      {
        v8 = v75 + 1;
        if (__OFADD__(v75, 1))
        {
          break;
        }

        if (v8 >= a1)
        {
          v8 = v76;
          (*v130)(v13, 1, 1, v76);
          v74 = 0;
          goto LABEL_45;
        }

        v74 = v121[v8];
        ++v75;
        if (v74)
        {
          goto LABEL_44;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    v130 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  v21 = 0;
  v120 = a1 & 0xC000000000000001;
  v8 = _swiftEmptyDictionarySingleton;
  v108 = xmmword_10146CA70;
  v118 = a1;
  v119 = i;
  while (1)
  {
    if (v120)
    {
      a1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_66;
      }
    }

    else
    {
      if (v21 >= *(v130 + 16))
      {
        goto LABEL_67;
      }

      a1 = *(a1 + 8 * v21 + 32);

      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_66;
      }
    }

    v137[0] = a1;
    v16 = v129;
    (v121)(&v135, v137);
    v23 = v135;
    if (v135)
    {
      break;
    }

    ++v21;
    v24 = v119;
LABEL_10:
    v13 = v132;
    a1 = v118;
    if (v22 == v24)
    {
      goto LABEL_33;
    }
  }

  v136 = v135;

  v25 = v123;
  (v111)(&v136);
  sub_1005B981C(&qword_1019F6CD8, &qword_10146FA98);
  v26 = swift_allocObject();
  *(v26 + *(*v26 + 120)) = _swiftEmptyArrayStorage;
  swift_weakInit();
  v27 = v25;
  v28 = v26;
  (*v122)(v26 + *(*v26 + 104), v27, v134);
  *(v26 + *(*v26 + 112)) = v23;
  v29 = *(*v26 + 104);
  v16 = v8;
  v30 = *(v8 + 16);
  v110 = v28;
  if (v30)
  {
    v16 = v8;
    v109 = v29;
    v31 = sub_10003E994(v28 + v29);
    v29 = v109;
    if (v32)
    {
      v133 = v8;
      v33 = *(*(v8 + 56) + 8 * v31);
      v34 = objc_opt_self();
      v106 = v33;

      v105 = v34;
      v35 = [v34 _atomicIncrementAssertCount];
      v135 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v135, "expected nil value, but non-nil found", 37, 2u);
      StaticString.description.getter("constructDisjointTrees(from:transform:nodeIDProvider:nodeParentIDProvider:)", 75, 2);
      v107 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Sync/CRLTree.swift", 72, 2);
      v36 = String._bridgeToObjectiveC()();

      v37 = [v36 lastPathComponent];

      v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v101 = v39;
      v102 = v38;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v103 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = v108;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v35;
      v104 = (inited + 32);
      v100 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(inited + 96) = v100;
      v41 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
      *(inited + 104) = v41;
      *(inited + 72) = v107;
      *(inited + 136) = &type metadata for String;
      v42 = sub_1000053B0();
      v43 = v101;
      *(inited + 112) = v102;
      *(inited + 120) = v43;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 144) = v42;
      *(inited + 152) = 54;
      v44 = v135;
      *(inited + 216) = v100;
      *(inited + 224) = v41;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 192) = v44;
      v107 = v107;
      v102 = v44;
      v45 = static os_log_type_t.error.getter();
      v46 = v103;
      sub_100005404(v103, &_mh_execute_header, v45, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v47 = static os_log_type_t.error.getter();
      sub_100005404(v46, &_mh_execute_header, v47, "expected nil value, but non-nil found", 37, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v48 = swift_allocObject();
      v103 = v48;
      v48[2] = 8;
      v48[3] = 0;
      v48[4] = 0;
      v48[5] = 0;
      v107 = __VaListBuilder.va_list()();
      StaticString.description.getter("constructDisjointTrees(from:transform:nodeIDProvider:nodeParentIDProvider:)", 75, 2);
      v104 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Sync/CRLTree.swift", 72, 2);
      v102 = String._bridgeToObjectiveC()();

      StaticString.description.getter("expected nil value, but non-nil found", 37, 2);
      v49 = String._bridgeToObjectiveC()();

      v50 = v104;
      v51 = v102;
      [v105 handleFailureInFunction:v104 file:v102 lineNumber:54 isFatal:0 format:v49 args:v107];

      v16 = v133;
      v29 = v109;
      v28 = v110;
    }
  }

  v52 = v117;
  v133 = *v126;
  (v133)(v117, v28 + v29, v134);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v135 = v16;
  v55 = sub_10003E994(v52);
  v56 = v16[2];
  v57 = (v54 & 1) == 0;
  v58 = v56 + v57;
  if (!__OFADD__(v56, v57))
  {
    if (v16[3] < v58)
    {
      v59 = isUniquelyReferenced_nonNull_native;
      v60 = v54;
      sub_100A96A30(v58, v59);
      v16 = v135;
      v61 = sub_10003E994(v117);
      if ((v60 & 1) != (v62 & 1))
      {
        goto LABEL_71;
      }

      v55 = v61;
      v63 = v60;
      v64 = v135;
      if ((v63 & 1) == 0)
      {
        goto LABEL_29;
      }

LABEL_24:
      v8 = v64;
      *(v64[7] + v55) = v110;

      (*v127)(v117, v134);

LABEL_31:
      v24 = v119;
      v21 = v22;
      goto LABEL_10;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v64 = v135;
      if (v54)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v16 = &v135;
      v109 = v55;
      v65 = v54;
      sub_100AAC1C4();
      v66 = v65;
      v55 = v109;
      v64 = v135;
      if (v66)
      {
        goto LABEL_24;
      }
    }

LABEL_29:
    v67 = v55;
    v64[(v55 >> 6) + 8] = (v64[(v55 >> 6) + 8] | (1 << v55));
    v16 = v134;
    (v133)(v64[6] + *(v128 + 72) * v55, v117, v134);
    *(v64[7] + v67) = v110;

    (*(v128 + 8))(v117, v16);

    v68 = v64[2];
    v69 = __OFADD__(v68, 1);
    v70 = v68 + 1;
    if (v69)
    {
      goto LABEL_70;
    }

    v8 = v64;
    v64[2] = v70;
    goto LABEL_31;
  }

  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_100DCFCCC(unint64_t a1, void (*a2)(void **__return_ptr, uint64_t *), uint64_t a3, void (*a4)(void **__return_ptr, void *, __n128), uint64_t a5, void (*a6)(uint64_t **__return_ptr, void *), uint64_t a7)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v8 = ~v11;
    v7 = a1 + 64;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v9 = v13 & *(a1 + 64);
    v10 = a1;
  }

  v14 = 0;
  v15 = (v8 + 64) >> 6;
  v16 = _swiftEmptyDictionarySingleton;
  while (2)
  {
    v17 = v14;
    if ((v10 & 0x8000000000000000) != 0)
    {
      while (1)
      {
        v24 = __CocoaDictionary.Iterator.next()();
        if (!v24)
        {
          goto LABEL_37;
        }

        v26 = v25;
        v99[0] = v24;
        sub_100006370(0, &qword_1019F6E98, CKRecordID_ptr);
        swift_dynamicCast();
        v22 = v100[0];
        v99[0] = v26;
        sub_100006370(0, &unk_101A22DC0, CKRecord_ptr);
        swift_dynamicCast();
        v23 = v100[0];
        v14 = v17;
        v96 = v9;
        if (!v22)
        {
          goto LABEL_37;
        }

LABEL_17:
        v100[0] = v22;
        v100[1] = v23;
        a2(&v97, v100);
        v27 = v97;
        if (v97)
        {
          break;
        }

        v17 = v14;
        v9 = v96;
        if ((v10 & 0x8000000000000000) == 0)
        {
          goto LABEL_9;
        }
      }

      v87 = v98;
      v99[0] = v97;
      v99[1] = v98;
      swift_unknownObjectRetain();
      (a4)(&v97, v99);
      v28 = v97;
      v85 = v98;
      sub_1005B981C(&qword_1019F6DD8, &unk_10146FBC0);
      v29 = swift_allocObject();
      v29[6] = _swiftEmptyArrayStorage;
      swift_weakInit();
      v29[2] = v28;
      v29[3] = v85;
      v29[4] = v27;
      v29[5] = v87;
      v86 = v29;
      if (v16[2])
      {
        sub_10000BE7C(v28, v85);
        if (v30)
        {
          v31 = objc_opt_self();

          v83 = v31;
          v79 = [v31 _atomicIncrementAssertCount];
          v97 = [objc_allocWithZone(NSString) init];
          sub_100604538(_swiftEmptyArrayStorage, &v97, "expected nil value, but non-nil found", 37, 2u);
          StaticString.description.getter("constructDisjointTrees(from:transform:nodeIDProvider:nodeParentIDProvider:)", 75, 2);
          v88 = String._bridgeToObjectiveC()();

          StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Sync/CRLTree.swift", 72, 2);
          v32 = String._bridgeToObjectiveC()();

          v33 = [v32 lastPathComponent];

          v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v74 = v35;
          v75 = v34;

          if (qword_1019F20A0 != -1)
          {
            swift_once();
          }

          v76 = static OS_os_log.crlAssert;
          sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10146CA70;
          *(inited + 56) = &type metadata for Int32;
          *(inited + 64) = &protocol witness table for Int32;
          *(inited + 32) = v79;
          v80 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
          *(inited + 96) = v80;
          v73 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
          *(inited + 104) = v73;
          *(inited + 72) = v88;
          *(inited + 136) = &type metadata for String;
          v37 = sub_1000053B0();
          *(inited + 112) = v75;
          *(inited + 120) = v74;
          *(inited + 176) = &type metadata for UInt;
          *(inited + 144) = v37;
          *(inited + 152) = 54;
          v38 = v97;
          *(inited + 216) = v80;
          *(inited + 224) = v73;
          *(inited + 184) = &protocol witness table for UInt;
          *(inited + 192) = v38;
          v89 = v88;
          v81 = v38;
          v39 = static os_log_type_t.error.getter();
          sub_100005404(v76, &_mh_execute_header, v39, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
          swift_arrayDestroy();
          v40 = static os_log_type_t.error.getter();
          sub_100005404(v76, &_mh_execute_header, v40, "expected nil value, but non-nil found", 37, 2, _swiftEmptyArrayStorage);

          type metadata accessor for __VaListBuilder();
          v77 = swift_allocObject();
          v77[2] = 8;
          v77[3] = 0;
          v77[4] = 0;
          v77[5] = 0;
          v82 = __VaListBuilder.va_list()();
          StaticString.description.getter("constructDisjointTrees(from:transform:nodeIDProvider:nodeParentIDProvider:)", 75, 2);
          v78 = String._bridgeToObjectiveC()();

          StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Sync/CRLTree.swift", 72, 2);
          v90 = String._bridgeToObjectiveC()();

          StaticString.description.getter("expected nil value, but non-nil found", 37, 2);
          v41 = String._bridgeToObjectiveC()();

          [v83 handleFailureInFunction:v78 file:v90 lineNumber:54 isFatal:0 format:v41 args:v82];

          v29 = v86;
        }
      }

      v42 = v29[3];
      v91 = v29[2];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v97 = v16;
      v44 = sub_10000BE7C(v91, v42);
      v45 = v16[2];
      v46 = (v43 & 1) == 0;
      v47 = v45 + v46;
      if (__OFADD__(v45, v46))
      {
        goto LABEL_63;
      }

      if (v16[3] >= v47)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_31;
        }

        v48 = v43;
        sub_100AA8E90();
      }

      else
      {
        v48 = v43;
        sub_100A912BC(v47, isUniquelyReferenced_nonNull_native);
        v49 = sub_10000BE7C(v91, v42);
        if ((v48 & 1) != (v50 & 1))
        {
          goto LABEL_65;
        }

        v44 = v49;
      }

      v43 = v48;
LABEL_31:
      v16 = v97;
      if (v43)
      {
        *(v97[7] + 8 * v44) = v86;

        swift_unknownObjectRelease();
      }

      else
      {
        v97[(v44 >> 6) + 8] |= 1 << v44;
        v51 = (v16[6] + 16 * v44);
        *v51 = v91;
        v51[1] = v42;
        *(v16[7] + 8 * v44) = v86;

        swift_unknownObjectRelease();
        v52 = v16[2];
        v53 = __OFADD__(v52, 1);
        v54 = v52 + 1;
        if (v53)
        {
          goto LABEL_64;
        }

        v16[2] = v54;
      }

      v9 = v96;
      continue;
    }

    break;
  }

LABEL_9:
  v18 = v17;
  v19 = v9;
  v14 = v17;
  if (v9)
  {
LABEL_13:
    v96 = (v19 - 1) & v19;
    v20 = (v14 << 9) | (8 * __clz(__rbit64(v19)));
    v21 = *(*(v10 + 56) + v20);
    v22 = *(*(v10 + 48) + v20);
    v23 = v21;
    if (v22)
    {
      goto LABEL_17;
    }

LABEL_37:
    sub_100035F90(v10);
    v100[0] = _swiftEmptySetSingleton;
    v55 = v16 + 8;
    v56 = 1 << *(v16 + 32);
    v57 = -1;
    if (v56 < 64)
    {
      v57 = ~(-1 << v56);
    }

    v58 = v57 & v16[8];
    v59 = (v56 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v60 = 0;
    if (v58)
    {
      while (1)
      {
        v61 = v60;
LABEL_45:
        v62 = __clz(__rbit64(v58));
        v58 &= v58 - 1;
        v63 = *(v16[7] + 8 * (v62 | (v61 << 6)));

        sub_100DD216C(v16, v63, v100, a6, a7, sub_10113E260, sub_10067CF24);

        if (!v58)
        {
          goto LABEL_41;
        }
      }
    }

    while (1)
    {
LABEL_41:
      v61 = v60 + 1;
      if (__OFADD__(v60, 1))
      {
        __break(1u);
        goto LABEL_61;
      }

      if (v61 >= v59)
      {
        break;
      }

      v58 = v55[v61];
      ++v60;
      if (v58)
      {
        v60 = v61;
        goto LABEL_45;
      }
    }

    v64 = _swiftEmptyArrayStorage;
    v99[0] = _swiftEmptyArrayStorage;
    v65 = 1 << *(v16 + 32);
    v66 = -1;
    if (v65 < 64)
    {
      v66 = ~(-1 << v65);
    }

    v67 = v66 & v16[8];
    v68 = (v65 + 63) >> 6;

    v69 = 0;
    while (1)
    {
      v70 = v69;
      if (!v67)
      {
        break;
      }

LABEL_54:
      v67 &= v67 - 1;
      if (swift_weakLoadStrong())
      {
      }

      else
      {
        sub_1005B981C(&qword_101A21F68, &qword_1014B6938);
        swift_allocObject();

        sub_100DCCF74(v71);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v99[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v99[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v64 = v99[0];
      }
    }

    while (1)
    {
      v69 = v70 + 1;
      if (__OFADD__(v70, 1))
      {
        break;
      }

      if (v69 >= v68)
      {

        swift_bridgeObjectRelease_n();
        return v64;
      }

      v67 = v55[v69];
      ++v70;
      if (v67)
      {
        goto LABEL_54;
      }
    }

LABEL_61:
    __break(1u);
  }

  else
  {
    while (1)
    {
      v14 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v14 >= v15)
      {
        goto LABEL_37;
      }

      v19 = *(v7 + 8 * v14);
      ++v18;
      if (v19)
      {
        goto LABEL_13;
      }
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_100DD074C(uint64_t a1, void (*a2)(void **__return_ptr, void **, __n128), uint64_t a3, void (*a4)(void **__return_ptr, void *, __n128), uint64_t a5, void (*a6)(uint64_t **__return_ptr, void *), uint64_t a7, uint64_t *a8, uint64_t *a9, void (*a10)(void), void (*a11)(void), uint64_t (*a12)(uint64_t), void (*a13)(uint64_t, __n128), uint64_t *a14, uint64_t *a15)
{
  v16 = a1 + 64;
  v17 = 1 << *(a1 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a1 + 64);
  v20 = (v17 + 63) >> 6;

  v21 = 0;
  v22 = _swiftEmptyDictionarySingleton;
  while (1)
  {
    v23 = v21;
    if (!v19)
    {
      break;
    }

LABEL_8:
    v24 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v25 = v24 | (v21 << 6);
    v26 = *(a1 + 56);
    v101 = *(*(a1 + 48) + 8 * v25);
    v102 = *(v26 + 16 * v25);
    v27 = v101;
    swift_unknownObjectRetain();
    (a2)(&v98, &v101);
    v28 = v98;
    if (v98)
    {
      v93 = v99;
      v100[0] = v98;
      v100[1] = v99;
      swift_unknownObjectRetain();
      (a4)(&v98, v100);
      v29 = v99;
      v86 = v98;
      v83 = a8;
      sub_1005B981C(a8, a9);
      v30 = swift_allocObject();
      v30[6] = _swiftEmptyArrayStorage;
      swift_weakInit();
      v30[2] = v86;
      v30[3] = v29;
      v30[4] = v28;
      v30[5] = v93;
      v87 = v30;
      if (v22[2])
      {
        sub_10000BE7C(v86, v29);
        if (v31)
        {
          v32 = objc_opt_self();

          v84 = v32;
          v79 = [v32 _atomicIncrementAssertCount];
          v98 = [objc_allocWithZone(NSString) init];
          sub_100604538(_swiftEmptyArrayStorage, &v98, "expected nil value, but non-nil found", 37, 2u);
          StaticString.description.getter("constructDisjointTrees(from:transform:nodeIDProvider:nodeParentIDProvider:)", 75, 2);
          v94 = String._bridgeToObjectiveC()();

          StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Sync/CRLTree.swift", 72, 2);
          v33 = String._bridgeToObjectiveC()();

          v34 = [v33 lastPathComponent];

          v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v74 = v36;
          v75 = v35;

          if (qword_1019F20A0 != -1)
          {
            swift_once();
          }

          v76 = static OS_os_log.crlAssert;
          sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10146CA70;
          *(inited + 56) = &type metadata for Int32;
          *(inited + 64) = &protocol witness table for Int32;
          *(inited + 32) = v79;
          v80 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
          *(inited + 96) = v80;
          v73 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
          *(inited + 104) = v73;
          *(inited + 72) = v94;
          *(inited + 136) = &type metadata for String;
          v38 = sub_1000053B0();
          *(inited + 112) = v75;
          *(inited + 120) = v74;
          *(inited + 176) = &type metadata for UInt;
          *(inited + 144) = v38;
          *(inited + 152) = 54;
          v39 = v98;
          *(inited + 216) = v80;
          *(inited + 224) = v73;
          *(inited + 184) = &protocol witness table for UInt;
          *(inited + 192) = v39;
          v95 = v94;
          v81 = v39;
          v40 = static os_log_type_t.error.getter();
          sub_100005404(v76, &_mh_execute_header, v40, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
          swift_arrayDestroy();
          v41 = static os_log_type_t.error.getter();
          sub_100005404(v76, &_mh_execute_header, v41, "expected nil value, but non-nil found", 37, 2, _swiftEmptyArrayStorage);

          type metadata accessor for __VaListBuilder();
          v77 = swift_allocObject();
          v77[2] = 8;
          v77[3] = 0;
          v77[4] = 0;
          v77[5] = 0;
          v82 = __VaListBuilder.va_list()();
          StaticString.description.getter("constructDisjointTrees(from:transform:nodeIDProvider:nodeParentIDProvider:)", 75, 2);
          v78 = String._bridgeToObjectiveC()();

          StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Sync/CRLTree.swift", 72, 2);
          v96 = String._bridgeToObjectiveC()();

          StaticString.description.getter("expected nil value, but non-nil found", 37, 2);
          v42 = String._bridgeToObjectiveC()();

          [v84 handleFailureInFunction:v78 file:v96 lineNumber:54 isFatal:0 format:v42 args:v82];

          v30 = v87;
        }
      }

      v43 = v30[3];
      v97 = v30[2];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v98 = v22;
      v45 = sub_10000BE7C(v97, v43);
      v46 = v22[2];
      v47 = (v44 & 1) == 0;
      if (__OFADD__(v46, v47))
      {
        goto LABEL_53;
      }

      if (v22[3] < v46 + v47)
      {
        v48 = v44;
        a10();
        v49 = sub_10000BE7C(v97, v43);
        if ((v48 & 1) != (v50 & 1))
        {
          goto LABEL_55;
        }

        v45 = v49;
        goto LABEL_19;
      }

      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v48 = v44;
        a11();
LABEL_19:
        v44 = v48;
      }

      v22 = v98;
      if (v44)
      {
        *(v98[7] + 8 * v45) = v87;

        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
      }

      else
      {
        v98[(v45 >> 6) + 8] |= 1 << v45;
        v51 = (v22[6] + 16 * v45);
        *v51 = v97;
        v51[1] = v43;
        *(v22[7] + 8 * v45) = v87;

        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        v52 = v22[2];
        v53 = __OFADD__(v52, 1);
        v54 = v52 + 1;
        if (v53)
        {
          goto LABEL_54;
        }

        v22[2] = v54;
      }

      a8 = v83;
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  while (1)
  {
    v21 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
      goto LABEL_51;
    }

    if (v21 >= v20)
    {
      break;
    }

    v19 = *(v16 + 8 * v21);
    ++v23;
    if (v19)
    {
      goto LABEL_8;
    }
  }

  v101 = _swiftEmptySetSingleton;
  v55 = v22 + 8;
  v56 = 1 << *(v22 + 32);
  v57 = -1;
  if (v56 < 64)
  {
    v57 = ~(-1 << v56);
  }

  v58 = v57 & v22[8];
  v59 = (v56 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v60 = 0;
  v61 = _swiftEmptyArrayStorage;
  while (v58)
  {
    v62 = v60;
LABEL_35:
    v63 = __clz(__rbit64(v58));
    v58 &= v58 - 1;
    v64 = *(v22[7] + 8 * (v63 | (v62 << 6)));

    sub_100DD216C(v22, v64, &v101, a6, a7, a12, a13);
  }

  while (1)
  {
    v62 = v60 + 1;
    if (__OFADD__(v60, 1))
    {
      break;
    }

    if (v62 >= v59)
    {

      v100[0] = _swiftEmptyArrayStorage;
      v65 = 1 << *(v22 + 32);
      v66 = -1;
      if (v65 < 64)
      {
        v66 = ~(-1 << v65);
      }

      v67 = v66 & v22[8];
      v68 = (v65 + 63) >> 6;

      v69 = 0;
      while (1)
      {
        v70 = v69;
        if (!v67)
        {
          break;
        }

LABEL_44:
        v67 &= v67 - 1;
        if (swift_weakLoadStrong())
        {
        }

        else
        {
          sub_1005B981C(a14, a15);
          swift_allocObject();

          sub_100DCCF74(v71);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v100[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v100[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v61 = v100[0];
        }
      }

      while (1)
      {
        v69 = v70 + 1;
        if (__OFADD__(v70, 1))
        {
          goto LABEL_52;
        }

        if (v69 >= v68)
        {

          swift_bridgeObjectRelease_n();
          return v61;
        }

        v67 = v55[v69];
        ++v70;
        if (v67)
        {
          goto LABEL_44;
        }
      }
    }

    v58 = v55[v62];
    ++v60;
    if (v58)
    {
      v60 = v62;
      goto LABEL_35;
    }
  }

LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_100DD10F4(uint64_t a1, void (*a2)(void), uint64_t a3, void (*a4)(void), uint64_t a5, void (*a6)(uint64_t), uint64_t a7)
{
  v141 = a7;
  v140 = a6;
  v135 = a5;
  v134 = a4;
  v146 = sub_1005B981C(&qword_101A21E70, &qword_1014B6838);
  v116 = *(v146 - 8);
  __chkstk_darwin(v146 - 8);
  v115 = &v114 - v10;
  v11 = sub_1005B981C(&qword_101A21E78, &qword_1014B6840);
  __chkstk_darwin(v11 - 8);
  v137 = &v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v143 = &v114 - v14;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v145 = &v114 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v147 = &v114 - v19;
  v20 = sub_1005B981C(&qword_101A21E80, &qword_1014B6848);
  __chkstk_darwin(v20 - 8);
  v133 = &v114 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v114 - v23;
  v25 = type metadata accessor for CRLBoardItemPeerSyncUpdate(0);
  __chkstk_darwin(v25);
  v142 = (&v114 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = *(a1 + 16);
  v144 = v16;
  if (v28)
  {
    v29 = a1 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    v139 = (v26 + 48);
    v138 = *(v26 + 72);
    v132 = (v26 + 56);
    v131 = (v16 + 32);
    v136 = (v16 + 16);
    v126 = (v16 + 8);
    v30 = _swiftEmptyDictionarySingleton;
    v118 = xmmword_10146CA70;
    v129 = a3;
    v128 = a2;
    v127 = v24;
    v130 = v25;
    while (1)
    {
      a2(v29);
      if ((*v139)(v24, 1, v25) == 1)
      {
        sub_10000CAAC(v24, &qword_101A21E80, &qword_1014B6848);
      }

      else
      {
        v31 = v142;
        sub_100025668(v24, v142, type metadata accessor for CRLBoardItemPeerSyncUpdate);
        v32 = v147;
        v134(v31);
        v33 = v133;
        sub_10000C83C(v31, v133, type metadata accessor for CRLBoardItemPeerSyncUpdate);
        (*v132)(v33, 0, 1, v25);
        sub_1005B981C(&qword_1019F6CE8, &qword_10146FAA8);
        v34 = swift_allocObject();
        *(v34 + *(*v34 + 120)) = _swiftEmptyArrayStorage;
        swift_weakInit();
        (*v131)(v34 + *(*v34 + 104), v32, v15);
        sub_10003DFF8(v33, v34 + *(*v34 + 112), &qword_101A21E80, &qword_1014B6848);
        v35 = *(*v34 + 104);
        if (v30[2])
        {
          v36 = sub_10003E994(v34 + v35);
          if (v37)
          {
            v125 = v35;
            v148 = v30;
            v38 = *(v30[7] + 8 * v36);
            v39 = objc_opt_self();
            v124 = v38;

            v123 = v39;
            v40 = [v39 _atomicIncrementAssertCount];
            v150 = [objc_allocWithZone(NSString) init];
            sub_100604538(_swiftEmptyArrayStorage, &v150, "expected nil value, but non-nil found", 37, 2u);
            StaticString.description.getter("constructDisjointTrees(from:transform:nodeIDProvider:nodeParentIDProvider:)", 75, 2);
            v122 = String._bridgeToObjectiveC()();

            StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Sync/CRLTree.swift", 72, 2);
            v41 = String._bridgeToObjectiveC()();

            v42 = [v41 lastPathComponent];

            v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v119 = v44;

            if (qword_1019F20A0 != -1)
            {
              swift_once();
            }

            v120 = static OS_os_log.crlAssert;
            sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
            inited = swift_initStackObject();
            *(inited + 16) = v118;
            *(inited + 56) = &type metadata for Int32;
            *(inited + 64) = &protocol witness table for Int32;
            *(inited + 32) = v40;
            v121 = inited + 32;
            v46 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
            *(inited + 96) = v46;
            v47 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
            *(inited + 104) = v47;
            v48 = v122;
            *(inited + 72) = v122;
            *(inited + 136) = &type metadata for String;
            v49 = sub_1000053B0();
            v50 = v119;
            *(inited + 112) = v43;
            *(inited + 120) = v50;
            *(inited + 176) = &type metadata for UInt;
            *(inited + 144) = v49;
            *(inited + 152) = 54;
            v51 = v150;
            *(inited + 216) = v46;
            *(inited + 224) = v47;
            *(inited + 184) = &protocol witness table for UInt;
            *(inited + 192) = v51;
            v52 = v48;
            v53 = v51;
            v54 = static os_log_type_t.error.getter();
            v55 = v120;
            sub_100005404(v120, &_mh_execute_header, v54, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
            swift_setDeallocating();
            sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
            swift_arrayDestroy();
            v56 = static os_log_type_t.error.getter();
            sub_100005404(v55, &_mh_execute_header, v56, "expected nil value, but non-nil found", 37, 2, _swiftEmptyArrayStorage);

            type metadata accessor for __VaListBuilder();
            v57 = swift_allocObject();
            v57[2] = 8;
            v57[3] = 0;
            v57[4] = 0;
            v57[5] = 0;
            v122 = __VaListBuilder.va_list()();
            StaticString.description.getter("constructDisjointTrees(from:transform:nodeIDProvider:nodeParentIDProvider:)", 75, 2);
            v58 = String._bridgeToObjectiveC()();

            StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Sync/CRLTree.swift", 72, 2);
            v59 = String._bridgeToObjectiveC()();

            StaticString.description.getter("expected nil value, but non-nil found", 37, 2);
            v60 = String._bridgeToObjectiveC()();

            [v123 handleFailureInFunction:v58 file:v59 lineNumber:54 isFatal:0 format:v60 args:v122];

            v30 = v148;
            v35 = v125;
          }
        }

        v61 = *v136;
        v62 = v145;
        (*v136)(v145, v34 + v35, v15);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v150 = v30;
        v64 = sub_10003E994(v62);
        v66 = v30[2];
        v67 = (v65 & 1) == 0;
        v68 = __OFADD__(v66, v67);
        v69 = v66 + v67;
        if (v68)
        {
          goto LABEL_55;
        }

        v70 = v65;
        if (v30[3] >= v69)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v75 = v64;
            sub_100AAD0B4();
            v64 = v75;
          }
        }

        else
        {
          sub_100A98894(v69, isUniquelyReferenced_nonNull_native);
          v64 = sub_10003E994(v145);
          if ((v70 & 1) != (v71 & 1))
          {
            goto LABEL_57;
          }
        }

        v25 = v130;
        v30 = v150;
        if (v70)
        {
          *(v150[7] + 8 * v64) = v34;
        }

        else
        {
          v150[(v64 >> 6) + 8] |= 1 << v64;
          v72 = v64;
          v61(v30[6] + *(v144 + 72) * v64, v145, v15);
          *(v30[7] + 8 * v72) = v34;
          v73 = v30[2];
          v68 = __OFADD__(v73, 1);
          v74 = v73 + 1;
          if (v68)
          {
            goto LABEL_56;
          }

          v30[2] = v74;
        }

        (*v126)(v145, v15);
        sub_100026028(v142, type metadata accessor for CRLBoardItemPeerSyncUpdate);
        a2 = v128;
        v24 = v127;
      }

      v29 += v138;
      if (!--v28)
      {
        goto LABEL_23;
      }
    }
  }

  v30 = _swiftEmptyDictionarySingleton;
LABEL_23:
  v117 = _swiftEmptyArrayStorage;
  v77 = v30 + 8;
  v76 = v30[8];
  v78 = 1 << *(v30 + 32);
  v150 = _swiftEmptySetSingleton;
  if (v78 < 64)
  {
    v79 = ~(-1 << v78);
  }

  else
  {
    v79 = -1;
  }

  v80 = v79 & v76;
  v81 = (v78 + 63) >> 6;
  v142 = (v116 + 56);
  v138 = v144 + 16;
  v136 = (v144 + 32);
  v82 = (v116 + 48);
  v139 = (v144 + 8);
  swift_bridgeObjectRetain_n();
  v83 = 0;
  v145 = v15;
  v84 = v137;
  v148 = v30;
  if (v80)
  {
    while (1)
    {
      v85 = v83;
LABEL_35:
      v88 = __clz(__rbit64(v80));
      v80 &= v80 - 1;
      v89 = v88 | (v85 << 6);
      v90 = v148;
      v91 = v144;
      v92 = v147;
      (*(v144 + 16))(v147, v148[6] + *(v144 + 72) * v89, v15);
      v93 = v15;
      v94 = *(*(v90 + 56) + 8 * v89);
      v95 = v146;
      v96 = *(v146 + 48);
      v97 = *(v91 + 32);
      v84 = v137;
      v97(v137, v92, v93);
      *(v84 + v96) = v94;
      (*v142)(v84, 0, 1, v95);

      v87 = v85;
LABEL_36:
      v98 = v143;
      sub_10003DFF8(v84, v143, &qword_101A21E78, &qword_1014B6840);
      if ((*v82)(v98, 1, v95) == 1)
      {
        break;
      }

      sub_100DD331C(v148, *(v98 + *(v95 + 48)), &v150, v140, v141);

      v99 = v98;
      v15 = v145;
      (*v139)(v99, v145);
      v83 = v87;
      if (!v80)
      {
        goto LABEL_28;
      }
    }

    v100 = v148;

    v149 = _swiftEmptyArrayStorage;
    v101 = 1 << *(v100 + 32);
    v102 = -1;
    if (v101 < 64)
    {
      v102 = ~(-1 << v101);
    }

    v103 = v102 & *(v100 + 64);
    v104 = (v101 + 63) >> 6;

    v105 = 0;
    v106 = v115;
    v107 = v144;
    while (1)
    {
      v108 = v105;
      if (!v103)
      {
        break;
      }

LABEL_47:
      v109 = __clz(__rbit64(v103));
      v103 &= v103 - 1;
      v110 = v109 | (v105 << 6);
      v111 = v148;
      (*(v107 + 16))(v106, v148[6] + *(v107 + 72) * v110, v145);
      *(v106 + *(v146 + 48)) = *(*(v111 + 56) + 8 * v110);
      if (swift_weakLoadStrong())
      {

        sub_10000CAAC(v106, &qword_101A21E70, &qword_1014B6838);
      }

      else
      {
        sub_1005B981C(&qword_101A21E88, &unk_1014B6850);
        swift_allocObject();
        v112 = swift_retain_n();
        sub_100DCD744(v112);
        sub_10000CAAC(v106, &qword_101A21E70, &qword_1014B6838);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v149 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v149 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          v107 = v144;
          v106 = v115;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v117 = v149;
      }
    }

    while (1)
    {
      v105 = v108 + 1;
      if (__OFADD__(v108, 1))
      {
        break;
      }

      if (v105 >= v104)
      {

        swift_bridgeObjectRelease_n();
        return v117;
      }

      v103 = v77[v105];
      ++v108;
      if (v103)
      {
        goto LABEL_47;
      }
    }
  }

  else
  {
LABEL_28:
    if (v81 <= v83 + 1)
    {
      v86 = v83 + 1;
    }

    else
    {
      v86 = v81;
    }

    v87 = v86 - 1;
    while (1)
    {
      v85 = v83 + 1;
      if (__OFADD__(v83, 1))
      {
        break;
      }

      if (v85 >= v81)
      {
        v95 = v146;
        (*v142)(v84, 1, 1, v146);
        v80 = 0;
        goto LABEL_36;
      }

      v80 = v77[v85];
      ++v83;
      if (v80)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100DD216C(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t **__return_ptr, void *), uint64_t a5, uint64_t (*a6)(uint64_t), void (*a7)(uint64_t, __n128))
{
  v48 = _swiftEmptySetSingleton;
  v12 = *a3;
  v13 = a2[2];
  v14 = a2[3];

  LOBYTE(v12) = sub_10079E9A8(v13, v14, v12);

  if ((v12 & 1) == 0)
  {
    v15 = a2[4];
    if (v15)
    {
      v43 = a7;
      v16 = a2;
      while (1)
      {
        v17 = v16[5];
        v47[0] = v15;
        v47[1] = v17;
        v18 = v16[2];
        v19 = v16[3];

        swift_unknownObjectRetain();
        sub_100E6DE34(&v45, v18, v19);

        v20 = v16[2];
        v21 = v16[3];

        sub_100E6DE34(&v45, v20, v21);

        a4(&v45, v47);
        if (!v46)
        {
          goto LABEL_15;
        }

        if (!*(a1 + 16) || (v22 = sub_10000BE7C(v45, v46), (v23 & 1) == 0))
        {

LABEL_15:
          swift_unknownObjectRelease();

          swift_weakAssign();
          goto LABEL_13;
        }

        v24 = *(*(a1 + 56) + 8 * v22);
        swift_beginAccess();

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v24[6] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24[6] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
        swift_weakAssign();
        v25 = v48;
        if (sub_10079E9A8(v24[2], v24[3], v48))
        {
          break;
        }

        swift_unknownObjectRelease();
        v26 = *a3;
        v27 = v24[2];
        v28 = v24[3];

        LOBYTE(v26) = sub_10079E9A8(v27, v28, v26);

        if ((v26 & 1) == 0)
        {
          v15 = v24[4];
          v16 = v24;
          if (v15)
          {
            continue;
          }
        }

        goto LABEL_12;
      }

      v29 = v25[2];
      if (v29)
      {
        v30 = sub_100B39C98(v25[2], 0);
        v31 = sub_100B3B5B0(&v45, v30 + 4, v29, v25);
        v32 = v45;
        v42 = v31;

        sub_100035F90(v32);
        if (v42 == v29)
        {
          goto LABEL_20;
        }

        __break(1u);
      }

      v30 = _swiftEmptyArrayStorage;
LABEL_20:
      v45 = v30;
      v33 = 0;
      sub_100DD3DDC(&v45);
      if (*(v45 + 2))
      {
        v34 = *(v45 + 4);
        v35 = *(v45 + 5);

        if (!*(a1 + 16) || (v36 = sub_10000BE7C(v34, v35), (v37 & 1) == 0))
        {

          swift_unknownObjectRelease();

          goto LABEL_28;
        }

        v38 = *(*(a1 + 56) + 8 * v36);

        Strong = swift_weakLoadStrong();
        if (!Strong)
        {

          swift_unknownObjectRelease();
          return;
        }

        v40 = Strong;
        swift_weakAssign();
        swift_beginAccess();

        v33 = sub_100E984CC((v40 + 48), v38, a6);

        v41 = *(v40 + 48);
        if (!(v41 >> 62))
        {
          if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v33)
          {
LABEL_26:
            (v43)(v33);
            swift_endAccess();
            swift_unknownObjectRelease();

LABEL_28:

            return;
          }

          goto LABEL_32;
        }
      }

      else
      {
        __break(1u);
      }

      if (_CocoaArrayWrapper.endIndex.getter() >= v33)
      {
        goto LABEL_26;
      }

LABEL_32:
      __break(1u);

      __break(1u);
      return;
    }
  }

LABEL_12:

LABEL_13:
}

void sub_100DD2630(uint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void **__return_ptr, uint64_t *))
{
  v7 = *a3;
  v56 = _swiftEmptySetSingleton;
  v8 = a2[2];
  v9 = a2[3];

  LOBYTE(v7) = sub_10079E9A8(v8, v9, v7);

  if ((v7 & 1) != 0 || (v10 = a2[5], (~v10 & 0xF000000000000007) == 0))
  {
LABEL_3:

LABEL_4:

    return;
  }

  v11 = a2;
  while (1)
  {
    v13 = v11[7];
    v12 = v11[8];
    v14 = v11[6];
    v15 = v11[3];
    v51 = v11[4];
    v16 = v51;
    v52 = v10;
    v53 = v14;
    v54 = v13;
    v55 = v12;
    v17 = v11[2];

    sub_100EA54FC(v16, v10, v14, v13, v12, v18);
    sub_100E6DE34(&v49, v17, v15);

    v19 = v11[2];
    v20 = v11[3];

    sub_100E6DE34(&v49, v19, v20);

    a4(&v49, &v51);
    if (!v50)
    {
      sub_1009F5D34(v51, v52, v53, v54, v55, v21);
      goto LABEL_17;
    }

    if (!a1[2] || (v22 = sub_10000BE7C(v49, v50), (v23 & 1) == 0))
    {
      sub_1009F5D34(v51, v52, v53, v54, v55, v21);

LABEL_17:

      swift_weakAssign();
      goto LABEL_4;
    }

    v24 = *(a1[7] + 8 * v22);
    swift_beginAccess();

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v24[9] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24[9] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    swift_weakAssign();
    v25 = v56;
    if (sub_10079E9A8(v24[2], v24[3], v56))
    {
      break;
    }

    sub_1009F5D34(v51, v52, v53, v54, v55, v26);

    v27 = *a3;
    v28 = v24[2];
    v29 = v24[3];

    LOBYTE(v27) = sub_10079E9A8(v28, v29, v27);

    if ((v27 & 1) == 0)
    {
      v10 = v24[5];
      v11 = v24;
      if ((~v10 & 0xF000000000000007) != 0)
      {
        continue;
      }
    }

    goto LABEL_3;
  }

  v30 = v25[2];
  if (!v30)
  {
    goto LABEL_21;
  }

  v31 = sub_100B39C98(v25[2], 0);
  v32 = sub_100B3B5B0(&v49, v31 + 4, v30, v25);
  v33 = v49;
  v48 = v32;

  sub_100035F90(v33);
  if (v48 != v30)
  {
    __break(1u);
LABEL_21:
    v31 = _swiftEmptyArrayStorage;
  }

  v49 = v31;
  v34 = 0;
  sub_100DD3DDC(&v49);
  if (!*(v49 + 2))
  {
    __break(1u);
    goto LABEL_32;
  }

  v35 = *(v49 + 4);
  v36 = *(v49 + 5);

  if (!a1[2] || (v37 = sub_10000BE7C(v35, v36), (v38 & 1) == 0))
  {

    sub_1009F5D34(v51, v52, v53, v54, v55, v46);

    goto LABEL_4;
  }

  v39 = *(a1[7] + 8 * v37);

  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_1009F5D34(v51, v52, v53, v54, v55, v41);

    goto LABEL_4;
  }

  v42 = Strong;
  swift_weakAssign();
  swift_beginAccess();

  v34 = sub_100E984CC((v42 + 72), v39, sub_10113E260);

  v43 = *(v42 + 72);
  if (!(v43 >> 62))
  {
    v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v44 >= v34)
    {
      goto LABEL_28;
    }

LABEL_33:
    __break(1u);

    __break(1u);
    return;
  }

LABEL_32:
  v44 = _CocoaArrayWrapper.endIndex.getter();
  if (v44 < v34)
  {
    goto LABEL_33;
  }

LABEL_28:
  sub_10067D1E0(v34, v44);
  swift_endAccess();

  sub_1009F5D34(v51, v52, v53, v54, v55, v45);
}

void sub_100DD2B50(uint64_t a1, uint64_t a2, uint64_t *a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v58 = a4;
  v59 = a5;
  v63 = a3;
  v55 = a1;
  v6 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v51 - v7;
  v9 = type metadata accessor for UUID();
  __chkstk_darwin(v9);
  v51 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v62 = &v51 - v12;
  __chkstk_darwin(v13);
  v57 = &v51 - v14;
  __chkstk_darwin(v15);
  v17 = &v51 - v16;
  v60 = _swiftEmptySetSingleton;
  v68 = _swiftEmptySetSingleton;
  v64 = (v18 + 16);
  v19 = (v18 + 8);
  v56 = (v18 + 48);
  v52 = v18;
  v53 = (v18 + 32);

  v54 = v19;
  v65 = v9;
  while (1)
  {
    v20 = *v63;
    v21 = *(*a2 + 104);
    v22 = *v64;
    (*v64)(v17, a2 + v21, v9);
    LOBYTE(v20) = sub_10079C3B4(v17, v20);
    v23 = *v19;
    (*v19)(v17, v9);
    if ((v20 & 1) != 0 || (v24 = *(a2 + *(*a2 + 112))) == 0)
    {

      goto LABEL_15;
    }

    v67 = *(a2 + *(*a2 + 112));
    v25 = v57;
    v22(v57, a2 + v21, v9);
    v61 = v24;

    sub_100E6AF38(v17, v25);
    v23(v17, v65);
    v22(v25, a2 + v21, v65);
    v9 = v65;
    sub_100E6AF38(v17, v25);
    v23(v17, v9);
    v58(&v67);
    if ((*v56)(v8, 1, v9) == 1)
    {

      sub_10000CAAC(v8, &qword_1019F6990, &qword_10146D2F0);
      goto LABEL_14;
    }

    v26 = v62;
    (*v53)(v62, v8, v9);
    v27 = v55;
    if (!*(v55 + 16) || (v28 = sub_10003E994(v26), (v29 & 1) == 0))
    {
      v23(v26, v9);

LABEL_14:
      swift_weakAssign();
      goto LABEL_15;
    }

    v30 = *(*(v27 + 56) + 8 * v28);
    v31 = *(*v30 + 120);
    swift_beginAccess();

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v30 + v31) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v30 + v31) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v60 = *((*(v30 + v31) & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    swift_weakAssign();
    v32 = v68;
    v33 = sub_10079C3B4(v30 + *(*v30 + 104), v68);
    v60 = v32;
    if (v33)
    {
      break;
    }

    v19 = v54;
    v23(v62, v9);

    a2 = v30;
  }

  v34 = v32[2];
  if (!v34)
  {
    goto LABEL_19;
  }

  v35 = sub_100B39BF4(v32[2], 0);
  sub_100B3AA50(v66, &v35[(*(v52 + 80) + 32) & ~*(v52 + 80)], v34, v32);
  v37 = v36;
  v38 = v66[0];
  v63 = v66[2];
  v58 = v66[4];
  v59 = v66[3];

  sub_100035F90(v38);
  if (v37 != v34)
  {
    __break(1u);
LABEL_19:
    v35 = _swiftEmptyArrayStorage;
  }

  v39 = v55;
  v66[0] = v35;
  v40 = 0;
  sub_100DD3D34(v66);
  v41 = v51;
  if (!*(v66[0] + 16))
  {
    __break(1u);
    goto LABEL_31;
  }

  v22(v51, v66[0] + ((*(v52 + 80) + 32) & ~*(v52 + 80)), v65);

  if (!*(v39 + 16) || (v42 = sub_10003E994(v41), (v43 & 1) == 0))
  {
    v50 = v65;
    v23(v41, v65);
LABEL_28:

    v23(v62, v50);

    goto LABEL_15;
  }

  v44 = *(*(v39 + 56) + 8 * v42);

  v23(v41, v65);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {

    v50 = v65;
    goto LABEL_28;
  }

  v46 = Strong;
  swift_weakAssign();
  v47 = *(*v46 + 120);
  swift_beginAccess();

  v40 = sub_100E9875C((v46 + v47), v44, sub_10113E260);

  v48 = *(v46 + v47);
  if (v48 >> 62)
  {
LABEL_31:
    v49 = _CocoaArrayWrapper.endIndex.getter();
    if (v49 < v40)
    {
      goto LABEL_32;
    }

LABEL_26:
    sub_10067D208(v40, v49);
    swift_endAccess();

    v23(v62, v65);
LABEL_15:

    return;
  }

  v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v49 >= v40)
  {
    goto LABEL_26;
  }

LABEL_32:
  __break(1u);

  __break(1u);
}

void sub_100DD331C(uint64_t a1, uint64_t a2, uint64_t *a3, void (*a4)(uint64_t), uint64_t a5)
{
  v69 = a4;
  v70 = a5;
  v79 = a3;
  v7 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v7 - 8);
  v9 = &v60 - v8;
  v10 = sub_1005B981C(&qword_101A21E80, &qword_1014B6848);
  __chkstk_darwin(v10 - 8);
  v74 = &v60 - v11;
  v73 = type metadata accessor for CRLBoardItemPeerSyncUpdate(0);
  v12 = *(v73 - 8);
  __chkstk_darwin(v73);
  v81 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUID();
  __chkstk_darwin(v14);
  v61 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v76 = &v60 - v17;
  __chkstk_darwin(v18);
  v67 = &v60 - v19;
  __chkstk_darwin(v20);
  v78 = &v60 - v21;
  v80 = (v22 + 16);
  v83 = _swiftEmptySetSingleton;
  v23 = (v22 + 8);
  v72 = (v12 + 48);
  v66 = (v22 + 48);
  v62 = v22;
  v63 = (v22 + 32);

  v65 = v23;
  v71 = v14;
  v68 = v9;
  v64 = a1;
  while (1)
  {
    v24 = *v79;
    v25 = *(*a2 + 104);
    v26 = v78;
    v77 = *v80;
    v77(v78, a2 + v25, v14);
    LOBYTE(v24) = sub_10079C3B4(v26, v24);
    v27 = v14;
    v28 = *v23;
    (*v23)(v26, v27);
    if (v24)
    {

      goto LABEL_16;
    }

    v29 = v74;
    sub_10000BE14(a2 + *(*a2 + 112), v74, &qword_101A21E80, &qword_1014B6848);
    if ((*v72)(v29, 1, v73) == 1)
    {

      sub_10000CAAC(v29, &qword_101A21E80, &qword_1014B6848);
      return;
    }

    v30 = a2;
    v31 = v28;
    sub_100025668(v29, v81, type metadata accessor for CRLBoardItemPeerSyncUpdate);
    v32 = a2 + v25;
    v33 = v67;
    v14 = v71;
    v34 = v77;
    v77(v67, v32, v71);
    v35 = v78;
    sub_100E6AF38(v78, v33);
    v31(v35, v14);
    v75 = v30;
    v34(v33, v30 + v25, v14);
    sub_100E6AF38(v35, v33);
    v36 = v31;
    v31(v35, v14);
    v37 = v68;
    v69(v81);
    if ((*v66)(v37, 1, v14) == 1)
    {
      sub_100026028(v81, type metadata accessor for CRLBoardItemPeerSyncUpdate);

      sub_10000CAAC(v37, &qword_1019F6990, &qword_10146D2F0);
LABEL_15:
      swift_weakAssign();
LABEL_16:

      return;
    }

    v38 = v76;
    (*v63)(v76, v37, v14);
    v39 = v64;
    if (!*(v64 + 16) || (v40 = sub_10003E994(v38), (v41 & 1) == 0))
    {
      v36(v38, v14);
      sub_100026028(v81, type metadata accessor for CRLBoardItemPeerSyncUpdate);

      goto LABEL_15;
    }

    v42 = *(*(v39 + 56) + 8 * v40);
    v43 = *(*v42 + 120);
    swift_beginAccess();

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v44 = v36;
    if (*((*(v42 + v43) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v42 + v43) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v60 = *((*(v42 + v43) & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    swift_weakAssign();
    v45 = v83;
    if (sub_10079C3B4(v42 + *(*v42 + 104), v83))
    {
      break;
    }

    v23 = v65;
    v44(v76, v14);
    sub_100026028(v81, type metadata accessor for CRLBoardItemPeerSyncUpdate);
    a2 = v42;
  }

  v46 = v45[2];
  if (v46)
  {
    v47 = sub_100B39BF4(v45[2], 0);
    sub_100B3AA50(v82, &v47[(*(v62 + 80) + 32) & ~*(v62 + 80)], v46, v45);
    v49 = v48;
    v50 = v82[0];
    v78 = v82[3];
    v79 = v82[1];
    v74 = v82[4];

    sub_100035F90(v50);
    if (v49 == v46)
    {
      v14 = v71;
      goto LABEL_21;
    }

LABEL_32:
    __break(1u);
LABEL_33:
    v59 = _CocoaArrayWrapper.endIndex.getter();
    if (v59 < v46)
    {
      goto LABEL_34;
    }

LABEL_27:
    sub_10067D334(v46, v59);
    swift_endAccess();

    v44(v76, v71);
    sub_100026028(v81, type metadata accessor for CRLBoardItemPeerSyncUpdate);
    return;
  }

  v47 = _swiftEmptyArrayStorage;
LABEL_21:
  v51 = v61;
  v82[0] = v47;
  v46 = 0;
  sub_100DD3D34(v82);
  if (!*(v82[0] + 16))
  {
    __break(1u);
    goto LABEL_32;
  }

  v77(v51, v82[0] + ((*(v62 + 80) + 32) & ~*(v62 + 80)), v14);

  if (!*(v39 + 16) || (v52 = sub_10003E994(v51), (v53 & 1) == 0))
  {
    v44(v51, v14);

    v44(v76, v14);
LABEL_29:
    sub_100026028(v81, type metadata accessor for CRLBoardItemPeerSyncUpdate);

    return;
  }

  v54 = *(*(v39 + 56) + 8 * v52);

  v44(v51, v14);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {

    v44(v76, v14);
    goto LABEL_29;
  }

  v56 = Strong;
  swift_weakAssign();
  v57 = *(*v56 + 120);
  swift_beginAccess();

  v46 = sub_100E9875C((v56 + v57), v54, sub_10113E260);

  v58 = *(v56 + v57);
  if (v58 >> 62)
  {
    goto LABEL_33;
  }

  v59 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v59 >= v46)
  {
    goto LABEL_27;
  }

LABEL_34:
  __break(1u);

  __break(1u);
}

void sub_100DD3D34(uint64_t *a1)
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10113DE5C(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_100E8E01C(v5);
  *a1 = v3;
}

Swift::Int sub_100DD3DDC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10113E180(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_100E8E148(v5);
  *a1 = v2;
  return result;
}

id sub_100DD3E48(unint64_t a1)
{
  result = sub_100BD964C(_swiftEmptyArrayStorage);
  v8 = result;
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; result = v7)
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        result = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        result = *(a1 + 8 * j + 32);
      }

      v5 = result;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_100DD3F64(&v8, result);

      if (v6 == i)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    v7 = result;
    i = _CocoaArrayWrapper.endIndex.getter();
  }

  return result;
}

void sub_100DD3F64(void *a1, id a2)
{
  v4 = [a2 recordID];
  v5 = [v4 zoneID];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *a1;
  v21 = *a1;
  v8 = sub_1007C8A78(v5);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v9;
  if (v7[3] < v13)
  {
    sub_100A97DB0(v13, isUniquelyReferenced_nonNull_native);
    v7 = v21;
    v8 = sub_1007C8A78(v5);
    if ((v14 & 1) == (v15 & 1))
    {
      goto LABEL_6;
    }

    sub_100006370(0, &qword_1019F69D0, CKRecordZoneID_ptr);
    v8 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (isUniquelyReferenced_nonNull_native)
  {
LABEL_6:
    *a1 = v7;
    if (v14)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v20 = v8;
  sub_100AACAC0();
  v8 = v20;
  v7 = v21;
  *a1 = v21;
  if ((v14 & 1) == 0)
  {
LABEL_7:
    v16 = v8;
    sub_100AB0360();
    v17 = v5;
    v8 = v16;
  }

LABEL_8:
  v18 = (v7[7] + 8 * v8);
  v19 = a2;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_11:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

char *sub_100DD4114(uint64_t a1)
{
  result = sub_100BD87D4(_swiftEmptyArrayStorage);
  v9 = result;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 48);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      v8[0] = *(v4 - 2);
      v8[1] = v5;
      v8[2] = v6;
      v7 = v8[0];

      sub_100ADEC8C(&v9, v8);

      v4 += 3;
      --v3;
    }

    while (v3);
    return v9;
  }

  return result;
}

void sub_100DD41D8(uint64_t a1, char a2)
{
  if (qword_1019F2258 != -1)
  {
    swift_once();
  }

  v5 = static OS_os_log.boardStore;
  v6 = static os_log_type_t.default.getter();
  sub_100005404(v5, &_mh_execute_header, v6, "Writing a specific collection of cloudkit changes into persisted caches", 71, 2, _swiftEmptyArrayStorage);
  v7 = *&v2[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_100EA552C;
  *(v9 + 24) = v8;
  v13[4] = sub_10002AAE4;
  v13[5] = v9;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = *"";
  v13[2] = sub_10002AAB8;
  v13[3] = &unk_1018A6838;
  v10 = _Block_copy(v13);
  v11 = v2;

  dispatch_sync(v7, v10);
  _Block_release(v10);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

double sub_100DD4808(uint64_t a1)
{
  v2 = sub_1005B981C(&unk_101A050F0, &unk_10146CFE0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v10 - v5;
  (*(v3 + 16))(&v10 - v5, a1, v2, v4);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  sub_10001E534(sub_100EA6324, v8, &OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue, &unk_1018A65F0, sub_10001E85C, &unk_1018A6608);

  return result;
}

uint64_t sub_100DD4AF0(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return _swift_task_switch(sub_100DD4B68, 0, 0);
}

uint64_t sub_100DD4B68()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_100DD4C5C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v3, 0, 0, 0x617461446E65706FLL, 0xEE00292865736162, sub_100EA52C4, v2, &type metadata for () + 8);
}

uint64_t sub_100DD4C5C()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_100DD4DF4;
  }

  else
  {

    v2 = sub_100DD4D78;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100DD4D78()
{
  v1 = *(v0 + 24);

  (*(v1 + 16))(v1, 0);
  _Block_release(*(v0 + 24));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100DD4DF4()
{
  v1 = *(v0 + 24);

  v2 = _convertErrorToNSError(_:)();

  (*(v1 + 16))(v1, v2);

  _Block_release(*(v0 + 24));
  v3 = *(v0 + 8);

  return v3();
}

void sub_100DD4EA0(int a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *&v1[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue];
  *v8 = v9;
  v10 = *(v5 + 104);
  v40 = enum case for DispatchPredicate.onQueue(_:);
  v10(v8, v6);
  v11 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v12 = *(v5 + 8);
  v12(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_8;
  }

  v37 = a1;
  v39 = v10;
  v13 = *&v2[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManagerLock];
  os_unfair_lock_lock(*(v13 + 16));
  v14 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager;
  v15 = *&v2[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetManager];
  v38 = v12;
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v36 = type metadata accessor for CRLAssetManager();
    v17 = objc_allocWithZone(v36);
    v35 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_store;
    swift_unknownObjectWeakInit();
    v18 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_lock;
    type metadata accessor for CRLUnfairLock();
    v19 = swift_allocObject();
    v34 = v2;
    v20 = swift_slowAlloc();
    *v20 = 0;
    *(v19 + 16) = v20;
    atomic_thread_fence(memory_order_acq_rel);
    *&v17[v18] = v19;
    *&v17[OBJC_IVAR____TtC8Freeform15CRLAssetManager_assets] = _swiftEmptyDictionarySingleton;
    v21 = OBJC_IVAR____TtC8Freeform15CRLAssetManager_owners;
    *&v17[v21] = [objc_opt_self() mapTableWithKeyOptions:517 valueOptions:0];
    *&v17[OBJC_IVAR____TtC8Freeform15CRLAssetManager_garbageCollectionWorkItem] = 0;
    v22 = v34;
    swift_unknownObjectWeakAssign();
    v41.receiver = v17;
    v41.super_class = v36;
    v23 = objc_msgSendSuper2(&v41, "init");

    v24 = *&v2[v14];
    *&v2[v14] = v23;
    v16 = v23;

    v15 = 0;
  }

  v25 = *(v13 + 16);
  v26 = v15;
  os_unfair_lock_unlock(v25);
  sub_100C7FC50();

  if (v37)
  {
    sub_100A78F4C();
  }

  v12 = v38;
  v10 = v39;
  if (qword_1019F2258 != -1)
  {
    goto LABEL_11;
  }

LABEL_8:
  v27 = static OS_os_log.boardStore;
  v28 = static os_log_type_t.default.getter();
  sub_100005404(v27, &_mh_execute_header, v28, "Closing the board database", 26, 2, _swiftEmptyArrayStorage);
  v29 = *&v2[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_database];
  v30 = *(v29 + 32);
  *v8 = v30;
  (v10)(v8, v40, v4);
  v31 = v30;
  LOBYTE(v30) = _dispatchPreconditionTest(_:)();
  v12(v8, v4);
  if (v30)
  {

    sub_10089CCDC(v32, v29);

    swift_beginAccess();
    *(v29 + 16) = 0;
  }

  else
  {
    __break(1u);
  }
}

double sub_100DD52FC(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A15A30, &qword_1014B6A70);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v10 - v5;
  (*(v3 + 16))(&v10 - v5, a1, v2, v4);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  sub_10001E534(sub_1008A1948, v8, &OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue, &unk_1018A64D8, sub_100EA51D4, &unk_1018A64F0);

  return result;
}

uint64_t sub_100DD55E4(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return _swift_task_switch(sub_100DD565C, 0, 0);
}

uint64_t sub_100DD565C()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_100DD5750;

  return withCheckedContinuation<A>(isolation:function:_:)(v3, 0, 0, 0x74614465736F6C63, 0xEF29286573616261, sub_100EA51CC, v2, &type metadata for () + 8);
}

uint64_t sub_100DD5750()
{

  return _swift_task_switch(sub_100DD5868, 0, 0);
}

uint64_t sub_100DD5868()
{
  v1 = *(v0 + 24);

  v1[2](v1);
  _Block_release(v1);
  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_100DD58E0@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100022E48(*a1);
  *a2 = result;
  return result;
}

void sub_100DD596C()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = (v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v6 = v7;
  v8 = enum case for DispatchPredicate.onQueue(_:);
  v63 = *(v3 + 104);
  (v63)(v6, enum case for DispatchPredicate.onQueue(_:), v2, v4);
  v61 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v62 = *(v3 + 8);
  (v62)(v6, v2);
  if (v7)
  {
    if (qword_1019F2258 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v9 = static OS_os_log.boardStore;
  v10 = static os_log_type_t.default.getter();
  sub_100005404(v9, &_mh_execute_header, v10, "Creating schema for a new board database", 40, 2, _swiftEmptyArrayStorage);
  v11 = sub_100022484();
  if (v1)
  {
    return;
  }

  v12 = v11;
  v58 = v8;
  v59 = 0;
  v60 = v0;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 32) = v12;
  *(inited + 16) = xmmword_10146BDE0;
  *(inited + 56) = &type metadata for Int;
  *(inited + 64) = &protocol witness table for Int;
  *(inited + 96) = &type metadata for Int;
  *(inited + 104) = &protocol witness table for Int;
  *(inited + 72) = 1;
  if (!v12)
  {
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v14 = *(v60 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_database);
    type metadata accessor for SQLTransaction();
    v15 = swift_initStackObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = 0;

    v16 = v59;
    sub_10003080C();
    if (v16)
    {

      return;
    }

    v57[1] = v15;
    v59 = v14;
    sub_100DDA4C4();
    sub_100DDAD7C();
    sub_100DDB3B4();
    sub_100DDBD58();
    sub_100DDC508();
    sub_100DDC9E4();
    sub_100DDCECC();
    sub_100DDD654();
    sub_100DDDBE0();
    v17 = 0;
    v18 = v61;
    *v6 = v61;
    (v63)(v6, v58, v2);
    v19 = v18;
    v20 = _dispatchPreconditionTest(_:)();
    (v62)(v6, v2);
    if (v20)
    {
      sub_100A744DC(1);
      sub_100034410();

      return;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v63 = (inited + 32);
  v21 = inited;
  v61 = objc_opt_self();
  LODWORD(v6) = [v61 _atomicIncrementAssertCount];
  v64 = [objc_allocWithZone(NSString) init];
  v62 = v21;
  sub_100604538(v21, &v64, "Current schema version %{public}d before migration to %{public}d is unexpected", 78, 2u);
  StaticString.description.getter("_createDatabaseSchema()", 23, 2);
  v14 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
  v22 = String._bridgeToObjectiveC()();

  v23 = [v22 lastPathComponent];

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v24;

  if (qword_1019F20A0 != -1)
  {
LABEL_43:
    swift_once();
  }

  v25 = static OS_os_log.crlAssert;
  v26 = swift_initStackObject();
  *(v26 + 16) = xmmword_10146CA70;
  *(v26 + 56) = &type metadata for Int32;
  *(v26 + 64) = &protocol witness table for Int32;
  *(v26 + 32) = v6;
  v27 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(v26 + 96) = v27;
  v28 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
  *(v26 + 104) = v28;
  *(v26 + 72) = v14;
  *(v26 + 136) = &type metadata for String;
  v29 = sub_1000053B0();
  *(v26 + 112) = v17;
  *(v26 + 120) = v20;
  *(v26 + 176) = &type metadata for UInt;
  *(v26 + 184) = &protocol witness table for UInt;
  *(v26 + 144) = v29;
  *(v26 + 152) = 746;
  v30 = v64;
  *(v26 + 216) = v27;
  *(v26 + 224) = v28;
  *(v26 + 192) = v30;
  v31 = v14;
  v32 = v30;
  v33 = static os_log_type_t.error.getter();
  sub_100005404(v25, &_mh_execute_header, v33, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v26);

  v34 = static os_log_type_t.error.getter();
  v35 = v62;
  sub_100005404(v25, &_mh_execute_header, v34, "Current schema version %{public}d before migration to %{public}d is unexpected", 78, 2, v62);

  sub_10063DF98(v35, "Current schema version %{public}d before migration to %{public}d is unexpected");
  type metadata accessor for __VaListBuilder();
  v36 = swift_allocObject();
  v36[2] = 8;
  v36[3] = 0;
  v17 = v36 + 3;
  v36[4] = 0;
  v36[5] = 0;
  v14 = v35[2];
  if (!v14)
  {
    goto LABEL_45;
  }

  v37 = 0;
  while (1)
  {
    v38 = &v63[40 * v37];
    v6 = *(v38 + 4);
    v20 = sub_100020E58(v38, *(v38 + 3));
    v39 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v40 = *v17;
    v41 = *(v39 + 16);
    v42 = __OFADD__(*v17, v41);
    v43 = *v17 + v41;
    if (v42)
    {
      goto LABEL_39;
    }

    v6 = v39;
    v20 = v36[4];
    if (v20 >= v43)
    {
      goto LABEL_31;
    }

    if (v20 + 0x4000000000000000 < 0)
    {
      goto LABEL_41;
    }

    v44 = v36[5];
    if (2 * v20 > v43)
    {
      v43 = 2 * v20;
    }

    v36[4] = v43;
    if ((v43 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_42;
    }

    v45 = swift_slowAlloc();
    v36[5] = v45;
    if (v44)
    {
      if (v45 != v44 || v45 >= &v44[8 * v40])
      {
        memmove(v45, v44, 8 * v40);
      }

      v20 = v36;
      __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_31:
      v45 = v36[5];
    }

    if (!v45)
    {
      break;
    }

    v47 = v6[2];
    if (v47)
    {
      v48 = v6 + 4;
      v49 = *v17;
      while (1)
      {
        v50 = *v48++;
        *&v45[8 * v49] = v50;
        v49 = *v17 + 1;
        if (__OFADD__(*v17, 1))
        {
          break;
        }

        *v17 = v49;
        if (!--v47)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

LABEL_16:

    if (++v37 == v14)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_45:
  v51 = __VaListBuilder.va_list()();
  StaticString.description.getter("_createDatabaseSchema()", 23, 2);
  v52 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
  v53 = String._bridgeToObjectiveC()();

  StaticString.description.getter("Current schema version %{public}d before migration to %{public}d is unexpected", 78, 2);
  v54 = String._bridgeToObjectiveC()();

  [v61 handleFailureInFunction:v52 file:v53 lineNumber:746 isFatal:1 format:v54 args:v51];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v55, v56);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100DD61EC()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = (&v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v7 = v8;
  v9 = enum case for DispatchPredicate.onQueue(_:);
  v66 = *(v4 + 104);
  (v66)(v7, enum case for DispatchPredicate.onQueue(_:), v3, v5);
  v64 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v65 = *(v4 + 8);
  (v65)(v7, v3);
  if (v8)
  {
    v63 = v9;
    if (qword_1019F2258 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v10 = static OS_os_log.boardStore;
  v11 = static os_log_type_t.default.getter();
  sub_100005404(v10, &_mh_execute_header, v11, "Migrating database to minRequiredVersionForGoodEnoughFidelity schema version", 76, 2, _swiftEmptyArrayStorage);
  v12 = sub_100022484();
  if (v1)
  {
    return;
  }

  v13 = v12;
  v62 = 0;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  *(inited + 32) = v13;
  v15 = (inited + 32);
  *(inited + 56) = &type metadata for Int;
  *(inited + 64) = &protocol witness table for Int;
  *(inited + 96) = &type metadata for Int;
  *(inited + 104) = &protocol witness table for Int;
  *(inited + 72) = 2;
  if (v13 != 1)
  {
LABEL_15:
    v66 = v15;
    v21 = inited;
    v64 = objc_opt_self();
    LODWORD(v22) = [v64 _atomicIncrementAssertCount];
    v67 = [objc_allocWithZone(NSString) init];
    v65 = v21;
    sub_100604538(v21, &v67, "Current schema version %{public}d before migration to %{public}d is unexpected", 78, 2u);
    StaticString.description.getter("_migrateToMinRequiredVersionForGoodEnoughFidelitySchema()", 57, 2);
    v23 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
    v24 = String._bridgeToObjectiveC()();

    v25 = [v24 lastPathComponent];

    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    if (qword_1019F20A0 != -1)
    {
LABEL_44:
      swift_once();
    }

    v29 = static OS_os_log.crlAssert;
    v30 = swift_initStackObject();
    *(v30 + 16) = xmmword_10146CA70;
    *(v30 + 56) = &type metadata for Int32;
    *(v30 + 64) = &protocol witness table for Int32;
    *(v30 + 32) = v22;
    v31 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(v30 + 96) = v31;
    v32 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
    *(v30 + 104) = v32;
    *(v30 + 72) = v23;
    *(v30 + 136) = &type metadata for String;
    v33 = sub_1000053B0();
    *(v30 + 112) = v26;
    *(v30 + 120) = v28;
    *(v30 + 176) = &type metadata for UInt;
    *(v30 + 184) = &protocol witness table for UInt;
    *(v30 + 144) = v33;
    *(v30 + 152) = 639;
    v34 = v67;
    *(v30 + 216) = v31;
    *(v30 + 224) = v32;
    *(v30 + 192) = v34;
    v35 = v23;
    v36 = v34;
    v37 = static os_log_type_t.error.getter();
    sub_100005404(v29, &_mh_execute_header, v37, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v30);

    v38 = static os_log_type_t.error.getter();
    v39 = v65;
    sub_100005404(v29, &_mh_execute_header, v38, "Current schema version %{public}d before migration to %{public}d is unexpected", 78, 2, v65);

    sub_10063DF98(v39, "Current schema version %{public}d before migration to %{public}d is unexpected");
    type metadata accessor for __VaListBuilder();
    v28 = swift_allocObject();
    v28[2] = 8;
    v28[3] = 0;
    v26 = v28 + 3;
    v28[4] = 0;
    v28[5] = 0;
    v23 = v39[2];
    if (!v23)
    {
LABEL_46:
      v55 = __VaListBuilder.va_list()();
      StaticString.description.getter("_migrateToMinRequiredVersionForGoodEnoughFidelitySchema()", 57, 2);
      v56 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
      v57 = String._bridgeToObjectiveC()();

      StaticString.description.getter("Current schema version %{public}d before migration to %{public}d is unexpected", 78, 2);
      v58 = String._bridgeToObjectiveC()();

      [v64 handleFailureInFunction:v56 file:v57 lineNumber:639 isFatal:1 format:v58 args:v55];

      SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v59, v60);
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }

    v40 = 0;
    while (1)
    {
      v41 = &v66[40 * v40];
      v22 = *(v41 + 4);
      sub_100020E58(v41, *(v41 + 3));
      v42 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v43 = *v26;
      v44 = *(v42 + 16);
      v45 = __OFADD__(*v26, v44);
      v46 = *v26 + v44;
      if (v45)
      {
        goto LABEL_41;
      }

      v22 = v42;
      v47 = v28[4];
      if (v47 >= v46)
      {
        goto LABEL_33;
      }

      if (v47 + 0x4000000000000000 < 0)
      {
        goto LABEL_42;
      }

      v48 = v28[5];
      if (2 * v47 > v46)
      {
        v46 = 2 * v47;
      }

      v28[4] = v46;
      if ((v46 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_43;
      }

      v49 = swift_slowAlloc();
      v28[5] = v49;
      if (v48)
      {
        break;
      }

LABEL_34:
      if (!v49)
      {
        __break(1u);
        goto LABEL_46;
      }

      v51 = *(v22 + 16);
      if (v51)
      {
        v52 = (v22 + 32);
        v53 = *v26;
        while (1)
        {
          v54 = *v52++;
          *&v49[8 * v53] = v54;
          v53 = *v26 + 1;
          if (__OFADD__(*v26, 1))
          {
            break;
          }

          *v26 = v53;
          if (!--v51)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

LABEL_18:

      if (++v40 == v23)
      {
        goto LABEL_46;
      }
    }

    if (v49 != v48 || v49 >= &v48[8 * v43])
    {
      memmove(v49, v48, 8 * v43);
    }

    __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_33:
    v49 = v28[5];
    goto LABEL_34;
  }

  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v15 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_database);
  type metadata accessor for SQLTransaction();
  v16 = swift_initStackObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = 0;

  v17 = v62;
  sub_10003080C();
  if (!v17)
  {
    sub_100DD9180();
    sub_100DD964C();
    sub_100DD9B24();
    sub_100DD9FF4();
    v62 = 0;
    v18 = v64;
    *v7 = v64;
    (v66)(v7, v63, v3);
    v19 = v18;
    LOBYTE(v18) = _dispatchPreconditionTest(_:)();
    inited = (v65)(v7, v3);
    if (v18)
    {
      v20 = v62;
      sub_100A744DC(2);
      if (v20)
      {
        sub_10089C46C();
        swift_willThrow();
      }

      else
      {
        sub_100034410();
      }

      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_9:
}

void sub_100DD6A3C()
{
  v2 = v1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = (&v144 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v7 = v8;
  v9 = *(v4 + 104);
  v157 = enum case for DispatchPredicate.onQueue(_:);
  v158 = v9;
  v159 = v4 + 104;
  (v9)(v7, v5);
  v10 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v11 = *(v4 + 8);
  v156 = v3;
  v160 = v11;
  v161 = v4 + 8;
  v11(v7, v3);
  if ((v8 & 1) == 0)
  {
    goto LABEL_23;
  }

  if (qword_1019F2258 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v12 = static OS_os_log.boardStore;
    v13 = static os_log_type_t.default.getter();
    sub_100005404(v12, &_mh_execute_header, v13, "Migrating database to minRequiredVersionForFullFidelity schema version", 70, 2, _swiftEmptyArrayStorage);
    v14 = sub_100022484();
    if (v2)
    {
      return;
    }

    v15 = v14;
    v147 = v10;
    v154 = v0;
    v146 = sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    v144 = xmmword_10146BDE0;
    *(inited + 16) = xmmword_10146BDE0;
    *(inited + 32) = v15;
    v17 = inited + 32;
    *(inited + 56) = &type metadata for Int;
    *(inited + 64) = &protocol witness table for Int;
    *(inited + 96) = &type metadata for Int;
    *(inited + 104) = &protocol witness table for Int;
    *(inited + 72) = 3;
    if (v15 != 2)
    {
      v75 = inited;
      v158 = objc_opt_self();
      LODWORD(v74) = [v158 _atomicIncrementAssertCount];
      v163 = [objc_allocWithZone(NSString) init];
      v161 = v75;
      sub_100604538(v75, &v163, "Current schema version %{public}d before migration to %{public}d is unexpected", 78, 2u);
      StaticString.description.getter("_migrateToMinRequiredVersionForFullFidelitySchema()", 51, 2);
      v160 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
      v76 = String._bridgeToObjectiveC()();

      v77 = [v76 lastPathComponent];

      v159 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v79 = v78;

      if (qword_1019F20A0 != -1)
      {
        goto LABEL_82;
      }

      while (1)
      {
        v80 = static OS_os_log.crlAssert;
        v81 = swift_initStackObject();
        *(v81 + 16) = xmmword_10146CA70;
        *(v81 + 56) = &type metadata for Int32;
        *(v81 + 64) = &protocol witness table for Int32;
        *(v81 + 32) = v74;
        v82 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
        *(v81 + 96) = v82;
        v83 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
        *(v81 + 104) = v83;
        v84 = v160;
        *(v81 + 72) = v160;
        *(v81 + 136) = &type metadata for String;
        v85 = sub_1000053B0();
        *(v81 + 112) = v159;
        *(v81 + 120) = v79;
        *(v81 + 176) = &type metadata for UInt;
        *(v81 + 184) = &protocol witness table for UInt;
        *(v81 + 144) = v85;
        *(v81 + 152) = 595;
        v86 = v163;
        *(v81 + 216) = v82;
        *(v81 + 224) = v83;
        *(v81 + 192) = v86;
        v87 = v84;
        v88 = v86;
        v89 = static os_log_type_t.error.getter();
        sub_100005404(v80, &_mh_execute_header, v89, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v81);

        v90 = static os_log_type_t.error.getter();
        v91 = v80;
        v92 = v161;
        sub_100005404(v91, &_mh_execute_header, v90, "Current schema version %{public}d before migration to %{public}d is unexpected", 78, 2, v161);

        sub_10063DF98(v92, "Current schema version %{public}d before migration to %{public}d is unexpected");
        type metadata accessor for __VaListBuilder();
        v74 = swift_allocObject();
        v74[2] = 8;
        v74[3] = 0;
        v93 = v74 + 3;
        v74[4] = 0;
        v74[5] = 0;
        v161 = *(v92 + 16);
        if (!v161)
        {
          goto LABEL_89;
        }

        v79 = 0;
        while (1)
        {
          v73 = sub_100020E58((v17 + 40 * v79), *(v17 + 40 * v79 + 24));
          v94 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
          v95 = *v93;
          v96 = *(v94 + 16);
          v97 = __OFADD__(*v93, v96);
          v98 = *v93 + v96;
          if (v97)
          {
            goto LABEL_53;
          }

          v99 = v94;
          v73 = v74[4];
          if (v73 >= v98)
          {
            goto LABEL_45;
          }

          if (v73 + 0x4000000000000000 < 0)
          {
            goto LABEL_54;
          }

          v100 = v74[5];
          if (2 * v73 > v98)
          {
            v98 = 2 * v73;
          }

          v74[4] = v98;
          if ((v98 - 0x1000000000000000) >> 61 != 7)
          {
            goto LABEL_55;
          }

          v101 = swift_slowAlloc();
          v74[5] = v101;
          if (v100)
          {
            if (v101 != v100 || v101 >= &v100[8 * v95])
            {
              memmove(v101, v100, 8 * v95);
            }

            v73 = v74;
            __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_45:
            v101 = v74[5];
          }

          if (!v101)
          {
            goto LABEL_86;
          }

          v103 = *(v99 + 16);
          if (v103)
          {
            break;
          }

LABEL_30:

          if (++v79 == v161)
          {
            goto LABEL_89;
          }
        }

        v104 = (v99 + 32);
        v105 = *v93;
        while (1)
        {
          v106 = *v104++;
          *&v101[8 * v105] = v106;
          v105 = *v93 + 1;
          if (__OFADD__(*v93, 1))
          {
            break;
          }

          *v93 = v105;
          if (!--v103)
          {
            goto LABEL_30;
          }
        }

        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        v158 = objc_opt_self();
        LODWORD(v95) = [v158 _atomicIncrementAssertCount];
        v163 = [objc_allocWithZone(NSString) init];
        v161 = v73;
        sub_100604538(v73, &v163, "Queried schema version %{public}d after migration to %{public}d is unexpected", 77, 2u);
        StaticString.description.getter("_migrateToMinRequiredVersionForFullFidelitySchema()", 51, 2);
        v160 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
        v107 = String._bridgeToObjectiveC()();

        v108 = [v107 lastPathComponent];

        v159 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v79 = v109;

        if (qword_1019F20A0 != -1)
        {
          goto LABEL_87;
        }

        while (2)
        {
          v110 = static OS_os_log.crlAssert;
          v111 = swift_initStackObject();
          *(v111 + 16) = xmmword_10146CA70;
          *(v111 + 56) = &type metadata for Int32;
          *(v111 + 64) = &protocol witness table for Int32;
          *(v111 + 32) = v95;
          v112 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
          *(v111 + 96) = v112;
          v113 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
          *(v111 + 104) = v113;
          v114 = v160;
          *(v111 + 72) = v160;
          *(v111 + 136) = &type metadata for String;
          v115 = sub_1000053B0();
          *(v111 + 112) = v159;
          *(v111 + 120) = v79;
          *(v111 + 176) = &type metadata for UInt;
          *(v111 + 184) = &protocol witness table for UInt;
          *(v111 + 144) = v115;
          *(v111 + 152) = 629;
          v116 = v163;
          *(v111 + 216) = v112;
          *(v111 + 224) = v113;
          *(v111 + 192) = v116;
          v117 = v114;
          v118 = v116;
          v119 = static os_log_type_t.error.getter();
          sub_100005404(v110, &_mh_execute_header, v119, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v111);

          v120 = static os_log_type_t.error.getter();
          v121 = v110;
          v122 = v161;
          sub_100005404(v121, &_mh_execute_header, v120, "Queried schema version %{public}d after migration to %{public}d is unexpected", 77, 2, v161);

          sub_10063DF98(v122, "Queried schema version %{public}d after migration to %{public}d is unexpected");
          type metadata accessor for __VaListBuilder();
          v95 = swift_allocObject();
          *(v95 + 16) = 8;
          *(v95 + 24) = 0;
          v123 = (v95 + 24);
          *(v95 + 32) = 0;
          *(v95 + 40) = 0;
          v161 = *(v122 + 16);
          if (!v161)
          {
            while (1)
            {
LABEL_91:
              v142 = __VaListBuilder.va_list()();
              StaticString.description.getter("_migrateToMinRequiredVersionForFullFidelitySchema()", 51, 2);
              v143 = String._bridgeToObjectiveC()();

              StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
              v138 = String._bridgeToObjectiveC()();

              StaticString.description.getter("Queried schema version %{public}d after migration to %{public}d is unexpected", 77, 2);
              v139 = String._bridgeToObjectiveC()();

              [v158 handleFailureInFunction:v143 file:v138 lineNumber:629 isFatal:1 format:v139 args:v142];

LABEL_90:
              SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v140, v141);
              _assertionFailure(_:_:file:line:flags:)();
              __break(1u);
            }
          }

          v79 = 0;
LABEL_60:
          sub_100020E58(&v74[5 * v79], v74[5 * v79 + 3]);
          v124 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
          v17 = *v123;
          v125 = *(v124 + 16);
          v97 = __OFADD__(*v123, v125);
          v126 = *v123 + v125;
          if (v97)
          {
            __break(1u);
LABEL_84:
            __break(1u);
LABEL_85:
            __break(1u);
LABEL_86:
            __break(1u);
LABEL_87:
            swift_once();
            continue;
          }

          break;
        }

        v127 = v124;
        v128 = *(v95 + 32);
        if (v128 >= v126)
        {
          goto LABEL_74;
        }

        if (v128 + 0x4000000000000000 < 0)
        {
          goto LABEL_84;
        }

        v129 = *(v95 + 40);
        if (2 * v128 > v126)
        {
          v126 = 2 * v128;
        }

        *(v95 + 32) = v126;
        if ((v126 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_85;
        }

        v130 = swift_slowAlloc();
        *(v95 + 40) = v130;
        if (v129)
        {
          if (v130 != v129 || v130 >= &v129[8 * v17])
          {
            memmove(v130, v129, 8 * v17);
          }

          __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_74:
          v130 = *(v95 + 40);
        }

        if (!v130)
        {
          __break(1u);
LABEL_89:
          v136 = __VaListBuilder.va_list()();
          StaticString.description.getter("_migrateToMinRequiredVersionForFullFidelitySchema()", 51, 2);
          v137 = String._bridgeToObjectiveC()();

          StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
          v138 = String._bridgeToObjectiveC()();

          StaticString.description.getter("Current schema version %{public}d before migration to %{public}d is unexpected", 78, 2);
          v139 = String._bridgeToObjectiveC()();

          [v158 handleFailureInFunction:v137 file:v138 lineNumber:595 isFatal:1 format:v139 args:v136];

          goto LABEL_90;
        }

        v132 = *(v127 + 16);
        if (!v132)
        {
LABEL_59:

          if (++v79 == v161)
          {
            goto LABEL_91;
          }

          goto LABEL_60;
        }

        v133 = (v127 + 32);
        v134 = *v123;
        while (1)
        {
          v135 = *v133++;
          *&v130[8 * v134] = v135;
          v134 = *v123 + 1;
          if (__OFADD__(*v123, 1))
          {
            break;
          }

          *v123 = v134;
          if (!--v132)
          {
            goto LABEL_59;
          }
        }

        __break(1u);
LABEL_82:
        swift_once();
      }
    }

    swift_setDeallocating();
    v145 = sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v163 = 0;
    v164 = 0xE000000000000000;
    _StringGuts.grow(_:)(57);
    v18._object = 0xEC00000020454C42;
    v18._countAndFlagsBits = 0x4154205245544C41;
    String.append(_:)(v18);
    v19._countAndFlagsBits = 0x736472616F62;
    v19._object = 0xE600000000000000;
    String.append(_:)(v19);
    v20._countAndFlagsBits = 0x4C4F432044444120;
    v20._object = 0xEC000000204E4D55;
    String.append(_:)(v20);
    v21._countAndFlagsBits = 0xD000000000000026;
    v21._object = 0x80000001015A33F0;
    String.append(_:)(v21);
    v22._object = 0x80000001015A8F90;
    v22._countAndFlagsBits = 0xD00000000000001ALL;
    String.append(_:)(v22);
    v152 = 0x1000000000000;
    v162[0] = 0x1000000000000;
    v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v23);

    v24._countAndFlagsBits = 59;
    v24._object = 0xE100000000000000;
    String.append(_:)(v24);
    v153 = v163;
    v155 = v164;
    v163 = 0;
    v164 = 0xE000000000000000;
    _StringGuts.grow(_:)(57);
    v25._countAndFlagsBits = 0x4154205245544C41;
    v25._object = 0xEC00000020454C42;
    String.append(_:)(v25);
    v26._countAndFlagsBits = 0x74695F6472616F62;
    v26._object = 0xEB00000000736D65;
    String.append(_:)(v26);
    v27._countAndFlagsBits = 0x4C4F432044444120;
    v27._object = 0xEC000000204E4D55;
    String.append(_:)(v27);
    v28._countAndFlagsBits = 0xD000000000000026;
    v28._object = 0x80000001015A33F0;
    String.append(_:)(v28);
    v29._object = 0x80000001015A8F90;
    v29._countAndFlagsBits = 0xD00000000000001ALL;
    String.append(_:)(v29);
    v162[0] = 0x1000000000000;
    v30._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v30);

    v31._countAndFlagsBits = 59;
    v31._object = 0xE100000000000000;
    String.append(_:)(v31);
    v150 = v164;
    v151 = v163;
    v163 = 0;
    v164 = 0xE000000000000000;
    _StringGuts.grow(_:)(57);
    v32._countAndFlagsBits = 0x4154205245544C41;
    v32._object = 0xEC00000020454C42;
    String.append(_:)(v32);
    v33._countAndFlagsBits = 0xD000000000000018;
    v33._object = 0x80000001015A31A0;
    String.append(_:)(v33);
    v34._countAndFlagsBits = 0x4C4F432044444120;
    v34._object = 0xEC000000204E4D55;
    String.append(_:)(v34);
    v35._countAndFlagsBits = 0xD000000000000026;
    v35._object = 0x80000001015A33F0;
    String.append(_:)(v35);
    v36._object = 0x80000001015A8F90;
    v36._countAndFlagsBits = 0xD00000000000001ALL;
    String.append(_:)(v36);
    v162[0] = 0x1000000000000;
    v37._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v37);

    v38._countAndFlagsBits = 59;
    v38._object = 0xE100000000000000;
    String.append(_:)(v38);
    v148 = v164;
    v149 = v163;
    v163 = 0;
    v164 = 0xE000000000000000;
    _StringGuts.grow(_:)(57);
    v39._countAndFlagsBits = 0x4154205245544C41;
    v39._object = 0xEC00000020454C42;
    String.append(_:)(v39);
    v40._countAndFlagsBits = 0x6D5F736472616F62;
    v40._object = 0xEF61746164617465;
    String.append(_:)(v40);
    v41._countAndFlagsBits = 0x4C4F432044444120;
    v41._object = 0xEC000000204E4D55;
    String.append(_:)(v41);
    v42._countAndFlagsBits = 0xD000000000000026;
    v42._object = 0x80000001015A33F0;
    String.append(_:)(v42);
    v43._object = 0x80000001015A8F90;
    v43._countAndFlagsBits = 0xD00000000000001ALL;
    String.append(_:)(v43);
    v162[0] = v152;
    v44._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v44);

    v45._countAndFlagsBits = 59;
    v45._object = 0xE100000000000000;
    String.append(_:)(v45);
    v46 = v163;
    v47 = v164;
    sub_1005B981C(&unk_1019F61D0, qword_10146E9A0);
    v48 = swift_initStackObject();
    v49 = v154;
    *(v48 + 32) = v153;
    *(v48 + 16) = xmmword_10146D2A0;
    v50 = v150;
    v51 = v151;
    *(v48 + 40) = v155;
    *(v48 + 48) = v51;
    *(v48 + 56) = v50;
    v52 = v148;
    *(v48 + 64) = v149;
    *(v48 + 72) = v52;
    *(v48 + 80) = v46;
    *(v48 + 88) = v47;
    v2 = *(v49 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_database);
    type metadata accessor for SQLTransaction();
    v53 = swift_initStackObject();
    *(v53 + 16) = v2;
    *(v53 + 24) = 0;

    sub_10003080C();
    v153 = v53;
    v155 = type metadata accessor for SQLiteStatement();
    v54 = 0;
LABEL_7:
    v56 = *(v48 + v54 + 32);
    v55 = *(v48 + v54 + 40);
    swift_initStackObject();

    v57 = sub_10001CC04(v2, v56, v55);

    v58 = *(*(v57 + 16) + 32);
    *v7 = v58;
    v0 = v156;
    (v158)(v7, v157, v156);
    v59 = v58;
    v10 = _dispatchPreconditionTest(_:)();
    (v160)(v7, v0);
    if (v10)
    {
      break;
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    swift_once();
  }

  v60 = *(v57 + 16);

  v61 = sub_10001CEC4(v60, v57);

  if (v61 != 101)
  {

    sub_10089C7D0();
    swift_allocError();
    *v65 = v61;
    *(v65 + 8) = 0xD000000000000017;
    *(v65 + 16) = 0x80000001015AAEC0;
    swift_willThrow();
    v66 = *(*(v57 + 16) + 32);
    *v7 = v66;
    (v158)(v7, v157, v0);
    v67 = v66;
    LOBYTE(v66) = _dispatchPreconditionTest(_:)();
    (v160)(v7, v0);
    if (v66)
    {
      swift_beginAccess();
      v68 = *(v57 + 24);
      if (v68)
      {
        sqlite3_finalize(v68);
        *(v57 + 24) = 0;
      }

      sub_10089C46C();
      swift_willThrow();

      return;
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  v62 = *(*(v57 + 16) + 32);
  *v7 = v62;
  (v158)(v7, v157, v0);
  v63 = v62;
  v10 = _dispatchPreconditionTest(_:)();
  (v160)(v7, v0);
  if ((v10 & 1) == 0)
  {
    goto LABEL_22;
  }

  swift_beginAccess();
  v64 = *(v57 + 24);
  if (v64)
  {
    sqlite3_finalize(v64);
    *(v57 + 24) = 0;
  }

  v54 += 16;
  if (v54 != 64)
  {
    goto LABEL_7;
  }

  v69 = v147;
  *v7 = v147;
  v70 = v156;
  (v158)(v7, v157, v156);
  v71 = v69;
  LOBYTE(v69) = _dispatchPreconditionTest(_:)();
  (v160)(v7, v70);
  if ((v69 & 1) == 0)
  {
    goto LABEL_26;
  }

  sub_100A744DC(3);
  sub_100034410();
  v72 = sub_100022484();
  v73 = swift_initStackObject();
  *(v73 + 16) = v144;
  *(v73 + 32) = v72;
  v74 = (v73 + 32);
  *(v73 + 56) = &type metadata for Int;
  *(v73 + 96) = &type metadata for Int;
  *(v73 + 104) = &protocol witness table for Int;
  *(v73 + 64) = &protocol witness table for Int;
  *(v73 + 72) = 3;
  if (v72 != 3)
  {
    goto LABEL_56;
  }

  swift_setDeallocating();
  swift_arrayDestroy();
}

void sub_100DD7F0C()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = (v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v7 = v8;
  v9 = *(v4 + 104);
  LODWORD(v119) = enum case for DispatchPredicate.onQueue(_:);
  v120 = v9;
  v9(v7, v5);
  v118 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v10 = *(v4 + 8);
  v10(v7, v3);
  if (v8)
  {
    if (qword_1019F2258 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v11 = static OS_os_log.boardStore;
  v12 = static os_log_type_t.default.getter();
  sub_100005404(v11, &_mh_execute_header, v12, "Migrating database to optimizeSubtreeQuery schema version", 57, 2, _swiftEmptyArrayStorage);
  v13 = sub_100022484();
  if (v1)
  {
    return;
  }

  v14 = v13;
  v117 = v10;
  v121 = 0;
  v116 = sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  v115 = xmmword_10146BDE0;
  *(inited + 16) = xmmword_10146BDE0;
  *(inited + 32) = v14;
  *(inited + 56) = &type metadata for Int;
  *(inited + 64) = &protocol witness table for Int;
  *(inited + 96) = &type metadata for Int;
  *(inited + 104) = &protocol witness table for Int;
  *(inited + 72) = 4;
  if (v14 != 3)
  {
    v121 = (inited + 32);
    v47 = inited;
    v119 = objc_opt_self();
    LODWORD(v46) = [v119 _atomicIncrementAssertCount];
    v123 = [objc_allocWithZone(NSString) init];
    v120 = v47;
    sub_100604538(v47, &v123, "Current schema version %{public}d before migration to %{public}d is unexpected", 78, 2u);
    StaticString.description.getter("_migrateToOptimizedSubtreeQuerySchema()", 39, 2);
    v48 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
    v49 = String._bridgeToObjectiveC()();

    v50 = [v49 lastPathComponent];

    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v51;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_89;
    }

    while (1)
    {
      v53 = static OS_os_log.crlAssert;
      v54 = swift_initStackObject();
      *(v54 + 16) = xmmword_10146CA70;
      *(v54 + 56) = &type metadata for Int32;
      *(v54 + 64) = &protocol witness table for Int32;
      *(v54 + 32) = v46;
      v55 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(v54 + 96) = v55;
      v56 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
      *(v54 + 104) = v56;
      v57 = v48;
      *(v54 + 72) = v48;
      *(v54 + 136) = &type metadata for String;
      v58 = sub_1000053B0();
      *(v54 + 112) = v45;
      *(v54 + 120) = v52;
      *(v54 + 176) = &type metadata for UInt;
      *(v54 + 184) = &protocol witness table for UInt;
      *(v54 + 144) = v58;
      *(v54 + 152) = 555;
      v59 = v123;
      *(v54 + 216) = v55;
      *(v54 + 224) = v56;
      *(v54 + 192) = v59;
      v60 = v57;
      v61 = v59;
      v62 = static os_log_type_t.error.getter();
      sub_100005404(v53, &_mh_execute_header, v62, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v54);

      v63 = static os_log_type_t.error.getter();
      v64 = v120;
      sub_100005404(v53, &_mh_execute_header, v63, "Current schema version %{public}d before migration to %{public}d is unexpected", 78, 2, v120);

      sub_10063DF98(v64, "Current schema version %{public}d before migration to %{public}d is unexpected");
      type metadata accessor for __VaListBuilder();
      v46 = swift_allocObject();
      v46[2] = 8;
      v46[3] = 0;
      v52 = v46 + 3;
      v46[4] = 0;
      v46[5] = 0;
      v65 = v64[2];
      if (!v65)
      {
        goto LABEL_96;
      }

      v48 = 0;
      while (1)
      {
        v45 = sub_100020E58(&v121[5 * v48], v121[5 * v48 + 3]);
        v66 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v67 = *v52;
        v68 = *(v66 + 16);
        v69 = __OFADD__(*v52, v68);
        v70 = *v52 + v68;
        if (v69)
        {
          goto LABEL_60;
        }

        v71 = v66;
        v45 = v46[4];
        if (v45 >= v70)
        {
          goto LABEL_52;
        }

        if (v45 + 0x4000000000000000 < 0)
        {
          goto LABEL_61;
        }

        v72 = v46[5];
        if (2 * v45 > v70)
        {
          v70 = 2 * v45;
        }

        v46[4] = v70;
        if ((v70 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_62;
        }

        v73 = swift_slowAlloc();
        v46[5] = v73;
        if (v72)
        {
          if (v73 != v72 || v73 >= &v72[8 * v67])
          {
            memmove(v73, v72, 8 * v67);
          }

          v45 = v46;
          __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_52:
          v73 = v46[5];
        }

        if (!v73)
        {
          goto LABEL_91;
        }

        v75 = *(v71 + 16);
        if (v75)
        {
          break;
        }

LABEL_37:

        v48 = v48 + 1;
        if (v48 == v65)
        {
          goto LABEL_96;
        }
      }

      v76 = (v71 + 32);
      v77 = *v52;
      while (1)
      {
        v78 = *v76++;
        *&v73[8 * v77] = v78;
        v77 = *v52 + 1;
        if (__OFADD__(*v52, 1))
        {
          break;
        }

        *v52 = v77;
        if (!--v75)
        {
          goto LABEL_37;
        }
      }

      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      v121 = v46;
      v119 = objc_opt_self();
      LODWORD(v46) = [v119 _atomicIncrementAssertCount];
      v122 = [objc_allocWithZone(NSString) init];
      v120 = v45;
      sub_100604538(v45, &v122, "Queried schema version %{public}d after migration to %{public}d is unexpected", 77, 2u);
      StaticString.description.getter("_migrateToOptimizedSubtreeQuerySchema()", 39, 2);
      v48 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
      v79 = String._bridgeToObjectiveC()();

      v80 = [v79 lastPathComponent];

      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v81;

      if (qword_1019F20A0 != -1)
      {
        goto LABEL_94;
      }

      while (2)
      {
        v82 = static OS_os_log.crlAssert;
        v83 = swift_initStackObject();
        *(v83 + 16) = xmmword_10146CA70;
        *(v83 + 56) = &type metadata for Int32;
        *(v83 + 64) = &protocol witness table for Int32;
        *(v83 + 32) = v46;
        v84 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
        *(v83 + 96) = v84;
        v85 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
        *(v83 + 104) = v85;
        v86 = v48;
        *(v83 + 72) = v48;
        *(v83 + 136) = &type metadata for String;
        v87 = sub_1000053B0();
        *(v83 + 112) = v45;
        *(v83 + 120) = v52;
        *(v83 + 176) = &type metadata for UInt;
        *(v83 + 184) = &protocol witness table for UInt;
        *(v83 + 144) = v87;
        *(v83 + 152) = 583;
        v88 = v122;
        *(v83 + 216) = v84;
        *(v83 + 224) = v85;
        *(v83 + 192) = v88;
        v89 = v86;
        v90 = v88;
        v91 = static os_log_type_t.error.getter();
        sub_100005404(v82, &_mh_execute_header, v91, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v83);

        v92 = static os_log_type_t.error.getter();
        v93 = v120;
        sub_100005404(v82, &_mh_execute_header, v92, "Queried schema version %{public}d after migration to %{public}d is unexpected", 77, 2, v120);

        sub_10063DF98(v93, "Queried schema version %{public}d after migration to %{public}d is unexpected");
        type metadata accessor for __VaListBuilder();
        v46 = swift_allocObject();
        v46[2] = 8;
        v46[3] = 0;
        v52 = v46 + 3;
        v46[4] = 0;
        v46[5] = 0;
        v94 = v93[2];
        if (!v94)
        {
          while (1)
          {
LABEL_98:
            v113 = __VaListBuilder.va_list()();
            StaticString.description.getter("_migrateToOptimizedSubtreeQuerySchema()", 39, 2);
            v108 = String._bridgeToObjectiveC()();

            StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
            v109 = String._bridgeToObjectiveC()();

            StaticString.description.getter("Queried schema version %{public}d after migration to %{public}d is unexpected", 77, 2);
            v110 = String._bridgeToObjectiveC()();

            [v119 handleFailureInFunction:v108 file:v109 lineNumber:583 isFatal:1 format:v110 args:v113];
LABEL_97:

            SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v111, v112);
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
          }
        }

        v48 = 0;
LABEL_67:
        v45 = sub_100020E58(&v121[5 * v48], v121[5 * v48 + 3]);
        v95 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v96 = *v52;
        v97 = *(v95 + 16);
        v69 = __OFADD__(*v52, v97);
        v98 = *v52 + v97;
        if (v69)
        {
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          swift_once();
          continue;
        }

        break;
      }

      v99 = v95;
      v45 = v46[4];
      if (v45 >= v98)
      {
        goto LABEL_81;
      }

      if (v45 + 0x4000000000000000 < 0)
      {
        goto LABEL_92;
      }

      v100 = v46[5];
      if (2 * v45 > v98)
      {
        v98 = 2 * v45;
      }

      v46[4] = v98;
      if ((v98 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_93;
      }

      v101 = swift_slowAlloc();
      v46[5] = v101;
      if (v100)
      {
        if (v101 != v100 || v101 >= &v100[8 * v96])
        {
          memmove(v101, v100, 8 * v96);
        }

        v45 = v46;
        __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_81:
        v101 = v46[5];
      }

      if (!v101)
      {
        __break(1u);
LABEL_96:
        v107 = __VaListBuilder.va_list()();
        StaticString.description.getter("_migrateToOptimizedSubtreeQuerySchema()", 39, 2);
        v108 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
        v109 = String._bridgeToObjectiveC()();

        StaticString.description.getter("Current schema version %{public}d before migration to %{public}d is unexpected", 78, 2);
        v110 = String._bridgeToObjectiveC()();

        [v119 handleFailureInFunction:v108 file:v109 lineNumber:555 isFatal:1 format:v110 args:v107];
        goto LABEL_97;
      }

      v103 = *(v99 + 16);
      if (!v103)
      {
LABEL_66:

        v48 = v48 + 1;
        if (v48 == v94)
        {
          goto LABEL_98;
        }

        goto LABEL_67;
      }

      v104 = (v99 + 32);
      v105 = *v52;
      while (1)
      {
        v106 = *v104++;
        *&v101[8 * v105] = v106;
        v105 = *v52 + 1;
        if (__OFADD__(*v52, 1))
        {
          break;
        }

        *v52 = v105;
        if (!--v103)
        {
          goto LABEL_66;
        }
      }

      __break(1u);
LABEL_89:
      swift_once();
    }
  }

  swift_setDeallocating();
  v16 = sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v17 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_database);
  type metadata accessor for SQLTransaction();
  v18 = swift_initStackObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = 0;

  v19 = v121;
  sub_10003080C();
  v121 = v19;
  if (v19)
  {
LABEL_18:

    return;
  }

  v114[2] = v16;
  v114[3] = v18;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v21 = v121;
  v22 = sub_10001CC04(v20, 0xD000000000000061, 0x80000001015AAFA0);
  v121 = v21;
  if (v21)
  {
    goto LABEL_17;
  }

  v23 = v22;
  v114[1] = v17;

  v24 = *(*(v23 + 16) + 32);
  *v7 = v24;
  (v120)(v7, v119, v3);
  v25 = v24;
  LOBYTE(v24) = _dispatchPreconditionTest(_:)();
  v117(v7, v3);
  if ((v24 & 1) == 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  v26 = *(v23 + 16);

  v27 = v26;
  v28 = v121;
  v29 = sub_10001CEC4(v27, v23);

  if (v29 != 101)
  {
    sub_10089C7D0();
    v35 = swift_allocError();
    *v36 = v29;
    *(v36 + 8) = 0xD00000000000003DLL;
    *(v36 + 16) = 0x80000001015AB010;
    v121 = v35;
    swift_willThrow();
    v37 = *(*(v23 + 16) + 32);
    *v7 = v37;
    (v120)(v7, v119, v3);
    v38 = v37;
    LOBYTE(v37) = _dispatchPreconditionTest(_:)();
    v117(v7, v3);
    if ((v37 & 1) == 0)
    {
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
    }

    swift_beginAccess();
    v34 = *(v23 + 24);
    if (v34)
    {
LABEL_16:
      sqlite3_finalize(v34);
      *(v23 + 24) = 0;
    }

LABEL_17:

    sub_10089C46C();
    swift_willThrow();
    goto LABEL_18;
  }

  v30 = v118;
  *v7 = v118;
  (v120)(v7, v119, v3);
  v31 = v30;
  LOBYTE(v30) = _dispatchPreconditionTest(_:)();
  v117(v7, v3);
  if ((v30 & 1) == 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  sub_100A744DC(4);
  v121 = v28;
  if (v28)
  {
    v32 = *(*(v23 + 16) + 32);
    *v7 = v32;
    (v120)(v7, v119, v3);
    v33 = v32;
    LOBYTE(v32) = _dispatchPreconditionTest(_:)();
    v117(v7, v3);
    if (v32)
    {
      swift_beginAccess();
      v34 = *(v23 + 24);
      if (!v34)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    goto LABEL_32;
  }

  v39 = *(*(v23 + 16) + 32);
  *v7 = v39;
  (v120)(v7, v119, v3);
  v40 = v39;
  LOBYTE(v39) = _dispatchPreconditionTest(_:)();
  v117(v7, v3);
  if ((v39 & 1) == 0)
  {
    goto LABEL_33;
  }

  swift_beginAccess();
  v41 = *(v23 + 24);
  if (v41)
  {
    sqlite3_finalize(v41);
    *(v23 + 24) = 0;
  }

  v42 = v121;
  sub_100034410();
  if (v42)
  {
    v121 = v42;
    goto LABEL_18;
  }

  v43 = sub_100022484();
  v121 = 0;
  v44 = v43;
  v45 = swift_initStackObject();
  *(v45 + 16) = v115;
  *(v45 + 32) = v44;
  v46 = (v45 + 32);
  *(v45 + 56) = &type metadata for Int;
  *(v45 + 96) = &type metadata for Int;
  *(v45 + 104) = &protocol witness table for Int;
  *(v45 + 64) = &protocol witness table for Int;
  *(v45 + 72) = 4;
  if (v44 != 4)
  {
    goto LABEL_63;
  }

  swift_setDeallocating();
  swift_arrayDestroy();
}

unint64_t sub_100DD8F2C(char a1)
{
  result = 0x736472616F62;
  switch(a1)
  {
    case 1:
      result = 0x74695F6472616F62;
      break;
    case 2:
      result = 0x756C61765F79656BLL;
      break;
    case 3:
      result = 0x737465737361;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
    case 11:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0xD000000000000020;
      break;
    case 7:
      result = 0x6D5F736472616F62;
      break;
    case 8:
      result = 0xD000000000000018;
      break;
    case 9:
      result = 0x64726F6365726B63;
      break;
    case 10:
      result = 0x635F656E6F7A6B63;
      break;
    case 12:
      result = 0x737265646C6F66;
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

void sub_100DD9180()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = (&v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v6 = v7;
  v8 = enum case for DispatchPredicate.onQueue(_:);
  v37 = *(v3 + 104);
  (v37)(v6, enum case for DispatchPredicate.onQueue(_:), v2, v4);
  v9 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v10 = *(v3 + 8);
  v10(v6, v2);
  if (v7)
  {
    v36 = v10;
    if (qword_1019F2258 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v11 = static OS_os_log.boardStore;
  v12 = static os_log_type_t.default.getter();
  sub_100005404(v11, &_mh_execute_header, v12, "Adding MinRequiredVersionForGoodEnoughFidelity to the boards table", 66, 2, _swiftEmptyArrayStorage);
  v39 = 0;
  v40 = 0xE000000000000000;
  _StringGuts.grow(_:)(57);
  v13._countAndFlagsBits = 0x4154205245544C41;
  v13._object = 0xEC00000020454C42;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0x736472616F62;
  v14._object = 0xE600000000000000;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0x4C4F43204444410ALL;
  v15._object = 0xEC000000204E4D55;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0xD00000000000002DLL;
  v16._object = 0x80000001015A3760;
  String.append(_:)(v16);
  v17._object = 0x80000001015A8F90;
  v17._countAndFlagsBits = 0xD00000000000001ALL;
  String.append(_:)(v17);
  v38 = 0x2000400000000;
  v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v18);

  v19._countAndFlagsBits = 59;
  v19._object = 0xE100000000000000;
  String.append(_:)(v19);
  v20 = v39;
  v21 = v40;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v23 = sub_10001CC04(v22, v20, v21);

  if (v1)
  {
    return;
  }

  v24 = *(*(v23 + 16) + 32);
  *v6 = v24;
  v37(v6, v8, v2);
  v25 = v24;
  LOBYTE(v24) = _dispatchPreconditionTest(_:)();
  v26 = v36;
  v36(v6, v2);
  if ((v24 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v27 = *(v23 + 16);

  LODWORD(v28) = sub_10001CEC4(v27, v23);

  if (v28 != 101)
  {
LABEL_8:
    sub_10089C7D0();
    swift_allocError();
    *v30 = v28;
    *(v30 + 8) = 0xD000000000000020;
    *(v30 + 16) = 0x80000001015AAE00;
    swift_willThrow();
    v31 = *(*(v23 + 16) + 32);
    *v6 = v31;
    v37(v6, v8, v2);
    v32 = v31;
    v33 = _dispatchPreconditionTest(_:)();
    v36(v6, v2);
    if (v33)
    {
      goto LABEL_9;
    }

LABEL_16:
    __break(1u);
  }

  v28 = *(*(v23 + 16) + 32);
  *v6 = v28;
  v37(v6, v8, v2);
  v29 = v28;
  v8 = _dispatchPreconditionTest(_:)();
  v26(v6, v2);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  swift_beginAccess();
  v34 = *(v23 + 24);
  if (v34)
  {
    sqlite3_finalize(v34);
    *(v23 + 24) = 0;
  }
}

void sub_100DD964C()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = (&v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v6 = v7;
  v8 = enum case for DispatchPredicate.onQueue(_:);
  v37 = *(v3 + 104);
  (v37)(v6, enum case for DispatchPredicate.onQueue(_:), v2, v4);
  v9 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v10 = *(v3 + 8);
  v10(v6, v2);
  if (v7)
  {
    v36 = v10;
    if (qword_1019F2258 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v11 = static OS_os_log.boardStore;
  v12 = static os_log_type_t.default.getter();
  sub_100005404(v11, &_mh_execute_header, v12, "Adding MinRequiredVersionForGoodEnoughFidelity to the board items table", 71, 2, _swiftEmptyArrayStorage);
  v39 = 0;
  v40 = 0xE000000000000000;
  _StringGuts.grow(_:)(57);
  v13._countAndFlagsBits = 0x4154205245544C41;
  v13._object = 0xEC00000020454C42;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0x74695F6472616F62;
  v14._object = 0xEB00000000736D65;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0x4C4F43204444410ALL;
  v15._object = 0xEC000000204E4D55;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0xD00000000000002DLL;
  v16._object = 0x80000001015A3760;
  String.append(_:)(v16);
  v17._object = 0x80000001015A8F90;
  v17._countAndFlagsBits = 0xD00000000000001ALL;
  String.append(_:)(v17);
  v38 = 0x2000400000000;
  v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v18);

  v19._countAndFlagsBits = 59;
  v19._object = 0xE100000000000000;
  String.append(_:)(v19);
  v20 = v39;
  v21 = v40;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v23 = sub_10001CC04(v22, v20, v21);

  if (v1)
  {
    return;
  }

  v24 = *(*(v23 + 16) + 32);
  *v6 = v24;
  v37(v6, v8, v2);
  v25 = v24;
  LOBYTE(v24) = _dispatchPreconditionTest(_:)();
  v26 = v36;
  v36(v6, v2);
  if ((v24 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v27 = *(v23 + 16);

  LODWORD(v28) = sub_10001CEC4(v27, v23);

  if (v28 != 101)
  {
LABEL_8:
    sub_10089C7D0();
    swift_allocError();
    *v30 = v28;
    *(v30 + 8) = 0xD000000000000025;
    *(v30 + 16) = 0x80000001015AAD80;
    swift_willThrow();
    v31 = *(*(v23 + 16) + 32);
    *v6 = v31;
    v37(v6, v8, v2);
    v32 = v31;
    v33 = _dispatchPreconditionTest(_:)();
    v36(v6, v2);
    if (v33)
    {
      goto LABEL_9;
    }

LABEL_16:
    __break(1u);
  }

  v28 = *(*(v23 + 16) + 32);
  *v6 = v28;
  v37(v6, v8, v2);
  v29 = v28;
  v8 = _dispatchPreconditionTest(_:)();
  v26(v6, v2);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  swift_beginAccess();
  v34 = *(v23 + 24);
  if (v34)
  {
    sqlite3_finalize(v34);
    *(v23 + 24) = 0;
  }
}

void sub_100DD9B24()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = (&v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v6 = v7;
  v8 = enum case for DispatchPredicate.onQueue(_:);
  v37 = *(v3 + 104);
  (v37)(v6, enum case for DispatchPredicate.onQueue(_:), v2, v4);
  v9 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v10 = *(v3 + 8);
  v10(v6, v2);
  if (v7)
  {
    v36 = v10;
    if (qword_1019F2258 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v11 = static OS_os_log.boardStore;
  v12 = static os_log_type_t.default.getter();
  sub_100005404(v11, &_mh_execute_header, v12, "Adding MinRequiredVersionForGoodEnoughFidelityForBucket to the freehand drawing buckets table", 93, 2, _swiftEmptyArrayStorage);
  v39 = 0;
  v40 = 0xE000000000000000;
  _StringGuts.grow(_:)(57);
  v13._countAndFlagsBits = 0x4154205245544C41;
  v13._object = 0xEC00000020454C42;
  String.append(_:)(v13);
  v14._object = 0x80000001015A31A0;
  v14._countAndFlagsBits = 0xD000000000000018;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0x4C4F43204444410ALL;
  v15._object = 0xEC000000204E4D55;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0xD000000000000038;
  v16._object = 0x80000001015A3980;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0xD00000000000001ALL;
  v17._object = 0x80000001015A8F90;
  String.append(_:)(v17);
  v38 = 0x2000400000000;
  v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v18);

  v19._countAndFlagsBits = 59;
  v19._object = 0xE100000000000000;
  String.append(_:)(v19);
  v20 = v39;
  v21 = v40;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v23 = sub_10001CC04(v22, v20, v21);

  if (v1)
  {
    return;
  }

  v24 = *(*(v23 + 16) + 32);
  *v6 = v24;
  v37(v6, v8, v2);
  v25 = v24;
  LOBYTE(v24) = _dispatchPreconditionTest(_:)();
  v26 = v36;
  v36(v6, v2);
  if ((v24 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v27 = *(v23 + 16);

  LODWORD(v28) = sub_10001CEC4(v27, v23);

  if (v28 != 101)
  {
LABEL_8:
    sub_10089C7D0();
    swift_allocError();
    *v30 = v28;
    *(v30 + 8) = 0xD000000000000065;
    *(v30 + 16) = 0x80000001015AACC0;
    swift_willThrow();
    v31 = *(*(v23 + 16) + 32);
    *v6 = v31;
    v37(v6, v8, v2);
    v32 = v31;
    v33 = _dispatchPreconditionTest(_:)();
    v36(v6, v2);
    if (v33)
    {
      goto LABEL_9;
    }

LABEL_16:
    __break(1u);
  }

  v28 = *(*(v23 + 16) + 32);
  *v6 = v28;
  v37(v6, v8, v2);
  v29 = v28;
  v8 = _dispatchPreconditionTest(_:)();
  v26(v6, v2);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  swift_beginAccess();
  v34 = *(v23 + 24);
  if (v34)
  {
    sqlite3_finalize(v34);
    *(v23 + 24) = 0;
  }
}

void sub_100DD9FF4()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = (&v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v6 = v7;
  v8 = enum case for DispatchPredicate.onQueue(_:);
  v37 = *(v3 + 104);
  (v37)(v6, enum case for DispatchPredicate.onQueue(_:), v2, v4);
  v9 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v10 = *(v3 + 8);
  v10(v6, v2);
  if (v7)
  {
    v36 = v10;
    if (qword_1019F2258 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v11 = static OS_os_log.boardStore;
  v12 = static os_log_type_t.default.getter();
  sub_100005404(v11, &_mh_execute_header, v12, "Adding MinRequiredVersionForGoodEnoughFidelityForItems to the freehand drawing buckets table", 92, 2, _swiftEmptyArrayStorage);
  v39 = 0;
  v40 = 0xE000000000000000;
  _StringGuts.grow(_:)(57);
  v13._countAndFlagsBits = 0x4154205245544C41;
  v13._object = 0xEC00000020454C42;
  String.append(_:)(v13);
  v14._object = 0x80000001015A31A0;
  v14._countAndFlagsBits = 0xD000000000000018;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0x4C4F43204444410ALL;
  v15._object = 0xEC000000204E4D55;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0xD000000000000037;
  v16._object = 0x80000001015A39C0;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0xD00000000000001ALL;
  v17._object = 0x80000001015A8F90;
  String.append(_:)(v17);
  v38 = 0x2000400000000;
  v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v18);

  v19._countAndFlagsBits = 59;
  v19._object = 0xE100000000000000;
  String.append(_:)(v19);
  v20 = v39;
  v21 = v40;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v23 = sub_10001CC04(v22, v20, v21);

  if (v1)
  {
    return;
  }

  v24 = *(*(v23 + 16) + 32);
  *v6 = v24;
  v37(v6, v8, v2);
  v25 = v24;
  LOBYTE(v24) = _dispatchPreconditionTest(_:)();
  v26 = v36;
  v36(v6, v2);
  if ((v24 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v27 = *(v23 + 16);

  LODWORD(v28) = sub_10001CEC4(v27, v23);

  if (v28 != 101)
  {
LABEL_8:
    sub_10089C7D0();
    swift_allocError();
    *v30 = v28;
    *(v30 + 8) = 0xD000000000000064;
    *(v30 + 16) = 0x80000001015AABF0;
    swift_willThrow();
    v31 = *(*(v23 + 16) + 32);
    *v6 = v31;
    v37(v6, v8, v2);
    v32 = v31;
    v33 = _dispatchPreconditionTest(_:)();
    v36(v6, v2);
    if (v33)
    {
      goto LABEL_9;
    }

LABEL_16:
    __break(1u);
  }

  v28 = *(*(v23 + 16) + 32);
  *v6 = v28;
  v37(v6, v8, v2);
  v29 = v28;
  v8 = _dispatchPreconditionTest(_:)();
  v26(v6, v2);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  swift_beginAccess();
  v34 = *(v23 + 24);
  if (v34)
  {
    sqlite3_finalize(v34);
    *(v23 + 24) = 0;
  }
}

void sub_100DDA4C4()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = (&v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v6 = v7;
  v9 = v3 + 104;
  v8 = *(v3 + 104);
  v93 = enum case for DispatchPredicate.onQueue(_:);
  v94 = v8;
  v8(v6, v4);
  v10 = v7;
  v11 = _dispatchPreconditionTest(_:)();
  v14 = *(v3 + 8);
  v13 = v3 + 8;
  v12 = v14;
  v14(v6, v2);
  if (v11)
  {
    v96 = v0;
    v97 = v1;
    v91 = v2;
    v92 = v9;
    v89 = v12;
    v90 = v13;
    if (qword_1019F2258 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v15 = 0xD000000000000010;
  v16 = static OS_os_log.boardStore;
  v17 = static os_log_type_t.info.getter();
  sub_100005404(v16, &_mh_execute_header, v17, "Creating schema for the boards table", 36, 2, _swiftEmptyArrayStorage);
  v98 = 0;
  v99 = 0xE000000000000000;
  _StringGuts.grow(_:)(479);
  v18._countAndFlagsBits = 0x5420455441455243;
  v18._object = 0xED000020454C4241;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x736472616F62;
  v19._object = 0xE600000000000000;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 10272;
  v20._object = 0xE200000000000000;
  String.append(_:)(v20);
  v21._object = 0x8000000101585360;
  v21._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0xD00000000000001CLL;
  v22._object = 0x8000000101585A40;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 0x616E5F72656E776FLL;
  v23._object = 0xEA0000000000656DLL;
  String.append(_:)(v23);
  v24._object = 0x80000001015AA320;
  v24._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 0x656E6961746E6F63;
  v25._object = 0xEE00646975755F72;
  String.append(_:)(v25);
  v26._object = 0x80000001015AA270;
  v26._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v26);
  v95 = "N (board_items_2.";
  v27._countAndFlagsBits = 0xD000000000000018;
  v27._object = 0x80000001015A34C0;
  String.append(_:)(v27);
  v28._object = 0x80000001015AA270;
  v28._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 1635017060;
  v29._object = 0xE400000000000000;
  String.append(_:)(v29);
  v30._countAndFlagsBits = 0x202C424F4C4220;
  v30._object = 0xE700000000000000;
  String.append(_:)(v30);
  v31._countAndFlagsBits = 0xD000000000000012;
  v31._object = 0x80000001015A3810;
  String.append(_:)(v31);
  v32._countAndFlagsBits = 0x202C4C41455220;
  v32._object = 0xE700000000000000;
  String.append(_:)(v32);
  v33._countAndFlagsBits = 0x6E6F7473626D6F74;
  v33._object = 0xEA00000000006465;
  String.append(_:)(v33);
  v34._countAndFlagsBits = 0xD000000000000013;
  v34._object = 0x80000001015AA340;
  String.append(_:)(v34);
  v35._object = 0x80000001015A33D0;
  v35._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v35);
  v36._countAndFlagsBits = 0xD00000000000001DLL;
  v36._object = 0x80000001015AA630;
  String.append(_:)(v36);
  v37._countAndFlagsBits = 0xD000000000000018;
  v37._object = 0x80000001015A37D0;
  String.append(_:)(v37);
  v38._countAndFlagsBits = 0xD000000000000014;
  v38._object = 0x80000001015AA9F0;
  String.append(_:)(v38);
  v39._object = 0xE900000000000061;
  v39._countAndFlagsBits = 0x7461645F636E7973;
  String.append(_:)(v39);
  v40._countAndFlagsBits = 0x202C424F4C4220;
  v40._object = 0xE700000000000000;
  String.append(_:)(v40);
  v41._object = 0xEE00657461645F65;
  v41._countAndFlagsBits = 0x6E6F7473626D6F74;
  String.append(_:)(v41);
  v42._countAndFlagsBits = 0x202C4C41455220;
  v42._object = 0xE700000000000000;
  String.append(_:)(v42);
  v43._countAndFlagsBits = 0xD00000000000001ALL;
  v43._object = 0x80000001015A37F0;
  String.append(_:)(v43);
  v44._countAndFlagsBits = 0xD000000000000013;
  v44._object = 0x80000001015AA340;
  String.append(_:)(v44);
  v45._countAndFlagsBits = 0x5F65726168736B63;
  v45._object = 0xEC00000061746164;
  String.append(_:)(v45);
  v46._countAndFlagsBits = 0x202C424F4C4220;
  v46._object = 0xE700000000000000;
  String.append(_:)(v46);
  v47._countAndFlagsBits = 0xD000000000000014;
  v47._object = 0x80000001015A3590;
  String.append(_:)(v47);
  v48._countAndFlagsBits = 0xD00000000000001DLL;
  v48._object = 0x80000001015AA630;
  String.append(_:)(v48);
  v49._countAndFlagsBits = 0x61637369645F7369;
  v49._object = 0xEE00656C62616472;
  String.append(_:)(v49);
  v50._countAndFlagsBits = 0xD000000000000020;
  v50._object = 0x80000001015AAA10;
  String.append(_:)(v50);
  v51._countAndFlagsBits = 0x656E6961746E6F63;
  v51._object = 0xEE00646975755F72;
  String.append(_:)(v51);
  v52._countAndFlagsBits = 8236;
  v52._object = 0xE200000000000000;
  String.append(_:)(v52);
  v53._object = 0x8000000101585360;
  v53._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v53);
  v54._countAndFlagsBits = 0x4552454645522029;
  v54._object = 0xED0000205345434ELL;
  String.append(_:)(v54);
  v55._countAndFlagsBits = 0x74695F6472616F62;
  v55._object = 0xEB00000000736D65;
  String.append(_:)(v55);
  v56._countAndFlagsBits = 10272;
  v56._object = 0xE200000000000000;
  String.append(_:)(v56);
  v57._countAndFlagsBits = 0x6975755F6D657469;
  v57._object = 0xE900000000000064;
  String.append(_:)(v57);
  v58._countAndFlagsBits = 8236;
  v58._object = 0xE200000000000000;
  String.append(_:)(v58);
  v59._object = 0x8000000101585360;
  v59._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v59);
  v60._countAndFlagsBits = 0xD000000000000040;
  v60._object = 0x80000001015AAA40;
  String.append(_:)(v60);
  v61._countAndFlagsBits = 0xD000000000000018;
  v61._object = (v95 | 0x8000000000000000);
  String.append(_:)(v61);
  v62._countAndFlagsBits = 8236;
  v62._object = 0xE200000000000000;
  String.append(_:)(v62);
  v63._object = 0x8000000101585360;
  v63._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v63);
  v64._countAndFlagsBits = 0x4552454645522029;
  v64._object = 0xED0000205345434ELL;
  String.append(_:)(v64);
  v65._countAndFlagsBits = 0x74695F6472616F62;
  v65._object = 0xEB00000000736D65;
  String.append(_:)(v65);
  v66._countAndFlagsBits = 10272;
  v66._object = 0xE200000000000000;
  String.append(_:)(v66);
  v67._countAndFlagsBits = 0x6975755F6D657469;
  v67._object = 0xE900000000000064;
  String.append(_:)(v67);
  v68._countAndFlagsBits = 8236;
  v68._object = 0xE200000000000000;
  String.append(_:)(v68);
  v69._object = 0x8000000101585360;
  v69._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v69);
  v70._countAndFlagsBits = 0xD000000000000033;
  v70._object = 0x80000001015AAA90;
  String.append(_:)(v70);
  v71 = v98;
  v72 = v99;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v74 = v97;
  v75 = sub_10001CC04(v73, v71, v72);

  if (v74)
  {
    return;
  }

  v76 = *(*(v75 + 16) + 32);
  *v6 = v76;
  v77 = v91;
  v94(v6, v93, v91);
  v78 = v76;
  LOBYTE(v76) = _dispatchPreconditionTest(_:)();
  v79 = v89;
  v89(v6, v77);
  if ((v76 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v80 = *(v75 + 16);

  v81 = sub_10001CEC4(v80, v75);

  if (v81 != 101)
  {
LABEL_8:
    sub_10089C7D0();
    swift_allocError();
    *v83 = v81;
    *(v83 + 8) = v15 + 17;
    *(v83 + 16) = 0x80000001015AAAD0;
    swift_willThrow();
    v84 = *(*(v75 + 16) + 32);
    *v6 = v84;
    v94(v6, v93, v77);
    v85 = v84;
    v86 = _dispatchPreconditionTest(_:)();
    v79(v6, v77);
    if (v86)
    {
      goto LABEL_9;
    }

LABEL_16:
    __break(1u);
  }

  v15 = *(*(v75 + 16) + 32);
  *v6 = v15;
  v94(v6, v93, v77);
  v82 = v15;
  v81 = _dispatchPreconditionTest(_:)();
  v79(v6, v77);
  if ((v81 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  swift_beginAccess();
  v87 = *(v75 + 24);
  if (v87)
  {
    sqlite3_finalize(v87);
    *(v75 + 24) = 0;
  }
}

void sub_100DDAD7C()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = (&v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v6 = v7;
  v8 = *(v3 + 104);
  v54 = enum case for DispatchPredicate.onQueue(_:);
  v55 = v8;
  v8(v6, v4);
  v9 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v10 = *(v3 + 8);
  v10(v6, v2);
  if (v7)
  {
    v56 = v1;
    v53 = v10;
    if (qword_1019F2258 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v11 = 0xD000000000000010;
  v12 = static OS_os_log.boardStore;
  v13 = static os_log_type_t.info.getter();
  sub_100005404(v12, &_mh_execute_header, v13, "Creating schema for the boards metadata table", 45, 2, _swiftEmptyArrayStorage);
  v57 = 0;
  v58 = 0xE000000000000000;
  _StringGuts.grow(_:)(236);
  v14._countAndFlagsBits = 0x5420455441455243;
  v14._object = 0xED000020454C4241;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 0x6D5F736472616F62;
  v15._object = 0xEF61746164617465;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 10272;
  v16._object = 0xE200000000000000;
  String.append(_:)(v16);
  v17._object = 0x8000000101585360;
  v17._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0xD000000000000026;
  v18._object = 0x80000001015AA960;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x736472616F62;
  v19._object = 0xE600000000000000;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 10272;
  v20._object = 0xE200000000000000;
  String.append(_:)(v20);
  v21._object = 0x8000000101585360;
  v21._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0xD000000000000015;
  v22._object = 0x80000001015AA020;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 0x7461645F74647263;
  v23._object = 0xE900000000000061;
  String.append(_:)(v23);
  v24._object = 0x80000001015AA270;
  v24._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 0x726F7661665F7369;
  v25._object = 0xEB00000000657469;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 0xD000000000000013;
  v26._object = 0x80000001015AA340;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 0xD00000000000001BLL;
  v27._object = 0x80000001015A3390;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 0xD000000000000013;
  v28._object = 0x80000001015AA340;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 0x6174735F77656976;
  v29._object = 0xEF617461645F6574;
  String.append(_:)(v29);
  v30._object = 0x80000001015AA270;
  v30._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v30);
  v31._countAndFlagsBits = 0xD000000000000019;
  v31._object = 0x80000001015A33B0;
  String.append(_:)(v31);
  v32._countAndFlagsBits = 0xD000000000000020;
  v32._object = 0x8000000101585A60;
  String.append(_:)(v32);
  v33._object = 0x80000001015A33D0;
  v33._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v33);
  v34._countAndFlagsBits = 0xD00000000000001DLL;
  v34._object = 0x80000001015AA630;
  String.append(_:)(v34);
  v35._countAndFlagsBits = 0x7461645F636E7973;
  v35._object = 0xE900000000000061;
  String.append(_:)(v35);
  v36._countAndFlagsBits = 0x2920424F4C4220;
  v36._object = 0xE700000000000000;
  String.append(_:)(v36);
  v37 = v57;
  v38 = v58;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v40 = v56;
  v41 = sub_10001CC04(v39, v37, v38);

  if (v40)
  {
    return;
  }

  v42 = *(*(v41 + 16) + 32);
  *v6 = v42;
  v55(v6, v54, v2);
  v43 = v42;
  LOBYTE(v42) = _dispatchPreconditionTest(_:)();
  v44 = v53;
  v53(v6, v2);
  if ((v42 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v45 = *(v41 + 16);

  v46 = sub_10001CEC4(v45, v41);

  if (v46 != 101)
  {
LABEL_8:
    sub_10089C7D0();
    swift_allocError();
    *v49 = v46;
    *(v49 + 8) = v11 + 26;
    *(v49 + 16) = 0x80000001015AA990;
    swift_willThrow();
    v50 = *(*(v41 + 16) + 32);
    *v6 = v50;
    v55(v6, v54, v2);
    v51 = v50;
    LOBYTE(v50) = _dispatchPreconditionTest(_:)();
    v53(v6, v2);
    if (v50)
    {
      goto LABEL_9;
    }

LABEL_16:
    __break(1u);
  }

  v47 = *(*(v41 + 16) + 32);
  *v6 = v47;
  v55(v6, v54, v2);
  v48 = v47;
  v11 = _dispatchPreconditionTest(_:)();
  v44(v6, v2);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  swift_beginAccess();
  v52 = *(v41 + 24);
  if (v52)
  {
    sqlite3_finalize(v52);
    *(v41 + 24) = 0;
  }
}

void sub_100DDB3B4()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = (&v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v6 = v7;
  v8 = *(v3 + 104);
  v84 = enum case for DispatchPredicate.onQueue(_:);
  v85 = v8;
  v86 = v3 + 104;
  v8(v6, v4);
  v9 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v87 = *(v3 + 8);
  v87(v6, v2);
  if (v7)
  {
    v89 = v0;
    v90 = v1;
    if (qword_1019F2258 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v10 = 0xD000000000000010;
  v11 = static OS_os_log.boardStore;
  v12 = static os_log_type_t.info.getter();
  sub_100005404(v11, &_mh_execute_header, v12, "Creating schema for the board items table", 41, 2, _swiftEmptyArrayStorage);
  v88 = "(item_uuid, board_identifier)";
  v91 = 0;
  v92 = 0xE000000000000000;
  _StringGuts.grow(_:)(328);
  v13._countAndFlagsBits = 0x5420455441455243;
  v13._object = 0xED000020454C4241;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0x74695F6472616F62;
  v14._object = 0xEB00000000736D65;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 10272;
  v15._object = 0xE200000000000000;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0x6975755F6D657469;
  v16._object = 0xE900000000000064;
  String.append(_:)(v16);
  v17._object = 0x80000001015AA270;
  v17._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x755F746E65726170;
  v18._object = 0xEB00000000646975;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x202C424F4C4220;
  v19._object = 0xE700000000000000;
  String.append(_:)(v19);
  v20._object = 0x8000000101585360;
  v20._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 0xD00000000000001ALL;
  v21._object = 0x80000001015AA000;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0x736472616F62;
  v22._object = 0xE600000000000000;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 10272;
  v23._object = 0xE200000000000000;
  String.append(_:)(v23);
  v24._object = 0x8000000101585360;
  v24._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 0xD000000000000015;
  v25._object = 0x80000001015AA020;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 0x7079745F6D657469;
  v26._object = 0xE900000000000065;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 0xD000000000000013;
  v27._object = 0x80000001015AA340;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 0x645F6E6F6D6D6F63;
  v28._object = 0xEB00000000617461;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 0x202C424F4C4220;
  v29._object = 0xE700000000000000;
  String.append(_:)(v29);
  v30._countAndFlagsBits = 0x6369666963657073;
  v30._object = 0xED0000617461645FLL;
  String.append(_:)(v30);
  v31._countAndFlagsBits = 0x202C424F4C4220;
  v31._object = 0xE700000000000000;
  String.append(_:)(v31);
  v32._countAndFlagsBits = 0x6E6F7473626D6F74;
  v32._object = 0xEA00000000006465;
  String.append(_:)(v32);
  v33._countAndFlagsBits = 0xD000000000000013;
  v33._object = 0x80000001015AA340;
  String.append(_:)(v33);
  v34._object = 0x80000001015A33D0;
  v34._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v34);
  v35._countAndFlagsBits = 0xD00000000000001DLL;
  v35._object = 0x80000001015AA630;
  String.append(_:)(v35);
  v36._countAndFlagsBits = 0x7461645F636E7973;
  v36._object = 0xE900000000000061;
  String.append(_:)(v36);
  v37._countAndFlagsBits = 0x202C424F4C4220;
  v37._object = 0xE700000000000000;
  String.append(_:)(v37);
  v38._countAndFlagsBits = 0xD000000000000014;
  v38._object = 0x80000001015A3590;
  String.append(_:)(v38);
  v39._countAndFlagsBits = 0xD00000000000001DLL;
  v39._object = 0x80000001015AA630;
  String.append(_:)(v39);
  v40._countAndFlagsBits = 0x6F5F7463656A626FLL;
  v40._object = 0xEE00736E6F697470;
  String.append(_:)(v40);
  v41._countAndFlagsBits = 0xD000000000000029;
  v41._object = 0x80000001015AA7B0;
  String.append(_:)(v41);
  v42._countAndFlagsBits = 0xD00000000000001DLL;
  v42._object = 0x80000001015AA770;
  String.append(_:)(v42);
  v43._countAndFlagsBits = 0x474945524F460A2CLL;
  v43._object = 0xEE002059454B204ELL;
  String.append(_:)(v43);
  v44._countAndFlagsBits = 0xD00000000000001FLL;
  v44._object = (v88 | 0x8000000000000000);
  String.append(_:)(v44);
  v45._countAndFlagsBits = 0x4E45524546455220;
  v45._object = 0xEC00000020534543;
  String.append(_:)(v45);
  v46._countAndFlagsBits = 0x74695F6472616F62;
  v46._object = 0xEB00000000736D65;
  String.append(_:)(v46);
  v47._countAndFlagsBits = 32;
  v47._object = 0xE100000000000000;
  String.append(_:)(v47);
  v48._countAndFlagsBits = 0xD00000000000001DLL;
  v48._object = 0x80000001015AA770;
  String.append(_:)(v48);
  v49._countAndFlagsBits = 0xD000000000000014;
  v49._object = 0x80000001015AA7E0;
  String.append(_:)(v49);
  v50 = v91;
  v51 = v92;
  v52 = *(v89 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_database);
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v54 = v90;
  v55 = sub_10001CC04(v53, v50, v51);
  if (v54)
  {
    goto LABEL_18;
  }

  v56 = v55;

  v57 = *(*(v56 + 16) + 32);
  *v6 = v57;
  v85(v6, v84, v2);
  v58 = v57;
  v59 = _dispatchPreconditionTest(_:)();
  v87(v6, v2);
  if ((v59 & 1) == 0)
  {
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  v60 = *(v56 + 16);

  v61 = sub_10001CEC4(v60, v56);

  if (v61 == 101)
  {
    v62 = sub_10001C924(v52, 0xD000000000000035, 0x80000001015AA830);
    if (v62 == 101)
    {
      v63 = sub_10001C924(v52, 0xD00000000000004FLL, 0x80000001015AA8B0);
      if (v63 == 101)
      {
        v64 = *(*(v56 + 16) + 32);
        *v6 = v64;
        v85(v6, v84, v2);
        v65 = v64;
        LOBYTE(v64) = _dispatchPreconditionTest(_:)();
        v87(v6, v2);
        if (v64)
        {
          swift_beginAccess();
          v66 = *(v56 + 24);
          if (v66)
          {
            goto LABEL_17;
          }

          goto LABEL_18;
        }

        goto LABEL_22;
      }

      goto LABEL_15;
    }
  }

  else
  {
    sub_10089C7D0();
    swift_allocError();
    *v67 = v61;
    *(v67 + 8) = 0xD000000000000026;
    *(v67 + 16) = 0x80000001015AA800;
    swift_willThrow();
    v68 = *(*(v56 + 16) + 32);
    *v6 = v68;
    v85(v6, v84, v2);
    v69 = v68;
    v10 = _dispatchPreconditionTest(_:)();
    v62 = (v87)(v6, v2);
    if (v10)
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  v70 = v62;
  sub_10089C7D0();
  swift_allocError();
  *v71 = v70;
  *(v71 + 8) = v10 + 40;
  *(v71 + 16) = 0x80000001015AA870;
  swift_willThrow();
  v72 = *(*(v56 + 16) + 32);
  *v6 = v72;
  v85(v6, v84, v2);
  v73 = v72;
  v10 = _dispatchPreconditionTest(_:)();
  v63 = (v87)(v6, v2);
  if (v10)
  {
    goto LABEL_16;
  }

  __break(1u);
LABEL_15:
  v74 = v63;
  v91 = 0;
  v92 = 0xE000000000000000;
  _StringGuts.grow(_:)(68);
  v75._countAndFlagsBits = v10 + 7;
  v75._object = 0x80000001015AA6F0;
  String.append(_:)(v75);
  v76._countAndFlagsBits = 0x74695F6472616F62;
  v76._object = 0xEB00000000736D65;
  String.append(_:)(v76);
  v77._countAndFlagsBits = v10 + 27;
  v77._object = 0x80000001015AA900;
  String.append(_:)(v77);
  v78 = v91;
  v79 = v92;
  sub_10089C7D0();
  swift_allocError();
  *v80 = v74;
  *(v80 + 8) = v78;
  *(v80 + 16) = v79;
  swift_willThrow();
  v81 = *(*(v56 + 16) + 32);
  *v6 = v81;
  v85(v6, v84, v2);
  v82 = v81;
  LOBYTE(v81) = _dispatchPreconditionTest(_:)();
  v87(v6, v2);
  if ((v81 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_16:
  swift_beginAccess();
  v66 = *(v56 + 24);
  if (v66)
  {
LABEL_17:
    sqlite3_finalize(v66);
    *(v56 + 24) = 0;
  }

LABEL_18:
}

void sub_100DDBD58()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = (&v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v6 = v7;
  v8 = *(v3 + 104);
  v75 = enum case for DispatchPredicate.onQueue(_:);
  v76 = v8;
  v77 = v3 + 104;
  v8(v6, v4);
  v9 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v11 = *(v3 + 8);
  v10 = v3 + 8;
  v78 = v11;
  v11(v6, v2);
  if (v7)
  {
    v79 = v0;
    v80 = v1;
    v73 = v10;
    v74 = v2;
    if (qword_1019F2258 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v12 = 0xD000000000000010;
  v13 = static OS_os_log.boardStore;
  v14 = static os_log_type_t.info.getter();
  sub_100005404(v13, &_mh_execute_header, v14, "Creating schema for the board drawings table", 44, 2, _swiftEmptyArrayStorage);
  v81 = 0;
  v82 = 0xE000000000000000;
  _StringGuts.grow(_:)(236);
  v15._countAndFlagsBits = 0x5420455441455243;
  v15._object = 0xED000020454C4241;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0xD000000000000018;
  v72 = "asset_references";
  v16._object = 0x80000001015A31A0;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 10272;
  v17._object = 0xE200000000000000;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0xD000000000000011;
  v18._object = 0x80000001015A38C0;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0xD00000000000001ALL;
  v19._object = 0x80000001015AA000;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0x736472616F62;
  v20._object = 0xE600000000000000;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 10272;
  v21._object = 0xE200000000000000;
  String.append(_:)(v21);
  v22._object = 0x8000000101585360;
  v22._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 0xD000000000000015;
  v23._object = 0x80000001015AA020;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 0x695F74656B637562;
  v24._object = 0xEC0000007865646ELL;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 0xD000000000000013;
  v25._object = 0x80000001015AA340;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 0x645F74656B637562;
  v26._object = 0xEB00000000617461;
  String.append(_:)(v26);
  v27._object = 0x80000001015AA270;
  v27._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v27);
  v28._object = 0x80000001015A33D0;
  v28._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 0xD00000000000001DLL;
  v29._object = 0x80000001015AA630;
  String.append(_:)(v29);
  v30._countAndFlagsBits = 0x7461645F636E7973;
  v30._object = 0xE900000000000061;
  String.append(_:)(v30);
  v31._countAndFlagsBits = 0x202C424F4C4220;
  v31._object = 0xE700000000000000;
  String.append(_:)(v31);
  v32._countAndFlagsBits = 0xD00000000000001ELL;
  v32._object = 0x80000001015A3920;
  String.append(_:)(v32);
  v33._countAndFlagsBits = 0x202C424F4C4220;
  v33._object = 0xE700000000000000;
  String.append(_:)(v33);
  v34._countAndFlagsBits = 0xD00000000000001FLL;
  v34._object = 0x80000001015A3940;
  String.append(_:)(v34);
  v35._countAndFlagsBits = 0xD00000000000001DLL;
  v35._object = 0x80000001015AA630;
  String.append(_:)(v35);
  v36._countAndFlagsBits = 0xD00000000000001ELL;
  v36._object = 0x80000001015A3960;
  String.append(_:)(v36);
  v37._countAndFlagsBits = 0xD000000000000024;
  v37._object = 0x80000001015AA360;
  String.append(_:)(v37);
  v38._countAndFlagsBits = 0xD000000000000011;
  v38._object = 0x80000001015A38C0;
  String.append(_:)(v38);
  v39._countAndFlagsBits = 44;
  v39._object = 0xE100000000000000;
  String.append(_:)(v39);
  v40._countAndFlagsBits = 0x695F74656B637562;
  v40._object = 0xEC0000007865646ELL;
  String.append(_:)(v40);
  v41._countAndFlagsBits = 10537;
  v41._object = 0xE200000000000000;
  String.append(_:)(v41);
  v42 = v81;
  v43 = v82;
  v44 = *(v79 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_database);
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v46 = v80;
  v47 = sub_10001CC04(v45, v42, v43);

  if (v46)
  {
    return;
  }

  v48 = *(*(v47 + 16) + 32);
  *v6 = v48;
  v49 = v74;
  v76(v6, v75, v74);
  v50 = v48;
  v51 = _dispatchPreconditionTest(_:)();
  v78(v6, v49);
  if ((v51 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  v52 = *(v47 + 16);

  v53 = sub_10001CEC4(v52, v47);

  if (v53 == 101)
  {
    v54 = sub_10001C924(v44, 0xD00000000000006ALL, 0x80000001015AA680);
    if (v54 == 101)
    {
      v55 = *(*(v47 + 16) + 32);
      *v6 = v55;
      v76(v6, v75, v49);
      v56 = v55;
      v57 = _dispatchPreconditionTest(_:)();
      v78(v6, v49);
      if (v57)
      {
        swift_beginAccess();
        v58 = *(v47 + 24);
        if (v58)
        {
          goto LABEL_14;
        }

        goto LABEL_15;
      }

      goto LABEL_20;
    }
  }

  else
  {
    sub_10089C7D0();
    swift_allocError();
    *v59 = v53;
    *(v59 + 8) = 0xD000000000000029;
    *(v59 + 16) = 0x80000001015AA650;
    swift_willThrow();
    v60 = *(*(v47 + 16) + 32);
    *v6 = v60;
    v76(v6, v75, v49);
    v61 = v60;
    v12 = _dispatchPreconditionTest(_:)();
    v54 = (v78)(v6, v49);
    if (v12)
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  v62 = v54;
  v81 = 0;
  v82 = 0xE000000000000000;
  _StringGuts.grow(_:)(71);
  v63._countAndFlagsBits = v12 + 7;
  v63._object = 0x80000001015AA6F0;
  String.append(_:)(v63);
  v64._countAndFlagsBits = v12 + 8;
  v64._object = (v72 | 0x8000000000000000);
  String.append(_:)(v64);
  v65._countAndFlagsBits = v12 + 30;
  v65._object = 0x80000001015AA710;
  String.append(_:)(v65);
  v66 = v81;
  v67 = v82;
  sub_10089C7D0();
  swift_allocError();
  *v68 = v62;
  *(v68 + 8) = v66;
  *(v68 + 16) = v67;
  swift_willThrow();
  v69 = *(*(v47 + 16) + 32);
  *v6 = v69;
  v76(v6, v75, v49);
  v70 = v69;
  LOBYTE(v67) = _dispatchPreconditionTest(_:)();
  v78(v6, v49);
  if ((v67 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_13:
  swift_beginAccess();
  v58 = *(v47 + 24);
  if (v58)
  {
LABEL_14:
    sqlite3_finalize(v58);
    *(v47 + 24) = 0;
  }

LABEL_15:
}

void sub_100DDC508()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = (&v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v6 = v7;
  v8 = enum case for DispatchPredicate.onQueue(_:);
  v38 = *(v3 + 104);
  (v38)(v6, enum case for DispatchPredicate.onQueue(_:), v2, v4);
  v9 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v10 = *(v3 + 8);
  v10(v6, v2);
  if (v7)
  {
    v37 = v10;
    if (qword_1019F2258 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v11 = static OS_os_log.boardStore;
  v12 = static os_log_type_t.info.getter();
  sub_100005404(v11, &_mh_execute_header, v12, "Creating schema for the key/value table", 39, 2, _swiftEmptyArrayStorage);
  v39 = 0;
  v40 = 0xE000000000000000;
  _StringGuts.grow(_:)(74);
  v13._countAndFlagsBits = 0x5420455441455243;
  v13._object = 0xED000020454C4241;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0x756C61765F79656BLL;
  v14._object = 0xEE00617461645F65;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 10272;
  v15._object = 0xE200000000000000;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 7955819;
  v16._object = 0xE300000000000000;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0xD00000000000001CLL;
  v17._object = 0x80000001015AA5B0;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x65756C6176;
  v18._object = 0xE500000000000000;
  String.append(_:)(v18);
  v19._object = 0x80000001015AA320;
  v19._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0x6E695F6172747865;
  v20._object = 0xEA00000000006F66;
  String.append(_:)(v20);
  v21._countAndFlagsBits = 0x29205458455420;
  v21._object = 0xE700000000000000;
  String.append(_:)(v21);
  v22 = v39;
  v23 = v40;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v25 = sub_10001CC04(v24, v22, v23);

  if (v1)
  {
    return;
  }

  v26 = *(*(v25 + 16) + 32);
  *v6 = v26;
  v38(v6, v8, v2);
  v27 = v26;
  LOBYTE(v26) = _dispatchPreconditionTest(_:)();
  v28 = v37;
  v37(v6, v2);
  if ((v26 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v29 = *(v25 + 16);

  LODWORD(v30) = sub_10001CEC4(v29, v25);

  if (v30 != 101)
  {
LABEL_8:
    sub_10089C7D0();
    swift_allocError();
    *v32 = v30;
    *(v32 + 8) = 0xD000000000000024;
    *(v32 + 16) = 0x80000001015AA5D0;
    swift_willThrow();
    v33 = *(*(v25 + 16) + 32);
    *v6 = v33;
    v38(v6, v8, v2);
    v34 = v33;
    v35 = _dispatchPreconditionTest(_:)();
    v37(v6, v2);
    if (v35)
    {
      goto LABEL_9;
    }

LABEL_16:
    __break(1u);
  }

  v30 = *(*(v25 + 16) + 32);
  *v6 = v30;
  v38(v6, v8, v2);
  v31 = v30;
  v8 = _dispatchPreconditionTest(_:)();
  v28(v6, v2);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  swift_beginAccess();
  v36 = *(v25 + 24);
  if (v36)
  {
    sqlite3_finalize(v36);
    *(v25 + 24) = 0;
  }
}

void sub_100DDC9E4()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = (&v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v6 = v7;
  v8 = enum case for DispatchPredicate.onQueue(_:);
  v38 = *(v3 + 104);
  (v38)(v6, enum case for DispatchPredicate.onQueue(_:), v2, v4);
  v9 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v10 = *(v3 + 8);
  v10(v6, v2);
  if (v7)
  {
    v37 = v10;
    if (qword_1019F2258 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v11 = static OS_os_log.boardStore;
  v12 = static os_log_type_t.info.getter();
  sub_100005404(v11, &_mh_execute_header, v12, "Creating schema for the assets table", 36, 2, _swiftEmptyArrayStorage);
  v39 = 0;
  v40 = 0xE000000000000000;
  _StringGuts.grow(_:)(74);
  v13._countAndFlagsBits = 0x5420455441455243;
  v13._object = 0xED000020454C4241;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0x737465737361;
  v14._object = 0xE600000000000000;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 10272;
  v15._object = 0xE200000000000000;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0x75755F7465737361;
  v16._object = 0xEA00000000006469;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0xD00000000000001CLL;
  v17._object = 0x8000000101585A40;
  String.append(_:)(v17);
  v18._countAndFlagsBits = 0x6F69736E65747865;
  v18._object = 0xE90000000000006ELL;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x202C5458455420;
  v19._object = 0xE700000000000000;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0x6E6F7473626D6F74;
  v20._object = 0xEE00657461645F65;
  String.append(_:)(v20);
  v21._object = 0x80000001015AA530;
  v21._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v21);
  v22 = v39;
  v23 = v40;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v25 = sub_10001CC04(v24, v22, v23);

  if (v1)
  {
    return;
  }

  v26 = *(*(v25 + 16) + 32);
  *v6 = v26;
  v38(v6, v8, v2);
  v27 = v26;
  LOBYTE(v26) = _dispatchPreconditionTest(_:)();
  v28 = v37;
  v37(v6, v2);
  if ((v26 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v29 = *(v25 + 16);

  LODWORD(v30) = sub_10001CEC4(v29, v25);

  if (v30 != 101)
  {
LABEL_8:
    sub_10089C7D0();
    swift_allocError();
    *v32 = v30;
    *(v32 + 8) = 0xD000000000000021;
    *(v32 + 16) = 0x80000001015AA550;
    swift_willThrow();
    v33 = *(*(v25 + 16) + 32);
    *v6 = v33;
    v38(v6, v8, v2);
    v34 = v33;
    v35 = _dispatchPreconditionTest(_:)();
    v37(v6, v2);
    if (v35)
    {
      goto LABEL_9;
    }

LABEL_16:
    __break(1u);
  }

  v30 = *(*(v25 + 16) + 32);
  *v6 = v30;
  v38(v6, v8, v2);
  v31 = v30;
  v8 = _dispatchPreconditionTest(_:)();
  v28(v6, v2);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_9:
  swift_beginAccess();
  v36 = *(v25 + 24);
  if (v36)
  {
    sqlite3_finalize(v36);
    *(v25 + 24) = 0;
  }
}

void sub_100DDCECC()
{
  v2 = v0;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = (v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v7 = v8;
  v9 = *(v4 + 104);
  v61 = enum case for DispatchPredicate.onQueue(_:);
  v62 = v9;
  v60[1] = v4 + 104;
  v9(v7, v5);
  v10 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v63 = *(v4 + 8);
  v63(v7, v3);
  if (v8)
  {
    v64 = v1;
    if (qword_1019F2258 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v11 = static OS_os_log.boardStore;
  v12 = static os_log_type_t.info.getter();
  sub_100005404(v11, &_mh_execute_header, v12, "Creating schema for the asset_references table", 46, 2, _swiftEmptyArrayStorage);
  v65 = 0;
  v66 = 0xE000000000000000;
  _StringGuts.grow(_:)(146);
  v13._countAndFlagsBits = 0x5420455441455243;
  v13._object = 0xED000020454C4241;
  String.append(_:)(v13);
  v14._object = 0x80000001015A3180;
  v14._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v14);
  v15._countAndFlagsBits = 10272;
  v15._object = 0xE200000000000000;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0xD000000000000013;
  v16._object = 0x80000001015A3FA0;
  String.append(_:)(v16);
  v17._object = 0x80000001015AA270;
  v17._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v17);
  v18._object = 0x8000000101585360;
  v18._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 0x202C424F4C4220;
  v19._object = 0xE700000000000000;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 0xD000000000000013;
  v20._object = 0x80000001015A3FC0;
  String.append(_:)(v20);
  v21._object = 0x80000001015AA320;
  v21._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0x75755F7465737361;
  v22._object = 0xEA00000000006469;
  String.append(_:)(v22);
  v23._object = 0x80000001015AA270;
  v23._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v23);
  v24._countAndFlagsBits = 0x7265727265666572;
  v24._object = 0xED0000657079745FLL;
  String.append(_:)(v24);
  v25._countAndFlagsBits = 0xD000000000000013;
  v25._object = 0x80000001015AA340;
  String.append(_:)(v25);
  v26._object = 0x80000001015A33D0;
  v26._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v26);
  v27._countAndFlagsBits = 0xD000000000000024;
  v27._object = 0x80000001015AA360;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 0xD000000000000013;
  v28._object = 0x80000001015A3FA0;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 44;
  v29._object = 0xE100000000000000;
  String.append(_:)(v29);
  v30._countAndFlagsBits = 0xD000000000000013;
  v30._object = 0x80000001015A3FC0;
  String.append(_:)(v30);
  v31._countAndFlagsBits = 10537;
  v31._object = 0xE200000000000000;
  String.append(_:)(v31);
  v32 = v65;
  v33 = v66;
  v34 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_database);
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v36 = v64;
  v37 = sub_10001CC04(v35, v32, v33);
  if (v36)
  {
    goto LABEL_18;
  }

  v38 = v37;

  v39 = *(*(v38 + 16) + 32);
  *v7 = v39;
  v62(v7, v61, v3);
  v40 = v39;
  v41 = _dispatchPreconditionTest(_:)();
  v63(v7, v3);
  if ((v41 & 1) == 0)
  {
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  v42 = *(v38 + 16);

  v43 = sub_10001CEC4(v42, v38);

  if (v43 == 101)
  {
    v44 = sub_10001C924(v34, 0xD00000000000004ELL, 0x80000001015AA3C0);
    if (v44 == 101)
    {
      v45 = sub_10001C924(v34, 0xD00000000000004DLL, 0x80000001015AA460);
      v46 = 0xD000000000000010;
      if (v45 == 101)
      {
        v47 = *(*(v38 + 16) + 32);
        *v7 = v47;
        v62(v7, v61, v3);
        v48 = v47;
        LOBYTE(v47) = _dispatchPreconditionTest(_:)();
        v63(v7, v3);
        if (v47)
        {
          swift_beginAccess();
          v49 = *(v38 + 24);
          if (v49)
          {
            goto LABEL_17;
          }

          goto LABEL_18;
        }

        goto LABEL_22;
      }

      goto LABEL_15;
    }
  }

  else
  {
    sub_10089C7D0();
    swift_allocError();
    *v50 = v43;
    *(v50 + 8) = 0xD00000000000002BLL;
    *(v50 + 16) = 0x80000001015AA390;
    swift_willThrow();
    v51 = *(*(v38 + 16) + 32);
    *v7 = v51;
    v62(v7, v61, v3);
    v52 = v51;
    LOBYTE(v51) = _dispatchPreconditionTest(_:)();
    v44 = (v63)(v7, v3);
    if (v51)
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  v46 = v44;
  sub_10089C7D0();
  swift_allocError();
  *v53 = v46;
  *(v53 + 8) = 0xD000000000000044;
  *(v53 + 16) = 0x80000001015AA410;
  swift_willThrow();
  v54 = *(*(v38 + 16) + 32);
  *v7 = v54;
  v62(v7, v61, v3);
  v55 = v54;
  LOBYTE(v54) = _dispatchPreconditionTest(_:)();
  v45 = (v63)(v7, v3);
  if (v54)
  {
    goto LABEL_16;
  }

  __break(1u);
LABEL_15:
  v56 = v45;
  sub_10089C7D0();
  swift_allocError();
  *v57 = v56;
  *(v57 + 8) = v46 + 48;
  *(v57 + 16) = 0x80000001015AA4B0;
  swift_willThrow();
  v58 = *(*(v38 + 16) + 32);
  *v7 = v58;
  v62(v7, v61, v3);
  v59 = v58;
  LOBYTE(v58) = _dispatchPreconditionTest(_:)();
  v63(v7, v3);
  if ((v58 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_16:
  swift_beginAccess();
  v49 = *(v38 + 24);
  if (v49)
  {
LABEL_17:
    sqlite3_finalize(v49);
    *(v38 + 24) = 0;
  }

LABEL_18:
}