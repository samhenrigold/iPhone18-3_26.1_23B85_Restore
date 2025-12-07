void sub_1004DEB54()
{
  if (qword_1007673C8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003E30(v0, qword_100787F10);

  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v9 = v3;
    *v2 = 136315138;
    swift_beginAccess();
    type metadata accessor for IndexPath();
    sub_1004DF808();

    v4 = Set.description.getter();
    v6 = v5;

    v7 = sub_100004060(v4, v6, &v9);

    *(v2 + 4) = v7;
    _os_log_impl(&_mh_execute_header, oslog, v1, "TTRIAnyTreeViewDragSessionContext: draggedIndexPaths updated: %s", v2, 0xCu);
    sub_100004758(v3);
  }

  else
  {
  }
}

uint64_t *sub_1004DED40(uint64_t a1, __n128 a2)
{
  UUID.init()();
  *(v2 + qword_1007A8808) = &_swiftEmptySetSingleton;
  v4 = qword_1007A8810;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  *(v2 + v4) = Set.init()();
  *(v2 + qword_1007A8800) = a1;
  return v2;
}

uint64_t sub_1004DEE34()
{
  v1 = qword_1007A87F8;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1004DEEC4()
{
  sub_1004DEE34();

  return swift_deallocClassInstance();
}

void *sub_1004DEF34(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v5 = v4;
  v49 = a1;
  v9 = *v4;
  v10 = swift_isaMask;
  v11 = type metadata accessor for IndexPath();
  v46 = *(v11 - 8);
  v47 = v11;
  __chkstk_darwin(v11);
  v45 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v44 = &v43 - v14;
  v15 = *((v10 & v9) + 0x50);
  v16 = type metadata accessor for Optional();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v43 - v18;
  v20 = *(v15 - 8);
  __chkstk_darwin(v21);
  v23 = &v43 - v22;
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v27 = result;
  v48 = a2;
  sub_10019CB14(a2, v25, v26, v19);

  if ((*(v20 + 48))(v19, 1, v15) == 1)
  {
    (*(v17 + 8))(v19, v16);
    return _swiftEmptyArrayStorage;
  }

  (*(v20 + 32))(v23, v19, v15);
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    goto LABEL_17;
  }

  v28 = result;
  v29 = sub_10019CD00(v23);

  if (v29)
  {
LABEL_12:
    (*(v20 + 8))(v23, v15);
    return _swiftEmptyArrayStorage;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v30 = result;
  swift_getObjectType();
  v31 = sub_1001893F4();

  v32 = sub_10039C078(v31);
  if (!v32)
  {
    goto LABEL_12;
  }

  v33 = *(v5 + qword_100787F38);
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v34 = result;
  v35 = sub_1001893F4();

  v36 = v33(v35, v49, v23, a3, a4);
  if (v36 >> 62)
  {
    v42 = _CocoaArrayWrapper.endIndex.getter();
    v37 = v48;
    if (v42)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v37 = v48;
    if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_11:
      v38 = v45;
      v39 = v46;
      v40 = v47;
      (*(v46 + 16))(v45, v37, v47);
      swift_beginAccess();
      v41 = v44;
      sub_10058CCF4(v44, v38);
      (*(v39 + 8))(v41, v40);
      swift_endAccess();
      sub_1004DEB54();

      (*(v20 + 8))(v23, v15);
      return v36;
    }
  }

  (*(v20 + 8))(v23, v15);

  return v36;
}

void *sub_1004DF3B4(uint64_t a1)
{
  v2 = v1;
  v4 = *((swift_isaMask & *v2) + 0x50);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - v7;
  v9 = *(v4 - 8);
  __chkstk_darwin(v10);
  v12 = &v21 - v11;
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  v16 = result;
  sub_10019CB14(a1, v14, v15, v8);

  if ((*(v9 + 48))(v8, 1, v4) == 1)
  {
    (*(v6 + 8))(v8, v5);
    return 0;
  }

  (*(v9 + 32))(v12, v8, v4);
  v17 = *(v2 + qword_100787F40);
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    goto LABEL_8;
  }

  v18 = result;
  v19 = sub_1001893F4();

  v20 = v17(v19, v12);
  (*(v9 + 8))(v12, v4);
  return v20;
}

void sub_1004DF600(uint64_t a1)
{
  *(v1 + qword_100787F68) = a1;
  swift_unknownObjectRelease();
  v3 = *(v1 + qword_100787F48);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_1001893F4();
    swift_unknownObjectRetain();

    v3(v6, a1);
  }

  else
  {
    __break(1u);
  }
}

void sub_1004DF6AC(uint64_t a1)
{
  *(v1 + qword_100787F68) = 0;
  swift_unknownObjectRelease();
  v3 = *(v1 + qword_100787F50);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_1001893F4();

    v3(v6, a1);
  }

  else
  {
    __break(1u);
  }
}

void *sub_1004DF750(uint64_t a1)
{
  v3 = *(v1 + qword_100787F58);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = sub_1001893F4();

    v7 = v3(v6, a1);
    return (v7 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1004DF808()
{
  result = qword_100769AC0;
  if (!qword_100769AC0)
  {
    type metadata accessor for IndexPath();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100769AC0);
  }

  return result;
}

uint64_t sub_1004DF8A8(uint64_t a1, char *a2, __int16 a3)
{
  v6 = *v3;
  sub_100058000(&qword_10076CC68, &qword_100630B90);
  swift_allocObject();

  v7 = TTRTreeStorageDerivedUntouchedTree.init(baseTree:)();
  v8 = sub_1004E11AC(&qword_10076CC58, type metadata accessor for TTRIEditableSectionsPresentationTreeMaker, &unk_100630B48);
  v9 = (*(v8 + 40))(v7, a2, v6, v8);
  if (sub_1004DFC54(a2, a3 & 0x1FF)[2])
  {
    sub_100058000(&qword_100788168, &qword_100643838);
    TTRMutableTreeStorage.__allocating_init(topLevelNodeValues:)();
    sub_100058000(&qword_1007881B0, qword_100643868);
    swift_allocObject();

    v9 = TTRTreeStorageDerivedTreeWithDesignatedInitialItems.init(upstreamTree:designatedItemTree:)();

    v10 = &unk_1007881B8;
    v11 = &protocol conformance descriptor for TTRTreeStorageDerivedTreeWithDesignatedInitialItems<A, B>;
    v12 = &qword_1007881B0;
    v13 = qword_100643868;
  }

  else
  {

    v10 = &unk_1007881C0;
    v12 = &qword_10076CC20;
    v13 = &qword_100630B40;
    v11 = &protocol conformance descriptor for TTRAnyTreeStorageChainedTreeDeriving<A>;
  }

  sub_10000E188(v10, v12, v13, v11);
  return v9;
}

uint64_t sub_1004DFAB4(uint64_t a1)
{
  if (TTRRemindersListViewModel.ListInfo.shouldCategorizeGroceryItems.getter())
  {
    return sub_1004E0E94(a1, &qword_100788190, &unk_100643850, &qword_100788198);
  }

  sub_100058000(&qword_100788188, &qword_100643848);
  swift_allocObject();

  v3 = TTRRemindersListTreeWithoutEmptySectionless.init(upstreamTree:)();
  v4 = sub_1004E0E94(v3, &qword_1007881A0, &qword_100643860, &qword_1007881A8);

  return v4;
}

uint64_t sub_1004DFBB0(uint64_t a1)
{
  sub_100058000(&qword_10076CC68, &qword_100630B90);
  swift_allocObject();

  v1 = TTRTreeStorageDerivedUntouchedTree.init(baseTree:)();
  sub_10000E188(&qword_100788180, &qword_10076CC68, &qword_100630B90, &protocol conformance descriptor for TTRTreeStorageDerivedUntouchedTree<A>);
  return v1;
}

void *sub_1004DFC54(char *a1, int a2)
{
  LODWORD(v123) = a2;
  v121 = sub_100058000(&qword_100785FA8, &qword_100641CE8);
  v127 = *(v121 - 8);
  __chkstk_darwin(v121);
  v4 = &v101 - v3;
  v129 = type metadata accessor for TTRRemindersListTreeViewModel.AuxiliaryData();
  __chkstk_darwin(v129);
  v128 = &v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&unk_10076B050, &unk_100631DF0);
  __chkstk_darwin(v6 - 8);
  v111 = &v101 - v7;
  v109 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v108 = *(v109 - 8);
  __chkstk_darwin(v109);
  v110 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for TTRRemindersListViewModel.CompletedRemindersState();
  v106 = *(v107 - 8);
  __chkstk_darwin(v107);
  v105 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&qword_1007693B0, &unk_100631DC0);
  __chkstk_darwin(v10 - 8);
  v115 = &v101 - v11;
  v12 = type metadata accessor for TTRTemplatePublicLinkData();
  v118 = *(v12 - 8);
  v119 = v12;
  __chkstk_darwin(v12);
  v116 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100058000(&qword_1007693B8, &unk_10062DEC0);
  __chkstk_darwin(v14 - 8);
  v113 = &v101 - v15;
  v114 = type metadata accessor for TTRRemindersListViewModel.HashtagsState();
  v122 = *(v114 - 8);
  __chkstk_darwin(v114);
  v101 = &v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for TTRRemindersListViewModel.Item();
  v117 = *(v17 - 8);
  __chkstk_darwin(v17);
  v125 = &v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v126 = &v101 - v20;
  __chkstk_darwin(v21);
  v120 = &v101 - v22;
  __chkstk_darwin(v23);
  v104 = &v101 - v24;
  __chkstk_darwin(v25);
  v103 = &v101 - v26;
  __chkstk_darwin(v27);
  v102 = &v101 - v28;
  __chkstk_darwin(v29);
  v112 = &v101 - v30;
  __chkstk_darwin(v31);
  v33 = &v101 - v32;
  v34 = sub_100058000(&qword_100769E98, &unk_100640890);
  __chkstk_darwin(v34 - 8);
  v36 = &v101 - v35;
  v37 = type metadata accessor for TTRRemindersListTip();
  v38 = *(v37 - 8);
  __chkstk_darwin(v37);
  v40 = &v101 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_100547094(0, 5, 0, _swiftEmptyArrayStorage);
  v42 = a1;
  TTRRemindersListViewModel.ListInfo.tip.getter();
  v43 = (*(v38 + 48))(v36, 1, v37);
  v130 = v17;
  if (v43 == 1)
  {
    sub_1000079B4(v36, &qword_100769E98, &unk_100640890);
    v44 = v17;
    v45 = v117;
  }

  else
  {
    v124 = v4;
    (*(v38 + 32))(v40, v36, v37);
    (*(v38 + 16))(v33, v40, v37);
    v46 = v117;
    (*(v117 + 104))(v33, enum case for TTRRemindersListViewModel.Item.tip(_:), v17);
    v48 = v41[2];
    v47 = v41[3];
    v49 = v41;
    if (v48 >= v47 >> 1)
    {
      v49 = sub_100547094((v47 > 1), v48 + 1, 1, v41);
    }

    (*(v38 + 8))(v40, v37);
    v41 = v49;
    v49[2] = v48 + 1;
    v45 = v46;
    v44 = v130;
    (*(v46 + 32))(v41 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v48, v33, v130);
    v4 = v124;
  }

  v50 = v42;
  v51 = v113;
  TTRRemindersListViewModel.ListInfo.hashtagsStateToShow.getter();
  v52 = v122;
  v53 = v114;
  v54 = (*(v122 + 48))(v51, 1, v114);
  v55 = v120;
  v56 = v118;
  v124 = v50;
  if (v54 == 1)
  {
    sub_1000079B4(v51, &qword_1007693B8, &unk_10062DEC0);
    v57 = v115;
  }

  else
  {
    v58 = v101;
    (*(v52 + 32))(v101, v51, v53);
    v59 = *(v52 + 16);
    v60 = v112;
    v59(v112, v58, v53);
    (*(v45 + 104))(v60, enum case for TTRRemindersListViewModel.Item.hashtags(_:), v44);
    v62 = v41[2];
    v61 = v41[3];
    if (v62 >= v61 >> 1)
    {
      v41 = sub_100547094((v61 > 1), v62 + 1, 1, v41);
    }

    (*(v122 + 8))(v58, v53);
    v41[2] = v62 + 1;
    (*(v45 + 32))(v41 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v62, v112, v44);
    v57 = v115;
  }

  TTRRemindersListViewModel.ListInfo.templateStatus.getter();
  v63 = v119;
  if ((*(v56 + 48))(v57, 1, v119) == 1)
  {
    sub_1000079B4(v57, &qword_1007693B0, &unk_100631DC0);
  }

  else
  {
    v64 = v116;
    (*(v56 + 32))(v116, v57, v63);
    v65 = v102;
    (*(v56 + 16))(v102, v64, v63);
    (*(v45 + 104))(v65, enum case for TTRRemindersListViewModel.Item.templateStatus(_:), v44);
    v67 = v41[2];
    v66 = v41[3];
    if (v67 >= v66 >> 1)
    {
      v41 = sub_100547094((v66 > 1), v67 + 1, 1, v41);
    }

    (*(v56 + 8))(v116, v63);
    v41[2] = v67 + 1;
    (*(v45 + 32))(v41 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v67, v65, v44);
  }

  v68 = v123;
  v69 = v55;
  if (TTRRemindersListViewModel.ListInfo.isPublicTemplatePreview.getter())
  {
    v70 = v103;
    (*(v45 + 104))(v103, enum case for TTRRemindersListViewModel.Item.publicTemplatePreviewStatus(_:), v44);
    v72 = v41[2];
    v71 = v41[3];
    if (v72 >= v71 >> 1)
    {
      v41 = sub_100547094((v71 > 1), v72 + 1, 1, v41);
    }

    v41[2] = v72 + 1;
    (*(v45 + 32))(v41 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v72, v70, v44);
    if ((TTRRemindersListViewModel.ListInfo.isRecentlyDeletedList.getter() & 1) == 0)
    {
LABEL_18:
      if (!v68)
      {
        goto LABEL_32;
      }

      goto LABEL_26;
    }
  }

  else if ((TTRRemindersListViewModel.ListInfo.isRecentlyDeletedList.getter() & 1) == 0)
  {
    goto LABEL_18;
  }

  v73 = v104;
  (*(v45 + 104))(v104, enum case for TTRRemindersListViewModel.Item.recentlyDeletedDisclaimer(_:), v44);
  v75 = v41[2];
  v74 = v41[3];
  if (v75 >= v74 >> 1)
  {
    v41 = sub_100547094((v74 > 1), v75 + 1, 1, v41);
  }

  v41[2] = v75 + 1;
  (*(v45 + 32))(v41 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v75, v73, v44);
  if (!v68)
  {
    goto LABEL_32;
  }

