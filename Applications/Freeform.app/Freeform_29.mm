void sub_10061D3C4()
{
  v18.receiver = v0;
  v18.super_class = type metadata accessor for CRLiOSSidebarViewController(0);
  objc_msgSendSuper2(&v18, "viewWillLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_pinnedBottomView];
  if (v1)
  {
    v2 = v1;
    [v2 frame];
    Height = CGRectGetHeight(v19);
    v4 = [v0 collectionView];
    if (v4)
    {
      v5 = v4;
      [v4 setContentInset:{0.0, 0.0, Height, 0.0}];

      v6 = [v0 collectionView];
      if (v6)
      {
        v7 = v6;
        v8 = [v0 collectionView];
        if (v8)
        {
          v9 = v8;
          [v8 contentInset];
          v11 = v10;
          v13 = v12;
          v15 = v14;
          v17 = v16;

          [v7 setScrollIndicatorInsets:{v11, v13, v15, v17}];
          return;
        }

LABEL_9:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t sub_10061D55C(char *a1, int a2)
{
  v101 = a2;
  v4 = sub_1005B981C(&unk_101A15B20, &qword_10146F1E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v93 - v5;
  v7 = type metadata accessor for UUID();
  v102 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1005B981C(&unk_101A23C40, &unk_10146F200);
  __chkstk_darwin(v10 - 8);
  v12 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = (&v93 - v14);
  v16 = type metadata accessor for IndexPath();
  v17 = *(v16 - 8);
  v103 = v16;
  v104 = v17;
  __chkstk_darwin(v16);
  v100 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v98 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000650D4(a1, v21, type metadata accessor for CRLBoardLibraryViewModel.Item);
  v99 = v19;
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_10000B864(v21, _s5BoardVMa);
    if (qword_1019F2198 != -1)
    {
LABEL_48:
      swift_once();
    }

    v22 = static OS_os_log.crlSidebar;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v24 = sub_100F8903C();
    v26 = v25;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v24;
    *(inited + 40) = v26;
    v27 = static os_log_type_t.default.getter();
    sub_100005404(v22, &_mh_execute_header, v27, "Ignoring board selection: %@", 28, 2, inited);
    swift_setDeallocating();
    sub_100005070((inited + 32));
    return 0;
  }

  sub_10000B864(v21, type metadata accessor for CRLBoardLibraryViewModel.Item);
  result = [v2 isViewLoaded];
  if (!result)
  {
    return 1;
  }

  v94 = v6;
  v96 = v2;
  v29 = *&v2[OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_viewModelController];
  if (!v29)
  {
    __break(1u);
    goto LABEL_53;
  }

  sub_100F87E04(v9);
  dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();
  v97 = a1;
  v95 = *(v102 + 1);
  v95(v9, v7);
  v31 = v103;
  v30 = v104;
  v102 = *(v104 + 48);
  if (v102(v12, 1, v103) != 1)
  {
LABEL_36:
    v71 = v97;

    v72 = *(v30 + 32);
    v72(v15, v12, v31);
    (*(v30 + 56))(v15, 0, 1, v31);
    v73 = v31;
    v31 = v30;
    goto LABEL_38;
  }

  sub_10000CAAC(v12, &unk_101A23C40, &unk_10146F200);
  sub_1008708B0(v97, v101 & 1);
  v93 = *(v29 + 48);
  sub_100F87E04(v9);
  dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();
  v95(v9, v7);

  if (v102(v15, 1, v31) != 1)
  {
    v73 = v31;
    v71 = v97;
    v31 = v104;
    v72 = *(v104 + 32);
LABEL_38:
    v55 = v100;
    v74 = v15;
    v15 = v73;
    v72(v100, v74, v73);
    v75 = v96;
    result = [v96 collectionView];
    if (result)
    {
      v76 = result;
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v78 = [v75 collectionView:v76 shouldSelectItemAtIndexPath:isa];

      if (!v78)
      {
        if (qword_1019F2198 != -1)
        {
          goto LABEL_51;
        }

        goto LABEL_44;
      }

      result = [v75 collectionView];
      if (result)
      {
        v79 = result;
        v80 = IndexPath._bridgeToObjectiveC()().super.isa;
        [v79 selectItemAtIndexPath:v80 animated:v101 & 1 scrollPosition:2];

        (*(v31 + 8))(v55, v15);
        v81 = v94;
        sub_1000650D4(v71, v94, type metadata accessor for CRLBoardLibraryViewModel.Item);
        (*(v98 + 56))(v81, 0, 1, v99);
        v82 = OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_selectedItem;
        swift_beginAccess();
        sub_100631204(v81, v75 + v82);
        swift_endAccess();
        return 1;
      }

LABEL_54:
      __break(1u);
      return result;
    }

LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  sub_10000CAAC(v15, &unk_101A23C40, &unk_10146F200);
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v32 = swift_initStackObject();
  *(v32 + 16) = xmmword_10146C6B0;
  v33 = sub_100F8903C();
  v35 = v34;
  *(v32 + 56) = &type metadata for String;
  v36 = sub_1000053B0();
  *(v32 + 32) = v33;
  v103 = v36;
  v104 = v32 + 32;
  *(v32 + 64) = v36;
  *(v32 + 40) = v35;
  v102 = objc_opt_self();
  v37 = [v102 _atomicIncrementAssertCount];
  v105 = [objc_allocWithZone(NSString) init];
  sub_100604538(v32, &v105, "Unknown item: %@", 16, 2u);
  StaticString.description.getter("select(_:animated:)", 19, 2);
  v38 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSSidebarViewController.swift", 97, 2);
  v39 = String._bridgeToObjectiveC()();

  v40 = [v39 lastPathComponent];

  v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v43 = v42;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v44 = static OS_os_log.crlAssert;
  v45 = swift_initStackObject();
  *(v45 + 16) = xmmword_10146CA70;
  *(v45 + 56) = &type metadata for Int32;
  *(v45 + 64) = &protocol witness table for Int32;
  *(v45 + 32) = v37;
  v46 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(v45 + 96) = v46;
  v47 = sub_1005CF04C();
  *(v45 + 72) = v38;
  v48 = v103;
  *(v45 + 136) = &type metadata for String;
  *(v45 + 144) = v48;
  *(v45 + 104) = v47;
  *(v45 + 112) = v41;
  *(v45 + 120) = v43;
  *(v45 + 176) = &type metadata for UInt;
  *(v45 + 184) = &protocol witness table for UInt;
  *(v45 + 152) = 267;
  v49 = v105;
  *(v45 + 216) = v46;
  *(v45 + 224) = v47;
  *(v45 + 192) = v49;
  v50 = v38;
  v51 = v49;
  v52 = static os_log_type_t.error.getter();
  sub_100005404(v44, &_mh_execute_header, v52, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v45);
  swift_setDeallocating();
  v103 = sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v53 = static os_log_type_t.error.getter();
  sub_100005404(v44, &_mh_execute_header, v53, "Unknown item: %@", 16, 2, v32);

  type metadata accessor for __VaListBuilder();
  v31 = swift_allocObject();
  *(v31 + 16) = 8;
  *(v31 + 24) = 0;
  v15 = (v31 + 24);
  *(v31 + 32) = 0;
  *(v31 + 40) = 0;
  v54 = *(v32 + 16);
  if (!v54)
  {
LABEL_45:
    v89 = __VaListBuilder.va_list()();
    StaticString.description.getter("select(_:animated:)", 19, 2);
    v90 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSSidebarViewController.swift", 97, 2);
    v91 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Unknown item: %@", 16, 2);
    v92 = String._bridgeToObjectiveC()();

    [v102 handleFailureInFunction:v90 file:v91 lineNumber:267 isFatal:0 format:v92 args:v89];

    swift_setDeallocating();
    swift_arrayDestroy();
    return 0;
  }

  v55 = 0;
  v12 = 40;
  while (1)
  {
    sub_100020E58((v104 + 40 * v55), *(v104 + 40 * v55 + 24));
    v56 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v57 = *v15;
    v58 = *(v56 + 16);
    v59 = __OFADD__(*v15, v58);
    v60 = *v15 + v58;
    if (v59)
    {
      goto LABEL_47;
    }

    v30 = *(v31 + 32);
    if (v30 >= v60)
    {
      goto LABEL_28;
    }

    if (v30 + 0x4000000000000000 < 0)
    {
      break;
    }

    v61 = *(v31 + 40);
    if (2 * v30 > v60)
    {
      v60 = 2 * v30;
    }

    *(v31 + 32) = v60;
    if ((v60 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_50;
    }

    v62 = v32;
    v63 = v56;
    v64 = swift_slowAlloc();
    v65 = v64;
    *(v31 + 40) = v64;
    if (v61)
    {
      if (v64 != v61 || v64 >= &v61[8 * v57])
      {
        memmove(v64, v61, 8 * v57);
      }

      v30 = v31;
      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v56 = v63;
      v32 = v62;
      v12 = 40;
LABEL_28:
      v65 = *(v31 + 40);
      if (!v65)
      {
        goto LABEL_35;
      }

      goto LABEL_29;
    }

    v56 = v63;
    v32 = v62;
    v12 = 40;
    if (!v65)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

LABEL_29:
    v67 = *(v56 + 16);
    if (v67)
    {
      v68 = (v56 + 32);
      v69 = *v15;
      while (1)
      {
        v70 = *v68++;
        *&v65[8 * v69] = v70;
        v69 = *v15 + 1;
        if (__OFADD__(*v15, 1))
        {
          break;
        }

        *v15 = v69;
        if (!--v67)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

LABEL_13:

    if (++v55 == v54)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  swift_once();
LABEL_44:
  v83 = static OS_os_log.crlSidebar;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v84 = swift_initStackObject();
  *(v84 + 16) = xmmword_10146C6B0;
  v85 = sub_100F8903C();
  v87 = v86;
  *(v84 + 56) = &type metadata for String;
  *(v84 + 64) = sub_1000053B0();
  *(v84 + 32) = v85;
  *(v84 + 40) = v87;
  v88 = static os_log_type_t.default.getter();
  sub_100005404(v83, &_mh_execute_header, v88, "Ignoring request to select unselectable item: %@", 48, 2, v84);
  swift_setDeallocating();
  sub_100005070((v84 + 32));
  (*(v31 + 8))(v55, v15);
  return 0;
}

double sub_10061E248@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v8 = &v3[OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 1);
    ObjectType = swift_getObjectType();
    (*(v9 + 48))(&v23, v3, ObjectType, v9);
    swift_unknownObjectRelease();
    if (*(&v24 + 1))
    {
      sub_10000BF3C(&v23, a3);
      return result;
    }
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  sub_10000CAAC(&v23, &unk_1019F4D00, &unk_10146E7F0);
  sub_10000BE14(a2, &v23, &unk_1019F4D00, &unk_10146E7F0);
  v12 = *(&v24 + 1);
  if (*(&v24 + 1))
  {
    v13 = sub_100020E58(&v23, *(&v24 + 1));
    v14 = *(v12 - 8);
    v15 = __chkstk_darwin(v13);
    v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v14 + 16))(v17, v15);
    v18 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v14 + 8))(v17, v12);
    sub_100005070(&v23);
  }

  else
  {
    v18 = 0;
  }

  v19 = type metadata accessor for CRLiOSSidebarViewController(0);
  v22.receiver = v4;
  v22.super_class = v19;
  v20 = objc_msgSendSuper2(&v22, "targetForAction:withSender:", a1, v18);
  swift_unknownObjectRelease();
  if (v20)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  result = *&v23;
  v21 = v24;
  *a3 = v23;
  a3[1] = v21;
  return result;
}

id sub_10061E8A8()
{
  result = [v0 view];
  if (result)
  {
    v2 = result;
    v3 = [result window];

    if (v3)
    {
      v4 = [v3 windowScene];

      if (!v4)
      {
        goto LABEL_9;
      }

      v3 = [v4 delegate];

      if (v3)
      {
        type metadata accessor for CRLiOSSceneDelegate(0);
        v5 = swift_dynamicCastClass();
        if (v5)
        {
          v4 = v5;
          v3 = sub_100C0B3C0();

LABEL_10:
          v6 = v3;
          v7 = [v6 undoManager];

          return v7;
        }

        swift_unknownObjectRelease();
        v4 = 0;
LABEL_9:
        v3 = 0;
        goto LABEL_10;
      }
    }

    v4 = 0;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

Class sub_10061E9D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v5 = Strong;
  v6.super.super.isa = sub_10061EA3C(a3).super.super.isa;

  return v6.super.super.isa;
}

UIMenu sub_10061EA3C(uint64_t a1)
{
  v3 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v67 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v62 - v7;
  v66 = v9;
  __chkstk_darwin(v10);
  v12 = &v62 - v11;
  v71 = _swiftEmptyArrayStorage;
  v72 = _swiftEmptyArrayStorage;
  v68 = v1;
  v65 = *(*(*(v1 + OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_actionAlertController) + 16) + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot);
  v69 = a1;
  sub_1000650D4(a1, &v62 - v11, type metadata accessor for CRLBoardLibraryViewModel.Item);
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    goto LABEL_5;
  }

  sub_1000650D4(v12, v8, type metadata accessor for CRLBoardLibraryViewModel.Item);
  v13 = sub_1005B981C(&qword_1019F3480, &unk_10146F1F0);
  v14 = (*(*(v13 - 8) + 48))(v8, 5, v13);

  if (v14)
  {
    sub_10000B864(v8, type metadata accessor for CRLBoardLibraryViewModel.Filter);
LABEL_5:
    v15 = _swiftEmptyArrayStorage;
    goto LABEL_6;
  }

  sub_10000B864(v8, type metadata accessor for CRLBoardLibraryViewModel.Folder);
  v15 = &off_101873F48;
LABEL_6:
  sub_10000B864(v12, type metadata accessor for CRLBoardLibraryViewModel.Item);

  v16 = v15[2];
  if (v16)
  {
    v17 = (v15 + 4);
    v18 = _swiftEmptyArrayStorage;
    do
    {
      v22 = *v17++;
      v21 = v22;
      v23 = v22 >> 5;
      if (v22 >> 5 > 2 && v23 != 3 && v23 != 4 || (v21 & 1) != 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v70 = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100776824(0, v18[2] + 1, 1);
          v18 = v70;
        }

        v20 = v18[2];
        v19 = v18[3];
        if (v20 >= v19 >> 1)
        {
          sub_100776824((v19 > 1), v20 + 1, 1);
          v18 = v70;
        }

        v18[2] = v20 + 1;
        *(v18 + v20 + 32) = v21;
      }

      --v16;
    }

    while (v16);
  }

  else
  {
    v18 = _swiftEmptyArrayStorage;
  }

  v25 = v18[2];
  if (v25)
  {
    v26 = (v18 + 4);
    v63 = "folder.badge.plus";
    v64 = "@UIMenu16@?0@NSArray8";
    v62 = "Duplicate Folder";
    v27 = _swiftEmptyArrayStorage;
    v65 = _swiftEmptyArrayStorage;
    while (1)
    {
      v28 = *v26++;
      v29 = v28 >> 5;
      if (v28 >> 5 <= 2)
      {
        break;
      }

      if (v29 == 3)
      {
        v40 = swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_1000650D4(v69, v5, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v41 = (*(v67 + 80) + 24) & ~*(v67 + 80);
        v42 = swift_allocObject();
        *(v42 + 16) = v40;
        sub_100065AE0(v5, v42 + v41, type metadata accessor for CRLBoardLibraryViewModel.Item);
        sub_100006370(0, &qword_1019F6190, UIAction_ptr);
        v43 = objc_opt_self();

        v44 = String._bridgeToObjectiveC()();
        v45 = [v43 systemImageNamed:{v44, v62, v63, v64}];

        goto LABEL_29;
      }

      if (v29 != 4)
      {
        if (v27 >> 62)
        {
          sub_100006370(0, &unk_1019F61A0, UIMenuElement_ptr);

          v50 = _bridgeCocoaArray<A>(_:)();
        }

        else
        {

          dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
          sub_100006370(0, &unk_1019F61A0, UIMenuElement_ptr);
          v50 = v27;
        }

        sub_100006370(0, &qword_1019F6C00, UIMenu_ptr);
        v51._countAndFlagsBits = 0;
        v51._object = 0xE000000000000000;
        v73.value.super.isa = 0;
        v73.is_nil = 0;
        v47 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v51, 0, v73, 1, 0xFFFFFFFFFFFFFFFFLL, v50, v60).super.super.isa;

        v27 = _swiftEmptyArrayStorage;
        v71 = _swiftEmptyArrayStorage;
        goto LABEL_31;
      }

      sub_100006370(0, &qword_1019F6190, UIAction_ptr);
      v36 = objc_opt_self();
      v37 = String._bridgeToObjectiveC()();
      v38 = [v36 systemImageNamed:v37];

      v39 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
LABEL_30:
      v47 = v39;
LABEL_31:
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v48 = v47;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v27 = v71;
      }

      else
      {

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v49 = v47;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v72 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v65 = v72;
        }

        else
        {
        }
      }

      if (!--v25)
      {
        goto LABEL_44;
      }
    }

    v30 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1000650D4(v69, v5, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v31 = (*(v67 + 80) + 24) & ~*(v67 + 80);
    v32 = swift_allocObject();
    *(v32 + 16) = v30;
    sub_100065AE0(v5, v32 + v31, type metadata accessor for CRLBoardLibraryViewModel.Item);
    sub_100006370(0, &qword_1019F6190, UIAction_ptr);
    v33 = objc_opt_self();

    v34 = String._bridgeToObjectiveC()();
    v35 = [v33 systemImageNamed:v34];

LABEL_29:
    v46 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();

    v39 = v46;
    goto LABEL_30;
  }

  v27 = _swiftEmptyArrayStorage;
  v65 = _swiftEmptyArrayStorage;
LABEL_44:

  v52 = v65;
  if (v65 >> 62)
  {
    sub_100006370(0, &unk_1019F61A0, UIMenuElement_ptr);

    v53 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100006370(0, &unk_1019F61A0, UIMenuElement_ptr);
    v53 = v52;
  }

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101465920;
  if (v27 >> 62)
  {
    sub_100006370(0, &unk_1019F61A0, UIMenuElement_ptr);

    v55 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100006370(0, &unk_1019F61A0, UIMenuElement_ptr);
    v55 = v27;
  }

  sub_100006370(0, &qword_1019F6C00, UIMenu_ptr);
  v56._countAndFlagsBits = 0;
  v56._object = 0xE000000000000000;
  v74.value.super.isa = 0;
  v74.is_nil = 0;
  *(inited + 32) = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v56, 0, v74, 1, 0xFFFFFFFFFFFFFFFFLL, v55, v60);
  v70 = v53;
  sub_10079A660(inited);
  v57 = v70;
  if (v70 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_50;
    }
  }

  else if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_50:
    v58._countAndFlagsBits = sub_100F88220();
    v75.value.super.isa = 0;
    v75.is_nil = 0;
    return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v58, 0, v75, 0, 0xFFFFFFFFFFFFFFFFLL, v57, v61.super.super.isa);
  }

  return 0;
}

uint64_t sub_10061F964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v4 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  }

  else
  {
    v4 = 0;
  }

  [v3 setLocalContext:v4];
  return swift_unknownObjectRelease();
}

uint64_t sub_10061FB2C()
{
  if ([v0 localContext])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10000CAAC(v5, &unk_1019F4D00, &unk_10146E7F0);
    return 0;
  }
}

