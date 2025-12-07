void sub_1007C8D4C(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&unk_10119F3A0, &qword_100EC7CD0);
  __chkstk_darwin();
  v4 = &v17 - v3;
  _s10TVEpisodesV5ScopeOMa(0);
  __chkstk_darwin();
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = type metadata accessor for TVShow();
    (*(*(v9 - 8) + 16))(v6, a2, v9);
    swift_storeEnumTagMultiPayload();
    v10 = v8;
    v11 = [v10 traitCollection];
    sub_100217F14();
    UITraitCollection.subscript.getter();

    LOBYTE(v8) = sub_10049CB78();

    v12 = objc_allocWithZone(type metadata accessor for LibraryTVEpisodesViewController(0));
    v13 = sub_10061A47C(v6, v8 & 1);
    v14 = [v10 navigationController];
    if (v14)
    {
      v15 = v14;
      UIViewController.traitOverrides.getter();

      v16 = type metadata accessor for UITraitOverrides();
      (*(*(v16 - 8) + 56))(v4, 0, 1, v16);
      UINavigationController.push(_:traitOverrides:animated:)(v13, v4, 1);

      sub_1000095E8(v4, &unk_10119F3A0, &qword_100EC7CD0);
    }

    else
    {
    }
  }
}

id sub_1007C9058(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = sub_10023D4E4(v9, 0, 1);

  (*(v7 + 8))(v9, v6);

  return v11;
}

uint64_t sub_1007C91D4()
{
  sub_10010FC20(&unk_1011A3860, &qword_100EC8DE8);
  __chkstk_darwin();
  v2 = &v22 - v1;
  v3 = sub_10010FC20(&unk_10118D0D0, &qword_100EC8DF0);
  v23 = *(v3 - 8);
  __chkstk_darwin();
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v22 - v6;
  sub_10010FC20(&qword_1011A3870, &qword_100EE3968);
  __chkstk_darwin();
  v9 = &v22 - v8;
  v10 = sub_10010FC20(&qword_1011A3878, &unk_100EE3970);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v22 - v14;
  if (*(v0 + OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_context))
  {
    RequestResponse.Controller.revision.getter();
    RequestResponse.Revision.content.getter(v2);

    v16 = sub_10010FC20(&qword_1011A3880, &unk_100EC8DF8);
    if ((*(*(v16 - 8) + 48))(v2, 1, v16) == 1)
    {
      sub_1000095E8(v2, &unk_1011A3860, &qword_100EC8DE8);
    }

    else
    {
      v18 = v23;
      (*(v23 + 16))(v5, v2, v3);
      sub_1000095E8(v2, &qword_1011A3880, &unk_100EC8DF8);
      (*(v18 + 32))(v7, v5, v3);
      if (MusicLibrarySectionedResponse.isEmpty.getter(v3))
      {
        *(&v25 + 1) = type metadata accessor for UIContentUnavailableConfiguration();
        v26 = &protocol witness table for UIContentUnavailableConfiguration;
        v19 = sub_10001C8B8(&v24);
        sub_1007DDEE4(v19);
        UIViewController.contentUnavailableConfiguration.setter();
        return (*(v18 + 8))(v7, v3);
      }

      (*(v18 + 8))(v7, v3);
    }

    v26 = 0;
    v24 = 0u;
    v25 = 0u;
  }

  else
  {
    RequestResponse.Controller.revision.getter();
    RequestResponse.Revision.content.getter(v9);

    v17 = sub_10010FC20(&qword_1011A3888, &unk_100EE3980);
    if ((*(*(v17 - 8) + 48))(v9, 1, v17) == 1)
    {
      sub_1000095E8(v9, &qword_1011A3870, &qword_100EE3968);
    }

    else
    {
      (*(v11 + 16))(v13, v9, v10);
      sub_1000095E8(v9, &qword_1011A3888, &unk_100EE3980);
      (*(v11 + 32))(v15, v13, v10);
      if (MusicLibrarySectionedResponse.isEmpty.getter(v10))
      {
        *(&v25 + 1) = type metadata accessor for UIContentUnavailableConfiguration();
        v26 = &protocol witness table for UIContentUnavailableConfiguration;
        v21 = sub_10001C8B8(&v24);
        sub_1007DDE8C(v21);
        UIViewController.contentUnavailableConfiguration.setter();
        return (*(v11 + 8))(v15, v10);
      }

      (*(v11 + 8))(v15, v10);
    }

    v26 = 0;
    v24 = 0u;
    v25 = 0u;
  }

  return UIViewController.contentUnavailableConfiguration.setter();
}

void sub_1007C9818()
{
  v1 = (*(v0 + OBJC_IVAR____TtCC5Music34LibraryTVShowsMoviesViewControllerP33_93C7FD7BE2577186821DBE5ED4FA54AB20SegmentedControlCell_currentSelection) & ~(*(v0 + OBJC_IVAR____TtCC5Music34LibraryTVShowsMoviesViewControllerP33_93C7FD7BE2577186821DBE5ED4FA54AB20SegmentedControlCell_currentSelection) ^ 1) & 1);
  v2 = sub_1007C9AC8();
  v3 = [v2 selectedSegmentIndex];

  if (v3 != v1)
  {
    v4 = *(v0 + OBJC_IVAR____TtCC5Music34LibraryTVShowsMoviesViewControllerP33_93C7FD7BE2577186821DBE5ED4FA54AB20SegmentedControlCell____lazy_storage___segmentedControl);

    [v4 setSelectedSegmentIndex:v1];
  }
}

id sub_1007C98C4(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v4[OBJC_IVAR____TtCC5Music34LibraryTVShowsMoviesViewControllerP33_93C7FD7BE2577186821DBE5ED4FA54AB20SegmentedControlCell_currentSelection] = 0;
  v10 = &v4[OBJC_IVAR____TtCC5Music34LibraryTVShowsMoviesViewControllerP33_93C7FD7BE2577186821DBE5ED4FA54AB20SegmentedControlCell_selectionDidChange];
  *v10 = 0;
  v10[1] = 0;
  *&v4[OBJC_IVAR____TtCC5Music34LibraryTVShowsMoviesViewControllerP33_93C7FD7BE2577186821DBE5ED4FA54AB20SegmentedControlCell____lazy_storage___segmentedControl] = 0;
  v21.receiver = v4;
  v21.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  sub_1007C9818();
  v12 = v11;
  v13 = [v12 contentView];
  v14 = [v12 traitCollection];
  v15 = [v14 horizontalSizeClass];

  v16 = 0.0;
  if (v15 == 2)
  {
    v16 = 9.0;
  }

  [v13 setLayoutMargins:{v16, 0.0, 24.0, 0.0}];

  v17 = [v12 contentView];
  v18 = sub_1007C9AC8();
  UIView.addSubviewAnchoredToBounds(_:useLayoutMarginsGuide:padding:)(v18, 1);

  sub_10010FC20(&unk_101182D80, "ʫ\n");
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100EBC6B0;
  *(v19 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
  *(v19 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v12;
}

id sub_1007C9AC8()
{
  v1 = v0;
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v2 = OBJC_IVAR____TtCC5Music34LibraryTVShowsMoviesViewControllerP33_93C7FD7BE2577186821DBE5ED4FA54AB20SegmentedControlCell____lazy_storage___segmentedControl;
  v3 = *(v0 + OBJC_IVAR____TtCC5Music34LibraryTVShowsMoviesViewControllerP33_93C7FD7BE2577186821DBE5ED4FA54AB20SegmentedControlCell____lazy_storage___segmentedControl);
  if (v3)
  {

    return v3;
  }

  else
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    sub_100009F78(0, &qword_1011839A0, UIAction_ptr);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = 0;
    UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = 1;
    UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v9 = objc_allocWithZone(UISegmentedControl);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v11 = [v9 initWithFrame:isa actions:{0.0, 0.0, 0.0, 0.0}];

    v12 = *(v1 + v2);
    *(v1 + v2) = v11;
    v13 = v11;

    return v13;
  }
}

void sub_1007C9EFC(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = OBJC_IVAR____TtCC5Music34LibraryTVShowsMoviesViewControllerP33_93C7FD7BE2577186821DBE5ED4FA54AB20SegmentedControlCell_currentSelection;
    v7 = *(Strong + OBJC_IVAR____TtCC5Music34LibraryTVShowsMoviesViewControllerP33_93C7FD7BE2577186821DBE5ED4FA54AB20SegmentedControlCell_currentSelection);
    *(Strong + OBJC_IVAR____TtCC5Music34LibraryTVShowsMoviesViewControllerP33_93C7FD7BE2577186821DBE5ED4FA54AB20SegmentedControlCell_currentSelection) = a3 & 1;
    if (v7 == (a3 & 1) || (sub_1007C9818(), (v8 = *&v5[OBJC_IVAR____TtCC5Music34LibraryTVShowsMoviesViewControllerP33_93C7FD7BE2577186821DBE5ED4FA54AB20SegmentedControlCell_selectionDidChange]) == 0))
    {
    }

    else
    {
      v9 = *&v5[OBJC_IVAR____TtCC5Music34LibraryTVShowsMoviesViewControllerP33_93C7FD7BE2577186821DBE5ED4FA54AB20SegmentedControlCell_selectionDidChange + 8];
      v10 = v5[v6];

      v8(v10);

      sub_100020438(v8, v9);
    }
  }
}

void sub_1007CA228(uint64_t a1)
{
  sub_10003920C(319, &qword_1011A37C0, &qword_1011A37C8, &unk_100EE3808);
  if (v1 <= 0x3F)
  {
    sub_10003920C(319, &unk_101184560, &unk_10118A650, &qword_100EC02B0);
    if (v2 <= 0x3F)
    {
      sub_10003920C(319, &qword_1011A37D0, &qword_1011A37D8, &qword_100EE3818);
      if (v3 <= 0x3F)
      {
        sub_10003920C(319, &qword_1011A37E0, &unk_1011A37E8, &qword_100EE3820);
        if (v4 <= 0x3F)
        {
          sub_1002114E8(319);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

unint64_t sub_1007CA4B8()
{
  result = qword_1011A3848;
  if (!qword_1011A3848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A3848);
  }

  return result;
}

uint64_t sub_1007CA50C()
{
  v1 = v0;
  sub_10010FC20(&unk_1011845C0, &unk_100EC0310);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100EBC6B0;
  v3 = sub_10031EA10(xmmword_100EBC6B0);
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *&v18[0] = v4;
  *(&v18[0] + 1) = v6;
  v7._countAndFlagsBits = 0x74726F532ELL;
  v7._object = 0xE500000000000000;
  String.append(_:)(v7);
  v8 = String._bridgeToObjectiveC()();

  if (*(v1 + OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_context) == 1)
  {
    v9 = *(*(v1 + OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_moviesResponseController) + 48);
    swift_beginAccess();
    v10 = v9[4];
    v18[2] = v9[3];
    v18[3] = v10;
    v11 = v9[6];
    v18[4] = v9[5];
    v18[5] = v11;
    v12 = v9[2];
    v18[0] = v9[1];
    v18[1] = v12;
    v13 = swift_allocObject();
    swift_weakInit();

    sub_1001103E0(v18, v17);
    v14.super.super.isa = sub_100211E88(sub_1007CAAA0, v13).super.super.isa;

    sub_100110418(v18);

    if (v14.super.super.isa)
    {
      v15 = [(objc_class *)v14.super.super.isa children];

      sub_100009F78(0, &qword_10118CDE0, UIMenuElement_ptr);
      v14.super.super.isa = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {

      v8 = 0;
    }
  }

  else
  {

    v8 = 0;
    v14.super.super.isa = 0;
  }

  *(v2 + 32) = v8;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = v14;
  return v2;
}

void sub_1007CA720(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC5Music19ApplicationMainMenu_submenuProviders;
  swift_beginAccess();
  v7 = *(a2 + v6);
  v10 = *(v7 + 16);
  v8 = v7 + 16;
  v9 = v10;
  if (!v10 || *(v8 + 16 * v9) != a1)
  {
    if (qword_10117F580 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000060E4(v11, qword_101218A28);
    v12 = a1;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v30 = a3;
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v31[0] = v16;
      *v15 = 136446210;
      v29 = v12;
      v17 = v12;
      v18 = [v17 description];
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v22 = sub_1000105AC(v19, v21, v31);

      *(v15 + 4) = v22;
      v12 = v29;
      _os_log_impl(&_mh_execute_header, v13, v14, "Become active submenuProvider=%{public}s", v15, 0xCu);
      sub_10000959C(v16);

      a3 = v30;
    }

    swift_beginAccess();
    v23 = *(a2 + v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + v6) = v23;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v23 = sub_100499B18(0, v23[2] + 1, 1, v23);
      *(a2 + v6) = v23;
    }

    v26 = v23[2];
    v25 = v23[3];
    if (v26 >= v25 >> 1)
    {
      v23 = sub_100499B18((v25 > 1), v26 + 1, 1, v23);
    }

    v23[2] = v26 + 1;
    v27 = &v23[2 * v26];
    v27[4] = v12;
    v27[5] = a3;
    *(a2 + v6) = v23;
    swift_endAccess();
    v28 = v12;
    sub_100059768();
  }
}

void sub_1007CA9F0(void *a1)
{
  v5 = [a1 contentView];
  v2 = [a1 traitCollection];
  v3 = [v2 horizontalSizeClass];

  v4 = 0.0;
  if (v3 == 2)
  {
    v4 = 9.0;
  }

  [v5 setLayoutMargins:{v4, 0.0, 24.0, 0.0}];
}

uint64_t sub_1007CAAAC(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_tvShowsResponseController];
  v3 = [a1 traitCollection];
  sub_100217F14();
  UITraitCollection.subscript.getter();

  v4 = sub_10049CB78();

  v5 = *(v2 + 48);
  swift_beginAccess();
  v6 = *(v5 + 16);
  v7 = *(v5 + 32);
  v8 = *(v5 + 48);
  v9 = *(v5 + 64);
  v10 = *(v5 + 96);
  v42[4] = *(v5 + 80);
  v42[5] = v10;
  v43 = *(v5 + 112);
  v42[2] = v8;
  v42[3] = v9;
  v42[0] = v6;
  v42[1] = v7;
  v35 = *(v5 + 16);
  v36 = v4 & 1;
  v11 = *(v5 + 33);
  v38 = *(v5 + 49);
  v37 = v11;
  v12 = *(v5 + 65);
  v13 = *(v5 + 81);
  v14 = *(v5 + 97);
  *&v41[15] = *(v5 + 112);
  *v41 = v14;
  v40 = v13;
  v39 = v12;
  sub_1003BF8F0(v42, v28);
  sub_10037993C(&v35);
  v15 = *&a1[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_moviesResponseController];
  v16 = [a1 traitCollection];
  UITraitCollection.subscript.getter();

  LOBYTE(v16) = sub_10049CB78();

  v17 = *(v15 + 48);
  swift_beginAccess();
  v18 = v17[1];
  v19 = v17[2];
  v20 = v17[3];
  v21 = v17[4];
  v22 = v17[6];
  v28[4] = v17[5];
  v28[5] = v22;
  v28[2] = v20;
  v28[3] = v21;
  v28[1] = v19;
  v28[0] = v18;
  v29 = v17[1];
  v30 = v16 & 1;
  v31 = *(v17 + 33);
  v23 = *(v17 + 49);
  v24 = *(v17 + 65);
  v25 = *(v17 + 81);
  *&v34[15] = v22;
  *v34 = v25;
  v33 = v24;
  v32 = v23;
  sub_1001103E0(v28, v27);
  return sub_100379614(&v29);
}

uint64_t sub_1007CACC4(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_tvShowsResponseController];
  v3 = [a1 traitCollection];
  sub_100137E8C();
  UITraitCollection.subscript.getter();

  v4 = *&v60[0];
  v5 = *(v2 + 48);
  swift_beginAccess();
  v6 = *(v5 + 32);
  v60[0] = *(v5 + 16);
  v7 = *(v5 + 64);
  v60[2] = *(v5 + 48);
  v8 = *(v5 + 80);
  v9 = *(v5 + 96);
  v61 = *(v5 + 112);
  v60[4] = v8;
  v60[5] = v9;
  v60[3] = v7;
  v60[1] = v6;
  v10 = *&v60[0];
  v11 = *(v5 + 32);
  v55 = *(v5 + 48);
  v54 = v11;
  v12 = *(v5 + 64);
  v13 = *(v5 + 80);
  v14 = *(v5 + 96);
  v59 = *(v5 + 112);
  v58 = v14;
  v57 = v13;
  v56 = v12;
  sub_1003BF8F0(v60, v35);

  v53[0] = v10;
  v53[1] = v4;
  sub_10037993C(v53);
  v15 = *&a1[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_moviesResponseController];
  v16 = [a1 traitCollection];
  UITraitCollection.subscript.getter();

  v17 = *&v35[0];
  v18 = *(v15 + 48);
  swift_beginAccess();
  v19 = *(v18 + 64);
  v36 = *(v18 + 48);
  v35[0] = *(v18 + 16);
  v20 = *(v18 + 96);
  v38 = *(v18 + 80);
  v39 = v20;
  v37 = v19;
  v35[1] = *(v18 + 32);
  v21 = BYTE9(v36);
  v22 = *&v35[0];
  v23 = BYTE8(v36);
  v34 = *(v18 + 48);
  v33 = *(v18 + 32);
  LOBYTE(v4) = BYTE9(v36);
  *&v32[14] = *(v18 + 104);
  v31 = *(v18 + 74);
  *v32 = *(v18 + 90);
  v30 = *(v18 + 58);
  sub_1001103E0(v35, v46);

  v47 = v33;
  v51[0] = v30;
  v46[0] = v22;
  v46[1] = v17;
  v48 = v34;
  v49 = v23;
  v50 = v4;
  v51[1] = v31;
  *v52 = *v32;
  if (v21)
  {
    v24 = 256;
  }

  else
  {
    v24 = 0;
  }

  *&v52[14] = *&v32[14];
  sub_1003754F0(v24 | v23);
  if ((v25 & 0xFF00) == 0x200)
  {
    v26 = 4;
  }

  else
  {
    v26 = v25;
  }

  if ((v25 & 0xFF00) == 0x200)
  {
    v27 = 1;
  }

  else
  {
    v27 = (v25 >> 8) & 1;
  }

  if (sub_1006B8B0C(v26, v23) & 1) == 0 || ((v21 ^ v27))
  {
    v28 = [objc_opt_self() standardUserDefaults];
    *(&v41 + 1) = &_s11ContentSortVN;
    v42 = sub_100110448();
    *v43 = sub_10011049C();
    LOBYTE(v40) = v26;
    BYTE1(v40) = v27;
    NSUserDefaults.encodeValue(_:forKey:)(&v40);

    sub_10000959C(&v40);
  }

  v41 = v33;
  *&v43[2] = v30;
  *&v40 = v22;
  *(&v40 + 1) = v17;
  v42 = v34;
  v43[0] = v26;
  v43[1] = v27;
  v44 = v31;
  *v45 = *v32;
  *&v45[14] = *&v32[14];
  return sub_100379614(&v40);
}

uint64_t sub_1007CB020()
{
  sub_10010FC20(&unk_1011A3860, &qword_100EC8DE8);
  __chkstk_darwin();
  v2 = &v25 - v1;
  v3 = sub_10010FC20(&unk_10118D0D0, &qword_100EC8DF0);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v25 - v5;
  sub_10010FC20(&qword_1011A3870, &qword_100EE3968);
  __chkstk_darwin();
  v8 = &v25 - v7;
  v9 = sub_10010FC20(&qword_1011A3878, &unk_100EE3970);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v25 - v11;
  if (*(v0 + OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_context))
  {
    RequestResponse.Controller.revision.getter();
    RequestResponse.Revision.content.getter(v2);

    v13 = sub_10010FC20(&qword_1011A3880, &unk_100EC8DF8);
    if ((*(*(v13 - 8) + 48))(v2, 1, v13) != 1)
    {
      (*(v4 + 16))(v6, v2, v3);
      sub_1000095E8(v2, &qword_1011A3880, &unk_100EC8DF8);
      v19 = *(MusicLibrarySectionedResponse.sections.getter() + 16);

      if (v19)
      {
        v20 = MusicLibrarySectionedResponse.sections.getter();
        (*(v4 + 8))(v6, v3);
        v21 = *(v20 + 16);

        return v21;
      }

      (*(v4 + 8))(v6, v3);
      return 1;
    }

    v14 = &unk_1011A3860;
    v15 = &qword_100EC8DE8;
    v16 = v2;
    goto LABEL_6;
  }

  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v8);

  v17 = sub_10010FC20(&qword_1011A3888, &unk_100EE3980);
  if ((*(*(v17 - 8) + 48))(v8, 1, v17) == 1)
  {
    v14 = &qword_1011A3870;
    v15 = &qword_100EE3968;
    v16 = v8;
LABEL_6:
    sub_1000095E8(v16, v14, v15);
    return 1;
  }

  (*(v10 + 16))(v12, v8, v9);
  sub_1000095E8(v8, &qword_1011A3888, &unk_100EE3980);
  v22 = *(MusicLibrarySectionedResponse.sections.getter() + 16);

  if (v22)
  {
    v23 = MusicLibrarySectionedResponse.sections.getter();
    (*(v10 + 8))(v12, v9);
    v24 = *(v23 + 16);

    return v24;
  }

  (*(v10 + 8))(v12, v9);
  return 1;
}

uint64_t sub_1007CB47C(unint64_t a1)
{
  v53 = a1;
  v2 = sub_10010FC20(&qword_10118D0B0, &qword_100EBD730);
  v50 = *(v2 - 8);
  v51 = v2;
  __chkstk_darwin();
  v49 = &v42 - v3;
  v4 = sub_10010FC20(&unk_10118D0C0, &qword_100EC8DE0);
  v47 = *(v4 - 8);
  v48 = v4;
  __chkstk_darwin();
  v46 = &v42 - v5;
  sub_10010FC20(&unk_1011A3860, &qword_100EC8DE8);
  __chkstk_darwin();
  v7 = &v42 - v6;
  v8 = sub_10010FC20(&unk_10118D0D0, &qword_100EC8DF0);
  v52 = *(v8 - 8);
  __chkstk_darwin();
  v10 = &v42 - v9;
  v11 = sub_10010FC20(&qword_1011A3890, &qword_100EBD630);
  v44 = *(v11 - 8);
  v45 = v11;
  __chkstk_darwin();
  v43 = &v42 - v12;
  v13 = sub_10010FC20(&qword_1011A3898, &qword_100EE3990);
  v42 = *(v13 - 8);
  __chkstk_darwin();
  v15 = &v42 - v14;
  sub_10010FC20(&qword_1011A3870, &qword_100EE3968);
  __chkstk_darwin();
  v17 = &v42 - v16;
  v18 = sub_10010FC20(&qword_1011A3878, &unk_100EE3970);
  v19 = *(v18 - 8);
  __chkstk_darwin();
  v21 = &v42 - v20;
  if ((*(v1 + OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_context) & 1) == 0)
  {
    RequestResponse.Controller.revision.getter();
    RequestResponse.Revision.content.getter(v17);

    v26 = sub_10010FC20(&qword_1011A3888, &unk_100EE3980);
    if ((*(*(v26 - 8) + 48))(v17, 1, v26) == 1)
    {
      v23 = &qword_1011A3870;
      v24 = &qword_100EE3968;
      v25 = v17;
      goto LABEL_6;
    }

    (*(v19 + 16))(v21, v17, v18);
    sub_1000095E8(v17, &qword_1011A3888, &unk_100EE3980);
    v37 = *(MusicLibrarySectionedResponse.sections.getter() + 16);

    if (!v37)
    {
      (*(v19 + 8))(v21, v18);
      return 0;
    }

    v38 = MusicLibrarySectionedResponse.sections.getter();
    result = (*(v19 + 8))(v21, v18);
    if ((v53 & 0x8000000000000000) == 0)
    {
      if (*(v38 + 16) > v53)
      {
        v39 = v42;
        (*(v42 + 16))(v15, v38 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v53, v13);

        v40 = v43;
        MusicLibrarySection.items.getter();
        (*(v39 + 8))(v15, v13);
        sub_100020674(&unk_10118C290, &qword_1011A3890, &qword_100EBD630, &protocol conformance descriptor for MusicItemCollection<A>);
        v41 = v45;
        dispatch thunk of Collection.startIndex.getter();
        dispatch thunk of Collection.endIndex.getter();
        v36 = dispatch thunk of Collection.distance(from:to:)();
        (*(v44 + 8))(v40, v41);
        return v36;
      }

LABEL_23:
      __break(1u);
      return result;
    }

    goto LABEL_21;
  }

  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v7);

  v22 = sub_10010FC20(&qword_1011A3880, &unk_100EC8DF8);
  if ((*(*(v22 - 8) + 48))(v7, 1, v22) == 1)
  {
    v23 = &unk_1011A3860;
    v24 = &qword_100EC8DE8;
    v25 = v7;
LABEL_6:
    sub_1000095E8(v25, v23, v24);
    return 0;
  }

  v28 = v52;
  (*(v52 + 16))(v10, v7, v8);
  sub_1000095E8(v7, &qword_1011A3880, &unk_100EC8DF8);
  v29 = *(MusicLibrarySectionedResponse.sections.getter() + 16);

  if (!v29)
  {
    (*(v28 + 8))(v10, v8);
    return 0;
  }

  v30 = MusicLibrarySectionedResponse.sections.getter();
  result = (*(v28 + 8))(v10, v8);
  if ((v53 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (*(v30 + 16) <= v53)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v32 = v46;
  v31 = v47;
  v33 = v48;
  (*(v47 + 16))(v46, v30 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v53, v48);

  v34 = v49;
  MusicLibrarySection.items.getter();
  (*(v31 + 8))(v32, v33);
  sub_100020674(&unk_10118C250, &qword_10118D0B0, &qword_100EBD730, &protocol conformance descriptor for MusicItemCollection<A>);
  v35 = v51;
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v36 = dispatch thunk of Collection.distance(from:to:)();
  (*(v50 + 8))(v34, v35);
  return v36;
}

unint64_t sub_1007CBCEC(uint64_t a1)
{
  v106 = sub_10010FC20(&qword_10118D0B0, &qword_100EBD730);
  v104 = *(v106 - 8);
  __chkstk_darwin();
  v103 = v87 - v2;
  v3 = sub_10010FC20(&unk_10118D0C0, &qword_100EC8DE0);
  v100 = *(v3 - 8);
  v101 = v3;
  __chkstk_darwin();
  v99 = v87 - v4;
  sub_10010FC20(&unk_1011A3860, &qword_100EC8DE8);
  __chkstk_darwin();
  v6 = v87 - v5;
  v7 = sub_10010FC20(&unk_10118D0D0, &qword_100EC8DF0);
  isa = *(v7 - 8);
  v110 = v7;
  __chkstk_darwin();
  v9 = v87 - v8;
  v107 = type metadata accessor for MusicMovie();
  v105 = *(v107 - 8);
  __chkstk_darwin();
  v98 = v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v102 = v87 - v11;
  v12 = sub_10010FC20(&qword_1011A3890, &qword_100EBD630);
  v96 = *(v12 - 8);
  v97 = v12;
  __chkstk_darwin();
  v95 = v87 - v13;
  v94 = sub_10010FC20(&qword_1011A3898, &qword_100EE3990);
  v92 = *(v94 - 8);
  __chkstk_darwin();
  v15 = v87 - v14;
  sub_10010FC20(&qword_1011A3870, &qword_100EE3968);
  __chkstk_darwin();
  v17 = v87 - v16;
  v18 = sub_10010FC20(&qword_1011A3878, &unk_100EE3970);
  v108 = *(v18 - 8);
  __chkstk_darwin();
  v20 = v87 - v19;
  v93 = type metadata accessor for TVShow();
  v91 = *(v93 - 8);
  __chkstk_darwin();
  v22 = v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v24 = v87 - v23;
  v111 = *(sub_10010FC20(&unk_10118CDB0, &unk_100EC0360) - 8);
  __chkstk_darwin();
  v112 = v25;
  v113 = v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v115 = v87 - v26;
  type metadata accessor for IndexPath();
  __chkstk_darwin();
  v32 = __chkstk_darwin();
  if (!*(a1 + 16))
  {
    return 0;
  }

  v89 = v27;
  v90 = v31;
  v114 = v30;
  v34 = *(v30 + 16);
  v33 = v30 + 16;
  v35 = *(v33 + 64);
  v87[1] = v33;
  v88 = v35;
  v116 = v29;
  v117 = v87 - v28;
  v87[0] = v34;
  v34(v32);
  if (v118[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_context])
  {
    v36 = *&v118[OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_moviesResponseController];
    RequestResponse.Controller.revision.getter();
    RequestResponse.Revision.content.getter(v6);

    v37 = sub_10010FC20(&qword_1011A3880, &unk_100EC8DF8);
    if ((*(*(v37 - 8) + 48))(v6, 1, v37) == 1)
    {
      sub_1000095E8(v6, &unk_1011A3860, &qword_100EC8DE8);
LABEL_18:
      (*(v114 + 8))(v117, v116);
      return 0;
    }

    v40 = isa;
    v39 = v110;
    (*(isa + 2))(v9, v6, v110);
    sub_1000095E8(v6, &qword_1011A3880, &unk_100EC8DF8);
    v41 = *(MusicLibrarySectionedResponse.sections.getter() + 16);

    if (!v41)
    {
      (*(v40 + 1))(v9, v39);
      goto LABEL_18;
    }

    v42 = MusicLibrarySectionedResponse.sections.getter();
    (*(v40 + 1))(v9, v39);
    result = IndexPath.section.getter();
    if ((result & 0x8000000000000000) == 0)
    {
      if (result < *(v42 + 16))
      {
        v44 = v99;
        v45 = v100;
        v46 = v101;
        (*(v100 + 16))(v99, v42 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * result, v101);

        v47 = v103;
        MusicLibrarySection.items.getter();
        (*(v45 + 8))(v44, v46);
        v48 = v117;
        IndexPath.item.getter();
        v49 = v98;
        v50 = v106;
        MusicItemCollection.subscript.getter();
        (*(v104 + 8))(v47, v50);
        v51 = v105;
        v52 = v102;
        v53 = v107;
        (*(v105 + 32))(v102, v49, v107);
        v127 = v53;
        v128 = sub_1007CDB28(&unk_10118AB60, &type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
        v54 = sub_10001C8B8(v126);
        (*(v51 + 16))(v54, v52, v53);
        v55 = sub_100246AB0();
        v56 = *(v36 + 48);
        swift_beginAccess();
        v57 = v56[4];
        v129[2] = v56[3];
        v129[3] = v57;
        v58 = v56[6];
        v129[4] = v56[5];
        v129[5] = v58;
        v59 = v56[2];
        v129[0] = v56[1];
        v129[1] = v59;
        v110 = v55;

        sub_1001103E0(v129, &v120);
        v60 = v115;
        sub_100108ED8(v115);
        sub_100110418(v129);
        (*(v51 + 8))(v52, v53);
LABEL_15:
        v73 = v88;
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v74 = swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_100008FE4(v126, v119);
        v75 = v113;
        sub_1000089F8(v60, v113, &unk_10118CDB0, &unk_100EC0360);
        v76 = v90;
        v77 = v48;
        v78 = v116;
        (v87[0])(v90, v77, v116);
        v79 = (*(v111 + 80) + 64) & ~*(v111 + 80);
        v80 = (v112 + v73 + v79) & ~v73;
        v81 = swift_allocObject();
        *(v81 + 16) = v74;
        sub_100059A8C(v119, v81 + 24);
        sub_10003D17C(v75, v81 + v79, &unk_10118CDB0, &unk_100EC0360);
        v82 = v114;
        (*(v114 + 32))(v81 + v80, v76, v78);
        v118 = objc_opt_self();
        v124 = sub_100218654;
        v125 = v110;
        v120 = _NSConcreteStackBlock;
        v121 = 1107296256;
        v122 = sub_100747E6C;
        v123 = &unk_1010C0080;
        v83 = _Block_copy(&v120);

        v124 = sub_1007CD804;
        v125 = v81;
        v120 = _NSConcreteStackBlock;
        v121 = 1107296256;
        v122 = sub_100747EBC;
        v123 = &unk_1010C00A8;
        v84 = _Block_copy(&v120);

        v85 = isa;
        v86 = [v118 configurationWithIdentifier:isa previewProvider:v83 actionProvider:v84];

        _Block_release(v84);
        _Block_release(v83);

        sub_1000095E8(v115, &unk_10118CDB0, &unk_100EC0360);
        (*(v82 + 8))(v117, v116);
        sub_10000959C(v126);

        return v86;
      }

      goto LABEL_22;
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v17);

  v38 = sub_10010FC20(&qword_1011A3888, &unk_100EE3980);
  if ((*(*(v38 - 8) + 48))(v17, 1, v38) == 1)
  {
    sub_1000095E8(v17, &qword_1011A3870, &qword_100EE3968);
    goto LABEL_18;
  }

  v61 = v108;
  (*(v108 + 16))(v20, v17, v18);
  sub_1000095E8(v17, &qword_1011A3888, &unk_100EE3980);
  v62 = *(MusicLibrarySectionedResponse.sections.getter() + 16);

  if (!v62)
  {
    (*(v61 + 8))(v20, v18);
    goto LABEL_18;
  }

  v63 = MusicLibrarySectionedResponse.sections.getter();
  (*(v61 + 8))(v20, v18);
  result = IndexPath.section.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_21;
  }

  if (result < *(v63 + 16))
  {
    v64 = v92;
    v65 = v94;
    (*(v92 + 16))(v15, v63 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * result, v94);

    v66 = v95;
    MusicLibrarySection.items.getter();
    (*(v64 + 8))(v15, v65);
    v48 = v117;
    IndexPath.item.getter();
    v67 = v97;
    MusicItemCollection.subscript.getter();
    (*(v96 + 8))(v66, v67);
    v68 = v91;
    v69 = v93;
    (*(v91 + 32))(v24, v22, v93);
    v127 = v69;
    v128 = sub_1007CDB28(&qword_101181A60, &type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);
    v70 = sub_10001C8B8(v126);
    (*(v68 + 16))(v70, v24, v69);
    v71 = sub_10024A3CC();
    (*(v68 + 8))(v24, v69);
    v72 = type metadata accessor for MusicPlaybackIntentDescriptor();
    v60 = v115;
    (*(*(v72 - 8) + 56))(v115, 1, 1, v72);
    v110 = v71;

    goto LABEL_15;
  }

LABEL_23:
  __break(1u);
  return result;
}

double sub_1007CCC78()
{
  v0 = [*(sub_1007BD9B0() + 32) searchBar];
  [v0 resignFirstResponder];

  RequestResponse.Controller.isPaused.setter(1);
  return RequestResponse.Controller.isPaused.setter(1);
}

unint64_t sub_1007CCD0C(void *a1, void *a2)
{
  v59 = a2;
  v4 = sub_10010FC20(&qword_1011A3890, &qword_100EBD630);
  v53 = *(v4 - 8);
  v54 = v4;
  __chkstk_darwin();
  v52 = v46 - v5;
  v6 = sub_10010FC20(&qword_1011A3898, &qword_100EE3990);
  v50 = *(v6 - 8);
  v51 = v6;
  __chkstk_darwin();
  v48 = v46 - v7;
  sub_10010FC20(&qword_1011A3870, &qword_100EE3968);
  __chkstk_darwin();
  v9 = v46 - v8;
  v10 = sub_10010FC20(&qword_1011A3878, &unk_100EE3970);
  v56 = *(v10 - 8);
  __chkstk_darwin();
  v12 = v46 - v11;
  v58 = type metadata accessor for TVShow();
  v55 = *(v58 - 8);
  v13 = *(v55 + 64);
  __chkstk_darwin();
  v49 = v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v47 = v46 - v14;
  __chkstk_darwin();
  v57 = v46 - v15;
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v17 = v46 - v16;
  v18 = type metadata accessor for IndexPath();
  v19 = *(v18 - 8);
  *&v20 = __chkstk_darwin().n128_u64[0];
  v22 = v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock[0] = [a1 identifier];
  sub_10010FC20(&unk_1011846A0, &unk_100EC8F60);
  v23 = swift_dynamicCast();
  v24 = *(v19 + 56);
  if ((v23 & 1) == 0)
  {
    v24(v17, 1, 1, v18);
    sub_1000095E8(v17, &unk_10118BCE0, &qword_100EC6450);
    return [v59 setPreferredCommitStyle:0];
  }

  v24(v17, 0, 1, v18);
  (*(v19 + 32))(v22, v17, v18);
  if (*(v2 + OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_context) == 1)
  {
LABEL_11:
    (*(v19 + 8))(v22, v18);
    return [v59 setPreferredCommitStyle:0];
  }

  v46[1] = v2;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v9);

  v25 = sub_10010FC20(&qword_1011A3888, &unk_100EE3980);
  if ((*(*(v25 - 8) + 48))(v9, 1, v25) == 1)
  {
    sub_1000095E8(v9, &qword_1011A3870, &qword_100EE3968);
    goto LABEL_11;
  }

  v26 = v56;
  (*(v56 + 16))(v12, v9, v10);
  sub_1000095E8(v9, &qword_1011A3888, &unk_100EE3980);
  v27 = *(MusicLibrarySectionedResponse.sections.getter() + 16);

  if (!v27)
  {
    (*(v26 + 8))(v12, v10);
    goto LABEL_11;
  }

  v28 = MusicLibrarySectionedResponse.sections.getter();
  (*(v26 + 8))(v12, v10);
  result = IndexPath.section.getter();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v28 + 16))
  {
    v31 = v50;
    v30 = v51;
    v32 = v48;
    (*(v50 + 16))(v48, v28 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * result, v51);

    v33 = v52;
    MusicLibrarySection.items.getter();
    (*(v31 + 8))(v32, v30);
    IndexPath.item.getter();
    v34 = v47;
    v35 = v54;
    MusicItemCollection.subscript.getter();
    (*(v53 + 8))(v33, v35);
    v36 = v55;
    v56 = *(v55 + 32);
    v37 = v57;
    v38 = v34;
    v39 = v58;
    (v56)(v57, v38, v58);
    v40 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v41 = v49;
    (*(v36 + 16))(v49, v37, v39);
    v42 = (*(v36 + 80) + 24) & ~*(v36 + 80);
    v43 = swift_allocObject();
    *(v43 + 16) = v40;
    v44 = v58;
    (v56)(v43 + v42, v41, v58);
    aBlock[4] = sub_1007CD7A0;
    aBlock[5] = v43;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10002BC98;
    aBlock[3] = &unk_1010C0030;
    v45 = _Block_copy(aBlock);

    [v59 addAnimations:v45];
    _Block_release(v45);
    (*(v36 + 8))(v57, v44);
    return (*(v19 + 8))(v22, v18);
  }

  __break(1u);
  return result;
}

