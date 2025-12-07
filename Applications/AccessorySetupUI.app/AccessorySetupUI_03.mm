double sub_10003CAE4(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v6 = *(v16 - 8);
  __chkstk_darwin(v16);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 invalidate];
  sub_100009B48(0, &qword_10007F550, OS_dispatch_queue_ptr);
  v15 = static OS_dispatch_queue.main.getter();
  v9 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  aBlock[4] = sub_100042A08;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000102BC;
  aBlock[3] = &unk_1000735F8;
  v11 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  sub_100042A10(&qword_10007F280, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100009894(&unk_10007F560, &qword_10005C590);
  sub_100022AF4(&qword_10007F288, &unk_10007F560, &qword_10005C590, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v12 = v15;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v17 + 8))(v5, v3);
  (*(v6 + 8))(v8, v16);

  return result;
}

void sub_10003CE28(uint64_t a1)
{
  v2 = objc_opt_self();
  v4[4] = sub_100042A58;
  v4[5] = a1;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_1000102BC;
  v4[3] = &unk_100073620;
  v3 = _Block_copy(v4);

  [v2 animateWithDuration:v3 animations:0.5];
  _Block_release(v3);
}

void sub_10003CF00(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_discoveryTitleLabel);
    v3 = Strong;
    v4 = v2;

    if (!v2)
    {
      __break(1u);
      goto LABEL_9;
    }

    [v4 setAlpha:1.0];
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (!v5)
  {
    return;
  }

  v6 = *(v5 + OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_discoverySubtitleLabel);
  v7 = v5;
  v8 = v6;

  if (!v6)
  {
LABEL_9:
    __break(1u);
    return;
  }

  [v8 setAlpha:1.0];
}