id sub_10061FD70(void *a1, uint64_t (**a2)(_BYTE *, uint64_t, uint64_t), uint64_t a3)
{
  v136 = a1;
  v5 = _s5BoardVMa(0);
  __chkstk_darwin(v5 - 8);
  v128 = &v119[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v7 - 8);
  v126 = &v119[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v125 = &v119[-v10];
  v135 = type metadata accessor for UUID();
  v131 = *(v135 - 8);
  __chkstk_darwin(v135);
  v132 = &v119[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v130 = &v119[-v13];
  __chkstk_darwin(v14);
  v134 = &v119[-v15];
  v16 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v16 - 8);
  v127 = &v119[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v20 = &v119[-v19];
  v21 = sub_1005B981C(&unk_101A15B20, &qword_10146F1E0);
  __chkstk_darwin(v21 - 8);
  v23 = &v119[-v22];
  v140 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v24 = *(v140 - 8);
  __chkstk_darwin(v140);
  v133 = &v119[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v26);
  v28 = &v119[-v27];
  __chkstk_darwin(v29);
  v137 = &v119[-v30];
  v31 = sub_1005B981C(&unk_101A23C40, &unk_10146F200);
  __chkstk_darwin(v31 - 8);
  v33 = &v119[-v32];
  v34 = type metadata accessor for IndexPath();
  v35 = *(v34 - 8);
  v141 = v34;
  v142 = v35;
  *&v36 = __chkstk_darwin(v34).n128_u64[0];
  v139 = &v119[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v124 = a2;
  if (![a2 localDragSession] || (swift_getObjectType(), v38 = sub_10061FB2C(), v40 = v39, v129 = v41, swift_unknownObjectRelease(), !v38))
  {
    v44 = objc_opt_self();
    v45 = [v44 _atomicIncrementAssertCount];
    v143 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v143, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("collectionView(_:dropSessionDidUpdate:withDestinationIndexPath:)", 64, 2);
    v46 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSSidebarViewController.swift", 97, 2);
    v47 = String._bridgeToObjectiveC()();

    v48 = [v47 lastPathComponent];

    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v52 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v45;
    v54 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v54;
    v55 = sub_1005CF04C();
    *(inited + 104) = v55;
    *(inited + 72) = v46;
    *(inited + 136) = &type metadata for String;
    v56 = sub_1000053B0();
    *(inited + 112) = v49;
    *(inited + 120) = v51;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v56;
    *(inited + 152) = 422;
    v57 = v143;
    *(inited + 216) = v54;
    *(inited + 224) = v55;
    *(inited + 192) = v57;
    v58 = v46;
    v59 = v57;
    v60 = static os_log_type_t.error.getter();
    sub_100005404(v52, &_mh_execute_header, v60, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v61 = static os_log_type_t.error.getter();
    sub_100005404(v52, &_mh_execute_header, v61, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v62 = swift_allocObject();
    v62[2] = 8;
    v62[3] = 0;
    v62[4] = 0;
    v62[5] = 0;
    v63 = __VaListBuilder.va_list()();
    StaticString.description.getter("collectionView(_:dropSessionDidUpdate:withDestinationIndexPath:)", 64, 2);
    v64 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSSidebarViewController.swift", 97, 2);
    v65 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
    v66 = String._bridgeToObjectiveC()();

    [v44 handleFailureInFunction:v64 file:v65 lineNumber:422 isFatal:0 format:v66 args:v63];

    if (qword_1019F2128 != -1)
    {
      swift_once();
    }

    v67 = static OS_os_log.crlFolderUI;
    v68 = static os_log_type_t.error.getter();
    sub_100005404(v67, &_mh_execute_header, v68, "Could not find drag session context", 35, 2, _swiftEmptyArrayStorage);
    return [objc_allocWithZone(UICollectionViewDropProposal) initWithDropOperation:1 intent:0];
  }

  sub_10000BE14(a3, v33, &unk_101A23C40, &unk_10146F200);
  v43 = v141;
  v42 = v142;
  if ((*(v142 + 48))(v33, 1, v141) == 1)
  {

    sub_10000CAAC(v33, &unk_101A23C40, &unk_10146F200);
    return [objc_allocWithZone(UICollectionViewDropProposal) initWithDropOperation:1 intent:0];
  }

  v70 = v43;
  v71 = v139;
  v72 = v33;
  v73 = v70;
  result = (*(v42 + 32))(v139, v72);
  if (*(v138 + OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_viewModelController))
  {

    sub_1008701F0(v23);

    v74 = v71;
    if ((*(v24 + 48))(v23, 1, v140) == 1)
    {

      sub_10000CAAC(v23, &unk_101A15B20, &qword_10146F1E0);
      if (qword_1019F2128 != -1)
      {
        swift_once();
      }

      v75 = static OS_os_log.crlFolderUI;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v76 = swift_initStackObject();
      *(v76 + 16) = xmmword_10146C6B0;
      sub_10062F8C8(&qword_101A23D10, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v77 = v73;
      v78 = dispatch thunk of CustomStringConvertible.description.getter();
      v79 = v74;
      v81 = v80;
      *(v76 + 56) = &type metadata for String;
      *(v76 + 64) = sub_1000053B0();
      *(v76 + 32) = v78;
      *(v76 + 40) = v81;
      v82 = static os_log_type_t.error.getter();
      sub_100005404(v75, &_mh_execute_header, v82, "Could not determine destination node from view model index path %@", 66, 2, v76);
      swift_setDeallocating();
      sub_100005070((v76 + 32));
      v83 = [objc_allocWithZone(UICollectionViewDropProposal) initWithDropOperation:1 intent:0];
      (*(v142 + 8))(v79, v77);
      return v83;
    }

    v84 = v23;
    v85 = v137;
    sub_100065AE0(v84, v137, type metadata accessor for CRLBoardLibraryViewModel.Item);
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v87 = [v136 cellForItemAtIndexPath:isa];

    if (!*(v38 + 16) || *(v40 + 16))
    {

LABEL_19:
      v88 = 0;
      v89 = 1;
LABEL_20:
      v90 = [objc_allocWithZone(UICollectionViewDropProposal) initWithDropOperation:v89 intent:v88];

      sub_10000B864(v85, type metadata accessor for CRLBoardLibraryViewModel.Item);
      (*(v142 + 8))(v74, v73);
      return v90;
    }

    sub_1000650D4(v85, v28, type metadata accessor for CRLBoardLibraryViewModel.Item);
    if (swift_getEnumCaseMultiPayload() != 1)
    {

      v92 = type metadata accessor for CRLBoardLibraryViewModel.Item;
      v93 = v28;
      goto LABEL_25;
    }

    sub_100065AE0(v28, v20, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    v91 = sub_1005B981C(&qword_1019F3480, &unk_10146F1F0);
    if ((*(*(v91 - 8) + 48))(v20, 5, v91))
    {

      v92 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
      v93 = v20;
LABEL_25:
      sub_10000B864(v93, v92);
      goto LABEL_19;
    }

    sub_10000B864(v20, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    v121 = v87;
    if (v87)
    {
      v94 = v87;
      [v124 locationInView:v94];
      v96 = v95;
      v97 = v132;
      if (v95 <= 0.0 || v95 >= 16.0)
      {
        [v94 frame];
        v100 = v99;

        v98 = v100 + -16.0 < v96;
      }

      else
      {

        v98 = 1;
      }

      v120 = v98;
    }

    else
    {
      v120 = 0;
      v97 = v132;
    }

    v101 = sub_100C7C840(v129);

    v138 = v101;
    v136 = v101[2];
    if (!v136)
    {
LABEL_47:

      if (v120)
      {
        v89 = 3;
        v88 = 2;
      }

      else
      {
LABEL_50:
        v89 = 3;
        v88 = 1;
      }

      v73 = v141;
      v74 = v139;
      v87 = v121;
      goto LABEL_20;
    }

    v102 = 0;
    v129 = v138 + ((*(v131 + 80) + 32) & ~*(v131 + 80));
    v123 = "00-0000-000000000001";
    v124 = (v131 + 48);
    v103 = (v131 + 32);
    v122 = "odel index path %@";
    v104 = (v131 + 8);
    while (v102 < v138[2])
    {
      v105 = *(v131 + 16);
      v105(v134, v129 + *(v131 + 72) * v102, v135);
      sub_1000650D4(v85, v133, type metadata accessor for CRLBoardLibraryViewModel.Item);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v107 = v127;
          sub_100065AE0(v133, v127, type metadata accessor for CRLBoardLibraryViewModel.Filter);
          sub_10003E264(v97);
          sub_10000B864(v107, type metadata accessor for CRLBoardLibraryViewModel.Filter);
          v108 = v135;
        }

        else
        {
          v110 = v128;
          sub_100065AE0(v133, v128, _s5BoardVMa);
          v111 = v97;
          v112 = v135;
          v105(v111, v110, v135);
          v113 = v110;
          v108 = v112;
          v97 = v132;
          sub_10000B864(v113, _s5BoardVMa);
        }
      }

      else
      {
        if (*v133)
        {
          v109 = v126;
          UUID.init(uuidString:)();
          v108 = v135;
          result = (*v124)(v109, 1, v135);
          if (result == 1)
          {
            goto LABEL_54;
          }
        }

        else
        {
          v109 = v125;
          UUID.init(uuidString:)();
          v108 = v135;
          result = (*v124)(v109, 1, v135);
          if (result == 1)
          {
            goto LABEL_55;
          }
        }

        (*v103)(v97, v109, v108);
      }

      v114 = v130;
      (*v103)(v130, v97, v108);
      v115 = v134;
      v116 = static UUID.== infix(_:_:)();
      v117 = v108;
      v118 = *v104;
      (*v104)(v114, v117);
      result = v118(v115, v117);
      if (v116)
      {

        v85 = v137;
        goto LABEL_50;
      }

      ++v102;
      v85 = v137;
      v97 = v132;
      if (v136 == v102)
      {
        goto LABEL_47;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
  return result;
}

void sub_100621074(uint64_t a1)
{
  v2 = v1;
  v3 = Notification.userInfo.getter();
  if (v3)
  {
    v4 = v3;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    AnyHashable.init<A>(_:)();
    if (!*(v4 + 16) || (v5 = sub_1000640CC(v12), (v6 & 1) == 0))
    {

      sub_100064234(v12);
      return;
    }

    sub_100064288(*(v4 + 56) + 32 * v5, v13);
    sub_100064234(v12);
    type metadata accessor for CGRect(0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    v7 = [v2 collectionView];
    if (v7)
    {
      v8 = v7;
      [v7 setContentInset:{0.0, 0.0, v11, 0.0}];

      v9 = [v2 collectionView];
      if (v9)
      {
        v10 = v9;

        [v10 setScrollIndicatorInsets:{0.0, 0.0, v11, 0.0}];

        return;
      }

      goto LABEL_12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

id sub_10062158C(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SectionBackgroundDecorationView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_1006215C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v54 = a1;
  v55 = a2;
  v3 = type metadata accessor for UICollectionLayoutListConfiguration.HeaderMode();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UICollectionLayoutListConfiguration();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v56 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v15 = Strong;
  v51 = v11;
  v16 = Strong + OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_delegate;
  v17 = swift_unknownObjectWeakLoadStrong();
  v50 = v12;
  if (v17)
  {
    v18 = *(v16 + 8);
    ObjectType = swift_getObjectType();
    v52 = (*(v18 + 24))(v15, ObjectType, v18);
    swift_unknownObjectRelease();
  }

  else
  {
    v52 = 0;
  }

  v53 = v15;
  result = [v15 view];
  if (result)
  {
    v22 = result;
    v23 = [result window];

    if (!v23)
    {
      goto LABEL_12;
    }

    v24 = [v23 traitCollection];

    v25 = [v24 horizontalSizeClass];
    if (v25 != 2)
    {
      goto LABEL_12;
    }

    result = [v53 view];
    if (result)
    {
      v26 = result;
      v27 = [result window];

      if (v27)
      {
        v28 = [v27 traitCollection];

        v29 = [v28 verticalSizeClass];
        v30 = v29 == 1;
        goto LABEL_13;
      }

LABEL_12:
      v30 = 0;
LABEL_13:
      (*(v8 + 104))(v10, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v7);
      v31 = v56;
      UICollectionLayoutListConfiguration.init(appearance:)();
      v32 = &enum case for UICollectionLayoutListConfiguration.HeaderMode.none(_:);
      if (v54)
      {
        v32 = &enum case for UICollectionLayoutListConfiguration.HeaderMode.firstItemInSection(_:);
      }

      (*(v4 + 104))(v6, *v32, v3);
      UICollectionLayoutListConfiguration.headerMode.setter();
      v33 = v52;
      UICollectionLayoutListConfiguration.showsSeparators.setter();
      sub_100006370(0, &unk_101A23C80, NSCollectionLayoutSection_ptr);
      v20 = static NSCollectionLayoutSection.list(using:layoutEnvironment:)();
      if (v33)
      {
        if (!v30)
        {
          v34 = objc_opt_self();
          v35 = [v34 fractionalWidthDimension:1.0];
          v36 = [v34 absoluteDimension:102.0];
          v37 = [objc_opt_self() sizeWithWidthDimension:v35 heightDimension:v36];

          v38 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v37 elementKind:UICollectionElementKindSectionFooter alignment:5];
          v39 = swift_allocObject();
          *(v39 + 16) = xmmword_101465920;
          *(v39 + 32) = v38;
          sub_100006370(0, &qword_1019F6768, NSCollectionLayoutBoundarySupplementaryItem_ptr);
          v40 = v38;
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v20 setBoundarySupplementaryItems:isa];

LABEL_20:
          (*(v50 + 8))(v31, v51);
          return v20;
        }
      }

      else
      {
        v42 = objc_opt_self();
        v43 = String._bridgeToObjectiveC()();
        v44 = [v42 backgroundDecorationItemWithElementKind:v43];

        v45 = swift_allocObject();
        *(v45 + 16) = xmmword_101465920;
        *(v45 + 32) = v44;
        sub_100006370(0, &qword_1019F6760, NSCollectionLayoutDecorationItem_ptr);
        v46 = v44;
        v47 = Array._bridgeToObjectiveC()().super.isa;

        [v20 setDecorationItems:v47];

        if (!v30)
        {
          [v20 setInterGroupSpacing:5.0];
          v48 = _UISolariumEnabled();
          v49 = v53;
          if (!v48)
          {
            (*(v50 + 8))(v31, v51);

            return v20;
          }

          [v20 contentInsets];
          [v20 setContentInsets:-4.0];

          goto LABEL_20;
        }
      }

      [v20 contentInsets];
      [v20 setContentInsets:0.0];

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_100621CCC(void *a1, uint64_t a2, uint64_t a3, char *a4)
{
  *&v183 = a3;
  v6 = type metadata accessor for UICellAccessory.LabelOptions();
  v171 = *(v6 - 8);
  v172 = v6;
  __chkstk_darwin(v6);
  v170 = &v159 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v159 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1005B981C(&qword_1019F6728, &qword_10146F328);
  __chkstk_darwin(v11 - 8);
  v13 = &v159 - v12;
  v14 = sub_1005B981C(&qword_1019F6730, &qword_10146F330);
  __chkstk_darwin(v14 - 8);
  v167 = &v159 - v15;
  v16 = type metadata accessor for UICellAccessory.OutlineDisclosureOptions();
  v168 = *(v16 - 8);
  v169 = v16;
  __chkstk_darwin(v16);
  v166 = &v159 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for UICellAccessory.DisplayedState();
  v174 = *(v18 - 8);
  v175 = v18;
  __chkstk_darwin(v18);
  v173 = &v159 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = type metadata accessor for UUID();
  v180 = *(v182 - 8);
  v20 = *(v180 + 64);
  __chkstk_darwin(v182);
  v165 = &v159 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v164 = &v159 - v22;
  __chkstk_darwin(v23);
  v178 = &v159 - v24;
  v179 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v179);
  v26 = &v159 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v159 - v28;
  v30 = _s4NodeVMa(0);
  v177 = *(v30 - 8);
  __chkstk_darwin(v30 - 8);
  v32 = &v159 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = &v159 - v34;
  swift_beginAccess();
  v181 = a4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  v159 = v13;
  v160 = v10;
  v161 = v26;
  v162 = v35;
  v176 = v29;
  v163 = a1;
  v37 = *(*(Strong + OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_actionAlertController) + 16);
  v38 = Strong;
  swift_unknownObjectRetain();

  v39 = *(v37 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot + 24);

  swift_unknownObjectRelease();
  if (!*(v39 + 16) || (v40 = sub_10003E994(v183), (v41 & 1) == 0))
  {

LABEL_9:
    if (qword_1019F2198 != -1)
    {
LABEL_68:
      swift_once();
    }

    v50 = static OS_os_log.crlSidebar;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    sub_10062F8C8(&qword_101A02180, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v52 = dispatch thunk of CustomStringConvertible.description.getter();
    v54 = v53;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v52;
    *(inited + 40) = v54;
    v55 = static os_log_type_t.error.getter();
    sub_100005404(v50, &_mh_execute_header, v55, "Could not find node for view model item with identifier %@", 58, 2, inited);
    swift_setDeallocating();
    sub_100005070((inited + 32));
    return;
  }

  sub_1000650D4(*(v39 + 56) + *(v177 + 72) * v40, v32, _s4NodeVMa);

  v42 = v162;
  sub_100065AE0(v32, v162, _s4NodeVMa);
  sub_1000650D4(v42, v176, type metadata accessor for CRLBoardLibraryViewModel.Item);
  v43 = v181;
  swift_beginAccess();
  v44 = swift_unknownObjectWeakLoadStrong();
  if (v44)
  {

    sub_100F88220();
    sub_100F8B8DC();
    v45 = v163;
    if (v46)
    {
      v47 = objc_opt_self();
      v48 = String._bridgeToObjectiveC()();

      v49 = [v47 systemImageNamed:v48];

      if (v49)
      {
      }
    }

    else
    {
      v49 = 0;
    }

    static UIListContentConfiguration.ImageProperties.standardDimension.getter();
    static UIListContentConfiguration.ImageProperties.standardDimension.getter();
    *(&v186 + 1) = type metadata accessor for UIListContentConfiguration();
    v187 = &protocol witness table for UIListContentConfiguration;
    sub_10002C58C(&v185);
    UICollectionViewListCell.defaultContentConfiguration()();

    UIListContentConfiguration.text.setter();
    v56 = v49;
    UIListContentConfiguration.image.setter();
    v57 = UIListContentConfiguration.imageProperties.modify();
    UIListContentConfiguration.ImageProperties.cornerRadius.setter();
    v57(v184, 0);
    v58 = UIListContentConfiguration.imageProperties.modify();
    UIListContentConfiguration.ImageProperties.reservedLayoutSize.setter();
    v58(v184, 0);
    v59 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
    v60 = UIListContentConfiguration.textProperties.modify();
    UIListContentConfiguration.TextProperties.font.setter();
    v60(v184, 0);

    v43 = v181;
  }

  else
  {
    v187 = 0;
    v185 = 0u;
    v186 = 0u;
    v45 = v163;
  }

  UICollectionViewCell.contentConfiguration.setter();
  v61 = [objc_opt_self() systemGray4Color];
  [v45 setTintColor:v61];

  v62 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleTitle1 scale:-1];
  v63 = v180;
  v64 = v178;
  v65 = v182;
  (*(v180 + 16))(v178, v183, v182);
  v66 = (*(v63 + 80) + 24) & ~*(v63 + 80);
  v67 = swift_allocObject();
  *(v67 + 16) = v43;
  (*(v63 + 32))(v67 + v66, v64, v65);
  *(v67 + ((v20 + v66 + 7) & 0xFFFFFFFFFFFFFFF8)) = v62;
  v68 = v62;

  UICollectionViewCell.configurationUpdateHandler.setter();
  v69 = v176;
  v70 = v161;
  sub_1000650D4(v176, v161, type metadata accessor for CRLBoardLibraryViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1005B981C(&qword_1019F6738, &qword_10146F338);
    v79 = *(type metadata accessor for UICellAccessory() - 8);
    *&v183 = (*(v79 + 80) + 32) & ~*(v79 + 80);
    *(swift_allocObject() + 16) = xmmword_10146C6B0;
    v80 = v173;
    v81 = v174;
    v82 = v175;
    (*(v174 + 104))(v173, enum case for UICellAccessory.DisplayedState.always(_:), v175);
    v83 = type metadata accessor for UICellAccessory.OutlineDisclosureOptions.Style();
    (*(*(v83 - 8) + 56))(v167, 1, 1, v83);
    v84 = type metadata accessor for UICellAccessory.LayoutDimension();
    (*(*(v84 - 8) + 56))(v159, 1, 1, v84);
    v85 = v68;
    v86 = v166;
    UICellAccessory.OutlineDisclosureOptions.init(style:isHidden:reservedLayoutWidth:tintColor:)();
    static UICellAccessory.outlineDisclosure(displayed:options:actionHandler:)();
    (*(v168 + 8))(v86, v169);
    (*(v81 + 8))(v80, v82);
    UICollectionViewListCell.accessories.setter();

    v87 = v69;
    goto LABEL_64;
  }

  v178 = v68;
  if (EnumCaseMultiPayload != 1)
  {
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v88 = swift_initStackObject();
    *(v88 + 16) = xmmword_10146C6B0;
    v89 = sub_100F8903C();
    v91 = v90;
    v92 = &type metadata for String;
    *(v88 + 56) = &type metadata for String;
    v93 = sub_1000053B0();
    *(v88 + 32) = v89;
    v182 = v93;
    *&v183 = v88 + 32;
    *(v88 + 64) = v93;
    *(v88 + 40) = v91;
    v181 = objc_opt_self();
    LODWORD(v94) = [v181 _atomicIncrementAssertCount];
    *&v185 = [objc_allocWithZone(NSString) init];
    sub_100604538(v88, &v185, "Unexpected sidebar item: %@", 27, 2u);
    StaticString.description.getter("newCollectionViewDataSource(for:)", 33, 2);
    v95 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSSidebarViewController.swift", 97, 2);
    v96 = String._bridgeToObjectiveC()();

    v97 = [v96 lastPathComponent];

    v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v100 = v99;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_71;
    }

    while (1)
    {
      v101 = static OS_os_log.crlAssert;
      v102 = swift_initStackObject();
      *(v102 + 16) = xmmword_10146CA70;
      *(v102 + 56) = &type metadata for Int32;
      *(v102 + 64) = &protocol witness table for Int32;
      *(v102 + 32) = v94;
      v103 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(v102 + 96) = v103;
      v104 = sub_1005CF04C();
      *(v102 + 72) = v95;
      v105 = v182;
      *(v102 + 136) = v92;
      *(v102 + 144) = v105;
      *(v102 + 104) = v104;
      *(v102 + 112) = v98;
      *(v102 + 120) = v100;
      *(v102 + 176) = &type metadata for UInt;
      *(v102 + 184) = &protocol witness table for UInt;
      *(v102 + 152) = 779;
      v106 = v185;
      *(v102 + 216) = v103;
      *(v102 + 224) = v104;
      *(v102 + 192) = v106;
      v107 = v95;
      v108 = v106;
      v109 = static os_log_type_t.error.getter();
      sub_100005404(v101, &_mh_execute_header, v109, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v102);
      swift_setDeallocating();
      v182 = sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v110 = static os_log_type_t.error.getter();
      sub_100005404(v101, &_mh_execute_header, v110, "Unexpected sidebar item: %@", 27, 2, v88);

      type metadata accessor for __VaListBuilder();
      v95 = swift_allocObject();
      v95[2] = 8;
      v95[3] = 0;
      v111 = v95 + 3;
      v95[4] = 0;
      v95[5] = 0;
      v100 = *(v88 + 16);
      if (!v100)
      {
LABEL_48:
        v128 = __VaListBuilder.va_list()();
        StaticString.description.getter("newCollectionViewDataSource(for:)", 33, 2);
        v129 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSSidebarViewController.swift", 97, 2);
        v130 = String._bridgeToObjectiveC()();

        StaticString.description.getter("Unexpected sidebar item: %@", 27, 2);
        v131 = String._bridgeToObjectiveC()();

        [v181 handleFailureInFunction:v129 file:v130 lineNumber:779 isFatal:0 format:v131 args:v128];

        swift_setDeallocating();
        swift_arrayDestroy();
        UICollectionViewListCell.accessories.setter();

        sub_10000B864(v176, type metadata accessor for CRLBoardLibraryViewModel.Item);
        sub_10000B864(v162, _s4NodeVMa);
        v132 = _s5BoardVMa;
        v133 = v161;
        goto LABEL_65;
      }

      v112 = 0;
      v92 = 40;
      while (1)
      {
        v113 = (v183 + 40 * v112);
        v98 = v113[3];
        sub_100020E58(v113, v98);
        v114 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v115 = *v111;
        v116 = *(v114 + 16);
        v117 = __OFADD__(*v111, v116);
        v118 = *v111 + v116;
        if (v117)
        {
          goto LABEL_67;
        }

        v94 = v95[4];
        if (v94 >= v118)
        {
          goto LABEL_40;
        }

        if (v94 + 0x4000000000000000 < 0)
        {
          break;
        }

        v98 = v95[5];
        if (2 * v94 > v118)
        {
          v118 = 2 * v94;
        }

        v95[4] = v118;
        if ((v118 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_70;
        }

        v119 = v88;
        v120 = v114;
        v121 = swift_slowAlloc();
        v122 = v121;
        v95[5] = v121;
        if (v98)
        {
          if (v121 != v98 || v121 >= &v98[8 * v115])
          {
            memmove(v121, v98, 8 * v115);
          }

          __VaListBuilder.deallocStorage(wordCount:storage:)();
          v114 = v120;
          v88 = v119;
          v92 = 40;
LABEL_40:
          v122 = v95[5];
          if (!v122)
          {
            goto LABEL_47;
          }

          goto LABEL_41;
        }

        v114 = v120;
        v88 = v119;
        v92 = 40;
        if (!v122)
        {
LABEL_47:
          __break(1u);
          goto LABEL_48;
        }

LABEL_41:
        v124 = *(v114 + 16);
        if (v124)
        {
          v125 = (v114 + 32);
          v126 = *v111;
          while (1)
          {
            v127 = *v125++;
            *&v122[8 * v126] = v127;
            v126 = *v111 + 1;
            if (__OFADD__(*v111, 1))
            {
              break;
            }

            *v111 = v126;
            if (!--v124)
            {
              goto LABEL_25;
            }
          }

          __break(1u);
LABEL_67:
          __break(1u);
          goto LABEL_68;
        }

LABEL_25:

        if (++v112 == v100)
        {
          goto LABEL_48;
        }
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      swift_once();
    }
  }

  sub_100065AE0(v70, v160, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  swift_beginAccess();
  v72 = swift_unknownObjectWeakLoadStrong();
  if (v72)
  {
    v73 = *(v72 + OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_viewModelController);
    v74 = v72;

    if (!v73)
    {
      __break(1u);
      goto LABEL_73;
    }

    v75 = *(v73 + 40);

    v76 = v164;
    sub_10003E264(v164);
    if (*(v75 + 16))
    {
      sub_10003E994(v76);
      v78 = v77;
      (*(v180 + 8))(v76, v182);

      if (v78)
      {
        goto LABEL_53;
      }
    }

    else
    {

      (*(v180 + 8))(v76, v182);
    }
  }

  if (qword_1019F2198 != -1)
  {
    swift_once();
  }

  v134 = static OS_os_log.crlSidebar;
  v135 = static os_log_type_t.error.getter();
  sub_100005404(v134, &_mh_execute_header, v135, "self?.viewModelController.cachedSidebarItemBoardCount[filter.uuid] nil", 70, 2, _swiftEmptyArrayStorage);
LABEL_53:
  swift_beginAccess();
  v136 = swift_unknownObjectWeakLoadStrong();
  if (!v136)
  {
LABEL_59:
    v143 = 0;
    goto LABEL_60;
  }

  v137 = *(v136 + OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_viewModelController);
  v138 = v136;

  if (!v137)
  {
LABEL_73:
    __break(1u);
    return;
  }

  v139 = *(v137 + 40);

  v140 = v165;
  sub_10003E264(v165);
  if (!*(v139 + 16) || (v141 = sub_10003E994(v140), (v142 & 1) == 0))
  {

    (*(v180 + 8))(v140, v182);
    goto LABEL_59;
  }

  v143 = *(*(v139 + 56) + 8 * v141);
  (*(v180 + 8))(v140, v182);

LABEL_60:
  v180 = sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v144 = swift_allocObject();
  v183 = xmmword_10146C6B0;
  *(v144 + 16) = xmmword_10146C6B0;
  *(v144 + 56) = &type metadata for Int;
  *(v144 + 64) = &protocol witness table for Int;
  v182 = v143;
  *(v144 + 32) = v143;
  static String.localizedStringWithFormat(_:_:)();

  sub_1005B981C(&qword_1019F6738, &qword_10146F338);
  type metadata accessor for UICellAccessory();
  *(swift_allocObject() + 16) = v183;
  v145 = v173;
  v146 = v174;
  v147 = v175;
  (*(v174 + 104))(v173, enum case for UICellAccessory.DisplayedState.always(_:), v175);
  v148 = type metadata accessor for UICellAccessory.LayoutDimension();
  (*(*(v148 - 8) + 56))(v159, 1, 1, v148);
  v149 = v170;
  UICellAccessory.LabelOptions.init(isHidden:reservedLayoutWidth:tintColor:font:adjustsFontForContentSizeCategory:)();
  static UICellAccessory.label(text:displayed:options:)();

  (*(v171 + 8))(v149, v172);
  (*(v146 + 8))(v145, v147);
  v150 = v163;
  UICollectionViewListCell.accessories.setter();
  v151 = v176;
  sub_100F88220();
  v152 = String._bridgeToObjectiveC()();

  [v150 setAccessibilityLabel:v152];

  swift_beginAccess();
  v153 = swift_unknownObjectWeakLoadStrong();
  if (v153)
  {

    v154 = [objc_opt_self() mainBundle];
    v188._object = 0x8000000101559690;
    v155._countAndFlagsBits = 0x72616F6220756C25;
    v155._object = 0xEC00000029732864;
    v156._countAndFlagsBits = 0;
    v156._object = 0xE000000000000000;
    v188._countAndFlagsBits = 0xD00000000000001BLL;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v155, 0, v154, v156, v188);

    v157 = swift_allocObject();
    *(v157 + 16) = v183;
    *(v157 + 56) = &type metadata for Int;
    *(v157 + 64) = &protocol witness table for Int;
    *(v157 + 32) = v182;
    static String.localizedStringWithFormat(_:_:)();

    v158 = String._bridgeToObjectiveC()();
  }

  else
  {
    v158 = 0;
  }

  [v150 setAccessibilityValue:v158];

  sub_10000B864(v160, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v87 = v151;
LABEL_64:
  sub_10000B864(v87, type metadata accessor for CRLBoardLibraryViewModel.Item);
  v132 = _s4NodeVMa;
  v133 = v162;
LABEL_65:
  sub_10000B864(v133, v132);
}

char *sub_100623498(void *a1, void (*a2)(void, void, void), uint64_t a3, uint64_t a4, void *a5)
{
  v205 = a5;
  v218 = a4;
  v213 = a2;
  v6 = type metadata accessor for UICellAccessory.DisclosureIndicatorOptions();
  v192 = *(v6 - 8);
  __chkstk_darwin(v6);
  v191 = &v174 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UICellAccessory();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v174 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UICellAccessory.LabelOptions();
  v194 = *(v12 - 8);
  v195 = v12;
  __chkstk_darwin(v12);
  v193 = &v174 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UICellAccessory.DisplayedState();
  v202 = *(v14 - 8);
  v203 = v14;
  __chkstk_darwin(v14);
  v200 = &v174 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1005B981C(&qword_1019F6728, &qword_10146F328);
  __chkstk_darwin(v16 - 8);
  v201 = &v174 - v17;
  v18 = type metadata accessor for UICellAccessory.Placement();
  v185 = *(v18 - 8);
  v186 = v18;
  __chkstk_darwin(v18);
  v187 = &v174 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for UICellAccessory.CustomViewConfiguration();
  v189 = *(v20 - 8);
  v190 = v20;
  __chkstk_darwin(v20);
  v188 = &v174 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v216 = type metadata accessor for UUID();
  v198 = *(v216 - 8);
  __chkstk_darwin(v216);
  v197 = &v174 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v23 - 8);
  v199 = &v174 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v196 = &v174 - v26;
  __chkstk_darwin(v27);
  v208 = &v174 - v28;
  v29 = sub_1005B981C(&qword_1019F6740, &qword_10146F340);
  __chkstk_darwin(v29 - 8);
  v209 = &v174 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v217 = &v174 - v32;
  v33 = sub_1005B981C(&qword_101A23CF0, &qword_10146F348);
  __chkstk_darwin(v33 - 8);
  v204 = &v174 - v34;
  v35 = type metadata accessor for UIBackgroundConfiguration();
  v210 = *(v35 - 8);
  v211 = v35;
  __chkstk_darwin(v35);
  v214 = &v174 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v206);
  v207 = &v174 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v215 = &v174 - v39;
  v40 = _s4NodeVMa(0);
  v41 = *(v40 - 8);
  __chkstk_darwin(v40 - 8);
  v43 = &v174 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v212 = &v174 - v45;
  objc_opt_self();
  v46 = a1;
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v48 = result;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v180 = v9;
      v181 = v41;
      v183 = v48;
      v184 = result;
      v177 = v6;
      v178 = v8;
      v179 = v11;
      v49 = *(*(*&result[OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_actionAlertController] + 16) + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot + 24);
      v50 = *(v49 + 16);
      *&v182 = v46;
      if (v50)
      {

        v51 = sub_10003E994(v218);
        if (v52)
        {
          sub_1000650D4(*(v49 + 56) + *(v181 + 72) * v51, v43, _s4NodeVMa);

          v53 = v212;
          sub_100065AE0(v43, v212, _s4NodeVMa);
          sub_1000650D4(v53, v215, type metadata accessor for CRLBoardLibraryViewModel.Item);
          v54 = v184;
          v55 = &v184[OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_delegate];
          if (swift_unknownObjectWeakLoadStrong())
          {
            v56 = *(v55 + 1);
            ObjectType = swift_getObjectType();
            LODWORD(v181) = (*(v56 + 24))(v54, ObjectType, v56);
            swift_unknownObjectRelease();
          }

          else
          {
            LODWORD(v181) = 0;
          }

          v65 = v213;
          result = [v54 view];
          if (!result)
          {
            __break(1u);
LABEL_68:
            __break(1u);
            goto LABEL_69;
          }

          v66 = result;
          v67 = [result window];

          if (!v67)
          {
            goto LABEL_19;
          }

          v68 = [v67 traitCollection];

          v69 = [v68 horizontalSizeClass];
          if (v69 != 2)
          {
            goto LABEL_19;
          }

          result = [v54 view];
          if (!result)
          {
LABEL_69:
            __break(1u);
            return result;
          }

          v70 = result;
          v71 = [result window];

          if (v71)
          {
            v72 = [v71 traitCollection];

            v73 = [v72 verticalSizeClass];
            v74 = v73 == 1;
          }

          else
          {
LABEL_19:
            v74 = 0;
          }

          v75 = v182;
          v76 = v183;
          v77 = [v183 traitCollection];
          v78 = [v76 traitCollection];

          v79 = [v78 accessibilityContrast];
          if (v79 == 1)
          {
            v80 = UITraitCollection.modifyingTraits(_:)();

            v77 = v80;
          }

          sub_100F884C8();
          v82 = v81;
          v83 = [v81 resolvedColorWithTraitCollection:v77];

          v84 = swift_allocObject();
          v182 = xmmword_10146CE00;
          *(v84 + 16) = xmmword_10146CE00;
          v174 = objc_opt_self();
          *(v84 + 32) = [v174 whiteColor];
          *(v84 + 40) = v83;
          v218 = v84;
          v85 = v181 | v74;
          v176 = v83;
          if (v85)
          {
            v86 = v214;
            static UIBackgroundConfiguration.listGroupedCell()();
            v87 = v205;
            v88 = v65;
          }

          else
          {
            static UIBackgroundConfiguration.listSidebarCell()();
            v88 = v65;
            if (UICellConfigurationState.isHighlighted.getter())
            {
              sub_100F884C8();
              v90 = v89;

              v91 = swift_allocObject();
              *(v91 + 16) = v182;
              *(v91 + 32) = [v174 whiteColor];
              v92 = [v90 crl_withReducedAlpha:0.3];
              v218 = v91;
              *(v91 + 40) = v92;
            }

            v87 = v205;
            v86 = v214;
          }

          v93 = v210;
          v94 = v204;
          v95 = v86;
          v96 = v211;
          (*(v210 + 16))(v204, v95, v211);
          (*(v93 + 56))(v94, 0, 1, v96);
          v97 = v75;
          UICollectionViewCell.backgroundConfiguration.setter();
          sub_100006370(0, &qword_101A11110, UIColor_ptr);
          isa = Array._bridgeToObjectiveC()().super.isa;
          v99 = [objc_opt_self() configurationWithPaletteColors:isa];

          v204 = [v87 configurationByApplyingConfiguration:v99];
          UICollectionViewCell.contentConfiguration.getter();
          v205 = v77;
          *&v182 = v97;
          v175 = v99;
          if (v223[3])
          {
            sub_10000630C(v223, v220);
            sub_10000CAAC(v223, &qword_1019F6748, &qword_10146F350);
            v100 = v221;
            v101 = v222;
            sub_100020E58(v220, v221);
            v102 = type metadata accessor for UICellConfigurationState();
            v219[3] = v102;
            v219[4] = &protocol witness table for UICellConfigurationState;
            v103 = sub_10002C58C(v219);
            (*(*(v102 - 8) + 16))(v103, v88, v102);
            *(&v225 + 1) = v100;
            v226 = v101;
            sub_10002C58C(&v224);
            dispatch thunk of UIContentConfiguration.updated(for:)();
            sub_100005070(v219);
            sub_100005070(v220);
            v104 = v184;
            v105 = v209;
            if (*(&v225 + 1))
            {
              sub_1005B981C(&qword_1019F6758, &unk_10146F360);
              v106 = type metadata accessor for UIListContentConfiguration();
              v107 = v217;
              v108 = swift_dynamicCast();
              (*(*(v106 - 8) + 56))(v107, v108 ^ 1u, 1, v106);
              goto LABEL_32;
            }
          }

          else
          {
            sub_10000CAAC(v223, &qword_1019F6748, &qword_10146F350);
            v224 = 0u;
            v225 = 0u;
            v226 = 0;
            v104 = v184;
            v105 = v209;
          }

          sub_10000CAAC(&v224, &qword_1019F6748, &qword_10146F350);
          v106 = type metadata accessor for UIListContentConfiguration();
          v107 = v217;
          (*(*(v106 - 8) + 56))(v217, 1, 1, v106);
LABEL_32:
          type metadata accessor for UIListContentConfiguration();
          v109 = *(v106 - 8);
          v110 = *(v109 + 48);
          if (!v110(v107, 1, v106))
          {
            v111 = [v174 labelColor];
            v112 = UIListContentConfiguration.textProperties.modify();
            v107 = v217;
            UIListContentConfiguration.TextProperties.color.setter();
            v112(&v224, 0);
            v105 = v209;
            v104 = v184;
          }

          if (!v110(v107, 1, v106))
          {
            v113 = v204;
            v114 = UIListContentConfiguration.imageProperties.modify();
            UIListContentConfiguration.ImageProperties.preferredSymbolConfiguration.setter();
            v114(&v224, 0);
            v105 = v209;
            v107 = v217;
          }

          sub_10000BE14(v107, v105, &qword_1019F6740, &qword_10146F340);
          if (v110(v105, 1, v106) == 1)
          {
            sub_10000CAAC(v105, &qword_1019F6740, &qword_10146F340);
            v224 = 0u;
            v225 = 0u;
            v226 = 0;
          }

          else
          {
            *(&v225 + 1) = v106;
            v226 = &protocol witness table for UIListContentConfiguration;
            v115 = sub_10002C58C(&v224);
            (*(v109 + 32))(v115, v105, v106);
          }

          v116 = v208;
          v117 = v215;
          v118 = v205;
          v119 = v182;
          UICollectionViewCell.contentConfiguration.setter();

          v120 = v207;
          sub_1000650D4(v117, v207, type metadata accessor for CRLBoardLibraryViewModel.Item);
          if (swift_getEnumCaseMultiPayload() != 1)
          {

            (*(v210 + 8))(v214, v211);
            sub_10000B864(v117, type metadata accessor for CRLBoardLibraryViewModel.Item);
            sub_10000B864(v212, _s4NodeVMa);
            v127 = v120;
            v128 = type metadata accessor for CRLBoardLibraryViewModel.Item;
LABEL_65:
            sub_10000B864(v127, v128);
            return sub_10000CAAC(v107, &qword_1019F6740, &qword_10146F340);
          }

          result = sub_100065AE0(v120, v116, type metadata accessor for CRLBoardLibraryViewModel.Filter);
          v121 = *&v104[OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_viewModelController];
          if (v121)
          {

            v122 = *(v121 + 40);

            v123 = v197;
            sub_10003E264(v197);
            if (*(v122 + 16) && (v124 = sub_10003E994(v123), (v125 & 1) != 0))
            {
              v126 = *(*(v122 + 56) + 8 * v124);
              (*(v198 + 8))(v123, v216);
            }

            else
            {

              (*(v198 + 8))(v123, v216);
              v129 = sub_1005B981C(&qword_1019F3480, &unk_10146F1F0);
              v130 = v196;
              (*(*(v129 - 8) + 56))(v196, 5, 5, v129);
              v131 = sub_100068604(v116, v130);
              sub_10000B864(v130, type metadata accessor for CRLBoardLibraryViewModel.Filter);
              if (!v131)
              {
                if (qword_1019F2198 != -1)
                {
                  swift_once();
                }

                v132 = static OS_os_log.crlSidebar;
                sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
                inited = swift_initStackObject();
                *(inited + 16) = xmmword_10146C6B0;
                v134 = sub_10006A888();
                v136 = v135;
                *(inited + 56) = &type metadata for String;
                *(inited + 64) = sub_1000053B0();
                *(inited + 32) = v134;
                *(inited + 40) = v136;
                v137 = static os_log_type_t.error.getter();
                sub_100005404(v132, &_mh_execute_header, v137, "Cached board count not found for %@", 35, 2, inited);
                swift_setDeallocating();
                sub_100005070((inited + 32));
              }

              v126 = 0;
            }

            v138 = v199;
            sub_1000650D4(v116, v199, type metadata accessor for CRLBoardLibraryViewModel.Filter);
            v139 = sub_1005B981C(&qword_1019F3480, &unk_10146F1F0);
            v140 = (*(*(v139 - 8) + 48))(v138, 5, v139);
            sub_10000B864(v138, type metadata accessor for CRLBoardLibraryViewModel.Filter);
            v141 = UICellConfigurationState.isSelected.getter();
            if (v140 == 4)
            {
              if (v141 & 1) != 0 && (v104[OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_isFetchingChanges])
              {
                goto LABEL_57;
              }

              v142 = &OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_isFetchingHighlights;
            }

            else
            {
              if ((v141 & 1) == 0)
              {
                goto LABEL_58;
              }

              v142 = &OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_isFetchingChanges;
            }

            if (v104[*v142] == 1)
            {
LABEL_57:
              v143 = [objc_allocWithZone(UIActivityIndicatorView) init];
              [v143 startAnimating];
              v144 = sub_1005B981C(&qword_1019F6750, &qword_10146F358);
              v145 = v187;
              v146 = &v187[*(v144 + 48)];
              v147 = *(v202 + 104);
              LODWORD(v216) = enum case for UICellAccessory.DisplayedState.always(_:);
              v213 = v147;
              v147(v187);
              *v146 = CRLWPShapeLayout.instructionalTextCharacterFill.getter;
              v146[1] = 0;
              (*(v185 + 104))(v145, enum case for UICellAccessory.Placement.trailing(_:), v186);
              v148 = type metadata accessor for UICellAccessory.LayoutDimension();
              (*(*(v148 - 8) + 56))(v201, 1, 1, v148);
              v149 = v143;
              v150 = v188;
              UICellAccessory.CustomViewConfiguration.init(customView:placement:isHidden:reservedLayoutWidth:tintColor:maintainsFixedSize:)();
              sub_1005B981C(&qword_1019F6738, &qword_10146F338);
              v151 = *(v180 + 80);
              v218 = *(v180 + 72);
              v152 = swift_allocObject();
              *(v152 + 16) = xmmword_10146C6B0;
              static UICellAccessory.customView(configuration:)();

              (*(v189 + 8))(v150, v190);
              v107 = v217;
LABEL_59:
              v162 = v179;
              if (v181)
              {
                v164 = v202;
                v163 = v203;
                v165 = v200;
                v213(v200, v216, v203);
                v166 = type metadata accessor for UICellAccessory.LayoutDimension();
                (*(*(v166 - 8) + 56))(v201, 1, 1, v166);
                v167 = v191;
                UICellAccessory.DisclosureIndicatorOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
                static UICellAccessory.disclosureIndicator(displayed:options:)();
                (*(v192 + 8))(v167, v177);
                (*(v164 + 8))(v165, v163);
                v169 = *(v152 + 16);
                v168 = *(v152 + 24);
                if (v169 >= v168 >> 1)
                {
                  v152 = sub_100B36C0C((v168 > 1), v169 + 1, 1, v152);
                }

                v170 = v208;
                v171 = v214;
                v172 = v184;
                *(v152 + 16) = v169 + 1;
                (*(v180 + 32))(v152 + ((v151 + 32) & ~v151) + v218 * v169, v162, v178);
                v107 = v217;
              }

              else
              {
                v170 = v208;
                v171 = v214;
                v172 = v184;
              }

              v173 = v176;
              UICollectionViewListCell.accessories.setter();

              sub_10000B864(v170, type metadata accessor for CRLBoardLibraryViewModel.Filter);
              (*(v210 + 8))(v171, v211);
              sub_10000B864(v215, type metadata accessor for CRLBoardLibraryViewModel.Item);
              v128 = _s4NodeVMa;
              v127 = v212;
              goto LABEL_65;
            }

LABEL_58:
            sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
            v153 = swift_allocObject();
            v216 = xmmword_10146C6B0;
            *(v153 + 16) = xmmword_10146C6B0;
            *(v153 + 56) = &type metadata for Int;
            *(v153 + 64) = &protocol witness table for Int;
            *(v153 + 32) = v126;
            v209 = static String.localizedStringWithFormat(_:_:)();

            sub_1005B981C(&qword_1019F6738, &qword_10146F338);
            v154 = *(v180 + 80);
            v218 = *(v180 + 72);
            v152 = swift_allocObject();
            *(v152 + 16) = v216;
            v156 = v202;
            v155 = v203;
            v157 = *(v202 + 104);
            v158 = v200;
            LODWORD(v216) = enum case for UICellAccessory.DisplayedState.always(_:);
            v213 = v157;
            v157(v200);
            v159 = type metadata accessor for UICellAccessory.LayoutDimension();
            (*(*(v159 - 8) + 56))(v201, 1, 1, v159);
            v160 = [v174 secondaryLabelColor];
            v161 = v193;
            UICellAccessory.LabelOptions.init(isHidden:reservedLayoutWidth:tintColor:font:adjustsFontForContentSizeCategory:)();
            static UICellAccessory.label(text:displayed:options:)();

            (*(v194 + 8))(v161, v195);
            v107 = v217;
            (*(v156 + 8))(v158, v155);
            v151 = v154;
            goto LABEL_59;
          }

          goto LABEL_68;
        }
      }

      else
      {
      }

      v58 = v184;
      if (qword_1019F2198 != -1)
      {
        swift_once();
      }

      v59 = static OS_os_log.crlSidebar;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v60 = swift_initStackObject();
      *(v60 + 16) = xmmword_10146C6B0;
      sub_10062F8C8(&qword_101A02180, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v61 = dispatch thunk of CustomStringConvertible.description.getter();
      v63 = v62;
      *(v60 + 56) = &type metadata for String;
      *(v60 + 64) = sub_1000053B0();
      *(v60 + 32) = v61;
      *(v60 + 40) = v63;
      v64 = static os_log_type_t.error.getter();
      sub_100005404(v59, &_mh_execute_header, v64, "Could not find node for view model item with identifier %@", 58, 2, v60);

      swift_setDeallocating();
      return sub_100005070((v60 + 32));
    }
  }

  return result;
}

uint64_t sub_100624F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a3, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  sub_100006370(0, &qword_1019F66D8, UICollectionViewListCell_ptr);
  v10 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
  sub_10000CAAC(v7, &qword_1019F6990, &qword_10146D2F0);
  return v10;
}

uint64_t sub_1006250B8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1005B981C(&unk_101A15B20, &qword_10146F1E0);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = *(*(Strong + OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_actionAlertController) + 16);
    v15 = a1;
    v8 = Strong;
    swift_unknownObjectRetain();

    v9 = *(v7 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot + 16);
    v17 = *(v7 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot);
    v18 = v9;
    v19 = *(v7 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot + 32);
    v20 = v17;
    v21 = v9;
    v22 = v19;
    sub_10000BE14(&v20, v16, &unk_101A23CC0, &unk_1014712F0);
    sub_10000BE14(&v20 + 8, v16, &unk_101A23CC0, &unk_1014712F0);
    sub_10000BE14(&v21, v16, &qword_1019F66A8, &unk_10146F220);
    sub_10000BE14(&v21 + 8, v16, &unk_101A23CD0, &unk_101471300);
    sub_10000BE14(&v22, v16, &qword_1019FFF30, &unk_10146F230);
    sub_10000BE14(&v22 + 8, v16, &unk_101A23CE0, &qword_101471310);
    swift_unknownObjectRelease();
    sub_100825120(v15, v5);
    sub_10000CAAC(&v20, &unk_101A23CC0, &unk_1014712F0);
    sub_10000CAAC(&v20 + 8, &unk_101A23CC0, &unk_1014712F0);
    sub_10000CAAC(&v21, &qword_1019F66A8, &unk_10146F220);
    sub_10000CAAC(&v21 + 8, &unk_101A23CD0, &unk_101471300);
    sub_10000CAAC(&v22, &qword_1019FFF30, &unk_10146F230);
    sub_10000CAAC(&v22 + 8, &unk_101A23CE0, &qword_101471310);
    v10 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
    v11 = (*(*(v10 - 8) + 48))(v5, 1, v10);
    if (v11 != 1)
    {
      v12 = sub_100F88018(v11);
      sub_10000B864(v5, type metadata accessor for CRLBoardLibraryViewModel.Item);
      return v12 & 1;
    }

    sub_10000CAAC(v5, &unk_101A15B20, &qword_10146F1E0);
  }

  v12 = 0;
  return v12 & 1;
}

char *sub_10062539C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v3 - 8);
  v175 = &v155 - v4;
  v5 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  __chkstk_darwin(v5 - 8);
  v166 = &v155 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&qword_1019F33E0, &unk_101468A80);
  v171 = *(v7 - 8);
  v8 = *(v171 + 64);
  __chkstk_darwin(v7 - 8);
  v170 = &v155 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v172 = &v155 - v10;
  __chkstk_darwin(v11);
  v174 = &v155 - v12;
  v13 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v13 - 8);
  v178 = &v155 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _s4NodeVMa(0);
  v181 = *(v15 - 8);
  __chkstk_darwin(v15 - 8);
  v167 = &v155 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v180 = &v155 - v18;
  v19 = sub_1005B981C(&unk_101A15B20, &qword_10146F1E0);
  __chkstk_darwin(v19 - 8);
  v176 = &v155 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v190 = &v155 - v22;
  v188 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v23 = *(v188 - 8);
  __chkstk_darwin(v188);
  v169 = &v155 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v173 = &v155 - v26;
  __chkstk_darwin(v27);
  v182 = &v155 - v28;
  __chkstk_darwin(v29);
  v183 = &v155 - v30;
  v31 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v31 - 8);
  v168 = &v155 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v177 = &v155 - v34;
  __chkstk_darwin(v35);
  v37 = &v155 - v36;
  v214 = type metadata accessor for UUID();
  v216 = *(v214 - 8);
  __chkstk_darwin(v214);
  v179 = &v155 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v220 = &v155 - v40;
  __chkstk_darwin(v41);
  v43 = &v155 - v42;
  v219 = sub_1005B981C(&qword_1019F66F0, &unk_10146F2E0);
  v193 = *(v219 - 8);
  __chkstk_darwin(v219);
  v45 = &v155 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v218 = &v155 - v47;
  v212 = sub_1005B981C(&qword_1019F66F8, &unk_101478330);
  v48 = *(v212 - 8);
  __chkstk_darwin(v212);
  v211 = &v155 - v49;
  v207 = sub_1005B981C(&qword_1019F6700, &qword_10146F2F0);
  v50 = *(v207 - 8);
  __chkstk_darwin(v207);
  v208 = &v155 - v51;
  v204 = sub_1005B981C(&qword_1019F6708, &qword_10146F2F8);
  v205 = *(v204 - 8);
  __chkstk_darwin(v204);
  v203 = &v155 - v52;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v189 = result;
  if (!result)
  {
    return result;
  }

  v202 = sub_1005B981C(&qword_1019F6710, &qword_10146F300);
  result = NSDiffableDataSourceTransaction.sectionTransactions.getter();
  v54 = result;
  v201 = *(result + 2);
  if (!v201)
  {
LABEL_63:
  }

  v55 = 0;
  v165 = 0;
  v56 = *(v205 + 80);
  v186 = OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_actionAlertController;
  v200 = &result[(v56 + 32) & ~v56];
  v199 = v205 + 16;
  v198 = v205 + 8;
  v222 = (v216 + 32);
  v217 = (v216 + 56);
  v192 = v216 + 16;
  v196 = (v48 + 8);
  v195 = (v50 + 8);
  v191 = (v216 + 8);
  v185 = (v23 + 56);
  v184 = (v23 + 48);
  v161 = "odel index path %@";
  v160 = v8 + 7;
  v159 = xmmword_10146C6B0;
  v213 = v37;
  v57 = v214;
  v194 = a1;
  v209 = v43;
  v197 = result;
  v215 = (v216 + 48);
  v187 = v45;
  while (v55 < *(v54 + 2))
  {
    v58 = v205;
    v59 = *(v205 + 72);
    v210 = v55;
    v60 = v203;
    v61 = v204;
    (*(v205 + 16))(v203, &v200[v59 * v55], v204);
    NSDiffableDataSourceSectionTransaction.finalSnapshot.getter();
    (*(v58 + 8))(v60, v61);
    NSDiffableDataSourceTransaction.difference.getter();
    v62 = CollectionDifference.insertions.getter();
    v63 = *(v62 + 16);
    if (v63)
    {
      v64 = v45;
      v65 = (*(v193 + 80) + 32) & ~*(v193 + 80);
      v206 = v62;
      v66 = v62 + v65;
      v221 = *(v193 + 72);
      v67 = _swiftEmptyArrayStorage;
      v68 = v215;
      do
      {
        v69 = v218;
        sub_10000BE14(v66, v218, &qword_1019F66F0, &unk_10146F2E0);
        sub_10003DFF8(v69, v64, &qword_1019F66F0, &unk_10146F2E0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          (*v217)(v37, 1, 1, v57);
          sub_10000CAAC(v64, &qword_1019F66F0, &unk_10146F2E0);
        }

        else
        {
          v70 = sub_1005B981C(&qword_1019F6718, &qword_10146F310);
          (*v222)(v37, v64 + *(v70 + 48), v57);
          (*v217)(v37, 0, 1, v57);
        }

        if ((*v68)(v37, 1, v57) == 1)
        {
          sub_10000CAAC(v37, &qword_1019F6990, &qword_10146D2F0);
        }

        else
        {
          v71 = *v222;
          (*v222)(v220, v37, v57);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v67 = sub_100B356D0(0, *(v67 + 2) + 1, 1, v67);
          }

          v73 = *(v67 + 2);
          v72 = *(v67 + 3);
          if (v73 >= v72 >> 1)
          {
            v67 = sub_100B356D0((v72 > 1), v73 + 1, 1, v67);
          }

          *(v67 + 2) = v73 + 1;
          v57 = v214;
          v71(&v67[((*(v216 + 80) + 32) & ~*(v216 + 80)) + *(v216 + 72) * v73], v220, v214);
          v37 = v213;
          v68 = v215;
        }

        v66 += v221;
        --v63;
      }

      while (v63);

      v45 = v64;
    }

    else
    {

      v67 = _swiftEmptyArrayStorage;
    }

    v74 = v209;
    if (*(v67 + 2))
    {
      (*(v216 + 16))(v209, &v67[(*(v216 + 80) + 32) & ~*(v216 + 80)], v57);
      v75 = v207;
      v76 = v208;
      if (NSDiffableDataSourceSectionSnapshot.contains(_:)())
      {
        v77 = *(*(*&v189[v186] + 16) + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot + 24);
        v78 = *(v77 + 16);

        if (v78 && (v79 = sub_10003E994(v209), (v80 & 1) != 0))
        {
          v81 = v180;
          sub_1000650D4(*(v77 + 56) + *(v181 + 72) * v79, v180, _s4NodeVMa);
          sub_1000650D4(v81, v190, type metadata accessor for CRLBoardLibraryViewModel.Item);
          sub_10000B864(v81, _s4NodeVMa);
          v82 = 0;
        }

        else
        {
          v82 = 1;
        }

        v83 = *v185;
        v84 = v190;
        v85 = v188;
        (*v185)(v190, v82, 1, v188);

        v86 = *v184;
        if ((*v184)(v84, 1, v85) == 1)
        {

          (*v196)(v211, v212);
          (*v195)(v208, v207);
          sub_10000CAAC(v84, &unk_101A15B20, &qword_10146F1E0);
          v57 = v214;
          result = (*v191)(v209, v214);
          v37 = v213;
          v54 = v197;
          v45 = v187;
          goto LABEL_6;
        }

        v87 = v183;
        sub_100065AE0(v84, v183, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v88 = v182;
        sub_1000650D4(v87, v182, type metadata accessor for CRLBoardLibraryViewModel.Item);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v45 = v187;
        if (EnumCaseMultiPayload == 1)
        {
          v221 = v83;
          v90 = v88;
          v91 = v178;
          sub_100065AE0(v90, v178, type metadata accessor for CRLBoardLibraryViewModel.Filter);
          v92 = sub_1005B981C(&qword_1019F3480, &unk_10146F1F0);
          v93 = *(v92 - 8);
          v94 = *(v93 + 48);
          v95 = v93 + 48;
          v96 = v94(v91, 5, v92);
          v97 = v207;
          if (!v96)
          {
            v158 = v94;
            v157 = v95;
            sub_10000B864(v91, type metadata accessor for CRLBoardLibraryViewModel.Folder);
            v98 = v177;
            NSDiffableDataSourceSectionSnapshot.parent(of:)();
            v99 = v98;
            v100 = *v215;
            v101 = v214;
            v102 = (*v215)(v99, 1, v214);
            v156 = v92;
            if (v102 == 1)
            {
              v103 = v168;
              UUID.init(uuidString:)();
              result = (v100)(v103, 1, v101);
              if (result == 1)
              {
                goto LABEL_66;
              }

              (*v222)(v179, v103, v101);
              v104 = v177;
              v105 = v100(v177, 1, v101);
              v45 = v187;
              if (v105 != 1)
              {
                sub_10000CAAC(v104, &qword_1019F6990, &qword_10146D2F0);
              }
            }

            else
            {
              (*v222)(v179, v99, v101);
              v45 = v187;
            }

            v106 = (*(*&v189[v186] + 16) + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot);
            v107 = *v106;
            v108 = v106[1];
            v110 = v106[2];
            v109 = v106[3];
            v162 = *(v109 + 16);
            v206 = v107;

            v164 = v108;

            v163 = v110;

            if (v162 && (v111 = sub_10003E994(v179), (v112 & 1) != 0))
            {
              v113 = v167;
              sub_1000650D4(*(v109 + 56) + *(v181 + 72) * v111, v167, _s4NodeVMa);
              sub_1000650D4(v113, v176, type metadata accessor for CRLBoardLibraryViewModel.Item);
              sub_10000B864(v113, _s4NodeVMa);
              v114 = 0;
            }

            else
            {
              v114 = 1;
            }

            v115 = v176;
            v116 = v188;
            (v221)(v176, v114, 1, v188);

            if (v86(v115, 1, v116) == 1)
            {

              sub_10000CAAC(v115, &unk_101A15B20, &qword_10146F1E0);
              if (qword_1019F2198 != -1)
              {
                swift_once();
              }

              v117 = static OS_os_log.crlSidebar;
              sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
              inited = swift_initStackObject();
              *(inited + 16) = v159;
              sub_10062F8C8(&qword_101A02180, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
              v119 = v179;
              v120 = v214;
              v121 = dispatch thunk of CustomStringConvertible.description.getter();
              v123 = v122;
              *(inited + 56) = &type metadata for String;
              *(inited + 64) = sub_1000053B0();
              *(inited + 32) = v121;
              *(inited + 40) = v123;
              v57 = v120;
              v124 = static os_log_type_t.default.getter();
              sub_100005404(v117, &_mh_execute_header, v124, "Could not find view model item for identifier %@", 48, 2, inited);
              swift_setDeallocating();
              sub_100005070((inited + 32));
              v125 = *v191;
              (*v191)(v119, v57);
              sub_10000B864(v183, type metadata accessor for CRLBoardLibraryViewModel.Item);
              (*v196)(v211, v212);
              (*v195)(v208, v207);
              goto LABEL_61;
            }

            v126 = v173;
            sub_100065AE0(v115, v173, type metadata accessor for CRLBoardLibraryViewModel.Item);
            isa = NSDiffableDataSourceSectionSnapshot._bridgeToObjectiveC()().super.isa;
            v128 = UUID._bridgeToObjectiveC()().super.isa;
            v221 = isa;
            v129 = [(objc_class *)isa childrenOfParent:v128];

            v130 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
            v131 = sub_100F22020(v130);

            if (v131)
            {
              v133 = v131;
            }

            else
            {
              v133 = _swiftEmptyArrayStorage;
            }

            __chkstk_darwin(v132);
            *(&v155 - 2) = v209;
            v134 = v165;
            v206 = sub_10097EF90(sub_100631704, (&v155 - 4), v133);
            v136 = v135;
            v165 = v134;

            v137 = v206;
            if (v136)
            {
              v137 = -1;
            }

            v206 = v137;
            v138 = v169;
            sub_1000650D4(v126, v169, type metadata accessor for CRLBoardLibraryViewModel.Item);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              if (v158(v138, 5, v156))
              {
                v139 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
                goto LABEL_59;
              }

              v153 = v138;
              v154 = v166;
              sub_100065AE0(v153, v166, type metadata accessor for CRLBoardLibraryViewModel.Folder);
              sub_1000650D4(v154, v172, type metadata accessor for CRLFolderIdentifier);
              sub_10000B864(v154, type metadata accessor for CRLBoardLibraryViewModel.Folder);
              v140 = 0;
            }

            else
            {
              v139 = type metadata accessor for CRLBoardLibraryViewModel.Item;
LABEL_59:
              sub_10000B864(v138, v139);
              v140 = 1;
            }

            v141 = type metadata accessor for CRLFolderIdentifier(0);
            v142 = v172;
            (*(*(v141 - 8) + 56))(v172, v140, 1, v141);
            v143 = v174;
            sub_10003DFF8(v142, v174, &qword_1019F33E0, &unk_101468A80);
            v164 = *&v189[v186];
            v144 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v145 = type metadata accessor for TaskPriority();
            (*(*(v145 - 8) + 56))(v175, 1, 1, v145);
            v146 = v170;
            sub_10000BE14(v143, v170, &qword_1019F33E0, &unk_101468A80);
            type metadata accessor for MainActor();
            swift_retain_n();

            v147 = static MainActor.shared.getter();
            v148 = (*(v171 + 80) + 64) & ~*(v171 + 80);
            v149 = (v160 + v148) & 0xFFFFFFFFFFFFFFF8;
            v150 = swift_allocObject();
            v150[2] = v147;
            v150[3] = &protocol witness table for MainActor;
            v150[4] = sub_100631734;
            v151 = v164;
            v150[5] = v144;
            v150[6] = v151;
            v150[7] = v67;
            sub_10003DFF8(v146, v150 + v148, &qword_1019F33E0, &unk_101468A80);
            v152 = v150 + v149;
            *v152 = v206;
            v152[8] = 0;
            sub_10064191C(0, 0, v175, &unk_10146F308, v150);

            sub_10000CAAC(v174, &qword_1019F33E0, &unk_101468A80);
            sub_10000B864(v173, type metadata accessor for CRLBoardLibraryViewModel.Item);
            v125 = *v191;
            v57 = v214;
            (*v191)(v179, v214);
            sub_10000B864(v183, type metadata accessor for CRLBoardLibraryViewModel.Item);
            (*v196)(v211, v212);
            (*v195)(v208, v207);

LABEL_61:
            result = v125(v209, v57);
            v37 = v213;
            goto LABEL_5;
          }

          sub_10000B864(v87, type metadata accessor for CRLBoardLibraryViewModel.Item);
          (*v196)(v211, v212);
          (*v195)(v208, v97);
          sub_10000B864(v91, type metadata accessor for CRLBoardLibraryViewModel.Filter);
          v37 = v213;
          v45 = v187;
        }

        else
        {

          sub_10000B864(v87, type metadata accessor for CRLBoardLibraryViewModel.Item);
          (*v196)(v211, v212);
          (*v195)(v208, v207);
          sub_10000B864(v88, type metadata accessor for CRLBoardLibraryViewModel.Item);
          v37 = v213;
        }

        v57 = v214;
        result = (*v191)(v209, v214);
      }

      else
      {

        (*v196)(v211, v212);
        (*v195)(v76, v75);
        result = (*v191)(v74, v57);
      }
    }

    else
    {

      (*v196)(v211, v212);
      result = (*v195)(v208, v207);
    }

LABEL_5:
    v54 = v197;
LABEL_6:
    v55 = v210 + 1;
    if (v210 + 1 == v201)
    {
      goto LABEL_63;
    }
  }

  __break(1u);
LABEL_66:
  __break(1u);
  return result;
}

void sub_1006270DC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1005B981C(&qword_1019F6720, &qword_10146F318);
  __chkstk_darwin(v3);
  v5 = &v16[-v4];
  sub_10000BE14(a1, &v16[-v4], &qword_1019F6720, &qword_10146F318);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = *(Strong + OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_viewModelController);
      v15 = Strong;

      if (!v14)
      {
        __break(1u);
        return;
      }

      v18 = 0;
      memset(v17, 0, sizeof(v17));
      sub_10086F168(v17, 0, 1);
    }

    sub_10000CAAC(v5, &qword_1019F6720, &qword_10146F318);
    return;
  }

  v6 = *v5;
  if (qword_1019F2128 != -1)
  {
    swift_once();
  }

  v7 = static OS_os_log.crlFolderUI;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *&v17[0] = v6;
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40, &qword_10146F320);
  v9 = String.init<A>(describing:)();
  v11 = v10;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v9;
  *(inited + 40) = v11;
  v12 = static os_log_type_t.error.getter();
  sub_100005404(v7, &_mh_execute_header, v12, "didReorder handler: Encountered error moving items. %@", 54, 2, inited);

  swift_setDeallocating();
  sub_100005070((inited + 32));
}