void sub_1007CD524()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___globalHeaderRegistration;
  v3 = sub_10010FC20(&qword_1011A37C8, &unk_100EE3808);
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___headerRegistration;
  v5 = sub_10010FC20(&unk_10118A650, &qword_100EC02B0);
  (*(*(v5 - 8) + 56))(v1 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___tvShowCellRegistration;
  v7 = sub_10010FC20(&qword_1011A37D8, &qword_100EE3818);
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___movieCellRegistration;
  v9 = sub_10010FC20(&unk_1011A37E8, &qword_100EE3820);
  (*(*(v9 - 8) + 56))(v1 + v8, 1, 1, v9);
  *(v1 + OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___collectionView) = 0;
  v10 = OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_prefetchingController;
  v11 = objc_allocWithZone(type metadata accessor for ArtworkPrefetchingController());
  *(v1 + v10) = sub_10003AAD8(0xD000000000000024, 0x8000000100E578C0);
  *(v1 + OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_dragDropController) = 0;
  *(v1 + OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___searchController) = 0;
  v12 = OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___actionMetricsReportingContext;
  v13 = type metadata accessor for Actions.MetricsReportingContext(0);
  (*(*(v13 - 8) + 56))(v1 + v12, 1, 1, v13);
  *(v1 + OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController____lazy_storage___sortMoviesBarButton) = 0;
  *(v1 + OBJC_IVAR____TtC5Music34LibraryTVShowsMoviesViewController_context) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1007CD7A0()
{
  v1 = *(type metadata accessor for TVShow() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_1007C8D4C(v2, v3);
}

unint64_t sub_1007CD804(uint64_t a1)
{
  v3 = *(sub_10010FC20(&unk_10118CDB0, &unk_100EC0360) - 8);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for IndexPath() - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_1007C7C14(a1, v7, v1 + 24, v1 + v4, v8);
}

uint64_t sub_1007CD8EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1007CD954(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1007CD9CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_1007CDA40(uint64_t a1)
{
  v3 = *(type metadata accessor for MusicMovie() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));

  return sub_1007C1C70(a1, v4, v5, v6);
}

uint64_t sub_1007CDB28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1007CDB70(uint64_t a1)
{
  sub_10003920C(319, &qword_1011A39E0, &unk_10118D0D0, &qword_100EC8DF0);
  if (v1 <= 0x3F)
  {
    sub_10003920C(319, &unk_1011A39E8, &qword_1011A3878, &unk_100EE3970);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

id sub_1007CDC40()
{
  v1 = v0;
  v3 = v0 + 5;
  v2 = v0[5];
  if (v2)
  {
    v4 = v0[6];

    v2(v5);
    sub_100020438(v2, v4);
    v6 = v1[5];
  }

  else
  {
    v6 = 0;
  }

  v7 = v1[6];
  *v3 = 0;
  v3[1] = 0;
  sub_100020438(v6, v7);
  v8 = v1[2];

  return [v8 removeFromSuperview];
}

uint64_t sub_1007CDCC8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x74754F65646166;
  }

  else
  {
    v3 = 0x6E4965646166;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x74754F65646166;
  }

  else
  {
    v5 = 0x6E4965646166;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1007CDD6C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_1007CDDEC(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_1007CDE58(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_1007CDED4(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10109C4B0, *a1);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1007CDF34(uint64_t *a1@<X8>)
{
  v2 = 0x6E4965646166;
  if (*v1)
  {
    v2 = 0x74754F65646166;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

void *sub_1007CDF70(char a1)
{
  v2 = v1;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  v4 = MTLCreateSystemDefaultDevice();
  if (!v4)
  {
    if (qword_10117F5C8 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_1000060E4(v26, qword_101218A98);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "| ❌ Device does not support Metal", v29, 2u);
    }

    goto LABEL_19;
  }

  v5 = v4;
  if (qword_10117F5C8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000060E4(v6, qword_101218A98);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v31 = v10;
    *v9 = 136315138;
    if (a1)
    {
      v11 = 0x74754F65646166;
    }

    else
    {
      v11 = 0x6E4965646166;
    }

    if (a1)
    {
      v12 = 0xE700000000000000;
    }

    else
    {
      v12 = 0xE600000000000000;
    }

    v13 = sub_1000105AC(v11, v12, &v31);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "| Creating an ArtworkSmartTransition Mask with style=%s", v9, 0xCu);
    sub_10000959C(v10);
  }

  v14 = a1 & 1;
  *(v2 + 32) = a1 & 1;
  v15 = [objc_allocWithZone(MTKView) initWithFrame:v5 device:{0.0, 0.0, 0.0, 0.0}];
  [v15 setAutoresizingMask:18];
  [v15 setClearColor:{1.0, 0.0, 0.0, 1.0}];
  v16 = [v15 layer];
  [v16 setOpaque:0];

  [v15 setPreferredFramesPerSecond:30];
  *(v2 + 16) = v15;
  objc_allocWithZone(_s8RendererCMa());
  v17 = v15;
  v18 = swift_unknownObjectRetain();
  sub_10017240C(v18, v14);
  if (!v19)
  {
    swift_unknownObjectRelease();

    v27 = *(v2 + 16);
LABEL_19:

    sub_100020438(*(v2 + 40), *(v2 + 48));
    swift_deallocPartialClassInstance();
    return 0;
  }

  v20 = v19;
  [v17 setDelegate:v19];

  swift_unknownObjectRelease();
  *(v2 + 24) = v20;
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = &v20[OBJC_IVAR____TtCO5Music22ArtworkSmartTransition8Renderer_completionHandler];
  v23 = *&v20[OBJC_IVAR____TtCO5Music22ArtworkSmartTransition8Renderer_completionHandler];
  v24 = *&v20[OBJC_IVAR____TtCO5Music22ArtworkSmartTransition8Renderer_completionHandler + 8];
  *v22 = sub_1007CE50C;
  v22[1] = v21;
  v25 = v20;

  sub_100020438(v23, v24);

  return v2;
}

double sub_1007CE38C(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1007CDC40();
  }

  return result;
}

id sub_1007CE3E4()
{
  v0 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v1) = 1058977874;
  LODWORD(v2) = 1061997773;
  LODWORD(v3) = 1.0;
  result = [v0 initWithControlPoints:v1 :0.0 :v2 :v3];
  qword_1012195D0 = result;
  return result;
}

uint64_t sub_1007CE438()
{
  sub_100020438(*(v0 + 40), *(v0 + 48));

  return swift_deallocClassInstance();
}

unint64_t sub_1007CE4B8()
{
  result = qword_1011A3AE0;
  if (!qword_1011A3AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A3AE0);
  }

  return result;
}

double sub_1007CE514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_opt_self();
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 animatedArtworkItemIdentifierFromSourceIdentifier:v11];

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  sub_10010FC20(&unk_1011972C0, &qword_100ECF9B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBC6B0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v17;
  *(inited + 48) = v13;
  v38 = v13;
  *(inited + 56) = v15;

  v18 = sub_10010BC60(inited);
  swift_setDeallocating();
  sub_1000095E8(inited + 32, &unk_1011927D0, &unk_100EBA560);
  if (!a3)
  {
    goto LABEL_5;
  }

  v19 = sub_1007CE8D8();
  if (!v20)
  {

LABEL_5:
    v24 = 0;
    v26 = 0;
    goto LABEL_6;
  }

  v21 = v20;
  v37 = v19;
  VideoArtwork.url.getter();
  v22 = URL.absoluteString.getter();
  v23 = v7;
  v24 = v22;
  v35 = v5;
  v26 = v25;
  (*(v23 + 8))(v9, v6);
  v36 = sub_1007D3168();
  v27 = swift_allocObject();
  swift_weakInit();
  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  *(v28 + 24) = a3;
  v29 = swift_allocObject();
  swift_weakInit();
  v30 = swift_allocObject();
  v30[2] = v29;
  v30[3] = a3;
  v30[4] = v35;

  v31 = v36;
  v32 = MPMediaItemAnimatedArtwork.init(artworkID:previewImageRequestHandler:videoAssetFileURLRequestHandler:)();
  v42 = v31;
  *&v41 = v32;
  sub_100016270(&v41, v40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39 = v18;
  sub_1006C5E68(v40, v37, v21, isUniquelyReferenced_nonNull_native);

  v18 = v39;
LABEL_6:
  sub_1007D1D30(v38, v15, v24, v26, v18);

  return result;
}

uint64_t sub_1007CE8D8()
{
  v1 = type metadata accessor for EditorialVideoArtworkFlavor();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin();
  v7 = &v12 - v6;
  (*(v2 + 16))(&v12 - v6, v0 + OBJC_IVAR____TtC5Music10MotionData_videoFlavor, v1, v5);
  static EditorialVideoArtworkFlavor.motionDetailTall.getter();
  sub_1007D35B8(&qword_1011882F0, &type metadata accessor for EditorialVideoArtworkFlavor, &protocol conformance descriptor for EditorialVideoArtworkFlavor);
  v8 = dispatch thunk of static Equatable.== infix(_:_:)();
  v9 = *(v2 + 8);
  v9(v4, v1);
  if (v8)
  {
    v9(v7, v1);
    return static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  static EditorialVideoArtworkFlavor.motionDetailSquare.getter();
  v10 = dispatch thunk of static Equatable.== infix(_:_:)();
  v9(v4, v1);
  v9(v7, v1);
  if (v10)
  {
    return static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return 0;
}

uint64_t sub_1007CEAD8(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  v2[11] = swift_task_alloc();
  v2[12] = type metadata accessor for MainActor();
  v2[13] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[14] = v4;
  v2[15] = v3;

  return _swift_task_switch(sub_1007CEBAC, v4, v3);
}

uint64_t sub_1007CEBAC()
{
  v16 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[16] = Strong;
  if (Strong)
  {
    v2 = v0[11];
    v3 = v0[10];
    v4 = *(Strong + 24);

    v4(v5);

    v6 = type metadata accessor for TaskPriority();
    (*(*(v6 - 8) + 56))(v2, 1, 1, v6);

    v7 = static MainActor.shared.getter();
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = &protocol witness table for MainActor;
    v8[4] = v3;
    v9 = sub_1001F6054(0, 0, v2, &unk_100EE3C50, v8);
    v0[17] = v9;
    type metadata accessor for AnyCancellable();
    swift_allocObject();

    v10 = AnyCancellable.init(_:)();
    swift_beginAccess();
    sub_1003B32C0(&v15, v10);
    swift_endAccess();

    v11 = swift_task_alloc();
    v0[18] = v11;
    v12 = sub_10010FC20(&qword_101184460, &qword_100EDACF0);
    *v11 = v0;
    v11[1] = sub_1007CEE34;

    return Task<>.value.getter(v0 + 8, v9, v12);
  }

  else
  {

    v13 = v0[1];

    return v13(0);
  }
}

uint64_t sub_1007CEE34()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return _swift_task_switch(sub_1007CEF54, v3, v2);
}

uint64_t sub_1007CEF54()
{

  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1007CEFD8(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = type metadata accessor for MainActor();
  v1[4] = static MainActor.shared.getter();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_1007CF088;

  return sub_1007CF238();
}

uint64_t sub_1007CF088(uint64_t a1)
{
  *(*v1 + 48) = a1;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1007CF1CC, v3, v2);
}

uint64_t sub_1007CF1CC()
{
  v1 = v0[6];
  v2 = v0[2];

  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_1007CF238()
{
  v1[8] = v0;
  v2 = sub_10010FC20(&qword_1011A3BD8, &unk_100EE3C68);
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v3 = sub_10010FC20(&qword_1011979F0, &qword_100ED6780);
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();
  v4 = sub_10010FC20(&qword_1011A3BE0, &qword_100EE3C78);
  v1[15] = v4;
  v1[16] = *(v4 - 8);
  v1[17] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v1[18] = v5;
  v1[19] = *(v5 - 8);
  v1[20] = swift_task_alloc();
  v1[21] = type metadata accessor for MainActor();
  v1[22] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[23] = v7;
  v1[24] = v6;

  return _swift_task_switch(sub_1007CF468, v7, v6);
}

uint64_t sub_1007CF468()
{
  v24 = v0;
  if (qword_10117F548 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[25] = sub_1000060E4(v1, static Logger.NowPlaying.motion);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[19];
    v4 = v0[20];
    v6 = v0[18];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v23 = v8;
    *v7 = 136446210;
    VideoArtwork.url.getter();
    sub_1007D35B8(&qword_1011A4850, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    (*(v5 + 8))(v4, v6);
    v12 = sub_1000105AC(v9, v11, &v23);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetching keyframe image for %{public}s", v7, 0xCu);
    sub_10000959C(v8);
  }

  v14 = v0[13];
  v13 = v0[14];
  v15 = v0[11];
  v16 = v0[12];
  v17 = v0[9];
  v18 = v0[10];
  swift_beginAccess();
  sub_10010FC20(&qword_101197A00, &qword_100EC3960);
  Published.projectedValue.getter();
  swift_endAccess();
  sub_100020674(&qword_101197A08, &qword_1011979F0, &qword_100ED6780, &protocol conformance descriptor for Published<A>.Publisher);
  Publisher<>.values.getter();
  (*(v14 + 8))(v13, v16);
  AsyncPublisher.makeAsyncIterator()();
  (*(v18 + 8))(v15, v17);
  v0[26] = static MainActor.shared.getter();
  v19 = sub_100020674(&qword_1011A3BE8, &qword_1011A3BE0, &qword_100EE3C78, &protocol conformance descriptor for AsyncPublisher<A>.Iterator);
  v20 = swift_task_alloc();
  v0[27] = v20;
  *v20 = v0;
  v20[1] = sub_1007CF7F0;
  v21 = v0[15];

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 5, v21, v19);
}

uint64_t sub_1007CF7F0()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  v3 = *(v2 + 208);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1007CFF70;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_1007CF988;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_1007CF988()
{

  *(v0 + 232) = *(v0 + 40);
  *(v0 + 49) = *(v0 + 48);
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);

  return _swift_task_switch(sub_1007CF9FC, v1, v2);
}

uint64_t sub_1007CF9FC(uint64_t a1)
{
  v43 = v1;
  v2 = *(v1 + 49);
  if (v2 == 254)
  {
    (*(*(v1 + 128) + 8))(*(v1 + 136), *(v1 + 120));

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v9 = *(v1 + 152);
      v8 = *(v1 + 160);
      v10 = *(v1 + 144);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v42 = v12;
      *v11 = 136446210;
      VideoArtwork.url.getter();
      sub_1007D35B8(&qword_1011A4850, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v13 = dispatch thunk of CustomStringConvertible.description.getter();
      v15 = v14;
      (*(v9 + 8))(v8, v10);
      v16 = sub_1000105AC(v13, v15, &v42);

      *(v11 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v6, v7, "Keyframe image fetch cancelled for %{public}s", v11, 0xCu);
      sub_10000959C(v12);
    }

    v17 = 0;
  }

  else
  {
    if (v2 == 255)
    {
      *(v1 + 208) = static MainActor.shared.getter();
      v3 = sub_100020674(&qword_1011A3BE8, &qword_1011A3BE0, &qword_100EE3C78, &protocol conformance descriptor for AsyncPublisher<A>.Iterator);
      v4 = swift_task_alloc();
      *(v1 + 216) = v4;
      *v4 = v1;
      v4[1] = sub_1007CF7F0;
      v5 = *(v1 + 120);

      return dispatch thunk of AsyncIteratorProtocol.next()(v1 + 40, v5, v3);
    }

    v18 = *(v1 + 232);

    sub_1007D3590(v18, v2);

    sub_1007D3590(v18, v2);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    sub_1007D35A4(v18, v2);
    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v1 + 232);
    if (v21)
    {
      v24 = *(v1 + 152);
      v23 = *(v1 + 160);
      v25 = *(v1 + 144);
      v39 = *(v1 + 128);
      v40 = *(v1 + 120);
      v41 = *(v1 + 136);
      v37 = *(v1 + 49);
      v26 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v42 = v38;
      *v26 = 136446466;
      VideoArtwork.url.getter();
      sub_1007D35B8(&qword_1011A4850, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v29 = v28;
      (*(v24 + 8))(v23, v25);
      v30 = sub_1000105AC(v27, v29, &v42);

      *(v26 + 4) = v30;
      *(v26 + 12) = 2114;
      *(v26 + 14) = v22;
      *v36 = v22;
      sub_10004ADE8(v22, v37);
      _os_log_impl(&_mh_execute_header, v19, v20, "Fetched keyframe image for %{public}s: %{public}@", v26, 0x16u);
      sub_1000095E8(v36, &unk_101183D70, &unk_100EC6540);

      sub_10000959C(v38);

      sub_1007D35A4(v22, v37);
      (*(v39 + 8))(v41, v40);
    }

    else
    {
      v32 = *(v1 + 128);
      v31 = *(v1 + 136);
      v33 = *(v1 + 120);
      sub_1007D35A4(*(v1 + 232), *(v1 + 49));

      (*(v32 + 8))(v31, v33);
    }

    v17 = *(v1 + 232);
  }

  v34 = *(v1 + 8);

  return v34(v17);
}

uint64_t sub_1007CFF70()
{
  *(v0 + 56) = *(v0 + 224);
  sub_10010FC20(&qword_1011824A0, &unk_100EBE390);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_1007CFFFC(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  *(v5 + 88) = a2;
  *(v5 + 96) = a3;
  *(v5 + 72) = a4;
  *(v5 + 80) = a5;
  *(v5 + 64) = a1;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  *(v5 + 120) = swift_task_alloc();
  v6 = type metadata accessor for URL();
  *(v5 + 128) = v6;
  v7 = *(v6 - 8);
  *(v5 + 136) = v7;
  *(v5 + 144) = *(v7 + 64);
  *(v5 + 152) = swift_task_alloc();
  *(v5 + 160) = swift_task_alloc();
  *(v5 + 168) = type metadata accessor for MainActor();
  *(v5 + 176) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 184) = v9;
  *(v5 + 192) = v8;

  return _swift_task_switch(sub_1007D0184, v9, v8);
}

uint64_t sub_1007D0184()
{
  v30 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[25] = Strong;
  if (!Strong)
  {

    goto LABEL_7;
  }

  if (qword_10117FD68 != -1)
  {
    swift_once();
  }

  v2 = v0[16];
  v3 = v0[17];
  v4 = v0[15];
  v5 = sub_1000060E4(v0[14], qword_1011A3AE8);
  sub_1004890B8(v5, v4);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v6 = v0[15];

    sub_1000095E8(v6, &qword_101183A20, &unk_100EBCF80);
LABEL_7:
    (*(v0[17] + 56))(v0[8], 1, 1, v0[16]);

    v7 = v0[1];

    return v7();
  }

  v9 = v0[20];
  v10 = v0[19];
  v11 = v0[16];
  v12 = v0[17];
  v14 = v0[12];
  v13 = v0[13];
  v28 = v13;
  v16 = v0[9];
  v15 = v0[10];
  v17 = *(v12 + 32);
  v17(v9, v0[15], v11);
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
  v19 = v10;
  (*(v12 + 16))(v10, v9, v11);

  v20 = static MainActor.shared.getter();
  v21 = (*(v12 + 80) + 56) & ~*(v12 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = v20;
  *(v22 + 3) = &protocol witness table for MainActor;
  *(v22 + 4) = v14;
  *(v22 + 5) = v16;
  *(v22 + 6) = v15;
  v17(&v22[v21], v19, v11);
  v23 = sub_1001F6328(0, 0, v28, &unk_100EE3C28, v22);
  v0[26] = v23;
  type metadata accessor for AnyCancellable();
  swift_allocObject();

  v24 = AnyCancellable.init(_:)();
  swift_beginAccess();
  sub_1003B32C0(&v29, v24);
  swift_endAccess();

  v25 = swift_task_alloc();
  v0[27] = v25;
  *v25 = v0;
  v25[1] = sub_1007D0554;
  v26 = v0[14];
  v27 = v0[8];

  return Task<>.value.getter(v27, v23, v26);
}

uint64_t sub_1007D0554()
{
  v1 = *v0;

  v2 = *(v1 + 192);
  v3 = *(v1 + 184);

  return _swift_task_switch(sub_1007D0674, v3, v2);
}

uint64_t sub_1007D0674()
{
  v1 = v0[20];
  v2 = v0[16];
  v3 = v0[17];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1007D0740(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = type metadata accessor for MainActor();
  v7[3] = static MainActor.shared.getter();
  v12 = swift_task_alloc();
  v7[4] = v12;
  *v12 = v7;
  v12[1] = sub_1001AB600;

  return sub_1007D0820(a1, a7, a2, a3);
}

uint64_t sub_1007D0820(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *(v5 + 72) = a2;
  *(v5 + 80) = v4;
  *(v5 + 56) = a3;
  *(v5 + 64) = a4;
  *(v5 + 48) = a1;
  v6 = type metadata accessor for URL.DirectoryHint();
  *(v5 + 88) = v6;
  *(v5 + 96) = *(v6 - 8);
  *(v5 + 104) = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  *(v5 + 112) = v7;
  *(v5 + 120) = *(v7 - 8);
  *(v5 + 128) = swift_task_alloc();
  sub_10010FC20(&qword_1011A3BC0, &unk_100EE3C38);
  *(v5 + 136) = swift_task_alloc();
  v8 = type metadata accessor for URL();
  *(v5 + 144) = v8;
  *(v5 + 152) = *(v8 - 8);
  *(v5 + 160) = swift_task_alloc();
  *(v5 + 168) = swift_task_alloc();
  *(v5 + 176) = swift_task_alloc();
  *(v5 + 184) = swift_task_alloc();
  *(v5 + 192) = swift_task_alloc();
  *(v5 + 200) = swift_task_alloc();
  *(v5 + 208) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v5 + 216) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 224) = v9;
  *(v5 + 232) = v10;

  return _swift_task_switch(sub_1007D0A88, v9, v10);
}

uint64_t sub_1007D0A88()
{
  v17 = v0;
  if (qword_10117F548 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[30] = sub_1000060E4(v1, static Logger.NowPlaying.motion);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[26];
    v5 = v0[18];
    v6 = v0[19];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136446210;
    VideoArtwork.url.getter();
    sub_1007D35B8(&qword_1011A4850, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v11 = v10;
    (*(v6 + 8))(v4, v5);
    v12 = sub_1000105AC(v9, v11, &v16);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetching asset URL for %{public}s", v7, 0xCu);
    sub_10000959C(v8);
  }

  v0[31] = type metadata accessor for MotionCache();
  type metadata accessor for MotionCacheActor();
  v0[32] = static MotionCacheActor.shared.getter();
  sub_1007D35B8(&qword_1011A3BC8, &type metadata accessor for MotionCacheActor, &protocol conformance descriptor for MotionCacheActor);
  v14 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1007D0D4C, v14, v13);
}

uint64_t sub_1007D0D4C()
{

  v0[33] = static MotionCache.shared.getter();
  v1 = v0[28];
  v2 = v0[29];

  return _swift_task_switch(sub_1007D0DE4, v1, v2);
}

uint64_t sub_1007D0DE4(uint64_t a1)
{
  v2 = v1[17];
  v1[34] = OBJC_IVAR____TtC5Music10MotionData_videoArtwork;
  VideoArtwork.url.getter();
  v3 = type metadata accessor for MCUILoggingContext();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_task_alloc();
  v1[35] = v4;
  *v4 = v1;
  v4[1] = sub_1007D0F28;
  v5 = v1[26];
  v6 = v1[17];
  v7.n128_u64[0] = v1[7];
  v8.n128_u64[0] = v1[8];

  return MotionCache.fetchAsset(url:presentationResolution:cacheBucketID:loggingContext:)(v5, 0, 0, v6, v7, v8);
}

uint64_t sub_1007D0F28(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 208);
  v5 = *(*v1 + 152);
  v6 = *(*v1 + 144);
  v7 = *(*v1 + 136);
  v3[36] = a1;

  sub_1000095E8(v7, &qword_1011A3BC0, &unk_100EE3C38);
  v8 = *(v5 + 8);
  v3[37] = v8;
  v3[38] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v4, v6);
  v9 = v2[29];
  v10 = v2[28];

  return _swift_task_switch(sub_1007D1144, v10, v9);
}

uint64_t sub_1007D1144()
{
  v131 = v0;

  if (static Task<>.isCancelled.getter())
  {

    v1 = Logger.logObject.getter();
    v2 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v1, v2))
    {
      v3 = v0[37];
      v127 = v0[36];
      v4 = v0[26];
      v5 = v0[18];
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v129 = v7;
      *v6 = 136446210;
      VideoArtwork.url.getter();
      sub_1007D35B8(&qword_1011A4850, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v8 = dispatch thunk of CustomStringConvertible.description.getter();
      v10 = v9;
      v3(v4, v5);
      v11 = sub_1000105AC(v8, v10, &v129);

      *(v6 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v1, v2, "Asset URL fetch cancelled for %{public}s", v6, 0xCu);
      sub_10000959C(v7);
    }

    else
    {
      v66 = v0[36];
    }
  }

  else
  {
    v12 = v0[36];
    if (v12)
    {
      v13 = v0[24];
      v14 = v0[25];
      v15 = v0[18];
      v16 = v0[19];
      v18 = v0[15];
      v17 = v0[16];
      v19 = v0[14];
      v20 = v0[12];
      v119 = v0[13];
      v121 = v0[11];
      v128 = v0[36];
      v21 = [v12 URL];
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v22 = v14;
      v23 = *(v16 + 32);
      v23(v22, v13, v15);
      v24 = [objc_opt_self() defaultManager];
      UUID.init()();
      sub_1007D35B8(&qword_1011A3BD0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v129 = dispatch thunk of CustomStringConvertible.description.getter();
      v130 = v25;
      v26 = v19;
      v27 = v24;
      (*(v18 + 8))(v17, v26);
      v28._countAndFlagsBits = 95;
      v28._object = 0xE100000000000000;
      String.append(_:)(v28);
      v29._countAndFlagsBits = URL.lastPathComponent.getter();
      String.append(_:)(v29);

      v30 = v130;
      v0[2] = v129;
      v0[3] = v30;
      (*(v20 + 104))(v119, enum case for URL.DirectoryHint.notDirectory(_:), v121);
      sub_100009838();
      URL.appending<A>(path:directoryHint:)();
      (*(v20 + 8))(v119, v121);

      URL._bridgeToObjectiveC()(v31);
      v33 = v32;
      URL._bridgeToObjectiveC()(v34);
      v36 = v35;
      v0[4] = 0;
      LODWORD(v20) = [v27 moveItemAtURL:v33 toURL:v35 error:v0 + 4];

      v37 = v0[4];
      if (v20)
      {
        v122 = v23;
        v38 = v0[25];
        v39 = v0[21];
        v40 = v0[18];
        v41 = *(v0[19] + 16);
        v41(v0[22], v0[23], v40);
        v41(v39, v38, v40);

        v42 = v37;
        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.default.getter();

        log = v43;
        v45 = os_log_type_enabled(v43, v44);
        v46 = v0[37];
        if (v45)
        {
          v117 = v44;
          v47 = v0[26];
          v120 = v0[25];
          v48 = v0[22];
          v118 = v0[21];
          v49 = v0[18];
          v50 = swift_slowAlloc();
          v129 = swift_slowAlloc();
          *v50 = 136446722;
          VideoArtwork.url.getter();
          sub_1007D35B8(&qword_1011A4850, &type metadata accessor for URL, &protocol conformance descriptor for URL);
          v51 = dispatch thunk of CustomStringConvertible.description.getter();
          v125 = v27;
          v53 = v52;
          v46(v47, v49);
          v54 = sub_1000105AC(v51, v53, &v129);

          *(v50 + 4) = v54;
          *(v50 + 12) = 2082;
          v55 = v48;
          v56 = dispatch thunk of CustomStringConvertible.description.getter();
          v58 = v57;
          v46(v55, v49);
          v59 = sub_1000105AC(v56, v58, &v129);

          *(v50 + 14) = v59;
          *(v50 + 22) = 2082;
          v60 = dispatch thunk of CustomStringConvertible.description.getter();
          v62 = v61;
          v46(v118, v49);
          v63 = sub_1000105AC(v60, v62, &v129);

          *(v50 + 24) = v63;
          _os_log_impl(&_mh_execute_header, log, v117, "Fetched asset URL for %{public}s: %{public}s. Original: %{public}s", v50, 0x20u);
          swift_arrayDestroy();

          v64 = v120;
          v65 = v49;
        }

        else
        {
          v99 = v0[25];
          v101 = v0[21];
          v100 = v0[22];
          v102 = v0[18];

          v46(v101, v102);
          v46(v100, v102);
          v64 = v99;
          v65 = v102;
        }

        v46(v64, v65);
        v103 = v0[18];
        v104 = v0[19];
        v105 = v0[6];
        v122(v105, v0[23], v103);
        (*(v104 + 56))(v105, 0, 1, v103);
        goto LABEL_21;
      }

      v126 = v27;
      v78 = v0[37];
      v79 = v0[25];
      v80 = v0[23];
      v81 = v0[19];
      v82 = v0[20];
      v83 = v0[18];
      v84 = v37;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v78(v80, v83);
      (*(v81 + 16))(v82, v79, v83);
      swift_errorRetain();
      v85 = Logger.logObject.getter();
      v86 = static os_log_type_t.error.getter();

      v87 = os_log_type_enabled(v85, v86);
      v88 = v0[37];
      v89 = v0[20];
      v90 = v0[18];
      if (v87)
      {
        v91 = swift_slowAlloc();
        v123 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        v129 = v92;
        *v91 = 138543618;
        swift_errorRetain();
        v93 = _swift_stdlib_bridgeErrorToNSError();
        *(v91 + 4) = v93;
        *v123 = v93;
        *(v91 + 12) = 2082;
        sub_1007D35B8(&qword_1011A4850, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v94 = dispatch thunk of CustomStringConvertible.description.getter();
        v96 = v95;
        v88(v89, v90);
        v97 = sub_1000105AC(v94, v96, &v129);

        *(v91 + 14) = v97;
        _os_log_impl(&_mh_execute_header, v85, v86, "Error moving asset file: %{public}@. Original: %{public}s", v91, 0x16u);
        sub_1000095E8(v123, &unk_101183D70, &unk_100EC6540);

        sub_10000959C(v92);
      }

      else
      {

        v88(v89, v90);
      }

      URL._bridgeToObjectiveC()(v98);
      v107 = v106;
      v0[5] = 0;
      v108 = [v126 removeItemAtURL:v106 error:v0 + 5];

      v109 = v0[5];
      v110 = v0[37];
      v111 = v0[25];
      v112 = v0[18];
      if (v108)
      {
        v113 = v109;
        v110(v111, v112);
      }

      else
      {
        v114 = v109;
        _convertNSErrorToError(_:)();

        swift_willThrow();

        v110(v111, v112);
      }
    }

    else
    {

      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v67, v68))
      {
        v69 = v0[37];
        v70 = v0[26];
        v71 = v0[18];
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v129 = v73;
        *v72 = 136446210;
        VideoArtwork.url.getter();
        sub_1007D35B8(&qword_1011A4850, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v74 = dispatch thunk of CustomStringConvertible.description.getter();
        v76 = v75;
        v69(v70, v71);
        v77 = sub_1000105AC(v74, v76, &v129);

        *(v72 + 4) = v77;
        _os_log_impl(&_mh_execute_header, v67, v68, "No asset URL available for %{public}s", v72, 0xCu);
        sub_10000959C(v73);
      }
    }
  }

  (*(v0[19] + 56))(v0[6], 1, 1, v0[18]);
LABEL_21:

  v115 = v0[1];

  return v115();
}

uint64_t sub_1007D1D30(char *a1, unsigned int (**a2)(char *, uint64_t, uint64_t), void *a3, unsigned int (**a4)(char *, uint64_t, uint64_t), unint64_t a5)
{
  v111 = a1;
  v10 = sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v12 = &v99 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v110 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v99 - v16;
  if (qword_10117FD68 != -1)
  {
    goto LABEL_89;
  }

  while (1)
  {
    v18 = sub_1000060E4(v10, qword_1011A3AE8);
    sub_1004890B8(v18, v12);
    if (v14[6](v12, 1, v13) == 1)
    {
      return sub_1000095E8(v12, &qword_101183A20, &unk_100EBCF80);
    }

    v105 = v14;
    v106 = v17;
    v14[4](v17, v12, v13);
    v17 = *(v5 + 5);
    v21 = *(v5 + 6);
    v22 = *(v5 + 7);
    v23 = *(v5 + 8);
    v108 = v5;
    if (!v21)
    {
      if (!a2)
      {
        return (v105[1])(v106, v13, v20);
      }

LABEL_15:
      v103 = a2 == 0;
      v24 = v111;
      sub_1007D3600(v111, a2, a3, a4);
      sub_1007D3600(v17, v21, v22, v23);
      sub_1007D3124(v17, v21, v22, v23);
      v25 = v24;
      v26 = a2;
      v27 = a3;
      v28 = a4;
LABEL_16:
      sub_1007D3124(v25, v26, v27, v28);
      goto LABEL_17;
    }

    if (!a2)
    {
      goto LABEL_15;
    }

    v103 = 0;
    if ((v17 != v111 || v21 != a2) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      sub_1007D3600(v111, a2, a3, a4);
      sub_1007D3600(v17, v21, v22, v23);

      v25 = v17;
      v26 = v21;
      v27 = v22;
      v28 = v23;
      goto LABEL_16;
    }

    if (!v23)
    {
      if (!a4)
      {
        return (v105[1])(v106, v13, v20);
      }

      sub_1007D3600(v111, a2, a3, a4);
      sub_1007D3600(v17, v21, v22, 0);

      v25 = v17;
      v26 = v21;
      v27 = v22;
      v28 = 0;
      goto LABEL_16;
    }

    if (a4)
    {
      if (v22 == a3 && v23 == a4)
      {
        sub_1007D3600(v111, a2, a3, a4);
        sub_1007D3600(v17, v21, a3, a4);

        v20.n128_f64[0] = sub_1007D3124(v17, v21, a3, a4);
        return (v105[1])(v106, v13, v20);
      }

      v44 = _stringCompareWithSmolCheck(_:_:expecting:)();
      sub_1007D3600(v111, a2, a3, a4);
      sub_1007D3600(v17, v21, v22, v23);

      v20.n128_f64[0] = sub_1007D3124(v17, v21, v22, v23);
      if (v44)
      {
        return (v105[1])(v106, v13, v20);
      }
    }

LABEL_17:
    v29 = v108;
    v30 = *(v108 + 6);
    v109 = v13;
    v104 = a2;
    v102 = a3;
    if (v30)
    {
      v17 = *(v108 + 7);
      v31 = *(v108 + 8);
      v32 = a2 ? a3 : 0;
      v33 = a2 ? a4 : 0;

      v34 = a5;
      if (v31)
      {
        if (v33)
        {
          if (v17 == v32 && v31 == v33)
          {

LABEL_68:
            v29 = v108;
            goto LABEL_76;
          }

          v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v29 = v108;
          if (v35)
          {
            goto LABEL_76;
          }
        }

        else
        {

          v29 = v108;
        }
      }

      else
      {
        v29 = v108;
        if (!v33)
        {
          goto LABEL_76;
        }
      }
    }

    else
    {
      v34 = a5;
      if (!a2)
      {
        v103 = 1;
        goto LABEL_76;
      }

      v103 = 0;
      if (!a4)
      {
        goto LABEL_76;
      }
    }

    swift_beginAccess();
    v36 = *(v29 + 9);
    if ((v36 & 0xC000000000000001) != 0)
    {

      v37 = __CocoaSet.count.getter();
    }

    else
    {
      v37 = *(v36 + 16);
    }

    v101 = v34;
    if (v37)
    {
      if (qword_10117F548 != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      sub_1000060E4(v38, static Logger.NowPlaying.motion);
      v39 = v111;
      sub_1007D3600(v111, a2, a3, a4);

      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();
      sub_1007D3124(v39, a2, a3, a4);
      if (os_log_type_enabled(v40, v41))
      {
        v17 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        v116 = v107;
        *v17 = 134349570;
        v42 = *(v29 + 9);
        if ((v42 & 0xC000000000000001) != 0)
        {

          v43 = __CocoaSet.count.getter();
        }

        else
        {
          v43 = *(v42 + 16);
        }

        v45 = v41;
        *(v17 + 4) = v43;
        v46 = v108;

        *(v17 + 6) = 2082;
        if (*(v46 + 6))
        {
          v47 = *(v46 + 7);
        }

        else
        {
          v47 = 0;
          v48 = 0;
        }

        v112 = v47;
        v113 = v48;
        sub_10010FC20(&qword_1011815E0, &qword_100EBD050);
        v49 = String.init<A>(describing:)();
        v51 = sub_1000105AC(v49, v50, &v116);

        *(v17 + 14) = v51;
        *(v17 + 11) = 2082;
        if (v103)
        {
          v52 = 0;
          v53 = 0;
        }

        else
        {

          v52 = a3;
          v53 = a4;
        }

        v112 = v52;
        v113 = v53;
        v54 = String.init<A>(describing:)();
        v56 = sub_1000105AC(v54, v55, &v116);

        *(v17 + 3) = v56;
        _os_log_impl(&_mh_execute_header, v40, v45, "Cancelling fetches (%{public}ld) as artwork ID changed. %{public}s -> %{public}s", v17, 0x20u);
        swift_arrayDestroy();

        v34 = v101;
        a2 = v104;
        v29 = v108;
      }

      else
      {
      }

      *(v29 + 9) = &_swiftEmptySetSingleton;
    }

    v57 = [objc_opt_self() defaultManager];
    URL._bridgeToObjectiveC()(v58);
    v60 = v59;
    v112 = 0;
    v107 = v57;
    v14 = [v57 contentsOfDirectoryAtURL:v59 includingPropertiesForKeys:0 options:0 error:&v112];

    v5 = v112;
    if (!v14)
    {
      break;
    }

    v100 = a4;
    a2 = v105;
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v61 = v5;

    v12 = *(v10 + 16);
    if (!v12)
    {
LABEL_67:

      a4 = v100;
      a3 = v102;
      v34 = v101;
      a2 = v104;
      goto LABEL_68;
    }

    a5 = 0;
    a3 = a2 + 2;
    a4 = a2 + 1;
    while (a5 < *(v10 + 16))
    {
      v63 = v109;
      v62 = v110;
      a2[2](v110, v10 + ((*(a2 + 80) + 32) & ~*(a2 + 80)) + a2[9] * a5, v109);
      URL._bridgeToObjectiveC()(v64);
      v17 = v65;
      (a2[1])(v62, v63);
      v112 = 0;
      v14 = [v107 removeItemAtURL:v17 error:&v112];

      v5 = v112;
      if (!v14)
      {
        v67 = v112;

        a4 = v100;
        v34 = v101;
        a2 = v104;
        goto LABEL_71;
      }

      ++a5;
      v66 = v112;
      if (v12 == a5)
      {
        goto LABEL_67;
      }
    }

    __break(1u);
LABEL_89:
    swift_once();
  }

  v67 = v112;
LABEL_71:
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v29 = v108;
  if (qword_10117F548 != -1)
  {
    swift_once();
  }

  v68 = type metadata accessor for Logger();
  sub_1000060E4(v68, static Logger.NowPlaying.motion);
  swift_errorRetain();
  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.error.getter();

  v71 = os_log_type_enabled(v69, v70);
  a3 = v102;
  if (v71)
  {
    v72 = v34;
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    *v73 = 138543362;
    swift_errorRetain();
    v75 = _swift_stdlib_bridgeErrorToNSError();
    *(v73 + 4) = v75;
    *v74 = v75;
    _os_log_impl(&_mh_execute_header, v69, v70, "Error removing old asset files: %{public}@", v73, 0xCu);
    sub_1000095E8(v74, &unk_101183D70, &unk_100EC6540);

    v34 = v72;
    a2 = v104;
  }

  else
  {
  }

LABEL_76:
  if (qword_10117F548 != -1)
  {
    swift_once();
  }

  v76 = type metadata accessor for Logger();
  sub_1000060E4(v76, static Logger.NowPlaying.motion);
  v77 = v111;
  sub_1007D3600(v111, a2, a3, a4);

  v78 = Logger.logObject.getter();
  v79 = static os_log_type_t.default.getter();
  sub_1007D3124(v77, a2, a3, a4);

  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    *v80 = 136446466;
    v81 = v34;
    if (v103)
    {
      v82 = 0xE300000000000000;
      v83 = 7104878;
    }

    else
    {
      v116 = 0;
      v117 = 0xE000000000000000;
      v112 = v111;
      v113 = v104;
      v114 = a3;
      v115 = a4;
      _print_unlocked<A, B>(_:_:)();
      v83 = v116;
      v82 = v117;
    }

    v84 = sub_1000105AC(v83, v82, &v118);

    *(v80 + 4) = v84;
    *(v80 + 12) = 2082;
    v85 = Dictionary.description.getter();
    v87 = sub_1000105AC(v85, v86, &v118);

    *(v80 + 14) = v87;
    _os_log_impl(&_mh_execute_header, v78, v79, "Publishing animated artwork through MPNowPlayingInfoCenter. publishedIDs: %{public}s, nowPlayingInfo: %{public}s", v80, 0x16u);
    swift_arrayDestroy();

    a3 = v102;
    v29 = v108;
  }

  else
  {

    v81 = v34;
  }

  v88 = *(v29 + 5);
  v89 = *(v29 + 6);
  v90 = *(v29 + 7);
  v91 = *(v29 + 8);
  v92 = v111;
  v93 = v104;
  *(v29 + 5) = v111;
  *(v29 + 6) = v93;
  *(v29 + 7) = a3;
  *(v29 + 8) = a4;
  sub_1007D3600(v92, v93, a3, a4);
  sub_1007D3124(v88, v89, v90, v91);
  v94 = *(v29 + 2);
  if (*(v81 + 16))
  {
    v95.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v95.super.isa = 0;
  }

  v96 = v109;
  v98 = v105;
  v97 = v106;
  [v94 setNowPlayingInfo:v95.super.isa];

  return (v98[1])(v97, v96);
}

uint64_t sub_1007D2AEC(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_1007D2B8C()
{
  v0 = sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  sub_100006080(v0, qword_1011A3AE8);
  v1 = sub_1000060E4(v0, qword_1011A3AE8);
  return sub_1007D2BE4(v1);
}

uint64_t sub_1007D2BE4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URL.DirectoryHint();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v33 - v10;
  v12 = [objc_opt_self() defaultManager];
  v35[0] = 0;
  v13 = [v12 URLForDirectory:9 inDomain:1 appropriateForURL:0 create:1 error:v35];
  v14 = v35[0];
  if (v13)
  {
    v34 = a1;
    v15 = v13;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v14;

    v35[0] = 0xD00000000000001ALL;
    v35[1] = 0x8000000100E57A30;
    (*(v3 + 104))(v5, enum case for URL.DirectoryHint.isDirectory(_:), v2);
    sub_100009838();
    URL.appending<A>(path:directoryHint:)();
    (*(v3 + 8))(v5, v2);
    v17 = *(v7 + 8);
    v17(v9, v6);
    URL._bridgeToObjectiveC()(v18);
    v20 = v19;
    v35[0] = 0;
    v21 = [v12 createDirectoryAtURL:v19 withIntermediateDirectories:1 attributes:0 error:v35];

    if (v21)
    {
      v22 = v35[0];

      a1 = v34;
      (*(v7 + 32))(v34, v11, v6);
      v23 = 0;
      return (*(v7 + 56))(a1, v23, 1, v6);
    }

    v25 = v35[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v17(v11, v6);
    a1 = v34;
  }

  else
  {
    v24 = v35[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  if (qword_10117F548 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_1000060E4(v26, static Logger.NowPlaying.motion);
  swift_errorRetain();
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138543362;
    swift_errorRetain();
    v31 = _swift_stdlib_bridgeErrorToNSError();
    *(v29 + 4) = v31;
    *v30 = v31;
    _os_log_impl(&_mh_execute_header, v27, v28, "Unable to create artwork asset directory: %{public}@", v29, 0xCu);
    sub_1000095E8(v30, &unk_101183D70, &unk_100EC6540);
  }

  else
  {
  }

  v23 = 1;
  return (*(v7 + 56))(a1, v23, 1, v6);
}

uint64_t sub_1007D309C()
{

  sub_1007D3124(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return swift_deallocClassInstance();
}

double sub_1007D3124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1007D3168()
{
  result = qword_1011A3BB8;
  if (!qword_1011A3BB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1011A3BB8);
  }

  return result;
}

uint64_t sub_1007D31B4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1001F6C0C;

  return sub_1007CEAD8(v2, v3);
}

uint64_t sub_1007D3264(uint64_t a1, double a2, double a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100008F30;

  return sub_1007CFFFC(a1, v8, v9, a2, a3);
}

uint64_t sub_1007D3330(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = *(v1 + 2);
  v7 = *(v1 + 3);
  v8 = *(v1 + 4);
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10002F3F4;

  return sub_1007D0740(a1, v9, v10, v6, v7, v8, v1 + v5);
}

void sub_1007D343C()
{
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);

  Task.cancel()();
}

uint64_t sub_1007D348C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100008F30;

  return sub_1007CEFD8(a1);
}

void sub_1007D3540()
{
  sub_10010FC20(&qword_101184460, &qword_100EDACF0);

  Task.cancel()();
}

id sub_1007D3590(id result, char a2)
{
  if (a2 != 254)
  {
    return sub_10004ADE8(result, a2);
  }

  return result;
}

void sub_1007D35A4(id a1, char a2)
{
  if (a2 != 254)
  {
    sub_10004ADFC(a1, a2);
  }
}

uint64_t sub_1007D35B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1007D3600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1007D3644(void *a1)
{
  v2 = v1;
  v3 = a1;
  if (a1)
  {
    v4 = sub_1007D44C4(sub_1007D4200);
    v3 = sub_1007D44C4(sub_1007D469C);
  }

  else
  {
    v4 = 1;
  }

  v5 = [v2 playingItem];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 queueItemIdentifier];

    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (v4 == 1)
    {
      if (!v10)
      {
        goto LABEL_16;
      }

      goto LABEL_29;
    }
  }

  else
  {
    if (v4 == 1)
    {
      goto LABEL_16;
    }

    v10 = 0;
    v8 = 0;
  }

  v11 = v4;
  if (!v4)
  {
    if (v10)
    {
      goto LABEL_21;
    }

LABEL_16:
    sub_1007D41BC(v4, v3);
    return -1;
  }

  v12 = v11;
  v13 = [v11 queueItemIdentifier];

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  if (v10)
  {
    if (v14 == v8 && v10 == v16)
    {

LABEL_19:
      sub_1007D41BC(v4, v3);

      return -1;
    }

    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v17)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

