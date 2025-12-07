void sub_10007E754(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_10007E7A8();
  }
}

void sub_10007E7A8()
{
  v1 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService51HeadphoneLiveTranslationAssetDownloadViewController_flowController);
  if (v1)
  {
    v2 = qword_10011C6D0;
    v7 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000A570(v3, qword_10011EB30);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Requested Not Now for Live Translation", v6, 2u);
    }

    sub_1000AA094(0, 1);
  }

  else if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1000B8BAC();

    swift_unknownObjectRelease();
  }
}

void sub_10007E91C()
{
  v1 = v0;
  v57 = type metadata accessor for Locale();
  v2 = *(v57 - 8);
  v3 = __chkstk_darwin(v57);
  v55 = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v52 = v48 - v5;
  v6 = v1 + OBJC_IVAR____TtC20HeadphoneProxService51HeadphoneLiveTranslationAssetDownloadViewController_viewModel;
  swift_beginAccess();
  v7 = type metadata accessor for HeadphoneViewModel(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) || (v12 = (v6 + *(v7 + 80)), (v13 = *v12) == 0))
  {
    if (qword_10011C5C0 != -1)
    {
LABEL_30:
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000A570(v8, qword_100122FA0);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Live Translation: Invalid Source, cannot prefill suggested section", v11, 2u);
    }

    return;
  }

  v14 = v12[1];
  v49 = v13 & 0xFFFFFFFFFFFFFF8;
  if (!(v13 >> 62))
  {
    v15 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_32:
    sub_10007C0D4(v13, v14);

    return;
  }

  v46 = v14;
  v47 = _CocoaArrayWrapper.endIndex.getter();
  v14 = v46;
  v15 = v47;
  if (!v47)
  {
    goto LABEL_32;
  }

LABEL_9:
  v59 = OBJC_IVAR____TtC20HeadphoneProxService51HeadphoneLiveTranslationAssetDownloadViewController_locales;
  v54 = v13 & 0xC000000000000001;
  v48[1] = v14;
  sub_10007C0D4(v13, v14);
  v56 = (v2 + 8);

  v16 = 0;
  *&v17 = 136315138;
  v51 = v17;
  v53 = v1;
  v50 = v15;
  while (1)
  {
    if (v54)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v16 >= *(v49 + 16))
      {
        goto LABEL_29;
      }

      v18 = *(v13 + 8 * v16 + 32);
    }

    v19 = v18;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v58 = v16 + 1;
    if (qword_10011C5C0 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_10000A570(v20, qword_100122FA0);
    v21 = v19;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = v13;
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v60[0] = v26;
      *v25 = v51;
      v27 = [v21 locale];

      if (!v27)
      {
        goto LABEL_34;
      }

      v28 = v52;
      static Locale._unconditionallyBridgeFromObjectiveC(_:)();

      v29 = Locale.identifier.getter();
      v31 = v30;
      (*v56)(v28, v57);
      v32 = sub_100078978(v29, v31, v60);

      *(v25 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v22, v23, "Live Translation: Prefill: %s", v25, 0xCu);
      sub_10000EA94(v26);

      v13 = v24;
      v15 = v50;
    }

    else
    {
    }

    v33 = [v21 locale];
    v34 = v53;
    if (!v33)
    {
      break;
    }

    v35 = v33;
    v36 = v55;
    static Locale._unconditionallyBridgeFromObjectiveC(_:)();

    v37 = Locale.identifier.getter();
    v39 = v38;
    (*v56)(v36, v57);
    v40 = v59;
    swift_beginAccess();
    v41 = *(v34 + v40);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v34 + v40) = v41;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v41 = sub_1000CC104(0, *(v41 + 2) + 1, 1, v41);
      *(v34 + v59) = v41;
    }

    v44 = *(v41 + 2);
    v43 = *(v41 + 3);
    if (v44 >= v43 >> 1)
    {
      v41 = sub_1000CC104((v43 > 1), v44 + 1, 1, v41);
    }

    *(v41 + 2) = v44 + 1;
    v45 = &v41[16 * v44];
    *(v45 + 4) = v37;
    *(v45 + 5) = v39;
    *(v34 + v59) = v41;
    swift_endAccess();

    ++v16;
    if (v58 == v15)
    {

      swift_bridgeObjectRelease_n();
      return;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

BOOL sub_10007EED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + *(type metadata accessor for HeadphoneModel(0) + 196));
  v11 = 0;
  if (*(v6 + 16))
  {
    v7 = sub_1000CD190(14);
    if ((v8 & 1) == 0 || *(*(v6 + 56) + 24 * v7 + 16) != 1)
    {
      if (*(v6 + 16))
      {
        v9 = sub_1000CD190(14);
        if ((v10 & 1) != 0 && !*(*(v6 + 56) + 24 * v9 + 16))
        {
          v11 = 1;
        }
      }
    }
  }

  sub_100080B48(a4, a1, type metadata accessor for HeadphoneModel);
  return v11;
}

uint64_t type metadata accessor for HeadphoneLiveTranslationAssetDownloadViewController(uint64_t a1)
{
  result = qword_10011EB98;
  if (!qword_10011EB98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10007F0AC(uint64_t a1)
{
  sub_10007F1FC(319, &qword_10011D478, type metadata accessor for HeadphoneViewModel);
  if (v1 <= 0x3F)
  {
    sub_10007F1FC(319, &qword_10011EBB0, type metadata accessor for HeadphoneModel);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10007F1FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10007F27C(uint64_t a1)
{
  v2 = *(*v1 + OBJC_IVAR____TtC20HeadphoneProxService51HeadphoneLiveTranslationAssetDownloadViewController_flowController);
  *(*v1 + OBJC_IVAR____TtC20HeadphoneProxService51HeadphoneLiveTranslationAssetDownloadViewController_flowController) = a1;
  return _objc_release_x1(a1, v2);
}

uint64_t sub_10007F294(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC20HeadphoneProxService51HeadphoneLiveTranslationAssetDownloadViewController_headphoneModel;
  swift_beginAccess();
  sub_10000EA2C(a1, v3 + v4, &qword_10011EBD0, &unk_1000D5EE0);
  return swift_endAccess();
}

void sub_10007F32C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000168A4(a2);
  v4 = sub_100033A5C(106);
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
  v7 = sub_100033A5C(107);
  v9 = v8;

  a2[2] = v7;
  a2[3] = v9;
  v10 = sub_100033A5C(108);
  v12 = v11;

  a2[4] = v10;
  a2[5] = v12;
  v13 = sub_100033A5C(109);
  v15 = v14;

  a2[6] = v13;
  a2[7] = v15;
  v17 = *(a1 + 112);
  v16 = *(a1 + 120);
  v18 = (a2 + *(type metadata accessor for HeadphoneViewModel(0) + 80));
  v19 = *v18;
  v20 = v18[1];
  sub_10007C0D4(v17, v16);
  sub_10007C8C0(v19, v20);
  *v18 = v17;
  v18[1] = v16;
}

void sub_10007F464(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Locale();
  v70 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v63 - v8;
  v10 = sub_100008438(&qword_10011EBE8, &unk_1000D8B30);
  __chkstk_darwin(v10 - 8);
  v12 = &v63 - v11;
  v13 = type metadata accessor for UIBackgroundConfiguration();
  v74 = *(v13 - 8);
  __chkstk_darwin(v13);
  v72 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for UIListContentConfiguration();
  v71 = *(v73 - 8);
  __chkstk_darwin(v73);
  v75 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = String._bridgeToObjectiveC()();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v76 = [a1 dequeueReusableCellWithIdentifier:v16 forIndexPath:isa];

  v18 = IndexPath.section.getter();
  if (v18)
  {
    if (v18 != 1)
    {
      return;
    }

    v19 = 1;
  }

  else
  {
    v19 = 0;
  }

  v20 = v1 + OBJC_IVAR____TtC20HeadphoneProxService51HeadphoneLiveTranslationAssetDownloadViewController_viewModel;
  swift_beginAccess();
  v21 = type metadata accessor for HeadphoneViewModel(0);
  if (!(*(*(v21 - 8) + 48))(v20, 1, v21))
  {
    v22 = (v20 + *(v21 + 80));
    v23 = *v22;
    if (*v22)
    {
      v24 = v22[1];

      v25 = IndexPath.row.getter();
      v69 = v4;
      if (v19)
      {
        if ((v24 & 0xC000000000000001) == 0)
        {
          if ((v25 & 0x8000000000000000) == 0)
          {
            if (v25 < *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v26 = v24 + 8 * v25;
LABEL_16:
              v27 = *(v26 + 32);
              goto LABEL_17;
            }

            goto LABEL_29;
          }

          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }
      }

      else if ((v23 & 0xC000000000000001) == 0)
      {
        if ((v25 & 0x8000000000000000) == 0)
        {
          if (v25 < *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v26 = v23 + 8 * v25;
            goto LABEL_16;
          }

LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v27 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_17:
      v65 = v23;
      v28 = v27;
      static UIListContentConfiguration.cell()();
      v29 = v28;
      v30 = [v28 displayName];
      v67 = v24;
      if (v30)
      {
        v31 = v30;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v32 = v75;
      UIListContentConfiguration.text.setter();
      v33 = v73;
      v79[3] = v73;
      v79[4] = &protocol witness table for UIListContentConfiguration;
      v34 = sub_10007C900(v79);
      (*(v71 + 16))(v34, v32, v33);
      UITableViewCell.contentConfiguration.setter();
      v35 = v72;
      static UIBackgroundConfiguration.listCell()();
      v66 = objc_opt_self();
      v36 = [v66 quaternarySystemFillColor];
      UIBackgroundConfiguration.backgroundColor.setter();
      v37 = v74;
      (*(v74 + 16))(v12, v35, v13);
      v38 = *(v37 + 56);
      v68 = v13;
      v38(v12, 0, 1, v13);
      UITableViewCell.backgroundConfiguration.setter();
      v39 = OBJC_IVAR____TtC20HeadphoneProxService51HeadphoneLiveTranslationAssetDownloadViewController_locales;
      swift_beginAccess();
      v40 = *(v2 + v39);

      v41 = [v29 locale];
      if (v41)
      {
        v42 = v41;
        static Locale._unconditionallyBridgeFromObjectiveC(_:)();

        v43 = Locale.identifier.getter();
        v45 = v44;
        v70 = *(v70 + 8);
        v46 = (v70)(v9, v69);
        v77 = v43;
        v78 = v45;
        __chkstk_darwin(v46);
        *(&v63 - 2) = &v77;
        sub_100080A34(sub_100080E64, (&v63 - 4), v40);

        v47 = *(v2 + v39);

        v48 = [v29 locale];

        v64 = v29;
        if (v48)
        {
          static Locale._unconditionallyBridgeFromObjectiveC(_:)();

          v49 = Locale.identifier.getter();
          v51 = v50;
          v52 = (v70)(v7, v69);
          v77 = v49;
          v78 = v51;
          __chkstk_darwin(v52);
          *(&v63 - 2) = &v77;
          LOBYTE(v49) = sub_100080A34(sub_100080F34, (&v63 - 4), v47);

          v53 = &selRef_tintColor;
          if ((v49 & 1) == 0)
          {
            v53 = &selRef_tertiaryLabelColor;
          }

          v54 = [v66 *v53];
          v55 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
          [v55 pointSize];
          v57 = [objc_opt_self() configurationWithPointSize:4 weight:3 scale:v56];
          v58 = String._bridgeToObjectiveC()();
          v59 = [objc_opt_self() _systemImageNamed:v58];

          v60 = v68;
          if (v59)
          {

            v61 = [v59 imageWithConfiguration:v57];

            v62 = [objc_allocWithZone(UIImageView) initWithImage:v61];
            [v62 setTintColor:v54];
            [v76 setAccessoryView:v62];

            (*(v74 + 8))(v72, v60);
            (*(v71 + 8))(v75, v73);
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

LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }
}

void sub_10007FE84(void *a1, uint64_t a2)
{
  v106 = a1;
  v3 = type metadata accessor for Locale();
  v4 = *(v3 - 8);
  v108 = v3;
  v109 = v4;
  v5 = __chkstk_darwin(v3);
  v7 = v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v99 = v96 - v9;
  v10 = __chkstk_darwin(v8);
  v101 = (v96 - v11);
  __chkstk_darwin(v10);
  v13 = v96 - v12;
  v14 = type metadata accessor for IndexPath();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10011C5C0 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  v19 = sub_10000A570(v18, qword_100122FA0);
  v102 = *(v15 + 16);
  v102(v17, a2, v14);
  v107 = v19;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  v22 = os_log_type_enabled(v20, v21);
  v104 = v14;
  v105 = v15;
  v103 = v15 + 16;
  v100 = v7;
  if (v22)
  {
    v23 = a2;
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v112[0] = v25;
    *v24 = 136315138;
    sub_100080BB0(v25, v26);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v14;
    v30 = v29;
    (*(v15 + 8))(v17, v28);
    v31 = sub_100078978(v27, v30, v112);

    *(v24 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v20, v21, "Live Translation: didSelectRowAt: %s", v24, 0xCu);
    sub_10000EA94(v25);

    a2 = v23;
  }

  else
  {

    (*(v15 + 8))(v17, v14);
  }

  v32 = IndexPath.section.getter();
  if (v32)
  {
    if (v32 != 1)
    {
      return;
    }

    v33 = 1;
  }

  else
  {
    v33 = 0;
  }

  v34 = v110 + OBJC_IVAR____TtC20HeadphoneProxService51HeadphoneLiveTranslationAssetDownloadViewController_viewModel;
  swift_beginAccess();
  v35 = type metadata accessor for HeadphoneViewModel(0);
  if (!(*(*(v35 - 8) + 48))(v34, 1, v35))
  {
    v36 = (v34 + *(v35 + 80));
    v37 = *v36;
    if (*v36)
    {
      v38 = v36[1];

      v39 = IndexPath.row.getter();
      v97 = a2;
      v96[1] = v38;
      if (v33)
      {
        if ((v38 & 0xC000000000000001) == 0)
        {
          if ((v39 & 0x8000000000000000) == 0)
          {
            if (v39 < *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v40 = v38 + 8 * v39;
LABEL_21:
              v41 = *(v40 + 32);
              goto LABEL_22;
            }

            goto LABEL_49;
          }

          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }
      }

      else if ((v37 & 0xC000000000000001) == 0)
      {
        if ((v39 & 0x8000000000000000) == 0)
        {
          if (v39 < *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v40 = v37 + 8 * v39;
            goto LABEL_21;
          }

LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

        goto LABEL_48;
      }

      v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_22:
      v42 = v41;
      v43 = OBJC_IVAR____TtC20HeadphoneProxService51HeadphoneLiveTranslationAssetDownloadViewController_locales;
      v44 = v110;
      swift_beginAccess();
      v45 = *(v44 + v43);

      v98 = v42;
      v46 = [v42 locale];
      if (v46)
      {
        v47 = v46;
        static Locale._unconditionallyBridgeFromObjectiveC(_:)();

        v48 = Locale.identifier.getter();
        v50 = v49;
        v51 = *(v109 + 8);
        v109 += 8;
        v51(v13, v108);
        v52 = *(v45 + 16);
        if (v52)
        {
          v53 = 0;
          v54 = (v45 + 40);
          while (1)
          {
            v55 = *(v54 - 1) == v48 && *v54 == v50;
            if (v55 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            ++v53;
            v54 += 2;
            if (v52 == v53)
            {
              goto LABEL_31;
            }
          }

          swift_beginAccess();
          sub_1000808AC(v53);
          swift_endAccess();

          v56 = v98;
          v82 = v98;
          v83 = Logger.logObject.getter();
          v84 = static os_log_type_t.default.getter();
          if (!os_log_type_enabled(v83, v84))
          {

            v76 = v97;
            v66 = v104;
            goto LABEL_44;
          }

          v101 = v51;
          v85 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          v111[0] = v86;
          *v85 = 136315138;
          v87 = [v82 locale];

          v76 = v97;
          v66 = v104;
          if (v87)
          {
            v88 = v99;
            static Locale._unconditionallyBridgeFromObjectiveC(_:)();

            v89 = Locale.identifier.getter();
            v91 = v90;
            v101(v88, v108);
            v92 = sub_100078978(v89, v91, v111);

            *(v85 + 4) = v92;
            _os_log_impl(&_mh_execute_header, v83, v84, "Live Translation: Remove %s from Download List", v85, 0xCu);
            sub_10000EA94(v86);

            goto LABEL_44;
          }

LABEL_54:
          __break(1u);
          return;
        }

LABEL_31:

        v56 = v98;
        v57 = [v98 locale];
        if (v57)
        {
          v58 = v57;

          v59 = v101;
          static Locale._unconditionallyBridgeFromObjectiveC(_:)();

          v60 = Locale.identifier.getter();
          v62 = v61;
          v101 = v51;
          v51(v59, v108);
          v63 = v110;
          swift_beginAccess();
          v64 = *(v63 + v43);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v63 + v43) = v64;
          v66 = v104;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v64 = sub_1000CC104(0, *(v64 + 2) + 1, 1, v64);
            *(v110 + v43) = v64;
          }

          v68 = *(v64 + 2);
          v67 = *(v64 + 3);
          if (v68 >= v67 >> 1)
          {
            v64 = sub_1000CC104((v67 > 1), v68 + 1, 1, v64);
          }

          *(v64 + 2) = v68 + 1;
          v69 = &v64[16 * v68];
          *(v69 + 4) = v60;
          *(v69 + 5) = v62;
          *(v110 + v43) = v64;
          swift_endAccess();
          v70 = v56;
          v71 = Logger.logObject.getter();
          v72 = static os_log_type_t.default.getter();
          if (!os_log_type_enabled(v71, v72))
          {

            v76 = v97;
            goto LABEL_44;
          }

          v73 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          v111[0] = v74;
          *v73 = 136315138;
          v75 = [v70 locale];

          v76 = v97;
          if (v75)
          {
            v77 = v100;
            static Locale._unconditionallyBridgeFromObjectiveC(_:)();

            v78 = Locale.identifier.getter();
            v80 = v79;
            v101(v77, v108);
            v81 = sub_100078978(v78, v80, v111);

            *(v73 + 4) = v81;
            _os_log_impl(&_mh_execute_header, v71, v72, "Live Translation: Add %s to Download List", v73, 0xCu);
            sub_10000EA94(v74);

            v56 = v98;
LABEL_44:
            sub_100008438(&qword_10011EBD8, &qword_1000D8B28);
            v93 = (*(v105 + 80) + 32) & ~*(v105 + 80);
            v94 = swift_allocObject();
            *(v94 + 16) = xmmword_1000D5250;
            v102((v94 + v93), v76, v66);
            isa = Array._bridgeToObjectiveC()().super.isa;

            [v106 reloadRowsAtIndexPaths:isa withRowAnimation:100];

            return;
          }

          goto LABEL_53;
        }

LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

LABEL_51:
      __break(1u);
      goto LABEL_52;
    }
  }
}

uint64_t sub_1000808AC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10007AD6C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_100080A34(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = (a1)(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_100080AE0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100080B20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100080B48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100080BB0(uint64_t a1, uint64_t a2)
{
  result = qword_10011EBE0;
  if (!qword_10011EBE0)
  {
    type metadata accessor for IndexPath();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011EBE0);
  }

  return result;
}

uint64_t sub_100080C08(uint64_t a1)
{
  if (a1)
  {
    if (a1 != 1)
    {
      return 0;
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v1 + OBJC_IVAR____TtC20HeadphoneProxService51HeadphoneLiveTranslationAssetDownloadViewController_viewModel;
  swift_beginAccess();
  v4 = type metadata accessor for HeadphoneViewModel(0);
  if ((*(*(v4 - 8) + 48))(v3, 1, v4))
  {
    return 0;
  }

  v6 = (v3 + *(v4 + 80));
  v7 = *v6;
  if (!*v6)
  {
    return 0;
  }

  if (v2)
  {
    v8 = v6[1];
    if (!(v8 >> 62))
    {
      return *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else if (!(v7 >> 62))
  {
    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return _CocoaArrayWrapper.endIndex.getter();
}

id sub_100080D14(unint64_t a1)
{
  v2 = type metadata accessor for UIListContentConfiguration();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 0;
  if (a1 <= 1)
  {
    v7 = [objc_allocWithZone(UITableViewHeaderFooterView) init];
    static UIListContentConfiguration.header()();
    if (a1)
    {
      v8 = 101;
    }

    else
    {
      v8 = 100;
    }

    sub_100033A5C(v8);
    UIListContentConfiguration.text.setter();
    v11[3] = v2;
    v11[4] = &protocol witness table for UIListContentConfiguration;
    v9 = sub_10007C900(v11);
    (*(v3 + 16))(v9, v5, v2);
    UITableViewHeaderFooterView.contentConfiguration.setter();
    (*(v3 + 8))(v5, v2);
    return v7;
  }

  return result;
}

uint64_t sub_100080E80(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

unint64_t sub_100080ED8()
{
  result = qword_10011EBF0;
  if (!qword_10011EBF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10011EBF0);
  }

  return result;
}

void sub_100080F50(double a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  [v3 setDeviceAddress:v4];
}

void sub_100080FF8(uint64_t a1, uint64_t a2, double a3)
{
  if (a1)
  {
    v5[4] = a1;
    v5[5] = a2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_10006AF20;
    v5[3] = &unk_100106F88;
    v4 = _Block_copy(v5);
  }

  else
  {
    v4 = 0;
  }

  [v3 setCompletionHandler:v4];
  _Block_release(v4);
}

uint64_t sub_1000810A0()
{
  v1 = [v0 name];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

double sub_100081180()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v34 = *(v6 - 8);
  v35 = v6;
  __chkstk_darwin(v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTime();
  v32 = *(v9 - 8);
  v33 = v9;
  v10 = __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v29 - v13;
  v15 = type metadata accessor for DispatchQoS.QoSClass();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 81) == 1)
  {
    v20 = *(v1 + 40);
    if (v20)
    {
      v21 = *(v1 + 48);
      v22 = *(v1 + 88);
      sub_100062D70(*(v1 + 40), v21);
      swift_errorRetain();
      v20(v22);
      sub_1000622D4(v20, v21);
    }
  }

  else
  {
    sub_100041E90();
    v31 = v3;
    v23 = v2;
    (*(v16 + 104))(v19, enum case for DispatchQoS.QoSClass.background(_:), v15);
    v30 = static OS_dispatch_queue.global(qos:)();
    (*(v16 + 8))(v19, v15);
    static DispatchTime.now()();
    + infix(_:_:)();
    v24 = v33;
    v25 = *(v32 + 8);
    v25(v12, v33);
    v26 = v25;
    aBlock[4] = sub_10008180C;
    aBlock[5] = v1;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100019340;
    aBlock[3] = &unk_100106F60;
    v27 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v36 = _swiftEmptyArrayStorage;
    sub_10001C380();
    sub_100008438(&unk_100120090, &unk_1000D78C0);
    sub_100041EE4();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v28 = v30;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v27);

    (*(v31 + 8))(v5, v23);
    (*(v34 + 8))(v8, v35);
    v26(v14, v24);
  }

  return result;
}

double sub_10008160C(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = *(a1 + 48);

    v1(0);

    return sub_1000622D4(v1, v2);
  }

  return result;
}

uint64_t sub_10008166C()
{

  sub_1000622D4(v0[5], v0[6]);

  sub_1000622D4(v0[12], v0[13]);

  return swift_deallocClassInstance();
}

double sub_1000816E8()
{
  *(v0 + 76) = 0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  result = 0.0;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0;
  *(v0 + 80) = 1;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  *(v0 + 88) = 0;
  return result;
}

double sub_10008171C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  return result;
}

double sub_100081744(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 40);
  v4 = *(v2 + 48);
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return sub_1000622D4(v3, v4);
}

uint64_t sub_100081758()
{
  v1 = *(v0 + 56);

  return v1;
}

double sub_1000817A4()
{
  v1 = v0;
  v2 = *(v0 + 96);
  if (v2)
  {
    v3 = *(v0 + 104);

    v2(v4);
    sub_1000622D4(v2, v3);
  }

  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;

  return sub_1000622D4(v5, v6);
}

uint64_t sub_100081814(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100081834(void (*a1)(void **), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    while (1)
    {
      v7 = *v6++;
      v9 = v7;
      v8 = v7;
      a1(&v9);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return;
      }
    }
  }
}

uint64_t sub_1000818C0()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011ED60);
  v1 = sub_10000A570(v0, qword_10011ED60);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100081988()
{
  v27.receiver = v0;
  v27.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v27, "viewDidLoad");
  [v0 setDismissalType:3];
  v1 = *&v0[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_batteryContainerLayoutGuide];
  v2 = String._bridgeToObjectiveC()();
  [v1 setIdentifier:v2];

  v3 = [v0 contentView];
  [v3 addLayoutGuide:v1];

  v4 = [v0 contentView];
  v5 = [v4 mainContentGuide];

  v6 = [v1 bottomAnchor];
  v7 = [v5 bottomAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];

  v9 = objc_opt_self();
  sub_100008438(&unk_10011D960, &qword_1000D5CF0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1000D6000;
  v11 = [v1 topAnchor];
  v12 = [v5 topAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];

  *(v10 + 32) = v13;
  v14 = [v1 leadingAnchor];
  v15 = [v5 leadingAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];

  *(v10 + 40) = v16;
  v17 = [v1 trailingAnchor];
  v18 = [v5 trailingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];

  *(v10 + 48) = v19;
  *(v10 + 56) = v8;
  sub_10000F5A0();
  v20 = v8;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v9 activateConstraints:isa];

  v22 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_batteryContainerVerticalConstraint;
  swift_beginAccess();
  v23 = *&v0[v22];
  *&v0[v22] = v20;
  v24 = v20;

  v25 = sub_100081CEC();
  v26 = *&v0[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_batteryContainer];
  *&v0[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_batteryContainer] = v25;
}

char *sub_100081CEC()
{
  type metadata accessor for HeadphoneBatteryContainer();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = &v0[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_viewModel];
  swift_beginAccess();
  v3 = type metadata accessor for HeadphoneViewModel(0);
  if ((*(*(v3 - 8) + 48))(v2, 1, v3))
  {
    sub_10001309C(&v68);
  }

  else
  {
    v4 = &v2[*(v3 + 56)];
    v5 = *(v4 + 13);
    v65 = *(v4 + 12);
    v66 = v5;
    v67 = *(v4 + 14);
    v6 = *(v4 + 9);
    v61 = *(v4 + 8);
    v62 = v6;
    v7 = *(v4 + 11);
    v63 = *(v4 + 10);
    v64 = v7;
    v8 = *(v4 + 5);
    v57 = *(v4 + 4);
    v58 = v8;
    v9 = *(v4 + 7);
    v59 = *(v4 + 6);
    v60 = v9;
    v10 = *(v4 + 1);
    v53 = *v4;
    v54 = v10;
    v11 = *(v4 + 3);
    v55 = *(v4 + 2);
    v56 = v11;
    sub_10000E88C(&v53, &v68, &unk_10011FF80, &qword_1000D8590);
    v80 = v65;
    v81 = v66;
    v82 = v67;
    v76 = v61;
    v77 = v62;
    v78 = v63;
    v79 = v64;
    v72 = v57;
    v73 = v58;
    v74 = v59;
    v75 = v60;
    v68 = v53;
    v69 = v54;
    v70 = v55;
    v71 = v56;
  }

  v12 = &v1[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneBatteryContainer_layoutMetrics];
  v14 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneBatteryContainer_layoutMetrics + 16];
  v13 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneBatteryContainer_layoutMetrics + 32];
  v53 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneBatteryContainer_layoutMetrics];
  v54 = v14;
  v55 = v13;
  v15 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneBatteryContainer_layoutMetrics + 96];
  v17 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneBatteryContainer_layoutMetrics + 48];
  v16 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneBatteryContainer_layoutMetrics + 64];
  v58 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneBatteryContainer_layoutMetrics + 80];
  v59 = v15;
  v56 = v17;
  v57 = v16;
  v18 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneBatteryContainer_layoutMetrics + 160];
  v20 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneBatteryContainer_layoutMetrics + 112];
  v19 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneBatteryContainer_layoutMetrics + 128];
  v62 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneBatteryContainer_layoutMetrics + 144];
  v63 = v18;
  v60 = v20;
  v61 = v19;
  v21 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneBatteryContainer_layoutMetrics + 224];
  v23 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneBatteryContainer_layoutMetrics + 176];
  v22 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneBatteryContainer_layoutMetrics + 192];
  v66 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneBatteryContainer_layoutMetrics + 208];
  v67 = v21;
  v64 = v23;
  v65 = v22;
  v24 = v68;
  v25 = v70;
  *(v12 + 1) = v69;
  *(v12 + 2) = v25;
  *v12 = v24;
  v26 = v71;
  v27 = v72;
  v28 = v74;
  *(v12 + 5) = v73;
  *(v12 + 6) = v28;
  *(v12 + 3) = v26;
  *(v12 + 4) = v27;
  v29 = v75;
  v30 = v76;
  v31 = v78;
  *(v12 + 9) = v77;
  *(v12 + 10) = v31;
  *(v12 + 7) = v29;
  *(v12 + 8) = v30;
  v32 = v79;
  v33 = v80;
  v34 = v82;
  *(v12 + 13) = v81;
  *(v12 + 14) = v34;
  *(v12 + 11) = v32;
  *(v12 + 12) = v33;
  sub_10000E950(&v53, &unk_10011FF80, &qword_1000D8590);
  v35 = [v0 contentView];
  [v35 addSubview:v1];

  v36 = objc_opt_self();
  sub_100008438(&unk_10011D960, &qword_1000D5CF0);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_1000D6000;
  v38 = [v1 topAnchor];
  v39 = *&v0[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_batteryContainerLayoutGuide];
  v40 = [v39 topAnchor];
  v41 = [v38 constraintGreaterThanOrEqualToAnchor:v40];

  *(v37 + 32) = v41;
  v42 = [v1 bottomAnchor];
  v43 = [v39 bottomAnchor];
  v44 = [v42 constraintLessThanOrEqualToAnchor:v43];

  *(v37 + 40) = v44;
  v45 = [v1 centerXAnchor];
  v46 = [v39 centerXAnchor];
  v47 = [v45 constraintEqualToAnchor:v46];

  *(v37 + 48) = v47;
  v48 = [v1 centerYAnchor];

  v49 = [v39 centerYAnchor];
  v50 = [v48 constraintEqualToAnchor:v49];

  *(v37 + 56) = v50;
  sub_10000F5A0();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v36 activateConstraints:isa];

  return v1;
}