void sub_10003CFEC(void *a1)
{
  v2 = v1;
  v4 = sub_100009894(&qword_1000801B0, &qword_10005D0D0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v41 - v6;
  v8 = a1[16];
  if (!v8)
  {
    v20 = *&v2[OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_discoverySubtitleLabel];
    if (v20)
    {
      v21 = v20;
      sub_100009588(0.2);
      v22 = String._bridgeToObjectiveC()();
      [v21 setText:v22];

      v23 = [v2 view];
      if (v23)
      {
        v24 = v23;
        [v23 setNeedsLayout];

        v25 = [v2 view];
        if (v25)
        {
          v26 = v25;
          [v25 layoutIfNeeded];

          v27 = objc_opt_self();
          v28 = swift_allocObject();
          *(v28 + 16) = v2;
          aBlock[4] = sub_1000432F0;
          aBlock[5] = v28;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1000102BC;
          aBlock[3] = &unk_100073260;
          v29 = _Block_copy(aBlock);
          v30 = v2;

          [v27 animateWithDuration:2 delay:v29 usingSpringWithDamping:0 initialSpringVelocity:0.8 options:0.0 animations:0.7 completion:0.0];
          _Block_release(v29);
          return;
        }

        goto LABEL_17;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  v9 = *&v2[OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_carouselView];
  if (v9)
  {
    v10 = OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_devices;
    v11 = *&v2[OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_devices];
    v42 = a1[16];
    aBlock[0] = v11;

    v12 = v9;
    sub_100009894(&qword_1000801B8, &qword_10005D0D8);
    sub_100022AF4(&qword_1000801C0, &qword_1000801B8, &qword_10005D0D8, &protocol conformance descriptor for [A]);
    sub_100042A10(&qword_1000801C8, type metadata accessor for ASUIDevice, &protocol conformance descriptor for NSObject);
    BidirectionalCollection<>.difference<A>(from:)();
    sub_100022AF4(&unk_1000801D0, &qword_1000801B0, &qword_10005D0D0, &protocol conformance descriptor for CollectionDifference<A>);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    if (aBlock[0] == v42)
    {
      v8, v13, v14, v15, v16, v17, v18, v19;
    }

    else
    {
      v31 = *&v2[v10];
      *&v2[v10] = v8;
      v31, v13, v14, v15, v16, v17, v18, v19;
      v32 = *&v2[v10];

      sub_100003E70(v33);

      v32, v34, v35, v36, v37, v38, v39, v40;
    }

    (*(v5 + 8))(v7, v4);
  }

  else
  {

    sub_10003D41C(a1);
  }
}

void sub_10003D41C(void *a1)
{
  v3 = v1;
  v5 = type metadata accessor for Locale();
  __chkstk_darwin(v5 - 8);
  v7 = v206 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for String.LocalizationValue();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v209 = (v206 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v210 = v206 - v12;
  v13 = a1[16];
  if (!v13)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v14 = OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_devices;
  v15 = *&v1[OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_devices];
  *(v3 + OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_devices) = v13;

  v15, v16, v17, v18, v19, v20, v21, v22;
  v23 = a1[21];
  if (!v23)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v24 = v3 + OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_appName;
  v25 = *(v3 + OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_appName + 8);
  v216 = a1[20];
  *v24 = v216;
  v24[1] = v23;
  swift_bridgeObjectRetain_n();
  v25, v26, v27, v28, v29, v30, v31, v32;
  v33 = *(v3 + v14);
  v34 = qword_10007EBF0;

  if (v34 != -1)
  {
    swift_once();
  }

  v35 = type metadata accessor for Logger();
  sub_1000032F0(v35, qword_10007EF70);

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  v33, v38, v39, v40, v41, v42, v43, v44;
  v45 = os_log_type_enabled(v36, v37);
  v207 = v9;
  v208 = v8;
  v206[1] = v7;
  v215 = v14;
  if (v45)
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    aBlock = v47;
    *v46 = 136315138;
    type metadata accessor for ASUIDevice();
    v48 = Array.description.getter();
    v49 = a1;
    v51 = v50;
    v52 = sub_10003FFF4(v48, v50, &aBlock);
    v53 = v51;
    a1 = v49;
    v53, v54, v55, v56, v57, v58, v59, v60;
    *(v46 + 4) = v52;
    _os_log_impl(&_mh_execute_header, v36, v37, "init ASUIProductCarouselView with devices %s", v46, 0xCu);
    sub_100009AB0(v47);
  }

  v61 = [objc_allocWithZone(type metadata accessor for ASUIProductCarouselView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v62 = *&v61[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_devices];
  *&v61[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_devices] = v33;
  v63 = v61;
  v62, v64, v65, v66, v67, v68, v69, v70;
  v71 = &v63[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_appName];
  v72 = *&v63[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_appName + 8];
  *v71 = v216;
  *(v71 + 1) = v23;
  v72, v73, v74, v75, v76, v77, v78, v79;
  v63[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_includeTitleAndSubtitle] = 1;
  v63[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_includeDisplayName] = 1;
  sub_100005CD4();

  v80 = OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_carouselView;
  v81 = *(v3 + OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_carouselView);
  *(v3 + OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_carouselView) = v63;
  v82 = v63;

  [v82 setTranslatesAutoresizingMaskIntoConstraints:0];
  v83 = *&v80[v3];
  if (!v83)
  {
    goto LABEL_52;
  }

  aBlock = *(v83 + OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_currentPageIdxPublisher);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_100009894(&qword_10007F108, &unk_10005D0E0);
  sub_100022AF4(&qword_1000801E0, &qword_10007F108, &unk_10005D0E0, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  v84 = Publisher<>.sink(receiveValue:)();

  *(v3 + OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_cancellable) = v84;

  v85 = *&v80[v3];
  if (!v85)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  p_ivars = *(v85 + OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_currentNumberOfPagesPublisher);
  aBlock = p_ivars;
  swift_allocObject();
  swift_unknownObjectWeakInit();

  v87 = Publisher<>.sink(receiveValue:)();

  *(v3 + OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_cancellablePageControl) = v87;

  v88 = OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_discoveryTitleLabel;
  v89 = *(v3 + OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_discoveryTitleLabel);
  if (!v89)
  {
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  [v89 setAlpha:0.0];
  v90 = OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_discoverySubtitleLabel;
  v91 = *(v3 + OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_discoverySubtitleLabel);
  if (v91)
  {
    [v91 setAlpha:0.0];
  }

  v92 = OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_discoverySpinner;
  v93 = *(v3 + OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_discoverySpinner);
  if (!v93)
  {
    goto LABEL_55;
  }

  [v93 setAlpha:0.0];
  v94 = *&v215[v3];
  if (!(v94 >> 62))
  {
    if (*((v94 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_15;
    }

LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_43;
  }

LABEL_15:
  if ((v94 & 0xC000000000000001) != 0)
  {
LABEL_44:

    v95 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v94, v199, v200, v201, v202, v203, v204, v205;
    goto LABEL_18;
  }

  if (!*((v94 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_46;
  }

  v95 = *(v94 + 32);
LABEL_18:
  v96 = *&v95[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice];
  if (!v96)
  {
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v97 = [v96 appAccessInfoMap];
  v211 = v95;
  v212 = v92;
  v216 = v80;
  v213 = v90;
  v214 = v88;
  if (v97 && (v98 = v97, sub_100009B48(0, &qword_10007F100, DADeviceAppAccessInfo_ptr), v99 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)(), v98, v100 = *(v99 + 16), v99, v101, v102, v103, v104, v105, v106, v107, v100))
  {
    v108 = v210;
    String.LocalizationValue.init(stringLiteral:)();
    v110 = v207;
    v109 = v208;
    (*(v207 + 16))(v209, v108, v208);
    static Locale.current.getter();
    String.init(localized:table:bundle:locale:comment:)();
    v112 = v111;
    (*(v110 + 8))(v108, v109);
  }

  else
  {
    v112 = a1[7];
  }

  v113 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v209 = v112;
  v114 = String._bridgeToObjectiveC()();
  v221 = sub_10003FF8C;
  v222 = v113;
  aBlock = _NSConcreteStackBlock;
  v2 = 1107296256;
  v218 = 1107296256;
  v219 = sub_10001BE14;
  v220 = &unk_1000732B0;
  v115 = _Block_copy(&aBlock);
  v116 = objc_opt_self();
  v117 = [v116 actionWithTitle:v114 style:0 handler:v115];

  _Block_release(v115);

  v210 = v117;

  v118 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v119 = String._bridgeToObjectiveC()();
  v221 = sub_10003FFBC;
  v222 = v118;
  aBlock = _NSConcreteStackBlock;
  v218 = 1107296256;
  v219 = sub_10001BE14;
  v220 = &unk_1000732D8;
  v120 = _Block_copy(&aBlock);
  v121 = [v116 actionWithTitle:v119 style:1 handler:v120];

  _Block_release(v120);

  v122 = [v3 contentView];
  v123 = v216;
  if (!*&v216[v3])
  {
    goto LABEL_57;
  }

  v124 = v122;
  [v122 addSubview:?];

  v125 = v213;
  v126 = *&v214[v3];
  v127 = v212;
  if (!v126)
  {
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  [v126 removeFromSuperview];
  v128 = *(v3 + v125);
  if (v128)
  {
    [v128 removeFromSuperview];
  }

  v129 = *(v3 + v127);
  if (!v129)
  {
    goto LABEL_59;
  }

  v214 = v121;
  [v129 removeFromSuperview];
  v130 = [v3 contentView];
  v131 = [v130 mainContentGuide];

  sub_100009894(&qword_10007F0D8, &unk_10005C5A0);
  v132 = swift_allocObject();
  *(v132 + 16) = xmmword_10005C4D0;
  v133 = *&v123[v3];
  if (!v133)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v134 = [v133 topAnchor];
  v135 = [v131 topAnchor];
  v136 = [v134 constraintEqualToAnchor:v135];

  *(v132 + 32) = v136;
  v137 = *&v123[v3];
  if (!v137)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v138 = [v137 bottomAnchor];
  v215 = v131;
  v139 = [v131 bottomAnchor];
  v140 = [v138 constraintEqualToAnchor:v139];

  *(v132 + 40) = v140;
  v141 = *&v123[v3];
  if (!v141)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v142 = [v141 leadingAnchor];
  v143 = [v3 contentView];
  v144 = [v143 leadingAnchor];

  v145 = [v142 constraintEqualToAnchor:v144];
  *(v132 + 48) = v145;
  v146 = *&v123[v3];
  if (!v146)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v147 = objc_opt_self();
  v148 = [v146 trailingAnchor];
  v149 = [v3 contentView];
  v150 = [v149 trailingAnchor];

  v151 = [v148 constraintEqualToAnchor:v150];
  *(v132 + 56) = v151;
  sub_100009B48(0, &qword_10007F0E0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v132, v153, v154, v155, v156, v157, v158, v159;
  [v147 activateConstraints:isa];

  v160 = *&v123[v3];
  if (!v160)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  p_ivars = &ASUIPresenter.ivars;
  [v160 setAlpha:0.0];
  v161 = [v3 bottomTray];
  v162 = [v161 actionButtons];

  sub_100009B48(0, &unk_1000801E8, PRXButton_ptr);
  v94 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v80 = v215;
  if (!(v94 >> 62))
  {
    if (*((v94 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_35;
    }

LABEL_47:
    v94, v163, v164, v165, v166, v167, v168, v169;
    __break(1u);
    goto LABEL_48;
  }

LABEL_46:
  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_47;
  }

LABEL_35:
  if ((v94 & 0xC000000000000001) == 0)
  {
    if (*((v94 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v170 = *(v94 + 32);
      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_50;
  }

LABEL_48:
  v170 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_38:
  v178 = v170;
  v94, v171, v172, v173, v174, v175, v176, v177;
  [v178 p_ivars[131]];

  sub_10003F408();
  if (!v179)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v180 = v179;
  [v179 p_ivars[131]];

  v181 = [v3 view];
  if (!v181)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v182 = v181;
  [v181 setNeedsLayout];

  v183 = [v3 view];
  if (v183)
  {
    v191 = v183;
    v209, v184, v185, v186, v187, v188, v189, v190;
    [v191 layoutIfNeeded];

    v192 = objc_opt_self();
    v193 = swift_allocObject();
    *(v193 + 16) = v3;
    v221 = sub_1000432F0;
    v222 = v193;
    aBlock = _NSConcreteStackBlock;
    v218 = v2;
    v219 = sub_1000102BC;
    v220 = &unk_100073328;
    v194 = _Block_copy(&aBlock);
    v195 = v3;

    [v192 animateWithDuration:2 delay:v194 usingSpringWithDamping:0 initialSpringVelocity:1.0 options:0.0 animations:0.7 completion:0.0];
    _Block_release(v194);
    v196 = swift_allocObject();
    *(v196 + 16) = v195;
    v221 = sub_10003FFEC;
    v222 = v196;
    aBlock = _NSConcreteStackBlock;
    v218 = v2;
    v219 = sub_1000102BC;
    v220 = &unk_100073378;
    v197 = _Block_copy(&aBlock);
    v198 = v195;

    [v192 animateWithDuration:0 delay:v197 options:0 animations:0.6 completion:0.0];

    _Block_release(v197);
    return;
  }

LABEL_67:
  __break(1u);
}

void sub_10003E3C0(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for String.LocalizationValue();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v85 - v9;
  if (*a1 != -1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      v86 = v5;
      v13 = OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_carouselView;
      v14 = *(Strong + OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_carouselView);
      if (!v14)
      {
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v15 = v14;
      sub_100004B70();

      v16 = objc_opt_self();
      v17 = swift_allocObject();
      *(v17 + 16) = v12;
      v91 = sub_1000432F0;
      v92 = v17;
      aBlock = _NSConcreteStackBlock;
      v88 = 1107296256;
      v89 = sub_1000102BC;
      v90 = &unk_100073738;
      v18 = _Block_copy(&aBlock);
      v19 = v12;

      [v16 animateWithDuration:2 delay:v18 usingSpringWithDamping:0 initialSpringVelocity:0.8 options:0.0 animations:0.7 completion:0.0];
      _Block_release(v18);
      v20 = v19;
      v21 = [v20 bottomTray];
      v22 = [v21 actionButtons];

      sub_100009B48(0, &unk_1000801E8, PRXButton_ptr);
      v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v23 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter())
        {
LABEL_6:
          if ((v23 & 0xC000000000000001) == 0)
          {
            v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v24)
            {
              __break(1u);
              goto LABEL_26;
            }

            v25 = *(v23 + 32);
LABEL_9:
            v33 = v25;
            v23, v26, v27, v28, v29, v30, v31, v32;

            v34 = [v33 titleLabel];
            if (!v34)
            {
LABEL_30:
              __break(1u);
              goto LABEL_31;
            }

            v24 = *&v12[v13];
            if (!v24)
            {
LABEL_31:
              __break(1u);
              goto LABEL_32;
            }

            v35 = *&v24[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_currentPageIdx];
            v22 = *&v24[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_devices];
            if ((v22 & 0xC000000000000001) == 0)
            {
              if ((v35 & 0x8000000000000000) != 0)
              {
                __break(1u);
              }

              else if (v35 < *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v36 = *&v22->systemMonitor[8 * v35];
                goto LABEL_15;
              }

              __break(1u);
              goto LABEL_29;
            }

LABEL_26:
            v76 = v24;
            v85 = v13;
            v77 = v76;

            v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();

            v13 = v85;
            v22, v78, v79, v80, v81, v82, v83, v84;
LABEL_15:
            v37 = *&v36[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice];
            if (v37)
            {
              v85 = v20;
              v38 = [v37 appAccessInfoMap];
              if (v38)
              {
                v39 = v38;
                sub_100009B48(0, &qword_10007F100, DADeviceAppAccessInfo_ptr);
                v40 = v16;
                v41 = v13;
                v42 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

                v43 = v42;
                v13 = v41;
                v16 = v40;
                v43, v44, v45, v46, v47, v48, v49, v50;
              }

              else
              {
              }

              String.LocalizationValue.init(stringLiteral:)();
              v51 = v86;
              (*(v86 + 16))(v8, v10, v4);
              static Locale.current.getter();
              v52 = String.init(localized:table:bundle:locale:comment:)();
              v54 = v53;
              (*(v51 + 8))(v10, v4);
              v91 = nullsub_1;
              v92 = 0;
              aBlock = _NSConcreteStackBlock;
              v88 = 1107296256;
              v89 = sub_1000102BC;
              v90 = &unk_100073760;
              v55 = _Block_copy(&aBlock);
              v56 = swift_allocObject();
              v57 = v85;
              v56[2] = v85;
              v56[3] = v52;
              v56[4] = v54;
              v91 = sub_100042B04;
              v92 = v56;
              aBlock = _NSConcreteStackBlock;
              v88 = 1107296256;
              v89 = sub_10003B844;
              v90 = &unk_1000737B0;
              v58 = _Block_copy(&aBlock);
              v59 = v57;

              [v16 animateWithDuration:v55 animations:v58 completion:0.3];
              _Block_release(v58);
              _Block_release(v55);
              v60 = *&v12[v13];
              if (v60)
              {
                v61 = v60;
                v54, v62, v63, v64, v65, v66, v67, v68;
                sub_100004E10();

                return;
              }

LABEL_33:
              __break(1u);
              return;
            }

LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

LABEL_24:
          v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_9;
        }
      }

      else if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_6;
      }

      v23, v69, v70, v71, v72, v73, v74, v75;
      __break(1u);
      goto LABEL_24;
    }
  }
}

void sub_10003EA78(int a1, id a2)
{
  v2 = [a2 bottomTray];
  v3 = [v2 actionButtons];

  sub_100009B48(0, &unk_1000801E8, PRXButton_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v4 >> 62))
  {
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_10:
    v4, v5, v6, v7, v8, v9, v10, v11;
    __break(1u);
    goto LABEL_11;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) != 0)
  {
LABEL_11:
    v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_6;
  }

  if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    return;
  }

  v12 = *(v4 + 32);
LABEL_6:
  v20 = v12;
  v4, v13, v14, v15, v16, v17, v18, v19;
  sub_100009588(0.2);
  v21 = String._bridgeToObjectiveC()();
  [v20 setTitle:v21 forState:0];
}

void sub_10003EBD0(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_carouselView;
      v5 = *(Strong + OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_carouselView);
      if (v5)
      {
        v6 = *&v5[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingPageControl];
        if (v6)
        {
          v7 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_numberOfPages;
          v8 = *&v5[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_numberOfPages];
          v9 = v5;
          [v6 setNumberOfPages:v8];
          v10 = *&v9[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_backingPageControlHeightConstraint];
          if (v10)
          {
            [v10 setActive:*&v5[v7] < 2];

            v11 = objc_opt_self();
            v12 = swift_allocObject();
            *(v12 + 16) = v3;
            v22 = sub_100042AA8;
            v23 = v12;
            aBlock = _NSConcreteStackBlock;
            v19 = 1107296256;
            v20 = sub_1000102BC;
            v21 = &unk_1000736C0;
            v13 = _Block_copy(&aBlock);
            v14 = v3;

            v22 = nullsub_1;
            v23 = 0;
            aBlock = _NSConcreteStackBlock;
            v19 = 1107296256;
            v20 = sub_10003B844;
            v21 = &unk_1000736E8;
            v15 = _Block_copy(&aBlock);
            [v11 animateWithDuration:2 delay:v13 usingSpringWithDamping:v15 initialSpringVelocity:0.8 options:0.0 animations:0.7 completion:0.0];
            _Block_release(v15);
            _Block_release(v13);
            v16 = *&v3[v4];
            if (v16)
            {
              v17 = v16;
              sub_10000574C();

              return;
            }

LABEL_12:
            __break(1u);
            return;
          }

LABEL_11:
          __break(1u);
          goto LABEL_12;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_11;
    }
  }
}

void sub_10003EE24()
{
  v1 = v0;
  v2 = String._bridgeToObjectiveC()();
  [v1 showActivityIndicatorWithStatus:v2];

  v3 = OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_carouselView;
  v72 = v1;
  v4 = *&v1[OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_carouselView];
  if (!v4)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v4[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_didSelect] = 1;
  v5 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_shouldOnlyDisplayCenterPage;
  v4[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_shouldOnlyDisplayCenterPage] = 1;
  v6 = *&v4[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_productScrollView];
  if (!v6)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v7 = v4;
  [v6 setUserInteractionEnabled:0];
  v8 = *&v7[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_pageControl];
  if (!v8)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  [v8 setHidden:v4[v5]];
  v9 = *&v7[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_subtitleLabel];
  if (v9)
  {
    [v9 setHidden:v4[v5]];
  }

  v71 = v3;
  v10 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_pages;
  swift_beginAccess();
  v11 = *&v7[v10];
  if (v11 >> 62)
  {
    goto LABEL_35;
  }

  for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v13 = OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_currentPageIdx;

    if (!i)
    {
      break;
    }

    v14 = 0;
    v15 = v11 & 0xC000000000000001;
    v16 = v11 & 0xFFFFFFFFFFFFFF8;
    v73 = v11 & 0xC000000000000001;
    v74 = v11;
    while (1)
    {
      if (v15)
      {
        v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v14 >= *(v16 + 16))
        {
          goto LABEL_34;
        }

        v27 = *&v11->systemMonitor[8 * v14];
      }

      v28 = v27;
      v29 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v14 == *&v7[v13])
      {
      }

      else
      {
        v17 = v13;
        v18 = i;
        v19 = objc_opt_self();
        v20 = swift_allocObject();
        *(v20 + 16) = v28;
        *(v20 + 24) = v7;
        *&v77 = sub_100042AA0;
        *(&v77 + 1) = v20;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v76 = sub_1000102BC;
        *(&v76 + 1) = &unk_100073670;
        v21 = v7;
        v22 = _Block_copy(&aBlock);
        v23 = v21;
        v24 = v28;

        v25 = v19;
        i = v18;
        v13 = v17;
        v15 = v73;
        v11 = v74;
        [v25 animateWithDuration:0 delay:v22 options:0 animations:0.333 completion:0.0];

        v26 = v22;
        v7 = v21;
        _Block_release(v26);
      }

      ++v14;
      if (v29 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    ;
  }

LABEL_19:

  v11, v30, v31, v32, v33, v34, v35, v36;
  v37 = *(v72 + v71);
  if (!v37)
  {
    goto LABEL_42;
  }

  v38 = v37;
  sub_100004B70();

  v39 = *(v72 + v71);
  if (!v39)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v40 = v39;
  sub_100004E10();

  v41 = v72 + OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_routingContext;
  swift_beginAccess();
  v42 = *(v41 + 48);
  v77 = *(v41 + 32);
  v78 = v42;
  v79 = *(v41 + 64);
  v43 = *(v41 + 16);
  aBlock = *v41;
  v76 = v43;
  *v41 = 257;
  *(v41 + 8) = 0u;
  *(v41 + 24) = 0u;
  *(v41 + 40) = 0u;
  *(v41 + 56) = 0u;
  sub_10000A634(&aBlock);
  if (*(v41 + 16) == 1)
  {
    goto LABEL_30;
  }

  *v41 = 1;
  v44 = *(v72 + v71);
  if (!v44)
  {
    goto LABEL_44;
  }

  v45 = *&v44[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_currentPageIdx];
  v46 = *&v44[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_devices];
  if ((v46 & 0xC000000000000001) == 0)
  {
    if ((v45 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v45 < *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v47 = *&v46->systemMonitor[8 * v45];
      goto LABEL_27;
    }

    __break(1u);
    goto LABEL_39;
  }

  v63 = v44;

  v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();

  v46, v64, v65, v66, v67, v68, v69, v70;
LABEL_27:
  v48 = *&v47[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice];
  if (!v48)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v49 = [v48 identifier];
  if (!v49)
  {
LABEL_46:
    __break(1u);
    return;
  }

  v50 = v49;
  v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v53 = v52;

  v54 = *(v41 + 48);
  *(v41 + 40) = v51;
  *(v41 + 48) = v53;
  v54, v55, v56, v57, v58, v59, v60, v61;
LABEL_30:
  swift_endAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_10004161C(v72, Strong, &OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_type, &OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_routingContext, &unk_1000733B0, sub_10002A5C4);
    swift_unknownObjectRelease();
  }
}

char *sub_10003F318()
{
  v1 = v0 + OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_routingContext;
  swift_beginAccess();
  v2 = *(v1 + 48);
  v5[2] = *(v1 + 32);
  v5[3] = v2;
  v6 = *(v1 + 64);
  v3 = *(v1 + 16);
  v5[0] = *v1;
  v5[1] = v3;
  *v1 = 257;
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  sub_10000A634(v5);
  if (*(v1 + 16) != 1)
  {
    *v1 = 0;
  }

  swift_endAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10004161C(v0, result, &OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_type, &OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_routingContext, &unk_1000733B0, sub_10002A5C4);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10003F408()
{
  v1 = [v0 bottomTray];
  v2 = [v1 actionButtons];

  sub_100009B48(0, &unk_1000801E8, PRXButton_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v11 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3, v4, v5, v6, v7, v8, v9, v10;
  if (v11 >= 2)
  {
    v12 = [v0 bottomTray];
    v13 = [v12 actionButtons];

    v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    if ((v14 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_7;
    }

    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v15 = *(v14 + 40);
LABEL_7:
      v14, v16, v17, v18, v19, v20, v21, v22;
      return;
    }

    __break(1u);
  }
}

void sub_10003F564(void *a1)
{
  v1 = [a1 view];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 window];

    if (v3)
    {
      [v3 layoutIfNeeded];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10003F600(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_carouselView];
  if (!v2)
  {
    goto LABEL_15;
  }

  [v2 setAlpha:1.0];
  v3 = [a1 bottomTray];
  v4 = [v3 actionButtons];

  sub_100009B48(0, &unk_1000801E8, PRXButton_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v5 >> 62))
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_12:
    v5, v6, v7, v8, v9, v10, v11, v12;
    __break(1u);
    goto LABEL_13;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((v5 & 0xC000000000000001) == 0)
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v13 = *(v5 + 32);
      goto LABEL_7;
    }

    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_13:
  v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_7:
  v21 = v13;
  v5, v14, v15, v16, v17, v18, v19, v20;
  [v21 setAlpha:1.0];

  sub_10003F408();
  if (!v22)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v23 = v22;
  [v22 setAlpha:1.0];
}

void sub_10003F7D0()
{
  v1 = *&v0[OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_carouselView];
  if (!v1)
  {
    goto LABEL_15;
  }

  v2 = *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_currentPageIdx];
  v3 = *&v1[OBJC_IVAR____TtC16AccessorySetupUI23ASUIProductCarouselView_devices];
  if ((v3 & 0xC000000000000001) == 0)
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v2 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v4 = *&v3->systemMonitor[8 * v2];
      goto LABEL_6;
    }

    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v33 = v1;

  v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();

  v3, v34, v35, v36, v37, v38, v39, v40;
LABEL_6:
  v5 = [objc_allocWithZone(type metadata accessor for ASUIDeviceInfoPopoverViewController()) init];
  v6 = *&v5[OBJC_IVAR____TtC16AccessorySetupUI35ASUIDeviceInfoPopoverViewController_device];
  *&v5[OBJC_IVAR____TtC16AccessorySetupUI35ASUIDeviceInfoPopoverViewController_device] = v4;

  v7 = v5;
  [v7 setModalPresentationStyle:7];
  v8 = [objc_opt_self() mainScreen];
  [v8 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v43.origin.x = v10;
  v43.origin.y = v12;
  v43.size.width = v14;
  v43.size.height = v16;
  [v7 setPreferredContentSize:{CGRectGetWidth(v43) + -20.0, 300.0}];
  v41 = [v7 popoverPresentationController];

  if (v41)
  {
    v17 = v41;
    v18 = [v0 infoButton];
    [v17 setSourceView:v18];

    v19 = v17;
    v20 = [v0 infoButton];
    if (v20)
    {
      v21 = v20;
      [v20 bounds];
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v29 = v28;

      [v19 setSourceRect:{v23, v25, v27, v29}];
      [v19 setPermittedArrowDirections:2];
      [v19 setDelegate:v0];
      v30 = objc_opt_self();
      v31 = v19;
      v32 = [v30 systemWhiteColor];
      [v31 setBackgroundColor:v32];

      goto LABEL_9;
    }

LABEL_16:
    __break(1u);
    return;
  }

LABEL_9:
  [v0 presentViewController:v7 animated:1 completion:0];
}

void sub_10003FAF0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

id sub_10003FBB8(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (*&v2[OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_cancellable])
  {

    AnyCancellable.cancel()();
  }

  if (*&v2[OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_cancellablePageControl])
  {

    AnyCancellable.cancel()();
  }

  v5.receiver = v2;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, "dealloc");
}

__n128 sub_10003FDF4@<Q0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_routingContext);
  swift_beginAccess();
  v4 = v3[3];
  v11 = v3[2];
  v12 = v4;
  v13 = *(v3 + 8);
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  sub_1000253C8(&v9, &v8, &unk_10007F570, &unk_10005C510);
  v6 = v12;
  *(a1 + 32) = v11;
  *(a1 + 48) = v6;
  *(a1 + 64) = v13;
  result = v10;
  *a1 = v9;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10003FEF4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10003FF2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10003FF44(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v2, 24, 7);
}

unint64_t sub_10003FFF4(uint64_t a1, _TtC16AccessorySetupUI17ASUIServerManager *a2, uint64_t *a3)
{

  v6 = sub_1000400C0(v18, 0, 0, 1, a1, a2);
  v14 = v18[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v18[0] = a1;
    v18[1] = a2;
    v16 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v15 = v6;
  a2, v7, v8, v9, v10, v11, v12, v13;
  ObjectType = swift_getObjectType();
  v18[0] = v15;
  v16 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10004059C(v18, v16);
    *a3 = v16 + 32;
  }

LABEL_4:
  sub_100009AB0(v18);
  return v14;
}

unint64_t sub_1000400C0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1000401CC(a5, a6);
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

void *sub_1000401CC(uint64_t a1, unint64_t a2)
{
  v3 = sub_100040218(a1, a2);
  sub_100040348(&off_100071138);
  return v3;
}

void *sub_100040218(uint64_t a1, unint64_t a2)
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

  v6 = sub_100040434(v5, 0);
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
        v7 = sub_100040434(v10, 0);
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

void sub_100040348(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *&(*v1)->router[8];
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *&v3->router[16] >> 1)
  {
    if (*(result + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v26 = v4 + v2;
  }

  else
  {
    v26 = v4;
  }

  v3 = sub_1000404A8(isUniquelyReferenced_nonNull_native, v26, 1, v3, v11, v12, v13, v14);
  if (!*(result + 16))
  {
LABEL_13:
    result, v8, v9, v10, v11, v12, v13, v14;
    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v15 = *&v3->router[8];
  if ((*&v3->router[16] >> 1) - v15 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3->systemMonitor[v15], (result + 32), v2);
  result, v16, v17, v18, v19, v20, v21, v22;
  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v23 = *&v3->router[8];
  v24 = __OFADD__(v23, v2);
  v25 = v23 + v2;
  if (!v24)
  {
    *&v3->router[8] = v25;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void *sub_100040434(uint64_t a1, uint64_t a2)
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

  sub_100009894(&unk_1000801F8, &unk_10005D0F0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

_TtC16AccessorySetupUI17ASUIServerManager *sub_1000404A8(_TtC16AccessorySetupUI17ASUIServerManager *result, int64_t a2, void *a3, _TtC16AccessorySetupUI17ASUIServerManager *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *&a4->router[16];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
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

  v12 = *&a4->router[8];
  if (v11 <= v12)
  {
    v13 = *&a4->router[8];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_100009894(&unk_1000801F8, &unk_10005D0F0);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    *&v14->router[8] = v12;
    *&v14->router[16] = 2 * v15 - 64;
  }

  else
  {
    v14 = _swiftEmptyArrayStorage;
  }

  systemMonitor = v14->systemMonitor;
  v17 = a4->systemMonitor;
  if (v9)
  {
    if (v14 != a4 || systemMonitor >= &v17[v12])
    {
      memmove(systemMonitor, v17, v12);
    }

    *&a4->router[8] = 0;
  }

  else
  {
    memcpy(systemMonitor, v17, v12);
  }

  a4, v17, a3, a4, a5, a6, a7, a8;
  return v14;
}

uint64_t sub_10004059C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_100040658(uint64_t a1, char *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_100009894(&qword_100080208, &unk_10005D100);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v176[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v15 = __chkstk_darwin(v12);
  v17 = &v176[-v16 - 8];
  __chkstk_darwin(v15);
  v19 = &v176[-v18 - 8];
  v20 = &v182;
  switch(*(a1 + *a3))
  {
    case 0:
      v79 = (a1 + *a4);
      v80 = v79[3];
      v184 = v79[2];
      v185 = v80;
      v81 = *(v79 + 8);
      v186 = v81;
      v82 = v79[1];
      v182 = *v79;
      v183 = v82;
      if (v82 == 1)
      {
        return;
      }

      if ((v182 & 1) == 0)
      {
        goto LABEL_79;
      }

      if (v81)
      {
        v141 = v79[3];
        v179 = v79[2];
        v180 = v141;
        v181 = *(v79 + 8);
        v142 = v79[1];
        v177 = *v79;
        v178 = v142;
        sub_1000427E4(&v177, v176);
        if (qword_10007EC50 != -1)
        {
          swift_once();
        }

        if (*(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_systemMonitor))
        {

          sub_10002D23C();

          goto LABEL_92;
        }

LABEL_131:
        __break(1u);
LABEL_132:
        __break(1u);
        goto LABEL_133;
      }

      v83 = v79[3];
      v179 = v79[2];
      v180 = v83;
      v181 = *(v79 + 8);
      v84 = v79[1];
      v177 = *v79;
      v178 = v84;
      sub_1000427E4(&v177, v176);
LABEL_92:
      if ((v81 & 2) != 0)
      {
        if (qword_10007EC50 != -1)
        {
          swift_once();
        }

        if (*(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_systemMonitor))
        {

          sub_10000A634(&v182);
          sub_10002DCD4();

          return;
        }

        goto LABEL_132;
      }

LABEL_105:
      sub_10000A634(&v182);
      return;
    case 1:
    case 0xC:
    case 0xE:
      goto LABEL_2;
    case 2:
      v45 = (a1 + *a4);
      v46 = v45[3];
      v184 = v45[2];
      v185 = v46;
      v186 = *(v45 + 8);
      v47 = v45[1];
      v182 = *v45;
      v183 = v47;
      if (v47 == 1)
      {
        return;
      }

      if ((v182 & 1) == 0)
      {
        goto LABEL_79;
      }

      v48 = v45[3];
      v179 = v45[2];
      v180 = v48;
      v181 = *(v45 + 8);
      v49 = v45[1];
      v177 = *v45;
      v178 = v49;
      sub_1000427E4(&v177, v176);
      sub_1000268D0();
      v20 = *&a2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession];
      if (v20)
      {
        goto LABEL_111;
      }

      __break(1u);
LABEL_29:
      v50 = (a1 + *a4);
      v51 = v50[3];
      v20[2] = v50[2];
      v20[3] = v51;
      v186 = *(v50 + 8);
      v52 = v50[1];
      *v20 = *v50;
      v20[1] = v52;
      if (v183 == 1)
      {
        return;
      }

      if ((v182 & 1) == 0)
      {
        goto LABEL_79;
      }

      v53 = v50[3];
      v179 = v50[2];
      v180 = v53;
      v181 = *(v50 + 8);
      v54 = v50[1];
      v177 = *v50;
      v178 = v54;
      sub_1000427E4(&v177, v176);
      sub_1000268D0();
      v20 = *&a2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession];
      if (v20)
      {
        goto LABEL_111;
      }

      __break(1u);
LABEL_33:
      v55 = (a1 + *a4);
      v56 = v55[1];
      *v20 = *v55;
      v20[1] = v56;
      v57 = v55[3];
      v20[2] = v55[2];
      v20[3] = v57;
      v186 = *(v55 + 8);
      if (v183 == 1)
      {
        return;
      }

      v58 = v182;
      v59 = *&a2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_navigationController];
      v60 = v55[3];
      v179 = v55[2];
      v180 = v60;
      v181 = *(v55 + 8);
      v61 = v55[1];
      v177 = *v55;
      v178 = v61;
      sub_1000427E4(&v177, v176);
      if (v59)
      {
        [v59 dismissViewControllerAnimated:1 completion:0];
      }

      if (v58)
      {
        goto LABEL_105;
      }

      v125 = [objc_opt_self() defaultWorkspace];
      if (!v125)
      {
        goto LABEL_124;
      }

      v126 = v125;
      sub_10000A634(&v182);
      URL.init(string:)();
      v127 = type metadata accessor for URL();
      v128 = *(v127 - 8);
      v130 = 0;
      if ((*(v128 + 48))(v14, 1, v127) != 1)
      {
        URL._bridgeToObjectiveC()(v129);
        v130 = v131;
        (*(v128 + 8))(v14, v127);
      }

      v132 = sub_1000428D0(_swiftEmptyArrayStorage);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      v132, v134, v135, v136, v137, v138, v139, v140;
      [v126 openSensitiveURL:v130 withOptions:isa];

      return;
    case 3:
      goto LABEL_29;
    case 4:
      v65 = (a1 + *a4);
      v66 = v65[3];
      v184 = v65[2];
      v185 = v66;
      v186 = *(v65 + 8);
      v67 = v65[1];
      v182 = *v65;
      v183 = v67;
      if (v67 == 1)
      {
        return;
      }

      if (v182)
      {
        v68 = v185;
        if (v185)
        {
          v69 = *&a2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession];
          if (v69)
          {
            v70 = *(&v184 + 1);

            v71 = v69;
            sub_100018B28(v70, v68);

            v68, v72, v73, v74, v75, v76, v77, v78;
          }
        }

        return;
      }

      v120 = v65[3];
      v179 = v65[2];
      v180 = v120;
      v181 = *(v65 + 8);
      v121 = v65[1];
      v177 = *v65;
      v178 = v121;
      sub_1000427E4(&v177, v176);
      if (qword_10007EC50 != -1)
      {
        swift_once();
      }

      v122 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
      if (!v122)
      {
        goto LABEL_127;
      }

      v123 = v122;
      sub_10000A634(&v182);
      v124 = v123[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_filterInApp];

      if (v124)
      {
LABEL_79:
        v21 = *&a2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_navigationController];
        if (v21)
        {
LABEL_80:
          [v21 dismissViewControllerAnimated:1 completion:0];
        }
      }

      else
      {
        sub_1000284D4();
      }

      return;
    case 5:
      goto LABEL_120;
    case 6:
    case 8:
      v22 = (a1 + *a4);
      v23 = v22[3];
      v184 = v22[2];
      v185 = v23;
      v186 = *(v22 + 8);
      v24 = v22[1];
      v182 = *v22;
      v183 = v24;
      if (v24 != 1)
      {
        if (v182)
        {
          v25 = *&a2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession];
          if (v25)
          {
            v26 = *(&v183 + 1);
            v27 = v184;
            sub_1000253C8(&v182, &v177, &unk_10007F570, &unk_10005C510);
            v28 = v25;
            sub_10001B4D4(1, v26, v27);
            sub_10000A634(&v182);
          }
        }

        else
        {
          sub_100028DCC();
          v110 = *&a2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession];
          if (v110)
          {
            v111 = v110;
            sub_10001B4D4(0, 0, 0);
          }
        }
      }

      return;
    case 9:
      v86 = (a1 + *a4);
      v87 = v86[1];
      v182 = *v86;
      v183 = v87;
      v88 = v86[3];
      v184 = v86[2];
      v185 = v88;
      v186 = *(v86 + 8);
      v89 = v183;
      if (v183 == 1)
      {
        return;
      }

      if ((v182 & 1) == 0)
      {
        goto LABEL_67;
      }

      if (!v183)
      {
        goto LABEL_67;
      }

      v90 = v185;
      if (!v185)
      {
        goto LABEL_67;
      }

      v91 = *(&v182 + 1);
      v92 = BYTE7(v183) & 0xF;
      if ((v183 & 0x2000000000000000) == 0)
      {
        v92 = *(&v182 + 1) & 0xFFFFFFFFFFFFLL;
      }

      if (v92 && (v93 = *&a2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession]) != 0)
      {
        v94 = *(&v184 + 1);
        sub_1000253C8(&v182, &v177, &unk_10007F570, &unk_10005C510);

        v95 = v93;
        sub_10001A4E0(v94, v90, v91, v89);

        v90, v96, v97, v98, v99, v100, v101, v102;
        v89, v103, v104, v105, v106, v107, v108, v109;
      }

      else
      {
LABEL_67:
        v112 = v86[3];
        v179 = v86[2];
        v180 = v112;
        v181 = *(v86 + 8);
        v113 = v86[1];
        v177 = *v86;
        v178 = v113;
        sub_1000427E4(&v177, v176);
      }

      v114 = OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession;
      v115 = *&a2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession];
      if (!v115)
      {
        __break(1u);
LABEL_123:
        __break(1u);
LABEL_124:
        __break(1u);
LABEL_125:
        __break(1u);
LABEL_126:
        __break(1u);
LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
        goto LABEL_129;
      }

      v116 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_pendingMigrationItems;
      swift_beginAccess();
      v117 = *(v115 + v116);
      if (!v117)
      {
        goto LABEL_119;
      }

      if (v117 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter() >= 1)
        {
LABEL_72:
          v118 = *&a2[v114];
          if (v118)
          {
            v119 = v118;
            sub_10000A634(&v182);
            sub_10001A19C();

            return;
          }

LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
          goto LABEL_131;
        }
      }

      else if (*((v117 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
      {
        goto LABEL_72;
      }

LABEL_119:
      sub_10000A634(&v182);
LABEL_120:
      sub_1000284F4();
      return;
    case 0xA:
      v39 = (a1 + *a4);
      v40 = v39[3];
      v184 = v39[2];
      v185 = v40;
      v186 = *(v39 + 8);
      v41 = v39[1];
      v182 = *v39;
      v183 = v41;
      if (v41 == 1)
      {
        return;
      }

      if ((v182 & 1) == 0)
      {
        sub_100028DAC();
        return;
      }

      v42 = *&a2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_navigationController];
      v43 = v39[3];
      v179 = v39[2];
      v180 = v43;
      v181 = *(v39 + 8);
      v44 = v39[1];
      v177 = *v39;
      v178 = v44;
      sub_1000427E4(&v177, v176);
      if (v42)
      {
        [v42 dismissViewControllerAnimated:1 completion:0];
      }

      v143 = *&a2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession];
      if (!v143)
      {
        goto LABEL_125;
      }

      v144 = v143;
      v145 = sub_10000A8A0();

      if (!v145)
      {
        goto LABEL_128;
      }

      v146 = *&v145[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice];
      v147 = v146;

      if (!v146)
      {
        goto LABEL_105;
      }

      v148 = [v147 flags];
      v149 = [objc_opt_self() defaultWorkspace];
      v150 = v149;
      if ((v148 & 0x20) != 0)
      {
        if (!v149)
        {
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        sub_10000A634(&v182);
        sub_10002613C();
        v157 = type metadata accessor for URL();
        v158 = *(v157 - 8);
        v154 = 0;
        if ((*(v158 + 48))(v19, 1, v157) != 1)
        {
          URL._bridgeToObjectiveC()(v159);
          v154 = v160;
          (*(v158 + 8))(v19, v157);
        }
      }

      else
      {
        if (!v149)
        {
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        sub_10000A634(&v182);
        URL.init(string:)();
        v151 = type metadata accessor for URL();
        v152 = *(v151 - 8);
        v154 = 0;
        if ((*(v152 + 48))(v17, 1, v151) != 1)
        {
          URL._bridgeToObjectiveC()(v153);
          v154 = v155;
          (*(v152 + 8))(v17, v151);
        }
      }

      v161 = sub_1000428D0(_swiftEmptyArrayStorage);
      v162 = Dictionary._bridgeToObjectiveC()().super.isa;
      v161, v163, v164, v165, v166, v167, v168, v169;
      [v150 openSensitiveURL:v154 withOptions:v162];

      return;
    case 0xB:
      if (*(a1 + *a4 + 16) == 1)
      {
        return;
      }

LABEL_2:
      v21 = *&a2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_navigationController];
      if (v21)
      {
        goto LABEL_3;
      }

      return;
    case 0xD:
      v29 = (a1 + *a4);
      v30 = v29[3];
      v184 = v29[2];
      v185 = v30;
      v186 = *(v29 + 8);
      v31 = v29[1];
      v182 = *v29;
      v183 = v31;
      if (v31 == 1)
      {
        return;
      }

      if (v182)
      {
        goto LABEL_79;
      }

      v32 = v29[3];
      v179 = v29[2];
      v180 = v32;
      v181 = *(v29 + 8);
      v33 = v29[1];
      v177 = *v29;
      v178 = v33;
      sub_1000427E4(&v177, v176);
      if (qword_10007EC50 != -1)
      {
        swift_once();
      }

      v34 = qword_1000814E8;
      v35 = OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_systemMonitor;
      v36 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_systemMonitor);
      if (!v36)
      {
        goto LABEL_123;
      }

      v37 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
      if (!v37)
      {
        goto LABEL_110;
      }

      if (*(v37 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_needsBluetooth) == 1)
      {
        v38 = *(v36 + 84);
        if ((*(v37 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_needsWiFi) & 1) == 0)
        {
LABEL_109:
          if (v38)
          {
LABEL_110:
            sub_1000268D0();
            v20 = *&a2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession];
            if (v20)
            {
LABEL_111:
              v156 = v20;
              sub_10000A634(&v182);
              sub_10000B8EC();

              return;
            }

            goto LABEL_130;
          }

LABEL_116:
          sub_10000A634(&v182);
          v170 = *(v34 + v35);
          if (!v170)
          {
LABEL_135:
            __break(1u);
            JUMPOUT(0x100041570);
          }

          v171 = swift_allocObject();
          *(v171 + 16) = a2;
          v172 = *(v170 + 40);
          v173 = *(v170 + 48);
          *(v170 + 40) = a6;
          *(v170 + 48) = v171;

          v174 = a2;
          sub_100002E6C(v172, v173);

          sub_100026A50();
          return;
        }
      }

      else
      {
        if (*(v37 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_needsWiFi) != 1)
        {
          goto LABEL_110;
        }

        v38 = 1;
      }

      if (*(v36 + 86) != 1)
      {
        goto LABEL_116;
      }

      goto LABEL_109;
    case 0x10:
      goto LABEL_33;
    case 0x11:
      v62 = a1 + *a4;
      if (*(v62 + 16) == 1 || (*v62 & 1) == 0)
      {
        return;
      }

      v63 = *&a2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession];
      if (!v63)
      {
        goto LABEL_126;
      }

      v175 = v63;
      sub_10000B8EC();
      v64 = v175;
      goto LABEL_53;
    case 0x12:
      v85 = a1 + *a4;
      if (*(v85 + 16) == 1)
      {
        return;
      }

      v21 = *&a2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_navigationController];
      if (*v85)
      {
        if (v21)
        {
          v64 = [v21 popViewControllerAnimated:1];
LABEL_53:
        }

        return;
      }

      if (!v21)
      {
        return;
      }

LABEL_3:

      goto LABEL_80;
    default:
      return;
  }
}

void sub_10004161C(uint64_t a1, char *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_100009894(&qword_100080208, &unk_10005D100);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v176[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v15 = __chkstk_darwin(v12);
  v17 = &v176[-v16 - 8];
  __chkstk_darwin(v15);
  v19 = &v176[-v18 - 8];
  switch(*(a1 + *a3))
  {
    case 0:
      v80 = (a1 + *a4);
      swift_beginAccess();
      v81 = *(v80 + 8);
      v186 = v81;
      v82 = v80[3];
      v184 = v80[2];
      v185 = v82;
      v83 = v80[1];
      v182 = *v80;
      v183 = v83;
      if (v83 == 1)
      {
        return;
      }

      if ((v182 & 1) == 0)
      {
        goto LABEL_76;
      }

      if (v81)
      {
        v142 = v80[3];
        v179 = v80[2];
        v180 = v142;
        v181 = *(v80 + 8);
        v143 = v80[1];
        v177 = *v80;
        v178 = v143;
        sub_1000427E4(&v177, v176);
        if (qword_10007EC50 != -1)
        {
          swift_once();
        }

        if (*(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_systemMonitor))
        {

          sub_10002D23C();

          goto LABEL_89;
        }

LABEL_129:
        __break(1u);
LABEL_130:
        __break(1u);
        goto LABEL_131;
      }

      v84 = v80[3];
      v179 = v80[2];
      v180 = v84;
      v181 = *(v80 + 8);
      v85 = v80[1];
      v177 = *v80;
      v178 = v85;
      sub_1000427E4(&v177, v176);
LABEL_89:
      if ((v81 & 2) != 0)
      {
        if (qword_10007EC50 != -1)
        {
          swift_once();
        }

        if (*(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_systemMonitor))
        {

          sub_10000A634(&v182);
          sub_10002DCD4();

          return;
        }

        goto LABEL_130;
      }

LABEL_102:
      sub_10000A634(&v182);
      return;
    case 1:
    case 0xC:
    case 0xE:
      v20 = *&a2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_navigationController];
      if (!v20)
      {
        return;
      }

      goto LABEL_5;
    case 2:
      v45 = (a1 + *a4);
      swift_beginAccess();
      v46 = v45[3];
      v184 = v45[2];
      v185 = v46;
      v186 = *(v45 + 8);
      v47 = v45[1];
      v182 = *v45;
      v183 = v47;
      if (v47 == 1)
      {
        return;
      }

      if ((v182 & 1) == 0)
      {
        goto LABEL_76;
      }

      v48 = v45[3];
      v179 = v45[2];
      v180 = v48;
      v181 = *(v45 + 8);
      v49 = v45[1];
      v177 = *v45;
      v178 = v49;
      sub_1000427E4(&v177, v176);
      sub_1000268D0();
      v50 = *&a2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession];
      if (v50)
      {
        goto LABEL_108;
      }

      __break(1u);
LABEL_29:
      v51 = (a1 + *a4);
      swift_beginAccess();
      v52 = v51[3];
      v184 = v51[2];
      v185 = v52;
      v186 = *(v51 + 8);
      v53 = v51[1];
      v182 = *v51;
      v183 = v53;
      if (v53 == 1)
      {
        return;
      }

      if ((v182 & 1) == 0)
      {
        goto LABEL_76;
      }

      v54 = v51[3];
      v179 = v51[2];
      v180 = v54;
      v181 = *(v51 + 8);
      v55 = v51[1];
      v177 = *v51;
      v178 = v55;
      sub_1000427E4(&v177, v176);
      sub_1000268D0();
      v50 = *&a2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession];
      if (v50)
      {
        goto LABEL_108;
      }

      __break(1u);
LABEL_33:
      v56 = (a1 + *a4);
      swift_beginAccess();
      v57 = v56[1];
      v182 = *v56;
      v183 = v57;
      v58 = v56[3];
      v184 = v56[2];
      v185 = v58;
      v186 = *(v56 + 8);
      if (v183 == 1)
      {
        return;
      }

      v59 = v182;
      v60 = *&a2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_navigationController];
      v61 = v56[3];
      v179 = v56[2];
      v180 = v61;
      v181 = *(v56 + 8);
      v62 = v56[1];
      v177 = *v56;
      v178 = v62;
      sub_1000427E4(&v177, v176);
      if (v60)
      {
        [v60 dismissViewControllerAnimated:1 completion:0];
      }

      if (v59)
      {
        goto LABEL_102;
      }

      v126 = [objc_opt_self() defaultWorkspace];
      if (!v126)
      {
        goto LABEL_122;
      }

      v127 = v126;
      sub_10000A634(&v182);
      URL.init(string:)();
      v128 = type metadata accessor for URL();
      v129 = *(v128 - 8);
      v131 = 0;
      if ((*(v129 + 48))(v14, 1, v128) != 1)
      {
        URL._bridgeToObjectiveC()(v130);
        v131 = v132;
        (*(v129 + 8))(v14, v128);
      }

      v133 = sub_1000428D0(_swiftEmptyArrayStorage);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      v133, v135, v136, v137, v138, v139, v140, v141;
      [v127 openSensitiveURL:v131 withOptions:isa];

      return;
    case 3:
      goto LABEL_29;
    case 4:
      v66 = (a1 + *a4);
      swift_beginAccess();
      v67 = v66[3];
      v184 = v66[2];
      v185 = v67;
      v186 = *(v66 + 8);
      v68 = v66[1];
      v182 = *v66;
      v183 = v68;
      if (v68 == 1)
      {
        return;
      }

      if (v182)
      {
        v69 = v185;
        if (v185)
        {
          v70 = *&a2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession];
          if (v70)
          {
            v71 = *(&v184 + 1);

            v72 = v70;
            sub_100018B28(v71, v69);

            v69, v73, v74, v75, v76, v77, v78, v79;
          }
        }

        return;
      }

      v121 = v66[3];
      v179 = v66[2];
      v180 = v121;
      v181 = *(v66 + 8);
      v122 = v66[1];
      v177 = *v66;
      v178 = v122;
      sub_1000427E4(&v177, v176);
      if (qword_10007EC50 != -1)
      {
        swift_once();
      }

      v123 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
      if (!v123)
      {
        goto LABEL_125;
      }

      v124 = v123;
      sub_10000A634(&v182);
      v125 = v124[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_filterInApp];

      if (v125)
      {
LABEL_76:
        v20 = *&a2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_navigationController];
        if (v20)
        {
LABEL_5:
          [v20 dismissViewControllerAnimated:1 completion:0];
        }
      }

      else
      {
        sub_1000284D4();
      }

      return;
    case 5:
      goto LABEL_118;
    case 6:
    case 8:
      v21 = (a1 + *a4);
      swift_beginAccess();
      v22 = v21[3];
      v184 = v21[2];
      v185 = v22;
      v186 = *(v21 + 8);
      v23 = v21[1];
      v182 = *v21;
      v183 = v23;
      if (v23 != 1)
      {
        if (v182)
        {
          v24 = *&a2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession];
          if (v24)
          {
            v25 = *(&v183 + 1);
            v26 = v184;
            sub_1000253C8(&v182, &v177, &unk_10007F570, &unk_10005C510);
            v27 = v24;
            sub_10001B4D4(1, v25, v26);
            sub_10000A634(&v182);
          }
        }

        else
        {
          sub_100028DCC();
          v111 = *&a2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession];
          if (v111)
          {
            v112 = v111;
            sub_10001B4D4(0, 0, 0);
          }
        }
      }

      return;
    case 9:
      v87 = (a1 + *a4);
      swift_beginAccess();
      v88 = v87[1];
      v182 = *v87;
      v183 = v88;
      v89 = v87[3];
      v184 = v87[2];
      v185 = v89;
      v186 = *(v87 + 8);
      v90 = v183;
      if (v183 == 1)
      {
        return;
      }

      if ((v182 & 1) == 0)
      {
        goto LABEL_64;
      }

      if (!v183)
      {
        goto LABEL_64;
      }

      v91 = v185;
      if (!v185)
      {
        goto LABEL_64;
      }

      v92 = *(&v182 + 1);
      v93 = BYTE7(v183) & 0xF;
      if ((v183 & 0x2000000000000000) == 0)
      {
        v93 = *(&v182 + 1) & 0xFFFFFFFFFFFFLL;
      }

      if (v93 && (v94 = *&a2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession]) != 0)
      {
        v95 = *(&v184 + 1);
        sub_1000253C8(&v182, &v177, &unk_10007F570, &unk_10005C510);

        v96 = v94;
        sub_10001A4E0(v95, v91, v92, v90);

        v91, v97, v98, v99, v100, v101, v102, v103;
        v90, v104, v105, v106, v107, v108, v109, v110;
      }

      else
      {
LABEL_64:
        v113 = v87[3];
        v179 = v87[2];
        v180 = v113;
        v181 = *(v87 + 8);
        v114 = v87[1];
        v177 = *v87;
        v178 = v114;
        sub_1000427E4(&v177, v176);
      }

      v115 = OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession;
      v116 = *&a2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession];
      if (!v116)
      {
        __break(1u);
LABEL_121:
        __break(1u);
LABEL_122:
        __break(1u);
LABEL_123:
        __break(1u);
LABEL_124:
        __break(1u);
LABEL_125:
        __break(1u);
LABEL_126:
        __break(1u);
        goto LABEL_127;
      }

      v117 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_pendingMigrationItems;
      swift_beginAccess();
      v118 = *(v116 + v117);
      if (!v118)
      {
        goto LABEL_117;
      }

      if (v118 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter() >= 1)
        {
LABEL_69:
          v119 = *&a2[v115];
          if (v119)
          {
            v120 = v119;
            sub_10000A634(&v182);
            sub_10001A19C();

            return;
          }

LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }
      }

      else if (*((v118 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
      {
        goto LABEL_69;
      }

LABEL_117:
      sub_10000A634(&v182);
LABEL_118:
      sub_1000284F4();
      return;
    case 0xA:
      v39 = (a1 + *a4);
      swift_beginAccess();
      v40 = v39[3];
      v184 = v39[2];
      v185 = v40;
      v186 = *(v39 + 8);
      v41 = v39[1];
      v182 = *v39;
      v183 = v41;
      if (v41 == 1)
      {
        return;
      }

      if ((v182 & 1) == 0)
      {
        sub_100028DAC();
        return;
      }

      v42 = *&a2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_navigationController];
      v43 = v39[3];
      v179 = v39[2];
      v180 = v43;
      v181 = *(v39 + 8);
      v44 = v39[1];
      v177 = *v39;
      v178 = v44;
      sub_1000427E4(&v177, v176);
      if (v42)
      {
        [v42 dismissViewControllerAnimated:1 completion:0];
      }

      v144 = *&a2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession];
      if (!v144)
      {
        goto LABEL_123;
      }

      v145 = v144;
      v146 = sub_10000A8A0();

      if (!v146)
      {
        goto LABEL_126;
      }

      v147 = *&v146[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_underlyingDADevice];
      v148 = v147;

      if (!v147)
      {
        goto LABEL_102;
      }

      v149 = [v148 flags];
      v150 = [objc_opt_self() defaultWorkspace];
      v151 = v150;
      if ((v149 & 0x20) != 0)
      {
        if (!v150)
        {
LABEL_132:
          __break(1u);
          goto LABEL_133;
        }

        sub_10000A634(&v182);
        sub_10002613C();
        v157 = type metadata accessor for URL();
        v158 = *(v157 - 8);
        v155 = 0;
        if ((*(v158 + 48))(v19, 1, v157) != 1)
        {
          URL._bridgeToObjectiveC()(v159);
          v155 = v160;
          (*(v158 + 8))(v19, v157);
        }
      }

      else
      {
        if (!v150)
        {
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        sub_10000A634(&v182);
        URL.init(string:)();
        v152 = type metadata accessor for URL();
        v153 = *(v152 - 8);
        v155 = 0;
        if ((*(v153 + 48))(v17, 1, v152) != 1)
        {
          URL._bridgeToObjectiveC()(v154);
          v155 = v156;
          (*(v153 + 8))(v17, v152);
        }
      }

      v161 = sub_1000428D0(_swiftEmptyArrayStorage);
      v162 = Dictionary._bridgeToObjectiveC()().super.isa;
      v161, v163, v164, v165, v166, v167, v168, v169;
      [v151 openSensitiveURL:v155 withOptions:v162];

      return;
    case 0xB:
      v38 = a1 + *a4;
      swift_beginAccess();
      if (*(v38 + 16) == 1)
      {
        return;
      }

      goto LABEL_76;
    case 0xD:
      v28 = (a1 + *a4);
      swift_beginAccess();
      v29 = v28[3];
      v184 = v28[2];
      v185 = v29;
      v186 = *(v28 + 8);
      v30 = v28[1];
      v182 = *v28;
      v183 = v30;
      if (v30 == 1)
      {
        return;
      }

      if (v182)
      {
        goto LABEL_76;
      }

      v31 = v28[3];
      v179 = v28[2];
      v180 = v31;
      v181 = *(v28 + 8);
      v32 = v28[1];
      v177 = *v28;
      v178 = v32;
      sub_1000427E4(&v177, v176);
      if (qword_10007EC50 != -1)
      {
        swift_once();
      }

      v33 = qword_1000814E8;
      v34 = OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_systemMonitor;
      v35 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_systemMonitor);
      if (!v35)
      {
        goto LABEL_121;
      }

      v36 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
      if (!v36)
      {
        goto LABEL_107;
      }

      if (*(v36 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_needsBluetooth) == 1)
      {
        v37 = *(v35 + 84);
        if ((*(v36 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_needsWiFi) & 1) == 0)
        {
LABEL_106:
          if (v37)
          {
LABEL_107:
            sub_1000268D0();
            v50 = *&a2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession];
            if (v50)
            {
LABEL_108:
              v65 = v50;
              sub_10000A634(&v182);
LABEL_109:
              sub_10000B8EC();

              return;
            }

            goto LABEL_128;
          }

LABEL_114:
          sub_10000A634(&v182);
          v170 = *(v33 + v34);
          if (!v170)
          {
LABEL_133:
            __break(1u);
            JUMPOUT(0x1000425E8);
          }

          v171 = swift_allocObject();
          *(v171 + 16) = a2;
          v172 = *(v170 + 40);
          v173 = *(v170 + 48);
          *(v170 + 40) = a6;
          *(v170 + 48) = v171;

          v174 = a2;
          sub_100002E6C(v172, v173);

          sub_100026A50();
          return;
        }
      }

      else
      {
        if (*(v36 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_needsWiFi) != 1)
        {
          goto LABEL_107;
        }

        v37 = 1;
      }

      if (*(v35 + 86) != 1)
      {
        goto LABEL_114;
      }

      goto LABEL_106;
    case 0x10:
      goto LABEL_33;
    case 0x11:
      v63 = a1 + *a4;
      swift_beginAccess();
      if (*(v63 + 16) == 1 || (*v63 & 1) == 0)
      {
        return;
      }

      v64 = *&a2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession];
      if (!v64)
      {
        goto LABEL_124;
      }

      v65 = v64;
      goto LABEL_109;
    case 0x12:
      v86 = a1 + *a4;
      swift_beginAccess();
      if (*(v86 + 16) == 1)
      {
        return;
      }

      v20 = *&a2[OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_navigationController];
      if (*v86)
      {
        if (v20)
        {
        }
      }

      else if (v20)
      {
        goto LABEL_5;
      }

      return;
    default:
      return;
  }
}