LABEL_26:
  if (v68 == 1)
  {
    if ((TTRRemindersListViewModel.ListInfo.canToggleCompletedReminderVisbility.getter() & 1) == 0 || (TTRRemindersListViewModel.ListInfo.completedRemindersShown.getter() & 1) == 0 || (TTRRemindersListViewModel.ListInfo.canClearCompletedReminders.getter() & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  else if ((TTRRemindersListViewModel.ListInfo.canToggleCompletedReminderVisbility.getter() & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_32:
  v76 = v105;
  TTRRemindersListViewModel.ListInfo.completedRemindersState(completedRowHasShowHide:)();
  v77 = v106;
  v78 = v107;
  (*(v106 + 16))(v69, v76, v107);
  (*(v45 + 104))(v69, enum case for TTRRemindersListViewModel.Item.completed(_:), v44);
  v80 = v41[2];
  v79 = v41[3];
  if (v80 >= v79 >> 1)
  {
    v41 = sub_100547094((v79 > 1), v80 + 1, 1, v41);
  }

  (*(v77 + 8))(v76, v78);
  v41[2] = v80 + 1;
  (*(v45 + 32))(v41 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v80, v69, v44);
LABEL_35:
  v81 = v41[2];
  if (v81)
  {
    v131 = _swiftEmptyArrayStorage;
    sub_1004A225C(0, v81, 0);
    v122 = *(v45 + 16);
    v123 = v45 + 16;
    v82 = v131;
    v83 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    v116 = v41;
    v84 = v41 + v83;
    v85 = *(v45 + 72);
    v124 = (v45 + 8);
    v119 = v127 + 32;
    v120 = v85;
    do
    {
      v86 = v126;
      v87 = v130;
      v88 = v122;
      (v122)(v126, v84, v130);
      v88(v125, v86, v87);
      v89 = v4;
      dispatch thunk of TTRTreeStorageNodeAuxiliaryData.init()();
      v118 = sub_1004E11AC(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
      TTRTreeStorageNodeValue.init(item:auxiliaryData:children:)();
      v90 = *v124;
      (*v124)(v86, v87);
      v131 = v82;
      v92 = v82[2];
      v91 = v82[3];
      if (v92 >= v91 >> 1)
      {
        sub_1004A225C((v91 > 1), v92 + 1, 1);
        v82 = v131;
      }

      v82[2] = v92 + 1;
      (*(v127 + 32))(v82 + ((*(v127 + 80) + 32) & ~*(v127 + 80)) + *(v127 + 72) * v92, v89, v121);
      v84 = &v120[v84];
      --v81;
      v4 = v89;
    }

    while (v81);

    v93 = enum case for TTRRemindersListViewModel.SectionID.NamedID.designatedItemsSection(_:);
    v94 = type metadata accessor for TTRRemindersListViewModel.SectionID.NamedID();
    v95 = v110;
    (*(*(v94 - 8) + 104))(v110, v93, v94);
    (*(v108 + 104))(v95, enum case for TTRRemindersListViewModel.SectionID.named(_:), v109);
    v96 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle();
    (*(*(v96 - 8) + 56))(v111, 1, 1, v96);
    v97 = v126;
    TTRRemindersListViewModel.SectionHeader.init(id:title:isVisible:isTappable:isTitleEditable:isCollapsable:isCustomSmartList:listObjectID:)();
    v98 = v130;
    (*(v117 + 104))(v97, enum case for TTRRemindersListViewModel.Item.section(_:), v130);
    sub_100058000(&qword_100785FA0, &qword_100641CE0);
    v99 = swift_allocObject();
    *(v99 + 16) = xmmword_10062D400;
    (v122)(v125, v97, v98);
    TTRRemindersListTreeViewModel.AuxiliaryData.init()();
    TTRTreeStorageNodeValue.init(item:auxiliaryData:children:)();
    v90(v97, v98);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v99;
}

uint64_t sub_1004E0D00(uint64_t a1, char *a2, __int16 a3)
{
  sub_100058000(&qword_10076CC68, &qword_100630B90);
  swift_allocObject();

  v5 = TTRTreeStorageDerivedUntouchedTree.init(baseTree:)();

  if (sub_1004DFC54(a2, a3 & 0x1FF)[2])
  {
    sub_100058000(&qword_100788168, &qword_100643838);
    TTRMutableTreeStorage.__allocating_init(topLevelNodeValues:)();
    sub_100058000(&qword_100788170, &qword_100643840);
    swift_allocObject();

    v6 = TTRTreeStorageDerivedTreeWithDesignatedInitialItems.init(upstreamTree:designatedItemTree:)();

    sub_10000E188(&qword_100788178, &qword_100788170, &qword_100643840, &protocol conformance descriptor for TTRTreeStorageDerivedTreeWithDesignatedInitialItems<A, B>);
    return v6;
  }

  else
  {

    sub_10000E188(&qword_100788180, &qword_10076CC68, &qword_100630B90, &protocol conformance descriptor for TTRTreeStorageDerivedUntouchedTree<A>);
  }

  return v5;
}

uint64_t sub_1004E0E94(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  v21 = a3;
  v22 = a4;
  v5 = sub_100058000(&unk_10076B050, &unk_100631DF0);
  __chkstk_darwin(v5 - 8);
  v7 = &v21 - v6;
  v8 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TTRRemindersListViewModel.Item();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = enum case for TTRRemindersListViewModel.SectionID.NamedID.remindersInListSection(_:);
  v17 = type metadata accessor for TTRRemindersListViewModel.SectionID.NamedID();
  (*(*(v17 - 8) + 104))(v11, v16, v17);
  (*(v9 + 104))(v11, enum case for TTRRemindersListViewModel.SectionID.named(_:), v8);
  v18 = type metadata accessor for TTRRemindersListViewModel.SectionHeaderTitle();
  (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  TTRRemindersListViewModel.SectionHeader.init(id:title:isVisible:isTappable:isTitleEditable:isCollapsable:isCustomSmartList:listObjectID:)();
  (*(v13 + 104))(v15, enum case for TTRRemindersListViewModel.Item.sectionsContainer(_:), v12);
  v19 = v21;
  sub_100058000(a2, v21);
  swift_allocObject();

  TTRTreeStorageDerivedRerootedTree.init(upstreamTree:rootItem:)();
  sub_10000E188(v22, a2, v19, &protocol conformance descriptor for TTRTreeStorageDerivedRerootedTree<A>);
  sub_100058000(&qword_10076CC20, &qword_100630B40);
  swift_allocObject();
  return TTRAnyTreeStorageChainedTreeDeriving.init(_:)();
}

uint64_t sub_1004E11AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1004E11F4(uint64_t result)
{
  v2 = OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_customAccessoryView;
  v3 = *(v1 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_customAccessoryView);
  v4 = *&v3[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView_gridView];
  if (!v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  v6 = v3;
  v7 = [objc_msgSend(v4 columnAtIndex:{1), "isHidden"}];

  result = swift_unknownObjectRelease();
  if (v7 == (v5 & 1))
  {
    return result;
  }

  v8 = *(v1 + v2);
  v9 = *&v8[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView_gridView];
  if (!v9)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v10 = v8;
  [objc_msgSend(v9 columnAtIndex:{1), "setHidden:", v5 & 1}];

  return swift_unknownObjectRelease();
}

id sub_1004E1314()
{
  v1 = OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell____lazy_storage___fillerView;
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell____lazy_storage___fillerView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell____lazy_storage___fillerView);
  }

  else
  {
    v4 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_1004E1398()
{
  v1 = v0;
  v2 = type metadata accessor for TTRITreeViewCellModel();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&unk_1007884E0, &unk_10062FC40);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_treeCellViewModel;
  swift_beginAccess();
  sub_10000794C(&v1[v9], v8, &unk_1007884E0, &unk_10062FC40);
  if ((*(v3 + 48))(v8, 1, v2))
  {
    sub_1000079B4(v8, &unk_1007884E0, &unk_10062FC40);
    v10 = 12.0;
  }

  else
  {
    (*(v3 + 16))(v5, v8, v2);
    sub_1000079B4(v8, &unk_1007884E0, &unk_10062FC40);
    v11 = TTRITreeViewCellModel.level.getter();
    (*(v3 + 8))(v5, v2);
    v10 = v11 * 16.0 + 12.0;
  }

  v12 = &v1[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_totalIndentation];
  *v12 = v10;
  *(v12 + 8) = 0;
  v13 = [v1 containerView];
  [v13 setDirectionalLayoutMargins:{11.0, v10, 11.0, 0.0}];

  [v1 setNeedsLayout];
  return 0;
}

double sub_1004E15F0()
{
  v1 = v0;
  v69 = _swiftEmptyArrayStorage;
  v2 = *&v0[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_subtitleLabel];
  v3 = [v2 text];
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = v3;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = v2;
  }

  else
  {
LABEL_6:
    v2 = 0;
  }

  if ((v1[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_unitTest_forceLargeTextLayout] & 1) == 0)
  {
    v10 = [v1 traitCollection];
    v11 = [v10 preferredContentSizeCategory];

    LOBYTE(v10) = UIContentSizeCategory.isAccessibilityCategory.getter();
    if ((v10 & 1) == 0)
    {
      v67 = v2;
      sub_100058000(&qword_10076B920, &qword_10062FC60);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_10062F800;
      v41 = OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_leadingControl;
      v42 = *&v1[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_leadingControl];
      v43 = *&v1[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_iconContainerView];
      *(v40 + 32) = v42;
      *(v40 + 40) = v43;
      v44 = *&v1[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_titleLabel];
      *(v40 + 48) = v44;
      aBlock[0] = v40;
      v45 = v42;
      v65 = v43;
      v46 = v44;
      sub_100058000(&qword_100780A08, &qword_100642AF0);
      sub_100003540(0, &qword_10076B020, UIView_ptr);
      sub_10000E188(&qword_100788500, &qword_100780A08, &qword_100642AF0, &protocol conformance descriptor for [A]);
      v47 = Sequence.removingNils<A>()();

      v29 = v69;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_100547B84(0, v69[2] + 1, 1, v69);
      }

      v49 = v29[2];
      v48 = v29[3];
      if (v49 >= v48 >> 1)
      {
        v29 = sub_100547B84((v48 > 1), v49 + 1, 1, v29);
      }

      v29[2] = v49 + 1;
      v29[v49 + 4] = v47;
      v69 = v29;
      v32 = v67;
      if (!v67)
      {
        goto LABEL_37;
      }

      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_10062F800;
      v51 = *&v1[v41];
      *(v50 + 32) = v51;
      *(v50 + 40) = v43;
      *(v50 + 48) = v67;
      aBlock[0] = v50;
      v52 = v51;
      v53 = v67;
      v54 = v65;
      v55 = Sequence.removingNils<A>()();

      v29 = v69;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_100547B84(0, v69[2] + 1, 1, v69);
      }

      v57 = v29[2];
      v56 = v29[3];
      if (v57 >= v56 >> 1)
      {
        v29 = sub_100547B84((v56 > 1), v57 + 1, 1, v29);
      }

      v29[2] = v57 + 1;
      v29[v57 + 4] = v55;
      goto LABEL_36;
    }
  }

  v12 = OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_leadingControl;
  v13 = *&v1[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_leadingControl];
  if (v13)
  {
    v14 = v13;
    v66 = sub_1004E1314();
  }

  else
  {
    v66 = 0;
  }

  sub_100058000(&qword_10076B920, &qword_10062FC60);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10062D3F0;
  v16 = *&v1[v12];
  v17 = *&v1[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_iconContainerView];
  *(v15 + 32) = v16;
  *(v15 + 40) = v17;
  aBlock[0] = v15;
  v18 = v16;
  v19 = v17;
  sub_100058000(&qword_100780A08, &qword_100642AF0);
  sub_100003540(0, &qword_10076B020, UIView_ptr);
  sub_10000E188(&qword_100788500, &qword_100780A08, &qword_100642AF0, &protocol conformance descriptor for [A]);
  v20 = Sequence.removingNils<A>()();

  v21 = v69;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = sub_100547B84(0, v69[2] + 1, 1, v69);
  }

  v23 = v21[2];
  v22 = v21[3];
  if (v23 >= v22 >> 1)
  {
    v21 = sub_100547B84((v22 > 1), v23 + 1, 1, v21);
  }

  v21[2] = v23 + 1;
  v21[v23 + 4] = v20;
  v69 = v21;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_10062D3F0;
  v25 = *&v1[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_titleLabel];
  *(v24 + 32) = v66;
  *(v24 + 40) = v25;
  aBlock[0] = v24;
  v26 = v66;
  v27 = v25;
  v28 = Sequence.removingNils<A>()();

  v29 = v69;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v29 = sub_100547B84(0, v69[2] + 1, 1, v69);
  }

  v31 = v29[2];
  v30 = v29[3];
  if (v31 >= v30 >> 1)
  {
    v29 = sub_100547B84((v30 > 1), v31 + 1, 1, v29);
  }

  v29[2] = v31 + 1;
  v29[v31 + 4] = v28;
  v69 = v29;
  v32 = v2;
  if (!v2)
  {

    goto LABEL_37;
  }

  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_10062D3F0;
  *(v33 + 32) = v66;
  *(v33 + 40) = v2;
  aBlock[0] = v33;
  v34 = v2;
  v35 = v26;
  v36 = v34;
  v37 = Sequence.removingNils<A>()();

  v29 = v69;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    v39 = v29[2];
    v38 = v29[3];
    if (v39 >= v38 >> 1)
    {
      v29 = sub_100547B84((v38 > 1), v39 + 1, 1, v29);
    }

    v29[2] = v39 + 1;
    v29[v39 + 4] = v37;
LABEL_36:
    v69 = v29;
LABEL_37:
    v58 = [v1 containerView];
    v59 = [v58 arrangedSubviewRows];

    if (v59)
    {
      sub_100058000(&unk_10076BCD0, &qword_1006393C0);
      v60 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v61 = sub_10012678C(v60, v29);

      if (v61)
      {
        break;
      }
    }

    v36 = [v1 containerView];
    v29 = swift_allocObject();
    v29[2] = v1;
    v29[3] = &v69;
    v37 = swift_allocObject();
    v35 = sub_1004E49C8;
    *(v37 + 16) = sub_1004E49C8;
    *(v37 + 24) = v29;
    aBlock[4] = sub_100026410;
    aBlock[5] = v37;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100026440;
    aBlock[3] = &unk_10072C580;
    v62 = _Block_copy(aBlock);
    v63 = v1;

    [v36 performBatchUpdates:v62];

    _Block_release(v62);
    LOBYTE(v62) = swift_isEscapingClosureAtFileLocation();

    if ((v62 & 1) == 0)
    {
      goto LABEL_41;
    }

    __break(1u);
LABEL_43:
    v29 = sub_100547B84(0, v29[2] + 1, 1, v29);
  }

  v35 = 0;
  v29 = 0;
LABEL_41:

  return sub_1000301AC(v35, v29);
}

uint64_t sub_1004E1E80()
{
  v1 = type metadata accessor for TTRITreeViewCellModel();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100058000(&unk_1007884E0, &unk_10062FC40);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_treeCellViewModel;
  swift_beginAccess();
  sub_10000794C(v0 + v8, v7, &unk_1007884E0, &unk_10062FC40);
  if ((*(v2 + 48))(v7, 1, v1))
  {
    sub_1000079B4(v7, &unk_1007884E0, &unk_10062FC40);
  }

  else
  {
    v10 = v0;
    (*(v2 + 16))(v4, v7, v1);
    sub_1000079B4(v7, &unk_1007884E0, &unk_10062FC40);
    v11 = TTRITreeViewCellModel.level.getter();
    (*(v2 + 8))(v4, v1);
    if (v11 > 0 && *(v10 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_ttriAccessibilityGroupName + 8))
    {
      return static TTRAccesibility.AccountsList.Format.GroupMemberName_ItemCount.getter();
    }
  }

  return static TTRAccesibility.AccountsList.Format.Name_ItemCount.getter();
}

char *sub_1004E20B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_getObjectType();
  v5 = &v3[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_ttriAccessibilityCount];
  *v5 = 0;
  v5[8] = 1;
  v6 = &v3[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_ttriAccessibilityGroupName];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_treeCellViewModel;
  v8 = type metadata accessor for TTRITreeViewCellModel();
  (*(*(v8 - 8) + 56))(&v3[v7], 1, 1, v8);
  *&v3[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_treeCellViewDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_leadingControl] = 0;
  v3[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_unitTest_forceLargeTextLayout] = 0;
  *&v3[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_ttriAccessibilityAdditionalLabelAttributes] = 0;
  v9 = &v3[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_totalIndentation];
  *v9 = 0;
  v9[8] = 1;
  v3[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_needsUpdateGridSubviewRows] = 1;
  *&v3[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell____lazy_storage___fillerView] = 0;
  v10 = [objc_allocWithZone(UIView) init];
  v11 = OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_iconContainerView;
  *&v3[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_iconContainerView] = v10;
  v12 = v11;
  v74 = v11;
  [v10 setMinimumLayoutSize:{32.0, 32.0}];
  v13 = *&v3[v12];
  [v13 minimumLayoutSize];
  [v13 setMaximumLayoutSize:?];

  v14 = [objc_allocWithZone(UILabel) init];
  v15 = OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_titleLabel;
  *&v3[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_titleLabel] = v14;
  [v14 setNumberOfLines:0];
  [*&v3[v15] setUserInteractionEnabled:0];
  v16 = *&v3[v15];
  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 labelColor];
  [v18 setTextColor:v19];

  v20 = *&v4[v15];
  sub_100003540(0, &qword_100771DF0, UIFont_ptr);
  v21 = v20;
  v22 = static UIFont.roundedBodyFont.getter();
  [v21 setFont:v22];

  v69 = v15;
  [*&v4[v15] setAdjustsFontForContentSizeCategory:1];
  v23 = [objc_allocWithZone(UILabel) init];
  v24 = OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_subtitleLabel;
  *&v4[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_subtitleLabel] = v23;
  [v23 setNumberOfLines:1];
  [*&v4[v24] setUserInteractionEnabled:0];
  v25 = v24;
  v26 = *&v4[v24];
  v27 = [v17 secondaryLabelColor];
  [v26 setTextColor:v27];

  v28 = *&v4[v25];
  v29 = static UIFont.roundedFootnoteFont.getter();
  [v28 setFont:v29];

  v73 = v25;
  [*&v4[v25] setAdjustsFontForContentSizeCategory:1];
  sub_100003540(0, &qword_10076B020, UIView_ptr);
  sub_100058000(&unk_100771E00, &unk_100634260);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_10062F800;
  v68 = *&v4[v74];
  *(v30 + 32) = v68;
  *(v30 + 40) = 1144750080;
  v31 = *&v4[v15];
  *(v30 + 48) = v31;
  *(v30 + 56) = 1132068864;
  v32 = *&v4[v25];
  *(v30 + 64) = v32;
  *(v30 + 72) = 1132068864;
  sub_100058000(&qword_1007884F0, &unk_1006393E0);
  v33 = type metadata accessor for TTRIViewContentPriorityType();
  v34 = *(v33 - 8);
  v35 = *(v34 + 72);
  v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v72 = v36;
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_10062D3F0;
  v38 = (v37 + v36);
  *v38 = 0;
  v71 = enum case for TTRIViewContentPriorityType.hugging(_:);
  v39 = *(v34 + 104);
  v39(v37 + v36);
  *(v38 + v35) = 0;
  v70 = enum case for TTRIViewContentPriorityType.compressionResistance(_:);
  v39(v38 + v35);
  v40 = v68;
  v41 = v31;
  v42 = v32;
  static UIView.setContentPriorities(_:for:)();

  v43 = swift_allocObject();
  v44 = *&v4[v74];
  *(v43 + 16) = xmmword_10062F800;
  *(v43 + 32) = v44;
  *(v43 + 40) = 1144750080;
  v45 = *&v4[v69];
  *(v43 + 48) = v45;
  type metadata accessor for UILayoutPriority(0);
  v76 = 1065353216;
  v77 = 1144750080;
  sub_1004E4980(&unk_10077A6B0, type metadata accessor for UILayoutPriority, &protocol conformance descriptor for UILayoutPriority);
  v46 = v44;
  v47 = v45;
  static _UIKitNumericRawRepresentable.- infix(_:_:)();
  v48 = *&v4[v73];
  *(v43 + 64) = v48;
  v77 = 1144750080;
  v76 = 0x40000000;
  v49 = v48;
  static _UIKitNumericRawRepresentable.- infix(_:_:)();
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_10062D3F0;
  v51 = v50 + v72;
  *(v50 + v72) = 1;
  (v39)(v50 + v72, v71, v33);
  *(v51 + v35) = 1;
  (v39)(v51 + v35, v70, v33);
  static UIView.setContentPriorities(_:for:)();

  type metadata accessor for TTRIAccountsListsCellAccessoryView();
  v52 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_customAccessoryView] = v52;
  result = *&v52[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView_gridView];
  if (result)
  {
    [result setMinimumLayoutSize:{44.0, 44.0}];
    if (a3)
    {
      v54 = String._bridgeToObjectiveC()();
    }

    else
    {
      v54 = 0;
    }

    v75.receiver = v4;
    v75.super_class = type metadata accessor for TTRIAccountsListsBaseCell(0);
    v55 = objc_msgSendSuper2(&v75, "initWithStyle:reuseIdentifier:", a1, v54);

    v56 = v55;
    v57 = [v56 containerView];
    [v57 setHorizontalDistribution:0];
    [v57 setVerticalDistribution:0];
    [v57 setHorizontalAlignment:0];
    [v57 setVerticalAlignment:3];
    [v57 setColumnSpacing:12.0];
    [v57 setRowSpacing:0.0];
    v58 = v57;
    [v58 setDebugBoundingBoxesEnabled:0];
    [v58 setPreservesSuperviewLayoutMargins:0];
    [v58 setDelegate:v56];

    sub_1004E1398();
    v59 = OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_customAccessoryView;
    *(*&v56[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_customAccessoryView] + OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView_layoutDelegate + 8) = &off_10072C4F8;
    result = swift_unknownObjectWeakAssign();
    v60 = *&v56[v59];
    v61 = *&v60[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView_gridView];
    if (v61)
    {
      v62 = v60;
      [v61 intrinsicContentSize];
      [v62 frame];
      [v62 setFrame:?];

      v63 = *&v56[v59];
      v64 = v56;
      [v64 setAccessoryView:v63];
      [v64 setAccessoryType:0];

      sub_100058000(&unk_10076BD70, &unk_10062FF20);
      v65 = swift_allocObject();
      *(v65 + 16) = xmmword_10062D400;
      *(v65 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
      *(v65 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
      UIView.registerForTraitChanges<A>(_:handler:)();

      swift_unknownObjectRelease();

      return v64;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1004E2CA8(uint64_t a1, uint64_t a2)
{
  v8.receiver = v2;
  v8.super_class = type metadata accessor for TTRIAccountsListsBaseCell(0);
  objc_msgSendSuper2(&v8, "didUpdateFocusInContext:withAnimationCoordinator:", a1, a2);
  if ((static UIAccessibility.ttriIsFullKeyboardAccessRunning.getter() & 1) == 0)
  {
    if ([v2 isFocused])
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    v6 = [v2 contentView];
    [v6 setOverrideUserInterfaceStyle:v5];

    v7 = [v2 accessoryView];
    [v7 setOverrideUserInterfaceStyle:v5];
  }
}

uint64_t sub_1004E2F28()
{
  v1 = v0;
  v2 = type metadata accessor for TTRITreeViewCellModel();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v49 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100058000(&unk_1007884E0, &unk_10062FC40);
  *&v6 = __chkstk_darwin(v5 - 8).n128_u64[0];
  v8 = &v48 - v7;
  v9 = [*(v0 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_titleLabel) text];
  if (v9)
  {
    v10 = v9;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v11 = static TTRAccesibility.General.Label.Untitled.getter();
    v13 = v14;
  }

  sub_100058000(&unk_100771E10, &qword_100634270);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10062D400;
  *(v15 + 32) = v11;
  *(v15 + 40) = v13;
  v51 = v15;
  v16 = *(v1 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_subtitleLabel);
  v17 = [v16 text];
  if (v17)
  {
    v18 = v17;
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v22 = HIBYTE(v21) & 0xF;
    if ((v21 & 0x2000000000000000) == 0)
    {
      v22 = v19 & 0xFFFFFFFFFFFFLL;
    }

    if (v22)
    {
      v23 = [v16 text];
      if (v23)
      {
        v24 = v23;
        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;

        v29 = *(v15 + 16);
        v28 = *(v15 + 24);
        if (v29 >= v28 >> 1)
        {
          v15 = sub_100546970((v28 > 1), v29 + 1, 1, v15);
        }

        *(v15 + 16) = v29 + 1;
        v30 = v15 + 16 * v29;
        *(v30 + 32) = v25;
        *(v30 + 40) = v27;
        v51 = v15;
      }
    }
  }

  if (*(v1 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_ttriAccessibilityAdditionalLabelAttributes))
  {

    sub_100081340(v31);
    v15 = v51;
  }

  v50[0] = v15;
  static TTRAccesibility.General.Label.Separator.getter();
  sub_100058000(&unk_100781F20, &unk_10062D7E0);
  sub_10000E188(&qword_100771E20, &unk_100781F20, &unk_10062D7E0, &protocol conformance descriptor for [A]);
  v32 = BidirectionalCollection<>.joined(separator:)();
  v34 = v33;

  (*((swift_isaMask & *v1) + 0x1E0))(v35);
  if (*(v1 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_ttriAccessibilityCount + 8))
  {
    v36 = 0;
  }

  else
  {
    v36 = *(v1 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_ttriAccessibilityCount);
  }

  v37 = OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_treeCellViewModel;
  swift_beginAccess();
  sub_10000794C(v1 + v37, v8, &unk_1007884E0, &unk_10062FC40);
  if ((*(v3 + 48))(v8, 1, v2))
  {
    sub_1000079B4(v8, &unk_1007884E0, &unk_10062FC40);
  }

  else
  {
    v42 = v49;
    (*(v3 + 16))(v49, v8, v2);
    sub_1000079B4(v8, &unk_1007884E0, &unk_10062FC40);
    v43 = TTRITreeViewCellModel.level.getter();
    (*(v3 + 8))(v42, v2);
    if (v43 > 0)
    {
      v44 = *(v1 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_ttriAccessibilityGroupName + 8);
      if (v44)
      {
        v45 = *(v1 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_ttriAccessibilityGroupName);
        sub_100058000(&unk_100786CB0, &qword_100636EF0);
        v46 = swift_allocObject();
        *(v46 + 16) = xmmword_10062F800;
        *(v46 + 56) = &type metadata for String;
        v47 = sub_10005C390();
        *(v46 + 32) = v32;
        *(v46 + 40) = v34;
        *(v46 + 96) = &type metadata for Int;
        *(v46 + 104) = &protocol witness table for Int;
        *(v46 + 64) = v47;
        *(v46 + 72) = v36;
        *(v46 + 136) = &type metadata for String;
        *(v46 + 144) = v47;
        *(v46 + 112) = v45;
        *(v46 + 120) = v44;

        goto LABEL_20;
      }
    }
  }

  sub_100058000(&unk_100786CB0, &qword_100636EF0);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_10062D3F0;
  *(v38 + 56) = &type metadata for String;
  v39 = sub_10005C390();
  *(v38 + 32) = v32;
  *(v38 + 40) = v34;
  *(v38 + 96) = &type metadata for Int;
  *(v38 + 104) = &protocol witness table for Int;
  *(v38 + 64) = v39;
  *(v38 + 72) = v36;
LABEL_20:
  v40 = String.init(format:_:)();

  return v40;
}

void sub_1004E36B0(char *a1, uint64_t *a2)
{
  v3 = [a1 containerView];

  sub_100058000(&unk_10076BCD0, &qword_1006393C0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 setArrangedSubviewRows:isa];

  v5 = [a1 containerView];
  [v5 setAlignment:1 forView:*&a1[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_iconContainerView] inAxis:0];
}

id sub_1004E37A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIAccountsListsBaseCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for TTRIAccountsListsBaseCell(uint64_t a1)
{
  result = qword_100788220;
  if (!qword_100788220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004E3920(uint64_t a1)
{
  sub_1003373BC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1004E39FC(uint64_t a1, void *a2)
{
  v64 = a2;
  v70 = type metadata accessor for TTRITreeViewExpandedState();
  v73 = *(v70 - 8);
  __chkstk_darwin(v70);
  v63 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v65 = &v60 - v6;
  v66 = sub_100058000(&unk_100771B50, &unk_10062FCE0);
  __chkstk_darwin(v66);
  v69 = &v60 - v7;
  v8 = sub_100058000(&qword_10076B9C0, &unk_10063B820);
  __chkstk_darwin(v8 - 8);
  v62 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v67 = &v60 - v11;
  __chkstk_darwin(v12);
  v68 = &v60 - v13;
  v14 = type metadata accessor for TTRITreeViewCellModel();
  v72 = *(v14 - 8);
  __chkstk_darwin(v14);
  v74 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100058000(&unk_1007884E0, &unk_10062FC40);
  __chkstk_darwin(v16 - 8);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v60 - v20;
  __chkstk_darwin(v22);
  v24 = &v60 - v23;
  __chkstk_darwin(v25);
  v27 = &v60 - v26;
  v28 = OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_treeCellViewModel;
  swift_beginAccess();
  sub_10000794C(v2 + v28, v27, &unk_1007884E0, &unk_10062FC40);
  sub_10000794C(a1, v24, &unk_1007884E0, &unk_10062FC40);
  swift_beginAccess();
  sub_100337758(v24, v2 + v28);
  swift_endAccess();
  v29 = v72;
  sub_10000794C(a1, v21, &unk_1007884E0, &unk_10062FC40);
  v30 = *(v29 + 48);
  if (v30(v21, 1, v14) != 1)
  {
    (*(v29 + 32))(v74, v21, v14);
    v61 = v27;
    sub_10000794C(v27, v18, &unk_1007884E0, &unk_10062FC40);
    if (v30(v18, 1, v14) == 1)
    {
      sub_1000079B4(v18, &unk_1007884E0, &unk_10062FC40);
      v32 = 1;
      v33 = v68;
    }

    else
    {
      v33 = v68;
      TTRITreeViewCellModel.expandedState.getter();
      (*(v29 + 8))(v18, v14);
      v32 = 0;
    }

    v34 = v67;
    v35 = v73;
    v36 = *(v73 + 56);
    v37 = v70;
    v36(v33, v32, 1, v70);
    TTRITreeViewCellModel.expandedState.getter();
    v36(v34, 0, 1, v37);
    v38 = *(v66 + 48);
    v39 = v69;
    sub_10000794C(v33, v69, &qword_10076B9C0, &unk_10063B820);
    v40 = v39;
    sub_10000794C(v34, v39 + v38, &qword_10076B9C0, &unk_10063B820);
    v41 = *(v35 + 48);
    if (v41(v40, 1, v37) == 1)
    {
      sub_1000079B4(v34, &qword_10076B9C0, &unk_10063B820);
      v42 = v69;
      sub_1000079B4(v33, &qword_10076B9C0, &unk_10063B820);
      if (v41(v42 + v38, 1, v37) == 1)
      {
        sub_1000079B4(v42, &qword_10076B9C0, &unk_10063B820);
LABEL_17:
        sub_1004E1398();
LABEL_18:
        (*(v29 + 8))(v74, v14);
        v31 = v61;
        return sub_1000079B4(v31, &unk_1007884E0, &unk_10062FC40);
      }
    }

    else
    {
      v43 = v62;
      sub_10000794C(v40, v62, &qword_10076B9C0, &unk_10063B820);
      if (v41(v40 + v38, 1, v37) != 1)
      {
        v57 = v73;
        v44 = v65;
        (*(v73 + 32))(v65, v40 + v38, v37);
        sub_1004E4980(&qword_10076B990, &type metadata accessor for TTRITreeViewExpandedState, &protocol conformance descriptor for TTRITreeViewExpandedState);
        LODWORD(v66) = dispatch thunk of static Equatable.== infix(_:_:)();
        v58 = *(v57 + 8);
        v58(v44, v70);
        sub_1000079B4(v67, &qword_10076B9C0, &unk_10063B820);
        sub_1000079B4(v68, &qword_10076B9C0, &unk_10063B820);
        v58(v43, v70);
        v37 = v70;
        sub_1000079B4(v40, &qword_10076B9C0, &unk_10063B820);
        if (v66)
        {
          goto LABEL_17;
        }

LABEL_12:
        TTRITreeViewCellModel.expandedState.getter();
        v45 = v73;
        v46 = v63;
        (*(v73 + 104))(v63, enum case for TTRITreeViewExpandedState.expanded(_:), v37);
        v47 = static TTRITreeViewExpandedState.== infix(_:_:)();
        v48 = *(v45 + 8);
        v48(v46, v37);
        v48(v44, v37);
        v49 = *&v71[OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_customAccessoryView];
        v50 = v49[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView_isExpanded];
        v49[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView_isExpanded] = v47 & 1;
        if ((v47 & 1) != v50)
        {
          v51 = v49;
          sub_1004B2404();
        }

        v52 = v71;
        sub_1004E1398();
        [v52 setNeedsLayout];
        v53 = v64;
        sub_10000C36C(v64, v64[3]);
        if (dispatch thunk of TTRITreeViewAnimating.isAnimated.getter())
        {
          sub_10000C36C(v53, v53[3]);
          v54 = swift_allocObject();
          v55 = v71;
          *(v54 + 16) = v71;
          v56 = v55;
          dispatch thunk of TTRITreeViewAnimating.addAnimations(_:)();
        }

        goto LABEL_18;
      }

      sub_1000079B4(v67, &qword_10076B9C0, &unk_10063B820);
      v42 = v69;
      sub_1000079B4(v68, &qword_10076B9C0, &unk_10063B820);
      (*(v73 + 8))(v43, v37);
    }

    sub_1000079B4(v42, &unk_100771B50, &unk_10062FCE0);
    v44 = v65;
    goto LABEL_12;
  }

  sub_1000079B4(v27, &unk_1007884E0, &unk_10062FC40);
  v31 = v21;
  return sub_1000079B4(v31, &unk_1007884E0, &unk_10062FC40);
}

uint64_t sub_1004E42E8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_treeCellViewModel;
  swift_beginAccess();
  return sub_10000794C(v3 + v4, a1, &unk_1007884E0, &unk_10062FC40);
}

uint64_t sub_1004E43A8(uint64_t a1, uint64_t a2)
{
  v4 = *v2 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_treeCellViewDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1004E4418(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  v6 = OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_treeCellViewDelegate;
  *(v3 + 40) = *v1;
  *(v3 + 48) = v6;
  v7 = v5 + v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = *(v7 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v9;
  return sub_10017D654;
}

void sub_1004E45F4(void *a1)
{
  v2 = v1;
  v4 = [v2 accessoryView];
  if (v4)
  {
    v5 = v4;
    sub_100003540(0, &qword_10076B020, UIView_ptr);
    v6 = a1;
    v7 = static NSObject.== infix(_:_:)();

    if (v7)
    {
      [v6 bounds];
      v10 = *&v6[OBJC_IVAR____TtC9Reminders34TTRIAccountsListsCellAccessoryView_gridView];
      if (v10)
      {
        v11 = v8;
        v12 = v9;
        [v10 intrinsicContentSize];
        if (v14 != v11 || v13 != v12)
        {
          [v6 frame];
          [v6 setFrame:?];

          [v2 setNeedsLayout];
        }
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_1004E4748(void *a1, void *a2)
{
  v4 = [a1 traitCollection];
  v5 = [v4 preferredContentSizeCategory];

  LODWORD(v4) = UIContentSizeCategory.isAccessibilityCategory.getter() & 1;
  v6 = [a2 preferredContentSizeCategory];
  LODWORD(v5) = UIContentSizeCategory.isAccessibilityCategory.getter() & 1;

  if (v4 != v5)
  {
    *(a1 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_needsUpdateGridSubviewRows) = 1;

    [a1 setNeedsLayout];
  }
}

void sub_1004E482C()
{
  v1 = v0 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_ttriAccessibilityCount;
  *v1 = 0;
  *(v1 + 8) = 1;
  v2 = (v0 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_ttriAccessibilityGroupName);
  *v2 = 0;
  v2[1] = 0;
  v3 = OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_treeCellViewModel;
  v4 = type metadata accessor for TTRITreeViewCellModel();
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  *(v0 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_treeCellViewDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_leadingControl) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_unitTest_forceLargeTextLayout) = 0;
  *(v0 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_ttriAccessibilityAdditionalLabelAttributes) = 0;
  v5 = v0 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_totalIndentation;
  *v5 = 0;
  *(v5 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell_needsUpdateGridSubviewRows) = 1;
  *(v0 + OBJC_IVAR____TtC9Reminders25TTRIAccountsListsBaseCell____lazy_storage___fillerView) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1004E4980(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1004E49D0()
{
  v1 = v0;
  v2 = type metadata accessor for TTRRemindersListEditableSectionNameViewModel();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v26 - v11;
  v13 = sub_100058000(&unk_100776BC0, &qword_10062F2B0);
  __chkstk_darwin(v13 - 8);
  v15 = &v26 - v14;
  Strong = swift_unknownObjectWeakLoadStrong();
  v17 = &unk_1007A8000;
  if (Strong)
  {
    v29 = v2;
    v27 = v3;
    swift_getObjectType();
    v28 = v5;
    v18 = v9;
    v19 = v12;
    v20 = v7;
    v21 = v6;
    v22 = OBJC_IVAR____TtC9Reminders45TTRIRemindersListEditableSectionNamePresenter_viewModel;
    swift_beginAccess();
    v23 = v0 + v22;
    v6 = v21;
    v7 = v20;
    v12 = v19;
    v9 = v18;
    sub_100277260(v23, v15);
    v2 = v29;
    v3 = v27;
    v5 = v28;
    dispatch thunk of TTRRemindersListEditableSectionNamePresenterDelegate.update(viewModel:)();
    swift_unknownObjectRelease();
    sub_1000079B4(v15, &unk_100776BC0, &qword_10062F2B0);
    v17 = &unk_1007A8000;
  }

  v24 = v17[269];
  swift_beginAccess();
  result = (*(v3 + 48))(v1 + v24, 1, v2);
  if (!result)
  {
    (*(v3 + 16))(v5, v1 + v24, v2);
    TTRRemindersListEditableSectionNameViewModel.item.getter();
    (*(v3 + 8))(v5, v2);
    (*(v7 + 32))(v12, v9, v6);
    swift_getObjectType();
    dispatch thunk of TTRRemindersListEditableSectionNameEditingPresenterType.updateItemAfterStateChangeIfNeeded(viewModelItem:)();
    return (*(v7 + 8))(v12, v6);
  }

  return result;
}

uint64_t sub_1004E4D04()
{
  v1 = type metadata accessor for TTRRemindersListViewModel.Item.SectionCasesItem();
  v28 = *(v1 - 8);
  v29 = v1;
  __chkstk_darwin(v1);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  v26 = *(v4 - 8);
  v27 = v4;
  __chkstk_darwin(v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRemindersListEditableSectionNameViewModel();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100058000(&qword_10076B070, &unk_100637140);
  __chkstk_darwin(v11 - 8);
  v13 = &v25 - v12;
  v14 = sub_100058000(&qword_100776288, &unk_100636840);
  __chkstk_darwin(v14);
  v16 = &v25 - v15;
  v17 = OBJC_IVAR____TtC9Reminders45TTRIRemindersListEditableSectionNamePresenter_viewModel;
  swift_beginAccess();
  if ((*(v8 + 48))(v0 + v17, 1, v7))
  {
    goto LABEL_4;
  }

  (*(v8 + 16))(v10, v0 + v17, v7);
  TTRRemindersListEditableSectionNameViewModel.item.getter();
  (*(v8 + 8))(v10, v7);
  TTRRemindersListViewModel.Item.sectionCasesOnly.getter();
  (*(v26 + 8))(v6, v27);
  TTRRemindersListViewModel.Item.SectionCasesItem.id.getter();
  (*(v28 + 8))(v3, v29);
  v18 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v13, 1, v18) == 1)
  {
    sub_1000079B4(v13, &qword_10076B070, &unk_100637140);
LABEL_4:
    v20 = type metadata accessor for TTRRemindersListViewModel.SectionID.EditableCasesSectionID();
    (*(*(v20 - 8) + 56))(v16, 1, 1, v20);
    return 0;
  }

  TTRRemindersListViewModel.SectionID.editableSectionCasesOnly.getter();
  (*(v19 + 8))(v13, v18);
  v22 = type metadata accessor for TTRRemindersListViewModel.SectionID.EditableCasesSectionID();
  v23 = *(v22 - 8);
  (*(v23 + 56))(v16, 0, 1, v22);
  v24 = (*(v23 + 88))(v16, v22);
  if (v24 == enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.objectID(_:))
  {
    goto LABEL_8;
  }

  if (v24 == enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.sectionless(_:))
  {
    (*(v23 + 8))(v16, v22);
    return 1;
  }

  if (v24 == enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.uncommittedEditingSection(_:))
  {
LABEL_8:
    (*(v23 + 8))(v16, v22);
  }

  else if (v24 != enum case for TTRRemindersListViewModel.SectionID.EditableCasesSectionID.unknown(_:))
  {
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return result;
  }

  return 0;
}

uint64_t sub_1004E5200(__n128 a1)
{
  v2 = type metadata accessor for TTRIReminderCellTitleEditingEvent();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  dispatch thunk of TTRRemindersListEditableSectionNameEditingPresenterType.requestHandleBeginEditingDisplayName()();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v1 + OBJC_IVAR____TtC9Reminders45TTRIRemindersListEditableSectionNamePresenter_layoutStyle);
    if (v6 == 2)
    {
      v7 = 0;
      v8 = 0;
      v9 = 1;
    }

    else
    {
      v7 = (v6 & 1) != 0;
      if (v6)
      {
        v8 = 3;
      }

      else
      {
        v8 = 0;
      }

      v9 = (v6 & 1) == 0;
    }

    sub_1002769C4(v8, v9, v7);
    swift_unknownObjectRelease();
  }

  (*(v3 + 104))(v5, enum case for TTRIReminderCellTitleEditingEvent.editingDidBegin(_:), v2);
  sub_1004E5430(v5);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1004E5374(char a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v4 = result;
  v5 = *(v1 + OBJC_IVAR____TtC9Reminders45TTRIRemindersListEditableSectionNamePresenter_layoutStyle);
  if (v5 == 2 || (v5 & 1) == 0)
  {
    if (a1)
    {
      v7 = 0;
      v8 = 0;
      v6 = 1;
      goto LABEL_10;
    }

LABEL_9:
    v7 = 0;
    v8 = *(result + OBJC_IVAR____TtC9Reminders50TTRIRemindersListEditableSectionNameViewController_previousLineIndexWhereClippingBegins);
    v6 = *(v4 + OBJC_IVAR____TtC9Reminders50TTRIRemindersListEditableSectionNameViewController_previousLineIndexWhereClippingBegins + 8);
    goto LABEL_10;
  }

  if ((a1 & 1) == 0)
  {
    goto LABEL_9;
  }

  v6 = 0;
  v7 = 1;
  v8 = 3;
LABEL_10:
  sub_1002769C4(v8, v6, v7);

  return swift_unknownObjectRelease();
}

uint64_t sub_1004E5430(uint64_t a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v1 + 40);
    ObjectType = swift_getObjectType();
    (*(v3 + 16))(v1, &off_10072C5A8, a1, ObjectType, v3);
    swift_unknownObjectRelease();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1004E5D4C(v1, a1, result, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1004E54EC(__n128 a1)
{
  v2 = type metadata accessor for TTRIReminderCellTitleEditingEvent();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, enum case for TTRIReminderCellTitleEditingEvent.editingChanged(_:), v2, v4);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v1 + 40);
    ObjectType = swift_getObjectType();
    (*(v7 + 16))(v1, &off_10072C5A8, v6, ObjectType, v7);
    swift_unknownObjectRelease();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_1004E5D4C(v1, v6, Strong, v10);
    swift_unknownObjectRelease();
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1004E564C(__n128 a1)
{
  v1 = type metadata accessor for TTRIReminderCellTitleEditingEvent();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!swift_unknownObjectWeakLoadStrong() || (swift_getObjectType(), dispatch thunk of TTRRemindersListEditableSectionNamePresenterDelegate.currentText.getter(), v6 = v5, swift_unknownObjectRelease(), !v6))
  {
  }

  swift_getObjectType();
  dispatch thunk of TTRRemindersListEditableSectionNameEditingPresenterType.requestEndEditingDisplayName(newDisplayName:listLayout:)();

  sub_1004E5374(0);
  (*(v2 + 104))(v4, enum case for TTRIReminderCellTitleEditingEvent.editingDidEnd(_:), v1);
  sub_1004E5430(v4);
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1004E57E8()
{
  sub_10003B788(v0 + 16);
  sub_10003B788(v0 + 32);
  sub_10003B788(v0 + 48);
  sub_1000079B4(v0 + OBJC_IVAR____TtC9Reminders45TTRIRemindersListEditableSectionNamePresenter_viewModel, &unk_100776BC0, &qword_10062F2B0);

  swift_unknownObjectRelease();
  sub_100004758((v0 + OBJC_IVAR____TtC9Reminders45TTRIRemindersListEditableSectionNamePresenter_router));
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC9Reminders45TTRIRemindersListEditableSectionNamePresenter_listLayout;
  v2 = type metadata accessor for TTRRemindersListLayout();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1004E58C0()
{
  sub_1004E57E8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRIRemindersListEditableSectionNamePresenter(uint64_t a1)
{
  result = qword_100788558;
  if (!qword_100788558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004E596C(uint64_t a1)
{
  sub_1004E5A6C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for TTRRemindersListLayout();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1004E5A6C(uint64_t a1)
{
  if (!qword_1007859D8)
  {
    type metadata accessor for TTRRemindersListEditableSectionNameViewModel();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1007859D8);
    }
  }
}

uint64_t sub_1004E5AC4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9Reminders45TTRIRemindersListEditableSectionNamePresenter_viewModel;
  swift_beginAccess();
  return sub_100277260(v1 + v3, a1);
}

uint64_t sub_1004E5B24()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    dispatch thunk of TTRRemindersListEditableSectionNamePresenterDelegate.endEditing()();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1004E5B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    dispatch thunk of TTRRemindersListEditableSectionNamePresenterDelegate.setCurrentEditingText(_:)();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1004E5C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1004E61C0(v4, a3, a4, result);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1004E5C74()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1004E64A8(v0, result);

    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_1004E5CCC(uint64_t a1)
{
  result = sub_1004E5CF4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1004E5CF4()
{
  result = qword_100788628;
  if (!qword_100788628)
  {
    type metadata accessor for TTRIRemindersListEditableSectionNamePresenter(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100788628);
  }

  return result;
}

void sub_1004E5D4C(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v35 = a2;
  v36 = a3;
  v5 = type metadata accessor for TTRIShowRemindersDeferredItemUpdates.PendingScrollAction();
  v33 = *(v5 - 8);
  v34 = v5;
  __chkstk_darwin(v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRIReminderCellTitleEditingEvent();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TTRIShowRemindersDeferredItemUpdates();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v16 = *(a1 + 40);
    ObjectType = swift_getObjectType();
    v18 = (*(v16 + 8))(a1, &off_10072C5A8, ObjectType, v16);
    v20 = v19;
    swift_unknownObjectRelease();
    if (v18)
    {
      v38 = swift_getObjectType();
      v39 = *(v20 + 8);
      *&v37 = v18;
      sub_10008687C(&v37, v40);
      v21 = OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_internalDeferredItemUpdates;
      v22 = v36;
      swift_beginAccess();
      v32 = *(v13 + 16);
      v32(v15, v22 + v21, v12);
      TTRIShowRemindersDeferredItemUpdates.needsRefreshCellSizes.setter();
      sub_10037AF34(v15);
      (*(v9 + 16))(v11, v35, v8);
      v23 = (*(v9 + 88))(v11, v8);
      if (v23 == enum case for TTRIReminderCellTitleEditingEvent.editingWillBegin(_:))
      {
LABEL_10:
        sub_100004758(v40);
        return;
      }

      if (v23 == enum case for TTRIReminderCellTitleEditingEvent.editingDidBegin(_:))
      {
        sub_10000B0D8(v40, v7);
        v24 = &enum case for TTRIShowRemindersDeferredItemUpdates.PendingScrollAction.beginEditing(_:);
LABEL_8:
        (*(v33 + 104))(v7, *v24, v34);
        v32(v15, v36 + v21, v12);
        TTRIShowRemindersDeferredItemUpdates.pendingScrollAction.setter();
        sub_10037AF34(v15);
        goto LABEL_10;
      }

      if (v23 == enum case for TTRIReminderCellTitleEditingEvent.editingChanged(_:))
      {
        v25 = *(sub_100058000(&qword_100780A10, &qword_10063C780) + 48);
        sub_10000B0D8(v40, v7);
        v26 = enum case for TTRIShowRemindersEditableCellScrollingTarget.primaryText(_:);
        v27 = type metadata accessor for TTRIShowRemindersEditableCellScrollingTarget();
        (*(*(v27 - 8) + 104))(&v7[v25], v26, v27);
        v24 = &enum case for TTRIShowRemindersDeferredItemUpdates.PendingScrollAction.textChange(_:);
        goto LABEL_8;
      }

      if (v23 == enum case for TTRIReminderCellTitleEditingEvent.editingDidEnd(_:))
      {
        goto LABEL_10;
      }

      if (qword_100767228 != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      sub_100003E30(v28, qword_100780830);
      v29 = sub_100008E04(_swiftEmptyArrayStorage);
      v30 = sub_100008E04(_swiftEmptyArrayStorage);
      sub_1003F9818("Unknown editing event", 21, 2uLL, v29, v30);
      __break(1u);
    }
  }
}

uint64_t sub_1004E61C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a4;
  v24 = a2;
  v25 = a3;
  v5 = type metadata accessor for TTRRemindersListEditableSectionNameViewModel();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&unk_100776BC0, &qword_10062F2B0);
  __chkstk_darwin(v9 - 8);
  v11 = &v23 - v10;
  v12 = type metadata accessor for TTRRemindersListViewModel.Item();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v23 - v17;
  v19 = OBJC_IVAR____TtC9Reminders45TTRIRemindersListEditableSectionNamePresenter_viewModel;
  swift_beginAccess();
  sub_100277260(a1 + v19, v11);
  if ((*(v6 + 48))(v11, 1, v5))
  {
    return sub_1000079B4(v11, &unk_100776BC0, &qword_10062F2B0);
  }

  (*(v6 + 16))(v8, v11, v5);
  sub_1000079B4(v11, &unk_100776BC0, &qword_10062F2B0);
  TTRRemindersListEditableSectionNameViewModel.item.getter();
  (*(v6 + 8))(v8, v5);
  (*(v13 + 32))(v18, v15, v12);
  v21 = *(v23 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24);
  v22 = *(v23 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32);
  sub_10000C36C((v23 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter), v21);
  (*(v22 + 1024))(v18, v24, v25, v21, v22);
  return (*(v13 + 8))(v18, v12);
}

uint64_t sub_1004E64A8(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v3 = type metadata accessor for TTRRemindersListEditableSectionNameViewModel();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&unk_100776BC0, &qword_10062F2B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - v8;
  v10 = type metadata accessor for TTRRemindersListViewModel.Item();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v21 - v15;
  v17 = OBJC_IVAR____TtC9Reminders45TTRIRemindersListEditableSectionNamePresenter_viewModel;
  swift_beginAccess();
  sub_100277260(a1 + v17, v9);
  if ((*(v4 + 48))(v9, 1, v3))
  {
    return sub_1000079B4(v9, &unk_100776BC0, &qword_10062F2B0);
  }

  (*(v4 + 16))(v6, v9, v3);
  sub_1000079B4(v9, &unk_100776BC0, &qword_10062F2B0);
  TTRRemindersListEditableSectionNameViewModel.item.getter();
  (*(v4 + 8))(v6, v3);
  (*(v11 + 32))(v16, v13, v10);
  v19 = *(v21 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 24);
  v20 = *(v21 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter + 32);
  sub_10000C36C((v21 + OBJC_IVAR____TtC9Reminders31TTRIShowRemindersViewController_presenter), v19);
  (*(v20 + 1032))(v16, v19, v20);
  return (*(v11 + 8))(v16, v10);
}

uint64_t sub_1004E6788()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100788630);
  v1 = sub_100003E30(v0, qword_100788630);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1004E6850@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[6];
  if (v3)
  {
    v5 = v1[11];
    v4 = v1[12];
    v6 = v1[9];
    v7 = v1[10];
    v10 = v1 + 7;
    v8 = v1[7];
    v9 = v10[1];
    v11 = v6 & 1;
    v12 = (v6 >> 8) & 1;
    v19[0] = v3;
    v19[1] = v8;
    v19[2] = v9;
    v19[3] = v6;
    v19[4] = v7;
    v19[5] = v5;
    v19[6] = v4;
    result = sub_1004E6A64(v19, &v18);
  }

  else
  {
    if (qword_1007673D0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100003E30(v14, qword_100788630);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Should not enter TTRIAboutYourDevicesPresenter if there's no eligible account", v17, 2u);
    }

    result = [objc_opt_self() newObjectID];
    v3 = result;
    v8 = 0;
    v11 = 0;
    LOBYTE(v12) = 0;
    v7 = _swiftEmptyArrayStorage;
    v9 = 0xE000000000000000;
    v5 = _swiftEmptyArrayStorage;
    v4 = _swiftEmptyArrayStorage;
  }

  *a1 = v3;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9;
  *(a1 + 24) = v11;
  *(a1 + 25) = v12;
  *(a1 + 32) = v7;
  *(a1 + 40) = v5;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1004E69DC()
{
  sub_10003B788(v0 + 16);
  sub_10003B788(v0 + 32);
  sub_10014E49C(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));
  swift_unknownObjectRelease();
  sub_100004758((v0 + 120));

  return swift_deallocClassInstance();
}

uint64_t sub_1004E6A64(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_10076DA58, &unk_100643C80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1004E6AE8()
{
  result = qword_100788708;
  if (!qword_100788708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100788708);
  }

  return result;
}

uint64_t sub_1004E6B3C(void *a1, void *a2)
{
  swift_getObjectType();
  type metadata accessor for RDIDispatchQueue();
  v4 = static RDIDispatchQueue.storeQueue.getter();
  sub_1000A96A0();
  static OS_dispatch_queue.main.getter();
  type metadata accessor for REMContactsProvider();
  swift_allocObject();
  v5 = v4;
  REMContactsProvider.init(contactStoreCreator:queue:backgroundQueue:)();
  type metadata accessor for TTRReminderLocationOptionsProvider();
  swift_allocObject();

  v6 = a2;
  v7 = a1;
  TTRReminderLocationOptionsProvider.init(store:meCardProvider:geoService:)();
  type metadata accessor for TTRLocationQuickPicksInteractor();
  swift_allocObject();
  v8 = v6;

  v9 = TTRLocationQuickPicksInteractor.init(geoService:locationOptionsProvider:)();

  return v9;
}

uint64_t sub_1004E6CD8()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100788710);
  v1 = sub_100003E30(v0, qword_100788710);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004E6DB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;

  return _swift_task_switch(sub_1004E6E44, 0, 0);
}

uint64_t sub_1004E6E44()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = [v2 store];
  v4 = [v2 objectID];
  if (v1 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v0[2] = 0;
  v6 = [v3 createShareForListWithID:v4 appIconData:isa error:v0 + 2];

  v7 = v0[2];
  if (v7)
  {
    v7;

LABEL_6:
    swift_willThrow();
    v8 = v0[1];

    return v8();
  }

  if (!v6)
  {
    if (qword_1007673D8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100003E30(v11, qword_100788710);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Failed to create share for list", v14, 2u);
    }

    sub_1004E8380();
    swift_allocError();
    goto LABEL_6;
  }

  v10 = v0[1];

  return v10(v6);
}

void sub_1004E70C0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1007673D8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100003E30(v5, qword_100788710);
    swift_errorRetain();

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v8 = 136315394;
      *(v8 + 4) = sub_100004060(a2, a3, &v12);
      *(v8 + 12) = 2080;
      swift_getErrorValue();
      v9 = Error.localizedDescription.getter();
      v11 = sub_100004060(v9, v10, &v12);

      *(v8 + 14) = v11;
      _os_log_impl(&_mh_execute_header, v6, v7, "Could not add share observer for {accountID: %s, error: %s}", v8, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

void sub_1004E72B8(uint64_t a1, void *a2)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1007673D8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100003E30(v3, qword_100788710);
    swift_errorRetain();
    v4 = a2;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v21 = v9;
      *v7 = 138412546;
      v10 = [v4 objectID];
      *(v7 + 4) = v10;
      *v8 = v10;
      *(v7 + 12) = 2080;
      swift_getErrorValue();
      v11 = Error.rem_errorDescription.getter();
      v13 = sub_100004060(v11, v12, &v21);

      *(v7 + 14) = v13;
      _os_log_impl(&_mh_execute_header, v5, v6, "Failed to stop share {list.objectID: %@, error: %s}", v7, 0x16u);
      sub_100094164(v8);

      sub_100004758(v9);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1007673D8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100003E30(v14, qword_100788710);
    v15 = a2;
    oslog = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138543362;
      v19 = [v15 objectID];
      *(v17 + 4) = v19;
      *v18 = v19;
      _os_log_impl(&_mh_execute_header, oslog, v16, "Cleaning up canceled share. Successfully stopped share. {list.objectID: %{public}@}", v17, 0xCu);
      sub_100094164(v18);
    }
  }
}

void _s9Reminders23TTRListSharingUtilitiesC26addCKShareObserverIfNeeded3forySo7REMListC_tFZ_0(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 account];
  v8 = [v7 accountTypeHost];

  LODWORD(v7) = [v8 isCloudKit];
  if (v7)
  {
    v9 = [a1 account];
    v10 = [v9 remObjectID];

    v11 = [v10 uuid];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = UUID.uuidString.getter();
    v14 = v13;
    (*(v3 + 8))(v6, v2);
    v15 = [a1 store];
    v16 = String._bridgeToObjectiveC()();
    sub_100003540(0, &qword_100777780, OS_dispatch_queue_ptr);
    v17 = static OS_dispatch_queue.main.getter();
    v18 = swift_allocObject();
    *(v18 + 16) = v12;
    *(v18 + 24) = v14;
    aBlock[4] = sub_1004E83DC;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100009DE4;
    aBlock[3] = &unk_10072C778;
    v19 = _Block_copy(aBlock);

    [v15 addCKShareObserverIfNeededForAccountID:v16 queue:v17 completion:v19];
    _Block_release(v19);
  }
}

id _s9Reminders23TTRListSharingUtilitiesC17shareItemProvider3forSo06NSItemG0CSo7REMListC_tFZ_0(void *a1)
{
  v2 = objc_opt_self();
  v3 = [a1 account];
  v4 = [v2 newCloudContainerForAccount:v3];

  v5 = [objc_opt_self() rem_remindersAllowedSharingOptions];
  v6 = [objc_allocWithZone(NSItemProvider) init];
  sub_100003540(0, &qword_10076FCB0, UIImage_ptr);
  type metadata accessor for RemindersUICoreBundleLookupObject();
  v7 = static RemindersUICoreBundleLookupObject.bundle.getter();
  v8 = static UIImage.ttr_image(named:in:)();

  if (v8 && (v9 = UIImagePNGRepresentation(v8), v8, v9))
  {
    v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0xF000000000000000;
  }

  v13 = [a1 store];
  v14 = [a1 objectID];
  v24[0] = 0;
  v15 = [v13 fetchShareForListWithID:v14 error:v24];

  if (v24[0])
  {
    v16 = v24[0];

    swift_willThrow();
LABEL_7:
    v17 = swift_allocObject();
    v17[2] = a1;
    v17[3] = v10;
    v17[4] = v12;
    sub_1004E8358(v10, v12);
    v18 = a1;
    NSItemProvider.registerCKShare(container:allowedSharingOptions:preparationHandler:)();
    sub_1004E836C(v10, v12);

    goto LABEL_13;
  }

  if (!v15)
  {
    goto LABEL_7;
  }

  static CKShare.SystemFieldKey.thumbnailImageData.getter();
  if (v12 >> 60 == 15)
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v24[2] = 0;
  }

  else
  {
    v22 = &protocol witness table for Data;
    v21 = &type metadata for Data;
    v19 = v10;
    v20 = v12;
  }

  v24[0] = v19;
  v24[1] = v20;
  v24[3] = v21;
  v24[4] = v22;
  sub_1004E8358(v10, v12);
  sub_100003540(0, &qword_10078F200, CKShare_ptr);
  CKRecordKeyValueSetting.subscript.setter();
  NSItemProvider.registerCKShare(_:container:allowedSharingOptions:)(v15, v4, v5);
  sub_1004E836C(v10, v12);

LABEL_13:
  return v6;
}

void _s9Reminders23TTRListSharingUtilitiesC11cancelShare3forySo7REMListC_tFZ_0(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 24;
  v7 = [a1 account];
  v8 = [v7 accountTypeHost];

  LODWORD(v7) = [v8 isCloudKit];
  if (v7)
  {
    v9 = [a1 store];
    v10 = [a1 objectID];
    aBlock[0] = 0;
    v11 = [v9 fetchShareForListWithID:v10 error:aBlock];

    if (aBlock[0])
    {
      v12 = aBlock[0];

      swift_willThrow();
      if (qword_1007673D8 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_100003E30(v13, qword_100788710);
      v14 = a1;
      v15 = v12;
      v11 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v11, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        aBlock[0] = v19;
        *v17 = 138412546;
        v20 = [v14 objectID];
        *(v17 + 4) = v20;
        *v18 = v20;
        *(v17 + 12) = 2080;
        swift_getErrorValue();
        v21 = Error.rem_errorDescription.getter();
        v23 = sub_100004060(v21, v22, aBlock);

        *(v17 + 14) = v23;
        _os_log_impl(&_mh_execute_header, v11, v16, "Failed to fetch share for list. {list.objectID: %@, error: %s}", v17, 0x16u);
        sub_100094164(v18);

        sub_100004758(v19);

        return;
      }
    }

    else
    {
      if (!v11)
      {
        return;
      }

      v24 = [v11 participants];
      sub_100003540(0, &qword_1007887C8, CKShareParticipant_ptr);
      v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v25 >> 62)
      {
        v26 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v26 == 1)
      {
        v27 = [a1 account];
        v28 = [v27 remObjectID];

        v29 = [v28 uuid];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        UUID.uuidString.getter();
        (*(v3 + 8))(v6, v2);
        v30 = [a1 store];
        v31 = String._bridgeToObjectiveC()();

        sub_100003540(0, &qword_100777780, OS_dispatch_queue_ptr);
        v32 = static OS_dispatch_queue.main.getter();
        v33 = swift_allocObject();
        v33[2] = a1;
        aBlock[4] = sub_1004E83D4;
        aBlock[5] = v33;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100009DE4;
        aBlock[3] = &unk_10072C728;
        v34 = _Block_copy(aBlock);
        v35 = a1;

        [v30 stopShare:v11 accountID:v31 queue:v32 completion:v34];
        _Block_release(v34);

        return;
      }
    }
  }
}

id _s9Reminders23TTRListSharingUtilitiesC17remindersAppImage3forSo7IFImageCSgSo17ISImageDescriptorC_tFZ_0(uint64_t a1)
{
  v2 = [objc_opt_self() mainBundle];
  v3 = [v2 bundleIdentifier];

  if (!v3)
  {
    return 0;
  }

  v4 = [objc_allocWithZone(ISIcon) initWithBundleIdentifier:v3];

  v5 = [v4 imageForDescriptor:a1];
  if (!v5)
  {

    return 0;
  }

  v6 = v5;
  if (![v5 placeholder])
  {
    v7 = v6;
    goto LABEL_9;
  }

  v7 = [v4 prepareImageForDescriptor:a1];

  result = v6;
  v4 = v6;
  if (v7)
  {
LABEL_9:

    return v7;
  }

  return result;
}

uint64_t sub_1004E82B0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10041B550;

  return sub_1004E6DB0(v2, v3, v4);
}

uint64_t sub_1004E8358(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1002354D0(result, a2);
  }

  return result;
}

double sub_1004E836C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100139D84(a1, a2);
  }

  return result;
}