uint64_t sub_1000821A4()
{
  v1 = sub_100008438(&qword_10011CCF0, qword_1000D61B0);
  __chkstk_darwin(v1 - 8);
  v3 = &v35 - v2;
  v4 = type metadata accessor for HeadphoneAssets(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v0 + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_viewModel;
  swift_beginAccess();
  v9 = type metadata accessor for HeadphoneViewModel(0);
  if ((*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    (*(v5 + 56))(v3, 1, 1, v4);
    return sub_10000E950(v3, &qword_10011CCF0, qword_1000D61B0);
  }

  sub_10000E88C(v8 + *(v9 + 44), v3, &qword_10011CCF0, qword_1000D61B0);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_10000E950(v3, &qword_10011CCF0, qword_1000D61B0);
  }

  sub_10008A70C(v3, v7, type metadata accessor for HeadphoneAssets);
  sub_100008438(&qword_10011EF60, &qword_1000D8E70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000D8C40;
  v12 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_leftBatteryView;
  swift_beginAccess();
  v13 = *(v0 + v12);
  *(inited + 32) = v13;
  v14 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_rightBatteryView;
  swift_beginAccess();
  v15 = *(v0 + v14);
  *(inited + 40) = v15;
  v16 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_caseBatteryView;
  v17 = swift_beginAccess();
  *(inited + 48) = *(v0 + v16);
  __chkstk_darwin(v17);
  *(&v35 - 2) = v7;
  v19 = v18;
  v20 = v13;
  v21 = v15;
  sub_100081834(sub_10008C150, (&v35 - 4), inited);
  swift_setDeallocating();
  sub_100008438(&qword_10011EF68, qword_1000D8E78);
  swift_arrayDestroy();
  v22 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_movieBatteryView;
  swift_beginAccess();
  v23 = *(v0 + v22);
  if (v23)
  {
    v24 = *&v23[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneMovieBatteryView_videoView];
    objc_opt_self();
    v25 = swift_dynamicCastObjCClass();
    if (v25)
    {
      v26 = v25;
      v27 = objc_opt_self();
      v28 = v24;
      v29 = v23;
      v30 = [v27 currentTraitCollection];
      v31 = [v30 userInterfaceStyle];

      if (v31 == 2)
      {
        v32 = 1;
      }

      else
      {
        v32 = 2;
      }

      URL._bridgeToObjectiveC()(1);
      v34 = v33;
      [v26 updateViewForAssetType:v32 adjustmentsURL:v33];
    }
  }

  return sub_10008AF60(v7, type metadata accessor for HeadphoneAssets);
}

uint64_t sub_100082670(char a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "viewDidDisappear:", a1 & 1);
  v3 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_movieBatteryView;
  result = swift_beginAccess();
  if (*&v1[v3])
  {
    swift_getObjectType();
    return dispatch thunk of VideoPlaybackControllable.stop()();
  }

  return result;
}

void sub_10008276C(void *a1)
{
  v2 = v1;
  v4 = sub_100008438(&qword_10011EE90, &qword_1000D8D70);
  __chkstk_darwin(v4);
  v6 = v39 - v5;
  v7 = [objc_allocWithZone(UILabel) init];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 setAdjustsFontForContentSizeCategory:1];
  v8 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline];
  [v7 setFont:v8];

  [v7 setNumberOfLines:0];
  v9 = [objc_opt_self() secondaryLabelColor];
  [v7 setTextColor:v9];

  [v7 setTextAlignment:1];
  v10 = [v1 contentView];
  [v10 addSubview:v7];

  v11 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_optimizedBatteryChargingLabel];
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_optimizedBatteryChargingLabel] = v7;
  v12 = v7;

  v13 = a1[7];
  v14 = a1[6] & 0xFFFFFFFFFFFFLL;
  if ((v13 & 0x2000000000000000) != 0)
  {
    v14 = HIBYTE(v13) & 0xF;
  }

  if (!v14)
  {
    v32 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController__turnOffOptimizedBatteryChargingButtonView];
    if (v32)
    {
      [v32 removeFromSuperview];
    }

    v33 = [v1 contentView];
    [v33 setNeedsLayout];

    v34 = [v2 contentView];
    [v34 layoutIfNeeded];

    v31 = a1[12];
    if (!v31)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v15 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController__turnOffOptimizedBatteryChargingButtonHost;
  v16 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController__turnOffOptimizedBatteryChargingButtonHost];
  if (v16 || (*v6 = static VerticalAlignment.center.getter(), *(v6 + 1) = 0, v6[16] = 1, v17 = sub_100008438(&qword_10011EE98, &qword_1000D8D78), sub_100082BF0(a1, &v6[*(v17 + 44)]), sub_10001C3D8(&qword_10011EEA0, &qword_10011EE90, &qword_1000D8D70, &protocol conformance descriptor for HStack<A>), v18 = AnyView.init<A>(_:)(), v19 = objc_allocWithZone(sub_100008438(&qword_10011EEA8, &qword_1000D8D80)), v39[1] = v18, v20 = UIHostingController.init(rootView:)(), v21 = *&v2[v15], *&v2[v15] = v20, v21, (v16 = *&v2[v15]) != 0))
  {
    v22 = v16;
    v23 = [v22 view];
    v24 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController__turnOffOptimizedBatteryChargingButtonView;
    v25 = *&v2[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController__turnOffOptimizedBatteryChargingButtonView];
    *&v2[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController__turnOffOptimizedBatteryChargingButtonView] = v23;

    v26 = [v22 view];
    if (v26)
    {
      [v26 setTranslatesAutoresizingMaskIntoConstraints:0];

      v27 = *&v2[v24];
      if (v27)
      {
        v28 = [v27 superview];
        if (v28)
        {
LABEL_11:

          v30 = *&v2[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_turnOffOptimizedBatteryChargingButtonHost];
          *&v2[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_turnOffOptimizedBatteryChargingButtonHost] = v16;

          v31 = a1[12];
          if (!v31)
          {
LABEL_19:

            return;
          }

LABEL_16:
          v35 = v31;
          [v12 setAttributedText:v35];
          sub_1000835D8();
          v36 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_batteryContainerVerticalConstraint;
          swift_beginAccess();
          v37 = *&v2[v36];
          if (v37)
          {
            v38 = v37;
            [v38 setActive:0];
          }

          v12 = v35;
          goto LABEL_19;
        }
      }

      v29 = [v2 contentView];
      if (*&v2[v24])
      {
        v28 = v29;
        [v29 addSubview:?];
        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100082BF0@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a3;
  v48 = type metadata accessor for BorderedButtonStyle();
  v49 = *(v48 - 8);
  __chkstk_darwin(v48);
  v46 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for ButtonSizing();
  v44 = *(v45 - 8);
  __chkstk_darwin(v45);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_100008438(&qword_10011EEB0, &qword_1000D8D88);
  v7 = *(v41 - 8);
  __chkstk_darwin(v41);
  v9 = &v41 - v8;
  v43 = sub_100008438(&qword_10011EEB8, &qword_1000D8D90);
  __chkstk_darwin(v43);
  v11 = &v41 - v10;
  v47 = sub_100008438(&qword_10011EEC0, &qword_1000D8D98) - 8;
  __chkstk_darwin(v47);
  v42 = &v41 - v12;
  v13 = sub_100008438(&qword_10011EEC8, &qword_1000D8DA0);
  __chkstk_darwin(v13);
  v15 = &v41 - v14;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v51 = a2;

  sub_100008438(&qword_10011EED0, &qword_1000D8DA8);
  sub_10008AD10(&qword_10011EED8, &qword_10011EED0, &qword_1000D8DA8, sub_10008A9C4);
  Button.init(action:label:)();
  v16 = v13;

  static ButtonSizing.flexible.getter();
  sub_10001C3D8(&qword_10011EEF0, &qword_10011EEB0, &qword_1000D8D88, &protocol conformance descriptor for Button<A>);
  v17 = v41;
  View.buttonSizing(_:)();
  (*(v44 + 8))(v6, v45);
  (*(v7 + 8))(v9, v17);
  static Font.callout.getter();
  static Font.Weight.bold.getter();
  v18 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  v20 = &v11[*(v43 + 36)];
  *v20 = KeyPath;
  v20[1] = v18;
  v21 = v46;
  BorderedButtonStyle.init()();
  sub_10008AAA0();
  sub_10008ABC8();
  v22 = v42;
  v23 = v48;
  View.buttonStyle<A>(_:)();
  (*(v49 + 8))(v21, v23);
  sub_10000E950(v11, &qword_10011EEB8, &qword_1000D8D90);
  v24 = [objc_opt_self() systemGreenColor];
  v25 = Color.init(uiColor:)();
  v26 = swift_getKeyPath();
  *&v52 = v25;
  v27 = AnyShapeStyle.init<A>(_:)();
  v28 = (v22 + *(sub_100008438(&qword_10011EF18, &qword_1000D8E20) + 36));
  *v28 = v26;
  v28[1] = v27;
  v29 = (v22 + *(v47 + 44));
  v30 = *(sub_100008438(&qword_10011EF20, &qword_1000D8E28) + 28);
  v31 = enum case for ControlSize.large(_:);
  v32 = type metadata accessor for ControlSize();
  (*(*(v32 - 8) + 104))(v29 + v30, v31, v32);
  *v29 = swift_getKeyPath();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10008ACA0(v22, v15);
  v33 = &v15[*(v16 + 36)];
  v34 = v57;
  *(v33 + 4) = v56;
  *(v33 + 5) = v34;
  *(v33 + 6) = v58;
  v35 = v53;
  *v33 = v52;
  *(v33 + 1) = v35;
  v36 = v55;
  *(v33 + 2) = v54;
  *(v33 + 3) = v36;
  sub_100008438(&qword_10011EF28, &qword_1000D8E60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000D8C40;
  LOBYTE(v22) = static Edge.Set.leading.getter();
  *(inited + 32) = v22;
  v38 = static Edge.Set.trailing.getter();
  *(inited + 33) = v38;
  v39 = static Edge.Set.top.getter();
  *(inited + 34) = v39;
  Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v22)
  {
    Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v38)
  {
    Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v39)
  {
    Edge.Set.init(rawValue:)();
  }

  sub_10008AD10(&qword_10011EF30, &qword_10011EEC8, &qword_1000D8DA0, sub_10008AD94);
  View.scenePadding(_:)();
  return sub_10000E950(v15, &qword_10011EEC8, &qword_1000D8DA0);
}

void sub_1000833B4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = swift_unknownObjectWeakLoadStrong();

    if (v3)
    {
      sub_1000BAD18();
      swift_unknownObjectRelease();
    }
  }
}

__n128 sub_100083428@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12 = *(a1 + 48);
  sub_100008480();

  v3 = Text.init<A>(_:)();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v11[71] = v16;
  *&v11[55] = v15;
  *&v11[23] = v13;
  *&v11[7] = v12;
  *&v11[87] = v17;
  *&v11[103] = v18;
  *&v11[39] = v14;
  *(a2 + 97) = *&v11[64];
  *(a2 + 113) = *&v11[80];
  *(a2 + 129) = *&v11[96];
  *(a2 + 33) = *v11;
  *(a2 + 49) = *&v11[16];
  result = *&v11[32];
  *(a2 + 65) = *&v11[32];
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v9;
  *(a2 + 32) = 0;
  *(a2 + 144) = *(&v18 + 1);
  *(a2 + 81) = *&v11[48];
  return result;
}

uint64_t sub_100083558(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_10008BEFC(a1);
  (*(*(*(v2 + qword_100123148) - 8) + 8))(a1);
  return v5;
}

void sub_1000835D8()
{
  v1 = v0;
  v2 = [v0 contentView];
  v60 = [v2 mainContentGuide];

  v3 = *&v0[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_optimizedBatteryChargingLabel];
  v4 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_turnOffOptimizedBatteryChargingButtonHost];
  if (v4)
  {
    v5 = v3;
    v6 = [v4 view];
    v7 = v6;
    if (v3)
    {
      if (v6)
      {
        if (qword_10011C640 != -1)
        {
          swift_once();
        }

        v8 = type metadata accessor for Logger();
        sub_10000A570(v8, qword_100123058);
        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          *v11 = 0;
          _os_log_impl(&_mh_execute_header, v9, v10, "Battery: OBC/DEOC Layout for Button and Label", v11, 2u);
        }

        v59 = objc_opt_self();
        sub_100008438(&unk_10011D960, &qword_1000D5CF0);
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_1000D5D20;
        v13 = v5;
        v14 = [v13 topAnchor];
        v15 = [*&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_batteryContainerLayoutGuide] bottomAnchor];
        v16 = [v14 constraintEqualToAnchor:v15 constant:20.0];

        *(v12 + 32) = v16;
        v17 = [v13 leadingAnchor];
        v18 = [v60 leadingAnchor];
        v19 = [v17 constraintEqualToAnchor:v18];

        *(v12 + 40) = v19;
        v20 = [v13 trailingAnchor];
        v21 = [v60 trailingAnchor];
        v22 = [v20 constraintEqualToAnchor:v21];

        *(v12 + 48) = v22;
        v23 = [v7 topAnchor];
        v24 = [v13 bottomAnchor];

        v25 = [v23 constraintEqualToAnchor:v24];
        *(v12 + 56) = v25;
        v26 = [v7 leadingAnchor];
        v27 = [v60 leadingAnchor];
        v28 = [v26 constraintEqualToAnchor:v27];

        *(v12 + 64) = v28;
        v29 = [v7 trailingAnchor];
        v30 = [v60 trailingAnchor];
        v31 = [v29 constraintEqualToAnchor:v30];

        *(v12 + 72) = v31;
        v32 = [v7 bottomAnchor];
        v33 = [v60 bottomAnchor];
        v34 = [v32 constraintLessThanOrEqualToAnchor:v33];

        *(v12 + 80) = v34;
        sub_10000F5A0();
        v35.super.isa = Array._bridgeToObjectiveC()().super.isa;

        [v59 activateConstraints:v35.super.isa];

        goto LABEL_21;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v36 = v3;
    if (v3)
    {
      v5 = v36;
LABEL_11:
      if (qword_10011C640 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_10000A570(v37, qword_100123058);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&_mh_execute_header, v38, v39, "Battery: OBC/DEOC Layout for Label only", v40, 2u);
      }

      v41 = objc_opt_self();
      sub_100008438(&unk_10011D960, &qword_1000D5CF0);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_1000D6000;
      v43 = v5;
      v44 = [v43 topAnchor];
      v45 = [*&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_batteryContainerLayoutGuide] bottomAnchor];
      v46 = [v44 constraintEqualToAnchor:v45 constant:20.0];

      *(v42 + 32) = v46;
      v47 = [v43 leadingAnchor];
      v48 = [v60 leadingAnchor];
      v49 = [v47 constraintEqualToAnchor:v48];

      *(v42 + 40) = v49;
      v50 = [v43 trailingAnchor];
      v51 = [v60 trailingAnchor];
      v52 = [v50 constraintEqualToAnchor:v51];

      *(v42 + 48) = v52;
      v53 = [v43 bottomAnchor];

      v54 = [v60 bottomAnchor];
      v55 = [v53 constraintLessThanOrEqualToAnchor:v54];

      *(v42 + 56) = v55;
      sub_10000F5A0();
      v35.super.isa = Array._bridgeToObjectiveC()().super.isa;

      [v41 activateConstraints:v35.super.isa];

      goto LABEL_21;
    }

    v7 = 0;
  }

  if (qword_10011C640 != -1)
  {
    swift_once();
  }

  v56 = type metadata accessor for Logger();
  sub_10000A570(v56, qword_100123058);
  v35.super.isa = Logger.logObject.getter();
  v57 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v35.super.isa, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&_mh_execute_header, v35.super.isa, v57, "Battery: OBC/DEOC layout none", v58, 2u);
  }

LABEL_21:
}

void sub_100083E0C(void *a1)
{
  v3 = type metadata accessor for HeadphoneModel(0);
  __chkstk_darwin(v3 - 8);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v6 = sub_100008438(&qword_10011F2E0, &unk_1000D8580);
  __chkstk_darwin(v6 - 8);
  v8 = aBlock - v7 + 16;
  sub_10008A94C(a1, aBlock - v7 + 16, type metadata accessor for HeadphoneViewModel);
  v9 = type metadata accessor for HeadphoneViewModel(0);
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_viewModel;
  swift_beginAccess();
  sub_10004D3E8(v8, &v1[v10]);
  swift_endAccess();
  v11 = String._bridgeToObjectiveC()();
  [v1 setTitle:v11];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    swift_beginAccess();
    sub_10000E88C(v13 + 16, aBlock, &qword_10011FBC0, &unk_1000D5EF0);
    swift_unknownObjectRelease();
    v14 = v47;
    if (v47)
    {
      v15 = sub_10000E7E4(aBlock, v47);
      v16 = *(v14 - 1);
      __chkstk_darwin(v15);
      v18 = (aBlock - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0) + 16);
      (*(v16 + 16))(v18);
      sub_10000E950(aBlock, &qword_10011FBC0, &unk_1000D5EF0);
      v19 = *v18;
      v20 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
      swift_beginAccess();
      sub_10008A94C(v19 + v20, v5, type metadata accessor for HeadphoneModel);
      (*(v16 + 8))(v18, v14);
      v21 = v5[136];
      sub_10008AF60(v5, type metadata accessor for HeadphoneModel);
      if (v21 == 13)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_10000E950(aBlock, &qword_10011FBC0, &unk_1000D5EF0);
    }
  }

  v22 = swift_unknownObjectWeakLoadStrong();
  if (v22)
  {
    v23 = v22;
    swift_beginAccess();
    sub_10000E88C(v23 + 16, aBlock, &qword_10011FBC0, &unk_1000D5EF0);
    swift_unknownObjectRelease();
    v24 = v47;
    if (v47)
    {
      v25 = sub_10000E7E4(aBlock, v47);
      v26 = *(v24 - 1);
      __chkstk_darwin(v25);
      v28 = (aBlock - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0) + 16);
      (*(v26 + 16))(v28);
      sub_10000E950(aBlock, &qword_10011FBC0, &unk_1000D5EF0);
      v29 = [*(*v28 + OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_deviceManager) isTemporaryPairingConnectionAllowed];
      (*(v26 + 8))(v28, v24);
      if (v29)
      {
        v30 = v1;
        if (qword_10011C6D8 != -1)
        {
          swift_once();
        }

        v31 = type metadata accessor for Logger();
        sub_10000A570(v31, qword_10011ED60);
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 0;
          _os_log_impl(&_mh_execute_header, v32, v33, "Temporary Managed Pairing: Show Subtitle", v34, 2u);
        }

        v35 = String._bridgeToObjectiveC()();
        v1 = v30;
        [v30 setSubtitle:v35];
      }
    }

    else
    {
      sub_10000E950(aBlock, &qword_10011FBC0, &unk_1000D5EF0);
    }
  }

LABEL_15:
  v36 = a1[5];
  v37 = HIBYTE(v36) & 0xF;
  if ((v36 & 0x2000000000000000) == 0)
  {
    v37 = a1[4] & 0xFFFFFFFFFFFFLL;
  }

  if (v37)
  {
    v38 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v39 = String._bridgeToObjectiveC()();
    v48 = sub_10008A6EC;
    v49 = v38;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000C034;
    v47 = &unk_1001070D0;
    v40 = _Block_copy(aBlock);
    v41 = [objc_opt_self() actionWithTitle:v39 style:0 handler:v40];

    _Block_release(v40);

    v42 = [v1 addAction:v41];
  }

  sub_10008276C(a1);
  v43 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_batteryContainer];
  v44 = v43;
  sub_100084558(a1, v43);
}

