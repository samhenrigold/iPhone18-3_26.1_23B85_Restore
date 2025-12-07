double sub_1000258B4()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v9 = v0;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v40 = v11;
    v41 = v5;
    v42 = v4;
    v43 = v2;
    v44 = v1;
    v12 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v45[0] = v39;
    *v12 = 136315650;
    *(v12 + 4) = sub_100037B98(0xD000000000000016, 0x8000000100092A60, v45);
    *(v12 + 12) = 2080;
    v13 = v9;
    v14 = [v13 description];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = sub_100037B98(v15, v17, v45);

    *(v12 + 14) = v18;
    *(v12 + 22) = 2080;
    v19 = *&v13[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dataSource];
    if (v19)
    {
      v20 = *(*(v19 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_dataSourceObserver) + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection);
      if (v20)
      {

        v21 = v20;
        v22 = dispatch thunk of DOCNodeCollection.nodes.getter();
      }

      else
      {
        v22 = _swiftEmptyArrayStorage;
      }

      v4 = v42;
      v2 = v43;
      if (v22 >> 62)
      {
        v23 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    else
    {
      v23 = 0;
      v4 = v42;
      v2 = v43;
    }

    v45[1] = v23;
    v46 = v19 == 0;
    sub_10000589C(&qword_1000BC4C8, &qword_100090BD8);
    v24 = String.init<A>(describing:)();
    v26 = sub_100037B98(v24, v25, v45);

    *(v12 + 24) = v26;
    _os_log_impl(&_mh_execute_header, v10, v40, "%s %s nodes count: %s", v12, 0x20u);
    swift_arrayDestroy();

    (*(v6 + 8))(v8, v41);
    v1 = v44;
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  sub_100026CAC();
  sub_100022BB4();
  result = sub_100025E00();
  v28 = *&v9[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dataSource];
  if (v28)
  {
    v29 = *(*(v28 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_dataSourceObserver) + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection);
    if (v29)
    {

      if (([v29 isGathering] & 1) == 0)
      {
        sub_1000265E8();
      }

      v30 = *&v9[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_folderCollectionObserverUpdateHandler];
      if (v30)
      {
        v31 = *&v9[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_folderCollectionObserverUpdateHandler + 8];
        v32 = v9[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration];

        v33 = sub_1000268A4(3uLL, v32);
        if (v33)
        {
          v34 = v33;
        }

        else
        {
          v34 = _swiftEmptyArrayStorage;
        }

        v35 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_directoryURL;
        swift_beginAccess();
        (*(v2 + 16))(v4, &v9[v35], v1);
        v36 = *&v9[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
        v37 = *&v9[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

        v38 = sub_10000C104(v34);

        v30(v36, v37, v4, v38);
        sub_1000414DC(v30, v31);

        (*(v2 + 8))(v4, v1);
      }

      else
      {
      }
    }
  }

  return result;
}

double sub_100025E00()
{
  v73 = type metadata accessor for URL();
  v78 = *(v73 - 8);
  __chkstk_darwin(v73 - 8);
  v71 = &v67 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v72 = &v67 - v3;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v8 = v0;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  v11 = os_log_type_enabled(v9, v10);
  v80 = v8;
  if (v11)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v82 = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_100037B98(0xD000000000000021, 0x80000001000926D0, &v82);
    *(v12 + 12) = 2048;
    v14 = *&v8[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView];
    if (v14)
    {
      v15 = [v14 visibleCells];
      sub_10001A2A8(0, &qword_1000BBD08, UICollectionViewCell_ptr);
      v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v16 >> 62)
      {
        v17 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v8 = v80;
    }

    else
    {
      v17 = 0;
    }

    *(v12 + 14) = v17;

    _os_log_impl(&_mh_execute_header, v9, v10, "%s updating thumbnails in: %ld visibleCells.", v12, 0x16u);
    sub_1000064E0(v13);
  }

  else
  {
  }

  (*(v5 + 8))(v7, v4);
  v19 = *&v8[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView];
  if (v19)
  {
    v77 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView;
    v20 = [v19 visibleCells];
    sub_10001A2A8(0, &qword_1000BBD08, UICollectionViewCell_ptr);
    v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v21 >> 62)
    {
      goto LABEL_29;
    }

    for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v23 = 0;
      v79 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_hostContainerView;
      v81 = v21 & 0xC000000000000001;
      while (1)
      {
        if (v81)
        {
          v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_28;
          }

          v24 = *(v21 + 8 * v23 + 32);
        }

        v25 = v24;
        v26 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        type metadata accessor for DOCSBCollectionViewCell(0);
        if (swift_dynamicCastClass())
        {
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v28 = Strong;
            v29 = [Strong traitCollection];

            if (v29)
            {
              v30 = v25;
              v31 = dispatch thunk of DOCItemCollectionCell.cellContent.getter();

              if (v31)
              {
                v32 = v29;
                dispatch thunk of DOCItemCollectionCellContent.traitCollection.setter();
              }
            }
          }

          v33 = v25;
          v34 = dispatch thunk of DOCItemCollectionCell.cellContent.getter();

          v8 = v80;
          if (v34)
          {
            dispatch thunk of DOCItemCollectionCellContent.updateThumbnail(completion:)();
          }
        }

        ++v23;
        if (v26 == i)
        {
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      ;
    }

LABEL_30:

    v35 = *&v8[v77];
    if (v35)
    {
      v36 = [v35 visibleSupplementaryViewsOfKind:UICollectionElementKindSectionHeader];
      sub_10001A2A8(0, &unk_1000BBD10, UICollectionReusableView_ptr);
      v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v37 >> 62)
      {
        goto LABEL_56;
      }

      for (j = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = _CocoaArrayWrapper.endIndex.getter())
      {
        v39 = 0;
        v79 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dataSource;
        v40 = v37 & 0xC000000000000001;
        v81 = v37 & 0xFFFFFFFFFFFFFF8;
        v69 = j;
        v70 = v37;
        v77 = v37 & 0xC000000000000001;
        v67 = (v78 + 8);
        v68 = (v78 + 16);
        while (1)
        {
          if (v40)
          {
            v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v39 >= *(v81 + 16))
            {
              goto LABEL_55;
            }

            v43 = *(v37 + 8 * v39 + 32);
          }

          v44 = v43;
          v45 = v39 + 1;
          if (__OFADD__(v39, 1))
          {
            break;
          }

          type metadata accessor for DOCSBFolderCollectionHeaderView();
          v46 = swift_dynamicCastClass();
          if (!v46)
          {
            goto LABEL_36;
          }

          v47 = v46;
          v48 = *&v8[v79];
          if (v48)
          {
            v49 = *(*(v48 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_dataSourceObserver) + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection);
            if (!v49)
            {

LABEL_47:
              v78 = v44;
              v56 = *v68;
              v74 = OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_url;
              v75 = v56;
              v57 = v72;
              v58 = v73;
              v56(v72, v48 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_url, v73);
              v59 = URL.lastPathComponent.getter();
              v61 = v60;
              v76 = *v67;
              v76(v57, v58);

              v62 = HIBYTE(v61) & 0xF;
              if ((v61 & 0x2000000000000000) == 0)
              {
                v62 = v59 & 0xFFFFFFFFFFFFLL;
              }

              if (v62)
              {
                v63 = v71;
                v75(v71, v48 + v74, v58);
                v64 = URL.lastPathComponent.getter();
                v66 = v65;

                v76(v63, v58);
                v41 = v64;
                v42 = v66;
              }

              else
              {

                v42 = 0xE800000000000000;
                v41 = 0x6E6F697461636F4CLL;
              }

              v8 = v80;
              j = v69;
              v37 = v70;
              v40 = v77;
              v44 = v78;
              goto LABEL_35;
            }

            v50 = v49;
            v51 = dispatch thunk of DOCNodeCollection.observedNode.getter();

            if (!v51)
            {
              goto LABEL_47;
            }

            v52 = [v51 displayName];
            swift_unknownObjectRelease();
            v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v55 = v54;

            v41 = v53;
            v42 = v55;
            v8 = v80;
            v40 = v77;
          }

          else
          {
            v41 = 0;
            v42 = 0xE000000000000000;
          }

LABEL_35:
          (*((swift_isaMask & *v47) + 0x88))(v41, v42);
LABEL_36:

          ++v39;
          if (v45 == j)
          {
            goto LABEL_57;
          }
        }

        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        ;
      }

LABEL_57:
    }
  }

  return result;
}

double sub_1000265E8()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v5 = v0;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = v23;
    *v8 = 136315650;
    *(v8 + 4) = sub_100037B98(0xD00000000000001CLL, 0x8000000100092A80, &v24);
    *(v8 + 12) = 2080;
    v9 = v5;
    v10 = [v9 description];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v1;
    v13 = v12;

    v14 = sub_100037B98(v11, v13, &v24);

    *(v8 + 14) = v14;
    *(v8 + 22) = 2080;
    v15 = *&v9[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
    v16 = *&v9[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

    v17 = sub_100037B98(v15, v16, &v24);

    *(v8 + 24) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s self: %s handling request to push new icon to SpringBoard for identifier: %s", v8, 0x20u);
    swift_arrayDestroy();

    (*(v2 + 8))(v4, v22);
  }

  else
  {

    (*(v2 + 8))(v4, v1);
  }

  v18 = swift_allocObject();
  *(v18 + 16) = v5;
  v19 = v5;
  sub_100033C70(sub_1000427DC, v18);

  return result;
}

uint64_t sub_1000268A4(unint64_t a1, char a2)
{
  if (a2)
  {

    goto LABEL_4;
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v6)
  {
LABEL_4:
    v7 = *(v2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dataSource);
    if (v7)
    {
      v8 = *(*(v7 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_dataSourceObserver) + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection);
      if (v8)
      {

        v9 = v8;
        v10 = dispatch thunk of DOCNodeCollection.nodes.getter();
      }

      else
      {
        v10 = _swiftEmptyArrayStorage;
      }

      v19 = sub_10003ECA8(a1, v10);
      v21 = v20;
      v23 = v22;
      v25 = v24;

      if (v25)
      {
        type metadata accessor for __ContiguousArrayStorageBase();
        swift_unknownObjectRetain_n();
        v27 = swift_dynamicCastClass();
        if (!v27)
        {
          swift_unknownObjectRelease();
          v27 = _swiftEmptyArrayStorage;
        }

        v28 = v27[2];

        if (__OFSUB__(v25 >> 1, v23))
        {
          __break(1u);
        }

        else if (v28 == (v25 >> 1) - v23)
        {
          v26 = swift_dynamicCastClass();
          if (!v26)
          {
            swift_unknownObjectRelease();
            v26 = _swiftEmptyArrayStorage;
          }

          goto LABEL_33;
        }

        swift_unknownObjectRelease();
      }

      sub_10000E00C(v19, v21, v23, v25);
LABEL_33:
      v29 = sub_100009BF0(v26);
LABEL_34:
      v18 = v29;
LABEL_35:
      swift_unknownObjectRelease();
      return v18;
    }

    return 0;
  }

  v11 = *(v2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dataSource);
  if (!v11)
  {
    return 0;
  }

  v12 = *(v11 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_dataSourceObserver);
  v13 = *(v12 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection);
  if (v13)
  {

    v3 = v13;
    v14 = dispatch thunk of DOCNodeCollection.nodes.getter();

    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_10;
    }

LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v14 = _swiftEmptyArrayStorage;
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_38;
  }

LABEL_10:
  v4 = v14 >> 62;
  if (!(v14 >> 62))
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15 >= a1)
    {
      v16 = a1;
    }

    else
    {
      v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (a1)
    {
      v3 = v16;
    }

    else
    {
      v3 = 0;
    }

    if (v15 >= v3)
    {
      goto LABEL_18;
    }

    goto LABEL_66;
  }

  if (v14 < 0)
  {
    v11 = v14;
  }

  else
  {
    v11 = v14 & 0xFFFFFFFFFFFFFF8;
  }

  v12 = _CocoaArrayWrapper.endIndex.getter();
  result = _CocoaArrayWrapper.endIndex.getter();
  if ((result & 0x8000000000000000) == 0)
  {
    if (v12 >= a1)
    {
      v36 = a1;
    }

    else
    {
      v36 = v12;
    }

    if (v12 < 0)
    {
      v36 = a1;
    }

    if (a1)
    {
      v3 = v36;
    }

    else
    {
      v3 = 0;
    }

    if (_CocoaArrayWrapper.endIndex.getter() >= v3)
    {
LABEL_18:
      if ((v14 & 0xC000000000000001) != 0)
      {

        if (v3)
        {
          for (i = 0; i != v3; ++i)
          {
            sub_10000589C(&qword_1000BBDA8, &qword_100090AC0);
            _ArrayBuffer._typeCheckSlowPath(_:)(i);
          }
        }

LABEL_40:

        if (v4)
        {
          a1 = _CocoaArrayWrapper.subscript.getter();
          v12 = v31;
          v11 = v32;
          v3 = v33;

          if (v3)
          {
            goto LABEL_45;
          }
        }

        else
        {
          v11 = 0;
          a1 = v14 & 0xFFFFFFFFFFFFFF8;
          v12 = (v14 & 0xFFFFFFFFFFFFFF8) + 32;
          v3 = (2 * v3) | 1;
          if (v3)
          {
LABEL_45:
            type metadata accessor for __ContiguousArrayStorageBase();
            swift_unknownObjectRetain_n();
            v34 = swift_dynamicCastClass();
            if (!v34)
            {
              swift_unknownObjectRelease();
              v34 = _swiftEmptyArrayStorage;
            }

            v35 = v34[2];

            if (!__OFSUB__(v3 >> 1, v11))
            {
              if (v35 == (v3 >> 1) - v11)
              {
                v18 = swift_dynamicCastClass();
                swift_unknownObjectRelease_n();
                if (v18)
                {
                  return v18;
                }

                v18 = _swiftEmptyArrayStorage;
                goto LABEL_35;
              }

              goto LABEL_68;
            }

LABEL_67:
            __break(1u);
LABEL_68:
            swift_unknownObjectRelease_n();
          }
        }

        sub_10000E00C(a1, v12, v11, v3);
        goto LABEL_34;
      }

LABEL_39:

      goto LABEL_40;
    }

LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  __break(1u);
  return result;
}

