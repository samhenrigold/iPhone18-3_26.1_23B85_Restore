BOOL sub_10007C308()
{
  if (*(*v0 + 16))
  {
    return 0;
  }

  if (*(v0[1] + 16))
  {
    return 0;
  }

  if (*(v0[2] + 16))
  {
    return 0;
  }

  if (*(v0[3] + 16))
  {
    return 0;
  }

  return *(v0[4] + 16) == 0;
}

uint64_t sub_10007C3BC()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_1010C737C;
  }

  else
  {

    v2 = sub_10007C4D8;
  }

  return _swift_task_switch(v2, 0, 0);
}

unint64_t sub_10007C4FC()
{
  result = qword_101A24B80;
  if (!qword_101A24B80)
  {
    result = swift_getWitnessTable(aA_29, &type metadata for CRLBoardLibraryViewModel.Library, v0, v1);
    atomic_store(result, &qword_101A24B80);
  }

  return result;
}

uint64_t sub_10007C550(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_10007C5E0(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10002D4C8;

  return sub_10007C694();
}

uint64_t sub_10007C694()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_10007EE50;

  return sub_10007C740();
}

uint64_t sub_10007C740()
{
  v1[2] = v0;
  v2 = type metadata accessor for URL();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_10007E050, 0, 0);
}

void sub_10007C800()
{
  v1 = *&v0[OBJC_IVAR____TtC8Freeform25CRLBoardPreviewImageCache_boardLibrary];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  if (*(v1 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_didStartUpdating) == 1)
  {
    sub_1006E9000(v0);
  }

  else
  {
    v3 = objc_opt_self();
    v4 = v0;
    v5 = [v3 defaultCenter];
    v6 = swift_allocObject();
    *(v6 + 16) = 0;
    if (qword_1019F2748 != -1)
    {
      swift_once();
    }

    v7 = qword_101AD8948;
    v8 = [objc_opt_self() mainQueue];
    v9 = swift_allocObject();
    v9[2] = v6;
    v9[3] = v5;
    v9[4] = sub_1006EEC18;
    v9[5] = v2;
    v13[4] = sub_1006EEC20;
    v13[5] = v9;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = *"";
    v13[2] = sub_100059694;
    v13[3] = &unk_101882448;
    v10 = _Block_copy(v13);

    v11 = v5;

    v12 = [v11 addObserverForName:v7 object:v1 queue:v8 usingBlock:v10];

    _Block_release(v10);

    swift_beginAccess();
    *(v6 + 16) = v12;

    swift_unknownObjectRelease();
  }
}