void sub_1000844E4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();

    if (v4)
    {
      sub_1000B615C();
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_100084558(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for HeadphoneBatteryInfo(0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = (&v28 - v9);
  __chkstk_darwin(v8);
  v12 = (&v28 - v11);
  v13 = type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
  result = __chkstk_darwin(v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v17 = type metadata accessor for HeadphoneViewModel(0);
    sub_10008A94C(a1 + *(v17 + 48), v16, type metadata accessor for HeadphoneViewModel.BatteryConfiguration);
    result = swift_getEnumCaseMultiPayload();
    if (result > 2)
    {
      if (result != 3)
      {
        if (result != 4)
        {
          return result;
        }

        sub_10008A70C(v16, v12, type metadata accessor for HeadphoneBatteryInfo);
        v19 = a2;
        sub_1000897B0(v12, v19);

        return sub_10008AF60(v12, type metadata accessor for HeadphoneBatteryInfo);
      }

      v22 = *(sub_100008438(&qword_10011D0B8, &unk_1000D8D50) + 48);
      sub_10008A70C(v16, v12, type metadata accessor for HeadphoneBatteryInfo);
      sub_10008A70C(&v16[v22], v10, type metadata accessor for HeadphoneBatteryInfo);
      v21 = a2;
      sub_100088EF8(v12, v10, v21);
    }

    else
    {
      if (result)
      {
        if (result == 1)
        {
          sub_10008A70C(v16, v12, type metadata accessor for HeadphoneBatteryInfo);
          v18 = a2;
          sub_100087C74(v12, v18);

          return sub_10008AF60(v12, type metadata accessor for HeadphoneBatteryInfo);
        }

        v24 = sub_100008438(&unk_10011FFF0, &unk_1000D63B0);
        v25 = *(v24 + 48);
        v26 = *(v24 + 64);
        sub_10008A70C(v16, v12, type metadata accessor for HeadphoneBatteryInfo);
        sub_10008A70C(&v16[v25], v10, type metadata accessor for HeadphoneBatteryInfo);
        sub_10008A70C(&v16[v26], v7, type metadata accessor for HeadphoneBatteryInfo);
        v27 = a2;
        sub_100088428(v12, v10, v7, v27);

        sub_10008AF60(v7, type metadata accessor for HeadphoneBatteryInfo);
        v23 = v10;
LABEL_13:
        sub_10008AF60(v23, type metadata accessor for HeadphoneBatteryInfo);
        return sub_10008AF60(v12, type metadata accessor for HeadphoneBatteryInfo);
      }

      v20 = *(sub_100008438(&qword_10011D0C0, &unk_1000D8D60) + 48);
      sub_10008A70C(v16, v12, type metadata accessor for HeadphoneBatteryInfo);
      sub_10008A70C(&v16[v20], v10, type metadata accessor for HeadphoneBatteryInfo);
      v21 = a2;
      sub_100086F94(v12, v10, v21);
    }

    v23 = v10;
    goto LABEL_13;
  }

  return result;
}

void sub_1000848FC(void *a1)
{
  v2 = v1;
  v128 = a1;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
  __chkstk_darwin(v3);
  v5 = &v114 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100008438(&qword_10011F2E0, &unk_1000D8580);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v114 - v10;
  v12 = type metadata accessor for HeadphoneViewModel(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v125 = &v114 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v124 = &v114 - v17;
  v18 = __chkstk_darwin(v16);
  v120 = &v114 - v19;
  v20 = __chkstk_darwin(v18);
  v122 = &v114 - v21;
  v22 = __chkstk_darwin(v20);
  v121 = &v114 - v23;
  v24 = __chkstk_darwin(v22);
  v119 = &v114 - v25;
  __chkstk_darwin(v24);
  v27 = &v114 - v26;
  v127 = v2;
  v28 = &v2[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_viewModel];
  swift_beginAccess();
  sub_10000E88C(v28, v11, &qword_10011F2E0, &unk_1000D8580);
  v126 = v13;
  v29 = *(v13 + 48);
  if (v29(v11, 1, v12) == 1)
  {
    sub_10000E950(v11, &qword_10011F2E0, &unk_1000D8580);
    return;
  }

  v117 = v29;
  v118 = v28;
  sub_10008A70C(v11, v27, type metadata accessor for HeadphoneViewModel);
  v30 = v12;
  v31 = *(v12 + 48);
  swift_storeEnumTagMultiPayload();
  v32 = v128;
  v33 = sub_1000174A4(v128 + v31, v5);
  sub_10008AF60(v5, type metadata accessor for HeadphoneViewModel.BatteryConfiguration);
  if (v33)
  {
    sub_10008AF60(v27, type metadata accessor for HeadphoneViewModel);
    return;
  }

  sub_10008A94C(v32, v9, type metadata accessor for HeadphoneViewModel);
  (*(v126 + 56))(v9, 0, 1, v30);
  v34 = v118;
  swift_beginAccess();
  sub_10004D3E8(v9, v34);
  swift_endAccess();
  v116 = v30;
  v35 = *(v30 + 48);
  v36 = v27;
  if (sub_1000174A4(&v27[v35], v32 + v31))
  {
    if (qword_10011C640 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_10000A570(v37, qword_100123058);
    v38 = v124;
    sub_10008A94C(v27, v124, type metadata accessor for HeadphoneViewModel);
    v39 = v125;
    sub_10008A94C(v128, v125, type metadata accessor for HeadphoneViewModel);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v42 = 136315394;
      v43 = sub_1000171AC();
      v44 = v38;
      v46 = v45;
      sub_10008AF60(v44, type metadata accessor for HeadphoneViewModel);
      v47 = sub_100078978(v43, v46, &aBlock);

      *(v42 + 4) = v47;
      *(v42 + 12) = 2080;
      v48 = sub_1000171AC();
      v50 = v49;
      sub_10008AF60(v39, type metadata accessor for HeadphoneViewModel);
      v51 = sub_100078978(v48, v50, &aBlock);

      *(v42 + 14) = v51;
      _os_log_impl(&_mh_execute_header, v40, v41, "Battery: old:%s new: %s", v42, 0x16u);
      swift_arrayDestroy();

      v36 = v27;
    }

    else
    {

      sub_10008AF60(v39, type metadata accessor for HeadphoneViewModel);
      sub_10008AF60(v38, type metadata accessor for HeadphoneViewModel);
    }

    v53 = v127;
  }

  else
  {
    v52 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_isTransitioning;
    v53 = v127;
    v54 = v127[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_isTransitioning];
    v115 = v36;
    if (v54)
    {
      if (qword_10011C6D8 != -1)
      {
        swift_once();
      }

      v55 = type metadata accessor for Logger();
      sub_10000A570(v55, qword_10011ED60);
      v56 = v120;
      sub_10008A94C(v128, v120, type metadata accessor for HeadphoneViewModel);
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        aBlock = v60;
        *v59 = 136315138;
        v61 = v116;
        v62 = sub_1000171AC();
        v63 = v56;
        v65 = v64;
        sub_10008AF60(v63, type metadata accessor for HeadphoneViewModel);
        v66 = sub_100078978(v62, v65, &aBlock);

        *(v59 + 4) = v66;
        _os_log_impl(&_mh_execute_header, v57, v58, "Battery: Transition caught configuration change %s", v59, 0xCu);
        sub_10000EA94(v60);

        v36 = v115;
      }

      else
      {

        sub_10008AF60(v56, type metadata accessor for HeadphoneViewModel);
        v36 = v115;
        v61 = v116;
      }

      v82 = v118;
      swift_beginAccess();
      if (!v117(v82, 1, v61))
      {
        sub_10008B79C(v36 + v35, v82 + *(v61 + 48));
      }

      swift_endAccess();
    }

    else
    {
      if (qword_10011C6D8 != -1)
      {
        swift_once();
      }

      v67 = type metadata accessor for Logger();
      sub_10000A570(v67, qword_10011ED60);
      v68 = v119;
      sub_10008A94C(v36, v119, type metadata accessor for HeadphoneViewModel);
      v69 = v128;
      v70 = v121;
      sub_10008A94C(v128, v121, type metadata accessor for HeadphoneViewModel);
      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v125 = swift_slowAlloc();
        aBlock = v125;
        *v73 = 136315394;
        v74 = sub_1000171AC();
        v76 = v75;
        sub_10008AF60(v68, type metadata accessor for HeadphoneViewModel);
        v77 = sub_100078978(v74, v76, &aBlock);

        *(v73 + 4) = v77;
        *(v73 + 12) = 2080;
        v78 = sub_1000171AC();
        v80 = v79;
        sub_10008AF60(v70, type metadata accessor for HeadphoneViewModel);
        v81 = sub_100078978(v78, v80, &aBlock);

        *(v73 + 14) = v81;
        _os_log_impl(&_mh_execute_header, v71, v72, "Battery: Transitioning battery configuration: %s -> %s", v73, 0x16u);
        swift_arrayDestroy();
        v69 = v128;
      }

      else
      {

        sub_10008AF60(v70, type metadata accessor for HeadphoneViewModel);
        sub_10008AF60(v68, type metadata accessor for HeadphoneViewModel);
      }

      v83 = *&v127[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_batteryContainer];
      v84 = v83;
      v85 = sub_100081CEC();
      [v85 setAlpha:0.0];
      v86 = v85;
      sub_100084558(v69, v85);

      v87 = [v127 contentView];
      [v87 layoutIfNeeded];

      v127[v52] = 1;
      v125 = objc_opt_self();
      v88 = swift_allocObject();
      *(v88 + 16) = v83;
      v133 = sub_10008AFF8;
      v134 = v88;
      aBlock = _NSConcreteStackBlock;
      v130 = 1107296256;
      v131 = sub_100019340;
      v132 = &unk_100107120;
      v89 = _Block_copy(&aBlock);
      v90 = v84;

      v91 = v122;
      sub_10008A94C(v69, v122, type metadata accessor for HeadphoneViewModel);
      v92 = (*(v126 + 80) + 40) & ~*(v126 + 80);
      v93 = swift_allocObject();
      v94 = v127;
      v93[2] = v86;
      v93[3] = v94;
      v93[4] = v83;
      sub_10008A70C(v91, v93 + v92, type metadata accessor for HeadphoneViewModel);
      *(v93 + ((v14 + v92 + 7) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
      v133 = sub_10008B6B8;
      v134 = v93;
      aBlock = _NSConcreteStackBlock;
      v130 = 1107296256;
      v131 = sub_1000194C0;
      v132 = &unk_100107170;
      v95 = _Block_copy(&aBlock);
      v96 = v90;
      v97 = v86;
      v98 = v127;
      v53 = v127;

      [v125 animateWithDuration:0 delay:v89 options:v95 animations:0.333 completion:0.0];
      _Block_release(v95);
      _Block_release(v89);

      v36 = v115;
    }
  }

  sub_100085D30();
  v99 = v128;
  v100 = v128[12];
  if (!v100)
  {
    v106 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_batteryContainerVerticalConstraint;
    swift_beginAccess();
    v107 = *&v53[v106];
    if (v107 && ([v107 isActive] & 1) == 0)
    {
      v108 = objc_opt_self();
      v109 = swift_allocObject();
      swift_unknownObjectUnownedInit();
      v133 = sub_10008B794;
      v134 = v109;
      aBlock = _NSConcreteStackBlock;
      v130 = 1107296256;
      v131 = sub_100019340;
      v132 = &unk_1001071C0;
      v110 = _Block_copy(&aBlock);

      [v108 animateWithDuration:v110 animations:0.3];
      _Block_release(v110);
    }

    goto LABEL_38;
  }

  v101 = *&v53[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_turnOffOptimizedBatteryChargingButtonHost];
  *&v53[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_turnOffOptimizedBatteryChargingButtonHost] = 0;
  v102 = v100;

  v103 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_optimizedBatteryChargingLabel;
  v104 = *&v53[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_optimizedBatteryChargingLabel];
  if (v104)
  {
    [v104 removeFromSuperview];
    v105 = *&v53[v103];
  }

  else
  {
    v105 = 0;
  }

  *&v53[v103] = 0;

  sub_10008276C(v99);
  v111 = *&v53[v103];
  if (v111)
  {
    [v111 setAttributedText:v102];
  }

  v112 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_batteryContainerVerticalConstraint;
  swift_beginAccess();
  v113 = *&v53[v112];
  if (v113)
  {
    swift_endAccess();
    [v113 setActive:0];

LABEL_38:
    sub_10008AF60(v36, type metadata accessor for HeadphoneViewModel);
    return;
  }

  sub_10008AF60(v36, type metadata accessor for HeadphoneViewModel);
  swift_endAccess();
}

void sub_10008580C(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v23 = a4;
  v8 = type metadata accessor for HeadphoneViewModel(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = objc_opt_self();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  v29 = sub_10008B840;
  v30 = v12;
  aBlock = _NSConcreteStackBlock;
  v26 = 1107296256;
  v27 = sub_100019340;
  v28 = &unk_100107210;
  v13 = _Block_copy(&aBlock);
  v14 = a2;
  v15 = a3;

  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10008A94C(a5, v11, type metadata accessor for HeadphoneViewModel);
  v17 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v18 = swift_allocObject();
  v19 = v23;
  v18[2] = v23;
  v18[3] = v16;
  v18[4] = v14;
  sub_10008A70C(v11, v18 + v17, type metadata accessor for HeadphoneViewModel);
  v29 = sub_10008BE84;
  v30 = v18;
  aBlock = _NSConcreteStackBlock;
  v26 = 1107296256;
  v27 = sub_1000194C0;
  v28 = &unk_100107260;
  v20 = _Block_copy(&aBlock);
  v21 = v19;
  v22 = v14;

  [v24 animateWithDuration:0 delay:v13 options:v20 animations:1.0 completion:0.0];
  _Block_release(v20);
  _Block_release(v13);
}

void sub_100085AB0(void *a1, void *a2)
{
  [a1 setAlpha:1.0];
  v3 = [a2 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = v3;
  [v3 setNeedsLayout];

  v5 = [a2 navigationController];
  if (!v5)
  {
    return;
  }

  v6 = v5;
  v7 = [v5 parentViewController];

  if (!v7)
  {
    return;
  }

  v8 = [v7 view];

  if (!v8)
  {
LABEL_10:
    __break(1u);
    return;
  }

  [v8 layoutIfNeeded];
}

void sub_100085BC4(int a1, id a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (a2)
  {
    [a2 removeFromSuperview];
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_batteryContainer);
    *(Strong + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_batteryContainer) = a4;
    v9 = Strong;

    v10 = a4;
  }

  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v11[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_isTransitioning] = 0;
  }

  if ((*(a5 + *(type metadata accessor for HeadphoneViewModel(0) + 60)) & 1) == 0)
  {
    swift_beginAccess();
    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = v12;
      v14 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_movieBatteryView;
      swift_beginAccess();
      v15 = *&v13[v14];
      if (v15)
      {
        v16 = v15;

        v17 = *&v16[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneMovieBatteryView_videoView];
        swift_getObjectType();
        dispatch thunk of VideoPlaybackControllable.stop()();
      }

      else
      {
      }
    }
  }
}

void sub_100085D30()
{
  v1 = v0;
  v161 = type metadata accessor for HeadphoneBatteryInfo(0);
  v157 = *(v161 - 8);
  v2 = __chkstk_darwin(v161);
  v153 = v149 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v151 = v149 - v5;
  v6 = __chkstk_darwin(v4);
  v152 = v149 - v7;
  v8 = __chkstk_darwin(v6);
  v158 = v149 - v9;
  v10 = __chkstk_darwin(v8);
  v159 = v149 - v11;
  v12 = __chkstk_darwin(v10);
  v154 = v149 - v13;
  v14 = __chkstk_darwin(v12);
  v150 = v149 - v15;
  v16 = __chkstk_darwin(v14);
  v155 = v149 - v17;
  __chkstk_darwin(v16);
  v156 = v149 - v18;
  v19 = type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
  __chkstk_darwin(v19);
  v21 = v149 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100008438(&qword_10011F2E0, &unk_1000D8580);
  __chkstk_darwin(v22 - 8);
  v24 = v149 - v23;
  v25 = type metadata accessor for HeadphoneViewModel(0);
  v26 = *(v25 - 8);
  v27 = __chkstk_darwin(v25);
  v29 = v149 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v162 = v149 - v30;
  v31 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_viewModel;
  swift_beginAccess();
  v160 = v1;
  sub_10000E88C(v1 + v31, v24, &qword_10011F2E0, &unk_1000D8580);
  if ((*(v26 + 48))(v24, 1, v25) == 1)
  {
    sub_10000E950(v24, &qword_10011F2E0, &unk_1000D8580);
    return;
  }

  sub_10008A70C(v24, v162, type metadata accessor for HeadphoneViewModel);
  if (qword_10011C6D8 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  v33 = sub_10000A570(v32, qword_10011ED60);
  sub_10008A94C(v162, v29, type metadata accessor for HeadphoneViewModel);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v149[1] = v33;
    v38 = v37;
    v163[0] = v37;
    *v36 = 136315138;
    v39 = sub_100016C48();
    v41 = v40;
    sub_10008AF60(v29, type metadata accessor for HeadphoneViewModel);
    v42 = sub_100078978(v39, v41, v163);

    *(v36 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v34, v35, "Battery: updateBatteryLevels battery %s", v36, 0xCu);
    sub_10000EA94(v38);
  }

  else
  {

    sub_10008AF60(v29, type metadata accessor for HeadphoneViewModel);
  }

  sub_10008A94C(v162 + *(v25 + 48), v21, type metadata accessor for HeadphoneViewModel.BatteryConfiguration);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v100 = *(sub_100008438(&qword_10011D0B8, &unk_1000D8D50) + 48);
      v74 = v152;
      sub_10008A70C(v21, v152, type metadata accessor for HeadphoneBatteryInfo);
      v101 = &v21[v100];
      v102 = v151;
      sub_10008A70C(v101, v151, type metadata accessor for HeadphoneBatteryInfo);
      v103 = Logger.logObject.getter();
      v104 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        *v105 = 0;
        _os_log_impl(&_mh_execute_header, v103, v104, "Battery: splitWithoutCase", v105, 2u);
      }

      v106 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_leftBatteryView;
      v107 = v160;
      swift_beginAccess();
      v108 = *(v107 + v106);
      v109 = v161;
      if (v108)
      {
        v110 = *v74;
        v111 = *(v74 + 8);
        v112 = *(v161 + 28);
        v113 = v108;
        sub_10003CEB8(v111, v74 + v112, v110);
      }

      v114 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_rightBatteryView;
      swift_beginAccess();
      v115 = *(v107 + v114);
      if (v115)
      {
        swift_endAccess();
        v116 = *v102;
        v117 = *(v102 + 8);
        v118 = *(v109 + 28);
        v55 = v115;
        sub_10003CEB8(v117, v102 + v118, v116);
        v119 = v102;
LABEL_46:
        sub_10008AF60(v119, type metadata accessor for HeadphoneBatteryInfo);
        v56 = v74;
        goto LABEL_47;
      }

      sub_10008AF60(v102, type metadata accessor for HeadphoneBatteryInfo);
      v148 = v74;
    }

    else
    {
      if (EnumCaseMultiPayload != 4)
      {
        goto LABEL_31;
      }

      v57 = v153;
      sub_10008A70C(v21, v153, type metadata accessor for HeadphoneBatteryInfo);
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&_mh_execute_header, v58, v59, "Battery: headsetOnly", v60, 2u);
      }

      v61 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_movieBatteryView;
      v62 = v160;
      swift_beginAccess();
      v63 = *(v62 + v61);
      v64 = v161;
      if (v63)
      {
        sub_100008438(&qword_1001200B0, &qword_1000DA550);
        v65 = (*(v157 + 80) + 32) & ~*(v157 + 80);
        v66 = swift_allocObject();
        *(v66 + 16) = xmmword_1000D5250;
        sub_10008A94C(v57, v66 + v65, type metadata accessor for HeadphoneBatteryInfo);
        v67 = v63;
        sub_100009690(v66);

        swift_setDeallocating();
        sub_10008AF60(v66 + v65, type metadata accessor for HeadphoneBatteryInfo);
        swift_deallocClassInstance();
      }

      v68 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_leftBatteryView;
      swift_beginAccess();
      v69 = *(v62 + v68);
      if (v69)
      {
        swift_endAccess();
        v70 = *v57;
        v71 = *(v57 + 8);
        v72 = *(v64 + 28);
        v55 = v69;
        sub_10003CEB8(v71, v57 + v72, v70);
        v56 = v57;
        goto LABEL_47;
      }

      v148 = v57;
    }

    sub_10008AF60(v148, type metadata accessor for HeadphoneBatteryInfo);
    sub_10008AF60(v162, type metadata accessor for HeadphoneViewModel);
    goto LABEL_55;
  }

  if (!EnumCaseMultiPayload)
  {
    v73 = *(sub_100008438(&qword_10011D0C0, &unk_1000D8D60) + 48);
    v74 = v156;
    sub_10008A70C(v21, v156, type metadata accessor for HeadphoneBatteryInfo);
    v75 = &v21[v73];
    v76 = v155;
    sub_10008A70C(v75, v155, type metadata accessor for HeadphoneBatteryInfo);
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&_mh_execute_header, v77, v78, "Battery: combinedWithCase", v79, 2u);
    }

    v80 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_leftBatteryView;
    v81 = v160;
    swift_beginAccess();
    v82 = *(v81 + v80);
    v83 = v161;
    if (v82)
    {
      v84 = *v74;
      v85 = *(v74 + 8);
      v86 = *(v161 + 28);
      v87 = v82;
      sub_10003CEB8(v85, v74 + v86, v84);
    }

    v88 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_caseBatteryView;
    swift_beginAccess();
    v89 = *(v81 + v88);
    if (v89)
    {
      v90 = *v76;
      v91 = *(v76 + 8);
      v92 = *(v83 + 28);
      v93 = v89;
      sub_10003CEB8(v91, v76 + v92, v90);
    }

    v94 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_movieBatteryView;
    swift_beginAccess();
    v95 = *(v81 + v94);
    if (!v95)
    {
      v147 = v76;
      goto LABEL_54;
    }

    swift_endAccess();
    sub_100008438(&qword_1001200B0, &qword_1000DA550);
    v96 = *(v157 + 72);
    v97 = (*(v157 + 80) + 32) & ~*(v157 + 80);
    v98 = swift_allocObject();
    *(v98 + 16) = xmmword_1000D66A0;
    sub_10008A94C(v74, v98 + v97, type metadata accessor for HeadphoneBatteryInfo);
    sub_10008A94C(v76, v98 + v97 + v96, type metadata accessor for HeadphoneBatteryInfo);
    v99 = v95;
    sub_100009690(v98);

    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_10008AF60(v76, type metadata accessor for HeadphoneBatteryInfo);
    sub_10008AF60(v74, type metadata accessor for HeadphoneBatteryInfo);
LABEL_31:
    sub_10008AF60(v162, type metadata accessor for HeadphoneViewModel);
    return;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v120 = sub_100008438(&unk_10011FFF0, &unk_1000D63B0);
    v121 = *(v120 + 48);
    v122 = *(v120 + 64);
    v74 = v154;
    sub_10008A70C(v21, v154, type metadata accessor for HeadphoneBatteryInfo);
    sub_10008A70C(&v21[v121], v159, type metadata accessor for HeadphoneBatteryInfo);
    sub_10008A70C(&v21[v122], v158, type metadata accessor for HeadphoneBatteryInfo);
    v123 = Logger.logObject.getter();
    v124 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v123, v124))
    {
      v125 = swift_slowAlloc();
      *v125 = 0;
      _os_log_impl(&_mh_execute_header, v123, v124, "Battery: splitWithCase", v125, 2u);
    }

    v126 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_leftBatteryView;
    v127 = v160;
    swift_beginAccess();
    v128 = *(v127 + v126);
    v129 = v161;
    if (v128)
    {
      v130 = *v74;
      v131 = *(v74 + 8);
      v132 = *(v161 + 28);
      v133 = v128;
      sub_10003CEB8(v131, v74 + v132, v130);
    }

    v134 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_rightBatteryView;
    swift_beginAccess();
    v135 = *(v127 + v134);
    if (v135)
    {
      v136 = v159;
      v137 = *v159;
      v138 = *(v159 + 8);
      v139 = *(v129 + 28);
      v140 = v135;
      sub_10003CEB8(v138, v136 + v139, v137);
    }

    v141 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_caseBatteryView;
    swift_beginAccess();
    v142 = *(v127 + v141);
    if (v142)
    {
      swift_endAccess();
      v143 = v158;
      v144 = *v158;
      v145 = *(v158 + 8);
      v146 = *(v129 + 28);
      v55 = v142;
      sub_10003CEB8(v145, v143 + v146, v144);
      sub_10008AF60(v143, type metadata accessor for HeadphoneBatteryInfo);
      v119 = v159;
      goto LABEL_46;
    }

    sub_10008AF60(v158, type metadata accessor for HeadphoneBatteryInfo);
    v147 = v159;
LABEL_54:
    sub_10008AF60(v147, type metadata accessor for HeadphoneBatteryInfo);
    sub_10008AF60(v74, type metadata accessor for HeadphoneBatteryInfo);
    sub_10008AF60(v162, type metadata accessor for HeadphoneViewModel);
    goto LABEL_55;
  }

  v44 = v150;
  sub_10008A70C(v21, v150, type metadata accessor for HeadphoneBatteryInfo);
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&_mh_execute_header, v45, v46, "Battery: combinedWithoutCase", v47, 2u);
  }

  v48 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_leftBatteryView;
  v49 = v160;
  swift_beginAccess();
  v50 = *(v49 + v48);
  v51 = v161;
  if (v50)
  {
    swift_endAccess();
    v52 = *v44;
    v53 = *(v44 + 8);
    v54 = *(v51 + 28);
    v55 = v50;
    sub_10003CEB8(v53, v44 + v54, v52);
    v56 = v44;
LABEL_47:
    sub_10008AF60(v56, type metadata accessor for HeadphoneBatteryInfo);
    sub_10008AF60(v162, type metadata accessor for HeadphoneViewModel);

    return;
  }

  sub_10008AF60(v44, type metadata accessor for HeadphoneBatteryInfo);
  sub_10008AF60(v162, type metadata accessor for HeadphoneViewModel);
LABEL_55:
  swift_endAccess();
}

void sub_100086DA4(uint64_t a1)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v2 = *&Strong[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_optimizedBatteryChargingLabel];
  if (v2)
  {
    v3 = v2;

    [v3 removeFromSuperview];
    Strong = v3;
  }

  v4 = swift_unknownObjectUnownedLoadStrong();
  v5 = *&v4[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_turnOffOptimizedBatteryChargingButtonHost];
  if (v5)
  {
    v6 = v5;

    v4 = [v6 view];
    [v4 removeFromSuperview];
  }

  v7 = swift_unknownObjectUnownedLoadStrong();
  v8 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_batteryContainerVerticalConstraint;
  swift_beginAccess();
  v9 = *&v7[v8];
  if (v9)
  {
    v10 = v9;

    [v10 setActive:1];
    v7 = v10;
  }

  v11 = swift_unknownObjectUnownedLoadStrong();
  v12 = [v11 view];

  if (!v12)
  {
    __break(1u);
    goto LABEL_14;
  }

  [v12 setNeedsLayout];

  v13 = swift_unknownObjectUnownedLoadStrong();
  v14 = [v13 navigationController];

  if (v14)
  {
    v15 = [v14 parentViewController];

    if (v15)
    {
      v16 = [v15 view];

      if (v16)
      {
        [v16 layoutIfNeeded];

        return;
      }

LABEL_14:
      __break(1u);
    }
  }
}