unint64_t sub_1004E8380()
{
  result = qword_1007887C0;
  if (!qword_1007887C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007887C0);
  }

  return result;
}

unint64_t sub_1004E83F8()
{
  result = qword_1007887D0;
  if (!qword_1007887D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007887D0);
  }

  return result;
}

id TTRIAboutYourDevicesAssembly.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIAboutYourDevicesAssembly();
  return objc_msgSendSuper2(&v2, "init");
}

id TTRIAboutYourDevicesAssembly.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIAboutYourDevicesAssembly();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1004E8520(uint64_t a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v5 = &a2[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_upgradeInfo];
  *v5 = 1;
  *(v5 + 40) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 8) = 0u;
  *&a2[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_pageStackView] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_titleLabel] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_deviceSubtitle] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_deviceExplanation] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_deviceLearnMore] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_deviceList] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_unsupportedSubtitle] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_unsupportedDeviceList] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_sharedListSubtitle] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_sharedListExplanation] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_sharedListLearnMore] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_sharedListRecipients] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_macOSUnavailableLabel] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_macOSUnavailableLearnMore] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_accountBeingUpgradedHint] = 0;
  v6 = &a2[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_viewModel];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 2) = 0u;
  *(v6 + 6) = 0;
  v7 = &a2[OBJC_IVAR____TtC9Reminders34TTRIAboutYourDevicesViewController_presenter];
  *v7 = a1;
  *(v7 + 1) = &off_10072C628;
  v8 = String._bridgeToObjectiveC()();
  v11.receiver = a2;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, "initWithTitle:detailText:icon:contentLayout:", v8, 0, 0, 2);

  return v9;
}

id sub_1004E86AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for TTRAboutYourDevicesInteractor();
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  v6 = type metadata accessor for TTRIAboutYourDevicesRouter();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21[3] = v6;
  v21[4] = &off_10072F7B8;
  v21[0] = v7;
  type metadata accessor for TTRIAboutYourDevicesPresenter();
  v8 = swift_allocObject();
  v9 = sub_10000AE84(v21, v6);
  v10 = __chkstk_darwin(v9);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v13 + 16))(v12, v10);
  v14 = *v12;
  *(v8 + 144) = v6;
  *(v8 + 152) = &off_10072F7B8;
  *(v8 + 120) = v14;
  *(v8 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v8 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v8 + 104) = v5;
  *(v8 + 112) = &off_1007164F8;
  v15 = *(a3 + 16);
  *(v8 + 48) = *a3;
  *(v8 + 64) = v15;
  *(v8 + 80) = *(a3 + 32);
  *(v8 + 96) = *(a3 + 48);

  sub_1002AAF0C(a3, v20);
  sub_100004758(v21);
  v16 = objc_allocWithZone(type metadata accessor for TTRIAboutYourDevicesViewController());

  v18 = sub_1004E8520(v17, v16);
  *(v5 + 24) = &off_10072C620;
  swift_unknownObjectWeakAssign();

  *(v8 + 24) = &off_10071E158;
  swift_unknownObjectWeakAssign();
  *(v8 + 40) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();

  return v18;
}