unint64_t sub_1000428D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100009894(&unk_100080210, &qword_10005C898);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000253C8(v4, &v13, &unk_10007F540, &unk_10005C8A0);
      v5 = v13;
      v6 = v14;
      result = sub_10001F768(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100022E1C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100042A10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100042A60()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100042AC4()
{
  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_100042B38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100009894(&unk_100080230, &qword_10005D120);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10001F768(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100042C50(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100009894(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_10001F768(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100042D4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100009894(&unk_100080220, &unk_10005D110);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10001F768(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void sub_100042E60(uint64_t a1)
{
  if (IsAppleInternalBuild() && a1 == 1)
  {
    v3 = [v1 infoButtonAction];
    if (v3)
    {
    }

    else
    {
      v4 = swift_allocObject();
      swift_unknownObjectWeakInit();

      v5 = String._bridgeToObjectiveC()();
      v8[4] = sub_100043228;
      v8[5] = v4;
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 1107296256;
      v8[2] = sub_10001BE14;
      v8[3] = &unk_1000737D8;
      v6 = _Block_copy(v8);
      v7 = [objc_opt_self() actionWithTitle:v5 style:0 handler:v6];

      _Block_release(v6);

      [v1 setInfoButtonAction:v7];
    }
  }
}

id sub_100042FF4(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v2[OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_type] = 4;
  *&v2[OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_router + 8] = 0;
  swift_unknownObjectWeakInit();
  v5 = &v2[OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_routingContext];
  *v5 = 0;
  *(v5 + 1) = 0;
  *(v5 + 2) = 1;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 0u;
  *(v5 + 56) = 0u;
  *&v2[OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_carouselView] = 0;
  *&v2[OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_otaLabel] = 0;
  *&v2[OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_cancellable] = 0;
  *&v2[OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_cancellablePageControl] = 0;
  *&v2[OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_devices] = &_swiftEmptyArrayStorage;
  v6 = &v2[OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_appName];
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  *&v2[OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_discoveryTitleLabel] = 0;
  *&v2[OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_discoverySubtitleLabel] = 0;
  *&v2[OBJC_IVAR____TtC16AccessorySetupUI25ASUIConnectViewController_discoverySpinner] = 0;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, "initWithContentView:", a1);
}

void sub_100043114()
{
  v1 = [v0 infoButton];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() secondaryLabelColor];
    [v2 setTintColor:v3];
  }

  v4 = [v0 infoButton];
  if (v4)
  {
    v5 = v4;
    v6 = [objc_opt_self() secondarySystemBackgroundColor];
    [v5 setBackgroundColor:v6];
  }
}

void sub_100043324(void *a1)
{
  *(v1 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_systemMonitor) = 0;

  v3 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
  *(v1 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel) = 0;

  v4 = OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClient;
  v5 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClient);
  if (v5)
  {
    swift_unknownObjectRetain();
    if (a1)
    {
      a1 = _convertErrorToNSError(_:)();
    }

    [v5 pickerDidDismiss:a1];

    swift_unknownObjectRelease();
  }

  *(v1 + v4) = 0;
  swift_unknownObjectRelease();
  v6 = OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_connection;
  v7 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_connection);
  if (v7)
  {
    [v7 invalidate];
    v8 = *(v1 + v6);
  }

  else
  {
    v8 = 0;
  }

  *(v1 + v6) = 0;

  v9 = OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_remoteAlertHandle;
  v10 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_remoteAlertHandle);
  if (v10)
  {
    [v10 invalidate];
    v10 = *(v1 + v9);
  }

  *(v1 + v9) = 0;
}

uint64_t sub_100043438()
{
  v0 = type metadata accessor for Logger();
  sub_10000328C(v0, qword_100080250);
  v1 = sub_1000032F0(v0, qword_100080250);
  if (qword_10007EBE0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000032F0(v0, qword_100081490);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_100043500()
{
  result = [objc_allocWithZone(type metadata accessor for ASUIServerManager()) init];
  qword_1000814E8 = result;
  return result;
}

void sub_100043530(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v19 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v19 - 8);
  __chkstk_darwin(v19);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v6);
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8);
  v8 = &v2[OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_router];
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  *v8 = 0;
  *&v2[OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_systemMonitor] = 0;
  *&v2[OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_migrationDisplayCount] = 0;
  *&v2[OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_listener] = 0;
  *&v2[OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_connection] = 0;
  *&v2[OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_remoteAlertHandle] = 0;
  v18 = OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_queue;
  v17 = sub_100009B48(0, &qword_10007F550, OS_dispatch_queue_ptr);
  static DispatchQoS.userInitiated.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100048FE0(&qword_10007F8E8, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100009894(&unk_1000804B0, &unk_10005D1B0);
  sub_10002FC5C(&qword_10007F8F0, &unk_1000804B0, &unk_10005D1B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v19);
  *&v2[v18] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v2[OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClient] = 0;
  *&v2[OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel] = 0;
  v24.receiver = v2;
  v24.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v24, "init");
  v22 = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_100049028;
  *(v10 + 24) = &v21;
  aBlock[4] = sub_100049090;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10004908C;
  aBlock[3] = &unk_100073B70;
  v11 = _Block_copy(aBlock);
  v12 = objc_opt_self();
  v13 = v9;

  v14 = [v12 listenerWithConfigurator:v11];
  _Block_release(v11);

  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
  }

  else
  {
    v15 = *&v13[OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_listener];
    *&v13[OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_listener] = v14;
    v16 = v14;

    if (v16)
    {
      [v16 activate];

      return;
    }
  }

  __break(1u);
}

id sub_10004398C(void *a1, uint64_t a2)
{
  v4 = String._bridgeToObjectiveC()();
  [a1 setDomain:v4];

  v5 = String._bridgeToObjectiveC()();
  [a1 setService:v5];

  return [a1 setDelegate:a2];
}

id sub_100043A70(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  result = *&v2[OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_listener];
  if (result)
  {
    [result invalidate];
    v5 = *&v2[OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_connection];
    if (v5)
    {
      [v5 invalidate];
    }

    v6.receiver = v2;
    v6.super_class = ObjectType;
    return objc_msgSendSuper2(&v6, "dealloc");
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100043BEC(uint64_t a1, _TtC16AccessorySetupUI17ASUIServerManager *a2)
{
  if (a2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_connection);
    if (!v3)
    {
      goto LABEL_23;
    }

    v6 = [v3 remoteProcess];
    v7 = String._bridgeToObjectiveC()();
    v8 = [v6 hasEntitlement:v7];

    if (v8)
    {
      if (qword_10007EC48 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_1000032F0(v9, qword_100080250);

      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();
      a2, v12, v13, v14, v15, v16, v17, v18;
      if (os_log_type_enabled(v10, v11))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v67 = v20;
        *v19 = 136315138;
        *(v19 + 4) = sub_10003FFF4(a1, a2, &v67);
        _os_log_impl(&_mh_execute_header, v10, v11, "Override client bundleID with %s", v19, 0xCu);
        sub_100009AB0(v20);
      }

      return a1;
    }

    v66 = v2;
    if (qword_10007EC48 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_1000032F0(v21, qword_100080250);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    a2, v24, v25, v26, v27, v28, v29, v30;
    if (os_log_type_enabled(v22, v23))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v67 = v39;
      *v38 = 136315138;
      v40 = sub_10003FFF4(a1, a2, &v67);
      a2, v41, v42, v43, v44, v45, v46, v47;
      *(v38 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v22, v23, "Remote process is not entitled to override bundleID with %s", v38, 0xCu);
      sub_100009AB0(v39);
    }

    else
    {
      a2, v31, v32, v33, v34, v35, v36, v37;
    }

    v2 = v66;
  }

  v48 = *(v2 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_connection);
  if (v48)
  {
    v49 = [v48 remoteProcess];
    v50 = [v49 bundleIdentifier];

    if (v50)
    {
      a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v51;

      if (qword_10007EC48 != -1)
      {
        swift_once();
      }

      v53 = type metadata accessor for Logger();
      sub_1000032F0(v53, qword_100080250);

      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.default.getter();
      v52, v56, v57, v58, v59, v60, v61, v62;
      if (os_log_type_enabled(v54, v55))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v67 = v64;
        *v63 = 136315138;
        *(v63 + 4) = sub_10003FFF4(a1, v52, &v67);
        _os_log_impl(&_mh_execute_header, v54, v55, "Using authentic bundle ID of remote process: %s", v63, 0xCu);
        sub_100009AB0(v64);
      }

      return a1;
    }
  }

LABEL_23:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_1000440E8()
{
  *(v0 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_systemMonitor) = 0;

  v1 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
  *(v0 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel) = 0;

  *(v0 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClient) = 0;
  swift_unknownObjectRelease();
  v2 = OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_connection;
  v3 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_connection);
  if (v3)
  {
    [v3 invalidate];
    v4 = *(v0 + v2);
  }

  else
  {
    v4 = 0;
  }

  *(v0 + v2) = 0;

  v5 = OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_remoteAlertHandle;
  v6 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_remoteAlertHandle);
  if (v6)
  {
    [v6 invalidate];
    v6 = *(v0 + v5);
  }

  *(v0 + v5) = 0;
}