void sub_100086F94(void *a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v126 = a3;
  v121 = a2;
  v123 = a1;
  v5 = type metadata accessor for HeadphoneBatteryInfo(0);
  v119 = *(v5 - 8);
  v6 = __chkstk_darwin(v5 - 8);
  v124 = &v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v125 = &v118 - v8;
  v9 = sub_100008438(&qword_10011CCF0, qword_1000D61B0);
  v10 = __chkstk_darwin(v9 - 8);
  v120 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v118 - v12;
  v14 = type metadata accessor for HeadphoneAssets(0);
  v15 = *(v14 - 1);
  v16 = __chkstk_darwin(v14);
  v122 = &v118 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v128 = &v118 - v18;
  v19 = sub_100008438(&qword_10011F2E0, &unk_1000D8580);
  __chkstk_darwin(v19 - 8);
  v21 = &v118 - v20;
  v22 = type metadata accessor for HeadphoneViewModel(0);
  v23 = *(v22 - 1);
  __chkstk_darwin(v22);
  v25 = &v118 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_viewModel;
  swift_beginAccess();
  v127 = v4;
  sub_10000E88C(v4 + v26, v21, &qword_10011F2E0, &unk_1000D8580);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_10000E950(v21, &qword_10011F2E0, &unk_1000D8580);
    return;
  }

  sub_10008A70C(v21, v25, type metadata accessor for HeadphoneViewModel);
  v27 = v22[11];
  sub_10000E88C(&v25[v27], v13, &qword_10011CCF0, qword_1000D61B0);
  v28 = *(v15 + 48);
  v29 = v25;
  if (v28(v13, 1, v14) == 1)
  {
    sub_10008AF60(v25, type metadata accessor for HeadphoneViewModel);
    sub_10000E950(v13, &qword_10011CCF0, qword_1000D61B0);
    return;
  }

  v30 = v14;
  v31 = v13;
  v32 = v128;
  sub_10008A70C(v31, v128, type metadata accessor for HeadphoneAssets);
  if (v25[v22[15]] == 1)
  {
    v33 = &v25[v22[14]];
    v34 = *(v33 + 11);
    v35 = *(v33 + 13);
    v142 = *(v33 + 12);
    v143 = v35;
    v36 = *(v33 + 7);
    v37 = *(v33 + 9);
    v138 = *(v33 + 8);
    v139 = v37;
    v38 = *(v33 + 9);
    v39 = *(v33 + 11);
    v140 = *(v33 + 10);
    v141 = v39;
    v40 = *(v33 + 3);
    v41 = *(v33 + 5);
    v134 = *(v33 + 4);
    v135 = v41;
    v42 = *(v33 + 5);
    v43 = *(v33 + 7);
    v136 = *(v33 + 6);
    v137 = v43;
    v44 = *(v33 + 1);
    v130 = *v33;
    v131 = v44;
    v45 = *(v33 + 3);
    v47 = *v33;
    v46 = *(v33 + 1);
    v132 = *(v33 + 2);
    v133 = v45;
    v156 = v34;
    v157 = v142;
    v48 = *(v33 + 14);
    v158 = *(v33 + 13);
    v159 = v48;
    v152 = v36;
    v153 = v138;
    v154 = v38;
    v155 = v140;
    v148 = v40;
    v149 = v134;
    v150 = v42;
    v151 = v136;
    v144 = v48;
    v145 = v47;
    v146 = v46;
    v147 = v132;
    if (sub_100026134(&v145) != 1)
    {
      v160[12] = v157;
      v160[13] = v158;
      v160[14] = v159;
      v160[8] = v153;
      v160[9] = v154;
      v160[10] = v155;
      v160[11] = v156;
      v160[4] = v149;
      v160[5] = v150;
      v160[6] = v151;
      v160[7] = v152;
      v160[0] = v145;
      v160[1] = v146;
      v160[2] = v147;
      v160[3] = v148;
      v49 = &v25[v27];
      v50 = v120;
      sub_10000E88C(v49, v120, &qword_10011CCF0, qword_1000D61B0);
      if (v28(v50, 1, v14) == 1)
      {
        sub_10000E950(v50, &qword_10011CCF0, qword_1000D61B0);
      }

      else
      {
        v51 = v50 + v14[10];
        v52 = *v51;
        v53 = *(v51 + 8);
        sub_10000E88C(&v130, &v129, &unk_10011FF80, &qword_1000D8590);
        v54 = v52;
        sub_10008AF60(v50, type metadata accessor for HeadphoneAssets);
        if (v52)
        {
          sub_100008438(&qword_1001200B0, &qword_1000DA550);
          v55 = *(v119 + 72);
          v56 = (*(v119 + 80) + 32) & ~*(v119 + 80);
          v57 = swift_allocObject();
          *(v57 + 16) = xmmword_1000D66A0;
          v58 = v57 + v56;
          sub_10008A94C(v123, v58, type metadata accessor for HeadphoneBatteryInfo);
          sub_10008A94C(v121, v58 + v55, type metadata accessor for HeadphoneBatteryInfo);
          objc_allocWithZone(type metadata accessor for HeadphoneMovieBatteryView());
          v59 = v54;
          v60 = v57;
          v61 = v127;
          v62 = sub_100008B78(v59, v53, v160, v60);
          sub_10008A83C(v62, v126, &off_1001031F8);

          sub_10008AF60(v128, type metadata accessor for HeadphoneAssets);
          sub_10008AF60(v29, type metadata accessor for HeadphoneViewModel);
          v63 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_movieBatteryView;
LABEL_36:
          swift_beginAccess();
          v117 = *(v61 + v63);
          *(v61 + v63) = v62;

          return;
        }

        sub_10000E950(&v130, &unk_10011FF80, &qword_1000D8590);
        v32 = v128;
      }
    }
  }

  v64 = *(v32 + v14[8]);
  if (v64 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter() < 3)
    {
      goto LABEL_14;
    }
  }

  else if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3)
  {
LABEL_14:
    if (qword_10011C6D8 != -1)
    {
      swift_once();
    }

    v65 = type metadata accessor for Logger();
    sub_10000A570(v65, qword_10011ED60);
    v66 = v122;
    sub_10008A94C(v32, v122, type metadata accessor for HeadphoneAssets);
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *&v145 = v70;
      *v69 = 136315138;
      *&v130 = *&v66[v30[8]];

      sub_100008438(&qword_10011D0D0, &unk_1000D63C0);
      v71 = String.init<A>(reflecting:)();
      v73 = v72;
      sub_10008AF60(v66, type metadata accessor for HeadphoneAssets);
      v74 = sub_100078978(v71, v73, &v145);

      *(v69 + 4) = v74;
      _os_log_impl(&_mh_execute_header, v67, v68, "Expected 3 images, only have: %s", v69, 0xCu);
      sub_10000EA94(v70);

      v32 = v128;
    }

    else
    {

      sub_10008AF60(v66, type metadata accessor for HeadphoneAssets);
    }

    sub_10008AF60(v32, type metadata accessor for HeadphoneAssets);
    v75 = v29;
    goto LABEL_33;
  }

  v118 = v29;
  if ((v64 & 0xC000000000000001) != 0)
  {
    v79 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v80 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_25;
  }

  v76 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v76)
  {
    if (v76 != 1)
    {
      v77 = *(v64 + 32);
      v78 = *(v64 + 40);
      v79 = v77;
      v80 = v78;
LABEL_25:
      v81 = v80;
      sub_100008438(&unk_10011D960, &qword_1000D5CF0);
      v82 = swift_allocObject();
      *(v82 + 16) = xmmword_1000D5DA0;
      *(v82 + 32) = v79;
      *(v82 + 40) = v81;
      v83 = v125;
      sub_10008A94C(v123, v125, type metadata accessor for HeadphoneBatteryInfo);
      v123 = v79;
      v122 = v81;
      v84 = sub_10002A38C(v82, v83, 0, 0);
      sub_100029E98();
      v85 = (v118 + v22[14]);
      v86 = v85[13];
      v157 = v85[12];
      v158 = v86;
      v159 = v85[14];
      v87 = v85[9];
      v153 = v85[8];
      v154 = v87;
      v88 = v85[11];
      v155 = v85[10];
      v156 = v88;
      v89 = v85[5];
      v149 = v85[4];
      v150 = v89;
      v90 = v85[7];
      v151 = v85[6];
      v152 = v90;
      v91 = v85[1];
      v145 = *v85;
      v146 = v91;
      v92 = v85[3];
      v147 = v85[2];
      v148 = v92;
      v93 = sub_100026134(&v145);
      v94 = *&v84[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneImageBatteryView_stackView];
      if (v94)
      {
        v95 = *(&v157 + 1);
        if (v93 == 1)
        {
          v95 = 0.0;
        }

        [v94 setSpacing:{v95, v118}];
      }

      v96 = v84;
      sub_10008A83C(v96, v126, &off_100104338);
      v97 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_leftBatteryView;
      v98 = v127;
      swift_beginAccess();
      v99 = *(v98 + v97);
      *(v98 + v97) = v96;

      v100 = v32;
      v101 = *(v32 + v14[9]);
      if (!v101)
      {

        sub_10008AF60(v100, type metadata accessor for HeadphoneAssets);
        v75 = v118;
LABEL_33:
        sub_10008AF60(v75, type metadata accessor for HeadphoneViewModel);
        return;
      }

      sub_10008A94C(v121, v124, type metadata accessor for HeadphoneBatteryInfo);
      v102 = v85[13];
      v142 = v85[12];
      v143 = v102;
      v144 = v85[14];
      v103 = v85[9];
      v138 = v85[8];
      v139 = v103;
      v104 = v85[11];
      v140 = v85[10];
      v141 = v104;
      v105 = v85[5];
      v134 = v85[4];
      v135 = v105;
      v106 = v85[7];
      v136 = v85[6];
      v137 = v106;
      v107 = v85[1];
      v130 = *v85;
      v131 = v107;
      v108 = v85[3];
      v132 = v85[2];
      v133 = v108;
      if (sub_100026134(&v130) == 1)
      {
        v109 = 0;
        v110 = 0;
      }

      else
      {
        v109 = *(&v141 + 1);
        v110 = v142;
      }

      v111 = swift_allocObject();
      *(v111 + 16) = xmmword_1000D78E0;
      *(v111 + 32) = v101;
      v112 = v124;
      v113 = v125;
      sub_10008A94C(v124, v125, type metadata accessor for HeadphoneBatteryInfo);
      objc_allocWithZone(type metadata accessor for HeadphoneImageBatteryView());
      v114 = v101;
      v115 = sub_100028B48(_swiftEmptyArrayStorage, v111, v113, v109, v110);
      sub_10008AF60(v112, type metadata accessor for HeadphoneBatteryInfo);
      v116 = v128;
      sub_100029E98();
      v62 = v115;
      sub_10008A83C(v62, v126, &off_100104338);

      sub_10008AF60(v116, type metadata accessor for HeadphoneAssets);
      sub_10008AF60(v118, type metadata accessor for HeadphoneViewModel);
      v63 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_caseBatteryView;
      v61 = v127;
      goto LABEL_36;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_100087C74(uint64_t a1, char *a2)
{
  v68 = a2;
  v66 = a1;
  v3 = type metadata accessor for HeadphoneBatteryInfo(0);
  __chkstk_darwin(v3 - 8);
  v67 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100008438(&qword_10011CCF0, qword_1000D61B0);
  __chkstk_darwin(v5 - 8);
  v7 = &v65 - v6;
  v8 = type metadata accessor for HeadphoneAssets(0);
  v71 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v69 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v70 = &v65 - v11;
  v12 = sub_100008438(&qword_10011F2E0, &unk_1000D8580);
  __chkstk_darwin(v12 - 8);
  v14 = &v65 - v13;
  v15 = type metadata accessor for HeadphoneViewModel(0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_viewModel;
  swift_beginAccess();
  v20 = v2 + v19;
  v21 = v15;
  sub_10000E88C(v20, v14, &qword_10011F2E0, &unk_1000D8580);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_10000E950(v14, &qword_10011F2E0, &unk_1000D8580);
    return;
  }

  sub_10008A70C(v14, v18, type metadata accessor for HeadphoneViewModel);
  sub_10000E88C(&v18[*(v15 + 44)], v7, &qword_10011CCF0, qword_1000D61B0);
  if (v71[6](v7, 1, v8) == 1)
  {
    sub_10008AF60(v18, type metadata accessor for HeadphoneViewModel);
    sub_10000E950(v7, &qword_10011CCF0, qword_1000D61B0);
    return;
  }

  v22 = v8;
  v23 = v70;
  sub_10008A70C(v7, v70, type metadata accessor for HeadphoneAssets);
  v24 = *(v23 + *(v22 + 32));
  if (v24 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter() < 2)
    {
      goto LABEL_7;
    }
  }

  else if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
  {
LABEL_7:
    if (qword_10011C6D8 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_10000A570(v25, qword_10011ED60);
    v26 = v69;
    sub_10008A94C(v23, v69, type metadata accessor for HeadphoneAssets);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *&v73[0] = v30;
      *v29 = 136315138;
      v72 = *(v26 + *(v22 + 32));

      sub_100008438(&qword_10011D0D0, &unk_1000D63C0);
      v31 = String.init<A>(reflecting:)();
      v32 = v26;
      v33 = v31;
      v34 = v18;
      v36 = v35;
      sub_10008AF60(v32, type metadata accessor for HeadphoneAssets);
      v37 = sub_100078978(v33, v36, v73);
      v18 = v34;

      *(v29 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v27, v28, "Expected 2 images, only have: %s", v29, 0xCu);
      sub_10000EA94(v30);
      v23 = v70;
    }

    else
    {

      sub_10008AF60(v26, type metadata accessor for HeadphoneAssets);
    }

    sub_10008AF60(v23, type metadata accessor for HeadphoneAssets);
    sub_10008AF60(v18, type metadata accessor for HeadphoneViewModel);
    return;
  }

  v65 = v2;
  if ((v24 & 0xC000000000000001) != 0)
  {
    v39 = v21;
    v40 = v18;
    v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_18;
  }

  v38 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v38)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (v38 == 1)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v39 = v21;
  v40 = v18;
  v41 = *(v24 + 32);
  v42 = *(v24 + 40);
  v43 = v41;
  v44 = v42;
LABEL_18:
  v45 = v44;
  sub_100008438(&unk_10011D960, &qword_1000D5CF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000D5DA0;
  *(inited + 32) = v43;
  *(inited + 40) = v45;
  v47 = v67;
  sub_10008A94C(v66, v67, type metadata accessor for HeadphoneBatteryInfo);
  v71 = v43;
  v48 = v45;
  v49 = sub_10002A38C(inited, v47, 0, 0);
  sub_100029E98();
  v50 = (v40 + *(v39 + 56));
  v51 = v50[13];
  v74 = v50[12];
  v75 = v51;
  v76 = v50[14];
  v52 = v50[9];
  v73[8] = v50[8];
  v73[9] = v52;
  v53 = v50[11];
  v73[10] = v50[10];
  v73[11] = v53;
  v54 = v50[5];
  v73[4] = v50[4];
  v73[5] = v54;
  v55 = v50[7];
  v73[6] = v50[6];
  v73[7] = v55;
  v56 = v50[1];
  v73[0] = *v50;
  v73[1] = v56;
  v57 = v50[3];
  v73[2] = v50[2];
  v73[3] = v57;
  v58 = sub_100026134(v73);
  v59 = *&v49[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneImageBatteryView_stackView];
  if (v59)
  {
    v60 = *(&v74 + 1);
    if (v58 == 1)
    {
      v60 = 0.0;
    }

    [v59 setSpacing:{v60, v65}];
  }

  v61 = v49;
  sub_10008A83C(v61, v68, &off_100104338);

  sub_10008AF60(v23, type metadata accessor for HeadphoneAssets);
  sub_10008AF60(v40, type metadata accessor for HeadphoneViewModel);
  v62 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_leftBatteryView;
  v63 = v65;
  swift_beginAccess();
  v64 = *(v63 + v62);
  *(v63 + v62) = v61;
}

void sub_100088428(uint64_t a1, id *a2, uint64_t a3, char *a4)
{
  v115 = a4;
  v108 = a3;
  v109 = a2;
  v110 = a1;
  v5 = type metadata accessor for HeadphoneBatteryInfo(0);
  v6 = __chkstk_darwin(v5 - 8);
  v111 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v113 = &v100 - v9;
  v10 = __chkstk_darwin(v8);
  v116 = &v100 - v11;
  __chkstk_darwin(v10);
  *&v114 = &v100 - v12;
  v13 = sub_100008438(&qword_10011CCF0, qword_1000D61B0);
  __chkstk_darwin(v13 - 8);
  v15 = &v100 - v14;
  v16 = type metadata accessor for HeadphoneAssets(0);
  v17 = *(v16 - 1);
  v18 = __chkstk_darwin(v16);
  v20 = &v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v100 - v21;
  v112 = v4;
  v23 = (v4 + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_viewModel);
  swift_beginAccess();
  v24 = type metadata accessor for HeadphoneViewModel(0);
  v25 = *(v24 - 8);
  v26 = *(v25 + 48);
  v27 = v25 + 48;
  if (v26(v23, 1, v24))
  {
    (*(v17 + 56))(v15, 1, 1, v16);
LABEL_4:
    sub_10000E950(v15, &qword_10011CCF0, qword_1000D61B0);
    return;
  }

  v105 = v26;
  v106 = v20;
  v104 = v27;
  v28 = v116;
  v107 = v22;
  sub_10000E88C(&v23[*(v24 + 44)], v15, &qword_10011CCF0, qword_1000D61B0);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    goto LABEL_4;
  }

  v29 = v107;
  sub_10008A70C(v15, v107, type metadata accessor for HeadphoneAssets);
  v30 = *(v29 + v16[8]);
  if (v30 >> 62)
  {
    v31 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v32 = v114;
  if (v31 >= 3)
  {
    v101 = v24;
    v103 = v16;
    v106 = (v30 & 0xC000000000000001);
    if ((v30 & 0xC000000000000001) != 0)
    {
      v16 = v30;
      v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_39;
      }

      v16 = v30;
      v43 = v30[4];
    }

    v44 = v43;
    sub_10008A94C(v110, v32, type metadata accessor for HeadphoneBatteryInfo);
    v110 = sub_100008438(&unk_10011D960, &qword_1000D5CF0);
    inited = swift_initStackObject();
    v114 = xmmword_1000D78E0;
    *(inited + 16) = xmmword_1000D78E0;
    *(inited + 32) = v44;
    sub_10008A94C(v32, v28, type metadata accessor for HeadphoneBatteryInfo);
    v46 = v44;
    v47 = sub_10002A38C(inited, v28, 0, 0);
    v30 = v47;
    v48 = *&v47[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneImageBatteryView_imageViews];
    v100 = v23;
    if ((v48 & 0xC000000000000001) != 0)
    {
      v98 = v47;

      v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();

      goto LABEL_18;
    }

    if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v49 = *(v48 + 32);
      v50 = v47;
      v51 = v49;
LABEL_18:
      v52 = v16;
      v16 = &unk_100116000;
      [v51 setTintColor:{0, v100}];

      sub_10008AF60(v32, type metadata accessor for HeadphoneBatteryInfo);
      sub_100029E98();
      v30 = v30;
      sub_10008A83C(v30, v115, &off_100104338);

      v53 = v109;
      if (v106)
      {
        v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v55 = v113;
      }

      else
      {
        v55 = v113;
        if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
        {
          goto LABEL_42;
        }

        v54 = v52[5];
      }

      sub_10008A94C(v53, v55, type metadata accessor for HeadphoneBatteryInfo);
      v56 = swift_initStackObject();
      *(v56 + 16) = v114;
      *(v56 + 32) = v54;
      sub_10008A94C(v55, v28, type metadata accessor for HeadphoneBatteryInfo);
      v32 = v54;
      v57 = sub_10002A38C(v56, v28, 0, 0);
      v23 = v57;
      v58 = *&v57[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneImageBatteryView_imageViews];
      v102 = v46;
      if ((v58 & 0xC000000000000001) == 0)
      {
        if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v59 = *(v58 + 32);
          v60 = v57;
          v61 = v59;
          goto LABEL_27;
        }

        __break(1u);
LABEL_42:
        __break(1u);
        return;
      }

LABEL_40:
      v99 = v23;

      v61 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_27:
      [v61 *(v16 + 149)];

      sub_10008AF60(v113, type metadata accessor for HeadphoneBatteryInfo);
      v62 = v107;
      sub_100029E98();
      v63 = v23;
      sub_10008A83C(v63, v115, &off_100104338);

      v64 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_leftBatteryView;
      v65 = v112;
      swift_beginAccess();
      v66 = *(v65 + v64);
      *(v65 + v64) = v30;
      v67 = v30;

      v68 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_rightBatteryView;
      swift_beginAccess();
      v69 = *(v65 + v68);
      *(v65 + v68) = v63;
      v70 = v63;

      v71 = *(v62 + v103[9]);
      if (v71)
      {
        v109 = v67;
        v113 = v32;
        sub_10008A94C(v108, v111, type metadata accessor for HeadphoneBatteryInfo);
        v72 = v100;
        v73 = v101;
        v74 = v105(v100, 1, v101);
        v106 = v70;
        if (v74)
        {
          v75 = 0;
          v76 = 0;
          v78 = v115;
          v77 = v116;
        }

        else
        {
          v79 = &v72[*(v73 + 56)];
          v80 = *(v79 + 13);
          v117[12] = *(v79 + 12);
          v117[13] = v80;
          v117[14] = *(v79 + 14);
          v81 = *(v79 + 9);
          v117[8] = *(v79 + 8);
          v117[9] = v81;
          v82 = *(v79 + 11);
          v117[10] = *(v79 + 10);
          v117[11] = v82;
          v83 = *(v79 + 5);
          v117[4] = *(v79 + 4);
          v117[5] = v83;
          v84 = *(v79 + 7);
          v117[6] = *(v79 + 6);
          v117[7] = v84;
          v85 = *(v79 + 1);
          v117[0] = *v79;
          v117[1] = v85;
          v86 = *(v79 + 3);
          v117[2] = *(v79 + 2);
          v117[3] = v86;
          v87 = sub_100026134(v117);
          v78 = v115;
          v77 = v116;
          if (v87 == 1)
          {
            v75 = 0;
            v76 = 0;
          }

          else
          {
            v75 = *(v79 + 23);
            v76 = *(v79 + 24);
          }
        }

        v88 = swift_allocObject();
        *(v88 + 16) = v114;
        *(v88 + 32) = v71;
        v89 = v111;
        sub_10008A94C(v111, v77, type metadata accessor for HeadphoneBatteryInfo);
        v90 = objc_allocWithZone(type metadata accessor for HeadphoneImageBatteryView());
        v91 = v71;
        v92 = sub_100028B48(_swiftEmptyArrayStorage, v88, v77, v75, v76);
        sub_10008AF60(v89, type metadata accessor for HeadphoneBatteryInfo);
        v93 = v107;
        sub_100029E98();
        v94 = v92;
        sub_10008A83C(v94, v78, &off_100104338);

        sub_10008AF60(v93, type metadata accessor for HeadphoneAssets);
        v95 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_caseBatteryView;
        v96 = v112;
        swift_beginAccess();
        v97 = *(v96 + v95);
        *(v96 + v95) = v94;
      }

      else
      {

        sub_10008AF60(v62, type metadata accessor for HeadphoneAssets);
      }

      return;
    }

LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (qword_10011C6D8 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  sub_10000A570(v33, qword_10011ED60);
  v34 = v106;
  sub_10008A94C(v29, v106, type metadata accessor for HeadphoneAssets);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *&v117[0] = v38;
    *v37 = 136315138;
    v118 = *&v34[v16[8]];

    sub_100008438(&qword_10011D0D0, &unk_1000D63C0);
    v39 = String.init<A>(reflecting:)();
    v41 = v40;
    sub_10008AF60(v34, type metadata accessor for HeadphoneAssets);
    v42 = sub_100078978(v39, v41, v117);

    *(v37 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v35, v36, "Expected 3 images, only have: %s", v37, 0xCu);
    sub_10000EA94(v38);
  }

  else
  {

    sub_10008AF60(v34, type metadata accessor for HeadphoneAssets);
  }

  sub_10008AF60(v107, type metadata accessor for HeadphoneAssets);
}

void sub_100088EF8(SEL *a1, uint64_t a2, char *a3)
{
  v68 = a3;
  v69 = a2;
  v71 = a1;
  v4 = type metadata accessor for HeadphoneBatteryInfo(0);
  v5 = __chkstk_darwin(v4 - 8);
  v67 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v70 = (&v62 - v8);
  __chkstk_darwin(v7);
  v10 = &v62 - v9;
  v11 = sub_100008438(&qword_10011CCF0, qword_1000D61B0);
  __chkstk_darwin(v11 - 8);
  v13 = &v62 - v12;
  v14 = type metadata accessor for HeadphoneAssets(0);
  v15 = *(v14 - 1);
  v16 = __chkstk_darwin(v14);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v62 - v19;
  v21 = v3;
  v22 = v3 + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_viewModel;
  swift_beginAccess();
  v23 = type metadata accessor for HeadphoneViewModel(0);
  if ((*(*(v23 - 8) + 48))(v22, 1, v23))
  {
    (*(v15 + 56))(v13, 1, 1, v14);
LABEL_4:
    sub_10000E950(v13, &qword_10011CCF0, qword_1000D61B0);
    return;
  }

  *&v64 = v18;
  v63 = v3;
  v65 = v10;
  v66 = v20;
  sub_10000E88C(&v22[*(v23 + 44)], v13, &qword_10011CCF0, qword_1000D61B0);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    goto LABEL_4;
  }

  v24 = v66;
  sub_10008A70C(v13, v66, type metadata accessor for HeadphoneAssets);
  v25 = *(v24 + v14[8]);
  if (v25 >> 62)
  {
    v26 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v27 = v71;
  if (v26 >= 2)
  {
    if ((v25 & 0xC000000000000001) != 0)
    {
      v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v38 = v65;
    }

    else
    {
      v38 = v65;
      if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_32;
      }

      v21 = *(v25 + 32);
    }

    sub_10008A94C(v27, v38, type metadata accessor for HeadphoneBatteryInfo);
    v27 = sub_100008438(&unk_10011D960, &qword_1000D5CF0);
    inited = swift_initStackObject();
    v64 = xmmword_1000D78E0;
    *(inited + 16) = xmmword_1000D78E0;
    *(inited + 32) = v21;
    v14 = v70;
    sub_10008A94C(v38, v70, type metadata accessor for HeadphoneBatteryInfo);
    v71 = v21;
    v40 = sub_10002A38C(inited, v14, 0, 0);
    v20 = v40;
    v41 = *&v40[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneImageBatteryView_imageViews];
    if ((v41 & 0xC000000000000001) != 0)
    {
      v60 = v40;

      v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();

      goto LABEL_18;
    }

    if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v42 = *(v41 + 32);
      v43 = v40;
      v44 = v42;
LABEL_18:
      v21 = &unk_100116000;
      [v44 setTintColor:0];

      sub_10008AF60(v65, type metadata accessor for HeadphoneBatteryInfo);
      sub_100029E98();
      v14 = v20;
      v20 = v68;
      sub_10008A83C(v14, v68, &off_100104338);

      v45 = v69;
      if ((v25 & 0xC000000000000001) != 0)
      {
        v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v47 = v70;
      }

      else
      {
        v47 = v70;
        if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
        {
          goto LABEL_35;
        }

        v46 = *(v25 + 40);
      }

      v25 = v67;
      sub_10008A94C(v45, v67, type metadata accessor for HeadphoneBatteryInfo);
      v48 = swift_initStackObject();
      *(v48 + 16) = v64;
      *(v48 + 32) = v46;
      sub_10008A94C(v25, v47, type metadata accessor for HeadphoneBatteryInfo);
      v27 = v46;
      v49 = sub_10002A38C(v48, v47, 0, 0);
      v38 = v49;
      v50 = *&v49[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneImageBatteryView_imageViews];
      if ((v50 & 0xC000000000000001) == 0)
      {
        if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v51 = *(v50 + 32);
          v52 = v49;
          v53 = v51;
LABEL_27:
          [v53 v21[149]];

          sub_10008AF60(v25, type metadata accessor for HeadphoneBatteryInfo);
          sub_100029E98();
          v54 = v38;
          sub_10008A83C(v54, v20, &off_100104338);

          sub_10008AF60(v24, type metadata accessor for HeadphoneAssets);
          v55 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_leftBatteryView;
          v56 = v63;
          swift_beginAccess();
          v57 = *(v56 + v55);
          *(v56 + v55) = v14;

          v58 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_rightBatteryView;
          swift_beginAccess();
          v59 = *(v56 + v58);
          *(v56 + v58) = v54;

          return;
        }

        __break(1u);
LABEL_35:
        __break(1u);
        return;
      }

LABEL_33:
      v61 = v38;

      v53 = specialized _ArrayBuffer._getElementSlowPath(_:)();

      goto LABEL_27;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (qword_10011C6D8 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_10000A570(v28, qword_10011ED60);
  v29 = v64;
  sub_10008A94C(v24, v64, type metadata accessor for HeadphoneAssets);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v73[0] = v33;
    *v32 = 136315138;
    v72 = *(v29 + v14[8]);

    sub_100008438(&qword_10011D0D0, &unk_1000D63C0);
    v34 = String.init<A>(reflecting:)();
    v36 = v35;
    sub_10008AF60(v29, type metadata accessor for HeadphoneAssets);
    v37 = sub_100078978(v34, v36, v73);

    *(v32 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v30, v31, "Expected 2 images, only have: %s", v32, 0xCu);
    sub_10000EA94(v33);

    v24 = v66;
  }

  else
  {

    sub_10008AF60(v29, type metadata accessor for HeadphoneAssets);
  }

  sub_10008AF60(v24, type metadata accessor for HeadphoneAssets);
}

void sub_1000897B0(uint64_t a1, char *a2)
{
  v87 = a2;
  v88 = a1;
  v3 = type metadata accessor for HeadphoneBatteryInfo(0);
  v91 = *(v3 - 8);
  v4 = __chkstk_darwin(v3 - 8);
  v90 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v89 = &v82 - v6;
  v7 = sub_100008438(&qword_10011CCF0, qword_1000D61B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v82 - v8;
  v10 = type metadata accessor for HeadphoneAssets(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2;
  v15 = v2 + OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_viewModel;
  swift_beginAccess();
  v16 = type metadata accessor for HeadphoneViewModel(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  v19 = v17 + 48;
  if (v18(v15, 1, v16))
  {
    (*(v11 + 56))(v9, 1, 1, v10);
LABEL_4:
    sub_10000E950(v9, &qword_10011CCF0, qword_1000D61B0);
    return;
  }

  v84 = v19;
  v85 = v18;
  v21 = v90;
  v20 = v91;
  v83 = v14;
  v86 = v13;
  sub_10000E88C(v15 + *(v16 + 44), v9, &qword_10011CCF0, qword_1000D61B0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    goto LABEL_4;
  }

  v22 = v86;
  sub_10008A70C(v9, v86, type metadata accessor for HeadphoneAssets);
  v23 = *(v22 + *(v10 + 32));
  if (v23 >> 62)
  {
    v24 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v25 = v21;
  if (v24)
  {
    if ((v23 & 0xC000000000000001) != 0)
    {
      v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v26 = v88;
      v27 = v89;
    }

    else
    {
      v26 = v88;
      v27 = v89;
      if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        return;
      }

      v28 = *(v23 + 32);
    }

    sub_10008A94C(v26, v27, type metadata accessor for HeadphoneBatteryInfo);
    v29 = [objc_opt_self() systemGray2Color];
    sub_100008438(&unk_10011D960, &qword_1000D5CF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000D78E0;
    *(inited + 32) = v28;
    sub_10008A94C(v27, v25, type metadata accessor for HeadphoneBatteryInfo);
    v31 = v28;
    v32 = sub_10002A38C(inited, v25, 0, 0);
    v33 = v32;
    v34 = *&v32[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneImageBatteryView_imageViews];
    v35 = v87;
    v36 = v83;
    if ((v34 & 0xC000000000000001) != 0)
    {
      v81 = v32;

      v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();

      goto LABEL_14;
    }

    if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v37 = *(v34 + 32);
      v38 = v32;
      v39 = v37;
LABEL_14:
      [v39 setTintColor:v29];

      sub_10008AF60(v89, type metadata accessor for HeadphoneBatteryInfo);
      v40 = v33;
      sub_10008A83C(v40, v35, &off_100104338);

      sub_10008AF60(v22, type metadata accessor for HeadphoneAssets);
      v41 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_leftBatteryView;
      swift_beginAccess();
      v42 = *(v36 + v41);
      *(v36 + v41) = v40;

      return;
    }

    goto LABEL_29;
  }

  if (v85(v15, 1, v16) || (v43 = (v15 + *(v16 + 56)), v44 = v43[11], v45 = v43[13], v104 = v43[12], v105 = v45, v46 = v43[13], v106 = v43[14], v47 = v43[7], v48 = v43[9], v100 = v43[8], v101 = v48, v49 = v43[9], v50 = v43[11], v102 = v43[10], v103 = v50, v51 = v43[3], v52 = v43[5], v96 = v43[4], v97 = v52, v53 = v43[5], v54 = v43[7], v98 = v43[6], v99 = v54, v55 = v43[1], v93[0] = *v43, v93[1] = v55, v56 = v43[3], v58 = *v43, v57 = v43[1], v94 = v43[2], v95 = v56, v119 = v104, v120 = v46, v121 = v43[14], v115 = v100, v116 = v49, v117 = v102, v118 = v44, v111 = v96, v112 = v53, v113 = v98, v114 = v47, v107 = v58, v108 = v57, v109 = v94, v110 = v51, sub_100026134(&v107) == 1) || (v122[4] = v111, v122[5] = v112, v122[2] = v109, v122[3] = v110, v122[8] = v115, v122[9] = v116, v122[6] = v113, v122[7] = v114, v122[14] = v121, v122[13] = v120, v122[12] = v119, v122[10] = v117, v122[11] = v118, v122[0] = v107, v122[1] = v108, v59 = v22 + *(v10 + 40), (v60 = *v59) == 0))
  {
    sub_10008AF60(v22, type metadata accessor for HeadphoneAssets);
  }

  else
  {
    v61 = v83;
    v62 = *(v59 + 8);
    sub_100008438(&qword_1001200B0, &qword_1000DA550);
    v63 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_1000D5250;
    sub_10008A94C(v88, v64 + v63, type metadata accessor for HeadphoneBatteryInfo);
    objc_allocWithZone(type metadata accessor for HeadphoneMovieBatteryView());
    v65 = v60;
    sub_10000E88C(v93, &v92, &unk_10011FF80, &qword_1000D8590);
    v66 = sub_100008B78(v65, v62, v122, v64);
    v67 = *&v66[OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneMovieBatteryView_videoView];
    objc_opt_self();
    v68 = swift_dynamicCastObjCClass();
    if (v68)
    {
      v69 = v68;
      v70 = objc_opt_self();
      v71 = v67;
      v72 = [v70 currentTraitCollection];
      v73 = [v72 userInterfaceStyle];

      if (v73 == 2)
      {
        v74 = 1;
      }

      else
      {
        v74 = 2;
      }

      URL._bridgeToObjectiveC()(1);
      v76 = v75;
      v77 = v74;
      v22 = v86;
      [v69 updateViewForAssetType:v77 adjustmentsURL:v75];
    }

    v78 = v66;
    sub_10008A83C(v78, v87, &off_1001031F8);

    sub_10008AF60(v22, type metadata accessor for HeadphoneAssets);
    v79 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_movieBatteryView;
    swift_beginAccess();
    v80 = *(v61 + v79);
    *(v61 + v79) = v78;
  }
}

void sub_100089FA0(void *a1)
{
  if (*a1)
  {
    v1 = *(*a1 + OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneImageBatteryView_imageViews);
    if (v1 >> 62)
    {
      v2 = _CocoaArrayWrapper.endIndex.getter();
      if (!v2)
      {
        return;
      }
    }

    else
    {
      v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v2)
      {
        return;
      }
    }

    v3 = objc_opt_self();
    if (v2 < 1)
    {
      __break(1u);
    }

    else
    {
      v4 = v3;
      v5 = 0;
      do
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v6 = *(v1 + 8 * v5 + 32);
        }

        v7 = v6;
        ++v5;
        v8 = [v4 currentTraitCollection];
        v9 = [v8 userInterfaceStyle];

        if (v9 == 2)
        {
          v10 = 1;
        }

        else
        {
          v10 = 2;
        }

        URL._bridgeToObjectiveC()(1);
        v12 = v11;
        [v7 updateViewForAssetType:v10 adjustmentsURL:v11];
      }

      while (v2 != v5);
    }
  }
}