uint64_t sub_1004E890C()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_100788800);
  v1 = sub_100003E30(v0, qword_100788800);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004E89D4()
{
  v1 = sub_100058000(&qword_100776310, &unk_1006368E0);
  __chkstk_darwin(v1 - 8);
  v3 = &v17 - v2;
  v4 = type metadata accessor for TTRRemindersListViewModelSourceSectionsContext.ParamsForAddingEditableSection(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1007673E0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003E30(v8, qword_100788800);
  v9 = sub_100008E04(_swiftEmptyArrayStorage);
  sub_10000FD44("Reminders List create editable section", 38, 2, v9);

  if (TTRInCellEditingPresenterManagingHelper.activeInCellEditingPresenter.getter())
  {
    swift_getObjectType();
    dispatch thunk of TTRReminderCellPropertyEditingPresenterType.requestEndEditing()();
    swift_unknownObjectRelease();
  }

  sub_1004EF1B4(v0, 0, v10);
  v11 = *(v0 + 40);
  ObjectType = swift_getObjectType();
  result = (*(v11 + 104))(ObjectType, v11);
  if (result)
  {
    v14 = result;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v15 = *(v14 + 64);
      sub_1002E4570(0, 0xE000000000000000, v14, v3);
      if ((*(v5 + 48))(v3, 1, v4) == 1)
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        return sub_1000079B4(v3, &qword_100776310, &unk_1006368E0);
      }

      else
      {
        sub_1004F683C(v3, v7, type metadata accessor for TTRRemindersListViewModelSourceSectionsContext.ParamsForAddingEditableSection);
        v16 = swift_getObjectType();
        (*(v15 + 48))(v7, &v7[*(v4 + 24)], 1, 1, v16, v15);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        return sub_1004F676C(v7, type metadata accessor for TTRRemindersListViewModelSourceSectionsContext.ParamsForAddingEditableSection);
      }
    }

    else
    {

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_1004E8CD8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getObjectType();
  dispatch thunk of TTRRemindersListInteractorType.sectionsCapability.getter();
  swift_getObjectType();
  v6 = dispatch thunk of TTRRemindersListInteractorSectionsCapabilityType.addNewSection(displayName:to:sectionID:)();
  swift_unknownObjectRelease();
  if (v6)
  {
    v7 = a1[5];
    ObjectType = swift_getObjectType();
    if ((*(v7 + 104))(ObjectType, v7))
    {
      v10 = v9;
      v11 = swift_getObjectType();
      v12 = *(v10 + 48);
      v6 = v6;
      v13 = v12(v14, v11, v10);
      sub_10001DFB0(&v15, v6);

      v13(v14, 0);
      swift_unknownObjectRelease();
    }
  }
}

void sub_1004E8E18(unint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v245 = a3;
  v256 = a2;
  v275 = a4;
  v274 = *v4;
  v237 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v236 = *(v237 - 8);
  __chkstk_darwin(v237);
  v235 = v210 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v234 = v210 - v8;
  v217 = type metadata accessor for TTRRemindersListReminderInsertionPosition();
  v216 = *(v217 - 8);
  __chkstk_darwin(v217);
  v215 = v210 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&qword_10076DF30, &qword_100631A00);
  __chkstk_darwin(v10 - 8);
  v219 = v210 - v11;
  v225 = type metadata accessor for TTRRemindersMovingParamsForREMManualOrdering();
  v220 = *(v225 - 8);
  __chkstk_darwin(v225);
  v214 = v210 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v230 = *(v231 - 8);
  __chkstk_darwin(v231);
  v229 = v210 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v228 = v210 - v15;
  v16 = sub_100058000(&qword_100788B50, &qword_1006442A0);
  __chkstk_darwin(v16 - 8);
  v242 = v210 - v17;
  v227 = sub_100058000(&qword_100788B58, &qword_1006442A8);
  __chkstk_darwin(v227);
  v226 = v210 - v18;
  v254 = type metadata accessor for TTREditingStateOption();
  v253 = *(v254 - 8);
  __chkstk_darwin(v254);
  v244 = v210 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100058000(&qword_100788B48, &unk_100644290);
  __chkstk_darwin(v20 - 8);
  v232 = v210 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v233 = v210 - v23;
  v224 = type metadata accessor for TTRRemindersListEditingReminderCreationOptions();
  v223 = *(v224 - 8);
  __chkstk_darwin(v224);
  v222 = v210 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v269 = type metadata accessor for TTRRemindersListViewModel.Item();
  v271 = *(v269 - 8);
  __chkstk_darwin(v269);
  v238 = v210 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v259 = v210 - v27;
  __chkstk_darwin(v28);
  v243 = v210 - v29;
  __chkstk_darwin(v30);
  v218 = v210 - v31;
  __chkstk_darwin(v32);
  v257 = v210 - v33;
  v213 = sub_100058000(&qword_100788B68, &qword_1006442B8);
  __chkstk_darwin(v213);
  v241 = v210 - v34;
  v35 = sub_100058000(&qword_100788B60, &qword_1006442B0);
  __chkstk_darwin(v35 - 8);
  v248 = v210 - v36;
  v251 = type metadata accessor for TTRRemindersListUncommittedReminder();
  v250 = *(v251 - 8);
  __chkstk_darwin(v251);
  v249 = v210 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v38 - 8);
  v255 = v210 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v221 = v210 - v41;
  __chkstk_darwin(v42);
  v252 = v210 - v43;
  __chkstk_darwin(v44);
  v262 = v210 - v45;
  __chkstk_darwin(v46);
  v258 = v210 - v47;
  v264 = type metadata accessor for TTRRemindersListReminderCreationLocation();
  v263 = *(v264 - 8);
  __chkstk_darwin(v264);
  v268 = v210 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_100058000(&qword_100775760, &unk_1006442C0);
  __chkstk_darwin(v49 - 8);
  v270 = v210 - v50;
  v247 = sub_100058000(&qword_100775768, &qword_100635DE0);
  __chkstk_darwin(v247);
  v246 = v210 - v51;
  v267 = type metadata accessor for TTRRemindersListTargetContainer();
  v266 = *(v267 - 8);
  __chkstk_darwin(v267);
  v240 = v210 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v239 = v52;
  __chkstk_darwin(v53);
  v265 = v210 - v54;
  v261 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v272 = *(v261 - 8);
  __chkstk_darwin(v261);
  v260 = v210 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_100058000(&unk_10078A380, &qword_10062DE60);
  __chkstk_darwin(v56 - 8);
  v58 = v210 - v57;
  v59 = type metadata accessor for REMAnalyticsEvent();
  v60 = *(v59 - 8);
  __chkstk_darwin(v59);
  v62 = v210 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1007673E0 != -1)
  {
    swift_once();
  }

  v63 = type metadata accessor for Logger();
  sub_100003E30(v63, qword_100788800);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 0x736E6F6974706FLL;
  *(inited + 40) = 0xE700000000000000;
  v273 = a1;
  *&v277 = a1;
  v65 = String.init<A>(describing:)();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v65;
  *(inited + 56) = v66;
  v67 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70, &qword_10062FD60);
  sub_10000FD44("Reminders List Create New Reminder in default section {options: %@}", 67, 2, v67);

  type metadata accessor for TTRUserDefaults();
  v68 = static TTRUserDefaults.appUserDefaults.getter();
  type metadata accessor for REMAnalyticsManager();
  static REMAnalyticsManager.shared.getter();
  v69 = sub_100058000(&qword_1007757E8, &unk_100635E60);
  v70 = &v62[*(v69 + 48)];
  v71 = &v62[*(v69 + 80)];
  v72 = enum case for REMUserOperation.createReminder(_:);
  v73 = type metadata accessor for REMUserOperation();
  (*(*(v73 - 8) + 104))(v62, v72, v73);
  *v70 = TTRUserDefaults.activitySessionId.getter();
  v70[1] = v74;
  TTRUserDefaults.activitySessionBeginTime.getter();
  *&v277 = 0;
  *(&v277 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(17);
  v75 = _typeName(_:qualified:)();
  v77 = v76;

  *&v277 = v75;
  *(&v277 + 1) = v77;
  v78._countAndFlagsBits = 0x746C75616665442DLL;
  v78._object = 0xEF6E6F6974636553;
  String.append(_:)(v78);
  v79 = *(&v277 + 1);
  *v71 = v277;
  *(v71 + 1) = v79;
  (*(v60 + 104))(v62, enum case for REMAnalyticsEvent.userOperation(_:), v59);
  REMAnalyticsManager.post(event:)();

  (*(v60 + 8))(v62, v59);
  v81 = v276[4];
  v80 = v276[5];
  ObjectType = swift_getObjectType();
  (*(v80 + 152))(ObjectType, v80);
  v83 = type metadata accessor for TTRRemindersListViewModel.ListInfo();
  v84 = *(v83 - 8);
  if ((*(v84 + 48))(v58, 1, v83) == 1)
  {

    v85 = &unk_10078A380;
    v86 = &qword_10062DE60;
    v87 = v58;
LABEL_5:
    sub_1000079B4(v87, v85, v86);
LABEL_15:
    v93 = sub_100058000(&qword_100775A58, &qword_100636070);
    (*(*(v93 - 8) + 56))(v275, 1, 1, v93);
    return;
  }

  v274 = v68;
  New = TTRRemindersListViewModel.ListInfo.canCreateNewReminder.getter();
  (*(v84 + 8))(v58, v83);
  if ((New & 1) == 0)
  {

    goto LABEL_15;
  }

  v89 = v273;
  v90 = v270;
  if ((v273 & 4) == 0)
  {
    goto LABEL_12;
  }

  if (TTRInCellEditingPresenterManagingHelper.activeInCellEditingPresenter.getter())
  {
    swift_unknownObjectRelease();
    v91 = 0;
    if (!TTRInCellEditingPresenterManagingHelper.activeInCellEditingPresenter.getter())
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v91 = (v89 & 1) == 0;
  if (TTRInCellEditingPresenterManagingHelper.activeInCellEditingPresenter.getter())
  {
LABEL_10:
    swift_getObjectType();
    dispatch thunk of TTRReminderCellPropertyEditingPresenterType.requestEndEditing()();
    swift_unknownObjectRelease();
  }

LABEL_11:
  if (!v91)
  {
    v116 = sub_100058000(&qword_100775A58, &qword_100636070);
    (*(*(v116 - 8) + 56))(v275, 1, 1, v116);

    return;
  }

LABEL_12:
  sub_1004EB45C(v89, v90);
  v92 = sub_100058000(&qword_100775770, &unk_1006442D0);
  if ((*(*(v92 - 8) + 48))(v90, 1, v92) == 1)
  {

    v85 = &qword_100775760;
    v86 = &unk_1006442C0;
    v87 = v90;
    goto LABEL_5;
  }

  v94 = *(v92 + 48);
  v211 = ObjectType;
  v95 = v247;
  v96 = *(v247 + 48);
  v97 = *(v272 + 32);
  v210[1] = v81;
  v98 = v246;
  v99 = v261;
  v97(v246, v90, v261);
  v212 = v80;
  v101 = v266 + 32;
  v100 = *(v266 + 32);
  v102 = &v90[v94];
  v103 = v267;
  v100(&v98[v96], v102, v267);
  v104 = *(v95 + 48);
  v105 = v211;
  v106 = v260;
  v97(v260, v98, v99);
  v247 = v101;
  v246 = v100;
  v100(v265, &v98[v104], v103);
  v107 = v212;
  v108 = v268;
  (*(v272 + 16))(v268, v106, v99);
  (*(v263 + 104))(v108, enum case for TTRRemindersListReminderCreationLocation.endOfSection(_:), v264);
  v109 = v248;
  (*(v107 + 368))(v108, v105, v107);
  v110 = v250;
  v111 = v251;
  if (v250[6](v109, 1, v251) == 1)
  {
    sub_1000079B4(v109, &qword_100788B60, &qword_1006442B0);
    v112 = 1;
    v113 = v271;
    v114 = v262;
    v115 = v257;
    goto LABEL_28;
  }

  v110[4](v249, v109, v111);
  v117 = TTRRemindersListUncommittedReminder.editingSessionState.getter();
  v113 = v271;
  v115 = v257;
  if (!v117)
  {
    v122 = type metadata accessor for TTRRemindersListEditingSessionState.SaveState();
    (*(*(v122 - 8) + 56))(v241, 1, 1, v122);
    goto LABEL_27;
  }

  v118 = v241;
  TTRRemindersListEditingSessionState.saveState.getter();

  v119 = type metadata accessor for TTRRemindersListEditingSessionState.SaveState();
  v120 = *(v119 - 8);
  (*(v120 + 56))(v118, 0, 1, v119);
  v121 = (*(v120 + 88))(v118, v119);
  if (v121 == enum case for TTRRemindersListEditingSessionState.SaveState.notSaved(_:))
  {
LABEL_27:
    v123 = v262;
    v124 = v249;
    TTRRemindersListUncommittedReminder.item.getter();
    v114 = v123;
    (v110[1])(v124, v111);
    v112 = 0;
LABEL_28:
    v125 = v269;
    v270 = *(v113 + 56);
    (v270)(v114, v112, 1, v269);
    v126 = v114;
    v127 = v252;
    sub_10000794C(v126, v252, &qword_100772140, &qword_10062D9F0);
    v128 = *(v113 + 48);
    if ((v128)(v127, 1, v125) == 1)
    {
      v249 = (v113 + 56);
      sub_1000079B4(v127, &qword_100772140, &qword_10062D9F0);
      v129 = v266 + 16;
      v130 = v240;
      v131 = v267;
      (*(v266 + 16))(v240, v265, v267);
      v132 = (*(v129 + 64) + 24) & ~*(v129 + 64);
      v133 = swift_allocObject();
      *(v133 + 16) = v276;
      v257 = v133;
      (v246)(v133 + v132, v130, v131);
      v134 = v273;
      v250 = v128;
      if (v273)
      {
        v157 = v244;
        (*(v253 + 104))(v244, enum case for TTREditingStateOption.doesNotStartEditing(_:), v254);
        v137 = v242;
      }

      else
      {
        v135 = type metadata accessor for TTREditingStateOption.InputType();
        v136 = (v253 + 104);
        v137 = v242;
        if ((v134 & 0x10) != 0)
        {
          v138 = &enum case for TTREditingStateOption.InputType.pencil(_:);
        }

        else
        {
          v138 = &enum case for TTREditingStateOption.InputType.unspecified(_:);
        }

        v157 = v244;
        (*(*(v135 - 8) + 104))(v244, *v138, v135);
        (*v136)(v157, enum case for TTREditingStateOption.startsEditing(_:), v254);
      }

      v163 = (v273 >> 5) & 1;
      v164 = *(v107 + 376);

      v164(v268, v157, v163, sub_1004F69E4, v257, v256, v245, v105, v107);
      v165 = sub_100058000(&qword_1007860B0, &unk_100641E70);
      if ((*(*(v165 - 8) + 48))(v137, 1, v165) == 1)
      {
        (*(v253 + 8))(v157, v254);
        sub_1000079B4(v137, &qword_100788B50, &qword_1006442A0);
        v144 = v258;
        v145 = v269;
        (v270)(v258, 1, 1, v269);

        v146 = v276;
        v147 = v259;
        v161 = v255;
        v162 = v274;
LABEL_51:
        v128 = v250;
        goto LABEL_57;
      }

      v251 = v113 + 48;
      v166 = *(v137 + *(v165 + 48));
      v167 = v227;
      v168 = *(v227 + 48);
      v169 = *(v271 + 32);
      v170 = v226;
      v171 = v137;
      v172 = v271;
      v173 = v269;
      v169(v226, v171, v269);
      *&v170[v168] = v166;
      v273 = *&v170[*(v167 + 48)];
      v174 = v243;
      v169(v243, v170, v173);
      v175 = v212;
      v176 = v258;
      (*(v172 + 16))(v258, v174, v173);
      (v270)(v176, 0, 1, v173);
      v177 = v228;
      (*(v175 + 576))(v105, v175);
      v178 = v230;
      v179 = v229;
      v180 = v231;
      (*(v230 + 104))(v229, enum case for REMRemindersListDataView.SortingStyle.manual(_:), v231);
      LOBYTE(v172) = static REMRemindersListDataView.SortingStyle.== infix(_:_:)();
      v181 = *(v178 + 8);
      v181(v179, v180);
      v181(v177, v180);
      if (v172)
      {
        v182 = v273;
        v183 = v219;
        (*(v175 + 608))(v105, v175);
        v184 = v220;
        v185 = v225;
        v186 = (*(v220 + 48))(v183, 1, v225);
        v146 = v276;
        if (v186 != 1)
        {
          v203 = v214;
          (*(v184 + 32))(v214, v183, v185);
          v270 = v146[7];
          v256 = swift_getObjectType();
          sub_100058000(&qword_10076B780, &qword_10062D7C0);
          v204 = swift_allocObject();
          *(v204 + 16) = xmmword_10062D420;
          *(v204 + 32) = v182;
          v205 = v216;
          v206 = v215;
          v207 = v217;
          (*(v216 + 104))(v215, enum case for TTRRemindersListReminderInsertionPosition.afterAll(_:), v217);
          v208 = v182;
          v209 = v258;
          dispatch thunk of TTRRemindersListInteractorType.updateManualOrdering(uncommittedReminderIDs:position:paramsForREMManualOrdering:)();

          v144 = v209;

          (*(v205 + 8))(v206, v207);
          (*(v184 + 8))(v203, v225);
          v145 = v269;
          (*(v271 + 8))(v243, v269);
          (*(v253 + 8))(v244, v254);

          v147 = v259;
          v161 = v255;
          v162 = v274;
          goto LABEL_51;
        }

        v145 = v269;
        (*(v271 + 8))(v243, v269);
        (*(v253 + 8))(v244, v254);
        sub_1000079B4(v183, &qword_10076DF30, &qword_100631A00);
      }

      else
      {

        (*(v271 + 8))(v243, v173);
        (*(v253 + 8))(v244, v254);

        v146 = v276;
        v145 = v173;
      }

      v147 = v259;
      v161 = v255;
      v162 = v274;
      v128 = v250;
      v144 = v258;
LABEL_57:
      sub_10000794C(v144, v161, &qword_100772140, &qword_10062D9F0);
      if ((v128)(v161, 1, v145) == 1)
      {

        sub_1000079B4(v262, &qword_100772140, &qword_10062D9F0);
        sub_1000079B4(v144, &qword_100772140, &qword_10062D9F0);
        (*(v263 + 8))(v268, v264);
        (*(v266 + 8))(v265, v267);
        (*(v272 + 8))(v260, v261);
        v87 = v161;
        v85 = &qword_100772140;
        v86 = &qword_10062D9F0;
        goto LABEL_5;
      }

      v187 = *(v271 + 32);
      v187(v147, v161, v145);
      v188 = v146[11];
      v189 = &unk_100788000;
      if (v188)
      {
        v190 = v162;

        v191 = v234;
        TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
        v192 = v235;
        TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
        v193 = static TTRRemindersListViewModel.ItemID.== infix(_:_:)();

        v194 = *(v236 + 8);
        v195 = v192;
        v196 = v237;
        v194(v195, v237);
        v197 = v191;
        v147 = v259;
        v194(v197, v196);
        v145 = v269;
        sub_1000079B4(v262, &qword_100772140, &qword_10062D9F0);
        sub_1000079B4(v144, &qword_100772140, &qword_10062D9F0);
        (*(v263 + 8))(v268, v264);
        (*(v266 + 8))(v265, v267);
        (*(v272 + 8))(v260, v261);
        if (v193)
        {
LABEL_64:
          v199 = sub_100058000(&qword_100775A58, &qword_100636070);
          v200 = v275;
          v201 = &v275[*(v199 + 48)];
          v187(v275, v147, v145);
          *v201 = v188;
          v201[1] = &off_10072C830;
          (*(*(v199 - 8) + 56))(v200, 0, 1, v199);
          return;
        }

        v189 = &unk_100788000;
      }

      else
      {

        sub_1000079B4(v262, &qword_100772140, &qword_10062D9F0);
        sub_1000079B4(v144, &qword_100772140, &qword_10062D9F0);
        (*(v263 + 8))(v268, v264);
        (*(v266 + 8))(v265, v267);
        (*(v272 + 8))(v260, v261);
      }

      v198 = v238;
      (*(v271 + 16))(v238, v147, v145);
      type metadata accessor for PencilWritingStateReporter(0);
      v188 = swift_allocObject();
      swift_weakInit();
      *(v188 + OBJC_IVAR____TtC9RemindersP33_1A71EBEB5B774417A77A4912B4DA8E4226PencilWritingStateReporter_cancellable) = 0;
      v187((v188 + v189[290]), v198, v145);
      swift_weakAssign();
      v146[11] = v188;

      goto LABEL_64;
    }

    v251 = v113 + 48;
    v139 = *(v113 + 32);
    v139(v115, v127, v125);
    if ((sub_1004EBDC8(v276, v115, v273) & 1) != 0 && TTRInCellEditingPresenterManagingHelper.activeInCellTitleEditingPresenter(editing:)())
    {
      v249 = (v113 + 56);
      v254 = v140;
      swift_getObjectType();
      sub_10003BE34(v256, v245);
      v141 = v222;
      TTRRemindersListEditingReminderCreationOptions.init(initialPropertyValueProvider:startsEditing:animated:)();
      v142 = v221;
      dispatch thunk of TTRReminderCellEditingInCellPresenterTitleEditing.requestCommitAndCreateNewIfTitleIsNonEmpty(options:)();
      swift_unknownObjectRelease();
      (*(v223 + 8))(v141, v224);
      v143 = v269;
      if ((v128)(v142, 1, v269) != 1)
      {
        (*(v271 + 8))(v257, v143);
        v202 = v218;
        v139(v218, v142, v143);
        v144 = v258;
        v139(v258, v202, v143);
        (v270)(v144, 0, 1, v143);
        v146 = v276;
        v145 = v143;
        v147 = v259;
LABEL_46:
        v161 = v255;
        v162 = v274;
        goto LABEL_57;
      }

      sub_1000079B4(v142, &qword_100772140, &qword_10062D9F0);
      v115 = v257;
      v113 = v271;
    }

    v144 = v258;
    v145 = v269;
    (*(v113 + 16))(v258, v115, v269);
    (v270)(v144, 0, 1, v145);
    v146 = v276;
    v147 = v259;
    v148 = v256;
    if (v256)
    {
      v250 = v128;
      v149 = v245;

      *&v277 = _typeName(_:qualified:)();
      *(&v277 + 1) = v150;
      v151._countAndFlagsBits = 0x6C616974696E692DLL;
      v151._object = 0xED000065756C6156;
      String.append(_:)(v151);
      v152 = v233;
      sub_100410F2C(v115, v277, *(&v277 + 1), v233);

      v153 = v232;
      sub_10000794C(v152, v232, &qword_100788B48, &unk_100644290);
      v154 = type metadata accessor for TTRRemindersListEditingSessionProviderCapability.EditingSessionStateResult();
      v155 = *(v154 - 8);
      if ((*(v155 + 48))(v153, 1, v154) == 1)
      {
        sub_1000079B4(v152, &qword_100788B48, &unk_100644290);
        sub_1000301AC(v148, v149);
        v156 = v153;
      }

      else
      {
        TTRRemindersListEditingSessionProviderCapability.EditingSessionStateResult.sessionState.getter();
        (*(v155 + 8))(v153, v154);
        type metadata accessor for TTRReminderEditor();
        TTRRemindersListEditingSessionState.reminderChangeItem.getter();
        v279 = 0;
        v277 = 0u;
        v278 = 0u;
        TTRReminderEditor.__allocating_init(changeItem:undoContext:)();
        v148();
        sub_1000301AC(v148, v149);

        v156 = v152;
      }

      sub_1000079B4(v156, &qword_100788B48, &unk_100644290);
      v144 = v258;
      v128 = v250;
      v147 = v259;
    }

    if ((v273 & 1) == 0 && swift_unknownObjectWeakLoadStrong())
    {
      v158 = v146[3];
      v159 = swift_getObjectType();
      v160 = sub_1004F5C50(&qword_100769610, type metadata accessor for TTRReminderListEditingPresenter, &unk_100644258);
      (*(v158 + 24))(v146, v160, v115, v159, v158);
      swift_unknownObjectRelease();
    }

    (*(v271 + 8))(v115, v145);
    goto LABEL_46;
  }

  v114 = v262;
  if (v121 == enum case for TTRRemindersListEditingSessionState.SaveState.saving(_:) || v121 == enum case for TTRRemindersListEditingSessionState.SaveState.saved(_:))
  {
    (v110[1])(v249, v111);
    v112 = 1;
    goto LABEL_28;
  }

  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

uint64_t sub_1004EB45C@<X0>(unsigned int a1@<W0>, char *a2@<X8>)
{
  v3 = v2;
  v72 = a2;
  v5 = sub_100058000(&qword_10076C6F0, &unk_100630590);
  __chkstk_darwin(v5 - 8);
  v62 = &v59 - v6;
  v63 = type metadata accessor for TTRRemindersListTargetContainer();
  v61 = *(v63 - 8);
  __chkstk_darwin(v63);
  v60 = (&v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v59 = &v59 - v9;
  v10 = sub_100058000(&qword_10076B070, &unk_100637140);
  __chkstk_darwin(v10 - 8);
  v66 = &v59 - v11;
  v69 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v67 = *(v69 - 8);
  __chkstk_darwin(v69);
  v68 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for TTRRemindersListReminderActionTargetExtended(0);
  __chkstk_darwin(v70);
  v64 = (&v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v71 = &v59 - v15;
  __chkstk_darwin(v16);
  v18 = &v59 - v17;
  __chkstk_darwin(v19);
  v21 = (&v59 - v20);
  v65 = type metadata accessor for TTRRemindersListCreationTargetWithSectionID(0);
  __chkstk_darwin(v65);
  v23 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v3 + 40);
  ObjectType = swift_getObjectType();
  v26 = *(v24 + 312);

  v26((a1 >> 6) & 1, sub_1004F6A58, v3, ObjectType, v24);

  sub_1004F68A4(v23, v21, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
  sub_1004F68A4(v21, v18, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
    v28 = *(v27 - 8);
    v29 = (*(v28 + 88))(v18, v27);
    v30 = enum case for TTRRemindersListTargetContainer.TargetList.defaultList(_:);
    (*(v28 + 8))(v18, v27);
    if (v29 == v30)
    {
      swift_getObjectType();
      Fallback = dispatch thunk of TTRRemindersListInteractorType.fetchDefaultListOrCreateFallbackList()();
      sub_1004F676C(v21, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
      if (Fallback)
      {
        *v21 = Fallback;
        (*(v28 + 104))(v21, enum case for TTRRemindersListTargetContainer.TargetList.staleList(_:), v27);
      }

      else
      {
        *v21 = 1;
      }

      swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    sub_1004F676C(v18, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
  }

  v32 = v71;
  sub_1004F68A4(v21, v71, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
  if (!swift_getEnumCaseMultiPayload())
  {
    if (*v32 == 1)
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        v39 = *(v3 + 24);
        v40 = swift_getObjectType();
        v41 = sub_1004F5C50(&qword_100769610, type metadata accessor for TTRReminderListEditingPresenter, &unk_100644258);
        (*(v39 + 40))(v3, v41, v40, v39);
        swift_unknownObjectRelease();
      }
    }

    sub_1004F676C(v21, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
    sub_1004F676C(v23, type metadata accessor for TTRRemindersListCreationTargetWithSectionID);
    goto LABEL_26;
  }

  v33 = sub_1004F676C(v32, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
  v34 = v66;
  (*&v23[*(v65 + 20)])(v33);
  v35 = v67;
  v36 = v69;
  if ((*(v67 + 48))(v34, 1, v69) != 1)
  {
    v42 = v23;
    v43 = *(v35 + 32);
    v43(v68, v34, v36);
    sub_1004F683C(v21, v64, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      v34 = v62;
      v45 = v63;
      v46 = v60;
      v47 = v61;
      if (EnumCaseMultiPayload == 2)
      {
        v50 = v64[1];
        *v60 = *v64;
        v46[1] = v50;
        v49 = &enum case for TTRRemindersListTargetContainer.targetReminder(_:);
        goto LABEL_20;
      }

      sub_1004F676C(v64, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
    }

    else
    {
      v34 = v62;
      v45 = v63;
      v46 = v60;
      v47 = v61;
      if (EnumCaseMultiPayload)
      {
        v48 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
        (*(*(v48 - 8) + 32))(v46, v64, v48);
        v49 = &enum case for TTRRemindersListTargetContainer.targetList(_:);
LABEL_20:
        (*(v47 + 104))(v46, *v49, v45);
        (*(v47 + 32))(v34, v46, v45);
        v51 = 0;
LABEL_23:
        (*(v47 + 56))(v34, v51, 1, v45);
        sub_1004F676C(v42, type metadata accessor for TTRRemindersListCreationTargetWithSectionID);
        if ((*(v47 + 48))(v34, 1, v45) != 1)
        {
          v54 = *(v47 + 32);
          v55 = v59;
          v54(v59, v34, v45);
          v56 = sub_100058000(&qword_100775770, &unk_1006442D0);
          v57 = *(v56 + 48);
          v58 = v72;
          v43(v72, v68, v36);
          v54(&v58[v57], v55, v45);
          return (*(*(v56 - 8) + 56))(v58, 0, 1, v56);
        }

        (*(v35 + 8))(v68, v36);
        v37 = &qword_10076C6F0;
        v38 = &unk_100630590;
        goto LABEL_25;
      }
    }

    v51 = 1;
    goto LABEL_23;
  }

  sub_1004F676C(v21, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
  sub_1004F676C(v23, type metadata accessor for TTRRemindersListCreationTargetWithSectionID);
  v37 = &qword_10076B070;
  v38 = &unk_100637140;
LABEL_25:
  sub_1000079B4(v34, v37, v38);
LABEL_26:
  v52 = sub_100058000(&qword_100775770, &unk_1006442D0);
  return (*(*(v52 - 8) + 56))(v72, 1, 1, v52);
}

uint64_t sub_1004EBDC8(uint64_t a1, uint64_t a2, char a3)
{
  result = TTRInCellEditingPresenterManagingHelper.activeInCellTitleEditingPresenter(editing:)();
  if (result)
  {
    if ((a3 & 8) != 0)
    {
      swift_unknownObjectRelease();
      return 1;
    }

    if ((a3 & 0x10) != 0)
    {
      swift_getObjectType();
      v5 = dispatch thunk of TTRReminderCellEditingInCellPresenterTitleEditing.isMarkedCommittableForPencil.getter();
      swift_unknownObjectRelease();
      if (v5)
      {
        return 1;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return 0;
  }

  return result;
}

uint64_t sub_1004EBE50(uint64_t a1, void *a2, uint64_t a3)
{
  v12[1] = a3;
  v4 = type metadata accessor for TTRRemindersListReminderInsertionPosition();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  (*(v5 + 104))(v7, enum case for TTRRemindersListReminderInsertionPosition.afterAll(_:), v4);
  v8 = a2[5];
  ObjectType = swift_getObjectType();
  (*(v8 + 408))(ObjectType, v8);
  v10 = TTRRemindersListInteractorType.newReminderChangeItem(objectID:title:targetContainer:position:remindersBeingSaved:)();

  (*(v5 + 8))(v7, v4);
  return v10;
}

uint64_t sub_1004EBFCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = type metadata accessor for TTRRemindersListEditingReminderCreationOptions();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100058000(&qword_100788B48, &unk_100644290);
  __chkstk_darwin(v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for TTRRemindersListViewModel.Item.ReminderCasesInItem();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  TTRRemindersListViewModel.Item.reminderCasesOnly.getter();
  v15 = (*(v12 + 88))(v14, v11);
  if (v15 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.reminder(_:) || v15 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.uncommittedReminder(_:))
  {
    (*(v12 + 8))(v14, v11);
  }

  else
  {
    if (v15 == enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.placeholderReminder(_:))
    {
      v17 = type metadata accessor for TTRRemindersListViewModel.Item();
      (*(*(v17 - 8) + 56))(v25, 1, 1, v17);
      return (*(v12 + 8))(v14, v11);
    }

    if (v15 != enum case for TTRRemindersListViewModel.Item.ReminderCasesInItem.nonReminder(_:))
    {
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }
  }

  v26 = _typeName(_:qualified:)();
  v27 = v19;
  v20._countAndFlagsBits = 0x6C616974696E692DLL;
  v20._object = 0xED000065756C6156;
  String.append(_:)(v20);
  sub_100410F2C(a1, v26, v27, v10);

  sub_1000079B4(v10, &qword_100788B48, &unk_100644290);
  swift_getObjectType();
  v21 = dispatch thunk of TTRRemindersListPresenterCapabilityCoreViewModelSourceType.reminderChangeItem(forEditing:)();
  if (v21)
  {
    v22 = v21;
    TTRRemindersListEditingReminderCreationOptions.init(initialPropertyValueProvider:startsEditing:animated:)();
    sub_1004EC39C(a1, v22, v7, v25);

    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    v23 = type metadata accessor for TTRRemindersListViewModel.Item();
    return (*(*(v23 - 8) + 56))(v25, 1, 1, v23);
  }
}

double sub_1004EC39C@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v175 = a3;
  v201 = a2;
  v196 = a4;
  v183 = *v4;
  v7 = sub_100058000(&qword_10076DF30, &qword_100631A00);
  __chkstk_darwin(v7 - 8);
  v160 = &v154 - v8;
  v162 = type metadata accessor for TTRRemindersMovingParamsForREMManualOrdering();
  v161 = *(v162 - 8);
  __chkstk_darwin(v162);
  v159 = &v154 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v167 = *(v168 - 8);
  __chkstk_darwin(v168);
  v166 = &v154 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v165 = &v154 - v12;
  v173 = type metadata accessor for TTREditingStateOption();
  v172 = *(v173 - 8);
  __chkstk_darwin(v173);
  v171 = &v154 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100058000(&qword_100788B50, &qword_1006442A0);
  __chkstk_darwin(v14 - 8);
  v174 = &v154 - v15;
  v164 = sub_100058000(&qword_100788B58, &qword_1006442A8);
  __chkstk_darwin(v164);
  v163 = &v154 - v16;
  v17 = sub_100058000(&qword_100788B60, &qword_1006442B0);
  __chkstk_darwin(v17 - 8);
  v184 = &v154 - v18;
  v19 = type metadata accessor for TTRRemindersListViewModel.Item();
  v20 = *(v19 - 8);
  v199 = v19;
  v200 = v20;
  __chkstk_darwin(v19);
  v176 = &v154 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v169 = &v154 - v23;
  __chkstk_darwin(v24);
  v170 = &v154 - v25;
  v26 = type metadata accessor for TTRRemindersListReminderCreationLocation();
  v194 = *(v26 - 8);
  v195 = v26;
  __chkstk_darwin(v26);
  v197 = &v154 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v28 - 8);
  v188 = &v154 - v29;
  v193 = type metadata accessor for TTRRemindersListReminderInsertionPosition();
  v192 = *(v193 - 8);
  __chkstk_darwin(v193);
  v182 = &v154 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = v30;
  __chkstk_darwin(v31);
  v191 = (&v154 - v32);
  v180 = type metadata accessor for REMAnalyticsEvent();
  v179 = *(v180 - 8);
  __chkstk_darwin(v180);
  v34 = &v154 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_100058000(&qword_10076C6F0, &unk_100630590);
  __chkstk_darwin(v35 - 8);
  v37 = &v154 - v36;
  v202 = type metadata accessor for TTRRemindersListTargetContainer();
  v198 = *(v202 - 8);
  v38 = *(v198 + 64);
  __chkstk_darwin(v202);
  v178 = &v154 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v41 = (&v154 - v40);
  __chkstk_darwin(v42);
  v189 = &v154 - v43;
  v44 = type metadata accessor for TTRRemindersListReminderActionTargetExtended(0);
  __chkstk_darwin(v44);
  v46 = (&v154 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v47);
  v49 = &v154 - v48;
  v50 = v4[4];
  v185 = v5;
  v51 = v5[5];
  ObjectType = swift_getObjectType();
  v53 = *(v51 + 328);
  v187 = v50;
  v186 = ObjectType;
  v53(a1, v201);
  v190 = v49;
  sub_1004F68A4(v49, v46, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v57 = v46[1];
      *v41 = *v46;
      v41[1] = v57;
      v56 = &enum case for TTRRemindersListTargetContainer.targetReminder(_:);
      goto LABEL_6;
    }

    sub_1004F676C(v46, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
  }

  else if (EnumCaseMultiPayload)
  {
    v55 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
    (*(*(v55 - 8) + 32))(v41, v46, v55);
    v56 = &enum case for TTRRemindersListTargetContainer.targetList(_:);
LABEL_6:
    v58 = v202;
    v59 = v198;
    (*(v198 + 104))(v41, *v56, v202);
    (*(v59 + 32))(v37, v41, v58);
    v60 = 0;
    goto LABEL_9;
  }

  v60 = 1;
  v58 = v202;
  v59 = v198;
LABEL_9:
  (*(v59 + 56))(v37, v60, 1, v58);
  if ((*(v59 + 48))(v37, 1, v58) == 1)
  {
    sub_1004F676C(v190, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
    sub_1000079B4(v37, &qword_10076C6F0, &unk_100630590);
    (*(v200 + 56))(v196, 1, 1, v199);
    return result;
  }

  v177 = v51;
  v62 = a1;
  v63 = *(v59 + 32);
  v64 = v189;
  v157 = v59 + 32;
  v156 = v63;
  v63(v189, v37, v58);
  v65 = v59;
  if (qword_1007673E0 != -1)
  {
    swift_once();
  }

  v66 = type metadata accessor for Logger();
  sub_100003E30(v66, qword_100788800);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 1835365481;
  *(inited + 40) = 0xE400000000000000;
  sub_1004F5C50(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
  v155 = v62;
  v68 = TTRTreeStorageItem.treeItemDescription.getter();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v68;
  *(inited + 56) = v69;
  v70 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70, &qword_10062FD60);
  sub_10000FD44("Reminders List: Create a new reminder below {item: %@}", 54, 2, v70);

  type metadata accessor for TTRUserDefaults();
  v71 = static TTRUserDefaults.appUserDefaults.getter();
  type metadata accessor for REMAnalyticsManager();
  static REMAnalyticsManager.shared.getter();
  v72 = sub_100058000(&qword_1007757E8, &unk_100635E60);
  v73 = &v34[*(v72 + 48)];
  v74 = &v34[*(v72 + 80)];
  v75 = enum case for REMUserOperation.createReminder(_:);
  v76 = type metadata accessor for REMUserOperation();
  (*(*(v76 - 8) + 104))(v34, v75, v76);
  *v73 = TTRUserDefaults.activitySessionId.getter();
  v73[1] = v77;
  v158 = v71;
  TTRUserDefaults.activitySessionBeginTime.getter();
  v203 = _typeName(_:qualified:)();
  v204 = v78;
  v79._countAndFlagsBits = 0x69547974706D452DLL;
  v79._object = 0xEB00000000656C74;
  String.append(_:)(v79);
  v80 = v204;
  *v74 = v203;
  v74[1] = v80;
  v81 = v179;
  v82 = v180;
  (*(v179 + 104))(v34, enum case for REMAnalyticsEvent.userOperation(_:), v180);
  REMAnalyticsManager.post(event:)();

  (*(v81 + 8))(v34, v82);
  v83 = v191;
  *v191 = v201;
  v84 = v192;
  v85 = v193;
  (*(v192 + 104))(v83, enum case for TTRRemindersListReminderInsertionPosition.afterSiblingChangeItem(_:), v193);
  v87 = v65 + 16;
  v86 = *(v65 + 16);
  v88 = v178;
  v89 = v64;
  v90 = v202;
  v86(v178, v89, v202);
  v91 = v182;
  (*(v84 + 16))(v182, v83, v85);
  v92 = (*(v87 + 64) + 24) & ~*(v87 + 64);
  v93 = (v38 + *(v84 + 80) + v92) & ~*(v84 + 80);
  v94 = swift_allocObject();
  v95 = v185;
  *(v94 + 16) = v185;
  v156(v94 + v92, v88, v90);
  v96 = v199;
  (*(v84 + 32))(v94 + v93, v91, v85);
  v97 = (v200 + 16);
  v98 = v197;
  v182 = *(v200 + 16);
  (v182)(v197, v155, v96);
  (*(v194 + 104))(v98, enum case for TTRRemindersListReminderCreationLocation.belowItem(_:), v195);
  v99 = v177;
  v100 = *(v177 + 368);
  v101 = v201;

  v102 = v184;
  v103 = v186;
  v100(v98, v186, v99);
  v104 = type metadata accessor for TTRRemindersListUncommittedReminder();
  v105 = *(v104 - 8);
  v106 = (*(v105 + 48))(v102, 1, v104);
  v183 = v94;
  if (v106 != 1)
  {
    v121 = v169;
    TTRRemindersListUncommittedReminder.item.getter();
    (*(v105 + 8))(v102, v104);
    v122 = v200;
    v123 = v170;
    (*(v200 + 32))(v170, v121, v96);
    v120 = v188;
    (v182)(v188, v123, v96);
    (*(v122 + 56))(v120, 0, 1, v96);
    Strong = swift_unknownObjectWeakLoadStrong();
    v119 = v196;
    if (Strong)
    {
      v125 = v95[3];
      v126 = swift_getObjectType();
      v127 = sub_1004F5C50(&qword_100769610, type metadata accessor for TTRReminderListEditingPresenter, &unk_100644258);
      (*(v125 + 24))(v95, v127, v123, v126, v125);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    v149 = v189;
    (*(v200 + 8))(v123, v96);
    (*(v194 + 8))(v197, v195);
    (*(v192 + 8))(v191, v193);
    (*(v198 + 8))(v149, v202);
    sub_1004F676C(v190, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
    goto LABEL_27;
  }

  v201 = v97;
  sub_1000079B4(v102, &qword_100788B60, &qword_1006442B0);
  v107 = enum case for TTREditingStateOption.InputType.unspecified(_:);
  v108 = type metadata accessor for TTREditingStateOption.InputType();
  v109 = v171;
  (*(*(v108 - 8) + 104))(v171, v107, v108);
  v110 = v172;
  v111 = v173;
  (*(v172 + 104))(v109, enum case for TTREditingStateOption.startsEditing(_:), v173);
  LOBYTE(v107) = TTRRemindersListEditingReminderCreationOptions.animated.getter();
  v112 = TTRRemindersListEditingReminderCreationOptions.initialPropertyValueProvider.getter();
  v114 = v113;
  v115 = v174;
  (*(v177 + 376))(v197, v109, v107 & 1, sub_1004F690C, v94, v112, v113, v103, v177);
  v116 = sub_1000301AC(v112, v114);
  (*(v110 + 8))(v109, v111, v116);
  v117 = sub_100058000(&qword_1007860B0, &unk_100641E70);
  v118 = (*(*(v117 - 8) + 48))(v115, 1, v117);
  v119 = v196;
  if (v118 != 1)
  {
    v128 = *(v115 + *(v117 + 48));
    v129 = v164;
    v130 = *(v164 + 48);
    v132 = v199;
    v131 = v200;
    v133 = *(v200 + 32);
    v134 = v163;
    v133(v163, v115, v199);
    *&v134[v130] = v128;
    v184 = *&v134[*(v129 + 48)];
    v135 = v176;
    v133(v176, v134, v132);
    v136 = v188;
    (v182)(v188, v135, v132);
    (*(v131 + 56))(v136, 0, 1, v132);
    v137 = v177;
    v138 = v165;
    v139 = v186;
    (*(v177 + 576))(v186, v177);
    v140 = v167;
    v141 = v166;
    v142 = v168;
    (*(v167 + 104))(v166, enum case for REMRemindersListDataView.SortingStyle.manual(_:), v168);
    LOBYTE(v136) = static REMRemindersListDataView.SortingStyle.== infix(_:_:)();
    v143 = *(v140 + 8);
    v143(v141, v142);
    v143(v138, v142);
    if (v136)
    {
      v144 = v137;
      v145 = v184;
      v146 = v160;
      (*(v144 + 608))(v139);
      v147 = v161;
      v148 = v162;
      if ((*(v161 + 48))(v146, 1, v162) == 1)
      {

        (*(v200 + 8))(v176, v132);
        (*(v194 + 8))(v197, v195);
        (*(v192 + 8))(v191, v193);
        (*(v198 + 8))(v189, v202);
        sub_1004F676C(v190, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
        sub_1000079B4(v146, &qword_10076DF30, &qword_100631A00);
LABEL_26:
        v119 = v196;
        v120 = v188;
        goto LABEL_27;
      }

      v150 = v159;
      (*(v147 + 32))(v159, v146, v148);
      swift_getObjectType();
      sub_100058000(&qword_10076B780, &qword_10062D7C0);
      v151 = swift_allocObject();
      *(v151 + 16) = xmmword_10062D420;
      *(v151 + 32) = v145;
      v152 = v145;
      v153 = v191;
      dispatch thunk of TTRRemindersListInteractorType.updateManualOrdering(uncommittedReminderIDs:position:paramsForREMManualOrdering:)();

      (*(v147 + 8))(v150, v148);
      (*(v200 + 8))(v176, v132);
      (*(v194 + 8))(v197, v195);
      (*(v192 + 8))(v153, v193);
    }

    else
    {

      (*(v200 + 8))(v176, v132);
      (*(v194 + 8))(v197, v195);
      (*(v192 + 8))(v191, v193);
    }

    (*(v198 + 8))(v189, v202);
    sub_1004F676C(v190, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
    goto LABEL_26;
  }

  (*(v194 + 8))(v197, v195);
  (*(v192 + 8))(v191, v193);
  (*(v198 + 8))(v189, v202);
  sub_1004F676C(v190, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
  sub_1000079B4(v115, &qword_100788B50, &qword_1006442A0);
  v120 = v188;
  (*(v200 + 56))(v188, 1, 1, v199);
LABEL_27:
  sub_100016588(v120, v119, &qword_100772140, &qword_10062D9F0);

  return result;
}

void *sub_1004EDBEC(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for TTRRemindersListReminderPostSaveMovement();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v27 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v26 - v7;
  v9 = sub_100058000(&qword_100788B70, &qword_1006442E0);
  __chkstk_darwin(v9 - 8);
  v11 = &v26 - v10;
  v12 = sub_100058000(&qword_100782918, &qword_10063E660);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v18 = &v26 - v17;
  sub_1004EE144(a1, sub_1004EDFE0, sub_1004EE090, 0, &qword_100788B70, &qword_1006442E0, &qword_100782918, v11, &qword_10063E660, sub_1001175EC);
  v19 = *(v13 + 48);
  if (v19(v11, 1, v12) == 1)
  {
    v20 = *(v12 + 48);
    *v18 = 0;
    v21 = enum case for TTRRemindersListReminderPostSaveMovement.stayInList(_:);
    (*(v4 + 104))(&v18[v20], enum case for TTRRemindersListReminderPostSaveMovement.stayInList(_:), v3);
    if (v19(v11, 1, v12) != 1)
    {
      sub_1000079B4(v11, &qword_100788B70, &qword_1006442E0);
    }
  }

  else
  {
    sub_100016588(v11, v18, &qword_100782918, &qword_10063E660);
    v21 = enum case for TTRRemindersListReminderPostSaveMovement.stayInList(_:);
  }

  sub_10000794C(v18, v15, &qword_100782918, &qword_10063E660);
  v22 = *v15;
  (*(v4 + 32))(v8, v15 + *(v12 + 48), v3);
  v23 = v27;
  (*(v4 + 16))(v27, v8, v3);
  v24 = (*(v4 + 88))(v23, v3);
  if (v24 == v21)
  {
    goto LABEL_8;
  }

  if (v24 == enum case for TTRRemindersListReminderPostSaveMovement.removedFromList(_:))
  {

    v22 = 0;
LABEL_8:
    (*(v4 + 8))(v8, v3);
    sub_1000079B4(v18, &qword_100782918, &qword_10063E660);
    return v22;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

id sub_1004EDFE0@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v3 = *(sub_100058000(&qword_100782918, &qword_10063E660) + 48);
  *a2 = a1;
  v4 = enum case for TTRRemindersListReminderPostSaveMovement.stayInList(_:);
  v5 = type metadata accessor for TTRRemindersListReminderPostSaveMovement();
  (*(*(v5 - 8) + 104))(&a2[v3], v4, v5);

  return a1;
}

uint64_t sub_1004EE090@<X0>(uint64_t *a3@<X8>)
{
  swift_getObjectType();
  v4 = sub_100058000(&qword_100782918, &qword_10063E660);
  *a3 = dispatch thunk of TTRRemindersListEditingSession.finishAndForceSave()();
  v5 = *(*(v4 - 8) + 56);

  return v5(a3, 0, 1, v4);
}

uint64_t sub_1004EE144@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, void (*a3)(uint64_t, void *, __n128)@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X5>, uint64_t *a6@<X6>, uint64_t *a7@<X7>, uint64_t a8@<X8>, uint64_t *a9, uint64_t a10)
{
  v83 = a4;
  v84 = a3;
  v89 = a8;
  v85 = a9;
  v86 = a7;
  v15 = type metadata accessor for TTRRemindersListEditingSessionDisplayTargets();
  v79 = *(v15 - 8);
  v80 = v15;
  __chkstk_darwin(v15);
  v78 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for TTRRemindersListEditingSessionUndoRegistration();
  v76 = *(v17 - 8);
  v77 = v17;
  __chkstk_darwin(v17);
  v75 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for TTRRemindersListViewModel.Item();
  v81 = *(v19 - 8);
  v82 = v19;
  __chkstk_darwin(v19);
  v21 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v74 = &v74 - v23;
  v24 = sub_100058000(&qword_100775780, &unk_100630580);
  __chkstk_darwin(v24 - 8);
  v26 = &v74 - v25;
  v87 = a5;
  v88 = a6;
  v27 = sub_100058000(a5, a6);
  __chkstk_darwin(v27 - 8);
  v29 = &v74 - v28;
  v30 = *(v10 + 40);
  ObjectType = swift_getObjectType();
  if (!(*(v30 + 440))(a1, ObjectType, v30))
  {
    v32 = dispatch thunk of TTRRemindersListPresenterCapabilityCoreViewModelSourceType.remReminder(for:)();
    if (v32)
    {
      v33 = v32;
      a2();

      v34 = sub_100058000(v86, v85);
      (*(*(v34 - 8) + 56))(v29, 0, 1, v34);
      return sub_100016588(v29, v89, v87, v88);
    }

    if (qword_1007673E0 != -1)
    {
      swift_once();
    }

    v63 = type metadata accessor for Logger();
    sub_100003E30(v63, qword_100788800);
    v65 = v81;
    v64 = v82;
    (*(v81 + 16))(v21, a1, v82);
    v47 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v47, v66))
    {

      (*(v65 + 8))(v21, v64);
      goto LABEL_28;
    }

    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v90 = v68;
    *v67 = 136315138;
    sub_1004F5C50(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
    v69 = TTRTreeStorageItem.treeItemDescription.getter();
    v71 = v70;
    (*(v65 + 8))(v21, v64);
    v72 = sub_100004060(v69, v71, &v90);

    *(v67 + 4) = v72;
    _os_log_impl(&_mh_execute_header, v47, v66, "commitForShowingReminderDetail: failed to get REMReminder {item: %s}", v67, 0xCu);
    sub_100004758(v68);

    goto LABEL_25;
  }

  if (TTRInCellEditingPresenterManagingHelper.activeInCellEditingPresenter(editing:)())
  {
    swift_getObjectType();
    dispatch thunk of TTRReminderCellPropertyEditingPresenterType.requestCommitForShowingReminderDetail()();
LABEL_8:
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v35 = *(v10 + 24);
    v36 = swift_getObjectType();
    v37 = sub_1004F5C50(&qword_100769610, type metadata accessor for TTRReminderListEditingPresenter, &unk_100644258);
    (*(v35 + 32))(v10, v37, a1, v36, v35);
    goto LABEL_8;
  }

LABEL_9:
  v90 = 0;
  v91 = 0xE000000000000000;
  _StringGuts.grow(_:)(33);

  v90 = _typeName(_:qualified:)();
  v91 = v38;
  v39._object = 0x800000010068A930;
  v39._countAndFlagsBits = 0xD00000000000001FLL;
  String.append(_:)(v39);
  sub_100410DCC(v26);
  sub_1004F5C50(&qword_100775790, type metadata accessor for TTRRemindersListEditingSessionProvider, &unk_10063E618);

  v40 = TTRRemindersListEditingSessionProviderCapability.acquireEditingSession(forEditing:acquirerName:undoContext:editingSessionState:editingSessionDelegate:)();
  sub_1000079B4(v26, &qword_100775780, &unk_100630580);

  if (v40)
  {
    type metadata accessor for TTRRemindersListConcreteEditingSession();
    dispatch thunk of TTRRemindersListEditingSession.reminder.getter();
    sub_10000C36C(&v90, v92);
    dispatch thunk of TTRReminderProtocol.titleAsString.getter();
    if (v41)
    {
      v93 = String.validatedReminderTitle()();
      isValid = v93.isValid;

      sub_100004758(&v90);

      if (isValid)
      {
        goto LABEL_19;
      }
    }

    else
    {
      sub_100004758(&v90);
    }

    TTRRemindersListEditingSession.effectiveParentList.getter();
    static TTRLocalizableStrings.Common.defaultTitleForBlankReminder(effectiveParentList:)();
    sub_1000079B4(&v90, &unk_100775680, &qword_10062E3B0);
    v55 = objc_allocWithZone(NSAttributedString);
    v56 = String._bridgeToObjectiveC()();

    v57 = [v55 initWithString:v56];

    v59 = v75;
    v58 = v76;
    v60 = v77;
    (*(v76 + 104))(v75, enum case for TTRRemindersListEditingSessionUndoRegistration.automatic(_:), v77);
    TTRRemindersListEditingSession.setTitleWithOptionalUndo(_:locale:undoRegistration:canMarkHasSetTitle:)();

    (*(v58 + 8))(v59, v60);
    v61 = v78;
    static TTRRemindersListEditingSessionDisplayTargets.cell.getter();
    dispatch thunk of TTRRemindersListEditingSession.setNeedsDisplay(_:)();
    (*(v79 + 8))(v61, v80);
LABEL_19:
    (v84)(v40, &protocol witness table for TTRRemindersListConcreteEditingSession);

    return sub_100016588(v29, v89, v87, v88);
  }

  if (qword_1007673E0 != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  sub_100003E30(v43, qword_100788800);
  v45 = v81;
  v44 = v82;
  v46 = v74;
  (*(v81 + 16))(v74, a1, v82);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v47, v48))
  {

    (*(v45 + 8))(v46, v44);
    goto LABEL_28;
  }

  v49 = swift_slowAlloc();
  v50 = swift_slowAlloc();
  v90 = v50;
  *v49 = 136315138;
  sub_1004F5C50(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
  v51 = TTRTreeStorageItem.treeItemDescription.getter();
  v53 = v52;
  (*(v45 + 8))(v46, v44);
  v54 = sub_100004060(v51, v53, &v90);

  *(v49 + 4) = v54;
  _os_log_impl(&_mh_execute_header, v47, v48, "commitForShowingReminderDetail: failed to acquire editing session {item: %s}", v49, 0xCu);
  sub_100004758(v50);

LABEL_25:

LABEL_28:
  v73 = sub_100058000(v86, v85);
  return (*(*(v73 - 8) + 56))(v89, 1, 1, v73);
}

void *sub_1004EEBA8(char *a1, __n128 a2)
{
  v26 = a1;
  v2 = type metadata accessor for TTRRemindersListReminderPostSaveMovement();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v27 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v26 - v6;
  v8 = sub_100058000(&qword_100788BA0, &qword_100644308);
  __chkstk_darwin(v8 - 8);
  v10 = &v26 - v9;
  v11 = sub_100058000(&qword_100782908, &unk_100644310);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v26 - v16;
  sub_1004EE144(v26, sub_1004F8D2C, sub_1004EF0EC, 0, &qword_100788BA0, &qword_100644308, &qword_100782908, v10, &unk_100644310, sub_1004F8F80);
  v18 = *(v12 + 48);
  if (v18(v10, 1, v11) == 1)
  {
    v26 = v7;
    v19 = &v17[*(v11 + 48)];
    v20 = enum case for TTRRemindersListReminderPostSaveMovement.stayInList(_:);
    (*(v3 + 104))(v17, enum case for TTRRemindersListReminderPostSaveMovement.stayInList(_:), v2);
    *v19 = 0;
    *(v19 + 1) = 0;
    if (v18(v10, 1, v11) != 1)
    {
      sub_1000079B4(v10, &qword_100788BA0, &qword_100644308);
    }

    v7 = v26;
  }

  else
  {
    sub_100016588(v10, v17, &qword_100782908, &unk_100644310);
    v20 = enum case for TTRRemindersListReminderPostSaveMovement.stayInList(_:);
  }

  sub_10000794C(v17, v14, &qword_100782908, &unk_100644310);
  v21 = *&v14[*(v11 + 48)];
  (*(v3 + 32))(v7, v14, v2);
  v22 = v27;
  (*(v3 + 16))(v27, v7, v2);
  v23 = (*(v3 + 88))(v22, v2);
  if (v23 == v20)
  {
    goto LABEL_9;
  }

  if (v23 == enum case for TTRRemindersListReminderPostSaveMovement.removedFromList(_:))
  {
    v24.n128_f64[0] = sub_100489140(v21);
    v21 = 0;
LABEL_9:
    (*(v3 + 8))(v7, v2, v24);
    sub_1000079B4(v17, &qword_100782908, &unk_100644310);
    return v21;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1004EEFB4@<X0>(uint64_t a3@<X8>)
{
  swift_getObjectType();
  v4 = dispatch thunk of TTRRemindersListInteractorType.reminderChangeItem(forEditing:)();
  v5 = [v4 objectID];
  *(swift_allocObject() + 16) = v5;
  sub_100058000(&qword_100775980, &qword_100635FA0);
  swift_allocObject();
  v6 = Future.init(_:)();
  v7 = (a3 + *(sub_100058000(&qword_100782908, &unk_100644310) + 48));
  v8 = enum case for TTRRemindersListReminderPostSaveMovement.stayInList(_:);
  v9 = type metadata accessor for TTRRemindersListReminderPostSaveMovement();
  result = (*(*(v9 - 8) + 104))(a3, v8, v9);
  *v7 = v4;
  v7[1] = v6;
  return result;
}

uint64_t sub_1004EF0EC@<X0>(uint64_t a3@<X8>)
{
  swift_getObjectType();
  v4 = sub_100058000(&qword_100782908, &unk_100644310);
  v5 = (a3 + *(v4 + 48));
  *v5 = dispatch thunk of TTRRemindersListEditingSession.finishAndForceSaveAsync()();
  v5[1] = v6;
  v7 = *(*(v4 - 8) + 56);

  return v7(a3, 0, 1, v4);
}

uint64_t sub_1004EF1B4(uint64_t a1, char a2, __n128 a3)
{
  v5 = type metadata accessor for TTRReminderListEditingPresenter.EditingState(0);
  __chkstk_darwin(v5);
  v7 = &v29[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v29[-v9];
  v11 = OBJC_IVAR____TtC9Reminders31TTRReminderListEditingPresenter_state;
  swift_beginAccess();
  sub_1004F68A4(a1 + v11, v10, type metadata accessor for TTRReminderListEditingPresenter.EditingState);
  v10[*(v5 + 20)] = a2;
  sub_1004F68A4(a1 + v11, v7, type metadata accessor for TTRReminderListEditingPresenter.EditingState);
  v12 = sub_1004F5C98(v7, v10);
  sub_1004F676C(v7, type metadata accessor for TTRReminderListEditingPresenter.EditingState);
  if ((v12 & 1) == 0)
  {
    if (qword_1007673E0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100003E30(v13, qword_100788800);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32[0] = v31;
      *v16 = 136315394;
      sub_1004F68A4(a1 + v11, v7, type metadata accessor for TTRReminderListEditingPresenter.EditingState);
      sub_1004F5C50(&unk_1007755F8, type metadata accessor for TTRReminderListEditingPresenter.EditingState, &unk_1006440F8);
      v30 = v15;
      v17 = TTRRemindersListEditingState.loggingDescription.getter();
      v19 = v18;
      sub_1004F676C(v7, type metadata accessor for TTRReminderListEditingPresenter.EditingState);
      v20 = sub_100004060(v17, v19, v32);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      swift_beginAccess();
      v21 = TTRRemindersListEditingState.loggingDescription.getter();
      v23 = sub_100004060(v21, v22, v32);

      *(v16 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v14, v30, "TTRReminderListEditingPresenter editing state changed {from: '%s', to: '%s'}", v16, 0x16u);
      swift_arrayDestroy();
    }

    swift_beginAccess();
    sub_1004F68A4(v10, v7, type metadata accessor for TTRReminderListEditingPresenter.EditingState);
    swift_beginAccess();
    sub_1004F6708(v7, a1 + v11);
    swift_endAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v24 = *(a1 + 24);
      ObjectType = swift_getObjectType();
      v26 = sub_1004F5C50(&qword_100769610, type metadata accessor for TTRReminderListEditingPresenter, &unk_100644258);
      v32[3] = v5;
      v32[4] = sub_1004F5C50(&unk_1007755F8, type metadata accessor for TTRReminderListEditingPresenter.EditingState, &unk_1006440F8);
      v27 = sub_1000317B8(v32);
      sub_1004F68A4(v10, v27, type metadata accessor for TTRReminderListEditingPresenter.EditingState);
      (*(v24 + 8))(a1, v26, v32, ObjectType, v24);
      swift_unknownObjectRelease();
      sub_100004758(v32);
    }
  }

  return sub_1004F676C(v10, type metadata accessor for TTRReminderListEditingPresenter.EditingState);
}

uint64_t sub_1004EF664(double (*a1)(_BYTE *), __n128 a2)
{
  v3 = v2;
  v5 = type metadata accessor for TTRReminderListEditingPresenter.EditingState(0);
  __chkstk_darwin(v5);
  v7 = &v30[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v30[-v9];
  v11 = OBJC_IVAR____TtC9Reminders31TTRReminderListEditingPresenter_state;
  swift_beginAccess();
  sub_1004F68A4(v2 + v11, v10, type metadata accessor for TTRReminderListEditingPresenter.EditingState);
  a1(v10);
  sub_1004F68A4(v2 + v11, v7, type metadata accessor for TTRReminderListEditingPresenter.EditingState);
  v12 = sub_1004F5C98(v7, v10);
  sub_1004F676C(v7, type metadata accessor for TTRReminderListEditingPresenter.EditingState);
  if ((v12 & 1) == 0)
  {
    if (qword_1007673E0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100003E30(v13, qword_100788800);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();

    v16 = os_log_type_enabled(v14, v15);
    v33 = v5;
    if (v16)
    {
      v17 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v34[0] = v32;
      *v17 = 136315394;
      sub_1004F68A4(v3 + v11, v7, type metadata accessor for TTRReminderListEditingPresenter.EditingState);
      sub_1004F5C50(&unk_1007755F8, type metadata accessor for TTRReminderListEditingPresenter.EditingState, &unk_1006440F8);
      v31 = v15;
      v18 = TTRRemindersListEditingState.loggingDescription.getter();
      v20 = v19;
      sub_1004F676C(v7, type metadata accessor for TTRReminderListEditingPresenter.EditingState);
      v21 = sub_100004060(v18, v20, v34);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      swift_beginAccess();
      v22 = TTRRemindersListEditingState.loggingDescription.getter();
      v24 = sub_100004060(v22, v23, v34);

      *(v17 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v14, v31, "TTRReminderListEditingPresenter editing state changed {from: '%s', to: '%s'}", v17, 0x16u);
      swift_arrayDestroy();
    }

    swift_beginAccess();
    sub_1004F68A4(v10, v7, type metadata accessor for TTRReminderListEditingPresenter.EditingState);
    swift_beginAccess();
    sub_1004F6708(v7, v3 + v11);
    swift_endAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v25 = *(v3 + 24);
      ObjectType = swift_getObjectType();
      v27 = sub_1004F5C50(&qword_100769610, type metadata accessor for TTRReminderListEditingPresenter, &unk_100644258);
      v34[3] = v33;
      v34[4] = sub_1004F5C50(&unk_1007755F8, type metadata accessor for TTRReminderListEditingPresenter.EditingState, &unk_1006440F8);
      v28 = sub_1000317B8(v34);
      sub_1004F68A4(v10, v28, type metadata accessor for TTRReminderListEditingPresenter.EditingState);
      (*(v25 + 8))(v3, v27, v34, ObjectType, v25);
      swift_unknownObjectRelease();
      sub_100004758(v34);
    }
  }

  return sub_1004F676C(v10, type metadata accessor for TTRReminderListEditingPresenter.EditingState);
}

void sub_1004EFB24(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + 40);
  ObjectType = swift_getObjectType();
  v12 = (*(v10 + 440))(a1, ObjectType, v10);
  (*(v10 + 400))(a1, ObjectType, v10);
  if (a2)
  {
    if (v12)
    {
      if (qword_1007673E0 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_100003E30(v13, qword_100788800);

      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        aBlock[0] = v17;
        *v16 = 136315138;
        TTRRemindersListEditingSessionState.item.getter();
        sub_1004F5C50(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
        v18 = TTRTreeStorageItem.treeItemDescription.getter();
        v19 = v7;
        v21 = v20;
        (*(v19 + 8))(v9, v6);
        v22 = sub_100004060(v18, v21, aBlock);

        *(v16 + 4) = v22;
        _os_log_impl(&_mh_execute_header, v14, v15, "TTRReminderListEditingPresenter: register undo for discarding uncommitted reminder {item: %s}", v16, 0xCu);
        sub_100004758(v17);
      }

      v23 = objc_opt_self();
      static TTRLocalizableStrings.UndoAction.deleteReminder.getter();
      v24 = String._bridgeToObjectiveC()();

      v25 = swift_allocObject();
      *(v25 + 16) = v3;
      *(v25 + 24) = v12;
      v26 = swift_allocObject();
      *(v26 + 16) = sub_100262634;
      *(v26 + 24) = v25;
      aBlock[4] = sub_100026410;
      aBlock[5] = v26;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100026440;
      aBlock[3] = &unk_10072C988;
      v27 = _Block_copy(aBlock);

      [v23 withActionName:v24 block:v27];

      _Block_release(v27);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }
    }
  }

  else
  {
  }
}

void sub_1004EFF6C(uint64_t a1)
{
  swift_getObjectType();
  v1 = TTRRemindersListEditingSessionState.reminderChangeItem.getter();
  dispatch thunk of TTRRemindersListInteractorType.registerUndoToSaveUncommittedReminder(_:)();
}

uint64_t sub_1004EFFD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_100058000(&qword_100775780, &unk_100630580);
  __chkstk_darwin(v3 - 8);
  v5 = &v8 - v4;
  sub_100410DCC(&v8 - v4);
  sub_1004F5C50(&qword_100775790, type metadata accessor for TTRRemindersListEditingSessionProvider, &unk_10063E618);

  v6 = TTRRemindersListEditingSessionProviderCapability.acquireEditingSession(forEditing:acquirerName:undoContext:editingSessionState:editingSessionDelegate:)();
  sub_1000079B4(v5, &qword_100775780, &unk_100630580);

  return v6;
}

uint64_t sub_1004F0134(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v4 = v3;
  v99 = a3;
  v100 = a2;
  v6 = type metadata accessor for TTRRemindersListEditingSessionFinishingOption();
  v89 = *(v6 - 8);
  __chkstk_darwin(v6);
  v110 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRRemindersListEditingSessionDisplayTargets();
  v111 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100058000(&qword_100775780, &unk_100630580);
  __chkstk_darwin(v11 - 8);
  v98 = &v89 - v12;
  v116 = type metadata accessor for TTRRemindersListViewModel.Item();
  v13 = *(v116 - 8);
  __chkstk_darwin(v116);
  __chkstk_darwin(v14);
  v93 = &v89 - v15;
  __chkstk_darwin(v16);
  v19 = &v89 - v18;
  v118 = _swiftEmptyArrayStorage;
  v20 = *(a1 + 16);
  v95 = v4;
  v115 = v6;
  v97 = v8;
  v96 = v10;
  if (v20)
  {
    v90 = v17;
    v21 = *(v4 + 32);
    v22 = *(v4 + 40);
    ObjectType = swift_getObjectType();
    v106 = v22 + 440;
    v107 = ObjectType;
    v25 = *(v13 + 16);
    v24 = v13 + 16;
    v113 = v25;
    v26 = a1 + ((*(v24 + 64) + 32) & ~*(v24 + 64));
    v104 = *(v22 + 440);
    v105 = (v24 - 8);
    v103 = *(v24 + 56);
    *&v27 = 136315138;
    v91 = v27;
    v112 = _swiftEmptyArrayStorage;
    v94 = _swiftEmptyArrayStorage;
    *&v109 = v24;
    v102 = v19;
    v101 = v21;
    v108 = v22;
    (v25)(v19, v26, v116);
    while (!v104(v19, v107, v22))
    {
      v38 = dispatch thunk of TTRRemindersListPresenterCapabilityCoreViewModelSourceType.remReminder(for:)();
      if (!v38)
      {
        v114 = v20;
        if (qword_1007673E0 != -1)
        {
          swift_once();
        }

        v60 = type metadata accessor for Logger();
        sub_100003E30(v60, qword_100788800);
        v61 = v90;
        v62 = v102;
        (v113)(v90, v102, v116);
        v63 = Logger.logObject.getter();
        v64 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v63, v64))
        {
          v65 = swift_slowAlloc();
          v92 = swift_slowAlloc();
          v117[0] = v92;
          *v65 = v91;
          sub_1004F5C50(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
          v66 = v116;
          v67 = TTRTreeStorageItem.treeItemDescription.getter();
          v69 = v68;
          v70 = *v105;
          (*v105)(v61, v66);
          v71 = sub_100004060(v67, v69, v117);

          *(v65 + 4) = v71;
          _os_log_impl(&_mh_execute_header, v63, v64, "Skip edit; failed to get REMReminder {item: %s}", v65, 0xCu);
          sub_100004758(v92);

          v19 = v102;
          v70(v102, v66);
        }

        else
        {

          v72 = *v105;
          v73 = v116;
          (*v105)(v61, v116);
          v72(v62, v73);
          v19 = v62;
        }

        goto LABEL_4;
      }

      v39 = v38;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v118 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v118 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      (*v105)(v19, v116);
      v94 = v118;
LABEL_5:
      v26 += v103;
      --v20;
      v22 = v108;
      if (!v20)
      {
        goto LABEL_33;
      }

      (v113)(v19, v26, v116);
    }

    v114 = v20;

    v117[0] = _typeName(_:qualified:)();
    v117[1] = v30;
    v31._countAndFlagsBits = 0x746964652DLL;
    v31._object = 0xE500000000000000;
    String.append(_:)(v31);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v33 = Strong;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v34 = *(v33 + 24);
        v35 = swift_getObjectType();
        v36 = sub_1004F5C50(&qword_100769610, type metadata accessor for TTRReminderListEditingPresenter, &unk_100644258);
        v37 = v98;
        (*(v34 + 48))(v33, v36, v35, v34);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
LABEL_17:
        sub_1004F5C50(&qword_100775790, type metadata accessor for TTRRemindersListEditingSessionProvider, &unk_10063E618);

        v19 = v102;
        v41 = TTRRemindersListEditingSessionProviderCapability.acquireEditingSession(forEditing:acquirerName:undoContext:editingSessionState:editingSessionDelegate:)();

        sub_1000079B4(v37, &qword_100775780, &unk_100630580);

        if (!v41)
        {
          if (qword_1007673E0 != -1)
          {
            swift_once();
          }

          v47 = type metadata accessor for Logger();
          sub_100003E30(v47, qword_100788800);
          v48 = v93;
          (v113)(v93, v19, v116);
          v49 = Logger.logObject.getter();
          v50 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v49, v50))
          {
            v51 = v48;
            v52 = swift_slowAlloc();
            v92 = swift_slowAlloc();
            v117[0] = v92;
            *v52 = v91;
            sub_1004F5C50(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
            v53 = v116;
            v54 = TTRTreeStorageItem.treeItemDescription.getter();
            v56 = v55;
            v57 = *v105;
            v58 = v51;
            v19 = v102;
            (*v105)(v58, v53);
            v59 = sub_100004060(v54, v56, v117);

            *(v52 + 4) = v59;
            _os_log_impl(&_mh_execute_header, v49, v50, "Skip edit; failed to create editing session {item: %s}", v52, 0xCu);
            sub_100004758(v92);

            v57(v19, v53);
          }

          else
          {

            v28 = *v105;
            v29 = v116;
            (*v105)(v48, v116);
            v28(v19, v29);
          }

LABEL_4:
          v20 = v114;
          goto LABEL_5;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v20 = v114;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v112 = sub_100547450(0, v112[2] + 1, 1, v112);
        }

        v44 = v112[2];
        v43 = v112[3];
        if (v44 >= v43 >> 1)
        {
          v112 = sub_100547450((v43 > 1), v44 + 1, 1, v112);
        }

        (*v105)(v19, v116);
        v45 = v112;
        v112[2] = v44 + 1;
        v46 = &v45[2 * v44];
        v46[4] = v41;
        v46[5] = &protocol witness table for TTRRemindersListConcreteEditingSession;
        goto LABEL_5;
      }

      swift_unknownObjectRelease();
    }

    v40 = type metadata accessor for TTRRemindersListUndoContext();
    v37 = v98;
    (*(*(v40 - 8) + 56))(v98, 1, 1, v40);
    goto LABEL_17;
  }

  v112 = _swiftEmptyArrayStorage;
  v94 = _swiftEmptyArrayStorage;
LABEL_33:
  v74 = v112[2];
  v75 = v94;
  if (!(v94 >> 62))
  {
    result = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v77 = v74 + result;
    if (!__OFADD__(v74, result))
    {
      goto LABEL_35;
    }

LABEL_49:
    __break(1u);
    return result;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v77 = v74 + result;
  if (__OFADD__(v74, result))
  {
    goto LABEL_49;
  }

LABEL_35:
  if (v77 < 1)
  {

    return 0;
  }

  else
  {
    v107 = v75 >> 62;
    v108 = v77;
    v78 = v112[2];
    v79 = v100;
    if (v78)
    {
      v114 = v111 + 8;
      v113 = (v89 + 8);
      v80 = v112 + 5;
      v109 = xmmword_10062D3F0;
      do
      {
        v116 = *v80;
        swift_getObjectType();
        swift_unknownObjectRetain();
        dispatch thunk of TTRRemindersListEditingSession.attributeEditor.getter();
        v79(v117);
        sub_100004758(v117);
        sub_100058000(&qword_10076C6E0, &unk_100630570);
        v81 = swift_allocObject();
        *(v81 + 16) = v109;
        static TTRRemindersListEditingSessionDisplayTargets.cell.getter();
        static TTRRemindersListEditingSessionDisplayTargets.reminderEditingComponents.getter();
        v117[0] = v81;
        sub_1004F5C50(&unk_1007756B0, &type metadata accessor for TTRRemindersListEditingSessionDisplayTargets, &protocol conformance descriptor for TTRRemindersListEditingSessionDisplayTargets);
        sub_100058000(&qword_10076C6E8, &unk_100635D60);
        sub_10000E188(&unk_1007756C0, &qword_10076C6E8, &unk_100635D60, &protocol conformance descriptor for [A]);
        v82 = v96;
        v83 = v97;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        dispatch thunk of TTRRemindersListEditingSession.setNeedsDisplay(_:)();
        (*(v111 + 8))(v82, v83);
        v117[0] = _swiftEmptyArrayStorage;
        sub_1004F5C50(&qword_10076C6D0, &type metadata accessor for TTRRemindersListEditingSessionFinishingOption, &protocol conformance descriptor for TTRRemindersListEditingSessionFinishingOption);
        sub_100058000(&unk_1007756D0, &qword_100630568);
        sub_10000E188(&qword_10076C6D8, &unk_1007756D0, &qword_100630568, &protocol conformance descriptor for [A]);
        v84 = v110;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        dispatch thunk of TTRRemindersListEditingSession.finish(options:)();
        v85 = v115;
        swift_unknownObjectRelease();
        v86 = v84;
        v79 = v100;
        (*v113)(v86, v85);
        v80 += 2;
        --v78;
      }

      while (v78);
    }

    if (v107)
    {
      v87 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v87 = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v88 = v100;
    if (v87)
    {
      swift_getObjectType();
      dispatch thunk of TTRRemindersListInteractorType.attributeEditor(for:)();

      v88(v117);
      sub_100004758(v117);
    }

    else
    {
    }

    return v108;
  }
}

void sub_1004F1000(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v62 = type metadata accessor for TTRReminderListEditingPresenter.PendingDisplay(0);
  v56 = *(v62 - 8);
  __chkstk_darwin(v62);
  v48 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v66 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v9;
  __chkstk_darwin(v10);
  v57 = &v44 - v11;
  v61 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  __chkstk_darwin(v61);
  v59 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 16);
  if (!v14)
  {
    return;
  }

  v15 = 0;
  v16 = 0;
  v17 = *(v8 + 80);
  v18 = a2 + ((v17 + 32) & ~v17);
  v60 = (v8 + 16);
  v54 = (v17 + 16) & ~v17;
  v55 = v17;
  v52 = (v8 + 8);
  v53 = (v8 + 32);
  v46 = v12 + 16;
  v47 = v12;
  v51 = (v12 + 8);
  v50 = "reate editable section";
  v49 = *(v8 + 72);
  v64 = v14 - 1;
  v19 = v59;
  v45 = v3;
  v44 = a1;
  while (1)
  {
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
    v20 = *v60;
    v21 = v57;
    v63 = v18;
    v20(v57, v18, v7);
    v20(v66, v21, v7);
    v22 = v54;
    v23 = swift_allocObject();
    v24 = *v53;
    v65 = v23;
    v24(v23 + v22, v21, v7);
    sub_1000301AC(v16, v15);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v69 = *(v3 + 72);
    v26 = v69;
    *(v3 + 72) = 0x8000000000000000;
    v28 = sub_1003AB294(v19);
    v29 = v26[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      break;
    }

    v32 = v27;
    if (v26[3] >= v31)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        *(v3 + 72) = v26;
        if (v27)
        {
          goto LABEL_10;
        }
      }

      else
      {
        sub_1003AE434();
        v26 = v69;
        *(v3 + 72) = v69;
        if (v32)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_100549754(v31, isUniquelyReferenced_nonNull_native);
      v26 = v69;
      v33 = sub_1003AB294(v19);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_20;
      }

      v28 = v33;
      *(v3 + 72) = v26;
      if (v32)
      {
LABEL_10:
        (*v52)(v66, v7);
        v35 = *(v56 + 72) * v28;
        goto LABEL_14;
      }
    }

    type metadata accessor for TTRRemindersListEditingSessionDisplayTargets();
    v69 = _swiftEmptyArrayStorage;
    sub_1004F5C50(&unk_1007756B0, &type metadata accessor for TTRRemindersListEditingSessionDisplayTargets, &protocol conformance descriptor for TTRRemindersListEditingSessionDisplayTargets);
    sub_100058000(&qword_10076C6E8, &unk_100635D60);
    sub_10000E188(&unk_1007756C0, &qword_10076C6E8, &unk_100635D60, &protocol conformance descriptor for [A]);
    v36 = v48;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v37 = v66;
    v20(v36, v66, v7);
    (*v52)(v37, v7);
    v26[(v28 >> 6) + 8] |= 1 << v28;
    (*(v47 + 16))(v26[6] + *(v47 + 72) * v28, v59, v61);
    v35 = *(v56 + 72) * v28;
    sub_1004F683C(v36, v26[7] + v35, type metadata accessor for TTRReminderListEditingPresenter.PendingDisplay);
    v38 = v26[2];
    v39 = __OFADD__(v38, 1);
    v40 = v38 + 1;
    if (v39)
    {
      goto LABEL_19;
    }

    v26[2] = v40;
    v3 = v45;
    v19 = v59;
LABEL_14:
    v41 = v26[7] + *(v62 + 20);
    v42 = type metadata accessor for TTRRemindersListEditingSessionDisplayTargets();
    sub_1004F5C50(&qword_100788B38, &type metadata accessor for TTRRemindersListEditingSessionDisplayTargets, &protocol conformance descriptor for TTRRemindersListEditingSessionDisplayTargets);
    dispatch thunk of RawRepresentable.rawValue.getter();
    (*(*(v42 - 8) + 8))(v41 + v35, v42);
    dispatch thunk of RawRepresentable.rawValue.getter();
    v69 = (v67 | v68);
    sub_1004F5C50(&qword_100788B40, &type metadata accessor for TTRRemindersListEditingSessionDisplayTargets, &protocol conformance descriptor for TTRRemindersListEditingSessionDisplayTargets);
    dispatch thunk of OptionSet.init(rawValue:)();
    swift_endAccess();
    (*v51)(v19, v61);
    v43._object = (v50 | 0x8000000000000000);
    v43._countAndFlagsBits = 0xD000000000000017;
    TTRDeferredAction.scheduleNextRunLoop(reason:)(v43);
    if (!v64)
    {

      return;
    }

    --v64;
    v18 = v63 + v49;
    v16 = sub_1004F67CC;
    v15 = v65;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  (*v52)(v66, v7);
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_1004F17A4(uint64_t a1)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.Item();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v27 - v8;
  result = *(v1 + 88);
  if (result)
  {
    v11 = result == a1;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    *(v1 + 88) = 0;

    v12 = *(v4 + 16);
    v12(v9, a1 + OBJC_IVAR____TtC9RemindersP33_1A71EBEB5B774417A77A4912B4DA8E4226PencilWritingStateReporter_item, v3);
    if (TTRInCellEditingPresenterManagingHelper.activeInCellTitleEditingPresenter(editing:)())
    {
      swift_getObjectType();
      v13 = dispatch thunk of TTRReminderCellEditingInCellPresenterTitleEditing.requestMarkCommittableForPencil()();
      swift_unknownObjectRelease();
    }

    else
    {
      v13 = 0;
    }

    if (qword_1007673E0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100003E30(v14, qword_100788800);
    v12(v6, v9, v3);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = v27;
      *v17 = 136315394;
      if (v13)
      {
        v18 = 1702195828;
      }

      else
      {
        v18 = 0x65736C6166;
      }

      if (v13)
      {
        v19 = 0xE400000000000000;
      }

      else
      {
        v19 = 0xE500000000000000;
      }

      v20 = sub_100004060(v18, v19, &v28);

      *(v17 + 4) = v20;
      *(v17 + 12) = 2080;
      sub_1004F5C50(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
      v21 = TTRTreeStorageItem.treeItemDescription.getter();
      v23 = v22;
      v24 = *(v4 + 8);
      v24(v6, v3);
      v25 = sub_100004060(v21, v23, &v28);

      *(v17 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v15, v16, "Reminders List mark item committable for pencil {marked: %s, item: %s}", v17, 0x16u);
      swift_arrayDestroy();

      return (v24)(v9, v3);
    }

    else
    {

      v26 = *(v4 + 8);
      v26(v6, v3);
      return (v26)(v9, v3);
    }
  }

  return result;
}

uint64_t sub_1004F1B24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for TTRRemindersListEditingSessionDisplayTargets();
  type metadata accessor for TTRReminderListEditingPresenter.PendingDisplay(0);
  sub_1004F5C50(&unk_1007756B0, &type metadata accessor for TTRRemindersListEditingSessionDisplayTargets, &protocol conformance descriptor for TTRRemindersListEditingSessionDisplayTargets);
  sub_100058000(&qword_10076C6E8, &unk_100635D60);
  sub_10000E188(&unk_1007756C0, &qword_10076C6E8, &unk_100635D60, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  return (*(*(v4 - 8) + 16))(a2, a1, v4);
}

void *sub_1004F1C64()
{
  sub_10003B788(v0 + 16);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_1004F676C(v0 + OBJC_IVAR____TtC9Reminders31TTRReminderListEditingPresenter_state, type metadata accessor for TTRReminderListEditingPresenter.EditingState);
  return v0;
}

uint64_t sub_1004F1CE0()
{
  sub_1004F1C64();

  return swift_deallocClassInstance();
}

uint64_t sub_1004F1D60(uint64_t a1, __n128 a2)
{
  result = type metadata accessor for TTRReminderListEditingPresenter.EditingState(319);
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void *sub_1004F1F0C(void *a1, id a2, uint64_t a3, void (**a4)(char *, void, uint64_t))
{
  v5 = v4;
  v152 = a4;
  v154 = a2;
  v155 = a3;
  v156 = *v4;
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  v160 = *(v7 - 8);
  __chkstk_darwin(v7);
  v132 = &v119 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for REMAnalyticsEvent();
  v130 = *(v131 - 8);
  __chkstk_darwin(v131);
  v161 = &v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = sub_100058000(&qword_1007860B0, &unk_100641E70);
  v135 = *(v159 - 8);
  __chkstk_darwin(v159);
  v158 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v157 = &v119 - v12;
  v13 = sub_100058000(&qword_10076DF30, &qword_100631A00);
  __chkstk_darwin(v13 - 8);
  v127 = &v119 - v14;
  v134 = type metadata accessor for TTRRemindersMovingParamsForREMManualOrdering();
  v133 = *(v134 - 8);
  __chkstk_darwin(v134);
  v128 = &v119 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v144 = *(v16 - 8);
  v145 = v16;
  __chkstk_darwin(v16);
  v143 = &v119 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v142 = &v119 - v19;
  v141 = type metadata accessor for TTRRemindersListReminderCreationLocation();
  v140 = *(v141 - 8);
  __chkstk_darwin(v141);
  v139 = &v119 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for TTRRemindersListReminderInsertionPosition();
  v147 = *(v21 - 8);
  v148 = v21;
  __chkstk_darwin(v21);
  v23 = &v119 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = v22;
  __chkstk_darwin(v24);
  v149 = (&v119 - v25);
  v26 = sub_100058000(&qword_10076C6F0, &unk_100630590);
  __chkstk_darwin(v26 - 8);
  v28 = &v119 - v27;
  v29 = type metadata accessor for TTRRemindersListTargetContainer();
  v150 = *(v29 - 8);
  v151 = v29;
  v30 = *(v150 + 64);
  __chkstk_darwin(v29);
  v137 = &v119 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = (&v119 - v32);
  __chkstk_darwin(v34);
  v146 = &v119 - v35;
  v36 = type metadata accessor for TTRRemindersListReminderActionTargetExtended(0);
  __chkstk_darwin(v36);
  v38 = (&v119 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v39);
  v41 = &v119 - v40;
  v153 = a1;
  result = _swiftEmptyArrayStorage;
  if (!a1[2])
  {
    return result;
  }

  v122 = a1[2];
  v123 = v23;
  v129 = v7;
  v43 = v5[4];
  v44 = v5[5];
  v126 = v5;
  ObjectType = swift_getObjectType();
  v46 = v44[41];
  v47 = v155;
  v125 = v43;
  v124 = ObjectType;
  v46(v154, v155);
  sub_1004F68A4(v41, v38, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v49 = v151;
    if (EnumCaseMultiPayload == 2)
    {
      v52 = v38[1];
      *v33 = *v38;
      v33[1] = v52;
      v51 = &enum case for TTRRemindersListTargetContainer.targetReminder(_:);
      goto LABEL_7;
    }

    sub_1004F676C(v38, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
LABEL_9:
    v54 = 1;
    v53 = v150;
    goto LABEL_10;
  }

  v49 = v151;
  if (!EnumCaseMultiPayload)
  {
    goto LABEL_9;
  }

  v50 = type metadata accessor for TTRRemindersListTargetContainer.TargetList();
  (*(*(v50 - 8) + 32))(v33, v38, v50);
  v51 = &enum case for TTRRemindersListTargetContainer.targetList(_:);
LABEL_7:
  v53 = v150;
  (*(v150 + 104))(v33, *v51, v49);
  (*(v53 + 32))(v28, v33, v49);
  v54 = 0;
LABEL_10:
  (*(v53 + 56))(v28, v54, 1, v49);
  if ((*(v53 + 48))(v28, 1, v49) == 1)
  {
    sub_1000079B4(v28, &qword_10076C6F0, &unk_100630590);
    sub_1004F676C(v41, type metadata accessor for TTRRemindersListReminderActionTargetExtended);
    return _swiftEmptyArrayStorage;
  }

  v121 = v41;
  v119 = *(v53 + 32);
  v55 = v146;
  v119(v146, v28, v49);
  v136 = swift_allocObject();
  *(v136 + 16) = v153;
  v56 = v149;
  *v149 = v47;
  v57 = v147;
  v58 = *(v147 + 104);
  v120 = v44;
  v59 = v49;
  v60 = v148;
  v58(v56, enum case for TTRRemindersListReminderInsertionPosition.afterSiblingChangeItem(_:), v148);
  v61 = v53 + 16;
  v62 = v137;
  (*(v53 + 16))(v137, v55, v59);
  v63 = v123;
  (*(v57 + 16))(v123, v56, v60);
  v64 = (*(v61 + 64) + 40) & ~*(v61 + 64);
  v65 = (v30 + *(v57 + 80) + v64) & ~*(v57 + 80);
  v66 = swift_allocObject();
  *(v66 + 2) = v126;
  *(v66 + 3) = sub_1004F83B8;
  *(v66 + 4) = v136;
  v67 = v59;
  v68 = v120;
  v119(&v66[v64], v62, v67);
  (*(v57 + 32))(&v66[v65], v63, v60);
  v69 = v139;
  (*(v160 + 16))(v139, v154, v129);
  v70 = v140;
  v71 = v141;
  (*(v140 + 104))(v69, enum case for TTRRemindersListReminderCreationLocation.belowItem(_:), v141);

  v72 = v155;

  LOBYTE(v63) = TTRRemindersListEditingReminderCreationOptions.startsEditing.getter();
  v73 = TTRRemindersListEditingReminderCreationOptions.animated.getter();
  v74 = v68[48];
  v138 = v66;
  v75 = v124;
  v76 = v74(v69, v122, v63 & 1, v73 & 1, sub_1004F83C0, v66, v124, v68);
  (*(v70 + 8))(v69, v71);
  v77 = v142;
  (v68[72])(v75, v68);
  v79 = v143;
  v78 = v144;
  v80 = v145;
  (*(v144 + 104))(v143, enum case for REMRemindersListDataView.SortingStyle.manual(_:), v145);
  LOBYTE(v63) = static REMRemindersListDataView.SortingStyle.== infix(_:_:)();
  v81 = *(v78 + 8);
  v81(v79, v80);
  v81(v77, v80);
  if (v63)
  {
    v82 = v127;
    (v68[76])(v75, v68);
    v83 = v133;
    v84 = v134;
    if ((*(v133 + 48))(v82, 1, v134) == 1)
    {
      sub_1000079B4(v82, &qword_10076DF30, &qword_100631A00);
    }

    else
    {
      (*(v83 + 32))(v128, v82, v84);
      v85 = v126[6];
      v86 = *(v76 + 16);
      if (v86)
      {
        v153 = v126[7];
        v154 = v85;
        v162 = _swiftEmptyArrayStorage;
        specialized ContiguousArray.reserveCapacity(_:)();
        v87 = *(v135 + 80);
        v145 = v76;
        v88 = v76 + ((v87 + 32) & ~v87);
        v155 = *(v135 + 72);
        v89 = (v160 + 8);
        v90 = v129;
        v92 = v157;
        v91 = v158;
        do
        {
          sub_10000794C(v88, v92, &qword_1007860B0, &unk_100641E70);
          sub_100016588(v92, v91, &qword_1007860B0, &unk_100641E70);
          (*v89)(v91, v90);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v88 += v155;
          --v86;
        }

        while (v86);
        v84 = v134;
        v83 = v133;
        v76 = v145;
      }

      swift_getObjectType();
      v93 = v128;
      dispatch thunk of TTRRemindersListInteractorType.updateManualOrdering(uncommittedReminderIDs:position:paramsForREMManualOrdering:)();

      (*(v83 + 8))(v93, v84);
    }
  }

  type metadata accessor for TTRUserDefaults();
  v94 = static TTRUserDefaults.appUserDefaults.getter();
  v95 = *(v76 + 16);
  if (!v95)
  {

    (*(v147 + 8))(v149, v148);
    (*(v150 + 8))(v146, v151);
    sub_1004F676C(v121, type metadata accessor for TTRRemindersListReminderActionTargetExtended);

    return _swiftEmptyArrayStorage;
  }

  v145 = v76;
  v155 = type metadata accessor for REMAnalyticsManager();
  LODWORD(v154) = enum case for REMUserOperation.createReminder(_:);
  LODWORD(v153) = enum case for REMAnalyticsEvent.userOperation(_:);
  v152 = (v130 + 104);
  v96 = (v130 + 8);
  v97 = v95;
  v98 = v131;
  v99 = v161;
  do
  {
    static REMAnalyticsManager.shared.getter();
    v100 = sub_100058000(&qword_1007757E8, &unk_100635E60);
    v101 = &v99[*(v100 + 48)];
    v102 = &v161[*(v100 + 80)];
    v103 = type metadata accessor for REMUserOperation();
    (*(*(v103 - 8) + 104))(v161, v154, v103);
    *v101 = TTRUserDefaults.activitySessionId.getter();
    v101[1] = v104;
    v99 = v161;
    TTRUserDefaults.activitySessionBeginTime.getter();
    v162 = _typeName(_:qualified:)();
    v163 = v105;
    v106._countAndFlagsBits = 0x746954687469772DLL;
    v106._object = 0xEA0000000000656CLL;
    String.append(_:)(v106);
    v107 = v163;
    *v102 = v162;
    *(v102 + 1) = v107;
    (*v152)(v99, v153, v98);
    REMAnalyticsManager.post(event:)();

    (*v96)(v99, v98);
    --v97;
  }

  while (v97);
  v156 = v94;
  v162 = _swiftEmptyArrayStorage;
  sub_1004A1C48(0, v95, 0);
  v108 = v162;
  v109 = v145 + ((*(v135 + 80) + 32) & ~*(v135 + 80));
  v161 = *(v135 + 72);
  v110 = (v160 + 32);
  v111 = v129;
  v112 = v132;
  do
  {
    v113 = v157;
    sub_10000794C(v109, v157, &qword_1007860B0, &unk_100641E70);
    v114 = v113;
    v115 = v158;
    sub_100016588(v114, v158, &qword_1007860B0, &unk_100641E70);

    v116 = *v110;
    (*v110)(v112, v115, v111);
    v162 = v108;
    v118 = v108[2];
    v117 = v108[3];
    if (v118 >= v117 >> 1)
    {
      sub_1004A1C48((v117 > 1), v118 + 1, 1);
      v111 = v129;
      v108 = v162;
    }

    v108[2] = v118 + 1;
    v116(v108 + ((*(v160 + 80) + 32) & ~*(v160 + 80)) + *(v160 + 72) * v118, v112, v111);
    v109 += v161;
    --v95;
  }

  while (v95);

  (*(v147 + 8))(v149, v148);
  (*(v150 + 8))(v146, v151);
  sub_1004F676C(v121, type metadata accessor for TTRRemindersListReminderActionTargetExtended);

  return v108;
}

uint64_t sub_1004F3084(uint64_t a1)
{
  v3 = *(v1 + 40);
  ObjectType = swift_getObjectType();
  return (*(v3 + 640))(a1, ObjectType, v3);
}

uint64_t sub_1004F30EC()
{
  v1 = *(v0 + 40);
  ObjectType = swift_getObjectType();
  return (*(v1 + 648))(ObjectType, v1) & 1;
}

uint64_t sub_1004F313C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1004F3200;

  return sub_1004F3300(a1, a2, a3, a4, a5);
}

uint64_t sub_1004F3200(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_1004F3300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v6[8] = *v5;
  return _swift_task_switch(sub_1004F3350, 0, 0);
}

uint64_t sub_1004F3350()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = *(v0[7] + 24);
    swift_getObjectType();
    sub_1004F5C50(&qword_100769610, type metadata accessor for TTRReminderListEditingPresenter, &unk_100644258);
    v9 = *(v2 + 64) + **(v2 + 64);
    v3 = swift_task_alloc();
    v0[10] = v3;
    *v3 = v0;
    v3[1] = sub_1004F3584;

    __asm { BRAA            X8, X16 }
  }

  v4 = objc_opt_self();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = String._bridgeToObjectiveC()();
  [v4 unexpectedNilPropertyWithClass:ObjCClassFromMetadata property:v6];

  swift_willThrow();
  v7 = v0[1];

  return v7();
}

uint64_t sub_1004F3584(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = sub_1004F3714;
  }

  else
  {
    *(v4 + 96) = a1;
    v5 = sub_1004F36AC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1004F36AC()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);
  v2 = *(v0 + 96);

  return v1(v2);
}

uint64_t sub_1004F3714()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004F37A4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();
  v5 = a2[5];
  ObjectType = swift_getObjectType();
  (*(v5 + 408))(ObjectType, v5);
  v7 = TTRRemindersListInteractorType.newReminderChangeItem(objectID:title:targetContainer:position:remindersBeingSaved:)();

  return v7;
}

void *sub_1004F3864(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v20 = *(a2 + 16);
  if (v4 == v20)
  {
LABEL_6:
    if (v4)
    {
      goto LABEL_7;
    }

    return _swiftEmptyArrayStorage;
  }

  if (qword_1007673E0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003E30(v5, qword_100788800);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134218240;
    *(v8 + 4) = v4;

    *(v8 + 12) = 2048;
    *(v8 + 14) = v20;

    _os_log_impl(&_mh_execute_header, v6, v7, "objectIDs count not matching titles count {objectIDs: %ld, titles: %ld}", v8, 0x16u);

    goto LABEL_6;
  }

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

LABEL_7:
  v9 = 0;
  v10 = (a2 + 40);
  v11 = _swiftEmptyArrayStorage;
  do
  {
    v12 = *(a1 + 32 + 8 * v9);
    if (v9 >= v20)
    {
      v14 = 0;
      v13 = 0xE000000000000000;
    }

    else
    {
      v14 = *(v10 - 1);
      v13 = *v10;
    }

    v15 = v12;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_10054881C(0, v11[2] + 1, 1, v11);
    }

    v17 = v11[2];
    v16 = v11[3];
    if (v17 >= v16 >> 1)
    {
      v11 = sub_10054881C((v16 > 1), v17 + 1, 1, v11);
    }

    ++v9;
    v11[2] = v17 + 1;
    v18 = &v11[3 * v17];
    v18[4] = v12;
    v18[5] = v14;
    v18[6] = v13;
    v10 += 2;
  }

  while (v4 != v9);
  return v11;
}

uint64_t sub_1004F3AA0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v17[2] = a4;
  v17[3] = a5;
  v17[1] = a6;
  v10 = type metadata accessor for TTRRemindersListBatchReminderCreationParams();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getObjectType();
  *v13 = a3(a1);
  (*(v11 + 104))(v13, enum case for TTRRemindersListBatchReminderCreationParams.objectIDsAndTitles(_:), v10);
  v14 = a2[5];
  ObjectType = swift_getObjectType();
  (*(v14 + 408))(ObjectType, v14);
  dispatch thunk of TTRRemindersListInteractorType.newReminderChangeItems(params:targetContainer:position:remindersBeingSaved:)();

  return (*(v11 + 8))(v13, v10);
}

void sub_1004F3C70(double a1)
{
  v63 = *v1;
  v2 = sub_100058000(&qword_1007701A0, &qword_100631A50);
  __chkstk_darwin(v2 - 8);
  v57 = &v50 - v3;
  v4 = sub_100058000(&qword_100788B78, &qword_1006442E8);
  __chkstk_darwin(v4 - 8);
  v6 = &v50 - v5;
  v64 = type metadata accessor for NSRunLoop.SchedulerTimeType.Stride();
  v7 = *(v64 - 8);
  __chkstk_darwin(v64);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&qword_100788B80, &qword_1006442F0);
  v61 = *(v10 - 8);
  v62 = v10;
  __chkstk_darwin(v10);
  v60 = &v50 - v11;
  v12 = type metadata accessor for TTRRemindersListViewModel.Item();
  __chkstk_darwin(v12);
  v56 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v50 - v15;
  v55 = v17;
  v19 = __chkstk_darwin(v18);
  v21 = &v50 - v20;
  v65 = v22;
  v66 = v1;
  v23 = v22 + 16;
  v24 = *(v22 + 16);
  v24(&v50 - v20, v1 + OBJC_IVAR____TtC9RemindersP33_1A71EBEB5B774417A77A4912B4DA8E4226PencilWritingStateReporter_item, v12, v19);
  if (qword_1007673E0 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  sub_100003E30(v25, qword_100788800);
  v53 = v24;
  v54 = v23;
  (v24)(v16, v21, v12);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();
  v28 = os_log_type_enabled(v26, v27);
  v58 = v21;
  v59 = v12;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v68 = v30;
    *v29 = 136315138;
    sub_1004F5C50(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
    v31 = TTRTreeStorageItem.treeItemDescription.getter();
    v32 = v12;
    v34 = v33;
    v52 = *(v65 + 8);
    v52(v16, v32);
    v35 = sub_100004060(v31, v34, &v68);

    *(v29 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v26, v27, "PencilWritingStateReporter: schedule for item %s", v29, 0xCu);
    sub_100004758(v30);
  }

  else
  {

    v52 = *(v65 + 8);
    v52(v16, v12);
  }

  v51 = OBJC_IVAR____TtC9RemindersP33_1A71EBEB5B774417A77A4912B4DA8E4226PencilWritingStateReporter_cancellable;
  if (*(v66 + OBJC_IVAR____TtC9RemindersP33_1A71EBEB5B774417A77A4912B4DA8E4226PencilWritingStateReporter_cancellable))
  {

    AnyCancellable.cancel()();
  }

  v68 = 1;
  sub_100058000(&qword_100788B88, &qword_1006442F8);
  swift_allocObject();
  v50 = CurrentValueSubject.init(_:)();
  v68 = v50;
  static NSRunLoop.SchedulerTimeType.Stride.seconds(_:)();
  v36 = v7;
  (*(v7 + 56))(v6, 1, 1, v64);
  v37 = [objc_opt_self() mainRunLoop];
  v67 = v37;
  v38 = type metadata accessor for NSRunLoop.SchedulerOptions();
  v39 = v57;
  (*(*(v38 - 8) + 56))(v57, 1, 1, v38);
  sub_1004F6A94();
  sub_10000E188(&qword_100788B90, &qword_100788B88, &qword_1006442F8, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  sub_1004F5C50(&qword_10076DFC0, sub_1004F6A94, &protocol conformance descriptor for NSRunLoop);
  v40 = v60;
  Publisher.delay<A>(for:tolerance:scheduler:options:)();
  sub_1000079B4(v39, &qword_1007701A0, &qword_100631A50);

  sub_1000079B4(v6, &qword_100788B78, &qword_1006442E8);
  (*(v36 + 8))(v9, v64);

  v41 = v56;
  v43 = v58;
  v42 = v59;
  v53(v56, v58, v59);
  v44 = v65;
  v45 = (*(v65 + 80) + 16) & ~*(v65 + 80);
  v46 = swift_allocObject();
  (*(v44 + 32))(v46 + v45, v41, v42);
  sub_10000E188(&qword_100788B98, &qword_100788B80, &qword_1006442F0, &protocol conformance descriptor for Publishers.Delay<A, B>);
  v47 = v66;
  v48 = v62;
  v49 = Publisher.sink<A>(weakTarget:receiveValue:receiveCompletion:)();

  (*(v61 + 8))(v40, v48);
  v52(v43, v42);
  *(v47 + v51) = v49;
}

double sub_1004F4460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for TTRRemindersListViewModel.Item();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1007673E0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100003E30(v9, qword_100788800);
  (*(v6 + 16))(v8, a3, v5);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136315138;
    sub_1004F5C50(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
    v14 = TTRTreeStorageItem.treeItemDescription.getter();
    v16 = v15;
    (*(v6 + 8))(v8, v5);
    v17 = sub_100004060(v14, v16, &v20);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v10, v11, "PencilWritingStateReporter: perform delayed action for item %s", v12, 0xCu);
    sub_100004758(v13);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  if (swift_weakLoadStrong())
  {
    sub_1004F17A4(a1);
  }

  return result;
}

double sub_1004F46FC()
{
  if (qword_1007673E0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003E30(v1, qword_100788800);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    type metadata accessor for TTRRemindersListViewModel.Item();
    sub_1004F5C50(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
    v6 = TTRTreeStorageItem.treeItemDescription.getter();
    v8 = sub_100004060(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "PencilWritingStateReporter: cancel scheduled for item %s", v4, 0xCu);
    sub_100004758(v5);
  }

  v9 = OBJC_IVAR____TtC9RemindersP33_1A71EBEB5B774417A77A4912B4DA8E4226PencilWritingStateReporter_cancellable;
  if (*(v0 + OBJC_IVAR____TtC9RemindersP33_1A71EBEB5B774417A77A4912B4DA8E4226PencilWritingStateReporter_cancellable))
  {

    AnyCancellable.cancel()();
  }

  *(v0 + v9) = 0;

  return result;
}

uint64_t sub_1004F48EC()
{
  v1 = OBJC_IVAR____TtC9RemindersP33_1A71EBEB5B774417A77A4912B4DA8E4226PencilWritingStateReporter_item;
  v2 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_1004F49D0(uint64_t a1)
{
  result = type metadata accessor for TTRRemindersListViewModel.Item();
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

char *sub_1004F4A74(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for TTRRemindersListViewModel.Item();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 20);
    v9 = type metadata accessor for TTRRemindersListEditingSessionDisplayTargets();
    (*(*(v9 - 8) + 16))(&a1[v8], &a2[v8], v9);
  }

  return a1;
}

uint64_t sub_1004F4B70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = *(a2 + 20);
  v6 = type metadata accessor for TTRRemindersListEditingSessionDisplayTargets();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1 + v5, v6);
}

uint64_t sub_1004F4C14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = type metadata accessor for TTRRemindersListEditingSessionDisplayTargets();
  (*(*(v8 - 8) + 16))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t sub_1004F4CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = type metadata accessor for TTRRemindersListEditingSessionDisplayTargets();
  (*(*(v8 - 8) + 24))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t sub_1004F4D74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = type metadata accessor for TTRRemindersListEditingSessionDisplayTargets();
  (*(*(v8 - 8) + 32))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t sub_1004F4E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = type metadata accessor for TTRRemindersListEditingSessionDisplayTargets();
  (*(*(v8 - 8) + 40))(a1 + v7, a2 + v7, v8);
  return a1;
}

uint64_t sub_1004F4F1C(uint64_t a1)
{
  result = type metadata accessor for TTRRemindersListViewModel.Item();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TTRRemindersListEditingSessionDisplayTargets();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *sub_1004F4FE4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_100058000(&qword_100775AB8, &unk_10063C7B0);
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(a2, 1, v7))
    {
      v9 = sub_100058000(&qword_100775AB0, &unk_1006360A0);
      memcpy(a1, a2, *(*(v9 - 8) + 64));
    }

    else
    {
      v11 = type metadata accessor for TTRRemindersListViewModel.Item();
      (*(*(v11 - 8) + 16))(a1, a2, v11);
      v12 = *(v7 + 48);
      v13 = type metadata accessor for TTRRemindersListEditingAttribute();
      (*(*(v13 - 8) + 16))(a1 + v12, a2 + v12, v13);
      (*(v8 + 56))(a1, 0, 1, v7);
    }

    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  }

  return a1;
}

uint64_t sub_1004F51C8(uint64_t a1)
{
  v2 = sub_100058000(&qword_100775AB8, &unk_10063C7B0);
  result = (*(*(v2 - 8) + 48))(a1, 1, v2);
  if (!result)
  {
    v4 = type metadata accessor for TTRRemindersListViewModel.Item();
    (*(*(v4 - 8) + 8))(a1, v4);
    v5 = *(v2 + 48);
    v6 = type metadata accessor for TTRRemindersListEditingAttribute();
    v7 = *(*(v6 - 8) + 8);

    return v7(a1 + v5, v6);
  }

  return result;
}

char *sub_1004F52C4(char *a1, char *a2, uint64_t a3)
{
  v6 = sub_100058000(&qword_100775AB8, &unk_10063C7B0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = sub_100058000(&qword_100775AB0, &unk_1006360A0);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    v9 = type metadata accessor for TTRRemindersListViewModel.Item();
    (*(*(v9 - 8) + 16))(a1, a2, v9);
    v10 = *(v6 + 48);
    v11 = type metadata accessor for TTRRemindersListEditingAttribute();
    (*(*(v11 - 8) + 16))(&a1[v10], &a2[v10], v11);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  a1[*(a3 + 20)] = a2[*(a3 + 20)];
  return a1;
}

char *sub_1004F545C(char *a1, char *a2, uint64_t a3)
{
  v6 = sub_100058000(&qword_100775AB8, &unk_10063C7B0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      v16 = type metadata accessor for TTRRemindersListViewModel.Item();
      (*(*(v16 - 8) + 24))(a1, a2, v16);
      v17 = *(v6 + 48);
      v18 = type metadata accessor for TTRRemindersListEditingAttribute();
      (*(*(v18 - 8) + 24))(&a1[v17], &a2[v17], v18);
      goto LABEL_7;
    }

    sub_1000079B4(a1, &qword_100775AB8, &unk_10063C7B0);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    v14 = sub_100058000(&qword_100775AB0, &unk_1006360A0);
    memcpy(a1, a2, *(*(v14 - 8) + 64));
    goto LABEL_7;
  }

  v11 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v11 - 8) + 16))(a1, a2, v11);
  v12 = *(v6 + 48);
  v13 = type metadata accessor for TTRRemindersListEditingAttribute();
  (*(*(v13 - 8) + 16))(&a1[v12], &a2[v12], v13);
  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_7:
  a1[*(a3 + 20)] = a2[*(a3 + 20)];
  return a1;
}

char *sub_1004F56B8(char *a1, char *a2, uint64_t a3)
{
  v6 = sub_100058000(&qword_100775AB8, &unk_10063C7B0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = sub_100058000(&qword_100775AB0, &unk_1006360A0);
    memcpy(a1, a2, *(*(v8 - 8) + 64));
  }

  else
  {
    v9 = type metadata accessor for TTRRemindersListViewModel.Item();
    (*(*(v9 - 8) + 32))(a1, a2, v9);
    v10 = *(v6 + 48);
    v11 = type metadata accessor for TTRRemindersListEditingAttribute();
    (*(*(v11 - 8) + 32))(&a1[v10], &a2[v10], v11);
    (*(v7 + 56))(a1, 0, 1, v6);
  }

  a1[*(a3 + 20)] = a2[*(a3 + 20)];
  return a1;
}

char *sub_1004F5850(char *a1, char *a2, uint64_t a3)
{
  v6 = sub_100058000(&qword_100775AB8, &unk_10063C7B0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (!v9)
  {
    if (!v10)
    {
      v16 = type metadata accessor for TTRRemindersListViewModel.Item();
      (*(*(v16 - 8) + 40))(a1, a2, v16);
      v17 = *(v6 + 48);
      v18 = type metadata accessor for TTRRemindersListEditingAttribute();
      (*(*(v18 - 8) + 40))(&a1[v17], &a2[v17], v18);
      goto LABEL_7;
    }

    sub_1000079B4(a1, &qword_100775AB8, &unk_10063C7B0);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    v14 = sub_100058000(&qword_100775AB0, &unk_1006360A0);
    memcpy(a1, a2, *(*(v14 - 8) + 64));
    goto LABEL_7;
  }

  v11 = type metadata accessor for TTRRemindersListViewModel.Item();
  (*(*(v11 - 8) + 32))(a1, a2, v11);
  v12 = *(v6 + 48);
  v13 = type metadata accessor for TTRRemindersListEditingAttribute();
  (*(*(v13 - 8) + 32))(&a1[v12], &a2[v12], v13);
  (*(v7 + 56))(a1, 0, 1, v6);
LABEL_7:
  a1[*(a3 + 20)] = a2[*(a3 + 20)];
  return a1;
}

void sub_1004F5AD4(uint64_t a1)
{
  sub_1004F5B68(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void sub_1004F5B68(uint64_t a1)
{
  if (!qword_100788AE0)
  {
    sub_10005D20C(&qword_100775AB8, &unk_10063C7B0);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_100788AE0);
    }
  }
}

uint64_t sub_1004F5BCC(uint64_t a1)
{
  *(a1 + 16) = sub_1004F5C50(&qword_100788B10, type metadata accessor for TTRReminderListEditingPresenter, &unk_1006441D0);
  result = sub_1004F5C50(&qword_100788B18, type metadata accessor for TTRReminderListEditingPresenter, &unk_1006441A0);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1004F5C50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1004F5C98(uint64_t a1, uint64_t a2)
{
  v83 = a2;
  v73 = type metadata accessor for TTRRemindersListEditingAttribute();
  v71 = *(v73 - 8);
  __chkstk_darwin(v73);
  v66 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_100058000(&qword_100788B20, &qword_100644278);
  __chkstk_darwin(v69);
  v72 = &v66 - v4;
  v5 = sub_100058000(&qword_100788B28, &unk_100644280);
  __chkstk_darwin(v5 - 8);
  v67 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v76 = &v66 - v8;
  __chkstk_darwin(v9);
  v70 = &v66 - v10;
  v11 = type metadata accessor for TTRRemindersListViewModel.ItemID();
  v84 = *(v11 - 8);
  __chkstk_darwin(v11);
  v68 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_100058000(&qword_10076DCB8, &qword_100631830);
  __chkstk_darwin(v77);
  v78 = &v66 - v13;
  v14 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v14 - 8);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v66 - v18;
  v20 = sub_100058000(&unk_10076BB50, &unk_10062DEA0);
  __chkstk_darwin(v20 - 8);
  v75 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v80 = &v66 - v23;
  __chkstk_darwin(v24);
  v26 = &v66 - v25;
  v27 = type metadata accessor for TTRReminderListEditingPresenter.EditingState(0);
  v28 = sub_1004F5C50(&unk_1007755F8, type metadata accessor for TTRReminderListEditingPresenter.EditingState, &unk_1006440F8);
  v82 = v27;
  v79 = v28;
  v74 = a1;
  TTRRemindersListEditingState.editingItem.getter();
  v29 = type metadata accessor for TTRRemindersListViewModel.Item();
  v30 = *(v29 - 8);
  v31 = *(v30 + 48);
  if (v31(v19, 1, v29) == 1)
  {
    sub_1000079B4(v19, &qword_100772140, &qword_10062D9F0);
    v32 = 1;
  }

  else
  {
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
    (*(v30 + 8))(v19, v29);
    v32 = 0;
  }

  v33 = *(v84 + 56);
  v81 = v26;
  v33(v26, v32, 1, v11);
  TTRRemindersListEditingState.editingItem.getter();
  if (v31(v16, 1, v29) == 1)
  {
    sub_1000079B4(v16, &qword_100772140, &qword_10062D9F0);
    v34 = 1;
    v35 = v80;
  }

  else
  {
    v35 = v80;
    TTRRemindersListViewModel.Item.treeItemIdentifier.getter();
    (*(v30 + 8))(v16, v29);
    v34 = 0;
  }

  v33(v35, v34, 1, v11);
  v36 = v11;
  v37 = v78;
  v38 = *(v77 + 48);
  v39 = v81;
  sub_10000794C(v81, v78, &unk_10076BB50, &unk_10062DEA0);
  sub_10000794C(v35, v37 + v38, &unk_10076BB50, &unk_10062DEA0);
  v40 = *(v84 + 48);
  if (v40(v37, 1, v36) != 1)
  {
    v41 = v75;
    sub_10000794C(v37, v75, &unk_10076BB50, &unk_10062DEA0);
    if (v40(v37 + v38, 1, v36) != 1)
    {
      v45 = v84;
      v46 = v37 + v38;
      v47 = v68;
      (*(v84 + 32))(v68, v46, v36);
      sub_1004F5C50(&qword_10076BB60, &type metadata accessor for TTRRemindersListViewModel.ItemID, &protocol conformance descriptor for TTRRemindersListViewModel.ItemID);
      v48 = dispatch thunk of static Equatable.== infix(_:_:)();
      v49 = *(v45 + 8);
      v49(v47, v36);
      sub_1000079B4(v80, &unk_10076BB50, &unk_10062DEA0);
      sub_1000079B4(v81, &unk_10076BB50, &unk_10062DEA0);
      v49(v41, v36);
      sub_1000079B4(v37, &unk_10076BB50, &unk_10062DEA0);
      if ((v48 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_14;
    }

    sub_1000079B4(v80, &unk_10076BB50, &unk_10062DEA0);
    sub_1000079B4(v81, &unk_10076BB50, &unk_10062DEA0);
    (*(v84 + 8))(v41, v36);
LABEL_12:
    v42 = &qword_10076DCB8;
    v43 = &qword_100631830;
    v44 = v37;
LABEL_20:
    sub_1000079B4(v44, v42, v43);
    goto LABEL_21;
  }

  sub_1000079B4(v35, &unk_10076BB50, &unk_10062DEA0);
  sub_1000079B4(v39, &unk_10076BB50, &unk_10062DEA0);
  if (v40(v37 + v38, 1, v36) != 1)
  {
    goto LABEL_12;
  }

  sub_1000079B4(v37, &unk_10076BB50, &unk_10062DEA0);
LABEL_14:
  v50 = v70;
  v51 = v74;
  TTRRemindersListEditingState.editingAttribute.getter();
  v52 = v76;
  TTRRemindersListEditingState.editingAttribute.getter();
  v53 = *(v69 + 48);
  v54 = v72;
  sub_10000794C(v50, v72, &qword_100788B28, &unk_100644280);
  sub_10000794C(v52, v54 + v53, &qword_100788B28, &unk_100644280);
  v55 = v71;
  v56 = *(v71 + 48);
  v57 = v73;
  if (v56(v54, 1, v73) == 1)
  {
    sub_1000079B4(v52, &qword_100788B28, &unk_100644280);
    sub_1000079B4(v50, &qword_100788B28, &unk_100644280);
    if (v56(v54 + v53, 1, v57) == 1)
    {
      sub_1000079B4(v54, &qword_100788B28, &unk_100644280);
LABEL_24:
      v59 = *(v51 + *(v82 + 20)) ^ *(v83 + *(v82 + 20)) ^ 1;
      return v59 & 1;
    }

    goto LABEL_19;
  }

  v58 = v67;
  sub_10000794C(v54, v67, &qword_100788B28, &unk_100644280);
  if (v56(v54 + v53, 1, v57) == 1)
  {
    sub_1000079B4(v76, &qword_100788B28, &unk_100644280);
    sub_1000079B4(v50, &qword_100788B28, &unk_100644280);
    (*(v55 + 8))(v58, v57);
LABEL_19:
    v42 = &qword_100788B20;
    v43 = &qword_100644278;
    v44 = v54;
    goto LABEL_20;
  }

  v61 = v54 + v53;
  v62 = v66;
  (*(v55 + 32))(v66, v61, v57);
  sub_1004F5C50(&qword_100788B30, &type metadata accessor for TTRRemindersListEditingAttribute, &protocol conformance descriptor for TTRRemindersListEditingAttribute);
  v63 = v58;
  v64 = dispatch thunk of static Equatable.== infix(_:_:)();
  v65 = *(v55 + 8);
  v65(v62, v57);
  sub_1000079B4(v76, &qword_100788B28, &unk_100644280);
  sub_1000079B4(v50, &qword_100788B28, &unk_100644280);
  v65(v63, v57);
  sub_1000079B4(v54, &qword_100788B28, &unk_100644280);
  if (v64)
  {
    goto LABEL_24;
  }

LABEL_21:
  v59 = 0;
  return v59 & 1;
}

uint64_t sub_1004F6708(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRReminderListEditingPresenter.EditingState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004F676C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1004F67CC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TTRRemindersListViewModel.Item() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1004F1B24(v4, a1);
}

uint64_t sub_1004F683C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1004F68A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1004F690C(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRRemindersListTargetContainer() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for TTRRemindersListReminderInsertionPosition() - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_1004F37A4(a1, v7, v1 + v4, v8);
}

uint64_t sub_1004F69E4(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRRemindersListTargetContainer() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1004EBE50(a1, v4, v5);
}

unint64_t sub_1004F6A94()
{
  result = qword_10076DFB0;
  if (!qword_10076DFB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10076DFB0);
  }

  return result;
}

double sub_1004F6AE0(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for TTRRemindersListViewModel.Item() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1004F4460(a1, a2, v6);
}

void sub_1004F6B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v62 = a3;
  v61 = a2;
  v60 = type metadata accessor for TTRRemindersListViewModel.SectionID();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v58 = (&v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  v67 = *(v7 - 8);
  __chkstk_darwin(v7);
  v66 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for TTRRemindersListViewModel.SectionHeader();
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v63 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100058000(&qword_100775970, &qword_100632680);
  __chkstk_darwin(v10 - 8);
  v12 = &v54 - v11;
  v13 = type metadata accessor for TTRRemindersListInteractorSectionsCapabilityTarget();
  v69 = *(v13 - 8);
  v70 = v13;
  v14 = *(v69 + 64);
  __chkstk_darwin(v13);
  v57 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v68 = &v54 - v16;
  if (qword_1007673E0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100003E30(v17, qword_100788800);
  sub_100058000(&unk_100775610, &unk_1006323A0);
  inited = swift_initStackObject();
  v56 = xmmword_10062D400;
  *(inited + 16) = xmmword_10062D400;
  *(inited + 32) = 1835365481;
  *(inited + 40) = 0xE400000000000000;
  sub_1004F5C50(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
  v19 = a1;
  v20 = TTRTreeStorageItem.treeItemDescription.getter();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v20;
  *(inited + 56) = v21;
  v22 = sub_100008E04(inited);
  swift_setDeallocating();
  sub_1000079B4(inited + 32, &unk_10076BA70, &qword_10062FD60);
  sub_10000FD44("Reminders List create editable section {item: %@}", 49, 2, v22);

  v23 = *(v4 + 40);
  ObjectType = swift_getObjectType();
  v25 = (*(v23 + 104))(ObjectType, v23);
  if (!v25)
  {
    goto LABEL_11;
  }

  v26 = v25;
  if (!swift_unknownObjectWeakLoadStrong())
  {
LABEL_10:
    swift_unknownObjectRelease();
LABEL_11:
    (*(v69 + 56))(v12, 1, 1, v70);
    goto LABEL_12;
  }

  v27 = *(v26 + 64);
  swift_unknownObjectRelease();
  v28 = swift_getObjectType();
  (*(v27 + 32))(a1, v28, v27);
  swift_unknownObjectRelease();
  v30 = v69;
  v29 = v70;
  if ((*(v69 + 48))(v12, 1, v70) == 1)
  {
LABEL_12:
    sub_1000079B4(v12, &qword_100775970, &qword_100632680);
    return;
  }

  v55 = v4;
  v31 = v19;
  v32 = *(v30 + 32);
  v33 = v68;
  v32(v68, v12, v29);
  v34 = v66;
  v35 = v67;
  (v67)[2](v66, v31, v7);
  if ((v35[11])(v34, v7) != enum case for TTRRemindersListViewModel.Item.section(_:))
  {
    (*(v30 + 8))(v33, v29);
    (v35[1])(v34, v7);
    return;
  }

  (v35[12])(v34, v7);
  v36 = v64;
  v37 = v63;
  v38 = v65;
  (*(v64 + 32))(v63, v34, v65);
  v39 = v58;
  TTRRemindersListViewModel.SectionHeader.id.getter();
  v40 = v59;
  v41 = v60;
  if ((*(v59 + 88))(v39, v60) != enum case for TTRRemindersListViewModel.SectionID.uncommittedEditingSection(_:))
  {
    (*(v36 + 8))(v37, v38);
    (*(v69 + 8))(v68, v70);
    (*(v40 + 8))(v39, v41);
    return;
  }

  (*(v40 + 96))(v39, v41);
  v60 = *v39;
  static TTRLocalizableStrings.UndoAction.addSectionWithNameFormat.getter();
  sub_100058000(&unk_100786CB0, &qword_100636EF0);
  v42 = swift_allocObject();
  *(v42 + 16) = v56;
  *(v42 + 56) = &type metadata for String;
  *(v42 + 64) = sub_10005C390();
  v43 = v62;
  *(v42 + 32) = v61;
  *(v42 + 40) = v43;

  static String.localizedStringWithFormat(_:_:)();

  v67 = objc_opt_self();
  v66 = String._bridgeToObjectiveC()();

  v44 = v69;
  v45 = v57;
  v12 = v70;
  (*(v69 + 16))(v57, v68, v70);
  v46 = (*(v44 + 80) + 40) & ~*(v44 + 80);
  v47 = swift_allocObject();
  v48 = v61;
  *(v47 + 2) = v55;
  *(v47 + 3) = v48;
  *(v47 + 4) = v43;
  v32(&v47[v46], v45, v12);
  v49 = v60;
  *&v47[(v14 + v46 + 7) & 0xFFFFFFFFFFFFFFF8] = v60;
  v50 = swift_allocObject();
  *(v50 + 16) = sub_1004F8D78;
  *(v50 + 24) = v47;
  aBlock[4] = sub_100068444;
  aBlock[5] = v50;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026440;
  aBlock[3] = &unk_10072CB18;
  v51 = _Block_copy(aBlock);

  v52 = v49;

  v53 = v66;
  [v67 withActionName:v66 block:v51];
  _Block_release(v51);

  (*(v64 + 8))(v63, v65);
  (*(v44 + 8))(v68, v12);
  LOBYTE(v51) = swift_isEscapingClosureAtFileLocation();

  if (v51)
  {
    __break(1u);
    goto LABEL_10;
  }
}

uint64_t sub_1004F74D8(uint64_t a1, void *a2, uint64_t a3)
{
  v97 = a3;
  v99 = a2;
  v4 = sub_100058000(&qword_100775780, &unk_100630580);
  __chkstk_darwin(v4 - 8);
  v6 = &v88 - v5;
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v91 = &v88 - v12;
  __chkstk_darwin(v13);
  v15 = &v88 - v14;
  v113 = type metadata accessor for TTRRemindersListEditingSessionFinishingOption();
  v88 = *(v113 - 8);
  __chkstk_darwin(v113);
  v112 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for TTRRemindersListEditingSessionDisplayTargets();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = _swiftEmptyArrayStorage;
  v21 = *(a1 + 16);
  v96 = v18;
  v95 = v22;
  if (v21)
  {
    v23 = v21;
    v89 = v10;
    v94 = v6;
    v24 = v99[4];
    v25 = v99[5];
    ObjectType = swift_getObjectType();
    v104 = (v25 + 55);
    *&v105 = ObjectType;
    v28 = *(v8 + 16);
    v27 = v8 + 16;
    v110 = v28;
    v29 = (a1 + ((*(v27 + 64) + 32) & ~*(v27 + 64)));
    v102 = v25[55];
    v103 = (v27 - 8);
    v101 = *(v27 + 56);
    *&v30 = 136315138;
    v90 = v30;
    v109 = _swiftEmptyArrayStorage;
    v92 = _swiftEmptyArrayStorage;
    v98 = v20;
    v93 = v27;
    v100 = v15;
    v106 = v25;
    v107 = v24;
    v28(v15, v29, v7);
    while (!(v102)(v15, v105, v25))
    {
      v42 = dispatch thunk of TTRRemindersListPresenterCapabilityCoreViewModelSourceType.remReminder(for:)();
      if (!v42)
      {
        if (qword_1007673E0 != -1)
        {
          swift_once();
        }

        v111 = v23;
        v62 = type metadata accessor for Logger();
        sub_100003E30(v62, qword_100788800);
        v63 = v89;
        v64 = v100;
        v110(v89, v100, v7);
        v65 = Logger.logObject.getter();
        v66 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          v108 = swift_slowAlloc();
          v114[0] = v108;
          *v67 = v90;
          sub_1004F5C50(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
          v68 = TTRTreeStorageItem.treeItemDescription.getter();
          v70 = v69;
          v71 = *v103;
          (*v103)(v63, v7);
          v72 = sub_100004060(v68, v70, v114);

          *(v67 + 4) = v72;
          _os_log_impl(&_mh_execute_header, v65, v66, "Skip edit; failed to get REMReminder {item: %s}", v67, 0xCu);
          sub_100004758(v108);

          v20 = v98;

          v15 = v100;
          v71(v100, v7);
        }

        else
        {

          v31 = *v103;
          (*v103)(v63, v7);
          v31(v64, v7);
          v15 = v64;
        }

        goto LABEL_4;
      }

      v43 = v42;
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v116 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v116 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v111 = v23;
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v23 = v111;
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      (*v103)(v15, v7);
      v92 = v116;
LABEL_5:
      v29 += v101;
      --v23;
      v25 = v106;
      if (!v23)
      {
        goto LABEL_34;
      }

      v110(v15, v29, v7);
    }

    v111 = v23;

    v114[0] = _typeName(_:qualified:)();
    v114[1] = v32;
    v33._countAndFlagsBits = 0x746964652DLL;
    v33._object = 0xE500000000000000;
    String.append(_:)(v33);
    v108 = v114[0];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v35 = Strong;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v36 = *(v35 + 24);
        v37 = v7;
        v38 = swift_getObjectType();
        v39 = sub_1004F5C50(&qword_100769610, type metadata accessor for TTRReminderListEditingPresenter, &unk_100644258);
        v40 = v94;
        v41 = v38;
        v7 = v37;
        (*(v36 + 48))(v35, v39, v41, v36);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        goto LABEL_17;
      }

      swift_unknownObjectRelease();
    }

    v44 = type metadata accessor for TTRRemindersListUndoContext();
    v40 = v94;
    (*(*(v44 - 8) + 56))(v94, 1, 1, v44);
LABEL_17:
    sub_1004F5C50(&qword_100775790, type metadata accessor for TTRRemindersListEditingSessionProvider, &unk_10063E618);

    v15 = v100;
    v45 = TTRRemindersListEditingSessionProviderCapability.acquireEditingSession(forEditing:acquirerName:undoContext:editingSessionState:editingSessionDelegate:)();

    sub_1000079B4(v40, &qword_100775780, &unk_100630580);

    if (v45)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = v98;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v109 = sub_100547450(0, v109[2] + 1, 1, v109);
      }

      v48 = v109[2];
      v47 = v109[3];
      if (v48 >= v47 >> 1)
      {
        v109 = sub_100547450((v47 > 1), v48 + 1, 1, v109);
      }

      (*v103)(v15, v7);
      v49 = v109;
      v109[2] = v48 + 1;
      v50 = &v49[2 * v48];
      v50[4] = v45;
      v50[5] = &protocol witness table for TTRRemindersListConcreteEditingSession;
    }

    else
    {
      if (qword_1007673E0 != -1)
      {
        swift_once();
      }

      v51 = type metadata accessor for Logger();
      sub_100003E30(v51, qword_100788800);
      v52 = v91;
      v110(v91, v15, v7);
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = v52;
        v56 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        v114[0] = v108;
        *v56 = v90;
        sub_1004F5C50(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
        v57 = TTRTreeStorageItem.treeItemDescription.getter();
        v59 = v58;
        v60 = *v103;
        (*v103)(v55, v7);
        v61 = sub_100004060(v57, v59, v114);
        v15 = v100;

        *(v56 + 4) = v61;
        _os_log_impl(&_mh_execute_header, v53, v54, "Skip edit; failed to create editing session {item: %s}", v56, 0xCu);
        sub_100004758(v108);

        v60(v15, v7);
      }

      else
      {

        v73 = *v103;
        (*v103)(v52, v7);
        v73(v15, v7);
      }

      v20 = v98;
    }

LABEL_4:
    v23 = v111;
    goto LABEL_5;
  }

  v109 = _swiftEmptyArrayStorage;
  v92 = _swiftEmptyArrayStorage;
LABEL_34:
  v74 = v109[2];
  v75 = v92;
  if (!(v92 >> 62))
  {
    result = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v77 = v74 + result;
    if (!__OFADD__(v74, result))
    {
      goto LABEL_36;
    }

LABEL_50:
    __break(1u);
    return result;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v77 = v74 + result;
  if (__OFADD__(v74, result))
  {
    goto LABEL_50;
  }

LABEL_36:
  if (v77 < 1)
  {

    return 0;
  }

  else
  {
    v103 = (v75 >> 62);
    v104 = v77;
    v78 = v109[2];
    if (v78)
    {
      v79 = v20;
      v107 = v96 + 8;
      v106 = (v88 + 8);
      v80 = (v109 + 5);
      v105 = xmmword_10062D3F0;
      do
      {
        v110 = *v80;
        v111 = v78;
        v81 = swift_getObjectType();
        swift_unknownObjectRetain();
        v108 = v81;
        dispatch thunk of TTRRemindersListEditingSession.attributeEditor.getter();
        sub_10000C36C(v114, v115);
        dispatch thunk of TTRRemindersListAttributeEditing.addAttributes(from:isForNewReminder:)();
        sub_100004758(v114);
        sub_100058000(&qword_10076C6E0, &unk_100630570);
        v82 = v96;
        v83 = swift_allocObject();
        *(v83 + 16) = v105;
        static TTRRemindersListEditingSessionDisplayTargets.cell.getter();
        static TTRRemindersListEditingSessionDisplayTargets.reminderEditingComponents.getter();
        v114[0] = v83;
        sub_1004F5C50(&unk_1007756B0, &type metadata accessor for TTRRemindersListEditingSessionDisplayTargets, &protocol conformance descriptor for TTRRemindersListEditingSessionDisplayTargets);
        sub_100058000(&qword_10076C6E8, &unk_100635D60);
        sub_10000E188(&unk_1007756C0, &qword_10076C6E8, &unk_100635D60, &protocol conformance descriptor for [A]);
        v84 = v79;
        v85 = v95;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        dispatch thunk of TTRRemindersListEditingSession.setNeedsDisplay(_:)();
        v86 = v85;
        v79 = v84;
        (*(v82 + 8))(v84, v86);
        v114[0] = _swiftEmptyArrayStorage;
        sub_1004F5C50(&qword_10076C6D0, &type metadata accessor for TTRRemindersListEditingSessionFinishingOption, &protocol conformance descriptor for TTRRemindersListEditingSessionFinishingOption);
        sub_100058000(&unk_1007756D0, &qword_100630568);
        sub_10000E188(&qword_10076C6D8, &unk_1007756D0, &qword_100630568, &protocol conformance descriptor for [A]);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        dispatch thunk of TTRRemindersListEditingSession.finish(options:)();
        swift_unknownObjectRelease();
        (*v106)(v112, v113);
        v80 += 2;
        v78 = v111 - 1;
      }

      while (v111 != 1);
    }

    if (v103)
    {
      v87 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v87 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v87)
    {
      swift_getObjectType();
      dispatch thunk of TTRRemindersListInteractorType.attributeEditor(for:)();

      sub_10000C36C(v114, v115);
      dispatch thunk of TTRRemindersListAttributeEditing.addAttributes(from:isForNewReminder:)();
      sub_100004758(v114);
    }

    else
    {
    }

    return v104;
  }
}

uint64_t sub_1004F83C0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for TTRRemindersListTargetContainer() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for TTRRemindersListReminderInsertionPosition() - 8);
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  v11 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_1004F3AA0(a1, v9, v10, v2 + v6, v11, a2);
}