LABEL_21:
  v19 = v3;
  if (!v3)
  {
    sub_1007D41BC(v4, 0);
    if (!v10)
    {
      return 1;
    }

LABEL_29:

    return 0;
  }

  v20 = v19;
  v21 = [v19 queueItemIdentifier];

  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  if (!v10)
  {
    sub_1007D41BC(v4, v3);
    goto LABEL_29;
  }

  if (v22 == v8 && v10 == v24)
  {
    sub_1007D41BC(v4, v3);
  }

  else
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_1007D41BC(v4, v3);

    if ((v25 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

void sub_1007D38FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = (*(**(v2 + 16) + 432))();
  v19 = v6;
  if (v6)
  {
    v7 = [v6 tracklist];
    v8 = sub_1007D44C4(sub_1007D4200);
    v9 = sub_1007D44C4(sub_1007D469C);

    v10 = v8;
    v11 = [v19 tracklist];
    v12 = v8;
  }

  else
  {
    v11 = 0;
    v8 = 0;
    v9 = 0;
    v12 = 1;
  }

  v14 = *(v3 + 24);
  v13 = *(v3 + 32);
  sub_100112878(v14, v13);
  sub_100112878(v14, v13);
  NowPlaying.TrackMetadata.init(_:in:explicitBadgeConfigurator:)(v8, v11, v14, v13, a1);
  if (v12 == 1)
  {
    v15 = 0;
    v16 = v19;
    if (v19)
    {
LABEL_6:
      v17 = [v16 tracklist];
      goto LABEL_9;
    }
  }

  else
  {
    v18 = v9;
    v15 = v9;
    v16 = v19;
    if (v19)
    {
      goto LABEL_6;
    }
  }

  v17 = 0;
LABEL_9:
  NowPlaying.TrackMetadata.init(_:in:explicitBadgeConfigurator:)(v15, v17, v14, v13, a2);
  sub_1007D41BC(v12, v9);
}

uint64_t sub_1007D3AB4(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  type metadata accessor for MainActor();
  v2[14] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[15] = v4;
  v2[16] = v3;

  return _swift_task_switch(sub_1007D3B4C, v4, v3);
}

uint64_t sub_1007D3B4C(uint64_t a1)
{
  v2 = *(v1[12] + 16);
  v1[17] = v2;
  if (v2)
  {
    v3 = v1[13];
    v4 = *(v3 + 16);
    v1[5] = &type metadata for Player.ChangeCommand;
    v1[6] = &protocol witness table for Player.ChangeCommand;
    v1[2] = v2;
    v1[10] = _s19GlissandoDataSourceCMa();
    v1[11] = &off_1010C0528;
    v1[7] = v3;
    v5 = v2;

    v6 = Player.CommandOptions.init()();
    v8 = v7;
    v10 = v9;
    v1[18] = v9;
    v14 = (*(*v4 + 784) + **(*v4 + 784));
    v11 = swift_task_alloc();
    v1[19] = v11;
    *v11 = v1;
    v11[1] = sub_1007D3D78;

    return v14(v1 + 2, v6, v8 & 1, v10, v1 + 7);
  }

  else
  {

    sub_1007D4168();
    swift_allocError();
    swift_willThrow();
    v13 = v1[1];

    return v13();
  }
}

uint64_t sub_1007D3D78(void *a1)
{
  v4 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {

    v5 = *(v4 + 120);
    v6 = *(v4 + 128);
    v7 = sub_1007D3F38;
  }

  else
  {
    v8 = *(v4 + 144);

    sub_1000095E8(v4 + 56, &unk_101183910, &unk_100EBDD00);
    sub_10000959C((v4 + 16));
    v5 = *(v4 + 120);
    v6 = *(v4 + 128);
    v7 = sub_1007D3ECC;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_1007D3ECC()
{
  v1 = *(v0 + 136);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1007D3F38()
{
  v1 = v0[17];

  sub_1000095E8((v0 + 7), &unk_101183910, &unk_100EBDD00);
  sub_10000959C(v0 + 2);
  v2 = v0[1];

  return v2();
}

uint64_t sub_1007D3FC4()
{

  sub_100020438(*(v0 + 24), *(v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_1007D4044(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002F3F4;

  return sub_1007D3AB4(a1);
}

uint64_t sub_1007D40D8()
{
  v1 = *(*v0 + 40);

  return v1;
}

unint64_t sub_1007D4110()
{
  result = qword_10119C108;
  if (!qword_10119C108)
  {
    type metadata accessor for NowPlaying.TrackMetadata(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10119C108);
  }

  return result;
}

unint64_t sub_1007D4168()
{
  result = qword_1011A3CE8;
  if (!qword_1011A3CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A3CE8);
  }

  return result;
}

void sub_1007D41BC(void *a1, void *a2)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_1007D4200@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for IndexPath();
  v24 = *(v4 - 8);
  __chkstk_darwin();
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v23 - v7;
  *&v9 = __chkstk_darwin().n128_u64[0];
  v11 = &v23 - v10;
  v12 = [v2 playingItemIndexPath];
  if (v12)
  {
    v23 = a1;
    v13 = v12;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = *(v24 + 32);
    v14(v11, v8, v4);
    v15 = [v2 items];
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v17 = [v15 globalIndexForIndexPath:isa];

    if (v17 >= 1 && (v18 = [v2 items], v19 = objc_msgSend(v18, "indexPathForGlobalIndex:", v17 - 1), v18, v19))
    {
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v24 + 8))(v11, v4);
      v20 = v23;
      v14(v23, v6, v4);
      return (*(v24 + 56))(v20, 0, 1, v4);
    }

    else
    {
      (*(v24 + 8))(v11, v4);
      return (*(v24 + 56))(v23, 1, 1, v4);
    }
  }

  else
  {
    v22 = *(v24 + 56);

    return v22(a1, 1, 1, v4);
  }
}

id sub_1007D44C4(void (*a1)(__n128))
{
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v4 = &v14 - v3;
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin();
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v7);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1000095E8(v4, &unk_10118BCE0, &qword_100EC6450);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v9, v4, v5);
    v11 = [v1 items];
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v13 = [v11 itemAtIndexPath:isa];

    (*(v6 + 8))(v9, v5);
    return v13;
  }
}

uint64_t sub_1007D469C@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for IndexPath();
  v26 = *(v4 - 8);
  __chkstk_darwin();
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v25 - v7;
  *&v9 = __chkstk_darwin().n128_u64[0];
  v11 = &v25 - v10;
  v12 = [v2 playingItemIndexPath];
  if (v12)
  {
    v25 = a1;
    v13 = v12;
    static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = *(v26 + 32);
    v14(v11, v8, v4);
    v15 = [v2 items];
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v17 = [v15 globalIndexForIndexPath:isa];

    v18 = [v2 items];
    v19 = [v18 totalItemCount];

    if (v17 < v19 && (v20 = [v2 items], v21 = objc_msgSend(v20, "indexPathForGlobalIndex:", v17 + 1), v20, v21))
    {
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v26 + 8))(v11, v4);
      v22 = v25;
      v14(v25, v6, v4);
      return (*(v26 + 56))(v22, 0, 1, v4);
    }

    else
    {
      (*(v26 + 8))(v11, v4);
      return (*(v26 + 56))(v25, 1, 1, v4);
    }
  }

  else
  {
    v24 = *(v26 + 56);

    return v24(a1, 1, 1, v4);
  }
}

unint64_t sub_1007D49A0()
{
  result = qword_1011A3CF0;
  if (!qword_1011A3CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A3CF0);
  }

  return result;
}

uint64_t sub_1007D49F4(void *a1, uint64_t a2, uint64_t a3)
{
  v44 = a3;
  type metadata accessor for UIBackgroundConfiguration();
  __chkstk_darwin();
  v46 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011A3D20, &qword_100EE3DC8);
  __chkstk_darwin();
  v45 = &v41 - v5;
  sub_10010FC20(&unk_101183AB0, &qword_100EBF4D0);
  __chkstk_darwin();
  v49 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v41 - v7;
  __chkstk_darwin();
  v48 = &v41 - v9;
  __chkstk_darwin();
  v11 = &v41 - v10;
  __chkstk_darwin();
  v13 = &v41 - v12;
  __chkstk_darwin();
  v15 = &v41 - v14;
  *&v16 = __chkstk_darwin().n128_u64[0];
  v18 = &v41 - v17;
  v19 = [a1 isFocused];
  v47 = v11;
  if ((v19 & 1) != 0 || ([a1 isSelected] & 1) != 0 || objc_msgSend(a1, "isHighlighted"))
  {
    static UIButton.Configuration.prominentGlass()();
    v20 = 1;
  }

  else
  {
    static UIButton.Configuration.glass()();
    v20 = 0;
  }

  v21 = type metadata accessor for UIButton.Configuration();
  v22 = *(v21 - 8);
  (*(v22 + 56))(v18, 0, 1, v21);
  UIButton.configuration.setter();
  UIButton.configuration.getter();
  v50 = *(v22 + 48);
  if (v50(v15, 1, v21))
  {
    sub_1005ED588(v15, v13);
    UIButton.configuration.setter();
    sub_1005ED5F8(v15);
  }

  else
  {
    sub_1007D5304();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v24 = [ObjCClassFromMetadata configurationWithScale:1];
    v42 = v24;
    v25 = [ObjCClassFromMetadata configurationWithWeight:5];
    v26 = [v24 configurationByApplyingConfiguration:v25];
    v43 = v20;

    v20 = v43;
    UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
    UIButton.configuration.setter();
  }

  v27 = v47;
  UIButton.configuration.getter();
  v28 = v50(v27, 1, v21);
  v29 = v48;
  if (v28)
  {
    sub_1005ED588(v27, v13);
    UIButton.configuration.setter();
    sub_1005ED5F8(v27);
  }

  else
  {
    *(swift_allocObject() + 16) = v20;
    v30 = v45;
    UIConfigurationColorTransformer.init(_:)();
    v31 = type metadata accessor for UIConfigurationColorTransformer();
    (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
    UIButton.Configuration.imageColorTransformer.setter();
    UIButton.configuration.setter();
  }

  UIButton.configuration.getter();
  if (v50(v29, 1, v21))
  {
    sub_1005ED588(v29, v13);
    UIButton.configuration.setter();
    sub_1005ED5F8(v29);
  }

  else
  {
    v32 = String._bridgeToObjectiveC()();
    v33 = [objc_opt_self() systemImageNamed:v32];

    UIButton.Configuration.image.setter();
    UIButton.configuration.setter();
  }

  UIButton.configuration.getter();
  if (v50(v8, 1, v21))
  {
    sub_1005ED588(v8, v13);
    UIButton.configuration.setter();
    sub_1005ED5F8(v8);
  }

  else
  {
    static UIBackgroundConfiguration.clear()();
    UIButton.Configuration.background.setter();
    UIButton.configuration.setter();
  }

  v34 = v49;
  UIButton.configuration.getter();
  if (v50(v34, 1, v21))
  {
    v35 = v49;
    sub_1005ED588(v49, v13);
    UIButton.configuration.setter();
    return sub_1005ED5F8(v35);
  }

  else
  {
    v37 = objc_opt_self();
    v38 = &selRef__carSystemFocusColor;
    if (!v20)
    {
      v38 = &selRef_clearColor;
    }

    v39 = [v37 *v38];
    v40 = UIButton.Configuration.background.modify();
    UIBackgroundConfiguration.backgroundColor.setter();
    v40(v51, 0);
    return UIButton.configuration.setter();
  }
}

id sub_1007D5164(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CarPlayAccessoryButton();
  v11.receiver = objc_allocWithZone(v4);
  v11.super_class = v4;
  v5 = objc_msgSendSuper2(&v11, "initWithFrame:", 0.0, 0.0, 36.0, 36.0);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v10[4] = sub_1007D529C;
  v10[5] = v6;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_10027D328;
  v10[3] = &unk_1010C05F0;
  v7 = _Block_copy(v10);
  v8 = v5;

  [v8 setConfigurationUpdateHandler:v7];
  _Block_release(v7);

  [v8 setNeedsUpdateConfiguration];
  return v8;
}