void *sub_10008A138(uint64_t a1, uint64_t a2)
{
  v4 = *((swift_isaMask & *v2) + qword_100123148);
  v5 = *(v4 - 8);
  __chkstk_darwin(a1);
  (*(v5 + 16))(&v11 - v6);
  v7 = UIHostingController.init(coder:rootView:)();
  v8 = *(v5 + 8);
  v9 = v7;
  v8(a2, v4);
  if (v7)
  {
  }

  return v7;
}

id sub_10008A270(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for HeadphoneBatteryViewController.SecureHostingController(0, *((swift_isaMask & *v4) + qword_100123148), *((swift_isaMask & *v4) + qword_100123148 + 8), a4);
  v9.receiver = v4;
  v9.super_class = v6;
  v7 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);

  if (v7)
  {
  }

  return v7;
}

id sub_10008A348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for HeadphoneBatteryViewController.SecureHostingController(0, *((swift_isaMask & *v4) + qword_100123148), *((swift_isaMask & *v4) + qword_100123148 + 8), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

uint64_t type metadata accessor for HeadphoneBatteryViewController(uint64_t a1)
{
  result = qword_10011EE00;
  if (!qword_10011EE00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10008A56C(uint64_t a1)
{
  sub_100025E40(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10008A6B4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008A6F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10008A70C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10008A774(uint64_t a1)
{
  v2 = type metadata accessor for ControlSize();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.controlSize.setter();
}

id sub_10008A83C(void *a1, char *a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC20HeadphoneProxService25HeadphoneBatteryContainer_arrangedSubviews;
  swift_beginAccess();
  v7 = *&a2[v6];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&a2[v6] = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_1000CC450(0, v7[2] + 1, 1, v7);
    *&a2[v6] = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_1000CC450((v9 > 1), v10 + 1, 1, v7);
  }

  v7[2] = v10 + 1;
  v11 = &v7[2 * v10];
  v11[4] = a1;
  v11[5] = a3;
  *&a2[v6] = v7;
  swift_endAccess();
  v12 = a1;
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  return [a2 addSubview:v12];
}

uint64_t sub_10008A94C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_10008A9C4()
{
  result = qword_10011EEE0;
  if (!qword_10011EEE0)
  {
    sub_10000A408(&qword_10011EEE8, &qword_1000D8DB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011EEE0);
  }

  return result;
}

uint64_t sub_10008AA48@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

unint64_t sub_10008AAA0()
{
  result = qword_10011EEF8;
  if (!qword_10011EEF8)
  {
    sub_10000A408(&qword_10011EEB8, &qword_1000D8D90);
    sub_10000A408(&qword_10011EEB0, &qword_1000D8D88);
    sub_10001C3D8(&qword_10011EEF0, &qword_10011EEB0, &qword_1000D8D88, &protocol conformance descriptor for Button<A>);
    swift_getOpaqueTypeConformance2();
    sub_10001C3D8(&qword_10011EF00, &qword_10011EF08, &qword_1000D8DE8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011EEF8);
  }

  return result;
}

unint64_t sub_10008ABC8()
{
  result = qword_10011EF10;
  if (!qword_10011EF10)
  {
    type metadata accessor for BorderedButtonStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011EF10);
  }

  return result;
}

uint64_t sub_10008AC20@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tint.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10008ACA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100008438(&qword_10011EEC0, &qword_1000D8D98);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008AD10(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000A408(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10008AD94()
{
  result = qword_10011EF38;
  if (!qword_10011EF38)
  {
    sub_10000A408(&qword_10011EEC0, &qword_1000D8D98);
    sub_10008AE4C();
    sub_10001C3D8(&qword_10011EF58, &qword_10011EF20, &qword_1000D8E28, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011EF38);
  }

  return result;
}

unint64_t sub_10008AE4C()
{
  result = qword_10011EF40;
  if (!qword_10011EF40)
  {
    sub_10000A408(&qword_10011EF18, &qword_1000D8E20);
    sub_10000A408(&qword_10011EEB8, &qword_1000D8D90);
    type metadata accessor for BorderedButtonStyle();
    sub_10008AAA0();
    sub_10008ABC8();
    swift_getOpaqueTypeConformance2();
    sub_10001C3D8(&qword_10011EF48, &qword_10011EF50, &qword_1000D8E68, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011EF40);
  }

  return result;
}

uint64_t sub_10008AF60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10008AFC0()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_10008AFF8()
{
  result = *(v0 + 16);
  if (result)
  {
    return [result setAlpha:0.0];
  }

  return result;
}

uint64_t sub_10008B014()
{
  v1 = v0;
  v2 = type metadata accessor for HeadphoneViewModel(0);
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 40) & ~v3;
  v47 = *(*(v2 - 1) + 64);

  v5 = v0 + v4;

  v6 = v0 + v4 + v2[11];
  v7 = type metadata accessor for HeadphoneAssets(0);
  if (!(*(*(v7 - 1) + 48))(v6, 1, v7))
  {
    v41 = v3;
    v44 = (v3 + 40) & ~v3;
    v8 = type metadata accessor for URL();
    v9 = *(v8 - 8);
    v10 = *(v9 + 8);
    v10(v6, v8);
    v10(&v6[v7[5]], v8);
    v11 = v7[6];
    if (!(*(v9 + 48))(&v6[v11], 1, v8))
    {
      v10(&v6[v11], v8);
    }

    v12 = &v6[v7[7]];
    v13 = type metadata accessor for HeadphoneAssets.Feature(0);
    if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
    {
      v10(v12, v8);
    }

    v1 = v0;
    v3 = v41;
    v4 = v44;
  }

  v14 = &v5[v2[12]];
  type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v33 = type metadata accessor for HeadphoneBatteryInfo(0);
      v34 = v3;
      v35 = *(v33 + 28);
      v36 = type metadata accessor for BatteryIconStyle();
      v46 = v4;
      v37 = *(*(v36 - 8) + 8);
      v38 = &v14[v35];
      v3 = v34;
      v37(v38, v36);
      v21 = (v33 + 32);

      v14 += *(sub_100008438(&qword_10011D0C0, &unk_1000D8D60) + 48);
      v37(&v14[*(v33 + 28)], v36);
      v4 = v46;
      goto LABEL_19;
    }

    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_20;
    }

    v16 = type metadata accessor for HeadphoneBatteryInfo(0);
    v19 = *(v16 + 28);
    v20 = type metadata accessor for BatteryIconStyle();
    (*(*(v20 - 8) + 8))(&v14[v19], v20);
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      v22 = type metadata accessor for HeadphoneBatteryInfo(0);
      v42 = v3;
      v23 = *(v22 + 28);
      v24 = type metadata accessor for BatteryIconStyle();
      v45 = v4;
      v25 = *(*(v24 - 8) + 8);
      v25(&v14[v23], v24);
      v21 = (v22 + 32);

      v26 = sub_100008438(&unk_10011FFF0, &unk_1000D63B0);
      v27 = &v14[*(v26 + 48)];
      v25(&v27[*(v22 + 28)], v24);

      v28 = *(v26 + 64);
      v3 = v42;
      v14 += v28;
      v25(&v14[*(v22 + 28)], v24);
      v4 = v45;
      goto LABEL_19;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v29 = type metadata accessor for HeadphoneBatteryInfo(0);
      v30 = *(v29 + 28);
      v31 = type metadata accessor for BatteryIconStyle();
      v43 = v3;
      v32 = *(*(v31 - 8) + 8);
      v32(&v14[v30], v31);
      v21 = (v29 + 32);

      v14 += *(sub_100008438(&qword_10011D0B8, &unk_1000D8D50) + 48);
      v32(&v14[*(v29 + 28)], v31);
      v3 = v43;
      goto LABEL_19;
    }

    if (EnumCaseMultiPayload != 4)
    {
      goto LABEL_20;
    }

    v16 = type metadata accessor for HeadphoneBatteryInfo(0);
    v17 = *(v16 + 28);
    v18 = type metadata accessor for BatteryIconStyle();
    (*(*(v18 - 8) + 8))(&v14[v17], v18);
  }

  v21 = (v16 + 32);
LABEL_19:

LABEL_20:
  if (*&v5[v2[13] + 8])
  {
  }

  if (*&v5[v2[14] + 176])
  {
  }

  v39 = &v5[v2[19]];
  if (*(v39 + 1))
  {
  }

  if (*&v5[v2[20]])
  {
  }

  return _swift_deallocObject(v1, ((v47 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

void sub_10008B6B8(uint64_t a1)
{
  v3 = *(type metadata accessor for HeadphoneViewModel(0) - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  sub_10008580C(a1, v4, v5, v6, v7);
}

uint64_t sub_10008B75C()
{
  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008B79C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008B800()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008B848()
{
  v1 = type metadata accessor for HeadphoneViewModel(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v48 = v0;
  v5 = v0 + v3;

  v6 = v0 + v3 + v1[11];
  v7 = type metadata accessor for HeadphoneAssets(0);
  if (!(*(*(v7 - 1) + 48))(v6, 1, v7))
  {
    v43 = v4;
    v45 = (v2 + 40) & ~v2;
    v41 = v2;
    v8 = type metadata accessor for URL();
    v9 = *(v8 - 8);
    v10 = *(v9 + 8);
    v10(v6, v8);
    v10(v6 + v7[5], v8);
    v11 = v7[6];
    if (!(*(v9 + 48))(v6 + v11, 1, v8))
    {
      v10(v6 + v11, v8);
    }

    v12 = v6 + v7[7];
    v13 = type metadata accessor for HeadphoneAssets.Feature(0);
    if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
    {
      v10(v12, v8);
    }

    v2 = v41;
    v4 = v43;
    v3 = v45;
  }

  v14 = v5 + v1[12];
  type metadata accessor for HeadphoneViewModel.BatteryConfiguration(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_20;
      }

      goto LABEL_14;
    }

    v27 = type metadata accessor for HeadphoneBatteryInfo(0);
    v35 = v2;
    v36 = *(v27 + 28);
    v30 = type metadata accessor for BatteryIconStyle();
    v47 = v3;
    v31 = *(*(v30 - 8) + 8);
    v44 = v4;
    v37 = v14 + v36;
    v2 = v35;
    v31(v37, v30);
    v19 = (v27 + 32);

    v33 = &qword_10011D0C0;
    v34 = &unk_1000D8D60;
LABEL_18:
    v14 += *(sub_100008438(v33, v34) + 48);
    v31(v14 + *(v27 + 28), v30);
    v4 = v44;
    v3 = v47;
    goto LABEL_19;
  }

  switch(EnumCaseMultiPayload)
  {
    case 2:
      v20 = type metadata accessor for HeadphoneBatteryInfo(0);
      v42 = v2;
      v21 = *(v20 + 28);
      v22 = type metadata accessor for BatteryIconStyle();
      v40 = *(*(v22 - 8) + 8);
      v40(v14 + v21, v22);
      v19 = (v20 + 32);

      v23 = sub_100008438(&unk_10011FFF0, &unk_1000D63B0);
      v46 = v3;
      v24 = v14 + *(v23 + 48);
      v40(v24 + *(v20 + 28), v22);
      v25 = *(v24 + *(v20 + 32));
      v3 = v46;

      v26 = *(v23 + 64);
      v2 = v42;
      v14 += v26;
      v40(v14 + *(v20 + 28), v22);
      goto LABEL_19;
    case 3:
      v27 = type metadata accessor for HeadphoneBatteryInfo(0);
      v28 = v2;
      v29 = *(v27 + 28);
      v30 = type metadata accessor for BatteryIconStyle();
      v47 = v3;
      v31 = *(*(v30 - 8) + 8);
      v44 = v4;
      v32 = v14 + v29;
      v2 = v28;
      v31(v32, v30);
      v19 = (v27 + 32);

      v33 = &qword_10011D0B8;
      v34 = &unk_1000D8D50;
      goto LABEL_18;
    case 4:
LABEL_14:
      v16 = type metadata accessor for HeadphoneBatteryInfo(0);
      v17 = *(v16 + 28);
      v18 = type metadata accessor for BatteryIconStyle();
      (*(*(v18 - 8) + 8))(v14 + v17, v18);
      v19 = (v16 + 32);
LABEL_19:

      break;
  }

LABEL_20:
  if (*(v5 + v1[13] + 8))
  {
  }

  if (*(v5 + v1[14] + 176))
  {
  }

  v38 = v5 + v1[19];
  if (*(v38 + 8))
  {
  }

  if (*(v5 + v1[20]))
  {
  }

  return _swift_deallocObject(v48, v3 + v4, v2 | 7);
}

void sub_10008BE84(int a1)
{
  v3 = *(type metadata accessor for HeadphoneViewModel(0) - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  sub_100085BC4(a1, v4, v5, v6, v7);
}

uint64_t sub_10008BEFC(uint64_t a1)
{
  __chkstk_darwin(a1);
  (*(v2 + 16))(&v4 - v1);
  return UIHostingController.init(rootView:)();
}

id sub_10008BFE4(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_optimizedBatteryChargingLabel] = 0;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_batteryContainer] = 0;
  v4 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_batteryContainerLayoutGuide;
  *&v1[v4] = [objc_allocWithZone(UILayoutGuide) init];
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_batteryContainerVerticalConstraint] = 0;
  v5 = OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_viewModel;
  v6 = type metadata accessor for HeadphoneViewModel(0);
  (*(*(v6 - 8) + 56))(&v1[v5], 1, 1, v6);
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_leftBatteryView] = 0;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_rightBatteryView] = 0;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_caseBatteryView] = 0;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_movieBatteryView] = 0;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_turnOffOptimizedBatteryChargingButtonHost] = 0;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController__turnOffOptimizedBatteryChargingButtonHost] = 0;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController__turnOffOptimizedBatteryChargingButtonView] = 0;
  v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_isTransitioning] = 0;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_presenter + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC20HeadphoneProxService30HeadphoneBatteryViewController_type] = 2;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, "initWithContentView:", a1);
}

uint64_t sub_10008C1C4()
{
  ObjectType = swift_getObjectType();
  v2 = sub_100008438(&qword_10011F2E0, &unk_1000D8580);
  __chkstk_darwin(v2 - 8);
  v4 = &aBlock[-1] - v3;
  v5 = type metadata accessor for HeadphoneViewModel(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v0[OBJC_IVAR____TtC20HeadphoneProxService36SoftwareUpdateRequiredViewController_offsetIcon] = 0;
  v18.receiver = v0;
  v18.super_class = ObjectType;
  objc_msgSendSuper2(&v18, "viewDidLoad");
  v9 = OBJC_IVAR____TtC20HeadphoneProxService34HeadphoneUnsupportedViewController_viewModel;
  swift_beginAccess();
  sub_10008C7F8(&v0[v9], v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_10008C790(v4);
  }

  sub_1000260D0(v4, v8);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v12 = String._bridgeToObjectiveC()();
  aBlock[4] = sub_10008C8A0;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C034;
  aBlock[3] = &unk_1001072F0;
  v13 = _Block_copy(aBlock);
  v14 = [objc_opt_self() actionWithTitle:v12 style:1 handler:v13];

  _Block_release(v13);

  v15 = [v0 addAction:v14];

  return sub_10004CE1C(v8);
}

void sub_10008C474(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (*&Strong[OBJC_IVAR____TtC20HeadphoneProxService34HeadphoneUnsupportedViewController_presenter])
    {
      swift_unknownObjectRetain();

      sub_1000B6688();
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_10008C5FC()
{
  sub_10008C790(v0 + OBJC_IVAR____TtC20HeadphoneProxService34HeadphoneUnsupportedViewController_viewModel);

  return swift_unknownObjectRelease();
}

uint64_t type metadata accessor for HeadphoneUnsupportedViewController(uint64_t a1)
{
  result = qword_10011EFA0;
  if (!qword_10011EFA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10008C6DC(uint64_t a1)
{
  sub_100025E40(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10008C790(uint64_t a1)
{
  v2 = sub_100008438(&qword_10011F2E0, &unk_1000D8580);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10008C7F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100008438(&qword_10011F2E0, &unk_1000D8580);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008C868()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008C8A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10008C8C0()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011EFB0);
  v1 = sub_10000A570(v0, qword_10011EFB0);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10008C988(void *a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v22 - v8;
  __chkstk_darwin(v7);
  v11 = &v22 - v10;
  v12 = [a1 traitCollection];
  v13 = [v12 userInterfaceStyle];

  if (v13 == 1)
  {
    v14 = 19788;
  }

  else
  {
    v14 = 19780;
  }

  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v22 = 0;
  v23 = 0xE000000000000000;
  _StringGuts.grow(_:)(18);

  v22 = 0xD000000000000010;
  v23 = 0x80000001000E1260;
  v17._countAndFlagsBits = v14;
  v17._object = 0xE200000000000000;
  String.append(_:)(v17);
  v18 = String._bridgeToObjectiveC()();

  v19 = String._bridgeToObjectiveC()();
  v20 = [v16 URLForResource:v18 withExtension:v19];

  if (v20)
  {

    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v3 + 32))(v11, v9, v2);
    (*(v3 + 16))(v6, v11, v2);
    v21 = objc_allocWithZone(type metadata accessor for ProxMovieLoopPlayer(0));
    [sub_1000302F0(v6 0.0];
    (*(v3 + 8))(v11, v2);
  }

  else
  {
    __break(1u);
  }
}

id sub_10008CC70(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_10008CCD4(uint64_t a1)
{
  v2 = [objc_allocWithZone(UIView) init];
  v3 = sub_10008CC70(&OBJC_IVAR____TtC20HeadphoneProxService41HeadphoneHeadGesturesUpsellViewController____lazy_storage___movieLoopView, sub_10008C988);
  [v2 addSubview:v3];

  v4 = objc_opt_self();
  sub_100008438(&unk_10011D960, &qword_1000D5CF0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000D5DA0;
  v6 = OBJC_IVAR____TtC20HeadphoneProxService41HeadphoneHeadGesturesUpsellViewController____lazy_storage___movieLoopView;
  v7 = [*(a1 + OBJC_IVAR____TtC20HeadphoneProxService41HeadphoneHeadGesturesUpsellViewController____lazy_storage___movieLoopView) centerXAnchor];
  v8 = [v2 centerXAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];

  *(v5 + 32) = v9;
  v10 = [*(a1 + v6) centerYAnchor];
  v11 = [v2 centerYAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v5 + 40) = v12;
  sub_10000F5A0();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v4 activateConstraints:isa];

  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = [v2 heightAnchor];
  v15 = [v14 constraintEqualToConstant:180.0];

  [v15 setActive:1];
  return v2;
}

void sub_10008CF20()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for HeadphoneModel(0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  __chkstk_darwin(v4);
  v8 = v34 - v7 + 40;
  v36.receiver = v1;
  v36.super_class = ObjectType;
  objc_msgSendSuper2(&v36, "viewDidLoad");
  [v1 setDismissalType:1];
  v9 = &v1[OBJC_IVAR____TtC20HeadphoneProxService41HeadphoneHeadGesturesUpsellViewController_presenter];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    swift_beginAccess();
    sub_1000145EC(v11 + 16, v34);
    swift_unknownObjectRelease();
    v12 = v35;
    if (v35)
    {
      v13 = sub_10000E7E4(v34, v35);
      v14 = *(v12 - 8);
      __chkstk_darwin(v13);
      v16 = (v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0) + 40);
      (*(v14 + 16))(v16);
      sub_10001465C(v34);
      v17 = *v16;
      v18 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
      swift_beginAccess();
      sub_10000E390(v17 + v18, v6);
      (*(v14 + 8))(v16, v12);
      sub_10000E828(v6, v8);
      v19 = [v1 contentView];
      v20 = sub_10008CC70(&OBJC_IVAR____TtC20HeadphoneProxService41HeadphoneHeadGesturesUpsellViewController____lazy_storage___topAsset, sub_10008CCD4);
      [v19 addSubview:v20];

      v21 = *&v1[OBJC_IVAR____TtC20HeadphoneProxService41HeadphoneHeadGesturesUpsellViewController____lazy_storage___topAsset];
      v22 = [v1 contentView];
      v23 = [v22 mainContentGuide];

      [v21 pinToOtherWithLayoutGuide:v23];
      sub_100008438(&unk_1001200F0, &unk_1000D5F10);
      v24 = type metadata accessor for HeadphoneProxFeatureManager.HeadphoneProxFeature();
      v25 = *(v24 - 8);
      v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1000D5250;
      (*(v25 + 104))(v27 + v26, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.headGestures(_:), v24);

      dispatch thunk of HeadphoneProxFeatureManager.setProxCardShowedFeatures(deviceAddress:showedFeatures:)();

      type metadata accessor for HeadphoneYodelHearingProtectionViewController(0);
      v28 = swift_unknownObjectWeakLoadStrong();
      sub_10001F218(v1, v8, v28, *(v9 + 1));
      swift_unknownObjectRelease();
      sub_10000E8F4(v8);
      return;
    }

    sub_10001465C(v34);
  }

  if (qword_10011C6E0 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_10000A570(v29, qword_10011EFB0);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "Head Gestures: Headphone Model is nil, exiting", v32, 2u);
  }
}

void sub_10008D5C4()
{
  v1 = String._bridgeToObjectiveC()();
  [v0 setTitle:v1];

  v2 = String._bridgeToObjectiveC()();
  [v0 setSubtitle:v2];

  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v4 = String._bridgeToObjectiveC()();
  v17 = sub_10008DAA4;
  v18 = v3;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_10000C034;
  v16 = &unk_100107380;
  v5 = _Block_copy(&v13);
  v6 = objc_opt_self();
  v7 = [v6 actionWithTitle:v4 style:0 handler:v5];

  _Block_release(v5);

  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v9 = String._bridgeToObjectiveC()();
  v17 = sub_10008DAEC;
  v18 = v8;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_10000C034;
  v16 = &unk_1001073A8;
  v10 = _Block_copy(&v13);
  v11 = [v6 actionWithTitle:v9 style:1 handler:v10];

  _Block_release(v10);

  v12 = [v0 addAction:v11];
}

void sub_10008D87C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();

    if (v6)
    {
      a3();
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_10008DA6C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008DAD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_10008DB1C()
{
  if (qword_10011C700 != -1)
  {
    swift_once();
  }

  v0 = qword_1001231A0;
  v1 = String._bridgeToObjectiveC()();
  v2 = [objc_opt_self() _systemImageNamed:v1 withConfiguration:v0];

  if (!v2)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (qword_10011C708 != -1)
  {
    swift_once();
  }

  v3 = [v2 imageByApplyingSymbolConfiguration:qword_1001231A8];

  if (!v3)
  {
    goto LABEL_9;
  }
}

uint64_t sub_10008DC98()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011F018);
  v1 = sub_10000A570(v0, qword_10011F018);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10008DD60()
{
  v1 = OBJC_IVAR____TtC20HeadphoneProxService37HeadphoneWhatsNewUpsellViewController____lazy_storage___forceShowWhatsNew;
  v2 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService37HeadphoneWhatsNewUpsellViewController____lazy_storage___forceShowWhatsNew);
  if (v2 == 2)
  {
    v3 = String._bridgeToObjectiveC()();
    CFPreferencesAppSynchronize(v3);

    v4 = String._bridgeToObjectiveC()();
    v5 = String._bridgeToObjectiveC()();
    AppBooleanValue = CFPreferencesGetAppBooleanValue(v4, v5, 0);

    LOBYTE(v2) = AppBooleanValue != 0;
    *(v0 + v1) = AppBooleanValue != 0;
  }

  return v2 & 1;
}

uint64_t sub_10008DE2C()
{
  v1 = OBJC_IVAR____TtC20HeadphoneProxService37HeadphoneWhatsNewUpsellViewController____lazy_storage___featureMap;
  if (*(v0 + OBJC_IVAR____TtC20HeadphoneProxService37HeadphoneWhatsNewUpsellViewController____lazy_storage___featureMap))
  {
    v2 = *(v0 + OBJC_IVAR____TtC20HeadphoneProxService37HeadphoneWhatsNewUpsellViewController____lazy_storage___featureMap);
  }

  else
  {
    swift_unknownObjectWeakInit();
    sub_10008DEB4(v5);
    v2 = v3;
    swift_unknownObjectWeakDestroy();
    *(v0 + v1) = v2;
  }

  return v2;
}

void sub_10008DEB4(uint64_t a1)
{
  v1 = sub_100008438(&qword_1001200D0, qword_1000D60C8);
  v139 = *(v1 - 8);
  v2 = *(v139 + 64);
  v3 = __chkstk_darwin(v1);
  v4 = &v119 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v136 = v4;
  v6 = __chkstk_darwin(v5);
  v133 = v4;
  v7 = __chkstk_darwin(v6);
  v131 = v4;
  __chkstk_darwin(v7);
  v138 = v4;
  v8 = type metadata accessor for HeadphoneProxFeatureManager.HeadphoneProxFeature();
  v142 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v137 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v134 = &v119 - v12;
  v13 = __chkstk_darwin(v11);
  v132 = &v119 - v14;
  v15 = __chkstk_darwin(v13);
  v130 = &v119 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v119 - v18;
  v20 = __chkstk_darwin(v17);
  v21 = __chkstk_darwin(v20);
  v135 = v4;
  v22 = __chkstk_darwin(v21);
  v141 = v4;
  v23 = __chkstk_darwin(v22);
  v140 = v4;
  __chkstk_darwin(v23);
  v143 = v4;
  v24 = type metadata accessor for HeadphoneModel(0);
  v128 = *(v24 - 8);
  v25 = *(v128 + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v129 = &v119 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v26);
  v29 = &v119 - v28;
  __chkstk_darwin(v27);
  v31 = &v119 - v30;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v33 = Strong;
    v34 = swift_unknownObjectWeakLoadStrong();
    if (v34)
    {
      v35 = v34;
      swift_beginAccess();
      sub_10000E88C(v35 + 16, &v144, &qword_10011FBC0, &unk_1000D5EF0);
      swift_unknownObjectRelease();
      v36 = v145;
      if (v145)
      {
        v120 = v4;
        v121 = v4;
        v37 = sub_10000E7E4(&v144, v145);
        v126 = &v119;
        v38 = *(v36 - 8);
        v127 = v8;
        v39 = v38;
        __chkstk_darwin(v37);
        v124 = v33;
        v41 = (&v119 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v39 + 16))(v41);
        sub_10000E950(&v144, &qword_10011FBC0, &unk_1000D5EF0);
        v42 = *v41;
        v43 = v1;
        v44 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
        swift_beginAccess();
        v45 = v42 + v44;
        v46 = v43;
        sub_10000E390(v45, v29);
        (*(v39 + 8))(v41, v36);
        v47 = v127;
        v125 = v31;
        sub_10000E828(v29, v31);
        v48 = *&v124[OBJC_IVAR____TtC20HeadphoneProxService37HeadphoneWhatsNewUpsellViewController_listBuilder];
        v49 = v142;
        v50 = *(v142 + 104);
        v50(v19, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.headGestures(_:), v47);
        v51 = *(v49 + 32);
        v52 = v138;
        v51(v138, v19, v47);
        v53 = v143;
        v51(v143, v52, v47);
        v138 = v46;
        v54 = &v53[*(v46 + 12)];
        v55 = swift_allocObject();
        *(v55 + 16) = sub_100090D38;
        *(v55 + 24) = v48;
        *v54 = sub_10006278C;
        v54[1] = v55;
        v142 = v48;
        swift_retain_n();
        v56 = sub_1000CC7B0(0, 1, 1, _swiftEmptyArrayStorage);
        v58 = v56[2];
        v57 = v56[3];
        if (v58 >= v57 >> 1)
        {
          v56 = sub_1000CC7B0((v57 > 1), v58 + 1, 1, v56);
        }

        v56[2] = v58 + 1;
        v126 = ((*(v139 + 80) + 32) & ~*(v139 + 80));
        v139 = *(v139 + 72);
        sub_100013704(v143, v126 + v56 + v139 * v58);
        v59 = v125;
        v61 = *(v125 + 18);
        v60 = *(v125 + 19);
        v62 = sub_1000220A4();
        v143 = v51;
        v123 = v50;
        v122 = v60;
        if (v62)
        {
          v119 = v61;
          v63 = v130;
          v64 = v127;
          v50(v130, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.yodel(_:), v127);
          v65 = v129;
          sub_10000E390(v59, v129);
          v66 = (*(v128 + 80) + 24) & ~*(v128 + 80);
          v67 = swift_allocObject();
          *(v67 + 16) = v142;
          sub_10000E828(v65, v67 + v66);
          v68 = v131;
          v51(v131, v63, v64);
          v69 = v140;
          v51(v140, v68, v64);
          v70 = (v69 + *(v138 + 12));
          v71 = swift_allocObject();
          *(v71 + 16) = sub_1000910E0;
          *(v71 + 24) = v67;
          *v70 = sub_100064F5C;
          v70[1] = v71;
          v72 = v56[2];
          v73 = v56[3];

          if (v72 >= v73 >> 1)
          {
            v56 = sub_1000CC7B0((v73 > 1), v72 + 1, 1, v56);
          }

          v56[2] = v72 + 1;
          sub_100013704(v140, v126 + v56 + v72 * v139);
          v50 = v123;
          v61 = v119;
          v60 = v122;
        }

        if (sub_1000216CC(v61, v60))
        {
          v78 = [objc_opt_self() currentDevice];
          v79 = [v78 userInterfaceIdiom];

          v80 = v79 == 0;
          if (v79)
          {
            v81 = 1145131081;
          }

          else
          {
            v81 = 0x454E4F485049;
          }

          if (v80)
          {
            v82 = 0xE600000000000000;
          }

          else
          {
            v82 = 0xE400000000000000;
          }

          v83 = v132;
          v84 = v127;
          v50(v132, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.yodel(_:), v127);
          v85 = swift_allocObject();
          v85[2] = v142;
          v85[3] = v81;
          v85[4] = v82;
          v86 = v133;
          v87 = v83;
          v88 = v143;
          (v143)(v133, v87, v84);
          v89 = v141;
          (v88)(v141, v86, v84);
          v90 = (v89 + *(v138 + 12));
          v91 = swift_allocObject();
          *(v91 + 16) = sub_100090E08;
          *(v91 + 24) = v85;
          *v90 = sub_100064F5C;
          v90[1] = v91;
          v92 = v56[2];
          v93 = v56[3];

          if (v92 >= v93 >> 1)
          {
            v56 = sub_1000CC7B0((v93 > 1), v92 + 1, 1, v56);
          }

          v56[2] = v92 + 1;
          sub_100013704(v141, v126 + v56 + v92 * v139);
          v50 = v123;
          v60 = v122;
        }

        v94 = sub_1000216B0(v61, v60);
        v95 = v143;
        if (v94)
        {
          v96 = v134;
          v97 = v127;
          v50(v134, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.yodel(_:), v127);
          v98 = v136;
          (v95)(v136, v96, v97);
          v99 = v135;
          (v95)(v135, v98, v97);
          v100 = (v99 + *(v138 + 12));
          v101 = swift_allocObject();
          v102 = v142;
          *(v101 + 16) = sub_100090DC0;
          *(v101 + 24) = v102;
          *v100 = sub_100064F5C;
          v100[1] = v101;
          v103 = v56[2];
          v104 = v56[3];

          if (v103 >= v104 >> 1)
          {
            v56 = sub_1000CC7B0((v104 > 1), v103 + 1, 1, v56);
          }

          v56[2] = v103 + 1;
          sub_100013704(v99, v126 + v56 + v103 * v139);
        }

        if (qword_10011C700 != -1)
        {
          swift_once();
        }

        v105 = qword_1001231A0;
        v106 = String._bridgeToObjectiveC()();
        v107 = [objc_opt_self() _systemImageNamed:v106 withConfiguration:v105];

        if (v107)
        {
          if (qword_10011C708 != -1)
          {
            swift_once();
          }

          v108 = [v107 imageByApplyingSymbolConfiguration:qword_1001231A8];

          if (v108)
          {
            v109 = v137;
            v110 = v127;
            v50(v137, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.improvedVoiceQuality(_:), v127);
            v111 = swift_allocObject();
            *(v111 + 16) = v142;
            *(v111 + 24) = v108;
            v112 = v121;
            (v95)(v121, v109, v110);
            v113 = v120;
            (v95)(v120, v112, v110);
            v114 = (v113 + *(v138 + 12));
            v115 = swift_allocObject();
            *(v115 + 16) = sub_100090DB8;
            *(v115 + 24) = v111;
            *v114 = sub_100064F5C;
            v114[1] = v115;
            v116 = v56[2];
            v117 = v56[3];

            v118 = v108;
            if (v116 >= v117 >> 1)
            {
              v56 = sub_1000CC7B0((v117 > 1), v116 + 1, 1, v56);
            }

            v56[2] = v116 + 1;
            sub_100013704(v113, v126 + v56 + v116 * v139);
            sub_10000E8F4(v125);
            return;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        return;
      }

      sub_10000E950(&v144, &qword_10011FBC0, &unk_1000D5EF0);
    }

    else
    {
    }
  }

  if (qword_10011C6F0 != -1)
  {
    swift_once();
  }

  v74 = type metadata accessor for Logger();
  sub_10000A570(v74, qword_100123180);
  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    *v77 = 0;
    _os_log_impl(&_mh_execute_header, v75, v76, "no features we are dallocating", v77, 2u);
  }
}

double sub_10008EDB0()
{
  sub_10008DB1C();
  v1 = v0;
  v2 = [objc_allocWithZone(UIImageView) initWithImage:v0];
  v3 = [objc_opt_self() systemBlueColor];
  [v2 setTintColor:v3];

  v4 = v2;
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 setContentMode:1];

  v5 = objc_opt_self();
  v6 = [v5 mainBundle];
  v18._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0x5345475F44414548;
  v7._object = 0xED00005345525554;
  v8.value._object = 0x80000001000DC030;
  v8.value._countAndFlagsBits = 0xD000000000000014;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v18._countAndFlagsBits = 0;
  v10 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, v6, v9, v18);

  v11 = [v5 mainBundle];
  v19._object = 0xE000000000000000;
  v12._countAndFlagsBits = 0xD000000000000016;
  v12._object = 0x80000001000DE510;
  v13.value._object = 0x80000001000DC030;
  v13.value._countAndFlagsBits = 0xD000000000000014;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v19._countAndFlagsBits = 0;
  v15 = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v13, v11, v14, v19);

  sub_100092F4C(v4, v10._countAndFlagsBits, v10._object, v15._countAndFlagsBits, v15._object);

  return result;
}