uint64_t sub_10007CAA0()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 104);
  v3 = *(v1 + 32);
  *(v0 + 224) = v3;
  v4 = -1;
  v5 = -1 << v3;
  if (-(-1 << v3) < 64)
  {
    v4 = ~(-1 << -(-1 << v3));
  }

  v6 = v4 & *(v1 + 56);
  if (v6)
  {
    v7 = 0;
LABEL_8:
    *(v0 + 192) = v6;
    *(v0 + 200) = v7;
    v11 = *(v0 + 112);
    v10 = *(v0 + 120);
    sub_10005006C(*(v1 + 48) + *(v2 + 72) * (__clz(__rbit64(v6)) | (v7 << 6)), v10, type metadata accessor for CRLBoardIdentifier);
    sub_100025738(v10, v11, type metadata accessor for CRLBoardIdentifier);
    if (qword_1019F2130 != -1)
    {
      swift_once();
    }

    v12 = static OS_os_log.crlBoardLibrary;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v14 = UUID.uuidString.getter();
    v16 = v15;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v14;
    *(inited + 40) = v16;
    v17 = static os_log_type_t.default.getter();
    sub_100005404(v12, &_mh_execute_header, v17, "Found discardable board %{public}@, marking as not discardable", 62, 2, inited);
    swift_setDeallocating();
    sub_100005070((inited + 32));
    v18 = swift_task_alloc();
    *(v0 + 208) = v18;
    *v18 = v0;
    v18[1] = sub_1010C7454;
    v19 = *(v0 + 112);

    return sub_1010C4C18(v19);
  }

  else
  {
    v8 = 0;
    v9 = ((63 - v5) >> 6) - 1;
    while (v9 != v8)
    {
      v7 = v8 + 1;
      v6 = *(v1 + 8 * v8++ + 64);
      if (v6)
      {
        goto LABEL_8;
      }
    }

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_10007CD44()
{
  v2 = *v1;
  v2[21] = v0;

  if (v0)
  {
    v3 = v2[18];
    v4 = v2[19];

    return _swift_task_switch(sub_1010AD7F8, v3, v4);
  }

  else
  {
    v5 = swift_task_alloc();
    v2[22] = v5;
    *v5 = v2;
    v5[1] = sub_1010AD620;

    return sub_10007CEB8(_swiftEmptySetSingleton);
  }
}

uint64_t sub_10007CEB8(uint64_t a1)
{
  v2[33] = a1;
  v2[34] = v1;
  sub_1005B981C(&qword_101A03A00, &unk_101480610);
  v2[35] = swift_task_alloc();
  v2[36] = *(type metadata accessor for CRLFolderIdentifier(0) - 8);
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = sub_1005B981C(&qword_101A11B20, &qword_101498210);
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  sub_1005B981C(&qword_1019F33D0, &unk_101468A70);
  v2[42] = swift_task_alloc();
  v2[43] = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v3 = type metadata accessor for CRLBoardIdentifier(0);
  v2[46] = v3;
  v2[47] = *(v3 - 8);
  v2[48] = swift_task_alloc();
  v4 = _s5BoardVMa(0);
  v2[49] = v4;
  v2[50] = *(v4 - 8);
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();
  v5 = _s4NodeVMa(0);
  v2[58] = v5;
  v2[59] = *(v5 - 8);
  v2[60] = swift_task_alloc();
  v2[61] = swift_task_alloc();
  v2[62] = swift_task_alloc();
  v2[63] = swift_task_alloc();
  v2[64] = swift_task_alloc();
  v2[65] = swift_task_alloc();
  v2[66] = swift_task_alloc();
  v2[67] = swift_task_alloc();
  v2[68] = swift_task_alloc();
  sub_1005B981C(&unk_1019FA3E0, &unk_101474F20);
  v2[69] = swift_task_alloc();
  v2[70] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[71] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[72] = v7;
  v2[73] = v6;

  return _swift_task_switch(sub_10007D2AC, v7, v6);
}

uint64_t sub_10007D2AC(uint64_t a1)
{
  if (qword_1019F2130 != -1)
  {
    swift_once();
  }

  v2 = v1[33];
  v3 = v1[34];
  v4 = static OS_os_log.crlBoardLibrary;
  v5 = static os_log_type_t.default.getter();
  sub_100005404(v4, &_mh_execute_header, v5, "Updating snapshot", 17, 2, _swiftEmptyArrayStorage);
  v1[74] = *(v2 + 16);
  v6 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_boardViewModels;
  v1[75] = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_boardViewModels;
  swift_beginAccess();
  v1[76] = *(v3 + v6);
  v7 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_folderViewModels;
  v1[77] = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_folderViewModels;
  swift_beginAccess();
  v1[78] = *(v3 + v7);
  v8 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot;
  v1[79] = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot;
  v9 = (v3 + v8);
  v1[80] = *v9;
  v1[81] = v9[1];
  v1[82] = v9[2];
  v1[83] = v9[3];
  v1[84] = v9[4];
  v1[85] = v9[5];

  v10 = swift_task_alloc();
  v1[86] = v10;
  *v10 = v1;
  v10[1] = sub_101102548;

  return sub_10007D4A8();
}

uint64_t sub_10007D4A8()
{
  v1[88] = v0;
  sub_1005B981C(&qword_101A2AD18, &qword_1014C5DE0);
  v1[89] = swift_task_alloc();
  v1[90] = swift_task_alloc();
  sub_1005B981C(&qword_101A2AD20, &qword_1014C5DE8);
  v1[91] = swift_task_alloc();
  v1[92] = type metadata accessor for CRLBoardIdentifierStorage(0);
  v1[93] = swift_task_alloc();
  v2 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v1[94] = v2;
  v1[95] = *(v2 - 8);
  v1[96] = swift_task_alloc();
  v1[97] = swift_task_alloc();
  type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  v1[98] = swift_task_alloc();
  sub_1005B981C(&unk_1019FB770, &unk_10146FA30);
  v1[99] = swift_task_alloc();
  v1[100] = swift_task_alloc();
  v1[101] = swift_task_alloc();
  v3 = _s4NodeVMa(0);
  v1[102] = v3;
  v1[103] = *(v3 - 8);
  v1[104] = swift_task_alloc();
  v1[105] = swift_task_alloc();
  v1[106] = type metadata accessor for CRLSharedBoardMetadataCRDTData(0);
  v1[107] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v1[108] = v4;
  v1[109] = *(v4 - 8);
  v1[110] = swift_task_alloc();
  v1[111] = swift_task_alloc();
  sub_1005B981C(&qword_1019F33E0, &unk_101468A80);
  v1[112] = swift_task_alloc();
  v1[113] = swift_task_alloc();
  sub_1005B981C(&qword_1019F33D0, &unk_101468A70);
  v1[114] = swift_task_alloc();
  v1[115] = type metadata accessor for CRLBoardCRDTData(0);
  v1[116] = swift_task_alloc();
  v1[117] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v1[118] = v5;
  v1[119] = *(v5 - 8);
  v1[120] = swift_task_alloc();
  v1[121] = swift_task_alloc();
  v1[122] = swift_task_alloc();
  v6 = type metadata accessor for CRLBoardIdentifier(0);
  v1[123] = v6;
  v1[124] = *(v6 - 8);
  v1[125] = swift_task_alloc();
  v1[126] = swift_task_alloc();
  v1[127] = swift_task_alloc();
  v1[128] = swift_task_alloc();
  v1[129] = swift_task_alloc();
  sub_1005B981C(&unk_1019FA3E0, &unk_101474F20);
  v1[130] = swift_task_alloc();
  v1[131] = swift_task_alloc();
  v7 = _s5BoardVMa(0);
  v1[132] = v7;
  v1[133] = *(v7 - 8);
  v1[134] = swift_task_alloc();
  v1[135] = swift_task_alloc();
  v1[136] = swift_task_alloc();
  v1[137] = swift_task_alloc();
  v1[138] = swift_task_alloc();
  v1[139] = swift_task_alloc();
  v8 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  v1[140] = v8;
  v1[141] = *(v8 - 8);
  v1[142] = swift_task_alloc();
  v1[143] = swift_task_alloc();
  v9 = type metadata accessor for CRLFolderIdentifier(0);
  v1[144] = v9;
  v1[145] = *(v9 - 8);
  v1[146] = swift_task_alloc();
  v1[147] = swift_task_alloc();
  v10 = type metadata accessor for CRLFolder(0);
  v1[148] = v10;
  v1[149] = *(v10 - 8);
  v1[150] = swift_task_alloc();
  v1[151] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[152] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[153] = v12;
  v1[154] = v11;

  return _swift_task_switch(sub_10007F600, v12, v11);
}

void sub_10007DBC0(uint64_t a1)
{
  sub_1012F280C(319, &qword_1019F48E0, &type metadata for Double, &protocol witness table for Double, &protocol witness table for Double);
  if (v1 <= 0x3F)
  {
    sub_100039D58(319, &qword_1019F48D8, &type metadata for Double, &protocol witness table for Double);
    if (v2 <= 0x3F)
    {
      sub_100039D58(319, &qword_1019F7D40, &type metadata for Bool, &protocol witness table for Bool);
      if (v3 <= 0x3F)
      {
        sub_1012F280C(319, &unk_101A336D0, &type metadata for Bool, &protocol witness table for Bool, &protocol witness table for Bool);
        if (v4 <= 0x3F)
        {
          sub_100039F68(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10007DD1C(uint64_t a1)
{
  sub_10007DE30(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CRLBoardRootContainerAffinityCRDTData(319);
    if (v2 <= 0x3F)
    {
      sub_100039D58(319, &qword_1019F48D0, &type metadata for String, &protocol witness table for String);
      if (v3 <= 0x3F)
      {
        type metadata accessor for CRLBoardInsertStyleData(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for CRLSharedBoardMetadataCRDTData(319);
          if (v5 <= 0x3F)
          {
            type metadata accessor for CRLBoardScenesCRDTData(319);
            if (v6 <= 0x3F)
            {
              sub_100039F68(319);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_10007DE30(uint64_t a1)
{
  if (!qword_1019FDEB8)
  {
    type metadata accessor for UUID();
    v1 = type metadata accessor for CRRegister();
    if (!v2)
    {
      atomic_store(v1, &qword_1019FDEB8);
    }
  }
}

void sub_10007DEB0(uint64_t a1)
{
  sub_10007DE30(319);
  if (v1 <= 0x3F)
  {
    sub_100039F68(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10007DF54(uint64_t a1)
{
  sub_1012F28B0(319);
  if (v1 <= 0x3F)
  {
    sub_1012F2954(319);
    if (v2 <= 0x3F)
    {
      sub_1012F29F8(319);
      if (v3 <= 0x3F)
      {
        sub_1012F2A9C(319);
        if (v4 <= 0x3F)
        {
          sub_1012F2B40(319);
          if (v5 <= 0x3F)
          {
            sub_100039F68(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_10007E050()
{
  v1 = [*(v0[2] + OBJC_IVAR____TtC8Freeform28CRLSharedHighlightController_highlightCenter) highlights];
  sub_100006370(0, &qword_1019F54E8, SWHighlight_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = 0;
    v5 = v0[4];
    v23 = v2 & 0xFFFFFFFFFFFFFF8;
    v24 = v2 & 0xC000000000000001;
    v6 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v24)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(v23 + 16))
        {
          goto LABEL_16;
        }

        v7 = *(v2 + 8 * v4 + 32);
      }

      v8 = v7;
      v9 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v10 = v2;
      v11 = [v7 URL];
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_100B364FC(0, v6[2] + 1, 1, v6);
      }

      v13 = v6[2];
      v12 = v6[3];
      if (v13 >= v12 >> 1)
      {
        v6 = sub_100B364FC((v12 > 1), v13 + 1, 1, v6);
      }

      v14 = v0[5];
      v15 = v0[3];
      v6[2] = v13 + 1;
      (*(v5 + 32))(v6 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13, v14, v15);
      ++v4;
      v2 = v10;
      if (v9 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v6 = _swiftEmptyArrayStorage;
LABEL_19:
  if (v6[2])
  {
    v16 = v0[2];
    v17 = swift_allocObject();
    *(v17 + 16) = v2;
    *(v17 + 24) = v16;
    v18 = v16;
    sub_1005F142C(v6, sub_1005F1420, v17);
  }

  else
  {

    if (qword_1019F22C8 != -1)
    {
      swift_once();
    }

    v19 = static OS_os_log.shareState;
    v20 = static os_log_type_t.default.getter();
    sub_100005404(v19, &_mh_execute_header, v20, "Highlights did not contain any URLs.", 36, 2, _swiftEmptyArrayStorage);
    sub_10007EA74(_swiftEmptyArrayStorage);
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_10007E38C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10007E3CC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = sub_1005C4E5C(a2, a3);
    v8 = a4();
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> A?, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10007E448()
{
  result = qword_101A12968;
  if (!qword_101A12968)
  {
    result = swift_getWitnessTable(byte_1014C4C80, &type metadata for CRLWPShapePresetData, v0, v1);
    atomic_store(result, &qword_101A12968);
  }

  return result;
}

unint64_t sub_10007E49C()
{
  result = qword_101A2A280;
  if (!qword_101A2A280)
  {
    result = swift_getWitnessTable(byte_1014C49D0, &type metadata for CRLWPShapePresetData, v0, v1);
    atomic_store(result, &qword_101A2A280);
  }

  return result;
}

unint64_t sub_10007E4F4()
{
  result = qword_101A2A220;
  if (!qword_101A2A220)
  {
    result = swift_getWitnessTable(byte_1014C4978, &type metadata for CRLWPShapePresetData, v0, v1);
    atomic_store(result, &qword_101A2A220);
  }

  return result;
}

void sub_10007E55C()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDBF8, &qword_101AD5BA0);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.shareState = v1;
}

unint64_t sub_10007E614()
{
  result = qword_101A12950;
  if (!qword_101A12950)
  {
    result = swift_getWitnessTable(byte_1014AB940, &type metadata for CRLImagePresetData, v0, v1);
    atomic_store(result, &qword_101A12950);
  }

  return result;
}

unint64_t sub_10007E668()
{
  result = qword_101A1AE78;
  if (!qword_101A1AE78)
  {
    result = swift_getWitnessTable(byte_1014AB68C, &type metadata for CRLImagePresetData, v0, v1);
    atomic_store(result, &qword_101A1AE78);
  }

  return result;
}

unint64_t sub_10007E6C0()
{
  result = qword_101A1AE18;
  if (!qword_101A1AE18)
  {
    result = swift_getWitnessTable("̓8", &type metadata for CRLImagePresetData, v0, v1);
    atomic_store(result, &qword_101A1AE18);
  }

  return result;
}

uint64_t sub_10007E728(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  _s5BoardVMa(0);
  v2[4] = swift_task_alloc();
  v3 = type metadata accessor for CRLPreviewImages.Item(0);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  v2[12] = swift_task_alloc();
  sub_1005B981C(&unk_1019FB770, &unk_10146FA30);
  v2[13] = swift_task_alloc();
  v4 = _s4NodeVMa(0);
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = type metadata accessor for MainActor();
  v2[19] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[20] = v6;
  v2[21] = v5;

  return _swift_task_switch(sub_100086FA0, v6, v5);
}

unint64_t sub_10007E960()
{
  result = qword_101A12940;
  if (!qword_101A12940)
  {
    result = swift_getWitnessTable(byte_1014B8C10, &type metadata for CRLMoviePresetData, v0, v1);
    atomic_store(result, &qword_101A12940);
  }

  return result;
}

unint64_t sub_10007E9B4()
{
  result = qword_101A23340;
  if (!qword_101A23340)
  {
    result = swift_getWitnessTable(byte_1014B895C, &type metadata for CRLMoviePresetData, v0, v1);
    atomic_store(result, &qword_101A23340);
  }

  return result;
}

unint64_t sub_10007EA0C()
{
  result = qword_101A232E0;
  if (!qword_101A232E0)
  {
    result = swift_getWitnessTable(byte_1014B8904, &type metadata for CRLMoviePresetData, v0, v1);
    atomic_store(result, &qword_101A232E0);
  }

  return result;
}

double sub_10007EA74(uint64_t a1)
{
  v3 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = *&v1[OBJC_IVAR____TtC8Freeform28CRLSharedHighlightController_sharedHighlights];
  *&v1[OBJC_IVAR____TtC8Freeform28CRLSharedHighlightController_sharedHighlights] = a1;

  v8 = sub_10007EBE4(v7, v6);

  if ((v8 & 1) == 0)
  {
    v10 = type metadata accessor for TaskPriority();
    (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
    type metadata accessor for MainActor();
    v11 = v1;
    v12 = static MainActor.shared.getter();
    v13 = swift_allocObject();
    v13[2] = v12;
    v13[3] = &protocol witness table for MainActor;
    v13[4] = v11;
    sub_10064191C(0, 0, v5, &unk_10146D690, v13);
  }

  return result;
}

uint64_t sub_10007EBFC(unint64_t a1, unint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v6)
    {
      goto LABEL_29;
    }

    v8 = v4 & 0xFFFFFFFFFFFFFF8;
    v9 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v4 < 0)
    {
      v8 = v4;
    }

    if (v5)
    {
      v9 = v8;
    }

    v10 = a2 & 0xFFFFFFFFFFFFFF8;
    v11 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v10 = a2;
    }

    if (a2 >> 62)
    {
      v11 = v10;
    }

    if (v9 == v11)
    {
LABEL_29:
      v19 = 1;
      return v19 & 1;
    }

    if (v6 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = a3(0);
    if (((a2 | v4) & 0xC000000000000001) != 0)
    {
      v12 = a2 & 0xC000000000000001;
      v13 = 4;
      while (1)
      {
        v14 = v13 - 4;
        v15 = v13 - 3;
        if (__OFADD__(v13 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v4 & 0xC000000000000001) != 0)
        {
          v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          if (!v12)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v14 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v16 = *(v4 + 8 * v13);
          if (!v12)
          {
LABEL_24:
            if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v17 = *(a2 + 8 * v13);
            goto LABEL_26;
          }
        }

        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_26:
        v18 = v17;
        v19 = static NSObject.== infix(_:_:)();

        if (v19)
        {
          ++v13;
          if (v15 != v6)
          {
            continue;
          }
        }

        return v19 & 1;
      }
    }

    v20 = (v4 + 32);
    v21 = (a2 + 32);
    v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = v6 - 1;
    while (1)
    {
      if (!v22)
      {
        goto LABEL_40;
      }

      if (!v23)
      {
        break;
      }

      v26 = *v20++;
      v25 = v26;
      v27 = *v21++;
      a2 = v25;
      v4 = v27;
      v19 = static NSObject.== infix(_:_:)();

      v29 = v24-- != 0;
      if (v19)
      {
        --v23;
        --v22;
        if (v29)
        {
          continue;
        }
      }

      return v19 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v30 = a3;
    v31 = _CocoaArrayWrapper.endIndex.getter();
    a3 = v30;
    v6 = v31;
  }

  v32 = a3;
  result = _CocoaArrayWrapper.endIndex.getter();
  a3 = v32;
  if (v6 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_10007EE50()
{

  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000875FC, v1, v0);
}

unint64_t sub_10007EF8C()
{
  result = qword_101A2F498;
  if (!qword_101A2F498)
  {
    result = swift_getWitnessTable(byte_1014D6E98, &type metadata for CRLWPStickyNotePresetData, v0, v1);
    atomic_store(result, &qword_101A2F498);
  }

  return result;
}

unint64_t sub_10007EFE0()
{
  result = qword_101A2F4F8;
  if (!qword_101A2F4F8)
  {
    result = swift_getWitnessTable(byte_1014D6BE4, &type metadata for CRLWPStickyNotePresetData, v0, v1);
    atomic_store(result, &qword_101A2F4F8);
  }

  return result;
}

unint64_t sub_10007F038()
{
  result = qword_101A2F490;
  if (!qword_101A2F490)
  {
    result = swift_getWitnessTable(aU_9, &type metadata for CRLWPStickyNotePresetData, v0, v1);
    atomic_store(result, &qword_101A2F490);
  }

  return result;
}

unint64_t sub_10007F0A0()
{
  result = qword_101A2D860;
  if (!qword_101A2D860)
  {
    result = swift_getWitnessTable("Y\t6", &type metadata for CRLTablePresetData, v0, v1);
    atomic_store(result, &qword_101A2D860);
  }

  return result;
}

unint64_t sub_10007F0F4()
{
  result = qword_101A2D8C0;
  if (!qword_101A2D8C0)
  {
    result = swift_getWitnessTable("U\t6", &type metadata for CRLTablePresetData, v0, v1);
    atomic_store(result, &qword_101A2D8C0);
  }

  return result;
}

unint64_t sub_10007F14C()
{
  result = qword_101A2D858;
  if (!qword_101A2D858)
  {
    result = swift_getWitnessTable("=\t6", &type metadata for CRLTablePresetData, v0, v1);
    atomic_store(result, &qword_101A2D858);
  }

  return result;
}

void sub_10007F1C4(uint64_t a1)
{
  sub_10007F278(319);
  if (v1 <= 0x3F)
  {
    sub_10007F314(319);
    if (v2 <= 0x3F)
    {
      sub_10007F3D8(319);
      if (v3 <= 0x3F)
      {
        sub_100039F68(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10007F278(uint64_t a1)
{
  if (!qword_1019FCD08)
  {
    type metadata accessor for UUID();
    sub_1000683C4(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v1 = type metadata accessor for CROrderedSet();
    if (!v2)
    {
      atomic_store(v1, &qword_1019FCD08);
    }
  }
}

void sub_10007F314(uint64_t a1)
{
  if (!qword_1019FCD10)
  {
    type metadata accessor for UUID();
    sub_1000683C4(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v1 = type metadata accessor for CRDictionary();
    if (!v2)
    {
      atomic_store(v1, &qword_1019FCD10);
    }
  }
}

void sub_10007F3D8(uint64_t a1)
{
  if (!qword_1019FCD18)
  {
    type metadata accessor for UUID();
    sub_1000683C4(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    sub_10007F4A4();
    sub_10007F5AC();
    v1 = type metadata accessor for CRDictionary();
    if (!v2)
    {
      atomic_store(v1, &qword_1019FCD18);
    }
  }
}

unint64_t sub_10007F4A4()
{
  result = qword_101A22660;
  if (!qword_101A22660)
  {
    result = swift_getWitnessTable(byte_101478270, &type metadata for CRLSceneSavedRectData, v0, v1);
    atomic_store(result, &qword_101A22660);
  }

  return result;
}

unint64_t sub_10007F4FC()
{
  result = qword_1019FCE18;
  if (!qword_1019FCE18)
  {
    result = swift_getWitnessTable(aA_30, &type metadata for CRLSceneSavedRectData, v0, v1);
    atomic_store(result, &qword_1019FCE18);
  }

  return result;
}

unint64_t sub_10007F554()
{
  result = qword_1019FCD58;
  if (!qword_1019FCD58)
  {
    result = swift_getWitnessTable(aI_39, &type metadata for CRLSceneSavedRectData, v0, v1);
    atomic_store(result, &qword_1019FCD58);
  }

  return result;
}

unint64_t sub_10007F5AC()
{
  result = qword_1019FCD20;
  if (!qword_1019FCD20)
  {
    result = swift_getWitnessTable(byte_101478248, &type metadata for CRLSceneSavedRectData, v0, v1);
    atomic_store(result, &qword_1019FCD20);
  }

  return result;
}

uint64_t sub_10007F630()
{
  v1 = v0[155];
  v2 = swift_task_alloc();
  v0[156] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[157] = v3;
  v4 = sub_1005B981C(&qword_101A002B8, &qword_1014C5DF0);
  *v3 = v0;
  v3[1] = sub_1010E93A0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 87, 0, 0, 0xD00000000000001DLL, 0x80000001015971E0, sub_100080FC4, v2, v4);
}

uint64_t sub_10007F760(uint64_t a1)
{
  result = type metadata accessor for CRLBoardCRDTData(319);
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

void sub_10007F8B4(void *a1)
{
  v3 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  __chkstk_darwin(v6 - 8);
  v39 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1019F2220 != -1)
  {
    swift_once();
  }

  v11 = static OS_os_log.sceneManagement;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  *(inited + 56) = type metadata accessor for CRLSceneDelegate(0);
  *(inited + 64) = sub_100C2E798(&qword_101A15AB0, type metadata accessor for CRLSceneDelegate, &protocol conformance descriptor for NSObject);
  *(inited + 32) = v1;
  v13 = v1;
  v14 = [a1 session];
  v15 = [v14 persistentIdentifier];

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  *(inited + 96) = &type metadata for String;
  *(inited + 104) = sub_1000053B0();
  *(inited + 72) = v16;
  *(inited + 80) = v18;
  v19 = static os_log_type_t.info.getter();
  sub_100005404(v11, &_mh_execute_header, v19, "Scene delegate (%p) scene %@ did become active", 46, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  v20 = swift_arrayDestroy();
  v21 = *((swift_isaMask & *v13) + 0x1A0);
  v22 = (v21)(v20);
  if (v22)
  {
    v38 = a1;
    v23 = v22;
    v24 = *(*(v22 + OBJC_IVAR____TtC8Freeform25CRLiOSBoardViewController_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);

    sub_10005013C();
    if (!v25)
    {
      __break(1u);
      return;
    }

    v26 = v25;

    v27 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
    v28 = *&v24[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
    v29 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    swift_beginAccess();
    sub_10004FE64(v28 + v29, v5, type metadata accessor for CRLBoardCRDTData);
    sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
    v30 = v39;
    CRRegister.wrappedValue.getter();
    sub_10005117C(v5, type metadata accessor for CRLBoardCRDTData);
    v31 = (*&v24[v27] + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
    v32 = *v31;
    v33 = v31[1];

    sub_10084BD4C(v30, v32, v33, v10);
    sub_1006C3B78(v10);

    sub_10005117C(v10, type metadata accessor for CRLBoardIdentifier);
    a1 = v38;
  }

  v34 = v21();
  if (v34)
  {
    v35 = v34;
    sub_10101DAB8(1);
  }

  v36 = sub_1000801B8();
  [v36 becomeCurrent];

  v37 = [objc_opt_self() defaultCenter];
  if (qword_1019F1F20 != -1)
  {
    swift_once();
  }

  [v37 postNotificationName:qword_101AD7918 object:a1];
}

void sub_10007FDA8()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = sub_100005174(v0, &off_1019EDB20, &qword_101AD5AC8);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.sceneManagement = v1;
}

uint64_t sub_10007FEC4()
{
  v0 = sub_100051290();
  v1 = [v0 presentedViewController];

  if (v1)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = [v2 topViewController];

      if (v3)
      {
        type metadata accessor for CRLiOSBoardViewController(0);
        result = swift_dynamicCastClass();
        if (result)
        {
          return result;
        }
      }
    }

    else
    {
    }
  }

  return 0;
}

void sub_10007FF80(id a1)
{
  v1 = [NSCharacterSet characterSetWithCharactersInString:@"ـ‑-‐–—"];
  v2 = qword_101A34F08;
  qword_101A34F08 = v1;
}

id sub_10007FFC8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = v3;
  v8 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v23 - v9;
  v11 = sub_1005B981C(&unk_1019F52D0, &unk_10147C1C0);
  __chkstk_darwin(v11 - 8);
  v13 = &v23 - v12;
  v14 = *a1;
  v15 = *(v7 + *a1);
  if (v15)
  {
    v16 = *(v7 + *a1);
  }

  else
  {
    sub_100006370(0, &qword_101A13E90, NSUserActivity_ptr);
    v17 = type metadata accessor for CRLBoardIdentifier(0);
    (*(*(v17 - 8) + 56))(v13, 1, 1, v17);
    v18 = type metadata accessor for UUID();
    (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
    v19 = sub_1000801CC(a2, a3, v13, v10);
    [v19 setDelegate:v7];
    [v19 setNeedsSave:1];
    v20 = *(v7 + v14);
    *(v7 + v14) = v19;
    v16 = v19;

    v15 = 0;
  }

  v21 = v15;
  return v16;
}

id sub_1000801CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v60 = a4;
  v61 = a3;
  v5 = a1;
  v6 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v6 - 8);
  v57 = &v54 - v7;
  v8 = type metadata accessor for UUID();
  v58 = *(v8 - 8);
  v59 = v8;
  __chkstk_darwin(v8);
  v55 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1005B981C(&unk_1019F52D0, &unk_10147C1C0);
  __chkstk_darwin(v10 - 8);
  v12 = &v54 - v11;
  v13 = type metadata accessor for CRLBoardIdentifier(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_100080930(v5);
  v18 = String._bridgeToObjectiveC()();

  v19 = [v17 initWithActivityType:v18];

  v20 = v19;
  v21 = [v20 activityType];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  v25 = sub_100080A80(v22, v24);
  if (sub_100080930(v25) == 0xD000000000000027 && 0x8000000101551880 == v26)
  {
    v27 = 1;
  }

  else
  {
    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  [v20 setEligibleForHandoff:v27 & 1];
  v28 = sub_1005B981C(&qword_1019FB8A0, &unk_10148CEB0);
  inited = swift_initStackObject();
  v56 = xmmword_10146C6B0;
  *(inited + 16) = xmmword_10146C6B0;
  v62 = 0x6E6F6973726576;
  v63 = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for Int;
  *(inited + 72) = a2;
  sub_100078EA4(inited);
  swift_setDeallocating();
  sub_10000CAAC(inited + 32, &unk_1019FB8B0, &unk_101471280);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v20 addUserInfoEntriesFromDictionary:isa];

  sub_10000BE14(v61, v12, &unk_1019F52D0, &unk_10147C1C0);
  v31 = (*(v14 + 48))(v12, 1, v13);
  v54 = v28;
  if (v31 == 1)
  {
    sub_10000CAAC(v12, &unk_1019F52D0, &unk_10147C1C0);
  }

  else
  {
    sub_1005EB270(v12, v16);
    v35 = swift_initStackObject();
    *(v35 + 16) = v56;
    v62 = 0x64496472616F62;
    v63 = 0xE700000000000000;
    AnyHashable.init<A>(_:)();
    v62 = UUID.uuidString.getter();
    v63 = v36;

    v37._countAndFlagsBits = 58;
    v37._object = 0xE100000000000000;
    String.append(_:)(v37);

    v38 = v62;
    v39 = v63;
    v40 = &v16[*(type metadata accessor for CRLBoardIdentifierStorage(0) + 20)];
    v41 = *v40;
    v42 = v40[1];
    v62 = v38;
    v63 = v39;

    v43._countAndFlagsBits = v41;
    v43._object = v42;
    String.append(_:)(v43);

    v44 = v62;
    v45 = v63;
    *(v35 + 96) = &type metadata for String;
    *(v35 + 72) = v44;
    *(v35 + 80) = v45;
    sub_100078EA4(v35);
    swift_setDeallocating();
    sub_10000CAAC(v35 + 32, &unk_1019FB8B0, &unk_101471280);
    v46 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v20 addUserInfoEntriesFromDictionary:{v46, v54}];

    sub_100086F34(v16);
  }

  v33 = v59;
  v32 = v60;
  v34 = v58;
  v47 = v57;
  sub_10000BE14(v60, v57, &qword_1019F6990, &qword_10146D2F0);
  if ((*(v34 + 48))(v47, 1, v33) == 1)
  {

    sub_10000CAAC(v32, &qword_1019F6990, &qword_10146D2F0);
    sub_10000CAAC(v61, &unk_1019F52D0, &unk_10147C1C0);
    sub_10000CAAC(v47, &qword_1019F6990, &qword_10146D2F0);
  }

  else
  {
    v48 = v55;
    (*(v34 + 32))(v55, v47, v33);
    v49 = swift_initStackObject();
    *(v49 + 16) = v56;
    v62 = 0x4965636166727573;
    v63 = 0xE900000000000064;
    AnyHashable.init<A>(_:)();
    v50 = UUID.uuidString.getter();
    *(v49 + 96) = &type metadata for String;
    *(v49 + 72) = v50;
    *(v49 + 80) = v51;
    sub_100078EA4(v49);
    swift_setDeallocating();
    sub_10000CAAC(v49 + 32, &unk_1019FB8B0, &unk_101471280);
    v52 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v20 addUserInfoEntriesFromDictionary:v52];

    sub_10000CAAC(v32, &qword_1019F6990, &qword_10146D2F0);
    sub_10000CAAC(v61, &unk_1019F52D0, &unk_10147C1C0);
    (*(v34 + 8))(v48, v33);
  }

  return v20;
}

unint64_t sub_100080930(unsigned __int8 a1)
{
  v1 = 0xD00000000000001ALL;
  if (a1 > 5u)
  {
    v6 = 0xD000000000000029;
    v7 = 0xD00000000000001DLL;
    if (a1 != 10)
    {
      v7 = 0xD00000000000001ALL;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    if (a1 == 7)
    {
      v1 = 0xD00000000000001BLL;
    }

    if (a1 == 6)
    {
      v1 = 0xD000000000000019;
    }

    if (a1 <= 8u)
    {
      return v1;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0xD000000000000020;
    v3 = 0xD000000000000028;
    if (a1 != 4)
    {
      v3 = 0xD000000000000018;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000027;
    if (a1 == 1)
    {
      v4 = 0xD000000000000038;
    }

    if (!a1)
    {
      v4 = 0xD000000000000033;
    }

    if (a1 <= 2u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_100080A80(uint64_t a1, void *a2)
{

  v37._countAndFlagsBits = a1;
  v37._object = a2;
  v4 = sub_100080F78(v37);
  if (v4 != 12)
  {
    v8 = v4;

    return v8;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a1 && v5 == a2)
  {

LABEL_10:

    return 8;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v7)
  {
    goto LABEL_10;
  }

  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a1 && v10 == a2)
  {

    return 10;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v12)
    {
      return 10;
    }

    else
    {
      v13 = objc_opt_self();
      v14 = [v13 _atomicIncrementAssertCount];
      v36 = [objc_allocWithZone(NSString) init];
      StaticString.description.getter("init(typeString:)", 17, 2);
      v15 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/Extensions/NSUserActivity_Extensions.swift", 112, 2);
      v16 = String._bridgeToObjectiveC()();

      v17 = [v16 lastPathComponent];

      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v21 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v14;
      v23 = sub_1005CF000();
      *(inited + 96) = v23;
      v24 = sub_1005CF04C();
      *(inited + 104) = v24;
      *(inited + 72) = v15;
      *(inited + 136) = &type metadata for String;
      v25 = sub_1000053B0();
      *(inited + 112) = v18;
      *(inited + 120) = v20;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v25;
      *(inited + 152) = 30;
      v26 = v36;
      *(inited + 216) = v23;
      *(inited + 224) = v24;
      *(inited + 192) = v26;
      v27 = v15;
      v28 = v26;
      v29 = static os_log_type_t.error.getter();
      sub_100005404(v21, &_mh_execute_header, v29, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v30 = static os_log_type_t.error.getter();

      type metadata accessor for __VaListBuilder();
      v31 = swift_allocObject();
      v31[2] = 8;
      v31[3] = 0;
      v31[4] = 0;
      v31[5] = 0;
      v32 = __VaListBuilder.va_list()();
      StaticString.description.getter("init(typeString:)", 17, 2);
      v33 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/Extensions/NSUserActivity_Extensions.swift", 112, 2);
      v34 = String._bridgeToObjectiveC()();

      v35 = String._bridgeToObjectiveC()();

      [v13 handleFailureInFunction:v33 file:v34 lineNumber:30 isFatal:0 format:v35 args:v32];

      return 11;
    }
  }
}

unint64_t sub_100080F78(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101874610, v2);

  if (v3 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v3;
  }
}

void sub_100080FCC(id a1)
{
  v1 = [NSCharacterSet characterSetWithCharactersInString:@"'’‘‚“”„«»‹›」「』『"];
  v2 = qword_101A34F18;
  qword_101A34F18 = v1;
}

double sub_100081014(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_101A21CD8, &qword_1014B65C0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v10 - v5;
  (*(v3 + 16))(&v10 - v5, a1, v2, v4);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v6, v2);
  sub_10001E534(sub_100EA1FA4, v8, &OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_readQueue, &unk_1018A4ED0, sub_1000820DC, &unk_1018A4EE8);

  return result;
}

void *sub_1000811B8()
{
  v2 = sub_1005B981C(&qword_101A21C68, &qword_1014B6530);
  __chkstk_darwin(v2 - 8);
  v105 = &v92 - v3;
  v104 = type metadata accessor for CRLBoardCRDTData(0);
  v102 = *(v104 - 8);
  __chkstk_darwin(v104);
  v101 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v100 = &v92 - v6;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = (&v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v0 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v11 = v12;
  v14 = v8 + 104;
  v13 = *(v8 + 104);
  v110 = enum case for DispatchPredicate.onQueue(_:);
  v13(v11, v9);
  v15 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  v18 = *(v8 + 8);
  v16 = v8 + 8;
  v17 = v18;
  v18(v11, v7);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_42;
  }

  v111 = v14;
  v108 = v17;
  v106 = v16;
  v113 = 0;
  v114 = 0xE000000000000000;
  _StringGuts.grow(_:)(49);
  v19._countAndFlagsBits = 0x205443454C4553;
  v19._object = 0xE700000000000000;
  String.append(_:)(v19);
  v20._countAndFlagsBits = sub_1000820E8(0, 0xE000000000000000);
  String.append(_:)(v20);

  v21._countAndFlagsBits = 0x204D4F524620;
  v21._object = 0xE600000000000000;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0x736472616F62;
  v22._object = 0xE600000000000000;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 0x2045524548570ALL;
  v23._object = 0xE700000000000000;
  String.append(_:)(v23);
  v112 = 4;
  _print_unlocked<A, B>(_:_:)();
  v24._object = 0x80000001015A3B00;
  v24._countAndFlagsBits = 0xD000000000000011;
  String.append(_:)(v24);
  v112 = 5;
  _print_unlocked<A, B>(_:_:)();
  v25._countAndFlagsBits = 807419168;
  v25._object = 0xE400000000000000;
  String.append(_:)(v25);
  v26 = v113;
  v27 = v114;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v29 = sub_10001CC04(v28, v26, v27);
  if (v1)
  {
LABEL_3:

    if (qword_1019F2258 == -1)
    {
LABEL_4:
      v30 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      swift_getErrorValue();
      v32 = Error.localizedDescription.getter();
      v34 = v33;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v32;
      *(inited + 40) = v34;
      v35 = static os_log_type_t.error.getter();
      sub_100005404(v30, &_mh_execute_header, v35, "Failed to fetch a board record with error %@", 44, 2, inited);
      swift_setDeallocating();
      sub_100005070((inited + 32));
      return swift_willThrow();
    }

LABEL_42:
    swift_once();
    goto LABEL_4;
  }

  v37 = v29;
  v107 = 0;

  v38 = *(*(v37 + 16) + 32);
  *v11 = v38;
  v39 = v110;
  (v13)(v11, v110, v7);
  v40 = v38;
  LOBYTE(v38) = _dispatchPreconditionTest(_:)();
  v41 = v106;
  v42 = v108;
  v108(v11, v7);
  if ((v38 & 1) == 0)
  {
    __break(1u);
    goto LABEL_44;
  }

  type metadata accessor for SQLiteRowIterator();
  v43 = swift_initStackObject();
  v44 = v13;
  v45 = v39;
  v46 = v43;
  v109 = v44;
  v43[3] = 0;
  v47 = v43 + 3;
  v43[4] = 0;
  v98 = v43 + 4;
  v43[5] = 1;
  v43[2] = v37;

  swift_beginAccess();
  v48 = *(*(v37 + 16) + 32);
  *v11 = v48;
  v109(v11, v45, v7);
  v49 = v109;
  v50 = v48;
  LOBYTE(v48) = _dispatchPreconditionTest(_:)();
  v42(v11, v7);
  if ((v48 & 1) == 0)
  {
LABEL_36:
    __break(1u);
LABEL_37:

    sub_100025870(v42, v41);
    sub_100025870(v42, v41);

    sub_100025870(v42, v41);

    sub_100025870(v42, v41);

    v88 = *(*(v37 + 16) + 32);
    *v11 = v88;
    v89 = v103;
    v109(v11, v110, v103);
    v90 = v88;
    LOBYTE(v88) = _dispatchPreconditionTest(_:)();
    result = (v108)(v11, v89);
    if ((v88 & 1) == 0)
    {
      __break(1u);
      return result;
    }

    v91 = *(v37 + 24);
    if (v91)
    {
      sqlite3_finalize(v91);
      *(v37 + 24) = 0;
    }

    goto LABEL_3;
  }

  v102 += 7;
  v99 = _swiftEmptyArrayStorage;
  v103 = v7;
  while (1)
  {
    *v47 = 0;
    v47[1] = 0;
    v46[5] = 1;
    v51 = sqlite3_step(*(v37 + 24));
    if (v51 != 100)
    {
      break;
    }

    v52 = swift_retain_n();
    v53 = sub_1000826B0(v52, 0);
    if (!v53)
    {

      goto LABEL_15;
    }

    v54 = v53;
    v55 = (v53 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data);
    v56 = *(v53 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data + 8);
    if (v56 >> 60 == 15)
    {

      v42 = v108;
LABEL_15:
      v62 = *(*(v37 + 16) + 32);
      *v11 = v62;
      v49 = v109;
      v109(v11, v110, v7);
      v63 = v62;
      LOBYTE(v62) = _dispatchPreconditionTest(_:)();
      v42(v11, v7);
      if ((v62 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v57 = v46;
      v58 = *v55;
      sub_100024E84(*v55, v56);
      sub_100024E84(v58, v56);
      sub_1000066D0(&unk_101A22E10, type metadata accessor for CRLBoardCRDTData, byte_1014DD800);

      v59 = v105;
      v60 = v104;
      v61 = v107;
      CRDT.init(serializedData:)();
      if (v61)
      {

        sub_100025870(v58, v56);

        (*v102)(v59, 1, 1, v60);
        sub_10000CAAC(v59, &qword_101A21C68, &qword_1014B6530);
        v107 = 0;
        v41 = v106;
        v42 = v108;
        v46 = v57;
        v7 = v103;
        goto LABEL_15;
      }

      v107 = 0;
      (*v102)(v59, 0, 1, v60);
      v97 = type metadata accessor for CRLBoardCRDTData;
      v64 = v100;
      sub_100025668(v59, v100, type metadata accessor for CRLBoardCRDTData);
      LODWORD(v96) = *(v54 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_minRequiredVersions + 32);
      v65 = *(v54 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_minRequiredVersions + 16);
      v95 = *(v54 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_minRequiredVersions);
      v94 = v65;
      sub_10000C83C(v64, v101, type metadata accessor for CRLBoardCRDTData);
      v66 = OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_boardIdentifier;
      v67 = (v54 + *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20) + v66);
      v68 = v67[1];
      v93 = *v67;
      type metadata accessor for CRLBoardData(0);
      v69 = swift_allocObject();

      sub_100025870(v58, v56);

      sub_100026028(v100, type metadata accessor for CRLBoardCRDTData);
      *(v69 + 16) = 7;
      *(v69 + 40) = v94;
      *(v69 + 24) = v95;
      *(v69 + 56) = v96;
      sub_100025668(v101, v69 + OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData, v97);
      v97 = 0;
      v96 = v69;
      v70 = (v69 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
      *v70 = v93;
      v70[1] = v68;
      v41 = *(v54 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareData + 8);
      if (v41 >> 60 == 15)
      {
        v46 = v57;
        v7 = v103;
      }

      else
      {
        v42 = *(v54 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareData);
        sub_100006370(0, &qword_101A1AEB0, NSKeyedUnarchiver_ptr);
        sub_100006370(0, &qword_1019F52C0, CKShare_ptr);
        sub_100024E84(v42, v41);
        sub_100024E84(v42, v41);
        sub_100024E84(v42, v41);
        sub_100024E98(v42, v41);
        v71 = v107;
        v72 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
        if (v71)
        {
          goto LABEL_37;
        }

        v73 = v72;
        v46 = v57;
        v107 = 0;
        sub_100025870(v42, v41);
        sub_100025870(v42, v41);
        v7 = v103;
        if (v73)
        {
          v97 = v73;
          v74 = v73;
          sub_100CE94A4();
          sub_100025870(v42, v41);
          sub_100025870(v42, v41);
        }

        else
        {
          sub_100025870(v42, v41);
          sub_100025870(v42, v41);
          v97 = 0;
        }
      }

      v75 = v99;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v42 = v108;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v75 = sub_100086CD4(0, v75[2] + 1, 1, v75);
      }

      v99 = v75;
      v78 = v75[2];
      v77 = v75[3];
      if (v78 >= v77 >> 1)
      {
        v99 = sub_100086CD4((v77 > 1), v78 + 1, 1, v99);
      }

      v79 = v99;
      v99[2] = v78 + 1;
      v80 = &v79[2 * v78];
      v81 = v97;
      v80[4] = v96;
      v80[5] = v81;
      v82 = *(*(v37 + 16) + 32);
      *v11 = v82;
      v49 = v109;
      v109(v11, v110, v7);
      v83 = v82;
      LOBYTE(v82) = _dispatchPreconditionTest(_:)();
      v41 = v106;
      v42(v11, v7);
      if ((v82 & 1) == 0)
      {
        goto LABEL_36;
      }
    }
  }

  if (v51 && v51 != 101)
  {
    *v47 = v51;
    v84 = v98;
    *v98 = 0;
    v84[1] = 0;
  }

  v85 = *(*(v37 + 16) + 32);
  *v11 = v85;
  v49(v11, v110, v7);
  v86 = v85;
  LOBYTE(v85) = _dispatchPreconditionTest(_:)();
  v42(v11, v7);
  if ((v85 & 1) == 0)
  {
LABEL_44:
    __break(1u);
  }

  v87 = *(v37 + 24);
  if (v87)
  {
    sqlite3_finalize(v87);
    *(v37 + 24) = 0;
  }

  return v99;
}

uint64_t sub_100082024(uint64_t a1, void (*a2)(uint64_t, void))
{
  v3 = sub_1000811B8();
  a2(v3, 0);
}

uint64_t sub_1000820E8(uint64_t a1, void *a2)
{
  if (String.count.getter() < 1)
  {
    v5 = 0;
    a2 = 0xE000000000000000;
  }

  else
  {

    v4._countAndFlagsBits = 46;
    v4._object = 0xE100000000000000;
    String.append(_:)(v4);
    v5 = a1;
  }

  _StringGuts.grow(_:)(112);
  v6._countAndFlagsBits = v5;
  v6._object = a2;
  String.append(_:)(v6);
  v7._object = 0x8000000101585360;
  v7._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v7);
  v8._countAndFlagsBits = 8236;
  v8._object = 0xE200000000000000;
  String.append(_:)(v8);
  v9._countAndFlagsBits = v5;
  v9._object = a2;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0x616E5F72656E776FLL;
  v10._object = 0xEA0000000000656DLL;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 8236;
  v11._object = 0xE200000000000000;
  String.append(_:)(v11);
  v12._countAndFlagsBits = v5;
  v12._object = a2;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0x656E6961746E6F63;
  v13._object = 0xEE00646975755F72;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 8236;
  v14._object = 0xE200000000000000;
  String.append(_:)(v14);
  v15._countAndFlagsBits = v5;
  v15._object = a2;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0xD000000000000018;
  v16._object = 0x80000001015A34C0;
  String.append(_:)(v16);
  v17._countAndFlagsBits = 8236;
  v17._object = 0xE200000000000000;
  String.append(_:)(v17);
  v18._countAndFlagsBits = v5;
  v18._object = a2;
  String.append(_:)(v18);
  v19._countAndFlagsBits = 1635017060;
  v19._object = 0xE400000000000000;
  String.append(_:)(v19);
  v20._countAndFlagsBits = 8236;
  v20._object = 0xE200000000000000;
  String.append(_:)(v20);
  v21._countAndFlagsBits = v5;
  v21._object = a2;
  String.append(_:)(v21);
  v22._countAndFlagsBits = 0x6E6F7473626D6F74;
  v22._object = 0xEA00000000006465;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 8236;
  v23._object = 0xE200000000000000;
  String.append(_:)(v23);
  v24._countAndFlagsBits = v5;
  v24._object = a2;
  String.append(_:)(v24);
  v25._object = 0x80000001015A33D0;
  v25._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 8236;
  v26._object = 0xE200000000000000;
  String.append(_:)(v26);
  v27._countAndFlagsBits = v5;
  v27._object = a2;
  String.append(_:)(v27);
  v28._countAndFlagsBits = 0xD000000000000018;
  v28._object = 0x80000001015A37D0;
  String.append(_:)(v28);
  v29._countAndFlagsBits = 8236;
  v29._object = 0xE200000000000000;
  String.append(_:)(v29);
  v30._countAndFlagsBits = v5;
  v30._object = a2;
  String.append(_:)(v30);
  v31._countAndFlagsBits = 0x7461645F636E7973;
  v31._object = 0xE900000000000061;
  String.append(_:)(v31);
  v32._countAndFlagsBits = 8236;
  v32._object = 0xE200000000000000;
  String.append(_:)(v32);
  v33._countAndFlagsBits = v5;
  v33._object = a2;
  String.append(_:)(v33);
  v34._object = 0xEE00657461645F65;
  v34._countAndFlagsBits = 0x6E6F7473626D6F74;
  String.append(_:)(v34);
  v35._countAndFlagsBits = 8236;
  v35._object = 0xE200000000000000;
  String.append(_:)(v35);
  v36._countAndFlagsBits = v5;
  v36._object = a2;
  String.append(_:)(v36);
  v37._countAndFlagsBits = 0xD00000000000001ALL;
  v37._object = 0x80000001015A37F0;
  String.append(_:)(v37);
  v38._countAndFlagsBits = 8236;
  v38._object = 0xE200000000000000;
  String.append(_:)(v38);
  v39._countAndFlagsBits = v5;
  v39._object = a2;
  String.append(_:)(v39);
  v40._countAndFlagsBits = 0x5F65726168736B63;
  v40._object = 0xEC00000061746164;
  String.append(_:)(v40);
  v41._countAndFlagsBits = 8236;
  v41._object = 0xE200000000000000;
  String.append(_:)(v41);
  v42._countAndFlagsBits = v5;
  v42._object = a2;
  String.append(_:)(v42);
  v43._countAndFlagsBits = 0xD000000000000014;
  v43._object = 0x80000001015A3590;
  String.append(_:)(v43);
  v44._countAndFlagsBits = 8236;
  v44._object = 0xE200000000000000;
  String.append(_:)(v44);
  v45._countAndFlagsBits = v5;
  v45._object = a2;
  String.append(_:)(v45);
  v46._countAndFlagsBits = 0xD000000000000012;
  v46._object = 0x80000001015A3810;
  String.append(_:)(v46);
  v47._countAndFlagsBits = 8236;
  v47._object = 0xE200000000000000;
  String.append(_:)(v47);
  v48._countAndFlagsBits = v5;
  v48._object = a2;
  String.append(_:)(v48);
  v49._countAndFlagsBits = 0x61637369645F7369;
  v49._object = 0xEE00656C62616472;
  String.append(_:)(v49);
  v50._countAndFlagsBits = 8236;
  v50._object = 0xE200000000000000;
  String.append(_:)(v50);
  v51._countAndFlagsBits = v5;
  v51._object = a2;
  String.append(_:)(v51);
  v52._countAndFlagsBits = 0xD00000000000002DLL;
  v52._object = 0x80000001015A3760;
  String.append(_:)(v52);
  v53._countAndFlagsBits = 8236;
  v53._object = 0xE200000000000000;
  String.append(_:)(v53);
  v54._countAndFlagsBits = v5;
  v54._object = a2;
  String.append(_:)(v54);
  v55._countAndFlagsBits = 0xD000000000000026;
  v55._object = 0x80000001015A33F0;
  String.append(_:)(v55);
  v56._countAndFlagsBits = 8236;
  v56._object = 0xE200000000000000;
  String.append(_:)(v56);
  v57._countAndFlagsBits = v5;
  v57._object = a2;
  String.append(_:)(v57);
  v58._countAndFlagsBits = 0xD000000000000015;
  v58._object = 0x80000001015A3830;
  String.append(_:)(v58);
  v59._countAndFlagsBits = 8236;
  v59._object = 0xE200000000000000;
  String.append(_:)(v59);
  v60._countAndFlagsBits = v5;
  v60._object = a2;
  String.append(_:)(v60);

  v61._countAndFlagsBits = 0xD00000000000001BLL;
  v61._object = 0x80000001015A3790;
  String.append(_:)(v61);
  return 0;
}

sqlite3_int64 sub_1000826B0(uint64_t a1, sqlite3_int64 a2)
{
  v208 = a2;
  v3 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v3 - 8);
  v199 = (&v178 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v201 = (&v178 - v6);
  v7 = type metadata accessor for UUID();
  v206 = *(v7 - 8);
  v207 = v7;
  __chkstk_darwin(v7);
  v190 = &v178 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v189 = &v178 - v10;
  __chkstk_darwin(v11);
  v198 = &v178 - v12;
  __chkstk_darwin(v13);
  v200 = &v178 - v14;
  __chkstk_darwin(v15);
  v17 = &v178 - v16;
  v203 = type metadata accessor for CRLBoardIdentifierStorage(0);
  __chkstk_darwin(v203);
  v19 = (&v178 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20);
  v202 = &v178 - v21;
  v22 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v22 - 8);
  v188 = &v178 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v178 - v25;
  __chkstk_darwin(v27);
  v29 = &v178 - v28;
  __chkstk_darwin(v30);
  v204 = &v178 - v31;
  v32 = type metadata accessor for DispatchPredicate();
  v33 = *(v32 - 8);
  v34 = __chkstk_darwin(v32);
  v36 = (&v178 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = *(*(a1 + 16) + 32);
  *v36 = v37;
  v38 = *(v33 + 104);
  LODWORD(v194) = enum case for DispatchPredicate.onQueue(_:);
  v195 = v33 + 104;
  v193 = v38;
  v38(v36, v34);
  v39 = v37;
  v40 = _dispatchPreconditionTest(_:)();
  v41 = *(v33 + 8);
  v196 = v36;
  v197 = v33 + 8;
  v191 = v32;
  v192 = v41;
  v42 = v41(v36, v32);
  if ((v40 & 1) == 0)
  {
    __break(1u);
    goto LABEL_58;
  }

  v43 = sub_10002C280(v208, a1);
  if (!v43)
  {
    goto LABEL_8;
  }

  v205 = a1;
  v45 = sub_100024DD4(v43, v44);
  v47 = v46;
  sub_100024E98(v45, v46);
  sub_100024EEC(v17, v45, v47);
  v49 = v48;
  v51 = v50;
  v186 = 0;
  v187 = v45;
  sub_10002640C(v45, v47);
  v52 = v206 + 4;
  v185 = v206[4];
  v185(v19, v17, v207);
  v53 = v202;
  v54 = (v19 + *(v203 + 20));
  *v54 = v49;
  v54[1] = v51;
  sub_100025668(v19, v53, type metadata accessor for CRLBoardIdentifierStorage);
  sub_100025668(v53, v26, type metadata accessor for CRLBoardIdentifierStorage);
  sub_100025668(v26, v29, type metadata accessor for CRLBoardIdentifier);
  v55 = v29;
  v56 = v204;
  sub_100025668(v55, v204, type metadata accessor for CRLBoardIdentifier);
  v40 = v205;
  if (__OFADD__(v208, 12))
  {
    __break(1u);
    goto LABEL_73;
  }

  v57 = sub_100028894(v208 + 12, v205);
  if (v58)
  {
    sub_100026028(v56, type metadata accessor for CRLBoardIdentifier);
    sub_10002640C(v187, v47);
LABEL_8:

    return 0;
  }

  v60 = v57;
  v183 = v52;
  v184 = v47;
  v61 = v56;
  v62 = sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v209 = &type metadata for UInt64;
  sub_1005B981C(&qword_101A21C70, &qword_1014B6538);
  String.init<A>(describing:)();
  v64 = String._bridgeToObjectiveC()();

  v65 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(inited + 56) = v65;
  v66 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
  *(inited + 32) = v64;
  *(inited + 64) = v66;
  if (v60)
  {

    v51 = v61;
LABEL_40:
    v19 = v201;
    v106 = v40;
    v107 = v186;
    sub_100083B64(v208 + 2, v106, v201);
    v85 = v206;
    v89 = v207;
    v108 = v187;
    if (v107)
    {

      sub_10002640C(v108, v184);
      sub_100026028(v51, type metadata accessor for CRLBoardIdentifier);
      (v85[7])(v19, 1, 1, v89);
    }

    else
    {
      v109 = v206[6];
      if (v109(v19, 1, v207) == 1)
      {
        sub_100026028(v51, type metadata accessor for CRLBoardIdentifier);

        sub_10002640C(v108, v184);
      }

      else
      {
        v182 = v60;
        v185(v200, v19, v89);
        v19 = v199;
        sub_100083B64(v208 + 3, v205, v199);
        if (v109(v19, 1, v89) != 1)
        {
          goto LABEL_48;
        }

        sub_10002640C(v187, v184);
        (v85[1])(v200, v89);
        sub_100026028(v51, type metadata accessor for CRLBoardIdentifier);
      }
    }

    sub_10000CAAC(v19, &qword_1019F6990, &qword_10146D2F0);
    return 0;
  }

  v67 = v66;
  v180 = v62;
  v181 = v65;
  v202 = inited + 32;
  v182 = 0;
  v179 = objc_opt_self();
  v68 = [v179 _atomicIncrementAssertCount];
  v209 = [objc_allocWithZone(NSString) init];
  sub_100604538(inited, &v209, "expected inequality between two values of type %{public}@", 57, 2u);
  StaticString.description.getter("init(row:columnOffsetIndex:)", 28, 2);
  v69 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
  v70 = String._bridgeToObjectiveC()();

  v71 = [v70 lastPathComponent];

  v72 = inited;
  v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v75 = v74;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v76 = static OS_os_log.crlAssert;
  v77 = swift_initStackObject();
  *(v77 + 16) = xmmword_10146CA70;
  *(v77 + 56) = &type metadata for Int32;
  *(v77 + 64) = &protocol witness table for Int32;
  *(v77 + 32) = v68;
  v78 = v181;
  *(v77 + 96) = v181;
  *(v77 + 104) = v67;
  *(v77 + 72) = v69;
  *(v77 + 136) = &type metadata for String;
  v79 = sub_1000053B0();
  *(v77 + 112) = v73;
  *(v77 + 120) = v75;
  *(v77 + 176) = &type metadata for UInt;
  *(v77 + 184) = &protocol witness table for UInt;
  *(v77 + 144) = v79;
  *(v77 + 152) = 11329;
  v80 = v209;
  *(v77 + 216) = v78;
  *(v77 + 224) = v67;
  *(v77 + 192) = v80;
  v81 = v69;
  v82 = v80;
  v83 = static os_log_type_t.error.getter();
  sub_100005404(v76, &_mh_execute_header, v83, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v77);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v84 = static os_log_type_t.error.getter();
  sub_100005404(v76, &_mh_execute_header, v84, "expected inequality between two values of type %{public}@", 57, 2, v72);

  type metadata accessor for __VaListBuilder();
  v19 = swift_allocObject();
  v19[2] = 8;
  v19[3] = 0;
  v85 = v19 + 3;
  v19[4] = 0;
  v19[5] = 0;
  v181 = v72;
  v40 = *(v72 + 16);
  v86 = v202;
  if (!v40)
  {
LABEL_39:
    v102 = __VaListBuilder.va_list()();
    StaticString.description.getter("init(row:columnOffsetIndex:)", 28, 2);
    v103 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
    v104 = String._bridgeToObjectiveC()();

    StaticString.description.getter("expected inequality between two values of type %{public}@", 57, 2);
    v105 = String._bridgeToObjectiveC()();

    [v179 handleFailureInFunction:v103 file:v104 lineNumber:11329 isFatal:0 format:v105 args:v102];

    v51 = v204;
    v40 = v205;
    v60 = v182;
    goto LABEL_40;
  }

  v51 = 0;
  v87 = 40;
  while (1)
  {
    v17 = sub_100020E58((v86 + 40 * v51), *(v86 + 40 * v51 + 24));
    v88 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v89 = *v85;
    v90 = *(v88 + 16);
    v91 = __OFADD__(*v85, v90);
    v92 = *v85 + v90;
    if (v91)
    {
      __break(1u);
      goto LABEL_62;
    }

    v17 = v19[4];
    if (v17 >= v92)
    {
      goto LABEL_31;
    }

    if (v17 + 0x4000000000000000 < 0)
    {
      __break(1u);
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v93 = v19[5];
    if (2 * v17 > v92)
    {
      v92 = 2 * v17;
    }

    v19[4] = v92;
    if ((v92 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_68;
    }

    v94 = v88;
    v95 = swift_slowAlloc();
    v96 = v95;
    v19[5] = v95;
    if (v93)
    {
      if (v95 != v93 || v95 >= &v93[8 * v89])
      {
        memmove(v95, v93, 8 * v89);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v88 = v94;
      v86 = v202;
LABEL_31:
      v96 = v19[5];
      if (!v96)
      {
        goto LABEL_38;
      }

      goto LABEL_32;
    }

    v88 = v94;
    v86 = v202;
    if (!v96)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

LABEL_32:
    v98 = *(v88 + 16);
    if (v98)
    {
      break;
    }

LABEL_16:

    if (++v51 == v40)
    {
      goto LABEL_39;
    }
  }

  v99 = (v88 + 32);
  v100 = *v85;
  while (1)
  {
    v101 = *v99++;
    *&v96[8 * v100] = v101;
    v100 = *v85 + 1;
    if (__OFADD__(*v85, 1))
    {
      break;
    }

    *v85 = v100;
    if (!--v98)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_48:
  v185(v198, v19, v89);
  v110 = v205;
  v111 = *(*(v205 + 16) + 32);
  v112 = v196;
  *v196 = v111;
  v19 = v191;
  v193(v112, v194, v191);
  v113 = v111;
  LOBYTE(v111) = _dispatchPreconditionTest(_:)();
  result = v192(v112, v19);
  v114 = v200;
  if ((v111 & 1) == 0)
  {
    __break(1u);
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v115 = sub_10002C280(v208 + 4, v110);
  if (v115)
  {
    v40 = sub_100024DD4(v115, v116);
    v17 = v117;
  }

  else
  {
    v40 = 0;
    v17 = 0xF000000000000000;
  }

  v118 = v208;
  a1 = v205;
  v119 = sub_100083D68(v208 + 5, v205);
  if (v119 == 2 || (LODWORD(v202) = v119, v120 = sub_100028894(v118 + 6, a1), (v121 & 1) != 0) || (v201 = v120, v42 = sub_100083D68(v118 + 7, a1), v42 == 2))
  {

    sub_100025870(v40, v17);
    sub_10002640C(v187, v184);
    v122 = v85[1];
    v122(v198, v89);
    v122(v114, v89);
    v123 = v51;
    goto LABEL_56;
  }

LABEL_58:
  LOBYTE(v51) = v42;
  v124 = *(*(a1 + 16) + 32);
  v125 = v196;
  *v196 = v124;
  v193(v125, v194, v19);
  v126 = v124;
  LOBYTE(v124) = _dispatchPreconditionTest(_:)();
  result = v192(v125, v19);
  if ((v124 & 1) == 0)
  {
    goto LABEL_90;
  }

  v127 = sub_10002C280(v208 + 8, a1);
  if (v127)
  {
    v85 = sub_100024DD4(v127, v128);
    v89 = v129;
  }

  else
  {
LABEL_62:
    v85 = 0;
    v89 = 0xF000000000000000;
  }

  v130 = v200;
  v131 = v208;
  v87 = v205;
  v132 = sub_100083E9C(v208 + 9, v205);
  if ((v133 & 1) == 0)
  {
    v199 = v132;
    LOBYTE(v88) = sub_100083D68(v131 + 10, v87);
    if (v88 == 2)
    {

      sub_100025870(v85, v89);
      v137 = v40;
      v138 = v17;
LABEL_85:
      sub_100025870(v137, v138);
      sub_10002640C(v187, v184);
      v134 = v207;
      v135 = v206[1];
      v135(v198, v207);
      v136 = v200;
      goto LABEL_86;
    }

LABEL_69:
    LOBYTE(v56) = v88;
    v180 = v17;
    v181 = v85;
    v186 = v89;
    v139 = *(*(v87 + 16) + 32);
    v140 = v196;
    *v196 = v139;
    v193(v140, v194, v19);
    v141 = v139;
    LOBYTE(v139) = _dispatchPreconditionTest(_:)();
    result = v192(v140, v19);
    if (v139)
    {
      v142 = sub_10002C280(v208 + 11, v87);
      if (v142)
      {
        v144 = sub_100024DD4(v142, v143);
        v146 = v145;
        goto LABEL_74;
      }

LABEL_73:
      v144 = 0;
      v146 = 0xF000000000000000;
LABEL_74:
      result = v208 + 13;
      if (!__OFADD__(v208, 13))
      {
        v197 = sub_100083E9C(result, v205);
        if (v147)
        {
          goto LABEL_84;
        }

        result = v208 + 14;
        if (!__OFADD__(v208, 14))
        {
          v148 = sub_100083D68(result, v205);
          if (v148 == 2)
          {
            goto LABEL_84;
          }

          v149 = v148;
          result = v208 + 15;
          if (!__OFADD__(v208, 15))
          {
            v196 = sub_100028894(result, v205);
            if (v150)
            {
              goto LABEL_84;
            }

            result = v208 + 16;
            if (!__OFADD__(v208, 16))
            {
              v195 = sub_100028894(result, v205);
              if ((v151 & 1) == 0)
              {
                result = v208 + 17;
                if (!__OFADD__(v208, 17))
                {
                  v194 = sub_100028894(result, v205);
                  if (v152)
                  {
                    goto LABEL_84;
                  }

                  result = v208 + 18;
                  if (!__OFADD__(v208, 18))
                  {
                    v208 = sub_100028894(result, v205);
                    LODWORD(v206) = v153;

                    sub_10002640C(v187, v184);
                    sub_100025668(v204, v188, type metadata accessor for CRLBoardIdentifier);
                    v154 = v207;
                    v155 = v185;
                    v185(v189, v200, v207);
                    v155(v190, v198, v154);
                    type metadata accessor for CRLBoardDatabaseRow(0);
                    v156 = swift_allocObject();
                    *(v156 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data) = xmmword_101486780;
                    *(v156 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_syncData) = xmmword_101486780;
                    *(v156 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareData) = xmmword_101486780;
                    v157 = v188;
                    sub_10000C83C(v188, v156 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
                    v158 = (v157 + *(v203 + 20));
                    v159 = v158[1];
                    v205 = *v158;

                    sub_100026028(v157, type metadata accessor for CRLBoardIdentifier);
                    v160 = (v156 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ownerName);
                    *v160 = v205;
                    v160[1] = v159;
                    v161 = v156 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_minRequiredVersions;
                    v162 = v195;
                    v163 = v196;
                    *v161 = v182;
                    *(v161 + 8) = v163;
                    *(v161 + 16) = v162;
                    v164 = v207;
                    *(v161 + 24) = v208;
                    *(v161 + 32) = v206 & 1;
                    v165 = v185;
                    v185((v156 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_rootContainerUUID), v189, v164);
                    v165(v156 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_alternateRootContainerUUID, v190, v164);
                    v166 = (v156 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data);
                    v167 = *(v156 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data);
                    v207 = *(v156 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data + 8);
                    v208 = v167;
                    v168 = v180;
                    sub_100024E84(v40, v180);
                    *v166 = v40;
                    v166[1] = v168;
                    sub_100025870(v208, v207);
                    sub_100025870(v40, v168);
                    v169 = v156;
                    *(v156 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_isLocalTombstone) = v202 & 1;
                    *(v156 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_unsyncedChanges) = v201;
                    *(v156 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareUnsyncedChanges) = v51 & 1;
                    v170 = (v156 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_syncData);
                    v171 = v169;
                    v172 = v170[1];
                    v208 = *v170;
                    v173 = v181;
                    v174 = v186;
                    sub_100024E84(v181, v186);
                    *v170 = v173;
                    v170[1] = v174;
                    sub_100025870(v208, v172);
                    sub_100025870(v173, v174);
                    *(v171 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_tombstoneDate) = v199;
                    *(v171 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_hideFromRecentlyDeleted) = v56 & 1;
                    v175 = (v171 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareData);
                    v176 = *(v171 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareData);
                    v177 = *(v171 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareData + 8);
                    sub_100024E84(v144, v146);
                    *v175 = v144;
                    v175[1] = v146;
                    sub_100025870(v176, v177);
                    sub_100025870(v144, v146);
                    result = v171;
                    *(v171 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_lastActivityTime) = v197;
                    *(v171 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_isDiscardable) = v149 & 1;
                    *(v171 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_lastUpgradedVersion) = v194;
                    return result;
                  }

LABEL_97:
                  __break(1u);
                  return result;
                }

LABEL_96:
                __break(1u);
                goto LABEL_97;
              }

LABEL_84:

              sub_100025870(v144, v146);
              sub_100025870(v181, v186);
              v137 = v40;
              v138 = v180;
              goto LABEL_85;
            }

LABEL_95:
            __break(1u);
            goto LABEL_96;
          }

LABEL_94:
          __break(1u);
          goto LABEL_95;
        }

LABEL_93:
        __break(1u);
        goto LABEL_94;
      }

LABEL_92:
      __break(1u);
      goto LABEL_93;
    }

LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  sub_100025870(v85, v89);
  sub_100025870(v40, v17);
  sub_10002640C(v187, v184);
  v134 = v207;
  v135 = v206[1];
  v135(v198, v207);
  v136 = v130;
LABEL_86:
  v135(v136, v134);
  v123 = v204;
LABEL_56:
  sub_100026028(v123, type metadata accessor for CRLBoardIdentifier);
  return 0;
}

uint64_t sub_100083B3C(char *a1, uint64_t a2, uint64_t a3)
{
  for (; a2; --a2)
  {
    v3 = *a1++;
    a3 = 0x100000001B3 * (a3 ^ v3);
  }

  return a3;
}

uint64_t sub_100083B64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a1;
  v31 = a3;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = a2;
  v9 = *(a2 + 16);
  v10 = *(v9 + 32);
  *v8 = v10;
  v11 = enum case for DispatchPredicate.onQueue(_:);
  v12 = *(v5 + 104);
  (v12)(v8, enum case for DispatchPredicate.onQueue(_:), v4, v6);
  v13 = v10;
  v14 = _dispatchPreconditionTest(_:)();
  v15 = *(v5 + 8);
  result = v15(v8, v4);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v17 = *(v9 + 32);
  *v8 = v17;
  v12(v8, v11, v4);
  v18 = v17;
  v19 = _dispatchPreconditionTest(_:)();
  result = v15(v8, v4);
  if ((v19 & 1) == 0)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v20 = sub_10002C280(v29, v30);
  if (v20)
  {
    v22 = sub_100024DD4(v20, v21);
    v23 = v31;
    v24 = v32;
    result = UUID.init(crl_data:)(v22, v25);
    if (v24)
    {
      return result;
    }

    v26 = 0;
  }

  else
  {
    v26 = 1;
    v23 = v31;
  }

  v27 = type metadata accessor for UUID();
  return (*(*(v27 - 8) + 56))(v23, v26, 1, v27);
}

uint64_t sub_100083D68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(*(a2 + 16) + 32);
  *v8 = v9;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4, v6);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v8, v4);
  if (v9)
  {
    v12 = sub_10001E378(a1, a2) != 0;
    if (v13)
    {
      return 2;
    }

    else
    {
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100083E9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(*(a2 + 16) + 32);
  *v8 = v9;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4, v6);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = swift_beginAccess();
  if (a1 < 0xFFFFFFFF80000000)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (a1 > 0x7FFFFFFF)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  if (sqlite3_column_type(*(a2 + 24), a1) == 5)
  {
    return 0;
  }

  else
  {
    return sqlite3_column_double(*(a2 + 24), a1);
  }
}

uint64_t type metadata accessor for CRLBoardDatabaseRow(uint64_t a1)
{
  result = qword_101A1D0F0;
  if (!qword_101A1D0F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10008406C(uint64_t a1)
{
  result = type metadata accessor for CRLBoardIdentifierStorage(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for UUID();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1000841C0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

NSString sub_10008430C()
{
  result = String._bridgeToObjectiveC()();
  qword_101AD78F0 = result;
  return result;
}

uint64_t sub_10008449C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v53 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v46 - v6;
  __chkstk_darwin(v8);
  v10 = &v46 - v9;
  __chkstk_darwin(v11);
  v13 = &v46 - v12;
  __chkstk_darwin(v14);
  v55 = &v46 - v15;
  __chkstk_darwin(v16);
  v56 = &v46 - v17;
  __chkstk_darwin(v18);
  v57 = &v46 - v19;
  UUID.init()();
  UUID.init()();
  UUID.init()();
  v20 = [objc_opt_self() mainBundle];
  v21 = String._bridgeToObjectiveC()();
  v22 = String._bridgeToObjectiveC()();
  v23 = [v20 localizedStringForKey:v21 value:v22 table:0];

  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v51 = v25;
  v52 = v24;

  v26 = type metadata accessor for CRLBoardCRDTData(0);
  v27 = *(v26 + 40);
  v28 = v26;
  v49 = v26;
  *(a1 + v27) = _swiftEmptyDictionarySingleton;
  v29 = v3;
  v30 = *(v3 + 16);
  v31 = v13;
  v30(v13, v57, v2);
  v30(v10, v13, v2);
  v50 = a1;
  v46 = v10;
  CRRegister.init(wrappedValue:)();
  v32 = *(v29 + 8);
  v54 = v29 + 8;
  v47 = v32;
  v32(v13, v2);
  v48 = v13;
  v30(v13, v56, v2);
  v30(v10, v55, v2);
  v33 = a1 + *(v28 + 20);
  *(v33 + *(type metadata accessor for CRLBoardRootContainerAffinityCRDTData(0) + 24)) = _swiftEmptyDictionarySingleton;
  v34 = v7;
  v30(v7, v31, v2);
  v35 = v53;
  v30(v53, v34, v2);
  CRRegister.init(wrappedValue:)();
  v36 = v47;
  v47(v34, v2);
  v37 = v46;
  v30(v34, v46, v2);
  v30(v35, v34, v2);
  CRRegister.init(wrappedValue:)();
  v36(v34, v2);
  v36(v37, v2);
  v36(v48, v2);
  v38 = v49;
  v39 = v50;
  v58 = v52;
  v59 = v51;
  CRRegister.init(wrappedValue:)();
  sub_100084B00(v39 + v38[7]);
  v40 = v39 + v38[8];
  static Date.timeIntervalSinceReferenceDate.getter();
  v42 = v41;
  *(v40 + *(type metadata accessor for CRLSharedBoardMetadataCRDTData(0) + 32)) = _swiftEmptyDictionarySingleton;
  v58 = v42;
  CRMaxRegister.init(wrappedValue:)();
  v58 = v42;
  CRRegister.init(wrappedValue:)();
  LOBYTE(v58) = 1;
  CRRegister.init(wrappedValue:)();
  LOBYTE(v58) = 0;
  CRMaxRegister.init(wrappedValue:)();
  v43 = v39 + v38[9];
  sub_1000841C0(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  CROrderedSet.init()();
  v44 = type metadata accessor for CRLBoardScenesCRDTData(0);
  CRDictionary.init()();
  sub_10007F4A4();
  sub_10007F5AC();
  CRDictionary.init()();
  v36(v55, v2);
  v36(v56, v2);
  result = (v36)(v57, v2);
  *(v43 + *(v44 + 28)) = _swiftEmptyDictionarySingleton;
  return result;
}

uint64_t sub_100084B00@<X0>(uint64_t a1@<X8>)
{
  sub_100084F94(__src);
  sub_100084F5C(v6);
  sub_100084F5C(v7);
  sub_100084F9C(v8);
  sub_1000852C4(v9);
  memcpy(__dst, __src, 0x370uLL);
  sub_1005B981C(&qword_1019F4B88, &qword_10146CDF0);
  sub_10007E3CC(&qword_101A33818, &qword_1019F4B88, &qword_10146CDF0, sub_10007E448);
  CRRegister.init(wrappedValue:)();
  inserted = type metadata accessor for CRLBoardInsertStyleData(0);
  memcpy(__dst, __src, 0x370uLL);
  CRRegister.init(wrappedValue:)();
  memcpy(__dst, __src, 0x370uLL);
  CRRegister.init(wrappedValue:)();
  memcpy(__dst, v6, 0x180uLL);
  sub_1005B981C(&qword_1019F4B68, &unk_10146CDD0);
  sub_10007E3CC(&qword_101A33828, &qword_1019F4B68, &unk_10146CDD0, sub_10007E614);
  CRRegister.init(wrappedValue:)();
  memcpy(__dst, v7, 0x180uLL);
  sub_1005B981C(&qword_1019F4B50, &unk_1014C6CA0);
  sub_10007E3CC(&qword_101A33838, &qword_1019F4B50, &unk_1014C6CA0, sub_10007E960);
  CRRegister.init(wrappedValue:)();
  memcpy(__dst, v8, sizeof(__dst));
  sub_1005B981C(&qword_1019F4B78, &unk_10146CDE0);
  sub_10007E3CC(&qword_101A33848, &qword_1019F4B78, &unk_10146CDE0, sub_10007EF8C);
  CRRegister.init(wrappedValue:)();
  memcpy(__dst, v9, 0x178uLL);
  sub_1005B981C(&qword_1019F4B40, &qword_10146CDA8);
  sub_10007E3CC(&unk_101A33858, &qword_1019F4B40, &qword_10146CDA8, sub_10007F0A0);
  CRRegister.init(wrappedValue:)();
  *(a1 + *(inserted + 44)) = _swiftEmptyDictionarySingleton;
  memcpy(__dst, __src, 0x370uLL);
  sub_1005B981C(&unk_1019F4B90, &qword_10146CDF8);
  CRRegister.wrappedValue.setter();
  memcpy(__dst, __src, 0x370uLL);
  CRRegister.wrappedValue.setter();
  memcpy(__dst, __src, 0x370uLL);
  CRRegister.wrappedValue.setter();
  memcpy(__dst, v6, 0x180uLL);
  sub_1005B981C(&qword_1019F4B70, &unk_1014DCB70);
  CRRegister.wrappedValue.setter();
  memcpy(__dst, v7, 0x180uLL);
  sub_1005B981C(&qword_1019F4B58, &unk_10146CDC0);
  CRRegister.wrappedValue.setter();
  memcpy(__dst, v8, sizeof(__dst));
  sub_1005B981C(&qword_1019F4B80, &unk_1014DCB80);
  CRRegister.wrappedValue.setter();
  memcpy(__dst, v9, 0x178uLL);
  sub_1005B981C(&qword_1019F4B48, &unk_10146CDB0);
  return CRRegister.wrappedValue.setter();
}

double sub_100084F5C(_OWORD *a1)
{
  result = 0.0;
  a1[22] = 0u;
  a1[23] = 0u;
  a1[20] = 0u;
  a1[21] = 0u;
  a1[18] = 0u;
  a1[19] = 0u;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_100084FA4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v18 - v8;
  sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
  CRRegister.wrappedValue.getter();
  CRRegister.wrappedValue.getter();
  v10 = static UUID.== infix(_:_:)();
  v11 = *(v4 + 8);
  v11(v6, v3);
  v11(v9, v3);
  if ((v10 & 1) == 0)
  {
    goto LABEL_12;
  }

  v12 = type metadata accessor for CRLBoardCRDTData(0);
  if ((sub_1012F69E8() & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_1005B981C(&qword_101A1A020, &unk_10146C6C0);
  CRRegister.wrappedValue.getter();
  v14 = v18;
  v13 = v19;
  CRRegister.wrappedValue.getter();
  if (v14 == v18 && v13 == v19)
  {
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v15 & 1) == 0)
    {
LABEL_12:
      v16 = 0;
      return v16 & 1;
    }
  }

  if ((sub_1012F6E64(a1 + *(v12 + 28)) & 1) == 0)
  {
    goto LABEL_12;
  }

  if ((sub_1012F6BB4() & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_1000841C0(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  if ((static CROrderedSet.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_12;
  }

  type metadata accessor for CRLBoardScenesCRDTData(0);
  if ((static CRDictionary.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_10007F4A4();
  sub_10007F5AC();
  v16 = static CRDictionary.== infix(_:_:)();
  return v16 & 1;
}

double sub_1000852C4(uint64_t a1)
{
  *(a1 + 368) = 0;
  result = 0.0;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
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
  return result;
}

uint64_t sub_100085300(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 880))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 592);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100085348(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 384))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 368);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100085390(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 888))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 592);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000853D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 376))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 96);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100085420(uint64_t a1)
{
  v2 = sub_1000841C0(&qword_101A227C0, type metadata accessor for CRLBoardCRDTData, byte_1014DD9A8);

  return static CRStruct_6.fieldKeys.getter(a1, v2);
}

__n128 sub_10008548C@<Q0>(uint64_t a1@<X8>)
{
  if (qword_1019F2C00 != -1)
  {
    swift_once();
  }

  *v20 = xmmword_101AD97D8;
  *&v20[16] = *&qword_101AD97E8;
  v21 = xmmword_101AD97F8;
  v17 = xmmword_101AD9798;
  *v18 = *&qword_101AD97A8;
  *&v18[16] = xmmword_101AD97B8;
  v19 = *&qword_101AD97C8;
  *v16 = xmmword_101AD9778;
  *&v16[16] = *&qword_101AD9788;
  v2 = xmmword_101AD9778;
  v3 = unk_101AD9790;
  v4 = qword_101AD97A8;
  v5 = *(&xmmword_101AD97B8 + 1);
  v6 = xmmword_101AD97D8;
  v7 = unk_101AD97F0;
  v9 = *&v16[8];
  v10 = xmmword_101AD9798;
  v11 = *&v18[8];
  v12 = *&qword_101AD97C8;
  v13 = *&v20[8];
  v14 = xmmword_101AD97F8;
  sub_10000BE14(v16, v15, &qword_101A33AE8, &qword_1014DDA60);
  *a1 = v2;
  *(a1 + 8) = v9;
  *(a1 + 24) = v3;
  *(a1 + 32) = v10;
  *(a1 + 48) = v4;
  *(a1 + 56) = v11;
  *(a1 + 72) = v5;
  *(a1 + 80) = v12;
  *(a1 + 96) = v6;
  result = v14;
  *(a1 + 104) = v13;
  *(a1 + 120) = v7;
  *(a1 + 128) = v14;
  return result;
}

uint64_t sub_1000855CC()
{
  *&xmmword_101AD9778 = 97;
  *(&xmmword_101AD9778 + 1) = 0xE100000000000000;
  qword_101AD9788 = swift_getKeyPath();
  unk_101AD9790 = 98;
  *&xmmword_101AD9798 = 0xE100000000000000;
  *(&xmmword_101AD9798 + 1) = swift_getKeyPath();
  qword_101AD97A8 = 99;
  qword_101AD97B0 = 0xE100000000000000;
  *&xmmword_101AD97B8 = swift_getKeyPath();
  *(&xmmword_101AD97B8 + 1) = 100;
  qword_101AD97C8 = 0xE100000000000000;
  qword_101AD97D0 = swift_getKeyPath();
  *&xmmword_101AD97D8 = 101;
  *(&xmmword_101AD97D8 + 1) = 0xE100000000000000;
  qword_101AD97E8 = swift_getKeyPath();
  unk_101AD97F0 = 102;
  *&xmmword_101AD97F8 = 0xE100000000000000;
  result = swift_getKeyPath();
  *(&xmmword_101AD97F8 + 1) = result;
  return result;
}

uint64_t sub_10008594C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v19 - v7;
  __chkstk_darwin(v9);
  v11 = v19 - v10;
  __chkstk_darwin(v12);
  v14 = v19 - v13;
  UUID.init()();
  UUID.init()();
  v15 = *(type metadata accessor for CRLBoardRootContainerAffinityCRDTData(0) + 24);
  v19[1] = a1;
  *(a1 + v15) = _swiftEmptyDictionarySingleton;
  v16 = *(v3 + 16);
  v16(v8, v14, v2);
  v16(v5, v8, v2);
  CRRegister.init(wrappedValue:)();
  v17 = *(v3 + 8);
  v17(v8, v2);
  v16(v8, v11, v2);
  v16(v5, v8, v2);
  CRRegister.init(wrappedValue:)();
  v17(v8, v2);
  v17(v11, v2);
  return (v17)(v14, v2);
}

uint64_t sub_100085B94(uint64_t a1)
{
  v2 = sub_1000841C0(&qword_101A33AF8, type metadata accessor for CRLBoardRootContainerAffinityCRDTData, byte_1014DD408);

  return static CRStruct_2.fieldKeys.getter(a1, v2);
}

uint64_t sub_100085C00@<X0>(void *a1@<X8>)
{
  if (qword_1019F2C08 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = unk_101AD9810;
  v3 = qword_101AD9818;
  v2 = unk_101AD9820;
  v4 = qword_101AD9828;
  v5 = qword_101AD9830;
  *a1 = qword_101AD9808;
  a1[1] = v1;
  a1[2] = v3;
  a1[3] = v2;
  a1[4] = v4;
  a1[5] = v5;
}

uint64_t sub_100085CA4()
{
  qword_101AD9808 = 97;
  unk_101AD9810 = 0xE100000000000000;
  qword_101AD9818 = swift_getKeyPath();
  unk_101AD9820 = 98;
  qword_101AD9828 = 0xE100000000000000;
  result = swift_getKeyPath();
  qword_101AD9830 = result;
  return result;
}

uint64_t sub_100085FC0(uint64_t a1)
{
  v2 = sub_1000841C0(&qword_101A33B08, type metadata accessor for CRLBoardInsertStyleData, byte_1014DD168);

  return static CRStruct_7.fieldKeys.getter(a1, v2);
}

__n128 sub_10008602C@<Q0>(uint64_t a1@<X8>)
{
  if (qword_1019F2C10 != -1)
  {
    swift_once();
  }

  v23 = xmmword_101AD98B8;
  *v24 = *&qword_101AD98C8;
  *&v24[16] = qword_101AD98D8;
  *&v20[16] = xmmword_101AD9878;
  v21 = *&qword_101AD9888;
  *v22 = xmmword_101AD9898;
  *&v22[16] = *&qword_101AD98A8;
  *v18 = xmmword_101AD9838;
  *&v18[16] = *&qword_101AD9848;
  v19 = xmmword_101AD9858;
  *v20 = *&qword_101AD9868;
  v2 = xmmword_101AD9838;
  v3 = unk_101AD9850;
  v4 = qword_101AD9868;
  v5 = *(&xmmword_101AD9878 + 1);
  v6 = xmmword_101AD9898;
  v7 = unk_101AD98B0;
  v8 = qword_101AD98C8;
  v10 = *&v18[8];
  v11 = xmmword_101AD9858;
  v12 = *&v20[8];
  v13 = *&qword_101AD9888;
  v14 = *&v22[8];
  v15 = xmmword_101AD98B8;
  v16 = *&v24[8];
  sub_10000BE14(v18, v17, &qword_101A33B00, &qword_1014DDBE8);
  *a1 = v2;
  *(a1 + 8) = v10;
  *(a1 + 24) = v3;
  *(a1 + 32) = v11;
  *(a1 + 48) = v4;
  *(a1 + 56) = v12;
  *(a1 + 72) = v5;
  *(a1 + 80) = v13;
  *(a1 + 96) = v6;
  *(a1 + 104) = v14;
  *(a1 + 120) = v7;
  *(a1 + 128) = v15;
  *(a1 + 144) = v8;
  result = v16;
  *(a1 + 152) = v16;
  return result;
}

uint64_t sub_10008618C()
{
  *&xmmword_101AD9838 = 97;
  *(&xmmword_101AD9838 + 1) = 0xE100000000000000;
  qword_101AD9848 = swift_getKeyPath();
  unk_101AD9850 = 98;
  *&xmmword_101AD9858 = 0xE100000000000000;
  *(&xmmword_101AD9858 + 1) = swift_getKeyPath();
  qword_101AD9868 = 99;
  qword_101AD9870 = 0xE100000000000000;
  *&xmmword_101AD9878 = swift_getKeyPath();
  *(&xmmword_101AD9878 + 1) = 100;
  qword_101AD9888 = 0xE100000000000000;
  qword_101AD9890 = swift_getKeyPath();
  *&xmmword_101AD9898 = 101;
  *(&xmmword_101AD9898 + 1) = 0xE100000000000000;
  qword_101AD98A8 = swift_getKeyPath();
  unk_101AD98B0 = 102;
  *&xmmword_101AD98B8 = 0xE100000000000000;
  *(&xmmword_101AD98B8 + 1) = swift_getKeyPath();
  qword_101AD98C8 = 103;
  qword_101AD98D0 = 0xE100000000000000;
  result = swift_getKeyPath();
  qword_101AD98D8 = result;
  return result;
}

uint64_t sub_1000862A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 872) = 0;
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
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
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
      *(result + 880) = 1;
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
      *(result + 592) = (a2 - 1);
      return result;
    }

    *(result + 880) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100086410(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 376) = 0;
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
      *(result + 384) = 1;
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
      *(result + 368) = (a2 - 1);
      return result;
    }

    *(result + 384) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10008653C(uint64_t result, int a2, int a3)
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
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
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
      *(result + 888) = 1;
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
      *(result + 592) = (a2 - 1);
      return result;
    }

    *(result + 888) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100086850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  static Date.timeIntervalSinceReferenceDate.getter();
  *(a2 + *(a1 + 32)) = _swiftEmptyDictionarySingleton;
  CRMaxRegister.init(wrappedValue:)();
  CRRegister.init(wrappedValue:)();
  CRRegister.init(wrappedValue:)();
  return CRMaxRegister.init(wrappedValue:)();
}

uint64_t sub_100086944(uint64_t a1)
{
  v2 = sub_1000841C0(&qword_101A33AF0, type metadata accessor for CRLSharedBoardMetadataCRDTData, ")e5");

  return static CRStruct_4.fieldKeys.getter(a1, v2);
}

uint64_t sub_1000869B0()
{
  qword_101AD98E0 = 97;
  *algn_101AD98E8 = 0xE100000000000000;
  qword_101AD98F0 = swift_getKeyPath();
  unk_101AD98F8 = 98;
  qword_101AD9900 = 0xE100000000000000;
  qword_101AD9908 = swift_getKeyPath();
  qword_101AD9910 = 99;
  qword_101AD9918 = 0xE100000000000000;
  qword_101AD9920 = swift_getKeyPath();
  unk_101AD9928 = 100;
  qword_101AD9930 = 0xE100000000000000;
  result = swift_getKeyPath();
  qword_101AD9938 = result;
  return result;
}

uint64_t sub_100086A94(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for CRLBoardRootContainerAffinityCRDTData(0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = sub_1005B981C(&qword_101A1A020, &unk_10146C6C0);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        inserted = type metadata accessor for CRLBoardInsertStyleData(0);
        if (*(*(inserted - 8) + 84) == a3)
        {
          v10 = inserted;
          v14 = *(inserted - 8);
          v15 = a4[7];
        }

        else
        {
          v18 = type metadata accessor for CRLSharedBoardMetadataCRDTData(0);
          if (*(*(v18 - 8) + 84) == a3)
          {
            v10 = v18;
            v14 = *(v18 - 8);
            v15 = a4[8];
          }

          else
          {
            result = type metadata accessor for CRLBoardScenesCRDTData(0);
            if (*(*(result - 8) + 84) != a3)
            {
              *(a1 + a4[10]) = (a2 - 1);
              return result;
            }

            v10 = result;
            v14 = *(result - 8);
            v15 = a4[9];
          }
        }
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void *sub_100086CD4(void *result, int64_t a2, char a3, void *a4)
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
    sub_1005B981C(&qword_101A11B58, &qword_101498248);
    v10 = swift_allocObject();
    v11 = j__malloc_size_1(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1005B981C(&qword_101A11B60, &qword_101498250);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_100086E08()
{
  sub_100086F34(v0 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_boardIdentifier);

  v1 = OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_rootContainerUUID;
  v2 = type metadata accessor for UUID();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_alternateRootContainerUUID, v2);
  sub_100025870(*(v0 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data), *(v0 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_data + 8));
  sub_100025870(*(v0 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_syncData), *(v0 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_syncData + 8));
  sub_100025870(*(v0 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareData), *(v0 + OBJC_IVAR____TtC8Freeform19CRLBoardDatabaseRow_ckShareData + 8));

  return swift_deallocClassInstance();
}

uint64_t sub_100086F34(uint64_t a1)
{
  v2 = type metadata accessor for CRLBoardIdentifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100086FA0(uint64_t a1)
{
  v1[22] = *(v1[3] + OBJC_IVAR____TtC8Freeform25CRLBoardPreviewImageCache_boardLibrary);
  v1[23] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[24] = v3;
  v1[25] = v2;

  return _swift_task_switch(sub_100087040, v3, v2);
}

uint64_t sub_100087040(uint64_t a1)
{
  v2 = v1[22];
  v3 = static MainActor.shared.getter();
  v1[26] = v3;
  v4 = swift_task_alloc();
  v1[27] = v4;
  *(v4 + 16) = v2;
  v5 = swift_task_alloc();
  v1[28] = v5;
  *v5 = v1;
  v5[1] = sub_1006D8A6C;

  return withCheckedContinuation<A>(isolation:function:_:)(v5, v3, &protocol witness table for MainActor, 0xD00000000000001BLL, 0x800000010155F400, sub_1000875EC, v4, &type metadata for () + 8);
}

uint64_t sub_100087148(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A15A30, &qword_1014B6A70);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v8);
  v11 = v23 - v10;
  v12 = *(v5 + 16);
  v12(v23 - v10, a1, v4, v9);
  (v12)(v7, v11, v4);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  (*(v5 + 32))(v14 + v13, v11, v4);
  if (*(a2 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_didStartUpdating) == 1)
  {
    CheckedContinuation.resume(returning:)();

    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    v16 = [objc_opt_self() defaultCenter];
    v17 = swift_allocObject();
    *(v17 + 16) = 0;
    v23[1] = v17 + 16;
    if (qword_1019F2748 != -1)
    {
      swift_once();
    }

    v23[0] = qword_101AD8948;
    v18 = [objc_opt_self() mainQueue];
    v19 = swift_allocObject();
    v19[2] = v17;
    v19[3] = v16;
    v19[4] = sub_1008A1948;
    v19[5] = v14;
    aBlock[4] = sub_1006EEC20;
    aBlock[5] = v19;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = *"";
    aBlock[2] = sub_100059694;
    aBlock[3] = &unk_1018B0CE8;
    v20 = _Block_copy(aBlock);

    v21 = v16;

    v22 = [v21 addObserverForName:v23[0] object:a2 queue:v18 usingBlock:v20];
    _Block_release(v20);

    (*(v5 + 8))(v7, v4);
    swift_beginAccess();
    *(v17 + 16) = v22;

    return swift_unknownObjectRelease();
  }
}

uint64_t sub_1000874D8()
{
  v1 = sub_1005B981C(&qword_101A15A30, &qword_1014B6A70);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10008756C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000875A4()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000875FC()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_10008765C()
{
  result = qword_1019F54F8;
  if (!qword_1019F54F8)
  {
    v3 = sub_1005C4E5C(&qword_1019F54F0, &qword_10146D618);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v3, v0, v1);
    atomic_store(result, &qword_1019F54F8);
  }

  return result;
}

void sub_10008774C(char a1)
{
  v2 = v1;
  v23.receiver = v2;
  v23.super_class = type metadata accessor for CRLiOSFolderGridViewController(0);
  objc_msgSendSuper2(&v23, "viewDidAppear:", a1 & 1);
  v4 = objc_opt_self();
  v5 = [v4 sharedApplication];
  v6 = [v5 delegate];

  if (!v6)
  {
    __break(1u);
    goto LABEL_15;
  }

  type metadata accessor for CRLiOSAppDelegate();
  v7 = swift_dynamicCastClassUnconditional();
  v8 = [v4 sharedApplication];
  if ([v8 shouldRecordExtendedLaunchTime] && (v9 = OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_didLogExtendedLaunchTime, (*(v7 + OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_didLogExtendedLaunchTime) & 1) == 0))
  {
    v10 = [v8 _launchTestName];
    [v8 finishedTest:v10];

    *(v7 + v9) = 1;
  }

  else
  {
  }

  swift_unknownObjectRelease();
  v11 = [v4 sharedApplication];
  v12 = [v11 isRunningTest];

  if (v12)
  {
    v13 = [v4 sharedApplication];
    v14 = [v13 delegate];

    if (!v14)
    {
LABEL_16:
      __break(1u);
      return;
    }

    swift_unknownObjectRelease();
    if (qword_101AD75D0)
    {
      v15 = qword_101AD75E0;
      ObjectType = swift_getObjectType();
      v17 = *(v15 + 32);
      swift_unknownObjectRetain();
      v17(v2, ObjectType, v15);
      swift_unknownObjectRelease();
    }
  }

  v18 = [v2 collectionView];
  if (!v18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v18;
  v20 = [v18 collectionViewLayout];

  [v20 invalidateLayout];
  v2[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_shouldSaveViewState] = 1;
  v21 = *&v2[OBJC_IVAR____TtC8Freeform30CRLiOSFolderGridViewController_libraryProvider];
  v22 = OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_shareErrorObservers;
  if (([*(v21 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_shareErrorObservers) containsObject:v2] & 1) == 0)
  {
    [*(v21 + v22) addObject:v2];
  }

  [objc_opt_self() addKeyboardObserver:v2];
}

void sub_100087A44()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedApplication];
  v2 = [v1 delegate];

  if (v2)
  {
    type metadata accessor for CRLiOSAppDelegate();
    v3 = swift_dynamicCastClassUnconditional();
    v4 = [v0 sharedApplication];
    if ([v4 shouldRecordExtendedLaunchTime] && (v5 = OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_didLogExtendedLaunchTime, (*(v3 + OBJC_IVAR____TtC8Freeform17CRLiOSAppDelegate_didLogExtendedLaunchTime) & 1) == 0))
    {
      v6 = [v4 _launchTestName];
      [v4 finishedTest:v6];

      *(v3 + v5) = 1;
    }

    else
    {
    }

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

BOOL sub_100087F28(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_100088004@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_100088030@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_1000880CC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1000880F0@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_DWORD *sub_10008811C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

BOOL sub_100088234(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_100088264@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_100088290@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

uint64_t sub_100088328(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100088348(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CRLRectData(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10008847C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000884B8()
{
  swift_unknownObjectRelease();
  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100088500()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10008854C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1005B981C(&qword_101A1A020, &unk_10146C6C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_1005B981C(&qword_1019F4850, &unk_1014DCB10);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = sub_1005B981C(&qword_1019F4858, &unk_10146C6D0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = sub_1005B981C(&qword_1019F4860, &qword_1014B6AE0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[8]);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

uint64_t sub_100088718(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1005B981C(&qword_101A1A020, &unk_10146C6C0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_1005B981C(&qword_1019F4850, &unk_1014DCB10);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = sub_1005B981C(&qword_1019F4858, &unk_10146C6D0);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        result = sub_1005B981C(&qword_1019F4860, &qword_1014B6AE0);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[8]) = (a2 - 1);
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[7];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1000888E0()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100088940()
{
  v1 = *(sub_1005B981C(&unk_1019F4CF0, &unk_10146CEF0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 17) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for IndexSet();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, ((((v3 + v4) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 9, v2 | 7);
}

uint64_t sub_100088A74()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100088AB4()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100088AEC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100088B24()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_100088B64()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100088BA4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100088BE8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100088C20()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100088C60()
{
  v1 = sub_1005B981C(&unk_101A050F0, &unk_10146CFE0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100088D40()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = sub_1005B981C(&unk_101A050F0, &unk_10146CFE0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_100088E9C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_1005B981C(&unk_101A050F0, &unk_10146CFE0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

id sub_100089018()
{
  v0 = objc_opt_self();

  return [v0 crl_openICloudPreferencePane];
}

uint64_t sub_100089060()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000890B0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000890F4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100089144()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100089180()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000891B8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000891F8()
{
  swift_unknownObjectRelease();
  sub_1000260E8(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10008925C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10008929C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000892DC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UUID();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1005B981C(&qword_1019F57A8, &unk_101470220);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10008940C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1005B981C(&qword_1019F57A8, &unk_101470220);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_10008953C()
{
  switch(*(v0 + 296))
  {
    case 0:
    case 0x22:
      if (*(v0 + 64))
      {
        sub_100005070((v0 + 40));
      }

      if (*(v0 + 96))
      {
        sub_100005070((v0 + 72));
      }

      break;
    case 1:
    case 0x23:
      if (*(v0 + 64))
      {
        sub_100005070((v0 + 40));
      }

      break;
    case 0x12:
    case 0x14:
    case 0x1C:
    case 0x1E:
    case 0x3A:
    case 0x3C:
    case 0x3E:

      break;
    case 0x13:
    case 0x15:
    case 0x1D:
    case 0x1F:
    case 0x3B:
    case 0x3D:
    case 0x3F:

      break;
    case 0x20:
    case 0x24:

      goto LABEL_17;
    case 0x21:
    case 0x25:
      goto LABEL_17;
    case 0x4A:

      break;
    case 0x4F:

      if (*(v0 + 160))
      {
        sub_100005070((v0 + 136));
      }

      goto LABEL_17;
    case 0x50:

      if (*(v0 + 128))
      {
        sub_100005070((v0 + 104));
      }

LABEL_17:

      break;
    default:
      break;
  }

  return _swift_deallocObject(v0, 316, 7);
}

uint64_t sub_1000897D8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1005B981C(&qword_101A28680, qword_10147AB10);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_1005B981C(&unk_101A0D9D0, &unk_10146DB60);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = sub_1005B981C(&unk_101A2C7E0, &unk_10149A510);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = sub_1005B981C(&qword_1019F4B60, &unk_10146DB70);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[8]);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

uint64_t sub_1000899A4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1005B981C(&qword_101A28680, qword_10147AB10);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_1005B981C(&unk_101A0D9D0, &unk_10146DB60);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = sub_1005B981C(&unk_101A2C7E0, &unk_10149A510);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        result = sub_1005B981C(&qword_1019F4B60, &unk_10146DB70);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[8]) = (a2 - 1);
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[7];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_100089B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CRLAssetData(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1005B981C(&unk_101A1B880, &unk_10147AB00);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 52));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_100089C84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for CRLAssetData(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1005B981C(&unk_101A1B880, &unk_10147AB00);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 52)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_100089D98()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100089DD8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100089E10()
{

  return _swift_deallocObject(v0, 36, 7);
}

uint64_t sub_100089E50()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100089E88()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100089ED4()
{

  return _swift_deallocObject(v0, 26, 7);
}

uint64_t sub_10008A010()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008A048@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10008A074@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10008A0A8()
{
  v1 = sub_1005B981C(&qword_1019F64C8, &qword_101474E30);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10008A178()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008A1B4()
{
  v1 = *(type metadata accessor for CRLBoardLibraryViewModel.Item(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for CRLFolderIdentifier(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);

  v9 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v38 = v8;
    v39 = v4;
    v37 = (v2 + 24) & ~v2;
    v21 = type metadata accessor for UUID();
    v22 = *(*(v21 - 8) + 8);
    v22(v9, v21);
    type metadata accessor for CRLBoardIdentifierStorage(0);

    v23 = _s5BoardVMa(0);
    v24 = v9 + v23[5];
    if (!(*(v6 + 48))(v24, 1, v5))
    {
      v22(v24, v21);
      type metadata accessor for CRLFolderIdentifierStorage(0);
    }

    v25 = v23[7];
    v26 = type metadata accessor for Date();
    v27 = *(*(v26 - 8) + 8);
    v27(v9 + v25, v26);
    v27(v9 + v23[8], v26);
    v18 = v9 + v23[20];
    v19 = _s5BoardV13ShareMetadataVMa(0);
    v20 = (*(*(v19 - 8) + 48))(v18, 1, v19);
  }

  else
  {
    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_14;
    }

    v11 = sub_1005B981C(&qword_1019F3480, &unk_10146F1F0);
    if ((*(*(v11 - 8) + 48))(v0 + v3, 5, v11))
    {
      goto LABEL_14;
    }

    v38 = v8;
    v39 = v4;
    v37 = (v2 + 24) & ~v2;
    v12 = type metadata accessor for UUID();
    v36 = *(*(v12 - 8) + 8);
    v36(v0 + v3, v12);
    type metadata accessor for CRLFolderIdentifierStorage(0);

    v13 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
    v14 = v9 + v13[5];
    if (!(*(v6 + 48))(v14, 1, v5))
    {
      v36(v14, v12);
    }

    v15 = v13[8];
    v16 = type metadata accessor for Date();
    v17 = *(*(v16 - 8) + 8);
    v17(v9 + v15, v16);
    v17(v9 + v13[9], v16);
    v18 = v9 + v13[14];
    v19 = _s5BoardV13ShareMetadataVMa(0);
    v20 = (*(*(v19 - 8) + 48))(v18, 1, v19);
  }

  v3 = v37;
  v8 = v38;
  v4 = v39;
  if (!v20)
  {
    v28 = *(v19 + 20);
    v29 = type metadata accessor for URL();
    v30 = *(v29 - 8);
    if (!(*(v30 + 48))(v18 + v28, 1, v29))
    {
      (*(v30 + 8))(v18 + v28, v29);
    }

    v8 = v38;
    v4 = v39;
  }

LABEL_14:
  v31 = (v3 + v4 + v7) & ~v7;
  v32 = (((v8 + v31 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v33 = v0 + v31;
  v34 = type metadata accessor for UUID();
  (*(*(v34 - 8) + 8))(v33, v34);
  type metadata accessor for CRLFolderIdentifierStorage(0);

  return _swift_deallocObject(v0, v32 + 8, v2 | v7 | 7);
}

uint64_t sub_10008A784()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008A7BC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008A7F4()
{
  v1 = *(sub_1005B981C(&qword_1019F33E0, &unk_101468A80) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 64) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = type metadata accessor for CRLFolderIdentifier(0);
  if (!(*(*(v5 - 8) + 48))(v0 + v3, 1, v5))
  {
    v6 = type metadata accessor for UUID();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
    type metadata accessor for CRLFolderIdentifierStorage(0);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10008A950()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10008A9A0()
{
  v1 = *(type metadata accessor for CRLBoardLibraryViewModel.Item(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = v3 + *(v1 + 64);
  v5 = *(sub_1005B981C(&qword_1019F33E0, &unk_101468A80) - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + v6) & ~v6;
  v8 = (*(v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = v8 + 15;

  v10 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v40 = v8 + 15;
    v22 = type metadata accessor for UUID();
    v23 = *(*(v22 - 8) + 8);
    v23(v10, v22);
    type metadata accessor for CRLBoardIdentifierStorage(0);

    v24 = _s5BoardVMa(0);
    v25 = v10 + v24[5];
    v26 = type metadata accessor for CRLFolderIdentifier(0);
    if (!(*(*(v26 - 8) + 48))(v25, 1, v26))
    {
      v23(v25, v22);
      type metadata accessor for CRLFolderIdentifierStorage(0);
    }

    v27 = v24[7];
    v28 = type metadata accessor for Date();
    v29 = *(*(v28 - 8) + 8);
    v29(v10 + v27, v28);
    v29(v10 + v24[8], v28);
    v21 = v24[20];
  }

  else
  {
    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_14;
    }

    v12 = sub_1005B981C(&qword_1019F3480, &unk_10146F1F0);
    if ((*(*(v12 - 8) + 48))(v10, 5, v12))
    {
      goto LABEL_14;
    }

    v40 = v8 + 15;
    v13 = type metadata accessor for UUID();
    v14 = *(*(v13 - 8) + 8);
    v14(v10, v13);
    type metadata accessor for CRLFolderIdentifierStorage(0);

    v15 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
    v16 = v10 + v15[5];
    v17 = type metadata accessor for CRLFolderIdentifier(0);
    if (!(*(*(v17 - 8) + 48))(v16, 1, v17))
    {
      v14(v16, v13);
    }

    v18 = v15[8];
    v19 = type metadata accessor for Date();
    v20 = *(*(v19 - 8) + 8);
    v20(v10 + v18, v19);
    v20(v10 + v15[9], v19);
    v21 = v15[14];
  }

  v30 = v10 + v21;
  v31 = _s5BoardV13ShareMetadataVMa(0);
  v9 = v40;
  if (!(*(*(v31 - 8) + 48))(v30, 1, v31))
  {
    v32 = *(v31 + 20);
    v33 = type metadata accessor for URL();
    v34 = *(v33 - 8);
    if (!(*(v34 + 48))(v30 + v32, 1, v33))
    {
      (*(v34 + 8))(v30 + v32, v33);
    }

    v9 = v40;
  }

LABEL_14:
  v35 = v9 & 0xFFFFFFFFFFFFFFF8;
  v36 = type metadata accessor for CRLFolderIdentifier(0);
  if (!(*(*(v36 - 8) + 48))(v0 + v7, 1, v36))
  {
    v37 = type metadata accessor for UUID();
    (*(*(v37 - 8) + 8))(v0 + v7, v37);
    type metadata accessor for CRLFolderIdentifierStorage(0);
  }

  if (*(v0 + v35))
  {
  }

  v38 = (v35 + 23) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v38 + 8, v2 | v6 | 7);
}

uint64_t sub_10008AFB4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008AFF8()
{
  v1 = sub_1005B981C(&qword_1019F66D0, &qword_10146F2C8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10008B090()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10008B1F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CRLProto_ObjectMetadata(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10008B2B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CRLProto_ObjectMetadata(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10008B388()
{
  v1 = *(sub_1005B981C(&unk_1019F33C0, &unk_101468A60) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v4 + v3 + 1, v2 | 7);
}

uint64_t sub_10008B4B4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10008B4FC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008B534()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10008B57C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10008B5D4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008B60C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10008B674()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10008B6E0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008B718()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008B750()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008B788()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008B7C8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008B800()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008B854()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10008B88C()
{
  v1 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (v3 + *(v1 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v5, v6);
  type metadata accessor for CRLBoardIdentifierStorage(0);

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

uint64_t sub_10008B988()
{
  v1 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (v3 + *(v1 + 64)) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  type metadata accessor for CRLBoardIdentifierStorage(0);

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

uint64_t sub_10008BABC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008BAF4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10008BB3C()
{
  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10008BB8C()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10008BBD8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10008BCDC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008BD14()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10008BD64()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008BD9C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008BDD8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008BE18(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UUID();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 40);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1005B981C(&qword_1019F57A8, &unk_101470220);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 52);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_10008BF48(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 40);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1005B981C(&qword_1019F57A8, &unk_101470220);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 52);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_10008C078()
{
  if (*(v0 + 72))
  {
    sub_100005070((v0 + 48));
  }

  return _swift_deallocObject(v0, 144, 7);
}

uint64_t sub_10008C0E0()
{

  sub_100005070((v0 + 32));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10008C128()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008C160()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10008C1A8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10008C1E8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008C240()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10008C298(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1005B981C(&unk_101A0D9C0, "@0$");
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_1005B981C(&unk_101A0F370, &unk_1014708C0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_1005B981C(&qword_101A2C810, &unk_101480B50);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_10008C410(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1005B981C(&unk_101A0D9C0, "@0$");
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_1005B981C(&unk_101A0F370, &unk_1014708C0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = sub_1005B981C(&qword_101A2C810, &unk_101480B50);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7]) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_10008C584(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for CRLShapeItemCRDTData(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for CRLWPStorageCRDTData(0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData(0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = sub_1005B981C(&unk_101A095A0, "d#'");
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[8]);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

uint64_t sub_10008C72C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for CRLShapeItemCRDTData(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for CRLWPStorageCRDTData(0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = type metadata accessor for CRLWPShapeItemCRDTData.WPShapeStyleData(0);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        result = sub_1005B981C(&unk_101A095A0, "d#'");
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[8]) = (a2 - 1);
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[7];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_10008C918(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for CRLFolderIdentifier(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1005B981C(&qword_1019F33E0, &unk_101468A80);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 2147483646)
  {
    v14 = *(a1 + a3[6]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    v15 = v14 - 1;
    if (v15 < 0)
    {
      v15 = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = type metadata accessor for CRLFolderCRDTData(0);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[7];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_10008CAA4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for CRLFolderIdentifier(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_1005B981C(&qword_1019F33E0, &unk_101468A80);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[6]) = a2;
  }

  else
  {
    v15 = type metadata accessor for CRLFolderCRDTData(0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_10008CC38()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008CC78()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008CCB0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008CD54()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008CD8C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10008CE68()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = v3 | v7;
  v10 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;

  v11 = *(v2 + 8);
  v11(v0 + v4, v1);
  v11(v0 + v8, v1);
  type metadata accessor for CRLBoardIdentifierStorage(0);

  return _swift_deallocObject(v0, v10 + 8, v9 | 7);
}

uint64_t sub_10008CFE4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8Freeform21CRLAnalyticsDataStore_supportsEndToEndEncryption;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_10008D03C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC8Freeform21CRLAnalyticsDataStore_supportsEndToEndEncryption;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_10008D090()
{
  v1 = *(type metadata accessor for CRLBoardLibraryViewModel.Item(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for CRLFolderIdentifier(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);

  v9 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v38 = v8;
    v39 = v4;
    v37 = (v2 + 24) & ~v2;
    v21 = type metadata accessor for UUID();
    v22 = *(*(v21 - 8) + 8);
    v22(v9, v21);
    type metadata accessor for CRLBoardIdentifierStorage(0);

    v23 = _s5BoardVMa(0);
    v24 = v9 + v23[5];
    if (!(*(v6 + 48))(v24, 1, v5))
    {
      v22(v24, v21);
      type metadata accessor for CRLFolderIdentifierStorage(0);
    }

    v25 = v23[7];
    v26 = type metadata accessor for Date();
    v27 = *(*(v26 - 8) + 8);
    v27(v9 + v25, v26);
    v27(v9 + v23[8], v26);
    v18 = v9 + v23[20];
    v19 = _s5BoardV13ShareMetadataVMa(0);
    v20 = (*(*(v19 - 8) + 48))(v18, 1, v19);
  }

  else
  {
    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_14;
    }

    v11 = sub_1005B981C(&qword_1019F3480, &unk_10146F1F0);
    if ((*(*(v11 - 8) + 48))(v0 + v3, 5, v11))
    {
      goto LABEL_14;
    }

    v38 = v8;
    v39 = v4;
    v37 = (v2 + 24) & ~v2;
    v12 = type metadata accessor for UUID();
    v36 = *(*(v12 - 8) + 8);
    v36(v0 + v3, v12);
    type metadata accessor for CRLFolderIdentifierStorage(0);

    v13 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
    v14 = v9 + v13[5];
    if (!(*(v6 + 48))(v14, 1, v5))
    {
      v36(v14, v12);
    }

    v15 = v13[8];
    v16 = type metadata accessor for Date();
    v17 = *(*(v16 - 8) + 8);
    v17(v9 + v15, v16);
    v17(v9 + v13[9], v16);
    v18 = v9 + v13[14];
    v19 = _s5BoardV13ShareMetadataVMa(0);
    v20 = (*(*(v19 - 8) + 48))(v18, 1, v19);
  }

  v3 = v37;
  v8 = v38;
  v4 = v39;
  if (!v20)
  {
    v28 = *(v19 + 20);
    v29 = type metadata accessor for URL();
    v30 = *(v29 - 8);
    if (!(*(v30 + 48))(v18 + v28, 1, v29))
    {
      (*(v30 + 8))(v18 + v28, v29);
    }

    v8 = v38;
    v4 = v39;
  }

LABEL_14:
  v31 = (v3 + v4 + v7) & ~v7;
  v32 = (((v8 + v31 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v33 = v0 + v31;
  v34 = type metadata accessor for UUID();
  (*(*(v34 - 8) + 8))(v33, v34);
  type metadata accessor for CRLFolderIdentifierStorage(0);

  return _swift_deallocObject(v0, v32 + 8, v2 | v7 | 7);
}

uint64_t sub_10008D660()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008D698()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008D6D0()
{
  v1 = *(type metadata accessor for CRLFolderIdentifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  type metadata accessor for CRLFolderIdentifierStorage(0);

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

uint64_t sub_10008D7E8()
{
  v1 = *(type metadata accessor for CRLBoardLibraryViewModel.Item(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = v3 + *(v1 + 64);
  v5 = *(sub_1005B981C(&qword_1019F33E0, &unk_101468A80) - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + v6) & ~v6;
  v8 = (*(v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = v8 + 15;

  v10 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v40 = v8 + 15;
    v22 = type metadata accessor for UUID();
    v23 = *(*(v22 - 8) + 8);
    v23(v10, v22);
    type metadata accessor for CRLBoardIdentifierStorage(0);

    v24 = _s5BoardVMa(0);
    v25 = v10 + v24[5];
    v26 = type metadata accessor for CRLFolderIdentifier(0);
    if (!(*(*(v26 - 8) + 48))(v25, 1, v26))
    {
      v23(v25, v22);
      type metadata accessor for CRLFolderIdentifierStorage(0);
    }

    v27 = v24[7];
    v28 = type metadata accessor for Date();
    v29 = *(*(v28 - 8) + 8);
    v29(v10 + v27, v28);
    v29(v10 + v24[8], v28);
    v21 = v24[20];
  }

  else
  {
    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_14;
    }

    v12 = sub_1005B981C(&qword_1019F3480, &unk_10146F1F0);
    if ((*(*(v12 - 8) + 48))(v10, 5, v12))
    {
      goto LABEL_14;
    }

    v40 = v8 + 15;
    v13 = type metadata accessor for UUID();
    v14 = *(*(v13 - 8) + 8);
    v14(v10, v13);
    type metadata accessor for CRLFolderIdentifierStorage(0);

    v15 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
    v16 = v10 + v15[5];
    v17 = type metadata accessor for CRLFolderIdentifier(0);
    if (!(*(*(v17 - 8) + 48))(v16, 1, v17))
    {
      v14(v16, v13);
    }

    v18 = v15[8];
    v19 = type metadata accessor for Date();
    v20 = *(*(v19 - 8) + 8);
    v20(v10 + v18, v19);
    v20(v10 + v15[9], v19);
    v21 = v15[14];
  }

  v30 = v10 + v21;
  v31 = _s5BoardV13ShareMetadataVMa(0);
  v9 = v40;
  if (!(*(*(v31 - 8) + 48))(v30, 1, v31))
  {
    v32 = *(v31 + 20);
    v33 = type metadata accessor for URL();
    v34 = *(v33 - 8);
    if (!(*(v34 + 48))(v30 + v32, 1, v33))
    {
      (*(v34 + 8))(v30 + v32, v33);
    }

    v9 = v40;
  }

LABEL_14:
  v35 = v9 & 0xFFFFFFFFFFFFFFF8;
  v36 = type metadata accessor for CRLFolderIdentifier(0);
  if (!(*(*(v36 - 8) + 48))(v0 + v7, 1, v36))
  {
    v37 = type metadata accessor for UUID();
    (*(*(v37 - 8) + 8))(v0 + v7, v37);
    type metadata accessor for CRLFolderIdentifierStorage(0);
  }

  if (*(v0 + v35))
  {
  }

  v38 = (v35 + 23) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v38 + 8, v2 | v6 | 7);
}

uint64_t sub_10008DDFC()
{
  v1 = *(sub_1005B981C(&qword_1019F33E0, &unk_101468A80) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();
  if (*(v0 + 32))
  {
  }

  v5 = type metadata accessor for CRLFolderIdentifier(0);
  if (!(*(*(v5 - 8) + 48))(v0 + v3, 1, v5))
  {
    v6 = type metadata accessor for UUID();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
    type metadata accessor for CRLFolderIdentifierStorage(0);
  }

  return _swift_deallocObject(v0, ((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_10008DFA4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008DFDC()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10008E014()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008E050()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008E08C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CRLBoardIdentifier(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for UUID();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10008E17C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for CRLBoardIdentifier(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for UUID();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_10008E278()
{
  v1 = (type metadata accessor for CRLBoardPreviewImageCacheAssetDownloadHelper.AssetDownloadRequest(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);

  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v3, v5);
  type metadata accessor for CRLBoardIdentifierStorage(0);

  v6(v0 + v3 + v1[7], v5);
  v6(v0 + v3 + v1[8], v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10008E3C8(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1005B981C(qword_1019F8700, &qword_101474870);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_10008E484(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1005B981C(qword_1019F8700, &qword_101474870);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10008E570(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10008E5DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10008E75C()
{
  sub_100005070((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10008E794@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10008E7C0@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10008E7F4()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

uint64_t sub_10008E900()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008E938()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008E970()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10008E9F0()
{
  v0 = sub_1006BD104();

  return v0;
}

uint64_t sub_10008EA50(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UUID();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1005B981C(&qword_1019F57A8, &unk_101470220);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_10008EB80(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1005B981C(&qword_1019F57A8, &unk_101470220);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_10008ECB0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10008ECC8()
{
  switch(*(v0 + 296))
  {
    case 0:
    case 0x22:
      if (*(v0 + 64))
      {
        sub_100005070((v0 + 40));
      }

      if (*(v0 + 96))
      {
        sub_100005070((v0 + 72));
      }

      break;
    case 1:
    case 0x23:
      if (*(v0 + 64))
      {
        sub_100005070((v0 + 40));
      }

      break;
    case 0x12:
    case 0x14:
    case 0x1C:
    case 0x1E:
    case 0x3A:
    case 0x3C:
    case 0x3E:

      break;
    case 0x13:
    case 0x15:
    case 0x1D:
    case 0x1F:
    case 0x3B:
    case 0x3D:
    case 0x3F:

      break;
    case 0x20:
    case 0x24:

      goto LABEL_17;
    case 0x21:
    case 0x25:
      goto LABEL_17;
    case 0x4A:

      break;
    case 0x4F:

      if (*(v0 + 160))
      {
        sub_100005070((v0 + 136));
      }

      goto LABEL_17;
    case 0x50:

      if (*(v0 + 128))
      {
        sub_100005070((v0 + 104));
      }

LABEL_17:

      break;
    default:
      break;
  }

  return _swift_deallocObject(v0, 316, 7);
}

uint64_t sub_10008EF70@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_10008EFC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CRLShapeItemCRDTData(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10008F084(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CRLShapeItemCRDTData(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10008F17C()
{
  v1 = *(type metadata accessor for CRLPreviewImages.Item(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  swift_unknownObjectRelease();

  v8 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v23 = type metadata accessor for UUID();
      v24 = *(*(v23 - 8) + 8);
      v24(v0 + v3, v23);
      type metadata accessor for CRLBoardIdentifierStorage(0);

      v25 = sub_1005B981C(&unk_1019FB780, &unk_101468AB0);
      v24(v8 + *(v25 + 48), v23);
      break;
    case 1:
      v22 = type metadata accessor for UUID();
      (*(*(v22 - 8) + 8))(v0 + v3, v22);
      type metadata accessor for CRLBoardIdentifierStorage(0);

      break;
    case 0:
      v10 = sub_1005B981C(&qword_1019F3480, &unk_10146F1F0);
      if (!(*(*(v10 - 8) + 48))(v0 + v3, 5, v10))
      {
        v31 = v7;
        v11 = type metadata accessor for UUID();
        v12 = *(*(v11 - 8) + 8);
        v12(v0 + v3, v11);
        type metadata accessor for CRLFolderIdentifierStorage(0);

        v13 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
        v14 = v8 + v13[5];
        v15 = type metadata accessor for CRLFolderIdentifier(0);
        if (!(*(*(v15 - 8) + 48))(v14, 1, v15))
        {
          v12(v14, v11);
        }

        v30 = v13[8];
        v16 = type metadata accessor for Date();
        v17 = *(*(v16 - 8) + 8);
        v17(v8 + v30, v16);
        v17(v8 + v13[9], v16);
        v18 = v8 + v13[14];
        v19 = _s5BoardV13ShareMetadataVMa(0);
        v7 = v31;
        if (!(*(*(v19 - 8) + 48))(v18, 1, v19))
        {
          v20 = *(v19 + 20);
          v21 = type metadata accessor for URL();
          v29 = *(v21 - 8);
          if (!(*(v29 + 48))(v18 + v20, 1, v21))
          {
            (*(v29 + 8))(v18 + v20, v21);
          }
        }
      }

      break;
  }

  v26 = (v3 + v4 + v6) & ~v6;
  v27 = type metadata accessor for UUID();
  (*(*(v27 - 8) + 8))(v0 + v26, v27);
  type metadata accessor for CRLBoardIdentifierStorage(0);

  return _swift_deallocObject(v0, v26 + v7, v2 | v6 | 7);
}

uint64_t sub_10008F6AC()
{
  v1 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  type metadata accessor for CRLBoardIdentifierStorage(0);

  return _swift_deallocObject(v0, ((((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 33, v2 | 7);
}

uint64_t sub_10008F7D0()
{
  v1 = sub_1005B981C(&qword_1019F64C8, &qword_101474E30);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10008F8D0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10008F910()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10008F968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1005B981C(&qword_1019F2D40, &unk_1014669C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1005B981C(&qword_1019F2D48, &unk_101475240);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_1005B981C(&qword_1019F2D50, &unk_1014669D0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_10008FACC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1005B981C(&qword_1019F2D40, &unk_1014669C0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1005B981C(&qword_1019F2D48, &unk_101475240);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_1005B981C(&qword_1019F2D50, &unk_1014669D0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_10008FC3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for EventData();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 248)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 8)
    {
      return v10 - 7;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = type metadata accessor for TimedData();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_10008FD58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for EventData();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 248)
  {
    *(a1 + *(a4 + 20)) = a2 + 7;
  }

  else
  {
    v11 = type metadata accessor for TimedData();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_10008FE78(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_1019F2D40, &unk_1014669C0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10008FEF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_1019F2D40, &unk_1014669C0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10008FF6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventData();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10008FFD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventData();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100090048()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100090080()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000900B8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000900F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CRLContainerItemCRDTData(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000901B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CRLContainerItemCRDTData(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

id sub_100090268@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isCancelled];
  *a2 = result;
  return result;
}

uint64_t sub_10009029C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000902D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CRLGloballyScopedBoardIdentifier(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8) >> 60;
    if (((4 * v10) & 0xC) != 0)
    {
      return 16 - ((4 * v10) & 0xC | (v10 >> 2));
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1000903A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CRLGloballyScopedBoardIdentifier(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 24));
    *v11 = 0;
    v11[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t sub_10009046C()
{
  v1 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 8))(v5, v6);
  type metadata accessor for CRLBoardIdentifierStorage(0);

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, ((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_100090580()
{
  v1 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  type metadata accessor for CRLBoardIdentifierStorage(0);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100090678()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000906B0()
{

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_100090708()
{
  v1 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  type metadata accessor for CRLBoardIdentifierStorage(0);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100090808()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000908A8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000908E8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100090920()
{
  swift_unknownObjectRelease();

  if (*(v0 + 88))
  {
  }

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_100090988()
{

  if (*(v0 + 72))
  {
  }

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_1000909E8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100090A20()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100090A58()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100090A98()
{
  swift_unknownObjectRelease();

  if (*(v0 + 64))
  {
  }

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100090B14(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for UUID();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

void *sub_100090BC0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100090C74()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100090CC4()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100090D1C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100090D5C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100090DE4@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100090E10@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100090E3C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100090E74()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100090EBC()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_100090F00(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1005B981C(&unk_101A28650, &unk_101477C40);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_1005B981C(&qword_1019FCC98, &unk_1014AD3F0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_1005B981C(&unk_101A22730, &unk_101477C50);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[7]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_100091078(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1005B981C(&unk_101A28650, &unk_101477C40);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_1005B981C(&qword_1019FCC98, &unk_1014AD3F0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = sub_1005B981C(&unk_101A22730, &unk_101477C50);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7]) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[6];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1000911EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000912AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10009138C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000913D4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100091410()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100091448()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100091480()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000914D8()
{

  sub_100005070((v0 + 32));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100091520()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100091558()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000915B0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000915E8()
{
  v1 = (type metadata accessor for CRLCloudAssetDownloader.DownloadRequest(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = v3 + *(*v1 + 64);
  v5 = sub_1005B981C(&qword_1019FD8A8, &qword_101478A28);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;

  v11 = type metadata accessor for UUID();
  (*(*(v11 - 8) + 8))(v0 + v3, v11);

  (*(v6 + 8))(v0 + v8, v5);

  return _swift_deallocObject(v0, v8 + v9, v10 | 7);
}

uint64_t sub_100091798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100091854(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100091954()
{
  v1 = type metadata accessor for Notification();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100091A18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_1005B981C(&unk_101A09DD0, &unk_101478C10);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_100091B58(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  else
  {
    v11 = sub_1005B981C(&unk_101A09DD0, &unk_101478C10);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_100091C98(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for CRRegister();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[9];
LABEL_11:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_12;
  }

  v14 = sub_1005B981C(&qword_101A2C810, &unk_101480B50);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[10];
    goto LABEL_11;
  }

  v15 = sub_1005B981C(&qword_101A1A020, &unk_10146C6C0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[12];
    goto LABEL_11;
  }

  v16 = sub_1005B981C(&unk_101A09DC0, &unk_101489790);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[13];
    goto LABEL_11;
  }

  v18 = *(a1 + a3[14]);
  if (v18 >= 0xFFFFFFFF)
  {
    LODWORD(v18) = -1;
  }

  return (v18 + 1);
}

uint64_t sub_100091EBC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for CRRegister();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[9];
    }

    else
    {
      v16 = sub_1005B981C(&qword_101A2C810, &unk_101480B50);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[10];
      }

      else
      {
        v17 = sub_1005B981C(&qword_101A1A020, &unk_10146C6C0);
        if (*(*(v17 - 8) + 84) == a3)
        {
          v10 = v17;
          v14 = *(v17 - 8);
          v15 = a4[12];
        }

        else
        {
          result = sub_1005B981C(&unk_101A09DC0, &unk_101489790);
          if (*(*(result - 8) + 84) != a3)
          {
            *(a1 + a4[14]) = (a2 - 1);
            return result;
          }

          v10 = result;
          v14 = *(result - 8);
          v15 = a4[13];
        }
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1000920DC(uint64_t a1)
{
  if ((a1 + 1) >= 5)
  {
    return 5;
  }

  else
  {
    return (0x302010004uLL >> (8 * (a1 + 1)));
  }
}

uint64_t sub_100092114()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009214C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100092184()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_1000921BC()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100092208()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000922BC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 184, 7);
}

uint64_t sub_10009235C()
{
  sub_1005C4E5C(&qword_1019FEA00, &qword_10147A630);
  sub_10001A2F8(&qword_1019FEA50, &qword_1019FEA00, &qword_10147A630, &protocol conformance descriptor for NavigationStack<A, B>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100092408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000924C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10009257C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for CRLBoardIdentifier(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = type metadata accessor for UUID();
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[6];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[8]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_100092684(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for CRLBoardIdentifier(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = type metadata accessor for UUID();
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[8]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[6];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_1000927D0@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000927FC@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100092828()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100092860()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000928B0()
{
  if (*(v0 + 48))
  {
  }

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000928F0()
{
  sub_100005070((v0 + 16));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100092A7C@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100092AB0@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100092ADC@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100092B0C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100092B7C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100092BE0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100092C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for TSContentLanguage.Models.Text(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 44);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_100092D08(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = type metadata accessor for TSContentLanguage.Models.Text(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100092DAC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100092EA0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100092F00()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100092F38()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100092FA8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100092FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CRLSEBoardIdentifier(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_1005B981C(&qword_101A0A320, &qword_10146D650);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_100093118(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CRLSEBoardIdentifier(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_1005B981C(&qword_101A0A320, &qword_10146D650);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_10009324C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLSEBoardIdentifierStorage(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000932B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLSEBoardIdentifierStorage(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100093358(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&unk_101A14B10, &qword_10147D2D0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 6)
  {
    return v5 - 5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000933D0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 5);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1005B981C(&unk_101A14B10, &qword_10147D2D0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_100093470()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000934A8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000934E0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000935DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CRLBoardIdentifier(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_1005B981C(&qword_1019F8B00, "Ι%");
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_100093710(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CRLBoardIdentifier(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_1005B981C(&qword_1019F8B00, "Ι%");
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_100093864()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009389C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000938D4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009397C()
{

  sub_10067F154();
  if (*(v0 + 192) != 1)
  {
  }

  return _swift_deallocObject(v0, 416, 7);
}

uint64_t sub_1000939E4()
{

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_100093A2C()
{

  return _swift_deallocObject(v0, 400, 7);
}

uint64_t sub_100093A7C()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100093B08()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100093BCC(uint64_t *a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 1);
}

__n128 sub_100093BEC(__n128 *a1, uint64_t a2)
{
  *a2 = a1[1].n128_u64[0];
  result = *a1;
  *(a2 + 8) = *a1;
  return result;
}

double sub_100093C08(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;

  sub_100A46EFC(a1, v4);

  return result;
}

uint64_t sub_100093CD8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100093D10()
{
  v1 = sub_1005B981C(&qword_101A04068, &qword_101480BF0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100093DC8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100093E08()
{
  v1 = sub_1005B981C(&qword_101A04080, &qword_101480C20);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100093EE0()
{

  v1 = *(v0 + 40);
  if (v1 >> 60 != 15)
  {
    sub_10002640C(*(v0 + 32), v1);
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100093F38()
{
  v1 = sub_1005B981C(&qword_101A04088, &qword_101480C30);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100093FCC()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100094020()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100094058()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100094090()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000940C8()
{
  swift_unknownObjectRelease();

  if (*(v0 + 40))
  {
  }

  return _swift_deallocObject(v0, 128, 7);
}

uint64_t sub_100094170()
{
  if (*(v0 + 208))
  {
  }

  return _swift_deallocObject(v0, 232, 7);
}

uint64_t sub_1000941E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CRLBoardIdentifier(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1000942B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CRLBoardIdentifier(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_10009436C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100094474()
{
  sub_100005070((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000944AC@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000944D8@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10009450C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v5 + 32, v3 | 7);
}

uint64_t sub_100094620()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100094658()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100094690()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000946D0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100094718()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000947DC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000948F8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100094938()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000949B4()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100094A14()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100094A54()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100094AAC()
{
  v1 = sub_1005B981C(&qword_101A050E8, &qword_101482758);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100094B90()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100094BC8()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100094C18()
{
  v1 = sub_1005B981C(&unk_101A050F0, &unk_10146CFE0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100094CE8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100094D30()
{
  v1 = sub_1005B981C(&qword_101A003B8, &unk_101482770);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (v4 + *(v2 + 64) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100094E24()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100094E60@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100094E8C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100094EC4()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100094F5C(unint64_t a1)
{
  if (a1 >= 8)
  {
    return 7;
  }

  else
  {
    return (0x605040302010007uLL >> (8 * a1));
  }
}

uint64_t sub_100094F90()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_100094FF0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100095038()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100095070()
{
  v1 = *(type metadata accessor for CRLBoardIdentifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  type metadata accessor for CRLBoardIdentifierStorage(0);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000951C0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100095208()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100095240()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000952A4()
{
  v1 = *(type metadata accessor for CRLBoardLibraryViewModel.Item(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v17 = type metadata accessor for UUID();
    v18 = *(*(v17 - 8) + 8);
    v18(v0 + v3, v17);
    type metadata accessor for CRLBoardIdentifierStorage(0);

    v19 = _s5BoardVMa(0);
    v20 = v5 + v19[5];
    v21 = type metadata accessor for CRLFolderIdentifier(0);
    if (!(*(*(v21 - 8) + 48))(v20, 1, v21))
    {
      v18(v20, v17);
      type metadata accessor for CRLFolderIdentifierStorage(0);
    }

    v22 = v19[7];
    v23 = type metadata accessor for Date();
    v24 = *(*(v23 - 8) + 8);
    v24(v5 + v22, v23);
    v24(v5 + v19[8], v23);
    v16 = v19[20];
  }

  else
  {
    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_14;
    }

    v7 = sub_1005B981C(&qword_1019F3480, &unk_10146F1F0);
    if ((*(*(v7 - 8) + 48))(v0 + v3, 5, v7))
    {
      goto LABEL_14;
    }

    v8 = type metadata accessor for UUID();
    v9 = (*(v8 - 8) + 8);
    v31 = *v9;
    (*v9)(v0 + v3, v8);
    type metadata accessor for CRLFolderIdentifierStorage(0);

    v10 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
    v11 = v5 + v10[5];
    v12 = type metadata accessor for CRLFolderIdentifier(0);
    if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
    {
      v31(v11, v8);
    }

    v13 = v10[8];
    v14 = type metadata accessor for Date();
    v15 = *(*(v14 - 8) + 8);
    v15(v5 + v13, v14);
    v15(v5 + v10[9], v14);
    v16 = v10[14];
  }

  v25 = v5 + v16;
  v26 = _s5BoardV13ShareMetadataVMa(0);
  if (!(*(*(v26 - 8) + 48))(v25, 1, v26))
  {
    v27 = *(v26 + 20);
    v28 = type metadata accessor for URL();
    v29 = *(v28 - 8);
    if (!(*(v29 + 48))(v25 + v27, 1, v28))
    {
      (*(v29 + 8))(v25 + v27, v28);
    }
  }

LABEL_14:

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_10009578C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000957D8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100095828()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_1000958B0(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1005B981C(&qword_101A06190, &qword_101483A08);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1005B981C(&unk_101A0DAE0, &qword_101483A10);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1000959EC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1005B981C(&qword_101A06190, &qword_101483A08);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1005B981C(&unk_101A0DAE0, &qword_101483A10);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

Swift::Int sub_100095B6C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_101484E58[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_100095BF4(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_101484E58[v2]);
  return Hasher._finalize()();
}

uint64_t sub_100095C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 16);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100095D34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 16) = -a2;
  }

  return result;
}

double sub_100095DF4(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_1008B59E8(result, a2 & 1);
  }

  return v2;
}

double sub_100095E0C(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_1008B7608(result, a2 & 1);
  }

  return v2;
}

uint64_t sub_100095E24()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100095E5C()
{
  v1 = sub_1005B981C(&qword_101A1B3C0, &qword_1014859E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100095F18()
{
  swift_unknownObjectRelease();
  sub_100863EEC(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_100095F5C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100095FBC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  sub_100863E8C(*(v0 + v5), *(v0 + v5 + 8), *(v0 + v5 + 16), *(v0 + v5 + 24), *(v0 + v5 + 32), *(v0 + v5 + 40));

  return _swift_deallocObject(v0, v5 + 56, v3 | 0xF);
}

uint64_t sub_1000960B0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000960E8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_1000961E4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  sub_10002640C(*(v0 + v6), *(v0 + v6 + 8));

  return _swift_deallocObject(v0, ((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_1000962F4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  sub_10002640C(*(v0 + v6), *(v0 + v6 + 8));

  return _swift_deallocObject(v0, v6 + 16, v3 | 7);
}

uint64_t sub_1000963F4()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100096444()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000964F8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100096530()
{

  if (*(v0 + 56))
  {
  }

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100096578()
{
  switch(*(v0 + 312))
  {
    case 0:
    case 0x22:
      if (*(v0 + 80))
      {
        sub_100005070((v0 + 56));
      }

      if (*(v0 + 112))
      {
        sub_100005070((v0 + 88));
      }

      break;
    case 1:
    case 0x23:
      if (*(v0 + 80))
      {
        sub_100005070((v0 + 56));
      }

      break;
    case 0x12:
    case 0x14:
    case 0x1C:
    case 0x1E:
    case 0x3A:
    case 0x3C:
    case 0x3E:

      break;
    case 0x13:
    case 0x15:
    case 0x1D:
    case 0x1F:
    case 0x3B:
    case 0x3D:
    case 0x3F:

      break;
    case 0x20:
    case 0x24:

      goto LABEL_17;
    case 0x21:
    case 0x25:
      goto LABEL_17;
    case 0x4A:

      break;
    case 0x4F:

      if (*(v0 + 176))
      {
        sub_100005070((v0 + 152));
      }

      goto LABEL_17;
    case 0x50:

      if (*(v0 + 144))
      {
        sub_100005070((v0 + 120));
      }

LABEL_17:

      break;
    default:
      break;
  }

  return _swift_deallocObject(v0, 332, 7);
}

uint64_t sub_10009680C()
{
  switch(*(v0 + 296))
  {
    case 0:
    case 0x22:
      if (*(v0 + 64))
      {
        sub_100005070((v0 + 40));
      }

      if (*(v0 + 96))
      {
        sub_100005070((v0 + 72));
      }

      break;
    case 1:
    case 0x23:
      if (*(v0 + 64))
      {
        sub_100005070((v0 + 40));
      }

      break;
    case 0x12:
    case 0x14:
    case 0x1C:
    case 0x1E:
    case 0x3A:
    case 0x3C:
    case 0x3E:

      break;
    case 0x13:
    case 0x15:
    case 0x1D:
    case 0x1F:
    case 0x3B:
    case 0x3D:
    case 0x3F:

      break;
    case 0x20:
    case 0x24:

      goto LABEL_17;
    case 0x21:
    case 0x25:
      goto LABEL_17;
    case 0x4A:

      break;
    case 0x4F:

      if (*(v0 + 160))
      {
        sub_100005070((v0 + 136));
      }

      goto LABEL_17;
    case 0x50:

      if (*(v0 + 128))
      {
        sub_100005070((v0 + 104));
      }

LABEL_17:

      break;
    default:
      break;
  }

  return _swift_deallocObject(v0, 316, 7);
}