void sub_100026CAC()
{
  v256 = sub_10000589C(&unk_1000BC6B0, &qword_100090BD0);
  __chkstk_darwin(v256);
  v2 = &v232 - v1;
  v248 = sub_10000589C(&unk_1000BCA20, &qword_100090BC0);
  __chkstk_darwin(v248);
  v250 = &v232 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v247 = &v232 - v5;
  __chkstk_darwin(v6);
  v249 = &v232 - v7;
  __chkstk_darwin(v8);
  v258 = &v232 - v9;
  __chkstk_darwin(v10);
  v12 = &v232 - v11;
  v13 = type metadata accessor for Logger();
  v260 = *(v13 - 8);
  v261 = v13;
  __chkstk_darwin(v13);
  v246 = &v232 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v232 - v16;
  __chkstk_darwin(v18);
  v245 = &v232 - v19;
  __chkstk_darwin(v20);
  v253 = &v232 - v21;
  __chkstk_darwin(v22);
  v251 = &v232 - v23;
  __chkstk_darwin(v24);
  v255 = &v232 - v25;
  __chkstk_darwin(v26);
  v28 = &v232 - v27;
  v29 = type metadata accessor for URL();
  v262 = *(v29 - 8);
  __chkstk_darwin(v29);
  v244 = &v232 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v252 = &v232 - v32;
  __chkstk_darwin(v33);
  v257 = &v232 - v34;
  __chkstk_darwin(v35);
  v37 = &v232 - v36;
  v259 = v0;
  v254 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dataSource;
  v38 = *&v0[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dataSource];
  if (!v38)
  {
    return;
  }

  v39 = *(*(v38 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_dataSourceObserver) + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection);
  if (!v39)
  {
    return;
  }

  v40 = v39;

  v41 = dispatch thunk of DOCNodeCollection.observedNode.getter();

  if (!v41)
  {
    return;
  }

  v42 = [v41 nodeURL];
  if (v42)
  {
    v240 = v17;
    v43 = v42;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    static Logger.UI.getter();
    swift_unknownObjectRetain_n();
    v44 = v259;
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.debug.getter();
    swift_unknownObjectRelease();

    v47 = os_log_type_enabled(v45, v46);
    v243 = v29;
    v238 = v37;
    v242 = v41;
    v241 = v44;
    if (v47)
    {
      LODWORD(v237) = v46;
      v239 = v45;
      v48 = swift_slowAlloc();
      v236 = swift_slowAlloc();
      v265 = v236;
      *v48 = 136448002;
      *(v48 + 4) = sub_100037B98(0xD000000000000027, 0x8000000100092A30, &v265);
      *(v48 + 12) = 2080;
      v264 = v41;
      swift_unknownObjectRetain();
      sub_10000589C(&qword_1000BBDA8, &qword_100090AC0);
      v49 = String.init<A>(describing:)();
      v51 = sub_100037B98(v49, v50, &v265);

      *(v48 + 14) = v51;
      *(v48 + 22) = 2080;
      v52 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_directoryURL;
      swift_beginAccess();
      v53 = v262;
      v54 = v257;
      (*(v262 + 16))(v257, &v44[v52], v29);
      sub_1000422FC(&unk_1000BC418, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v55 = dispatch thunk of CustomStringConvertible.description.getter();
      v57 = v56;
      (*(v53 + 8))(v54, v29);
      v58 = sub_100037B98(v55, v57, &v265);

      *(v48 + 24) = v58;
      *(v48 + 32) = 2080;
      if (*&v259[v254])
      {

        v59 = sub_10002E384();
        v61 = v60;
      }

      else
      {
        v59 = 7104878;
        v61 = 0xE300000000000000;
      }

      v63 = sub_100037B98(v59, v61, &v265);

      *(v48 + 34) = v63;
      *(v48 + 42) = 1024;
      objc_opt_self();
      v62 = v242;
      v64 = swift_dynamicCastObjCClass();
      if (v64)
      {
        v65 = [v64 isValid];
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
        v65 = 1;
      }

      *(v48 + 44) = v65;
      swift_unknownObjectRelease();
      *(v48 + 48) = 1024;
      v66 = [v62 isInTrash];
      swift_unknownObjectRelease();
      *(v48 + 50) = v66;
      swift_unknownObjectRelease();
      *(v48 + 54) = 2080;
      v264 = [v62 cachedDomain];
      sub_10000589C(&qword_1000BC430, &qword_100090B88);
      v67 = String.init<A>(describing:)();
      v69 = sub_100037B98(v67, v68, &v265);

      *(v48 + 56) = v69;
      *(v48 + 64) = 2080;
      v70 = [v62 providerDomainID];
      v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v73 = v72;

      v74 = sub_100037B98(v71, v73, &v265);

      *(v48 + 66) = v74;
      v75 = v239;
      _os_log_impl(&_mh_execute_header, v239, v237, "%{public}s observedNode: %s directoryURL: %s changed displayName: %s isValid: %{BOOL}d isInTrash: %{BOOL}d cachedDomain: %s providerDomainID: %s", v48, 0x4Au);
      swift_arrayDestroy();

      v239 = *(v260 + 8);
      (v239)(v28, v261);
      v29 = v243;
    }

    else
    {

      swift_unknownObjectRelease_n();
      v239 = *(v260 + 8);
      (v239)(v28, v261);
      v62 = v41;
    }

    v76 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_directoryURL;
    v77 = v241;
    swift_beginAccess();
    v78 = v262;
    v79 = *(v262 + 16);
    v235 = v76;
    v234 = v262 + 16;
    v233 = v79;
    v79(v12, &v77[v76], v29);
    v80 = v78 + 56;
    v81 = *(v78 + 56);
    v82 = 1;
    v81(v12, 0, 1, v29);
    v83 = [v62 nodeURL];
    v84 = v258;
    if (v83)
    {
      v85 = v83;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v82 = 0;
    }

    v237 = v80;
    v236 = v81;
    v81(v84, v82, 1, v29);
    v86 = v256[12];
    sub_100042774(v12, v2, &unk_1000BCA20, &qword_100090BC0);
    sub_100042774(v84, &v2[v86], &unk_1000BCA20, &qword_100090BC0);
    v87 = v29;
    v88 = *(v262 + 48);
    if (v88(v2, 1, v87) == 1)
    {
      sub_100006390(v84, &unk_1000BCA20, &qword_100090BC0);
      sub_100006390(v12, &unk_1000BCA20, &qword_100090BC0);
      if (v88(&v2[v86], 1, v87) == 1)
      {
        sub_100006390(v2, &unk_1000BCA20, &qword_100090BC0);
LABEL_30:
        v118 = 0;
        v119 = 0;
        v120 = 0;
        v121 = 0;
        v109 = v243;
        v122 = v240;
        goto LABEL_70;
      }
    }

    else
    {
      v89 = v249;
      sub_100042774(v2, v249, &unk_1000BCA20, &qword_100090BC0);
      if (v88(&v2[v86], 1, v87) != 1)
      {
        v112 = v262;
        v113 = &v2[v86];
        v114 = v257;
        (*(v262 + 32))(v257, v113, v87);
        sub_1000422FC(&qword_1000BC4C0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v115 = v89;
        v116 = dispatch thunk of static Equatable.== infix(_:_:)();
        v117 = *(v112 + 8);
        v117(v114, v87);
        sub_100006390(v258, &unk_1000BCA20, &qword_100090BC0);
        sub_100006390(v12, &unk_1000BCA20, &qword_100090BC0);
        v117(v115, v87);
        sub_100006390(v2, &unk_1000BCA20, &qword_100090BC0);
        if (v116)
        {
          goto LABEL_30;
        }

LABEL_25:
        v90 = v255;
        static Logger.UI.getter();
        swift_unknownObjectRetain_n();
        v91 = v241;
        v92 = v241;
        v93 = Logger.logObject.getter();
        v94 = static os_log_type_t.debug.getter();
        swift_unknownObjectRelease();
        v256 = v92;

        if (os_log_type_enabled(v93, v94))
        {
          v95 = swift_slowAlloc();
          v264 = swift_slowAlloc();
          *v95 = 136448258;
          *(v95 + 4) = sub_100037B98(0xD000000000000027, 0x8000000100092A30, &v264);
          *(v95 + 12) = 2080;
          v263 = v62;
          swift_unknownObjectRetain();
          sub_10000589C(&qword_1000BBDA8, &qword_100090AC0);
          v96 = String.init<A>(describing:)();
          v98 = sub_100037B98(v96, v97, &v264);

          *(v95 + 14) = v98;
          *(v95 + 22) = 2080;
          v99 = &v91[v235];
          v100 = v257;
          v101 = v243;
          v233(v257, v99, v243);
          sub_1000422FC(&unk_1000BC418, &type metadata accessor for URL, &protocol conformance descriptor for URL);
          v102 = dispatch thunk of CustomStringConvertible.description.getter();
          v104 = v103;
          (*(v262 + 8))(v100, v101);
          v105 = sub_100037B98(v102, v104, &v264);

          *(v95 + 24) = v105;
          *(v95 + 32) = 2080;
          v106 = [v62 nodeURL];
          if (v106)
          {
            v107 = v247;
            v108 = v106;
            static URL._unconditionallyBridgeFromObjectiveC(_:)();

            v236(v107, 0, 1, v243);
          }

          else
          {
            v236(v247, 1, 1, v243);
          }

          v123 = String.init<A>(describing:)();
          v125 = sub_100037B98(v123, v124, &v264);

          *(v95 + 34) = v125;
          *(v95 + 42) = 2080;
          v110 = v253;
          if (*&v259[v254])
          {

            v126 = sub_10002E384();
            v128 = v127;
          }

          else
          {
            v126 = 7104878;
            v128 = 0xE300000000000000;
          }

          v129 = sub_100037B98(v126, v128, &v264);

          *(v95 + 44) = v129;
          *(v95 + 52) = 1024;
          objc_opt_self();
          v130 = swift_dynamicCastObjCClass();
          if (v130)
          {
            v131 = [v130 isValid];
            swift_unknownObjectRelease();
          }

          else
          {
            swift_unknownObjectRelease();
            v131 = 1;
          }

          *(v95 + 54) = v131;
          swift_unknownObjectRelease();
          *(v95 + 58) = 1024;
          v132 = [v62 isInTrash];
          swift_unknownObjectRelease();
          *(v95 + 60) = v132;
          swift_unknownObjectRelease();
          *(v95 + 64) = 2080;
          v263 = [v62 cachedDomain];
          sub_10000589C(&qword_1000BC430, &qword_100090B88);
          v133 = String.init<A>(describing:)();
          v135 = sub_100037B98(v133, v134, &v264);

          *(v95 + 66) = v135;
          *(v95 + 74) = 2080;
          p_type = &stru_1000B6FF0.type;
          v136 = [v62 providerDomainID];
          v137 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v139 = v138;

          v140 = sub_100037B98(v137, v139, &v264);

          *(v95 + 76) = v140;
          _os_log_impl(&_mh_execute_header, v93, v94, "%{public}s observedNode: %s directoryURL: %s != observedNode.nodeURL: %s changed displayName: %s isValid: %{BOOL}d isInTrash: %{BOOL}d cachedDomain: %s providerDomainID: %s", v95, 0x54u);
          swift_arrayDestroy();

          (v239)(v255, v261);
          v109 = v243;
        }

        else
        {

          swift_unknownObjectRelease_n();
          (v239)(v90, v261);
          v109 = v243;
          v110 = v253;
          p_type = (&stru_1000B6FF0 + 16);
        }

        v122 = v240;
        v141 = [v62 p_type[463]];
        v142 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v144 = v143;

        v145 = HIBYTE(v144) & 0xF;
        if ((v144 & 0x2000000000000000) == 0)
        {
          v145 = v142 & 0xFFFFFFFFFFFFLL;
        }

        v146 = v251;
        if (!v145)
        {
          v147 = [v62 cachedDomain];
          if (!v147)
          {
            LODWORD(v258) = 1;
            goto LABEL_55;
          }
        }

        v148 = [v62 cachedDomain];
        if (v148)
        {
          v149 = v148;
          if ([v148 isEnabled] && !objc_msgSend(v149, "isHidden"))
          {

            LODWORD(v258) = 0;
          }

          else
          {
            static Logger.UI.getter();
            v150 = v149;
            v151 = Logger.logObject.getter();
            v152 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v151, v152))
            {
              v153 = swift_slowAlloc();
              v264 = swift_slowAlloc();
              *v153 = 136316162;
              *(v153 + 4) = sub_100037B98(0xD000000000000027, 0x8000000100092A30, &v264);
              *(v153 + 12) = 2080;
              v154 = v150;
              v155 = [v154 description];
              v156 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v158 = v157;

              v159 = sub_100037B98(v156, v158, &v264);
              v110 = v253;

              *(v153 + 14) = v159;
              *(v153 + 22) = 1024;
              LODWORD(v159) = [v154 isEnabled];

              *(v153 + 24) = v159;
              *(v153 + 28) = 1024;
              LODWORD(v159) = [v154 isHidden];

              *(v153 + 30) = v159;
              *(v153 + 34) = 1024;
              v109 = v243;
              LODWORD(v159) = [v154 owningApplicationIsHidden];

              *(v153 + 36) = v159;
              _os_log_impl(&_mh_execute_header, v151, v152, "%s domain: %s isEnabled: %{BOOL}d isHidden: %{BOOL}d owningApplicationIsHidden: %{BOOL}d). Requesting removal from Dock", v153, 0x28u);
              swift_arrayDestroy();
              v122 = v240;
            }

            else
            {
            }

            (v239)(v146, v261);
            LODWORD(v258) = 1;
          }

          v62 = v242;
        }

        else
        {
          LODWORD(v258) = 0;
        }

LABEL_55:
        v119 = [v62 isTrashed];
        v160 = [v62 nodeURL];
        v161 = v252;
        if (v160)
        {
          v162 = v160;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          URL._bridgeToObjectiveC()(v163);
          v165 = v164;
          v166 = [objc_opt_self() fiNodeFromURL:v164];

          if (v166)
          {
            static Logger.UI.getter();
            v167 = v166;
            swift_unknownObjectRetain();
            v168 = v256;
            v169 = v167;
            v170 = Logger.logObject.getter();
            v171 = static os_log_type_t.debug.getter();
            swift_unknownObjectRelease();

            if (os_log_type_enabled(v170, v171))
            {
              v172 = swift_slowAlloc();
              v256 = swift_slowAlloc();
              v264 = v256;
              *v172 = 136316162;
              *(v172 + 4) = sub_100037B98(0xD000000000000027, 0x8000000100092A30, &v264);
              *(v172 + 12) = 2080;
              v173 = v169;
              v174 = [v173 description];
              v175 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v177 = v176;

              v178 = sub_100037B98(v175, v177, &v264);

              *(v172 + 14) = v178;
              *(v172 + 22) = 2080;
              if (*&v259[v254])
              {

                v179 = sub_10002E384();
                v181 = v180;
              }

              else
              {
                v179 = 7104878;
                v181 = 0xE300000000000000;
              }

              v193 = sub_100037B98(v179, v181, &v264);

              *(v172 + 24) = v193;
              *(v172 + 32) = 1024;
              v194 = [v173 isTrashed];

              *(v172 + 34) = v194;
              *(v172 + 38) = 2080;
              v62 = v242;
              v263 = [v242 providerDomainID];
              type metadata accessor for FPProviderDomainID(0);
              v195 = String.init<A>(describing:)();
              v197 = sub_100037B98(v195, v196, &v264);

              *(v172 + 40) = v197;
              _os_log_impl(&_mh_execute_header, v170, v171, "%s reFetchedNode: %s displayName: %s isTrashed: %{BOOL}d providerDomainID: %s", v172, 0x30u);
              swift_arrayDestroy();

              (v239)(v253, v261);
              v109 = v243;
            }

            else
            {

              (v239)(v110, v261);
            }

            v119 = [v169 isAnyParentTrashed];

            (*(v262 + 8))(v161, v109);
            v120 = 0;
            v118 = 1;
            v122 = v240;
          }

          else
          {
            v182 = v245;
            static Logger.UI.getter();
            v183 = v244;
            v233(v244, v161, v109);
            v184 = Logger.logObject.getter();
            v185 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v184, v185))
            {
              v186 = swift_slowAlloc();
              v264 = swift_slowAlloc();
              *v186 = 136315394;
              *(v186 + 4) = sub_100037B98(0xD000000000000027, 0x8000000100092A30, &v264);
              *(v186 + 12) = 2080;
              sub_1000422FC(&unk_1000BC418, &type metadata accessor for URL, &protocol conformance descriptor for URL);
              v187 = dispatch thunk of CustomStringConvertible.description.getter();
              v189 = v188;
              v190 = *(v262 + 8);
              v190(v183, v243);
              v191 = sub_100037B98(v187, v189, &v264);
              v109 = v243;

              *(v186 + 14) = v191;
              _os_log_impl(&_mh_execute_header, v184, v185, "%s could not fetch node from URL: %s. Observed node is invalid.", v186, 0x16u);
              swift_arrayDestroy();

              v122 = v240;

              (v239)(v245, v261);
              v190(v161, v109);
              v62 = v242;
            }

            else
            {

              v192 = *(v262 + 8);
              v192(v183, v109);
              (v239)(v182, v261);
              v192(v161, v109);
            }

            v118 = 1;
            v120 = 1;
          }
        }

        else
        {
          v120 = 0;
          v118 = 1;
        }

        v121 = v258;
LABEL_70:
        v198 = [v62 cachedDomain];
        if (v198)
        {
          v199 = v198;
          v200 = [objc_opt_self() sharedManager];
          v201 = [v199 topLevelBundleIdentifier];
          if (!v201)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v201 = String._bridgeToObjectiveC()();
          }

          v202 = [v200 hostAppCanNavigateToAppBundleID:v201];

          v203 = v202 != 0;
          if (((v120 | v119 | v121) & 1) == 0)
          {
            v122 = v240;
            if (v202)
            {
              goto LABEL_86;
            }

            goto LABEL_78;
          }

          v122 = v240;
        }

        else
        {
          if (((v120 | v119 | v121) & 1) == 0)
          {
LABEL_78:
            if (v118)
            {
              v204 = v246;
              static Logger.UI.getter();
              v205 = v242;
              swift_unknownObjectRetain();
              v206 = Logger.logObject.getter();
              v207 = static os_log_type_t.debug.getter();
              swift_unknownObjectRelease();
              v208 = os_log_type_enabled(v206, v207);
              v209 = v238;
              if (v208)
              {
                v210 = swift_slowAlloc();
                v264 = swift_slowAlloc();
                *v210 = 136315394;
                *(v210 + 4) = sub_100037B98(0xD000000000000027, 0x8000000100092A30, &v264);
                *(v210 + 12) = 2080;
                v263 = v205;
                swift_unknownObjectRetain();
                sub_10000589C(&qword_1000BBDA8, &qword_100090AC0);
                v211 = String.init<A>(describing:)();
                v213 = sub_100037B98(v211, v212, &v264);

                *(v210 + 14) = v213;
                _os_log_impl(&_mh_execute_header, v206, v207, "%s observedNode: %s changed. Inform SpringBoard URL changed", v210, 0x16u);
                swift_arrayDestroy();
              }

              (v239)(v204, v261);
              v214 = v241;
              if (swift_unknownObjectWeakLoadStrong())
              {
                sub_10004A144(v214, v209);
                swift_unknownObjectRelease();
              }

              swift_unknownObjectRelease();
              v215 = v262;
              v216 = v257;
              (*(v262 + 32))(v257, v209, v109);
              v217 = v235;
              swift_beginAccess();
              (*(v215 + 40))(&v214[v217], v216, v109);
              swift_endAccess();
            }

            else
            {
              (*(v262 + 8))(v238, v109);
              swift_unknownObjectRelease();
            }

            return;
          }

          v203 = 0;
        }

LABEL_86:
        LODWORD(v258) = v121;
        static Logger.UI.getter();
        v218 = v242;
        swift_unknownObjectRetain();
        v219 = Logger.logObject.getter();
        v220 = v122;
        v221 = static os_log_type_t.debug.getter();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v219, v221))
        {
          v222 = swift_slowAlloc();
          v264 = swift_slowAlloc();
          *v222 = 136316418;
          *(v222 + 4) = sub_100037B98(0xD000000000000027, 0x8000000100092A30, &v264);
          *(v222 + 12) = 2080;
          v263 = v218;
          swift_unknownObjectRetain();
          sub_10000589C(&qword_1000BBDA8, &qword_100090AC0);
          v223 = String.init<A>(describing:)();
          v225 = sub_100037B98(v223, v224, &v264);

          *(v222 + 14) = v225;
          v109 = v243;
          *(v222 + 22) = 1024;
          *(v222 + 24) = v119;
          *(v222 + 28) = 1024;
          *(v222 + 30) = v258;
          *(v222 + 34) = 1024;
          *(v222 + 36) = v203;
          *(v222 + 40) = 1024;
          *(v222 + 42) = v120;
          _os_log_impl(&_mh_execute_header, v219, v221, "%s observedNode: %s isTrashed: %{BOOL}d providerIsDisabled: %{BOOL}d providerIsHidden: %{BOOL}d isInvalid: %{BOOL}d. Requesting removal from Dock", v222, 0x2Eu);
          swift_arrayDestroy();
        }

        (v239)(v220, v261);
        v226 = v238;
        v227 = v250;
        v228 = v241;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v229 = [v242 nodeURL];
          if (v229)
          {
            v230 = v229;
            static URL._unconditionallyBridgeFromObjectiveC(_:)();

            v231 = 0;
          }

          else
          {
            v231 = 1;
          }

          v236(v227, v231, 1, v109);
          sub_10004A890(v228, v227);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          sub_100006390(v227, &unk_1000BCA20, &qword_100090BC0);
        }

        else
        {
          swift_unknownObjectRelease();
        }

        (*(v262 + 8))(v226, v109);
        return;
      }

      sub_100006390(v258, &unk_1000BCA20, &qword_100090BC0);
      sub_100006390(v12, &unk_1000BCA20, &qword_100090BC0);
      (*(v262 + 8))(v89, v87);
    }

    sub_100006390(v2, &unk_1000BC6B0, &qword_100090BD0);
    goto LABEL_25;
  }

  swift_unknownObjectRelease();
}

void sub_100028CBC(char a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21 = a3;
    v13 = a2;
    v14 = v12;
    v15 = swift_slowAlloc();
    aBlock[0] = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_100037B98(0xD000000000000047, 0x80000001000929E0, aBlock);
    *(v14 + 12) = 1024;
    *(v14 + 14) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s createIfNeeded: %{BOOL}d", v14, 0x12u);
    sub_1000064E0(v15);

    a2 = v13;
    a3 = v21;
  }

  (*(v7 + 8))(v9, v6);
  v16 = [objc_allocWithZone(DOCDownloadSettings) init];
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = a2;
  v18[4] = a3;
  aBlock[4] = sub_100042588;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000299A0;
  aBlock[3] = &unk_1000AECB0;
  v19 = _Block_copy(aBlock);

  [v16 fetchDefaultDownloadsLocationItemAndCreateIfNeeded:a1 & 1 completion:v19];
  _Block_release(v19);
}

uint64_t sub_100028F8C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  v47 = a4;
  v48 = a5;
  v43 = a3;
  v7 = type metadata accessor for Logger();
  v45 = *(v7 - 8);
  v46 = v7;
  __chkstk_darwin(v7);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000589C(&unk_1000BCA20, &qword_100090BC0);
  __chkstk_darwin(v10 - 8);
  v44 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v43 - v13;
  __chkstk_darwin(v15);
  v17 = &v43 - v16;
  v18 = type metadata accessor for URL();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v22);
  v25 = &v43 - v24;
  if (a1)
  {
    v26 = [a1 fileURL];
    if (v26)
    {
      v27 = v26;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v28 = *(v19 + 56);
      v28(v14, 0, 1, v18);
    }

    else
    {
      v28 = *(v19 + 56);
      v28(v14, 1, 1, v18);
    }

    sub_100042594(v14, v17);
    if ((*(v19 + 48))(v17, 1, v18) != 1)
    {
      v37 = *(v19 + 32);
      v37(v25, v17, v18);
      (*(v19 + 16))(v21, v25, v18);
      v38 = (*(v19 + 80) + 24) & ~*(v19 + 80);
      v39 = (v20 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
      v40 = swift_allocObject();
      *(v40 + 16) = v43;
      v37((v40 + v38), v21, v18);
      v41 = (v40 + v39);
      v42 = v48;
      *v41 = v47;
      v41[1] = v42;

      DOCRunInMainThread(_:)();

      return (*(v19 + 8))(v25, v18);
    }
  }

  else
  {
    v28 = *(v19 + 56);
    (v28)(v17, 1, 1, v18, v23);
  }

  sub_100006390(v17, &unk_1000BCA20, &qword_100090BC0);
  static Logger.UI.getter();
  swift_errorRetain();
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v31 = 136315394;
    *(v31 + 4) = sub_100037B98(0xD000000000000047, 0x80000001000929E0, &v50);
    *(v31 + 12) = 2080;
    v49 = a2;
    swift_errorRetain();
    sub_10000589C(&unk_1000BC4B0, &qword_100090BC8);
    v32 = String.init<A>(describing:)();
    v34 = sub_100037B98(v32, v33, &v50);

    *(v31 + 14) = v34;
    _os_log_impl(&_mh_execute_header, v29, v30, "%s failed to get Downloads url. Error: %s", v31, 0x16u);
    swift_arrayDestroy();
  }

  (*(v45 + 8))(v9, v46);
  v35 = v44;
  v28(v44, 1, 1, v18);
  v47(v35);
  return sub_100006390(v35, &unk_1000BCA20, &qword_100090BC0);
}

uint64_t sub_1000294F0(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4)
{
  v38 = a3;
  v39 = a4;
  v5 = sub_10000589C(&unk_1000BCA20, &qword_100090BC0);
  __chkstk_darwin(v5 - 8);
  v7 = &v31 - v6;
  v8 = type metadata accessor for Logger();
  v36 = *(v8 - 8);
  v37 = v8;
  __chkstk_darwin(v8);
  v40 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v31 - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v18 = *(v11 + 16);
  if (Strong)
  {
    v19 = Strong;
    v18(v16, a2, v10);
    v35 = a2;
    v20 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_directoryURL;
    swift_beginAccess();
    v21 = &v19[v20];
    a2 = v35;
    (*(v11 + 40))(v21, v16, v10);
    swift_endAccess();
    static Logger.UI.getter();
    v34 = v18;
    v18(v13, a2, v10);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v41[0] = v33;
      *v24 = 136315394;
      *(v24 + 4) = sub_100037B98(0xD000000000000047, 0x80000001000929E0, v41);
      *(v24 + 12) = 2080;
      sub_1000422FC(&unk_1000BC418, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v32 = v22;
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      (*(v11 + 8))(v13, v10);
      v28 = sub_100037B98(v25, v27, v41);

      *(v24 + 14) = v28;
      v29 = v32;
      _os_log_impl(&_mh_execute_header, v32, v23, "%s resolved url: %s for Downloads folder placeholder. Calling delegate to inform of new url.", v24, 0x16u);
      swift_arrayDestroy();

      a2 = v35;
    }

    else
    {

      (*(v11 + 8))(v13, v10);
    }

    (*(v36 + 8))(v40, v37);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_10004A144(v19, a2);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    v18 = v34;
  }

  v18(v7, a2, v10);
  (*(v11 + 56))(v7, 0, 1, v10);
  v38(v7);
  return sub_100006390(v7, &unk_1000BCA20, &qword_100090BC0);
}

void sub_1000299A0(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

id sub_100029A5C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCSBFolderPresentationController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100029C94(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_100029E84(void *a1, uint64_t a2)
{
  sub_10001BBE4(v7);
  if (v8)
  {
    sub_100042398(v7, v8);
    v4 = dispatch thunk of DOCNodeDiffableDataSourceProtocol.itemIdentifier(at:)();
    if (v4)
    {
      v5 = v4;
      sub_1000064E0(v7);
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_100049360(v2, v5);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    else
    {
      sub_1000064E0(v7);
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      [a1 deselectItemAtIndexPath:isa animated:1];
    }
  }

  else
  {
    __break(1u);
  }
}

UIMenu sub_10002A078(uint64_t a1, void *a2)
{
  v2 = sub_10002B084(a1, a2);
  v3 = v2;
  v4 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v2 >> 62)
  {
    goto LABEL_40;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = v3 & 0xC000000000000001;
    if (i)
    {
      v7 = 0;
      do
      {
        v8 = v7;
        while (1)
        {
          if (v6)
          {
            v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v8 >= *(v4 + 16))
            {
              goto LABEL_37;
            }

            v9 = *(v3 + 8 * v8 + 32);
          }

          v10 = v9;
          v7 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            __break(1u);
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

          if (([v9 attributes] & 2) == 0)
          {
            break;
          }

          ++v8;
          if (v7 == i)
          {
            goto LABEL_17;
          }
        }

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      while (v7 != i);
    }

LABEL_17:
    if (!i)
    {
      break;
    }

    v11 = 0;
LABEL_19:
    v12 = v11;
    while (1)
    {
      if (v6)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v12 >= *(v4 + 16))
        {
          goto LABEL_39;
        }

        v13 = *(v3 + 8 * v12 + 32);
      }

      v14 = v13;
      v11 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (([v13 attributes] & 2) != 0)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        if (v11 != i)
        {
          goto LABEL_19;
        }

        goto LABEL_31;
      }

      ++v12;
      if (v11 == i)
      {
        goto LABEL_31;
      }
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    ;
  }

LABEL_31:

  if (_swiftEmptyArrayStorage >> 62)
  {
    sub_10001A2A8(0, &unk_1000BCA50, UIMenuElement_ptr);

    v15 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_10001A2A8(0, &unk_1000BCA50, UIMenuElement_ptr);
    v15 = _swiftEmptyArrayStorage;
  }

  sub_10001A2A8(0, &unk_1000BC480, UIMenu_ptr);
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v27.value.super.isa = 0;
  v27.is_nil = 0;
  v17.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v16, 0, v27, 1, 0xFFFFFFFFFFFFFFFFLL, v15, _swiftEmptyArrayStorage).super.super.isa;
  if (_swiftEmptyArrayStorage >> 62)
  {
    sub_10001A2A8(0, &unk_1000BCA50, UIMenuElement_ptr);

    v18 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_10001A2A8(0, &unk_1000BCA50, UIMenuElement_ptr);
    v18 = _swiftEmptyArrayStorage;
  }

  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v28.value.super.isa = 0;
  v28.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v19, 0, v28, 1, 0xFFFFFFFFFFFFFFFFLL, v18, children).super.super.isa;
  sub_10000589C(&unk_1000BC6D0, &unk_10008FB20);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_10008F960;
  *(v21 + 32) = v17;
  *(v21 + 40) = isa;
  preferredElementSize = v21;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  v29.value.super.isa = 0;
  v29.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v22, 0, v29, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, childrena);
}

id sub_10002A530(void *a1, void *a2, uint64_t a3)
{
  type metadata accessor for DOCNodeContextMenuConfiguration();
  result = swift_dynamicCastClass();
  if (result)
  {
    v6 = a2;
    sub_10001BBE4(v11);
    if (v12)
    {
      sub_100042398(v11, v12);
      v7 = dispatch thunk of DOCNodeDiffableDataSourceProtocol.itemIdentifier(at:)();
      sub_1000064E0(v11);
      if (v7)
      {
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v9 = [a1 cellForItemAtIndexPath:isa];

        if (v9)
        {
          v10 = sub_10002A674(v9);

          swift_unknownObjectRelease();
          return v10;
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {

      sub_100006390(v11, &qword_1000BC450, &unk_100090BA0);
    }

    return 0;
  }

  return result;
}

id sub_10002A674(void *a1)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v7);
  v10 = &v32 - v9;
  result = [a1 window];
  if (!result)
  {
    return result;
  }

  v12 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView;
  result = *(v1 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView);
  if (!result)
  {
    __break(1u);
    goto LABEL_19;
  }

  result = [result indexPathForCell:a1];
  if (!result)
  {
    return result;
  }

  v13 = result;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v4 + 32))(v10, v6, v3);
  v14 = sub_10001BBE4(&v32);
  if (!*&v32.d)
  {
    (*(v4 + 8))(v10, v3, v14);
    sub_100006390(&v32, &qword_1000BC450, &unk_100090BA0);
    return 0;
  }

  sub_100042398(&v32, *&v32.d);
  v15 = dispatch thunk of DOCNodeDiffableDataSourceProtocol.itemIdentifier(at:)();
  result = sub_1000064E0(&v32);
  if (!v15)
  {
LABEL_15:
    (*(v4 + 8))(v10, v3);
    return 0;
  }

  v16 = *(v1 + v12);
  if (!v16)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v17 = v16;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v19 = [v17 cellForItemAtIndexPath:isa];

  if (!v19)
  {
    (*(v4 + 8))(v10, v3);
    swift_unknownObjectRelease();
    return 0;
  }

  type metadata accessor for DOCSBCollectionViewCell(0);
  if (!swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();

    goto LABEL_15;
  }

  v20 = v19;
  v21 = DOCItemCollectionCell.thumbnailView.getter();

  v22 = v21;
  sub_10002ACB0(v10, [v15 isFolder]);
  v24 = v23;
  [v22 bounds];
  [a1 convertPoint:v22 fromCoordinateSpace:?];
  v26 = v25;
  v28 = v27;
  v29 = [v24 visiblePath];
  if (v29)
  {
    v30 = v29;
    CGAffineTransformMakeTranslation(&v32, -v26, -v28);
    [v30 applyTransform:&v32];
  }

  v31 = [objc_allocWithZone(UITargetedPreview) initWithView:v22 parameters:v24];
  swift_unknownObjectRelease();

  (*(v4 + 8))(v10, v3);
  return v31;
}