double sub_10008EFB4(uint64_t a1, uint64_t a2)
{
  sub_100021B8C();
  v4 = v3;
  v5 = [objc_allocWithZone(UIImageView) initWithImage:v3];
  v6 = [objc_opt_self() systemBlueColor];
  [v5 setTintColor:v6];

  v7 = v5;
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 setContentMode:1];

  v9 = *(a2 + 144);
  v8 = *(a2 + 152);
  v10 = sub_100022750(v9, v8);
  v12 = v11;

  sub_100022750(v9, v8);
  v14 = v13;
  v16 = v15;

  sub_100092F4C(v7, v10, v12, v14, v16);

  return result;
}

double sub_10008F0F4(uint64_t a1, uint64_t a2, void *a3)
{
  sub_100021944();
  v5 = v4;
  v6 = [objc_allocWithZone(UIImageView) initWithImage:v4];
  v7 = [objc_opt_self() systemBlueColor];
  [v6 setTintColor:v7];

  v8 = v6;
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v8 setContentMode:1];

  v9 = objc_opt_self();
  v10 = [v9 mainBundle];
  v24._object = 0xE000000000000000;
  v11._countAndFlagsBits = 0xD000000000000020;
  v11._object = 0x80000001000DDE20;
  v12.value._object = 0x80000001000DC8A0;
  v12.value._countAndFlagsBits = 0xD000000000000011;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v24._countAndFlagsBits = 0;
  v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v12, v10, v13, v24);

  _StringGuts.grow(_:)(38);

  v15._countAndFlagsBits = a2;
  v15._object = a3;
  String.append(_:)(v15);
  v16 = [v9 mainBundle];
  v25._object = 0xE000000000000000;
  v17.value._object = 0x80000001000DC8A0;
  v18._countAndFlagsBits = 0xD000000000000024;
  v18._object = 0x80000001000DF160;
  v17.value._countAndFlagsBits = 0xD000000000000011;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v25._countAndFlagsBits = 0;
  v20 = NSLocalizedString(_:tableName:bundle:value:comment:)(v18, v17, v16, v19, v25);

  sub_100092F4C(v8, v14._countAndFlagsBits, v14._object, v20._countAndFlagsBits, v20._object);

  return result;
}

double sub_10008F334()
{
  sub_100021A68();
  v1 = v0;
  v2 = [objc_allocWithZone(UIImageView) initWithImage:v0];
  v3 = [objc_opt_self() systemBlueColor];
  [v2 setTintColor:v3];

  v4 = v2;
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 setContentMode:1];

  v5 = objc_opt_self();
  v6 = [v5 mainBundle];
  v18._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0xD000000000000026;
  v7._object = 0x80000001000DDD90;
  v8.value._object = 0x80000001000DC8A0;
  v8.value._countAndFlagsBits = 0xD000000000000011;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v18._countAndFlagsBits = 0;
  v10 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, v6, v9, v18);

  v11 = [v5 mainBundle];
  v19._object = 0xE000000000000000;
  v12._countAndFlagsBits = 0xD000000000000029;
  v12._object = 0x80000001000DDD60;
  v13.value._object = 0x80000001000DC8A0;
  v13.value._countAndFlagsBits = 0xD000000000000011;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v19._countAndFlagsBits = 0;
  v15 = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v13, v11, v14, v19);

  sub_100092F4C(v4, v10._countAndFlagsBits, v10._object, v15._countAndFlagsBits, v15._object);

  return result;
}

double sub_10008F52C(uint64_t a1, uint64_t a2)
{
  v2 = [objc_allocWithZone(UIImageView) initWithImage:a2];
  v3 = [objc_opt_self() systemBlueColor];
  [v2 setTintColor:v3];

  v4 = v2;
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 setContentMode:1];

  v5 = objc_opt_self();
  v6 = [v5 mainBundle];
  v18._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0x55515F4543494F56;
  v7._object = 0xED00005954494C41;
  v8.value._object = 0x80000001000DC030;
  v8.value._countAndFlagsBits = 0xD000000000000014;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v18._countAndFlagsBits = 0;
  v10 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, v6, v9, v18);

  v11 = [v5 mainBundle];
  v19._object = 0xE000000000000000;
  v12._countAndFlagsBits = 0xD000000000000016;
  v12._object = 0x80000001000E1370;
  v13.value._object = 0x80000001000DC030;
  v13.value._countAndFlagsBits = 0xD000000000000014;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v19._countAndFlagsBits = 0;
  v15 = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v13, v11, v14, v19);

  sub_100092F4C(v4, v10._countAndFlagsBits, v10._object, v15._countAndFlagsBits, v15._object);

  return result;
}

void sub_10008F728()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v134 = sub_100008438(&qword_1001200D0, qword_1000D60C8);
  v133 = *(v134 - 8);
  v3 = __chkstk_darwin(v134);
  v5 = v121 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v140 = v121 - v7;
  v8 = __chkstk_darwin(v6);
  v10 = v121 - v9;
  v11 = __chkstk_darwin(v8);
  v128 = v121 - v12;
  v13 = __chkstk_darwin(v11);
  v136 = v121 - v14;
  v15 = __chkstk_darwin(v13);
  v132 = v121 - v16;
  __chkstk_darwin(v15);
  v139 = v121 - v17;
  v18 = sub_100008438(&qword_10011EBD0, &unk_1000D5EE0);
  v19 = __chkstk_darwin(v18 - 8);
  v21 = v121 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = v121 - v22;
  v24 = type metadata accessor for HeadphoneModel(0);
  v25 = *(v24 - 8);
  v26 = __chkstk_darwin(v24);
  v28 = v121 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v129 = v121 - v29;
  v144.receiver = v1;
  v144.super_class = ObjectType;
  objc_msgSendSuper2(&v144, "viewDidLoad");
  [v1 setDismissalType:1];
  v30 = &v1[OBJC_IVAR____TtC20HeadphoneProxService37HeadphoneWhatsNewUpsellViewController_presenter];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v32 = Strong;
    swift_beginAccess();
    sub_10000E88C(v32 + 16, v142, &qword_10011FBC0, &unk_1000D5EF0);
    swift_unknownObjectRelease();
    v33 = v143;
    if (v143)
    {
      v121[0] = v5;
      v124 = v30;
      v127 = v21;
      v34 = sub_10000E7E4(v142, v143);
      v141 = v121;
      v35 = *(v33 - 8);
      __chkstk_darwin(v34);
      v135 = v1;
      v37 = (v121 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v35 + 16))(v37);
      sub_10000E950(v142, &qword_10011FBC0, &unk_1000D5EF0);
      v38 = *v37;
      v39 = v25;
      v40 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
      swift_beginAccess();
      sub_10000E390(v38 + v40, v28);
      v41 = v37;
      v42 = v135;
      (*(v35 + 8))(v41, v33);
      v43 = v28;
      v44 = v129;
      sub_10000E828(v43, v129);
      sub_10000E390(v44, v23);
      (*(v39 + 56))(v23, 0, 1, v24);
      v45 = v42 + OBJC_IVAR____TtC20HeadphoneProxService37HeadphoneWhatsNewUpsellViewController_model;
      swift_beginAccess();
      sub_100013144(v23, v45);
      swift_endAccess();
      v46 = OBJC_IVAR____TtC20HeadphoneProxService37HeadphoneWhatsNewUpsellViewController_headphoneProxFeatureManager;
      v48 = v39 + 48;
      v47 = *(v39 + 48);
      if (v47(v45, 1, v24) == 1)
      {
        __break(1u);
      }

      else
      {
        v121[1] = v46;
        v123 = v45;

        v141 = HeadphoneProxFeatureManager.getWhatsNewNotShowedFeatures(deviceAddress:)();

        v49 = sub_10008DE2C();
        v50 = *(v49 + 16);
        v126 = v24;
        v125 = v48;
        v122 = v47;
        v131 = v50;
        if (v50)
        {
          v51 = 0;
          v52 = _swiftEmptyArrayStorage;
          v53 = &qword_1001200D0;
          v54 = v134;
          v130 = v49;
          while (v51 < *(v49 + 16))
          {
            v138 = (*(v133 + 80) + 32) & ~*(v133 + 80);
            v137 = *(v133 + 72);
            v55 = v139;
            sub_10000E88C(v49 + v138 + v137 * v51, v139, v53, qword_1000D60C8);
            v56 = v55;
            v57 = v132;
            v58 = v53;
            sub_10000E88C(v56, v132, v53, qword_1000D60C8);
            v59 = *(v54 + 48);
            v60 = type metadata accessor for HeadphoneProxFeatureManager.HeadphoneProxFeature();
            (*(*(v60 - 8) + 32))(v10, v57, v60);
            v61 = &v10[*(v54 + 48)];
            v62 = swift_allocObject();
            *(v62 + 16) = *(v57 + v59);
            *v61 = sub_100090D10;
            v61[1] = v62;
            if (sub_10008DD60())
            {
LABEL_13:
              v53 = v58;
              sub_10000E950(v10, v58, qword_1000D60C8);
              sub_100013704(v139, v136);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v142[0] = v52;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1000CD604(0, v52[2] + 1, 1);
                v52 = v142[0];
              }

              v54 = v134;
              v69 = v52[2];
              v68 = v52[3];
              if (v69 >= v68 >> 1)
              {
                sub_1000CD604((v68 > 1), v69 + 1, 1);
                v52 = v142[0];
              }

              v52[2] = v69 + 1;
              sub_100013704(v136, v52 + v138 + v69 * v137);
            }

            else
            {
              v63 = 0;
              v64 = v141[2];
              while (v64 != v63)
              {
                v65 = v63 + 1;
                sub_1000136AC();
                v66 = dispatch thunk of static Equatable.== infix(_:_:)();
                v63 = v65;
                if (v66)
                {
                  goto LABEL_13;
                }
              }

              v53 = v58;
              sub_10000E950(v10, v58, qword_1000D60C8);
              sub_10000E950(v139, v58, qword_1000D60C8);
              v54 = v134;
            }

            ++v51;
            v49 = v130;
            if (v51 == v131)
            {
              goto LABEL_24;
            }
          }

          __break(1u);
          goto LABEL_31;
        }

        v52 = _swiftEmptyArrayStorage;
        v54 = v134;
LABEL_24:

        v74 = v52[2];
        if (v74)
        {
          v75 = v52 + ((*(v133 + 80) + 32) & ~*(v133 + 80));
          v76 = v54;
          v77 = *(v133 + 72);
          v138 = v52;
          v139 = v77;
          v78 = v121[0];
          v79 = v140;
          v80 = v128;
          do
          {
            sub_10000E88C(v75, v80, &qword_1001200D0, qword_1000D60C8);
            v81 = *(v76 + 48);
            v82 = type metadata accessor for HeadphoneProxFeatureManager.HeadphoneProxFeature();
            v83 = *(v82 - 8);
            (*(v83 + 32))(v79, v80, v82);
            v84 = &v140[*(v76 + 48)];
            v85 = swift_allocObject();
            *(v85 + 16) = *(v80 + v81);
            *v84 = sub_10009115C;
            *(v84 + 1) = v85;
            v79 = v140;
            v86 = sub_10000E88C(v140, v78, &qword_1001200D0, qword_1000D60C8);
            (*(v78 + *(v76 + 48)))(v86);

            sub_10000E950(v79, &qword_1001200D0, qword_1000D60C8);
            (*(v83 + 8))(v78, v82);
            v75 += v139;
            --v74;
          }

          while (v74);
        }

        v87 = v135;
        v88 = sub_100092C00();
        v89 = [v87 contentView];
        v90 = v88;
        [v89 addSubview:v90];

        v91 = [v87 contentView];
        v92 = [v91 mainContentGuide];

        v93 = objc_opt_self();
        sub_100008438(&unk_10011D960, &qword_1000D5CF0);
        v94 = swift_allocObject();
        *(v94 + 16) = xmmword_1000D6000;
        v95 = [v90 topAnchor];

        v96 = [v92 topAnchor];
        v97 = [v95 constraintEqualToAnchor:v96];

        *(v94 + 32) = v97;
        v98 = [v90 bottomAnchor];

        v99 = [v92 bottomAnchor];
        v100 = [v98 constraintLessThanOrEqualToAnchor:v99];

        *(v94 + 40) = v100;
        v101 = [v90 leadingAnchor];

        v102 = [v92 leadingAnchor];
        v103 = [v101 constraintEqualToAnchor:v102];

        *(v94 + 48) = v103;
        v104 = [v90 trailingAnchor];

        v140 = v92;
        v105 = [v92 trailingAnchor];
        v106 = [v104 constraintEqualToAnchor:v105];

        *(v94 + 56) = v106;
        sub_10000F5A0();
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v93 activateConstraints:isa];

        sub_100008438(&unk_1001200F0, &unk_1000D5F10);
        v108 = type metadata accessor for HeadphoneProxFeatureManager.HeadphoneProxFeature();
        v109 = *(v108 - 8);
        v110 = *(v109 + 72);
        v111 = (*(v109 + 80) + 32) & ~*(v109 + 80);
        v112 = swift_allocObject();
        *(v112 + 16) = xmmword_1000D66A0;
        v113 = v112 + v111;
        v114 = *(v109 + 104);
        v114(v113, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.whatsNew(_:), v108);
        v114(v113 + v110, enum case for HeadphoneProxFeatureManager.HeadphoneProxFeature.improvedVoiceQuality(_:), v108);
        v115 = v123;
        v116 = v127;
        sub_10000E88C(v123, v127, &qword_10011EBD0, &unk_1000D5EE0);
        v117 = v126;
        v118 = v122;
        if (v122(v116, 1, v126) != 1)
        {
          type metadata accessor for HeadphoneYodelHearingProtectionViewController(0);
          v119 = v124;
          v120 = swift_unknownObjectWeakLoadStrong();
          sub_10001F218(v135, v116, v120, *(v119 + 1));
          swift_unknownObjectRelease();
          sub_10000E8F4(v116);
          if (v118(v115, 1, v117) != 1)
          {

            dispatch thunk of HeadphoneProxFeatureManager.setProxCardShowedFeatures(deviceAddress:showedFeatures:)();

            sub_10000E8F4(v129);
            return;
          }

          goto LABEL_34;
        }
      }

      __break(1u);
LABEL_34:
      __break(1u);
      return;
    }

    sub_10000E950(v142, &qword_10011FBC0, &unk_1000D5EF0);
  }

  if (qword_10011C6E8 != -1)
  {
LABEL_31:
    swift_once();
  }

  v70 = type metadata accessor for Logger();
  sub_10000A570(v70, qword_10011F018);
  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    *v73 = 0;
    _os_log_impl(&_mh_execute_header, v71, v72, "Whats New: Headphone Model is nil, exiting", v73, 2u);
  }
}

void sub_100090730(uint64_t a1)
{
  v3 = String._bridgeToObjectiveC()();
  [v1 setTitle:v3];

  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v5 = String._bridgeToObjectiveC()();
  v9[4] = sub_100090B98;
  v9[5] = v4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_10000C034;
  v9[3] = &unk_100107438;
  v6 = _Block_copy(v9);
  v7 = [objc_opt_self() actionWithTitle:v5 style:0 handler:v6];

  _Block_release(v6);

  if (*(a1 + 88))
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  [v1 setBottomTrayTitle:v8];
}

void sub_1000908DC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();

    if (v4)
    {
      sub_1000B8158();
      swift_unknownObjectRelease();
    }
  }
}