id sub_1007D52A4()
{
  v1 = *(v0 + 16);
  v2 = objc_opt_self();
  v3 = &selRef__carSystemFocusLabelColor;
  if (!v1)
  {
    v3 = &selRef_labelColor;
  }

  v4 = [v2 *v3];

  return v4;
}

unint64_t sub_1007D5304()
{
  result = qword_1011A3D28;
  if (!qword_1011A3D28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1011A3D28);
  }

  return result;
}

void sub_1007D53D4(char *a1, void (*a2)(char *, char *, uint64_t), int a3, uint64_t a4, uint64_t a5, void (*a6)(char *, char *, uint64_t, __n128), void *a7, void *a8, void (*a9)(_OWORD *__return_ptr, uint64_t), uint64_t a10, uint64_t a11)
{
  v213 = a8;
  v234 = a7;
  v224 = a5;
  v225 = a6;
  v223 = a4;
  v232 = a3;
  v239 = a1;
  v240 = a2;
  sub_10010FC20(&unk_101181520, &qword_100EBCC60);
  __chkstk_darwin();
  v204 = &v189 - v11;
  v197 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v198 = &v189 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = *(type metadata accessor for PlaybackIntentDescriptor(0) - 8);
  __chkstk_darwin();
  v201 = v13;
  v202 = &v189 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v203 = &v189 - v14;
  v15 = type metadata accessor for Logger();
  v205 = *(v15 - 8);
  v206 = v15;
  __chkstk_darwin();
  v216 = &v189 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118CDB0, &unk_100EC0360);
  __chkstk_darwin();
  v212 = &v189 - v17;
  v18 = type metadata accessor for MusicPlaybackIntentDescriptor();
  v214 = *(v18 - 8);
  v215 = v18;
  __chkstk_darwin();
  v199 = &v189 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v20 = *(v219 - 8);
  __chkstk_darwin();
  v218 = &v189 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v220 = &v189 - v22;
  sub_10010FC20(&unk_10119F3A0, &qword_100EC7CD0);
  __chkstk_darwin();
  v221 = &v189 - v23;
  sub_10010FC20(&qword_1011846D0, &qword_100EDD110);
  __chkstk_darwin();
  v228 = &v189 - v24;
  sub_10010FC20(&qword_101183A20, &unk_100EBCF80);
  __chkstk_darwin();
  v227 = &v189 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v233 = &v189 - v26;
  __chkstk_darwin();
  v244 = &v189 - v27;
  v230 = type metadata accessor for ContainerDetail.Source(0);
  __chkstk_darwin();
  v226 = &v189 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v231 = &v189 - v29;
  __chkstk_darwin();
  v243 = &v189 - v30;
  v191 = _s10TVEpisodesV5ScopeOMa(0);
  __chkstk_darwin();
  v192 = &v189 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for TVSeason();
  v194 = *(v32 - 8);
  v195 = v32;
  __chkstk_darwin();
  v193 = &v189 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = type metadata accessor for Playlist();
  v209 = *(v217 - 8);
  __chkstk_darwin();
  v207 = &v189 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v208 = &v189 - v35;
  __chkstk_darwin();
  v242 = &v189 - v36;
  v229 = type metadata accessor for Album();
  v238 = *(v229 - 8);
  __chkstk_darwin();
  v222 = &v189 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v236 = &v189 - v38;
  __chkstk_darwin();
  v237 = &v189 - v39;
  __chkstk_darwin();
  v246 = &v189 - v40;
  v241 = type metadata accessor for RecentlyAddedMusicItem();
  v245 = *(v241 - 8);
  __chkstk_darwin();
  v190 = &v189 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v196 = &v189 - v42;
  __chkstk_darwin();
  v235 = &v189 - v43;
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v211 = &v189 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v46 = &v189 - v45;
  v47 = type metadata accessor for IndexPath();
  v48 = *(v47 - 8);
  v49 = *(v48 + 64);
  __chkstk_darwin();
  v50 = &v189 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v52 = &v189 - v51;
  sub_1000089F8(v240, v46, &unk_10118BCE0, &qword_100EC6450);
  v53 = (*(v48 + 48))(v46, 1, v47);
  v210 = v48;
  if (v53 == 1)
  {
    sub_1000095E8(v46, &unk_10118BCE0, &qword_100EC6450);
    v240 = 0;
  }

  else
  {
    v240 = *(v48 + 32);
    v240(v52, v46, v47);
    v189 = sub_100009F78(0, &qword_101184710, UIViewControllerTransition_ptr);
    v54 = [objc_allocWithZone(UIZoomTransitionOptions) init];
    UIZoomTransitionOptions.alignmentRectProvider.setter();
    v55 = swift_allocObject();
    v223 = v20;
    v56 = v55;
    swift_unknownObjectWeakInit();
    (*(v48 + 16))(v50, v52, v47);
    v57 = (*(v48 + 80) + 24) & ~*(v48 + 80);
    v58 = swift_allocObject();
    *(v58 + 16) = v56;
    v240((v58 + v57), v50, v47);

    v240 = static UIViewControllerTransition.zoom(options:sourceViewProvider:)();

    (*(v48 + 8))(v52, v47);
    v20 = v223;
  }

  v59 = v245;
  v60 = v235;
  v61 = v239;
  v62 = v241;
  v225 = *(v245 + 16);
  (v225)(v235, v239, v241);
  v63 = (*(v59 + 88))(v60, v62);
  v64 = v242;
  v65 = v246;
  if (v63 == enum case for RecentlyAddedMusicItem.album(_:))
  {
    (*(v59 + 96))(v60, v62);
    v66 = v238;
    v67 = v229;
    (*(v238 + 32))(v65, v60, v229);
    v68 = [v247 traitCollection];
    sub_100217F14();
    UITraitCollection.subscript.getter();

    v69 = sub_10049CB78();

    LOBYTE(v68) = v69 | v232;
    v70 = *(v66 + 16);
    v71 = v237;
    v70(v237, v65, v67);
    v72 = sub_10010FC20(&qword_10118A430, &qword_100EC8F70);
    v73 = *(v72 + 64);
    v74 = v243;
    *(v243 + *(v72 + 48)) = v68 & 1;
    v75 = _s6AlbumsV5ScopeOMa(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v75 - 8) + 56))(v74, 0, 1, v75);
    v76 = v74;
    *(v74 + v73) = 0;
    swift_storeEnumTagMultiPayload();
    v77 = type metadata accessor for URL();
    v78 = v244;
    (*(*(v77 - 8) + 56))(v244, 1, 1, v77);
    v79 = v236;
    v70(v236, v71, v67);
    v80 = v76;
    v81 = v231;
    sub_1007E82DC(v80, v231, type metadata accessor for ContainerDetail.Source);
    v82 = v78;
    v83 = v233;
    sub_1000089F8(v82, v233, &qword_101183A20, &unk_100EBCF80);
    v84 = v222;
    v70(v222, v79, v67);
    v85 = v226;
    sub_1007E82DC(v81, v226, type metadata accessor for ContainerDetail.Source);
    v86 = type metadata accessor for AlbumDetailDataSource.ProminentTrackSource(0);
    v87 = v228;
    (*(*(v86 - 8) + 56))(v228, 1, 1, v86);
    v88 = v227;
    sub_1000089F8(v83, v227, &qword_101183A20, &unk_100EBCF80);
    v89 = sub_1004E34D0(v84, v85, v87, v88);
    v90 = v83;
    v91 = v240;
    sub_1000095E8(v90, &qword_101183A20, &unk_100EBCF80);
    sub_1007E8344(v81, type metadata accessor for ContainerDetail.Source);
    v92 = *(v238 + 8);
    v92(v236, v67);
    v93 = objc_allocWithZone(type metadata accessor for ContainerDetail.ViewController(0));
    v94 = sub_100137F64(v89, v93);
    sub_1000095E8(v244, &qword_101183A20, &unk_100EBCF80);
    sub_1007E8344(v243, type metadata accessor for ContainerDetail.Source);
    v92(v237, v67);
    v95 = v247;
    *&v94[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_artworkCachingReference] = *(*&v247[*v234] + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_cachingReference);

    [v94 setPreferredTransition:v91];
    v96 = [v95 navigationController];
    if (v96)
    {
      v97 = v96;
      v98 = v221;
      UIViewController.traitOverrides.getter();
      v99 = type metadata accessor for UITraitOverrides();
      (*(*(v99 - 8) + 56))(v98, 0, 1, v99);
      UINavigationController.push(_:traitOverrides:animated:)(v94, v98, 1);

      sub_1000095E8(v98, &unk_10119F3A0, &qword_100EC7CD0);
      v92(v246, v67);
      return;
    }

    v92(v246, v67);

    goto LABEL_13;
  }

  v100 = v247;
  if (v63 == enum case for RecentlyAddedMusicItem.musicMovie(_:) || v63 == enum case for RecentlyAddedMusicItem.musicVideo(_:))
  {
LABEL_18:
    v139 = *(v59 + 8);
    v245 = v59 + 8;
    v246 = v139;
    (v139)(v60, v62);
    v140 = v220;
    sub_100121C08(v61, v220);
    v142 = v218;
    v141 = v219;
    (*(v20 + 104))(v218, enum case for MusicPlayer.PlayabilityStatus.playable(_:), v219);
    v143 = static MusicPlayer.PlayabilityStatus.== infix(_:_:)();
    v146 = *(v20 + 8);
    v144 = v20 + 8;
    v145 = v146;
    (v146)(v142, v141);
    if (v143)
    {
      v223 = v144;
      v147 = v247;
      v148 = *(*&v247[*v213] + 48);
      swift_beginAccess();
      v149 = *(v148 + 80);
      v252[3] = *(v148 + 64);
      v252[4] = v149;
      v252[5] = *(v148 + 96);
      v253 = *(v148 + 112);
      v150 = *(v148 + 32);
      v252[0] = *(v148 + 16);
      v252[1] = v150;
      v252[2] = *(v148 + 48);
      sub_10003D868(v252, v249);
      v151 = v212;
      sub_100455348(v61, v212);
      sub_10003D90C(v252);
      v152 = v214;
      v153 = v215;
      if ((*(v214 + 48))(v151, 1, v215) == 1)
      {
        sub_1000095E8(v151, &unk_10118CDB0, &unk_100EC0360);
        v154 = Logger.playbackController.unsafeMutableAddressor();
        v155 = v205;
        v156 = v206;
        (*(v205 + 16))(v216, v154, v206);
        v157 = v196;
        v158 = v61;
        v159 = v241;
        v160 = v225;
        (v225)(v196, v158, v241);
        v161 = Logger.logObject.getter();
        LODWORD(v247) = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v161, v247))
        {
          v162 = swift_slowAlloc();
          v163 = swift_slowAlloc();
          v249[0] = v163;
          *v162 = 136315138;
          (v160)(v190, v157, v159);
          v164 = v145;
          v165 = String.init<A>(describing:)();
          v167 = v166;
          (v246)(v157, v159);
          v168 = sub_1000105AC(v165, v167, v249);

          *(v162 + 4) = v168;
          _os_log_impl(&_mh_execute_header, v161, v247, "Could not play recently added item=%s", v162, 0xCu);
          sub_10000959C(v163);

          (*(v205 + 8))(v216, v206);
          v164(v220, v219);
        }

        else
        {

          (v246)(v157, v159);
          (*(v155 + 8))(v216, v156);
          (v145)(v220, v141);
        }
      }

      else
      {
        v245 = a11;
        v173 = *(v152 + 32);
        v246 = v145;
        v174 = v199;
        v173(v199, v151, v153);
        v175 = v198;
        (*(v152 + 16))(v198, v174, v153);
        swift_storeEnumTagMultiPayload();
        v176 = v152;
        sub_10048CE30(v249);
        v248[0] = v147;
        v177 = v147;
        v178 = String.init<A>(reflecting:)();
        v248[3] = &type metadata for Player.CommandIssuerIdentity;
        v248[4] = &protocol witness table for Player.CommandIssuerIdentity;
        v248[0] = v178;
        v248[1] = v179;
        v180 = v177;
        v188 = v147;
        v181 = v203;
        PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v175, v249, 3, 0, 0, 1, 0, 1, v203, v188, v248);
        v182 = type metadata accessor for TaskPriority();
        v183 = v204;
        (*(*(v182 - 8) + 56))(v204, 1, 1, v182);
        v184 = v202;
        sub_1007E82DC(v181, v202, type metadata accessor for PlaybackIntentDescriptor);
        type metadata accessor for MainActor();
        v185 = static MainActor.shared.getter();
        v186 = (*(v200 + 80) + 32) & ~*(v200 + 80);
        v187 = swift_allocObject();
        *(v187 + 16) = v185;
        *(v187 + 24) = &protocol witness table for MainActor;
        sub_1007E7C44(v184, v187 + v186, type metadata accessor for PlaybackIntentDescriptor);
        sub_1001F4F78(0, 0, v183, v245, v187);

        sub_1007E8344(v181, type metadata accessor for PlaybackIntentDescriptor);
        (*(v176 + 8))(v174, v153);
        (v246)(v220, v219);
      }
    }

    else
    {
      sub_10048CE30(v249);
      v169 = v211;
      (*(v210 + 56))(v211, 1, 1, v47);
      a9(v252, v169);
      sub_1000095E8(v169, &unk_10118BCE0, &qword_100EC6450);
      v170 = v250;
      v171 = v251;
      v172 = sub_10000954C(v249, v250);
      sub_10053A5D0(v140, v172, v252, v170, v171);

      sub_10012BA6C(v252);
      (v145)(v140, v141);
      sub_10000959C(v249);
    }

    return;
  }

  if (v63 == enum case for RecentlyAddedMusicItem.playlist(_:))
  {
    (*(v59 + 96))(v60, v62);
    v101 = v100;
    v102 = v209;
    v103 = v217;
    (*(v209 + 32))(v64, v60, v217);
    v104 = v64;
    v105 = [v101 traitCollection];
    sub_100217F14();
    UITraitCollection.subscript.getter();

    LOBYTE(v101) = sub_10049CB78();

    LOBYTE(v105) = v101 | v232;
    v106 = *(v102 + 16);
    v107 = v208;
    v106(v208, v104, v103);
    v108 = sub_10010FC20(&qword_10118A430, &qword_100EC8F70);
    v109 = *(v108 + 64);
    v110 = v243;
    *(v243 + *(v108 + 48)) = v105 & 1;
    v111 = _s6AlbumsV5ScopeOMa(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v111 - 8) + 56))(v110, 0, 1, v111);
    *(v110 + v109) = 0;
    swift_storeEnumTagMultiPayload();
    v112 = type metadata accessor for URL();
    v113 = v244;
    (*(*(v112 - 8) + 56))(v244, 1, 1, v112);
    v114 = v207;
    v106(v207, v107, v103);
    v115 = v231;
    sub_1007E82DC(v110, v231, type metadata accessor for ContainerDetail.Source);
    v116 = v233;
    sub_1000089F8(v113, v233, &qword_101183A20, &unk_100EBCF80);
    v117 = sub_100866288(v114, v115, 0, 0, v116, 0);
    v118 = objc_allocWithZone(type metadata accessor for ContainerDetail.ViewController(0));
    v94 = sub_100137F48(v117, v118);
    sub_1000095E8(v113, &qword_101183A20, &unk_100EBCF80);
    sub_1007E8344(v110, type metadata accessor for ContainerDetail.Source);
    v119 = *(v102 + 8);
    v120 = v107;
    v121 = v217;
    v119(v120, v217);
    v122 = v247;
    *&v94[OBJC_IVAR____TtCV5Music15ContainerDetail14ViewController_artworkCachingReference] = *(*&v247[*v234] + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_cachingReference);

    v123 = v240;
    [v94 setPreferredTransition:v240];
    v124 = [v122 navigationController];
    if (v124)
    {
      v125 = v124;
      v126 = v221;
      UIViewController.traitOverrides.getter();
      v127 = type metadata accessor for UITraitOverrides();
      (*(*(v127 - 8) + 56))(v126, 0, 1, v127);
      UINavigationController.push(_:traitOverrides:animated:)(v94, v126, 1);

      sub_1000095E8(v126, &unk_10119F3A0, &qword_100EC7CD0);
      v119(v242, v121);
      return;
    }

    v119(v242, v121);

    goto LABEL_13;
  }

  if (v63 != enum case for RecentlyAddedMusicItem.tvSeason(_:))
  {
    if (v63 != enum case for RecentlyAddedMusicItem.uploadedVideo(_:))
    {

      (*(v59 + 8))(v60, v62);
      return;
    }

    goto LABEL_18;
  }

  (*(v59 + 96))(v60, v62);
  v129 = v193;
  v128 = v194;
  v130 = v195;
  (*(v194 + 32))(v193, v60, v195);
  v131 = v192;
  (*(v128 + 16))(v192, v129, v130);
  swift_storeEnumTagMultiPayload();
  v132 = [v100 traitCollection];
  sub_100217F14();
  UITraitCollection.subscript.getter();

  v133 = sub_10049CB78();

  v134 = objc_allocWithZone(type metadata accessor for LibraryTVEpisodesViewController(0));
  v94 = sub_10061A47C(v131, v133 & 1);
  v135 = [v100 navigationController];
  if (!v135)
  {
    (*(v128 + 8))(v129, v130);

LABEL_13:
    return;
  }

  v136 = v135;
  v137 = v221;
  UIViewController.traitOverrides.getter();
  v138 = type metadata accessor for UITraitOverrides();
  (*(*(v138 - 8) + 56))(v137, 0, 1, v138);
  UINavigationController.push(_:traitOverrides:animated:)(v94, v137, 1);

  sub_1000095E8(v137, &unk_10119F3A0, &qword_100EC7CD0);
  (*(v128 + 8))(v129, v130);
}

id sub_1007D7058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v6 = Strong;
  v7 = a4();

  v8 = sub_1005FF72C();
  return v8;
}

double sub_1007D70E4(uint64_t a1, void *a2, int a3)
{
  v38 = a2;
  v37 = a3;
  v4 = type metadata accessor for MusicVideo();
  v34 = *(v4 - 8);
  v35 = v4;
  v5 = *(v34 + 64);
  __chkstk_darwin();
  __chkstk_darwin();
  v36 = &v33 - v6;
  v7 = type metadata accessor for RecentlyAddedMusicItem();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin();
  v13 = &v33 - v12;
  v14 = *(v8 + 16);
  v14(&v33 - v12, a1, v7, v11);
  v15 = (*(v8 + 88))(v13, v7);
  if (v15 == enum case for RecentlyAddedMusicItem.album(_:))
  {
LABEL_2:
    (*(v8 + 8))(v13, v7);
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (v14)(v10, a1, v7);
    v17 = (*(v8 + 80) + 24) & ~*(v8 + 80);
    v18 = v17 + v9;
    v19 = swift_allocObject();
    *(v19 + 16) = v16;
    (*(v8 + 32))(v19 + v17, v10, v7);
    *(v19 + v18) = v37 & 1;
    v43 = sub_1007E7F8C;
    v44 = v19;
    aBlock = _NSConcreteStackBlock;
    v40 = 1107296256;
    v41 = sub_10002BC98;
    v42 = &unk_1010C0C78;
    v20 = _Block_copy(&aBlock);

    [v38 addAnimations:v20];
    _Block_release(v20);
    return result;
  }

  v33 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v15 == enum case for RecentlyAddedMusicItem.musicMovie(_:))
  {
    goto LABEL_4;
  }

  if (v15 != enum case for RecentlyAddedMusicItem.musicVideo(_:))
  {
    if (v15 == enum case for RecentlyAddedMusicItem.playlist(_:) || v15 == enum case for RecentlyAddedMusicItem.tvSeason(_:))
    {
      goto LABEL_2;
    }

LABEL_4:
    (*(v8 + 8))(v13, v7);
    return result;
  }

  (*(v8 + 96))(v13, v7);
  v23 = v34;
  v22 = v35;
  v24 = *(v34 + 32);
  v25 = v36;
  v24(v36, v13, v35);
  swift_beginAccess();

  MusicLibrary.state<A>(for:)();

  if ((MusicVideo.supportsContainerNavigation(itemState:)() & 1) != 0 && (v26 = sub_10003169C()) != 0)
  {
    v27 = v26;
    v28 = v33;
    (*(v23 + 16))(v33, v25, v22);
    v29 = (*(v23 + 80) + 24) & ~*(v23 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = v27;
    v24((v30 + v29), v28, v22);
    v43 = sub_1007E84D0;
    v44 = v30;
    aBlock = _NSConcreteStackBlock;
    v40 = 1107296256;
    v41 = sub_10002BC98;
    v42 = &unk_1010C0C00;
    v31 = _Block_copy(&aBlock);

    [v38 addAnimations:v31];

    _Block_release(v31);

    (*(v23 + 8))(v36, v22);
  }

  else
  {
    (*(v23 + 8))(v25, v22);
  }

  return result;
}

double sub_1007D7658(uint64_t a1, void *a2, int a3)
{
  v38 = a2;
  v37 = a3;
  v4 = type metadata accessor for MusicVideo();
  v34 = *(v4 - 8);
  v35 = v4;
  v5 = *(v34 + 64);
  __chkstk_darwin();
  __chkstk_darwin();
  v36 = &v33 - v6;
  v7 = type metadata accessor for RecentlyAddedMusicItem();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin();
  v13 = &v33 - v12;
  v14 = *(v8 + 16);
  v14(&v33 - v12, a1, v7, v11);
  v15 = (*(v8 + 88))(v13, v7);
  if (v15 == enum case for RecentlyAddedMusicItem.album(_:))
  {
LABEL_2:
    (*(v8 + 8))(v13, v7);
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (v14)(v10, a1, v7);
    v17 = (*(v8 + 80) + 24) & ~*(v8 + 80);
    v18 = v17 + v9;
    v19 = swift_allocObject();
    *(v19 + 16) = v16;
    (*(v8 + 32))(v19 + v17, v10, v7);
    *(v19 + v18) = v37 & 1;
    v43 = sub_1007E7A38;
    v44 = v19;
    aBlock = _NSConcreteStackBlock;
    v40 = 1107296256;
    v41 = sub_10002BC98;
    v42 = &unk_1010C0778;
    v20 = _Block_copy(&aBlock);

    [v38 addAnimations:v20];
    _Block_release(v20);
    return result;
  }

  v33 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v15 == enum case for RecentlyAddedMusicItem.musicMovie(_:))
  {
    goto LABEL_4;
  }

  if (v15 != enum case for RecentlyAddedMusicItem.musicVideo(_:))
  {
    if (v15 == enum case for RecentlyAddedMusicItem.playlist(_:) || v15 == enum case for RecentlyAddedMusicItem.tvSeason(_:))
    {
      goto LABEL_2;
    }

LABEL_4:
    (*(v8 + 8))(v13, v7);
    return result;
  }

  (*(v8 + 96))(v13, v7);
  v23 = v34;
  v22 = v35;
  v24 = *(v34 + 32);
  v25 = v36;
  v24(v36, v13, v35);
  swift_beginAccess();

  MusicLibrary.state<A>(for:)();

  if ((MusicVideo.supportsContainerNavigation(itemState:)() & 1) != 0 && (v26 = sub_10003169C()) != 0)
  {
    v27 = v26;
    v28 = v33;
    (*(v23 + 16))(v33, v25, v22);
    v29 = (*(v23 + 80) + 24) & ~*(v23 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = v27;
    v24((v30 + v29), v28, v22);
    v43 = sub_1007E7A34;
    v44 = v30;
    aBlock = _NSConcreteStackBlock;
    v40 = 1107296256;
    v41 = sub_10002BC98;
    v42 = &unk_1010C0700;
    v31 = _Block_copy(&aBlock);

    [v38 addAnimations:v31];

    _Block_release(v31);

    (*(v23 + 8))(v36, v22);
  }

  else
  {
    (*(v23 + 8))(v25, v22);
  }

  return result;
}

void *sub_1007D7BCC(uint64_t a1, char *a2, char a3)
{
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v6 = (&v10 - v5);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = type metadata accessor for IndexPath();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    sub_1007D53D4(a2, v6, a3 & 1, &unk_1010C0C38, &unk_1010C0CD8, sub_1007E81F8, &OBJC_IVAR____TtC5Music25LibraryMainViewController_prefetchingController, &OBJC_IVAR____TtC5Music25LibraryMainViewController_recentlyAddedResponseController, sub_100376BCC, &unk_1010C0CB0, &unk_100EE3EB0);

    return sub_1000095E8(v6, &unk_10118BCE0, &qword_100EC6450);
  }

  return result;
}

void *sub_1007D7D50(uint64_t a1, char *a2, char a3)
{
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v6 = (&v10 - v5);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = type metadata accessor for IndexPath();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    sub_1007D53D4(a2, v6, a3 & 1, &unk_1010C0738, &unk_1010C07D8, sub_1007E7A50, &OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController_prefetchingController, &OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController_responseController, sub_100376F5C, &unk_1010C07B0, &unk_100ECA700);

    return sub_1000095E8(v6, &unk_10118BCE0, &qword_100EC6450);
  }

  return result;
}

unint64_t sub_1007D7F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void (*a7)(void *__return_ptr, char *), uint64_t a8, uint64_t a9)
{
  v115 = a8;
  v104 = a5;
  v105 = a7;
  v113 = a6;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v116 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = *(sub_10010FC20(&unk_1011838D0, &unk_100EC0320) - 8);
  v112 = *(v111 + 64);
  __chkstk_darwin();
  v114 = &v96 - v13;
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v15 = &v96 - v14;
  v108 = *(sub_10010FC20(&unk_1011845D0, &unk_100EBF380) - 8);
  __chkstk_darwin();
  v109 = v16;
  v110 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v119 = &v96 - v17;
  sub_10010FC20(&unk_10118CDB0, &unk_100EC0360);
  __chkstk_darwin();
  v19 = &v96 - v18;
  sub_10010FC20(&unk_1011838E0, &unk_100EC1670);
  __chkstk_darwin();
  v106 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v107 = &v96 - v21;
  __chkstk_darwin();
  v23 = &v96 - v22;
  __chkstk_darwin();
  v25 = &v96 - v24;
  sub_10010FC20(&unk_10118AB20, &unk_100EBF390);
  __chkstk_darwin();
  v117 = &v96 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v118 = &v96 - v27;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v29 = Strong;
  v102 = v11;
  v103 = v10;
  sub_10010FC20(&unk_101183900, &unk_100EC1680);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_100EBC6B0;
  v31 = v29;
  sub_10048CE30((v30 + 32));
  v32 = [v31 traitCollection];
  sub_100137E8C();
  UITraitCollection.subscript.getter();

  v101 = v134[0];
  sub_1000089F8(a4, v19, &unk_10118CDB0, &unk_100EC0360);
  PlaybackIntentDescriptor.IntentType.init(_:)(v19, v25);
  memset(v134, 0, 40);
  if (qword_10117F608 != -1)
  {
    swift_once();
  }

  v33 = qword_101218AD8;
  sub_1000089F8(v25, v23, &unk_1011838E0, &unk_100EC1670);
  v34 = v33;
  v35 = UIViewController.playActivityInformation.getter();
  v99 = v36;
  v100 = v35;
  v38 = v37;
  v40 = v39;
  sub_1000089F8(v134, &v126, &unk_101183910, &unk_100EBDD00);
  v98 = v34;
  if (*(&v127 + 1))
  {
    sub_100059A8C(&v126, &v130);
  }

  else
  {
    *&v135 = v31;
    sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
    v42 = v31;
    sub_10010FC20(&unk_101183920, &unk_100EC0330);
    if (swift_dynamicCast())
    {
      sub_100059A8C(&v138, &v130);
    }

    else
    {
      v140 = 0;
      v138 = 0u;
      v139 = 0u;
      *&v130 = v42;
      v43 = v42;
      v44 = String.init<A>(reflecting:)();
      v131 = &type metadata for Player.CommandIssuerIdentity;
      v132 = &protocol witness table for Player.CommandIssuerIdentity;
      *&v130 = v44;
      *(&v130 + 1) = v45;
      if (*(&v139 + 1))
      {
        sub_1000095E8(&v138, &unk_101183910, &unk_100EBDD00);
      }
    }

    v34 = v98;
    if (*(&v127 + 1))
    {
      sub_1000095E8(&v126, &unk_101183910, &unk_100EBDD00);
    }
  }

  v46 = v118;
  Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v34, v23, v100, v99, v38, v40, &v130, v118);

  sub_1000095E8(v134, &unk_101183910, &unk_100EBDD00);
  sub_1000095E8(v25, &unk_1011838E0, &unk_100EC1670);
  v47 = type metadata accessor for Actions.PlaybackContext(0);
  v48 = *(v47 - 8);
  (*(v48 + 56))(v46, 0, 1, v47);
  v49 = type metadata accessor for PlaylistContext(0);
  (*(*(v49 - 8) + 56))(v119, 1, 1, v49);
  v50 = type metadata accessor for IndexPath();
  v51 = *(v50 - 8);
  (*(v51 + 16))(v15, v104, v50);
  (*(v51 + 56))(v15, 0, 1, v50);
  v105(v134, v15);
  sub_1000095E8(v15, &unk_10118BCE0, &qword_100EC6450);
  sub_100008FE4(v30 + 32, v133);

  sub_1000089F8(v134, &v126, &unk_1011845E0, &unk_100EBF3A0);
  if (v129 == 1)
  {
    v140 = 0;
    v138 = 0u;
    v139 = 0u;
    v141 = xmmword_100EBCEF0;
    PresentationSource.init(viewController:position:)(v31, &v138, &v130);
    v52 = v117;
    if (v129 != 1)
    {
      sub_1000095E8(&v126, &unk_1011845E0, &unk_100EBF3A0);
    }
  }

  else
  {
    sub_10012B828(&v126, &v130);
    v52 = v117;
  }

  swift_getObjectType();
  v53 = swift_conformsToProtocol2();
  if (v53)
  {
    v99 = v53;
    v54 = v31;
    v105 = v31;
  }

  else
  {
    v105 = 0;
    v99 = 0;
  }

  v100 = a9;
  v104 = swift_allocBox();
  v56 = v55;
  sub_1000089F8(v118, v52, &unk_10118AB20, &unk_100EBF390);
  v57 = *(v48 + 48);
  if (v57(v52, 1, v47) == 1)
  {
    v58 = type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
    v59 = v107;
    (*(*(v58 - 8) + 56))(v107, 1, 1, v58);
    v128 = 0;
    v126 = 0u;
    v127 = 0u;
    sub_1000089F8(v59, v106, &unk_1011838E0, &unk_100EC1670);
    v60 = v98;
    v61 = UIViewController.playActivityInformation.getter();
    v97 = v63;
    v98 = v62;
    v65 = v64;
    sub_1000089F8(&v126, &v124, &unk_101183910, &unk_100EBDD00);
    if (v125)
    {
      sub_100059A8C(&v124, &v135);
    }

    else
    {
      v96 = v60;
      v123 = v31;
      sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
      v66 = v31;
      sub_10010FC20(&unk_101183920, &unk_100EC0330);
      if (swift_dynamicCast())
      {
        sub_100059A8C(&v120, &v135);
        v52 = v117;
      }

      else
      {
        v122 = 0;
        v120 = 0u;
        v121 = 0u;
        *&v135 = v66;
        v67 = v66;
        v68 = String.init<A>(reflecting:)();
        *(&v136 + 1) = &type metadata for Player.CommandIssuerIdentity;
        v137 = &protocol witness table for Player.CommandIssuerIdentity;
        *&v135 = v68;
        *(&v135 + 1) = v69;
        v52 = v117;
        if (*(&v121 + 1))
        {
          sub_1000095E8(&v120, &unk_101183910, &unk_100EBDD00);
        }
      }

      v60 = v96;
      if (v125)
      {
        sub_1000095E8(&v124, &unk_101183910, &unk_100EBDD00);
      }
    }

    Actions.PlaybackContext.init(controller:intent:playActivityInformation:issuer:)(v60, v106, v61, v98, v65, v97, &v135, v56);
    sub_1000095E8(&v126, &unk_101183910, &unk_100EBDD00);
    sub_1000095E8(v107, &unk_1011838E0, &unk_100EC1670);
    if (v57(v52, 1, v47) != 1)
    {
      sub_1000095E8(v52, &unk_10118AB20, &unk_100EBF390);
    }
  }

  else
  {
    sub_1007E7C44(v52, v56, type metadata accessor for Actions.PlaybackContext);
  }

  v70 = *(v47 + 28);
  sub_1000089F8(&v56[v70], &v135, &unk_101183910, &unk_100EBDD00);
  if (*(&v136 + 1))
  {
    sub_100059A8C(&v135, &v126);
  }

  else
  {
    *&v126 = v31;
    v71 = v31;
    v72 = String.init<A>(reflecting:)();
    *(&v127 + 1) = &type metadata for Player.CommandIssuerIdentity;
    v128 = &protocol witness table for Player.CommandIssuerIdentity;
    *&v126 = v72;
    *(&v126 + 1) = v73;
    if (*(&v136 + 1))
    {
      sub_1000095E8(&v135, &unk_101183910, &unk_100EBDD00);
    }
  }

  sub_10010FC20(&unk_101183930, &unk_100EC1690);
  v74 = swift_allocObject();
  *(v74 + 16) = xmmword_100EBDC20;
  *(v74 + 56) = &type metadata for Player.CommandIssuerIdentity;
  *(v74 + 64) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v74 + 32) = 0x4D747865746E6F43;
  *(v74 + 40) = 0xEB00000000756E65;
  sub_100008FE4(&v126, v74 + 72);
  v75 = static Player.CommandIssuer<>.combining(_:)(v74);
  v77 = v76;

  sub_10000959C(&v126);
  *(&v127 + 1) = &type metadata for Player.CommandIssuerIdentity;
  v128 = &protocol witness table for Player.CommandIssuerIdentity;
  *&v126 = v75;
  *(&v126 + 1) = v77;
  sub_10006B010(&v126, &v56[v70], &unk_101183910, &unk_100EBDD00);
  sub_100008FE4(v133, &v126);
  sub_10010FC20(&unk_10118AB50, &unk_100EBE7D0);
  v117 = String.init<A>(describing:)();
  v107 = v78;
  v106 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100008FE4(v133, &v124);
  sub_10012B7A8(&v130, &v126);
  v79 = v114;
  sub_1000089F8(v113, v114, &unk_1011838D0, &unk_100EC0320);
  v80 = v110;
  sub_1000089F8(v119, v110, &unk_1011845D0, &unk_100EBF380);
  v81 = (*(v111 + 80) + 160) & ~*(v111 + 80);
  v82 = (v112 + v81 + 7) & 0xFFFFFFFFFFFFFFF8;
  v83 = (v82 + 15) & 0xFFFFFFFFFFFFFFF8;
  v84 = (*(v108 + 80) + v83 + 8) & ~*(v108 + 80);
  v112 = (v84 + v109 + 7) & 0xFFFFFFFFFFFFFFF8;
  v113 = v31;
  v85 = (v84 + v109 + 31) & 0xFFFFFFFFFFFFFFF8;
  v86 = swift_allocObject();
  sub_100059A8C(&v124, v86 + 16);
  *(v86 + 56) = v101;
  sub_10012B828(&v126, v86 + 64);
  sub_10003D17C(v79, v86 + v81, &unk_1011838D0, &unk_100EC0320);
  *(v86 + v82) = v106;
  *(v86 + v83) = v104;
  sub_10003D17C(v80, v86 + v84, &unk_1011845D0, &unk_100EBF380);
  v87 = v86 + v112;
  v88 = v99;
  *v87 = v105;
  *(v87 + 8) = v88;
  *(v87 + 16) = 2;
  v89 = (v86 + v85);
  *v89 = variable initialization expression of Library.Context.playlistVariants;
  v89[1] = 0;
  swift_unknownObjectRetain();

  v90 = v116;
  UUID.init()();
  v91 = UUID.uuidString.getter();
  v93 = v92;
  (*(v102 + 8))(v90, v103);
  v142._countAndFlagsBits = v117;
  v142._object = v107;
  ActionMenuBuilder.init(id:debugDescription:actionBuilder:)(&v135, v142, v91, v93, v100, v86);
  swift_unknownObjectRelease();
  sub_10012BA6C(&v130);
  sub_10000959C(v133);

  v41 = ActionMenuBuilder.uiMenu(excluding:includeUnsupported:)(_swiftEmptyArrayStorage, 0);
  v130 = v135;
  sub_100015BB0(&v130);
  v126 = v136;
  sub_100015BB0(&v126);

  v94 = v113;

  sub_1000095E8(v134, &unk_1011845E0, &unk_100EBF3A0);
  sub_1000095E8(v119, &unk_1011845D0, &unk_100EBF380);
  sub_1000095E8(v118, &unk_10118AB20, &unk_100EBF390);
  return v41;
}