void sub_10002ACB0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = [objc_allocWithZone(UIPreviewParameters) init];
  v6 = [objc_opt_self() clearColor];
  [v5 setBackgroundColor:v6];

  v7 = *(v3 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView);
  if (!v7)
  {
    __break(1u);
    goto LABEL_17;
  }

  v8 = v7;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v10 = [v8 cellForItemAtIndexPath:isa];

  if (!v10)
  {
    return;
  }

  type metadata accessor for DOCSBCollectionViewCell(0);
  v11 = swift_dynamicCastClass();
  if (!v11)
  {

    return;
  }

  v12 = v11;
  v13 = v10;
  v14 = DOCItemCollectionCell.thumbnailView.getter();

  v15 = v14;
  [v15 _continuousCornerRadius];
  if (v16 <= 0.0 || (a2 & 1) != 0)
  {
    sub_10001BBE4(&v42);
    if (*&v42.d)
    {
      sub_100042398(&v42, *&v42.d);
      if (dispatch thunk of DOCNodeDiffableDataSourceProtocol.itemIdentifier(at:)())
      {
        sub_1000064E0(&v42);
        sub_10001A2A8(0, &qword_1000BC460, UIBezierPath_ptr);
        [v15 bounds];
        v26 = static UIBezierPath.path(for:thumbnailSize:)();
        [v15 bounds];
        [v12 convertPoint:v15 fromCoordinateSpace:?];
        CGAffineTransformMakeTranslation(&v42, v27, v28);
        [v26 applyTransform:&v42];
        [v5 setVisiblePath:v26];
        swift_unknownObjectRelease();
        goto LABEL_11;
      }

LABEL_18:
      __break(1u);
      return;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v15 bounds];
  [v12 convertRect:v15 fromCoordinateSpace:?];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  [v15 _continuousCornerRadius];
  v26 = [objc_opt_self() bezierPathWithRoundedRect:v18 cornerRadius:{v20, v22, v24, v25}];
  [v5 setVisiblePath:v26];
LABEL_11:

  v29 = [v5 visiblePath];
  if (v29)
  {
    v30 = v29;
  }

  else
  {
    [v15 bounds];
    [v12 convertRect:v15 fromCoordinateSpace:?];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    [v15 _continuousCornerRadius];
    v40 = v39;

    v41 = [objc_opt_self() bezierPathWithRoundedRect:v32 cornerRadius:{v34, v36, v38, v40}];
    [v5 setVisiblePath:v41];
  }
}

void *sub_10002B084(uint64_t a1, void *a2)
{
  v3 = v2;
  v65 = a2;
  v5 = String._bridgeToObjectiveC()();
  v6 = [objc_opt_self() configurationForOpeningDocumentsOfApplicationWithBundleIdentifier:v5];

  type metadata accessor for DOCActionManager();
  v7 = DOCActionManager.init()();
  result = _DocumentManagerBundle();
  if (result)
  {
    v9 = result;
    v73._object = 0x8000000100092910;
    v10._countAndFlagsBits = 0x617A696C61636F4CLL;
    v10._object = 0xEB00000000656C62;
    v11._countAndFlagsBits = 0x206E6920776F6853;
    v11._object = 0xED000073656C6946;
    v73._countAndFlagsBits = 0xD000000000000046;
    v12._countAndFlagsBits = 0x206E6920776F6853;
    v12._object = 0xED000073656C6946;
    DOCLocalizedString(_:tableName:bundle:value:comment:)(v11, v10, v9, v12, v73);

    v13 = UIDocumentBrowserActionIdentifierRevealInFiles;
    v14 = swift_allocObject();
    *(v14 + 16) = a1;
    *(v14 + 24) = v3;
    v15 = objc_allocWithZone(UIDocumentBrowserAction);
    v16 = v13;
    swift_unknownObjectRetain();
    v59 = v3;
    v17 = String._bridgeToObjectiveC()();

    v71 = sub_100042454;
    v72 = v14;
    aBlock = _NSConcreteStackBlock;
    v68 = 1107296256;
    v69 = sub_1000379B8;
    v70 = &unk_1000AEC10;
    v18 = _Block_copy(&aBlock);
    v19 = [v15 initWithIdentifier:v16 localizedTitle:v17 unresolvedHandler:v18];

    _Block_release(v18);

    v20 = String._bridgeToObjectiveC()();
    v21 = [objc_opt_self() systemImageNamed:v20];

    [v19 setImage:v21];
    [v19 setAvailability:1];
    [v19 setSupportsMultipleItems:0];
    v60 = a1;
    v62 = v6;
    v22 = v7;
    v23 = DOCActionManager.menuActions(for:in:currentConfiguration:)();
    sub_10000589C(&unk_1000BC6D0, &unk_10008FB20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10008F940;
    *(inited + 32) = v19;
    aBlock = v23;
    v56 = v19;
    sub_10000D760(inited, v25);
    v26 = aBlock;
    sub_10000589C(&qword_1000BBDC0, &qword_100090E90);
    v27 = swift_initStackObject();
    *(v27 + 16) = xmmword_100090650;
    *(v27 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v58 = v27 + 32;
    *(v27 + 40) = v28;
    *(v27 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v27 + 56) = v29;
    *(v27 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v27 + 72) = v30;
    v66 = _swiftEmptyArrayStorage;
    if (v26 >> 62)
    {
      goto LABEL_41;
    }

    v64 = v26 & 0xFFFFFFFFFFFFFF8;
    for (i = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v65 = v22;
      if (i)
      {
        v32 = 0;
        v61 = v26 & 0xC000000000000001;
        v63 = _swiftEmptyArrayStorage;
        do
        {
          v33 = v32;
          while (1)
          {
            if (v61)
            {
              v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v33 >= *(v64 + 16))
              {
                goto LABEL_38;
              }

              v34 = *(v26 + 8 * v33 + 32);
            }

            v35 = v34;
            v32 = v33 + 1;
            if (__OFADD__(v33, 1))
            {
              __break(1u);
LABEL_38:
              __break(1u);
              goto LABEL_39;
            }

            v36 = v26;
            v37 = [v34 identifier];
            v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v40 = v39;

            aBlock = v38;
            v68 = v40;
            __chkstk_darwin(v41);
            v73._object = &aBlock;
            LOBYTE(v38) = sub_1000200DC(sub_10004245C, v55, v27);

            if (v38)
            {
              break;
            }

            ++v33;
            v22 = v65;
            v26 = v36;
            if (v32 == i)
            {
              goto LABEL_20;
            }
          }

          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          v22 = v65;
          v26 = v36;
          if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v63 = v66;
        }

        while (v32 != i);
      }

      else
      {
        v63 = _swiftEmptyArrayStorage;
      }

LABEL_20:
      swift_setDeallocating();
      swift_arrayDestroy();

      aBlock = _swiftEmptyArrayStorage;
      v42 = v63;
      v43 = v63 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v44 = v62;
      if (!v43)
      {
        break;
      }

      v26 = 0;
      v61 = v42 & 0xC000000000000001;
      v58 = v42 & 0xFFFFFFFFFFFFFF8;
      v57 = v43;
      while (1)
      {
        if (v61)
        {
          v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v26 >= *(v58 + 16))
          {
            goto LABEL_40;
          }

          v45 = *(v42 + 8 * v26 + 32);
        }

        v46 = v45;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        v64 = v26 + 1;
        v47 = [v45 identifier];
        if (!v47)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v47 = String._bridgeToObjectiveC()();
        }

        [objc_opt_self() isDestructiveActionIdentifier:v47];

        UIDocumentBrowserAction.preferredLocalizedTitleForMenus.getter();
        v27 = v48;
        sub_10001A2A8(0, &qword_1000BC490, UIAction_ptr);
        v49 = [v46 image];
        v22 = UIDocumentBrowserAction.compositeIdentifierForMenus.getter();
        v50 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v51 = swift_allocObject();
        v51[2] = v50;
        v52 = v65;
        v51[3] = v65;
        v51[4] = v46;
        v51[5] = v60;
        swift_unknownObjectRetain();
        v53 = v52;
        v55[1] = sub_10004253C;
        v73._object = v51;
        v55[0] = 0;
        UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        ++v26;
        v44 = v62;
        v42 = v63;
        if (v64 == v57)
        {
          v54 = aBlock;
          v22 = v65;
          goto LABEL_36;
        }
      }

LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      v64 = v26 & 0xFFFFFFFFFFFFFF8;
    }

    v54 = _swiftEmptyArrayStorage;
LABEL_36:

    return v54;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_10002B94C(uint64_t a1, uint64_t a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = String._bridgeToObjectiveC()();
    v11 = [objc_opt_self() configurationForOpeningDocumentsOfApplicationWithBundleIdentifier:v10];

    if (!swift_unknownObjectWeakLoadStrong())
    {
      [objc_allocWithZone(UIViewController) init];
    }

    sub_10003F1F0(_swiftEmptyArrayStorage);
    v12 = objc_allocWithZone(type metadata accessor for DOCActionContext());
    v13 = DOCActionContext.init(appearance:configuration:presentingViewController:performer:transitionProxy:actionReporting:userInfo:)();
    dispatch thunk of DOCActionContext.updateWithPropertiesFrom(triggeringAction:)();
    sub_10000589C(&unk_1000BC6D0, &unk_10008FB20);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_10008F940;
    *(v14 + 32) = a6;
    swift_unknownObjectRetain();
    DOCActionManager.perform(_:on:actionContext:)();
  }

  return result;
}

void *sub_10002BAF4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001BBE4(v18);
  if (v19)
  {
    sub_100042398(v18, v19);
    v7 = dispatch thunk of DOCNodeDiffableDataSourceProtocol.itemIdentifier(at:)();
    sub_1000064E0(v18);
    if (v7)
    {
      swift_getObjectType();
      if (DOCNode.supportsDrag.getter())
      {
        if (*(v2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dataSource))
        {

          v8 = sub_10002E050();

          if (v8)
          {
            [v8 supportsPickingFolders];
          }
        }

        v13 = DOCNode.dragItemFor(session:supportsPickingFolders:)();
        if (v13)
        {
          v14 = v13;
          sub_10000589C(&unk_1000BC6D0, &unk_10008FB20);
          v15 = swift_allocObject();
          *(v15 + 16) = xmmword_10008F940;
          *(v15 + 32) = v14;
          swift_unknownObjectRelease();
          return v15;
        }
      }

      else
      {
        static Logger.UI.getter();
        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          v12 = swift_slowAlloc();
          v18[0] = v12;
          *v11 = 136315138;
          *(v11 + 4) = sub_100037B98(0xD000000000000019, 0x8000000100092880, v18);
          _os_log_impl(&_mh_execute_header, v9, v10, "%s: Item cannot be dragged because it does not support drag", v11, 0xCu);
          sub_1000064E0(v12);
        }

        (*(v4 + 8))(v6, v3);
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_100006390(v18, &qword_1000BC450, &unk_100090BA0);
  }

  return _swiftEmptyArrayStorage;
}

void sub_10002C3FC(uint64_t a1)
{
  v49 = a1;
  v2 = type metadata accessor for DOCItemCollectionCellStackMetrics();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v47 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for DOCItemCollectionLayoutTraits.ListItemTraits();
  v46 = *(v48 - 8);
  __chkstk_darwin(v48);
  v44 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for DOCItemCollectionLayoutTraits.GridItemTraits();
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DOCItemCollectionContext();
  v42 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UITraitCollection.Traits();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_opt_self() mainScreen];
  [v15 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v52.origin.x = v17;
  v52.origin.y = v19;
  v52.size.width = v21;
  v52.size.height = v23;
  v53 = CGRectStandardize(v52);
  width = v53.size.width;
  height = v53.size.height;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (width <= 0.0 || height <= 0.0)
    {
    }

    else
    {
      v37 = v3;
      v38 = v2;
      v39 = v1;
      v41 = Strong;
      v40 = [Strong traitCollection];
      sub_10000589C(&unk_1000BC530, &qword_100090D00);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_100090660;
      static UITraitCollection.Traits.hSizeClass.getter();
      static UITraitCollection.Traits.vSizeClass.getter();
      static UITraitCollection.Traits.displayScale.getter();
      static UITraitCollection.Traits.sizeCategory.getter();
      v50 = v27;
      sub_1000422FC(&unk_1000BD180, &type metadata accessor for UITraitCollection.Traits, &protocol conformance descriptor for UITraitCollection.Traits);
      sub_10000589C(&unk_1000BC540, &qword_100090D08);
      sub_100043240(&unk_1000BD190, &unk_1000BC540, &qword_100090D08, &protocol conformance descriptor for [A]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v28 = v40;
      v29 = UITraitCollection.doc_hasSpecified(_:)();

      (*(v12 + 8))(v14, v11);
      if (v29)
      {
        (*(v42 + 104))(v10, enum case for DOCItemCollectionContext.dockFolderApp(_:), v8);
        v30 = [v41 traitCollection];
        type metadata accessor for DOCItemCollectionLayoutTraits();
        swift_allocObject();
        DOCItemCollectionLayoutTraits.init(context:traitCollection:containerViewSize:)();
        dispatch thunk of DOCItemCollectionLayoutTraits.gridItemLayoutTraits.getter();
        v31 = v44;
        dispatch thunk of DOCItemCollectionLayoutTraits.listItemLayoutTraits.getter();
        v32 = v47;
        static DOCItemCollectionCellStackMetrics.zero.getter();
        v33 = [objc_allocWithZone(DOCAppearance) init];
        v34 = v49;
        v35 = dispatch thunk of DOCItemCollectionCellContent.node.getter();
        if (v35)
        {
          v35 = swift_unknownObjectRelease();
        }

        __chkstk_darwin(v35);
        *(&v37 - 14) = v34;
        *(&v37 - 104) = 0;
        *(&v37 - 12) = v7;
        *(&v37 - 11) = v31;
        *(&v37 - 80) = 0;
        *(&v37 - 9) = v32;
        *(&v37 - 8) = v33;
        *(&v37 - 56) = 0;
        *(&v37 - 55) = v36;
        *(&v37 - 27) = 0;
        *(&v37 - 6) = v41;
        *(&v37 - 5) = 0;
        *(&v37 - 16) = 256;
        *(&v37 - 3) = v39;
        *(&v37 - 2) = 0;
        *(&v37 - 1) = 0xE000000000000000;
        dispatch thunk of DOCItemCollectionCellContent.withNotificationsDisabled(_:)();

        (*(v37 + 8))(v32, v38);
        (*(v46 + 8))(v31, v48);
        (*(v43 + 8))(v7, v45);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_10002CA9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, void *a7, int a8, unsigned __int8 a9, unsigned __int8 a10, unsigned __int8 a11, void *a12, uint64_t a13, unsigned __int8 a14, unsigned __int8 a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v43 = a8;
  v39 = a6;
  v49 = a18;
  v50 = a17;
  v48 = a16;
  v47 = a15;
  v45 = a14;
  v46 = a13;
  v44 = a12;
  v41 = a10;
  v42 = a11;
  v40 = a9;
  v21 = sub_10000589C(&qword_1000BC550, &qword_100090D10);
  __chkstk_darwin(v21 - 8);
  v23 = &v39 - v22;
  v24 = sub_10000589C(&qword_1000BC558, &qword_100090D18);
  __chkstk_darwin(v24 - 8);
  v26 = &v39 - v25;
  v27 = sub_10000589C(&qword_1000BC560, &unk_100090D20);
  __chkstk_darwin(v27 - 8);
  v29 = &v39 - v28;
  dispatch thunk of DOCItemCollectionCellContent.isInSearchMode.setter();
  v30 = type metadata accessor for DOCItemCollectionLayoutTraits.GridItemTraits();
  v31 = *(v30 - 8);
  (*(v31 + 16))(v29, a3, v30);
  (*(v31 + 56))(v29, 0, 1, v30);
  dispatch thunk of DOCItemCollectionCellContent.gridItemLayoutTraits.setter();
  v32 = type metadata accessor for DOCItemCollectionLayoutTraits.ListItemTraits();
  v33 = *(v32 - 8);
  (*(v33 + 16))(v26, a4, v32);
  (*(v33 + 56))(v26, 0, 1, v32);
  dispatch thunk of DOCItemCollectionCellContent.listItemLayoutTraits.setter();
  dispatch thunk of DOCItemCollectionCellContent.minimumRowHeight.setter();
  dispatch thunk of DOCItemCollectionCellContent.isInCreateMode.setter();
  v34 = type metadata accessor for DOCItemCollectionCellStackMetrics();
  v35 = *(v34 - 8);
  (*(v35 + 16))(v23, v39, v34);
  (*(v35 + 56))(v23, 0, 1, v34);
  dispatch thunk of DOCItemCollectionCellContent.stackMetrics.setter();
  v36 = a7;
  dispatch thunk of DOCItemCollectionCellContent.appearance.setter();
  dispatch thunk of DOCItemCollectionCellContent.preferLastUsedDate.setter();
  dispatch thunk of DOCItemCollectionCellContent.canBecomeSelectable.setter();
  dispatch thunk of DOCItemCollectionCellContent.isSelecting.setter();
  dispatch thunk of DOCItemCollectionCellContent.isDropping.setter();
  v37 = [v44 traitCollection];
  dispatch thunk of DOCItemCollectionCellContent.traitCollection.setter();
  dispatch thunk of DOCItemCollectionCellContent.itemsOrigin.setter();
  dispatch thunk of DOCItemCollectionCellContent.isPickable.setter();

  dispatch thunk of DOCItemCollectionCellContent.imageCache.setter();

  dispatch thunk of DOCItemCollectionCellContent.sourceName.setter();
  dispatch thunk of DOCItemCollectionCellContent.disableProgressViews.setter();
  return dispatch thunk of DOCItemCollectionCellContent.useSystemHighlightStyle.setter();
}

void sub_10002CE64(__n128 a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    __chkstk_darwin(Strong);
    v7 = v6;

    v8 = dispatch thunk of DOCItemCollectionCellContentPool.content(for:contentUpdate:)();

    sub_100086094(*&v7[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration + 8], *&v7[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration + 16], 0);
    v9 = v8;
    dispatch thunk of DOCItemCollectionCell.cellContent.setter();
  }
}

void sub_10002CF6C(uint64_t a1, __n128 a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    __chkstk_darwin(Strong);
    v8 = v7;

    v9 = dispatch thunk of DOCItemCollectionCellContentPool.content(for:contentUpdate:)();

    v10 = a1 + qword_1000BD530;
    *v10 = *&v8[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration + 8];
    *(v10 + 16) = 0;
    v11 = v9;
    dispatch thunk of DOCItemCollectionCell.cellContent.setter();
  }
}

id sub_10002D084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v35[1] = a7;
  v36 = a6;
  v37 = a1;
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    if (a5)
    {
    }

    else
    {
      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v29 & 1) == 0)
      {
        v38 = a3;
        type metadata accessor for DOCSBCollectionViewCellGrid(0);
        swift_unknownObjectRetain();
        sub_10000589C(&qword_1000BBDA8, &qword_100090AC0);
        goto LABEL_11;
      }
    }

    v38 = a3;
    type metadata accessor for DOCSBCollectionViewCellFan(0);
    swift_unknownObjectRetain();
    sub_10000589C(&qword_1000BBDA8, &qword_100090AC0);
LABEL_11:
    v31 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();
    swift_unknownObjectRelease();
    v32 = objc_opt_self();
    v33 = v31;
    v34 = [v32 clearColor];
    [v33 setBackgroundColor:v34];

    return v33;
  }

  v36 = v14;
  v37 = v15;
  static Logger.DockApp.getter();
  (*(v11 + 16))(v13, a2, v10);
  swift_unknownObjectRetain();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.fault.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v21 = 136315394;
    swift_getObjectType();
    v22 = DOCNode.nodeDescription.getter();
    v24 = sub_100037B98(v22, v23, &v38);

    *(v21 + 4) = v24;
    *(v21 + 12) = 2080;
    sub_1000422FC(&qword_1000BC458, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v27 = v26;
    (*(v11 + 8))(v13, v10);
    v28 = sub_100037B98(v25, v27, &v38);

    *(v21 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v19, v20, "Collection view asked for cell for item %s at index path %s but none was returned [self was deallocated].", v21, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v11 + 8))(v13, v10);
  }

  (*(v37 + 8))(v17, v36);
  return [objc_allocWithZone(UICollectionViewCell) init];
}

char *sub_10002D514(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return [objc_allocWithZone(UICollectionReusableView) init];
  }

  v11 = Strong;
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a3 && v12 == a4)
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {

      return 0;
    }
  }

  if (*(v11 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration) == 1)
  {
    type metadata accessor for DOCSBFolderCollectionHeaderViewIconStyle();
  }

  else
  {
    type metadata accessor for DOCSBFolderCollectionHeaderViewBannerStyle();
  }

  v16 = UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();
  *&v16[OBJC_IVAR____TtC21DockFolderViewService31DOCSBFolderCollectionHeaderView_interactionDelegate + 8] = &off_1000AE908;
  swift_unknownObjectWeakAssign();
  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 clearColor];
  [v18 setBackgroundColor:v19];

  v18[OBJC_IVAR____TtC21DockFolderViewService31DOCSBFolderCollectionHeaderView_openButtonHidden] = [objc_opt_self() doc_isApplicationInstalledWithBundleIdentifier:DOCDocumentsAppBundleIdentifier] ^ 1;
  [v18 setNeedsLayout];

  return v18;
}

void sub_10002D714(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    *(a1 + OBJC_IVAR____TtC21DockFolderViewService40DOCSBFolderCollectionHeaderViewIconStyle_iconSize) = *(Strong + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration + 8);
    sub_100003050();
    if (*&v8[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dataSource])
    {

      v9 = sub_10002E384();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0xE000000000000000;
    }

    v12 = (a1 + OBJC_IVAR____TtC21DockFolderViewService31DOCSBFolderCollectionHeaderView_locationTitle);
    *v12 = v9;
    v12[1] = v11;

    sub_100003A20();
  }
}

void sub_10002D800(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (*(Strong + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dataSource))
    {

      v8 = sub_10002E384();
      v10 = v9;
    }

    else
    {
      v8 = 0;
      v10 = 0xE000000000000000;
    }

    sub_100003E04(v8, v10);
  }
}