uint64_t type metadata accessor for HeadphoneWhatsNewUpsellViewController(uint64_t a1)
{
  result = qword_10011F088;
  if (!qword_10011F088)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100090A78(uint64_t a1)
{
  sub_10000E064(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100090B60()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100090BA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_100090BB8(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService37HeadphoneWhatsNewUpsellViewController_sectionWidth] = 0x4074000000000000;
  *&v1[OBJC_IVAR____TtC20HeadphoneProxService37HeadphoneWhatsNewUpsellViewController_estimatedSectionHeight] = 0x4056800000000000;
  v5 = OBJC_IVAR____TtC20HeadphoneProxService37HeadphoneWhatsNewUpsellViewController_headphoneProxFeatureManager;
  type metadata accessor for HeadphoneProxFeatureManager();
  *&v1[v5] = static HeadphoneProxFeatureManager.shared.getter();
  v6 = OBJC_IVAR____TtC20HeadphoneProxService37HeadphoneWhatsNewUpsellViewController_listBuilder;
  type metadata accessor for ProxBulltedListBuilder();
  v7 = swift_allocObject();
  *(v7 + 16) = _swiftEmptyArrayStorage;
  *&v2[v6] = v7;
  v2[OBJC_IVAR____TtC20HeadphoneProxService37HeadphoneWhatsNewUpsellViewController____lazy_storage___forceShowWhatsNew] = 2;
  v8 = OBJC_IVAR____TtC20HeadphoneProxService37HeadphoneWhatsNewUpsellViewController_model;
  v9 = type metadata accessor for HeadphoneModel(0);
  (*(*(v9 - 8) + 56))(&v2[v8], 1, 1, v9);
  *&v2[OBJC_IVAR____TtC20HeadphoneProxService37HeadphoneWhatsNewUpsellViewController____lazy_storage___featureMap] = 0;
  *&v2[OBJC_IVAR____TtC20HeadphoneProxService37HeadphoneWhatsNewUpsellViewController_presenter + 8] = 0;
  swift_unknownObjectWeakInit();
  v2[OBJC_IVAR____TtC20HeadphoneProxService37HeadphoneWhatsNewUpsellViewController_type] = 12;
  v11.receiver = v2;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, "initWithContentView:", a1);
}

uint64_t sub_100090D40()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100090D78()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100090DC8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100090E14()
{
  v1 = type metadata accessor for HeadphoneModel(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 1) + 64);

  v5 = v0 + v3;
  if (*(v0 + v3 + 8))
  {
  }

  if (*(v5 + 112))
  {
  }

  v6 = v1[12];
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v5 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  v9 = (v5 + v1[16]);
  v10 = v9[1];
  if (v10 >> 60 != 15)
  {
    sub_100022640(*v9, v10);
  }

  v11 = v1[38];
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v5 + v11, 1, v12))
  {
    (*(v13 + 8))(v5 + v11, v12);
  }

  v14 = v5 + v1[45];
  v15 = *(v14 + 8);
  if (v15 != 255)
  {
    sub_10001C2AC(*v14, v15 & 1);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

double sub_1000910E0()
{
  v1 = *(type metadata accessor for HeadphoneModel(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_10008EFB4(v2, v3);
}

uint64_t sub_100091160()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_100123180);
  sub_10000A570(v0, qword_100123180);
  return Logger.init(subsystem:category:)();
}

id sub_1000911D8()
{
  v1 = OBJC_IVAR____TtC20HeadphoneProxServiceP33_DC0457E2CD3962CEA05B8D12B6872FEB18ProxCardBulletView____lazy_storage___heightConstraint;
  v2 = *&v0[OBJC_IVAR____TtC20HeadphoneProxServiceP33_DC0457E2CD3962CEA05B8D12B6872FEB18ProxCardBulletView____lazy_storage___heightConstraint];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC20HeadphoneProxServiceP33_DC0457E2CD3962CEA05B8D12B6872FEB18ProxCardBulletView____lazy_storage___heightConstraint];
  }

  else
  {
    v4 = [v0 heightAnchor];
    v5 = [v4 constraintEqualToConstant:100.0];

    v6 = *&v0[v1];
    *&v0[v1] = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

char *sub_10009127C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&v7[OBJC_IVAR____TtC20HeadphoneProxServiceP33_DC0457E2CD3962CEA05B8D12B6872FEB18ProxCardBulletView_paddingConstraints] = _swiftEmptyArrayStorage;
  v10 = OBJC_IVAR____TtC20HeadphoneProxServiceP33_DC0457E2CD3962CEA05B8D12B6872FEB18ProxCardBulletView_textView;
  v11 = [objc_allocWithZone(UILabel) init];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v7[v10] = v11;
  *&v7[OBJC_IVAR____TtC20HeadphoneProxServiceP33_DC0457E2CD3962CEA05B8D12B6872FEB18ProxCardBulletView_assetViewSize] = 0x4053800000000000;
  *&v7[OBJC_IVAR____TtC20HeadphoneProxServiceP33_DC0457E2CD3962CEA05B8D12B6872FEB18ProxCardBulletView____lazy_storage___heightConstraint] = 0;
  *&v7[OBJC_IVAR____TtC20HeadphoneProxServiceP33_DC0457E2CD3962CEA05B8D12B6872FEB18ProxCardBulletView_assetView] = a1;
  v94.receiver = v7;
  v94.super_class = type metadata accessor for ProxCardBulletView();
  v12 = a1;
  v13 = objc_msgSendSuper2(&v94, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  v14 = OBJC_IVAR____TtC20HeadphoneProxServiceP33_DC0457E2CD3962CEA05B8D12B6872FEB18ProxCardBulletView_assetView;
  [*&v13[OBJC_IVAR____TtC20HeadphoneProxServiceP33_DC0457E2CD3962CEA05B8D12B6872FEB18ProxCardBulletView_assetView] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v13[v14] setFrame:{0.0, 0.0, 0.0, 0.0}];
  [v13 addSubview:*&v13[v14]];
  v15 = [objc_allocWithZone(UILabel) init];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = objc_opt_self();
  v17 = [v16 _preferredFontForTextStyle:UIFontTextStyleSubheadline variant:256];
  if (!v17)
  {
    __break(1u);
    goto LABEL_11;
  }

  v18 = v17;
  v82 = a3;
  v83 = v15;
  v85 = v14;
  v86 = v12;
  v19 = [v17 fontDescriptor];
  v20 = [v19 fontDescriptorWithSymbolicTraits:2];

  if (!v20)
  {
LABEL_11:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  [v18 pointSize];
  v79 = [v16 fontWithDescriptor:v20 size:?];

  v21 = [v13 traitCollection];
  v22 = [v21 userInterfaceStyle];

  v23 = [v16 systemFontOfSize:11.0 weight:UIFontWeightSemibold];
  v81 = objc_opt_self();
  v24 = [v81 whiteColor];
  v25 = [v81 blackColor];
  v80 = v18;
  v26 = [objc_allocWithZone(UIColor) initWithRed:0.533333333 green:0.533333333 blue:0.549019608 alpha:1.0];
  v27 = [objc_allocWithZone(UIColor) initWithRed:0.552941176 green:0.552941176 blue:0.576470588 alpha:1.0];
  v28 = type metadata accessor for PillBadgeTextAttachment();
  v29 = objc_allocWithZone(v28);
  v30 = v29;
  v31 = &v29[OBJC_IVAR____TtC20HeadphoneProxService23PillBadgeTextAttachment_badgeText];
  *v31 = a6;
  *(v31 + 1) = a7;
  *&v29[OBJC_IVAR____TtC20HeadphoneProxService23PillBadgeTextAttachment_badgeFont] = v23;
  if (v22 == 2)
  {
    v32 = v25;
  }

  else
  {
    v32 = v24;
  }

  if (v22 == 2)
  {
    v33 = v27;
  }

  else
  {
    v33 = v26;
  }

  *&v29[OBJC_IVAR____TtC20HeadphoneProxService23PillBadgeTextAttachment_badgeColor] = v32;
  v34 = v32;
  *&v30[OBJC_IVAR____TtC20HeadphoneProxService23PillBadgeTextAttachment_backgroundColor] = v33;
  v35 = &v30[OBJC_IVAR____TtC20HeadphoneProxService23PillBadgeTextAttachment_padding];
  *v35 = xmmword_1000D80E0;
  *(v35 + 1) = xmmword_1000D80E0;
  *&v30[OBJC_IVAR____TtC20HeadphoneProxService23PillBadgeTextAttachment_hightDelta] = 0;
  v93.receiver = v30;
  v93.super_class = v28;
  v36 = v23;
  v37 = v33;
  v38 = objc_msgSendSuper2(&v93, "initWithData:ofType:", 0, 0);
  sub_10005115C();
  v40 = v39;
  [v38 setImage:v39];

  v41 = sub_100051788(a2, v82, v38);

  v42 = objc_allocWithZone(NSMutableAttributedString);
  v43 = String._bridgeToObjectiveC()();

  v92 = [v42 initWithString:v43];

  sub_100008438(&qword_10011C8F0, &unk_1000D5640);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000D5250;
  *(inited + 32) = NSFontAttributeName;
  v45 = sub_1000084D4(0, &qword_10011C8F8, UIFont_ptr);
  *(inited + 64) = v45;
  *(inited + 40) = v79;
  v46 = NSFontAttributeName;
  v90 = v79;
  sub_1000A3410(inited);
  swift_setDeallocating();
  sub_10000851C(inited + 32);
  type metadata accessor for Key(0);
  sub_10003CDAC();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v48 = v41;
  [v48 addAttributes:isa range:{0, objc_msgSend(v48, "length")}];

  v49 = swift_initStackObject();
  *(v49 + 16) = xmmword_1000D5250;
  *(v49 + 32) = v46;
  *(v49 + 64) = v45;
  *(v49 + 40) = v80;
  v88 = v80;
  sub_1000A3410(v49);
  swift_setDeallocating();
  sub_10000851C(v49 + 32);
  v50 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v92 addAttributes:v50 range:{0, objc_msgSend(v92, "length")}];

  v51 = objc_allocWithZone(NSAttributedString);
  v52 = String._bridgeToObjectiveC()();
  v53 = [v51 initWithString:v52];

  [v48 appendAttributedString:v53];
  [v48 appendAttributedString:v92];
  [v83 setAttributedText:v48];

  v54 = [v81 labelColor];
  [v83 setTextColor:v54];

  [v83 setNumberOfLines:0];
  [v83 sizeToFit];
  v55 = *&v13[OBJC_IVAR____TtC20HeadphoneProxServiceP33_DC0457E2CD3962CEA05B8D12B6872FEB18ProxCardBulletView_textView];
  *&v13[OBJC_IVAR____TtC20HeadphoneProxServiceP33_DC0457E2CD3962CEA05B8D12B6872FEB18ProxCardBulletView_textView] = v83;
  v56 = v83;

  [v13 addSubview:v56];
  v84 = objc_opt_self();
  sub_100008438(&unk_10011D960, &qword_1000D5CF0);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1000D6930;
  v58 = [*&v13[v85] leadingAnchor];
  v59 = [v13 leadingAnchor];
  v60 = [v58 constraintEqualToAnchor:v59];

  *(v57 + 32) = v60;
  v61 = [*&v13[v85] widthAnchor];
  v62 = [v61 constraintEqualToConstant:78.0];

  *(v57 + 40) = v62;
  v63 = [*&v13[v85] heightAnchor];
  v64 = [v63 constraintEqualToConstant:78.0];

  *(v57 + 48) = v64;
  v65 = [*&v13[v85] centerYAnchor];
  v66 = [v56 centerYAnchor];
  v67 = [v65 constraintEqualToAnchor:v66];

  *(v57 + 56) = v67;
  v68 = [*&v13[v85] centerYAnchor];
  v69 = [v13 centerYAnchor];
  v70 = [v68 constraintEqualToAnchor:v69];

  *(v57 + 64) = v70;
  v71 = [v56 leadingAnchor];
  v72 = [*&v13[v85] trailingAnchor];
  v73 = [v71 constraintEqualToAnchor:v72 constant:15.0];

  *(v57 + 72) = v73;
  v74 = [v56 trailingAnchor];

  v75 = [v13 trailingAnchor];
  v76 = [v74 constraintEqualToAnchor:v75];

  *(v57 + 80) = v76;
  *(v57 + 88) = sub_1000911D8();
  sub_1000084D4(0, &qword_10011C8E0, NSLayoutConstraint_ptr);
  v77 = Array._bridgeToObjectiveC()().super.isa;

  [v84 activateConstraints:v77];

  return v13;
}

char *sub_100091DA0(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  *&v74 = a5;
  v76 = a4;
  v75 = a2;
  v8 = type metadata accessor for CharacterSet();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v5[OBJC_IVAR____TtC20HeadphoneProxServiceP33_DC0457E2CD3962CEA05B8D12B6872FEB18ProxCardBulletView_paddingConstraints] = _swiftEmptyArrayStorage;
  v12 = OBJC_IVAR____TtC20HeadphoneProxServiceP33_DC0457E2CD3962CEA05B8D12B6872FEB18ProxCardBulletView_textView;
  v13 = [objc_allocWithZone(UILabel) init];
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v5[v12] = v13;
  *&v5[OBJC_IVAR____TtC20HeadphoneProxServiceP33_DC0457E2CD3962CEA05B8D12B6872FEB18ProxCardBulletView_assetViewSize] = 0x4053800000000000;
  *&v5[OBJC_IVAR____TtC20HeadphoneProxServiceP33_DC0457E2CD3962CEA05B8D12B6872FEB18ProxCardBulletView____lazy_storage___heightConstraint] = 0;
  *&v5[OBJC_IVAR____TtC20HeadphoneProxServiceP33_DC0457E2CD3962CEA05B8D12B6872FEB18ProxCardBulletView_assetView] = a1;
  v14 = type metadata accessor for ProxCardBulletView();
  v79.receiver = v5;
  v79.super_class = v14;
  v73 = a1;
  v15 = objc_msgSendSuper2(&v79, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = OBJC_IVAR____TtC20HeadphoneProxServiceP33_DC0457E2CD3962CEA05B8D12B6872FEB18ProxCardBulletView_assetView;
  [*&v15[OBJC_IVAR____TtC20HeadphoneProxServiceP33_DC0457E2CD3962CEA05B8D12B6872FEB18ProxCardBulletView_assetView] setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v15[v16] setFrame:{0.0, 0.0, 0.0, 0.0}];
  v72 = v16;
  [v15 addSubview:*&v15[v16]];
  v17 = [objc_allocWithZone(UILabel) init];
  v18 = v74;
  v71 = v17;
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  v77 = v75;
  v78 = a3;

  v19._countAndFlagsBits = 10;
  v19._object = 0xE100000000000000;
  String.append(_:)(v19);

  v20._countAndFlagsBits = v76;
  v20._object = v18;
  String.append(_:)(v20);

  v21 = v77;
  static CharacterSet.newlines.getter();
  sub_100008480();
  v22 = StringProtocol.components(separatedBy:)();
  (*(v9 + 8))(v11, v8);
  if (!*(v22 + 16))
  {
    __break(1u);
    goto LABEL_6;
  }

  v76 = v21;
  v23 = *(v22 + 32);
  v24 = objc_opt_self();

  v25 = [v24 _preferredFontForTextStyle:UIFontTextStyleSubheadline variant:256];
  if (!v25)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v26 = v25;
  v70 = v23;

  v27 = [v26 fontDescriptor];
  v28 = [v27 fontDescriptorWithSymbolicTraits:2];

  if (v28)
  {
    [v26 pointSize];
    v29 = [v24 fontWithDescriptor:v28 size:?];

    sub_100008438(&qword_10011C8F0, &unk_1000D5640);
    inited = swift_initStackObject();
    v74 = xmmword_1000D5250;
    *(inited + 16) = xmmword_1000D5250;
    *(inited + 32) = NSFontAttributeName;
    v31 = sub_1000084D4(0, &qword_10011C8F8, UIFont_ptr);
    *(inited + 64) = v31;
    *(inited + 40) = v29;
    v32 = NSFontAttributeName;
    v75 = v29;
    v69[1] = sub_1000A3410(inited);
    swift_setDeallocating();
    sub_10000851C(inited + 32);
    v33 = String._bridgeToObjectiveC()();
    v34 = String._bridgeToObjectiveC()();

    v70 = [v33 rangeOfString:v34];
    v69[0] = v35;

    v36 = swift_initStackObject();
    *(v36 + 16) = v74;
    *(v36 + 32) = v32;
    *(v36 + 64) = v31;
    *(v36 + 40) = v26;
    *&v74 = v26;
    sub_1000A3410(v36);
    swift_setDeallocating();
    sub_10000851C(v36 + 32);
    v37 = objc_allocWithZone(NSMutableAttributedString);
    v38 = String._bridgeToObjectiveC()();

    type metadata accessor for Key(0);
    sub_10003CDAC();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v40 = [v37 initWithString:v38 attributes:isa];

    v41 = Dictionary._bridgeToObjectiveC()().super.isa;

    v76 = v40;
    [v40 addAttributes:v41 range:{v70, v69[0]}];

    v42 = v71;
    [v71 setAttributedText:v40];
    v43 = [objc_opt_self() labelColor];
    [v42 setTextColor:v43];

    [v42 setNumberOfLines:0];
    [v42 sizeToFit];
    v44 = *&v15[OBJC_IVAR____TtC20HeadphoneProxServiceP33_DC0457E2CD3962CEA05B8D12B6872FEB18ProxCardBulletView_textView];
    *&v15[OBJC_IVAR____TtC20HeadphoneProxServiceP33_DC0457E2CD3962CEA05B8D12B6872FEB18ProxCardBulletView_textView] = v42;
    v45 = v42;

    [v15 addSubview:v45];
    v71 = objc_opt_self();
    sub_100008438(&unk_10011D960, &qword_1000D5CF0);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1000D6930;
    v47 = v72;
    v48 = [*&v15[v72] leadingAnchor];
    v49 = [v15 leadingAnchor];
    v50 = [v48 constraintEqualToAnchor:v49];

    *(v46 + 32) = v50;
    v51 = [*&v15[v47] widthAnchor];
    v52 = [v51 constraintEqualToConstant:78.0];

    *(v46 + 40) = v52;
    v53 = [*&v15[v47] heightAnchor];
    v54 = [v53 constraintEqualToConstant:78.0];

    *(v46 + 48) = v54;
    v55 = [*&v15[v47] centerYAnchor];
    v56 = [v45 centerYAnchor];
    v57 = [v55 constraintEqualToAnchor:v56];

    *(v46 + 56) = v57;
    v58 = [*&v15[v47] centerYAnchor];
    v59 = [v15 centerYAnchor];
    v60 = [v58 constraintEqualToAnchor:v59];

    *(v46 + 64) = v60;
    v61 = [v45 leadingAnchor];
    v62 = [*&v15[v47] trailingAnchor];
    v63 = [v61 constraintEqualToAnchor:v62 constant:15.0];

    *(v46 + 72) = v63;
    v64 = [v45 trailingAnchor];

    v65 = [v15 trailingAnchor];
    v66 = [v64 constraintEqualToAnchor:v65];

    *(v46 + 80) = v66;
    *(v46 + 88) = sub_1000911D8();
    sub_1000084D4(0, &qword_10011C8E0, NSLayoutConstraint_ptr);
    v67 = Array._bridgeToObjectiveC()().super.isa;

    [v71 activateConstraints:v67];

    return v15;
  }

LABEL_7:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_1000927E8()
{
  v8.receiver = v0;
  v8.super_class = type metadata accessor for ProxCardBulletView();
  objc_msgSendSuper2(&v8, "layoutSubviews");
  v1 = OBJC_IVAR____TtC20HeadphoneProxServiceP33_DC0457E2CD3962CEA05B8D12B6872FEB18ProxCardBulletView_textView;
  [*&v0[OBJC_IVAR____TtC20HeadphoneProxServiceP33_DC0457E2CD3962CEA05B8D12B6872FEB18ProxCardBulletView_textView] bounds];
  Height = CGRectGetHeight(v9);
  v3 = *&v0[OBJC_IVAR____TtC20HeadphoneProxServiceP33_DC0457E2CD3962CEA05B8D12B6872FEB18ProxCardBulletView_assetView];
  [v3 bounds];
  CGRectGetHeight(v10);
  v4 = sub_1000911D8();
  [*&v0[v1] bounds];
  v6 = v5;
  [v3 bounds];
  v7 = CGRectGetHeight(v11);
  if (v6 > v7)
  {
    v7 = v6;
  }

  [v4 setConstant:v7];
}

id sub_10009295C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProxCardBulletView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100092A24()
{
  sub_100008438(&unk_10011D960, &qword_1000D5CF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000D5DA0;
  v1 = objc_opt_self();
  *(v0 + 32) = [v1 systemYellowColor];
  v2 = [v1 systemBlueColor];
  v3 = [v2 colorWithAlphaComponent:0.5];

  *(v0 + 40) = v3;
  sub_1000084D4(0, &qword_10011CB40, UIColor_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = [objc_opt_self() configurationWithPaletteColors:isa];

  qword_100123198 = v5;
}

void sub_100092B44()
{
  v0 = [objc_opt_self() systemBlueColor];
  v1 = [objc_opt_self() configurationWithHierarchicalColor:v0];

  qword_1001231A0 = v1;
}

id sub_100092BB8()
{
  result = [objc_opt_self() configurationWithPointSize:5 weight:52.0];
  qword_1001231A8 = result;
  return result;
}

id sub_100092C00()
{
  v1 = [objc_allocWithZone(UIStackView) init];
  [v1 setAlignment:1];
  [v1 setAxis:1];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  swift_beginAccess();
  v2 = *(v0 + 16);
  if (v2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

    v4 = 0;
    v19 = v2 & 0xFFFFFFFFFFFFFF8;
    v20 = v2 & 0xC000000000000001;
    v18 = v2;
    while (1)
    {
      if (v20)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v4 >= *(v19 + 16))
        {
          goto LABEL_14;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      [v1 addArrangedSubview:v5];
      v21 = objc_opt_self();
      sub_100008438(&unk_10011D960, &qword_1000D5CF0);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1000D5DA0;
      v9 = [v1 leadingAnchor];
      v10 = [v6 leadingAnchor];
      v11 = i;
      v12 = [v9 constraintEqualToAnchor:v10];

      *(v8 + 32) = v12;
      v13 = [v1 trailingAnchor];
      v14 = [v6 trailingAnchor];
      v15 = [v13 constraintEqualToAnchor:v14];

      *(v8 + 40) = v15;
      sub_1000084D4(0, &qword_10011C8E0, NSLayoutConstraint_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v21 activateConstraints:isa];

      i = v11;
      v2 = v18;
      ++v4;
      if (v7 == i)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_12:

  [v1 setSpacing:15.0];
  return v1;
}

uint64_t sub_100092EF0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100092F4C(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  objc_allocWithZone(type metadata accessor for ProxCardBulletView());

  sub_100091DA0(a1, a2, a3, a4, a5);
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v6 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v6 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  return v6;
}

void sub_100093050()
{
  *(v0 + OBJC_IVAR____TtC20HeadphoneProxServiceP33_DC0457E2CD3962CEA05B8D12B6872FEB18ProxCardBulletView_paddingConstraints) = _swiftEmptyArrayStorage;
  v1 = OBJC_IVAR____TtC20HeadphoneProxServiceP33_DC0457E2CD3962CEA05B8D12B6872FEB18ProxCardBulletView_textView;
  v2 = [objc_allocWithZone(UILabel) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v1) = v2;
  *(v0 + OBJC_IVAR____TtC20HeadphoneProxServiceP33_DC0457E2CD3962CEA05B8D12B6872FEB18ProxCardBulletView_assetViewSize) = 0x4053800000000000;
  *(v0 + OBJC_IVAR____TtC20HeadphoneProxServiceP33_DC0457E2CD3962CEA05B8D12B6872FEB18ProxCardBulletView____lazy_storage___heightConstraint) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_100093120(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC20HeadphoneProxService40HeadphoneAnnounceCustomizeViewController_viewModel;
  v6 = type metadata accessor for HeadphoneViewModel(0);
  (*(*(v6 - 8) + 56))(&v2[v5], 1, 1, v6);
  *&v2[OBJC_IVAR____TtC20HeadphoneProxService40HeadphoneAnnounceCustomizeViewController_presenter + 8] = 0;
  swift_unknownObjectWeakInit();
  v2[OBJC_IVAR____TtC20HeadphoneProxService40HeadphoneAnnounceCustomizeViewController_type] = 1;
  v7 = [objc_allocWithZone(UITableView) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v8 = [objc_allocWithZone(PRXScrollableContentView) initWithCardStyle:0 scrollView:v7];
  *&v2[OBJC_IVAR____TtC20HeadphoneProxService40HeadphoneAnnounceCustomizeViewController_tableView] = v7;
  v21.receiver = v2;
  v21.super_class = ObjectType;
  v9 = v7;
  v10 = objc_msgSendSuper2(&v21, "initWithContentView:", v8);
  v11 = objc_opt_self();
  v12 = v10;
  v13 = v9;
  v14 = v12;
  v15 = [v11 clearColor];
  [v13 setBackgroundColor:v15];

  [v13 setDataSource:v14];
  [v13 setDelegate:v14];

  [v13 setAllowsSelection:0];
  sub_1000084D4(0, &qword_10011EBF0, UITableViewCell_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_100008438(&qword_10011F2E8, qword_1000D9120);
  String.init<A>(describing:)();
  v17 = String._bridgeToObjectiveC()();

  [v13 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v17];

  v18 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 2.22507386e-308}];
  [v13 setTableHeaderView:v18];

  v19 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 2.22507386e-308}];
  [v13 setTableFooterView:v19];

  return v14;
}

void sub_1000934C0(uint64_t a1)
{
  v3 = sub_100008438(&qword_10011F2E0, &unk_1000D8580);
  __chkstk_darwin(v3 - 8);
  v5 = &aBlock - v4;
  sub_1000944B8(a1, &aBlock - v4);
  v6 = type metadata accessor for HeadphoneViewModel(0);
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  v7 = OBJC_IVAR____TtC20HeadphoneProxService40HeadphoneAnnounceCustomizeViewController_viewModel;
  swift_beginAccess();
  sub_10004D3E8(v5, &v1[v7]);
  swift_endAccess();
  v8 = String._bridgeToObjectiveC()();
  [v1 setTitle:v8];

  v9 = String._bridgeToObjectiveC()();
  [v1 setSubtitle:v9];

  if (*(a1 + 88))
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  [v1 setBottomTrayTitle:v10];

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v12 = String._bridgeToObjectiveC()();
  v24 = sub_100094554;
  v25 = v11;
  aBlock = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_10000C034;
  v23 = &unk_100107658;
  v13 = _Block_copy(&aBlock);
  v14 = objc_opt_self();
  v15 = [v14 actionWithTitle:v12 style:0 handler:v13];

  _Block_release(v13);

  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v17 = String._bridgeToObjectiveC()();
  v24 = sub_10009459C;
  v25 = v16;
  aBlock = _NSConcreteStackBlock;
  v21 = 1107296256;
  v22 = sub_10000C034;
  v23 = &unk_100107680;
  v18 = _Block_copy(&aBlock);
  v19 = [v14 actionWithTitle:v17 style:1 handler:v18];

  _Block_release(v18);

  [*&v1[OBJC_IVAR____TtC20HeadphoneProxService40HeadphoneAnnounceCustomizeViewController_tableView] reloadData];
}

void sub_100093884(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();

    if (v6)
    {
      a3();
      swift_unknownObjectRelease();
    }
  }
}

uint64_t type metadata accessor for HeadphoneAnnounceCustomizeViewController(uint64_t a1)
{
  result = qword_10011F208;
  if (!qword_10011F208)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000939C8(uint64_t a1)
{
  sub_100025E40(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_100093ABC(void *a1)
{
  v2 = sub_100008438(&qword_10011EBE8, &unk_1000D8B30);
  __chkstk_darwin(v2 - 8);
  v4 = &v58 - v3;
  v5 = type metadata accessor for UIBackgroundConfiguration();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for UIListContentConfiguration();
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v76 = sub_1000084D4(0, &qword_10011EBF0, UITableViewCell_ptr);
  sub_100008438(&qword_10011F2E8, qword_1000D9120);
  String.init<A>(describing:)();
  v11 = String._bridgeToObjectiveC()();

  v12 = [a1 dequeueReusableCellWithIdentifier:v11];

  if (!v12)
  {
    v12 = [objc_allocWithZone(UITableViewCell) init];
  }

  v13 = IndexPath.section.getter();
  if (v13 > 3)
  {
    return v12;
  }

  v14 = v13;
  v15 = v74 + OBJC_IVAR____TtC20HeadphoneProxService40HeadphoneAnnounceCustomizeViewController_viewModel;
  swift_beginAccess();
  v16 = type metadata accessor for HeadphoneViewModel(0);
  if ((*(*(v16 - 8) + 48))(v15, 1, v16))
  {
    return v12;
  }

  v17 = (v15 + *(v16 + 76));
  v18 = v17[5];
  v80 = v17[4];
  v81 = v18;
  v82 = v17[6];
  v19 = v17[1];
  v76 = *v17;
  v77 = v19;
  v20 = v17[3];
  v78 = v17[2];
  v79 = v20;
  v21 = *(&v76 + 1);
  if (!*(&v76 + 1))
  {
    return v12;
  }

  v68 = v4;
  v69 = v10;
  v70 = v8;
  v67 = v6;
  v71 = v5;
  v22 = *(&v79 + 1);
  v23 = *(&v80 + 1);
  v66 = v80;
  v65 = v81;
  v24 = v82;
  v61 = v78;
  v25 = *(&v78 + 1);
  v63 = v79;
  v26 = *(&v77 + 1);
  v60 = v77;
  v62 = v76;
  v64 = *(&v81 + 1);
  v27 = *(&v81 + 1);
  v59 = v24;

  v28 = v25;

  v29 = v14;
  if (v14 <= 1u)
  {
    v30 = v65;
    if (!v14)
    {
      v30 = v61;
    }

    v65 = v30;
    v31 = v64;
    if (v14)
    {
      v32 = v66;
    }

    else
    {
      v31 = v25;
      v32 = v60;
    }

    if (v29)
    {
      v33 = v23;
    }

    else
    {
      v33 = v26;
    }

    if (v29)
    {
      v34 = v22;
    }

    else
    {
      v34 = v21;
    }

    v35 = v29 == 0;
    v36 = v63;
    if (v35)
    {
      v36 = v62;
    }

    v66 = v36;
    v37 = v71;
    v38 = v70;
    v39 = v69;
    v40 = v68;
    goto LABEL_30;
  }

  v38 = v70;
  v39 = v69;
  v40 = v68;
  if (v14 == 2)
  {
    result = IndexPath.row.getter();
    v37 = v71;
    if ((result & 0x8000000000000000) == 0)
    {
      if (result < *(v59 + 16))
      {
        v41 = v59 + 48 * result;
LABEL_29:
        v34 = *(v41 + 40);
        v66 = *(v41 + 32);
        v32 = *(v41 + 48);
        v33 = *(v41 + 56);
        v65 = *(v41 + 64);
        v31 = *(v41 + 72);
LABEL_30:
        v43 = v31;
        v44 = v31;
        v69 = v43;
        v45 = v44;
        v64 = v33;
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v70 = v45;
        static UIListContentConfiguration.cell()();
        v68 = v32;
        UIListContentConfiguration.text.setter();
        UIListContentConfiguration.image.setter();
        v46 = v73;
        v75[3] = v73;
        v75[4] = &protocol witness table for UIListContentConfiguration;
        v47 = sub_10007C900(v75);
        (*(v72 + 16))(v47, v39, v46);
        UITableViewCell.contentConfiguration.setter();
        static UIBackgroundConfiguration.listGroupedCell()();
        v48 = [objc_opt_self() quaternarySystemFillColor];
        UIBackgroundConfiguration.backgroundColor.setter();
        v49 = v67;
        (*(v67 + 16))(v40, v38, v37);
        (*(v49 + 56))(v40, 0, 1, v37);
        UITableViewCell.backgroundConfiguration.setter();
        v50 = [objc_allocWithZone(UISwitch) init];
        v51 = v65 & 1;
        [v50 setOn:v65 & 1];
        sub_1000084D4(0, &qword_10011D7C0, UIAction_ptr);
        v52 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v53 = swift_allocObject();
        v54 = v66;
        *(v53 + 16) = v52;
        *(v53 + 24) = v54;
        v55 = v68;
        *(v53 + 32) = v34;
        *(v53 + 40) = v55;
        *(v53 + 48) = v64;
        *(v53 + 56) = v51;
        *(v53 + 57) = v75[0];
        *(v53 + 60) = *(v75 + 3);
        *(v53 + 64) = v69;
        *(v53 + 72) = v50;
        v56 = v50;
        v57 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
        [v56 addAction:v57 forControlEvents:4096];
        [v12 setAccessoryView:v56];

        sub_10000E950(&v76, &qword_10011EB18, &qword_1000D8960);
        (*(v49 + 8))(v38, v71);
        (*(v72 + 8))(v39, v73);
        return v12;
      }

      goto LABEL_34;
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  result = IndexPath.row.getter();
  v37 = v71;
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_33;
  }

  if (result < *(*(&v24 + 1) + 16))
  {
    v41 = *(&v24 + 1) + 48 * result;
    goto LABEL_29;
  }

LABEL_35:
  __break(1u);
  return result;
}

void sub_1000942B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = swift_unknownObjectWeakLoadStrong();

    if (v8)
    {
      sub_1000BA668(a3, [a4 isOn]);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1000944B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadphoneViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009451C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100094584(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000945CC(unint64_t a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  v2 = a1;
  v3 = v1 + OBJC_IVAR____TtC20HeadphoneProxService40HeadphoneAnnounceCustomizeViewController_viewModel;
  swift_beginAccess();
  v4 = type metadata accessor for HeadphoneViewModel(0);
  if ((*(*(v4 - 8) + 48))(v3, 1, v4))
  {
    return 0;
  }

  v6 = v3 + *(v4 + 76);
  if (!*(v6 + 8))
  {
    return 0;
  }

  if (v2 < 2u)
  {
    return 1;
  }

  v9 = v6 + 96;
  v7 = *(v6 + 96);
  v8 = *(v9 + 8);
  if (v2 != 2)
  {
    v7 = v8;
  }

  return *(v7 + 16);
}

id sub_1000946A0(uint64_t a1)
{
  v2 = type metadata accessor for UIListContentConfiguration();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 0;
  if ((a1 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v7 = [objc_allocWithZone(UITableViewHeaderFooterView) init];
    static UIListContentConfiguration.plainHeader()();
    if (a1 == 3)
    {
      v8 = 19;
    }

    else
    {
      v8 = 20;
    }

    sub_100033A5C(v8);
    UIListContentConfiguration.text.setter();
    v11[3] = v2;
    v11[4] = &protocol witness table for UIListContentConfiguration;
    v9 = sub_10007C900(v11);
    (*(v3 + 16))(v9, v5, v2);
    UITableViewHeaderFooterView.contentConfiguration.setter();
    (*(v3 + 8))(v5, v2);
    return v7;
  }

  return result;
}

uint64_t sub_1000947F4()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100094864()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011F2F0);
  v1 = sub_10000A570(v0, qword_10011F2F0);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10009492C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for HeadphoneModel(0);
  v4 = __chkstk_darwin(v3);
  v6 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v81 - v7;
  v90.receiver = v1;
  v90.super_class = ObjectType;
  objc_msgSendSuper2(&v90, "viewDidLoad");
  [v1 setDismissalType:1];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    swift_beginAccess();
    sub_1000145EC(v10 + 16, &v87);
    swift_unknownObjectRelease();
    v11 = v89;
    if (v89)
    {
      v12 = sub_10000E7E4(&v87, v89);
      v13 = *(v11 - 8);
      __chkstk_darwin(v12);
      v15 = (&v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v13 + 16))(v15);
      sub_10001465C(&v87);
      v16 = *v15;
      v17 = OBJC_IVAR____TtC20HeadphoneProxService19HeadphoneInteractor_model;
      swift_beginAccess();
      sub_10000E390(v16 + v17, v6);
      (*(v13 + 8))(v15, v11);
      sub_10000E828(v6, v8);
      v87 = 0;
      v88 = 0xE000000000000000;
      _StringGuts.grow(_:)(16);

      v87 = 0x5F6C6C6143646E45;
      v88 = 0xE800000000000000;
      v18 = *&v8[*(v3 + 136)];
      v86 = v18;
      v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v19);

      v20._countAndFlagsBits = 1598833453;
      v20._object = 0xE400000000000000;
      String.append(_:)(v20);
      v85 = v8;
      LOBYTE(v86) = v8[160];
      v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v21);

      v22 = String._bridgeToObjectiveC()();
      v23 = objc_opt_self();
      v24 = [v23 imageNamed:v22];

      if (v24)
      {
        v25 = [objc_allocWithZone(UIImageView) initWithImage:v24];
      }

      else
      {
        v30 = [objc_opt_self() b607];
        v31 = [v30 productID];

        v87 = 0x5F6C6C6143646E45;
        v88 = 0xE800000000000000;
        v86 = v18;
        v32._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v32);

        if (v18 == v31)
        {
          v33 = 0x305F4C432DLL;
        }

        else
        {
          v33 = 0x315F4C432DLL;
        }

        v34 = 0xE500000000000000;
        String.append(_:)(*&v33);
        v35 = String._bridgeToObjectiveC()();

        v36 = [v23 imageNamed:v35];

        v25 = [objc_allocWithZone(UIImageView) initWithImage:v36];
      }

      v84 = v24;
      v37 = v25;
      [v37 setTranslatesAutoresizingMaskIntoConstraints:0];
      type metadata accessor for HeadphoneEndCallViewController();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v39 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      v87 = 0;
      v88 = 0xE000000000000000;
      _StringGuts.grow(_:)(22);

      v87 = 0x5F6C6C6143646E45;
      v88 = 0xE800000000000000;
      v86 = v18;
      v40._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v40);

      v41._countAndFlagsBits = 0x50656C62756F445FLL;
      v41._object = 0xEC00000073736572;
      String.append(_:)(v41);
      v42 = objc_allocWithZone(BSUICAPackageView);
      v43 = v39;
      v44 = String._bridgeToObjectiveC()();
      v45 = [v42 initWithPackageName:v44 inBundle:v43];

      v83 = v43;
      if (v45)
      {

        v46 = v45;
        [v46 setTranslatesAutoresizingMaskIntoConstraints:0];
        v47 = [v1 contentView];
        [v47 addSubview:v37];

        v48 = [v1 contentView];
        [v48 addSubview:v46];

        v49 = [v1 contentView];
        v50 = [v49 mainContentGuide];

        v82 = objc_opt_self();
        sub_100008438(&unk_10011D960, &qword_1000D5CF0);
        v51 = swift_allocObject();
        *(v51 + 16) = xmmword_1000D63D0;
        v52 = [v37 topAnchor];
        v53 = [v50 topAnchor];
        v54 = [v52 constraintGreaterThanOrEqualToAnchor:v53];

        *(v51 + 32) = v54;
        v55 = [v37 bottomAnchor];
        v56 = [v50 bottomAnchor];
        v57 = [v55 constraintLessThanOrEqualToAnchor:v56];

        *(v51 + 40) = v57;
        v58 = [v37 centerYAnchor];
        v59 = [v50 centerYAnchor];
        v60 = [v58 constraintEqualToAnchor:v59];

        *(v51 + 48) = v60;
        v61 = [v37 centerXAnchor];

        v62 = [v50 centerXAnchor];
        v63 = [v61 constraintEqualToAnchor:v62];

        *(v51 + 56) = v63;
        v64 = [v46 topAnchor];
        v65 = [v50 topAnchor];
        v66 = [v64 constraintGreaterThanOrEqualToAnchor:v65];

        *(v51 + 64) = v66;
        v67 = [v46 bottomAnchor];
        v68 = [v50 bottomAnchor];
        v69 = [v67 constraintLessThanOrEqualToAnchor:v68];

        *(v51 + 72) = v69;
        v70 = [v46 heightAnchor];
        v71 = [v70 constraintEqualToConstant:180.0];

        *(v51 + 80) = v71;
        v72 = [v46 widthAnchor];
        v73 = [v72 constraintEqualToConstant:180.0];

        *(v51 + 88) = v73;
        v74 = [v46 centerYAnchor];
        v75 = [v50 centerYAnchor];
        v76 = [v74 constraintEqualToAnchor:v75];

        *(v51 + 96) = v76;
        v77 = [v46 centerXAnchor];

        v78 = [v50 centerXAnchor];
        v79 = [v77 constraintEqualToAnchor:v78];

        *(v51 + 104) = v79;
        sub_10000F5A0();
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v82 activateConstraints:isa];

        sub_10000E8F4(v85);
      }

      else
      {
        __break(1u);
      }

      return;
    }

    sub_10001465C(&v87);
  }

  if (qword_10011C710 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_10000A570(v26, qword_10011F2F0);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "Headphone Model is nil, exiting", v29, 2u);
  }
}

void sub_100095548()
{
  v1 = String._bridgeToObjectiveC()();
  [v0 setTitle:v1];

  v2 = String._bridgeToObjectiveC()();
  [v0 setSubtitle:v2];

  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v4 = String._bridgeToObjectiveC()();
  v17 = sub_10009597C;
  v18 = v3;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_10000C034;
  v16 = &unk_100107738;
  v5 = _Block_copy(&v13);
  v6 = objc_opt_self();
  v7 = [v6 actionWithTitle:v4 style:0 handler:v5];

  _Block_release(v5);

  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v9 = String._bridgeToObjectiveC()();
  v17 = sub_1000959C4;
  v18 = v8;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_10000C034;
  v16 = &unk_100107760;
  v10 = _Block_copy(&v13);
  v11 = [v6 actionWithTitle:v9 style:1 handler:v10];

  _Block_release(v10);

  v12 = [v0 addAction:v11];
}

void sub_100095800(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();

    if (v6)
    {
      a3();
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_100095944()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000959AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_1000959FC(__int128 *a1)
{
  v2 = v1;
  sub_1000968C8(&OBJC_IVAR____TtC20HeadphoneProxService32HeadphoneDigitalEngravingManager____lazy_storage___encoder, &type metadata accessor for JSONEncoder, &JSONEncoder.init());
  v4 = a1[1];
  v32 = *a1;
  v33 = v4;
  v34 = a1[2];
  sub_1000973AC();
  v5 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v7 = v6;

  v8 = OBJC_IVAR____TtC20HeadphoneProxService32HeadphoneDigitalEngravingManager_localStorage;
  v9 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService32HeadphoneDigitalEngravingManager_localStorage);
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 dictionaryForKey:v10];

  if (v11)
  {
    v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v12 = &_swiftEmptyDictionarySingleton;
  }

  v14 = *a1;
  v13 = *(a1 + 1);
  *(&v33 + 1) = &type metadata for Data;
  *&v32 = v5;
  *(&v32 + 1) = v7;
  sub_10004D3D8(&v32, v31);

  sub_10007B8A8(v5, v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = v12;
  sub_1000975B8(v31, v14, v13, isUniquelyReferenced_nonNull_native);
  v16 = *(v2 + v8);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v18 = String._bridgeToObjectiveC()();
  [v16 setObject:isa forKey:{v18, v30}];

  if (qword_10011C718 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_10000A570(v19, qword_10011F340);
  sub_10007B8A8(v5, v7);
  sub_100097400(a1, &v32);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  sub_100022640(v5, v7);
  sub_100097438(a1);
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *&v31[0] = swift_slowAlloc();
    *v22 = 136315394;
    *&v32 = v5;
    *(&v32 + 1) = v7;
    sub_10007B8A8(v5, v7);
    v23 = String.init<A>(reflecting:)();
    v25 = sub_100078978(v23, v24, v31);

    *(v22 + 4) = v25;
    *(v22 + 12) = 2080;
    *&v32 = v14;
    *(&v32 + 1) = v13;
    v26 = String.init<A>(reflecting:)();
    v28 = sub_100078978(v26, v27, v31);

    *(v22 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v20, v21, "Storing engraving data received from AACP %s for:%s", v22, 0x16u);
    swift_arrayDestroy();

    sub_100022640(v5, v7);
  }

  else
  {

    return sub_100022640(v5, v7);
  }

  return result;
}

void sub_100095FB0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + OBJC_IVAR____TtC20HeadphoneProxService32HeadphoneDigitalEngravingManager_localStorage);
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 dictionaryForKey:v8];

  v10 = 0uLL;
  if (!v9)
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    goto LABEL_9;
  }

  v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v11 + 16) || (v12 = sub_1000CD118(a1, a2), (v13 & 1) == 0))
  {

    goto LABEL_7;
  }

  sub_10003CE5C(*(v11 + 56) + 32 * v12, v20);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v10 = 0uLL;
    goto LABEL_9;
  }

  v15 = v24;
  v14 = v25;
  sub_1000968C8(&OBJC_IVAR____TtC20HeadphoneProxService32HeadphoneDigitalEngravingManager____lazy_storage___decoder, &type metadata accessor for JSONDecoder, &JSONDecoder.init());
  sub_10009771C();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  sub_100022640(v15, v14);

  v16 = v20[0];
  v17 = v20[1];
  v18 = v21;
  v10 = v22;
  v19 = v23;