objc_class *sub_100627324()
{
  v1 = v0;
  v2 = sub_1005B981C(&unk_1019F4CE0, &qword_10146F270);
  __chkstk_darwin(v2 - 8);
  v4 = &v47 - v3;
  v5 = type metadata accessor for UIButton.Configuration();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v47 - v10;
  if (_UISolariumEnabled())
  {
    v12 = objc_opt_self();
    v13 = [v12 mainBundle];
    v14 = String._bridgeToObjectiveC()();
    v15 = String._bridgeToObjectiveC()();
    v16 = [v13 localizedStringForKey:v14 value:v15 table:0];

    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = String._bridgeToObjectiveC()();
    v21 = [objc_opt_self() systemImageNamed:v20];

    sub_100006370(0, &qword_1019F6190, UIAction_ptr);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    sub_100006370(0, &qword_1019F6BF0, UIBarButtonItem_ptr);
    v23 = v22;
    v24 = v21;
    v25.value._countAndFlagsBits = v17;
    v25.value._object = v19;
    v48.value.super.isa = v21;
    v48.is_nil = v22;
    v49.value.super.super.isa = 0;
    v26 = UIBarButtonItem.init(title:image:primaryAction:menu:)(v25, v48, v49, v50).super.super.isa;
    v27 = [v12 mainBundle];
    v28 = String._bridgeToObjectiveC()();
    v29 = String._bridgeToObjectiveC()();
    v30 = [v27 localizedStringForKey:v28 value:v29 table:0];

    if (!v30)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = String._bridgeToObjectiveC()();
    }

    [(objc_class *)v26 setAccessibilityLabel:v30];

    v31 = [v12 mainBundle];
    v32 = String._bridgeToObjectiveC()();
    v33 = String._bridgeToObjectiveC()();
    v34 = [v31 localizedStringForKey:v32 value:v33 table:0];

    if (!v34)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = String._bridgeToObjectiveC()();
    }

    [(objc_class *)v26 setAccessibilityHint:v34];
  }

  else
  {
    static UIButton.Configuration.plain()();
    v35 = [objc_opt_self() mainBundle];
    v36 = String._bridgeToObjectiveC()();
    v37 = String._bridgeToObjectiveC()();
    v38 = [v35 localizedStringForKey:v36 value:v37 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    UIButton.Configuration.title.setter();
    v39 = String._bridgeToObjectiveC()();
    v40 = [objc_opt_self() systemImageNamed:v39];

    UIButton.Configuration.image.setter();
    UIButton.Configuration.imagePlacement.setter();
    v41 = sub_100627A90(v1);
    v42 = [objc_opt_self() configurationWithFont:v41 scale:-1];
    UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
    *(swift_allocObject() + 16) = v41;
    v43 = v41;
    UIConfigurationTextAttributesTransformer.init(_:)();
    v44 = type metadata accessor for UIConfigurationTextAttributesTransformer();
    (*(*(v44 - 8) + 56))(v4, 0, 1, v44);
    UIButton.Configuration.titleTextAttributesTransformer.setter();
    sub_100006370(0, &qword_1019F6E10, UIButton_ptr);
    (*(v6 + 16))(v8, v11, v5);
    sub_100006370(0, &qword_1019F6190, UIAction_ptr);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v45 = UIButton.init(configuration:primaryAction:)();
    [v45 setShowsLargeContentViewer:1];
    v26 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v45];

    (*(v6 + 8))(v11, v5);
  }

  return v26;
}

id sub_100627A90(void *a1)
{
  if ([objc_opt_self() crl_phoneUI])
  {
    v2 = [objc_opt_self() crl_deviceIsLandscape];
  }

  else
  {
    v2 = 0;
  }

  v3 = [a1 traitCollection];
  v4 = [a1 traitCollection];
  v5 = [v4 preferredContentSizeCategory];

  if (v2)
  {
    v6 = &UIContentSizeCategoryAccessibilityMedium;
  }

  else
  {
    v6 = &UIContentSizeCategoryAccessibilityExtraLarge;
  }

  v7 = *v6;
  v8 = static UIContentSizeCategory.> infix(_:_:)();

  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_10146CE00;
    *(v9 + 32) = [a1 traitCollection];
    v10 = objc_opt_self();
    *(v9 + 40) = [v10 traitCollectionWithPreferredContentSizeCategory:v7];
    sub_100006370(0, &qword_1019F66C0, UITraitCollection_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v12 = [v10 traitCollectionWithTraitsFromCollections:isa];

    v3 = v12;
  }

  v13 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleBody compatibleWithTraitCollection:v3];
  v14 = objc_opt_self();
  [v13 pointSize];
  v15 = [v14 systemFontOfSize:? weight:?];

  return v15;
}

uint64_t sub_100627CDC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AttributeContainer();
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  sub_1005D9028();
  v7 = a2;
  return AttributeContainer.subscript.setter();
}

void sub_100627D7C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = Strong + OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 8);
      ObjectType = swift_getObjectType();
      (*(v5 + 40))(v3, ObjectType, v5);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_100627E28(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC8Freeform18iCloudStatusFooter_iCloudStatusLabel;
  *&v4[v9] = [objc_allocWithZone(UILabel) init];
  *&v4[OBJC_IVAR____TtC8Freeform18iCloudStatusFooter_syncDidEndObserver] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform18iCloudStatusFooter_syncDidBeginObserver] = 0;
  v60.receiver = v4;
  v60.super_class = type metadata accessor for iCloudStatusFooter();
  v10 = objc_msgSendSuper2(&v60, "initWithFrame:", a1, a2, a3, a4);
  v11 = OBJC_IVAR____TtC8Freeform18iCloudStatusFooter_iCloudStatusLabel;
  v12 = *&v10[OBJC_IVAR____TtC8Freeform18iCloudStatusFooter_iCloudStatusLabel];
  v13 = v10;
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v10[v11] setNumberOfLines:1];
  [*&v10[v11] setTextAlignment:1];
  v14 = *&v10[v11];
  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 mainBundle];
  v18 = String._bridgeToObjectiveC()();
  v19 = String._bridgeToObjectiveC()();
  v20 = [v17 localizedStringForKey:v18 value:v19 table:0];

  if (!v20)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = String._bridgeToObjectiveC()();
  }

  [v16 setText:v20];

  v21 = *&v10[v11];
  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 preferredFontForTextStyle:UIFontTextStyleFootnote compatibleWithTraitCollection:0];
  [v23 setFont:v24];

  [*&v10[v11] setAdjustsFontForContentSizeCategory:1];
  [*&v10[v11] setAdjustsFontSizeToFitWidth:1];
  v25 = *&v10[v11];
  v26 = v13;
  [v26 addSubview:v25];
  v27 = objc_opt_self();
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_10146E8A0;
  v29 = [v26 centerXAnchor];
  v30 = [*&v10[v11] centerXAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];

  *(v28 + 32) = v31;
  v32 = [v26 leadingAnchor];

  v33 = [*&v10[v11] leadingAnchor];
  v34 = [v32 constraintEqualToAnchor:v33];

  *(v28 + 40) = v34;
  v35 = [*&v10[v11] topAnchor];
  v36 = [v26 topAnchor];

  v37 = [v35 constraintEqualToAnchor:v36 constant:0.0];
  *(v28 + 48) = v37;
  sub_100006370(0, &qword_1019F4D70, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v27 activateConstraints:isa];

  v39 = objc_opt_self();
  v40 = [v39 defaultCenter];
  if (qword_1019F2568 != -1)
  {
    swift_once();
  }

  v41 = qword_101AD86A0;
  v42 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v58 = sub_10062B2EC;
  v59 = v42;
  v54 = _NSConcreteStackBlock;
  v55 = *"";
  v56 = sub_100059694;
  v57 = &unk_10187DB70;
  v43 = _Block_copy(&v54);
  v44 = v26;

  v45 = [v40 addObserverForName:v41 object:0 queue:0 usingBlock:v43];
  _Block_release(v43);

  *&v44[OBJC_IVAR____TtC8Freeform18iCloudStatusFooter_syncDidBeginObserver] = v45;
  swift_unknownObjectRelease();
  v46 = [v39 defaultCenter];
  if (qword_1019F2560 != -1)
  {
    swift_once();
  }

  v47 = qword_101AD8698;
  v48 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v58 = sub_10062B324;
  v59 = v48;
  v54 = _NSConcreteStackBlock;
  v55 = *"";
  v56 = sub_100059694;
  v57 = &unk_10187DB98;
  v49 = _Block_copy(&v54);

  v50 = [v46 addObserverForName:v47 object:0 queue:0 usingBlock:v49];
  _Block_release(v49);

  *&v44[OBJC_IVAR____TtC8Freeform18iCloudStatusFooter_syncDidEndObserver] = v50;
  swift_unknownObjectRelease();
  v51 = [objc_opt_self() sharedApplication];
  v52 = [v51 delegate];

  if (v52)
  {
    type metadata accessor for CRLiOSAppDelegate();
    swift_dynamicCastClassUnconditional();
    v53 = sub_10006D030();
    swift_unknownObjectRelease();
    [*&v10[v11] setHidden:(v53 & 1) == 0];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100628584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  type metadata accessor for MainActor();
  *(v4 + 48) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10062861C, v6, v5);
}