void *sub_10002D980(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewContainer;
  [a1 locationInView:*(v2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewContainer)];
  result = *(v2 + v3);
  if (result)
  {
    v5 = [result hitTest:0 withEvent:?];
    if (!v5)
    {
      v11 = 0;
      return (v11 & 1);
    }

    v6 = v5;
    v7 = *(v2 + v3);
    if (v7)
    {
      sub_10001A2A8(0, &qword_1000BC3E0, UIView_ptr);
      v8 = v6;
      v9 = v7;
      v10 = static NSObject.== infix(_:_:)();

      if (v10)
      {
        v11 = 1;
LABEL_11:

        return (v11 & 1);
      }
    }

    else
    {
      v12 = v5;
    }

    v13 = *(v2 + OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionView);
    if (v13)
    {
      sub_10001A2A8(0, &qword_1000BC3E0, UIView_ptr);
      v14 = v13;
      v11 = static NSObject.== infix(_:_:)();
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_10002DB00(char *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DOCItemSortDescriptor();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v46 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v41 - v8;
  __chkstk_darwin(v10);
  v12 = &v41 - v11;
  v13 = type metadata accessor for Logger();
  v47 = *(v13 - 8);
  v48 = v13;
  __chkstk_darwin(v13);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v16 = v5[2];
  v49 = a1;
  v51 = v16;
  v16(v12, a1, v4);

  v17 = Logger.logObject.getter();
  LODWORD(a1) = static os_log_type_t.info.getter();

  v44 = a1;
  v18 = os_log_type_enabled(v17, a1);
  v19 = &unk_1000BF000;
  if (v18)
  {
    v20 = swift_slowAlloc();
    v45 = v5;
    v21 = v20;
    v43 = swift_slowAlloc();
    v52[0] = v43;
    *v21 = 136315650;
    *(v21 + 4) = sub_100037B98(0x6373654474726F73, 0xEE00726F74706972, v52);
    *(v21 + 12) = 2080;
    v22 = OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_sortDescriptor;
    swift_beginAccess();
    v42 = v17;
    v23 = v51;
    v51(v9, (v2 + v22), v4);
    v24 = String.init<A>(describing:)();
    v26 = sub_100037B98(v24, v25, v52);

    *(v21 + 14) = v26;
    *(v21 + 22) = 2080;
    v23(v9, v12, v4);
    v27 = String.init<A>(describing:)();
    v29 = v28;
    v50 = v45[1];
    v50(v12, v4);
    v30 = sub_100037B98(v27, v29, v52);

    *(v21 + 24) = v30;
    v19 = &unk_1000BF000;
    v31 = v42;
    _os_log_impl(&_mh_execute_header, v42, v44, "%s new: %s, old: %s", v21, 0x20u);
    swift_arrayDestroy();

    v5 = v45;
  }

  else
  {

    v50 = v5[1];
    v50(v12, v4);
  }

  (*(v47 + 8))(v15, v48);
  v32 = v19[29];
  swift_beginAccess();
  v33 = v51;
  v51(v9, (v2 + v32), v4);
  sub_1000422FC(&qword_1000BC4E8, &type metadata accessor for DOCItemSortDescriptor, &protocol conformance descriptor for DOCItemSortDescriptor);
  v34 = dispatch thunk of static Equatable.== infix(_:_:)();
  result = (v50)(v9, v4);
  if ((v34 & 1) == 0)
  {
    v36 = *(v2 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_dataSourceObserver);
    v33(v9, (v2 + v32), v4);
    v37 = OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_sortDescriptor;
    swift_beginAccess();
    v38 = v46;
    v33(v46, (v36 + v37), v4);
    swift_beginAccess();
    v39 = v5[3];

    v39(v36 + v37, v9, v4);
    swift_endAccess();
    sub_10002F100(v38);

    v40 = v50;
    v50(v38, v4);
    return v40(v9, v4);
  }

  return result;
}

id sub_10002E050()
{
  v1 = type metadata accessor for Logger();
  __chkstk_darwin(v1);
  v2 = *(*(v0 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_dataSourceObserver) + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = dispatch thunk of DOCNodeCollection.observedNode.getter();

  if (!v4)
  {
    return 0;
  }

  sub_10001A2A8(0, &qword_1000BC438, FPProviderDomain_ptr);
  swift_getObjectType();
  v5 = [v4 providerDomainID];
  v6 = sub_10003F320(v5, 1);
  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_10002E384()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7.n128_f64[0] = __chkstk_darwin(v6);
  v9 = &v23 - v8;
  v10 = *(*(v0 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_dataSourceObserver) + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection);
  if (v10 && (, v11 = v10, v12 = dispatch thunk of DOCNodeCollection.observedNode.getter(), , v11, v12))
  {
    v13 = [v12 displayName];
    swift_unknownObjectRelease();
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v15 = OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_url;
    v16 = *(v3 + 16);
    v16(v9, v1 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_url, v2, v7);
    v17 = URL.lastPathComponent.getter();
    v19 = v18;
    v24 = v1;
    v20 = *(v3 + 8);
    v20(v9, v2);

    v21 = HIBYTE(v19) & 0xF;
    if ((v19 & 0x2000000000000000) == 0)
    {
      v21 = v17 & 0xFFFFFFFFFFFFLL;
    }

    if (v21)
    {
      (v16)(v5, v24 + v15, v2);
      v14 = URL.lastPathComponent.getter();
      v20(v5, v2);
    }

    else
    {
      return 0x6E6F697461636F4CLL;
    }
  }

  return v14;
}

uint64_t sub_10002E5B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v36 = a2;
  v5 = type metadata accessor for DOCItemSortDescriptor();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = (v2 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_changeHandler);
  *v16 = 0;
  v16[1] = 0;
  v17 = *(v12 + 16);
  v33 = v11;
  v34 = a1;
  v17(v2 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_url, a1, v11, v13);
  (v17)(v15, a1, v11);
  v18 = v6[2];
  v19 = v36;
  v18(v10, v36, v5);
  type metadata accessor for DockFolderDataSourceObserver(0);
  v20 = swift_allocObject();
  sub_10002F630(v15, v10);
  v32 = OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_dataSourceObserver;
  *(v3 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_dataSourceObserver) = v20;
  v18((v3 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_sortDescriptor), v19, v5);
  v18(v10, v19, v5);
  v21 = OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_sortDescriptor;
  swift_beginAccess();
  v22 = v35;
  v18(v35, v20 + v21, v5);
  swift_beginAccess();
  v23 = v6[3];

  v23(v20 + v21, v10, v5);
  swift_endAccess();
  sub_10002F100(v22);

  v24 = v6[1];
  v24(v36, v5);
  (*(v12 + 8))(v34, v33);
  v24(v22, v5);
  v24(v10, v5);
  v25 = *(v3 + v32);
  v26 = swift_allocObject();
  swift_weakInit();
  v27 = (v25 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_changeHandler);
  v28 = *(v25 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_changeHandler);
  v29 = *(v25 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_changeHandler + 8);
  *v27 = sub_10004280C;
  v27[1] = v26;

  swift_retain_n();
  sub_1000414DC(v28, v29);

  return v3;
}

double sub_10002E968(uint64_t a1, __n128 a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10002EC6C();
  }

  return result;
}

double sub_10002E9C0()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v8 = 136315650;
    *(v8 + 4) = sub_100037B98(0xD000000000000010, 0x8000000100092700, &v22);
    *(v8 + 12) = 2080;
    v20 = v2;
    v9 = OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_dataSourceObserver;
    v21 = *(v1 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_dataSourceObserver);
    type metadata accessor for DockFolderDataSourceObserver(0);

    v10 = String.init<A>(describing:)();
    v12 = sub_100037B98(v10, v11, &v22);

    *(v8 + 14) = v12;
    v13 = *(v1 + v9);
    *(v8 + 22) = 2080;
    v21 = *(v13 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection);
    v14 = v21;
    sub_10000589C(&qword_1000BC3E8, &qword_100090B78);
    v15 = String.init<A>(describing:)();
    v17 = sub_100037B98(v15, v16, &v22);

    *(v8 + 24) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s X1 dataSource: %s nodeCollection: %s", v8, 0x20u);
    swift_arrayDestroy();

    (*(v3 + 8))(v5, v20);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  sub_100031624();

  return result;
}

double sub_10002EC6C()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = v18;
    *v8 = 136315394;
    *(v8 + 4) = sub_100037B98(0xD00000000000001ELL, 0x8000000100092740, &v19);
    *(v8 + 12) = 2048;
    v9 = *(*(v0 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_dataSourceObserver) + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection);
    if (v9)
    {

      v10 = v9;
      v11 = dispatch thunk of DOCNodeCollection.nodes.getter();

      if (!(v11 >> 62))
      {
LABEL_4:
        v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:

        *(v8 + 14) = v12;

        _os_log_impl(&_mh_execute_header, v6, v7, "%s nodes count: %ld)", v8, 0x16u);
        sub_1000064E0(v18);

        goto LABEL_7;
      }
    }

    else
    {
      v11 = _swiftEmptyArrayStorage;
      if (!(_swiftEmptyArrayStorage >> 62))
      {
        goto LABEL_4;
      }
    }

    v12 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_5;
  }

LABEL_7:
  (*(v3 + 8))(v5, v2);
  v14 = v1 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_changeHandler;
  v15 = *(v1 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_changeHandler);
  if (v15)
  {
    v16 = *(v14 + 8);

    v15(v17);
    return sub_1000414DC(v15, v16);
  }

  return result;
}

uint64_t sub_10002EEF8()
{
  v1 = OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_url;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_sortDescriptor;
  v4 = type metadata accessor for DOCItemSortDescriptor();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_1000414DC(*(v0 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_changeHandler), *(v0 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_changeHandler + 8));
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v5, v6);
}

uint64_t sub_10002F020(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for DOCItemSortDescriptor();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10002F100(char *a1)
{
  v2 = v1;
  v4 = sub_10000589C(&unk_1000BC3F0, &qword_100090B80);
  __chkstk_darwin(v4 - 8);
  v6 = &v40 - v5;
  v7 = type metadata accessor for DOCItemSortDescriptor();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v40 - v12;
  v14 = type metadata accessor for Logger();
  v47 = *(v14 - 8);
  v48 = v14;
  __chkstk_darwin(v14);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v17 = *(v8 + 16);
  v49 = a1;
  v51 = v17;
  v17(v13, a1, v7);

  v18 = Logger.logObject.getter();
  LODWORD(a1) = static os_log_type_t.info.getter();

  v45 = a1;
  v19 = os_log_type_enabled(v18, a1);
  v20 = &unk_1000BF000;
  v44 = v8;
  if (v19)
  {
    v21 = swift_slowAlloc();
    v50 = v2;
    v22 = v21;
    v42 = swift_slowAlloc();
    v52[0] = v42;
    *v22 = 136315650;
    *(v22 + 4) = sub_100037B98(0x6373654474726F73, 0xEE00726F74706972, v52);
    *(v22 + 12) = 2080;
    v41 = v18;
    v23 = v8;
    v24 = OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_sortDescriptor;
    swift_beginAccess();
    v25 = v51;
    v51(v10, (v50 + v24), v7);
    v26 = String.init<A>(describing:)();
    v43 = v6;
    v28 = sub_100037B98(v26, v27, v52);

    *(v22 + 14) = v28;
    *(v22 + 22) = 2080;
    v25(v10, v13, v7);
    v20 = &unk_1000BF000;
    v29 = String.init<A>(describing:)();
    v31 = v30;
    v46 = *(v23 + 8);
    v46(v13, v7);
    v32 = sub_100037B98(v29, v31, v52);
    v6 = v43;

    *(v22 + 24) = v32;
    v33 = v41;
    _os_log_impl(&_mh_execute_header, v41, v45, "%s new: %s, old: %s", v22, 0x20u);
    swift_arrayDestroy();

    v2 = v50;
  }

  else
  {

    v46 = *(v8 + 8);
    v46(v13, v7);
  }

  (*(v47 + 8))(v16, v48);
  v34 = v20[33];
  swift_beginAccess();
  v35 = v51;
  v51(v10, (v2 + v34), v7);
  sub_1000422FC(&qword_1000BC4E8, &type metadata accessor for DOCItemSortDescriptor, &protocol conformance descriptor for DOCItemSortDescriptor);
  v36 = dispatch thunk of static Equatable.== infix(_:_:)();
  result = (v46)(v10, v7);
  if ((v36 & 1) == 0)
  {
    v38 = *(v2 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection);
    if (v38)
    {
      v35(v6, v2 + v34, v7);
      (*(v44 + 56))(v6, 0, 1, v7);
      v39 = v38;
      dispatch thunk of DOCNodeCollection.reorderItems(with:)();

      return sub_100006390(v6, &unk_1000BC3F0, &qword_100090B80);
    }
  }

  return result;
}

uint64_t sub_10002F630(uint64_t a1, uint64_t a2)
{
  v18 = a1;
  v5 = type metadata accessor for DOCItemSortDescriptor();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection) = 0;
  v9 = (v2 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_changeHandler);
  *v9 = 0;
  v9[1] = 0;
  *(v2 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_hasStartedFetchingNode) = 0;
  *(v2 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_hasPendingStartObservingRequest) = 0;
  v10 = OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_directoryURL;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v2 + v10, a1, v11);
  v13 = *(v6 + 16);
  v13(v2 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_sortDescriptor, a2, v5);
  v13(v8, a2, v5);
  v14 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v2;
  (*(v6 + 32))(v15 + v14, v8, v5);

  sub_10002FC2C(sub_1000428D8, v15);

  (*(v6 + 8))(a2, v5);
  (*(v12 + 8))(v18, v11);
  return v2;
}

void sub_10002F870(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000589C(&unk_1000BC3F0, &qword_100090B80);
  __chkstk_darwin(v4 - 8);
  v6 = &v27 - v5;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  swift_retain_n();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v30 = v6;
    v14 = v13;
    v15 = swift_slowAlloc();
    v29 = a2;
    v32 = v15;
    *v14 = 136315650;
    *(v14 + 4) = sub_100037B98(0xD000000000000022, 0x8000000100092B20, &v32);
    *(v14 + 12) = 2080;
    v31 = *(a1 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection);
    v16 = v31;
    sub_10000589C(&qword_1000BC3E8, &qword_100090B78);
    v17 = String.init<A>(describing:)();
    v28 = v7;
    v19 = sub_100037B98(v17, v18, &v32);

    *(v14 + 14) = v19;
    *(v14 + 22) = 1024;
    LODWORD(v19) = *(a1 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_hasPendingStartObservingRequest);

    *(v14 + 24) = v19;

    _os_log_impl(&_mh_execute_header, v11, v12, "%s finished setting up node observer: %s, hasPendingStartObservingRequest: %{BOOL}d observation", v14, 0x1Cu);
    swift_arrayDestroy();
    a2 = v29;

    v6 = v30;

    (*(v8 + 8))(v10, v28);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  if (*(a1 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_hasPendingStartObservingRequest) == 1)
  {
    v20 = OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection;
    v21 = *(a1 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection);
    if (v21)
    {
      v22 = v21;
      dispatch thunk of DOCNodeCollection.startObservationIfNeeded()();

      v23 = *(a1 + v20);
      if (v23)
      {
        v24 = type metadata accessor for DOCItemSortDescriptor();
        v25 = *(v24 - 8);
        (*(v25 + 16))(v6, a2, v24);
        (*(v25 + 56))(v6, 0, 1, v24);
        v26 = v23;
        dispatch thunk of DOCNodeCollection.reorderItems(with:)();

        sub_100006390(v6, &unk_1000BC3F0, &qword_100090B80);
      }
    }
  }
}

double sub_10002FC2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v74 = a1;
  v75 = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v69 = *(v4 - 8);
  v70 = v4;
  __chkstk_darwin(v4);
  v67 = (&v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v68 = type metadata accessor for DispatchQoS();
  v66 = *(v68 - 8);
  __chkstk_darwin(v68);
  v65 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS.QoSClass();
  v63 = *(v7 - 8);
  v64 = v7;
  __chkstk_darwin(v7);
  v62 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v71 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v60 - v17;
  static Logger.UI.getter();
  swift_retain_n();
  v19 = Logger.logObject.getter();
  LODWORD(v61) = static os_log_type_t.debug.getter();
  v20 = os_log_type_enabled(v19, v61);
  v72 = v14;
  v73 = v13;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    aBlock[0] = v60;
    *v21 = 136315906;
    *(v21 + 4) = sub_100037B98(0xD00000000000001FLL, 0x8000000100092720, aBlock);
    *(v21 + 12) = 2080;
    (*(v10 + 16))(v12, v2 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_directoryURL, v9);
    sub_1000422FC(&unk_1000BC418, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    (*(v10 + 8))(v12, v9);
    v25 = sub_100037B98(v22, v24, aBlock);

    *(v21 + 14) = v25;
    *(v21 + 22) = 2080;
    v76 = *(v3 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection);
    v26 = v76;
    sub_10000589C(&qword_1000BC3E8, &qword_100090B78);
    v27 = String.init<A>(describing:)();
    v29 = sub_100037B98(v27, v28, aBlock);

    *(v21 + 24) = v29;
    *(v21 + 32) = 1024;
    LODWORD(v25) = *(v3 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_hasStartedFetchingNode);

    *(v21 + 34) = v25;

    _os_log_impl(&_mh_execute_header, v19, v61, "%s directoryURL: %s nodeCollection: %s hasStartedFetchingNode: %{BOOL}d", v21, 0x26u);
    swift_arrayDestroy();

    v30 = &unk_1000BF000;
    v61 = *(v72 + 8);
    v61(v18, v73);
  }

  else
  {

    v61 = *(v14 + 8);
    v61(v18, v13);
    v30 = &unk_1000BF000;
  }

  v31 = swift_allocObject();
  v32 = v74;
  v33 = v75;
  v31[2] = v3;
  v31[3] = v32;
  v31[4] = v33;
  v34 = v30[31];
  v35 = *(v10 + 16);
  v35(v12, v3 + v34, v9);

  URL.startAccessingSecurityScopedResource()();
  v38 = *(v10 + 8);
  v37 = v10 + 8;
  v36 = v38;
  v38(v12, v9);
  if (*(v3 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_hasStartedFetchingNode))
  {
    v69 = v37;
    v70 = v31;
    v39 = v71;
    static Logger.UI.getter();

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();

    LODWORD(v68) = v41;
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v67 = v40;
      v43 = v42;
      aBlock[0] = swift_slowAlloc();
      *v43 = 136315394;
      *(v43 + 4) = sub_100037B98(0xD00000000000001FLL, 0x8000000100092720, aBlock);
      *(v43 + 12) = 2080;
      v35(v12, v3 + v34, v9);
      sub_1000422FC(&unk_1000BC418, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v44 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v45;
      v36(v12, v9);
      v47 = sub_100037B98(v44, v46, aBlock);

      *(v43 + 14) = v47;
      v48 = v67;
      _os_log_impl(&_mh_execute_header, v67, v68, "%s Already started setting up node observer for URL: %s", v43, 0x16u);
      swift_arrayDestroy();

      v49 = v71;
    }

    else
    {

      v49 = v39;
    }

    v61(v49, v73);
    sub_100030658(v3, v74, v75);
  }

  else
  {
    *(v3 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_hasStartedFetchingNode) = 1;
    sub_10001A2A8(0, &unk_1000BCE20, OS_dispatch_queue_ptr);
    v51 = v62;
    v50 = v63;
    v52 = v64;
    (*(v63 + 104))(v62, enum case for DispatchQoS.QoSClass.userInitiated(_:), v64);
    v53 = static OS_dispatch_queue.global(qos:)();
    (*(v50 + 8))(v51, v52);
    v54 = swift_allocObject();
    v54[2] = v3;
    v54[3] = sub_1000422E4;
    v54[4] = v31;
    aBlock[4] = sub_1000422F0;
    aBlock[5] = v54;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000D508;
    aBlock[3] = &unk_1000AEB20;
    v55 = _Block_copy(aBlock);

    v56 = v65;
    static DispatchQoS.unspecified.getter();
    v76 = _swiftEmptyArrayStorage;
    sub_1000422FC(&qword_1000BC400, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10000589C(&unk_1000BCE30, &unk_100090E70);
    sub_100043240(&qword_1000BC410, &unk_1000BCE30, &unk_100090E70, &protocol conformance descriptor for [A]);
    v57 = v67;
    v58 = v70;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v55);

    (*(v69 + 8))(v57, v58);
    (*(v66 + 8))(v56, v68);
  }

  return result;
}

double sub_100030658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = a2;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  v33 = v14;
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v32 = v10;
    v16 = v15;
    v31 = swift_slowAlloc();
    v36 = v31;
    *v16 = 136315650;
    *(v16 + 4) = sub_100037B98(0xD00000000000001FLL, 0x8000000100092720, &v36);
    *(v16 + 12) = 2080;
    (*(v6 + 16))(v8, a1 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_directoryURL, v5);
    sub_1000422FC(&unk_1000BC418, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v30 = v13;
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = a3;
    v20 = v19;
    (*(v6 + 8))(v8, v5);
    v21 = sub_100037B98(v17, v20, &v36);
    a3 = v18;

    *(v16 + 14) = v21;
    *(v16 + 22) = 2080;
    v35 = *(a1 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection);
    v22 = v35;
    sub_10000589C(&qword_1000BC3E8, &qword_100090B78);
    v23 = String.init<A>(describing:)();
    v25 = sub_100037B98(v23, v24, &v36);

    *(v16 + 24) = v25;
    v26 = v30;
    _os_log_impl(&_mh_execute_header, v30, v33, "%s Node observer for URL: %s completion: %s", v16, 0x20u);
    swift_arrayDestroy();

    (*(v32 + 8))(v12, v9);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  v27 = swift_allocObject();
  *(v27 + 16) = v34;
  *(v27 + 24) = a3;

  DOCRunInMainThread(_:)();

  return result;
}

void sub_100030A3C(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v61 = a2;
  v5 = type metadata accessor for Logger();
  v59 = *(v5 - 8);
  v60 = v5;
  __chkstk_darwin(v5);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v51 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v12 + 16);
  v56 = OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_directoryURL;
  v57 = v16;
  (v16)(v15, a1 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_directoryURL, v11, v13);
  URL._bridgeToObjectiveC()(v17);
  v19 = v18;
  v58 = *(v12 + 8);
  v58(v15, v11);
  v20 = [objc_opt_self() fiNodeFromURL:v19];

  if (v20)
  {
    v21 = [v20 cachedDomain];
    if (v21)
    {

      v22 = swift_allocObject();
      v22[2] = v20;
      v22[3] = a1;
      v22[4] = v61;
      v22[5] = a3;
      v23 = v20;

      DOCRunInMainThread(_:)();
    }

    else
    {
      static Logger.UI.getter();
      v23 = v20;

      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v33, v34))
      {
        v52 = v34;
        v53 = v33;
        v35 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v63 = v51;
        *v35 = 136315650;
        *(v35 + 4) = sub_100037B98(0xD00000000000001FLL, 0x8000000100092720, &v63);
        *(v35 + 12) = 2080;
        v36 = [v23 respondsToSelector:"debugDescription"];
        v54 = v23;
        if (v36)
        {
          v37 = [v23 debugDescription];
          v55 = a3;
          v38 = v37;
          v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v41 = v40;
        }

        else
        {
          v39 = 0;
          v41 = 0;
        }

        v62[0] = v39;
        v62[1] = v41;
        sub_10000589C(&qword_1000BBCF0, "0T");
        v43 = String.init<A>(describing:)();
        v45 = sub_100037B98(v43, v44, &v63);

        *(v35 + 14) = v45;
        *(v35 + 22) = 2080;
        v57(v15, a1 + v56, v11);
        sub_1000422FC(&unk_1000BC418, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v46 = dispatch thunk of CustomStringConvertible.description.getter();
        v48 = v47;
        v58(v15, v11);
        v49 = sub_100037B98(v46, v48, &v63);

        *(v35 + 24) = v49;
        v50 = v53;
        _os_log_impl(&_mh_execute_header, v53, v52, "%s Couldn't set up node observer for node: %s cachedDomain was nil directoryURL: %s ", v35, 0x20u);
        swift_arrayDestroy();

        v42 = (*(v59 + 8))(v10, v60);
        v23 = v54;
      }

      else
      {

        v42 = (*(v59 + 8))(v10, v60);
      }

      *(a1 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_hasStartedFetchingNode) = 0;
      v61(v42);
    }
  }

  else
  {
    static Logger.UI.getter();

    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v55 = a3;
      v27 = v26;
      v54 = swift_slowAlloc();
      v62[0] = v54;
      *v27 = 136315394;
      *(v27 + 4) = sub_100037B98(0xD00000000000001FLL, 0x8000000100092720, v62);
      *(v27 + 12) = 2080;
      v57(v15, a1 + v56, v11);
      sub_1000422FC(&unk_1000BC418, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v30 = v29;
      v58(v15, v11);
      v31 = sub_100037B98(v28, v30, v62);

      *(v27 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v24, v25, "%s Couldn't create FINode for URL: %s", v27, 0x16u);
      swift_arrayDestroy();
    }

    v32 = (*(v59 + 8))(v7, v60);
    *(a1 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_hasStartedFetchingNode) = 0;
    v61(v32);
  }
}