LABEL_9:
  *a3 = v16;
  *(a3 + 8) = v17;
  *(a3 + 16) = v18;
  *(a3 + 24) = v10;
  *(a3 + 40) = v19;
}

uint64_t sub_100096394()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_10011F340);
  v1 = sub_10000A570(v0, qword_10011F340);
  if (qword_10011C638 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A570(v0, qword_100123040);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t *sub_10009645C@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_100096530()
{
  v1 = 0x6574617473;
  v2 = 0xD000000000000015;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1000965B8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100097A7C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000965F8(uint64_t a1)
{
  v2 = sub_100097910();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100096634(uint64_t a1)
{
  v2 = sub_100097910();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100096670(void *a1)
{
  v3 = v1;
  v5 = sub_100008438(&qword_10011F3B0, &unk_1000D92F0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7 - 8];
  sub_10000E7E4(a1, a1[3]);
  sub_100097910();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v12) = *(v3 + 16);
    v11[0] = 1;
    sub_100097964();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = *(v3 + 24);
    v13 = v12;
    v11[23] = 2;
    sub_1000979B8(&v13, v11);
    sub_100097A28();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100047878(v12, *(&v12 + 1));
    LOBYTE(v12) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

double sub_10009686C@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100097BE8(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_1000968C8(uint64_t *a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v8 = v3;
    a2();
    swift_allocObject();
    v6 = a3();
    *(v8 + v4) = v6;
  }

  return v6;
}

void sub_100096A14(uint64_t a1, void *a2, void *aBlock)
{
  v4 = *(a1 + 32);
  v5 = _Block_copy(aBlock);
  *(swift_allocObject() + 16) = v5;

  v6 = a2;
  v4();
}

void sub_100096ACC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v5 = isa;
  (*(a3 + 16))(a3);
}

double sub_100096BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[4] = a2;
  v9[5] = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100096CA8;
  v9[3] = &unk_100107800;
  v6 = _Block_copy(v9);
  v7 = *(a4 + 16);

  v7(a4, a1, v6);
  _Block_release(v6);

  return result;
}

double sub_100096CA8(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  if (a2)
  {

    v4 = v2;
    v2 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {

    v6 = 0xF000000000000000;
  }

  v3(v2, v6);
  sub_100047878(v2, v6);

  return result;
}

id sub_100096D40()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC20HeadphoneProxService32HeadphoneDigitalEngravingManager____lazy_storage___decoder] = 0;
  *&v0[OBJC_IVAR____TtC20HeadphoneProxService32HeadphoneDigitalEngravingManager____lazy_storage___encoder] = 0;
  v2 = &v0[OBJC_IVAR____TtC20HeadphoneProxService32HeadphoneDigitalEngravingManager_fetchEngravingDataHandler];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = objc_allocWithZone(NSUserDefaults);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 initWithSuiteName:v4];

  if (!v5)
  {
    v5 = [objc_opt_self() standardUserDefaults];
  }

  *&v0[OBJC_IVAR____TtC20HeadphoneProxService32HeadphoneDigitalEngravingManager_localStorage] = v5;
  v7.receiver = v0;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "init");
}

double sub_100096E5C(void *a1)
{
  v3 = [objc_allocWithZone(SFHeadphoneProduct) initWithProductID:{objc_msgSend(a1, "productIdentifier")}];
  if (v3)
  {
    v5 = v3;
    v6 = [v3 supportsDigitalEngraving];

    if (v6)
    {
      v7 = [a1 addressString];
      if (v7)
      {
        v8 = v7;
        v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v11 = v10;

        sub_100095FB0(v9, v11, v16);
        if (v16[1])
        {
          sub_1000977F4(v16);
        }

        else
        {
          *&v17 = v9;
          *(&v17 + 1) = v11;
          v18 = 0;
          v19 = xmmword_1000D78D0;
          v20 = 0;

          sub_1000959FC(&v17);

          sub_100047878(0, 0xF000000000000000);
          v12 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService32HeadphoneDigitalEngravingManager_fetchEngravingDataHandler);
          if (v12)
          {
            v13 = *(v1 + OBJC_IVAR____TtC20HeadphoneProxService32HeadphoneDigitalEngravingManager_fetchEngravingDataHandler + 8);
            v14 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v15 = swift_allocObject();
            v15[2] = v9;
            v15[3] = v11;
            v15[4] = v14;
            sub_100062D70(v12, v13);

            v12(a1, sub_1000977E8, v15);
            sub_1000622D4(v12, v13);
          }

          else
          {
          }
        }
      }
    }
  }

  return result;
}

double sub_100097088(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 >> 60 != 15)
  {
    v30 = v5;
    v31 = v6;
    sub_10007B8A8(a1, a2);
    if (qword_10011C718 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000A570(v11, qword_10011F340);
    sub_10007B8A8(a1, a2);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    sub_100047878(a1, a2);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24[0] = v23;
      *v14 = 136315138;
      *&v25 = a1;
      *(&v25 + 1) = a2;
      sub_10007B8A8(a1, a2);
      v15 = String.init<A>(reflecting:)();
      v17 = a4;
      v18 = a3;
      v19 = sub_100078978(v15, v16, v24);

      *(v14 + 4) = v19;
      a3 = v18;
      a4 = v17;
      _os_log_impl(&_mh_execute_header, v12, v13, "Engraving data received from AACP %s", v14, 0xCu);
      sub_10000EA94(v23);
    }

    *&v25 = a3;
    *(&v25 + 1) = a4;
    v26 = 1;
    v27 = a1;
    v28 = a2;
    v29 = 0;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v21 = Strong;

      sub_1000959FC(&v25);

      sub_100047878(a1, a2);
    }

    else
    {
      return sub_100047878(a1, a2);
    }
  }

  return result;
}

unint64_t sub_1000973AC()
{
  result = qword_10011F3A0;
  if (!qword_10011F3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011F3A0);
  }

  return result;
}

unint64_t sub_100097468(char a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1000CD190(a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_10004F5B4();
      v13 = v21;
      goto LABEL_8;
    }

    sub_10004EE10(v18, a5 & 1);
    v13 = sub_1000CD190(a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = v23[7] + 24 * v13;
    v25 = *(v24 + 8);
    *v24 = a1;
    *(v24 + 8) = a2;
    v26 = *(v24 + 16);
    *(v24 + 16) = a3;

    return sub_100097708(v25, v26);
  }

  else
  {

    return sub_10004F388(v13, a4, a1, a2, a3, v23);
  }
}

void sub_1000975B8(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000CD118(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_10004F730();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10004F0D0(v16, a4 & 1);
    v11 = sub_1000CD118(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_10000EA94(v22);

    sub_10004D3D8(a1, v22);
  }

  else
  {
    sub_10004F3DC(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_100097708(uint64_t result, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
    return swift_unknownObjectRelease();
  }

  return v2;
}

unint64_t sub_10009771C()
{
  result = qword_10011F3A8;
  if (!qword_10011F3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011F3A8);
  }

  return result;
}

uint64_t sub_100097770()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000977A8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000977F4(uint64_t a1)
{
  v2 = sub_100008438(&qword_10011EB10, &qword_1000D91E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100097864(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10009787C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000978BC(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1000978D8(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

unint64_t sub_100097910()
{
  result = qword_10011F3B8;
  if (!qword_10011F3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011F3B8);
  }

  return result;
}

unint64_t sub_100097964()
{
  result = qword_10011F3C0;
  if (!qword_10011F3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011F3C0);
  }

  return result;
}

uint64_t sub_1000979B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100008438(&qword_10011EAF0, &qword_1000D8908);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100097A28()
{
  result = qword_10011F3C8;
  if (!qword_10011F3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011F3C8);
  }

  return result;
}

uint64_t sub_100097A7C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001000E1740 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001000E1760 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001000E1780 == a2)
  {

    return 3;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void sub_100097BE8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100008438(&qword_10011F3D0, &qword_1000D9300);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  sub_10000E7E4(a1, a1[3]);
  sub_100097910();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_10000EA94(a1);
  }

  else
  {
    LOBYTE(v18) = 0;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = v10;
    v17 = v9;
    v21 = 1;
    sub_100097EC4();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v12 = v18;
    v21 = 2;
    sub_100097F18();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v20 = v12;
    v13 = v19;
    v16 = v18;
    LOBYTE(v18) = 3;
    v14 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v6 + 8))(v8, v5);

    v15 = v16;
    sub_10007CE0C(v16, v13);
    sub_10000EA94(a1);

    sub_100047878(v15, v13);
    *a2 = v17;
    *(a2 + 8) = v11;
    *(a2 + 16) = v20;
    *(a2 + 24) = v15;
    *(a2 + 32) = v13;
    *(a2 + 40) = v14;
  }
}

unint64_t sub_100097EC4()
{
  result = qword_10011F3D8;
  if (!qword_10011F3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011F3D8);
  }

  return result;
}

unint64_t sub_100097F18()
{
  result = qword_10011F3E0;
  if (!qword_10011F3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011F3E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HeadphoneDigitalEngravingManager.Record.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HeadphoneDigitalEngravingManager.Record.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000980D0()
{
  result = qword_10011F3E8;
  if (!qword_10011F3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011F3E8);
  }

  return result;
}

unint64_t sub_100098128()
{
  result = qword_10011F3F0;
  if (!qword_10011F3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011F3F0);
  }

  return result;
}

unint64_t sub_100098180()
{
  result = qword_10011F3F8;
  if (!qword_10011F3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011F3F8);
  }

  return result;
}

unint64_t sub_1000981D8()
{
  result = qword_10011F400;
  if (!qword_10011F400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011F400);
  }

  return result;
}

unint64_t sub_10009822C()
{
  result = qword_10011F408;
  if (!qword_10011F408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011F408);
  }

  return result;
}

uint64_t sub_10009828C()
{
  v0 = type metadata accessor for Logger();
  sub_10000E32C(v0, qword_1001231C0);
  sub_10000A570(v0, qword_1001231C0);
  return Logger.init(subsystem:category:)();
}

void *sub_100098310()
{
  v1 = v0;
  v19 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v19 - 8);
  __chkstk_darwin(v19);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  v0[2] = &_swiftEmptySetSingleton;
  v0[4] = 0;
  swift_unknownObjectWeakInit();
  v0[6] = 0;
  v0[8] = 0;
  v0[9] = 0;
  v0[10] = [objc_allocWithZone(NISession) init];
  v0[11] = 0;
  v7 = sub_1000084D4(0, &qword_10011D240, OS_dispatch_queue_ptr);
  v18[1] = "v48@0:8@16@24@32@40";
  v18[2] = v7;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10009BAF8(&qword_10011F640, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100008438(&qword_10011F648, &qword_1000D98F0);
  sub_10009BB40(&qword_10011F650, &qword_10011F648, &qword_1000D98F0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v19);
  v8 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v9 = v0[6];
  v0[6] = v8;

  v0[7] = [objc_allocWithZone(CBDiscovery) init];
  v0[5] = [objc_allocWithZone(type metadata accessor for NISessionDelegate()) init];
  swift_weakAssign();
  v10 = v0[7];

  v11 = v10;
  v12 = String._bridgeToObjectiveC()();
  [v11 setLabel:v12];

  [v1[7] setDiscoveryFlags:0x4000];
  [v1[7] clearDuplicateFilterCache];
  v13 = v1[7];
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = v13;

  aBlock[4] = sub_10009B168;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000A2630;
  aBlock[3] = &unk_100107A48;
  v16 = _Block_copy(aBlock);

  [v15 setDeviceFoundHandler:v16];
  _Block_release(v16);

  return v1;
}

void sub_100098740(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [a1 identifier];
    if (v5)
    {
      v6 = v5;
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;

      v10 = *(v4 + 72);
      if (v9)
      {
        if (v10)
        {
          if (v7 == *(v4 + 64) && v10 == v9)
          {

LABEL_28:
            if (qword_10011C720 != -1)
            {
              swift_once();
            }

            v31 = type metadata accessor for Logger();
            sub_10000A570(v31, qword_1001231C0);
            v32 = a1;
            v15 = Logger.logObject.getter();
            v16 = static os_log_type_t.debug.getter();

            if (!os_log_type_enabled(v15, v16))
            {
              goto LABEL_33;
            }

            v17 = swift_slowAlloc();
            v18 = swift_slowAlloc();
            *v17 = 138412290;
            *(v17 + 4) = v32;
            *v18 = v32;
            v33 = v32;
            v20 = "Ignoring advertisements from an already displayed device %@";
            goto LABEL_32;
          }

          v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v12)
          {
            goto LABEL_28;
          }
        }

        else
        {
        }

LABEL_15:
        if (sub_10009B188([a1 proximityPairingProductID]) & 1) != 0 || (sub_10009B1A8(objc_msgSend(a1, "proximityPairingProductID")))
        {
          if (qword_10011C720 != -1)
          {
            swift_once();
          }

          v13 = type metadata accessor for Logger();
          sub_10000A570(v13, qword_1001231C0);
          v14 = a1;
          v15 = Logger.logObject.getter();
          v16 = static os_log_type_t.default.getter();

          if (!os_log_type_enabled(v15, v16))
          {
            goto LABEL_33;
          }

          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          *v17 = 138412290;
          *(v17 + 4) = v14;
          *v18 = v14;
          v19 = v14;
          v20 = "Ignoring advertisements from W1/W2 device %@";
        }

        else
        {
          sub_1000084D4(0, &qword_10011F658, NIBluetoothSample_ptr);
          v21 = a1;
          v22 = sub_100098C78(v21);
          if (v22)
          {
            v15 = v22;
            v23 = [*(v4 + 80) devicePresenceNotifier];
            [v23 notifyBluetoothSample:v15];

            if (qword_10011C720 != -1)
            {
              swift_once();
            }

            v24 = type metadata accessor for Logger();
            sub_10000A570(v24, qword_1001231C0);
            v25 = v21;
            v26 = Logger.logObject.getter();
            v27 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v26, v27))
            {
              v28 = swift_slowAlloc();
              v29 = swift_slowAlloc();
              *v28 = 138412290;
              *(v28 + 4) = v25;
              *v29 = v25;
              v30 = v25;
              _os_log_impl(&_mh_execute_header, v26, v27, "Notified NI Sample for device: %@", v28, 0xCu);
              sub_10000E950(v29, &unk_10011D820, &qword_1000D7280);
            }

            goto LABEL_34;
          }

          if (qword_10011C720 != -1)
          {
            swift_once();
          }

          v34 = type metadata accessor for Logger();
          sub_10000A570(v34, qword_1001231C0);
          v35 = v21;
          v15 = Logger.logObject.getter();
          v16 = static os_log_type_t.error.getter();

          if (!os_log_type_enabled(v15, v16))
          {
LABEL_33:

LABEL_34:

            return;
          }

          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          *v17 = 138412290;
          *(v17 + 4) = v35;
          *v18 = v35;
          v36 = v35;
          v20 = "Couldn't create BTSample for device: %@";
        }

LABEL_32:
        _os_log_impl(&_mh_execute_header, v15, v16, v20, v17, 0xCu);
        sub_10000E950(v18, &unk_10011D820, &qword_1000D7280);

        goto LABEL_33;
      }
    }

    else
    {
      v10 = *(v4 + 72);
    }

    if (!v10)
    {
      goto LABEL_28;
    }

    goto LABEL_15;
  }
}

id sub_100098C78(void *a1)
{
  v2 = [a1 identifier];
  if (v2)
  {
    v3 = v2;
    v4 = [a1 bleRSSI];
    v5 = [a1 model];
    if (v5)
    {
      v6 = v5;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v17 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v18 = v4;
    v19 = String._bridgeToObjectiveC()();

    v20 = [v17 initWithRSSI:v3 identifier:v19 model:objc_msgSend(a1 channel:"bleChannel") machContinuousTimeSeconds:{v18, mach_continuous_time()}];
  }

  else
  {
    if (qword_10011C720 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000A570(v7, qword_1001231C0);
    v8 = a1;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v22 = v12;
      *v11 = 136315138;
      sub_1000084D4(0, &qword_10011EA60, CBDevice_ptr);
      v13 = v8;
      v14 = String.init<A>(reflecting:)();
      v16 = sub_100078978(v14, v15, &v22);

      *(v11 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v9, v10, "Can't create NIBTSample for device: %s. No stableIdentifier.", v11, 0xCu);
      sub_10000EA94(v12);
    }

    else
    {
    }

    return 0;
  }

  return v20;
}

void sub_100098F00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v24 = &type metadata for AudioAccessoryFeatures;
  v25 = sub_10009B230();
  LOBYTE(v23[0]) = 1;
  v6 = isFeatureEnabled(_:)();
  sub_10000EA94(v23);
  if (v6)
  {
    if (a2)
    {
      v3[8] = a1;
      v3[9] = a2;

      if (qword_10011C720 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      sub_10000A570(v7, qword_1001231C0);

      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v23[0] = v11;
        *v10 = 136315138;
        v12 = _typeName(_:qualified:)();
        v14 = sub_100078978(v12, v13, v23);

        *(v10 + 4) = v14;
        _os_log_impl(&_mh_execute_header, v8, v9, "%s: Scan starting", v10, 0xCu);
        sub_10000EA94(v11);
      }

      sub_100099938();
      v15 = v3[7];
      v25 = sub_1000992FC;
      v26 = 0;
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 1107296256;
      v23[2] = sub_10006AF20;
      v24 = &unk_100107AC0;
      v16 = _Block_copy(v23);
      [v15 activateWithCompletion:v16];
      _Block_release(v16);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        v20 = "Scan Started";
LABEL_17:
        _os_log_impl(&_mh_execute_header, v17, v18, v20, v19, 2u);
      }
    }

    else
    {
      if (qword_10011C720 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_10000A570(v22, qword_1001231C0);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        v20 = "Invalid Identifier";
        goto LABEL_17;
      }
    }
  }

  else
  {
    if (qword_10011C720 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000A570(v21, qword_1001231C0);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = "Feature Flag is disabled";
      goto LABEL_17;
    }
  }
}