uint64_t sub_10062861C()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [*(Strong + OBJC_IVAR____TtC8Freeform18iCloudStatusFooter_iCloudStatusLabel) setHidden:0];
  }

  v3 = *(v0 + 8);

  return v3();
}

double sub_1006286C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  type metadata accessor for MainActor();

  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = a2;
  sub_10064191C(0, 0, v8, a4, v11);

  return result;
}

uint64_t sub_1006287E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  type metadata accessor for MainActor();
  *(v4 + 48) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10062887C, v6, v5);
}

uint64_t sub_10062887C()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [*(Strong + OBJC_IVAR____TtC8Freeform18iCloudStatusFooter_iCloudStatusLabel) setHidden:1];
  }

  v3 = *(v0 + 8);

  return v3();
}

id iCloudStatusFooter.__deallocating_deinit()
{
  v1 = *&v0[OBJC_IVAR____TtC8Freeform18iCloudStatusFooter_syncDidEndObserver];
  if (v1)
  {
    v2 = objc_opt_self();
    swift_unknownObjectRetain();
    v3 = [v2 defaultCenter];
    [v3 removeObserver:v1];
    swift_unknownObjectRelease();
  }

  v4 = *&v0[OBJC_IVAR____TtC8Freeform18iCloudStatusFooter_syncDidBeginObserver];
  if (v4)
  {
    v5 = objc_opt_self();
    swift_unknownObjectRetain();
    v6 = [v5 defaultCenter];
    [v6 removeObserver:v4];
    swift_unknownObjectRelease();
  }

  v8.receiver = v0;
  v8.super_class = type metadata accessor for iCloudStatusFooter();
  return objc_msgSendSuper2(&v8, "dealloc");
}

char *sub_100628BBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v81 = type metadata accessor for CRLFolderIdentifier(0);
  v79 = *(v81 - 1);
  v4 = *(v79 + 8);
  __chkstk_darwin(v81);
  v5 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v75 - v7;
  v9 = sub_1005B981C(&unk_101A15B20, &qword_10146F1E0);
  __chkstk_darwin(v9 - 8);
  v11 = &v75 - v10;
  v12 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v82 = *(v12 - 8);
  v13 = v82[8];
  __chkstk_darwin(v12);
  v14 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v80 = &v75 - v16;
  __chkstk_darwin(v17);
  v19 = &v75 - v18;
  v20 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  __chkstk_darwin(v20 - 8);
  v84 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v23 = result;
    sub_1000650D4(a3, v19, type metadata accessor for CRLBoardLibraryViewModel.Item);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v24 = sub_1005B981C(&qword_1019F3480, &unk_10146F1F0);
      if ((*(*(v24 - 8) + 48))(v19, 5, v24))
      {

        v25 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
      }

      else
      {
        v28 = v19;
        v29 = v84;
        sub_100065AE0(v28, v84, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        v30 = *(*&v23[OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_actionAlertController] + 16);
        v83 = *&v23[OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_actionAlertController];
        v31 = (v30 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot);
        v32 = v31[1];
        v91 = *v31;
        v92 = v32;
        v93 = v31[2];
        v94 = v91;
        v95 = v32;
        v96 = v93;

        v78 = v23;
        sub_10000BE14(&v94, &aBlock, &unk_101A23CC0, &unk_1014712F0);
        sub_10000BE14(&v94 + 8, &aBlock, &unk_101A23CC0, &unk_1014712F0);
        sub_10000BE14(&v95, &aBlock, &qword_1019F66A8, &unk_10146F220);
        sub_10000BE14(&v95 + 8, &aBlock, &unk_101A23CD0, &unk_101471300);
        sub_10000BE14(&v96, &aBlock, &qword_1019FFF30, &unk_10146F230);
        sub_10000BE14(&v96 + 8, &aBlock, &unk_101A23CE0, &qword_101471310);
        sub_100825120(v29, v11);
        sub_10000CAAC(&v94, &unk_101A23CC0, &unk_1014712F0);
        sub_10000CAAC(&v94 + 8, &unk_101A23CC0, &unk_1014712F0);
        sub_10000CAAC(&v95, &qword_1019F66A8, &unk_10146F220);
        sub_10000CAAC(&v95 + 8, &unk_101A23CD0, &unk_101471300);
        sub_10000CAAC(&v96, &qword_1019FFF30, &unk_10146F230);
        sub_10000CAAC(&v96 + 8, &unk_101A23CE0, &qword_101471310);
        v33 = v82;
        v34 = v12;
        v35 = v83;
        if ((v82[6])(v11, 1, v34) != 1)
        {
          v43 = v80;
          sub_100065AE0(v11, v80, type metadata accessor for CRLBoardLibraryViewModel.Item);
          v76 = sub_100F88220();
          v77 = v44;
          sub_1000650D4(v43, v14, type metadata accessor for CRLBoardLibraryViewModel.Item);
          sub_1000650D4(v84, v5, type metadata accessor for CRLFolderIdentifier);
          v45 = (*(v33 + 80) + 24) & ~*(v33 + 80);
          v46 = (v13 + v79[80] + v45) & ~v79[80];
          v47 = (v4 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
          v48 = swift_allocObject();
          *(v48 + 16) = v35;
          sub_100065AE0(v14, v48 + v45, type metadata accessor for CRLBoardLibraryViewModel.Item);
          sub_100065AE0(v5, v48 + v46, type metadata accessor for CRLFolderIdentifier);
          v49 = (v48 + v47);
          *v49 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:);
          v49[1] = 0;
          v50 = v78;
          *(v48 + ((v47 + 23) & 0xFFFFFFFFFFFFFFF8)) = v78;

          v79 = v50;
          v51 = String._bridgeToObjectiveC()();
          v52 = String._bridgeToObjectiveC()();
          v53 = [objc_opt_self() alertControllerWithTitle:v51 message:v52 preferredStyle:1];

          v82 = objc_opt_self();
          v54 = 0;
          v55 = 0;
          v81 = &v87;
          do
          {
            v57 = v54;
            v58 = *(&off_101877470 + v55 + 32);
            v59 = [objc_opt_self() mainBundle];
            v60 = String._bridgeToObjectiveC()();
            v61 = String._bridgeToObjectiveC()();
            v62 = [v59 localizedStringForKey:v60 value:v61 table:0];

            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v63 = swift_allocObject();
            *(v63 + 16) = v58;
            *(v63 + 24) = sub_10063009C;
            *(v63 + 32) = v48;
            *(v63 + 40) = v53;

            v64 = v53;
            v65 = String._bridgeToObjectiveC()();

            v89 = sub_1006301C0;
            v90 = v63;
            aBlock = _NSConcreteStackBlock;
            v86 = *"";
            v87 = sub_10068B39C;
            v88 = &unk_10187DDC8;
            v66 = _Block_copy(&aBlock);

            v67 = [v82 actionWithTitle:v65 style:(v58 & 1) != 0 handler:v66];
            _Block_release(v66);

            [v64 addAction:v67];
            if ((v58 & 1) == 0)
            {
              [v64 setPreferredAction:v67];
            }

            v54 = 1;
            v55 = &_mh_execute_header.magic + 1;
            v56 = v84;
          }

          while ((v57 & 1) == 0);
          v68 = swift_allocObject();
          v69 = v77;
          *(v68 + 16) = v76;
          *(v68 + 24) = v69;
          v89 = sub_1006301C4;
          v90 = v68;
          aBlock = _NSConcreteStackBlock;
          v86 = *"";
          v87 = sub_10068B39C;
          v88 = &unk_10187DE18;
          v70 = _Block_copy(&aBlock);

          [v64 addTextFieldWithConfigurationHandler:v70];
          _Block_release(v70);
          v71 = swift_allocObject();
          *(v71 + 16) = v64;
          v89 = sub_1006301CC;
          v90 = v71;
          aBlock = _NSConcreteStackBlock;
          v86 = *"";
          v87 = sub_100007638;
          v88 = &unk_10187DE68;
          v72 = _Block_copy(&aBlock);
          v73 = v64;

          v74 = v79;
          [v79 presentViewController:v73 animated:1 completion:v72];
          _Block_release(v72);
          sub_1011047E4(v73);

          sub_10000B864(v80, type metadata accessor for CRLBoardLibraryViewModel.Item);
          v26 = type metadata accessor for CRLBoardLibraryViewModel.Folder;
          v27 = v56;
          return sub_10000B864(v27, v26);
        }

        v36 = v78;
        sub_10000CAAC(v11, &unk_101A15B20, &qword_10146F1E0);
        if (qword_1019F2130 != -1)
        {
          swift_once();
        }

        v37 = static OS_os_log.crlBoardLibrary;
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146C6B0;
        v19 = v84;
        sub_1000650D4(v84, v8, type metadata accessor for CRLFolderIdentifier);
        v39 = String.init<A>(describing:)();
        v41 = v40;
        *(inited + 56) = &type metadata for String;
        *(inited + 64) = sub_1000053B0();
        *(inited + 32) = v39;
        *(inited + 40) = v41;
        v42 = static os_log_type_t.error.getter();
        sub_100005404(v37, &_mh_execute_header, v42, "Trying to rename folder, but could not find its node with folder identifier %@.", 79, 2, inited);

        swift_setDeallocating();
        sub_100005070((inited + 32));
        v25 = type metadata accessor for CRLBoardLibraryViewModel.Folder;
      }
    }

    else
    {

      v25 = type metadata accessor for CRLBoardLibraryViewModel.Item;
    }

    v26 = v25;
    v27 = v19;
    return sub_10000B864(v27, v26);
  }

  return result;
}

char *sub_100629898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1005B981C(&qword_1019F33E0, &unk_101468A80);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v7 = &v33 - v6;
  v8 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v33 - v9;
  v11 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  __chkstk_darwin(v14);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18 = result;
    sub_1000650D4(a3, v13, type metadata accessor for CRLBoardLibraryViewModel.Item);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v19 = sub_1005B981C(&qword_1019F3480, &unk_10146F1F0);
      if (!(*(*(v19 - 8) + 48))(v13, 5, v19))
      {
        sub_100065AE0(v13, v16, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        v34 = *&v18[OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_actionAlertController];
        sub_1005B981C(&qword_1019F66B0, &qword_10146F240);
        v23 = *(type metadata accessor for CRLFolderIdentifier(0) - 8);
        v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_10146C6B0;
        sub_1000650D4(v16, v25 + v24, type metadata accessor for CRLFolderIdentifier);
        v26 = v34;

        v35 = sub_1005C19E0(v25);
        swift_setDeallocating();
        sub_10000B864(v25 + v24, type metadata accessor for CRLFolderIdentifier);
        swift_deallocClassInstance();
        v27 = *(v14 + 20);
        v28 = type metadata accessor for TaskPriority();
        (*(*(v28 - 8) + 56))(v10, 1, 1, v28);
        sub_10000BE14(&v16[v27], v7, &qword_1019F33E0, &unk_101468A80);
        type metadata accessor for MainActor();

        v29 = static MainActor.shared.getter();
        v30 = (*(v5 + 80) + 64) & ~*(v5 + 80);
        v31 = swift_allocObject();
        v31[2] = v29;
        v31[3] = &protocol witness table for MainActor;
        v31[4] = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:);
        v31[5] = 0;
        v32 = v35;
        v31[6] = v26;
        v31[7] = v32;
        sub_10003DFF8(v7, v31 + v30, &qword_1019F33E0, &unk_101468A80);
        sub_10064191C(0, 0, v10, &unk_10146F248, v31);

        v21 = type metadata accessor for CRLBoardLibraryViewModel.Folder;
        v22 = v16;
        return sub_10000B864(v22, v21);
      }

      v20 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
    }

    else
    {

      v20 = type metadata accessor for CRLBoardLibraryViewModel.Item;
    }

    v21 = v20;
    v22 = v13;
    return sub_10000B864(v22, v21);
  }

  return result;
}

char *sub_100629D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v27 - v5;
  v7 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    sub_1000650D4(a3, v9, type metadata accessor for CRLBoardLibraryViewModel.Item);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v15 = sub_1005B981C(&qword_1019F3480, &unk_10146F1F0);
      if (!(*(*(v15 - 8) + 48))(v9, 5, v15))
      {
        sub_100065AE0(v9, v12, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        v19 = *&v14[OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_actionAlertController];
        sub_1005B981C(&qword_1019F66B0, &qword_10146F240);
        v20 = *(type metadata accessor for CRLFolderIdentifier(0) - 8);
        v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_10146C6B0;
        sub_1000650D4(v12, v22 + v21, type metadata accessor for CRLFolderIdentifier);

        v23 = sub_1005C19E0(v22);
        swift_setDeallocating();
        sub_10000B864(v22 + v21, type metadata accessor for CRLFolderIdentifier);
        swift_deallocClassInstance();
        v24 = type metadata accessor for TaskPriority();
        (*(*(v24 - 8) + 56))(v6, 1, 1, v24);
        type metadata accessor for MainActor();

        v25 = static MainActor.shared.getter();
        v26 = swift_allocObject();
        v26[2] = v25;
        v26[3] = &protocol witness table for MainActor;
        v26[4] = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:);
        v26[5] = 0;
        v26[6] = v19;
        v26[7] = v23;
        sub_10064191C(0, 0, v6, &unk_10146F250, v26);

        v17 = type metadata accessor for CRLBoardLibraryViewModel.Folder;
        v18 = v12;
        return sub_10000B864(v18, v17);
      }

      v16 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
    }

    else
    {

      v16 = type metadata accessor for CRLBoardLibraryViewModel.Item;
    }

    v17 = v16;
    v18 = v9;
    return sub_10000B864(v18, v17);
  }

  return result;
}

char *sub_10062A194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1005B981C(&unk_101A15B20, &qword_10146F1E0);
  __chkstk_darwin(v4 - 8);
  v101 = &v93 - v5;
  v6 = type metadata accessor for CRLFolderIdentifier(0);
  v99 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for UUID();
  v105 = *(v106 - 8);
  __chkstk_darwin(v106);
  v100 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v104 = &v93 - v11;
  v12 = sub_1005B981C(&qword_1019F33E0, &unk_101468A80);
  v97 = *(v12 - 8);
  v13 = *(v97 + 64);
  __chkstk_darwin(v12 - 8);
  v98 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v93 - v15;
  __chkstk_darwin(v17);
  v107 = &v93 - v18;
  v19 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v108 = *(v19 - 8);
  v20 = v108[8];
  __chkstk_darwin(v19);
  v96 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v102 = &v93 - v22;
  __chkstk_darwin(v23);
  v25 = &v93 - v24;
  __chkstk_darwin(v26);
  v28 = &v93 - v27;
  v29 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  __chkstk_darwin(v29 - 8);
  v103 = &v93 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v32 = result;
    sub_1000650D4(a3, v28, type metadata accessor for CRLBoardLibraryViewModel.Item);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v33 = sub_1005B981C(&qword_1019F3480, &unk_10146F1F0);
      if (!(*(*(v33 - 8) + 48))(v28, 5, v33))
      {
        v94 = v19;
        v37 = v28;
        v38 = v103;
        sub_100065AE0(v37, v103, type metadata accessor for CRLBoardLibraryViewModel.Folder);
        v39 = *&v32[OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_actionAlertController];
        v40 = v107;
        sub_1000650D4(v38, v107, type metadata accessor for CRLFolderIdentifier);
        v41 = v99;
        (*(v99 + 56))(v40, 0, 1, v6);
        sub_10000BE14(v40, v16, &qword_1019F33E0, &unk_101468A80);
        if ((*(v41 + 48))(v16, 1, v6) == 1)
        {

          v42 = v32;
          sub_10000CAAC(v16, &qword_1019F33E0, &unk_101468A80);
          *v25 = 1;
          swift_storeEnumTagMultiPayload();
          v43 = v100;
          sub_100F87E04(v100);
          sub_10000B864(v25, type metadata accessor for CRLBoardLibraryViewModel.Item);
          v44 = v106;
          v45 = v105;
        }

        else
        {
          sub_100065AE0(v16, v8, type metadata accessor for CRLFolderIdentifier);
          v45 = v105;
          v43 = v100;
          v44 = v106;
          (*(v105 + 16))(v100, v8, v106);

          v46 = v32;
          sub_10000B864(v8, type metadata accessor for CRLFolderIdentifier);
        }

        v95 = v39;
        v47 = v104;
        (*(v45 + 32))(v104, v43, v44);
        v48 = (*(v39 + 16) + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot);
        v49 = v48[1];
        v115 = *v48;
        v116 = v49;
        v117 = v48[2];
        v118 = v115;
        v119 = v49;
        v120 = v117;
        sub_10000BE14(&v118, &aBlock, &unk_101A23CC0, &unk_1014712F0);
        sub_10000BE14(&v118 + 8, &aBlock, &unk_101A23CC0, &unk_1014712F0);
        sub_10000BE14(&v119, &aBlock, &qword_1019F66A8, &unk_10146F220);
        sub_10000BE14(&v119 + 8, &aBlock, &unk_101A23CD0, &unk_101471300);
        sub_10000BE14(&v120, &aBlock, &qword_1019FFF30, &unk_10146F230);
        sub_10000BE14(&v120 + 8, &aBlock, &unk_101A23CE0, &qword_101471310);
        v50 = v101;
        sub_100825120(v47, v101);
        sub_10000CAAC(&v118, &unk_101A23CC0, &unk_1014712F0);
        sub_10000CAAC(&v118 + 8, &unk_101A23CC0, &unk_1014712F0);
        sub_10000CAAC(&v119, &qword_1019F66A8, &unk_10146F220);
        sub_10000CAAC(&v119 + 8, &unk_101A23CD0, &unk_101471300);
        sub_10000CAAC(&v120, &qword_1019FFF30, &unk_10146F230);
        sub_10000CAAC(&v120 + 8, &unk_101A23CE0, &qword_101471310);
        if ((v108[6])(v50, 1, v94) == 1)
        {
          sub_10000CAAC(v50, &unk_101A15B20, &qword_10146F1E0);
          if (qword_1019F2130 != -1)
          {
            swift_once();
          }

          v51 = static OS_os_log.crlBoardLibrary;
          sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10146C6B0;
          sub_10062F8C8(&qword_101A02180, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v53 = v104;
          v54 = v106;
          v55 = dispatch thunk of CustomStringConvertible.description.getter();
          v57 = v56;
          *(inited + 56) = &type metadata for String;
          *(inited + 64) = sub_1000053B0();
          *(inited + 32) = v55;
          *(inited + 40) = v57;
          v58 = static os_log_type_t.error.getter();
          sub_100005404(v51, &_mh_execute_header, v58, "Trying to create new folder, but could not find its parent node with item identifier %@.", 88, 2, inited);

          swift_setDeallocating();
          sub_100005070((inited + 32));
          (*(v105 + 8))(v53, v54);
        }

        else
        {
          v93 = type metadata accessor for CRLBoardLibraryViewModel.Item;
          v59 = v102;
          sub_100065AE0(v50, v102, type metadata accessor for CRLBoardLibraryViewModel.Item);
          v94 = "with item identifier %@.";
          v60 = *(*(v95 + 16) + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot + 24);

          v99 = sub_100831CE8(0x646C6F462077654ELL, 0xEA00000000007265, v59, v60);
          v100 = v61;

          v62 = v96;
          sub_1000650D4(v59, v96, type metadata accessor for CRLBoardLibraryViewModel.Item);
          v63 = v98;
          sub_10000BE14(v107, v98, &qword_1019F33E0, &unk_101468A80);
          v64 = (*(v108 + 80) + 24) & ~*(v108 + 80);
          v65 = (v20 + *(v97 + 80) + v64) & ~*(v97 + 80);
          v66 = (v13 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
          v67 = (v66 + 15) & 0xFFFFFFFFFFFFFFF8;
          v68 = swift_allocObject();
          *(v68 + 16) = v95;
          sub_100065AE0(v62, v68 + v64, v93);
          sub_10003DFF8(v63, v68 + v65, &qword_1019F33E0, &unk_101468A80);
          *(v68 + v66) = _swiftEmptySetSingleton;
          v69 = (v68 + v67);
          *v69 = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:);
          v69[1] = 0;
          *(v68 + ((v67 + 23) & 0xFFFFFFFFFFFFFFF8)) = v32;

          v101 = v32;
          v70 = String._bridgeToObjectiveC()();
          v71 = String._bridgeToObjectiveC()();
          v72 = [objc_opt_self() alertControllerWithTitle:v70 message:v71 preferredStyle:1];

          v108 = objc_opt_self();
          v73 = 0;
          v74 = 0;
          do
          {
            v75 = v73;
            v76 = *(&off_101877498 + v74 + 32);
            v77 = [objc_opt_self() mainBundle];
            v78 = String._bridgeToObjectiveC()();
            v79 = String._bridgeToObjectiveC()();
            v80 = [v77 localizedStringForKey:v78 value:v79 table:0];

            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v81 = swift_allocObject();
            *(v81 + 16) = v76;
            *(v81 + 24) = sub_100631078;
            *(v81 + 32) = v68;
            *(v81 + 40) = v72;

            v82 = v72;
            v83 = String._bridgeToObjectiveC()();

            v113 = sub_10063185C;
            v114 = v81;
            aBlock = _NSConcreteStackBlock;
            v110 = *"";
            v111 = sub_10068B39C;
            v112 = &unk_10187DF30;
            v84 = _Block_copy(&aBlock);

            v85 = [v108 actionWithTitle:v83 style:(v76 & 1) != 0 handler:v84];
            _Block_release(v84);

            [v82 addAction:v85];
            if ((v76 & 1) == 0)
            {
              [v82 setPreferredAction:v85];
            }

            v73 = 1;
            v74 = &_mh_execute_header.magic + 1;
          }

          while ((v75 & 1) == 0);
          v86 = swift_allocObject();
          v87 = v100;
          *(v86 + 16) = v99;
          *(v86 + 24) = v87;
          v113 = sub_100631864;
          v114 = v86;
          aBlock = _NSConcreteStackBlock;
          v110 = *"";
          v111 = sub_10068B39C;
          v112 = &unk_10187DF80;
          v88 = _Block_copy(&aBlock);

          [v82 addTextFieldWithConfigurationHandler:v88];
          _Block_release(v88);
          v89 = swift_allocObject();
          *(v89 + 16) = v82;
          v113 = sub_100631840;
          v114 = v89;
          aBlock = _NSConcreteStackBlock;
          v110 = *"";
          v111 = sub_100007638;
          v112 = &unk_10187DFD0;
          v90 = _Block_copy(&aBlock);
          v91 = v82;

          v92 = v101;
          [v101 presentViewController:v91 animated:1 completion:v90];
          _Block_release(v90);
          sub_1011047E4(v91);

          sub_10000B864(v102, type metadata accessor for CRLBoardLibraryViewModel.Item);
          (*(v105 + 8))(v104, v106);
        }

        sub_10000CAAC(v107, &qword_1019F33E0, &unk_101468A80);
        v35 = type metadata accessor for CRLBoardLibraryViewModel.Folder;
        v36 = v103;
        return sub_10000B864(v36, v35);
      }

      v34 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
    }

    else
    {

      v34 = type metadata accessor for CRLBoardLibraryViewModel.Item;
    }

    v35 = v34;
    v36 = v28;
    return sub_10000B864(v36, v35);
  }

  return result;
}

uint64_t sub_10062B35C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D3D4;

  return sub_1006287E4(a1, v4, v5, v6);
}

uint64_t sub_10062B410(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D4C8;

  return sub_100628584(a1, v4, v5, v6);
}

void sub_10062B4C4()
{
  *(v0 + OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_viewModelController) = 0;
  v1 = OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_selectedItem;
  v2 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_syncDidEndObserver) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_syncDidBeginObserver) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_highlightSyncDidEndObserver) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_highlightSyncDidBeginObserver) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_pinnedBottomView) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_moreOptionsBarButton) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_isFetchingChanges) = 0;
  *(v0 + OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_isFetchingHighlights) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10062B5F0()
{
  v1 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1005B981C(&unk_101A15B20, &qword_10146F1E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v18[-v6];
  if (qword_1019F2198 != -1)
  {
    swift_once();
  }

  v8 = static OS_os_log.crlSidebar;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v10 = OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_selectedItem;
  swift_beginAccess();
  sub_10000BE14(v0 + v10, v7, &unk_101A15B20, &qword_10146F1E0);
  if ((*(v2 + 48))(v7, 1, v1))
  {
    sub_10000CAAC(v7, &unk_101A15B20, &qword_10146F1E0);
    v11 = 0;
    v12 = 0;
  }

  else
  {
    sub_1000650D4(v7, v4, type metadata accessor for CRLBoardLibraryViewModel.Item);
    sub_10000CAAC(v7, &unk_101A15B20, &qword_10146F1E0);
    v11 = sub_100F88220();
    v12 = v13;
    sub_10000B864(v4, type metadata accessor for CRLBoardLibraryViewModel.Item);
  }

  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  v14 = 1162760014;
  if (v12)
  {
    v14 = v11;
  }

  v15 = 0xE400000000000000;
  if (v12)
  {
    v15 = v12;
  }

  *(inited + 32) = v14;
  *(inited + 40) = v15;
  v16 = static os_log_type_t.default.getter();
  sub_100005404(v8, &_mh_execute_header, v16, "selectedItem before view model update: %@", 41, 2, inited);
  swift_setDeallocating();
  return sub_100005070((inited + 32));
}

uint64_t sub_10062B8AC()
{
  v1 = v0;
  v2 = sub_1005B981C(&unk_101A15B20, &qword_10146F1E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v21 - v3;
  v5 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v0 navigationController];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 navigationBar];

    if (v12)
    {
      [v12 setPrefersLargeTitles:1];
      sub_1005B981C(&unk_101A11100, &unk_101471490);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      *(inited + 32) = NSForegroundColorAttributeName;
      v14 = NSForegroundColorAttributeName;
      v15 = [v12 tintColor];
      *(inited + 64) = sub_1005B981C(&qword_1019F66B8, &unk_10146F260);
      *(inited + 40) = v15;
      sub_10006E310(inited);
      swift_setDeallocating();
      sub_10000CAAC(inited + 32, &unk_101A0DE70, "nd%");
      type metadata accessor for Key(0);
      sub_10062F8C8(&qword_1019F34A0, type metadata accessor for Key, byte_101467F70);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v12 setLargeTitleTextAttributes:isa];
    }
  }

  sub_10061C670();
  v17 = &v1[OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v18 = *(v17 + 1);
    ObjectType = swift_getObjectType();
    (*(v18 + 8))(v1, ObjectType, v18);
    swift_unknownObjectRelease();
    if ((*(v6 + 48))(v4, 1, v5) != 1)
    {
      sub_100065AE0(v4, v9, type metadata accessor for CRLBoardLibraryViewModel.Item);
      sub_10061D55C(v9, 0);
      return sub_10000B864(v9, type metadata accessor for CRLBoardLibraryViewModel.Item);
    }
  }

  else
  {
    (*(v6 + 56))(v4, 1, 1, v5);
  }

  return sub_10000CAAC(v4, &unk_101A15B20, &qword_10146F1E0);
}