uint64_t sub_1007D8F40@<X0>(uint64_t a1@<X8>)
{
  v99 = a1;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v96 = &v85 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v95 = &v85 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for UIContentUnavailableConfiguration();
  v90 = *(v89 - 8);
  __chkstk_darwin();
  v85 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118F670, &unk_100EC89B0);
  __chkstk_darwin();
  v94 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v86 = &v85 - v6;
  __chkstk_darwin();
  v92 = &v85 - v7;
  __chkstk_darwin();
  v93 = &v85 - v8;
  v9 = _s9PlaylistsVMa(0);
  __chkstk_darwin();
  v87 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v88 = &v85 - v11;
  __chkstk_darwin();
  v91 = &v85 - v12;
  __chkstk_darwin();
  v97 = &v85 - v13;
  __chkstk_darwin();
  v15 = &v85 - v14;
  __chkstk_darwin();
  v17 = &v85 - v16;
  v98 = v1;
  v18 = *(v1 + 48);
  v19 = *(*v18 + 96);
  swift_beginAccess();
  sub_1007E82DC(v18 + v19, v17, _s9PlaylistsVMa);
  v20 = &v17[v9[9]];
  v22 = *v20;
  v21 = *(v20 + 1);

  sub_1007E8344(v17, _s9PlaylistsVMa);

  if ((v21 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v21) & 0xF;
  }

  else
  {
    v23 = v22 & 0xFFFFFFFFFFFFLL;
  }

  static ApplicationCapabilities.shared.getter(v101);
  v24 = *CloudLibrary.StatusObserver.shared.unsafeMutableAddressor();
  sub_1007E82DC(v18 + v19, v15, _s9PlaylistsVMa);
  v25 = *&v15[v9[10]];

  sub_1007E8344(v15, _s9PlaylistsVMa);
  v26 = *(v25 + 16);

  if (!v26)
  {
    v97 = v19;
    v98 = v9;
    v33 = v94;
    if (v23)
    {
      static UIContentUnavailableConfiguration.search()();
LABEL_11:

      return sub_100014984(v101);
    }

    v39 = v97;
    sub_1007E82DC(v18 + v97, v15, _s9PlaylistsVMa);
    v40 = v15[8];
    sub_1007E8344(v15, _s9PlaylistsVMa);
    if (v40)
    {
      v100[3] = v98;
      v100[4] = sub_1007E83AC(&qword_1011A3E48, _s9PlaylistsVMa, &unk_100EBEAD8);
      v41 = sub_10001C8B8(v100);
      sub_1007E82DC(v18 + v39, v41, _s9PlaylistsVMa);
      sub_100446B3C(v100, v99);

      sub_100014984(v101);
      return sub_10000959C(v100);
    }

    sub_1007E82DC(v18 + v39, v15, _s9PlaylistsVMa);
    v42 = *v15;

    sub_1007E8344(v15, _s9PlaylistsVMa);
    v100[0] = v42;
    type metadata accessor for MusicLibrary();
    v100[6] = static MusicLibrary.shared.getter();
    sub_1007E83AC(&qword_10118CE20, &type metadata accessor for MusicLibrary, &protocol conformance descriptor for MusicLibrary);
    v43 = dispatch thunk of static Equatable.== infix(_:_:)();

    if ((v43 & 1) == 0)
    {
      v44 = v18 + v39;
      v45 = v91;
      sub_1007E82DC(v44, v91, _s9PlaylistsVMa);
      v46 = (v45 + *(v98 + 32));
      if (qword_10117F298 != -1)
      {
        swift_once();
      }

      v47 = _s9PlaylistsV5ScopeVMa(0);
      v48 = sub_1000060E4(v47, qword_101218730);
      v49 = sub_1001982EC(v46, v48);
      v50 = v92;
      if (v49)
      {
        sub_1007E8344(v45, _s9PlaylistsVMa);
        v51 = 6;
      }

      else
      {
        sub_1000089F8(v46 + *(v47 + 20), v92, &unk_10118F670, &unk_100EC89B0);
        sub_1007E8344(v45, _s9PlaylistsVMa);
        v54 = type metadata accessor for Playlist.Folder();
        v55 = (*(*(v54 - 8) + 48))(v50, 1, v54);
        sub_1000095E8(v50, &unk_10118F670, &unk_100EC89B0);
        if (v55 == 1)
        {
          v51 = 9;
        }

        else
        {
          v51 = 4;
        }
      }

      sub_100448498(v51, v99);
      goto LABEL_11;
    }

    LODWORD(v93) = v102;
    if (v102 == 2)
    {

      v53 = v98;
    }

    else
    {
      v53 = v98;
      v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v56 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    if ((v101[9] & 1) != 0 && (v101[2] & 1) == 0)
    {
      if (qword_10117F730 != -1)
      {
        swift_once();
      }

      v81 = v89;
      v82 = sub_1000060E4(v89, qword_101218D08);
      (*(v90 + 16))(v99, v82, v81);
      goto LABEL_11;
    }

LABEL_33:
    v57 = (*(*v24 + 328))(v52);
    if (v57 >> 30 == 1 || v57 >> 30 == 2 && v57 == 2147483652)
    {
      v58 = v89;
      v59 = v90;
      if (qword_10117F738 != -1)
      {
        swift_once();
      }

      v60 = sub_1000060E4(v58, qword_101218D20);
      (*(v59 + 16))(v99, v60, v58);
      goto LABEL_11;
    }

    v61 = v88;
    sub_1007E82DC(v18 + v39, v88, _s9PlaylistsVMa);
    v62 = (v61 + *(v53 + 32));
    if (qword_10117F298 != -1)
    {
      swift_once();
    }

    v63 = _s9PlaylistsV5ScopeVMa(0);
    v64 = sub_1000060E4(v63, qword_101218730);
    if (sub_1001982EC(v62, v64))
    {
      sub_1007E8344(v61, _s9PlaylistsVMa);
      v65 = 6;
    }

    else
    {
      v66 = v86;
      sub_1000089F8(v62 + *(v63 + 20), v86, &unk_10118F670, &unk_100EC89B0);
      sub_1007E8344(v61, _s9PlaylistsVMa);
      v67 = type metadata accessor for Playlist.Folder();
      v68 = (*(*(v67 - 8) + 48))(v66, 1, v67);
      sub_1000095E8(v66, &unk_10118F670, &unk_100EC89B0);
      if (v68 == 1)
      {
        v65 = 9;
      }

      else
      {
        v65 = 4;
      }
    }

    if (sub_10045EC58(v65) == 0x646956636973756DLL && v69 == 0xEB00000000736F65)
    {
    }

    else
    {
      v70 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v70 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    v71 = [objc_opt_self() sharedRestrictionsMonitor];
    v72 = [v71 allowsMusicVideos];

    if ((v72 & 1) == 0)
    {
      v76 = v85;
      static UIContentUnavailableConfiguration.empty()();
      sub_100446820(v99);
      (*(v90 + 8))(v76, v89);
      v77 = String._bridgeToObjectiveC()();
      v78 = [objc_opt_self() _systemImageNamed:v77];

      UIContentUnavailableConfiguration.image.setter();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      UIContentUnavailableConfiguration.secondaryText.setter();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v79 = UIContentUnavailableConfiguration.button.modify();
      UIButton.Configuration.title.setter();
      v79(v100, 0);
      sub_100009F78(0, &qword_1011839A0, UIAction_ptr);
      UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      v80 = UIContentUnavailableConfiguration.buttonProperties.modify();
      UIContentUnavailableConfiguration.ButtonProperties.primaryAction.setter();
      v80(v100, 0);
      goto LABEL_11;
    }

LABEL_51:
    v73 = v87;
    sub_1007E82DC(v18 + v97, v87, _s9PlaylistsVMa);
    v74 = (v73 + *(v98 + 32));
    if (sub_1001982EC(v74, v64))
    {
      sub_1007E8344(v73, _s9PlaylistsVMa);
      v75 = 6;
    }

    else
    {
      sub_1000089F8(v74 + *(v63 + 20), v33, &unk_10118F670, &unk_100EC89B0);
      sub_1007E8344(v73, _s9PlaylistsVMa);
      v83 = type metadata accessor for Playlist.Folder();
      v84 = (*(*(v83 - 8) + 48))(v33, 1, v83);
      sub_1000095E8(v33, &unk_10118F670, &unk_100EC89B0);
      if (v84 == 1)
      {
        v75 = 9;
      }

      else
      {
        v75 = 4;
      }
    }

    sub_10044894C(v93, v75, v99);
    goto LABEL_11;
  }

  v27 = v18 + v19;
  v28 = v97;
  sub_1007E82DC(v27, v97, _s9PlaylistsVMa);
  v29 = (v28 + v9[8]);
  if (qword_10117F298 != -1)
  {
    swift_once();
  }

  v30 = _s9PlaylistsV5ScopeVMa(0);
  v31 = sub_1000060E4(v30, qword_101218730);
  if (sub_1001982EC(v29, v31))
  {
    sub_1007E8344(v28, _s9PlaylistsVMa);
    v32 = 6;
  }

  else
  {
    v35 = v93;
    sub_1000089F8(v29 + *(v30 + 20), v93, &unk_10118F670, &unk_100EC89B0);
    sub_1007E8344(v28, _s9PlaylistsVMa);
    v36 = type metadata accessor for Playlist.Folder();
    v37 = (*(*(v36 - 8) + 48))(v35, 1, v36);
    sub_1000095E8(v35, &unk_10118F670, &unk_100EC89B0);
    if (v37 == 1)
    {
      v32 = 9;
    }

    else
    {
      v32 = 4;
    }
  }

  v38 = swift_allocObject();
  swift_weakInit();

  sub_100447A3C(v32, v23 != 0, sub_1007E83A4, v38, v99);

  sub_100014984(v101);
}

uint64_t sub_1007DA098@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X4>, void (*a6)(_OWORD *, uint64_t *)@<X5>, uint64_t a7@<X8>)
{
  v51 = a6;
  v52 = a3;
  v53 = a4;
  v54 = a5;
  v55 = a1;
  v56 = a2;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v10 = (&v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v11 = type metadata accessor for UIContentUnavailableConfiguration();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v7 + 48);
  swift_beginAccess();
  v16 = *(v15 + 48);
  if ((v16 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(v16) & 0xF;
  }

  else
  {
    v17 = *(v15 + 40) & 0xFFFFFFFFFFFFLL;
  }

  static ApplicationCapabilities.shared.getter(v61);
  v18 = *CloudLibrary.StatusObserver.shared.unsafeMutableAddressor();
  if (*(*(v15 + 88) + 16))
  {
    v19 = *(v15 + 16);
    v20 = swift_allocObject();
    swift_weakInit();

    sub_100447A3C(v19, v17 != 0, v56, v20, a7);

    sub_100014984(v61);
  }

  v55 = v14;
  v56 = v12;
  if (!v17)
  {
    v22 = a7;
    if (*(v15 + 32))
    {
      v58[3] = v52;
      v58[4] = v53();
      v23 = swift_allocObject();
      v24 = *(v15 + 16);
      v25 = *(v15 + 32);
      v26 = *(v15 + 48);
      v27 = *(v15 + 64);
      v28 = *(v15 + 96);
      v59[4] = *(v15 + 80);
      v59[5] = v28;
      v58[0] = v23;
      v60 = *(v15 + 112);
      v59[2] = v26;
      v59[3] = v27;
      v59[0] = v24;
      v59[1] = v25;
      memmove((v23 + 16), (v15 + 16), 0x68uLL);
      v51(v59, v57);
      sub_100446B3C(v58, a7);
      sub_100014984(v61);
      return sub_10000959C(v58);
    }

    v29 = v11;
    *&v59[0] = *(v15 + 24);
    v30 = v18;
    type metadata accessor for MusicLibrary();

    v57[0] = static MusicLibrary.shared.getter();
    sub_1007E83AC(&qword_10118CE20, &type metadata accessor for MusicLibrary, &protocol conformance descriptor for MusicLibrary);
    v31 = dispatch thunk of static Equatable.== infix(_:_:)();

    if ((v31 & 1) == 0)
    {
      sub_100448498(*(v15 + 16), v22);
LABEL_35:

      return sub_100014984(v61);
    }

    v54 = v22;
    v32 = v62;
    if (v62 > 1u)
    {
      v33 = v10;
      if (v62 == 2)
      {

        v35 = v29;
LABEL_17:
        if ((v61[9] & 1) != 0 && (v61[2] & 1) == 0)
        {
          v49 = v56;
          if (qword_10117F730 != -1)
          {
            swift_once();
          }

          v50 = sub_1000060E4(v35, qword_101218D08);
          (*(v49 + 16))(v54, v50, v35);
          goto LABEL_35;
        }

LABEL_19:
        v37 = (*(*v30 + 328))(v34);
        v38 = v56;
        if (v37 >> 30 == 1 || v37 >> 30 == 2 && v37 == 2147483652)
        {
          if (qword_10117F738 != -1)
          {
            swift_once();
          }

          v39 = sub_1000060E4(v35, qword_101218D20);
          (*(v38 + 16))(v54, v39, v35);
          goto LABEL_35;
        }

        v53 = v33;
        if (sub_10045EC58(*(v15 + 16)) == 0x646956636973756DLL && v40 == 0xEB00000000736F65)
        {
        }

        else
        {
          v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v41 & 1) == 0)
          {
LABEL_30:
            sub_10044894C(v32, *(v15 + 16), v54);
            goto LABEL_35;
          }
        }

        v42 = [objc_opt_self() sharedRestrictionsMonitor];
        v43 = [v42 allowsMusicVideos];

        if ((v43 & 1) == 0)
        {
          v44 = v55;
          static UIContentUnavailableConfiguration.empty()();
          sub_100446820(v54);
          (*(v38 + 8))(v44, v35);
          v45 = String._bridgeToObjectiveC()();
          v46 = [objc_opt_self() _systemImageNamed:v45];

          UIContentUnavailableConfiguration.image.setter();
          String.LocalizationValue.init(stringLiteral:)();
          static Locale.current.getter();
          String.init(localized:table:bundle:locale:comment:)();
          UIContentUnavailableConfiguration.secondaryText.setter();
          String.LocalizationValue.init(stringLiteral:)();
          static Locale.current.getter();
          String.init(localized:table:bundle:locale:comment:)();
          v47 = UIContentUnavailableConfiguration.button.modify();
          UIButton.Configuration.title.setter();
          v47(v59, 0);
          sub_100009F78(0, &qword_1011839A0, UIAction_ptr);
          UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
          v48 = UIContentUnavailableConfiguration.buttonProperties.modify();
          UIContentUnavailableConfiguration.ButtonProperties.primaryAction.setter();
          v48(v59, 0);
          goto LABEL_35;
        }

        goto LABEL_30;
      }
    }

    else
    {
      v33 = v10;
    }

    v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v35 = v29;
    if ((v36 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  static UIContentUnavailableConfiguration.search()();
  return sub_100014984(v61);
}

uint64_t sub_1007DA8D8@<X0>(uint64_t a1@<X8>)
{
  v61 = a1;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v59 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v55 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for UIContentUnavailableConfiguration();
  v57 = *(v58 - 8);
  __chkstk_darwin();
  v56 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s11MusicVideosVMa(0);
  __chkstk_darwin();
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v53 - v8;
  __chkstk_darwin();
  v11 = &v53 - v10;
  v60 = v1;
  v12 = *(v1 + 48);
  v13 = *(*v12 + 96);
  swift_beginAccess();
  sub_1007E82DC(v12 + v13, v11, _s11MusicVideosVMa);
  v14 = &v11[*(v5 + 32)];
  v16 = *v14;
  v15 = *(v14 + 1);

  sub_1007E8344(v11, _s11MusicVideosVMa);

  if ((v15 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(v15) & 0xF;
  }

  else
  {
    v17 = v16 & 0xFFFFFFFFFFFFLL;
  }

  static ApplicationCapabilities.shared.getter(v63);
  v18 = *CloudLibrary.StatusObserver.shared.unsafeMutableAddressor();
  sub_1007E82DC(v12 + v13, v9, _s11MusicVideosVMa);
  v19 = *&v9[*(v5 + 36)];

  sub_1007E8344(v9, _s11MusicVideosVMa);
  v20 = *(v19 + 16);

  if (v20)
  {
    v21 = v17 != 0;
    sub_1007E82DC(v12 + v13, v9, _s11MusicVideosVMa);
    v22 = *v9;
    sub_1007E8344(v9, _s11MusicVideosVMa);
    v23 = swift_allocObject();
    swift_weakInit();

    sub_100447A3C(v22, v21, sub_1007E8290, v23, v61);

    sub_100014984(v63);
  }

  v54 = v7;
  v60 = v13;
  v25 = v61;
  if (v17)
  {
    static UIContentUnavailableConfiguration.search()();
LABEL_8:

    return sub_100014984(v63);
  }

  v26 = v60;
  v27 = v12;
  sub_1007E82DC(v12 + v60, v9, _s11MusicVideosVMa);
  v28 = v9[16];
  sub_1007E8344(v9, _s11MusicVideosVMa);
  if ((v28 & 1) == 0)
  {
    sub_1007E82DC(v12 + v26, v9, _s11MusicVideosVMa);
    v30 = *(v9 + 1);

    sub_1007E8344(v9, _s11MusicVideosVMa);
    v62[0] = v30;
    type metadata accessor for MusicLibrary();
    v31 = v26;
    v62[6] = static MusicLibrary.shared.getter();
    sub_1007E83AC(&qword_10118CE20, &type metadata accessor for MusicLibrary, &protocol conformance descriptor for MusicLibrary);
    v32 = dispatch thunk of static Equatable.== infix(_:_:)();

    if ((v32 & 1) == 0)
    {
      sub_1007E82DC(v12 + v31, v9, _s11MusicVideosVMa);
      v34 = *v9;
      sub_1007E8344(v9, _s11MusicVideosVMa);
      sub_100448498(v34, v25);
      goto LABEL_8;
    }

    v33 = v64;
    if (v64 == 2)
    {

      v36 = v58;
    }

    else
    {
      v36 = v58;
      v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v37 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    if ((v63[9] & 1) != 0 && (v63[2] & 1) == 0)
    {
      if (qword_10117F730 != -1)
      {
        swift_once();
      }

      v39 = qword_101218D08;
      goto LABEL_35;
    }

LABEL_19:
    v38 = (*(*v18 + 328))(v35);
    if (v38 >> 30 == 1 || v38 >> 30 == 2 && v38 == 2147483652)
    {
      if (qword_10117F738 != -1)
      {
        swift_once();
      }

      v39 = qword_101218D20;
LABEL_35:
      v52 = sub_1000060E4(v36, v39);
      (*(v57 + 16))(v25, v52, v36);
      goto LABEL_8;
    }

    v40 = v54;
    sub_1007E82DC(v27 + v60, v54, _s11MusicVideosVMa);
    v41 = *v40;
    sub_1007E8344(v40, _s11MusicVideosVMa);
    if (sub_10045EC58(v41) == 0x646956636973756DLL && v42 == 0xEB00000000736F65)
    {
    }

    else
    {
      v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v43 & 1) == 0)
      {
LABEL_30:
        sub_1007E82DC(v27 + v60, v9, _s11MusicVideosVMa);
        v46 = *v9;
        sub_1007E8344(v9, _s11MusicVideosVMa);
        sub_10044894C(v33, v46, v25);
        goto LABEL_8;
      }
    }

    v44 = [objc_opt_self() sharedRestrictionsMonitor];
    v45 = [v44 allowsMusicVideos];

    if ((v45 & 1) == 0)
    {
      v47 = v56;
      static UIContentUnavailableConfiguration.empty()();
      sub_100446820(v25);
      (*(v57 + 8))(v47, v36);
      v48 = String._bridgeToObjectiveC()();
      v49 = [objc_opt_self() _systemImageNamed:v48];

      UIContentUnavailableConfiguration.image.setter();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      UIContentUnavailableConfiguration.secondaryText.setter();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v50 = UIContentUnavailableConfiguration.button.modify();
      UIButton.Configuration.title.setter();
      v50(v62, 0);
      sub_100009F78(0, &qword_1011839A0, UIAction_ptr);
      UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      v51 = UIContentUnavailableConfiguration.buttonProperties.modify();
      UIContentUnavailableConfiguration.ButtonProperties.primaryAction.setter();
      v51(v62, 0);
      goto LABEL_8;
    }

    goto LABEL_30;
  }

  v62[3] = v5;
  v62[4] = sub_1007E83AC(&qword_1011A3E40, _s11MusicVideosVMa, &unk_100EDEC68);
  v29 = sub_10001C8B8(v62);
  sub_1007E82DC(v12 + v26, v29, _s11MusicVideosVMa);
  sub_100446B3C(v62, v25);

  sub_100014984(v63);
  return sub_10000959C(v62);
}

uint64_t sub_1007DB404@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v3 = type metadata accessor for UIContentUnavailableConfiguration();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 48);
  swift_beginAccess();
  v8 = *(v7 + 5);
  if ((v8 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v8) & 0xF;
  }

  else
  {
    v9 = *(v7 + 4) & 0xFFFFFFFFFFFFLL;
  }

  static ApplicationCapabilities.shared.getter(v39);
  v10 = *CloudLibrary.StatusObserver.shared.unsafeMutableAddressor();
  if (*(*(v7 + 6) + 16))
  {
    v11 = v7[80];
    v12 = swift_allocObject();
    swift_weakInit();

    sub_100447A3C(v11, v9 != 0, sub_1007E8288, v12, a1);

    sub_100014984(v39);
  }

  v34 = v4;
  if (!v9)
  {
    if (v7[24])
    {
      v36[3] = &_s5SongsVN;
      v36[4] = sub_1003BEC68();
      v36[0] = swift_allocObject();
      v14 = *(v7 + 2);
      v15 = *(v7 + 4);
      v37[2] = *(v7 + 3);
      v37[3] = v15;
      v38 = v7[80];
      v37[1] = v14;
      v37[0] = *(v7 + 1);
      memmove((v36[0] + 16), v7 + 16, 0x41uLL);
      sub_10021817C(v37, v35);
      sub_100446B3C(v36, a1);
      sub_100014984(v39);
      return sub_10000959C(v36);
    }

    v33 = a1;
    *&v37[0] = *(v7 + 2);
    v16 = v10;
    type metadata accessor for MusicLibrary();

    v35[0] = static MusicLibrary.shared.getter();
    sub_1007E83AC(&qword_10118CE20, &type metadata accessor for MusicLibrary, &protocol conformance descriptor for MusicLibrary);
    v17 = dispatch thunk of static Equatable.== infix(_:_:)();

    if ((v17 & 1) == 0)
    {
      sub_100448498(v7[80], v33);
LABEL_34:

      return sub_100014984(v39);
    }

    v18 = v40;
    if (v40 == 2)
    {
    }

    else
    {
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v20 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    if ((v39[9] & 1) != 0 && (v39[2] & 1) == 0)
    {
      if (qword_10117F730 != -1)
      {
        swift_once();
      }

      v32 = sub_1000060E4(v3, qword_101218D08);
      (*(v34 + 16))(v33, v32, v3);
      goto LABEL_34;
    }

LABEL_18:
    v21 = (*(*v16 + 328))(v19);
    if (v21 >> 30 == 1 || v21 >> 30 == 2 && v21 == 2147483652)
    {
      v22 = v34;
      if (qword_10117F738 != -1)
      {
        swift_once();
      }

      v23 = sub_1000060E4(v3, qword_101218D20);
      (*(v22 + 16))(v33, v23, v3);
      goto LABEL_34;
    }

    if (sub_10045EC58(v7[80]) == 0x646956636973756DLL && v24 == 0xEB00000000736F65)
    {
    }

    else
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v25 & 1) == 0)
      {
LABEL_29:
        sub_10044894C(v18, v7[80], v33);
        goto LABEL_34;
      }
    }

    v26 = [objc_opt_self() sharedRestrictionsMonitor];
    v27 = [v26 allowsMusicVideos];

    if ((v27 & 1) == 0)
    {
      static UIContentUnavailableConfiguration.empty()();
      sub_100446820(v33);
      (*(v34 + 8))(v6, v3);
      v28 = String._bridgeToObjectiveC()();
      v29 = [objc_opt_self() _systemImageNamed:v28];

      UIContentUnavailableConfiguration.image.setter();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      UIContentUnavailableConfiguration.secondaryText.setter();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v30 = UIContentUnavailableConfiguration.button.modify();
      UIButton.Configuration.title.setter();
      v30(v37, 0);
      sub_100009F78(0, &qword_1011839A0, UIAction_ptr);
      UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      v31 = UIContentUnavailableConfiguration.buttonProperties.modify();
      UIContentUnavailableConfiguration.ButtonProperties.primaryAction.setter();
      v31(v37, 0);
      goto LABEL_34;
    }

    goto LABEL_29;
  }

  static UIContentUnavailableConfiguration.search()();
  return sub_100014984(v39);
}

uint64_t sub_1007DBC74@<X0>(uint64_t a1@<X8>)
{
  v61 = a1;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v59 = &v53 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v55 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for UIContentUnavailableConfiguration();
  v57 = *(v58 - 8);
  __chkstk_darwin();
  v56 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s10TVEpisodesVMa(0);
  __chkstk_darwin();
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v53 - v8;
  __chkstk_darwin();
  v11 = &v53 - v10;
  v60 = v1;
  v12 = *(v1 + 48);
  v13 = *(*v12 + 96);
  swift_beginAccess();
  sub_1007E82DC(v12 + v13, v11, _s10TVEpisodesVMa);
  v14 = &v11[v5[8]];
  v16 = *v14;
  v15 = *(v14 + 1);

  sub_1007E8344(v11, _s10TVEpisodesVMa);

  if ((v15 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(v15) & 0xF;
  }

  else
  {
    v17 = v16 & 0xFFFFFFFFFFFFLL;
  }

  static ApplicationCapabilities.shared.getter(v63);
  v18 = *CloudLibrary.StatusObserver.shared.unsafeMutableAddressor();
  sub_1007E82DC(v12 + v13, v9, _s10TVEpisodesVMa);
  v19 = *&v9[v5[12]];

  sub_1007E8344(v9, _s10TVEpisodesVMa);
  v20 = *(v19 + 16);

  if (v20)
  {
    v21 = v17 != 0;
    sub_1007E82DC(v12 + v13, v9, _s10TVEpisodesVMa);
    v22 = *v9;
    sub_1007E8344(v9, _s10TVEpisodesVMa);
    v23 = swift_allocObject();
    swift_weakInit();

    sub_100447A3C(v22, v21, sub_1007E7E58, v23, v61);

    sub_100014984(v63);
  }

  v54 = v7;
  v60 = v13;
  v25 = v61;
  if (v17)
  {
    static UIContentUnavailableConfiguration.search()();
LABEL_8:

    return sub_100014984(v63);
  }

  v26 = v60;
  v27 = v12;
  sub_1007E82DC(v12 + v60, v9, _s10TVEpisodesVMa);
  v28 = v9[v5[7]];
  sub_1007E8344(v9, _s10TVEpisodesVMa);
  if ((v28 & 1) == 0)
  {
    sub_1007E82DC(v12 + v26, v9, _s10TVEpisodesVMa);
    v30 = *(v9 + 1);

    sub_1007E8344(v9, _s10TVEpisodesVMa);
    v62[0] = v30;
    type metadata accessor for MusicLibrary();
    v31 = v26;
    v62[6] = static MusicLibrary.shared.getter();
    sub_1007E83AC(&qword_10118CE20, &type metadata accessor for MusicLibrary, &protocol conformance descriptor for MusicLibrary);
    v32 = dispatch thunk of static Equatable.== infix(_:_:)();

    if ((v32 & 1) == 0)
    {
      sub_1007E82DC(v12 + v31, v9, _s10TVEpisodesVMa);
      v34 = *v9;
      sub_1007E8344(v9, _s10TVEpisodesVMa);
      sub_100448498(v34, v25);
      goto LABEL_8;
    }

    v33 = v64;
    if (v64 == 2)
    {

      v36 = v58;
    }

    else
    {
      v36 = v58;
      v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v37 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    if ((v63[9] & 1) != 0 && (v63[2] & 1) == 0)
    {
      if (qword_10117F730 != -1)
      {
        swift_once();
      }

      v39 = qword_101218D08;
      goto LABEL_35;
    }

LABEL_19:
    v38 = (*(*v18 + 328))(v35);
    if (v38 >> 30 == 1 || v38 >> 30 == 2 && v38 == 2147483652)
    {
      if (qword_10117F738 != -1)
      {
        swift_once();
      }

      v39 = qword_101218D20;
LABEL_35:
      v52 = sub_1000060E4(v36, v39);
      (*(v57 + 16))(v25, v52, v36);
      goto LABEL_8;
    }

    v40 = v54;
    sub_1007E82DC(v27 + v60, v54, _s10TVEpisodesVMa);
    v41 = *v40;
    sub_1007E8344(v40, _s10TVEpisodesVMa);
    if (sub_10045EC58(v41) == 0x646956636973756DLL && v42 == 0xEB00000000736F65)
    {
    }

    else
    {
      v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v43 & 1) == 0)
      {
LABEL_30:
        sub_1007E82DC(v27 + v60, v9, _s10TVEpisodesVMa);
        v46 = *v9;
        sub_1007E8344(v9, _s10TVEpisodesVMa);
        sub_10044894C(v33, v46, v25);
        goto LABEL_8;
      }
    }

    v44 = [objc_opt_self() sharedRestrictionsMonitor];
    v45 = [v44 allowsMusicVideos];

    if ((v45 & 1) == 0)
    {
      v47 = v56;
      static UIContentUnavailableConfiguration.empty()();
      sub_100446820(v25);
      (*(v57 + 8))(v47, v36);
      v48 = String._bridgeToObjectiveC()();
      v49 = [objc_opt_self() _systemImageNamed:v48];

      UIContentUnavailableConfiguration.image.setter();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      UIContentUnavailableConfiguration.secondaryText.setter();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v50 = UIContentUnavailableConfiguration.button.modify();
      UIButton.Configuration.title.setter();
      v50(v62, 0);
      sub_100009F78(0, &qword_1011839A0, UIAction_ptr);
      UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      v51 = UIContentUnavailableConfiguration.buttonProperties.modify();
      UIContentUnavailableConfiguration.ButtonProperties.primaryAction.setter();
      v51(v62, 0);
      goto LABEL_8;
    }

    goto LABEL_30;
  }

  v62[3] = v5;
  v62[4] = sub_1007E83AC(&qword_10118D060, _s10TVEpisodesVMa, &unk_100ED9FE0);
  v29 = sub_10001C8B8(v62);
  sub_1007E82DC(v12 + v26, v29, _s10TVEpisodesVMa);
  sub_100446B3C(v62, v25);

  sub_100014984(v63);
  return sub_10000959C(v62);
}