void sub_1000441A8(void *a1, uint64_t a2)
{
  v4 = String._bridgeToObjectiveC()();
  v5 = [objc_opt_self() interfaceWithIdentifier:v4];

  v6 = objc_opt_self();
  v7 = [v6 protocolForProtocol:&OBJC_PROTOCOL___ASUIServer];
  [v5 setServer:v7];

  v8 = [v6 protocolForProtocol:&OBJC_PROTOCOL___ASUIClientProto];
  [v5 setClient:v8];

  [v5 setClientMessagingExpectation:0];
  sub_100009B48(0, &qword_10007F550, OS_dispatch_queue_ptr);
  v9 = static OS_dispatch_queue.main.getter();
  [a1 setTargetQueue:v9];

  v10 = [objc_opt_self() userInitiated];
  [a1 setServiceQuality:v10];

  [a1 setInterface:v5];
  [a1 setInterfaceTarget:a2];
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = sub_100048F98;
  v21 = v11;
  v16 = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_10001BE14;
  v19 = &unk_100073AA8;
  v12 = _Block_copy(&v16);

  [a1 setActivationHandler:v12];
  _Block_release(v12);
  v20 = sub_10004470C;
  v21 = 0;
  v16 = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_10001BE14;
  v19 = &unk_100073AD0;
  v13 = _Block_copy(&v16);
  [a1 setInterruptionHandler:v13];
  _Block_release(v13);
  v14 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v20 = sub_100048FD8;
  v21 = v14;
  v16 = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_10001BE14;
  v19 = &unk_100073B20;
  v15 = _Block_copy(&v16);

  [a1 setInvalidationHandler:v15];
  _Block_release(v15);
}

void sub_10004452C(void *a1, uint64_t a2)
{
  if (qword_10007EC48 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000032F0(v3, qword_100080250);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "ASUIServerManager: connection activated from client!", v6, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if ([a1 remoteTarget])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v10 = 0u;
      v11 = 0u;
    }

    v12[0] = v10;
    v12[1] = v11;
    if (*(&v11 + 1))
    {
      sub_100009894(&unk_1000804A0, &qword_10005D1A8);
      if (swift_dynamicCast())
      {
        *&v8[OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClient] = v9;

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {

      sub_1000227E8(v12, &qword_100080498, &qword_10005D1A0);
    }
  }
}

id sub_10004470C(void *a1)
{
  if (qword_10007EC48 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000032F0(v2, qword_100080250);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "ASUIServerManager: connection interrupted, reconnecting", v5, 2u);
  }

  return [a1 activate];
}

void sub_100044804(uint64_t a1, uint64_t a2)
{
  if (qword_10007EC48 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000032F0(v2, qword_100080250);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "ASUIServerManager: connection invalidated from client!", v5, 2u);
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_1000440E8();
}

uint64_t sub_100044914(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

void sub_1000449FC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
  if (v3)
  {
    v4 = &v3[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appBundleID];
    v5 = *&v3[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appBundleID + 8];
    if (v5)
    {
      v8 = objc_allocWithZone(DADeviceAppAccessInfo);
      v9 = v3;

      v10 = String._bridgeToObjectiveC()();
      v5, v11, v12, v13, v14, v15, v16, v17;
      v18 = String._bridgeToObjectiveC()();
      v19 = [v8 initWithBundleIdentifier:v10 deviceIdentifier:v18 state:0];

      v20 = [objc_allocWithZone(DADevice) init];
      v21 = String._bridgeToObjectiveC()();
      [v20 setIdentifier:v21];

      v22 = [objc_allocWithZone(DASession) init];
      v23 = *(v4 + 1);
      if (v23)
      {

        v24 = String._bridgeToObjectiveC()();
        v23, v25, v26, v27, v28, v29, v30, v31;
      }

      else
      {
        v24 = 0;
      }

      [v22 setBundleID:v24];

      v34 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v35 = swift_allocObject();
      v35[2] = v34;
      v35[3] = a1;
      v35[4] = a2;
      v35[5] = v19;
      v35[6] = v22;
      aBlock[4] = sub_100048F10;
      aBlock[5] = v35;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100045900;
      aBlock[3] = &unk_100073A08;
      v36 = _Block_copy(aBlock);

      v37 = v19;
      v38 = v22;

      [v38 getDevicesWithFlags:8 completionHandler:v36];
      _Block_release(v36);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v32 = *(v2 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClient);
    if (v32)
    {
      type metadata accessor for ASError(0);
      aBlock[6] = 550;
      swift_unknownObjectRetain();
      sub_1000299A0(&_swiftEmptyArrayStorage);
      sub_100048FE0(&qword_10007EE40, type metadata accessor for ASError, &unk_10005C2B0);
      _BridgedStoredNSError.init(_:userInfo:)();
      v33 = _convertErrorToNSError(_:)();

      [v32 relayPickerCompletion:v33];
      swift_unknownObjectRelease();
    }
  }
}

void sub_100044D4C(unint64_t a1, void *a2, uint64_t a3, void *a4, _TtC16AccessorySetupUI17ASUIServerManager *a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_10007EC48 != -1)
    {
LABEL_63:
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000032F0(v7, qword_100080250);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      swift_errorRetain();
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v12;
      *v11 = v12;
      _os_log_impl(&_mh_execute_header, v8, v9, "Error fetching accessories: %@", v10, 0xCu);
      sub_1000227E8(v11, &qword_10007F278, &unk_10005CD60);
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {

      return;
    }

    v14 = Strong;
    v15 = *(Strong + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClient);
    if (v15)
    {
      swift_unknownObjectRetain();

      type metadata accessor for ASError(0);
      sub_1000299A0(&_swiftEmptyArrayStorage);
      sub_100048FE0(&qword_10007EE40, type metadata accessor for ASError, &unk_10005C2B0);
      _BridgedStoredNSError.init(_:userInfo:)();
      v16 = _convertErrorToNSError(_:)();

      [v15 relayPickerCompletion:v16];

LABEL_69:
      swift_unknownObjectRelease();
      return;
    }

LABEL_26:

    return;
  }

  if (!a1)
  {
    goto LABEL_65;
  }

  if (a1 >> 62)
  {
    v18 = _CocoaArrayWrapper.endIndex.getter();
    if (v18)
    {
      goto LABEL_11;
    }

LABEL_65:
    swift_beginAccess();
    v94 = swift_unknownObjectWeakLoadStrong();
    if (!v94)
    {
      return;
    }

    v95 = v94;
    v96 = *&v94[OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClient];
    if (!v96)
    {

      return;
    }

    swift_unknownObjectRetain();

    type metadata accessor for ASError(0);
    sub_1000299A0(&_swiftEmptyArrayStorage);
    sub_100048FE0(&qword_10007EE40, type metadata accessor for ASError, &unk_10005C2B0);
    _BridgedStoredNSError.init(_:userInfo:)();
    v89 = _convertErrorToNSError(_:)();

    [v96 relayPickerCompletion:v89];
LABEL_68:

    goto LABEL_69;
  }

  v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v18)
  {
    goto LABEL_65;
  }

LABEL_11:
  v19 = 0;
  while (1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v19 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_62;
      }

      v20 = *(a1 + 8 * v19 + 32);
    }

    v21 = v20;
    v22 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v23 = [v20 identifier];
    if (!v23)
    {
      goto LABEL_12;
    }

    v24 = v23;
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    if (v25 == a4 && v27 == a5)
    {
      break;
    }

    v34 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v27, v35, v36, v37, v38, v39, v40, v41;
    if (v34)
    {
      goto LABEL_28;
    }

LABEL_12:

    ++v19;
    if (v22 == v18)
    {
      goto LABEL_65;
    }
  }

  v27, v28, a4, a5, v29, v30, v31, v32;
LABEL_28:
  if ([v21 state] != 20)
  {
    if (qword_10007EC48 != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    sub_1000032F0(v55, qword_100080250);

    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();
    a5, v58, v59, v60, v61, v62, v63, v64;
    if (os_log_type_enabled(v56, v57))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v102[0] = v66;
      *v65 = 136315138;
      *(v65 + 4) = sub_10003FFF4(a4, a5, v102);
      _os_log_impl(&_mh_execute_header, v56, v57, "Error failing accessory %s since accessory is not pending authorization", v65, 0xCu);
      sub_100009AB0(v66);
    }

    swift_beginAccess();
    v67 = swift_unknownObjectWeakLoadStrong();
    if (v67)
    {
      v68 = v67;
      v69 = *&v67[OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClient];
      if (v69)
      {
        swift_unknownObjectRetain();

        type metadata accessor for ASError(0);
        sub_100009894(&unk_100080428, qword_10005D188);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10005C440;
        *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(inited + 72) = &type metadata for String;
        *(inited + 40) = v71;
        *(inited + 48) = 0xD00000000000002ELL;
        *(inited + 56) = 0x800000010005F300;
        sub_1000428D0(inited);
        swift_setDeallocating();
        sub_1000227E8(inited + 32, &unk_10007F540, &unk_10005C8A0);
        sub_100048FE0(&qword_10007EE40, type metadata accessor for ASError, &unk_10005C2B0);
        _BridgedStoredNSError.init(_:userInfo:)();
        v72 = _convertErrorToNSError(_:)();

        [v69 relayPickerCompletion:v72];
        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    return;
  }

  if (qword_10007EC48 != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  sub_1000032F0(v42, qword_100080250);
  v43 = v21;
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v46 = 138412290;
    *(v46 + 4) = v43;
    *v47 = v43;
    v48 = v43;
    _os_log_impl(&_mh_execute_header, v44, v45, "Fail accessory setup for %@", v46, 0xCu);
    sub_1000227E8(v47, &qword_10007F278, &unk_10005CD60);
  }

  v102[0] = 0;
  v49 = [objc_opt_self() setDeviceAppAccessInfo:a6 device:v43 session:a7 error:v102];
  v50 = v102[0];
  if (!v49)
  {
    v73 = v102[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();

    swift_errorRetain();
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.error.getter();
    a5, v76, v77, v78, v79, v80, v81, v82;

    if (os_log_type_enabled(v74, v75))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v102[0] = v85;
      *v83 = 136315394;
      *(v83 + 4) = sub_10003FFF4(a4, a5, v102);
      *(v83 + 12) = 2112;
      swift_errorRetain();
      v86 = _swift_stdlib_bridgeErrorToNSError();
      *(v83 + 14) = v86;
      *v84 = v86;
      _os_log_impl(&_mh_execute_header, v74, v75, "Error failing accessory %s due to %@", v83, 0x16u);
      sub_1000227E8(v84, &qword_10007F278, &unk_10005CD60);

      sub_100009AB0(v85);
    }

    swift_beginAccess();
    v87 = swift_unknownObjectWeakLoadStrong();
    if (!v87)
    {

      return;
    }

    v14 = v87;
    v88 = *(v87 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClient);
    if (v88)
    {
      swift_unknownObjectRetain();

      type metadata accessor for ASError(0);
      sub_1000299A0(&_swiftEmptyArrayStorage);
      sub_100048FE0(&qword_10007EE40, type metadata accessor for ASError, &unk_10005C2B0);
      _BridgedStoredNSError.init(_:userInfo:)();
      v89 = _convertErrorToNSError(_:)();

      [v88 relayPickerCompletion:v89];

      goto LABEL_68;
    }

    goto LABEL_26;
  }

  swift_beginAccess();
  v51 = swift_unknownObjectWeakLoadStrong();
  if (v51)
  {
    v52 = *(v51 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_router);
    v53 = v51;
    swift_unknownObjectRetain();
    v54 = v50;

    if (v52)
    {
      sub_100028DCC();
      swift_unknownObjectRelease();
      goto LABEL_53;
    }

    __break(1u);
  }

  else
  {
    v90 = v50;
LABEL_53:
    swift_beginAccess();
    v91 = swift_unknownObjectWeakLoadStrong();
    if (v91)
    {
      v92 = v91;
      v93 = *&v91[OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClient];
      if (v93)
      {
        swift_unknownObjectRetain();

        [v93 relayPickerCompletion:0];
        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }
}

void sub_100045900(uint64_t a1, _TtC16AccessorySetupUI17ASUIServerManager *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_100009B48(0, &qword_100080420, DADevice_ptr);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);

  v4, v7, v8, v9, v10, v11, v12, v13;
}

void sub_100045A0C(void *a1)
{
  v2 = v1;
  v3 = [a1 integerValue];
  v4 = OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_migrationDisplayCount;
  *&v1[OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_migrationDisplayCount] = v3;
  if (qword_10007EC48 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000032F0(v5, qword_100080250);
  v6 = v1;
  oslog = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = *&v2[v4];

    _os_log_impl(&_mh_execute_header, oslog, v7, "Only Migration displayItems Count : %ld", v8, 0xCu);

    v9 = oslog;
  }

  else
  {

    v9 = v6;
  }
}

void sub_100045BB4(uint64_t a1, _TtC16AccessorySetupUI17ASUIServerManager *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v108 = a8;
  v15 = type metadata accessor for DispatchWorkItemFlags();
  v115 = *(v15 - 8);
  v116 = v15;
  __chkstk_darwin(v15);
  v113 = &v107 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for DispatchQoS();
  v112 = *(v114 - 8);
  __chkstk_darwin(v114);
  v111 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10007EC48 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_1000032F0(v18, qword_100080250);

  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v23 = a7;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  v119 = v22;
  a2, v26, v27, v28, v29, v30, v31, v32;
  v33 = os_log_type_enabled(v24, v25);
  v117 = a1;
  v120 = v20;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    aBlock[0] = v110;
    *v34 = 136316418;
    if (!a2)
    {
      a1 = 0;
    }

    v36 = v23;
    v37 = v19;
    if (a2)
    {
      v38 = a2;
    }

    else
    {
      v38 = 0xE000000000000000;
    }

    v39 = sub_10003FFF4(a1, v38, aBlock);
    v40 = v38;
    v19 = v37;
    v23 = v36;
    v41 = v119;
    v40, v42, v43, v44, v45, v46, v47, v48;
    *(v34 + 4) = v39;
    *(v34 + 12) = 2112;
    *(v34 + 14) = v19;
    *(v34 + 22) = 2112;
    v49 = v120;
    *(v34 + 24) = v120;
    *v35 = v19;
    v35[1] = v49;
    *(v34 + 32) = 2112;
    *(v34 + 34) = v21;
    *(v34 + 42) = 2112;
    *(v34 + 44) = v41;
    v35[2] = v21;
    v35[3] = v41;
    *(v34 + 52) = 2112;
    *(v34 + 54) = v23;
    v35[4] = v23;
    v50 = v19;
    v51 = v49;
    v52 = v21;
    v53 = v41;
    v54 = v23;
    _os_log_impl(&_mh_execute_header, v24, v25, "showPickerWithOverrideBundleID: %s, shouldRetrieveDisplayItems: %@, needsBluetooth: %@, needsWiFi: %@, needsDeviceOTANameBroadcast: %@, timeout: %@", v34, 0x3Eu);
    sub_100009894(&qword_10007F278, &unk_10005CD60);
    swift_arrayDestroy();

    sub_100009AB0(v110);

    v20 = v49;
  }

  else
  {
  }

  v55 = [objc_opt_self() identityOfCurrentProcess];
  if (v55)
  {
    v56 = v55;
    v110 = v19;
    v57 = [v20 BOOLValue];
    v107 = v21;
    if ([v21 BOOLValue])
    {
      v58 = v57 | 2;
    }

    else
    {
      v58 = v57;
    }

    type metadata accessor for ASUISystemMonitor();
    swift_allocObject();
    v59 = sub_10002E68C();
    v59[7] = v58;
    v60 = OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_systemMonitor;
    v61 = v118;
    *&v118[OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_systemMonitor] = v59;

    v62 = swift_allocObject();
    *(v62 + 16) = v56;
    *(v62 + 24) = v61;
    v63 = v59[3];
    v64 = v59[4];
    v59[3] = sub_10004905C;
    v59[4] = v62;
    v65 = v61;
    v109 = v56;
    sub_100002E6C(v63, v64);

    if (*&v61[v60])
    {

      sub_10002C880(v58);

      v66 = sub_100043BEC(v117, a2);
      v68 = v67;
      v69 = objc_allocWithZone(type metadata accessor for ASUIClientModel());
      v70 = sub_100049D54(v66, v68, 0);
      v71 = OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel;
      v72 = *&v65[OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel];
      *&v65[OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel] = v70;

      v73 = *&v65[v71];
      if (v73)
      {
        v74 = v73;
        v75 = [v120 BOOLValue];
        v74[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_needsBluetooth] = v75;

        v76 = *&v65[v71];
        if (v76)
        {
          v77 = v76;
          v78 = [v107 BOOLValue];
          v77[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_needsWiFi] = v78;

          v79 = *&v65[v71];
          if (v79)
          {
            v80 = v23;
            v81 = v79;
            v82 = [v119 BOOLValue];
            v81[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_needsDeviceOTANameBroadcast] = v82;

            v23 = v80;
            v83 = *&v65[v71];
            if (v83)
            {
              v84 = v83;
              v85 = [v108 BOOLValue];
              v84[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_filterInApp] = v85;

              v23 = v80;
            }
          }
        }
      }

      [v23 doubleValue];
      if (v86 > 0.0)
      {
        v87 = *&v65[v71];
        if (v87)
        {
          v88 = v87;
          v89 = v23;
          v90 = v88;
          [v89 doubleValue];
          *&v90[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_discoveryTimeout] = v91;
        }
      }

      if ([v110 BOOLValue])
      {
        v92 = swift_allocObject();
        swift_unknownObjectWeakInit();
        aBlock[4] = sub_100048E18;
        aBlock[5] = v92;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000102BC;
        aBlock[3] = &unk_100073968;
        v93 = _Block_copy(aBlock);

        v94 = v111;
        static DispatchQoS.unspecified.getter();
        v121 = &_swiftEmptyArrayStorage;
        sub_100048FE0(&qword_10007F280, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_100009894(&unk_10007F560, &qword_10005C590);
        sub_10002FC5C(&qword_10007F288, &unk_10007F560, &qword_10005C590);
        v95 = v113;
        v96 = v116;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v93);

        (*(v115 + 8))(v95, v96);
        (*(v112 + 8))(v94, v114);
      }

      else
      {
        v97 = *&v65[v71];
        if (v97)
        {
          v98 = v97;
          sub_100049BFC(&_swiftEmptyArrayStorage, v99, v100, v101, v102, v103, v104, v105);
        }

        v106 = v109;
      }
    }

    else
    {
      __break(1u);
    }
  }
}

_TtC16AccessorySetupUI17ASUIServerManager *sub_1000463E8(uint64_t a1, unint64_t *a2, void *a3)
{
  v10 = &_swiftEmptyArrayStorage;
  v6 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v6)
  {
    return v10;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_10004059C(i, v9);
    sub_100009B48(0, a2, a3);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (!--v6)
    {
      return v10;
    }
  }

  return 0;
}

void sub_1000465F0(uint64_t a1, _TtC16AccessorySetupUI17ASUIServerManager *a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v56 = *(v6 - 8);
  v57 = v6;
  __chkstk_darwin(v6);
  v53 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v54 = *(v8 - 8);
  v55 = v8;
  __chkstk_darwin(v8);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10007EC48 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000032F0(v11, qword_100080250);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  a2, v14, v15, v16, v17, v18, v19, v20;
  if (os_log_type_enabled(v12, v13))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    aBlock[0] = v22;
    *v21 = 136315138;
    v23 = a1;
    if (a2)
    {
      v24 = a1;
    }

    else
    {
      v24 = 0;
    }

    if (a2)
    {
      v25 = a2;
    }

    else
    {
      v25 = 0xE000000000000000;
    }

    v26 = sub_10003FFF4(v24, v25, aBlock);
    v25, v27, v28, v29, v30, v31, v32, v33;
    *(v21 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v12, v13, "showMigrationPickerWithOverrideBundleID: %s", v21, 0xCu);
    sub_100009AB0(v22);
  }

  else
  {
    v23 = a1;
  }

  v34 = [objc_opt_self() identityOfCurrentProcess];
  if (v34)
  {
    v35 = v34;
    v36 = sub_100043BEC(v23, a2);
    v38 = v37;
    v39 = objc_allocWithZone(type metadata accessor for ASUIClientModel());
    v40 = sub_100049D54(v36, v38, 1);
    v41 = *(v3 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
    *(v3 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel) = v40;

    v42 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_100048DB8;
    aBlock[5] = v42;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000102BC;
    aBlock[3] = &unk_1000738C8;
    v43 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v58 = &_swiftEmptyArrayStorage;
    sub_100048FE0(&qword_10007F280, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100009894(&unk_10007F560, &qword_10005C590);
    v44 = v3;
    sub_10002FC5C(&qword_10007F288, &unk_10007F560, &qword_10005C590);
    v45 = v53;
    v46 = v57;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v43);
    (*(v56 + 8))(v45, v46);
    (*(v54 + 8))(v10, v55);

    v47 = objc_allocWithZone(SBSRemoteAlertDefinition);
    v48 = v35;
    v49 = String._bridgeToObjectiveC()();
    v50 = [v47 initWithSceneProvidingProcess:v48 configurationIdentifier:v49];

    v51 = [objc_opt_self() newHandleWithDefinition:v50 configurationContext:0];
    v52 = [objc_allocWithZone(SBSRemoteAlertActivationContext) init];
    [v51 registerObserver:v44];
    [v51 activateWithContext:v52];
  }
}