void sub_1004F84AC()
{
  v1 = type metadata accessor for TTRRemindersListEditingSessionDisplayTargets();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for TTRRemindersListViewModel.Item();
  v5 = *(v63 - 8);
  __chkstk_darwin(v63);
  v57 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v56 = &v54 - v8;
  __chkstk_darwin(v9);
  v61 = &v54 - v10;
  __chkstk_darwin(v11);
  v60 = &v54 - v12;
  v13 = type metadata accessor for TTRReminderListEditingPresenter.PendingDisplay(0);
  v67 = *(v13 - 8);
  v68 = v13;
  __chkstk_darwin(v13);
  v64 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v54 - v16;
  swift_beginAccess();
  v18 = *(v0 + 72);
  v65 = v0;
  *(v0 + 72) = &_swiftEmptyDictionarySingleton;
  v19 = v18 + 64;
  v20 = 1 << *(v18 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v18 + 64);
  v23 = (v20 + 63) >> 6;
  v24 = (v2 + 8);
  v58 = (v5 + 16);
  v59 = v5;
  v62 = (v5 + 32);

  v25 = 0;
  v66._rawValue = _swiftEmptyArrayStorage;
  while (1)
  {
    v26 = v25;
    if (!v22)
    {
      break;
    }

LABEL_8:
    v27 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    sub_1004F68A4(*(v18 + 56) + *(v67 + 72) * (v27 | (v25 << 6)), v17, type metadata accessor for TTRReminderListEditingPresenter.PendingDisplay);
    static TTRRemindersListEditingSessionDisplayTargets.cell.getter();
    sub_1004F5C50(&unk_1007756B0, &type metadata accessor for TTRRemindersListEditingSessionDisplayTargets, &protocol conformance descriptor for TTRRemindersListEditingSessionDisplayTargets);
    v28 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    (*v24)(v4, v1);
    if (v28)
    {
      v29 = v63;
      (*v58)(v61, v17, v63);
      sub_1004F676C(v17, type metadata accessor for TTRReminderListEditingPresenter.PendingDisplay);
      v55 = *v62;
      (v55)(v60, v61, v29);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v66._rawValue = sub_100547094(0, *(v66._rawValue + 2) + 1, 1, v66._rawValue);
      }

      v31 = *(v66._rawValue + 2);
      v30 = *(v66._rawValue + 3);
      v32 = v31 + 1;
      if (v31 >= v30 >> 1)
      {
        v54 = v31 + 1;
        v34 = sub_100547094((v30 > 1), v31 + 1, 1, v66._rawValue);
        v32 = v54;
        v66._rawValue = v34;
      }

      rawValue = v66._rawValue;
      *(v66._rawValue + 2) = v32;
      (v55)(&rawValue[((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v31], v60, v63);
    }

    else
    {
      sub_1004F676C(v17, type metadata accessor for TTRReminderListEditingPresenter.PendingDisplay);
    }
  }

  while (1)
  {
    v25 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
      goto LABEL_39;
    }

    if (v25 >= v23)
    {
      break;
    }

    v22 = *(v19 + 8 * v25);
    ++v26;
    if (v22)
    {
      goto LABEL_8;
    }
  }

  v35 = v66._rawValue;
  if (*(v66._rawValue + 2) && (v36 = v65, swift_unknownObjectWeakLoadStrong()))
  {
    v37 = *(v36 + 24);
    ObjectType = swift_getObjectType();
    v39 = sub_1004F5C50(&qword_100769610, type metadata accessor for TTRReminderListEditingPresenter, &unk_100644258);
    (*(v37 + 16))(v36, v39, v35, ObjectType, v37);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v40 = 1 << *(v18 + 32);
  v41 = -1;
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  v42 = v41 & *(v18 + 64);
  v43 = (v40 + 63) >> 6;

  v44 = 0;
  v66._rawValue = _swiftEmptyArrayStorage;
LABEL_22:
  v45 = v64;
  v46 = v44;
  if (!v42)
  {
    goto LABEL_24;
  }

  do
  {
    v44 = v46;
LABEL_27:
    v47 = __clz(__rbit64(v42));
    v42 &= v42 - 1;
    sub_1004F68A4(*(v18 + 56) + *(v67 + 72) * (v47 | (v44 << 6)), v45, type metadata accessor for TTRReminderListEditingPresenter.PendingDisplay);
    static TTRRemindersListEditingSessionDisplayTargets.reminderEditingComponents.getter();
    sub_1004F5C50(&unk_1007756B0, &type metadata accessor for TTRRemindersListEditingSessionDisplayTargets, &protocol conformance descriptor for TTRRemindersListEditingSessionDisplayTargets);
    v48 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    (*v24)(v4, v1);
    if (v48)
    {
      v49 = v63;
      (*v58)(v57, v45, v63);
      sub_1004F676C(v45, type metadata accessor for TTRReminderListEditingPresenter.PendingDisplay);
      v61 = *v62;
      (v61)(v56, v57, v49);
      v50 = v66._rawValue;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v50 = sub_100547094(0, v50[2] + 1, 1, v50);
      }

      v52 = v50[2];
      v51 = v50[3];
      v66._rawValue = v50;
      if (v52 >= v51 >> 1)
      {
        v66._rawValue = sub_100547094((v51 > 1), v52 + 1, 1, v66._rawValue);
      }

      v53 = v66._rawValue;
      *(v66._rawValue + 2) = v52 + 1;
      (v61)(&v53[((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v52], v56, v63);
      goto LABEL_22;
    }

    sub_1004F676C(v45, type metadata accessor for TTRReminderListEditingPresenter.PendingDisplay);
    v46 = v44;
  }

  while (v42);
LABEL_24:
  while (1)
  {
    v44 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      break;
    }

    if (v44 >= v43)
    {

      if (*(v66._rawValue + 2))
      {
        TTRInCellEditingPresenterManagingHelper.updateReminderEditingComponentsFor(_:)(v66);
      }

      return;
    }

    v42 = *(v19 + 8 * v44);
    ++v46;
    if (v42)
    {
      goto LABEL_27;
    }
  }

LABEL_39:
  __break(1u);
}

uint64_t sub_1004F8CBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100775AB0, &unk_1006360A0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004F8D34(uint64_t (*a1)(uint64_t *))
{
  v3 = *(v1 + 16);
  v4 = 0;
  return a1(&v3);
}

void sub_1004F8D78()
{
  v1 = *(type metadata accessor for TTRRemindersListInteractorSectionsCapabilityTarget() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = v0[4];

  sub_1004E8CD8(v3, v4, v6, v0 + v2, v5);
}

unint64_t sub_1004F8E20()
{
  result = qword_100788BA8;
  if (!qword_100788BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100788BA8);
  }

  return result;
}

unint64_t sub_1004F8E78()
{
  result = qword_100788BB0;
  if (!qword_100788BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100788BB0);
  }

  return result;
}