uint64_t sub_1007DC7A4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v89 = a1;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v84 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v83 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for UIContentUnavailableConfiguration();
  v78 = *(v79 - 8);
  __chkstk_darwin();
  v82 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = _s6AlbumsV5ScopeOMa(0);
  __chkstk_darwin();
  v75 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v76 = &v75 - v7;
  __chkstk_darwin();
  v80 = &v75 - v8;
  __chkstk_darwin();
  v86 = &v75 - v9;
  v10 = _s6AlbumsVMa(0);
  __chkstk_darwin();
  v77 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v81 = &v75 - v12;
  __chkstk_darwin();
  v14 = &v75 - v13;
  __chkstk_darwin();
  v85 = &v75 - v15;
  __chkstk_darwin();
  v17 = &v75 - v16;
  __chkstk_darwin();
  v19 = &v75 - v18;
  v87 = v2;
  v20 = *(v2 + 48);
  v21 = *(*v20 + 96);
  swift_beginAccess();
  sub_1007E82DC(v20 + v21, v19, _s6AlbumsVMa);
  v22 = &v19[v10[7]];
  v24 = *v22;
  v23 = *(v22 + 1);

  sub_1007E8344(v19, _s6AlbumsVMa);

  if ((v23 & 0x2000000000000000) != 0)
  {
    v25 = HIBYTE(v23) & 0xF;
  }

  else
  {
    v25 = v24 & 0xFFFFFFFFFFFFLL;
  }

  static ApplicationCapabilities.shared.getter(v91);
  v26 = *CloudLibrary.StatusObserver.shared.unsafeMutableAddressor();
  sub_1007E82DC(v20 + v21, v17, _s6AlbumsVMa);
  v27 = *&v17[v10[8]];

  sub_1007E8344(v17, _s6AlbumsVMa);
  v28 = *(v27 + 16);

  if (v28)
  {
    v29 = v85;
    sub_1007E82DC(v20 + v21, v85, _s6AlbumsVMa);
    v30 = v29 + v10[6];
    v31 = v86;
    sub_1007E82DC(v30, v86, _s6AlbumsV5ScopeOMa);
    sub_1007E8344(v29, _s6AlbumsVMa);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload >= 3)
    {
      if (EnumCaseMultiPayload != 3)
      {
        v39 = 3;
LABEL_13:
        v34 = swift_allocObject();
        swift_weakInit();

        sub_100447A3C(v39, v25 != 0, sub_1007E7E50, v34, v89);

        sub_100014984(v91);
      }
    }

    else
    {
      sub_1007E8344(v31, _s6AlbumsV5ScopeOMa);
    }

    v39 = 0;
    goto LABEL_13;
  }

  v86 = v14;
  v87 = v21;
  if (v25)
  {
    static UIContentUnavailableConfiguration.search()();
LABEL_9:

    return sub_100014984(v91);
  }

  v35 = v10;
  v36 = v87;
  sub_1007E82DC(v20 + v87, v17, _s6AlbumsVMa);
  v37 = v17[8];
  sub_1007E8344(v17, _s6AlbumsVMa);
  if ((v37 & 1) == 0)
  {
    sub_1007E82DC(v20 + v36, v17, _s6AlbumsVMa);
    v40 = *v17;

    sub_1007E8344(v17, _s6AlbumsVMa);
    v90[0] = v40;
    type metadata accessor for MusicLibrary();
    v90[6] = static MusicLibrary.shared.getter();
    sub_1007E83AC(&qword_10118CE20, &type metadata accessor for MusicLibrary, &protocol conformance descriptor for MusicLibrary);
    v41 = dispatch thunk of static Equatable.== infix(_:_:)();

    if (v41)
    {
      v42 = v35;
      LODWORD(v86) = v92;
      if (v92 > 1u)
      {
        v43 = v81;
        if (v92 == 2)
        {

          v49 = v82;
LABEL_28:
          if ((v91[9] & 1) != 0 && (v91[2] & 1) == 0)
          {
            if (qword_10117F730 != -1)
            {
              swift_once();
            }

            v72 = v79;
            v73 = sub_1000060E4(v79, qword_101218D08);
            (*(v78 + 16))(v89, v73, v72);
            goto LABEL_9;
          }

LABEL_30:
          v51 = (*(*v26 + 328))(v48);
          if (v51 >> 30 == 1 || v51 >> 30 == 2 && v51 == 2147483652)
          {
            v52 = v79;
            v53 = v78;
            if (qword_10117F738 != -1)
            {
              swift_once();
            }

            v54 = sub_1000060E4(v52, qword_101218D20);
            (*(v53 + 16))(v89, v54, v52);
            goto LABEL_9;
          }

          sub_1007E82DC(v20 + v87, v43, _s6AlbumsVMa);
          v55 = v76;
          sub_1007E82DC(v43 + *(v42 + 24), v76, _s6AlbumsV5ScopeOMa);
          sub_1007E8344(v43, _s6AlbumsVMa);
          v56 = swift_getEnumCaseMultiPayload();
          if (v56 >= 3)
          {
            if (v56 != 3)
            {
              v74 = 3;
LABEL_41:
              if (sub_10045EC58(v74) == 0x646956636973756DLL && v58 == 0xEB00000000736F65)
              {

                v59 = v77;
              }

              else
              {
                v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

                v59 = v77;
                if ((v60 & 1) == 0)
                {
                  goto LABEL_46;
                }
              }

              v61 = [objc_opt_self() sharedRestrictionsMonitor];
              v62 = [v61 allowsMusicVideos];

              if ((v62 & 1) == 0)
              {
                static UIContentUnavailableConfiguration.empty()();
                sub_100446820(v89);
                (*(v78 + 8))(v49, v79);
                v68 = String._bridgeToObjectiveC()();
                v69 = [objc_opt_self() _systemImageNamed:v68];

                UIContentUnavailableConfiguration.image.setter();
                String.LocalizationValue.init(stringLiteral:)();
                static Locale.current.getter();
                String.init(localized:table:bundle:locale:comment:)();
                UIContentUnavailableConfiguration.secondaryText.setter();
                String.LocalizationValue.init(stringLiteral:)();
                static Locale.current.getter();
                String.init(localized:table:bundle:locale:comment:)();
                v70 = UIContentUnavailableConfiguration.button.modify();
                UIButton.Configuration.title.setter();
                v70(v90, 0);
                sub_100009F78(0, &qword_1011839A0, UIAction_ptr);
                UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
                v71 = UIContentUnavailableConfiguration.buttonProperties.modify();
                UIContentUnavailableConfiguration.ButtonProperties.primaryAction.setter();
                v71(v90, 0);
                goto LABEL_9;
              }

LABEL_46:
              sub_1007E82DC(v20 + v87, v59, _s6AlbumsVMa);
              v63 = v75;
              sub_1007E82DC(v59 + *(v42 + 24), v75, _s6AlbumsV5ScopeOMa);
              sub_1007E8344(v59, _s6AlbumsVMa);
              v64 = swift_getEnumCaseMultiPayload();
              v65 = v64 == 3;
              if (v64 >= 3)
              {
                v66 = v89;
                v67 = v86;
                if (!v65)
                {
                  sub_10044894C(v86, 3, v89);
                  goto LABEL_9;
                }
              }

              else
              {
                sub_1007E8344(v63, _s6AlbumsV5ScopeOMa);
                v66 = v89;
                v67 = v86;
              }

              sub_10044894C(v67, 0, v66);
              goto LABEL_9;
            }
          }

          else
          {
            sub_1007E8344(v55, _s6AlbumsV5ScopeOMa);
          }

          v74 = 0;
          goto LABEL_41;
        }
      }

      else
      {
        v43 = v81;
      }

      v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v49 = v82;
      if ((v50 & 1) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_28;
    }

    v44 = v86;
    sub_1007E82DC(v20 + v36, v86, _s6AlbumsVMa);
    v45 = v80;
    sub_1007E82DC(v44 + *(v35 + 24), v80, _s6AlbumsV5ScopeOMa);
    sub_1007E8344(v44, _s6AlbumsVMa);
    v46 = swift_getEnumCaseMultiPayload();
    if (v46 >= 3)
    {
      v47 = v89;
      if (v46 != 3)
      {
        v57 = 3;
LABEL_26:
        sub_100448498(v57, v47);
        goto LABEL_9;
      }
    }

    else
    {
      sub_1007E8344(v45, _s6AlbumsV5ScopeOMa);
      v47 = v89;
    }

    v57 = 0;
    goto LABEL_26;
  }

  v90[3] = v35;
  v90[4] = sub_1007E83AC(&qword_10118CE80, _s6AlbumsVMa, &unk_100EC48EC);
  v38 = sub_10001C8B8(v90);
  sub_1007E82DC(v20 + v36, v38, _s6AlbumsVMa);
  sub_100446B3C(v90, v89);

  sub_100014984(v91);
  return sub_10000959C(v90);
}

uint64_t sub_1007DD678@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v3 = type metadata accessor for UIContentUnavailableConfiguration();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 48);
  swift_beginAccess();
  v8 = *(v7 + 48);
  if ((v8 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v8) & 0xF;
  }

  else
  {
    v9 = *(v7 + 40) & 0xFFFFFFFFFFFFLL;
  }

  static ApplicationCapabilities.shared.getter(v40);
  v10 = *CloudLibrary.StatusObserver.shared.unsafeMutableAddressor();
  if (*(*(v7 + 56) + 16))
  {
    v11 = *(v7 + 16);
    v12 = swift_allocObject();
    swift_weakInit();

    sub_100447A3C(v11, v9 != 0, sub_1007E7DD0, v12, a1);

    sub_100014984(v40);
  }

  v36 = v4;
  if (!v9)
  {
    if (*(v7 + 32))
    {
      v38[3] = &_s7ArtistsVN;
      v38[4] = sub_1003BEAB8();
      v38[0] = swift_allocObject();
      v14 = *(v7 + 32);
      v15 = *(v7 + 48);
      v16 = *(v7 + 80);
      v39[3] = *(v7 + 64);
      v39[4] = v16;
      v39[1] = v14;
      v39[2] = v15;
      v39[0] = *(v7 + 16);
      memmove((v38[0] + 16), (v7 + 16), 0x50uLL);
      sub_10030DC78(v39, v37);
      sub_100446B3C(v38, a1);
      sub_100014984(v40);
      return sub_10000959C(v38);
    }

    v35 = a1;
    *&v39[0] = *(v7 + 24);
    v17 = v10;
    type metadata accessor for MusicLibrary();

    v37[0] = static MusicLibrary.shared.getter();
    sub_1007E83AC(&qword_10118CE20, &type metadata accessor for MusicLibrary, &protocol conformance descriptor for MusicLibrary);
    v18 = dispatch thunk of static Equatable.== infix(_:_:)();

    if ((v18 & 1) == 0)
    {
      sub_100448498(*(v7 + 16), v35);
LABEL_34:

      return sub_100014984(v40);
    }

    v19 = v41;
    if (v41 == 2)
    {
    }

    else
    {
      v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v21 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    if ((v40[9] & 1) != 0 && (v40[2] & 1) == 0)
    {
      if (qword_10117F730 != -1)
      {
        swift_once();
      }

      v33 = sub_1000060E4(v3, qword_101218D08);
      (*(v36 + 16))(v35, v33, v3);
      goto LABEL_34;
    }

LABEL_18:
    v22 = (*(*v17 + 328))(v20);
    if (v22 >> 30 == 1 || v22 >> 30 == 2 && v22 == 2147483652)
    {
      v23 = v36;
      if (qword_10117F738 != -1)
      {
        swift_once();
      }

      v24 = sub_1000060E4(v3, qword_101218D20);
      (*(v23 + 16))(v35, v24, v3);
      goto LABEL_34;
    }

    if (sub_10045EC58(*(v7 + 16)) == 0x646956636973756DLL && v25 == 0xEB00000000736F65)
    {
    }

    else
    {
      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v26 & 1) == 0)
      {
LABEL_29:
        sub_10044894C(v19, *(v7 + 16), v35);
        goto LABEL_34;
      }
    }

    v27 = [objc_opt_self() sharedRestrictionsMonitor];
    v28 = [v27 allowsMusicVideos];

    if ((v28 & 1) == 0)
    {
      static UIContentUnavailableConfiguration.empty()();
      sub_100446820(v35);
      (*(v36 + 8))(v6, v3);
      v29 = String._bridgeToObjectiveC()();
      v30 = [objc_opt_self() _systemImageNamed:v29];

      UIContentUnavailableConfiguration.image.setter();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      UIContentUnavailableConfiguration.secondaryText.setter();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v31 = UIContentUnavailableConfiguration.button.modify();
      UIButton.Configuration.title.setter();
      v31(v39, 0);
      sub_100009F78(0, &qword_1011839A0, UIAction_ptr);
      UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      v32 = UIContentUnavailableConfiguration.buttonProperties.modify();
      UIContentUnavailableConfiguration.ButtonProperties.primaryAction.setter();
      v32(v39, 0);
      goto LABEL_34;
    }

    goto LABEL_29;
  }

  static UIContentUnavailableConfiguration.search()();
  return sub_100014984(v40);
}

uint64_t sub_1007DDEE4@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v3 = type metadata accessor for UIContentUnavailableConfiguration();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 48);
  swift_beginAccess();
  v8 = *(v7 + 48);
  if ((v8 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v8) & 0xF;
  }

  else
  {
    v9 = *(v7 + 40) & 0xFFFFFFFFFFFFLL;
  }

  static ApplicationCapabilities.shared.getter(v42);
  v10 = *CloudLibrary.StatusObserver.shared.unsafeMutableAddressor();
  if (*(*(v7 + 80) + 16))
  {
    v11 = *(v7 + 16);
    v12 = swift_allocObject();
    swift_weakInit();

    sub_100447A3C(v11, v9 != 0, sub_1007E7DC8, v12, a1);

    sub_100014984(v42);
  }

  v38 = v4;
  if (!v9)
  {
    if (*(v7 + 32))
    {
      v40[3] = &_s6MoviesVN;
      v40[4] = sub_1003BEDFC();
      v40[0] = swift_allocObject();
      v14 = *(v7 + 16);
      v15 = *(v7 + 32);
      v16 = *(v7 + 48);
      v17 = *(v7 + 64);
      v18 = *(v7 + 96);
      v41[4] = *(v7 + 80);
      v41[5] = v18;
      v41[2] = v16;
      v41[3] = v17;
      v41[0] = v14;
      v41[1] = v15;
      memmove((v40[0] + 16), (v7 + 16), 0x60uLL);
      sub_1001103E0(v41, v39);
      sub_100446B3C(v40, a1);
      sub_100014984(v42);
      return sub_10000959C(v40);
    }

    v37 = a1;
    *&v41[0] = *(v7 + 24);
    v19 = v10;
    type metadata accessor for MusicLibrary();

    v39[0] = static MusicLibrary.shared.getter();
    sub_1007E83AC(&qword_10118CE20, &type metadata accessor for MusicLibrary, &protocol conformance descriptor for MusicLibrary);
    v20 = dispatch thunk of static Equatable.== infix(_:_:)();

    if ((v20 & 1) == 0)
    {
      sub_100448498(*(v7 + 16), v37);
LABEL_34:

      return sub_100014984(v42);
    }

    v21 = v43;
    if (v43 == 2)
    {
    }

    else
    {
      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v23 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    if ((v42[9] & 1) != 0 && (v42[2] & 1) == 0)
    {
      if (qword_10117F730 != -1)
      {
        swift_once();
      }

      v35 = sub_1000060E4(v3, qword_101218D08);
      (*(v38 + 16))(v37, v35, v3);
      goto LABEL_34;
    }

LABEL_18:
    v24 = (*(*v19 + 328))(v22);
    if (v24 >> 30 == 1 || v24 >> 30 == 2 && v24 == 2147483652)
    {
      v25 = v38;
      if (qword_10117F738 != -1)
      {
        swift_once();
      }

      v26 = sub_1000060E4(v3, qword_101218D20);
      (*(v25 + 16))(v37, v26, v3);
      goto LABEL_34;
    }

    if (sub_10045EC58(*(v7 + 16)) == 0x646956636973756DLL && v27 == 0xEB00000000736F65)
    {
    }

    else
    {
      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v28 & 1) == 0)
      {
LABEL_29:
        sub_10044894C(v21, *(v7 + 16), v37);
        goto LABEL_34;
      }
    }

    v29 = [objc_opt_self() sharedRestrictionsMonitor];
    v30 = [v29 allowsMusicVideos];

    if ((v30 & 1) == 0)
    {
      static UIContentUnavailableConfiguration.empty()();
      sub_100446820(v37);
      (*(v38 + 8))(v6, v3);
      v31 = String._bridgeToObjectiveC()();
      v32 = [objc_opt_self() _systemImageNamed:v31];

      UIContentUnavailableConfiguration.image.setter();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      UIContentUnavailableConfiguration.secondaryText.setter();
      String.LocalizationValue.init(stringLiteral:)();
      static Locale.current.getter();
      String.init(localized:table:bundle:locale:comment:)();
      v33 = UIContentUnavailableConfiguration.button.modify();
      UIButton.Configuration.title.setter();
      v33(v41, 0);
      sub_100009F78(0, &qword_1011839A0, UIAction_ptr);
      UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
      v34 = UIContentUnavailableConfiguration.buttonProperties.modify();
      UIContentUnavailableConfiguration.ButtonProperties.primaryAction.setter();
      v34(v41, 0);
      goto LABEL_34;
    }

    goto LABEL_29;
  }

  static UIContentUnavailableConfiguration.search()();
  return sub_100014984(v42);
}

double sub_1007DE6F8(uint64_t a1)
{
  v1 = _s9PlaylistsVMa(0);
  __chkstk_darwin();
  v3 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + 48);
    v7 = *(*v6 + 96);
    swift_beginAccess();
    sub_1007E82DC(v6 + v7, v3, _s9PlaylistsVMa);
    v8 = *(v1 + 40);
    v9 = *&v3[v8];
    *&v3[v8] = &_swiftEmptySetSingleton;
    v10 = sub_10018FCA0(&_swiftEmptySetSingleton, v9);

    if ((v10 & 1) == 0)
    {
      v11 = [objc_opt_self() standardUserDefaults];
      v20[3] = sub_10010FC20(&unk_10118CD70, &qword_100EBE248);
      v20[4] = sub_1007E7DD8(&unk_101182910, sub_100178D84, &protocol conformance descriptor for <> Set<A>);
      v20[5] = sub_1007E7DD8(&unk_101182920, sub_100178E50, &protocol conformance descriptor for <> Set<A>);
      v20[0] = &_swiftEmptySetSingleton;
      v12 = *(v1 + 32);
      if (qword_10117F298 != -1)
      {
        swift_once();
      }

      v13 = _s9PlaylistsV5ScopeVMa(0);
      v14 = sub_1000060E4(v13, qword_101218730);
      v15 = sub_1001982EC(&v3[v12], v14);
      v16 = "LibraryPlaylists";
      v17 = 0xD000000000000010;
      if (v15)
      {
        v17 = 0xD000000000000011;
      }

      else
      {
        v16 = "v32@0:8@16@24";
      }

      v19[0] = v17;
      v19[1] = v16 | 0x8000000000000000;

      v18._countAndFlagsBits = 0x704F7265746C6946;
      v18._object = 0xEC0000006E6F6974;
      String.append(_:)(v18);

      NSUserDefaults.encodeValue(_:forKey:)(v20);

      sub_10000959C(v20);
    }

    sub_1003777F4(v3);
  }

  return result;
}

double sub_1007DE9C4(uint64_t a1, void (*a2)(_OWORD *, uint64_t *), void (*a3)(_OWORD *, __n128))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + 48);
    swift_beginAccess();
    v8 = *(v7 + 64);
    v18[4] = *(v7 + 80);
    v9 = *(v7 + 16);
    v10 = *(v7 + 32);
    v11 = *(v7 + 48);
    v18[5] = *(v7 + 96);
    v19 = *(v7 + 112);
    v18[2] = v11;
    v18[3] = v8;
    v18[0] = v9;
    v18[1] = v10;
    v12 = *(v7 + 16);
    v13 = *(v7 + 32);
    v14 = *(v7 + 48);
    v15 = *(v7 + 64);
    v21 = *(v7 + 80);
    v20[2] = v14;
    v20[3] = v15;
    v20[0] = v12;
    v20[1] = v13;
    v16 = *(v7 + 96);
    v24 = *(v7 + 112);
    v23 = v16;
    a2(v18, &v17);

    v22 = &_swiftEmptySetSingleton;
    (a3)(v20);
  }

  return result;
}

double sub_1007DEACC(uint64_t a1)
{
  _s11MusicVideosVMa(0);
  __chkstk_darwin();
  v2 = &v7[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + 48);
    v6 = *(*v5 + 96);
    swift_beginAccess();
    sub_1007E82DC(v5 + v6, v2, _s11MusicVideosVMa);
    sub_1006FE930(&_swiftEmptySetSingleton);
    sub_100377E84(v2);
  }

  return result;
}

double sub_1007DEBD0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + 48);
    swift_beginAccess();
    v4 = *(v3 + 48);
    v12[1] = *(v3 + 32);
    v12[2] = v4;
    v5 = *(v3 + 64);
    v13 = *(v3 + 80);
    v12[3] = v5;
    v11 = *(v3 + 32);
    v12[0] = *(v3 + 16);
    v6 = v4;
    v10 = *(v3 + 16);
    *&v9[9] = *(v3 + 65);
    *v9 = *(v3 + 56);
    sub_10021817C(v12, &v14);
    v7 = sub_10018FCA0(&_swiftEmptySetSingleton, v6);

    if ((v7 & 1) == 0)
    {
      v8 = [objc_opt_self() standardUserDefaults];
      *(&v15 + 1) = sub_10010FC20(&unk_10118CD70, &qword_100EBE248);
      v16 = sub_1007E7DD8(&unk_101182910, sub_100178D84, &protocol conformance descriptor for <> Set<A>);
      *&v17[0] = sub_1007E7DD8(&unk_101182920, sub_100178E50, &protocol conformance descriptor for <> Set<A>);
      *&v14 = &_swiftEmptySetSingleton;
      NSUserDefaults.encodeValue(_:forKey:)(&v14);

      sub_10000959C(&v14);
    }

    v14 = v10;
    v15 = v11;
    v16 = &_swiftEmptySetSingleton;
    v17[0] = *v9;
    *(v17 + 9) = *&v9[9];
    sub_100379CC8(&v14);
  }

  return result;
}

double sub_1007DEDC0(uint64_t a1)
{
  v1 = _s10TVEpisodesVMa(0);
  __chkstk_darwin();
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + 48);
    v7 = *(*v6 + 96);
    swift_beginAccess();
    sub_1007E82DC(v6 + v7, v3, _s10TVEpisodesVMa);
    v8 = *(v1 + 48);

    *&v3[v8] = &_swiftEmptySetSingleton;
    sub_10037745C(v3);
  }

  return result;
}

double sub_1007DEEE0(uint64_t a1)
{
  v1 = _s6AlbumsVMa(0);
  __chkstk_darwin();
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + 48);
    v7 = *(*v6 + 96);
    swift_beginAccess();
    sub_1007E82DC(v6 + v7, v3, _s6AlbumsVMa);
    v8 = *(v1 + 32);
    v9 = *&v3[v8];
    *&v3[v8] = &_swiftEmptySetSingleton;
    LOBYTE(v7) = sub_10018FCA0(&_swiftEmptySetSingleton, v9);

    if ((v7 & 1) == 0)
    {
      v10 = [objc_opt_self() standardUserDefaults];
      v11[3] = sub_10010FC20(&unk_10118CD70, &qword_100EBE248);
      v11[4] = sub_1007E7DD8(&unk_101182910, sub_100178D84, &protocol conformance descriptor for <> Set<A>);
      v11[5] = sub_1007E7DD8(&unk_101182920, sub_100178E50, &protocol conformance descriptor for <> Set<A>);
      v11[0] = &_swiftEmptySetSingleton;
      sub_10028A59C();
      NSUserDefaults.encodeValue(_:forKey:)(v11);

      sub_10000959C(v11);
    }

    sub_100378808(v3);
  }

  return result;
}

double sub_1007DF100(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + 48);
    swift_beginAccess();
    v4 = v3[3];
    v15[1] = v3[2];
    v5 = v3[5];
    v17 = v3[4];
    v18 = v5;
    v16 = v4;
    v6 = v3[2];
    v15[0] = v3[1];
    v7 = *(&v16 + 1);
    v12 = v3[1];
    v13 = v6;
    v14 = *(v3 + 6);
    v10 = v3[4];
    v11 = v3[5];
    sub_10030DC78(v15, &v19);
    v8 = sub_10018FCA0(&_swiftEmptySetSingleton, v7);

    if ((v8 & 1) == 0)
    {
      v9 = [objc_opt_self() standardUserDefaults];
      *(&v20 + 1) = sub_10010FC20(&unk_10118CD70, &qword_100EBE248);
      v21 = sub_1007E7DD8(&unk_101182910, sub_100178D84, &protocol conformance descriptor for <> Set<A>);
      v22 = sub_1007E7DD8(&unk_101182920, sub_100178E50, &protocol conformance descriptor for <> Set<A>);
      *&v19 = &_swiftEmptySetSingleton;
      NSUserDefaults.encodeValue(_:forKey:)(&v19);

      sub_10000959C(&v19);
    }

    v19 = v12;
    v20 = v13;
    v21 = v14;
    v22 = &_swiftEmptySetSingleton;
    v23 = v10;
    v24 = v11;
    sub_100378C30(&v19);
  }

  return result;
}

double sub_1007DF2E8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + 48);
    swift_beginAccess();
    v4 = *(v3 + 48);
    v5 = *(v3 + 64);
    v6 = *(v3 + 96);
    v14[4] = *(v3 + 80);
    v7 = *(v3 + 16);
    v8 = *(v3 + 32);
    v14[5] = v6;
    v14[2] = v4;
    v14[3] = v5;
    v14[1] = v8;
    v14[0] = v7;
    v9 = *(v3 + 16);
    v10 = *(v3 + 32);
    v11 = *(v3 + 64);
    v15[2] = *(v3 + 48);
    v15[3] = v11;
    v15[0] = v9;
    v15[1] = v10;
    v12 = *(v3 + 88);
    v18 = *(v3 + 104);
    v17 = v12;
    sub_1001103E0(v14, v13);

    v16 = &_swiftEmptySetSingleton;
    sub_100379614(v15);
  }

  return result;
}

double sub_1007DF3D4(uint64_t a1, void (*a2)(_OWORD *, uint64_t *), void (*a3)(_OWORD *, __n128))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + 48);
    swift_beginAccess();
    v8 = *(v7 + 64);
    v18[4] = *(v7 + 80);
    v9 = *(v7 + 16);
    v10 = *(v7 + 32);
    v11 = *(v7 + 48);
    v18[5] = *(v7 + 96);
    v19 = *(v7 + 112);
    v18[2] = v11;
    v18[3] = v8;
    v18[0] = v9;
    v18[1] = v10;
    v12 = *(v7 + 16);
    v13 = *(v7 + 32);
    v14 = *(v7 + 48);
    v15 = *(v7 + 64);
    v21 = *(v7 + 80);
    v20[2] = v14;
    v20[3] = v15;
    v20[0] = v12;
    v20[1] = v13;
    v16 = *(v7 + 96);
    v24 = *(v7 + 112);
    v23 = v16;
    a2(v18, &v17);

    v22 = &_swiftEmptySetSingleton;
    (a3)(v20);
  }

  return result;
}

id sub_1007DF4E0(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  __chkstk_darwin();
  v5 = OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController____lazy_storage___headerRegistration;
  v6 = sub_10010FC20(&unk_10118A650, &qword_100EC02B0);
  (*(*(v6 - 8) + 56))(&v2[v5], 1, 1, v6);
  v7 = OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController____lazy_storage___gridCellRegistration;
  v8 = sub_10010FC20(qword_101196EA0, &qword_100ED59B0);
  (*(*(v8 - 8) + 56))(&v2[v7], 1, 1, v8);
  v9 = OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController____lazy_storage___listCellRegistration;
  v10 = sub_10010FC20(&unk_1011A3DB0, &qword_100EE3DF8);
  (*(*(v10 - 8) + 56))(&v2[v9], 1, 1, v10);
  *&v2[OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController____lazy_storage___collectionView] = 0;
  v11 = OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController_prefetchingController;
  v12 = objc_allocWithZone(type metadata accessor for ArtworkPrefetchingController());
  *&v2[v11] = sub_10003AAD8(0xD000000000000024, 0x8000000100E514B0);
  *&v2[OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController_dragDropController] = 0;
  v13 = OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController____lazy_storage___actionMetricsReportingContext;
  v14 = type metadata accessor for Actions.MetricsReportingContext(0);
  (*(*(v14 - 8) + 56))(&v2[v13], 1, 1, v14);
  type metadata accessor for MusicLibrary();
  LOBYTE(v29) = 10;
  *(&v29 + 1) = static MusicLibrary.shared.getter();
  v30 = a1;
  v31 = 0;
  v32 = 0xE000000000000000;
  v33 = 260;
  v34 = 0;
  v35 = 0xE000000000000000;
  v36 = _swiftEmptyArrayStorage;
  v37 = &_swiftEmptySetSingleton;
  v38 = 0;
  v39 = 0xE000000000000000;
  v40 = _swiftEmptyArrayStorage;
  sub_10010FC20(&qword_1011A3DC0, &unk_100ED5D50);
  swift_allocObject();
  *&v2[OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController_responseController] = sub_10003D358(&v29);
  _s23LayoutVariantControllerCMa();
  swift_allocObject();
  *&v2[OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController_layoutVariantController] = sub_10059A684(0xD000000000000014, 0x8000000100E57B80, 0);
  v28.receiver = v2;
  v28.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v28, "initWithNibName:bundle:", 0, 0);
  v16 = v15;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  if (a1)
  {
    v17 = 14;
  }

  else
  {
    v17 = 13;
  }

  String.init(localized:table:bundle:locale:comment:)();
  v18 = String._bridgeToObjectiveC()();

  [v15 setTitle:v18];

  UIViewController.playActivityFeatureIdentifier.setter(v17);
  v19 = [v15 traitCollection];

  v20 = UITraitCollection.preferredLargeTitleDisplayMode.getter();
  LOBYTE(v18) = v21;

  if ((v18 & 1) == 0)
  {
    v22 = [v15 navigationItem];
    [v22 setLargeTitleDisplayMode:v20];
  }

  sub_10010FC20(&unk_101182D80, "ʫ\n");
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_100EBC6B0;
  v24 = sub_100217F14();
  *(v23 + 32) = &type metadata for LibraryFilterTrait;
  *(v23 + 40) = v24;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_100EBC6B0;
  v26 = sub_100137E8C();
  *(v25 + 32) = &type metadata for MusicLibraryTrait;
  *(v25 + 40) = v26;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  return v15;
}