uint64_t sub_100031138(void *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v46 = type metadata accessor for URL();
  v8 = *(v46 - 8);
  __chkstk_darwin(v46);
  v44 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  swift_unknownObjectRetain();

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  swift_unknownObjectRelease();
  v45 = v15;
  if (os_log_type_enabled(v14, v15))
  {
    v39 = v14;
    v40 = v11;
    v41 = v10;
    v42 = a4;
    v43 = a3;
    v16 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v16 = 136315906;
    *(v16 + 4) = sub_100037B98(0xD00000000000001FLL, 0x8000000100092720, &v49);
    *(v16 + 12) = 2080;
    if ([a1 respondsToSelector:"debugDescription"])
    {
      v17 = [a1 debugDescription];
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;
    }

    else
    {
      v18 = 0;
      v20 = 0;
    }

    v47 = v18;
    v48 = v20;
    sub_10000589C(&qword_1000BBCF0, "0T");
    v21 = String.init<A>(describing:)();
    v23 = sub_100037B98(v21, v22, &v49);

    *(v16 + 14) = v23;
    *(v16 + 22) = 2080;
    v47 = [a1 cachedDomain];
    sub_10000589C(&qword_1000BC430, &qword_100090B88);
    v24 = String.init<A>(describing:)();
    v26 = sub_100037B98(v24, v25, &v49);

    *(v16 + 24) = v26;
    *(v16 + 32) = 2080;
    v27 = v44;
    v28 = v46;
    (*(v8 + 16))(v44, a2 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_directoryURL, v46);
    sub_1000422FC(&unk_1000BC418, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v30;
    (*(v8 + 8))(v27, v28);
    v32 = sub_100037B98(v29, v31, &v49);

    *(v16 + 34) = v32;
    v33 = v39;
    _os_log_impl(&_mh_execute_header, v39, v45, "%s Finished creating FINode. Now setting up node observer for node: %s cachedDomain: %s directoryURL: %s", v16, 0x2Au);
    swift_arrayDestroy();

    (*(v40 + 8))(v13, v41);
    a3 = v43;
  }

  else
  {

    (*(v11 + 8))(v13, v10);
  }

  type metadata accessor for DOCNodeCollection();
  swift_unknownObjectRetain();
  LOBYTE(v47) = 1;
  v34 = DOCNodeCollection.__allocating_init(for:configuration:source:extraOptions:)();
  v35 = *(a2 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection);
  *(a2 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection) = v34;
  v36 = v34;

  sub_1000422FC(&qword_1000BC428, type metadata accessor for DockFolderDataSourceObserver, &unk_100090A20);
  swift_unknownObjectRetain();
  dispatch thunk of DOCNodeCollection.delegate.setter();

  return a3();
}

void sub_100031624()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v8 = 136315394;
    *(v8 + 4) = sub_100037B98(0xD000000000000010, 0x8000000100092700, &v18);
    *(v8 + 12) = 2080;
    v17 = *(v1 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection);
    v9 = v17;
    sub_10000589C(&qword_1000BC3E8, &qword_100090B78);
    v10 = String.init<A>(describing:)();
    v12 = sub_100037B98(v10, v11, &v18);

    *(v8 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s nodeCollection: %s.", v8, 0x16u);
    swift_arrayDestroy();
  }

  (*(v3 + 8))(v5, v2);
  v13 = OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection;
  v14 = *(v1 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection);
  if (v14 || (*(v1 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_hasPendingStartObservingRequest) = 1, v15 = swift_allocObject(), swift_weakInit(), , sub_10002FC2C(sub_1000422D8, v15), , (v14 = *(v1 + v13)) != 0))
  {
    v16 = v14;
    dispatch thunk of DOCNodeCollection.startObservationIfNeeded()();
  }
}

double sub_1000318D0(uint64_t a1)
{
  v1 = sub_10000589C(&unk_1000BC3F0, &qword_100090B80);
  __chkstk_darwin(v1 - 8);
  v3 = &v27 - v2;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    static Logger.UI.getter();

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v27 = v3;
      v14 = v13;
      v29[0] = swift_slowAlloc();
      *v14 = 136315394;
      *(v14 + 4) = sub_100037B98(0xD000000000000010, 0x8000000100092700, v29);
      *(v14 + 12) = 2080;
      v28 = *(v10 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection);
      v15 = v28;
      sub_10000589C(&qword_1000BC3E8, &qword_100090B78);
      v16 = String.init<A>(describing:)();
      v18 = sub_100037B98(v16, v17, v29);

      *(v14 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v11, v12, "%s finished setting up node observer: %s, starting observation", v14, 0x16u);
      swift_arrayDestroy();

      v3 = v27;
    }

    (*(v5 + 8))(v7, v4);
    v19 = OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection;
    v20 = *(v10 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection);
    if (v20 && (v21 = v20, dispatch thunk of DOCNodeCollection.startObservationIfNeeded()(), v21, (v22 = *(v10 + v19)) != 0))
    {
      v23 = OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_sortDescriptor;
      swift_beginAccess();
      v24 = type metadata accessor for DOCItemSortDescriptor();
      v25 = *(v24 - 8);
      (*(v25 + 16))(v3, v10 + v23, v24);
      (*(v25 + 56))(v3, 0, 1, v24);
      v26 = v22;
      dispatch thunk of DOCNodeCollection.reorderItems(with:)();

      sub_100006390(v3, &unk_1000BC3F0, &qword_100090B80);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_100031C5C()
{
  v1 = OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_directoryURL;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_sortDescriptor;
  v4 = type metadata accessor for DOCItemSortDescriptor();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_1000414DC(*(v0 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_changeHandler), *(v0 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_changeHandler + 8));
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v5, v6);
}

uint64_t sub_100031D84(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100031DBC(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for DOCItemSortDescriptor();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DockFolderDisplayMode(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DockFolderDisplayMode(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for DockFolderDisplayState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DockFolderDisplayState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_10003216C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_100032180(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[25])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1000321C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_100032220()
{
  result = qword_1000BC2F8;
  if (!qword_1000BC2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BC2F8);
  }

  return result;
}

unint64_t sub_100032278()
{
  result = qword_1000BC300;
  if (!qword_1000BC300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BC300);
  }

  return result;
}

double sub_1000322CC(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  p_type = &stru_1000B6FF0.type;
  if (os_log_type_enabled(v9, v10))
  {
    v22 = v4;
    v23 = v1;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v24 = v14;
    *v12 = 136315906;
    *(v12 + 4) = sub_100037B98(0xD000000000000028, 0x80000001000925F0, &v24);
    *(v12 + 12) = 2112;
    *(v12 + 14) = v8;
    *v13 = v8;
    *(v12 + 22) = 1024;
    *(v12 + 24) = [v8 isGathering];
    *(v12 + 28) = 2048;
    v15 = dispatch thunk of DOCNodeCollection.nodes.getter();
    if (v15 >> 62)
    {
      v16 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v12 + 30) = v16;

    _os_log_impl(&_mh_execute_header, v9, v10, "%s collection: %@ isGathering: %{BOOL}d count: %ld", v12, 0x26u);
    sub_100006390(v13, &qword_1000BC328, &qword_100090AD0);

    sub_1000064E0(v14);

    (*(v5 + 8))(v7, v22);
    v2 = v23;
    p_type = (&stru_1000B6FF0 + 16);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  if (([v8 p_type[431]] & 1) == 0)
  {
    v18 = *(v2 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_changeHandler);
    if (v18)
    {
      v19 = *(v2 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_changeHandler + 8);

      v18(v20);
      return sub_1000414DC(v18, v19);
    }
  }

  return result;
}

double sub_1000325B8(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v10 = a1;
  swift_unknownObjectRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v11, v12))
  {
    v27 = v7;
    v28 = v6;
    v29 = v2;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v31 = v26;
    *v13 = 136316162;
    *(v13 + 4) = sub_100037B98(0xD000000000000028, 0x8000000100092590, &v31);
    *(v13 + 12) = 2112;
    *(v13 + 14) = v10;
    *v14 = v10;
    *(v13 + 22) = 2048;
    v15 = v10;
    v16 = dispatch thunk of DOCNodeCollection.nodes.getter();
    if (v16 >> 62)
    {
      v17 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v13 + 24) = v17;

    *(v13 + 32) = 1024;
    v18 = [v15 isGathering];

    *(v13 + 34) = v18;
    *(v13 + 38) = 2080;
    v30 = a2;
    swift_unknownObjectRetain();
    sub_10000589C(&qword_1000BBDA8, &qword_100090AC0);
    v19 = String.init<A>(describing:)();
    v21 = sub_100037B98(v19, v20, &v31);

    *(v13 + 40) = v21;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s collection: %@ count: %ld isGathering: %{BOOL}d observedNode: %s", v13, 0x30u);
    sub_100006390(v14, &qword_1000BC328, &qword_100090AD0);

    swift_arrayDestroy();

    (*(v27 + 8))(v9, v28);
    v3 = v29;
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  if (([v10 isGathering] & 1) == 0)
  {
    v23 = *(v3 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_changeHandler);
    if (v23)
    {
      v24 = *(v3 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_changeHandler + 8);

      v23(v25);
      return sub_1000414DC(v23, v24);
    }
  }

  return result;
}

void sub_10003293C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  p_type = &stru_1000B6FF0.type;
  if (os_log_type_enabled(v9, v10))
  {
    v23 = v4;
    v24 = v1;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v25 = v22;
    *v12 = 136316162;
    *(v12 + 4) = sub_100037B98(0xD000000000000024, 0x8000000100092560, &v25);
    *(v12 + 12) = 2112;
    *(v12 + 14) = v8;
    *v13 = v8;
    *(v12 + 22) = 2048;
    v14 = v8;
    v15 = dispatch thunk of DOCNodeCollection.nodes.getter();
    if (v15 >> 62)
    {
      v16 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v12 + 24) = v16;

    *(v12 + 32) = 1024;
    v17 = [v14 isGathering];

    *(v12 + 34) = v17;
    *(v12 + 38) = 2048;
    Current = CFAbsoluteTimeGetCurrent();
    if (byte_1000BD758)
    {
      __break(1u);
      return;
    }

    *(v12 + 40) = Current - *&qword_1000BD750;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s collection: %@ count: %ld isGathering: %{BOOL}d took to get here: %f", v12, 0x30u);
    sub_100006390(v13, &qword_1000BC328, &qword_100090AD0);

    sub_1000064E0(v22);

    (*(v5 + 8))(v7, v23);
    v2 = v24;
    p_type = (&stru_1000B6FF0 + 16);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  if (([v8 p_type[431]] & 1) == 0)
  {
    v19 = *(v2 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_changeHandler);
    if (v19)
    {
      v20 = *(v2 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_changeHandler + 8);

      v19(v21);
      sub_1000414DC(v19, v20);
    }
  }
}

double sub_100032C74(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v11 = a1;

  v12 = Logger.logObject.getter();
  LODWORD(a1) = static os_log_type_t.debug.getter();

  v41 = a1;
  v13 = os_log_type_enabled(v12, a1);
  p_type = &stru_1000B6FF0.type;
  if (v13)
  {
    v15 = swift_slowAlloc();
    v40 = v5;
    v16 = v15;
    v17 = swift_slowAlloc();
    v36 = v17;
    v39 = swift_slowAlloc();
    v42 = v39;
    *v16 = 136316418;
    *(v16 + 4) = sub_100037B98(0xD000000000000043, 0x80000001000924E0, &v42);
    *(v16 + 12) = 2112;
    *(v16 + 14) = v11;
    *v17 = v11;
    *(v16 + 22) = 2080;
    v18 = v11;
    v38 = v8;
    v19 = v18;
    sub_10000589C(&qword_1000BBDA8, &qword_100090AC0);
    v20 = Array.description.getter();
    v22 = sub_100037B98(v20, v21, &v42);
    v37 = v7;
    v23 = v22;

    *(v16 + 24) = v23;
    *(v16 + 32) = 1024;
    v24 = [v19 isGathering];

    *(v16 + 34) = v24;
    *(v16 + 38) = 2080;
    sub_10001A2A8(0, &qword_1000BC318, FPItemID_ptr);
    sub_1000414EC();
    v25 = Dictionary.description.getter();
    v27 = sub_100037B98(v25, v26, &v42);

    *(v16 + 40) = v27;
    *(v16 + 48) = 2080;
    v28 = Array.description.getter();
    v30 = sub_100037B98(v28, v29, &v42);
    p_type = (&stru_1000B6FF0 + 16);

    *(v16 + 50) = v30;
    _os_log_impl(&_mh_execute_header, v12, v41, "%s collection: %@ nodes: %s isGathering: %{BOOL}d nodesByOldItemID: %s deleteNodesWith: %s", v16, 0x3Au);
    sub_100006390(v36, &qword_1000BC328, &qword_100090AD0);

    swift_arrayDestroy();

    v5 = v40;

    (*(v38 + 8))(v10, v37);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  if (([v11 p_type[431]] & 1) == 0)
  {
    v32 = *(v5 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_changeHandler);
    if (v32)
    {
      v33 = *(v5 + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_changeHandler + 8);

      v32(v34);
      return sub_1000414DC(v32, v33);
    }
  }

  return result;
}

uint64_t sub_100033074(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  swift_unknownObjectRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v22 = v6;
    v13 = v12;
    v24 = swift_slowAlloc();
    *v13 = 136315650;
    *(v13 + 4) = sub_100037B98(0xD00000000000003DLL, 0x8000000100092980, &v24);
    *(v13 + 12) = 2080;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = sub_100037B98(v14, v15, &v24);

    *(v13 + 14) = v16;
    *(v13 + 22) = 2080;
    v23 = a3;
    swift_unknownObjectRetain();
    sub_10000589C(&qword_1000BBDA8, &qword_100090AC0);
    v17 = String.init<A>(describing:)();
    v19 = sub_100037B98(v17, v18, &v24);

    *(v13 + 24) = v19;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s reveal in files action: %s on node: %s", v13, 0x20u);
    swift_arrayDestroy();

    (*(v7 + 8))(v9, v22);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000499C0(a4, a3);
    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_100033304(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v57 = a3;
  v6 = type metadata accessor for DOCItemCollectionContext();
  v49 = *(v6 - 8);
  v50 = v6;
  __chkstk_darwin(v6);
  v51 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ImageOptions();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v48 - v13;
  v15 = type metadata accessor for Logger();
  v54 = *(v15 - 8);
  v55 = v15;
  __chkstk_darwin(v15);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v18 = *(v9 + 16);
  v52 = a2;
  v18(v14, a2, v8);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  v56 = a1;

  if (!os_log_type_enabled(v19, v20))
  {

    (*(v9 + 8))(v14, v8);
    (*(v54 + 8))(v17, v55);
    v30 = v56;
    v31 = v57;
    if (v57)
    {
      goto LABEL_3;
    }

    return _swiftEmptyArrayStorage;
  }

  v21 = swift_slowAlloc();
  v48 = swift_slowAlloc();
  v58[0] = v48;
  *v21 = 136315650;
  *(v21 + 4) = sub_100037B98(0xD000000000000031, 0x8000000100092690, v58);
  *(v21 + 12) = 2080;
  v18(v11, v14, v8);
  v22 = String.init<A>(describing:)();
  v24 = v23;
  (*(v9 + 8))(v14, v8);
  v25 = sub_100037B98(v22, v24, v58);

  *(v21 + 14) = v25;
  *(v21 + 22) = 2080;
  sub_10000589C(&qword_1000BBDA8, &qword_100090AC0);
  v26 = v56;
  v27 = Array.description.getter();
  v29 = sub_100037B98(v27, v28, v58);

  *(v21 + 24) = v29;
  _os_log_impl(&_mh_execute_header, v19, v20, "%s self: %s nodes: %s", v21, 0x20u);
  swift_arrayDestroy();

  (*(v54 + 8))(v17, v55);
  v30 = v26;
  v31 = v57;
  if (!v57)
  {
    return _swiftEmptyArrayStorage;
  }

LABEL_3:
  v32 = objc_opt_self();
  v33 = v31;
  v34 = [v32 mainScreen];
  [v34 bounds];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;

  v59.origin.x = v36;
  v59.origin.y = v38;
  v59.size.width = v40;
  v59.size.height = v42;
  v60 = CGRectStandardize(v59);
  (*(v49 + 104))(v51, enum case for DOCItemCollectionContext.dockFolderApp(_:), v50, v60.origin, *&v60.origin.y);
  type metadata accessor for DOCItemCollectionLayoutTraits();
  swift_allocObject();
  v43 = v33;
  v44 = DOCItemCollectionLayoutTraits.init(context:traitCollection:containerViewSize:)();
  __chkstk_darwin(v44);
  v45 = v53;
  *(&v48 - 2) = v52;
  *(&v48 - 1) = v45;
  v46 = sub_10001A46C(sub_100042280, (&v48 - 4), v30);

  return v46;
}

void sub_100033860(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a4@<X8>)
{
  v7 = type metadata accessor for Logger();
  v46 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v40[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for ImageOptions();
  v11 = __chkstk_darwin(v10);
  v13 = *a1;
  (*(v14 + 16))(&v40[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)], a2, v11);
  v15 = objc_allocWithZone(type metadata accessor for NodeThumbnail());
  swift_unknownObjectRetain();

  v16 = NodeThumbnail.init(node:imageOptions:imageCache:)();
  NodeThumbnail.scheduleUpdateIfNeeded()();
  static Logger.UI.getter();
  swift_unknownObjectRetain();
  v17 = v16;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v43 = v18;
    v21 = v20;
    v44 = swift_slowAlloc();
    v48 = v44;
    *v21 = 136315906;
    *(v21 + 4) = sub_100037B98(0xD000000000000031, 0x8000000100092690, &v48);
    *(v21 + 12) = 2080;
    v22 = v17;
    v41 = v19;
    v23 = v22;
    v24 = [v22 description];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v17;
    v26 = v25;
    v42 = v7;
    v27 = a4;
    v29 = v28;

    v30 = sub_100037B98(v26, v29, &v48);
    a4 = v27;

    *(v21 + 14) = v30;
    *(v21 + 22) = 2080;
    Correct = NodeThumbnail.hasFinishedTryingToFetchCorrectThumbnail.getter();
    v32 = (Correct & 1) == 0;
    if (Correct)
    {
      v33 = 1702195828;
    }

    else
    {
      v33 = 0x65736C6166;
    }

    if (v32)
    {
      v34 = 0xE500000000000000;
    }

    else
    {
      v34 = 0xE400000000000000;
    }

    v35 = sub_100037B98(v33, v34, &v48);

    *(v21 + 24) = v35;
    *(v21 + 32) = 2080;
    v47 = v13;
    swift_unknownObjectRetain();
    sub_10000589C(&qword_1000BBDA8, &qword_100090AC0);
    v36 = String.init<A>(describing:)();
    v38 = sub_100037B98(v36, v37, &v48);

    *(v21 + 34) = v38;
    v17 = v45;
    v39 = v43;
    _os_log_impl(&_mh_execute_header, v43, v41, "%s thumbnail: %s hasFinishedTryingToFetchCorrectThumbnail: %s node: %s", v21, 0x2Au);
    swift_arrayDestroy();

    (*(v46 + 8))(v9, v42);
  }

  else
  {

    (*(v46 + 8))(v9, v7);
  }

  *a4 = v13;
  a4[1] = v17;
  swift_unknownObjectRetain();
}

void sub_100033C70(uint64_t a1, uint64_t a2)
{
  v132 = a1;
  v133 = a2;
  v125 = type metadata accessor for FolderAssetType();
  v123 = *(v125 - 8);
  __chkstk_darwin(v125);
  v124 = &v117 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for FolderIconFetcher();
  v4 = *(v129 - 8);
  __chkstk_darwin(v129);
  v127 = &v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = v5;
  __chkstk_darwin(v6);
  v128 = &v117 - v7;
  v8 = sub_10000589C(&qword_1000BCE60, &unk_100090AE0);
  __chkstk_darwin(v8 - 8);
  v135 = &v117 - v9;
  v10 = sub_10000589C(&unk_1000BC340, &unk_100091350);
  __chkstk_darwin(v10 - 8);
  v117 = &v117 - v11;
  v122 = type metadata accessor for ImageOptions();
  v120 = *(v122 - 8);
  __chkstk_darwin(v122);
  v119 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = v12;
  __chkstk_darwin(v13);
  v121 = &v117 - v14;
  v15 = type metadata accessor for Logger();
  v130 = *(v15 - 1);
  v131 = v15;
  __chkstk_darwin(v15);
  v17 = &v117 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v117 - v19;
  __chkstk_darwin(v21);
  v23 = &v117 - v22;
  v24 = &v2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration];
  v26 = *&v2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration + 8];
  v25 = *&v2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration + 16];
  v134 = v2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v28 = Strong;
    v29 = [Strong traitCollection];

    v30 = &selRef_displayScale;
  }

  else
  {
    v29 = [objc_opt_self() mainScreen];
    v30 = &selRef_scale;
  }

  [v29 *v30];
  v32 = v31;

  v33 = v134;
  v34 = swift_unknownObjectWeakLoadStrong();
  if (v34)
  {
    v35 = v34;
    v136 = [v34 traitCollection];
  }

  else
  {
    v136 = 0;
  }

  v36 = *&v33[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dataSource];
  if (v36)
  {
    v37 = *(*(v36 + OBJC_IVAR____TtC21DockFolderViewService20DockFolderDataSource_dataSourceObserver) + OBJC_IVAR____TtC21DockFolderViewService28DockFolderDataSourceObserver_nodeCollection);
    if (v37)
    {

      v38 = v37;

      v39 = dispatch thunk of DOCNodeCollection.observedNode.getter();

      if (v39)
      {
        v129 = swift_allocObject();
        v40 = objc_opt_self();
        v41 = [v40 sharedManager];
        v42 = [v41 isFilesAppLocked];

        v128 = v39;
        if ((v42 & 1) != 0 || (v43 = [v40 sharedManager], v44 = objc_msgSend(v43, "nodeRequiresAuthentication_Sync:", v39), v43, v44))
        {
          static Logger.UI.getter();
          v45 = v33;
          swift_unknownObjectRetain();
          v46 = Logger.logObject.getter();
          v47 = static os_log_type_t.error.getter();
          swift_unknownObjectRelease();

          if (os_log_type_enabled(v46, v47))
          {
            v48 = swift_slowAlloc();
            v138[0] = swift_slowAlloc();
            *v48 = 136315650;
            *(v48 + 4) = sub_100037B98(0xD00000000000003ALL, 0x8000000100092650, v138);
            *(v48 + 12) = 2080;
            v49 = v45;
            v50 = [v49 description];
            v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v53 = v52;

            v39 = v128;
            v54 = sub_100037B98(v51, v53, v138);

            *(v48 + 14) = v54;
            *(v48 + 22) = 2080;
            v137 = v39;
            swift_unknownObjectRetain();
            sub_10000589C(&qword_1000BBDA8, &qword_100090AC0);
            v55 = String.init<A>(describing:)();
            v57 = sub_100037B98(v55, v56, v138);

            *(v48 + 24) = v57;
            _os_log_impl(&_mh_execute_header, v46, v47, "%s self: %s Files app is locked or node: %s requires authentication. Fetching thumbnail for folder icon instead", v48, 0x20u);
            swift_arrayDestroy();
          }

          v59 = v130;
          v58 = v131;
          (*(v130 + 8))(v23, v131);
          v60 = v129;
          sub_10000589C(&unk_1000BC6D0, &unk_10008FB20);
          v61 = swift_allocObject();
          *(v61 + 16) = xmmword_10008F940;
          *(v61 + 32) = v39;
          *(v60 + 16) = v61;
          swift_unknownObjectRetain();
        }

        else
        {
          v84 = sub_1000268A4(3uLL, *v24);
          v59 = v130;
          if (!v84)
          {
            sub_10000589C(&unk_1000BC6D0, &unk_10008FB20);
            v85 = swift_allocObject();
            *(v85 + 16) = xmmword_10008F940;
            *(v85 + 32) = v39;
            swift_unknownObjectRetain();
            v84 = v85;
          }

          v58 = v131;
          v60 = v129;
          *(v129 + 16) = v84;
        }

        static Logger.UI.getter();

        v86 = Logger.logObject.getter();
        v87 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          v138[0] = swift_slowAlloc();
          *v88 = 136315394;
          *(v88 + 4) = sub_100037B98(0xD00000000000003ALL, 0x8000000100092650, v138);
          *(v88 + 12) = 2080;
          swift_beginAccess();

          sub_10000589C(&qword_1000BBDA8, &qword_100090AC0);
          v89 = Array.description.getter();
          v91 = v90;

          v92 = sub_100037B98(v89, v91, v138);

          *(v88 + 14) = v92;
          v60 = v129;
          _os_log_impl(&_mh_execute_header, v86, v87, "%s creating icon for nodes: %s", v88, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        (*(v59 + 8))(v20, v58);
        v93 = v136;
        v94 = v117;
        swift_beginAccess();
        v95 = *(v60 + 16);
        if (v95 >> 62)
        {
          if (_CocoaArrayWrapper.endIndex.getter())
          {
LABEL_26:
            v136 = v93;
            if (v93)
            {
LABEL_27:
              [v93 displayScale];
              v96 = v93;
              UITraitCollection._ifColorForIconFolderTintComponents.getter();
              v131 = v96;

LABEL_33:
              v99 = v121;
              ImageOptions.init(size:scale:isFolded:folderTintComponents:)();
              v100 = type metadata accessor for TaskPriority();
              (*(*(v100 - 8) + 56))(v135, 1, 1, v100);
              v101 = v120;
              v102 = v119;
              (*(v120 + 16))(v119, v99, v122);
              v103 = (*(v101 + 80) + 48) & ~*(v101 + 80);
              v104 = (v118 + v103 + 7) & 0xFFFFFFFFFFFFFFF8;
              v105 = (v104 + 15) & 0xFFFFFFFFFFFFFFF8;
              v106 = (v105 + 23) & 0xFFFFFFFFFFFFFFF8;
              v107 = (v106 + 15) & 0xFFFFFFFFFFFFFFF8;
              v108 = swift_allocObject();
              *(v108 + 2) = 0;
              *(v108 + 3) = 0;
              v109 = v134;
              *(v108 + 4) = v129;
              *(v108 + 5) = v109;
              v110 = v102;
              v111 = v122;
              (*(v101 + 32))(&v108[v103], v110, v122);
              *&v108[v104] = v136;
              v112 = &v108[v105];
              *v112 = v26;
              *(v112 + 1) = v25;
              *&v108[v106] = v32;
              *&v108[v107] = v128;
              v113 = &v108[(v107 + 15) & 0xFFFFFFFFFFFFFFF8];
              v114 = v133;
              *v113 = v132;
              v113[1] = v114;
              v115 = v109;
              swift_unknownObjectRetain();

              v116 = v131;

              sub_100064E70(0, 0, v135, &unk_100090B10, v108);

              swift_unknownObjectRelease();

              (*(v101 + 8))(v121, v111);

              return;
            }

LABEL_32:
            v97 = [objc_opt_self() mainScreen];
            [v97 scale];

            v98 = type metadata accessor for ImageOptions.ImageOptionsFolderColorComponents();
            (*(*(v98 - 8) + 56))(v94, 1, 1, v98);
            v131 = 0;
            goto LABEL_33;
          }
        }

        else if (*((v95 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        swift_beginAccess();
        swift_unknownObjectRetain();
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((*(v60 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v60 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
        v136 = v93;
        if (v93)
        {
          goto LABEL_27;
        }

        goto LABEL_32;
      }
    }
  }

  static Logger.UI.getter();
  v62 = v33;
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v138[0] = swift_slowAlloc();
    *v65 = 136315394;
    *(v65 + 4) = sub_100037B98(0xD00000000000003ALL, 0x8000000100092650, v138);
    *(v65 + 12) = 2080;
    v66 = v62;
    v67 = [v66 description];
    v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v70 = v69;

    v71 = sub_100037B98(v68, v70, v138);

    *(v65 + 14) = v71;
    _os_log_impl(&_mh_execute_header, v63, v64, "%s self: %s can not create icon because observedNode is nil. Falling back to a generic folder icon", v65, 0x16u);
    swift_arrayDestroy();
  }

  (*(v130 + 8))(v17, v131);
  v72 = v136;
  (*(v123 + 104))(v124, enum case for FolderAssetType.complete(_:), v125);
  v73 = v72;
  v74 = v128;
  FolderIconFetcher.init(node:assetType:size:scale:traitCollection:)();
  v75 = type metadata accessor for TaskPriority();
  v76 = v135;
  (*(*(v75 - 8) + 56))(v135, 1, 1, v75);
  v77 = v127;
  v78 = v129;
  (*(v4 + 16))(v127, v74, v129);
  v79 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v80 = (v126 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = swift_allocObject();
  *(v81 + 16) = 0;
  *(v81 + 24) = 0;
  (*(v4 + 32))(v81 + v79, v77, v78);
  v82 = (v81 + v80);
  v83 = v133;
  *v82 = v132;
  v82[1] = v83;

  sub_100064E70(0, 0, v76, &unk_100090AF8, v81);

  (*(v4 + 8))(v74, v78);
}

uint64_t sub_100034C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = swift_task_alloc();
  v6[4] = v7;
  *v7 = v6;
  v7[1] = sub_100034CE8;

  return FolderIconFetcher.fetchImageWithOverlays()();
}

uint64_t sub_100034CE8(uint64_t a1)
{
  *(*v2 + 40) = a1;

  if (v1)
  {

    v3 = sub_100034ED4;
  }

  else
  {
    v3 = sub_100034E04;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100034E04()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = UIImagePNGRepresentation(v1);
    if (v2)
    {
      v3 = v2;
      v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0xF000000000000000;
    }

    v7 = *(v0 + 40);
  }

  else
  {
    v4 = 0;
    v7 = 0;
    v6 = 0xF000000000000000;
  }

  (*(v0 + 16))(v4, v6);
  sub_100041D6C(v4, v6);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100034ED4()
{
  (*(v0 + 16))(0, 0xF000000000000000);
  v1.n128_f64[0] = sub_100041D6C(0, 0xF000000000000000);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100034F4C(double a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v11 + 112) = v15;
  *(v11 + 120) = v16;
  *(v11 + 104) = a11;
  *(v11 + 88) = a2;
  *(v11 + 96) = a3;
  *(v11 + 80) = a1;
  *(v11 + 64) = a9;
  *(v11 + 72) = a10;
  *(v11 + 48) = a7;
  *(v11 + 56) = a8;
  v12 = type metadata accessor for Logger();
  *(v11 + 128) = v12;
  *(v11 + 136) = *(v12 - 8);
  *(v11 + 144) = swift_task_alloc();

  return _swift_task_switch(sub_100035028, 0, 0);
}

uint64_t sub_100035028()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 48) + 16;
  v3 = sub_10000589C(&qword_1000BBD90, &qword_100090580);
  v4 = sub_10000589C(&qword_1000BC3B8, &qword_100090B18);
  v5 = swift_task_alloc();
  *(v0 + 152) = v5;
  v6 = *(v0 + 56);
  *(v5 + 16) = v2;
  *(v5 + 24) = v6;
  *(v5 + 40) = v1;
  v7 = swift_task_alloc();
  *(v0 + 160) = v7;
  *v7 = v0;
  v7[1] = sub_100035160;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 32, v3, v4, 0, 0, &unk_100090B28, v5, v3);
}

uint64_t sub_100035160()
{

  return _swift_task_switch(sub_100035278, 0, 0);
}

uint64_t sub_100035278()
{
  v38 = v0;
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);
  v4 = sub_10000C2FC(*(v0 + 32));

  v5 = sub_10000C444(v4);
  sub_100041B24(v5, v3, v2, v1);
  v7 = v6;

  if (v7 && (v8 = UIImagePNGRepresentation(v7)) != 0)
  {
    v9 = v8;
    v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0xF000000000000000;
  }

  static Logger.UI.getter();
  sub_100041D04(v10, v12);

  swift_unknownObjectRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  sub_100041D6C(v10, v12);

  swift_unknownObjectRelease();
  v15 = os_log_type_enabled(v13, v14);
  v17 = *(v0 + 136);
  v16 = *(v0 + 144);
  v18 = *(v0 + 128);
  if (v15)
  {
    v33 = *(v0 + 104);
    v36 = v14;
    v19 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v19 = 136315906;
    *(v19 + 4) = sub_100037B98(0xD00000000000003ALL, 0x8000000100092650, &v37);
    *(v19 + 12) = 2080;
    *(v0 + 16) = v10;
    *(v0 + 24) = v12;
    sub_100041D04(v10, v12);
    sub_10000589C(&unk_1000BC3C0, &unk_100090B30);
    v20 = String.init<A>(describing:)();
    v35 = v16;
    v34 = v18;
    v22 = v7;
    v23 = sub_100037B98(v20, v21, &v37);

    *(v19 + 14) = v23;
    *(v19 + 22) = 2080;
    sub_10000589C(&qword_1000BBD88, &qword_100090578);
    v24 = Array.description.getter();
    v26 = v25;

    v27 = sub_100037B98(v24, v26, &v37);
    v7 = v22;

    *(v19 + 24) = v27;
    *(v19 + 32) = 2080;
    *(v0 + 40) = v33;
    swift_unknownObjectRetain();
    sub_10000589C(&qword_1000BBDA8, &qword_100090AC0);
    v28 = String.init<A>(describing:)();
    v30 = sub_100037B98(v28, v29, &v37);

    *(v19 + 34) = v30;
    _os_log_impl(&_mh_execute_header, v13, v36, "%s returning iconData: %s composed of: %s for observedNode: %s", v19, 0x2Au);
    swift_arrayDestroy();

    (*(v17 + 8))(v35, v34);
  }

  else
  {

    (*(v17 + 8))(v16, v18);
  }

  (*(v0 + 112))(v10, v12);
  sub_100041D6C(v10, v12);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_100035620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[17] = a3;
  v6[18] = a4;
  v6[15] = a1;
  v6[16] = a2;
  v7 = type metadata accessor for Logger();
  v6[21] = v7;
  v6[22] = *(v7 - 8);
  v6[23] = swift_task_alloc();
  sub_10000589C(&qword_1000BCE60, &unk_100090AE0);
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v8 = sub_10000589C(&qword_1000BC3D0, &qword_100090B40);
  v6[26] = v8;
  v6[27] = *(v8 - 8);
  v6[28] = swift_task_alloc();

  return _swift_task_switch(sub_100035794, 0, 0);
}

uint64_t sub_100035794(__n128 a1)
{
  v47 = v1;
  v2 = *(v1 + 136);
  v3 = swift_beginAccess();
  v7 = *v2;
  if (*v2 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
    v8 = v3;
    if (!v3)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
LABEL_25:
      sub_10000589C(&qword_1000BBD90, &qword_100090580);
      TaskGroup.makeAsyncIterator()();
      *(v1 + 232) = _swiftEmptyArrayStorage;
      v39 = swift_task_alloc();
      *(v1 + 240) = v39;
      *v39 = v1;
      v39[1] = sub_100035DFC;
      v6 = *(v1 + 208);
      v3 = v1 + 96;
      v4 = 0;
      v5 = 0;

      return TaskGroup.Iterator.next(isolation:)(v3, v4, v5, v6);
    }
  }

  if (v8 >= 1)
  {
    v45 = v7 & 0xC000000000000001;
    v41 = (*(v1 + 176) + 8);

    v9 = 0;
    v42 = v8;
    v43 = v7;
    while (1)
    {
      if (v45)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v10 = *(v7 + 8 * v9 + 32);
        swift_unknownObjectRetain();
      }

      v11 = *(v1 + 152);
      v12 = *(v1 + 160);
      sub_10000589C(&unk_1000BC6D0, &unk_10008FB20);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_10008F940;
      *(v13 + 32) = v10;
      swift_unknownObjectRetain();
      v15 = sub_100033304(v13, v11, v12, v14);

      if (v15)
      {
        if (v15[2])
        {
          v16 = *(v1 + 200);
          v44 = *(v1 + 192);
          v17 = v15[5];
          swift_unknownObjectRetain();

          v18 = type metadata accessor for TaskPriority();
          v19 = *(v18 - 8);
          (*(v19 + 56))(v16, 1, 1, v18);
          v20 = swift_allocObject();
          v20[2] = 0;
          v21 = v20 + 2;
          v20[3] = 0;
          v20[4] = v17;
          v20[5] = v10;
          sub_100042774(v16, v44, &qword_1000BCE60, &unk_100090AE0);
          LODWORD(v16) = (*(v19 + 48))(v44, 1, v18);
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v22 = *(v1 + 192);
          if (v16 == 1)
          {
            sub_100006390(*(v1 + 192), &qword_1000BCE60, &unk_100090AE0);
            if (*v21)
            {
              goto LABEL_14;
            }

LABEL_20:
            v23 = 0;
            v25 = 0;
          }

          else
          {
            TaskPriority.rawValue.getter();
            (*(v19 + 8))(v22, v18);
            if (!*v21)
            {
              goto LABEL_20;
            }

LABEL_14:
            swift_getObjectType();
            swift_unknownObjectRetain();
            v23 = dispatch thunk of Actor.unownedExecutor.getter();
            v25 = v24;
            swift_unknownObjectRelease();
          }

          v35 = **(v1 + 128);
          v36 = swift_allocObject();
          *(v36 + 16) = &unk_100090B50;
          *(v36 + 24) = v20;

          sub_10000589C(&qword_1000BBD90, &qword_100090580);
          v37 = v25 | v23;
          if (v25 | v23)
          {
            v37 = v1 + 16;
            *(v1 + 16) = 0;
            *(v1 + 24) = 0;
            *(v1 + 32) = v23;
            *(v1 + 40) = v25;
          }

          v7 = v43;
          v38 = *(v1 + 200);
          *(v1 + 72) = 1;
          *(v1 + 80) = v37;
          *(v1 + 88) = v35;
          swift_task_create();

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          sub_100006390(v38, &qword_1000BCE60, &unk_100090AE0);
          v8 = v42;
          goto LABEL_6;
        }
      }

      static Logger.UI.getter();
      swift_unknownObjectRetain();
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.debug.getter();
      swift_unknownObjectRelease();
      v28 = os_log_type_enabled(v26, v27);
      v29 = *(v1 + 184);
      v30 = *(v1 + 168);
      if (v28)
      {
        v31 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *v31 = 136315394;
        *(v31 + 4) = sub_100037B98(0xD00000000000003ALL, 0x8000000100092650, &v46);
        *(v31 + 12) = 2080;
        *(v1 + 112) = v10;
        swift_unknownObjectRetain();
        sub_10000589C(&qword_1000BBDA8, &qword_100090AC0);
        v32 = String.init<A>(describing:)();
        v34 = sub_100037B98(v32, v33, &v46);
        v8 = v42;

        *(v31 + 14) = v34;
        _os_log_impl(&_mh_execute_header, v26, v27, "%s did not get a valid thumbnail for node: %s", v31, 0x16u);
        swift_arrayDestroy();

        v7 = v43;

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      (*v41)(v29, v30);
LABEL_6:
      if (v8 == ++v9)
      {

        goto LABEL_25;
      }
    }
  }

  __break(1u);
  return TaskGroup.Iterator.next(isolation:)(v3, v4, v5, v6);
}

uint64_t sub_100035DFC()
{

  return _swift_task_switch(sub_100035EF8, 0, 0);
}

uint64_t sub_100035EF8()
{
  v14 = v0;
  v1 = *(v0 + 232);
  if (*(v0 + 96))
  {
    v12 = *(v0 + 96);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v3 = *(v0 + 232);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v3 = sub_10000DAD8(0, v3[2] + 1, 1, *(v0 + 232));
    }

    v5 = v3[2];
    v4 = v3[3];
    if (v5 >= v4 >> 1)
    {
      v3 = sub_10000DAD8((v4 > 1), v5 + 1, 1, v3);
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v3[2] = v5 + 1;
    *&v3[2 * v5 + 4] = v12;
    *(v0 + 232) = v3;
    v6 = swift_task_alloc();
    *(v0 + 240) = v6;
    *v6 = v0;
    v6[1] = sub_100035DFC;
    v7 = *(v0 + 208);

    return TaskGroup.Iterator.next(isolation:)(v0 + 96, 0, 0, v7);
  }

  else
  {
    v8 = *(v0 + 136);
    (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));
    v13 = v1;

    sub_1000381E8(&v13, v8);
    v9 = *(v0 + 120);

    *v9 = v13;

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_10003615C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[4] = a1;
  v6 = type metadata accessor for Logger();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();

  return _swift_task_switch(sub_10003622C, 0, 0);
}

uint64_t sub_10003622C()
{
  v33 = v0;
  if ([*(v0 + 40) hasFinishedTryingToFetchCorrectThumbnail])
  {
    static Logger.UI.getter();
    swift_unknownObjectRetain();
    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.debug.getter();
    swift_unknownObjectRelease();
    v3 = os_log_type_enabled(v1, v2);
    v5 = *(v0 + 64);
    v4 = *(v0 + 72);
    v6 = *(v0 + 56);
    if (v3)
    {
      v7 = *(v0 + 48);
      v8 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v8 = 136315394;
      *(v8 + 4) = sub_100037B98(0xD00000000000003ALL, 0x8000000100092650, &v32);
      *(v8 + 12) = 2080;
      *(v0 + 24) = v7;
      swift_unknownObjectRetain();
      sub_10000589C(&qword_1000BBDA8, &qword_100090AC0);
      v9 = String.init<A>(describing:)();
      v11 = sub_100037B98(v9, v10, &v32);

      *(v8 + 14) = v11;
      _os_log_impl(&_mh_execute_header, v1, v2, "%s hasFinishedTryingToFetchCorrectThumbnail=true for node: %s", v8, 0x16u);
      swift_arrayDestroy();
    }

    (*(v5 + 8))(v4, v6);
    v12 = *(v0 + 40);
    v13 = *(v0 + 32);
    *v13 = *(v0 + 48);
    v13[1] = v12;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    static Logger.UI.getter();
    swift_unknownObjectRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    swift_unknownObjectRelease();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 80);
    v21 = *(v0 + 56);
    v20 = *(v0 + 64);
    if (v18)
    {
      v22 = *(v0 + 48);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 136315394;
      v32 = v24;
      *(v23 + 4) = sub_100037B98(0xD00000000000003ALL, 0x8000000100092650, &v32);
      *(v23 + 12) = 2080;
      *(v0 + 16) = v22;
      swift_unknownObjectRetain();
      sub_10000589C(&qword_1000BBDA8, &qword_100090AC0);
      v25 = String.init<A>(describing:)();
      v27 = sub_100037B98(v25, v26, &v32);

      *(v23 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v16, v17, "%s hasFinishedTryingToFetchCorrectThumbnail=false for node: %s", v23, 0x16u);
      swift_arrayDestroy();

      (*(v20 + 8))(v19, v21);
    }

    else
    {

      (*(v20 + 8))(v19, v21);
    }

    v28 = swift_task_alloc();
    *(v0 + 88) = v28;
    *(v28 + 16) = *(v0 + 40);
    v29 = swift_task_alloc();
    *(v0 + 96) = v29;
    v30 = sub_10000589C(&qword_1000BBD90, &qword_100090580);
    *v29 = v0;
    v29[1] = sub_1000366C0;
    v31 = *(v0 + 32);

    return withCheckedContinuation<A>(isolation:function:_:)(v31, 0, 0, 0xD00000000000003ALL, 0x8000000100092650, sub_100042130, v28, v30);
  }
}