unint64_t sub_1004F8ED0()
{
  result = qword_100788BB8;
  if (!qword_100788BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100788BB8);
  }

  return result;
}

unint64_t sub_1004F8F28()
{
  result = qword_100788BC0;
  if (!qword_100788BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100788BC0);
  }

  return result;
}

id TTRIWelcomeAssembly.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIWelcomeAssembly();
  return objc_msgSendSuper2(&v2, "init");
}

id TTRIWelcomeAssembly.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIWelcomeAssembly();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1004F9054(uint64_t a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v5 = &a2[OBJC_IVAR____TtC9Reminders25TTRIWelcomeViewController_upgradeHelpURLString];
  *v5 = 0xD000000000000025;
  *(v5 + 1) = 0x800000010068A9C0;
  *&a2[OBJC_IVAR____TtC9Reminders25TTRIWelcomeViewController_spinner] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders25TTRIWelcomeViewController_originalBottomConstraints] = 0;
  *&a2[OBJC_IVAR____TtC9Reminders25TTRIWelcomeViewController_newBottomConstraints] = 0;
  v6 = &a2[OBJC_IVAR____TtC9Reminders25TTRIWelcomeViewController_presenter];
  *v6 = a1;
  *(v6 + 1) = &off_100718010;
  *&a2[OBJC_IVAR____TtC9Reminders25TTRIWelcomeViewController_viewModel] = xmmword_1006444F0;

  v7 = sub_10014D4E8();

  if (v7)
  {
    v8._countAndFlagsBits = 0x2070552079617453;
    v8._object = 0xEF65746144206F74;
    v9._countAndFlagsBits = 0xD000000000000018;
    v9._object = 0x800000010068AB00;
    TTRLocalizedString(_:comment:)(v8, v9);
    if (static REMFeatureFlags.isSolariumEnabled.getter())
    {
      v10 = "bles the latest features.";
      v11 = 0xD000000000000022;
      v12 = 0x800000010068ABC0;
      v13 = 0xD000000000000049;
      v14 = 0x800000010068ABF0;
      v15 = 0xD000000000000060;
    }

    else
    {
      v10 = "bles the latest features.";
      v11 = 0xD000000000000017;
      v12 = 0x800000010068AB20;
      v13 = 0xD000000000000049;
      v14 = 0x800000010068AB40;
      v15 = 0xD000000000000020;
    }

    v21 = v10 | 0x8000000000000000;
    object = TTRLocalizedString(_:value:comment:)(*&v11, *&v13, *&v15)._object;
    v23 = static TTRIAsset.Image.UpgradeWarmingSheet.upgradeHeader.getter();
  }

  else
  {
    if (static REMFeatureFlags.isSolariumEnabled.getter())
    {
      v16 = "Welcome to Reminders";
      v17 = 0xD000000000000021;
      v18 = 0x800000010068AA50;
      v19 = 0x800000010068AA80;
      v20 = 0xD00000000000005CLL;
    }

    else
    {
      v16 = "Welcome to\nReminders";
      v17 = 0xD000000000000016;
      v18 = 0x800000010068A9F0;
      v19 = 0x800000010068AA10;
      v20 = 0xD00000000000001CLL;
    }

    v24 = v16 | 0x8000000000000000;
    v25 = 0xD000000000000014;
    TTRLocalizedString(_:value:comment:)(*&v17, *(&v19 - 1), *&v20);
    v23 = 0;
    object = 0;
  }

  v26 = String._bridgeToObjectiveC()();

  if (object)
  {
    v27 = String._bridgeToObjectiveC()();
  }

  else
  {
    v27 = 0;
  }

  v30.receiver = a2;
  v30.super_class = ObjectType;
  v28 = objc_msgSendSuper2(&v30, "initWithTitle:detailText:icon:contentLayout:", v26, v27, v23, 2);

  return v28;
}