void sub_1007DFA58()
{
  v1 = v0;
  v51.receiver = v0;
  v51.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v51, "viewDidLoad");
  v2 = sub_1007DFF78();
  v3 = sub_1007E0370();
  [v2 setCollectionViewLayout:v3];

  v4 = OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController____lazy_storage___collectionView;
  v5 = *&v1[OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController_prefetchingController];
  [*&v1[OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController____lazy_storage___collectionView] setPrefetchDataSource:v5];
  v6 = *&v1[v4];
  v7 = sub_100189858();
  v9 = v8;

  v10 = (v5 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_defaultArtworkMetricsProvider);
  v11 = *(v5 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_defaultArtworkMetricsProvider);
  v12 = *(v5 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_defaultArtworkMetricsProvider + 8);
  *v10 = v7;
  v10[1] = v9;
  sub_100020438(v11, v12);
  v13 = (v5 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkProvider);
  v14 = *(v5 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkProvider);
  v15 = *(v5 + OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_artworkProvider + 8);
  *v13 = sub_1007E0684;
  v13[1] = 0;
  sub_100020438(v14, v15);
  LODWORD(v6) = *(*&v1[v4] + OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 56);
  v16 = [v1 navigationItem];
  v17 = v16;
  if (v6 == 1)
  {
    [v16 setRightBarButtonItem:0];
  }

  else
  {
    sub_100009F78(0, &qword_101181580, UIBarButtonItem_ptr);
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v20 = static UIBarButtonItem.contextBarButtonItem(options:childrenProvider:)(0, sub_1007E7CDC, v18, v19);

    [v17 setRightBarButtonItem:v20];

    v17 = v20;
  }

  v21 = *&v1[v4];
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = &v21[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metricsDidUpdate];
  v24 = *&v21[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metricsDidUpdate];
  v25 = *&v21[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metricsDidUpdate + 8];
  *v23 = sub_1007E7CE4;
  v23[1] = v22;
  v26 = v21;

  sub_100020438(v24, v25);

  v27 = *&v1[OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController_layoutVariantController];
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = *(v27 + 16);
  v30 = *(v27 + 24);
  *(v27 + 16) = sub_1007E7CEC;
  *(v27 + 24) = v28;

  sub_100020438(v29, v30);

  v31 = *&v1[OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController_responseController];
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v33 = *(v31 + 16);
  v34 = *(v31 + 24);
  *(v31 + 16) = sub_1007E7CF8;
  *(v31 + 24) = v32;

  sub_100020438(v33, v34);

  v48[3] = sub_10010FC20(&unk_10118A650, &qword_100EC02B0);
  v35 = sub_10001C8B8(v48);
  sub_1007E1998(v35);
  v49[3] = sub_10010FC20(qword_101196EA0, &qword_100ED59B0);
  v36 = sub_10001C8B8(v49);
  sub_1007E1C20(v36);
  v50[3] = sub_10010FC20(&unk_1011A3DB0, &qword_100EE3DF8);
  v37 = sub_10001C8B8(v50);
  sub_1007E1E98(v37);
  swift_arrayDestroy();
  v38 = *&v1[v4];
  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for CollectionViewDragDropController(0);
  v40 = swift_allocObject();
  *(v40 + 24) = 0u;
  *(v40 + 40) = 0u;
  *(v40 + 56) = 0u;
  *(v40 + 72) = 0u;
  *(v40 + 88) = 1;
  *(v40 + 96) = 0;
  v41 = OBJC_IVAR____TtC5Music32CollectionViewDragDropController_activeDropContext;
  v42 = type metadata accessor for CollectionViewDragDropController.DropContext(0);
  (*(*(v42 - 8) + 56))(v40 + v41, 1, 1, v42);
  *(v40 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dragDelegate) = 0;
  *(v40 + OBJC_IVAR____TtC5Music32CollectionViewDragDropController_dropDelegate) = 0;
  *(v40 + 16) = v38;
  *(v40 + 24) = sub_1007E7D00;
  *(v40 + 32) = v39;
  *(v40 + 40) = 0;
  v43 = *(v40 + 56);
  v44 = *(v40 + 64);
  *(v40 + 64) = 0;
  *(v40 + 48) = 0;
  *(v40 + 56) = 0;
  v45 = v38;
  swift_retain_n();
  sub_100020438(v43, v44);
  v46 = *(v40 + 72);
  v47 = *(v40 + 80);
  *(v40 + 72) = 0;
  *(v40 + 80) = 0;
  sub_100020438(v46, v47);
  sub_100321DD8();
  sub_100322048();

  *&v1[OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController_dragDropController] = v40;

  RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);
}

id sub_1007DFF78()
{
  v1 = v0;
  v2 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UICollectionLayoutListConfiguration();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController____lazy_storage___collectionView;
  v11 = *&v1[OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController____lazy_storage___collectionView];
  if (v11)
  {
    v12 = *&v1[OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController____lazy_storage___collectionView];
LABEL_6:
    v45 = v11;
    return v12;
  }

  sub_100009F78(0, &qword_101184600, UICollectionViewCompositionalLayout_ptr);
  (*(v3 + 104))(v5, enum case for UICollectionLayoutListConfiguration.Appearance.plain(_:), v2);
  UICollectionLayoutListConfiguration.init(appearance:)();
  v13 = static UICollectionViewCompositionalLayout.list(using:)();
  (*(v7 + 8))(v9, v6);
  v14 = type metadata accessor for HIMetricsCollectionView();
  objc_allocWithZone(v14);
  v15 = v13;
  v16 = sub_100188F30(v15, 1, 0);
  result = [v1 view];
  if (result)
  {
    v18 = result;
    [result bounds];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v47.receiver = v16;
    v47.super_class = v14;
    v27 = v16;
    objc_msgSendSuper2(&v47, "frame");
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v46.receiver = v27;
    v46.super_class = v14;
    objc_msgSendSuper2(&v46, "setFrame:", v20, v22, v24, v26);
    sub_1001891B4(v29, v31, v33, v35);
    [v27 setAutoresizingMask:18];

    result = [v1 view];
    if (result)
    {
      v36 = result;
      [result addSubview:v27];

      v37 = v27;
      [v37 _setShouldPrefetchCellsWhenPerformingReloadData:1];
      [v37 setDataSource:v1];
      [v37 setDelegate:v1];
      [v37 setKeyboardDismissMode:1];
      [v37 setAllowsFocus:1];
      [v37 setRemembersLastFocusedIndexPath:1];

      v38 = AccessibilityIdentifier.libraryRecentlyAddedView.unsafeMutableAddressor();
      v39 = *v38;
      v40 = v38[1];
      v41 = v38[2];
      v42 = v38[3];

      v43 = UIView.withAccessibilityIdentifier(_:)(v39, v40, v41, v42);

      v44 = *&v1[v10];
      *&v1[v10] = v43;
      v12 = v43;

      v11 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1007E0370()
{
  v1 = sub_1007DFF78();
  v2 = v1[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 56];

  if (v2 == 1)
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController____lazy_storage___collectionView);
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController____lazy_storage___collectionView);
    if ((*(*(v0 + OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController_layoutVariantController) + 32) & 1) == 0)
    {
      v12 = objc_allocWithZone(UICollectionViewCompositionalLayoutConfiguration);
      v5 = v3;
      v6 = [v12 init];
      v13 = swift_allocObject();
      *(v13 + 16) = 0;
      v14 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v15 = swift_allocObject();
      v15[2] = v14;
      v15[3] = static MPCPlayerCommandRequest.isAvailable(in:);
      v15[4] = 0;
      v15[5] = v13;
      v10 = objc_allocWithZone(UICollectionViewCompositionalLayout);
      v23 = sub_10059B870;
      v24 = v15;
      v19 = _NSConcreteStackBlock;
      v20 = 1107296256;
      v11 = &unk_1010C0A70;
      goto LABEL_6;
    }
  }

  v4 = objc_allocWithZone(UICollectionViewCompositionalLayoutConfiguration);
  v5 = v3;
  v6 = [v4 init];
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = 0u;
  *(v9 + 40) = 0u;
  *(v9 + 56) = 0u;
  *(v9 + 72) = static MPCPlayerCommandRequest.isAvailable(in:);
  *(v9 + 80) = 0;
  *(v9 + 88) = v7;
  v10 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  v23 = sub_1002193FC;
  v24 = v9;
  v19 = _NSConcreteStackBlock;
  v20 = 1107296256;
  v11 = &unk_1010C0A20;
LABEL_6:
  v21 = sub_1005A63A8;
  v22 = v11;
  v16 = _Block_copy(&v19);

  v17 = [v10 initWithSectionProvider:v16 configuration:{v6, v19, v20}];

  _Block_release(v16);

  return v17;
}

unint64_t sub_1007E0684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v40 = a2;
  v41 = a3;
  sub_10010FC20(&unk_10118A5E0, &unk_100EBCD90);
  __chkstk_darwin();
  v39 = &v34 - v4;
  v5 = sub_10010FC20(&unk_1011A3E20, &qword_100EC8DA0);
  v37 = *(v5 - 8);
  v38 = v5;
  __chkstk_darwin();
  v7 = &v34 - v6;
  v8 = sub_10010FC20(&unk_101196FB0, &unk_100EC8DB0);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v34 - v10;
  v12 = type metadata accessor for RecentlyAddedMusicItem();
  v35 = *(v12 - 8);
  v36 = v12;
  __chkstk_darwin();
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_101196FA0, &unk_100EE3EA0);
  __chkstk_darwin();
  v16 = &v34 - v15;
  v17 = sub_10010FC20(&unk_101196F90, &qword_100EC8DC0);
  v18 = *(v17 - 8);
  __chkstk_darwin();
  v20 = &v34 - v19;
  sub_1000089F8(a1, v42, &unk_101183F30, qword_100EBF960);
  if (v43)
  {
    v21 = swift_dynamicCast();
    (*(v18 + 56))(v16, v21 ^ 1u, 1, v17);
    if ((*(v18 + 48))(v16, 1, v17) != 1)
    {
      (*(v18 + 32))(v20, v16, v17);
      v22 = MusicLibrarySectionedResponse.sections.getter();
      result = IndexPath.section.getter();
      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (result < *(v22 + 16))
      {
        (*(v9 + 16))(v11, v22 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * result, v8);

        MusicLibrarySection.items.getter();
        (*(v9 + 8))(v11, v8);
        IndexPath.item.getter();
        v24 = v38;
        MusicItemCollection.subscript.getter();
        (*(v37 + 8))(v7, v24);
        v25 = v39;
        RecentlyAddedMusicItem.artworkViewModel.getter(v39);
        (*(v35 + 8))(v14, v36);
        (*(v18 + 8))(v20, v17);
        v26 = type metadata accessor for ArtworkImage.ViewModel(0);
        if ((*(*(v26 - 8) + 48))(v25, 1, v26) != 1)
        {
          v31 = type metadata accessor for Artwork();
          v32 = *(v31 - 8);
          v33 = v41;
          (*(v32 + 16))(v41, v25, v31);
          sub_1007E8344(v25, type metadata accessor for ArtworkImage.ViewModel);
          return (*(v32 + 56))(v33, 0, 1, v31);
        }

        v27 = &unk_10118A5E0;
        v28 = &unk_100EBCD90;
        v29 = v25;
        goto LABEL_9;
      }

      __break(1u);
      return result;
    }
  }

  else
  {
    sub_1000095E8(v42, &unk_101183F30, qword_100EBF960);
    (*(v18 + 56))(v16, 1, 1, v17);
  }

  v27 = &qword_101196FA0;
  v28 = &unk_100EE3EA0;
  v29 = v16;
LABEL_9:
  sub_1000095E8(v29, v27, v28);
  v30 = type metadata accessor for Artwork();
  return (*(*(v30 - 8) + 56))(v41, 1, 1, v30);
}

void sub_1007E0CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if ((*(a1 + 56) ^ *(a2 + 56)))
    {
      v7 = sub_1007DFF78();
      v8 = sub_1007E0370();
      sub_100189E04(v8);

      v9 = *(*&v6[OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController____lazy_storage___collectionView] + OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 56);
      v10 = [v6 navigationItem];
      v11 = v10;
      if (v9 == 1)
      {
        [v10 setRightBarButtonItem:0];
      }

      else
      {
        sub_100009F78(0, &qword_101181580, UIBarButtonItem_ptr);
        v12 = swift_allocObject();
        swift_unknownObjectWeakInit();

        v14 = static UIBarButtonItem.contextBarButtonItem(options:childrenProvider:)(0, sub_1007E84CC, v12, v13);

        [v11 setRightBarButtonItem:v14];

        v11 = v14;
      }
    }
  }
}

void sub_1007E0E3C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_1007DFF78();
    v5 = sub_1007E0370();

    sub_100189E04(v5);
  }
}

uint64_t sub_1007E0EC4(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  v6 = sub_10010FC20(&unk_101196F90, &qword_100EC8DC0);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v43 = &v39 - v8;
  sub_10010FC20(&unk_10118D090, &unk_100ED5CB0);
  __chkstk_darwin();
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v39 - v11;
  v45 = *(sub_10010FC20(&qword_101196FA0, &unk_100EE3EA0) - 8);
  v13 = *(v45 + 64);
  __chkstk_darwin();
  v46 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v44 = &v39 - v14;
  __chkstk_darwin();
  v16 = &v39 - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return a2();
  }

  v18 = Strong;
  v41 = a2;
  v42 = a3;
  v47 = v16;
  RequestResponse.Revision.content.getter(v12);
  v19 = sub_10010FC20(&unk_10118D0A0, &unk_100EC8DC8);
  v20 = *(*(v19 - 8) + 48);
  if (v20(v12, 1, v19) == 1)
  {
    sub_1000095E8(v12, &unk_10118D090, &unk_100ED5CB0);
    v21 = 1;
    v22 = v47;
  }

  else
  {
    v22 = v47;
    (*(v7 + 16))(v47, v12, v6);
    sub_1000095E8(v12, &unk_10118D0A0, &unk_100EC8DC8);
    v21 = 0;
  }

  (*(v7 + 56))(v22, v21, 1, v6);
  v40 = sub_1007DFF78();
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v10);

  if (v20(v10, 1, v19) == 1)
  {
    sub_1000095E8(v10, &unk_10118D090, &unk_100ED5CB0);
    v39 = 0;
  }

  else
  {
    v24 = v43;
    (*(v7 + 16))(v43, v10, v6);
    sub_1000095E8(v10, &unk_10118D0A0, &unk_100EC8DC8);
    v39 = MusicLibrarySectionedResponse.sections.getter();
    (*(v7 + 8))(v24, v6);
  }

  v26 = v41;
  v25 = v42;
  v27 = v44;
  v28 = v47;
  sub_1000089F8(v47, v44, &qword_101196FA0, &unk_100EE3EA0);
  if ((*(v7 + 48))(v27, 1, v6) == 1)
  {
    sub_1000095E8(v27, &qword_101196FA0, &unk_100EE3EA0);
    v29 = 0;
  }

  else
  {
    v29 = MusicLibrarySectionedResponse.sections.getter();
    (*(v7 + 8))(v27, v6);
  }

  v30 = v46;
  sub_1000089F8(v28, v46, &qword_101196FA0, &unk_100EE3EA0);
  v31 = (*(v45 + 80) + 40) & ~*(v45 + 80);
  v32 = swift_allocObject();
  v32[2] = v26;
  v32[3] = v25;
  v32[4] = v18;
  sub_10003D17C(v30, v32 + v31, &qword_101196FA0, &unk_100EE3EA0);
  v33 = swift_allocObject();
  *(v33 + 16) = v18;
  v34 = v18;

  v35 = sub_10010FC20(&unk_101196FB0, &unk_100EC8DB0);
  v36 = sub_1005BF070();
  v38 = v35;
  v37 = v40;
  UICollectionView.performSectionedAIDiff<A>(oldItems:newItems:startingSectionIndex:finalSectionIndex:animated:modelUpdateHandler:identityComparator:visualComparator:alongsideUpdates:completion:)(v39, v29, 0, 0, 1, 1, sub_1007E7D08, v32, sub_1007E1690, 0, sub_10011F028, 0, sub_1007E7D7C, v33, 0, 0, v38, v36);

  return sub_1000095E8(v28, &qword_101196FA0, &unk_100EE3EA0);
}

uint64_t sub_1007E14D4(void (*a1)(__n128), uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10010FC20(&qword_101196FA0, &unk_100EE3EA0);
  v7 = __chkstk_darwin();
  v9 = &v16 - v8;
  a1(v7);
  v10 = *(a3 + OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController_prefetchingController);
  sub_1000089F8(a4, v9, &qword_101196FA0, &unk_100EE3EA0);
  v11 = sub_10010FC20(&unk_101196F90, &qword_100EC8DC0);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) == 1)
  {
    sub_1000095E8(v9, &qword_101196FA0, &unk_100EE3EA0);
    v17 = 0u;
    v18 = 0u;
  }

  else
  {
    *(&v18 + 1) = v11;
    v13 = sub_10001C8B8(&v17);
    (*(v12 + 32))(v13, v9, v11);
  }

  v14 = OBJC_IVAR____TtC5Music28ArtworkPrefetchingController_context;
  swift_beginAccess();
  sub_10006B010(&v17, v10 + v14, &unk_101183F30, qword_100EBF960);
  return swift_endAccess();
}

uint64_t sub_1007E1690(uint64_t a1, uint64_t a2)
{
  type metadata accessor for RecentlyAddedMusicItem();
  sub_1007E83AC(&qword_101197010, &type metadata accessor for RecentlyAddedMusicItem, &protocol conformance descriptor for RecentlyAddedMusicItem);
  sub_1007E83AC(&qword_101197018, &type metadata accessor for RecentlyAddedMusicItem, &protocol conformance descriptor for RecentlyAddedMusicItem);
  return static MusicItem<>.==~ infix(_:_:)() & 1;
}

id sub_1007E1750(char *a1)
{
  sub_10010FC20(&unk_10118D090, &unk_100ED5CB0);
  __chkstk_darwin();
  v3 = &v13 - v2;
  v4 = sub_10010FC20(&unk_101196F90, &qword_100EC8DC0);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v13 - v6;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v3);

  v8 = sub_10010FC20(&unk_10118D0A0, &unk_100EC8DC8);
  if ((*(*(v8 - 8) + 48))(v3, 1, v8) == 1)
  {
    sub_1000095E8(v3, &unk_10118D090, &unk_100ED5CB0);
    v9 = 1;
  }

  else
  {
    (*(v5 + 16))(v7, v3, v4);
    sub_1000095E8(v3, &unk_10118D0A0, &unk_100EC8DC8);
    v10 = MusicLibrarySectionedResponse.isEmpty.getter(v4);
    (*(v5 + 8))(v7, v4);
    v9 = !v10;
  }

  [a1 setNeedsUpdateContentUnavailableConfiguration];
  v11 = sub_1007DFF78();
  [v11 setBouncesVertically:v9 & 1];

  return [*&a1[OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController____lazy_storage___collectionView] setAlwaysBounceVertical:v9 & 1];
}

uint64_t sub_1007E1998@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&unk_10118C540, &qword_100EC0500);
  __chkstk_darwin();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController____lazy_storage___headerRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v7, v6, &unk_10118C540, &qword_100EC0500);
  v8 = sub_10010FC20(&unk_10118A650, &qword_100EC02B0);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1000095E8(v6, &unk_10118C540, &qword_100EC0500);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184750, UICollectionViewCell_ptr);
  UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
  (*(v9 + 16))(v4, a1, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  swift_beginAccess();
  sub_10006B010(v4, v1 + v7, &unk_10118C540, &qword_100EC0500);
  return swift_endAccess();
}

uint64_t sub_1007E1C20@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&qword_101197170, &qword_100ED5E18);
  __chkstk_darwin();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController____lazy_storage___gridCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v7, v6, &qword_101197170, &qword_100ED5E18);
  v8 = sub_10010FC20(qword_101196EA0, &qword_100ED59B0);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1000095E8(v6, &qword_101197170, &qword_100ED5E18);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184750, UICollectionViewCell_ptr);
  type metadata accessor for RecentlyAddedMusicItem();
  UICollectionView.CellRegistration.init(handler:)();
  (*(v9 + 16))(v4, a1, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  swift_beginAccess();
  sub_10006B010(v4, v1 + v7, &qword_101197170, &qword_100ED5E18);
  return swift_endAccess();
}

uint64_t sub_1007E1E98@<X0>(uint64_t a1@<X8>)
{
  sub_10010FC20(&unk_1011A3E00, &qword_100EE3E50);
  __chkstk_darwin();
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v11[-v5];
  v7 = OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController____lazy_storage___listCellRegistration;
  swift_beginAccess();
  sub_1000089F8(v1 + v7, v6, &unk_1011A3E00, &qword_100EE3E50);
  v8 = sub_10010FC20(&unk_1011A3DB0, &qword_100EE3DF8);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1000095E8(v6, &unk_1011A3E00, &qword_100EE3E50);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100009F78(0, &unk_101184790, UICollectionViewListCell_ptr);
  type metadata accessor for RecentlyAddedMusicItem();
  UICollectionView.CellRegistration.init(handler:)();
  (*(v9 + 16))(v4, a1, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  swift_beginAccess();
  sub_10006B010(v4, v1 + v7, &unk_1011A3E00, &qword_100EE3E50);
  return swift_endAccess();
}

char *sub_1007E2110(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&unk_10118CDB0, &unk_100EC0360);
  __chkstk_darwin();
  v4 = &v21 - v3;
  sub_10010FC20(&unk_101197040, &unk_100EDAE40);
  __chkstk_darwin();
  v6 = &v21 - v5;
  v7 = type metadata accessor for RecentlyAddedMusicItem();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    v13 = OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController_responseController;

    sub_10037DB00(a1, v6);

    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {

      sub_1000095E8(v6, &unk_101197040, &unk_100EDAE40);
      return 0;
    }

    else
    {
      (*(v8 + 32))(v10, v6, v7);
      v14 = *(*&v12[v13] + 48);
      swift_beginAccess();
      v15 = *(v14 + 80);
      v23[3] = *(v14 + 64);
      v23[4] = v15;
      v23[5] = *(v14 + 96);
      v24 = *(v14 + 112);
      v16 = *(v14 + 32);
      v23[0] = *(v14 + 16);
      v23[1] = v16;
      v23[2] = *(v14 + 48);
      sub_10003D868(v23, &v22);
      sub_100455348(v10, v4);
      sub_10003D90C(v23);
      v17 = type metadata accessor for MusicPlaybackIntentDescriptor();
      v18 = *(v17 - 8);
      if ((*(v18 + 48))(v4, 1, v17) == 1)
      {
        sub_1000095E8(v4, &unk_10118CDB0, &unk_100EC0360);
        v19 = 0;
      }

      else
      {
        v19 = MusicPlaybackIntentDescriptor.playbackIntent.getter();
        (*(v18 + 8))(v4, v17);
      }

      v20 = sub_1007989EC(v19, &off_10109C500);

      (*(v8 + 8))(v10, v7);
      return v20;
    }
  }

  return result;
}

void sub_1007E24BC(char a1)
{
  v2 = v1;
  v10.receiver = v1;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, "viewWillAppear:", a1 & 1);
  v4 = sub_1007DFF78();
  UICollectionView.clearSelection(using:animated:)([v2 transitionCoordinator], a1);

  swift_unknownObjectRelease();
  v5 = [v2 transitionCoordinator];
  if (v5)
  {
    v6 = v5;
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9[4] = sub_1007E7CD4;
    v9[5] = v7;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_1007E9F28;
    v9[3] = &unk_1010C0930;
    v8 = _Block_copy(v9);

    [v6 animateAlongsideTransition:0 completion:v8];
    _Block_release(v8);
    swift_unknownObjectRelease();
  }

  else
  {
    RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);
  }
}

double sub_1007E2640(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;

    RequestResponse.Controller.isAutomaticReloadingEnabled.setter(1);
  }

  return result;
}

uint64_t sub_1007E270C(char a1)
{
  ObjectType = swift_getObjectType();
  type metadata accessor for MetricsEvent.Page(0);
  *&v4 = __chkstk_darwin().n128_u64[0];
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21.receiver = v1;
  v21.super_class = ObjectType;
  objc_msgSendSuper2(&v21, "viewDidAppear:", a1 & 1, v4);
  v7 = *MetricsReportingController.shared.unsafeMutableAddressor();
  v8 = *(*&v1[OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController_responseController] + 48);
  swift_beginAccess();
  v9 = *(v8 + 32);
  v10 = v7;

  if (v9 == 1)
  {
    v11 = MetricsEvent.Page.libraryRecentlyDownloaded.unsafeMutableAddressor();
  }

  else
  {
    v11 = MetricsEvent.Page.libraryRecentlyAdded.unsafeMutableAddressor();
  }

  sub_1007E82DC(v11, v6, type metadata accessor for MetricsEvent.Page);

  v12 = sub_10053771C();
  v14 = v13;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v15 = qword_101218AD0;
  v16 = GroupActivitiesManager.hasJoined.getter();
  v17 = GroupActivitiesManager.participantsCount.getter();
  v18 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  (*((swift_isaMask & *v10) + 0xA0))(v6, v12, v14, v16 & 1, v17, *(v15 + v18));

  return sub_1007E8344(v6, type metadata accessor for MetricsEvent.Page);
}

void sub_1007E2A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22[0] = a1;
  v22[1] = a4;
  sub_10010FC20(&unk_10118D090, &unk_100ED5CB0);
  __chkstk_darwin();
  v6 = v22 - v5;
  v7 = sub_10010FC20(&unk_101196F90, &qword_100EC8DC0);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = v22 - v9;
  v11 = sub_10010FC20(&unk_101196FB0, &unk_100EC8DB0);
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = v22 - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    RequestResponse.Controller.revision.getter();
    RequestResponse.Revision.content.getter(v6);

    v19 = sub_10010FC20(&unk_10118D0A0, &unk_100EC8DC8);
    if ((*(*(v19 - 8) + 48))(v6, 1, v19) == 1)
    {
      sub_1000095E8(v6, &unk_10118D090, &unk_100ED5CB0);

      return;
    }

    (*(v8 + 16))(v10, v6, v7);
    sub_1000095E8(v6, &unk_10118D0A0, &unk_100EC8DC8);
    v20 = MusicLibrarySectionedResponse.sections.getter();
    (*(v8 + 8))(v10, v7);
    v21 = IndexPath.section.getter();
    if ((v21 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v21 < *(v20 + 16))
    {
      (*(v12 + 16))(v14, v20 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v21, v11);

      (*(v12 + 32))(v16, v14, v11);
      swift_getKeyPath();
      MusicLibrarySection.subscript.getter();

      sub_1005FF7FC(v22[2], v22[3], v23);

      UICollectionViewCell.contentConfiguration.setter();

      (*(v12 + 8))(v16, v11);
      return;
    }

    __break(1u);
  }
}

void sub_1007E2E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_10010FC20(&qword_1011A3DD8, &unk_100EE3E40);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v13 - v7;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    __chkstk_darwin();
    v13[-2] = a3;
    v13[-1] = v9;
    v10 = v9;
    sub_10010FC20(&unk_1011A3DE0, &qword_100ED5E30);
    v11 = _s21RecentlyAddedGridCellVMa(255);
    v12 = sub_1007E83AC(&qword_101197198, _s21RecentlyAddedGridCellVMa, &unk_100EBCD08);
    v13[0] = v11;
    v13[1] = v12;
    swift_getOpaqueTypeConformance2();
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.all.getter();
    v13[3] = v5;
    v13[4] = sub_100020674(&unk_1011A3DF0, &qword_1011A3DD8, &unk_100EE3E40, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
    sub_10001C8B8(v13);
    UIHostingConfiguration.margins(_:_:)();
    (*(v6 + 8))(v8, v5);
    UICollectionViewCell.contentConfiguration.setter();
  }
}

uint64_t sub_1007E3068(uint64_t a1, uint64_t a2)
{
  v3 = _s21RecentlyAddedGridCellVMa(0);
  __chkstk_darwin();
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RecentlyAddedMusicItem();
  (*(*(v6 - 8) + 16))(v5, a1, v6);
  v7 = sub_1007DFF78();
  v8 = *&v7[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 48];

  *&v5[*(v3 + 20)] = v8;
  sub_1007E83AC(&unk_101184780, type metadata accessor for ArtworkPrefetchingController.CacheReference, &unk_100EC2A40);
  sub_1007E83AC(&qword_101197198, _s21RecentlyAddedGridCellVMa, &unk_100EBCD08);

  View.artworkCaching(owner:)();

  return sub_1007E8344(v5, _s21RecentlyAddedGridCellVMa);
}

void sub_1007E3228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_10010FC20(&qword_1011A3E10, &unk_100EE3E58);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = v16 - v9;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    __chkstk_darwin();
    v16[-2] = a3;
    v16[-1] = v11;
    v12 = v11;
    sub_10010FC20(&qword_1011971B8, &unk_100ED5E40);
    v13 = _s21RecentlyAddedListCellVMa(255);
    v14 = sub_1007E83AC(&qword_101197190, _s21RecentlyAddedListCellVMa, &unk_100EBCCB8);
    v16[0] = v13;
    v16[1] = v14;
    swift_getOpaqueTypeConformance2();
    UIHostingConfiguration<>.init(content:)();
    static Edge.Set.horizontal.getter();

    UIHostingConfiguration.margins(_:_:)();
    v15 = *(v6 + 8);
    v15(v8, v5);
    static Edge.Set.vertical.getter();
    v16[3] = v5;
    v16[4] = sub_100020674(&qword_1011A3E18, &qword_1011A3E10, &unk_100EE3E58, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
    sub_10001C8B8(v16);
    UIHostingConfiguration.margins(_:_:)();
    v15(v10, v5);
    UICollectionViewCell.contentConfiguration.setter();
  }
}

uint64_t sub_1007E34F8(uint64_t a1, uint64_t a2)
{
  v3 = _s21RecentlyAddedListCellVMa(0);
  __chkstk_darwin();
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RecentlyAddedMusicItem();
  (*(*(v6 - 8) + 16))(v5, a1, v6);
  *&v5[*(v3 + 20)] = vdupq_n_s64(0x4050000000000000uLL);
  sub_1007E83AC(&unk_101184780, type metadata accessor for ArtworkPrefetchingController.CacheReference, &unk_100EC2A40);
  sub_1007E83AC(&qword_101197190, _s21RecentlyAddedListCellVMa, &unk_100EBCCB8);

  View.artworkCaching(owner:)();

  return sub_1007E8344(v5, _s21RecentlyAddedListCellVMa);
}