uint64_t sub_1000366C0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100036810(uint64_t a1, void *a2, void **a3)
{
  v6 = type metadata accessor for Logger();
  v54 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v49[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v49[-v10];
  v12 = sub_10000589C(&qword_1000BC3D8, &qword_100090B68);
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v49[-v15];
  v17 = *(v13 + 16);
  v53 = a1;
  v17(&v49[-v15], a1, v12, v14);
  v18 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  (*(v13 + 32))(v19 + v18, v16, v12);
  v60 = sub_100042210;
  v61 = v19;
  aBlock = _NSConcreteStackBlock;
  v57 = 1107296256;
  v58 = sub_10000D508;
  v59 = &unk_1000AEA80;
  v20 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  LODWORD(v16) = [a2 registerGenerationCompletionHandler:v20];
  _Block_release(v20);
  if (v16)
  {
    static Logger.UI.getter();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v23 = 136315650;
      *(v23 + 4) = sub_100037B98(0xD00000000000003ALL, 0x8000000100092650, &aBlock);
      *(v23 + 12) = 2080;
      v24 = [a2 thumbnail];
      v25 = [v24 description];
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v6;
      v27 = v26;
      v29 = v28;

      v30 = sub_100037B98(v27, v29, &aBlock);

      *(v23 + 14) = v30;
      *(v23 + 22) = 2080;
      v55 = a3;
      swift_unknownObjectRetain();
      sub_10000589C(&qword_1000BBDA8, &qword_100090AC0);
      v31 = String.init<A>(describing:)();
      v33 = sub_100037B98(v31, v32, &aBlock);

      *(v23 + 24) = v33;
      _os_log_impl(&_mh_execute_header, v21, v22, "%s registerGenerationCompletionHandler success: %s for observedNode: %s", v23, 0x20u);
      swift_arrayDestroy();

      return (*(v54 + 8))(v11, v52);
    }

    else
    {

      return (*(v54 + 8))(v11, v6);
    }
  }

  else
  {
    static Logger.UI.getter();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      aBlock = v51;
      *v37 = 136315650;
      *(v37 + 4) = sub_100037B98(0xD00000000000003ALL, 0x8000000100092650, &aBlock);
      *(v37 + 12) = 2080;
      v38 = [a2 thumbnail];
      v50 = v36;
      v39 = v38;
      v40 = [v38 description];
      v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v6;
      v42 = v41;
      v44 = v43;

      v45 = sub_100037B98(v42, v44, &aBlock);

      *(v37 + 14) = v45;
      *(v37 + 22) = 2080;
      v55 = a3;
      swift_unknownObjectRetain();
      sub_10000589C(&qword_1000BBDA8, &qword_100090AC0);
      v46 = String.init<A>(describing:)();
      v48 = sub_100037B98(v46, v47, &aBlock);

      *(v37 + 24) = v48;
      _os_log_impl(&_mh_execute_header, v35, v50, "%s registerGenerationCompletionHandler failed: %s for observedNode: %s", v37, 0x20u);
      swift_arrayDestroy();

      (*(v54 + 8))(v8, v52);
    }

    else
    {

      (*(v54 + 8))(v8, v6);
    }

    aBlock = a3;
    v57 = a2;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_100036EB4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v28 = v11;
    v13 = v12;
    v29 = swift_slowAlloc();
    v32[0] = v29;
    *v13 = 136315650;
    *(v13 + 4) = sub_100037B98(0xD00000000000003ALL, 0x8000000100092650, v32);
    *(v13 + 12) = 2080;
    v14 = [a1 thumbnail];
    v15 = [v14 description];
    v30 = a3;
    v16 = v15;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v6;
    v18 = v17;
    v20 = v19;

    v21 = sub_100037B98(v18, v20, v32);

    *(v13 + 14) = v21;
    *(v13 + 22) = 2080;
    v31 = a2;
    swift_unknownObjectRetain();
    sub_10000589C(&qword_1000BBDA8, &qword_100090AC0);
    v22 = String.init<A>(describing:)();
    v24 = sub_100037B98(v22, v23, v32);

    *(v13 + 24) = v24;
    _os_log_impl(&_mh_execute_header, v10, v28, "%s registerGenerationCompletionHandler sent completion block: %s for observedNode: %s", v13, 0x20u);
    swift_arrayDestroy();

    (*(v7 + 8))(v9, v27);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  v32[0] = a2;
  v32[1] = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_10000589C(&qword_1000BC3D8, &qword_100090B68);
  return CheckedContinuation.resume(returning:)();
}

BOOL sub_1000371B4(uint64_t *a1, uint64_t *a2, uint64_t *a3, __n128 a4)
{
  swift_beginAccess();
  v15 = a3;
  v5 = *a3;
  v6 = *a3 & 0xFFFFFFFFFFFFFF8;
  if (v5 >> 62)
  {
LABEL_32:
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *(v6 + 16);
  }

  v8 = 0;
  while (v7 != v8)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v8 >= *(v6 + 16))
      {
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      swift_unknownObjectRetain();
    }

    swift_getObjectType();
    v9 = DOCNode.isEqualTo(node:)();
    swift_unknownObjectRelease();
    if (v9)
    {
      goto LABEL_14;
    }

    v10 = __OFADD__(v8++, 1);
    if (v10)
    {
      goto LABEL_30;
    }
  }

  v8 = 0;
LABEL_14:

  swift_beginAccess();
  v11 = *v15;
  v6 = *v15 & 0xFFFFFFFFFFFFFF8;
  if (*v15 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((*v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = 0;
  while (v5 != v12)
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v12 >= *(v6 + 16))
      {
        goto LABEL_29;
      }

      swift_unknownObjectRetain();
    }

    swift_getObjectType();
    v13 = DOCNode.isEqualTo(node:)();
    swift_unknownObjectRelease();
    if (v13)
    {
      goto LABEL_27;
    }

    v10 = __OFADD__(v12++, 1);
    if (v10)
    {
      goto LABEL_31;
    }
  }

  v12 = 0;
LABEL_27:

  return v12 < v8;
}