void sub_10062BC3C(uint64_t a1)
{
  v2 = sub_1005B981C(&unk_101A15B20, &qword_10146F1E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v54 - v3;
  v5 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v54 - v10;
  if (!*(v1 + OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_viewModelController))
  {
    __break(1u);
    return;
  }

  sub_1008701F0(v4);

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10000CAAC(v4, &unk_101A15B20, &qword_10146F1E0);
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    type metadata accessor for IndexPath();
    sub_10062F8C8(&qword_101A23D10, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
    v13 = inited;
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = &type metadata for String;
    v13[7] = &type metadata for String;
    v18 = sub_1000053B0();
    v13[4] = v14;
    v56 = v18;
    v57 = v13 + 4;
    v13[8] = v18;
    v13[5] = v16;
    v55 = objc_opt_self();
    LODWORD(v19) = [v55 _atomicIncrementAssertCount];
    v58 = [objc_allocWithZone(NSString) init];
    sub_100604538(v13, &v58, "Bad index path: %@", 18, 2u);
    StaticString.description.getter("collectionView(_:shouldSelectItemAt:)", 37, 2);
    v20 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSSidebarViewController.swift", 97, 2);
    v21 = String._bridgeToObjectiveC()();

    v22 = [v21 lastPathComponent];

    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v23;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_37;
    }

    while (1)
    {
      v24 = static OS_os_log.crlAssert;
      v25 = swift_initStackObject();
      *(v25 + 16) = xmmword_10146CA70;
      *(v25 + 56) = &type metadata for Int32;
      *(v25 + 64) = &protocol witness table for Int32;
      *(v25 + 32) = v19;
      v26 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(v25 + 96) = v26;
      v27 = sub_1005CF04C();
      *(v25 + 72) = v20;
      v28 = v56;
      *(v25 + 136) = v17;
      *(v25 + 144) = v28;
      *(v25 + 104) = v27;
      *(v25 + 112) = v4;
      *(v25 + 120) = v11;
      *(v25 + 176) = &type metadata for UInt;
      *(v25 + 184) = &protocol witness table for UInt;
      *(v25 + 152) = 297;
      v29 = v58;
      *(v25 + 216) = v26;
      *(v25 + 224) = v27;
      *(v25 + 192) = v29;
      v30 = v20;
      v31 = v29;
      v32 = static os_log_type_t.error.getter();
      sub_100005404(v24, &_mh_execute_header, v32, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v25);
      swift_setDeallocating();
      v56 = sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v33 = static os_log_type_t.error.getter();
      sub_100005404(v24, &_mh_execute_header, v33, "Bad index path: %@", 18, 2, v13);

      type metadata accessor for __VaListBuilder();
      v20 = swift_allocObject();
      v20[2] = 8;
      v20[3] = 0;
      v34 = v20 + 3;
      v20[4] = 0;
      v20[5] = 0;
      v11 = v13[2];
      if (!v11)
      {
LABEL_31:
        v50 = __VaListBuilder.va_list()();
        StaticString.description.getter("collectionView(_:shouldSelectItemAt:)", 37, 2);
        v51 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSSidebarViewController.swift", 97, 2);
        v52 = String._bridgeToObjectiveC()();

        StaticString.description.getter("Bad index path: %@", 18, 2);
        v53 = String._bridgeToObjectiveC()();

        [v55 handleFailureInFunction:v51 file:v52 lineNumber:297 isFatal:0 format:v53 args:v50];

        swift_setDeallocating();
        swift_arrayDestroy();
        return;
      }

      v35 = 0;
      v17 = 40;
      while (1)
      {
        v36 = &v57[5 * v35];
        v4 = v36[3];
        LODWORD(v19) = sub_100020E58(v36, v4);
        v37 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v8 = *v34;
        v38 = *(v37 + 16);
        v39 = __OFADD__(*v34, v38);
        v40 = *v34 + v38;
        if (v39)
        {
          break;
        }

        v19 = v20[4];
        if (v19 >= v40)
        {
          goto LABEL_21;
        }

        if (v19 + 0x4000000000000000 < 0)
        {
          goto LABEL_35;
        }

        v4 = v20[5];
        if (2 * v19 > v40)
        {
          v40 = 2 * v19;
        }

        v20[4] = v40;
        if ((v40 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_36;
        }

        v41 = v13;
        v42 = v37;
        v43 = swift_slowAlloc();
        v44 = v43;
        v20[5] = v43;
        if (v4)
        {
          if (v43 != v4 || v43 >= &v4[8 * v8])
          {
            memmove(v43, v4, 8 * v8);
          }

          LODWORD(v19) = v20;
          __VaListBuilder.deallocStorage(wordCount:storage:)();
          v37 = v42;
          v13 = v41;
          v17 = 40;
LABEL_21:
          v44 = v20[5];
          if (!v44)
          {
            goto LABEL_28;
          }

          goto LABEL_22;
        }

        v37 = v42;
        v13 = v41;
        v17 = 40;
        if (!v44)
        {
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

LABEL_22:
        v46 = *(v37 + 16);
        if (v46)
        {
          v47 = (v37 + 32);
          v48 = *v34;
          while (1)
          {
            v49 = *v47++;
            *&v44[8 * v48] = v49;
            v48 = *v34 + 1;
            if (__OFADD__(*v34, 1))
            {
              break;
            }

            *v34 = v48;
            if (!--v46)
            {
              goto LABEL_6;
            }
          }

          __break(1u);
          break;
        }

LABEL_6:

        if (++v35 == v11)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      swift_once();
    }
  }

LABEL_29:
  sub_100065AE0(v4, v11, type metadata accessor for CRLBoardLibraryViewModel.Item);
  sub_100065AE0(v11, v8, type metadata accessor for CRLBoardLibraryViewModel.Item);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_10000B864(v8, type metadata accessor for CRLBoardLibraryViewModel.Item);
  }
}

void sub_10062C398(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1005B981C(&unk_101A15B20, &qword_10146F1E0);
  __chkstk_darwin(v3 - 8);
  v5 = v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = (v98 - v7);
  v9 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v10 = *(v9 - 1);
  __chkstk_darwin(v9);
  v12 = (v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v101 = v98 - v14;
  if (*(v1 + OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_viewModelController))
  {

    sub_1008701F0(v8);

    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      goto LABEL_29;
    }

    sub_10000CAAC(v8, &unk_101A15B20, &qword_10146F1E0);
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    type metadata accessor for IndexPath();
    sub_10062F8C8(&qword_101A23D10, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
    v2 = inited;
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    v19 = &type metadata for String;
    *(v2 + 56) = &type metadata for String;
    v20 = sub_1000053B0();
    *(v2 + 32) = v16;
    v101 = v20;
    v102 = v2 + 32;
    *(v2 + 64) = v20;
    *(v2 + 40) = v18;
    v100 = objc_opt_self();
    LODWORD(v21) = [v100 _atomicIncrementAssertCount];
    v103[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(v2, v103, "Bad index path: %@", 18, 2u);
    StaticString.description.getter("collectionView(_:didSelectItemAt:)", 34, 2);
    v8 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSSidebarViewController.swift", 97, 2);
    v22 = String._bridgeToObjectiveC()();

    v23 = [v22 lastPathComponent];

    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v25;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_70;
    }

LABEL_4:
    v26 = static OS_os_log.crlAssert;
    v27 = swift_initStackObject();
    *(v27 + 16) = xmmword_10146CA70;
    *(v27 + 56) = &type metadata for Int32;
    *(v27 + 64) = &protocol witness table for Int32;
    *(v27 + 32) = v21;
    v28 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(v27 + 96) = v28;
    v29 = sub_1005CF04C();
    *(v27 + 72) = v8;
    v30 = v101;
    *(v27 + 136) = v19;
    *(v27 + 144) = v30;
    *(v27 + 104) = v29;
    *(v27 + 112) = v24;
    *(v27 + 120) = v9;
    *(v27 + 176) = &type metadata for UInt;
    *(v27 + 184) = &protocol witness table for UInt;
    *(v27 + 152) = 306;
    v31 = v103[0];
    *(v27 + 216) = v28;
    *(v27 + 224) = v29;
    *(v27 + 192) = v31;
    v32 = v8;
    v33 = v31;
    v34 = static os_log_type_t.error.getter();
    sub_100005404(v26, &_mh_execute_header, v34, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v27);
    swift_setDeallocating();
    v101 = sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v35 = static os_log_type_t.error.getter();
    sub_100005404(v26, &_mh_execute_header, v35, "Bad index path: %@", 18, 2, v2);

    type metadata accessor for __VaListBuilder();
    v8 = swift_allocObject();
    v8[2] = 8;
    v8[3] = 0;
    v12 = v8 + 3;
    v8[4] = 0;
    v8[5] = 0;
    v9 = *(v2 + 16);
    if (v9)
    {
      v10 = 0;
      v19 = 40;
      while (1)
      {
        v36 = (v102 + 40 * v10);
        v24 = v36[3];
        LODWORD(v21) = sub_100020E58(v36, v24);
        v37 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v5 = *v12;
        v38 = *(v37 + 16);
        v39 = __OFADD__(*v12, v38);
        v40 = *v12 + v38;
        if (v39)
        {
          goto LABEL_64;
        }

        v21 = v8[4];
        if (v21 >= v40)
        {
          goto LABEL_21;
        }

        if (v21 + 0x4000000000000000 < 0)
        {
          goto LABEL_65;
        }

        v24 = v8[5];
        if (2 * v21 > v40)
        {
          v40 = 2 * v21;
        }

        v8[4] = v40;
        if ((v40 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_66;
        }

        v41 = v2;
        v42 = v37;
        v43 = swift_slowAlloc();
        v44 = v43;
        v8[5] = v43;
        if (!v24)
        {
          break;
        }

        if (v43 != v24 || v43 >= v24 + 8 * v5)
        {
          memmove(v43, v24, 8 * v5);
        }

        LODWORD(v21) = v8;
        __VaListBuilder.deallocStorage(wordCount:storage:)();
        v37 = v42;
        v2 = v41;
        v19 = 40;
LABEL_21:
        v44 = v8[5];
        if (!v44)
        {
          goto LABEL_28;
        }

LABEL_22:
        v46 = *(v37 + 16);
        if (v46)
        {
          v47 = (v37 + 32);
          v48 = *v12;
          while (1)
          {
            v49 = *v47++;
            v44[v48] = v49;
            v48 = *v12 + 1;
            if (__OFADD__(*v12, 1))
            {
              break;
            }

            *v12 = v48;
            if (!--v46)
            {
              goto LABEL_6;
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
          swift_once();
          goto LABEL_4;
        }

LABEL_6:

        if (++v10 == v9)
        {
          goto LABEL_33;
        }
      }

      v37 = v42;
      v2 = v41;
      v19 = 40;
      if (v44)
      {
        goto LABEL_22;
      }

LABEL_28:
      __break(1u);
LABEL_29:
      v50 = v101;
      sub_100065AE0(v8, v101, type metadata accessor for CRLBoardLibraryViewModel.Item);
      sub_1000650D4(v50, v12, type metadata accessor for CRLBoardLibraryViewModel.Item);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_10000B864(v12, type metadata accessor for CRLBoardLibraryViewModel.Item);
        sub_1000650D4(v50, v5, type metadata accessor for CRLBoardLibraryViewModel.Item);
        (*(v10 + 56))(v5, 0, 1, v9);
        v51 = OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_selectedItem;
        swift_beginAccess();
        sub_100631204(v5, v2 + v51);
        swift_endAccess();
        v52 = v2 + OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_delegate;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v53 = *(v52 + 8);
          ObjectType = swift_getObjectType();
          (*(v53 + 16))(v2, v50, ObjectType, v53);
          swift_unknownObjectRelease();
          goto LABEL_32;
        }

        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        v59 = swift_initStackObject();
        *(v59 + 16) = xmmword_10146C6B0;
        type metadata accessor for IndexPath();
        sub_10062F8C8(&qword_101A23D10, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
        v60 = v59;
        v61 = dispatch thunk of CustomStringConvertible.description.getter();
        v63 = v62;
        *(v59 + 56) = &type metadata for String;
        v64 = sub_1000053B0();
        *(v59 + 32) = v61;
        v102 = v59 + 32;
        v100 = v64;
        *(v59 + 64) = v64;
        *(v59 + 40) = v63;
        v99 = objc_opt_self();
        v65 = [v99 _atomicIncrementAssertCount];
        v103[0] = [objc_allocWithZone(NSString) init];
        sub_100604538(v59, v103, "No delegate. Ignoring selection of index path: %@", 49, 2u);
        StaticString.description.getter("collectionView(_:didSelectItemAt:)", 34, 2);
        v66 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSSidebarViewController.swift", 97, 2);
        v67 = String._bridgeToObjectiveC()();

        v68 = [v67 lastPathComponent];

        v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v71 = v70;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v72 = static OS_os_log.crlAssert;
        v73 = swift_initStackObject();
        *(v73 + 16) = xmmword_10146CA70;
        *(v73 + 56) = &type metadata for Int32;
        *(v73 + 64) = &protocol witness table for Int32;
        *(v73 + 32) = v65;
        v74 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
        *(v73 + 96) = v74;
        v75 = sub_1005CF04C();
        *(v73 + 72) = v66;
        v76 = v100;
        *(v73 + 136) = &type metadata for String;
        *(v73 + 144) = v76;
        *(v73 + 104) = v75;
        *(v73 + 112) = v69;
        *(v73 + 120) = v71;
        *(v73 + 176) = &type metadata for UInt;
        *(v73 + 184) = &protocol witness table for UInt;
        *(v73 + 152) = 318;
        v19 = v103[0];
        *(v73 + 216) = v74;
        *(v73 + 224) = v75;
        *(v73 + 192) = v19;
        v77 = v66;
        v78 = v19;
        v79 = static os_log_type_t.error.getter();
        sub_100005404(v72, &_mh_execute_header, v79, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v73);
        swift_setDeallocating();
        v98[1] = sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
        swift_arrayDestroy();
        v80 = static os_log_type_t.error.getter();
        sub_100005404(v72, &_mh_execute_header, v80, "No delegate. Ignoring selection of index path: %@", 49, 2, v60);

        type metadata accessor for __VaListBuilder();
        v81 = swift_allocObject();
        v81[2] = 8;
        v81[3] = 0;
        v9 = v81 + 3;
        v81[4] = 0;
        v81[5] = 0;
        v100 = v60;
        v8 = v60[2];
        if (v8)
        {
          v82 = 0;
          v24 = 40;
          while (1)
          {
            LODWORD(v21) = sub_100020E58((v102 + 40 * v82), *(v102 + 40 * v82 + 24));
            v83 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
            v2 = *v9;
            v84 = *(v83 + 16);
            v39 = __OFADD__(*v9, v84);
            v85 = *v9 + v84;
            if (v39)
            {
              goto LABEL_67;
            }

            v21 = v81[4];
            if (v21 >= v85)
            {
              goto LABEL_53;
            }

            if (v21 + 0x4000000000000000 < 0)
            {
              goto LABEL_68;
            }

            v86 = v81[5];
            if (2 * v21 > v85)
            {
              v85 = 2 * v21;
            }

            v81[4] = v85;
            if ((v85 - 0x1000000000000000) >> 61 != 7)
            {
              goto LABEL_69;
            }

            v19 = v83;
            v87 = swift_slowAlloc();
            v88 = v87;
            v81[5] = v87;
            if (v86)
            {
              break;
            }

            v83 = v19;
            if (!v88)
            {
LABEL_60:
              __break(1u);
              goto LABEL_61;
            }

LABEL_54:
            v90 = *(v83 + 16);
            if (v90)
            {
              v91 = (v83 + 32);
              v92 = *v9;
              do
              {
                v93 = *v91++;
                *&v88[8 * v92] = v93;
                v92 = *v9 + 1;
                if (__OFADD__(*v9, 1))
                {
                  goto LABEL_63;
                }

                *v9 = v92;
              }

              while (--v90);
            }

            if (++v82 == v8)
            {
              goto LABEL_61;
            }
          }

          if (v87 != v86 || v87 >= &v86[8 * v2])
          {
            memmove(v87, v86, 8 * v2);
          }

          LODWORD(v21) = v81;
          __VaListBuilder.deallocStorage(wordCount:storage:)();
          v83 = v19;
LABEL_53:
          v88 = v81[5];
          if (!v88)
          {
            goto LABEL_60;
          }

          goto LABEL_54;
        }

LABEL_61:
        v94 = __VaListBuilder.va_list()();
        StaticString.description.getter("collectionView(_:didSelectItemAt:)", 34, 2);
        v95 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSSidebarViewController.swift", 97, 2);
        v96 = String._bridgeToObjectiveC()();

        StaticString.description.getter("No delegate. Ignoring selection of index path: %@", 49, 2);
        v97 = String._bridgeToObjectiveC()();

        [v99 handleFailureInFunction:v95 file:v96 lineNumber:318 isFatal:0 format:v97 args:v94];

        swift_setDeallocating();
        swift_arrayDestroy();
        sub_10000B864(v101, type metadata accessor for CRLBoardLibraryViewModel.Item);
      }

      else
      {
LABEL_32:
        sub_10000B864(v50, type metadata accessor for CRLBoardLibraryViewModel.Item);
      }
    }

    else
    {
LABEL_33:
      v55 = __VaListBuilder.va_list()();
      StaticString.description.getter("collectionView(_:didSelectItemAt:)", 34, 2);
      v56 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSSidebarViewController.swift", 97, 2);
      v57 = String._bridgeToObjectiveC()();

      StaticString.description.getter("Bad index path: %@", 18, 2);
      v58 = String._bridgeToObjectiveC()();

      [v100 handleFailureInFunction:v56 file:v57 lineNumber:306 isFatal:0 format:v58 args:v55];

      swift_setDeallocating();
      swift_arrayDestroy();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10062D174(uint64_t a1)
{
  v2 = sub_1005B981C(&unk_101A15B20, &qword_10146F1E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v62 - v3;
  v5 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v6 = *(v5 - 8);
  v7 = v6[8];
  __chkstk_darwin(v5);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v62 - v10;
  if (*(v1 + OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_viewModelController))
  {

    sub_1008701F0(v4);

    if ((v6[6])(v4, 1, v5) == 1)
    {
      sub_10000CAAC(v4, &unk_101A15B20, &qword_10146F1E0);
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146C6B0;
      type metadata accessor for IndexPath();
      sub_10062F8C8(&qword_101A23D10, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v13 = inited;
      v14 = dispatch thunk of CustomStringConvertible.description.getter();
      v16 = v15;
      v11 = &type metadata for String;
      *(v13 + 56) = &type metadata for String;
      v17 = sub_1000053B0();
      *(v13 + 32) = v14;
      v63 = v17;
      v64 = (v13 + 32);
      *(v13 + 64) = v17;
      *(v13 + 40) = v16;
      v62 = objc_opt_self();
      LODWORD(v18) = [v62 _atomicIncrementAssertCount];
      v65[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(v13, v65, "No item for index path: %@", 26, 2u);
      StaticString.description.getter("collectionView(_:contextMenuConfigurationForItemAt:point:)", 58, 2);
      v19 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSSidebarViewController.swift", 97, 2);
      v20 = String._bridgeToObjectiveC()();

      v21 = [v20 lastPathComponent];

      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      if (qword_1019F20A0 != -1)
      {
        goto LABEL_37;
      }

      while (1)
      {
        v24 = static OS_os_log.crlAssert;
        v25 = swift_initStackObject();
        *(v25 + 16) = xmmword_10146CA70;
        *(v25 + 56) = &type metadata for Int32;
        *(v25 + 64) = &protocol witness table for Int32;
        *(v25 + 32) = v18;
        v26 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
        *(v25 + 96) = v26;
        v27 = sub_1005CF04C();
        *(v25 + 72) = v19;
        v28 = v63;
        *(v25 + 136) = v11;
        *(v25 + 144) = v28;
        *(v25 + 104) = v27;
        *(v25 + 112) = v8;
        *(v25 + 120) = v23;
        *(v25 + 176) = &type metadata for UInt;
        *(v25 + 184) = &protocol witness table for UInt;
        *(v25 + 152) = 345;
        v29 = v65[0];
        *(v25 + 216) = v26;
        *(v25 + 224) = v27;
        *(v25 + 192) = v29;
        v30 = v19;
        v31 = v29;
        v32 = static os_log_type_t.error.getter();
        sub_100005404(v24, &_mh_execute_header, v32, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v25);
        swift_setDeallocating();
        v63 = sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
        swift_arrayDestroy();
        v33 = static os_log_type_t.error.getter();
        sub_100005404(v24, &_mh_execute_header, v33, "No item for index path: %@", 26, 2, v13);

        type metadata accessor for __VaListBuilder();
        v19 = swift_allocObject();
        v19[2] = 8;
        v19[3] = 0;
        v6 = v19 + 3;
        v19[4] = 0;
        v19[5] = 0;
        v23 = *(v13 + 16);
        if (!v23)
        {
LABEL_31:
          v58 = __VaListBuilder.va_list()();
          StaticString.description.getter("collectionView(_:contextMenuConfigurationForItemAt:point:)", 58, 2);
          v59 = String._bridgeToObjectiveC()();

          StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSSidebarViewController.swift", 97, 2);
          v60 = String._bridgeToObjectiveC()();

          StaticString.description.getter("No item for index path: %@", 26, 2);
          v61 = String._bridgeToObjectiveC()();

          [v62 handleFailureInFunction:v59 file:v60 lineNumber:345 isFatal:0 format:v61 args:v58];

          swift_setDeallocating();
          swift_arrayDestroy();
          return;
        }

        v4 = 0;
        v11 = 40;
        while (1)
        {
          v34 = (v64 + 40 * v4);
          v8 = v34[3];
          LODWORD(v18) = sub_100020E58(v34, v8);
          v35 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
          v36 = *v6;
          v37 = *(v35 + 16);
          v38 = __OFADD__(*v6, v37);
          v39 = *v6 + v37;
          if (v38)
          {
            break;
          }

          v18 = v19[4];
          if (v18 >= v39)
          {
            goto LABEL_21;
          }

          if (v18 + 0x4000000000000000 < 0)
          {
            goto LABEL_35;
          }

          v8 = v19[5];
          if (2 * v18 > v39)
          {
            v39 = 2 * v18;
          }

          v19[4] = v39;
          if ((v39 - 0x1000000000000000) >> 61 != 7)
          {
            goto LABEL_36;
          }

          v40 = v13;
          v41 = v35;
          v42 = swift_slowAlloc();
          v43 = v42;
          v19[5] = v42;
          if (v8)
          {
            if (v42 != v8 || v42 >= &v8[8 * v36])
            {
              memmove(v42, v8, 8 * v36);
            }

            LODWORD(v18) = v19;
            __VaListBuilder.deallocStorage(wordCount:storage:)();
            v35 = v41;
            v13 = v40;
            v11 = 40;
LABEL_21:
            v43 = v19[5];
            if (!v43)
            {
              goto LABEL_28;
            }

            goto LABEL_22;
          }

          v35 = v41;
          v13 = v40;
          v11 = 40;
          if (!v43)
          {
LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

LABEL_22:
          v45 = *(v35 + 16);
          if (v45)
          {
            v46 = (v35 + 32);
            v47 = *v6;
            while (1)
            {
              v48 = *v46++;
              *&v43[8 * v47] = v48;
              v47 = *v6 + 1;
              if (__OFADD__(*v6, 1))
              {
                break;
              }

              *v6 = v47;
              if (!--v45)
              {
                goto LABEL_6;
              }
            }

            __break(1u);
            break;
          }

LABEL_6:

          if (++v4 == v23)
          {
            goto LABEL_31;
          }
        }

        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        swift_once();
      }
    }

LABEL_29:
    v49 = sub_100065AE0(v4, v11, type metadata accessor for CRLBoardLibraryViewModel.Item);
    if (sub_100F951E8(v49))
    {
      sub_1005B981C(&qword_101A23C10, &unk_10146F210);
      v50 = *(v6 + 80);
      v51 = (v50 + 32) & ~v50;
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_10146C6B0;
      v63 = type metadata accessor for CRLBoardLibraryViewModel.Item;
      sub_1000650D4(v11, v52 + v51, type metadata accessor for CRLBoardLibraryViewModel.Item);
      sub_100E93FF4(v52);
      swift_setDeallocating();
      v64 = type metadata accessor for CRLBoardLibraryViewModel.Item;
      sub_10000B864(v52 + v51, type metadata accessor for CRLBoardLibraryViewModel.Item);
      swift_deallocClassInstance();
      sub_10062F8C8(&qword_1019F66A0, type metadata accessor for CRLBoardLibraryViewModel.Item, aY_45);
      isa = Set._bridgeToObjectiveC()().super.isa;

      v54 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_1000650D4(v11, v8, v63);
      v55 = swift_allocObject();
      v55[2] = v54;
      sub_100065AE0(v8, v55 + ((v50 + 24) & ~v50), type metadata accessor for CRLBoardLibraryViewModel.Item);
      v56 = objc_opt_self();
      v65[4] = sub_10062FA78;
      v65[5] = v55;
      v65[0] = _NSConcreteStackBlock;
      v65[1] = *"";
      v65[2] = sub_1006465C4;
      v65[3] = &unk_10187DC88;
      v57 = _Block_copy(v65);

      [v56 configurationWithIdentifier:isa previewProvider:0 actionProvider:v57];

      _Block_release(v57);
      sub_10000B864(v11, v64);
    }

    else
    {
      sub_10000B864(v11, type metadata accessor for CRLBoardLibraryViewModel.Item);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10062DB14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v67 = a1;
  v4 = type metadata accessor for UUID();
  v68 = *(v4 - 8);
  v69 = v4;
  __chkstk_darwin(v4);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&unk_101A15B20, &qword_10146F1E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v57 - v11;
  v13 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v66 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v57 - v17;
  if (*(v2 + OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_viewModelController))
  {

    sub_1008701F0(v9);

    v21 = *(v14 + 48);
    v20 = v14 + 48;
    v19 = v21;
    if (v21(v9, 1, v13) == 1)
    {
      v60 = v19;
      v61 = v20;
      v58 = v13;
      v59 = v9;
      v62 = v12;
      v63 = v3;
      v64 = v6;
      v65 = v18;
      v22 = objc_opt_self();
      v23 = [v22 _atomicIncrementAssertCount];
      v70 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v70, "invalid nil found when unwrapping value", 39, 2u);
      StaticString.description.getter("collectionView(_:itemsForBeginning:at:)", 39, 2);
      v24 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSSidebarViewController.swift", 97, 2);
      v25 = String._bridgeToObjectiveC()();

      v26 = [v25 lastPathComponent];

      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v30 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v23;
      v32 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(inited + 96) = v32;
      v33 = sub_1005CF04C();
      *(inited + 104) = v33;
      *(inited + 72) = v24;
      *(inited + 136) = &type metadata for String;
      v34 = sub_1000053B0();
      *(inited + 112) = v27;
      *(inited + 120) = v29;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v34;
      *(inited + 152) = 373;
      v35 = v70;
      *(inited + 216) = v32;
      *(inited + 224) = v33;
      *(inited + 192) = v35;
      v36 = v24;
      v37 = v35;
      v38 = static os_log_type_t.error.getter();
      sub_100005404(v30, &_mh_execute_header, v38, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v39 = static os_log_type_t.error.getter();
      sub_100005404(v30, &_mh_execute_header, v39, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v40 = swift_allocObject();
      v40[2] = 8;
      v40[3] = 0;
      v40[4] = 0;
      v40[5] = 0;
      v41 = __VaListBuilder.va_list()();
      StaticString.description.getter("collectionView(_:itemsForBeginning:at:)", 39, 2);
      v42 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSSidebarViewController.swift", 97, 2);
      v43 = String._bridgeToObjectiveC()();

      StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
      v44 = String._bridgeToObjectiveC()();

      [v22 handleFailureInFunction:v42 file:v43 lineNumber:373 isFatal:0 format:v44 args:v41];

      v6 = v64;
      v18 = v65;
      v12 = v62;
      v3 = v63;
      v13 = v58;
      v9 = v59;
      v19 = v60;
    }

    sub_10003DFF8(v9, v12, &unk_101A15B20, &qword_10146F1E0);
    if (v19(v12, 1, v13) == 1)
    {
      sub_10000CAAC(v12, &unk_101A15B20, &qword_10146F1E0);
      return;
    }

    sub_100065AE0(v12, v18, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v45 = *(*(*(v3 + OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_actionAlertController) + 16) + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot + 40);

    sub_100F87E04(v6);
    if (*(v45 + 16) && (v46 = sub_10003E994(v6), (v47 & 1) != 0))
    {
      v48 = *(*(v45 + 56) + 8 * v46);
      v65 = v68[1];
      v68 = v48;
      (v65)(v6, v69);

      if (sub_100F88018(v49))
      {
        swift_getObjectType();
        v50 = v66;
        sub_1000650D4(v18, v66, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v70 = _swiftEmptyArrayStorage;
        v71 = _swiftEmptyArrayStorage;
        v72 = _swiftEmptyArrayStorage;
        sub_100C7BCA8(v50);
        sub_10000B864(v50, type metadata accessor for CRLBoardLibraryViewModel.Item);
        sub_10061F964(v70, v71, v72);
        v51 = swift_allocObject();
        *(v51 + 16) = xmmword_101465920;
        v52 = objc_allocWithZone(NSItemProvider);
        v53 = v68;
        v54 = [v52 initWithObject:v68];
        v55 = v18;
        v56 = [objc_allocWithZone(UIDragItem) initWithItemProvider:v54];

        *(v51 + 32) = v56;
        sub_10000B864(v55, type metadata accessor for CRLBoardLibraryViewModel.Item);
        return;
      }
    }

    else
    {

      (v68[1])(v6, v69);
    }

    sub_10000B864(v18, type metadata accessor for CRLBoardLibraryViewModel.Item);
  }

  else
  {
    __break(1u);
  }
}

void sub_10062E3AC(void *a1, uint64_t a2)
{
  v3 = v2;
  v64 = a1;
  v4 = type metadata accessor for UUID();
  v65 = *(v4 - 8);
  v66 = v4;
  __chkstk_darwin(v4);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&unk_101A15B20, &qword_10146F1E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v56 - v11;
  v13 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v2 + OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_viewModelController))
  {
    __break(1u);
    return;
  }

  sub_1008701F0(v9);

  v19 = *(v14 + 48);
  v18 = v14 + 48;
  v17 = v19;
  if (v19(v9, 1, v13) == 1)
  {
    v58 = v17;
    v59 = v18;
    v56 = v13;
    v57 = v9;
    v60 = v12;
    v61 = v3;
    v62 = v6;
    v63 = v16;
    v20 = objc_opt_self();
    v21 = [v20 _atomicIncrementAssertCount];
    v67 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v67, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("collectionView(_:itemsForAddingTo:at:point:)", 44, 2);
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSSidebarViewController.swift", 97, 2);
    v23 = String._bridgeToObjectiveC()();

    v24 = [v23 lastPathComponent];

    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v28 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v21;
    v30 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v30;
    v31 = sub_1005CF04C();
    *(inited + 104) = v31;
    *(inited + 72) = v22;
    *(inited + 136) = &type metadata for String;
    v32 = sub_1000053B0();
    *(inited + 112) = v25;
    *(inited + 120) = v27;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v32;
    *(inited + 152) = 385;
    v33 = v67;
    *(inited + 216) = v30;
    *(inited + 224) = v31;
    *(inited + 192) = v33;
    v34 = v22;
    v35 = v33;
    v36 = static os_log_type_t.error.getter();
    sub_100005404(v28, &_mh_execute_header, v36, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v37 = static os_log_type_t.error.getter();
    sub_100005404(v28, &_mh_execute_header, v37, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v38 = swift_allocObject();
    v38[2] = 8;
    v38[3] = 0;
    v38[4] = 0;
    v38[5] = 0;
    v39 = __VaListBuilder.va_list()();
    StaticString.description.getter("collectionView(_:itemsForAddingTo:at:point:)", 44, 2);
    v40 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSSidebarViewController.swift", 97, 2);
    v41 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
    v42 = String._bridgeToObjectiveC()();

    [v20 handleFailureInFunction:v40 file:v41 lineNumber:385 isFatal:0 format:v42 args:v39];

    v6 = v62;
    v16 = v63;
    v12 = v60;
    v3 = v61;
    v13 = v56;
    v9 = v57;
    v17 = v58;
  }

  sub_10003DFF8(v9, v12, &unk_101A15B20, &qword_10146F1E0);
  if (v17(v12, 1, v13) == 1)
  {
    sub_10000CAAC(v12, &unk_101A15B20, &qword_10146F1E0);
    return;
  }

  v43 = v16;
  sub_100065AE0(v12, v16, type metadata accessor for CRLBoardLibraryViewModel.Item);
  v44 = *(*(*(v3 + OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_actionAlertController) + 16) + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot + 40);

  sub_100F87E04(v6);
  if (!*(v44 + 16) || (v45 = sub_10003E994(v6), (v46 & 1) == 0))
  {

    v65[1](v6, v66);
LABEL_14:
    sub_10000B864(v16, type metadata accessor for CRLBoardLibraryViewModel.Item);
    return;
  }

  v47 = *(*(v44 + 56) + 8 * v45);
  v63 = v65[1];
  v65 = v47;
  (v63)(v6, v66);

  if ((sub_100F88018(v48) & 1) == 0)
  {

    goto LABEL_14;
  }

  v50 = v64;
  v49 = v65;
  swift_getObjectType();
  v67 = sub_10061FB2C();
  v68 = v51;
  v69 = v52;
  if (v67)
  {
    sub_100C7BCA8(v43);
    sub_10061F964(v67, v68, v69);
  }

  else
  {
    [v50 setLocalContext:0];
  }

  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_101465920;
  v54 = [objc_allocWithZone(NSItemProvider) initWithObject:v49];
  v55 = [objc_allocWithZone(UIDragItem) initWithItemProvider:v54];

  *(v53 + 32) = v55;
  sub_10000B864(v43, type metadata accessor for CRLBoardLibraryViewModel.Item);
}

void sub_10062EC08(void *a1)
{
  v2 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v2 - 8);
  v92 = &v81[-v3];
  v4 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  __chkstk_darwin(v4 - 8);
  v87 = &v81[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1005B981C(&qword_1019F33E0, &unk_101468A80);
  v89 = *(v6 - 8);
  v7 = *(v89 + 64);
  __chkstk_darwin(v6 - 8);
  v90 = &v81[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v88 = &v81[-v9];
  __chkstk_darwin(v10);
  v91 = &v81[-v11];
  v12 = sub_1005B981C(&unk_101A15B20, &qword_10146F1E0);
  __chkstk_darwin(v12 - 8);
  v14 = &v81[-v13];
  v15 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v81[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v93 = &v81[-v20];
  v94 = type metadata accessor for IndexPath();
  v97 = *(v94 - 8);
  __chkstk_darwin(v94);
  v22 = &v81[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v24 = __chkstk_darwin(v23).n128_u64[0];
  v96 = &v81[-v25];
  v26 = [objc_msgSend(a1 session];
  swift_unknownObjectRelease();
  if (v26 && (swift_getObjectType(), v27 = sub_10061FB2C(), v85 = v29, v86 = v28, swift_unknownObjectRelease(), v27))
  {
    v30 = [a1 destinationIndexPath];
    if (v30)
    {
      v84 = v27;
      v31 = v30;
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      v32 = v96;
      v33 = v22;
      v34 = v94;
      (*(v97 + 32))(v96, v33, v94);
      if (*(v95 + OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_viewModelController))
      {

        sub_1008701F0(v14);

        if ((*(v16 + 48))(v14, 1, v15) == 1)
        {
          (*(v97 + 8))(v32, v34);

          sub_10000CAAC(v14, &unk_101A15B20, &qword_10146F1E0);
          return;
        }

        sub_100065AE0(v14, v93, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v58 = [a1 proposal];
        v59 = [v58 intent];

        if (v59 == 2)
        {
          v83 = 0;
          v82 = 1;
        }

        else
        {
          sub_10062F8C8(&qword_1019F6688, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
          if (dispatch thunk of Collection.isEmpty.getter())
          {
            v83 = 0;
            v82 = 1;
          }

          else
          {
            dispatch thunk of Collection.endIndex.getter();
            sub_10062F8C8(&qword_1019F6690, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
            dispatch thunk of BidirectionalCollection.index(before:)();
            v60 = dispatch thunk of Collection.subscript.read();
            v83 = *v61;
            v60(v98, 0);
            v82 = 0;
          }
        }

        sub_1000650D4(v93, v18, type metadata accessor for CRLBoardLibraryViewModel.Item);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v63 = v88;
        if (EnumCaseMultiPayload == 1)
        {
          v64 = sub_1005B981C(&qword_1019F3480, &unk_10146F1F0);
          if (!(*(*(v64 - 8) + 48))(v18, 5, v64))
          {
            v80 = v87;
            sub_100065AE0(v18, v87, type metadata accessor for CRLBoardLibraryViewModel.Folder);
            sub_1000650D4(v80, v63, type metadata accessor for CRLFolderIdentifier);
            sub_10000B864(v80, type metadata accessor for CRLBoardLibraryViewModel.Folder);
            v66 = 0;
            goto LABEL_23;
          }

          v65 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
        }

        else
        {
          v65 = type metadata accessor for CRLBoardLibraryViewModel.Item;
        }

        sub_10000B864(v18, v65);
        v66 = 1;
LABEL_23:
        v67 = type metadata accessor for CRLFolderIdentifier(0);
        (*(*(v67 - 8) + 56))(v63, v66, 1, v67);
        v68 = v63;
        v69 = v91;
        sub_10003DFF8(v68, v91, &qword_1019F33E0, &unk_101468A80);
        v70 = *(v95 + OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_actionAlertController);
        v71 = sub_100C7C840(v85);

        v72 = type metadata accessor for TaskPriority();
        v73 = v92;
        (*(*(v72 - 8) + 56))(v92, 1, 1, v72);
        v74 = v90;
        sub_10000BE14(v69, v90, &qword_1019F33E0, &unk_101468A80);
        type metadata accessor for MainActor();

        v75 = static MainActor.shared.getter();
        v76 = (*(v89 + 80) + 64) & ~*(v89 + 80);
        v77 = (v7 + v76 + 7) & 0xFFFFFFFFFFFFFFF8;
        v78 = swift_allocObject();
        v78[2] = v75;
        v78[3] = &protocol witness table for MainActor;
        v78[4] = SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:);
        v78[5] = 0;
        v78[6] = v70;
        v78[7] = v71;
        sub_10003DFF8(v74, v78 + v76, &qword_1019F33E0, &unk_101468A80);
        v79 = v78 + v77;
        *v79 = v83;
        v79[8] = v82;
        sub_10064191C(0, 0, v73, &unk_10146F1E8, v78);

        sub_10000CAAC(v69, &qword_1019F33E0, &unk_101468A80);
        sub_10000B864(v93, type metadata accessor for CRLBoardLibraryViewModel.Item);
        (*(v97 + 8))(v96, v94);
        return;
      }

      __break(1u);
    }

    else
    {
    }
  }

  else
  {
    v35 = objc_opt_self();
    v36 = [v35 _atomicIncrementAssertCount];
    v98[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v98, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("collectionView(_:performDropWith:)", 34, 2);
    v37 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSSidebarViewController.swift", 97, 2);
    v38 = String._bridgeToObjectiveC()();

    v39 = [v38 lastPathComponent];

    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v43 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v36;
    v45 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v45;
    v46 = sub_1005CF04C();
    *(inited + 104) = v46;
    *(inited + 72) = v37;
    *(inited + 136) = &type metadata for String;
    v47 = sub_1000053B0();
    *(inited + 112) = v40;
    *(inited + 120) = v42;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v47;
    *(inited + 152) = 469;
    v48 = v98[0];
    *(inited + 216) = v45;
    *(inited + 224) = v46;
    *(inited + 192) = v48;
    v49 = v37;
    v50 = v48;
    v51 = static os_log_type_t.error.getter();
    sub_100005404(v43, &_mh_execute_header, v51, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v52 = static os_log_type_t.error.getter();
    sub_100005404(v43, &_mh_execute_header, v52, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v53 = swift_allocObject();
    v53[2] = 8;
    v53[3] = 0;
    v53[4] = 0;
    v53[5] = 0;
    v54 = __VaListBuilder.va_list()();
    StaticString.description.getter("collectionView(_:performDropWith:)", 34, 2);
    v55 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSSidebarViewController.swift", 97, 2);
    v56 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
    v57 = String._bridgeToObjectiveC()();

    [v35 handleFailureInFunction:v55 file:v56 lineNumber:469 isFatal:0 format:v57 args:v54];
  }
}

uint64_t sub_10062F8C8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_10062F910(uint64_t a1)
{
  v3 = *(sub_1005B981C(&qword_1019F33E0, &unk_101468A80) - 8);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v5 = v1[3];
  v12 = v1[2];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002D4C8;

  return sub_1006A2854(a1, v12, v5, v6, v7, v8, v9, v1 + v4);
}

Class sub_10062FA78(uint64_t a1)
{
  v3 = *(type metadata accessor for CRLBoardLibraryViewModel.Item(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_10061E9D0(a1, v4, v5);
}

uint64_t sub_10062FB34()
{
  v1 = *(type metadata accessor for CRLBoardLibraryViewModel.Item(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

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

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100630014(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for CRLBoardLibraryViewModel.Item(0) - 8);
  v5 = *(v2 + 16);
  v6 = v2 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return a2(a1, v5, v6);
}

double sub_10063009C(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for CRLBoardLibraryViewModel.Item(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for CRLFolderIdentifier(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v2 + 16);
  v13 = (v2 + v10);
  v14 = *v13;
  v15 = v13[1];
  v16 = *(v2 + v11);

  return sub_1006A1AB4(a1, a2, v12, v2 + v6, v2 + v9, v14, v15, v16);
}

id sub_1006301D4()
{
  v1 = type metadata accessor for UUID();
  v101 = *(v1 - 8);
  v102 = v1;
  __chkstk_darwin(v1);
  v104 = &v91 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1005B981C(&unk_101A23C40, &unk_10146F200);
  __chkstk_darwin(v3 - 8);
  v95 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v100 = &v91 - v6;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  v105 = v7;
  v106 = v8;
  __chkstk_darwin(v7);
  v93 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v96 = (&v91 - v11);
  __chkstk_darwin(v12);
  v107 = &v91 - v13;
  v14 = sub_1005B981C(&unk_101A15B20, &qword_10146F1E0);
  __chkstk_darwin(v14 - 8);
  v99 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v91 - v17;
  v19 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v91 - v24;
  v26 = OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_selectedItem;
  swift_beginAccess();
  v97 = v26;
  sub_10000BE14(&v0[v26], v18, &unk_101A15B20, &qword_10146F1E0);
  v98 = v20;
  v27 = *(v20 + 48);
  v103 = v19;
  if (v27(v18, 1, v19) != 1)
  {
    v94 = v22;
    result = sub_100065AE0(v18, v25, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v91 = OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_viewModelController;
    v92 = v0;
    if (*&v0[OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_viewModelController])
    {

      v31 = v104;
      sub_100F87E04(v104);
      v32 = v100;
      dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();
      v33 = v102;
      v34 = *(v101 + 1);
      v34(v31, v102);

      v36 = v105;
      v35 = v106;
      v37 = *(v106 + 48);
      if (v37(v32, 1, v105) == 1)
      {
        v96 = v34;
        v101 = v25;
        sub_10000CAAC(v32, &unk_101A23C40, &unk_10146F200);
        v38 = sub_1005B981C(&qword_1019F3480, &unk_10146F1F0);
        (*(*(v38 - 8) + 56))(v94, 1, 5, v38);
        result = swift_storeEnumTagMultiPayload();
        if (!*&v92[v91])
        {
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        v39 = v104;
        sub_100F87E04(v104);
        v40 = v95;
        dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();
        v41 = v33;
        v42 = v40;
        v96(v39, v41);

        v43 = v40;
        v36 = v105;
        if (v37(v43, 1, v105) == 1)
        {
          sub_10000CAAC(v42, &unk_101A23C40, &unk_10146F200);
          v44 = objc_opt_self();
          v45 = [v44 _atomicIncrementAssertCount];
          v108 = [objc_allocWithZone(NSString) init];
          sub_100604538(_swiftEmptyArrayStorage, &v108, "No index path for All Boards", 28, 2u);
          StaticString.description.getter("libraryViewModelControllerDidApplyUpdate(_:)", 44, 2);
          v46 = String._bridgeToObjectiveC()();

          StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSSidebarViewController.swift", 97, 2);
          v47 = String._bridgeToObjectiveC()();

          v48 = [v47 lastPathComponent];

          v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v51 = v50;

          if (qword_1019F20A0 != -1)
          {
            swift_once();
          }

          v52 = static OS_os_log.crlAssert;
          sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10146CA70;
          *(inited + 56) = &type metadata for Int32;
          *(inited + 64) = &protocol witness table for Int32;
          *(inited + 32) = v45;
          v54 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
          *(inited + 96) = v54;
          v55 = sub_1005CF04C();
          *(inited + 104) = v55;
          *(inited + 72) = v46;
          *(inited + 136) = &type metadata for String;
          v56 = sub_1000053B0();
          *(inited + 112) = v49;
          *(inited + 120) = v51;
          *(inited + 176) = &type metadata for UInt;
          *(inited + 184) = &protocol witness table for UInt;
          *(inited + 144) = v56;
          *(inited + 152) = 503;
          v57 = v108;
          *(inited + 216) = v54;
          *(inited + 224) = v55;
          *(inited + 192) = v57;
          v58 = v46;
          v59 = v57;
          v60 = static os_log_type_t.error.getter();
          sub_100005404(v52, &_mh_execute_header, v60, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
          swift_arrayDestroy();
          v61 = static os_log_type_t.error.getter();
          sub_100005404(v52, &_mh_execute_header, v61, "No index path for All Boards", 28, 2, _swiftEmptyArrayStorage);

          type metadata accessor for __VaListBuilder();
          v62 = swift_allocObject();
          v62[2] = 8;
          v62[3] = 0;
          v62[4] = 0;
          v62[5] = 0;
          v63 = __VaListBuilder.va_list()();
          StaticString.description.getter("libraryViewModelControllerDidApplyUpdate(_:)", 44, 2);
          v64 = String._bridgeToObjectiveC()();

          StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/iOS/Views/CRLiOSSidebarViewController.swift", 97, 2);
          v65 = String._bridgeToObjectiveC()();

          StaticString.description.getter("No index path for All Boards", 28, 2);
          v66 = String._bridgeToObjectiveC()();

          [v44 handleFailureInFunction:v64 file:v65 lineNumber:503 isFatal:0 format:v66 args:v63];

          sub_10000B864(v94, type metadata accessor for CRLBoardLibraryViewModel.Item);
          v67 = v101;
          return sub_10000B864(v67, type metadata accessor for CRLBoardLibraryViewModel.Item);
        }

        v72 = *(v106 + 32);
        v73 = v93;
        v72(v93, v42, v36);
        v72(v107, v73, v36);
        v71 = v101;
        v70 = v94;
      }

      else
      {
        v68 = *(v35 + 32);
        v69 = v96;
        v68(v96, v32, v36);
        v68(v107, v69, v36);
        v70 = v94;
        sub_1000650D4(v25, v94, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v71 = v25;
      }

      v74 = v92;
      if (qword_1019F2198 != -1)
      {
        swift_once();
      }

      v75 = static OS_os_log.crlSidebar;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v76 = swift_initStackObject();
      *(v76 + 16) = xmmword_10146C6B0;
      v77 = sub_100F88220();
      v79 = v78;
      *(v76 + 56) = &type metadata for String;
      *(v76 + 64) = sub_1000053B0();
      *(v76 + 32) = v77;
      *(v76 + 40) = v79;
      v80 = static os_log_type_t.default.getter();
      sub_100005404(v75, &_mh_execute_header, v80, "selectedItem after view model update: %@", 40, 2, v76);
      swift_setDeallocating();
      sub_100005070((v76 + 32));
      v81 = v99;
      sub_1000650D4(v70, v99, type metadata accessor for CRLBoardLibraryViewModel.Item);
      (*(v98 + 56))(v81, 0, 1, v103);
      v82 = v97;
      swift_beginAccess();
      sub_100631204(v81, &v74[v82]);
      swift_endAccess();
      result = [v74 collectionView];
      if (result)
      {
        v83 = result;
        v84 = [result indexPathsForSelectedItems];

        if (!v84)
        {
          goto LABEL_22;
        }

        v85 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (sub_1012CD684(v107, v85))
        {

          goto LABEL_22;
        }

        result = [v74 collectionView];
        if (result)
        {
          v86 = result;

          isa = IndexPath._bridgeToObjectiveC()().super.isa;
          [v86 selectItemAtIndexPath:isa animated:1 scrollPosition:0];

LABEL_22:
          if ((sub_100F91CB8(v71, v70) & 1) == 0)
          {
            v88 = &v74[OBJC_IVAR____TtC8Freeform27CRLiOSSidebarViewController_delegate];
            if (swift_unknownObjectWeakLoadStrong())
            {
              v89 = *(v88 + 1);
              ObjectType = swift_getObjectType();
              (*(v89 + 16))(v74, v70, ObjectType, v89);
              swift_unknownObjectRelease();
            }
          }

          (*(v106 + 8))(v107, v36);
          sub_10000B864(v70, type metadata accessor for CRLBoardLibraryViewModel.Item);
          v67 = v71;
          return sub_10000B864(v67, type metadata accessor for CRLBoardLibraryViewModel.Item);
        }

LABEL_30:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_29;
  }

  sub_10000CAAC(v18, &unk_101A15B20, &qword_10146F1E0);
  if (qword_1019F2198 != -1)
  {
    swift_once();
  }

  v28 = static OS_os_log.crlSidebar;
  v29 = static os_log_type_t.default.getter();
  return sub_100005404(v28, &_mh_execute_header, v29, "No selectedItem after view model update, so nothing to change", 61, 2, _swiftEmptyArrayStorage);
}

uint64_t sub_100630E80(uint64_t a1)
{
  sub_1005B981C(&qword_1019F33E0, &unk_101468A80);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002D4C8;

  return sub_1006A2434(a1, v4, v5, v6, v7);
}

uint64_t sub_100630FA4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002D4C8;

  return sub_1006A25F8(a1, v4, v5, v6, v7);
}

double sub_100631078(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for CRLBoardLibraryViewModel.Item(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_1005B981C(&qword_1019F33E0, &unk_101468A80) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1006A048C(a1, a2, *(v2 + 16), v2 + v6, v2 + v9, *(v2 + v10), *(v2 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1006311B4()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100631204(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&unk_101A15B20, &qword_10146F1E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100631388(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D4C8;

  return sub_10061C534(a1, v4, v5, v6);
}

uint64_t sub_10063143C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D4C8;

  return sub_10061C3F8(a1, v4, v5, v6);
}

uint64_t sub_1006314F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D4C8;

  return sub_10061C2BC(a1, v4, v5, v6);
}

uint64_t sub_1006315A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D4C8;

  return sub_10061C180(a1, v4, v5, v6);
}

uint64_t sub_100631660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_1005B981C(&qword_1019F66D0, &qword_10146F2C8) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_100624F58(a1, a2, a3, v8);
}

char *sub_10063173C(void *a1, void (*a2)(void, void, void))
{
  v5 = *(type metadata accessor for UUID() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  return sub_100623498(a1, a2, v8, v2 + v6, v7);
}

void sub_100631910(uint64_t a1)
{
  v438 = a1;
  v402 = type metadata accessor for CRLProto_BoardItemIdentifier(0);
  __chkstk_darwin(v402);
  v412 = &v371 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CRLServerSyncedPeerAddedItemEvent(0);
  __chkstk_darwin(v4 - 8);
  v381 = &v371 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v386 = &v371 - v7;
  v8 = type metadata accessor for CRLRefuseOrEndFollow(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v371 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v398 = sub_1005B981C(&unk_101A0AFE0, &unk_10146F3C0);
  __chkstk_darwin(v398);
  v417 = &v371 - v11;
  v12 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v12 - 8);
  v14 = &v371 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v409 = &v371 - v16;
  __chkstk_darwin(v17);
  v413 = &v371 - v18;
  v19 = type metadata accessor for CRLFollowViewportState(0);
  __chkstk_darwin(v19 - 8);
  v21 = &v371 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v397 = type metadata accessor for CRLStartOrEndFollow(0);
  __chkstk_darwin(v397);
  v420 = &v371 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v371 - v24;
  __chkstk_darwin(v26);
  v28 = &v371 - v27;
  v29 = sub_1005B981C(&qword_1019F67B0, &qword_10146F3D0);
  __chkstk_darwin(v29 - 8);
  v419 = &v371 - v30;
  v407 = sub_1005B981C(&qword_1019F67B8, &qword_10146F3D8);
  __chkstk_darwin(v407);
  v406 = &v371 - v31;
  v433 = type metadata accessor for CRLProto_CollaboratorCursorColor(0);
  __chkstk_darwin(v433);
  v434 = (&v371 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v441 = type metadata accessor for CRLCollaboratorCursorColor(0);
  __chkstk_darwin(v441);
  v405 = &v371 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v461 = &v371 - v35;
  v36 = sub_1005B981C(&qword_1019F67C0, &unk_10146F3E0);
  __chkstk_darwin(v36 - 8);
  v391 = &v371 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v429 = &v371 - v39;
  __chkstk_darwin(v40);
  v439 = &v371 - v41;
  v445 = type metadata accessor for CRLProto_Data(0);
  v415 = *(v445 - 8);
  __chkstk_darwin(v445);
  v390 = (&v371 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v43);
  v428 = (&v371 - v44);
  __chkstk_darwin(v45);
  v427 = (&v371 - v46);
  v47 = type metadata accessor for BinaryDecodingOptions();
  __chkstk_darwin(v47 - 8);
  v401 = &v371 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v49);
  v432 = &v371 - v50;
  __chkstk_darwin(v51);
  v431 = &v371 - v52;
  v463 = type metadata accessor for CRLProto_RealTimeLeave(0);
  __chkstk_darwin(v463);
  v458 = (&v371 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = type metadata accessor for CRLRealTimeLeave(0);
  __chkstk_darwin(v54 - 8);
  v423 = (&v371 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
  v56 = type metadata accessor for CRLRealTimeEnter(0);
  __chkstk_darwin(v56 - 8);
  v444 = (&v371 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  v385 = type metadata accessor for Date();
  v58 = *(v385 - 8);
  __chkstk_darwin(v385);
  v384 = &v371 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v451 = type metadata accessor for CRLBoard.RealTimeSessionInfo(0);
  v414 = *(v451 - 8);
  __chkstk_darwin(v451);
  v450 = (&v371 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
  v61 = sub_1005B981C(&qword_101A08DF0, &qword_101486FB0);
  __chkstk_darwin(v61 - 8);
  v393 = &v371 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v63);
  v403 = &v371 - v64;
  __chkstk_darwin(v65);
  v422 = &v371 - v66;
  __chkstk_darwin(v67);
  v421 = &v371 - v68;
  __chkstk_darwin(v69);
  v426 = &v371 - v70;
  __chkstk_darwin(v71);
  v400 = &v371 - v72;
  v452 = type metadata accessor for UUID();
  v430 = *(v452 - 8);
  __chkstk_darwin(v452);
  v389 = &v371 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v74);
  v383 = &v371 - v75;
  __chkstk_darwin(v76);
  v404 = &v371 - v77;
  __chkstk_darwin(v78);
  v425 = &v371 - v79;
  __chkstk_darwin(v80);
  v424 = &v371 - v81;
  __chkstk_darwin(v82);
  v449 = (&v371 - v83);
  v408 = type metadata accessor for CRLCollaboratorCursor(0);
  __chkstk_darwin(v408);
  v442 = &v371 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  v416 = v1;
  if (Strong)
  {
    v459 = Strong;
    [Strong willProcessAuxiliaryRealTimeChanges];
    v468 = _swiftEmptyArrayStorage;
    v86 = *(v1 + OBJC_IVAR____TtC8Freeform44CRLCommandApplyBoardAuxiliaryPeerSyncUpdates_legacyUpdates);
    v87 = *(v86 + 16);
    v379 = v14;
    v380 = v10;
    v378 = *&v21;
    v387 = v28;
    v388 = v25;
    v453 = v87;
    if (v87)
    {
      v88 = 0;
      v454 = v86 + 32;
      v440 = (v415 + 48);
      v443 = (v430 + 32);
      v448 = (v414 + 48);
      v392 = (v430 + 16);
      v410 = (v430 + 8);
      v447 = OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard;
      v374 = (v58 + 40);
      v418 = OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_collaboratorCursorCoordinator;
      v396 = OBJC_IVAR____TtC8Freeform8CRLBoard_shareState;
      v399 = xmmword_10146BDE0;
      v395 = xmmword_10146F370;
      v377 = xmmword_10146C4D0;
      v89 = v459;
      v90 = v458;
      v91 = v463;
      v456 = v86;
      v58 = v86;
      do
      {
        if (v88 >= *(v58 + 16))
        {
          goto LABEL_220;
        }

        v92 = (v454 + 24 * v88);
        v94 = *(v92 + 1);
        v93 = *(v92 + 2);
        v95 = *v92;
        v460 = v88;
        if (v95 > 1)
        {
          if (v95 == 2)
          {
            sub_100024E98(v94, v93);
            sub_100024E98(v94, v93);
            v103 = v462;
            sub_1009DBD58(v94, v93, v444);
            v462 = v103;
            if (!v103)
            {
              v104 = *(*(v438 + v396) + 16);
              v457 = v93;
              if (v104)
              {
                v105 = v104;
                [v105 copy];
                _bridgeAnyObjectToAny(_:)();

                swift_unknownObjectRelease();
                sub_100006370(0, &qword_1019F52C0, CKShare_ptr);
                if (swift_dynamicCast())
                {
                  v106 = v464;
                }

                else
                {
                  v106 = 0;
                }
              }

              else
              {
                v106 = 0;
              }

              v194 = *&v447[v89];
              v195 = OBJC_IVAR____TtC8Freeform8CRLBoard_realTimeSessionInfo;
              swift_beginAccess();
              v196 = v194 + v195;
              v197 = v426;
              sub_10000BE14(v196, v426, &qword_101A08DF0, &qword_101486FB0);
              v198 = v451;
              if (!(*v448)(v197, 1, v451))
              {
                v199 = v197;
                v2 = v89;
                v200 = v94;
                v201 = v197;
                v202 = v450;
                sub_1006355FC(v199, v450);
                sub_10000CAAC(v201, &qword_101A08DF0, &qword_101486FB0);
                v1 = *(v202 + *(v198 + 24));

                sub_1006356C8(v202, type metadata accessor for CRLBoard.RealTimeSessionInfo);
                v126 = v444;
                sub_1007DA258(v444, v106);

                v203 = v200;
                v89 = v2;
                sub_10002640C(v203, v457);
                v137 = type metadata accessor for CRLRealTimeEnter;
                goto LABEL_4;
              }

              sub_10000CAAC(v197, &qword_101A08DF0, &qword_101486FB0);
              sub_1006355A8();
              v363 = swift_allocError();
              *v364 = 1;
              v462 = v363;
              swift_willThrow();

              sub_10002640C(v94, v457);
              v365 = type metadata accessor for CRLRealTimeEnter;
              v366 = v444;
              goto LABEL_211;
            }

            goto LABEL_205;
          }

          if (v95 == 3)
          {
            v467 = 0;
            v466 = 0u;
            v465 = 0u;
            sub_100024E98(v94, v93);
            sub_100024E98(v94, v93);
            sub_100024E98(v94, v93);
            BinaryDecodingOptions.init()();
            sub_100635560(&qword_1019F67E0, type metadata accessor for CRLProto_RealTimeLeave, byte_1014B42E8);
            v96 = v462;
            Message.init(serializedData:extensions:partial:options:)();
            v462 = v96;
            if (!v96)
            {
              v97 = v439;
              sub_10000BE14(v90 + *(v91 + 5), v439, &qword_1019F67C0, &unk_10146F3E0);
              v98 = *v440;
              v99 = v445;
              if ((*v440)(v97, 1, v445) == 1)
              {
                v100 = v427;
                *v427 = v395;
                UnknownStorage.init()();
                v101 = v98(v97, 1, v99);
                v89 = v459;
                if (v101 != 1)
                {
                  sub_10000CAAC(v439, &qword_1019F67C0, &unk_10146F3E0);
                }
              }

              else
              {
                v100 = v427;
                sub_100635660(v97, v427, type metadata accessor for CRLProto_Data);
              }

              v121 = *v100;
              v122 = v100[1];
              sub_100024E98(*v100, v122);
              sub_1006356C8(v100, type metadata accessor for CRLProto_Data);
              v123 = v424;
              v124 = v462;
              UUID.init(crl_data:)(v121, v122);
              v462 = v124;
              if (v124)
              {
                sub_10002640C(v94, v93);
                sub_10002640C(v94, v93);
                v365 = type metadata accessor for CRLProto_RealTimeLeave;
                v366 = v458;
              }

              else
              {
                sub_1006356C8(v458, type metadata accessor for CRLProto_RealTimeLeave);
                sub_10002640C(v94, v93);
                v125 = v123;
                v126 = v423;
                (*v443)(v423, v125, v452);
                v127 = *&v447[v89];
                v128 = OBJC_IVAR____TtC8Freeform8CRLBoard_realTimeSessionInfo;
                swift_beginAccess();
                v129 = v127 + v128;
                v130 = v421;
                v2 = v93;
                sub_10000BE14(v129, v421, &qword_101A08DF0, &qword_101486FB0);
                v131 = v451;
                if (!(*v448)(v130, 1, v451))
                {
                  v132 = v130;
                  v133 = v94;
                  v134 = v130;
                  v135 = v450;
                  sub_1006355FC(v132, v450);
                  sub_10000CAAC(v134, &qword_101A08DF0, &qword_101486FB0);
                  v1 = *(v135 + *(v131 + 24));

                  sub_1006356C8(v135, type metadata accessor for CRLBoard.RealTimeSessionInfo);
                  sub_1007DBFD8(v126);

                  v136 = v133;
                  v89 = v459;
                  sub_10002640C(v136, v93);
                  v137 = type metadata accessor for CRLRealTimeLeave;
LABEL_4:
                  sub_1006356C8(v126, v137);
                  v90 = v458;
                  v91 = v463;
                  v58 = v456;
                  goto LABEL_5;
                }

                sub_10000CAAC(v130, &qword_101A08DF0, &qword_101486FB0);
                sub_1006355A8();
                v462 = swift_allocError();
                *v367 = 1;
                swift_willThrow();
                sub_10002640C(v94, v93);
                v365 = type metadata accessor for CRLRealTimeLeave;
                v366 = v126;
              }

LABEL_211:
              sub_1006356C8(v366, v365);
              goto LABEL_216;
            }

            sub_10002640C(v94, v93);
LABEL_205:
            sub_10002640C(v94, v93);
LABEL_216:
            [v89 didProcessAuxiliaryRealTimeChanges];

            return;
          }

          v107 = v89;
          v467 = 0;
          v466 = 0u;
          v465 = 0u;
          sub_100024E98(v94, v93);
          sub_100024E98(v94, v93);
          sub_100024E98(v94, v93);
          BinaryDecodingOptions.init()();
          sub_100635560(&qword_1019F67C8, type metadata accessor for CRLProto_CollaboratorCursorColor, byte_1014B45B8);
          v108 = v434;
          v109 = v433;
          v110 = v462;
          Message.init(serializedData:extensions:partial:options:)();
          v462 = v110;
          if (v110)
          {
            sub_10002640C(v94, v93);
            sub_10002640C(v94, v93);
            v89 = v107;
            goto LABEL_216;
          }

          *&v455 = v94;
          v457 = v93;
          v111 = v429;
          sub_10000BE14(v108 + *(v109 + 24), v429, &qword_1019F67C0, &unk_10146F3E0);
          v112 = *v440;
          v113 = v445;
          if ((*v440)(v111, 1, v445) == 1)
          {
            v114 = v428;
            *v428 = v395;
            UnknownStorage.init()();
            v115 = v112(v111, 1, v113);
            v116 = v452;
            v117 = v461;
            if (v115 != 1)
            {
              sub_10000CAAC(v111, &qword_1019F67C0, &unk_10146F3E0);
            }
          }

          else
          {
            v114 = v428;
            sub_100635660(v111, v428, type metadata accessor for CRLProto_Data);
            v116 = v452;
            v117 = v461;
          }

          v138 = *v114;
          v139 = v114[1];
          sub_100024E98(*v114, v139);
          sub_1006356C8(v114, type metadata accessor for CRLProto_Data);
          v140 = v425;
          v141 = v462;
          UUID.init(crl_data:)(v138, v139);
          v462 = v141;
          if (v141)
          {
            v359 = v455;
            v360 = v457;
            sub_10002640C(v455, v457);
            sub_10002640C(v359, v360);
            v361 = type metadata accessor for CRLProto_CollaboratorCursorColor;
            v362 = v108;
          }

          else
          {
            sub_10002640C(v455, v457);
            v436 = *v443;
            (v436)(v117, v140, v116);
            v142 = *v108;
            sub_1006356C8(v108, type metadata accessor for CRLProto_CollaboratorCursorColor);
            *&v117[*(v441 + 20)] = v142;
            if (qword_1019F20F0 != -1)
            {
              swift_once();
            }

            v143 = static OS_os_log.crlCollaborationParticipant;
            v411 = sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
            inited = swift_initStackObject();
            *(inited + 16) = v399;
            v145 = UUID.uuidString.getter();
            v147 = v146;
            *(inited + 56) = &type metadata for String;
            v435 = sub_1000053B0();
            *(inited + 64) = v435;
            *(inited + 32) = v145;
            *(inited + 40) = v147;
            *(inited + 96) = &type metadata for UInt32;
            *(inited + 104) = &protocol witness table for UInt32;
            *(inited + 72) = v142;
            v148 = static os_log_type_t.default.getter();
            v446 = v143;
            sub_100005404(v143, &_mh_execute_header, v148, "Remote presence (%@) updated to color index: %d", 47, 2, inited);
            swift_setDeallocating();
            v394 = sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
            swift_arrayDestroy();
            v149 = *&v447[v459];
            v150 = OBJC_IVAR____TtC8Freeform8CRLBoard_realTimeSessionInfo;
            swift_beginAccess();
            v151 = v422;
            sub_10000BE14(v149 + v150, v422, &qword_101A08DF0, &qword_101486FB0);
            v2 = *v448;
            v152 = v451;
            if ((*v448)(v151, 1, v451))
            {
              sub_10000CAAC(v151, &qword_101A08DF0, &qword_101486FB0);
              sub_1006355A8();
              v368 = swift_allocError();
              *v369 = 1;
              v462 = v368;
              swift_willThrow();
              sub_10002640C(v455, v457);
              v361 = type metadata accessor for CRLCollaboratorCursorColor;
              v362 = v117;
            }

            else
            {
              v153 = v450;
              sub_1006355FC(v151, v450);
              sub_10000CAAC(v151, &qword_101A08DF0, &qword_101486FB0);
              v154 = *(v153 + *(v152 + 24));

              sub_1006356C8(v153, type metadata accessor for CRLBoard.RealTimeSessionInfo);
              v155 = v142;
              v156 = v419;
              sub_1007DEE9C(v117, v155, v419);
              v157 = sub_1005B981C(&qword_101A00E50, qword_10146F3F0);
              v158 = (*(*(v157 - 8) + 48))(v156, 1, v157);
              v437 = v154;
              if (v158 == 1)
              {
                sub_10000CAAC(v156, &qword_1019F67B0, &qword_10146F3D0);
                v89 = v459;
                goto LABEL_53;
              }

              v382 = v2;
              v159 = v156;
              v160 = *&v156[*(v157 + 48)];
              v161 = v406;
              v162 = v407;
              v163 = *(v407 + 48);
              v164 = v452;
              v165 = v436;
              (v436)(v406, v159, v452);
              *&v161[v163] = v160;
              LODWORD(v162) = *&v161[*(v162 + 48)];
              v166 = v404;
              (v165)(v404, v161, v164);
              v2 = v166;
              v167 = swift_initStackObject();
              *(v167 + 16) = v377;
              v168 = UUID.uuidString.getter();
              v169 = v435;
              *(v167 + 56) = &type metadata for String;
              *(v167 + 64) = v169;
              *(v167 + 32) = v168;
              *(v167 + 40) = v170;
              v171 = UUID.uuidString.getter();
              *(v167 + 96) = &type metadata for String;
              *(v167 + 104) = v169;
              *(v167 + 72) = v171;
              *(v167 + 80) = v172;
              *(v167 + 136) = &type metadata for UInt32;
              *(v167 + 144) = &protocol witness table for UInt32;
              *(v167 + 112) = v162;
              v173 = static os_log_type_t.default.getter();
              sub_100005404(v446, &_mh_execute_header, v173, "Remote presence (%@) color index conflicts and is older. Updated local presence (%@) color index to %@ and sending change.", 122, 2, v167);
              swift_setDeallocating();
              swift_arrayDestroy();
              v174 = v405;
              (*v392)(v405, v2, v164);
              *(v174 + *(v441 + 20)) = v162;
              v175 = v462;
              v176 = sub_100C9122C();
              v462 = v175;
              if (!v175)
              {
                v178 = v176;
                v179 = v177;
                v180 = *&v447[v459];
                v181 = OBJC_IVAR____TtC8Freeform8CRLBoard_realTimeSessionInfo;
                swift_beginAccess();
                v182 = v180 + v181;
                v183 = v403;
                sub_10000BE14(v182, v403, &qword_101A08DF0, &qword_101486FB0);
                if ((v382)(v183, 1, v451))
                {
                  sub_10002640C(v178, v179);
                  sub_1006356C8(v174, type metadata accessor for CRLCollaboratorCursorColor);
                  (*v410)(v2, v452);
                  sub_10000CAAC(v183, &qword_101A08DF0, &qword_101486FB0);
                }

                else
                {
                  v204 = v450;
                  sub_1006355FC(v183, v450);
                  sub_10000CAAC(v183, &qword_101A08DF0, &qword_101486FB0);
                  v205 = *v204;

                  sub_1006356C8(v204, type metadata accessor for CRLBoard.RealTimeSessionInfo);
                  sub_1010FA43C(4, v178, v179, v205);
                  sub_10002640C(v178, v179);

                  sub_1006356C8(v174, type metadata accessor for CRLCollaboratorCursorColor);
                  (*v410)(v2, v452);
                }

                v89 = v459;
                v154 = v437;
LABEL_53:
                swift_beginAccess();
                v206 = *(v154 + 2);
                v90 = v458;
                v91 = v463;
                v58 = v456;
                v1 = v457;
                v207 = v455;
                if (v206 >> 62)
                {
                  v2 = v206;
                  v208 = _CocoaArrayWrapper.endIndex.getter();
                  v206 = v2;
                  if (v208)
                  {
                    goto LABEL_55;
                  }
                }

                else
                {
                  v208 = *((v206 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  if (v208)
                  {
LABEL_55:
                    v436 = (v206 & 0xC000000000000001);
                    v394 = v206 & 0xFFFFFFFFFFFFFF8;
                    v382 = v206 + 32;
                    v435 = v206;

                    v2 = 0;
                    v411 = v208;
                    while (1)
                    {
                      if (v436)
                      {
                        v209 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                      }

                      else
                      {
                        if (v2 >= *(v394 + 16))
                        {
                          goto LABEL_224;
                        }

                        v209 = *(v382 + 8 * v2);
                      }

                      v1 = v209;
                      v210 = __OFADD__(v2++, 1);
                      if (v210)
                      {
                        goto LABEL_223;
                      }

                      swift_getKeyPath();
                      swift_getKeyPath();
                      static Published.subscript.getter();

                      v211 = v465;
                      v212 = v465 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v465 & 0xFFFFFFFFFFFFFF8) + 0x10);
                      v91 = v463;
                      v446 = v1;
                      if (v212)
                      {
                        break;
                      }

LABEL_56:

                      v89 = v459;
                      v90 = v458;
                      v58 = v456;
                      v1 = v457;
                      v207 = v455;
                      if (v2 == v411)
                      {

                        goto LABEL_128;
                      }
                    }

                    v58 = 0;
                    LODWORD(v1) = v211 & 0xFFFFFFF8;
                    while (1)
                    {
                      if ((v211 & 0xC000000000000001) != 0)
                      {
                        v213 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                      }

                      else
                      {
                        if (v58 >= *((v211 & 0xFFFFFFFFFFFFFF8) + 0x10))
                        {
                          goto LABEL_218;
                        }

                        v213 = *(v211 + 8 * v58 + 32);
                      }

                      v214 = v213;
                      v90 = (v58 + 1);
                      if (__OFADD__(v58, 1))
                      {
                        break;
                      }

                      if (static UUID.== infix(_:_:)())
                      {

                        v89 = v459;
                        sub_100D57E74(v214);

                        v90 = v458;
                        v91 = v463;
                        v58 = v456;
                        v1 = v457;
                        v207 = v455;
                        goto LABEL_128;
                      }

                      ++v58;
                      v91 = v463;
                      if (v90 == v212)
                      {
                        goto LABEL_56;
                      }
                    }

                    __break(1u);
LABEL_218:
                    __break(1u);
LABEL_219:
                    __break(1u);
LABEL_220:
                    __break(1u);
LABEL_221:
                    __break(1u);
LABEL_222:
                    __break(1u);
LABEL_223:
                    __break(1u);
LABEL_224:
                    __break(1u);
                    goto LABEL_225;
                  }
                }

LABEL_128:
                sub_10002640C(v207, v1);
                sub_1006356C8(v461, type metadata accessor for CRLCollaboratorCursorColor);
                goto LABEL_5;
              }

              sub_10002640C(v455, v457);
              sub_1006356C8(v174, type metadata accessor for CRLCollaboratorCursorColor);
              (*v410)(v2, v164);
              v362 = v461;
              v361 = type metadata accessor for CRLCollaboratorCursorColor;
            }
          }

          sub_1006356C8(v362, v361);
LABEL_215:
          v89 = v459;
          goto LABEL_216;
        }

        if (!v95)
        {
          sub_100024E98(v94, v93);
          if (qword_1019F2288 != -1)
          {
            swift_once();
          }

          v1 = static OS_os_log.realTimeSync;
          v102 = static os_log_type_t.default.getter();
          sub_100005404(v1, &_mh_execute_header, v102, "Non-model legacy test change sent.", 34, 2, _swiftEmptyArrayStorage);
          sub_10002640C(v94, v93);
          goto LABEL_5;
        }

        v118 = *(v89 + v418);
        sub_100024E98(v94, v93);
        sub_100024E98(v94, v93);
        v1 = v118;
        v119 = v442;
        v120 = v462;
        sub_100B41FAC(v94, v93, v442);
        v462 = v120;
        if (v120)
        {

          LODWORD(v1) = v462;
          v462 = 0;
LABEL_45:
          v58 = v456;
          if (qword_1019F21A8 != -1)
          {
            swift_once();
          }

          v192 = static OS_os_log.crlCollaboratorCursor;
          v193 = static os_log_type_t.error.getter();
          sub_100005404(v192, &_mh_execute_header, v193, "Error reading selection from peers", 34, 2, _swiftEmptyArrayStorage);
          sub_10002640C(v94, v93);

          v90 = v458;
          goto LABEL_5;
        }

        v435 = v1;
        *&v455 = v94;
        v457 = v93;
        v2 = *&v119[*(v408 + 20)];
        v184 = v449;
        v185 = v452;
        (*v392)(v449, v119, v452);
        v186 = *&v447[v89];
        v187 = OBJC_IVAR____TtC8Freeform8CRLBoard_realTimeSessionInfo;
        swift_beginAccess();
        v188 = v186 + v187;
        v189 = v400;
        sub_10000BE14(v188, v400, &qword_101A08DF0, &qword_101486FB0);
        v190 = v451;
        if ((*v448)(v189, 1, v451))
        {
          sub_10000CAAC(v189, &qword_101A08DF0, &qword_101486FB0);
          sub_1006355A8();
          LODWORD(v1) = swift_allocError();
          *v191 = 1;
          swift_willThrow();

          (*v410)(v184, v185);
          sub_1006356C8(v442, type metadata accessor for CRLCollaboratorCursor);
          v462 = 0;
          v91 = v463;
          v93 = v457;
          v94 = v455;
          goto LABEL_45;
        }

        v215 = v189;
        v216 = v189;
        v217 = v450;
        sub_1006355FC(v215, v450);
        sub_10000CAAC(v216, &qword_101A08DF0, &qword_101486FB0);
        v218 = *(v217 + *(v190 + 24));

        sub_1006356C8(v217, type metadata accessor for CRLBoard.RealTimeSessionInfo);
        swift_beginAccess();
        v411 = v218;
        v219 = *(v218 + 16);
        if (v219 >> 62)
        {
          v266 = *(v218 + 16);
          v220 = _CocoaArrayWrapper.endIndex.getter();
          v219 = v266;
        }

        else
        {
          v220 = *((v219 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v90 = v458;
        v91 = v463;
        v58 = v456;
        v221 = v457;
        v222 = v455;
        if (!v220)
        {

LABEL_121:
          if (qword_1019F21A8 != -1)
          {
            swift_once();
          }

          v1 = static OS_os_log.crlCollaboratorCursor;
          v265 = static os_log_type_t.error.getter();
          sub_100005404(v1, &_mh_execute_header, v265, "Failed to find a presence for the given presenceUUID and collaborator cursor.", 77, 2, _swiftEmptyArrayStorage);

          sub_10002640C(v222, v221);
          goto LABEL_135;
        }

        v437 = (v219 & 0xC000000000000001);
        v382 = v219 & 0xFFFFFFFFFFFFFF8;
        v376 = (v219 + 32);
        v436 = v219;

        v90 = 0;
        v394 = v220;
        v372 = v2;
        while (1)
        {
          if (v437)
          {
            v223 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v90 >= *(v382 + 16))
            {
              goto LABEL_229;
            }

            v223 = v376[v90];
          }

          v224 = v223;
          v210 = __OFADD__(v90, 1);
          v90 = (v90 + 1);
          if (v210)
          {
            __break(1u);
LABEL_229:
            __break(1u);
            goto LABEL_230;
          }

          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v2 = v465;
          v446 = v224;
          if (!(v465 >> 62))
          {
            v1 = *((v465 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v91 = v463;
            if (v1)
            {
              break;
            }

            goto LABEL_80;
          }

          v1 = _CocoaArrayWrapper.endIndex.getter();
          v91 = v463;
          if (v1)
          {
            break;
          }

LABEL_80:

          v89 = v459;
          v58 = v456;
          v221 = v457;
          v222 = v455;
          if (v90 == v394)
          {

            v90 = v458;
            goto LABEL_121;
          }
        }

        v58 = 0;
        while (1)
        {
          if ((v2 & 0xC000000000000001) != 0)
          {
            v225 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v58 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_222;
            }

            v225 = *(v2 + 8 * v58 + 32);
          }

          v226 = v225;
          v227 = (v58 + 1);
          if (__OFADD__(v58, 1))
          {
            goto LABEL_221;
          }

          if (static UUID.== infix(_:_:)())
          {
            break;
          }

          ++v58;
          v91 = v463;
          if (v227 == v1)
          {
            goto LABEL_80;
          }
        }

        v228 = v226;
        v229 = v384;
        Date.init(timeIntervalSinceReferenceDate:)();
        v230 = OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_lastCursorUpdateTime;
        swift_beginAccess();
        (*v374)(&v228[v230], v229, v385);
        swift_endAccess();
        v411 = v228;
        v231 = swift_unknownObjectWeakLoadStrong();
        v232 = v459;
        if (!v231)
        {
          goto LABEL_132;
        }

        v233 = v231;
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v234 = v465;
        v371 = v233;
        if (v465 >> 62)
        {
          v235 = _CocoaArrayWrapper.endIndex.getter();
          v236 = v435;
          if (!v235)
          {
            goto LABEL_131;
          }

LABEL_102:
          if (v235 >= 1)
          {
            v394 = v234 & 0xC000000000000001;
            v237 = OBJC_IVAR____TtC8Freeform32CRLCollaboratorCursorCoordinator__collaboratorsToCursorsMap;
            swift_beginAccess();
            v238 = 0;
            v375 = v234;
            v382 = v235;
            v446 = v237;
            while (1)
            {
              v246 = v394 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v234 + 8 * v238 + 32);
              v245 = v246;
              if (v246 != v411)
              {
                break;
              }

LABEL_106:
              ++v238;

              if (v235 == v238)
              {
                goto LABEL_131;
              }
            }

            v247 = v237;
            v248 = OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_presenceUUID;
            v249 = *(v247 + v236);
            if (*(v249 + 16))
            {

              v250 = sub_10003E994(&v245[v248]);
              if (v251)
              {
                v252 = *(v249 + 56) + 32 * v250;
                v253 = *(v252 + 8);
                v254 = *(v252 + 16);
                v255 = *(v252 + 24);
                v376 = *v252;
                v256 = v253;
                v236 = v435;
                v373 = v256;
                v437 = v254;
                v257 = v255;
                v234 = v375;
                v258 = v257;

                v436 = v258;
                if (v258)
                {

LABEL_117:
                  swift_beginAccess();
                  v259 = sub_10003E994(&v245[v248]);
                  if (v260)
                  {
                    v261 = v259;
                    v262 = v446;
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v264 = *(v262 + v236);
                    v464 = v264;
                    *(v262 + v236) = 0x8000000000000000;
                    if (!isUniquelyReferenced_nonNull_native)
                    {
                      sub_100AA53D0();
                      v264 = v464;
                    }

                    (*(v430 + 8))(*(v264 + 48) + *(v430 + 72) * v261, v452);
                    v239 = *(v264 + 56) + 32 * v261;
                    v240 = *(v239 + 8);
                    v376 = *v239;
                    v242 = *(v239 + 16);
                    v241 = *(v239 + 24);
                    sub_100BCDD6C(v261, v264);
                    v243 = v435;
                    *(v262 + v435) = v264;

                    v232 = v459;
                    v236 = v243;
                    v234 = v375;
                  }

                  swift_endAccess();
                  v244 = v437;
                  sub_100D59258(v437, 0, v245);

                  v245 = v244;
                  v235 = v382;
                  v237 = v446;
                  goto LABEL_106;
                }
              }

              else
              {
              }
            }

            v436 = [objc_opt_self() mapTableWithKeyOptions:512 valueOptions:{0, v371}];
            v437 = 0;
            goto LABEL_117;
          }

LABEL_230:
          __break(1u);
          return;
        }

        v235 = *((v465 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v236 = v435;
        if (v235)
        {
          goto LABEL_102;
        }

LABEL_131:

LABEL_132:
        v2 = v372;
        if (qword_1019F21A8 != -1)
        {
          swift_once();
        }

        v267 = static OS_os_log.crlCollaboratorCursor;
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        v268 = swift_allocObject();
        *(v268 + 16) = v399;
        *(v268 + 56) = type metadata accessor for CRLPersistableSelectionPath(0);
        *(v268 + 64) = sub_100635560(&qword_1019F67E8, type metadata accessor for CRLPersistableSelectionPath, &protocol conformance descriptor for NSObject);
        *(v268 + 32) = v2;
        *(v268 + 96) = type metadata accessor for CRLCollaboratorPresence(0);
        *(v268 + 104) = sub_100635560(&qword_1019F67F0, type metadata accessor for CRLCollaboratorPresence, &protocol conformance descriptor for NSObject);
        v269 = v411;
        *(v268 + 72) = v411;
        v270 = v269;
        v271 = v2;
        v272 = static os_log_type_t.default.getter();
        sub_100005404(v267, &_mh_execute_header, v272, "Collaborator Cursor: Received an updated collab cursor for selection path: %{public}@, from collaborator: %{public}@", 116, 2, v268);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v1 = v435;
        sub_100D576AC(v271, v270);

        sub_10002640C(v455, v457);
        v90 = v458;
        v91 = v463;
        v89 = v232;
        v58 = v456;
LABEL_135:
        (*v410)(v449, v452);
        sub_1006356C8(v442, type metadata accessor for CRLCollaboratorCursor);
LABEL_5:
        v88 = v460 + 1;
      }

      while (v460 + 1 != v453);
    }

    v2 = *(v416 + OBJC_IVAR____TtC8Freeform44CRLCommandApplyBoardAuxiliaryPeerSyncUpdates_updates);
    v295 = *(v2 + 16);
    if (v295)
    {
      v296 = 0;
      v444 = (v415 + 48);
      v442 = (v430 + 32);
      v446 = (v414 + 48);
      v440 = OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard;
      v448 = (v430 + 56);
      v449 = (v430 + 16);
      v447 = (v430 + 48);
      v457 = _swiftEmptyArrayStorage;
      v443 = (v430 + 8);
      v463 = OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_followCoordinator;
      v90 = (v2 + 48);
      v441 = xmmword_10146F370;
      v455 = xmmword_10146C6B0;
      v460 = v2;
      v458 = v295;
      while (1)
      {
        if (v296 >= *(v2 + 16))
        {
          goto LABEL_219;
        }

        v58 = *(v90 - 1);
        v297 = *v90;
        v298 = *(v90 - 16);
        if (v298 > 6)
        {
          if (v298 - 9 >= 5)
          {
            if (v298 != 7)
            {
              v467 = 0;
              v466 = 0u;
              v465 = 0u;
              sub_100024E98(v58, v297);
              sub_100024E98(v58, v297);
              sub_100024E98(v58, v297);
              BinaryDecodingOptions.init()();
              sub_100635560(&qword_1019F67D8, type metadata accessor for CRLProto_BoardItemIdentifier, "\tR8");
              v309 = v412;
              v310 = v402;
              v311 = v462;
              Message.init(serializedData:extensions:partial:options:)();
              v312 = v311;
              if (v311)
              {
                sub_10002640C(v58, v297);
                goto LABEL_182;
              }

              v461 = 0;
              v331 = v309 + *(v310 + 20);
              v332 = v391;
              sub_10000BE14(v331, v391, &qword_1019F67C0, &unk_10146F3E0);
              v333 = v445;
              v462 = *v444;
              v334 = (v462)(v332, 1, v445);
              v335 = v390;
              if (v334 == 1)
              {
                *v390 = v441;
                UnknownStorage.init()();
                if ((v462)(v332, 1, v333) != 1)
                {
                  sub_10000CAAC(v332, &qword_1019F67C0, &unk_10146F3E0);
                }
              }

              else
              {
                sub_100635660(v332, v390, type metadata accessor for CRLProto_Data);
              }

              v338 = *v335;
              v339 = v335[1];
              sub_100024E98(*v335, v339);
              sub_1006356C8(v335, type metadata accessor for CRLProto_Data);
              v340 = v389;
              v341 = v461;
              UUID.init(crl_data:)(v338, v339);
              v462 = v341;
              if (v341)
              {
                sub_1006356C8(v412, type metadata accessor for CRLProto_BoardItemIdentifier);
                sub_10002640C(v58, v297);
                v312 = v462;
LABEL_182:
                v462 = 0;
                if (qword_1019F2288 != -1)
                {
                  swift_once();
                }

                v456 = static OS_os_log.realTimeSync;
                sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
                v342 = swift_initStackObject();
                *(v342 + 16) = v455;
                swift_getErrorValue();
                v1 = Error.localizedDescription.getter();
                v461 = v312;
                v344 = v343;
                *(v342 + 56) = &type metadata for String;
                *(v342 + 64) = sub_1000053B0();
                *(v342 + 32) = v1;
                *(v342 + 40) = v344;
                v345 = static os_log_type_t.error.getter();
                sub_100005404(v456, &_mh_execute_header, v345, "Failed to deserialize a CRLServerSyncedPeerAddedItemEvent with error %@", 71, 2, v342);

                sub_10002640C(v58, v297);
                swift_setDeallocating();
                sub_100005070((v342 + 32));
              }

              else
              {
                sub_1006356C8(v412, type metadata accessor for CRLProto_BoardItemIdentifier);
                sub_10002640C(v58, v297);
                v349 = v381;
                (*v442)(v381, v340, v452);
                sub_100635660(v349, v386, type metadata accessor for CRLServerSyncedPeerAddedItemEvent);
                v350 = *(v440 + v459);
                isa = UUID._bridgeToObjectiveC()().super.isa;
                v352 = [v350 getBoardItemForUUID:isa];

                if (v352)
                {
                  (*((swift_isaMask & *v352) + 0x258))(0);
                  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                  if (*((v468 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v468 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    v461 = v350;
                    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                    v350 = v461;
                  }

                  v1 = &v468;
                  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

                  sub_10002640C(v58, v297);
                  sub_1006356C8(v386, type metadata accessor for CRLServerSyncedPeerAddedItemEvent);
                  v457 = v468;
                  v295 = v458;
                  v2 = v460;
                  goto LABEL_143;
                }

                v461 = v350;
                if (qword_1019F2288 != -1)
                {
                  swift_once();
                }

                v456 = static OS_os_log.realTimeSync;
                sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
                v353 = swift_initStackObject();
                *(v353 + 16) = v455;
                v1 = UUID.uuidString.getter();
                v355 = v354;
                *(v353 + 56) = &type metadata for String;
                *(v353 + 64) = sub_1000053B0();
                *(v353 + 32) = v1;
                *(v353 + 40) = v355;
                v356 = static os_log_type_t.debug.getter();
                sub_100005404(v456, &_mh_execute_header, v356, "Received a CRLServerSyncedPeerAddedItemEvent but couldn't find the corresponding item %{public}@ on the board", 109, 2, v353);
                sub_10002640C(v58, v297);

                swift_setDeallocating();
                sub_100005070((v353 + 32));
                sub_1006356C8(v386, type metadata accessor for CRLServerSyncedPeerAddedItemEvent);
              }

              v2 = v460;
              v295 = v458;
              goto LABEL_143;
            }

            sub_100024E98(*(v90 - 1), *v90);
            sub_100024E98(v58, v297);
            v301 = v380;
            v307 = v462;
            sub_100FB0FA8(v58, v297, v380);
            v462 = v307;
            if (v307)
            {
              goto LABEL_203;
            }

            v1 = *&v463[v459];
            sub_10090C4E4(v301);
            sub_10002640C(v58, v297);
            v306 = type metadata accessor for CRLRefuseOrEndFollow;
            goto LABEL_161;
          }
        }

        else if (*(v90 - 16) > 2u)
        {
          if (v298 - 4 >= 2)
          {
            v303 = *(v90 - 1);
            v304 = *v90;
            if (v298 != 3)
            {
              sub_100024E98(v303, v304);
              sub_100024E98(v58, v297);
              v313 = v462;
              sub_100B80908(v58, v297, v420);
              v462 = v313;
              if (v313)
              {
LABEL_203:
                sub_10002640C(v58, v297);

                goto LABEL_215;
              }

              v456 = *&v463[v459];
              v314 = swift_unknownObjectWeakLoadStrong();
              v454 = v297;
              v453 = v58;
              if (!v314)
              {
                goto LABEL_168;
              }

              v315 = *(v314 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard);
              v316 = OBJC_IVAR____TtC8Freeform8CRLBoard_realTimeSessionInfo;
              swift_beginAccess();
              v317 = v315 + v316;
              v318 = v393;
              sub_10000BE14(v317, v393, &qword_101A08DF0, &qword_101486FB0);
              swift_unknownObjectRelease();
              if ((*v446)(v318, 1, v451))
              {
                sub_10000CAAC(v318, &qword_101A08DF0, &qword_101486FB0);
                goto LABEL_168;
              }

              v347 = v450;
              sub_1006355FC(v318, v450);
              sub_10000CAAC(v318, &qword_101A08DF0, &qword_101486FB0);

              sub_1006356C8(v347, type metadata accessor for CRLBoard.RealTimeSessionInfo);
              v348 = sub_1007DE5D0();

              if (v348)
              {
                v321 = v413;
                (*v449)(v413, &v348[OBJC_IVAR____TtC8Freeform23CRLCollaboratorPresence_presenceUUID], v452);

                v319 = 0;
                v320 = v409;
              }

              else
              {
LABEL_168:
                v319 = 1;
                v320 = v409;
                v321 = v413;
              }

              v322 = *v448;
              v323 = v452;
              (*v448)(v321, v319, 1, v452);
              (*v449)(v320, &v420[*(v397 + 20)], v323);
              v322(v320, 0, 1, v323);
              v324 = *(v398 + 48);
              v325 = v417;
              sub_10000BE14(v321, v417, &qword_1019F6990, &qword_10146D2F0);
              v461 = v324;
              sub_10000BE14(v320, &v324[v325], &qword_1019F6990, &qword_10146D2F0);
              v326 = v320;
              v327 = *v447;
              if ((*v447)(v325, 1, v323) == 1)
              {
                sub_10000CAAC(v326, &qword_1019F6990, &qword_10146D2F0);
                sub_10000CAAC(v413, &qword_1019F6990, &qword_10146D2F0);
                v1 = v417;
                v328 = v327(&v461[v417], 1, v323) == 1;
                v329 = v1;
                v295 = v458;
                v330 = v454;
                v58 = v453;
                if (!v328)
                {
LABEL_178:
                  sub_10000CAAC(v329, &unk_101A0AFE0, &unk_10146F3C0);
                  goto LABEL_188;
                }

                sub_10000CAAC(v1, &qword_1019F6990, &qword_10146D2F0);
              }

              else
              {
                v336 = v417;
                sub_10000BE14(v417, v379, &qword_1019F6990, &qword_10146D2F0);
                v337 = v327(&v461[v336], 1, v323);
                v1 = &qword_1019F6990;
                v330 = v454;
                v58 = v453;
                if (v337 == 1)
                {
                  sub_10000CAAC(v409, &qword_1019F6990, &qword_10146D2F0);
                  sub_10000CAAC(v413, &qword_1019F6990, &qword_10146D2F0);
                  (*v443)(v379, v323);
                  v329 = v417;
                  v295 = v458;
                  goto LABEL_178;
                }

                v346 = v383;
                (*v442)(v383, &v461[v417], v323);
                sub_100635560(&qword_1019F37C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
                LODWORD(v461) = dispatch thunk of static Equatable.== infix(_:_:)();
                v1 = *v443;
                (*v443)(v346, v323);
                sub_10000CAAC(v409, &qword_1019F6990, &qword_10146D2F0);
                sub_10000CAAC(v413, &qword_1019F6990, &qword_10146D2F0);
                (v1)(v379, v323);
                sub_10000CAAC(v417, &qword_1019F6990, &qword_10146D2F0);
                v295 = v458;
                if ((v461 & 1) == 0)
                {
LABEL_188:
                  sub_10002640C(v58, v330);
                  sub_1006356C8(v420, type metadata accessor for CRLStartOrEndFollow);
                  v2 = v460;
                  goto LABEL_143;
                }
              }

              LODWORD(v1) = v456;
              sub_1009056EC(0, 1);
              goto LABEL_188;
            }

            sub_100024E98(v303, v304);
            sub_100024E98(v58, v297);
            v301 = *&v378;
            v305 = v462;
            sub_100C3BF5C(v58, v297, v378);
            v462 = v305;
            if (v305)
            {
              goto LABEL_203;
            }

            v1 = *&v463[v459];
            sub_100908C90(v301);
            sub_10002640C(v58, v297);
            v306 = type metadata accessor for CRLFollowViewportState;
            goto LABEL_161;
          }
        }

        else if (*(v90 - 16))
        {
          v299 = *(v90 - 1);
          v300 = *v90;
          if (v298 == 1)
          {
            sub_100024E98(v299, v300);
            sub_100024E98(v58, v297);
            v301 = v387;
            v302 = v462;
            sub_100B80908(v58, v297, v387);
            v462 = v302;
            if (v302)
            {
              goto LABEL_203;
            }

            v1 = *&v463[v459];
            sub_10090B504(v301);
          }

          else
          {
            sub_100024E98(v299, v300);
            sub_100024E98(v58, v297);
            v301 = v388;
            v308 = v462;
            sub_100B80908(v58, v297, v388);
            v462 = v308;
            if (v308)
            {
              goto LABEL_203;
            }

            v1 = *&v463[v459];
            sub_10090BD88(v301);
          }

          sub_10002640C(v58, v297);
          v306 = type metadata accessor for CRLStartOrEndFollow;
LABEL_161:
          sub_1006356C8(v301, v306);
        }

LABEL_143:
        ++v296;
        v90 += 4;
        if (v295 == v296)
        {
          goto LABEL_199;
        }
      }
    }

    v457 = _swiftEmptyArrayStorage;
LABEL_199:
    v357 = v457;
    if (v457 >> 62)
    {
      v370 = _CocoaArrayWrapper.endIndex.getter();
      v358 = v459;
      if (!v370)
      {
        goto LABEL_202;
      }
    }

    else
    {
      v358 = v459;
      if (!*((v457 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_202:

        [v358 didProcessAuxiliaryRealTimeChanges];

        return;
      }
    }

    sub_100770A7C(v357);
    goto LABEL_202;
  }

  v463 = objc_opt_self();
  LODWORD(v1) = [v463 _atomicIncrementAssertCount];
  *&v465 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v465, "invalid nil found when unwrapping value", 39, 2u);
  StaticString.description.getter("commit(with:transaction:undoable:)", 34, 2);
  v90 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCommands/CRLCommandApplyBoardAuxiliaryPeerSyncUpdates.swift", 116, 2);
  v273 = String._bridgeToObjectiveC()();

  v274 = [v273 lastPathComponent];

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v58 = v275;

  if (qword_1019F20A0 != -1)
  {
LABEL_225:
    swift_once();
  }

  v276 = static OS_os_log.crlAssert;
  v461 = sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v277 = swift_initStackObject();
  *(v277 + 16) = xmmword_10146CA70;
  *(v277 + 56) = &type metadata for Int32;
  *(v277 + 64) = &protocol witness table for Int32;
  *(v277 + 32) = v1;
  v278 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(v277 + 96) = v278;
  v279 = sub_1005CF04C();
  *(v277 + 104) = v279;
  *(v277 + 72) = v90;
  *(v277 + 136) = &type metadata for String;
  v280 = sub_1000053B0();
  *(v277 + 112) = v2;
  *(v277 + 120) = v58;
  *(v277 + 176) = &type metadata for UInt;
  *(v277 + 184) = &protocol witness table for UInt;
  *(v277 + 144) = v280;
  *(v277 + 152) = 44;
  v281 = v465;
  *(v277 + 216) = v278;
  *(v277 + 224) = v279;
  *(v277 + 192) = v281;
  v282 = v90;
  v283 = v281;
  v284 = static os_log_type_t.error.getter();
  sub_100005404(v276, &_mh_execute_header, v284, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v277);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v285 = static os_log_type_t.error.getter();
  sub_100005404(v276, &_mh_execute_header, v285, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v286 = swift_allocObject();
  v286[2] = 8;
  v286[3] = 0;
  v286[4] = 0;
  v286[5] = 0;
  v287 = __VaListBuilder.va_list()();
  StaticString.description.getter("commit(with:transaction:undoable:)", 34, 2);
  v288 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCommands/CRLCommandApplyBoardAuxiliaryPeerSyncUpdates.swift", 116, 2);
  v289 = String._bridgeToObjectiveC()();

  StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
  v290 = String._bridgeToObjectiveC()();

  [v463 handleFailureInFunction:v288 file:v289 lineNumber:44 isFatal:0 format:v290 args:v287];

  if (qword_1019F2288 != -1)
  {
    swift_once();
  }

  v291 = static OS_os_log.realTimeSync;
  v292 = swift_initStackObject();
  *(v292 + 16) = xmmword_10146C6B0;
  v293 = *(*(v416 + OBJC_IVAR____TtC8Freeform44CRLCommandApplyBoardAuxiliaryPeerSyncUpdates_updates) + 16);
  *(v292 + 56) = &type metadata for Int;
  *(v292 + 64) = &protocol witness table for Int;
  *(v292 + 32) = v293;
  v294 = static os_log_type_t.error.getter();
  sub_100005404(v291, &_mh_execute_header, v294, "No editing coordinator. Ignoring %d update(s).", 46, 2, v292);
  swift_setDeallocating();
  sub_100005070((v292 + 32));
}

uint64_t sub_10063545C()
{
  swift_unknownObjectWeakDestroy();
}

id sub_1006354AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLCommandApplyBoardAuxiliaryPeerSyncUpdates();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100635560(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t sub_1006355A8()
{
  result = qword_1019F67D0;
  if (!qword_1019F67D0)
  {
    result = swift_getWitnessTable("կ:", &type metadata for CRLEditingCoordinator.CollaborationAccessError, v0, v1);
    atomic_store(result, &qword_1019F67D0);
  }

  return result;
}

uint64_t sub_1006355FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLBoard.RealTimeSessionInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100635660(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1006356C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100635728(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&qword_1019F67F8, &qword_10146F488);
  *&v8 = __chkstk_darwin(v7 - 8).n128_u64[0];
  v10 = &v14 - v9;
  if ([v2 isViewLoaded])
  {
    v11 = [v2 view];
    if (v11)
    {
      v12 = v11;
      type metadata accessor for CRLBoardEntity(0);
      sub_100616494(a1, v6, type metadata accessor for CRLBoardIdentifier);
      sub_100635C6C();
      EntityIdentifier.init<A>(for:identifier:)();
      v13 = type metadata accessor for EntityIdentifier();
      (*(*(v13 - 8) + 56))(v10, 0, 1, v13);
      UIView.appEntityIdentifier.setter();
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_1006358C0(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for AppEntityVisualState();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v2 isViewLoaded];
  if (result)
  {
    result = [v2 view];
    if (result)
    {
      v11 = result;
      v12[1] = v2;
      (*(a2 + 8))(a1, a2);
      UIView.updateAppEntityAnnotation(with:)();

      return (*(v6 + 8))(v9, v5);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_100635A04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for AppEntityVisualState();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for CRLBoardEntity(0);
  __chkstk_darwin(v9);
  sub_100616494(a1, v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CRLBoardEntity);
  v13[1] = v4;
  (*(a3 + 8))(a2, a3);
  v11 = objc_allocWithZone(type metadata accessor for AppEntityViewAnnotation());
  sub_100635C6C();
  v12 = AppEntityViewAnnotation.init<A>(entity:state:)();
  UIView.annotate(with:)();
}

uint64_t sub_100635B60(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for AppEntityVisualState();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v2;
  (*(a2 + 8))(a1, a2, v7);
  UIView.updateAppEntityAnnotation(with:)();
  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_100635C6C()
{
  result = qword_1019F6290;
  if (!qword_1019F6290)
  {
    v3 = type metadata accessor for CRLBoardEntity(255);
    result = swift_getWitnessTable(aQ_25, v3, v0, v1);
    atomic_store(result, &qword_1019F6290);
  }

  return result;
}

id sub_100635F20(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CRLCanvasBackground();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_10063601C(char a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = [v3 view];
      if (!v4)
      {
        __break(1u);
        return;
      }

      v5 = v4;
      [v4 setUserInteractionEnabled:a1 & 1];

      swift_unknownObjectRelease();
      v6 = v5;
    }

    else
    {
      v6 = v7;
    }
  }
}

id sub_100636164()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLMiniFormatterDynamicOperationViewHelper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100636208()
{
  result = qword_101A00020;
  if (!qword_101A00020)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_101A00020);
  }

  return result;
}

id sub_1006362F0(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CRLAnalyticsShapeInserted();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_10063634C(uint64_t a1, uint64_t a2, char a3)
{
  if (a2)
  {
    sub_100043E40(_swiftEmptyArrayStorage);
    v4 = String._bridgeToObjectiveC()();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100043E54(v4, 0x6564496570616873, 0xEF7265696669746ELL, isUniquelyReferenced_nonNull_native);
    v6 = [objc_allocWithZone(NSNumber) initWithBool:a3 & 1];
    v7 = swift_isUniquelyReferenced_nonNull_native();
    sub_100043E54(v6, 0xD000000000000011, 0x8000000101559D20, v7);
    v8 = objc_opt_self();
    v9 = String._bridgeToObjectiveC()();
    sub_1006364DC();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v8 sendEventInDomain:v9 lazily:1 eventPayload:isa];
  }
}

unint64_t sub_1006364DC()
{
  result = qword_1019F54D0;
  if (!qword_1019F54D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1019F54D0);
  }

  return result;
}

void *sub_100636528(uint64_t a1)
{
  v3 = type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry(0);
  v42 = *(v3 - 8);
  v43 = v3;
  __chkstk_darwin(v3);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (!v6)
  {
    return result;
  }

  v35 = v1;
  v47 = _swiftEmptyArrayStorage;
  v46 = v5;
  sub_100776844(0, v6, 0);
  v44 = v47;
  v8 = a1 + 64;
  result = _HashTable.startBucket.getter();
  v9 = result;
  v10 = 0;
  v45 = *(a1 + 36);
  v37 = 0x8000000101551690;
  v38 = 0x80000001015516B0;
  v36 = 0x8000000101551670;
  v39 = a1 + 72;
  v40 = v6;
  v41 = a1 + 64;
  while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
  {
    v12 = v9 >> 6;
    if ((*(v8 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
    {
      goto LABEL_47;
    }

    if (v45 != *(a1 + 36))
    {
      goto LABEL_48;
    }

    v13 = *(*(a1 + 48) + v9);
    v14 = (*(a1 + 56) + 16 * v9);
    v16 = *v14;
    v15 = v14[1];
    sub_100024E98(*v14, v15);
    v17 = v46;
    UnknownStorage.init()();
    if (v13 > 2)
    {
      if (v13 == 3)
      {
        v18 = 0x44656C7573706163;
        v19 = 0xEB00000000617461;
      }

      else if (v13 == 4)
      {
        v18 = 0xD000000000000017;
        v19 = v37;
      }

      else
      {
        v18 = 0xD000000000000019;
        v19 = v38;
      }
    }

    else if (v13)
    {
      if (v13 == 1)
      {
        v18 = 0x52436E6F6D6D6F63;
        v19 = 0xEE00617461445444;
      }

      else
      {
        v18 = 0xD000000000000010;
        v19 = v36;
      }
    }

    else
    {
      v19 = 0xEA00000000006174;
      v18 = 0x61447463656A626FLL;
    }

    *v17 = v18;
    v17[1] = v19;
    v20 = v15 >> 62;
    if ((v15 >> 62) > 1)
    {
      if (v20 != 2)
      {
        sub_10002640C(v16, v15);
        v21 = 0;
        goto LABEL_32;
      }

      v23 = *(v16 + 16);
      v22 = *(v16 + 24);
      result = sub_10002640C(v16, v15);
      v21 = v22 - v23;
      if (__OFSUB__(v22, v23))
      {
        goto LABEL_54;
      }
    }

    else
    {
      if (!v20)
      {
        sub_10002640C(v16, v15);
        v21 = BYTE6(v15);
LABEL_32:
        v24 = v44;
        goto LABEL_33;
      }

      result = sub_10002640C(v16, v15);
      LODWORD(v21) = HIDWORD(v16) - v16;
      if (__OFSUB__(HIDWORD(v16), v16))
      {
        goto LABEL_53;
      }

      v21 = v21;
    }

    v17 = v46;
    v24 = v44;
    if ((v21 & 0x8000000000000000) != 0)
    {
      goto LABEL_49;
    }

LABEL_33:
    v17[2] = v21;
    v47 = v24;
    v26 = v24[2];
    v25 = v24[3];
    if (v26 >= v25 >> 1)
    {
      sub_100776844((v25 > 1), v26 + 1, 1);
      v17 = v46;
      v24 = v47;
    }

    v24[2] = v26 + 1;
    v27 = (*(v42 + 80) + 32) & ~*(v42 + 80);
    v44 = v24;
    result = sub_10063FEA4(v17, v24 + v27 + *(v42 + 72) * v26, type metadata accessor for CRLProto_ObjectInfo.DataDirectoryEntry);
    v11 = 1 << *(a1 + 32);
    if (v9 >= v11)
    {
      goto LABEL_50;
    }

    v8 = v41;
    v28 = *(v41 + 8 * v12);
    if ((v28 & (1 << v9)) == 0)
    {
      goto LABEL_51;
    }

    if (v45 != *(a1 + 36))
    {
      goto LABEL_52;
    }

    v29 = v28 & (-2 << (v9 & 0x3F));
    if (v29)
    {
      v11 = __clz(__rbit64(v29)) | v9 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v30 = v12 << 6;
      v31 = v12 + 1;
      v32 = (v39 + 8 * v12);
      while (v31 < (v11 + 63) >> 6)
      {
        v34 = *v32++;
        v33 = v34;
        v30 += 64;
        ++v31;
        if (v34)
        {
          result = sub_1000341AC(v9, v45, 0);
          v11 = __clz(__rbit64(v33)) + v30;
          goto LABEL_4;
        }
      }

      result = sub_1000341AC(v9, v45, 0);
    }

LABEL_4:
    ++v10;
    v9 = v11;
    if (v10 == v40)
    {
      return v44;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
  return result;
}

void sub_1006369C4(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    type metadata accessor for CRLBoardItem(0);
    sub_10006837C(&qword_1019FCB80, type metadata accessor for CRLBoardItem, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    v1 = v14[1];
    v2 = v14[2];
    v3 = v14[3];
    v4 = v14[4];
    v5 = v14[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(a1 + 32);
    v2 = (a1 + 56);
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = (v8 & *(a1 + 56));
  }

  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
LABEL_18:
      sub_100035F90(v1);
      return;
    }

    while (1)
    {
      sub_100E6CCD4(v14, v13);

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for CRLBoardItem(0);
        swift_dynamicCast();
        v13 = v14[0];
        v11 = v4;
        v12 = v5;
        if (v14[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v11 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v10 = v2[v11];
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_100636BB4(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = v2;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    sub_10063FD8C(*(a1 + 48) + 48 * (v9 | (v8 << 6)), v12);
    v10[0] = v12[0];
    v10[1] = v12[1];
    v10[2] = v12[2];
    sub_100E6CD34(v11, v10);
    sub_10063FDE8(v11);
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= v7)
    {

      return;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_100636CB4(uint64_t a1)
{
  v2 = type metadata accessor for CRLBoardIdentifier(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v19 - v7;
  __chkstk_darwin(v9);
  v11 = &v19 - v10;
  v12 = 0;
  v13 = 1 << *(a1 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a1 + 56);
  v16 = (v13 + 63) >> 6;
  while (v15)
  {
    v17 = v12;
LABEL_9:
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    sub_10063FE3C(*(a1 + 48) + *(v3 + 72) * (v18 | (v17 << 6)), v11, type metadata accessor for CRLBoardIdentifier);
    sub_10063FEA4(v11, v5, type metadata accessor for CRLBoardIdentifier);
    sub_100031F10(v8, v5);
    sub_10063FF0C(v8, type metadata accessor for CRLBoardIdentifier);
  }

  while (1)
  {
    v17 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v17 >= v16)
    {

      return;
    }

    v15 = *(a1 + 56 + 8 * v17);
    ++v12;
    if (v15)
    {
      v12 = v17;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_100636EA0(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v23 - v7;
  v10 = __chkstk_darwin(v9);
  v12 = v23 - v11;
  v13 = 0;
  v24 = a1;
  v16 = *(a1 + 56);
  v15 = a1 + 56;
  v14 = v16;
  v17 = 1 << *(v15 - 24);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v23[1] = v3 + 32;
  v23[2] = v3 + 16;
  v23[0] = v3 + 8;
  if ((v18 & v14) != 0)
  {
    do
    {
      v21 = v13;
LABEL_9:
      v22 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      (*(v3 + 16))(v12, *(v24 + 48) + *(v3 + 72) * (v22 | (v21 << 6)), v2, v10);
      (*(v3 + 32))(v5, v12, v2);
      sub_100E6AF38(v8, v5);
      (*(v3 + 8))(v8, v2);
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

      return;
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
}

void sub_1006370B0(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      sub_100E70650(&v10, *(*(a1 + 48) + (v9 | (v8 << 6))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

void sub_10063718C(uint64_t a1)
{
  v2 = type metadata accessor for CRLFolderIdentifier(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v19 - v7;
  __chkstk_darwin(v9);
  v11 = &v19 - v10;
  v12 = 0;
  v13 = 1 << *(a1 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a1 + 56);
  v16 = (v13 + 63) >> 6;
  while (v15)
  {
    v17 = v12;
LABEL_9:
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    sub_10063FE3C(*(a1 + 48) + *(v3 + 72) * (v18 | (v17 << 6)), v11, type metadata accessor for CRLFolderIdentifier);
    sub_10063FEA4(v11, v5, type metadata accessor for CRLFolderIdentifier);
    sub_100E70750(v8, v5);
    sub_10063FF0C(v8, type metadata accessor for CRLFolderIdentifier);
  }

  while (1)
  {
    v17 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v17 >= v16)
    {

      return;
    }

    v15 = *(a1 + 56 + 8 * v17);
    ++v12;
    if (v15)
    {
      v12 = v17;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_1006373A8(uint64_t a1, unint64_t *a2, void *a3, unint64_t *a4, void (*a5)(id *))
{
  v6 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    sub_100006370(0, a2, a3);
    sub_10000FDE0(a4, a2, a3, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    v6 = v24[1];
    v10 = v24[2];
    v11 = v24[3];
    v12 = v24[4];
    v13 = v24[5];
  }

  else
  {
    v12 = 0;
    v14 = -1 << *(a1 + 32);
    v10 = (a1 + 56);
    v11 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = (v16 & *(a1 + 56));
  }

  v17 = (v11 + 64) >> 6;
  if (v6 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v18 = v12;
    v19 = v13;
    v20 = v12;
    if (!v13)
    {
      break;
    }

LABEL_12:
    v21 = (v19 - 1) & v19;
    if (!*(*(v6 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19))))))
    {
LABEL_18:
      sub_100035F90(v6);
      return;
    }

    while (1)
    {
      a5(v24);

      v12 = v20;
      v13 = v21;
      if ((v6 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        sub_100006370(0, a2, a3);
        swift_dynamicCast();
        v20 = v12;
        v21 = v13;
        if (v24[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v20 = (v18 + 1);
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= v17)
    {
      goto LABEL_18;
    }

    v19 = v10[v20];
    ++v18;
    if (v19)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_1006375E0(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v2[11] = type metadata accessor for CRLProto_ObjectMetadata(0);
  v2[12] = swift_task_alloc();
  sub_1005B981C(&qword_1019F67C0, &unk_10146F3E0);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v3 = type metadata accessor for CRLProto_Data(0);
  v2[15] = v3;
  v2[16] = *(v3 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v4 = type metadata accessor for CRLProto_ObjectMetadata.AssetInfo(0);
  v2[19] = v4;
  v2[20] = *(v4 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  v2[23] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v2[24] = v5;
  v2[25] = *(v5 - 8);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v2[28] = v6;
  v2[29] = *(v6 - 8);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();

  return _swift_task_switch(sub_1006378E0, 0, 0);
}

uint64_t sub_1006378E0()
{
  v1 = v0[34];
  v16 = v0[33];
  v2 = v0[32];
  v3 = v0[28];
  v4 = v0[29];
  v5 = v0[10];
  v6 = *(v5 + 16);
  v0[35] = v6;
  v7 = *(v5 + 24);
  v0[36] = v7;
  v0[37] = swift_getObjectType();
  v8 = *(v7 + 16);
  v0[38] = v8;
  v0[39] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0x339B000000000000;
  v8();
  v10 = v9;
  ObjectType = swift_getObjectType();
  (*(v10 + 40))(ObjectType, v10);
  swift_unknownObjectRelease();
  v12 = *(v4 + 16);
  v0[40] = v12;
  v0[41] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v2, v1, v3);
  swift_beginAccess();
  sub_100E6AF38(v16, v2);
  swift_endAccess();
  v13 = *(v4 + 8);
  v0[42] = v13;
  v0[43] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v16, v3);
  v14 = swift_task_alloc();
  v0[44] = v14;
  *v14 = v0;
  v14[1] = sub_100637ACC;

  return sub_100638E48(v6, v7);
}

uint64_t sub_100637ACC()
{
  *(*v1 + 360) = v0;

  if (v0)
  {
    v2 = sub_100638CE4;
  }

  else
  {
    v2 = sub_100637C0C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100637C0C()
{
  v1 = *(v0 + 80);
  swift_beginAccess();
  v2 = sub_100B36C84(0, *(*(v1 + 72) + 16), 0, _swiftEmptyArrayStorage);
  sub_10006837C(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v3 = Dictionary.init(minimumCapacity:)();
  v4 = v3;
  if ((*(v1 + 56) & 2) == 0)
  {
    v68 = v3;
    v69 = v2;
LABEL_3:
    v5 = *(v0 + 120);
    v6 = *(v0 + 128);
    v8 = *(v0 + 96);
    v7 = *(v0 + 104);
    v9 = *(v0 + 80);
    v10 = *(v0 + 88);
    v11 = *(v9 + 64);
    v12 = (*(v0 + 304))(*(v0 + 296), *(v0 + 288));
    v14 = v13;
    ObjectType = swift_getObjectType();
    *(v0 + 64) = v12;
    v16 = (*(*(*(v14 + 8) + 8) + 8))(ObjectType);
    swift_unknownObjectRelease();
    if (v16 <= v11)
    {
      v17 = v11;
    }

    else
    {
      v17 = v16;
    }

    v67 = v9;
    *(v9 + 64) = v17;
    *v8 = _swiftEmptyArrayStorage;
    *(v8 + 1) = _swiftEmptyArrayStorage;
    UnknownStorage.init()();
    v18 = *(v10 + 28);
    v66 = *(v6 + 56);
    v19 = v66(&v8[v18], 1, 1, v5);
    v20 = UUID.crl_data()(v19);
    v64 = v21;
    v65 = v20;
    sub_10000BE14(&v8[v18], v7, &qword_1019F67C0, &unk_10146F3E0);
    v22 = *(v6 + 48);
    v23 = v22(v7, 1, v5);
    v24 = *(v0 + 136);
    if (v23 == 1)
    {
      v25 = *(v0 + 120);
      v26 = *(v0 + 104);
      *v24 = xmmword_10146F370;
      UnknownStorage.init()();
      if (v22(v26, 1, v25) != 1)
      {
        sub_10000CAAC(*(v0 + 104), &qword_1019F67C0, &unk_10146F3E0);
      }
    }

    else
    {
      sub_10063FEA4(*(v0 + 104), v24, type metadata accessor for CRLProto_Data);
    }

    v63 = *(v0 + 336);
    v32 = *(v0 + 272);
    v33 = *(v0 + 224);
    v34 = *(v0 + 136);
    v35 = *(v0 + 120);
    v36 = *(v0 + 96);
    v37 = *(v0 + 72);
    sub_10002640C(*v34, *(v34 + 8));
    *v34 = v65;
    *(v34 + 8) = v64;
    sub_10000CAAC(&v8[v18], &qword_1019F67C0, &unk_10146F3E0);
    sub_10063FEA4(v34, &v8[v18], type metadata accessor for CRLProto_Data);
    v66(&v8[v18], 0, 1, v35);
    v38 = sub_101286248(*(v67 + 64));
    v40 = v39;
    v63(v32, v33, v38);
    *v36 = v40;
    *(v8 + 1) = v69;
    sub_10063FE3C(v36, v37, type metadata accessor for CRLProto_ObjectMetadata);
    *(v37 + *(type metadata accessor for CRLArchivedObjectMetadataRepresentation(0) + 20)) = v68;
    sub_10063FF0C(v36, type metadata accessor for CRLProto_ObjectMetadata);

    v41 = *(v0 + 8);

    return v41();
  }

  v27 = *(*(v0 + 80) + 32);
  v28 = *&v27[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock];
  os_unfair_lock_lock(*(v28 + 16));
  v29 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
  v30 = *&v27[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
  if (v30)
  {
    v31 = *&v27[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager];
  }

  else
  {
    v43 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager(0));
    v44 = v27;
    v45 = sub_10001F1A0(v44);

    v46 = *&v27[v29];
    *&v27[v29] = v45;
    v31 = v45;

    v30 = 0;
  }

  *(v0 + 368) = v31;
  v47 = *(v28 + 16);
  v48 = v30;
  os_unfair_lock_unlock(v47);
  v49 = *(v1 + 72);
  *(v0 + 376) = v49;
  v50 = *(v49 + 32);
  *(v0 + 440) = v50;
  v51 = -1;
  v52 = -1 << v50;
  if (-(-1 << v50) < 64)
  {
    v51 = ~(-1 << -v52);
  }

  v53 = v51 & *(v49 + 56);
  *(v0 + 384) = v4;
  *(v0 + 392) = v2;

  if (!v53)
  {
    v55 = 0;
    while (((63 - v52) >> 6) - 1 != v55)
    {
      v54 = v55 + 1;
      v53 = *(v49 + 8 * v55++ + 64);
      if (v53)
      {
        goto LABEL_23;
      }
    }

    v68 = *(v0 + 384);
    v69 = *(v0 + 392);
    goto LABEL_3;
  }

  v54 = 0;
LABEL_23:
  *(v0 + 400) = v53;
  *(v0 + 408) = v54;
  v57 = *(v0 + 240);
  v56 = *(v0 + 248);
  v58 = *(v0 + 224);
  v59 = *(v0 + 232);
  (*(v0 + 320))(v56, *(v49 + 48) + *(v59 + 72) * (__clz(__rbit64(v53)) | (v54 << 6)), v58);
  (*(v59 + 32))(v57, v56, v58);
  v60 = swift_task_alloc();
  *(v0 + 416) = v60;
  *v60 = v0;
  v60[1] = sub_100638288;
  v61 = *(v0 + 240);
  v62 = *(v0 + 184);

  return sub_10108D4EC(v62, v61, 0, 0, 3);
}

uint64_t sub_100638288()
{

  return _swift_task_switch(sub_1006383B0, 0, 0);
}

uint64_t sub_1006383B0()
{
  v4 = *(v3 + 192);
  v5 = *(v3 + 200);
  v6 = *(v3 + 184);
  if ((*(v5 + 48))(v6, 1, v4) != 1)
  {
    v9 = *(v3 + 176);
    v10 = *(v3 + 152);
    v11 = *(v3 + 120);
    v12 = *(v3 + 128);
    v13 = *(v3 + 112);
    (*(v5 + 32))(*(v3 + 216), v6, v4);
    *v9 = 0;
    *(v9 + 1) = 0xE000000000000000;
    *(v9 + 2) = 0;
    UnknownStorage.init()();
    v14 = *(v10 + 28);
    v102 = *(v12 + 56);
    v102(&v9[v14], 1, 1, v11);
    *(v3 + 424) = UUID.uuid.getter();
    *(v3 + 432) = v15;
    *(v3 + 433) = v16;
    *(v3 + 434) = v17;
    *(v3 + 435) = v18;
    *(v3 + 436) = v19;
    *(v3 + 437) = v20;
    *(v3 + 438) = v21;
    *(v3 + 439) = v22;
    UUID.uuid.getter();
    v23 = sub_100024DD4((v3 + 424), 0x10uLL);
    v96 = v24;
    v99 = v23;
    sub_10000BE14(&v9[v14], v13, &qword_1019F67C0, &unk_10146F3E0);
    v25 = *(v12 + 48);
    v26 = v25(v13, 1, v11);
    v27 = *(v3 + 144);
    if (v26 == 1)
    {
      v29 = *(v3 + 112);
      v28 = *(v3 + 120);
      *v27 = xmmword_10146F370;
      UnknownStorage.init()();
      if (v25(v29, 1, v28) != 1)
      {
        sub_10000CAAC(*(v3 + 112), &qword_1019F67C0, &unk_10146F3E0);
      }
    }

    else
    {
      sub_10063FEA4(*(v3 + 112), v27, type metadata accessor for CRLProto_Data);
    }

    v30 = *(v3 + 392);
    v32 = *(v3 + 168);
    v31 = *(v3 + 176);
    v33 = *(v3 + 144);
    v34 = *(v3 + 120);
    sub_10002640C(*v33, *(v33 + 8));
    *v33 = v99;
    *(v33 + 8) = v96;
    sub_10000CAAC(&v9[v14], &qword_1019F67C0, &unk_10146F3E0);
    sub_10063FEA4(v33, &v9[v14], type metadata accessor for CRLProto_Data);
    v102(&v9[v14], 0, 1, v34);
    *v31 = URL.lastPathComponent.getter();
    v31[1] = v35;
    URL._bridgeToObjectiveC()(v36);
    v38 = v37;
    v39 = [v37 crl_fileSize];

    v31[2] = v39;
    sub_10063FE3C(v31, v32, type metadata accessor for CRLProto_ObjectMetadata.AssetInfo);
    v2 = *(v30 + 16);
    v7 = *(v30 + 24);
    v1 = v2 + 1;
    v0 = *(v3 + 392);
    if (v2 >= v7 >> 1)
    {
      goto LABEL_28;
    }

    goto LABEL_9;
  }

  (*(v3 + 336))(*(v3 + 240), *(v3 + 224));
  sub_10000CAAC(v6, &unk_1019F33C0, &unk_101468A60);
  v7 = *(v3 + 408);
  v8 = (*(v3 + 400) - 1) & *(v3 + 400);
  if (v8)
  {
LABEL_3:
    v1 = *(v3 + 376);
LABEL_14:
    *(v3 + 400) = v8;
    *(v3 + 408) = v7;
    v51 = *(v3 + 240);
    v50 = *(v3 + 248);
    v52 = *(v3 + 224);
    v53 = *(v3 + 232);
    (*(v3 + 320))(v50, *(v1 + 48) + *(v53 + 72) * (__clz(__rbit64(v8)) | (v7 << 6)), v52);
    (*(v53 + 32))(v51, v50, v52);
    v54 = swift_task_alloc();
    *(v3 + 416) = v54;
    *v54 = v3;
    v54[1] = sub_100638288;
    v55 = *(v3 + 240);
    v56 = *(v3 + 184);

    return sub_10108D4EC(v56, v55, 0, 0, 3);
  }

  else
  {
    while (1)
    {
      while (1)
      {
        v49 = v7 + 1;
        if (!__OFADD__(v7, 1))
        {
          break;
        }

        __break(1u);
LABEL_28:
        v0 = sub_100B36C84((v7 > 1), v1, 1, v0);
LABEL_9:
        v40 = *(v3 + 384);
        v100 = *(v3 + 336);
        v41 = *(v3 + 240);
        v42 = *(v3 + 216);
        v43 = *(v3 + 200);
        v44 = *(v3 + 208);
        v45 = *(v3 + 192);
        v46 = *(v3 + 168);
        v94 = *(v3 + 224);
        v97 = *(v3 + 176);
        v47 = *(v3 + 160);
        v0[2] = v1;
        sub_10063FEA4(v46, v0 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v2, type metadata accessor for CRLProto_ObjectMetadata.AssetInfo);
        (*(v43 + 16))(v44, v42, v45);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_100A9C6C0(v44, v41, isUniquelyReferenced_nonNull_native);
        (*(v43 + 8))(v42, v45);
        v100(v41, v94);
        v1 = v40;
        sub_10063FF0C(v97, type metadata accessor for CRLProto_ObjectMetadata.AssetInfo);
        v7 = *(v3 + 408);
        v8 = (*(v3 + 400) - 1) & *(v3 + 400);
        *(v3 + 384) = v40;
        *(v3 + 392) = v0;
        if (v8)
        {
          goto LABEL_3;
        }
      }

      v1 = *(v3 + 376);
      if (v49 >= (((1 << *(v3 + 440)) + 63) >> 6))
      {
        break;
      }

      v8 = *(v1 + 8 * v49 + 56);
      ++v7;
      if (v8)
      {
        v7 = v49;
        goto LABEL_14;
      }
    }

    v101 = *(v3 + 392);
    v103 = *(v3 + 384);
    v58 = *(v3 + 120);
    v59 = *(v3 + 128);
    v61 = *(v3 + 96);
    v60 = *(v3 + 104);
    v62 = *(v3 + 80);
    v63 = *(v3 + 88);
    v64 = *(v62 + 64);
    v65 = (*(v3 + 304))(*(v3 + 296), *(v3 + 288));
    v67 = v66;
    ObjectType = swift_getObjectType();
    *(v3 + 64) = v65;
    v69 = (*(*(*(v67 + 8) + 8) + 8))(ObjectType);
    swift_unknownObjectRelease();
    if (v69 <= v64)
    {
      v70 = v64;
    }

    else
    {
      v70 = v69;
    }

    v98 = v62;
    *(v62 + 64) = v70;
    *v61 = _swiftEmptyArrayStorage;
    *(v61 + 1) = _swiftEmptyArrayStorage;
    UnknownStorage.init()();
    v71 = *(v63 + 28);
    v72 = *(v59 + 56);
    v73 = v72(&v61[v71], 1, 1, v58);
    v74 = UUID.crl_data()(v73);
    v92 = v75;
    v93 = v74;
    sub_10000BE14(&v61[v71], v60, &qword_1019F67C0, &unk_10146F3E0);
    v76 = *(v59 + 48);
    v77 = v76(v60, 1, v58);
    v78 = *(v3 + 136);
    v95 = v72;
    if (v77 == 1)
    {
      v79 = *(v3 + 120);
      v80 = *(v3 + 104);
      *v78 = xmmword_10146F370;
      UnknownStorage.init()();
      if (v76(v80, 1, v79) != 1)
      {
        sub_10000CAAC(*(v3 + 104), &qword_1019F67C0, &unk_10146F3E0);
      }
    }

    else
    {
      sub_10063FEA4(*(v3 + 104), v78, type metadata accessor for CRLProto_Data);
    }

    v91 = *(v3 + 336);
    v81 = *(v3 + 272);
    v82 = *(v3 + 224);
    v83 = *(v3 + 136);
    v84 = *(v3 + 120);
    v85 = *(v3 + 96);
    v86 = *(v3 + 72);
    sub_10002640C(*v83, *(v83 + 8));
    *v83 = v93;
    *(v83 + 8) = v92;
    sub_10000CAAC(&v61[v71], &qword_1019F67C0, &unk_10146F3E0);
    sub_10063FEA4(v83, &v61[v71], type metadata accessor for CRLProto_Data);
    v95(&v61[v71], 0, 1, v84);
    v87 = sub_101286248(*(v98 + 64));
    v89 = v88;
    v91(v81, v82, v87);
    *v85 = v89;
    *(v61 + 1) = v101;
    sub_10063FE3C(v85, v86, type metadata accessor for CRLProto_ObjectMetadata);
    *(v86 + *(type metadata accessor for CRLArchivedObjectMetadataRepresentation(0) + 20)) = v103;
    sub_10063FF0C(v85, type metadata accessor for CRLProto_ObjectMetadata);

    v90 = *(v3 + 8);

    return v90();
  }
}