double sub_100046B64(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v75 = *(v8 - 8);
  v76 = v8;
  __chkstk_darwin(v8);
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v73 = *(v11 - 8);
  v74 = v11;
  __chkstk_darwin(v11);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    v23 = *&Strong[OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClient];
    if (v23)
    {
      swift_unknownObjectRetain();

      v24 = [v23 retrieveDisplayItems];
      swift_unknownObjectRelease();
      v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v26 = sub_1000463E8(v25, &qword_100080408, ASPickerDisplayItem_ptr);
      v25, v27, v28, v29, v30, v31, v32, v33;
      if (v26)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  0, v15, v16, v17, v18, v19, v20, v21;
  v26 = &_swiftEmptyArrayStorage;
LABEL_7:
  if (qword_10007EC48 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_1000032F0(v34, qword_100080250);

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  v26, v37, v38, v39, v40, v41, v42, v43;
  if (os_log_type_enabled(v35, v36))
  {
    v44 = swift_slowAlloc();
    v70 = a2;
    v45 = v44;
    v46 = swift_slowAlloc();
    v72 = a4;
    v69 = v46;
    aBlock[0] = v46;
    *v45 = 136315138;
    sub_100009B48(0, &qword_100080408, ASPickerDisplayItem_ptr);
    v47 = Array.description.getter();
    v71 = v26;
    v48 = v13;
    v49 = v10;
    v50 = a5;
    v52 = v51;
    v53 = sub_10003FFF4(v47, v51, aBlock);
    v54 = v52;
    a5 = v50;
    v10 = v49;
    v13 = v48;
    v26 = v71;
    v54, v55, v56, v57, v58, v59, v60, v61;
    *(v45 + 4) = v53;
    _os_log_impl(&_mh_execute_header, v35, v36, v70, v45, 0xCu);
    sub_100009AB0(v69);
    a4 = v72;
  }

  sub_100009B48(0, &qword_10007F550, OS_dispatch_queue_ptr);
  v62 = static OS_dispatch_queue.main.getter();
  v63 = swift_allocObject();
  swift_beginAccess();
  v64 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v65 = swift_allocObject();
  *(v65 + 16) = v63;
  *(v65 + 24) = v26;
  aBlock[4] = a4;
  aBlock[5] = v65;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000102BC;
  aBlock[3] = a5;
  v66 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v77 = &_swiftEmptyArrayStorage;
  sub_100048FE0(&qword_10007F280, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100009894(&unk_10007F560, &qword_10005C590);
  sub_10002FC5C(&qword_10007F288, &unk_10007F560, &qword_10005C590);
  v67 = v76;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v66);

  (*(v75 + 8))(v10, v67);
  (*(v73 + 8))(v13, v74);

  return result;
}

void sub_1000470BC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
    if (v4)
    {
      v5 = v4;

      v3 = v5;
      sub_100049BFC(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }
}

void sub_1000471B8(uint64_t a1, _TtC16AccessorySetupUI17ASUIServerManager *a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, _TtC16AccessorySetupUI17ASUIServerManager *a8)
{
  if (qword_10007EC48 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000032F0(v14, qword_100080250);

  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  a8, v20, v21, v22, v23, v24, v25, v26;

  a2, v27, v28, v29, v30, v31, v32, v33;
  v131 = v17;
  v132 = a2;
  v134 = v15;
  if (os_log_type_enabled(v18, v19))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v135 = swift_slowAlloc();
    *v34 = 136316162;
    *(v34 + 4) = sub_10003FFF4(a1, a2, &v135);
    *(v34 + 12) = 2112;
    *(v34 + 14) = v15;
    *(v34 + 22) = 2112;
    *(v34 + 24) = v16;
    *v35 = v15;
    v35[1] = v16;
    *(v34 + 32) = 2112;
    *(v34 + 34) = v17;
    *(v34 + 42) = 2080;
    if (a8)
    {
      v36 = a7;
    }

    else
    {
      v36 = 0;
    }

    v37 = v15;
    v38 = a7;
    if (a8)
    {
      v39 = a8;
    }

    else
    {
      v39 = 0xE000000000000000;
    }

    v35[2] = v17;
    v40 = v37;
    v41 = v16;
    v42 = v17;

    v43 = sub_10003FFF4(v36, v39, &v135);
    v44 = v39;
    a7 = v38;
    v44, v45, v46, v47, v48, v49, v50, v51;
    *(v34 + 44) = v43;
    _os_log_impl(&_mh_execute_header, v18, v19, "accessoryIdentifier: %s, needsBluetooth: %@, needsWiFi: %@, needsDeviceOTANameBroadcast: %@, overrideBundleID: %s", v34, 0x34u);
    sub_100009894(&qword_10007F278, &unk_10005CD60);
    swift_arrayDestroy();

    swift_arrayDestroy();
  }

  v52 = [objc_opt_self() identityOfCurrentProcess];
  if (v52)
  {
    v53 = v52;
    v54 = [v134 BOOLValue];
    if ([v16 BOOLValue])
    {
      v54 |= 2uLL;
    }

    type metadata accessor for ASUISystemMonitor();
    swift_allocObject();
    v55 = sub_10002E68C();
    v55[7] = v54;
    v56 = OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_systemMonitor;
    *&v133[OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_systemMonitor] = v55;

    v57 = swift_allocObject();
    *(v57 + 16) = v53;
    *(v57 + 24) = v133;
    v58 = v55[3];
    v59 = v55[4];
    v55[3] = sub_100048D64;
    v55[4] = v57;
    v60 = v133;
    v129 = v53;
    sub_100002E6C(v58, v59);

    if (!*&v133[v56])
    {
      __break(1u);
      return;
    }

    sub_10002C880(v54);

    v61 = sub_100043BEC(a7, a8);
    v63 = v62;
    v64 = objc_allocWithZone(type metadata accessor for ASUIClientModel());
    v65 = sub_100049D54(v61, v63, 3);
    v66 = OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel;
    v67 = *&v60[OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel];
    *&v60[OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel] = v65;

    v68 = *&v60[v66];
    if (!v68)
    {
      goto LABEL_30;
    }

    v69 = v68;
    v70 = [v134 BOOLValue];
    v69[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_needsBluetooth] = v70;

    v71 = *&v60[v66];
    if (!v71)
    {
      goto LABEL_30;
    }

    v72 = v71;
    v73 = [v16 BOOLValue];
    v72[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_needsWiFi] = v73;

    v74 = *&v60[v66];
    if (!v74)
    {
      goto LABEL_30;
    }

    v75 = v74;
    v76 = [v131 BOOLValue];
    v75[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_needsDeviceOTANameBroadcast] = v76;

    v77 = *&v60[v66];
    if (!v77)
    {
      goto LABEL_30;
    }

    v78 = v77;
    [a6 doubleValue];
    *&v78[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_discoveryTimeout] = v79;

    v80 = *&v60[v66];
    if (!v80)
    {
      goto LABEL_30;
    }

    v81 = &v80[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_upgradeAccessoryIdentifier];
    v82 = *&v80[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_upgradeAccessoryIdentifier + 8];
    *v81 = a1;
    *(v81 + 1) = v132;
    v83 = v80;
    v82, v84, v85, v86, v87, v88, v89, v90;

    v91 = *&v60[v66];
    if (!v91)
    {
      goto LABEL_30;
    }

    v92 = *&v60[OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClient];
    if (v92)
    {
      v93 = v91;
      v94 = [v92 retrieveDisplayItems];
      v95 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v96 = sub_1000463E8(v95, &unk_100080410, ASMigrationDisplayItem_ptr);
      v95, v97, v98, v99, v100, v101, v102, v103;
      if (v96)
      {
LABEL_27:
        if (v96 >> 62)
        {
          sub_100009B48(0, &qword_100080408, ASPickerDisplayItem_ptr);

          v127 = _bridgeCocoaArray<A>(_:)();
          swift_bridgeObjectRelease_n();
          v126 = v127;
        }

        else
        {

          dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
          sub_100009B48(0, &qword_100080408, ASPickerDisplayItem_ptr);
          v96, v112, v113, v114, v115, v116, v117, v118;
          v126 = v96;
        }

        sub_100049BFC(v126, v119, v120, v121, v122, v123, v124, v125);

LABEL_30:

        return;
      }
    }

    else
    {
      v111 = v91;
    }

    0, v104, v105, v106, v107, v108, v109, v110;
    v96 = &_swiftEmptyArrayStorage;
    goto LABEL_27;
  }
}

void sub_10004780C(uint64_t a1, uint64_t a2)
{
  if (qword_10007EC48 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000032F0(v4, qword_100080250);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "System Capabilities Preliminary Check Complete: activate remote UI", v7, 2u);
  }

  v8 = objc_allocWithZone(SBSRemoteAlertDefinition);
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 initWithSceneProvidingProcess:a1 configurationIdentifier:v9];

  v11 = [objc_opt_self() newHandleWithDefinition:v10 configurationContext:0];
  v12 = [objc_allocWithZone(SBSRemoteAlertActivationContext) init];
  [v11 registerObserver:a2];
  [v11 activateWithContext:v12];
}

void sub_100047ACC(uint64_t a1, _TtC16AccessorySetupUI17ASUIServerManager *a2, uint64_t a3, _TtC16AccessorySetupUI17ASUIServerManager *a4, void *a5, uint64_t a6, _TtC16AccessorySetupUI17ASUIServerManager *a7)
{
  v8 = v7;
  if (qword_10007EC48 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000032F0(v14, qword_100080250);

  v15 = a5;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  a7, v18, v19, v20, v21, v22, v23, v24;

  a4, v25, v26, v27, v28, v29, v30, v31;
  a2, v32, v33, v34, v35, v36, v37, v38;
  if (os_log_type_enabled(v16, v17))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    *v39 = 136315906;
    *(v39 + 4) = sub_10003FFF4(a1, a2, &v88);
    *(v39 + 12) = 2080;
    *(v39 + 14) = sub_10003FFF4(a3, a4, &v88);
    *(v39 + 22) = 2112;
    *(v39 + 24) = v15;
    *v40 = v15;
    if (a7)
    {
      v41 = a6;
    }

    else
    {
      v41 = 0;
    }

    if (a7)
    {
      v42 = a7;
    }

    else
    {
      v42 = 0xE000000000000000;
    }

    *(v39 + 32) = 2080;
    v43 = v15;

    v44 = sub_10003FFF4(v41, v42, &v88);
    v42, v45, v46, v47, v48, v49, v50, v51;
    *(v39 + 34) = v44;
    _os_log_impl(&_mh_execute_header, v16, v17, "renameAccessory: %s, %s, %@, overrideBundleID: %s", v39, 0x2Au);
    sub_1000227E8(v40, &qword_10007F278, &unk_10005CD60);

    swift_arrayDestroy();
  }

  v52 = [objc_opt_self() identityOfCurrentProcess];
  if (v52)
  {
    v53 = v52;
    v54 = sub_100043BEC(a6, a7);
    v56 = v55;
    v57 = objc_allocWithZone(type metadata accessor for ASUIClientModel());
    v58 = sub_100049D54(v54, v56, 2);
    v59 = OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel;
    v60 = *(v8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
    *(v8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel) = v58;

    v61 = [objc_allocWithZone(ASAccessory) init];
    v62 = String._bridgeToObjectiveC()();
    [v61 setIdentifier:v62];

    v63 = String._bridgeToObjectiveC()();
    [v61 setDisplayName:v63];

    v64 = *(v8 + v59);
    if (v64)
    {
      v65 = *&v64[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_renameAccessory];
      *&v64[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_renameAccessory] = v61;
      v66 = v64;
      v67 = v61;

      v68 = *(v8 + v59);
      if (v68)
      {
        v69 = v68;
        v70 = [v15 BOOLValue];
        v69[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_accessoryRenamingSSID] = v70;

        v71 = *(v8 + v59);
        if (v71)
        {
          v72 = v71;
          sub_100049BFC(&_swiftEmptyArrayStorage, v73, v74, v75, v76, v77, v78, v79);
        }
      }
    }

    v80 = objc_allocWithZone(SBSRemoteAlertDefinition);
    v81 = v53;
    v82 = String._bridgeToObjectiveC()();
    v83 = [v80 initWithSceneProvidingProcess:v81 configurationIdentifier:v82];

    v84 = [objc_opt_self() newHandleWithDefinition:v83 configurationContext:0];
    v87 = [objc_allocWithZone(SBSRemoteAlertActivationContext) init];
    [v84 registerObserver:v8];
    [v84 activateWithContext:v87];
  }
}

void sub_100048074(_TtC16AccessorySetupUI17ASUIServerManager *a1)
{
  v2 = v1;
  if (qword_10007EC48 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000032F0(v4, qword_100080250);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  a1, v7, v8, v9, v10, v11, v12, v13;
  if (os_log_type_enabled(v5, v6))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v37 = v15;
    *v14 = 136315138;
    v16 = Array.description.getter();
    v18 = v17;
    v19 = sub_10003FFF4(v16, v17, &v37);
    v18, v20, v21, v22, v23, v24, v25, v26;
    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v5, v6, "updatePickerWithDiscoveredDisplayItems: %s", v14, 0xCu);
    sub_100009AB0(v15);
  }

  v27 = *(v2 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
  if (v27)
  {
    v36 = v27;
    v28 = sub_1000463E8(a1, &qword_100080400, ASDiscoveredDisplayItem_ptr);
    if (!v28)
    {
      v28 = &_swiftEmptyArrayStorage;
    }

    sub_100049C9C(v28, v29, v30, v31, v32, v33, v34, v35);
  }
}

void sub_1000482C0()
{
  v1 = v0;
  if (qword_10007EC48 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000032F0(v2, qword_100080250);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "endDiscoveryInPicker", v5, 2u);
  }

  if (*(v1 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_router))
  {
    swift_unknownObjectRetain();
    sub_10002903C();

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

id sub_100048418(void *a1)
{
  v2 = v1;
  if (qword_10007EC48 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000032F0(v3, qword_100080250);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "remoteAlertHandleDidActivate!", v6, 2u);
  }

  v7 = *(v2 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_remoteAlertHandle);
  *(v2 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_remoteAlertHandle) = a1;

  v8 = OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClient;
  v9 = *(v2 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClient);
  if (v9)
  {
    v10 = a1;
    [v9 pickerDidPresent];
    result = *(v2 + v8);
    if (result)
    {

      return [result relayPickerCompletion:0];
    }
  }

  else
  {

    return a1;
  }

  return result;
}

void sub_1000486D8(void *a1)
{
  v2 = v1;
  if (qword_10007EC48 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000032F0(v4, qword_100080250);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "ASUIServerManager received a connection %@", v8, 0xCu);
    sub_1000227E8(v9, &qword_10007F278, &unk_10005CD60);
  }

  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_100048F58;
  *(v12 + 24) = v11;
  v24 = sub_100048F70;
  v25 = v12;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v23 = sub_10004908C;
  *(&v23 + 1) = &unk_100073A80;
  v13 = _Block_copy(&aBlock);
  v14 = v2;

  [v5 configureConnection:v13];
  _Block_release(v13);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }

  else
  {
    [v5 activate];
    v15 = OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_connection;
    v16 = *&v14[OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_connection];
    if (v16)
    {
      [v16 invalidate];
      v17 = *&v14[v15];
      *&v14[v15] = 0;

      v18 = *&v14[v15];
    }

    else
    {
      v18 = 0;
    }

    *&v14[v15] = v5;

    if ([v5 remoteTarget])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
    }

    aBlock = v20;
    v23 = v21;
    if (*(&v21 + 1))
    {
      sub_100009894(&unk_1000804A0, &qword_10005D1A8);
      if (swift_dynamicCast())
      {
        *&v14[OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClient] = v19;

        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      sub_1000227E8(&aBlock, &qword_100080498, &qword_10005D1A0);
    }
  }
}

id sub_100048A50()
{
  v1 = v0;
  if (qword_10007EC48 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000032F0(v2, qword_100080250);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "remoteAlertHandleDidDeactivate!", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClient);
  if (v6)
  {
    [v6 pickerDidDismiss:0];
  }

  result = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_connection);
  if (result)
  {

    return [result invalidate];
  }

  return result;
}

id sub_100048B84(uint64_t a1)
{
  v2 = v1;
  if (qword_10007EC48 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000032F0(v4, qword_100080250);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    if (a1)
    {
      swift_errorRetain();
      v9 = _swift_stdlib_bridgeErrorToNSError();
      v10 = v9;
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    *(v7 + 4) = v9;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "didInvalidateWithError! %@", v7, 0xCu);
    sub_1000227E8(v8, &qword_10007F278, &unk_10005CD60);
  }

  result = *(v2 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_connection);
  if (result)
  {

    return [result invalidate];
  }

  return result;
}

uint64_t sub_100048D24()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100048D80(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v2, 24, 7);
}

uint64_t sub_100048E00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100048E64()
{

  *(v0 + 24), v1, v2, v3, v4, v5, v6, v7;

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100048EC0()
{

  *(v0 + 32), v1, v2, v3, v4, v5, v6, v7;

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100048F20()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100048FA0()
{
  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100048FE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100049094()
{
  v1 = v0;
  v2 = String._bridgeToObjectiveC()();
  [v1 setTitle:v2];

  v3 = String._bridgeToObjectiveC()();
  [v1 setSubtitle:v3];

  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v5 = String._bridgeToObjectiveC()();
  v39[4] = sub_100049874;
  v39[5] = v4;
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 1107296256;
  v39[2] = sub_10001BE14;
  v39[3] = &unk_100073C28;
  v6 = _Block_copy(v39);
  v7 = [objc_opt_self() actionWithTitle:v5 style:0 handler:v6];

  _Block_release(v6);

  v8 = String._bridgeToObjectiveC()();
  v9 = [objc_opt_self() systemImageNamed:v8];

  v10 = [objc_allocWithZone(UIImageView) initWithImage:v9];
  v11 = [objc_opt_self() systemBlueColor];
  [v10 setTintColor:v11];

  v12 = v10;
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = [objc_opt_self() configurationWithPointSize:72.0];
  [v12 setPreferredSymbolConfiguration:v13];

  v14 = [v1 contentView];
  [v14 addSubview:v12];

  v15 = [v1 contentView];
  v16 = [v15 mainContentGuide];

  v17 = objc_opt_self();
  sub_100009894(&qword_10007F0D8, &unk_10005C5A0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10005C4D0;
  v19 = [v12 topAnchor];
  v20 = [v16 topAnchor];
  v21 = [v19 constraintGreaterThanOrEqualToAnchor:v20];

  *(v18 + 32) = v21;
  v22 = [v12 bottomAnchor];
  v23 = [v16 bottomAnchor];
  v24 = [v22 constraintLessThanOrEqualToAnchor:v23];

  *(v18 + 40) = v24;
  v25 = [v12 centerXAnchor];
  v26 = [v16 centerXAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];

  *(v18 + 48) = v27;
  v28 = [v12 centerYAnchor];

  v29 = [v16 centerYAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];

  *(v18 + 56) = v30;
  sub_10000A5E8();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v18, v32, v33, v34, v35, v36, v37, v38;
  [v17 activateConstraints:isa];
}

char *sub_1000495B0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_100040628(v3, result);

      return swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

__n128 sub_1000497CC@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI30ASUIUpgradeErrorViewController_routingContext + 48);
  v10 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI30ASUIUpgradeErrorViewController_routingContext + 32);
  v11 = v3;
  v12 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI30ASUIUpgradeErrorViewController_routingContext + 64);
  v4 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI30ASUIUpgradeErrorViewController_routingContext + 16);
  v8 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI30ASUIUpgradeErrorViewController_routingContext);
  v9 = v4;
  sub_10000A4E8(&v8, v7);
  v5 = v11;
  *(a1 + 32) = v10;
  *(a1 + 48) = v5;
  *(a1 + 64) = v12;
  result = v9;
  *a1 = v8;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10004983C(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v2, 24, 7);
}

uint64_t sub_10004987C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_100049950()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000499B8()
{
  v0 = type metadata accessor for Logger();
  sub_10000328C(v0, qword_100080650);
  v1 = sub_1000032F0(v0, qword_100080650);
  if (qword_10007EBE0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000032F0(v0, qword_100081490);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

double sub_100049A80(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = (v8 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appName);
  v10 = *(v8 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appName + 8);
  *v9 = a1;
  v9[1] = a2;
  v10, a2, a3, a4, a5, a6, a7, a8;
  if (v9[1] && *(v8 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appIcon))
  {
    v12 = *(v8 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_displayItems);
    if (v12)
    {

      CurrentValueSubject.send(_:)();
      v12, v13, v14, v15, v16, v17, v18, v19;
    }
  }

  return result;
}

void sub_100049B20(void *a1)
{
  v2 = OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appIcon;
  v3 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appIcon);
  *(v1 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appIcon) = a1;
  v12 = a1;

  if (*(v1 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appName + 8) && *(v1 + v2) && (v4 = *(v1 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_displayItems)) != 0)
  {

    CurrentValueSubject.send(_:)();
    v4, v5, v6, v7, v8, v9, v10, v11;
  }

  else
  {
  }
}

double sub_100049BFC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_displayItems;
  v10 = *(v8 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_displayItems);
  *(v8 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_displayItems) = a1;
  v10, a2, a3, a4, a5, a6, a7, a8;
  if (*(v8 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appName + 8) && *(v8 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appIcon))
  {
    v12 = *(v8 + v9);
    if (v12)
    {

      CurrentValueSubject.send(_:)();
      v12, v13, v14, v15, v16, v17, v18, v19;
    }
  }

  return result;
}

double sub_100049C9C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_discoveredDisplayItems;
  v10 = *(v8 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_discoveredDisplayItems);
  *(v8 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_discoveredDisplayItems) = a1;
  v10, a2, a3, a4, a5, a6, a7, a8;
  if (*(v8 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appName + 8) && *(v8 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appIcon))
  {
    if (*(v8 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_displayItems))
    {
      v19 = *(v8 + v9);

      CurrentValueSubject.send(_:)();
      v19, v12, v13, v14, v15, v16, v17, v18;
    }
  }

  return result;
}

_BYTE *sub_100049D54(uint64_t a1, _TtC16AccessorySetupUI17ASUIServerManager *a2, int a3)
{
  v48 = a3;
  v47 = a2;
  v49 = a1;
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v45 = *(v4 - 8);
  v46 = v4;
  __chkstk_darwin(v4);
  v44 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v6);
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8);
  v8 = &v3[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appBundleID];
  *v8 = 0;
  v8[1] = 0;
  v9 = &v3[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appName];
  *v9 = 0;
  v9[1] = 0;
  *&v3[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appIcon] = 0;
  *&v3[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_displayItems] = 0;
  *&v3[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_discoveredDisplayItems] = 0;
  v10 = &v3[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_chosenDeviceOTAName];
  *v10 = 0;
  v10[1] = 0;
  *&v3[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_renameAccessory] = 0;
  v3[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_accessoryRenamingSSID] = 0;
  v11 = &v3[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_upgradeAccessoryIdentifier];
  *v11 = 0;
  v11[1] = 0;
  *&v3[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_accessoryToAuth] = 0;
  v3[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_flowType] = 6;
  v3[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_needsBluetooth] = 0;
  v3[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_needsWiFi] = 0;
  v3[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_needsDeviceOTANameBroadcast] = 0;
  v3[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_filterInApp] = 0;
  *&v3[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_discoveryTimeout] = 0x403E000000000000;
  v12 = OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_displayItemsPublisher;
  v51 = 0;
  sub_100009894(&qword_10007F2E0, &qword_10005C620);
  swift_allocObject();
  *&v3[v12] = CurrentValueSubject.init(_:)();
  v13 = OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_discoveredDisplayItemsPublisher;
  v51 = 0;
  sub_100009894(&qword_10007F2F0, &qword_10005C638);
  swift_allocObject();
  *&v3[v13] = CurrentValueSubject.init(_:)();
  v14 = OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_queue;
  sub_10002A43C();
  static DispatchQoS.unspecified.getter();
  v51 = &_swiftEmptyArrayStorage;
  sub_10004B5D8(&qword_10007F8E8, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100009894(&unk_1000804B0, &unk_10005D1B0);
  sub_10002FC5C(&qword_10007F8F0, &unk_1000804B0, &unk_10005D1B0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v45 + 104))(v44, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v46);
  *&v3[v14] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v15 = type metadata accessor for ASUIClientModel();
  v50.receiver = v3;
  v50.super_class = v15;
  v16 = objc_msgSendSuper2(&v50, "init");
  v17 = qword_10007EC58;
  v18 = v16;
  if (v17 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_1000032F0(v19, qword_100080650);
  v20 = v47;

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  v20, v23, v24, v25, v26, v27, v28, v29;
  if (os_log_type_enabled(v21, v22))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v51 = v31;
    *v30 = 136315138;
    v32 = v49;
    *(v30 + 4) = sub_10003FFF4(v49, v20, &v51);
    _os_log_impl(&_mh_execute_header, v21, v22, "Creating client model for: %s", v30, 0xCu);
    sub_100009AB0(v31);
  }

  else
  {

    v32 = v49;
  }

  v18[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_flowType] = v48;
  v40 = &v18[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appBundleID];
  v41 = *&v18[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appBundleID + 8];
  *v40 = v32;
  v40[1] = v20;
  v41, v33, v34, v35, v36, v37, v38, v39;
  sub_10004A290();

  return v18;
}

double sub_10004A290()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v12 = *(v4 - 8);
  v13 = v4;
  __chkstk_darwin(v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_queue);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_10004B51C;
  aBlock[5] = v8;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000102BC;
  aBlock[3] = &unk_100073C78;
  v9 = _Block_copy(aBlock);
  v10 = v7;

  static DispatchQoS.unspecified.getter();
  v15 = &_swiftEmptyArrayStorage;
  sub_10004B5D8(&qword_10007F280, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100009894(&unk_10007F560, &qword_10005C590);
  sub_10002FC5C(&qword_10007F288, &unk_10007F560, &qword_10005C590);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);

  (*(v14 + 8))(v3, v1);
  (*(v12 + 8))(v6, v13);

  return result;
}

void sub_10004A570(uint64_t a1)
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v87 = v4;
    v11 = (Strong + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appBundleID);
    v12 = *(Strong + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appBundleID + 8);
    if (v12)
    {
      v13 = *v11;
      v14 = objc_allocWithZone(LSApplicationRecord);

      v15 = sub_10001F3A8(v13, v12, 1);
      v85 = v1;
      v86 = v5;
      v88 = v2;
      v81 = v15;
      v16 = [v15 localizedName];
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      v80 = sub_10002A43C();
      v84 = static OS_dispatch_queue.main.getter();
      v20 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v21 = swift_allocObject();
      v21[2] = v17;
      v21[3] = v19;
      v21[4] = v20;
      v94 = sub_10004B584;
      v95 = v21;
      aBlock = _NSConcreteStackBlock;
      v91 = 1107296256;
      v92 = sub_1000102BC;
      v93 = &unk_100073CF0;
      v22 = _Block_copy(&aBlock);
      v83 = v19;

      v82 = v10;
      static DispatchQoS.unspecified.getter();
      v89 = &_swiftEmptyArrayStorage;
      v23 = sub_10004B5D8(&qword_10007F280, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      v24 = v8;
      v25 = sub_100009894(&unk_10007F560, &qword_10005C590);
      v26 = sub_10002FC5C(&qword_10007F288, &unk_10007F560, &qword_10005C590);
      v27 = v87;
      v78 = v25;
      v28 = v24;
      v77 = v26;
      v79 = v23;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v29 = v84;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v22);

      v30 = *(v88 + 8);
      v88 += 8;
      v30(v27, v1);
      v31 = *(v6 + 8);
      v84 = v6 + 8;
      v31(v28, v86);

      v32 = v11[1];
      if (v32)
      {
        v33 = objc_allocWithZone(ISIcon);

        v34 = String._bridgeToObjectiveC()();
        v32, v35, v36, v37, v38, v39, v40, v41;
        v42 = [v33 initWithBundleIdentifier:v34];

        v43 = [objc_opt_self() imageDescriptorNamed:kISImageDescriptorLargeHomeScreen];
        v44 = [v42 imageForDescriptor:v43];
        v45 = v44;
        v76 = v30;
        v75 = v31;
        v74 = v42;
        v73 = v43;
        if (!v44 || [v44 placeholder])
        {
          v46 = [v42 prepareImageForDescriptor:{v43, v73}];
          if (v46)
          {
            v54 = v46;

            v45 = v54;
          }

          else if (!v45)
          {
            v83, v47, v48, v49, v50, v51, v52, v53;
            v64 = [objc_allocWithZone(UIImage) init];
            goto LABEL_11;
          }
        }

        v55 = [v45 CGImage];
        if (v55)
        {
          v63 = v55;
          v83, v56, v57, v58, v59, v60, v61, v62;
          v64 = [objc_allocWithZone(UIImage) initWithCGImage:v63];

LABEL_11:
          v65 = static OS_dispatch_queue.main.getter();
          v66 = swift_allocObject();
          v67 = v82;
          swift_unknownObjectWeakInit();

          v68 = swift_allocObject();
          *(v68 + 16) = v66;
          *(v68 + 24) = v64;
          v94 = sub_10004B5D0;
          v95 = v68;
          aBlock = _NSConcreteStackBlock;
          v91 = 1107296256;
          v92 = sub_1000102BC;
          v93 = &unk_100073D40;
          v69 = _Block_copy(&aBlock);

          v70 = v64;
          static DispatchQoS.unspecified.getter();
          v89 = &_swiftEmptyArrayStorage;
          v71 = v87;
          v72 = v85;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v69);

          v76(v71, v72);
          v75(v28, v86);

          return;
        }

LABEL_16:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_16;
  }
}