id sub_1004F9328(uint64_t a1, uint64_t a2, void *a3, __n128 a4)
{
  v6 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TTRCloudKitMigrationManager();
  v10 = static TTRCloudKitMigrationManager.shared.getter();
  v11 = [objc_opt_self() sharedInstance];
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v12 = [objc_allocWithZone(REMStore) init];
  OS_dispatch_queue.SchedulerTimeType.Stride.init(integerLiteral:)();
  type metadata accessor for TTRWelcomeInteractor(0);
  v13 = swift_allocObject();
  v13[3] = 0;
  swift_unknownObjectWeakInit();
  v13[4] = a3;
  v13[5] = v10;
  v13[6] = &off_100716DB0;
  v13[7] = v11;
  sub_1004F9724(&v31, &v28);
  v14 = v29;
  sub_10012E7EC(a3);
  if (v14)
  {
    sub_1004F9794(&v31);
    sub_100005FD0(&v28, v30);
    sub_100005FD0(v30, (v13 + 8));
  }

  else
  {
    sub_1004F9794(&v28);
    v13[11] = &type metadata for TTRWelcomeInteractor.DefaultDeviceListRequestFactory;
    v13[12] = &off_100717278;
    sub_1004F9794(&v31);
  }

  v13[13] = v12;
  (*(v7 + 32))(v13 + OBJC_IVAR____TtC9Reminders20TTRWelcomeInteractor_getUpgradeInfoTimeout, v9, v6);
  v15 = type metadata accessor for TTRIWelcomeRouter();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v16 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(&v32 + 1) = v15;
  v33 = &off_10071E0C8;
  *&v31 = v16;
  type metadata accessor for TTRIWelcomePresenter();
  v17 = swift_allocObject();
  v18 = sub_10000AE84(&v31, v15);
  v19 = __chkstk_darwin(v18);
  v21 = (&v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21, v19);
  v23 = *v21;
  *(v17 + 88) = v15;
  *(v17 + 96) = &off_10071E0C8;
  *(v17 + 64) = v23;
  *(v17 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v17 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v17 + 104) = 1;
  *(v17 + 112) = 0u;
  *(v17 + 128) = 0u;
  *(v17 + 144) = 0u;
  *(v17 + 160) = 0;
  *(v17 + 48) = v13;
  *(v17 + 56) = &off_100716EE0;

  sub_100004758(&v31);
  v24 = objc_allocWithZone(type metadata accessor for TTRIWelcomeViewController());

  v26 = sub_1004F9054(v25, v24);
  v13[3] = &off_100718008;
  swift_unknownObjectWeakAssign();

  *(v17 + 24) = &off_100729970;
  swift_unknownObjectWeakAssign();
  *(v17 + 40) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  *(v16 + 32) = a2;
  swift_unknownObjectWeakAssign();

  return v26;
}