void sub_1000373C0(void *a1, uint64_t a2, double a3, double a4, double a5)
{
  DOCScaledThumbnailCornerRadius();
  v8 = *(a2 + 16);
  if (v8)
  {
    v9 = v7;
    v10 = (a2 + 40);
    p_type = &stru_1000B6FF0.type;
    do
    {
      v13 = *(v10 - 1);
      v14 = *v10;
      swift_unknownObjectRetain();
      v15 = [swift_unknownObjectRetain() thumbnail];
      v16 = [v14 isRepresentativeIcon];
      v17 = [v13 isFolder];
      [v15 size];
      DOCAdaptSizeToRect();
      v22 = v18;
      v23 = v19;
      v24 = v20;
      v25 = v21;
      if (v17)
      {
        v26 = 0;
      }

      else
      {
        v26 = [objc_opt_self() bezierPathWithRoundedRect:v18 cornerRadius:{v19, v20, v21, v9}];
      }

      v27 = p_type;
      v28 = [a1 p_type[377]];
      CGContextSaveGState(v28);

      p_type = v27;
      v29 = v26;
      [v29 addClip];
      [v15 drawInRect:{v22, v23, v24, v25}];
      if (v16)
      {
        c = [a1 v27[377]];
        v30 = [objc_opt_self() separatorColor];
        v31 = [v30 CGColor];

        p_type = v27;
        CGContextSetStrokeColorWithColor(c, v31);

        v32 = [a1 v27[377]];
        CGContextSetLineWidth(v32, 1.0);

        [v29 stroke];
      }

      v12 = [a1 p_type[377]];
      CGContextRestoreGState(v12);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v10 += 2;
      --v8;
    }

    while (v8);
  }
}

double sub_1000376A8(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.UI.getter();
  v10 = a3;
  sub_100041D04(a1, a2);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  sub_100041D6C(a1, a2);
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v29 = v12;
    v14 = v13;
    v30 = swift_slowAlloc();
    v34 = v30;
    *v14 = 136315650;
    *(v14 + 4) = sub_100037B98(0xD00000000000001CLL, 0x8000000100092A80, &v34);
    *(v14 + 12) = 2080;
    v15 = v10;
    v16 = [v15 description];
    v28 = v6;
    v17 = v16;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v10;
    v19 = v18;
    v21 = v20;

    v22 = sub_100037B98(v19, v21, &v34);

    *(v14 + 14) = v22;
    *(v14 + 22) = 2080;
    v32 = a1;
    v33 = a2;
    sub_100041D04(a1, a2);
    sub_10000589C(&unk_1000BC3C0, &unk_100090B30);
    v23 = String.init<A>(describing:)();
    v25 = sub_100037B98(v23, v24, &v34);

    *(v14 + 24) = v25;
    v10 = v31;
    _os_log_impl(&_mh_execute_header, v11, v29, "%s self: %s iconData: %s", v14, 0x20u);
    swift_arrayDestroy();

    (*(v7 + 8))(v9, v28);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  if (a2 >> 60 != 15)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_100041D18(a1, a2);
      sub_10004782C(v10, a1, a2);
      swift_unknownObjectRelease();
      return sub_100041D6C(a1, a2);
    }
  }

  return result;
}

uint64_t sub_1000379B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  sub_10000589C(&qword_1000BBDA8, &qword_100090AC0);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7[3] = swift_getObjectType();
  v7[0] = a3;

  swift_unknownObjectRetain();
  v4(v5, v7);

  return sub_1000064E0(v7);
}

unint64_t sub_100037A68(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_100037AE0(a1, a2, v4);
}

unint64_t sub_100037AE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_100037B98(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  sub_100037C64(v11, 0, 0, 1, a1, a2);
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
    sub_100041480(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000064E0(v11);
  return v7;
}

void sub_100037C64(uint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
          *(__dst + v9) = 0;
          *a1 = __dst;
          return;
        }
      }
    }

LABEL_8:
    sub_100037D70(a5, a6);
    *a1 = v8;
    return;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    v7 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    v7 = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!v7)
    {
      __break(1u);
      return;
    }
  }

  *a1 = v7;
  if ((a6 & 0x8000000000000000) == 0)
  {
    swift_unknownObjectRetain();
  }
}

void *sub_100037D70(uint64_t a1, unint64_t a2)
{
  v3 = sub_100037DBC(a1, a2);
  sub_100037EEC(&off_1000ADAB0);
  return v3;
}

void *sub_100037DBC(uint64_t a1, unint64_t a2)
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

  v6 = sub_100037FD8(v5, 0);
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
        v7 = sub_100037FD8(v10, 0);
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