void sub_10004AFD8(uint64_t a1, _TtC16AccessorySetupUI17ASUIServerManager *a2, uint64_t a3)
{
  if (qword_10007EC58 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000032F0(v5, qword_100080650);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  a2, v8, v9, v10, v11, v12, v13, v14;
  if (os_log_type_enabled(v6, v7))
  {
    v15 = swift_slowAlloc();
    v43[0] = swift_slowAlloc();
    *v15 = 136315394;
    *(v15 + 4) = sub_10003FFF4(a1, a2, v43);
    *(v15 + 12) = 2080;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong || (v25 = *(Strong + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appBundleID), v24 = *(Strong + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appBundleID + 8), v26 = Strong, , v26, !v24))
    {
      0, v17, v18, v19, v20, v21, v22, v23;
      v25 = 0;
      v24 = 0xE000000000000000;
    }

    v27 = sub_10003FFF4(v25, v24, v43);
    v24, v28, v29, v30, v31, v32, v33, v34;
    *(v15 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v6, v7, "Fetched appName: %s for appBundleID: %s", v15, 0x16u);
    swift_arrayDestroy();
  }

  swift_beginAccess();
  v35 = swift_unknownObjectWeakLoadStrong();
  if (v35)
  {
    v36 = v35;

    sub_100049A80(a1, a2, v37, v38, v39, v40, v41, v42);
  }
}

void sub_10004B20C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = a2;
    sub_100049B20(a2);
  }
}

void sub_10004B26C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_100049B20([objc_allocWithZone(UIImage) init]);
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v12 = *(v5 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appBundleID);
      v13 = *(v5 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appBundleID + 8);
      v14 = v5;
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    sub_100049A80(v12, v13, v6, v7, v8, v9, v10, v11);
  }
}

id sub_10004B360(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ASUIClientModel();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10004B4E4(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v2, 24, 7);
}