uint64_t sub_1004F9724(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_100788BF0, &qword_100644558);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004F9794(uint64_t a1)
{
  v2 = sub_100058000(&qword_100788BF0, &qword_100644558);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1004F97FC(uint64_t *a1, void **a2, void *a3, void *a4, uint64_t a5, int a6)
{
  v137 = a6;
  v128 = a4;
  v138 = a1;
  v8 = type metadata accessor for TTRRemindersListLayout();
  v132 = *(v8 - 8);
  v133 = v8;
  __chkstk_darwin(v8);
  v120 = &v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v134 = &v119 - v11;
  __chkstk_darwin(v12);
  v119 = &v119 - v13;
  __chkstk_darwin(v14);
  v129 = &v119 - v15;
  v16 = type metadata accessor for TTRIRemindersCommonPresenterConfiguration(0);
  __chkstk_darwin(v16 - 8);
  v126 = (&v119 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v18);
  v127 = &v119 - v19;
  v125 = type metadata accessor for TTRIRemindersListAssembly.PresenterConfigurationBuilder(0);
  __chkstk_darwin(v125);
  v147 = &v119 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for TTRListType.SortingCapability();
  __chkstk_darwin(v21 - 8);
  v121 = &v119 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  __chkstk_darwin(v23 - 8);
  v124 = (&v119 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = type metadata accessor for TTRRemindersListDefaultListType();
  v145 = *(v25 - 8);
  v146 = v25;
  __chkstk_darwin(v25);
  v122 = &v119 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v144 = (&v119 - v28);
  v29 = type metadata accessor for REMSuggestedAttributesElector.ExcludedAttributes();
  v142 = *(v29 - 8);
  v143 = v29;
  __chkstk_darwin(v29);
  v139 = &v119 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v141 = &v119 - v32;
  v33 = type metadata accessor for TTRRemindersListDataModelSourceCountCompleted();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v36 = &v119 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v38 = *(v37 - 8);
  __chkstk_darwin(v37);
  v40 = &v119 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v43 = &v119 - v42;
  v44 = sub_100174F2C();
  v156 = &protocol witness table for REMSmartList;
  v155 = v44;
  v154[0] = a3;
  v45 = a3;
  static REMRemindersListDataView.SortingStyle.fallbackForCustomSmartList.getter();
  static REMRemindersListDataView.SortingStyle.sortingStyle(for:fallback:)();
  v130 = *(v38 + 8);
  v131 = v38 + 8;
  v130(v40, v37);
  sub_1004D3F04(v154);
  v123 = a2;
  v46 = *a2;
  (*(v34 + 104))(v36, enum case for TTRRemindersListDataModelSourceCountCompleted.onWhenShowingCompleted(_:), v33);
  v47 = *(v38 + 16);
  v135 = v43;
  v136 = v37;
  v47(v40, v43, v37);
  v48 = type metadata accessor for TTRUserDefaults();
  v49 = v46;
  v50 = v141;
  v51 = static TTRUserDefaults.appUserDefaults.getter();
  v156 = &protocol witness table for TTRUserDefaults;
  v155 = v48;
  v154[0] = v51;
  type metadata accessor for TTRShowCustomSmartListDataModelSource();
  swift_allocObject();
  v52 = v45;
  v53 = v142;
  v54 = v143;
  v140 = TTRShowCustomSmartListDataModelSource.init(store:smartList:countCompleted:sortingStyle:canChangeSortingStyle:userDefaults:)();
  v154[0] = _swiftEmptyArrayStorage;
  sub_1004FA96C(&qword_100769628, &type metadata accessor for REMSuggestedAttributesElector.ExcludedAttributes, &protocol conformance descriptor for REMSuggestedAttributesElector.ExcludedAttributes);
  sub_100058000(&qword_10076C218, &unk_1006302E0);
  sub_10010BA44();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v55 = [v52 customContext];
  if (v55)
  {
    v56 = v55;
    v57 = REMSmartListCustomContext.filter.getter();

    if (v57)
    {
      v58 = v139;
      REMCustomSmartListFilterDescriptor.excludedSuggestedAttributes.getter();

      (*(v53 + 8))(v50, v54);
      (*(v53 + 32))(v50, v58, v54);
    }
  }

  v59 = [v52 accountID];
  v60 = v144;
  v61 = v145;
  *v144 = v59;
  v62 = v146;
  (*(v61 + 104))(v60, enum case for TTRRemindersListDefaultListType.cloudKitListWithAccountID(_:), v146);
  v63 = v123;
  v64 = v124;
  sub_10010BD5C(v123, v124, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  v65 = *(v53 + 16);
  v66 = v139;
  v65(v139, v50, v54);
  v67 = v122;
  (*(v61 + 16))(v122, v60, v62);
  sub_10007786C(v64, v66, v67, v154);
  v68 = v154[0];
  v69 = v140;

  v70 = v68;
  v71 = v121;
  static TTRListType.SortingCapability.sortingCapabilityForCustomSmartList.getter();
  type metadata accessor for TTRShowCustomSmartListViewModelSource(0);
  v72 = swift_allocObject();
  v122 = v70;
  v74 = sub_1004FA800(v69, v70, v71, v72, v73);
  sub_10010BD5C(v63, v64, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  sub_10010BCAC(v154, v151);
  v75 = sub_1004FA96C(&qword_100781120, type metadata accessor for TTRShowCustomSmartListViewModelSource, &unk_100646FD0);
  v76 = v147;
  sub_10010BD5C(v64, v147, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  v77 = v125;
  sub_10010BCAC(v151, v76 + *(v125 + 20));
  v78 = (v76 + *(v77 + 24));
  *v78 = v74;
  v78[1] = v75;
  v79 = v151[0];
  sub_100058000(&qword_10076C230, &unk_1006339A0);
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_10062D3F0;
  sub_10000794C(&v153, v150, &qword_100769608, &unk_1006302F0);
  v81 = *(v150[5] + 8);
  *(v80 + 32) = v150[4];
  *(v80 + 40) = v81;
  sub_10000794C(&v152, v148, &qword_100769600, &qword_10062E0A0);
  swift_retain_n();
  v82 = v79;
  swift_unknownObjectRelease();
  *(v80 + 48) = v149;
  sub_100004758(v148);
  sub_100004758(v150);
  type metadata accessor for TTRReminderListEditingPresenter(0);
  v83 = swift_allocObject();
  v84 = sub_1003A79E4(v82, v74, v80, v83);
  v139 = v74;

  sub_10010BD08(v151);
  sub_10010BE0C(v64, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  v85 = *(v77 + 28);
  v124 = v84;
  *(v76 + v85) = v84;
  v86 = v127;
  sub_100078BBC(v127);
  v125 = type metadata accessor for TTRIShowCustomSmartListPresenter(0);
  v87 = swift_allocObject();
  v88 = (v87 + OBJC_IVAR____TtC9Reminders32TTRIShowCustomSmartListPresenter_dataModelSource);
  *v88 = v69;
  v88[1] = &protocol witness table for TTRShowCustomSmartListDataModelSource;
  v89 = v126;
  sub_10010BD5C(v86, v126, type metadata accessor for TTRIRemindersCommonPresenterConfiguration);

  v90 = v128;
  swift_unknownObjectRetain();
  v91 = sub_1003A56E4(v89, v90, v87);
  sub_10010BE0C(v86, type metadata accessor for TTRIRemindersCommonPresenterConfiguration);
  v92 = *(v91 + 144);
  ObjectType = swift_getObjectType();
  v94 = *(v92 + 112);

  if (v94(ObjectType, v92))
  {
    swift_getObjectType();
    v95 = v119;
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();
    v97 = v132;
    v96 = v133;
    v98 = v129;
    (*(v132 + 32))(v129, v95, v133);
  }

  else
  {
    v97 = v132;
    v96 = v133;
    v98 = v129;
    (*(v132 + 104))(v129, enum case for TTRRemindersListLayout.list(_:), v133);
  }

  v128 = sub_1003A4A1C(v98, v91);
  v129 = v99;
  v101 = v100;
  v103 = v102;
  (*(v97 + 8))(v98, v96);
  v132 = swift_getObjectType();
  v133 = v101;
  *(v91 + 24) = *(v103 + 8);
  swift_unknownObjectWeakAssign();
  v104 = *(v91 + 144);
  v105 = swift_getObjectType();
  v106 = *(v104 + 112);

  if (v106(v105, v104))
  {
    swift_getObjectType();
    v107 = v120;
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();

    v108 = v134;
    (*(v97 + 32))(v134, v107, v96);
  }

  else
  {

    v108 = v134;
    (*(v97 + 104))(v134, enum case for TTRRemindersListLayout.list(_:), v96);
  }

  v109 = objc_allocWithZone(type metadata accessor for TTRIShowRemindersViewController(0));
  v110 = v128;
  v111 = sub_1003A7A18(v91, v110, v129, v108, 0, 1, 0, v109);

  v112 = *(v103 + 32);
  v113 = v111;
  v112(v111, &off_100723D78, v132, v103);
  sub_1004FA96C(&qword_100788C20, type metadata accessor for TTRIShowCustomSmartListPresenter, &unk_100635C58);

  TTRRemindersListInteractor.delegate.setter();

  TTRRemindersListInteractor.optimisticUpdatesDelegate.setter();
  swift_unknownObjectWeakAssign();
  sub_1004FA96C(&qword_100788C28, type metadata accessor for TTRShowCustomSmartListViewModelSource, &unk_100645728);

  v114 = v113;
  dispatch thunk of TTRShowCustomSmartListDataModelSource.delegate.setter();

  sub_10056FEB0(v115, &off_10071A9B0);

  v124[3] = &off_10071AB30;
  swift_unknownObjectWeakAssign();
  sub_10000794C(&v157, v151, &qword_100769600, &qword_10062E0A0);
  v116 = v151[4];
  swift_unknownObjectRelease();
  *(v116 + 40) = &off_10071A918;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  sub_100004758(v151);
  sub_10000794C(&v158, v151, &qword_100769608, &unk_1006302F0);
  swift_getObjectType();
  sub_1004FA96C(&unk_100788C30, type metadata accessor for TTRIShowCustomSmartListPresenter, &unk_100635930);

  dispatch thunk of TTRIQuickBarInputAccessoryModuleInterface.moduleDelegate.setter();
  swift_unknownObjectRelease();
  sub_100004758(v151);
  dispatch thunk of TTRShowCustomSmartListDataModelSource.start(fetchesInitialDataSynchronously:)();
  v117 = v138;
  v138[3] = v125;
  v117[4] = &off_10072A760;

  swift_unknownObjectRelease();
  *v117 = v91;
  (*(v145 + 8))(v144, v146);
  (*(v142 + 8))(v141, v143);
  v130(v135, v136);
  sub_10010BE0C(v147, type metadata accessor for TTRIRemindersListAssembly.PresenterConfigurationBuilder);
  sub_10010BD08(v154);
  return v114;
}

id TTRIShowCustomSmartListAssembly.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TTRIShowCustomSmartListAssembly();
  return objc_msgSendSuper2(&v3, "init");
}

id TTRIShowCustomSmartListAssembly.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIShowCustomSmartListAssembly();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1004FA800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v9 = type metadata accessor for TTRListType.SortingCapability();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a4 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource____lazy_storage___dragAndDropCapability) = 0;
  *(a4 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_smartList) = 0;
  v14 = a4 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_remindersCount;
  *v14 = 0;
  *(v14 + 8) = 0;
  *(v14 + 16) = 1;
  *(a4 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_hasIncompleteOrCompletedReminders) = 2;
  *(a4 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_showLargeAttachmentsValue) = 1;
  *(a4 + OBJC_IVAR____TtC9Reminders37TTRShowCustomSmartListViewModelSource_sectionsContextInstance) = 0;
  (*(v10 + 16))(v13, a3, v9, v11);
  v15 = sub_1003A649C(a1, a2, v13, a4);
  (*(v10 + 8))(a3, v9);
  return v15;
}

uint64_t sub_1004FA96C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1004FA9B4(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v9[3] = v3;
  v9[4] = v4;
  v6 = sub_1000317B8(v9);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  v7 = (*(v4 + 16))(a1, v3, v4);
  sub_100004758(v9);
  return v7;
}

uint64_t sub_1004FAA94()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 88);
  v3 = sub_10000C36C((*v0 + 48), v1);
  v7[3] = v1;
  v7[4] = v2;
  v4 = sub_1000317B8(v7);
  (*(*(v1 - 8) + 16))(v4, v3, v1);
  v5 = (*(v2 + 24))(v1, v2);
  sub_100004758(v7);
  return v5;
}

uint64_t sub_1004FAB4C(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v8[3] = v3;
  v8[4] = v4;
  v6 = sub_1000317B8(v8);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  (*(v4 + 32))(a1, v3, v4);
  return sub_100004758(v8);
}

uint64_t sub_1004FAC0C(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 88);
  v7 = sub_10000C36C((*v2 + 48), v5);
  v10[3] = v5;
  v10[4] = v6;
  v8 = sub_1000317B8(v10);
  (*(*(v5 - 8) + 16))(v8, v7, v5);
  (*(v6 + 48))(a1, a2, v5, v6);
  return sub_100004758(v10);
}

uint64_t sub_1004FACD4(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v8[3] = v3;
  v8[4] = v4;
  v6 = sub_1000317B8(v8);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  (*(v4 + 56))(a1, v3, v4);
  return sub_100004758(v8);
}

uint64_t sub_1004FAD94(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v8[3] = v3;
  v8[4] = v4;
  v6 = sub_1000317B8(v8);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  LOBYTE(a1) = (*(v4 + 64))(a1, v3, v4);
  sub_100004758(v8);
  return a1 & 1;
}

uint64_t sub_1004FAE5C(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v8[3] = v3;
  v8[4] = v4;
  v6 = sub_1000317B8(v8);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  LOBYTE(a1) = (*(v4 + 72))(a1, v3, v4);
  sub_100004758(v8);
  return a1 & 1;
}

uint64_t sub_1004FAF24(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v9[3] = v3;
  v9[4] = v4;
  v6 = sub_1000317B8(v9);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  v7 = (*(v4 + 80))(a1, v3, v4);
  sub_100004758(v9);
  return v7;
}

uint64_t sub_1004FAFEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 72);
  v8 = *(*v3 + 88);
  v9 = sub_10000C36C((*v3 + 48), v7);
  v12[3] = v7;
  v12[4] = v8;
  v10 = sub_1000317B8(v12);
  (*(*(v7 - 8) + 16))(v10, v9, v7);
  (*(v8 + 88))(a1, a2, a3, v7, v8);
  return sub_100004758(v12);
}

uint64_t sub_1004FB0C4(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 88);
  v7 = sub_10000C36C((*v2 + 48), v5);
  v10[3] = v5;
  v10[4] = v6;
  v8 = sub_1000317B8(v10);
  (*(*(v5 - 8) + 16))(v8, v7, v5);
  LOBYTE(a2) = (*(v6 + 96))(a1, a2, v5, v6);
  sub_100004758(v10);
  return a2 & 1;
}

uint64_t sub_1004FB194(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 88);
  v7 = sub_10000C36C((*v2 + 48), v5);
  v10[3] = v5;
  v10[4] = v6;
  v8 = sub_1000317B8(v10);
  (*(*(v5 - 8) + 16))(v8, v7, v5);
  (*(v6 + 104))(a1, a2, v5, v6);
  return sub_100004758(v10);
}

uint64_t sub_1004FB25C(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 88);
  v7 = sub_10000C36C((*v2 + 48), v5);
  v10[3] = v5;
  v10[4] = v6;
  v8 = sub_1000317B8(v10);
  (*(*(v5 - 8) + 16))(v8, v7, v5);
  (*(v6 + 120))(a1, a2, v5, v6);
  return sub_100004758(v10);
}

uint64_t sub_1004FB324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 72);
  v10 = *(*v4 + 88);
  v11 = sub_10000C36C((*v4 + 48), v9);
  v14[3] = v9;
  v14[4] = v10;
  v12 = sub_1000317B8(v14);
  (*(*(v9 - 8) + 16))(v12, v11, v9);
  (*(v10 + 128))(a1, a2, a3, a4, v9, v10);
  return sub_100004758(v14);
}

uint64_t sub_1004FB404()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 88);
  v3 = sub_10000C36C((*v0 + 48), v1);
  v6[3] = v1;
  v6[4] = v2;
  v4 = sub_1000317B8(v6);
  (*(*(v1 - 8) + 16))(v4, v3, v1);
  (*(v2 + 136))(v1, v2);
  return sub_100004758(v6);
}

uint64_t sub_1004FB4B4(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v8[3] = v3;
  v8[4] = v4;
  v6 = sub_1000317B8(v8);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  (*(v4 + 144))(a1, v3, v4);
  return sub_100004758(v8);
}

uint64_t sub_1004FB574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 72);
  v10 = *(*v4 + 88);
  v11 = sub_10000C36C((*v4 + 48), v9);
  v14[3] = v9;
  v14[4] = v10;
  v12 = sub_1000317B8(v14);
  (*(*(v9 - 8) + 16))(v12, v11, v9);
  (*(v10 + 152))(a1, a2, a3, a4, v9, v10);
  return sub_100004758(v14);
}

uint64_t sub_1004FB654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 72);
  v10 = *(*v4 + 88);
  v11 = sub_10000C36C((*v4 + 48), v9);
  v14[3] = v9;
  v14[4] = v10;
  v12 = sub_1000317B8(v14);
  (*(*(v9 - 8) + 16))(v12, v11, v9);
  (*(v10 + 160))(a1, a2, a3, a4, v9, v10);
  return sub_100004758(v14);
}

uint64_t sub_1004FB734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 72);
  v10 = *(*v4 + 88);
  v11 = sub_10000C36C((*v4 + 48), v9);
  v14[3] = v9;
  v14[4] = v10;
  v12 = sub_1000317B8(v14);
  (*(*(v9 - 8) + 16))(v12, v11, v9);
  (*(v10 + 168))(a1, a2, a3, a4, v9, v10);
  return sub_100004758(v14);
}

uint64_t sub_1004FB814(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 88);
  v7 = sub_10000C36C((*v2 + 48), v5);
  v11[3] = v5;
  v11[4] = v6;
  v8 = sub_1000317B8(v11);
  (*(*(v5 - 8) + 16))(v8, v7, v5);
  v9 = (*(v6 + 176))(a1, a2, v5, v6);
  sub_100004758(v11);
  return v9;
}

uint64_t sub_1004FB8E4(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v9[3] = v3;
  v9[4] = v4;
  v6 = sub_1000317B8(v9);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  v7 = (*(v4 + 184))(a1, v3, v4);
  sub_100004758(v9);
  return v7;
}

uint64_t sub_1004FB9AC(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v9[3] = v3;
  v9[4] = v4;
  v6 = sub_1000317B8(v9);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  v7 = (*(v4 + 192))(a1, v3, v4);
  sub_100004758(v9);
  return v7;
}

uint64_t sub_1004FBA74(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v8[3] = v3;
  v8[4] = v4;
  v6 = sub_1000317B8(v8);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  (*(v4 + 200))(a1, v3, v4);
  return sub_100004758(v8);
}

uint64_t sub_1004FBB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 72);
  v10 = *(*v4 + 88);
  v11 = sub_10000C36C((*v4 + 48), v9);
  v14[3] = v9;
  v14[4] = v10;
  v12 = sub_1000317B8(v14);
  (*(*(v9 - 8) + 16))(v12, v11, v9);
  (*(v10 + 208))(a1, a2, a3, a4, v9, v10);
  return sub_100004758(v14);
}

uint64_t sub_1004FBC14()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 88);
  v3 = sub_10000C36C((*v0 + 48), v1);
  v7[3] = v1;
  v7[4] = v2;
  v4 = sub_1000317B8(v7);
  (*(*(v1 - 8) + 16))(v4, v3, v1);
  v5 = (*(v2 + 216))(v1, v2);
  sub_100004758(v7);
  return v5;
}

uint64_t sub_1004FBCCC(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v9[3] = v3;
  v9[4] = v4;
  v6 = sub_1000317B8(v9);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  v7 = (*(v4 + 224))(a1, v3, v4);
  sub_100004758(v9);
  return v7;
}

uint64_t sub_1004FBD94(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v8[3] = v3;
  v8[4] = v4;
  v6 = sub_1000317B8(v8);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  (*(v4 + 232))(a1, v3, v4);
  return sub_100004758(v8);
}

uint64_t sub_1004FBE54(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v8[3] = v3;
  v8[4] = v4;
  v6 = sub_1000317B8(v8);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  (*(v4 + 240))(a1, v3, v4);
  return sub_100004758(v8);
}

uint64_t sub_1004FBF14(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v9[3] = v3;
  v9[4] = v4;
  v6 = sub_1000317B8(v9);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  v7 = (*(v4 + 248))(a1, v3, v4);
  sub_100004758(v9);
  return v7;
}

uint64_t sub_1004FBFDC()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 88);
  v3 = sub_10000C36C((*v0 + 48), v1);
  v6[3] = v1;
  v6[4] = v2;
  v4 = sub_1000317B8(v6);
  (*(*(v1 - 8) + 16))(v4, v3, v1);
  (*(v2 + 256))(v1, v2);
  return sub_100004758(v6);
}

uint64_t sub_1004FC08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 72);
  v10 = *(*v4 + 88);
  v11 = sub_10000C36C((*v4 + 48), v9);
  v14[3] = v9;
  v14[4] = v10;
  v12 = sub_1000317B8(v14);
  (*(*(v9 - 8) + 16))(v12, v11, v9);
  (*(v10 + 264))(a1, a2, a3, a4, v9, v10);
  return sub_100004758(v14);
}

uint64_t sub_1004FC16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 72);
  v10 = *(*v4 + 88);
  v11 = sub_10000C36C((*v4 + 48), v9);
  v14[3] = v9;
  v14[4] = v10;
  v12 = sub_1000317B8(v14);
  (*(*(v9 - 8) + 16))(v12, v11, v9);
  (*(v10 + 272))(a1, a2, a3, a4, v9, v10);
  return sub_100004758(v14);
}

uint64_t sub_1004FC24C(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v9[3] = v3;
  v9[4] = v4;
  v6 = sub_1000317B8(v9);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  v7 = (*(v4 + 280))(a1, v3, v4);
  sub_100004758(v9);
  return v7;
}

uint64_t sub_1004FC314()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 88);
  v3 = sub_10000C36C((*v0 + 48), v1);
  v7[3] = v1;
  v7[4] = v2;
  v4 = sub_1000317B8(v7);
  (*(*(v1 - 8) + 16))(v4, v3, v1);
  v5 = (*(v2 + 288))(v1, v2);
  sub_100004758(v7);
  return v5;
}

uint64_t sub_1004FC3CC()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 88);
  v3 = sub_10000C36C((*v0 + 48), v1);
  v6[3] = v1;
  v6[4] = v2;
  v4 = sub_1000317B8(v6);
  (*(*(v1 - 8) + 16))(v4, v3, v1);
  (*(v2 + 296))(v1, v2);
  return sub_100004758(v6);
}

uint64_t sub_1004FC48C()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 88);
  v3 = sub_10000C36C((*v0 + 48), v1);
  v6[3] = v1;
  v6[4] = v2;
  v4 = sub_1000317B8(v6);
  (*(*(v1 - 8) + 16))(v4, v3, v1);
  LOBYTE(v1) = (*(v2 + 304))(v1, v2);
  sub_100004758(v6);
  return v1 & 1;
}

uint64_t sub_1004FC544(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 88);
  v7 = sub_10000C36C((*v2 + 48), v5);
  v10[3] = v5;
  v10[4] = v6;
  v8 = sub_1000317B8(v10);
  (*(*(v5 - 8) + 16))(v8, v7, v5);
  LOBYTE(a2) = (*(v6 + 312))(a1, a2, v5, v6);
  sub_100004758(v10);
  return a2 & 1;
}

uint64_t sub_1004FC614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 72);
  v10 = *(*v4 + 88);
  v11 = sub_10000C36C((*v4 + 48), v9);
  v14[3] = v9;
  v14[4] = v10;
  v12 = sub_1000317B8(v14);
  (*(*(v9 - 8) + 16))(v12, v11, v9);
  (*(v10 + 320))(a1, a2, a3, a4, v9, v10);
  return sub_100004758(v14);
}

uint64_t sub_1004FC704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 72);
  v10 = *(*v4 + 88);
  v11 = sub_10000C36C((*v4 + 48), v9);
  v14[3] = v9;
  v14[4] = v10;
  v12 = sub_1000317B8(v14);
  (*(*(v9 - 8) + 16))(v12, v11, v9);
  (*(v10 + 328))(a1, a2, a3, a4, v9, v10);
  return sub_100004758(v14);
}

uint64_t sub_1004FC7F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 72);
  v10 = *(*v4 + 88);
  v11 = sub_10000C36C((*v4 + 48), v9);
  v14[3] = v9;
  v14[4] = v10;
  v12 = sub_1000317B8(v14);
  (*(*(v9 - 8) + 16))(v12, v11, v9);
  (*(v10 + 336))(a1, a2, a3, a4, v9, v10);
  return sub_100004758(v14);
}

uint64_t sub_1004FC8E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 72);
  v10 = *(*v4 + 88);
  v11 = sub_10000C36C((*v4 + 48), v9);
  v14[3] = v9;
  v14[4] = v10;
  v12 = sub_1000317B8(v14);
  (*(*(v9 - 8) + 16))(v12, v11, v9);
  (*(v10 + 344))(a1, a2, a3, a4, v9, v10);
  return sub_100004758(v14);
}

uint64_t sub_1004FC9D4()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 88);
  v3 = sub_10000C36C((*v0 + 48), v1);
  v6[3] = v1;
  v6[4] = v2;
  v4 = sub_1000317B8(v6);
  (*(*(v1 - 8) + 16))(v4, v3, v1);
  (*(v2 + 352))(v1, v2);
  return sub_100004758(v6);
}

uint64_t sub_1004FCA84(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 88);
  v7 = sub_10000C36C((*v2 + 48), v5);
  v10[3] = v5;
  v10[4] = v6;
  v8 = sub_1000317B8(v10);
  (*(*(v5 - 8) + 16))(v8, v7, v5);
  (*(v6 + 360))(a1, a2, v5, v6);
  return sub_100004758(v10);
}

uint64_t sub_1004FCB4C(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v8[3] = v3;
  v8[4] = v4;
  v6 = sub_1000317B8(v8);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  LOBYTE(a1) = (*(v4 + 368))(a1, v3, v4);
  sub_100004758(v8);
  return a1 & 1;
}

uint64_t sub_1004FCC14()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 88);
  v3 = sub_10000C36C((*v0 + 48), v1);
  v6[3] = v1;
  v6[4] = v2;
  v4 = sub_1000317B8(v6);
  (*(*(v1 - 8) + 16))(v4, v3, v1);
  (*(v2 + 376))(v1, v2);
  return sub_100004758(v6);
}

uint64_t sub_1004FCCC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 72);
  v8 = *(*v3 + 88);
  v9 = sub_10000C36C((*v3 + 48), v7);
  v12[3] = v7;
  v12[4] = v8;
  v10 = sub_1000317B8(v12);
  (*(*(v7 - 8) + 16))(v10, v9, v7);
  (*(v8 + 384))(a1, a2, a3, v7, v8);
  return sub_100004758(v12);
}

uint64_t sub_1004FCD9C()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 88);
  v3 = sub_10000C36C((*v0 + 48), v1);
  v6[3] = v1;
  v6[4] = v2;
  v4 = sub_1000317B8(v6);
  (*(*(v1 - 8) + 16))(v4, v3, v1);
  (*(v2 + 392))(v1, v2);
  return sub_100004758(v6);
}

uint64_t sub_1004FCE5C(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v8[3] = v3;
  v8[4] = v4;
  v6 = sub_1000317B8(v8);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  (*(v4 + 400))(a1, v3, v4);
  return sub_100004758(v8);
}

uint64_t sub_1004FCF24()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 88);
  v3 = sub_10000C36C((*v0 + 48), v1);
  v6[3] = v1;
  v6[4] = v2;
  v4 = sub_1000317B8(v6);
  (*(*(v1 - 8) + 16))(v4, v3, v1);
  (*(v2 + 408))(v1, v2);
  return sub_100004758(v6);
}

uint64_t sub_1004FCFD4(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 88);
  v7 = sub_10000C36C((*v2 + 48), v5);
  v10[3] = v5;
  v10[4] = v6;
  v8 = sub_1000317B8(v10);
  (*(*(v5 - 8) + 16))(v8, v7, v5);
  (*(v6 + 416))(a1, a2, v5, v6);
  return sub_100004758(v10);
}

uint64_t sub_1004FD0AC(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v9[3] = v3;
  v9[4] = v4;
  v6 = sub_1000317B8(v9);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  v7 = (*(v4 + 424))(a1, v3, v4);
  sub_100004758(v9);
  return v7;
}

uint64_t sub_1004FD180(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 88);
  v7 = sub_10000C36C((*v2 + 48), v5);
  v11[3] = v5;
  v11[4] = v6;
  v8 = sub_1000317B8(v11);
  (*(*(v5 - 8) + 16))(v8, v7, v5);
  v9 = (*(v6 + 432))(a1, a2, v5, v6);
  sub_100004758(v11);
  return v9;
}

uint64_t sub_1004FD260(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v8[3] = v3;
  v8[4] = v4;
  v6 = sub_1000317B8(v8);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  (*(v4 + 440))(a1, v3, v4);
  return sub_100004758(v8);
}

uint64_t sub_1004FD328(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v9 = *(*v4 + 72);
  v10 = *(*v4 + 88);
  v11 = sub_10000C36C((*v4 + 48), v9);
  v14[3] = v9;
  v14[4] = v10;
  v12 = sub_1000317B8(v14);
  (*(*(v9 - 8) + 16))(v12, v11, v9);
  (*(v10 + 448))(a1, a2, a3 & 0x101FF, a4, v9, v10);
  return sub_100004758(v14);
}

uint64_t sub_1004FD40C()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 88);
  v3 = sub_10000C36C((*v0 + 48), v1);
  v6[3] = v1;
  v6[4] = v2;
  v4 = sub_1000317B8(v6);
  (*(*(v1 - 8) + 16))(v4, v3, v1);
  (*(v2 + 456))(v1, v2);
  return sub_100004758(v6);
}

uint64_t sub_1004FD4BC()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 88);
  v3 = sub_10000C36C((*v0 + 48), v1);
  v6[3] = v1;
  v6[4] = v2;
  v4 = sub_1000317B8(v6);
  (*(*(v1 - 8) + 16))(v4, v3, v1);
  (*(v2 + 464))(v1, v2);
  return sub_100004758(v6);
}

uint64_t sub_1004FD56C()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 88);
  v3 = sub_10000C36C((*v0 + 48), v1);
  v7[3] = v1;
  v7[4] = v2;
  v4 = sub_1000317B8(v7);
  (*(*(v1 - 8) + 16))(v4, v3, v1);
  v5 = (*(v2 + 496))(v1, v2);
  sub_100004758(v7);
  return v5;
}

uint64_t sub_1004FD624()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 88);
  v3 = sub_10000C36C((*v0 + 48), v1);
  v7[3] = v1;
  v7[4] = v2;
  v4 = sub_1000317B8(v7);
  (*(*(v1 - 8) + 16))(v4, v3, v1);
  v5 = (*(v2 + 504))(v1, v2);
  sub_100004758(v7);
  return v5;
}

uint64_t sub_1004FD6E4(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v8[3] = v3;
  v8[4] = v4;
  v6 = sub_1000317B8(v8);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  (*(v4 + 512))(a1, v3, v4);
  return sub_100004758(v8);
}

uint64_t sub_1004FD7AC(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v8[3] = v3;
  v8[4] = v4;
  v6 = sub_1000317B8(v8);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  (*(v4 + 520))(a1, v3, v4);
  return sub_100004758(v8);
}

uint64_t sub_1004FD86C()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 88);
  v3 = sub_10000C36C((*v0 + 48), v1);
  v7[3] = v1;
  v7[4] = v2;
  v4 = sub_1000317B8(v7);
  (*(*(v1 - 8) + 16))(v4, v3, v1);
  v5 = (*(v2 + 528))(v1, v2);
  sub_100004758(v7);
  return v5;
}

uint64_t sub_1004FD924(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v8[3] = v3;
  v8[4] = v4;
  v6 = sub_1000317B8(v8);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  LOBYTE(a1) = (*(v4 + 536))(a1, v3, v4);
  sub_100004758(v8);
  return a1 & 1;
}

uint64_t sub_1004FD9EC(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v8[3] = v3;
  v8[4] = v4;
  v6 = sub_1000317B8(v8);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  (*(v4 + 544))(a1, v3, v4);
  return sub_100004758(v8);
}

uint64_t sub_1004FDAB4(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v9[3] = v3;
  v9[4] = v4;
  v6 = sub_1000317B8(v9);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  v7 = (*(v4 + 552))(a1, v3, v4);
  sub_100004758(v9);
  return v7;
}

uint64_t sub_1004FDB7C(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v8[3] = v3;
  v8[4] = v4;
  v6 = sub_1000317B8(v8);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  LOBYTE(a1) = (*(v4 + 560))(a1, v3, v4);
  sub_100004758(v8);
  return a1 & 1;
}

uint64_t sub_1004FDC44(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v8[3] = v3;
  v8[4] = v4;
  v6 = sub_1000317B8(v8);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  LOBYTE(a1) = (*(v4 + 568))(a1, v3, v4);
  sub_100004758(v8);
  return a1 & 1;
}

uint64_t sub_1004FDD0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 72);
  v8 = *(*v3 + 88);
  v9 = sub_10000C36C((*v3 + 48), v7);
  v12[3] = v7;
  v12[4] = v8;
  v10 = sub_1000317B8(v12);
  (*(*(v7 - 8) + 16))(v10, v9, v7);
  LOBYTE(a3) = (*(v8 + 576))(a1, a2, a3, v7, v8);
  sub_100004758(v12);
  return a3 & 1;
}

uint64_t sub_1004FDDEC(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 88);
  v7 = sub_10000C36C((*v2 + 48), v5);
  v10[3] = v5;
  v10[4] = v6;
  v8 = sub_1000317B8(v10);
  (*(*(v5 - 8) + 16))(v8, v7, v5);
  LOBYTE(a2) = (*(v6 + 592))(a1, a2, v5, v6);
  sub_100004758(v10);
  return a2 & 1;
}

uint64_t sub_1004FDEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(*v5 + 72);
  v12 = *(*v5 + 88);
  v13 = sub_10000C36C((*v5 + 48), v11);
  v16[3] = v11;
  v16[4] = v12;
  v14 = sub_1000317B8(v16);
  (*(*(v11 - 8) + 16))(v14, v13, v11);
  (*(v12 + 600))(a1, a2, a3, a4, a5, v11, v12);
  return sub_100004758(v16);
}

uint64_t sub_1004FDFAC(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 88);
  v7 = sub_10000C36C((*v2 + 48), v5);
  v10[3] = v5;
  v10[4] = v6;
  v8 = sub_1000317B8(v10);
  (*(*(v5 - 8) + 16))(v8, v7, v5);
  LOBYTE(a2) = (*(v6 + 608))(a1, a2, v5, v6);
  sub_100004758(v10);
  return a2 & 1;
}

uint64_t sub_1004FE07C(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v8[3] = v3;
  v8[4] = v4;
  v6 = sub_1000317B8(v8);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  (*(v4 + 616))(a1, v3, v4);
  return sub_100004758(v8);
}

uint64_t sub_1004FE144(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v8[3] = v3;
  v8[4] = v4;
  v6 = sub_1000317B8(v8);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  LOBYTE(a1) = (*(v4 + 624))(a1, v3, v4);
  sub_100004758(v8);
  return a1 & 1;
}

uint64_t sub_1004FE20C(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v8[3] = v3;
  v8[4] = v4;
  v6 = sub_1000317B8(v8);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  LOBYTE(a1) = (*(v4 + 632))(a1, v3, v4);
  sub_100004758(v8);
  return a1 & 1;
}

uint64_t sub_1004FE2D4(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v8[3] = v3;
  v8[4] = v4;
  v6 = sub_1000317B8(v8);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  LOBYTE(a1) = (*(v4 + 640))(a1, v3, v4);
  sub_100004758(v8);
  return a1 & 1;
}

uint64_t sub_1004FE39C(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v8[3] = v3;
  v8[4] = v4;
  v6 = sub_1000317B8(v8);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  (*(v4 + 648))(a1, v3, v4);
  return sub_100004758(v8);
}

uint64_t sub_1004FE45C(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v8[3] = v3;
  v8[4] = v4;
  v6 = sub_1000317B8(v8);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  (*(v4 + 656))(a1, v3, v4);
  return sub_100004758(v8);
}

uint64_t sub_1004FE51C(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v8[3] = v3;
  v8[4] = v4;
  v6 = sub_1000317B8(v8);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  (*(v4 + 664))(a1, v3, v4);
  return sub_100004758(v8);
}

uint64_t sub_1004FE5DC(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v8[3] = v3;
  v8[4] = v4;
  v6 = sub_1000317B8(v8);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  LOBYTE(a1) = (*(v4 + 672))(a1, v3, v4);
  sub_100004758(v8);
  return a1 & 1;
}

uint64_t sub_1004FE6A4()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 88);
  v3 = sub_10000C36C((*v0 + 48), v1);
  v6[3] = v1;
  v6[4] = v2;
  v4 = sub_1000317B8(v6);
  (*(*(v1 - 8) + 16))(v4, v3, v1);
  LOBYTE(v1) = (*(v2 + 680))(v1, v2);
  sub_100004758(v6);
  return v1 & 1;
}

uint64_t sub_1004FE75C(uint64_t a1)
{
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 88);
  v5 = sub_10000C36C((*v1 + 48), v3);
  v9[3] = v3;
  v9[4] = v4;
  v6 = sub_1000317B8(v9);
  (*(*(v3 - 8) + 16))(v6, v5, v3);
  v7 = (*(v4 + 688))(a1, v3, v4);
  sub_100004758(v9);
  return v7;
}

uint64_t sub_1004FE82C(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 88);
  v7 = sub_10000C36C((*v2 + 48), v5);
  v10[3] = v5;
  v10[4] = v6;
  v8 = sub_1000317B8(v10);
  (*(*(v5 - 8) + 16))(v8, v7, v5);
  LOBYTE(a2) = (*(v6 + 696))(a1, a2, v5, v6);
  sub_100004758(v10);
  return a2 & 1;
}