uint64_t sub_1007E3698@<X0>(char *a1@<X8>)
{
  sub_10010FC20(&unk_1011838F0, &qword_100EC1070);
  __chkstk_darwin();
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v31 - v5;
  sub_10010FC20(&unk_1011838D0, &unk_100EC0320);
  __chkstk_darwin();
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v31 - v9;
  v11 = OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController____lazy_storage___actionMetricsReportingContext;
  swift_beginAccess();
  sub_1000089F8(v1 + v11, v10, &unk_1011838D0, &unk_100EC0320);
  v12 = type metadata accessor for Actions.MetricsReportingContext(0);
  v13 = *(v12 - 1);
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    return sub_1007E7C44(v10, a1, type metadata accessor for Actions.MetricsReportingContext);
  }

  v37 = v1;
  sub_1000095E8(v10, &unk_1011838D0, &unk_100EC0320);
  v14 = MetricsEvent.Page.libraryRecentlyAdded.unsafeMutableAddressor();
  sub_1007E82DC(v14, v6, type metadata accessor for MetricsEvent.Page);
  v15 = type metadata accessor for MetricsEvent.Page(0);
  v16 = v4;
  v17 = *(*(v15 - 8) + 56);
  v17(v6, 0, 1, v15);
  v36 = v16;
  sub_1000089F8(v6, v16, &unk_1011838F0, &qword_100EC1070);
  MetricsReportingController.shared.unsafeMutableAddressor();
  v18 = sub_10053771C();
  v34 = v19;
  v35 = v18;
  if (qword_10117F600 != -1)
  {
    swift_once();
  }

  v20 = qword_101218AD0;
  v33 = GroupActivitiesManager.hasJoined.getter();
  v32 = GroupActivitiesManager.participantsCount.getter();
  sub_1000095E8(v6, &unk_1011838F0, &qword_100EC1070);
  v21 = OBJC_IVAR____TtC9MusicCore22GroupActivitiesManager_maxParticipantsCount;
  swift_beginAccess();
  v22 = *(v20 + v21);
  v23 = v12[5];
  v17(&a1[v23], 1, 1, v15);
  v24 = v12[7];
  v25 = &a1[v12[6]];
  v26 = v12[8];
  *a1 = xmmword_100EBEF60;
  sub_10006B010(v36, &a1[v23], &unk_1011838F0, &qword_100EC1070);
  v27 = v34;
  *v25 = v35;
  *(v25 + 1) = v27;
  *&a1[v24] = 0;
  *&a1[v26] = 0;
  v28 = &a1[v12[9]];
  *v28 = v33 & 1;
  *(v28 + 1) = v32;
  *(v28 + 2) = v22;
  sub_1007E82DC(a1, v8, type metadata accessor for Actions.MetricsReportingContext);
  (*(v13 + 56))(v8, 0, 1, v12);
  v29 = v37;
  swift_beginAccess();
  sub_10006B010(v8, v29 + v11, &unk_1011838D0, &unk_100EC0320);
  return swift_endAccess();
}

uint64_t sub_1007E3CB0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_10010FC20(&unk_10118A650, &qword_100EC02B0);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v16 - v8;
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v10 == a3)
  {
    goto LABEL_7;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v12 & 1) == 0)
  {
    strcpy(v16, "Unknown kind=");
    v16[7] = -4864;
    v13._countAndFlagsBits = a2;
    v13._object = a3;
    String.append(_:)(v13);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_7:
  }

  sub_1007E1998(v9);
  sub_100009F78(0, &unk_101184750, UICollectionViewCell_ptr);
  v14 = UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();
  (*(v7 + 8))(v9, v6);
  return v14;
}

void *sub_1007E3FD4(void *a1, uint64_t a2)
{
  v3 = v2;
  v70 = a1;
  sub_10010FC20(&unk_10118ABC0, &unk_100EC03E0);
  __chkstk_darwin();
  v63 = &v58 - v5;
  v6 = type metadata accessor for UICellAccessory.DisclosureIndicatorOptions();
  v64 = *(v6 - 8);
  v65 = v6;
  __chkstk_darwin();
  v61 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for UICellAccessory.DisplayedState();
  v60 = *(v62 - 8);
  __chkstk_darwin();
  v59 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10010FC20(&unk_1011A3DB0, &qword_100EE3DF8);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v58 - v11;
  v13 = sub_10010FC20(qword_101196EA0, &qword_100ED59B0);
  v66 = *(v13 - 8);
  __chkstk_darwin();
  v15 = &v58 - v14;
  sub_10010FC20(&unk_101197040, &unk_100EDAE40);
  __chkstk_darwin();
  v69 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v68 = (&v58 - v17);
  __chkstk_darwin();
  v19 = &v58 - v18;
  __chkstk_darwin();
  v67 = &v58 - v20;
  __chkstk_darwin();
  v71 = &v58 - v21;
  sub_10037DB00(a2, &v58 - v21);
  v22 = sub_1007DFF78();
  v23 = v22[OBJC_IVAR____TtC5Music23HIMetricsCollectionView_metrics + 56];

  if (v23 & 1) != 0 || (*(*&v3[OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController_layoutVariantController] + 32))
  {
    v67 = v3;
    sub_1007E1E98(v12);
    v24 = v71;
    v25 = sub_1007FEBE4(v12, a2, v71);
    (*(v10 + 8))(v12, v9);
    sub_1000089F8(v24, v19, &unk_101197040, &unk_100EDAE40);
    v26 = type metadata accessor for RecentlyAddedMusicItem();
    v27 = *(v26 - 8);
    v28 = *(v27 + 48);
    if ((v28)(v19, 1, v26) != 1)
    {
      v30 = v68;
      sub_1000089F8(v19, v68, &unk_101197040, &unk_100EDAE40);
      v31 = (*(v27 + 88))(v30, v26);
      if (v31 == enum case for RecentlyAddedMusicItem.album(_:))
      {
        goto LABEL_8;
      }

      if (v31 == enum case for RecentlyAddedMusicItem.musicMovie(_:) || v31 == enum case for RecentlyAddedMusicItem.musicVideo(_:))
      {
        (*(v27 + 8))(v30, v26);
        goto LABEL_4;
      }

      if (v31 == enum case for RecentlyAddedMusicItem.playlist(_:) || v31 == enum case for RecentlyAddedMusicItem.tvSeason(_:))
      {
LABEL_8:
        (*(v27 + 8))(v30, v26);
        sub_1000095E8(v19, &unk_101197040, &unk_100EDAE40);
        sub_10010FC20(&unk_101184740, &qword_100ED5D60);
        type metadata accessor for UICellAccessory();
        *(swift_allocObject() + 16) = xmmword_100EBC6B0;
        v68 = v28;
        v32 = v60;
        v33 = *(v60 + 104);
        v70 = v25;
        v34 = v59;
        v35 = v62;
        v33(v59, enum case for UICellAccessory.DisplayedState.always(_:), v62);
        v36 = type metadata accessor for UICellAccessory.LayoutDimension();
        (*(*(v36 - 8) + 56))(v63, 1, 1, v36);
        v37 = v61;
        UICellAccessory.DisclosureIndicatorOptions.init(isHidden:reservedLayoutWidth:tintColor:)();
        static UICellAccessory.disclosureIndicator(displayed:options:)();
        (*(v64 + 8))(v37, v65);
        v38 = v34;
        v25 = v70;
        (*(v32 + 8))(v38, v35);
        v28 = v68;
        UICollectionViewListCell.accessories.setter();
        v39 = [v67 traitCollection];
        v40 = [v39 userInterfaceIdiom];

        v41 = v40 == 6;
        v24 = v71;
        if (!v41)
        {
          v42 = v25;
          [v42 directionalLayoutMargins];
          [v42 setDirectionalLayoutMargins:?];
        }

        goto LABEL_5;
      }

      v54 = enum case for RecentlyAddedMusicItem.uploadedVideo(_:);
      v55 = v31;
      (*(v27 + 8))(v30, v26);
      if (v55 != v54)
      {
        sub_1000095E8(v19, &unk_101197040, &unk_100EDAE40);
        goto LABEL_5;
      }
    }

LABEL_4:
    sub_1000095E8(v19, &unk_101197040, &unk_100EDAE40);
    UICollectionViewListCell.accessories.setter();
LABEL_5:
    v29 = v69;
    sub_1000089F8(v24, v69, &unk_101197040, &unk_100EDAE40);
    if ((v28)(v29, 1, v26) == 1)
    {
      sub_1000095E8(v29, &unk_101197040, &unk_100EDAE40);
      v72 = 0u;
      v73 = 0u;
      v74 = 0;
    }

    else
    {
      *(&v73 + 1) = v26;
      v74 = sub_1007E83AC(&qword_101197080, &type metadata accessor for RecentlyAddedMusicItem, &protocol conformance descriptor for RecentlyAddedMusicItem);
      v43 = sub_10001C8B8(&v72);
      (*(v27 + 32))(v43, v29, v26);
    }

    sub_1000095E8(&v72, &qword_1011A3DD0, &unk_100EC03F0);
    goto LABEL_22;
  }

  sub_1007E1C20(v15);
  v44 = v71;
  v45 = sub_1007FD1B8(v15, a2, v71);
  (*(v66 + 8))(v15, v13);
  v46 = Corner.medium.unsafeMutableAddressor();
  v47 = *v46;
  v48 = v46[1];
  v49 = *(v46 + 16);
  v50 = swift_allocObject();
  *(v50 + 16) = v47;
  *(v50 + 24) = v48;
  *(v50 + 32) = v49;
  UICollectionViewCell.configurationUpdateHandler.setter();
  v51 = v67;
  sub_1000089F8(v44, v67, &unk_101197040, &unk_100EDAE40);
  v52 = type metadata accessor for RecentlyAddedMusicItem();
  v53 = *(v52 - 8);
  if ((*(v53 + 48))(v51, 1, v52) == 1)
  {
    sub_1000095E8(v51, &unk_101197040, &unk_100EDAE40);
    v72 = 0u;
    v73 = 0u;
    v74 = 0;
  }

  else
  {
    *(&v73 + 1) = v52;
    v74 = sub_1007E83AC(&qword_101197080, &type metadata accessor for RecentlyAddedMusicItem, &protocol conformance descriptor for RecentlyAddedMusicItem);
    v56 = sub_10001C8B8(&v72);
    (*(v53 + 32))(v56, v51, v52);
  }

  v25 = sub_1004F24B0(&v72);

  sub_1000095E8(&v72, &qword_1011A3DD0, &unk_100EC03F0);
  v24 = v71;
LABEL_22:
  sub_1000095E8(v24, &unk_101197040, &unk_100EDAE40);
  return v25;
}

BOOL sub_1007E4B9C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = type metadata accessor for IndexPath();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = UICollectionView.isDraggingCell(at:)();

  (*(v6 + 8))(v8, v5);
  return (v10 & 1) == 0;
}

id sub_1007E4F00(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = sub_10023D4E4(v9, 0, 1);

  (*(v7 + 8))(v9, v6);

  return v11;
}

uint64_t sub_1007E5060()
{
  sub_10010FC20(&unk_10118D090, &unk_100ED5CB0);
  __chkstk_darwin();
  v1 = &v11 - v0;
  v2 = sub_10010FC20(&unk_101196F90, &qword_100EC8DC0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v11 - v6;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v1);

  v8 = sub_10010FC20(&unk_10118D0A0, &unk_100EC8DC8);
  if ((*(*(v8 - 8) + 48))(v1, 1, v8) == 1)
  {
    sub_1000095E8(v1, &unk_10118D090, &unk_100ED5CB0);
  }

  else
  {
    (*(v3 + 16))(v5, v1, v2);
    sub_1000095E8(v1, &unk_10118D0A0, &unk_100EC8DC8);
    (*(v3 + 32))(v7, v5, v2);
    if (MusicLibrarySectionedResponse.isEmpty.getter(v2))
    {
      *(&v12 + 1) = type metadata accessor for UIContentUnavailableConfiguration();
      v13 = &protocol witness table for UIContentUnavailableConfiguration;
      v9 = sub_10001C8B8(&v11);
      sub_1007DA098(byte_1010C0698, sub_1007E799C, &_s13RecentlyAddedVN, sub_1007E79E0, &unk_1010C06C0, sub_10003D868, v9);
      UIViewController.contentUnavailableConfiguration.setter();
      return (*(v3 + 8))(v7, v2);
    }

    (*(v3 + 8))(v7, v2);
  }

  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  return UIViewController.contentUnavailableConfiguration.setter();
}

void *sub_1007E5448(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = Strong;
  isa = sub_100597E50().super.super.isa;
  v4 = [(objc_class *)isa children];

  sub_100009F78(0, &qword_10118CDE0, UIMenuElement_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v5;
}

uint64_t type metadata accessor for LibraryRecentlyAddedViewController(uint64_t a1)
{
  result = qword_1011A3D98;
  if (!qword_1011A3D98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1007E56B4(uint64_t a1)
{
  sub_10003920C(319, &unk_101184560, &unk_10118A650, &qword_100EC02B0);
  if (v1 <= 0x3F)
  {
    sub_10003920C(319, &qword_101196E98, qword_101196EA0, &qword_100ED59B0);
    if (v2 <= 0x3F)
    {
      sub_10003920C(319, &qword_1011A3DA8, &unk_1011A3DB0, &qword_100EE3DF8);
      if (v3 <= 0x3F)
      {
        sub_1002114E8(319);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1007E586C(char *a1)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  type metadata accessor for String.LocalizationValue();
  *&v2 = __chkstk_darwin().n128_u64[0];
  v3 = *&a1[OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController_responseController];
  v4 = [a1 traitCollection];
  sub_100217F14();
  UITraitCollection.subscript.getter();

  v5 = sub_10049CB78();

  v6 = *(v3 + 48);
  swift_beginAccess();
  v7 = *(v6 + 16);
  v8 = *(v6 + 32);
  v9 = *(v6 + 48);
  v10 = *(v6 + 64);
  v11 = *(v6 + 96);
  v26[4] = *(v6 + 80);
  v26[5] = v11;
  v27 = *(v6 + 112);
  v26[2] = v9;
  v26[3] = v10;
  v26[0] = v7;
  v26[1] = v8;
  v19 = *(v6 + 16);
  v20 = v5 & 1;
  v12 = *(v6 + 33);
  v22 = *(v6 + 49);
  v21 = v12;
  v13 = *(v6 + 65);
  v14 = *(v6 + 81);
  v15 = *(v6 + 97);
  *&v25[15] = *(v6 + 112);
  *v25 = v15;
  v24 = v14;
  v23 = v13;
  sub_10003D868(v26, &v18);
  sub_100379FBC(&v19);
  v16 = [a1 traitCollection];
  UITraitCollection.subscript.getter();

  sub_10049CB78();

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v17 = String._bridgeToObjectiveC()();

  [a1 setTitle:v17];
}

uint64_t sub_1007E5B30(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController_responseController];
  v2 = [a1 traitCollection];
  sub_100137E8C();
  UITraitCollection.subscript.getter();

  v3 = *&v24[0];
  v4 = *(v1 + 48);
  swift_beginAccess();
  v5 = *(v4 + 16);
  v6 = *(v4 + 32);
  v7 = *(v4 + 48);
  v8 = *(v4 + 64);
  v9 = *(v4 + 96);
  v24[4] = *(v4 + 80);
  v24[5] = v9;
  v25 = *(v4 + 112);
  v24[2] = v7;
  v24[3] = v8;
  v24[0] = v5;
  v24[1] = v6;
  v10 = v5;
  v11 = *(v4 + 32);
  v19 = *(v4 + 48);
  v18 = v11;
  v12 = *(v4 + 64);
  v13 = *(v4 + 80);
  v14 = *(v4 + 96);
  v23 = *(v4 + 112);
  v22 = v14;
  v21 = v13;
  v20 = v12;
  sub_10003D868(v24, v16);

  v17[0] = v10;
  v17[1] = v3;
  return sub_100379FBC(v17);
}

uint64_t sub_1007E5C38()
{
  sub_10010FC20(&unk_10118D090, &unk_100ED5CB0);
  __chkstk_darwin();
  v1 = &v10 - v0;
  v2 = sub_10010FC20(&unk_101196F90, &qword_100EC8DC0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v10 - v4;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v1);

  v6 = sub_10010FC20(&unk_10118D0A0, &unk_100EC8DC8);
  if ((*(*(v6 - 8) + 48))(v1, 1, v6) == 1)
  {
    sub_1000095E8(v1, &unk_10118D090, &unk_100ED5CB0);
    return 0;
  }

  else
  {
    (*(v3 + 16))(v5, v1, v2);
    sub_1000095E8(v1, &unk_10118D0A0, &unk_100EC8DC8);
    v8 = MusicLibrarySectionedResponse.sections.getter();
    (*(v3 + 8))(v5, v2);
    v7 = *(v8 + 16);
  }

  return v7;
}

uint64_t sub_1007E5E3C(unint64_t a1)
{
  v19 = a1;
  v1 = sub_10010FC20(&unk_1011A3E20, &qword_100EC8DA0);
  v18 = *(v1 - 8);
  __chkstk_darwin();
  v3 = &v18 - v2;
  v4 = sub_10010FC20(&unk_101196FB0, &unk_100EC8DB0);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v18 - v6;
  sub_10010FC20(&unk_10118D090, &unk_100ED5CB0);
  __chkstk_darwin();
  v9 = &v18 - v8;
  v10 = sub_10010FC20(&unk_101196F90, &qword_100EC8DC0);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v18 - v12;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v9);

  v14 = sub_10010FC20(&unk_10118D0A0, &unk_100EC8DC8);
  if ((*(*(v14 - 8) + 48))(v9, 1, v14) == 1)
  {
    sub_1000095E8(v9, &unk_10118D090, &unk_100ED5CB0);
    return 0;
  }

  (*(v11 + 16))(v13, v9, v10);
  sub_1000095E8(v9, &unk_10118D0A0, &unk_100EC8DC8);
  v16 = MusicLibrarySectionedResponse.sections.getter();
  result = (*(v11 + 8))(v13, v10);
  if ((v19 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (*(v16 + 16) <= v19)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  (*(v5 + 16))(v7, v16 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v19, v4);

  MusicLibrarySection.items.getter();
  (*(v5 + 8))(v7, v4);
  sub_100020674(&unk_101197060, &unk_1011A3E20, &qword_100EC8DA0, &protocol conformance descriptor for MusicItemCollection<A>);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v17 = dispatch thunk of Collection.distance(from:to:)();
  (*(v18 + 8))(v3, v1);
  return v17;
}

char *sub_1007E6258()
{
  v0 = sub_10010FC20(&unk_101196FB0, &unk_100EC8DB0);
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v28 - v2;
  sub_10010FC20(&unk_10118D090, &unk_100ED5CB0);
  __chkstk_darwin();
  v5 = &v28 - v4;
  v6 = sub_10010FC20(&unk_101196F90, &qword_100EC8DC0);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v28 - v8;
  RequestResponse.Controller.revision.getter();
  RequestResponse.Revision.content.getter(v5);

  v10 = sub_10010FC20(&unk_10118D0A0, &unk_100EC8DC8);
  if ((*(*(v10 - 8) + 48))(v5, 1, v10) == 1)
  {
    sub_1000095E8(v5, &unk_10118D090, &unk_100ED5CB0);
    return 0;
  }

  else
  {
    (*(v7 + 16))(v9, v5, v6);
    sub_1000095E8(v5, &unk_10118D0A0, &unk_100EC8DC8);
    v12 = MusicLibrarySectionedResponse.sections.getter();
    (*(v7 + 8))(v9, v6);
    v13 = *(v12 + 16);
    if (v13)
    {
      v15 = *(v1 + 16);
      v14 = v1 + 16;
      v16 = *(v14 + 64);
      v28 = v12;
      v17 = v12 + ((v16 + 32) & ~v16);
      v29 = *(v14 + 56);
      v30 = v15;
      v31 = v14;
      v18 = (v14 - 8);
      v11 = _swiftEmptyArrayStorage;
      v15(v3, v17, v0);
      while (1)
      {
        swift_getKeyPath();
        MusicLibrarySection.subscript.getter();

        v20 = v32;
        v19 = v33;

        v21 = HIBYTE(v19) & 0xF;
        if ((v19 & 0x2000000000000000) == 0)
        {
          v21 = v20 & 0xFFFFFFFFFFFFLL;
        }

        if (v21)
        {
          swift_getKeyPath();
          MusicLibrarySection.subscript.getter();

          (*v18)(v3, v0);
          v23 = v32;
          v22 = v33;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_100498B7C(0, *(v11 + 2) + 1, 1, v11);
          }

          v25 = *(v11 + 2);
          v24 = *(v11 + 3);
          if (v25 >= v24 >> 1)
          {
            v11 = sub_100498B7C((v24 > 1), v25 + 1, 1, v11);
          }

          *(v11 + 2) = v25 + 1;
          v26 = &v11[16 * v25];
          *(v26 + 4) = v23;
          *(v26 + 5) = v22;
        }

        else
        {
          (*v18)(v3, v0);
        }

        v17 += v29;
        if (!--v13)
        {
          break;
        }

        v30(v3, v17, v0);
      }
    }

    else
    {

      return _swiftEmptyArrayStorage;
    }
  }

  return v11;
}

uint64_t sub_1007E6680(uint64_t a1)
{
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v4 = (&v16 - v3);
  sub_10010FC20(&unk_101197040, &unk_100EDAE40);
  __chkstk_darwin();
  v6 = &v16 - v5;
  v7 = type metadata accessor for RecentlyAddedMusicItem();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v1 + OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController_responseController);
  sub_10037DB00(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_1000095E8(v6, &unk_101197040, &unk_100EDAE40);
  }

  (*(v8 + 32))(v10, v6, v7);
  v13 = type metadata accessor for IndexPath();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v4, a1, v13);
  (*(v14 + 56))(v4, 0, 1, v13);
  v15 = *(v11 + 48);
  swift_beginAccess();
  sub_1007D53D4(v10, v4, *(v15 + 32), &unk_1010C0738, &unk_1010C07D8, sub_1007E7A50, &OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController_prefetchingController, &OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController_responseController, sub_100376F5C, &unk_1010C07B0, &unk_100ECA700);
  sub_1000095E8(v4, &unk_10118BCE0, &qword_100EC6450);
  return (*(v8 + 8))(v10, v7);
}

id sub_1007E6994(uint64_t a1)
{
  v73 = *(sub_10010FC20(&unk_1011838D0, &unk_100EC0320) - 8);
  __chkstk_darwin();
  v75 = &v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = v2;
  __chkstk_darwin();
  v80 = &v54 - v3;
  v71 = *(sub_10010FC20(&unk_10118CDB0, &unk_100EC0360) - 8);
  v4 = *(v71 + 64);
  __chkstk_darwin();
  v72 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v77 = &v54 - v5;
  sub_10010FC20(&unk_101197040, &unk_100EDAE40);
  __chkstk_darwin();
  v7 = &v54 - v6;
  v8 = type metadata accessor for RecentlyAddedMusicItem();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v76 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v54 - v11;
  __chkstk_darwin();
  v14 = &v54 - v13;
  v15 = *(type metadata accessor for IndexPath() - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin();
  v20 = __chkstk_darwin();
  if (!*(a1 + 16))
  {
    return 0;
  }

  v66 = v12;
  v67 = v19;
  v69 = v14;
  v70 = v15;
  v21 = *(v15 + 16);
  v22 = *(v15 + 80);
  v23 = &v54 - v17;
  v79 = v18;
  v65 = v21;
  (v21)(&v54 - v17, a1 + ((v22 + 32) & ~v22), v18, v20);
  v24 = *(v81 + OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController_responseController);
  v78 = v23;
  sub_10037DB00(v23, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    (*(v70 + 8))(v78, v79);
    sub_1000095E8(v7, &unk_101197040, &unk_100EDAE40);
    return 0;
  }

  v59 = v22;
  v60 = ~v22;
  v26 = v9;
  v27 = *(v9 + 32);
  v63 = v9 + 32;
  v64 = v27;
  v28 = v69;
  v68 = v8;
  v27(v69, v7, v8);
  v29 = *(v24 + 48);
  swift_beginAccess();
  v30 = *(v29 + 80);
  v88[3] = *(v29 + 64);
  v88[4] = v30;
  v88[5] = *(v29 + 96);
  v89 = *(v29 + 112);
  v31 = *(v29 + 32);
  v88[0] = *(v29 + 16);
  v88[1] = v31;
  v88[2] = *(v29 + 48);
  sub_10003D868(v88, &aBlock);
  v32 = v77;
  v57 = v4;
  v33 = v28;
  sub_100455348(v28, v77);
  sub_10003D90C(v88);
  v34 = v80;
  sub_1007E3698(v80);
  v35 = type metadata accessor for Actions.MetricsReportingContext(0);
  (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v36 = v26;
  v62 = v26;
  v55 = *(v26 + 16);
  v37 = v66;
  v38 = v68;
  v55(v66, v33, v68);
  v39 = *(v36 + 80);
  v56 = v39 | 7;
  v58 = swift_allocObject();
  v64(v58 + ((v39 + 16) & ~v39), v37, v38);
  v66 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v55(v76, v33, v38);
  v40 = v72;
  sub_1000089F8(v32, v72, &unk_10118CDB0, &unk_100EC0360);
  v41 = v67;
  v65(v67, v78, v79);
  v42 = v75;
  sub_1000089F8(v80, v75, &unk_1011838D0, &unk_100EC0320);
  v43 = (v39 + 24) & ~v39;
  v44 = (v43 + v10 + *(v71 + 80)) & ~*(v71 + 80);
  v45 = (v57 + v59 + v44) & v60;
  v46 = (v16 + *(v73 + 80) + v45) & ~*(v73 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = v66;
  v64(v47 + v43, v76, v68);
  sub_10003D17C(v40, v47 + v44, &unk_10118CDB0, &unk_100EC0360);
  v48 = v70;
  (*(v70 + 32))(v47 + v45, v41, v79);
  sub_10003D17C(v42, v47 + v46, &unk_1011838D0, &unk_100EC0320);
  v49 = objc_opt_self();
  v86 = sub_1005C27D8;
  v87 = v58;
  aBlock = _NSConcreteStackBlock;
  v83 = 1107296256;
  v84 = sub_100747E6C;
  v85 = &unk_1010C0840;
  v50 = _Block_copy(&aBlock);

  v86 = sub_1007E7A68;
  v87 = v47;
  aBlock = _NSConcreteStackBlock;
  v83 = 1107296256;
  v84 = sub_100747EBC;
  v85 = &unk_1010C0868;
  v51 = _Block_copy(&aBlock);

  v52 = isa;
  v53 = [v49 configurationWithIdentifier:isa previewProvider:v50 actionProvider:v51];

  _Block_release(v51);
  _Block_release(v50);
  sub_1000095E8(v80, &unk_1011838D0, &unk_100EC0320);
  sub_1000095E8(v77, &unk_10118CDB0, &unk_100EC0360);
  (*(v62 + 8))(v69, v68);
  (*(v48 + 8))(v78, v79);

  return v53;
}

id sub_1007E73F8(void *a1, void *a2)
{
  v26[0] = a2;
  sub_10010FC20(&unk_101197040, &unk_100EDAE40);
  __chkstk_darwin();
  v5 = v26 - v4;
  v6 = type metadata accessor for RecentlyAddedMusicItem();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&unk_10118BCE0, &qword_100EC6450);
  __chkstk_darwin();
  v11 = v26 - v10;
  v12 = type metadata accessor for IndexPath();
  v13 = *(v12 - 8);
  *&v14 = __chkstk_darwin().n128_u64[0];
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26[1] = [a1 identifier];
  sub_10010FC20(&unk_1011846A0, &unk_100EC8F60);
  v17 = swift_dynamicCast();
  v18 = *(v13 + 56);
  if ((v17 & 1) == 0)
  {
    v18(v11, 1, 1, v12);
    v20 = &unk_10118BCE0;
    v21 = &qword_100EC6450;
    v22 = v11;
    goto LABEL_5;
  }

  v18(v11, 0, 1, v12);
  (*(v13 + 32))(v16, v11, v12);
  v19 = *(v2 + OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController_responseController);
  sub_10037DB00(v16, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    (*(v13 + 8))(v16, v12);
    v20 = &unk_101197040;
    v21 = &unk_100EDAE40;
    v22 = v5;
LABEL_5:
    sub_1000095E8(v22, v20, v21);
    return [v26[0] setPreferredCommitStyle:0];
  }

  (*(v7 + 32))(v9, v5, v6);
  v24 = *(v19 + 48);
  swift_beginAccess();
  v25 = sub_1007D7658(v9, v26[0], *(v24 + 32));
  (*(v7 + 8))(v9, v6, v25);
  return (*(v13 + 8))(v16, v12);
}

void sub_1007E7798()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController____lazy_storage___headerRegistration;
  v3 = sub_10010FC20(&unk_10118A650, &qword_100EC02B0);
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController____lazy_storage___gridCellRegistration;
  v5 = sub_10010FC20(qword_101196EA0, &qword_100ED59B0);
  (*(*(v5 - 8) + 56))(v1 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController____lazy_storage___listCellRegistration;
  v7 = sub_10010FC20(&unk_1011A3DB0, &qword_100EE3DF8);
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  *(v1 + OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController____lazy_storage___collectionView) = 0;
  v8 = OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController_prefetchingController;
  v9 = objc_allocWithZone(type metadata accessor for ArtworkPrefetchingController());
  *(v1 + v8) = sub_10003AAD8(0xD000000000000024, 0x8000000100E514B0);
  *(v1 + OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController_dragDropController) = 0;
  v10 = OBJC_IVAR____TtC5Music34LibraryRecentlyAddedViewController____lazy_storage___actionMetricsReportingContext;
  v11 = type metadata accessor for Actions.MetricsReportingContext(0);
  (*(*(v11 - 8) + 56))(v1 + v10, 1, 1, v11);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_1007E79E0()
{
  result = qword_1011A3DC8;
  if (!qword_1011A3DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011A3DC8);
  }

  return result;
}

unint64_t sub_1007E7A68(uint64_t a1)
{
  v3 = *(type metadata accessor for RecentlyAddedMusicItem() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(sub_10010FC20(&unk_10118CDB0, &unk_100EC0360) - 8);
  v7 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for IndexPath() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(sub_10010FC20(&unk_1011838D0, &unk_100EC0320) - 8);
  return sub_1007D7F24(a1, *(v1 + 16), v1 + v4, v1 + v7, v1 + v10, (v1 + ((v10 + v11 + *(v12 + 80)) & ~*(v12 + 80))), sub_100376F5C, &unk_1010C08C8, sub_100217D28);
}

uint64_t sub_1007E7C44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1007E7D08()
{
  v1 = *(sub_10010FC20(&qword_101196FA0, &unk_100EE3EA0) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_1007E14D4(v2, v3, v4, v5);
}

uint64_t sub_1007E7DD8(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(&unk_10118CD70, &qword_100EBE248);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_1007E7E60()
{
  v1 = *(type metadata accessor for MusicVideo() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_10012262C(v2, v3);
}

uint64_t sub_1007E7EC4()
{
  v1 = type metadata accessor for RecentlyAddedMusicItem();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1007E7FA4(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for RecentlyAddedMusicItem() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));
  v5 = *(v4 + *(v2 + 64));

  return a1(v3, v4, v5);
}

uint64_t sub_1007E803C(uint64_t a1)
{
  v4 = *(type metadata accessor for PlaybackIntentDescriptor(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002F3F4;

  return sub_100423504(a1, v6, v7, v1 + v5);
}

uint64_t sub_1007E812C(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);

  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_1007E82DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1007E8344(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1007E83AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1007E8438()
{

  return swift_deallocObject();
}

void UINavigationController.push(_:traitOverrides:animated:)(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = [v3 viewControllers];
  sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v9 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
    if (v10)
    {
LABEL_3:
      v11 = __OFSUB__(v10, 1);
      v12 = v10 - 1;
      if (v11)
      {
        __break(1u);
      }

      else if ((v9 & 0xC000000000000001) == 0)
      {
        if ((v12 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v12 < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v13 = *(v9 + 8 * v12 + 32);
LABEL_8:
          v14 = v13;

          goto LABEL_11;
        }

        __break(1u);
LABEL_26:
        swift_once();
        goto LABEL_17;
      }

      v13 = sub_1000260B0(v12, v9, &qword_101183D40, UIViewController_ptr);
      goto LABEL_8;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_3;
    }
  }

  v14 = 0;
LABEL_11:
  v15 = sub_100037DF4(v14, a1);

  if (v15)
  {
    return;
  }

  type metadata accessor for TraitNavigationController();
  v16 = swift_dynamicCastClass();
  if (v16)
  {
    v17 = *((swift_isaMask & *v16) + 0x50);
    v22 = v3;
    v17(a1, a2, a3 & 1);

    return;
  }

  if (qword_10117FD80 != -1)
  {
    goto LABEL_26;
  }

LABEL_17:
  v18 = type metadata accessor for Logger();
  sub_1000060E4(v18, qword_1012195E0);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Pushing viewController with traitOverrides to a non TraitNavigationController, traitOverrides will be ignored.", v21, 2u);
  }

  [v4 pushViewController:a1 animated:a3 & 1];
}