uint64_t sub_10004B524(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10004B544(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  return _swift_deallocObject(v8, 40, 7);
}

uint64_t sub_10004B590()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10004B5D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10004B638(unsigned __int8 a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = 1701736302;
  if (a1 > 1u)
  {
    v11 = a1 == 2;
    v9 = 0xEA00000000005041;
    v10 = 0xE900000000000065;
    if (a1 == 2)
    {
      v12 = 0x74666F5369666977;
    }

    else
    {
      v12 = 0x7261774169666977;
    }
  }

  else
  {
    v9 = 0xE400000000000000;
    v10 = 0xE900000000000068;
    v11 = a1 == 0;
    if (a1)
    {
      v12 = 0x746F6F7465756C62;
    }

    else
    {
      v12 = 1701736302;
    }
  }

  if (v11)
  {
    v13 = v9;
  }

  else
  {
    v13 = v10;
  }

  v14 = 0xE400000000000000;
  v15 = 0x74666F5369666977;
  v16 = 0xEA00000000005041;
  if (a2 != 2)
  {
    v15 = 0x7261774169666977;
    v16 = 0xE900000000000065;
  }

  if (a2)
  {
    v8 = 0x746F6F7465756C62;
    v14 = 0xE900000000000068;
  }

  if (a2 <= 1u)
  {
    v17 = v8;
  }

  else
  {
    v17 = v15;
  }

  if (a2 <= 1u)
  {
    v18 = v14;
  }

  else
  {
    v18 = v16;
  }

  if (v12 == v17 && v13 == v18)
  {
    v19 = 1;
  }

  else
  {
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v13, a2, v17, a4, a5, a6, a7, a8;
  v18, v20, v21, v22, v23, v24, v25, v26;
  return v19 & 1;
}

uint64_t sub_10004B788@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v2 = 0uLL;
  v3 = 0xE000000000000000;
  v5 = 0;
  v6 = a1;
  result = 0;
  v8 = 0xE000000000000000;
  v9 = 0;
  v10 = 0uLL;
  v11 = 0uLL;
  v12 = 0xE000000000000000;
  v13 = 0;
  v14 = 0uLL;
  v15 = 0xE000000000000000;
  v16 = 0;
  v17 = 0uLL;
  v18 = 0xE000000000000000;
  v19 = 0;
  v20 = 0uLL;
  v21 = 0xE000000000000000;
  v22 = 0uLL;
  v23 = 0uLL;
  switch(v6)
  {
    case 1:
      sub_100050414(&v24);
      goto LABEL_20;
    case 2:
      sub_100050F1C(&v24);
      goto LABEL_20;
    case 3:
      sub_100051290(&v24);
      goto LABEL_20;
    case 4:
      sub_10004BA00(&v24);
      goto LABEL_20;
    case 5:
      goto LABEL_21;
    case 6:
      sub_10004CBEC(&v24);
      goto LABEL_20;
    case 7:
      sub_10004C530(&v24);
      goto LABEL_20;
    case 8:
      sub_10004D300(&v24);
      goto LABEL_20;
    case 9:
      sub_10004DAB8(&v24);
      goto LABEL_20;
    case 10:
      sub_10005172C(&v24);
      goto LABEL_20;
    case 11:
      sub_10004E1FC(&v24);
      goto LABEL_20;
    case 12:
      sub_100051F80(&v24);
      goto LABEL_20;
    case 13:
      sub_100051B64(&v24);
      goto LABEL_20;
    case 14:
      sub_10005235C(&v24);
      goto LABEL_20;
    case 15:
      sub_10004F204(&v24);
      goto LABEL_20;
    case 16:
      sub_10004F7F0(&v24);
      goto LABEL_20;
    case 17:
      sub_10004FCF8(&v24);
      goto LABEL_20;
    case 18:
      sub_1000526F4(&v24);
      goto LABEL_20;
    default:
      sub_100050908(&v24);
LABEL_20:
      v23 = v42;
      v22 = v41;
      v20 = v40;
      v17 = v39;
      v14 = v38;
      v11 = v37;
      v10 = v36;
      v2 = v35;
      v19 = v33;
      v21 = v34;
      v16 = v31;
      v18 = v32;
      v13 = v29;
      v15 = v30;
      v9 = v27;
      v12 = v28;
      result = v25;
      v8 = v26;
      v3 = v24.n128_u64[1];
      v5 = v24.n128_u64[0];
LABEL_21:
      *a2 = v5;
      *(a2 + 8) = v3;
      *(a2 + 16) = result;
      *(a2 + 24) = v8;
      *(a2 + 32) = v9;
      *(a2 + 40) = v12;
      *(a2 + 48) = v13;
      *(a2 + 56) = v15;
      *(a2 + 64) = v16;
      *(a2 + 72) = v18;
      *(a2 + 80) = v19;
      *(a2 + 88) = v21;
      *(a2 + 96) = v2;
      *(a2 + 112) = v10;
      *(a2 + 128) = v11;
      *(a2 + 144) = v14;
      *(a2 + 160) = v17;
      *(a2 + 176) = v20;
      *(a2 + 192) = v22;
      *(a2 + 208) = v23;
      return result;
  }
}

uint64_t sub_10004B9A4(uint64_t a1, uint64_t a2)
{
  sub_10000A69C(v2 + 16, a2);

  return _swift_deallocClassInstance(v2, 32, 7);
}

uint64_t sub_10004BA00@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v4 = &v199 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for String.LocalizationValue();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v211 = &v199 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v199 - v10;
  if (qword_10007EC50 != -1)
  {
    v198 = v9;
    swift_once();
    v9 = v198;
  }

  v12 = qword_1000814E8;
  v13 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
  if (!v13)
  {
    goto LABEL_48;
  }

  v206 = OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel;
  v203 = v4;
  v204 = v9;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_42;
  }

  v15 = *(Strong + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
  v16 = v15;
  v17 = v13;
  swift_unknownObjectRelease();
  if (!v15)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v18 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_devices;
  swift_beginAccess();
  v19 = *&v16[v18];

  v212 = v17;
  v202 = a1;
  v200 = v12;
  if (v19 >> 62)
  {
    v27 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v27 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v28 = (v6 + 16);
  v29 = (v6 + 8);
  v201 = v6 + 8;
  v199 = v6 + 16;
  if (!v27)
  {
    v19, v20, v21, v22, v23, v24, v25, v26;
    String.LocalizationValue.init(stringLiteral:)();
    v51 = *v28;
    v52 = v204;
    v51(v211, v11, v204);
    static Locale.current.getter();
    v53 = String.init(localized:table:bundle:locale:comment:)();
    v54 = v212;
    v213 = v55;
    v214 = v53;
    v56 = *v29;
    (*v29)(v11, v52);
    0xE000000000000000, v57, v58, v59, v60, v61, v62, v63;
    if (v54[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_needsDeviceOTANameBroadcast] == 1)
    {
      v64 = sub_10002FAA8();
      v66 = v65;
      v67 = sub_1000545F0(v64, v65);
      v69 = v68;
      v70 = 0xE000000000000000;
      0xE000000000000000, v68, v71, v72, v73, v74, v75, v76;
      v66, v77, v78, v79, v80, v81, v82, v83;
      v84 = 0;
      v85 = v214;
    }

    else
    {
      if (v54[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_filterInApp] == 1)
      {
        String.LocalizationValue.init(stringLiteral:)();
        v124 = v211;
        v125 = v204;
        v51(v211, v11, v204);
        static Locale.current.getter();
        v126 = String.init(localized:table:bundle:locale:comment:)();
        v209 = v127;
        v210 = v126;
        v56(v11, v125);
        0xE000000000000000, v128, v129, v130, v131, v132, v133, v134;
        String.LocalizationValue.init(stringLiteral:)();
        v51(v124, v11, v125);
        static Locale.current.getter();
        v135 = String.init(localized:table:bundle:locale:comment:)();
        v70 = v136;
        v137 = v11;
        v84 = v135;
        v138 = v125;
        v67 = v210;
        v56(v137, v138);
        v69 = v209;
        0xE000000000000000, v139, v140, v141, v142, v143, v144, v145;
      }

      else
      {
        v67 = 0;
        v84 = 0;
        v69 = 0xE000000000000000;
        v70 = 0xE000000000000000;
      }

      v85 = v214;
    }

    v110 = v213;
    v146 = *&v212[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_discoveryTimeout];
    if ((*&v146 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v146 > -9.22337204e18)
    {
      if (v146 < 9.22337204e18)
      {
        if (v146 < 120)
        {
        }

        else
        {
          v147 = v146;
          if (!v67 && v69 == 0xE000000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            v67 = sub_100056294(v147 / 60);
            v149 = v148;
            v69, v148, v150, v151, v152, v153, v154, v155;

            v69 = v149;
          }

          else
          {
            v169 = sub_100056294(v147 / 60);
            v170 = v85;
            v172 = v171;
            v216 = v169;
            v217 = v171;

            v173._countAndFlagsBits = 32;
            v173._object = 0xE100000000000000;
            String.append(_:)(v173);
            v172, v174, v175, v176, v177, v178, v179, v180;
            v181 = v217;

            v182._countAndFlagsBits = v67;
            v182._object = v69;
            String.append(_:)(v182);
            v69, v183, v184, v185, v186, v187, v188, v189;
            v190 = v181;
            v85 = v170;
            v190, v191, v192, v193, v194, v195, v196, v197;

            v67 = v216;
            v69 = v217;
          }
        }

        v216 = v85;
        v217 = v110;
        v218 = v67;
        v219 = v69;
        v123 = 0xE000000000000000;
        v220 = 0;
        v221 = 0xE000000000000000;
        v222 = 0;
        v223 = 0xE000000000000000;
        v224 = v84;
        v225 = v70;
        v226 = 0;
        v227 = 0xE000000000000000;
        v228 = 0u;
        v229 = 0u;
        v230 = 0u;
        v231 = 0u;
        v232 = 0u;
        v233 = 0u;
        v234 = 0u;
        v235 = 0u;
        sub_100052AFC(&v216, v215);
        v207 = v70;
        v208 = 0;
        v212 = 0;
        v204 = 0;
        v205 = 0;
        v203 = 0;
        v206 = 0;
        goto LABEL_36;
      }

      goto LABEL_41;
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  0, v20, v21, v22, v23, v24, v25, v26;
  String.LocalizationValue.init(stringLiteral:)();
  v30 = *v28;
  v31 = v211;
  v32 = v204;
  (*v28)(v211, v11, v204);
  static Locale.current.getter();
  v33 = String.init(localized:table:bundle:locale:comment:)();
  v213 = v34;
  v214 = v33;
  v35 = *v29;
  (*v29)(v11, v32);
  0xE000000000000000, v36, v37, v38, v39, v40, v41, v42;
  String.LocalizationValue.init(stringLiteral:)();
  v30(v31, v11, v32);
  static Locale.current.getter();
  v208 = String.init(localized:table:bundle:locale:comment:)();
  v210 = v43;
  v35(v11, v32);
  0xE000000000000000, v44, v45, v46, v47, v48, v49, v50;
  String.LocalizationValue.init(stringLiteral:)();
  v30(v31, v11, v32);
  static Locale.current.getter();
  v86 = v200;
  v211 = String.init(localized:table:bundle:locale:comment:)();
  v207 = v87;
  v35(v11, v32);
  0xE000000000000000, v88, v89, v90, v91, v92, v93, v94;
  v95 = *&v86[v206];
  if (!v95)
  {
    goto LABEL_44;
  }

  v96 = (v95 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appName);
  v97 = v96[1];
  if (!v97)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v200 = v35;
  v98 = *v96;
  v206 = v97;

  0, v99, v100, v101, v102, v103, v104, v105;
  v106 = swift_unknownObjectWeakLoadStrong();
  if (v106)
  {
    v107 = *(v106 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
    v108 = v107;
    swift_unknownObjectRelease();
    if (v107)
    {
      v109 = sub_10000A8A0();

      v205 = v19;
      if (v109)
      {
        sub_1000356E8();
        v110 = v213;
        if (v111 == 10)
        {
          String.LocalizationValue.init(stringLiteral:)();
          v112 = v204;
          v30(v31, v11, v204);
          static Locale.current.getter();
          v113 = String.init(localized:table:bundle:locale:comment:)();
          v115 = v114;

          (v200)(v11, v112);
          0, v116, v117, v118, v119, v120, v121, v122;
        }

        else
        {

          v113 = 0;
          v115 = 0;
        }
      }

      else
      {

        v113 = 0;
        v115 = 0;
        v110 = v213;
      }

      v85 = v214;
      v216 = v214;
      v217 = v110;
      v69 = 0xE000000000000000;
      v218 = 0;
      v219 = 0xE000000000000000;
      v220 = 0;
      v221 = 0xE000000000000000;
      v123 = v210;
      v84 = v211;
      v222 = v208;
      v223 = v210;
      v224 = v211;
      v225 = v207;
      v226 = 0;
      v227 = 0xE000000000000000;
      v212 = v113;
      *&v228 = v113;
      *(&v228 + 1) = v115;
      v203 = v98;
      v204 = v115;
      v229 = 0uLL;
      v230 = v205;
      v231 = 0uLL;
      *&v232 = v98;
      *(&v232 + 1) = v206;
      v233 = 0u;
      v234 = 0u;
      v235 = 0u;
      sub_100052AFC(&v216, v215);
      v67 = 0;
LABEL_36:
      v209 = v69;
      v210 = v123;
      v213 = v110;
      v214 = v85;
      v211 = v84;
      v216 = v85;
      v217 = v110;
      v218 = v67;
      v219 = v69;
      v220 = 0;
      v221 = 0xE000000000000000;
      v156 = v208;
      v222 = v208;
      v223 = v123;
      v224 = v84;
      v157 = v207;
      v225 = v207;
      v226 = 0;
      v158 = v212;
      v227 = 0xE000000000000000;
      *&v228 = v212;
      v159 = v204;
      v160 = v205;
      *(&v228 + 1) = v204;
      v229 = 0uLL;
      v230 = v205;
      v231 = 0uLL;
      v161 = v203;
      *&v232 = v203;
      v162 = v67;
      v163 = v206;
      *(&v232 + 1) = v206;
      v233 = 0u;
      v234 = 0u;
      v235 = 0u;
      result = sub_10002A024(&v216);
      v165 = v202;
      v166 = v213;
      *v202 = v214;
      v165[1] = v166;
      v168 = v209;
      v167 = v210;
      v165[2] = v162;
      v165[3] = v168;
      v165[4] = 0;
      v165[5] = 0xE000000000000000;
      v165[6] = v156;
      v165[7] = v167;
      v165[8] = v211;
      v165[9] = v157;
      v165[10] = 0;
      v165[11] = 0xE000000000000000;
      v165[12] = v158;
      v165[13] = v159;
      v165[14] = 0;
      v165[15] = 0;
      v165[16] = v160;
      v165[17] = 0;
      v165[18] = 0;
      v165[19] = 0;
      v165[20] = v161;
      v165[21] = v163;
      *(v165 + 11) = 0u;
      *(v165 + 12) = 0u;
      *(v165 + 13) = 0u;
      return result;
    }

    goto LABEL_47;
  }

LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10004C530@<X0>(_OWORD *a1@<X8>)
{
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v5 = v119 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for String.LocalizationValue();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v119 - v11;
  if (qword_10007EC50 != -1)
  {
    swift_once();
  }

  v13 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
  if (!v13)
  {
    goto LABEL_48;
  }

  v14 = v13[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_flowType];
  v124 = v1;
  v120 = v7;
  v121 = v6;
  v119[1] = v5;
  if (v14 == 3)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v22 = *(Strong + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
    v23 = v22;
    v24 = v13;
    swift_unknownObjectRelease();
    if (!v22)
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v25 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_deviceToUpgrade;
    swift_beginAccess();
    v20 = *&v23[v25];
    v19 = v20;

    if (!v20)
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }
  }

  else
  {
    if (v14)
    {
LABEL_41:
      v118 = v13;
      __break(1u);
      goto LABEL_42;
    }

    v15 = swift_unknownObjectWeakLoadStrong();
    if (!v15)
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v16 = *(v15 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
    v17 = v16;
    v18 = v13;
    swift_unknownObjectRelease();
    if (!v16)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v19 = sub_10000A8A0();

    if (!v19)
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v20 = v19;
  }

  v26 = v19;
  v34 = v26[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_technologyOngoingSetup];
  v122 = a1;
  v123 = v13;
  if (v34 > 1)
  {
    if (v34 == 2)
    {
      v35 = 0xEA00000000005041;
    }

    else
    {
      v35 = 0xE900000000000065;
    }

LABEL_20:
    v36 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v35, v37, v38, v39, v40, v41, v42, v43;
    if (v36)
    {
      goto LABEL_21;
    }

    if (v20[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_technologyOngoingSetup] > 1u)
    {
      if (v20[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_technologyOngoingSetup] != 2)
      {
        0xE900000000000065, v44, v45, v46, v47, v48, v49, v50;
LABEL_31:
        v13 = sub_1000564E4();
        v54 = v55;
        goto LABEL_32;
      }

      v62 = 0xEA00000000005041;
    }

    else if (v20[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_technologyOngoingSetup])
    {
      v62 = 0xE900000000000068;
    }

    else
    {
      v62 = 0xE400000000000000;
    }

    v63 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v62, v64, v65, v66, v67, v68, v69, v70;
    if ((v63 & 1) == 0)
    {
      v13 = 0;
      v54 = 0xE000000000000000;
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  if (!v34)
  {
    v35 = 0xE400000000000000;
    goto LABEL_20;
  }

  0xE900000000000068, v27, v28, v29, v30, v31, v32, v33;
LABEL_21:
  String.LocalizationValue.init(stringLiteral:)();
  v52 = v120;
  v51 = v121;
  (*(v120 + 16))(v10, v12, v121);
  static Locale.current.getter();
  v13 = String.init(localized:table:bundle:locale:comment:)();
  v54 = v53;
  (*(v52 + 8))(v12, v51);
LABEL_32:
  0xE000000000000000, v55, v56, v57, v58, v59, v60, v61;
LABEL_33:
  v71 = *&v20[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName + 8];
  if (!v71)
  {
    __break(1u);
    goto LABEL_39;
  }

  v72 = *&v20[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName];

  v73 = sub_1000564E8(v72, v71);
  v75 = v74;
  0, v74, v76, v77, v78, v79, v80, v81;
  0xE000000000000000, v82, v83, v84, v85, v86, v87, v88;
  v71, v89, v90, v91, v92, v93, v94, v95;
  v96 = swift_unknownObjectWeakLoadStrong();
  if (!v96)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v97 = *(v96 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
  v98 = v97;
  swift_unknownObjectRelease();
  if (!v97)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v99 = sub_10000ABDC();
  v101 = v100;

  if (v101)
  {
    0, v102, v103, v104, v105, v106, v107, v108;

    *&v126 = v13;
    *(&v126 + 1) = v54;
    *&v127 = v73;
    *(&v127 + 1) = v75;
    *&v128 = 0;
    *(&v128 + 1) = 0xE000000000000000;
    *&v129 = 0;
    *(&v129 + 1) = 0xE000000000000000;
    *&v130 = 0;
    *(&v130 + 1) = 0xE000000000000000;
    *&v131 = 0;
    *(&v131 + 1) = 0xE000000000000000;
    v132 = xmmword_10005D220;
    *&v133 = 0;
    *(&v133 + 1) = v20;
    *&v134 = 0;
    *(&v134 + 1) = v99;
    *&v135[0] = v101;
    *(v135 + 8) = 0u;
    *(&v135[1] + 8) = 0u;
    *(&v135[2] + 8) = 0u;
    *(&v135[3] + 8) = 0u;
    *(&v135[4] + 1) = 0;
    v136[0] = v13;
    v136[1] = v54;
    v136[2] = v73;
    v136[3] = v75;
    v136[4] = 0;
    v136[5] = 0xE000000000000000;
    v136[6] = 0;
    v136[7] = 0xE000000000000000;
    v136[8] = 0;
    v136[9] = 0xE000000000000000;
    v136[10] = 0;
    v136[11] = 0xE000000000000000;
    v137 = xmmword_10005D220;
    v138 = 0;
    v139 = v20;
    v140 = 0;
    v141 = v99;
    v142 = v101;
    v147 = 0;
    v146 = 0u;
    v145 = 0u;
    v144 = 0u;
    v143 = 0u;
    sub_100052AFC(&v126, &v125);
    result = sub_10002A024(v136);
    v110 = v135[2];
    v111 = v122;
    v122[10] = v135[1];
    v111[11] = v110;
    v112 = v135[4];
    v111[12] = v135[3];
    v111[13] = v112;
    v113 = v133;
    v111[6] = v132;
    v111[7] = v113;
    v114 = v135[0];
    v111[8] = v134;
    v111[9] = v114;
    v115 = v129;
    v111[2] = v128;
    v111[3] = v115;
    v116 = v131;
    v111[4] = v130;
    v111[5] = v116;
    v117 = v127;
    *v111 = v126;
    v111[1] = v117;
    return result;
  }

LABEL_48:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10004CBEC@<X0>(_OWORD *a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  v127 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v128 = &v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v129 = &v118 - v6;
  if (qword_10007EC50 != -1)
  {
    swift_once();
  }

  v7 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
  if (!v7)
  {
    goto LABEL_44;
  }

  if (*(v7 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_flowType) != 3)
  {
    if (*(v7 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_flowType))
    {
LABEL_37:
      v117 = v7;
      __break(1u);
      goto LABEL_38;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v9 = *(Strong + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
    v10 = v9;
    v11 = v7;
    swift_unknownObjectRelease();
    if (!v9)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v12 = sub_10000A8A0();

    if (!v12)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v13 = v12;
LABEL_14:
    v20 = v12;
    v28 = v20[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_technologyOngoingSetup];
    v125 = v7;
    v126 = a1;
    if (v28 > 1)
    {
      if (v28 == 2)
      {
        v29 = 0xEA00000000005041;
      }

      else
      {
        v29 = 0xE900000000000065;
      }
    }

    else
    {
      if (v28)
      {
        0xE900000000000068, v21, v22, v23, v24, v25, v26, v27;
LABEL_22:
        v44 = v129;
        String.LocalizationValue.init(stringLiteral:)();
        v45 = v127;
        (*(v127 + 16))(v128, v44, v3);
        static Locale.current.getter();
        v46 = String.init(localized:table:bundle:locale:comment:)();
        v123 = v47;
        v124 = v46;
        (*(v45 + 8))(v44, v3);
LABEL_33:
        0xE000000000000000, v48, v49, v50, v51, v52, v53, v54;
        goto LABEL_34;
      }

      v29 = 0xE400000000000000;
    }

    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v29, v30, v31, v32, v33, v34, v35, v36;
    if (v7)
    {
      goto LABEL_22;
    }

    if (v13[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_technologyOngoingSetup] > 1u)
    {
      if (v13[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_technologyOngoingSetup] != 2)
      {
        0xE900000000000065, v37, v38, v39, v40, v41, v42, v43;
LABEL_32:
        v64 = sub_100056710();
        v123 = v48;
        v124 = v64;
        goto LABEL_33;
      }

      v55 = 0xEA00000000005041;
    }

    else if (v13[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_technologyOngoingSetup])
    {
      v55 = 0xE900000000000068;
    }

    else
    {
      v55 = 0xE400000000000000;
    }

    v56 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v55, v57, v58, v59, v60, v61, v62, v63;
    if ((v56 & 1) == 0)
    {
      v123 = 0xE000000000000000;
      v124 = 0;
LABEL_34:
      v122 = v13;
      v65 = *&v13[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName + 8];
      if (v65)
      {
        v66 = v3;
        v67 = *&v13[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName];

        v68 = sub_100056920(v67, v65);
        v120 = v69;
        v121 = v68;
        0xE000000000000000, v69, v70, v71, v72, v73, v74, v75;
        v65, v76, v77, v78, v79, v80, v81, v82;
        v83 = v129;
        String.LocalizationValue.init(stringLiteral:)();
        v85 = v127;
        v84 = v128;
        v86 = *(v127 + 16);
        v86(v128, v83, v3);
        static Locale.current.getter();
        v87 = String.init(localized:table:bundle:locale:comment:)();
        v118 = v88;
        v119 = v87;
        v89 = *(v85 + 8);
        v89(v83, v3);
        0xE000000000000000, v90, v91, v92, v93, v94, v95, v96;
        String.LocalizationValue.init(stringLiteral:)();
        v86(v84, v83, v3);
        static Locale.current.getter();
        v97 = String.init(localized:table:bundle:locale:comment:)();
        v99 = v98;

        v100 = v122;
        v89(v83, v66);
        0xE000000000000000, v101, v102, v103, v104, v105, v106, v107;
        *&v131 = v124;
        *(&v131 + 1) = v123;
        *&v132 = v121;
        *(&v132 + 1) = v120;
        *&v133 = 0;
        *(&v133 + 1) = 0xE000000000000000;
        *&v134 = v119;
        *(&v134 + 1) = v118;
        *&v135 = v97;
        *(&v135 + 1) = v99;
        *&v136 = 0;
        *(&v136 + 1) = 0xE000000000000000;
        v137 = 0uLL;
        *&v138 = 0;
        *(&v138 + 1) = v100;
        v139 = 0u;
        v140 = 0u;
        v141 = 0u;
        v142 = 0u;
        v143 = 0u;
        v144 = 0u;
        v145[0] = v124;
        v145[1] = v123;
        v145[2] = v121;
        v145[3] = v120;
        v145[4] = 0;
        v145[5] = 0xE000000000000000;
        v145[6] = v119;
        v145[7] = v118;
        v145[8] = v97;
        v145[9] = v99;
        v145[10] = 0;
        v145[11] = 0xE000000000000000;
        memset(&v145[12], 0, 24);
        v145[15] = v100;
        v146 = 0u;
        v147 = 0u;
        v148 = 0u;
        v149 = 0u;
        v150 = 0u;
        v151 = 0u;
        sub_100052AFC(&v131, &v130);
        result = sub_10002A024(v145);
        v109 = v142;
        v110 = v126;
        v126[10] = v141;
        v110[11] = v109;
        v111 = v144;
        v110[12] = v143;
        v110[13] = v111;
        v112 = v138;
        v110[6] = v137;
        v110[7] = v112;
        v113 = v140;
        v110[8] = v139;
        v110[9] = v113;
        v114 = v134;
        v110[2] = v133;
        v110[3] = v114;
        v115 = v136;
        v110[4] = v135;
        v110[5] = v115;
        v116 = v132;
        *v110 = v131;
        v110[1] = v116;
        return result;
      }

      __break(1u);
      goto LABEL_37;
    }

    goto LABEL_32;
  }

  v14 = swift_unknownObjectWeakLoadStrong();
  if (!v14)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v15 = *(v14 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
  v16 = v15;
  v17 = v7;
  swift_unknownObjectRelease();
  if (!v15)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v18 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_deviceToUpgrade;
  swift_beginAccess();
  v19 = *&v16[v18];
  v12 = v19;

  if (v19)
  {
    v13 = v19;
    goto LABEL_14;
  }

LABEL_43:
  __break(1u);
LABEL_44:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10004D300@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  v151 = *(v5 - 8);
  v152 = v5;
  v6 = __chkstk_darwin(v5);
  v8 = &v142 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v142 - v9;
  if (qword_10007EC50 != -1)
  {
    swift_once();
  }

  v11 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
  if (!v11)
  {
    goto LABEL_47;
  }

  v12 = *(v11 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_flowType);
  v150 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
  if (v12 == 3)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v19 = *(Strong + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
    v20 = v19;
    v21 = v11;
    swift_unknownObjectRelease();
    if (!v19)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v22 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_deviceToUpgrade;
    swift_beginAccess();
    v23 = *&v20[v22];
    v17 = v23;

    v153 = v23;
    if (!v23)
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }
  }

  else
  {
    if (v12)
    {
LABEL_40:
      v141 = v11;
      __break(1u);
      goto LABEL_41;
    }

    v13 = swift_unknownObjectWeakLoadStrong();
    if (!v13)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v14 = *(v13 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
    v15 = v14;
    v16 = v11;
    swift_unknownObjectRelease();
    if (!v14)
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v17 = sub_10000A8A0();

    if (!v17)
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v153 = v17;
  }

  v24 = v17;
  v11 = &OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_technologyOngoingSetup;
  v32 = v24[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_technologyOngoingSetup];
  v149 = v2;
  if (v32 > 1)
  {
    if (v32 == 2)
    {
      v33 = 0xEA00000000005041;
    }

    else
    {
      v33 = 0xE900000000000065;
    }
  }

  else
  {
    if (v32)
    {
      0xE900000000000068, v25, v26, v27, v28, v29, v30, v31;
LABEL_21:
      String.LocalizationValue.init(stringLiteral:)();
      v50 = v151;
      v49 = v152;
      (*(v151 + 16))(v8, v10, v152);
      static Locale.current.getter();
      v51 = String.init(localized:table:bundle:locale:comment:)();
      v147 = v52;
      v148 = v51;
      (*(v50 + 8))(v10, v49);
      0xE000000000000000, v53, v54, v55, v56, v57, v58, v59;
      v60 = v153;
      goto LABEL_32;
    }

    v33 = 0xE400000000000000;
  }

  v34 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v33, v35, v36, v37, v38, v39, v40, v41;
  if (v34)
  {
    goto LABEL_21;
  }

  v60 = v153;
  v61 = v153[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_technologyOngoingSetup];
  if (v61 > 1)
  {
    if (v61 != 2)
    {
      0xE900000000000065, v42, v43, v44, v45, v46, v47, v48;
      goto LABEL_31;
    }

    v62 = 0xEA00000000005041;
  }

  else if (v153[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_technologyOngoingSetup])
  {
    v62 = 0xE900000000000068;
  }

  else
  {
    v62 = 0xE400000000000000;
  }

  v63 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v62, v64, v65, v66, v67, v68, v69, v70;
  if ((v63 & 1) == 0)
  {
    v147 = 0xE000000000000000;
    v148 = 0;
    goto LABEL_32;
  }

LABEL_31:
  v71 = sub_10005972C();
  v147 = v72;
  v148 = v71;
  0xE000000000000000, v72, v73, v74, v75, v76, v77, v78;
LABEL_32:
  v153 = v60;
  v79 = *&v60[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName + 8];
  if (!v79)
  {
    __break(1u);
    goto LABEL_38;
  }

  v80 = *&v60[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName];

  v81 = sub_100056D54(v80, v79);
  v145 = v82;
  v146 = v81;
  0xE000000000000000, v82, v83, v84, v85, v86, v87, v88;
  v79, v89, v90, v91, v92, v93, v94, v95;
  String.LocalizationValue.init(stringLiteral:)();
  v97 = v151;
  v96 = v152;
  v98 = *(v151 + 16);
  v98(v8, v10, v152);
  static Locale.current.getter();
  v99 = String.init(localized:table:bundle:locale:comment:)();
  v143 = v100;
  v144 = v99;
  v101 = *(v97 + 8);
  v11 = (v97 + 8);
  v101(v10, v96);
  0xE000000000000000, v102, v103, v104, v105, v106, v107, v108;
  String.LocalizationValue.init(stringLiteral:)();
  v98(v8, v10, v96);
  static Locale.current.getter();
  v109 = String.init(localized:table:bundle:locale:comment:)();
  v111 = v110;
  v101(v10, v96);
  0xE000000000000000, v112, v113, v114, v115, v116, v117, v118;
  v119 = swift_unknownObjectWeakLoadStrong();
  if (!v119)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v120 = *(v119 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
  v121 = v120;
  swift_unknownObjectRelease();
  v122 = v153;
  if (!v120)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v123 = sub_10000ABDC();
  v125 = v124;

  if (v125)
  {
    0, v126, v127, v128, v129, v130, v131, v132;

    *&v155 = v148;
    *(&v155 + 1) = v147;
    *&v156 = v146;
    *(&v156 + 1) = v145;
    *&v157 = 0;
    *(&v157 + 1) = 0xE000000000000000;
    *&v158 = v144;
    *(&v158 + 1) = v143;
    *&v159 = v109;
    *(&v159 + 1) = v111;
    *&v160 = 0;
    *(&v160 + 1) = 0xE000000000000000;
    v161 = 0uLL;
    *&v162 = 0;
    *(&v162 + 1) = v122;
    *&v163 = 0;
    *(&v163 + 1) = v123;
    *&v164[0] = v125;
    *(&v164[3] + 8) = 0u;
    *(&v164[2] + 8) = 0u;
    *(&v164[1] + 8) = 0u;
    *(v164 + 8) = 0u;
    *(&v164[4] + 1) = 0;
    v165[0] = v148;
    v165[1] = v147;
    v165[2] = v146;
    v165[3] = v145;
    v165[4] = 0;
    v165[5] = 0xE000000000000000;
    v165[6] = v144;
    v165[7] = v143;
    v165[8] = v109;
    v165[9] = v111;
    v165[10] = 0;
    v165[11] = 0xE000000000000000;
    memset(&v165[12], 0, 24);
    v165[15] = v122;
    v165[16] = 0;
    v165[17] = v123;
    v165[18] = v125;
    v166 = 0u;
    v167 = 0u;
    v168 = 0u;
    v169 = 0u;
    v170 = 0;
    sub_100052AFC(&v155, &v154);
    result = sub_10002A024(v165);
    v134 = v164[2];
    a1[10] = v164[1];
    a1[11] = v134;
    v135 = v164[4];
    a1[12] = v164[3];
    a1[13] = v135;
    v136 = v162;
    a1[6] = v161;
    a1[7] = v136;
    v137 = v164[0];
    a1[8] = v163;
    a1[9] = v137;
    v138 = v158;
    a1[2] = v157;
    a1[3] = v138;
    v139 = v160;
    a1[4] = v159;
    a1[5] = v139;
    v140 = v156;
    *a1 = v155;
    a1[1] = v140;
    return result;
  }

LABEL_47:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10004DAB8@<X0>(_OWORD *a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v4 = v100 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for String.LocalizationValue();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v100 - v10;
  if (qword_10007EC50 != -1)
  {
    swift_once();
  }

  v12 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
  if (!v12)
  {
    goto LABEL_23;
  }

  v113 = v12;
  String.LocalizationValue.init(stringLiteral:)();
  v14 = v6 + 16;
  v13 = *(v6 + 16);
  v13(v9, v11, v5);
  static Locale.current.getter();
  v15 = String.init(localized:table:bundle:locale:comment:)();
  v110 = v16;
  v111 = v15;
  v18 = *(v6 + 8);
  v17 = v6 + 8;
  v18(v11, v5);
  0xE000000000000000, v19, v20, v21, v22, v23, v24, v25;
  String.LocalizationValue.init(stringLiteral:)();
  v13(v9, v11, v5);
  static Locale.current.getter();
  v103 = String.init(localized:table:bundle:locale:comment:)();
  v109 = v26;
  v18(v11, v5);
  0xE000000000000000, v27, v28, v29, v30, v31, v32, v33;
  String.LocalizationValue.init(stringLiteral:)();
  v104 = v13;
  v105 = v14;
  v13(v9, v11, v5);
  static Locale.current.getter();
  v34 = String.init(localized:table:bundle:locale:comment:)();
  v36 = v35;
  v106 = v18;
  v18(v11, v5);
  0xE000000000000000, v37, v38, v39, v40, v41, v42, v43;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_22;
  }

  v45 = *(Strong + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_flowType);
  swift_unknownObjectRelease();
  v108 = v36;
  if (v45 != 2)
  {
    v79 = swift_unknownObjectWeakLoadStrong();
    if (v79)
    {
      v107 = v34;
      v80 = *(v79 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
      v81 = v80;
      swift_unknownObjectRelease();
      if (v80)
      {
        v112 = sub_10000A8A0();
      }

      else
      {
        v112 = 0;
      }

      v34 = v107;
    }

    else
    {
      v112 = 0;
    }

    goto LABEL_17;
  }

  v100[1] = v4;
  v107 = v34;
  v102 = v17;
  v46 = *&v113[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_renameAccessory];
  if (!v46)
  {
LABEL_23:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v47 = objc_allocWithZone(DADevice);
  v48 = v46;
  v49 = [v47 init];
  v50 = v48;
  v51 = [v48 identifier];
  if (!v51)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v52;
    v51 = String._bridgeToObjectiveC()();
    v53, v54, v55, v56, v57, v58, v59, v60;
  }

  v101 = v5;
  [v49 setIdentifier:v51];

  v61 = *&v113[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appBundleID + 8];
  if (!v61)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v62 = *&v113[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appBundleID];
  v63 = objc_allocWithZone(type metadata accessor for ASUIDevice());

  v64 = v49;
  v65 = sub_100036A64(0, 0, v64, v62, v61);

  v66 = [v50 displayName];
  v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v69 = v68;

  v112 = v65;
  v70 = &v65[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName];
  v71 = *&v65[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName + 8];
  *v70 = v67;
  v70[1] = v69;
  v71, v72, v73, v74, v75, v76, v77, v78;
  v5 = v101;
  v34 = v107;
LABEL_17:
  if (v113[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_accessoryRenamingSSID] == 1)
  {
    String.LocalizationValue.init(stringLiteral:)();
    v104(v9, v11, v5);
    static Locale.current.getter();
    v82 = String.init(localized:table:bundle:locale:comment:)();
    v84 = v83;

    v106(v11, v5);
    v109, v85, v86, v87, v88, v89, v90, v91;
  }

  else
  {

    v84 = v109;
    v82 = v103;
  }

  *&v115 = v111;
  *(&v115 + 1) = v110;
  *&v116 = v82;
  *(&v116 + 1) = v84;
  *&v117 = 0;
  *(&v117 + 1) = 0xE000000000000000;
  *&v118 = v34;
  *(&v118 + 1) = v108;
  *&v119 = 0;
  *(&v119 + 1) = 0xE000000000000000;
  *&v120 = 0;
  *(&v120 + 1) = 0xE000000000000000;
  v121 = 0uLL;
  *&v122 = 0;
  *(&v122 + 1) = v112;
  v123 = 0u;
  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  v127 = 0u;
  v128 = 0u;
  v129[0] = v111;
  v129[1] = v110;
  v129[2] = v82;
  v129[3] = v84;
  v129[4] = 0;
  v129[5] = 0xE000000000000000;
  v129[6] = v34;
  v129[7] = v108;
  v129[8] = 0;
  v129[9] = 0xE000000000000000;
  v129[10] = 0;
  v129[11] = 0xE000000000000000;
  memset(&v129[12], 0, 24);
  v129[15] = v112;
  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  sub_100052AFC(&v115, &v114);
  result = sub_10002A024(v129);
  v93 = v126;
  a1[10] = v125;
  a1[11] = v93;
  v94 = v128;
  a1[12] = v127;
  a1[13] = v94;
  v95 = v122;
  a1[6] = v121;
  a1[7] = v95;
  v96 = v124;
  a1[8] = v123;
  a1[9] = v96;
  v97 = v118;
  a1[2] = v117;
  a1[3] = v97;
  v98 = v120;
  a1[4] = v119;
  a1[5] = v98;
  v99 = v116;
  *a1 = v115;
  a1[1] = v99;
  return result;
}

double sub_10004E1FC@<D0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v5 = &v266 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for String.LocalizationValue();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v266 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v266 - v11;
  if (qword_10007EC50 != -1)
  {
    swift_once();
  }

  v13 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
  if (!v13)
  {
    while (1)
    {
LABEL_109:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  v14 = v13[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_flowType];
  v277 = v10;
  v275 = a1;
  if (v14 != 3)
  {
    v276 = v7;
    v269 = OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel;
    v270 = qword_1000814E8;
    Strong = swift_unknownObjectWeakLoadStrong();
    v271 = v1;
    if (Strong)
    {
      v50 = *(Strong + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
      v51 = v50;
      v52 = v13;
      swift_unknownObjectRelease();
      if (v50)
      {
        v53 = sub_10000A8A0();
      }

      else
      {
        v53 = 0;
      }
    }

    else
    {
      v77 = v13;
      v53 = 0;
    }

    v85 = swift_unknownObjectWeakLoadStrong();
    if (v85)
    {
      v86 = *(v85 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_flowType);
      swift_unknownObjectRelease();
      v273 = v6;
      v267 = v13;
      if (v86 == 2)
      {
        v278 = v53;
        v87 = *&v13[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_renameAccessory];
        if (!v87)
        {
          goto LABEL_109;
        }

        v88 = objc_allocWithZone(DADevice);
        v89 = v87;
        v90 = [v88 init];
        v274 = v89;
        v91 = [v89 identifier];
        if (!v91)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v93 = v92;
          v91 = String._bridgeToObjectiveC()();
          v93, v94, v95, v96, v97, v98, v99, v100;
        }

        [v90 setIdentifier:v91];

        v101 = *&v13[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appBundleID + 8];
        if (!v101)
        {
          goto LABEL_89;
        }

        v102 = *&v13[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appBundleID];
        v103 = objc_allocWithZone(type metadata accessor for ASUIDevice());

        v104 = v90;
        v105 = sub_100036A64(0, 0, v104, v102, v101);

        v106 = v274;
        v107 = [v274 displayName];
        v108 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v110 = v109;

        v111 = &v105[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName];
        v112 = *&v105[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName + 8];
        *v111 = v108;
        v111[1] = v110;
        v112, v113, v114, v115, v116, v117, v118, v119;
        v53 = v105;
      }

      else
      {
        if (!v53)
        {
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
          goto LABEL_90;
        }

        v105 = v53;
      }

      if (v105[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_finishSetupInApp] == 1)
      {
        v120 = swift_unknownObjectWeakLoadStrong();
        if (!v120)
        {
LABEL_91:
          __break(1u);
          goto LABEL_92;
        }

        v121 = *(v120 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_flowType);
        swift_unknownObjectRelease();
        v122 = v121 == 0;
      }

      else
      {
        v122 = 0;
      }

      v278 = v53;
      v123 = swift_unknownObjectWeakLoadStrong();
      if (v123)
      {
        v124 = *(v123 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
        v125 = v124;
        swift_unknownObjectRelease();
        if (v124)
        {
          v126 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_migratedDevices;
          swift_beginAccess();
          v127 = *&v125[v126];

          if (v127 >> 62)
          {
            v135 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v135 = *((v127 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v136 = v276;
          v127, v128, v129, v130, v131, v132, v133, v134;
          v137 = (v136 + 16);
          v138 = (v136 + 8);
          if (v122)
          {
            String.LocalizationValue.init(stringLiteral:)();
            v139 = *v137;
            v140 = v277;
            v141 = v273;
            (*v137)(v277, v12, v273);
            static Locale.current.getter();
            v272 = String.init(localized:table:bundle:locale:comment:)();
            v274 = v142;
            v143 = *v138;
            (*v138)(v12, v141);
            0xE000000000000000, v144, v145, v146, v147, v148, v149, v150;
            String.LocalizationValue.init(stringLiteral:)();
            v139(v140, v12, v141);
            static Locale.current.getter();
            v151 = String.init(localized:table:bundle:locale:comment:)();
            v277 = v152;
            v143(v12, v141);
            0xE000000000000000, v153, v154, v155, v156, v157, v158, v159;
            v160 = *&v278[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName + 8];
            if (!v160)
            {
LABEL_94:
              __break(1u);
              goto LABEL_95;
            }

            v161 = *&v278[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName];

            v162 = v135;
            v163 = sub_1000574E8(v135, v161, v160);
            v62 = v164;
            0xE000000000000000, v164, v165, v166, v167, v168, v169, v170;
            v160, v171, v172, v173, v174, v175, v176, v177;
            v178 = *&v270[v269];
            if (v178)
            {
              v179 = *(v178 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appIcon);
              v180 = v179;
            }

            else
            {
              v179 = 0;
            }

            v219 = v274;
            v241 = swift_unknownObjectWeakLoadStrong();
            if (v162 >= 1)
            {
              if (!v241)
              {
LABEL_97:
                __break(1u);
                goto LABEL_98;
              }

              v242 = *(v241 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
              v221 = v242;
              swift_unknownObjectRelease();
              if (!v242)
              {
LABEL_99:
                __break(1u);
                goto LABEL_100;
              }

              v243 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery;
              v244 = *&v221[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery];
              if (v244)
              {
                [v244 invalidateWithReason:0];
                v224 = *&v221[v243];
              }

              else
              {
                v224 = 0;
              }

              *&v221[v243] = 0;

              goto LABEL_77;
            }

            if (!v241)
            {
LABEL_107:
              __break(1u);
              goto LABEL_108;
            }

            v245 = *(v241 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
            v224 = v245;
            swift_unknownObjectRelease();
            if (!v245)
            {
LABEL_108:
              __break(1u);
              goto LABEL_109;
            }

            sub_1000189D4(0, 1);
          }

          else
          {
            String.LocalizationValue.init(stringLiteral:)();
            v181 = *v137;
            v182 = v277;
            v183 = v273;
            (*v137)(v277, v12, v273);
            static Locale.current.getter();
            v272 = String.init(localized:table:bundle:locale:comment:)();
            v274 = v184;
            v185 = *v138;
            (*v138)(v12, v183);
            0xE000000000000000, v186, v187, v188, v189, v190, v191, v192;
            String.LocalizationValue.init(stringLiteral:)();
            v181(v182, v12, v183);
            static Locale.current.getter();
            v151 = String.init(localized:table:bundle:locale:comment:)();
            v194 = v193;
            v185(v12, v183);
            0xE000000000000000, v195, v196, v197, v198, v199, v200, v201;
            v277 = v194;
            if (v135 > 0)
            {
              v202 = *&v278[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName + 8];
              if (!v202)
              {
LABEL_95:
                __break(1u);
                goto LABEL_96;
              }

              v203 = *&v278[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName];

              v163 = sub_100057AE4(v135, v203, v202);
              v62 = v204;
              0xE000000000000000, v204, v205, v206, v207, v208, v209, v210;
              v202, v211, v212, v213, v214, v215, v216, v217;
              v218 = swift_unknownObjectWeakLoadStrong();
              v219 = v274;
              if (!v218)
              {
LABEL_96:
                __break(1u);
                goto LABEL_97;
              }

              v220 = *(v218 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
              v221 = v220;
              swift_unknownObjectRelease();
              if (!v220)
              {
LABEL_98:
                __break(1u);
                goto LABEL_99;
              }

              v222 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery;
              v223 = *&v221[OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_discovery];
              if (v223)
              {
                [v223 invalidateWithReason:0];
                v224 = *&v221[v222];
              }

              else
              {
                v224 = 0;
              }

              *&v221[v222] = 0;

              v179 = 0;
LABEL_77:

              v253 = *&v270[v269];
              if (v253)
              {
                v254 = (v253 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appName);
                v255 = *v254;
                v256 = v254[1];
              }

              else
              {
                v255 = 0;
                v256 = 0;
              }

              v19 = v272;
              0, v246, v247, v248, v249, v250, v251, v252;
              v280 = v19;
              v281 = v219;
              v282 = v163;
              v283 = v62;
              v284 = 0;
              v285 = 0xE000000000000000;
              v286 = 0;
              v287 = 0xE000000000000000;
              v276 = v151;
              v238 = v278;
              v288 = v151;
              v289 = v277;
              v290 = 0;
              v291 = 0xE000000000000000;
              v292 = 0;
              v293 = 0;
              v294 = 0;
              v295 = v278;
              v296 = 0uLL;
              *&v297 = 0;
              *(&v297 + 1) = v179;
              v272 = v256;
              v273 = v255;
              *&v298 = v255;
              *(&v298 + 1) = v256;
              v299 = 0u;
              v300 = 0u;
              v301 = 0u;
              sub_100052AFC(&v280, v279);
              v237 = v179;
              goto LABEL_81;
            }

            v239 = swift_unknownObjectWeakLoadStrong();
            if (!v239)
            {
LABEL_105:
              __break(1u);
              goto LABEL_106;
            }

            v240 = *(v239 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
            v224 = v240;
            swift_unknownObjectRelease();
            v219 = v274;
            if (!v240)
            {
LABEL_106:
              __break(1u);
              goto LABEL_107;
            }

            sub_1000189D4(0, 1);
            v163 = 0;
            v179 = 0;
            v62 = 0xE000000000000000;
          }

          v221 = v267;
          goto LABEL_77;
        }

LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_85;
  }

  v15 = v13;
  String.LocalizationValue.init(stringLiteral:)();
  v16 = *(v7 + 16);
  v269 = v7 + 16;
  v267 = v16;
  (v16)(v10, v12, v6);
  static Locale.current.getter();
  v17 = String.init(localized:table:bundle:locale:comment:)();
  v18 = v7;
  v19 = v17;
  v21 = v20;
  v22 = *(v18 + 8);
  v276 = v18 + 8;
  v270 = v22;
  (v22)(v12, v6);
  0xE000000000000000, v23, v24, v25, v26, v27, v28, v29;
  v30 = v15[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_needsWiFi];
  v268 = v12;
  v274 = v21;
  v271 = v15;
  if (v30 != 1)
  {
    if (v15[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_needsBluetooth] != 1)
    {
      v278 = 0;
      v62 = 0xE000000000000000;
      goto LABEL_25;
    }

    v266 = v5;
    v31 = *&v15[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appName + 8];
    if (v31)
    {
      v272 = v19;
      v273 = v6;
      v54 = *&v15[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appName];
      v55 = swift_unknownObjectWeakLoadStrong();
      if (v55)
      {
        v56 = *(v55 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
        v57 = v56;

        swift_unknownObjectRelease();
        if (v56)
        {
          v58 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_deviceToUpgrade;
          swift_beginAccess();
          v59 = *&v57[v58];
          v60 = v59;

          if (v59)
          {
            v61 = *&v60[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName];
            v39 = *&v60[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName + 8];

            if (v39)
            {
              v41 = sub_100057280(v54, v31, v61, v39);
              goto LABEL_22;
            }

            goto LABEL_104;
          }

LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
          goto LABEL_105;
        }

LABEL_102:
        __break(1u);
        goto LABEL_103;
      }

LABEL_101:
      __break(1u);
      goto LABEL_102;
    }

LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v266 = v5;
  v31 = *&v15[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appName + 8];
  if (!v31)
  {
    goto LABEL_86;
  }

  v272 = v19;
  v273 = v6;
  v32 = *&v15[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appName];
  v33 = swift_unknownObjectWeakLoadStrong();
  if (!v33)
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v34 = *(v33 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
  v35 = v34;

  swift_unknownObjectRelease();
  if (!v34)
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v36 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_deviceToUpgrade;
  swift_beginAccess();
  v37 = *&v35[v36];
  v38 = v37;

  if (!v37)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v40 = *&v38[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName];
  v39 = *&v38[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName + 8];

  if (!v39)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v41 = sub_100056F7C(v32, v31, v40, v39);
LABEL_22:
  v278 = v41;
  v62 = v42;
  v6 = v273;
  0xE000000000000000, v42, v43, v44, v45, v46, v47, v48;
  v31, v63, v64, v65, v66, v67, v68, v69;
  v39, v70, v71, v72, v73, v74, v75, v76;
  v19 = v272;
LABEL_25:
  v78 = swift_unknownObjectWeakLoadStrong();
  if (v78)
  {
    v79 = v19;
    v80 = *(v78 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
    v81 = v80;
    swift_unknownObjectRelease();
    if (v80)
    {
      v82 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_deviceToUpgrade;
      swift_beginAccess();
      v83 = *&v81[v82];
      v84 = v83;
    }

    else
    {
      v83 = 0;
    }

    v19 = v79;
  }

  else
  {
    v83 = 0;
  }

  v225 = v268;
  String.LocalizationValue.init(stringLiteral:)();
  (v267)(v277, v225, v6);
  static Locale.current.getter();
  v226 = String.init(localized:table:bundle:locale:comment:)();
  v228 = v227;

  (v270)(v225, v6);
  0xE000000000000000, v229, v230, v231, v232, v233, v234, v235;
  v236 = v274;
  v280 = v19;
  v281 = v274;
  v163 = v278;
  v282 = v278;
  v283 = v62;
  v284 = 0;
  v285 = 0xE000000000000000;
  v286 = 0;
  v287 = 0xE000000000000000;
  v276 = v226;
  v277 = v228;
  v288 = v226;
  v289 = v228;
  v290 = 0;
  v291 = 0xE000000000000000;
  v292 = 0;
  v293 = 0;
  v294 = 0;
  v295 = v83;
  v296 = 0u;
  v297 = 0u;
  v298 = 0u;
  v299 = 0u;
  v300 = 0u;
  v301 = 0u;
  sub_100052AFC(&v280, v279);
  v237 = 0;
  v238 = v83;
  v219 = v236;
  v272 = 0;
  v273 = 0;
LABEL_81:
  v278 = v163;
  v274 = v62;
  v280 = v19;
  v281 = v219;
  v282 = v163;
  v283 = v62;
  v284 = 0;
  v285 = 0xE000000000000000;
  v286 = 0;
  v287 = 0xE000000000000000;
  v258 = v276;
  v257 = v277;
  v288 = v276;
  v289 = v277;
  v290 = 0;
  v291 = 0xE000000000000000;
  v292 = 0;
  v293 = 0;
  v294 = 0;
  v295 = v238;
  v296 = 0uLL;
  *&v297 = 0;
  *(&v297 + 1) = v237;
  v259 = v238;
  v261 = v272;
  v260 = v273;
  *&v298 = v273;
  *(&v298 + 1) = v272;
  v299 = 0u;
  v300 = 0u;
  v301 = 0u;
  v262 = v237;
  sub_10002A024(&v280);
  v263 = v275;
  *v275 = v19;
  v263[1] = v219;
  v264 = v274;
  v263[2] = v278;
  v263[3] = v264;
  v263[4] = 0;
  v263[5] = 0xE000000000000000;
  v263[6] = 0;
  v263[7] = 0xE000000000000000;
  v263[8] = v258;
  v263[9] = v257;
  v263[10] = 0;
  v263[11] = 0xE000000000000000;
  v263[12] = 0;
  v263[13] = 0;
  v263[14] = 0;
  v263[15] = v259;
  v263[16] = 0;
  v263[17] = 0;
  v263[18] = 0;
  v263[19] = v262;
  v263[20] = v260;
  v263[21] = v261;
  result = 0.0;
  *(v263 + 11) = 0u;
  *(v263 + 12) = 0u;
  *(v263 + 13) = 0u;
  return result;
}

uint64_t sub_10004F204@<X0>(_OWORD *a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v82 - v8;
  if (qword_10007EC50 != -1)
  {
    swift_once();
  }

  v10 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
  if (!v10)
  {
    goto LABEL_31;
  }

  v11 = v10;
  String.LocalizationValue.init(stringLiteral:)();
  v85 = *(v4 + 16);
  v85(v7, v9, v3);
  static Locale.current.getter();
  v12 = String.init(localized:table:bundle:locale:comment:)();
  v87 = v13;
  v88 = v12;
  v15 = *(v4 + 8);
  v14 = v4 + 8;
  v86 = v15;
  v15(v9, v3);
  0xE000000000000000, v16, v17, v18, v19, v20, v21, v22;
  v23 = v11[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_needsWiFi];
  v89 = v11;
  if (v23 == 1)
  {
    v84 = v14;
    v24 = *&v11[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appName + 8];
    if (v24)
    {
      v82 = *&v11[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appName];
      v83 = v3;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v26 = *(Strong + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
        v27 = v26;

        swift_unknownObjectRelease();
        if (v26)
        {
          v28 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_deviceToUpgrade;
          swift_beginAccess();
          v29 = *&v27[v28];
          v30 = v29;

          if (v29)
          {
            v32 = *&v30[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName];
            v31 = *&v30[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName + 8];

            if (v31)
            {
              v33 = sub_1000582BC(v82, v24, v32, v31);
LABEL_18:
              v48 = v33;
              v49 = v34;
              0xE000000000000000, v34, v35, v36, v37, v38, v39, v40;
              v24, v50, v51, v52, v53, v54, v55, v56;
              v31, v57, v58, v59, v60, v61, v62, v63;
              v3 = v83;
LABEL_20:
              String.LocalizationValue.init(stringLiteral:)();
              v85(v7, v9, v3);
              static Locale.current.getter();
              v64 = String.init(localized:table:bundle:locale:comment:)();
              v66 = v65;

              v86(v9, v3);
              0xE000000000000000, v67, v68, v69, v70, v71, v72, v73;
              *&v91 = v88;
              *(&v91 + 1) = v87;
              *&v92 = v48;
              *(&v92 + 1) = v49;
              *&v93 = 0;
              *(&v93 + 1) = 0xE000000000000000;
              *&v94 = v64;
              *(&v94 + 1) = v66;
              *&v95 = 0;
              *(&v95 + 1) = 0xE000000000000000;
              *&v96 = 0;
              *(&v96 + 1) = 0xE000000000000000;
              v97 = 0u;
              v98 = 0u;
              v99 = 0u;
              v100 = 0u;
              v101 = 0u;
              v102 = 0u;
              v103 = 0u;
              v104 = 0u;
              v105[0] = v88;
              v105[1] = v87;
              v105[2] = v48;
              v105[3] = v49;
              v105[4] = 0;
              v105[5] = 0xE000000000000000;
              v105[6] = v64;
              v105[7] = v66;
              v105[8] = 0;
              v105[9] = 0xE000000000000000;
              v105[10] = 0;
              v105[11] = 0xE000000000000000;
              v106 = 0u;
              v107 = 0u;
              v108 = 0u;
              v109 = 0u;
              v110 = 0u;
              v111 = 0u;
              v112 = 0u;
              v113 = 0u;
              sub_100052AFC(&v91, &v90);
              result = sub_10002A024(v105);
              v75 = v102;
              a1[10] = v101;
              a1[11] = v75;
              v76 = v104;
              a1[12] = v103;
              a1[13] = v76;
              v77 = v98;
              a1[6] = v97;
              a1[7] = v77;
              v78 = v100;
              a1[8] = v99;
              a1[9] = v78;
              v79 = v94;
              a1[2] = v93;
              a1[3] = v79;
              v80 = v96;
              a1[4] = v95;
              a1[5] = v80;
              v81 = v92;
              *a1 = v91;
              a1[1] = v81;
              return result;
            }

            goto LABEL_25;
          }

LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

LABEL_23:
        __break(1u);
        goto LABEL_24;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_23;
  }

  if (v11[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_needsBluetooth] != 1)
  {
    v48 = 0;
    v49 = 0xE000000000000000;
    goto LABEL_20;
  }

  v84 = v14;
  v24 = *&v11[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appName + 8];
  if (!v24)
  {
    goto LABEL_26;
  }

  v82 = *&v11[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appName];
  v83 = v3;
  v41 = swift_unknownObjectWeakLoadStrong();
  if (!v41)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v42 = *(v41 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
  v43 = v42;

  swift_unknownObjectRelease();
  if (!v42)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v44 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_deviceToUpgrade;
  swift_beginAccess();
  v45 = *&v43[v44];
  v46 = v45;

  if (v45)
  {
    v47 = *&v46[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName];
    v31 = *&v46[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName + 8];

    if (v31)
    {
      v33 = sub_1000585A8(v82, v24, v47, v31);
      goto LABEL_18;
    }

    goto LABEL_30;
  }

LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_10004F7F0(_OWORD *a1@<X8>)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v94 = type metadata accessor for String.LocalizationValue();
  v3 = *(v94 - 8);
  v4 = __chkstk_darwin(v94);
  v6 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v83 - v7;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_12;
  }

  v10 = *(Strong + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
  v11 = v10;
  swift_unknownObjectRelease();
  if (!v10)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v12 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_migratedDevices;
  swift_beginAccess();
  v13 = *&v11[v12];

  v90 = a1;
  if (v13 >> 62)
  {
    v89 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v89 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13, v14, v15, v16, v17, v18, v19, v20;
  String.LocalizationValue.init(stringLiteral:)();
  v21 = v94;
  v92 = *(v3 + 16);
  v92(v6, v8, v94);
  static Locale.current.getter();
  v22 = String.init(localized:table:bundle:locale:comment:)();
  v24 = v23;
  v25 = *(v3 + 8);
  v93 = v3 + 8;
  v91 = v25;
  v25(v8, v21);
  0xE000000000000000, v26, v27, v28, v29, v30, v31, v32;
  if (qword_10007EC50 != -1)
  {
    swift_once();
  }

  v33 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
  if (!v33)
  {
    goto LABEL_13;
  }

  v87 = v24;
  v88 = v22;
  v34 = (v33 + OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appName);
  v35 = v34[1];
  if (v35)
  {
    v36 = *v34;

    v89 = sub_100058810(v89, v36, v35);
    v86 = v37;
    0xE000000000000000, v37, v38, v39, v40, v41, v42, v43;
    v35, v44, v45, v46, v47, v48, v49, v50;
    String.LocalizationValue.init(stringLiteral:)();
    v51 = v6;
    v52 = v6;
    v53 = v94;
    v54 = v92;
    v92(v52, v8, v94);
    static Locale.current.getter();
    v55 = String.init(localized:table:bundle:locale:comment:)();
    v84 = v56;
    v85 = v55;
    v57 = v91;
    v91(v8, v53);
    0xE000000000000000, v58, v59, v60, v61, v62, v63, v64;
    String.LocalizationValue.init(stringLiteral:)();
    v54(v51, v8, v53);
    static Locale.current.getter();
    v65 = String.init(localized:table:bundle:locale:comment:)();
    v67 = v66;
    v57(v8, v53);
    0xE000000000000000, v68, v69, v70, v71, v72, v73, v74;
    *&v96 = v88;
    *(&v96 + 1) = v87;
    *&v97 = v89;
    *(&v97 + 1) = v86;
    *&v98 = 0;
    *(&v98 + 1) = 0xE000000000000000;
    *&v99 = v85;
    *(&v99 + 1) = v84;
    *&v100 = v65;
    *(&v100 + 1) = v67;
    *&v101 = 0;
    *(&v101 + 1) = 0xE000000000000000;
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    v105 = 0u;
    v106 = 0u;
    v107 = 0u;
    v108 = 0u;
    v109 = 0u;
    v110[0] = v88;
    v110[1] = v87;
    v110[2] = v89;
    v110[3] = v86;
    v110[4] = 0;
    v110[5] = 0xE000000000000000;
    v110[6] = v85;
    v110[7] = v84;
    v110[8] = v65;
    v110[9] = v67;
    v110[10] = 0;
    v110[11] = 0xE000000000000000;
    v111 = 0u;
    v112 = 0u;
    v113 = 0u;
    v114 = 0u;
    v115 = 0u;
    v116 = 0u;
    v117 = 0u;
    v118 = 0u;
    sub_100052AFC(&v96, &v95);
    sub_10002A024(v110);
    v75 = v107;
    v76 = v90;
    v90[10] = v106;
    v76[11] = v75;
    v77 = v109;
    v76[12] = v108;
    v76[13] = v77;
    v78 = v103;
    v76[6] = v102;
    v76[7] = v78;
    v79 = v105;
    v76[8] = v104;
    v76[9] = v79;
    v80 = v99;
    v76[2] = v98;
    v76[3] = v80;
    v81 = v101;
    v76[4] = v100;
    v76[5] = v81;
    v82 = v97;
    *v76 = v96;
    v76[1] = v82;
    return;
  }

LABEL_14:
  __break(1u);
}

uint64_t sub_10004FCF8@<X0>(_OWORD *a1@<X8>)
{
  v3 = type metadata accessor for Locale();
  __chkstk_darwin(v3 - 8);
  v5 = &v121 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for String.LocalizationValue();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v121 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v121 - v11;
  if (qword_10007EC50 != -1)
  {
    swift_once();
  }

  v13 = *(qword_1000814E8 + OBJC_IVAR____TtC16AccessorySetupUI17ASUIServerManager_currentClientModel);
  if (!v13)
  {
    goto LABEL_37;
  }

  v14 = v13[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_needsWiFi];
  v125 = v5;
  v126 = v7;
  v124 = v12;
  v127 = v13;
  if (v14 == 1)
  {
    *&v122 = v10;
    v15 = v13;
    *&v123 = sub_100058D08();
    *(&v123 + 1) = v16;
    0xE000000000000000, v16, v17, v18, v19, v20, v21, v22;
    v23 = *&v15[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appName + 8];
    if (!v23)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v24 = *&v15[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appName];
    *(&v122 + 1) = v1;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v26 = *(Strong + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
    v27 = v26;

    swift_unknownObjectRelease();
    if (!v26)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v28 = v6;
    v29 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_deviceToUpgrade;
    swift_beginAccess();
    v30 = *&v27[v29];
    v31 = v30;

    if (!v30)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v33 = *&v31[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName];
    v32 = *&v31[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName + 8];

    if (!v32)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v34 = sub_100058F18(v24, v23, v33, v32);
    v36 = v35;
    0xE000000000000000, v35, v37, v38, v39, v40, v41, v42;
    v50 = v23;
    goto LABEL_18;
  }

  if (v13[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_needsBluetooth] != 1)
  {
    v28 = v6;
    v85 = v13;
    v34 = 0;
    *&v123 = 0;
    *(&v123 + 1) = 0xE000000000000000;
    v36 = 0xE000000000000000;
LABEL_20:
    v86 = *&v13[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appName + 8];
    *&v122 = *&v13[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appName];
    *(&v122 + 1) = v86;

    0, v87, v88, v89, v90, v91, v92, v93;
    v94 = swift_unknownObjectWeakLoadStrong();
    if (v94)
    {
      v95 = *(v94 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
      v96 = v95;
      swift_unknownObjectRelease();
      if (v95)
      {
        v121 = v36;
        v97 = v34;
        v98 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_deviceToUpgrade;
        swift_beginAccess();
        v99 = *&v96[v98];
        v100 = v99;

        if (v99)
        {
          v101 = v124;
          String.LocalizationValue.init(stringLiteral:)();
          v102 = v126;
          (*(v126 + 16))(v10, v101, v28);
          static Locale.current.getter();
          v103 = String.init(localized:table:bundle:locale:comment:)();
          v105 = v104;

          (*(v102 + 8))(v101, v28);
          0xE000000000000000, v106, v107, v108, v109, v110, v111, v112;
          v129 = v123;
          *&v130 = v97;
          *(&v130 + 1) = v121;
          *&v131 = 0;
          *(&v131 + 1) = 0xE000000000000000;
          *&v132 = v103;
          *(&v132 + 1) = v105;
          *&v133 = 0;
          *(&v133 + 1) = 0xE000000000000000;
          *&v134 = 0;
          *(&v134 + 1) = 0xE000000000000000;
          v135 = 0uLL;
          *&v136 = 0;
          *(&v136 + 1) = v99;
          v137 = 0u;
          v138 = 0u;
          v139 = v122;
          v141 = 0u;
          v142 = 0u;
          v140 = 0u;
          v143 = v123;
          v144 = v97;
          v145 = v121;
          v146 = 0;
          v147 = 0xE000000000000000;
          v148 = v103;
          v149 = v105;
          v150 = 0;
          v151 = 0xE000000000000000;
          v152 = 0;
          v153 = 0xE000000000000000;
          v155 = 0;
          v154 = 0;
          v156 = 0;
          v157 = v99;
          v158 = 0u;
          v159 = 0u;
          v160 = v122;
          v161 = 0u;
          v162 = 0u;
          v163 = 0u;
          sub_100052AFC(&v129, &v128);
          result = sub_10002A024(&v143);
          v114 = v140;
          a1[10] = v139;
          a1[11] = v114;
          v115 = v142;
          a1[12] = v141;
          a1[13] = v115;
          v116 = v136;
          a1[6] = v135;
          a1[7] = v116;
          v117 = v138;
          a1[8] = v137;
          a1[9] = v117;
          v118 = v132;
          a1[2] = v131;
          a1[3] = v118;
          v119 = v134;
          a1[4] = v133;
          a1[5] = v119;
          v120 = v130;
          *a1 = v129;
          a1[1] = v120;
          return result;
        }

        goto LABEL_26;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  *(&v122 + 1) = v1;
  v51 = v13;
  String.LocalizationValue.init(stringLiteral:)();
  (*(v7 + 16))(v10, v12, v6);
  static Locale.current.getter();
  *&v122 = v10;
  v52 = String.init(localized:table:bundle:locale:comment:)();
  *(&v123 + 1) = v53;
  (*(v7 + 8))(v12, v6);
  0xE000000000000000, v54, v55, v56, v57, v58, v59, v60;
  v61 = &v51[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appName];
  v62 = *&v51[OBJC_IVAR____TtC16AccessorySetupUI15ASUIClientModel_appName + 8];
  if (!v62)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  *&v123 = v52;
  v63 = *v61;
  v64 = swift_unknownObjectWeakLoadStrong();
  if (!v64)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v65 = *(v64 + OBJC_IVAR____TtC16AccessorySetupUI10ASUIRouter_pickingSession);
  v66 = v65;

  swift_unknownObjectRelease();
  if (!v65)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v28 = v6;
  v67 = OBJC_IVAR____TtC16AccessorySetupUI18ASUIPickingSession_deviceToUpgrade;
  swift_beginAccess();
  v68 = *&v66[v67];
  v69 = v68;

  if (!v68)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v70 = *&v69[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName];
  v32 = *&v69[OBJC_IVAR____TtC16AccessorySetupUI10ASUIDevice_displayName + 8];

  if (v32)
  {
    v34 = sub_100059230(v63, v62, v70, v32);
    v36 = v71;
    0xE000000000000000, v71, v72, v73, v74, v75, v76, v77;
    v50 = v62;
LABEL_18:
    v50, v43, v44, v45, v46, v47, v48, v49;
    v32, v78, v79, v80, v81, v82, v83, v84;
    v13 = v127;
    v10 = v122;
    goto LABEL_20;
  }

LABEL_36:
  __break(1u);
LABEL_37:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}