void sub_100037EEC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_10003804C(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v8 + 32], (a1 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void *sub_100037FD8(uint64_t a1, uint64_t a2)
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

  sub_10000589C(&qword_1000BC310, &qword_100090AC8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10003804C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000589C(&qword_1000BC310, &qword_100090AC8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void sub_100038140(void *a1)
{
  v2 = *(type metadata accessor for IndexPath() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100010FD4(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_10003825C(v5);
  *a1 = v3;
}

void sub_1000381E8(void *a1, uint64_t *a2)
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_100011020(v4);
  }

  v5 = v4[2];
  v6[0] = (v4 + 4);
  v6[1] = v5;
  sub_100038388(v6, a2);
  *a1 = v4;
}

void sub_10003825C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for IndexPath();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for IndexPath() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100038890(v8, v9, a1, v4);
      v6[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_10003849C(0, v2, 1, a1);
  }
}

void sub_100038388(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[1];
  v5 = _minimumMergeRunLength(_:)(v4);
  if (v5 < v4)
  {
    if (v4 >= -1)
    {
      v6 = v5;
      if (v4 <= 1)
      {
        v7 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10000589C(&qword_1000BBD90, &qword_100090580);
        v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v7[2] = v4 / 2;
      }

      v9[0] = v7 + 4;
      v9[1] = (v4 / 2);
      v8 = v7;
      sub_100039274(v9, v10, a1, v6, a2);
      v8[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_100038744(0, v4, 1, a1, a2);
  }
}

void sub_10003849C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for IndexPath();
  __chkstk_darwin(v8);
  v43 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v48 = &v33 - v11;
  v14.n128_f64[0] = __chkstk_darwin(v12);
  v47 = &v33 - v15;
  v35 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v18 = *(v13 + 16);
    v17 = v13 + 16;
    v19 = *(v17 + 56);
    v44 = (v17 - 8);
    v45 = v18;
    v46 = v17;
    v41 = (v17 + 16);
    v42 = v16;
    v20 = (v16 + v19 * (a3 - 1));
    v40 = -v19;
    v21 = a1 - a3;
    v34 = v19;
    v22 = v16 + v19 * a3;
LABEL_5:
    v38 = v20;
    v39 = a3;
    v36 = v22;
    v37 = v21;
    v49 = v21;
    v23 = v20;
    while (1)
    {
      v24 = v47;
      v25 = v45;
      (v45)(v47, v22, v8, v14);
      v26 = v48;
      v25(v48, v23, v8);
      v27 = IndexPath.item.getter();
      v28 = IndexPath.item.getter();
      v29 = *v44;
      (*v44)(v26, v8);
      v29(v24, v8);
      if (v28 >= v27)
      {
LABEL_4:
        a3 = v39 + 1;
        v20 = &v38[v34];
        v21 = v37 - 1;
        v22 = v36 + v34;
        if (v39 + 1 == v35)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v42)
      {
        break;
      }

      v30 = *v41;
      v31 = v43;
      (*v41)(v43, v22, v8);
      swift_arrayInitWithTakeFrontToBack();
      v30(v23, v31, v8);
      v23 += v40;
      v22 += v40;
      if (__CFADD__(v49++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

uint64_t sub_100038744(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v20 = a5;
  if (a3 != a2)
  {
    v6 = *a4;
    v7 = (*a4 + 16 * a3 - 16);
    v8 = result - a3;
    v17 = *a4;
LABEL_4:
    v15 = v7;
    v16 = a3;
    v9 = *(v6 + 16 * a3);
    v14 = v8;
    while (1)
    {
      v18 = *v7;
      v19 = v9;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v11 = sub_1000371B4(&v19, &v18, v20, v10);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      result = swift_unknownObjectRelease();
      if (v5)
      {
        break;
      }

      if (!v11)
      {
        v6 = v17;
LABEL_12:
        a3 = v16 + 1;
        v7 = v15 + 1;
        v8 = v14 - 1;
        if (v16 + 1 != a2)
        {
          goto LABEL_4;
        }

        return result;
      }

      v6 = v17;
      if (!v17)
      {
        __break(1u);
        return result;
      }

      v9 = v7[1];
      v7[1] = *v7;
      *v7-- = v9;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

void sub_100038890(int64_t *a1, uint64_t a2, void *a3, int64_t a4)
{
  v6 = v4;
  v118 = a1;
  v9 = type metadata accessor for IndexPath();
  __chkstk_darwin(v9);
  v122 = &v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v132 = &v115 - v12;
  __chkstk_darwin(v13);
  v138 = &v115 - v14;
  v17.n128_f64[0] = __chkstk_darwin(v15);
  v137 = &v115 - v18;
  v19 = a3[1];
  v127 = v16;
  if (v19 < 1)
  {
    v21 = _swiftEmptyArrayStorage;
LABEL_94:
    v5 = *v118;
    if (!*v118)
    {
      goto LABEL_132;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = v127;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_126:
      v21 = sub_10000F704(v21);
    }

    v140 = v21;
    v111 = *(v21 + 2);
    if (v111 >= 2)
    {
      while (*a3)
      {
        v112 = *&v21[16 * v111];
        v113 = *&v21[16 * v111 + 24];
        sub_100039A38(*a3 + *(v9 + 72) * v112, *a3 + *(v9 + 72) * *&v21[16 * v111 + 16], *a3 + *(v9 + 72) * v113, v5);
        if (v6)
        {
          goto LABEL_104;
        }

        if (v113 < v112)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_10000F704(v21);
        }

        if (v111 - 2 >= *(v21 + 2))
        {
          goto LABEL_120;
        }

        v114 = &v21[16 * v111];
        *v114 = v112;
        *(v114 + 1) = v113;
        v140 = v21;
        sub_10000F678(v111 - 1);
        v21 = v140;
        v111 = *(v140 + 2);
        if (v111 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v116 = a4;
  v20 = 0;
  v135 = (v16 + 8);
  v136 = v16 + 16;
  v134 = (v16 + 32);
  v21 = _swiftEmptyArrayStorage;
  v120 = a3;
  v139 = v9;
  while (1)
  {
    v128 = v21;
    if (v20 + 1 >= v19)
    {
      v33 = v20 + 1;
    }

    else
    {
      v129 = v19;
      v117 = v6;
      v22 = *a3;
      v119 = v20;
      v23 = v127[9];
      v5 = &v22[v23 * (v20 + 1)];
      v24 = v22;
      v133 = v22;
      v25 = v9;
      v26 = v127[2];
      v27 = v137;
      v26(v137, v5, v25, v17);
      v28 = &v24[v23 * v20];
      v29 = v138;
      v125 = v26;
      (v26)(v138, v28, v25);
      v130 = IndexPath.item.getter();
      v126 = IndexPath.item.getter();
      v30 = v127[1];
      v30(v29, v25);
      v124 = v30;
      v30(v27, v25);
      v31 = v119 + 2;
      v131 = v23;
      v32 = &v133[v23 * (v119 + 2)];
      while (1)
      {
        v33 = v129;
        if (v129 == v31)
        {
          break;
        }

        v34 = v125;
        LODWORD(v133) = v126 < v130;
        v35 = v137;
        v36 = v139;
        (v125)(v137, v32, v139);
        v37 = v138;
        v34(v138, v5, v36);
        v38 = IndexPath.item.getter();
        v39 = IndexPath.item.getter();
        v40 = v124;
        (v124)(v37, v36);
        v40(v35, v36);
        v21 = v128;
        ++v31;
        v32 += v131;
        v5 += v131;
        if (((v133 ^ (v39 >= v38)) & 1) == 0)
        {
          v33 = v31 - 1;
          break;
        }
      }

      v6 = v117;
      v20 = v119;
      a3 = v120;
      v9 = v139;
      if (v126 < v130)
      {
        if (v33 < v119)
        {
          goto LABEL_123;
        }

        if (v119 < v33)
        {
          v41 = v131 * (v33 - 1);
          v5 = v33 * v131;
          v129 = v33;
          v42 = v33;
          v43 = v119;
          v44 = v119 * v131;
          do
          {
            if (v43 != --v42)
            {
              v45 = *a3;
              if (!v45)
              {
                goto LABEL_129;
              }

              v46 = *v134;
              (*v134)(v122, &v45[v44], v9);
              if (v44 < v41 || &v45[v44] >= &v45[v5])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v44 != v41)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v46(&v45[v41], v122, v9);
              a3 = v120;
              v21 = v128;
            }

            ++v43;
            v41 -= v131;
            v5 -= v131;
            v44 += v131;
          }

          while (v43 < v42);
          v6 = v117;
          v20 = v119;
          v33 = v129;
        }
      }
    }

    v47 = a3[1];
    if (v33 < v47)
    {
      if (__OFSUB__(v33, v20))
      {
        goto LABEL_122;
      }

      if (v33 - v20 < v116)
      {
        if (__OFADD__(v20, v116))
        {
          goto LABEL_124;
        }

        if (v20 + v116 >= v47)
        {
          v5 = a3[1];
        }

        else
        {
          v5 = v20 + v116;
        }

        if (v5 < v20)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v33 != v5)
        {
          break;
        }
      }
    }

    v5 = v33;
    if (v33 < v20)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_10000D8A0(0, *(v21 + 2) + 1, 1, v21);
    }

    v49 = *(v21 + 2);
    v48 = *(v21 + 3);
    v50 = v49 + 1;
    if (v49 >= v48 >> 1)
    {
      v21 = sub_10000D8A0((v48 > 1), v49 + 1, 1, v21);
    }

    *(v21 + 2) = v50;
    v51 = &v21[16 * v49];
    *(v51 + 4) = v20;
    *(v51 + 5) = v5;
    v52 = *v118;
    if (!*v118)
    {
      goto LABEL_131;
    }

    v123 = v5;
    if (v49)
    {
      while (1)
      {
        v5 = v50 - 1;
        if (v50 >= 4)
        {
          break;
        }

        if (v50 == 3)
        {
          v53 = *(v21 + 4);
          v54 = *(v21 + 5);
          v63 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          v56 = v63;
LABEL_52:
          if (v56)
          {
            goto LABEL_110;
          }

          v69 = &v21[16 * v50];
          v71 = *v69;
          v70 = *(v69 + 1);
          v72 = __OFSUB__(v70, v71);
          v73 = v70 - v71;
          v74 = v72;
          if (v72)
          {
            goto LABEL_113;
          }

          v75 = &v21[16 * v5 + 32];
          v77 = *v75;
          v76 = *(v75 + 1);
          v63 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v63)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v73, v78))
          {
            goto LABEL_117;
          }

          if (v73 + v78 >= v55)
          {
            if (v55 < v78)
            {
              v5 = v50 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v79 = &v21[16 * v50];
        v81 = *v79;
        v80 = *(v79 + 1);
        v63 = __OFSUB__(v80, v81);
        v73 = v80 - v81;
        v74 = v63;
LABEL_66:
        if (v74)
        {
          goto LABEL_112;
        }

        v82 = &v21[16 * v5];
        v84 = *(v82 + 4);
        v83 = *(v82 + 5);
        v63 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v63)
        {
          goto LABEL_115;
        }

        if (v85 < v73)
        {
          goto LABEL_3;
        }

LABEL_73:
        v90 = v5 - 1;
        if (v5 - 1 >= v50)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v91 = *&v21[16 * v90 + 32];
        v92 = *&v21[16 * v5 + 40];
        sub_100039A38(*a3 + v127[9] * v91, *a3 + v127[9] * *&v21[16 * v5 + 32], *a3 + v127[9] * v92, v52);
        if (v6)
        {
          goto LABEL_104;
        }

        if (v92 < v91)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_10000F704(v21);
        }

        if (v90 >= *(v21 + 2))
        {
          goto LABEL_107;
        }

        v93 = &v21[16 * v90];
        *(v93 + 4) = v91;
        *(v93 + 5) = v92;
        v140 = v21;
        sub_10000F678(v5);
        v21 = v140;
        v50 = *(v140 + 2);
        if (v50 <= 1)
        {
          goto LABEL_3;
        }
      }

      v57 = &v21[16 * v50 + 32];
      v58 = *(v57 - 64);
      v59 = *(v57 - 56);
      v63 = __OFSUB__(v59, v58);
      v60 = v59 - v58;
      if (v63)
      {
        goto LABEL_108;
      }

      v62 = *(v57 - 48);
      v61 = *(v57 - 40);
      v63 = __OFSUB__(v61, v62);
      v55 = v61 - v62;
      v56 = v63;
      if (v63)
      {
        goto LABEL_109;
      }

      v64 = &v21[16 * v50];
      v66 = *v64;
      v65 = *(v64 + 1);
      v63 = __OFSUB__(v65, v66);
      v67 = v65 - v66;
      if (v63)
      {
        goto LABEL_111;
      }

      v63 = __OFADD__(v55, v67);
      v68 = v55 + v67;
      if (v63)
      {
        goto LABEL_114;
      }

      if (v68 >= v60)
      {
        v86 = &v21[16 * v5 + 32];
        v88 = *v86;
        v87 = *(v86 + 1);
        v63 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v63)
        {
          goto LABEL_118;
        }

        if (v55 < v89)
        {
          v5 = v50 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = a3[1];
    v20 = v123;
    if (v123 >= v19)
    {
      goto LABEL_94;
    }
  }

  v117 = v6;
  v94 = *a3;
  v95 = v127[9];
  v133 = v127[2];
  v96 = &v94[v95 * (v33 - 1)];
  v130 = -v95;
  v131 = v94;
  v119 = v20;
  v97 = (v20 - v33);
  v121 = v95;
  v98 = &v94[v33 * v95];
  v123 = v5;
LABEL_85:
  v129 = v33;
  v124 = v98;
  v125 = v97;
  v126 = v96;
  v99 = v96;
  while (1)
  {
    v100 = v137;
    v101 = v133;
    (v133)(v137, v98, v9);
    v102 = v138;
    v101(v138, v99, v139);
    v103 = IndexPath.item.getter();
    v104 = IndexPath.item.getter();
    v105 = *v135;
    v106 = v102;
    v9 = v139;
    (*v135)(v106, v139);
    v105(v100, v9);
    if (v104 >= v103)
    {
LABEL_84:
      v33 = v129 + 1;
      v96 = v126 + v121;
      v97 = v125 - 1;
      v5 = v123;
      v98 = &v124[v121];
      if (v129 + 1 != v123)
      {
        goto LABEL_85;
      }

      v6 = v117;
      v20 = v119;
      a3 = v120;
      v21 = v128;
      if (v123 < v119)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v131)
    {
      break;
    }

    v107 = *v134;
    v108 = v132;
    (*v134)(v132, v98, v9);
    swift_arrayInitWithTakeFrontToBack();
    v107(v99, v108, v9);
    v99 += v130;
    v98 += v130;
    if (__CFADD__(v97++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
}

void sub_100039274(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v7 = v5;
  v8 = a3;
  v9 = a3[1];
  if (v9 < 1)
  {
    v11 = _swiftEmptyArrayStorage;
LABEL_88:
    v6 = v8;
    v8 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_120;
      }

      goto LABEL_90;
    }

    goto LABEL_129;
  }

  v10 = 0;
  v11 = _swiftEmptyArrayStorage;
  while (1)
  {
    v12 = v10;
    v13 = v10 + 1;
    if (v10 + 1 < v9)
    {
      v104 = v9;
      v14 = *v8;
      v15 = *(*v8 + 16 * v13);
      v108 = *(*v8 + 16 * v10);
      v105 = v108;
      *v109 = v15;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v6 = v105;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v101 = sub_1000371B4(v109, &v108, a5, v16);
      if (v7)
      {
LABEL_101:

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        return;
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v17 = v12 + 2;
      v98 = v12;
      v94 = 16 * v12;
      v18 = (v14 + 16 * v12 + 32);
      while (1)
      {
        v19 = v104;
        if (v104 == v17)
        {
          break;
        }

        v20 = *v18;
        v108 = *(v18 - 1);
        v106 = v108;
        *v109 = v20;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v6 = v106;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v22 = sub_1000371B4(v109, &v108, a5, v21);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        ++v17;
        ++v18;
        if ((v101 ^ v22))
        {
          v19 = v17 - 1;
          break;
        }
      }

      v7 = 0;
      v8 = a3;
      v12 = v98;
      if (v101)
      {
        if (v19 < v98)
        {
          goto LABEL_123;
        }

        v23 = v94;
        if (v98 < v19)
        {
          v24 = 16 * v19 - 16;
          v25 = v19;
          v26 = v98;
          do
          {
            if (v26 != --v25)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v28 = *(v27 + v23);
              *(v27 + v23) = *(v27 + v24);
              *(v27 + v24) = v28;
            }

            ++v26;
            v24 -= 16;
            v23 += 16;
          }

          while (v26 < v25);
        }
      }

      v13 = v19;
    }

    v29 = v8[1];
    if (v13 >= v29)
    {
      goto LABEL_132;
    }

    if (__OFSUB__(v13, v12))
    {
      goto LABEL_119;
    }

    if (v13 - v12 >= a4)
    {
      goto LABEL_132;
    }

    v30 = v12 + a4;
    if (__OFADD__(v12, a4))
    {
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
      goto LABEL_126;
    }

    if (v30 >= v29)
    {
      v30 = v8[1];
    }

    if (v30 < v12)
    {
      goto LABEL_122;
    }

    if (v13 == v30)
    {
LABEL_132:
      if (v13 < v12)
      {
        goto LABEL_118;
      }
    }

    else
    {
      v91 = v11;
      v92 = v30;
      v77 = *v8;
      v78 = *v8 + 16 * v13 - 16;
      v99 = v12;
      v79 = v12 - v13;
      do
      {
        v103 = v13;
        v80 = *(v77 + 16 * v13);
        v93 = v79;
        v95 = v78;
        v81 = v78;
        do
        {
          v108 = *v81;
          *v109 = v80;
          v6 = v80;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v83 = sub_1000371B4(v109, &v108, a5, v82);
          if (v7)
          {
            goto LABEL_101;
          }

          v84 = v83;
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          if (!v84)
          {
            break;
          }

          if (!v77)
          {
            goto LABEL_125;
          }

          v80 = v81[1];
          v81[1] = *v81;
          *v81-- = v80;
        }

        while (!__CFADD__(v79++, 1));
        v13 = v103 + 1;
        v78 = v95 + 16;
        v79 = v93 - 1;
      }

      while (v103 + 1 != v92);
      v13 = v92;
      v7 = 0;
      v8 = a3;
      v12 = v99;
      v11 = v91;
      if (v92 < v99)
      {
        goto LABEL_118;
      }
    }

    v102 = v13;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_10000D8A0(0, *(v11 + 2) + 1, 1, v11);
    }

    v32 = *(v11 + 2);
    v31 = *(v11 + 3);
    v33 = v32 + 1;
    if (v32 >= v31 >> 1)
    {
      v11 = sub_10000D8A0((v31 > 1), v32 + 1, 1, v11);
    }

    *(v11 + 2) = v33;
    v34 = &v11[16 * v32];
    *(v34 + 4) = v12;
    *(v34 + 5) = v13;
    v35 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if (v32)
    {
      break;
    }

LABEL_3:
    v9 = v8[1];
    v10 = v102;
    if (v102 >= v9)
    {
      goto LABEL_88;
    }
  }

  while (1)
  {
    v6 = v33 - 1;
    if (v33 >= 4)
    {
      v40 = &v11[16 * v33 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_105;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_106;
      }

      v47 = &v11[16 * v33];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_108;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_111;
      }

      if (v51 >= v43)
      {
        v69 = &v11[16 * v6 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_117;
        }

        if (v38 < v72)
        {
          v6 = v33 - 2;
        }

        goto LABEL_68;
      }

      goto LABEL_47;
    }

    if (v33 == 3)
    {
      v36 = *(v11 + 4);
      v37 = *(v11 + 5);
      v46 = __OFSUB__(v37, v36);
      v38 = v37 - v36;
      v39 = v46;
LABEL_47:
      if (v39)
      {
        goto LABEL_107;
      }

      v52 = &v11[16 * v33];
      v54 = *v52;
      v53 = *(v52 + 1);
      v55 = __OFSUB__(v53, v54);
      v56 = v53 - v54;
      v57 = v55;
      if (v55)
      {
        goto LABEL_110;
      }

      v58 = &v11[16 * v6 + 32];
      v60 = *v58;
      v59 = *(v58 + 1);
      v46 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v46)
      {
        goto LABEL_113;
      }

      if (__OFADD__(v56, v61))
      {
        goto LABEL_114;
      }

      if (v56 + v61 >= v38)
      {
        if (v38 < v61)
        {
          v6 = v33 - 2;
        }

        goto LABEL_68;
      }

      goto LABEL_61;
    }

    v62 = &v11[16 * v33];
    v64 = *v62;
    v63 = *(v62 + 1);
    v46 = __OFSUB__(v63, v64);
    v56 = v63 - v64;
    v57 = v46;
LABEL_61:
    if (v57)
    {
      goto LABEL_109;
    }

    v65 = &v11[16 * v6];
    v67 = *(v65 + 4);
    v66 = *(v65 + 5);
    v46 = __OFSUB__(v66, v67);
    v68 = v66 - v67;
    if (v46)
    {
      goto LABEL_112;
    }

    if (v68 < v56)
    {
      goto LABEL_3;
    }

LABEL_68:
    v73 = v6 - 1;
    if (v6 - 1 >= v33)
    {
      break;
    }

    if (!*v8)
    {
      goto LABEL_124;
    }

    v74 = *&v11[16 * v73 + 32];
    v75 = *&v11[16 * v6 + 40];
    sub_100039FF0((*v8 + 16 * v74), (*v8 + 16 * *&v11[16 * v6 + 32]), (*v8 + 16 * v75), v35, a5);
    if (v7)
    {
      goto LABEL_98;
    }

    if (v75 < v74)
    {
      goto LABEL_103;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_10000F704(v11);
    }

    if (v73 >= *(v11 + 2))
    {
      goto LABEL_104;
    }

    v76 = &v11[16 * v73];
    *(v76 + 4) = v74;
    *(v76 + 5) = v75;
    v110 = v11;
    sub_10000F678(v6);
    v11 = v110;
    v33 = *(v110 + 2);
    if (v33 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  v11 = sub_10000F704(v11);
LABEL_90:
  v86 = v7;
  v110 = v11;
  v87 = *(v11 + 2);
  if (v87 < 2)
  {
LABEL_98:
  }

  else
  {
    while (*v6)
    {
      v7 = v87 - 1;
      v88 = *&v11[16 * v87];
      v89 = *&v11[16 * v87 + 24];
      sub_100039FF0((*v6 + 16 * v88), (*v6 + 16 * *&v11[16 * v87 + 16]), (*v6 + 16 * v89), v8, a5);
      if (v86)
      {
        goto LABEL_98;
      }

      if (v89 < v88)
      {
        goto LABEL_115;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_10000F704(v11);
      }

      if (v87 - 2 >= *(v11 + 2))
      {
        goto LABEL_116;
      }

      v90 = &v11[16 * v87];
      *v90 = v88;
      *(v90 + 1) = v89;
      v110 = v11;
      sub_10000F678(v87 - 1);
      v11 = v110;
      v87 = *(v110 + 2);
      if (v87 <= 1)
      {
        goto LABEL_98;
      }
    }

LABEL_126:
    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
  }
}

void sub_100039A38(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v61 = type metadata accessor for IndexPath();
  v8 = *(v61 - 8);
  __chkstk_darwin(v61);
  v58 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v57 = &v47 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_60;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v15 = (a2 - a1) / v13;
  v64 = a1;
  v63 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v31 = a4 + v17;
    if (v17 >= 1)
    {
      v32 = -v13;
      v51 = a4;
      v52 = (v8 + 16);
      v50 = (v8 + 8);
      v33 = v31;
      v60 = a1;
      v53 = v32;
      do
      {
        v48 = v31;
        v34 = a2;
        v35 = a2 + v32;
        v36 = a3;
        v54 = v34;
        v55 = v35;
        while (1)
        {
          if (v34 <= a1)
          {
            v64 = v34;
            v62 = v48;
            goto LABEL_58;
          }

          v37 = v36;
          v49 = v31;
          v59 = v36 + v32;
          v38 = v33 + v32;
          v39 = *v52;
          v40 = v57;
          v41 = v33 + v32;
          v42 = v33;
          v43 = v61;
          (*v52)(v57, v41, v61);
          v44 = v58;
          (v39)(v58, v35, v43);
          v56 = IndexPath.item.getter();
          v45 = IndexPath.item.getter();
          v46 = *v50;
          (*v50)(v44, v43);
          v46(v40, v43);
          if (v45 < v56)
          {
            break;
          }

          v31 = v38;
          v36 = v59;
          if (v37 < v42 || v59 >= v42)
          {
            swift_arrayInitWithTakeFrontToBack();
            v35 = v55;
            a1 = v60;
          }

          else
          {
            v35 = v55;
            a1 = v60;
            if (v37 != v42)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v33 = v38;
          v32 = v53;
          v34 = v54;
          if (v38 <= v51)
          {
            a2 = v54;
            goto LABEL_57;
          }
        }

        v33 = v42;
        if (v37 < v54 || v59 >= v54)
        {
          a3 = v59;
          a2 = v55;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v60;
          v31 = v49;
          v32 = v53;
        }

        else
        {
          a3 = v59;
          a2 = v55;
          a1 = v60;
          v31 = v49;
          v32 = v53;
          if (v37 != v54)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v33 > v51);
    }

LABEL_57:
    v64 = a2;
    v62 = v31;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v56 = a4 + v16;
    v62 = a4 + v16;
    v59 = a3;
    if (v16 >= 1 && a2 < a3)
    {
      v19 = *(v8 + 16);
      v54 = v13;
      v55 = v8 + 16;
      v52 = (v8 + 8);
      v53 = v19;
      do
      {
        v60 = a1;
        v20 = v57;
        v21 = v61;
        v22 = v53;
        v53(v57, a2, v61);
        v23 = v58;
        v22(v58, a4, v21);
        v24 = a2;
        v25 = IndexPath.item.getter();
        v26 = IndexPath.item.getter();
        v27 = *v52;
        (*v52)(v23, v21);
        v27(v20, v21);
        if (v26 >= v25)
        {
          v28 = v54;
          v30 = a4 + v54;
          v29 = v60;
          if (v60 < a4 || v60 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v24;
          }

          else
          {
            a2 = v24;
            if (v60 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v63 = v30;
          a4 += v28;
        }

        else
        {
          v28 = v54;
          a2 = v24 + v54;
          v29 = v60;
          if (v60 < v24 || v60 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v60 != v24)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v29 + v28;
        v64 = a1;
      }

      while (a4 < v56 && a2 < v59);
    }
  }

LABEL_58:
  sub_10003A474(&v64, &v63, &v62);
}

uint64_t sub_100039FF0(char *__src, char *a2, char *a3, char *a4, uint64_t *a5)
{
  v6 = a3;
  v7 = a2 - __src;
  v8 = a2 - __src + 15;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 4;
  v10 = a3 - a2;
  v11 = a3 - a2 + 15;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 4;
  if (v9 < v11 >> 4)
  {
    v13 = a2;
    if (a4 != __src || &__src[16 * v9] <= a4)
    {
      v14 = __src;
      v15 = a4;
      memmove(a4, __src, 16 * v9);
      __src = v14;
      a4 = v15;
    }

    v60 = &a4[16 * v9];
    v16 = a4;
    if (v7 >= 16 && v13 < v6)
    {
      v17 = v13;
      v53 = v6;
      while (1)
      {
        v18 = __src;
        v19 = v17[1];
        v58 = *v17;
        v59 = v19;
        v20 = v16;
        v21 = *v16;
        v22 = *(v16 + 8);
        v56 = v21;
        v57 = v22;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v24 = sub_1000371B4(&v58, &v56, a5, v23);
        if (v5)
        {
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v41 = v60 - v20 + 15;
          if (v60 - v20 >= 0)
          {
            v41 = v60 - v20;
          }

          v42 = v41 >> 4;
          if (v18 < v20 || v18 >= &v20[v41 & 0xFFFFFFFFFFFFFFF0])
          {
            memmove(v18, v20, 16 * v42);
          }

          else if (v18 != v20)
          {
            v43 = 16 * v42;
            __src = v18;
            v44 = v20;
            goto LABEL_60;
          }

          return 1;
        }

        v25 = v24;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (!v25)
        {
          break;
        }

        v26 = v17;
        v27 = v18;
        v28 = v18 == v17;
        v17 += 2;
        v16 = v20;
        if (!v28)
        {
          goto LABEL_18;
        }

LABEL_19:
        __src = v27 + 16;
        if (v16 >= v60 || v17 >= v53)
        {
          goto LABEL_54;
        }
      }

      v26 = v20;
      v16 = (v20 + 16);
      v27 = v18;
      if (v18 == v20)
      {
        goto LABEL_19;
      }

LABEL_18:
      *v27 = *v26;
      goto LABEL_19;
    }

    goto LABEL_54;
  }

  v51 = __src;
  v16 = a4;
  if (a4 != a2 || &a2[16 * v12] <= a4)
  {
    v29 = a2;
    memmove(a4, a2, 16 * v12);
    a2 = v29;
  }

  __src = a2;
  v60 = (v16 + 16 * v12);
  if (v10 < 16 || a2 <= v51)
  {
LABEL_54:
    v47 = &v60[-v16 + 15];
    if (&v60[-v16] >= 0)
    {
      v47 = &v60[-v16];
    }

    if (__src >= v16 && __src < v16 + (v47 & 0xFFFFFFFFFFFFFFF0) && __src == v16)
    {
      return 1;
    }

    v43 = 16 * (v47 >> 4);
    v44 = v16;
LABEL_60:
    memmove(__src, v44, v43);
    return 1;
  }

  v30 = -v16;
  v52 = v16;
  v49 = -v16;
LABEL_28:
  v31 = v5;
  v54 = __src;
  v50 = __src - 16;
  v32 = v60;
  v33 = &v60[v30];
  v6 -= 16;
  while (1)
  {
    v35 = *(v32 - 2);
    v34 = *(v32 - 1);
    v32 -= 16;
    v58 = v35;
    v59 = v34;
    v36 = *(v54 - 1);
    v56 = *(v54 - 2);
    v57 = v36;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v5 = v31;
    v38 = sub_1000371B4(&v58, &v56, a5, v37);
    if (v31)
    {
      break;
    }

    v39 = v38;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v40 = v6 + 16;
    if (v39)
    {
      if (v40 != v54)
      {
        *v6 = *v50;
      }

      v16 = v52;
      if (v60 <= v52 || (__src = v50, v30 = v49, v50 <= v51))
      {
        __src = v50;
        goto LABEL_54;
      }

      goto LABEL_28;
    }

    if (v40 != v60)
    {
      *v6 = *v32;
    }

    v33 -= 16;
    v6 -= 16;
    v60 = v32;
    if (v32 <= v52)
    {
      v60 = v32;
      v16 = v52;
      __src = v54;
      goto LABEL_54;
    }
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v33 >= 0)
  {
    v45 = v33;
  }

  else
  {
    v45 = v33 + 15;
  }

  v46 = v45 >> 4;
  v44 = v52;
  __src = v54;
  if (v54 < v52 || v54 >= &v52[v45 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v54, v52, 16 * v46);
    return 1;
  }

  if (v54 != v52)
  {
    v43 = 16 * v46;
    goto LABEL_60;
  }

  return 1;
}

uint64_t sub_10003A474(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for IndexPath();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void sub_10003A558(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = type metadata accessor for IndexPath();
  v42 = *(v40 - 8);
  __chkstk_darwin(v40);
  v41 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10.n128_f64[0] = __chkstk_darwin(v9);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40, v10);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

uint64_t sub_10003A7FC(uint64_t a1, int *a2)
{
  *(v2 + 32) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 40) = v3;
  *v3 = v2;
  v3[1] = sub_10003A8F0;

  return v5(v2 + 16);
}

uint64_t sub_10003A8F0()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_10003AA04(int a1, _BYTE *a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v11 = *&a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_collectionViewContainer];
    if (v11)
    {
      [v11 removeFromSuperview];
    }

    [*&a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconSnapshotView] removeFromSuperview];
    sub_100020968();
    sub_100020BF0();
    v12 = a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_transitionState];
    a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_transitionState] = 0;
    sub_10001B944(v12);
    v13 = &a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_mostRecentlyRequestedAnimationIdentifier];
    *v13 = 0;
    v13[1] = 0;

    *&a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockCellAnimationContexts] = 0;

    *&a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_layoutCellAnimationContexts] = 0;
  }

  static Logger.UI.getter();
  v14 = a2;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v30 = v7;
    v18 = v17;
    v19 = swift_slowAlloc();
    v28 = a1;
    v32 = v19;
    *v18 = 136315906;
    *(v18 + 4) = sub_100037B98(0xD00000000000002BLL, 0x8000000100092620, &v32);
    v29 = v6;
    *(v18 + 12) = 2080;
    v21 = *&v14[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
    v20 = *&v14[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

    v22 = sub_100037B98(v21, v20, &v32);

    *(v18 + 14) = v22;
    *(v18 + 22) = 2080;
    v31 = v14[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_transitionState];
    v23 = String.init<A>(describing:)();
    v25 = sub_100037B98(v23, v24, &v32);

    *(v18 + 24) = v25;
    *(v18 + 32) = 1024;
    *(v18 + 34) = v28 & 1;
    _os_log_impl(&_mh_execute_header, v15, v16, "%s animationCompletion identifier: %s transitionState: %s finished: %{BOOL}d", v18, 0x26u);
    swift_arrayDestroy();

    result = (*(v30 + 8))(v10, v29);
  }

  else
  {

    result = (*(v7 + 8))(v10, v6);
  }

  *(a3 + OBJC_IVAR____TtC21DockFolderViewService21AppDebugSceneDelegate_isOpened) = 0;
  return result;
}

uint64_t sub_10003AD30(__int16 a1, char a2, __int16 a3, char a4, double a5, double a6, double a7, double a8)
{
  v9 = HIBYTE(a3);
  v15 = HIBYTE(a1);
  v16 = (a1 & 1) == 0;
  if (a1)
  {
    v17 = 7233894;
  }

  else
  {
    v17 = 1684632167;
  }

  if (v16)
  {
    v18 = 0xE400000000000000;
  }

  else
  {
    v18 = 0xE300000000000000;
  }

  v19 = (a3 & 1) == 0;
  if (a3)
  {
    v20 = 7233894;
  }

  else
  {
    v20 = 1684632167;
  }

  if (v19)
  {
    v21 = 0xE400000000000000;
  }

  else
  {
    v21 = 0xE300000000000000;
  }

  if (v17 == v20 && v18 == v21)
  {
  }

  else
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v23 = 0;
    if ((v22 & 1) == 0)
    {
      return v23 & 1;
    }
  }

  v24 = sub_10001A620(v15, v9);
  v23 = a2 ^ a4 ^ 1;
  if (a6 != a8)
  {
    v23 = 0;
  }

  if (a5 != a7)
  {
    v23 = 0;
  }

  if ((v24 & 1) == 0)
  {
    v23 = 0;
  }

  return v23 & 1;
}

void sub_10003AE44(int a1, _BYTE *a2, void *a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  LODWORD(v134) = a1;
  v132 = type metadata accessor for UUID();
  v131 = *(v132 - 8);
  __chkstk_darwin(v132);
  v130 = &v125[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = type metadata accessor for Logger();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v125[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v26);
  v28 = &v125[-v27];
  __chkstk_darwin(v29);
  v133 = &v125[-v30];
  __chkstk_darwin(v31);
  v33 = &v125[-v32];
  v34 = &a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconViewAnchorFrame];
  *v34 = a4;
  v34[1] = a5;
  v34[2] = a6;
  v34[3] = a7;
  *(v34 + 32) = 0;
  v35 = *&a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_iconSnapshotView];
  v137 = a3;
  [v35 setFrame:{a4, a5, a6, a7}];
  v36 = &a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockFrame];
  *v36 = a8;
  v36[1] = a9;
  v36[2] = a10;
  v36[3] = a11;
  *(v36 + 32) = 0;
  [*&a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_hostIconSnapshotView] setFrame:{a4, a5, a6, a7}];
  [*&a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_expandedStateChevronView] setFrame:{a4, a5, a6, a7}];
  v37 = OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_transitionState;
  v38 = a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_transitionState] == 1;
  v139 = v22;
  v129 = v28;
  v135 = v38 && *&a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_dockCellAnimationContexts] && *&a2[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_layoutCellAnimationContexts] != 0;
  static Logger.UI.getter();
  v39 = a2;
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.debug.getter();

  v42 = os_log_type_enabled(v40, v41);
  v136 = v23;
  v128 = v25;
  v138 = v37;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v127 = swift_slowAlloc();
    v144[0] = v127;
    *v43 = 136316930;
    *(v43 + 4) = sub_100037B98(0xD00000000000002BLL, 0x8000000100092620, v144);
    v44 = v39;
    *(v43 + 12) = 2080;
    v45 = *&v39[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
    v46 = *&v39[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

    v47 = sub_100037B98(v45, v46, v144);

    *(v43 + 14) = v47;
    *(v43 + 22) = 2080;
    LOBYTE(v140) = a2[v138];
    v48 = String.init<A>(describing:)();
    v50 = sub_100037B98(v48, v49, v144);

    *(v43 + 24) = v50;
    *(v43 + 32) = 1024;
    *(v43 + 34) = v135;
    *(v43 + 38) = 2080;
    v140 = a4;
    v141 = a5;
    v142 = a6;
    v143 = a7;
    type metadata accessor for CGRect(0);
    v51 = String.init<A>(describing:)();
    v53 = sub_100037B98(v51, v52, v144);

    *(v43 + 40) = v53;
    *(v43 + 48) = 2080;
    v140 = a8;
    v141 = a9;
    v142 = a10;
    v143 = a11;
    v54 = String.init<A>(describing:)();
    v56 = sub_100037B98(v54, v55, v144);

    *(v43 + 50) = v56;
    *(v43 + 58) = 1024;
    *(v43 + 60) = v134 & 1;
    *(v43 + 64) = 2080;
    v57 = v39;
    v58 = [v57 description];
    v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v61 = v60;

    v23 = v136;
    v62 = sub_100037B98(v59, v61, v144);
    v39 = v44;

    *(v43 + 66) = v62;
    v37 = v138;
    _os_log_impl(&_mh_execute_header, v40, v41, "%s identifier: %s transitionState: %s retargetExistingAnimation: %{BOOL}d iconFrame: %s dockFrame: %s animated: %{BOOL}dnodes count:%s", v43, 0x4Au);
    swift_arrayDestroy();
  }

  v63 = *(v23 + 8);
  v64 = v139;
  v63(v33, v139);
  v65 = a2[v37];
  if (v65 == 3)
  {
    goto LABEL_11;
  }

  if (v65 == 1)
  {
    v78 = v39;
    v79 = v129;
    static Logger.UI.getter();
    v80 = v78;
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v126 = v82;
      v84 = v83;
      v85 = swift_slowAlloc();
      v127 = v63;
      v140 = *&v85;
      *v84 = 136315650;
      *(v84 + 4) = sub_100037B98(0xD00000000000002BLL, 0x8000000100092620, &v140);
      *(v84 + 12) = 2080;
      v86 = &v80[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
      v87 = v37;
      v133 = v39;
      v88 = *v86;
      v89 = v86[1];

      v90 = sub_100037B98(v88, v89, &v140);

      *(v84 + 14) = v90;
      *(v84 + 22) = 2080;
      LOBYTE(v144[0]) = a2[v87];
      v91 = String.init<A>(describing:)();
      v93 = sub_100037B98(v91, v92, &v140);
      v37 = v87;

      *(v84 + 24) = v93;
      v39 = v133;
      _os_log_impl(&_mh_execute_header, v81, v126, "%s identifier: %s transitionState: %s is in the middle of a expand animation. Retargeting animation", v84, 0x20u);
      swift_arrayDestroy();
      v63 = v127;
    }

    v63(v79, v64);
LABEL_19:
    v96 = v130;
    UUID.init()();
    v97 = UUID.uuidString.getter();
    v99 = v98;
    (*(v131 + 8))(v96, v132);
    v100 = &v39[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_mostRecentlyRequestedAnimationIdentifier];
    *v100 = v97;
    v100[1] = v99;

    v101 = a2[v37];
    a2[v37] = 3;
    sub_10001B944(v101);
    v102 = v100[1];
    if (!v102)
    {
      v124 = v137;

      __break(1u);
      return;
    }

    v103 = *v100;
    v104 = objc_opt_self();

    v105 = [v104 areAnimationsEnabled];
    p_type = (&stru_1000B6FF0 + 16);
    if ((v134 & 1) == 0)
    {
      v138 = v103;
      v107 = v128;
      static Logger.UI.getter();
      v108 = v39;
      v109 = Logger.logObject.getter();
      v110 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v109, v110))
      {
        v111 = swift_slowAlloc();
        v112 = swift_slowAlloc();
        v127 = v63;
        v134 = v112;
        v140 = *&v112;
        *v111 = 136315650;
        *(v111 + 4) = sub_100037B98(0xD00000000000002BLL, 0x8000000100092620, &v140);
        *(v111 + 12) = 2080;
        v113 = v105;
        v114 = v39;
        v115 = *&v108[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
        v116 = *&v108[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

        v117 = sub_100037B98(v115, v116, &v140);

        *(v111 + 14) = v117;
        v39 = v114;
        v105 = v113;
        *(v111 + 22) = 1024;
        *(v111 + 24) = 0;
        _os_log_impl(&_mh_execute_header, v109, v110, "%s identifier: %s setting animations enabled: %{BOOL}d", v111, 0x1Cu);
        swift_arrayDestroy();

        v127(v107, v139);
      }

      else
      {

        v63(v107, v139);
      }

      p_type = &stru_1000B6FF0.type;
      [v104 setAnimationsEnabled:0];
      v103 = v138;
    }

    v118 = v137;
    if (v39[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_configuration])
    {
      v119 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v119 & 1) == 0)
      {
        v120 = v118;
        v121 = v39;
        sub_10001447C(0, v135, v103, v102, v121, v121, v120, a4, a5, a6, a7);
LABEL_30:

        [v104 p_type[433]];
        return;
      }
    }

    else
    {
    }

    v122 = v118;
    v123 = v39;
    sub_1000129E8(0, v135, v103, v102, v123, v123, v122, a4, a5, a6, a7);
    goto LABEL_30;
  }

  if (a2[v37])
  {
    v95 = v39;
    goto LABEL_19;
  }

LABEL_11:
  v66 = v39;
  v67 = v133;
  static Logger.UI.getter();
  v68 = v66;
  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v140 = COERCE_DOUBLE(swift_slowAlloc());
    *v71 = 136315650;
    *(v71 + 4) = sub_100037B98(0xD00000000000002BLL, 0x8000000100092620, &v140);
    *(v71 + 12) = 2080;
    v127 = v63;
    v72 = *&v68[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier];
    v73 = *&v68[OBJC_IVAR____TtC21DockFolderViewService33DOCSBFolderPresentationController_identifier + 8];

    v74 = sub_100037B98(v72, v73, &v140);

    *(v71 + 14) = v74;
    *(v71 + 22) = 2080;
    LOBYTE(v144[0]) = a2[v138];
    v75 = String.init<A>(describing:)();
    v77 = sub_100037B98(v75, v76, &v140);

    *(v71 + 24) = v77;
    _os_log_impl(&_mh_execute_header, v69, v70, "%s identifier: %s transitionState: %s is collapsed. Ignoring request.", v71, 0x20u);
    swift_arrayDestroy();

    v127(v133, v64);
  }

  else
  {

    v63(v67, v64);
  }

  v94 = v137;
}