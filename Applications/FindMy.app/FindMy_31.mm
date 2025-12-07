void sub_1003446B8(uint64_t a1, uint64_t a2)
{
  v25.receiver = v2;
  v25.super_class = type metadata accessor for FMSettingsUpdateViewController();
  objc_msgSendSuper2(&v25, "viewDidLayoutSubviews");
  v3 = *&v2[OBJC_IVAR____TtC6FindMy30FMSettingsUpdateViewController_heightConstraint];
  if (v3)
  {
    v4 = v3;
    v5 = [v2 view];
    if (v5)
    {
      v6 = v5;
      [v5 frame];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;

      v26.origin.x = v8;
      v26.origin.y = v10;
      v26.size.width = v12;
      v26.size.height = v14;
      Height = CGRectGetHeight(v26);
      v16 = [v2 view];
      if (v16)
      {
        v17 = v16;
        [v16 safeAreaInsets];
        v19 = v18;

        v20 = [v2 view];
        if (v20)
        {
          v21 = v20;
          v22 = Height - v19;
          [v20 safeAreaInsets];
          v24 = v23;

          [v4 setConstant:v22 - v24];
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

void sub_100344944()
{
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy30FMSettingsUpdateViewController_heightConstraint);
}

id sub_1003449B4(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for FMSettingsUpdateViewController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_100344A88()
{
  v1 = OBJC_IVAR____TtC6FindMy30FMSettingsUpdateViewController_contentStackView;
  *(v0 + v1) = [objc_allocWithZone(UIStackView) init];
  v2 = OBJC_IVAR____TtC6FindMy30FMSettingsUpdateViewController_button;
  *(v0 + v2) = [objc_opt_self() buttonWithType:1];
  v3 = OBJC_IVAR____TtC6FindMy30FMSettingsUpdateViewController_scrollView;
  *(v0 + v3) = [objc_allocWithZone(UIScrollView) init];
  v4 = OBJC_IVAR____TtC6FindMy30FMSettingsUpdateViewController_scrollContentView;
  *(v0 + v4) = [objc_allocWithZone(UIView) init];
  *(v0 + OBJC_IVAR____TtC6FindMy30FMSettingsUpdateViewController_heightConstraint) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_100344B8C@<X0>(NSString *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, int a7@<W6>, uint64_t *a8@<X8>)
{
  v304 = a7;
  v312 = a6;
  v323 = a5;
  v324 = a4;
  v319 = a1;
  v11 = sub_10007EBC0(&unk_1006B0000, &unk_100552AA0);
  __chkstk_darwin(v11 - 8);
  v300 = &v282 - v12;
  v302 = type metadata accessor for Date();
  v301 = *(v302 - 8);
  __chkstk_darwin(v302);
  v293 = &v282 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v294 = &v282 - v15;
  v315 = type metadata accessor for FMIPItemState();
  v298 = *(v315 - 1);
  __chkstk_darwin(v315);
  v314 = &v282 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v313 = (&v282 - v18);
  v297 = type metadata accessor for FMIPItemBatteryStatus();
  v296 = *(v297 - 8);
  __chkstk_darwin(v297);
  v303 = &v282 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10007EBC0(&unk_1006C0220, qword_100553770);
  __chkstk_darwin(v20 - 8);
  v299 = &v282 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v295 = &v282 - v23;
  v286 = type metadata accessor for PersonNameComponents();
  v285 = *(v286 - 8);
  __chkstk_darwin(v286);
  v282 = &v282 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v284 = &v282 - v26;
  v311 = type metadata accessor for FMIPBeaconShareState();
  v307 = *(v311 - 8);
  __chkstk_darwin(v311);
  v291 = &v282 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v292 = &v282 - v29;
  __chkstk_darwin(v30);
  v290 = &v282 - v31;
  __chkstk_darwin(v32);
  *&v306 = &v282 - v33;
  v34 = type metadata accessor for FMIPBeaconShare();
  v35 = *(v34 - 1);
  __chkstk_darwin(v34);
  v305 = &v282 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v39 = &v282 - v38;
  v40 = sub_10007EBC0(&unk_1006C0240, &unk_1005534D0);
  __chkstk_darwin(v40 - 8);
  v308 = &v282 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v44 = &v282 - v43;
  __chkstk_darwin(v45);
  v47 = &v282 - v46;
  v48 = type metadata accessor for FMItemCellViewModel(0);
  v49 = (a8 + *(v48 + 104));
  v49->_countAndFlagsBits = 0;
  v49->_object = 0;
  v288 = v49;
  v322 = v48;
  v50 = (a8 + *(v48 + 108));
  v50->_countAndFlagsBits = 0;
  v50->_object = 0;
  v289 = v50;
  v51 = v35;
  sub_100007204(a3, v47, &unk_1006C0240, &unk_1005534D0);
  v53 = *(v35 + 48);
  v52 = (v35 + 48);
  v316 = v53;
  if (v53(v47, 1, v34) == 1)
  {
    sub_100012DF0(v47, &unk_1006C0240, &unk_1005534D0);
    v309 = FMIPItem.owner.getter();
    v55 = v54;
  }

  else
  {
    v309 = FMIPBeaconShare.ownerHandle.getter();
    v55 = v56;
    (v51[1])(v47, v34);
  }

  v318 = v55;
  sub_100007204(a3, v44, &unk_1006C0240, &unk_1005534D0);
  v57 = v316(v44, 1, v34);
  v317 = a3;
  if (v57 == 1)
  {
    sub_100012DF0(v44, &unk_1006C0240, &unk_1005534D0);
    v58 = 0;
  }

  else
  {
    v59 = FMIPBeaconShare.requiresResponse.getter();
    v60 = v44;
    v58 = v59;
    (v51[1])(v60, v34);
  }

  v61 = v322;
  *(a8 + v322[20]) = v324;
  *(a8 + 64) = 1;

  a8[2] = FMIPItem.identifier.getter();
  a8[3] = v62;
  a8[4] = v323;
  a8[7] = 0x4040800000000000;
  v287 = v61[23];
  *(a8 + v287) = v58 & 1;
  *(a8 + v61[25]) = 0;
  *(a8 + 65) = 0;
  v63 = (a8 + v61[17]);
  v64 = a2;
  v65 = v309;
  v66 = v318;
  *v63 = v309;
  v63[1] = v66;
  v320 = v64;
  v321 = a8;
  v323 = v51;
  LODWORD(v310) = v58;
  if (v58)
  {

    v67 = 0;
    v68 = v317;
    goto LABEL_28;
  }

  v69 = objc_opt_self();

  v70 = [v69 SPOwner];
  v71 = [v70 destination];

  v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v74 = v73;

  if (v65 == v72 && v318 == v74)
  {
  }

  else
  {
    v75 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v75 & 1) == 0)
    {
      v67 = 3;
      LOBYTE(v58) = v310;
      v68 = v317;
      goto LABEL_28;
    }
  }

  v76 = v324;
  v77 = v324[2];
  v68 = v317;
  if (v77)
  {
    v78 = 0;
    v79 = v51;
    v80 = v324 + ((*(v51 + 80) + 32) & ~*(v51 + 80));
    v283 = (v307 + 8);
    v81 = (v79 + 1);
    while (v78 < v76[2])
    {
      (v323[2])(v39, &v80[v323[9] * v78], v34);
      v74 = v39;
      if (FMIPBeaconShare.delegationStatus.getter() & 1) != 0 || (v74 = v39, (FMIPBeaconShare.amOwner.getter() & 1) == 0) || (v74 = v39, (FMIPBeaconShare.isDefaultOwnedShare.getter()))
      {
        (*v81)(v39, v34);
      }

      else
      {
        v82 = v52;
        v83 = v34;
        v84 = v306;
        FMIPBeaconShare.state.getter();
        v74 = FMIPBeaconShareState.isActive.getter();
        v85 = v84;
        v34 = v83;
        v52 = v82;
        (*v283)(v85, v311);
        (*v81)(v39, v34);
        if (v74)
        {
          v67 = 2;
LABEL_24:
          a8 = v321;
          v68 = v317;
          v51 = v323;
          goto LABEL_26;
        }
      }

      ++v78;
      v76 = v324;
      if (v77 == v78)
      {
        v67 = 1;
        goto LABEL_24;
      }
    }

    __break(1u);
    goto LABEL_116;
  }

  v67 = 1;
LABEL_26:
  LOBYTE(v58) = v310;
LABEL_28:
  *(a8 + v322[21]) = v67;
  v86 = v308;
  sub_100007204(v68, v308, &unk_1006C0240, &unk_1005534D0);
  v87 = v316(v86, 1, v34);
  LODWORD(v306) = v67;
  if (v87 == 1)
  {

    sub_100012DF0(v86, &unk_1006C0240, &unk_1005534D0);
    goto LABEL_42;
  }

  v88 = v86;
  v89 = v305;
  (v51[4])(v305, v88, v34);
  if (v58)
  {
    v90 = v322;
    v91 = v322[19];
    FMIPBeaconShare.identifier.getter();
    v92 = type metadata accessor for UUID();
    (*(*(v92 - 8) + 56))(v321 + v91, 0, 1, v92);
    v93 = objc_opt_self();
    v94 = [v93 mainBundle];
    v325._object = 0x800000010057D3F0;
    v95._countAndFlagsBits = 0xD000000000000024;
    v95._object = 0x8000000100592400;
    v96.value._object = 0x800000010057D3D0;
    v325._countAndFlagsBits = 0xD000000000000018;
    v96.value._countAndFlagsBits = 0xD000000000000013;
    v97._countAndFlagsBits = 0;
    v97._object = 0xE000000000000000;
    v98 = NSLocalizedString(_:tableName:bundle:value:comment:)(v95, v96, v94, v97, v325);

    *v288 = v98;
    v321[6] = 0;
    v321[5] = 0;
    *(v321 + v90[28]) = 0;
    v316 = v93;
    v99 = [v93 mainBundle];
    v315 = 0x800000010057D3F0;
    v326._object = 0x800000010057D3F0;
    v100._countAndFlagsBits = 0xD000000000000025;
    v100._object = 0x8000000100592430;
    v308 = "SHARE_ITEM_STOP_SHARE_ERROR";
    v101.value._object = 0x800000010057D3D0;
    v103 = v320;
    v102 = v321;
    v326._countAndFlagsBits = 0xD000000000000018;
    v101.value._countAndFlagsBits = 0xD000000000000013;
    v104._countAndFlagsBits = 0;
    v104._object = 0xE000000000000000;
    v105 = NSLocalizedString(_:tableName:bundle:value:comment:)(v100, v101, v99, v104, v326);

    *v289 = v105;
    *v102 = 0;
    v102[1] = 0;
    *(v102 + v287) = 1;
    *(v102 + v90[24]) = 0;
    *(v102 + v90[22]) = 0;
    v102[9] = 0;
    *(v102 + v90[30]) = 0;
    *(v102 + v90[29]) = 0;
    *(v102 + 10) = sub_10034D1C8(v103, 1);
    static Date.distantFuture.getter();
    v106 = v290;
    FMIPBeaconShare.state.getter();
    v107 = v292;
    FMIPBeaconShareState.baseState.getter();
    v108 = v307;
    v109 = (v307 + 8);
    v110 = *(v307 + 8);
    v111 = v311;
    v110(v106, v311);
    v112 = *(v108 + 88);
    v307 = v108 + 88;
    v310 = v112;
    v113 = v112(v107, v111);
    v313 = v110;
    v314 = v109;
    if (v113 == enum case for FMIPBeaconShareState.invitationReceived(_:))
    {

      dispatch thunk of FMFManager.contactsController.getter();
      FMIPBeaconShare.ownerHandle.getter();
      v114 = dispatch thunk of FMFContactsDataController.lookupSlimContact(byHandle:)();

      v324 = v114;
      if (v114)
      {
        v115 = v114;
        v116 = v284;
        PersonNameComponents.init()();
        if ([v115 isKeyAvailable:CNContactNicknameKey])
        {
          v117 = [v115 nickname];
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          PersonNameComponents.nickname.setter();
        }

        if ([v115 isKeyAvailable:CNContactGivenNameKey])
        {
          v118 = [v115 givenName];
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          PersonNameComponents.givenName.setter();
        }

        if ([v115 isKeyAvailable:CNContactFamilyNameKey])
        {
          v119 = [v115 familyName];
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          PersonNameComponents.familyName.setter();
        }

        v120 = objc_opt_self();
        isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
        v122 = [v120 localizedStringFromPersonNameComponents:isa style:1 options:0];

        v309 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v124 = v123;

        (*(v285 + 8))(v116, v286);

        v318 = v124;
      }

      v125 = [v316 mainBundle];
      v327._object = v315;
      v126._countAndFlagsBits = 0xD000000000000023;
      v126._object = 0x80000001005924C0;
      v127 = v308;
      v128.value._object = (v308 | 0x8000000000000000);
      v327._countAndFlagsBits = 0xD000000000000018;
      v128.value._countAndFlagsBits = 0xD000000000000013;
      v129._countAndFlagsBits = 0;
      v129._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v126, v128, v125, v129, v327);

      sub_10007EBC0(&unk_1006B20B0, &unk_1005523B0);
      v130 = swift_allocObject();
      v306 = xmmword_100552220;
      *(v130 + 16) = xmmword_100552220;
      v131 = FMIPItem.name.getter();
      v133 = v132;
      *(v130 + 56) = &type metadata for String;
      v134 = sub_10008EE84();
      *(v130 + 64) = v134;
      *(v130 + 32) = v131;
      *(v130 + 40) = v133;
      v135 = String.init(format:_:)();
      v137 = v136;

      v138 = v321;
      v321[13] = v135;
      v138[14] = v137;
      v139 = [v316 mainBundle];
      v328._object = v315;
      v140._countAndFlagsBits = 0xD000000000000026;
      v140._object = 0x80000001005924F0;
      v141.value._object = (v127 | 0x8000000000000000);
      v328._countAndFlagsBits = 0xD000000000000018;
      v141.value._countAndFlagsBits = 0xD000000000000013;
      v142._countAndFlagsBits = 0;
      v142._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v140, v141, v139, v142, v328);

      v143 = swift_allocObject();
      *(v143 + 16) = v306;
      *(v143 + 56) = &type metadata for String;
      *(v143 + 64) = v134;
      v102 = v138;
      v103 = v320;
      v144 = v318;
      *(v143 + 32) = v309;
      *(v143 + 40) = v144;
      v145 = String.init(format:_:)();
      v147 = v146;

      v102[11] = v145;
      v102[12] = v147;
    }

    else
    {
      if (v113 != enum case for FMIPBeaconShareState.requestReceived(_:))
      {

        v102[13] = FMIPItem.name.getter();
        v102[14] = v174;
        v175 = sub_10034C388(v103, v324, v306, v304 & 1, v319);
        v177 = v176;
        v179 = v178;
        v181 = v180;

        if (v177)
        {
          v182 = [v316 mainBundle];
          v329._object = 0x800000010057DBA0;
          v103 = v320;
          v183._countAndFlagsBits = 0xD000000000000027;
          v183._object = 0x800000010057DB70;
          v329._countAndFlagsBits = 0xD000000000000039;
          v184._countAndFlagsBits = 0;
          v184._object = 0xE000000000000000;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v183, 0, v182, v184, v329);

          sub_10007EBC0(&unk_1006B20B0, &unk_1005523B0);
          v185 = swift_allocObject();
          *(v185 + 16) = xmmword_100552210;
          *(v185 + 56) = &type metadata for String;
          v186 = sub_10008EE84();
          *(v185 + 32) = v175;
          *(v185 + 40) = v177;
          *(v185 + 96) = &type metadata for String;
          *(v185 + 104) = v186;
          v102 = v321;
          *(v185 + 64) = v186;
          *(v185 + 72) = v179;
          *(v185 + 80) = v181;
          v111 = v311;
          v179 = String.init(format:_:)();
          v181 = v187;
        }

        v188 = v291;
        v189 = v323;
        v190 = v310;
        v102[11] = v179;
        v102[12] = v181;
        v191 = v313;
        v313(v292, v111);
LABEL_74:
        v217 = v305;
        FMIPBeaconShare.state.getter();

        sub_100012DF0(v317, &unk_1006C0240, &unk_1005534D0);
        v218 = type metadata accessor for FMIPItem();
        (*(*(v218 - 8) + 8))(v103, v218);
        (v189[1])(v217, v34);
        result = v190(v188, v111);
        if (result == enum case for FMIPBeaconShareState.accepting(_:))
        {
          result = v191(v188, v111);
          v220 = v322[18];
          v221 = 1;
        }

        else
        {
          if (result == enum case for FMIPBeaconShareState.declining(_:))
          {
            result = v191(v188, v111);
            v220 = v322[18];
          }

          else
          {
            v220 = v322[18];
            if (result != enum case for FMIPBeaconShareState.withdrawing(_:))
            {
              *(v102 + v220) = 0;
              return v191(v188, v111);
            }
          }

          v221 = 2;
        }

        *(v102 + v220) = v221;
        return result;
      }

      dispatch thunk of FMFManager.contactsController.getter();
      FMIPBeaconShare.shareeHandle.getter();
      v164 = dispatch thunk of FMFContactsDataController.lookupSlimContact(byHandle:)();

      if (v164)
      {
        v165 = v164;
        v166 = v282;
        PersonNameComponents.init()();
        if ([v165 isKeyAvailable:CNContactNicknameKey])
        {
          v167 = [v165 nickname];
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          PersonNameComponents.nickname.setter();
        }

        if ([v165 isKeyAvailable:CNContactGivenNameKey])
        {
          v168 = [v165 givenName];
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          PersonNameComponents.givenName.setter();
        }

        if ([v165 isKeyAvailable:CNContactFamilyNameKey])
        {
          v169 = [v165 familyName];
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          PersonNameComponents.familyName.setter();
        }

        v170 = objc_opt_self();
        v171 = PersonNameComponents._bridgeToObjectiveC()().super.isa;
        v172 = [v170 localizedStringFromPersonNameComponents:v171 style:1 options:0];

        v318 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v309 = v173;

        (*(v285 + 8))(v166, v286);
        v324 = v165;
      }

      else
      {
        v318 = FMIPBeaconShare.shareeHandle.getter();
        v309 = v192;
        v324 = 0;
      }

      v193 = [v316 mainBundle];
      v194 = v315;
      v330._object = v315;
      v195._countAndFlagsBits = 0xD000000000000020;
      v195._object = 0x8000000100592460;
      v196 = v308;
      v197.value._object = (v308 | 0x8000000000000000);
      v330._countAndFlagsBits = 0xD000000000000018;
      v197.value._countAndFlagsBits = 0xD000000000000013;
      v198._countAndFlagsBits = 0;
      v198._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v195, v197, v193, v198, v330);

      sub_10007EBC0(&unk_1006B20B0, &unk_1005523B0);
      v199 = swift_allocObject();
      v306 = xmmword_100552220;
      *(v199 + 16) = xmmword_100552220;
      v200 = FMIPItem.name.getter();
      v202 = v201;
      *(v199 + 56) = &type metadata for String;
      v203 = sub_10008EE84();
      *(v199 + 64) = v203;
      *(v199 + 32) = v200;
      *(v199 + 40) = v202;
      v204 = String.init(format:_:)();
      v206 = v205;

      v207 = v321;
      v321[13] = v204;
      v207[14] = v206;
      v208 = [v316 mainBundle];
      v331._object = v194;
      v209._countAndFlagsBits = 0xD000000000000023;
      v209._object = 0x8000000100592490;
      v210.value._object = (v196 | 0x8000000000000000);
      v331._countAndFlagsBits = 0xD000000000000018;
      v210.value._countAndFlagsBits = 0xD000000000000013;
      v211._countAndFlagsBits = 0;
      v211._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v209, v210, v208, v211, v331);

      v212 = swift_allocObject();
      *(v212 + 16) = v306;
      *(v212 + 56) = &type metadata for String;
      *(v212 + 64) = v203;
      v103 = v320;
      v102 = v207;
      v213 = v309;
      *(v212 + 32) = v318;
      *(v212 + 40) = v213;
      v214 = String.init(format:_:)();
      v216 = v215;

      v207[11] = v214;
      v207[12] = v216;
    }

    v190 = v310;
    v111 = v311;
    v188 = v291;
    v189 = v323;
    v191 = v313;
    goto LABEL_74;
  }

  (v51[1])(v89, v34);
LABEL_42:
  v148 = v322;
  *(a8 + v322[22]) = 1;
  *(a8 + v148[18]) = 0;
  v149 = v295;
  FMIPItem.location.getter();
  v39 = type metadata accessor for FMIPLocation();
  v150 = *(v39 - 1);
  v52 = (v150 + 48);
  v34 = *(v150 + 48);
  v151 = (v34)(v149, 1, v39);
  v81 = v314;
  v309 = v150;
  if (v151 != 1)
  {
    v74 = FMIPLocation.location.getter();
    (*(v150 + 8))(v149, v39);
    if (!v312)
    {

      goto LABEL_48;
    }

    v152 = qword_1006AEC58;
    v78 = v312;
    if (v152 == -1)
    {
LABEL_46:
      v153 = [qword_1006D48A8 localizedDistanceFromLocation:v74 toLocation:v78];
      v308 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      object = v154;

      [v74 distanceFromLocation:v78];
      v157 = v156;

      v158 = round(v157 / 10.0);
      a8 = v321;
      goto LABEL_49;
    }

LABEL_116:
    swift_once();
    goto LABEL_46;
  }

  sub_100012DF0(v149, &unk_1006C0220, qword_100553770);
LABEL_48:
  v308 = 0;
  object = 0;
  v158 = 1.79769313e308;
LABEL_49:
  v159 = v303;
  FMIPItem.batteryStatus.getter();
  v160 = v296;
  v161 = v297;
  v162 = (*(v296 + 88))(v159, v297);
  v318 = v39;
  v316 = v52;
  v323 = v34;
  if (v162 == enum case for FMIPItemBatteryStatus.unknown(_:))
  {
LABEL_50:
    v163 = 0;
    goto LABEL_86;
  }

  if (v162 == enum case for FMIPItemBatteryStatus.highPower(_:))
  {
    v163 = 2;
  }

  else if (v162 == enum case for FMIPItemBatteryStatus.fresh(_:))
  {
    v163 = 1;
  }

  else if (v162 == enum case for FMIPItemBatteryStatus.earlyLife(_:))
  {
    v163 = 3;
  }

  else if (v162 == enum case for FMIPItemBatteryStatus.lateLife(_:))
  {
    v163 = 4;
  }

  else if (v162 == enum case for FMIPItemBatteryStatus.replace(_:))
  {
    v163 = 5;
  }

  else
  {
    if (v162 != enum case for FMIPItemBatteryStatus.dead(_:))
    {
      (*(v160 + 8))(v303, v161);
      goto LABEL_50;
    }

    v163 = 6;
  }

LABEL_86:
  a8[5] = sub_10034D354(v320, v324);
  a8[6] = v222;
  LODWORD(v311) = *(v319[5] + OBJC_IVAR____TtC6FindMy18FMLocationProvider_limitedPrecision);
  v223 = v313;
  FMIPItem.state.getter();
  static FMIPItemState.isBTConnected.getter();
  sub_10034DE20(&qword_1006C0350, &type metadata accessor for FMIPItemState, &protocol conformance descriptor for FMIPItemState);
  v224 = v81;
  v225 = v315;
  v226 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v227 = *(v298 + 8);
  v227(v224, v225);
  v227(v223, v225);
  if (v226)
  {

    v228 = [objc_opt_self() mainBundle];
    v332._object = 0x8000000100579A00;
    v229._countAndFlagsBits = 0xD00000000000001CLL;
    v229._object = 0x800000010057DF50;
    a8 = v321;
    v230.value._object = 0x80000001005799E0;
    v332._countAndFlagsBits = 0xD000000000000018;
    v230.value._countAndFlagsBits = 0xD000000000000013;
    v231._countAndFlagsBits = 0;
    v231._object = 0xE000000000000000;
    v232 = NSLocalizedString(_:tableName:bundle:value:comment:)(v229, v230, v228, v231, v332);
    countAndFlagsBits = v232._countAndFlagsBits;
    object = v232._object;
  }

  else
  {
    countAndFlagsBits = v308;
  }

  *(a8 + v322[28]) = qword_10055E098[v163];
  v234 = v314;
  if (v311)
  {

    countAndFlagsBits = 0;
    object = 0xE000000000000000;
  }

  *a8 = countAndFlagsBits;
  a8[1] = object;
  v235 = v313;
  FMIPItem.state.getter();
  static FMIPItemState.isLocating.getter();
  v236 = v315;
  v237 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v227(v234, v236);
  v227(v235, v236);
  if (v237)
  {
    FMIPItem.state.getter();
    static FMIPItemState.isBTConnected.getter();
    v238 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v227(v234, v236);
    v227(v235, v236);
    v239 = v238 ^ 1;
  }

  else
  {
    v239 = 0;
  }

  v240 = v322;
  *(a8 + v322[24]) = v239 & 1;
  FMIPItem.state.getter();
  static FMIPItemState.isBTConnected.getter();
  v241 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v227(v234, v236);
  v227(v235, v236);
  v242 = 0.0;
  if ((v241 & 1) == 0)
  {
    v242 = v158;
  }

  *(a8 + 9) = v242;
  v243 = v240[19];
  v244 = type metadata accessor for UUID();
  v245 = 1;
  v246 = v321 + v243;
  v247 = v321;
  (*(*(v244 - 8) + 56))(v246, 1, 1, v244);
  if (v163 <= 2)
  {
    v248 = v323;
  }

  else
  {
    v248 = v323;
    if (v163 == 5)
    {
      v249 = v320;
      v250 = v304;
LABEL_105:

      goto LABEL_106;
    }
  }

  v251 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v251 & 1) == 0)
  {
    v249 = v320;
    v250 = v304;
    if (v163 > 4)
    {
      v245 = 1;
    }

    else
    {
      v245 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    goto LABEL_105;
  }

  v245 = 1;
  v249 = v320;
  v250 = v304;
LABEL_106:
  v252 = v306;
  v253 = v322;
  *(v247 + v322[30]) = v245 & 1;
  *(v247 + v253[29]) = v163;
  *(v247 + 10) = sub_10034D1C8(v249, v310 & 1);
  v254 = sub_10034C388(v249, v324, v252, v250 & 1, v319);
  v256 = v255;
  v258 = v257;
  v260 = v259;

  if (v256)
  {
    v261 = [objc_opt_self() mainBundle];
    v333._object = 0x800000010057DBA0;
    v262._countAndFlagsBits = 0xD000000000000027;
    v262._object = 0x800000010057DB70;
    v333._countAndFlagsBits = 0xD000000000000039;
    v263._countAndFlagsBits = 0;
    v263._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v262, 0, v261, v263, v333);

    sub_10007EBC0(&unk_1006B20B0, &unk_1005523B0);
    v264 = swift_allocObject();
    *(v264 + 16) = xmmword_100552210;
    *(v264 + 56) = &type metadata for String;
    v265 = sub_10008EE84();
    *(v264 + 32) = v254;
    *(v264 + 40) = v256;
    *(v264 + 96) = &type metadata for String;
    *(v264 + 104) = v265;
    *(v264 + 64) = v265;
    *(v264 + 72) = v258;
    *(v264 + 80) = v260;
    v249 = v320;
    v247 = v321;
    v258 = String.init(format:_:)();
    v260 = v266;
  }

  v267 = v294;
  v247[11] = v258;
  v247[12] = v260;
  v268 = v299;
  FMIPItem.location.getter();
  v269 = v318;
  if (v248(v268, 1, v318) == 1)
  {
    sub_100012DF0(v268, &unk_1006C0220, qword_100553770);
    v270 = v301;
    v271 = v300;
    v272 = v302;
    (*(v301 + 56))(v300, 1, 1, v302);
    static Date.distantFuture.getter();
    if ((*(v270 + 48))(v271, 1, v272) != 1)
    {
      sub_100012DF0(v271, &unk_1006B0000, &unk_100552AA0);
    }
  }

  else
  {
    v273 = FMIPLocation.location.getter();
    (*(v309 + 8))(v268, v269);
    v274 = [v273 timestamp];

    v275 = v293;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v270 = v301;
    v276 = *(v301 + 32);
    v277 = v300;
    v272 = v302;
    v276(v300, v275, v302);
    (*(v270 + 56))(v277, 0, 1, v272);
    v276(v267, v277, v272);
    v247 = v321;
  }

  (*(v270 + 32))(v247 + v322[16], v267, v272);
  v278 = FMIPItem.name.getter();
  v280 = v279;

  sub_100012DF0(v317, &unk_1006C0240, &unk_1005534D0);
  v281 = type metadata accessor for FMIPItem();
  result = (*(*(v281 - 8) + 8))(v249, v281);
  v247[13] = v278;
  v247[14] = v280;
  return result;
}

uint64_t sub_100346F5C()
{
  v0 = type metadata accessor for FMIPBeaconShareState();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  FMIPBeaconShare.state.getter();
  v4 = FMIPBeaconShareState.isActive.getter();
  (*(v1 + 8))(v3, v0);
  return v4 & 1;
}

uint64_t sub_100347030(uint64_t a1)
{
  v1 = FMIPBeaconShare.shareeHandle.getter();
  v3 = v2;
  v4 = [objc_opt_self() SPOwner];
  v5 = [v4 destination];

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  if (v1 == v6 && v3 == v8)
  {

    v11 = 0;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v11 = v10 ^ 1;
  }

  return v11 & 1;
}

BOOL sub_100347118()
{
  v0 = sub_10007EBC0(&unk_1006B0120, &qword_100552B60);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  FMIPBeaconShare.delegatedSharesURL.getter();
  v3 = type metadata accessor for URL();
  v4 = (*(*(v3 - 8) + 48))(v2, 1, v3) == 1;
  sub_100012DF0(v2, &unk_1006B0120, &qword_100552B60);
  return v4;
}

uint64_t sub_1003471F8()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (FMIPBeaconShare.delegationStatus.getter())
  {
    FMIPBeaconShare.beaconIdentifier.getter();
    v4 = UUID.uuidString.getter();
    v6 = v5;
    (*(v1 + 8))(v3, v0);
    if (v4 == FMIPItem.identifier.getter() && v6 == v7)
    {
      v9 = 1;
    }

    else
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

void sub_10034734C(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for FMIPBeaconShare();
  v41 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v42 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10007EBC0(&unk_1006B20C0, &unk_100552E10);
  __chkstk_darwin(v9 - 8);
  v11 = &v39 - v10;
  v12 = *(v2 + 1);
  v40 = v5;
  if (v12)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  v13 = *(v2 + 4);
  if (v13)
  {
    Hasher._combine(_:)(1u);
    v14 = v13;
    NSObject.hash(into:)();

    v15 = *(v2 + 5);
    if (v15)
    {
      goto LABEL_6;
    }

LABEL_9:
    Hasher._combine(_:)(0);
    v17 = *(v2 + 6);
    if (v17)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  Hasher._combine(_:)(0);
  v15 = *(v2 + 5);
  if (!v15)
  {
    goto LABEL_9;
  }

LABEL_6:
  Hasher._combine(_:)(1u);
  v16 = v15;
  NSObject.hash(into:)();

  v17 = *(v2 + 6);
  if (v17)
  {
LABEL_7:
    Hasher._combine(_:)(1u);
    v18 = v17;
    NSObject.hash(into:)();

    goto LABEL_11;
  }

LABEL_10:
  Hasher._combine(_:)(0);
LABEL_11:
  v19 = *(v2 + 7);
  if (v19 == 0.0)
  {
    v19 = 0.0;
  }

  Hasher._combine(_:)(*&v19);
  Hasher._combine(_:)(v2[64]);
  Hasher._combine(_:)(v2[65]);
  v20 = *(v2 + 9);
  if (v20 == 0.0)
  {
    v20 = 0.0;
  }

  Hasher._combine(_:)(*&v20);
  v21 = *(v2 + 10);
  if (v21 == 0.0)
  {
    v21 = 0.0;
  }

  Hasher._combine(_:)(*&v21);
  String.hash(into:)();
  String.hash(into:)();
  v22 = type metadata accessor for FMItemCellViewModel(0);
  type metadata accessor for Date();
  sub_10034DE20(&qword_1006B1480, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();
  Hasher._combine(_:)(v2[v22[18]]);
  sub_100007204(&v2[v22[19]], v11, &unk_1006B20C0, &unk_100552E10);
  if ((*(v7 + 48))(v11, 1, v6) == 1)
  {
    v23 = v3;
    Hasher._combine(_:)(0);
  }

  else
  {
    v24 = v7;
    v23 = v3;
    v25 = v42;
    (*(v24 + 32))(v42, v11, v6);
    Hasher._combine(_:)(1u);
    sub_10034DE20(&unk_1006C2410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    (*(v24 + 8))(v25, v6);
  }

  v39 = v22;
  v26 = v22[20];
  v42 = v2;
  v27 = *&v2[v26];
  Hasher._combine(_:)(*(v27 + 16));
  v28 = *(v27 + 16);
  v29 = v40;
  if (v28)
  {
    v30 = v41 + 16;
    v31 = *(v41 + 16);
    v32 = v27 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
    v33 = *(v41 + 72);
    v34 = (v41 + 8);
    do
    {
      v35 = v30;
      v31(v29, v32, v23);
      sub_10034DE20(&qword_1006BC5D8, &type metadata accessor for FMIPBeaconShare, &protocol conformance descriptor for FMIPBeaconShare);
      dispatch thunk of Hashable.hash(into:)();
      (*v34)(v29, v23);
      v30 = v35;
      v32 += v33;
      --v28;
    }

    while (v28);
  }

  v36 = v39;
  v37 = v42;
  Hasher._combine(_:)(v42[v39[21]]);
  Hasher._combine(_:)(v37[v36[22]]);
  Hasher._combine(_:)(v37[v36[23]]);
  Hasher._combine(_:)(v37[v36[24]]);
  Hasher._combine(_:)(v37[v36[25]]);
  if (*&v37[v36[26] + 8])
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*&v37[v36[27] + 8])
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v38 = *&v37[v36[28]];
  if (v38 == 0.0)
  {
    v38 = 0.0;
  }

  Hasher._combine(_:)(*&v38);
  String.hash(into:)();

  Hasher._combine(_:)(v37[v36[30]]);
}

void *sub_100347A60()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

void *sub_100347A88()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

uint64_t sub_100347AB0()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t sub_100347AE0()
{
  v1 = *(v0 + 104);

  return v1;
}

uint64_t sub_100347B28(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 104));

  return v2;
}

uint64_t sub_100347B60(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 108));

  return v2;
}

uint64_t sub_100347BB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 64);
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

Swift::Int sub_100347C24()
{
  Hasher.init(_seed:)();
  sub_10034734C(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100347C68(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_10034734C(v2);
  return Hasher._finalize()();
}

void sub_100347CA4(void *a1)
{
  v2 = *(type metadata accessor for FMIPBeaconShare() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10025F340(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_100347D4C(v5);
  *a1 = v3;
}

void sub_100347D4C(uint64_t *a1)
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
        type metadata accessor for FMIPBeaconShare();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for FMIPBeaconShare() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1003480FC(v8, v9, a1, v4);
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
    sub_100347E78(0, v2, 1, a1);
  }
}

void sub_100347E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for FMIPBeaconShare();
  __chkstk_darwin(v8);
  v40 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v44 = &v30 - v11;
  v14 = __chkstk_darwin(v12);
  v43 = &v30 - v15;
  v32 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v41 = *(v13 + 16);
    v42 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v19 = (v16 + v17 * (a3 - 1));
    v37 = -v17;
    v38 = (v13 + 32);
    v20 = a1 - a3;
    v39 = v16;
    v31 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v35 = v19;
    v36 = a3;
    v33 = v21;
    v34 = v20;
    while (1)
    {
      v22 = v43;
      v23 = v41;
      (v41)(v43, v21, v8, v14);
      v24 = v44;
      v23(v44, v19, v8);
      v25 = static FMIPBeaconShare.directionSort(lhs:rhs:)();
      v26 = *v18;
      (*v18)(v24, v8);
      v26(v22, v8);
      if ((v25 & 1) == 0)
      {
LABEL_4:
        a3 = v36 + 1;
        v19 = &v35[v31];
        v20 = v34 - 1;
        v21 = v33 + v31;
        if (v36 + 1 == v32)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v39)
      {
        break;
      }

      v27 = *v38;
      v28 = v40;
      (*v38)(v40, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      v27(v19, v28, v8);
      v19 += v37;
      v21 += v37;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1003480FC(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v122 = a1;
  v9 = type metadata accessor for FMIPBeaconShare();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v125 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v133 = &v118 - v13;
  __chkstk_darwin(v14);
  v139 = &v118 - v15;
  v17 = __chkstk_darwin(v16);
  v138 = &v118 - v18;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = _swiftEmptyArrayStorage;
LABEL_95:
    v5 = *v122;
    if (!*v122)
    {
      goto LABEL_136;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v112 = a4;
    }

    else
    {
LABEL_130:
      v112 = sub_10025EFD4(a4);
    }

    v113 = v6;
    v141 = v112;
    a4 = *(v112 + 2);
    if (a4 >= 2)
    {
      v114 = v10;
      v10 = a3;
      a3 = v114;
      while (*v10)
      {
        v115 = *&v112[16 * a4];
        v116 = v112;
        v6 = *&v112[16 * a4 + 24];
        sub_100348AE8(*v10 + a3[9] * v115, (*v10 + a3[9] * *&v112[16 * a4 + 16]), *v10 + a3[9] * v6, v5);
        if (v113)
        {
          goto LABEL_107;
        }

        if (v6 < v115)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v116 = sub_10025EFD4(v116);
        }

        if (a4 - 2 >= *(v116 + 2))
        {
          goto LABEL_124;
        }

        v117 = &v116[16 * a4];
        *v117 = v115;
        *(v117 + 1) = v6;
        v141 = v116;
        sub_10025EF48(a4 - 1);
        v112 = v141;
        a4 = *(v141 + 2);
        if (a4 <= 1)
        {
          goto LABEL_107;
        }
      }

      goto LABEL_134;
    }

LABEL_107:

    return;
  }

  v20 = 0;
  v136 = (v10 + 1);
  v137 = v10 + 2;
  v135 = (v10 + 4);
  v21 = _swiftEmptyArrayStorage;
  v123 = a3;
  v121 = a4;
  v140 = v9;
  while (1)
  {
    v22 = v20;
    v126 = v21;
    if (v20 + 1 >= v19)
    {
      v33 = v20 + 1;
    }

    else
    {
      v131 = v19;
      v120 = v6;
      v128 = *a3;
      v23 = v128;
      v24 = v10[9];
      v5 = v128 + v24 * (v20 + 1);
      v25 = v10[2];
      v26 = v138;
      v25(v138, v5, v9, v17);
      v27 = v23 + v24 * v22;
      v28 = v139;
      v130 = v25;
      (v25)(v139, v27, v9);
      LODWORD(v132) = static FMIPBeaconShare.directionSort(lhs:rhs:)();
      v29 = v9;
      v30 = v10[1];
      v30(v28, v29);
      v129 = v30;
      v30(v26, v29);
      v119 = v22;
      v31 = v22 + 2;
      v134 = v24;
      v32 = v128 + v24 * (v22 + 2);
      while (1)
      {
        v33 = v131;
        if (v131 == v31)
        {
          break;
        }

        v34 = v10;
        v35 = v138;
        v36 = v140;
        v37 = v130;
        (v130)(v138, v32, v140);
        v38 = v139;
        v37(v139, v5, v36);
        v39 = static FMIPBeaconShare.directionSort(lhs:rhs:)() & 1;
        v40 = v129;
        (v129)(v38, v36);
        v41 = v35;
        v10 = v34;
        v40(v41, v36);
        ++v31;
        v32 += v134;
        v5 += v134;
        if ((v132 & 1) != v39)
        {
          v33 = v31 - 1;
          break;
        }
      }

      a3 = v123;
      v21 = v126;
      v6 = v120;
      a4 = v121;
      v9 = v140;
      v22 = v119;
      if (v132)
      {
        if (v33 < v119)
        {
          goto LABEL_127;
        }

        if (v119 < v33)
        {
          v118 = v10;
          v42 = v134 * (v33 - 1);
          v43 = v33 * v134;
          v44 = v33;
          v45 = v119;
          v46 = v119 * v134;
          do
          {
            if (v45 != --v44)
            {
              v48 = *a3;
              if (!*a3)
              {
                goto LABEL_133;
              }

              v49 = v33;
              v5 = &v48[v46];
              v132 = *v135;
              (v132)(v125, &v48[v46], v140, v21);
              if (v46 < v42 || v5 >= &v48[v43])
              {
                v47 = v140;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v47 = v140;
                if (v46 != v42)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v132(&v48[v42], v125, v47);
              a3 = v123;
              v21 = v126;
              v33 = v49;
            }

            ++v45;
            v42 -= v134;
            v43 -= v134;
            v46 += v134;
          }

          while (v45 < v44);
          v6 = v120;
          a4 = v121;
          v10 = v118;
          v9 = v140;
          v22 = v119;
        }
      }
    }

    v50 = a3[1];
    if (v33 < v50)
    {
      if (__OFSUB__(v33, v22))
      {
        goto LABEL_126;
      }

      if (v33 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_128;
        }

        if ((v22 + a4) >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v22 + a4;
        }

        if (v51 < v22)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v33 != v51)
        {
          break;
        }
      }
    }

    v52 = v33;
    if (v33 < v22)
    {
      goto LABEL_125;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v21 = v126;
    }

    else
    {
      v21 = sub_10008B8B8(0, *(v126 + 2) + 1, 1, v126);
    }

    a4 = *(v21 + 2);
    v53 = *(v21 + 3);
    v5 = a4 + 1;
    if (a4 >= v53 >> 1)
    {
      v21 = sub_10008B8B8((v53 > 1), a4 + 1, 1, v21);
    }

    *(v21 + 2) = v5;
    v54 = &v21[16 * a4];
    *(v54 + 4) = v22;
    *(v54 + 5) = v52;
    v55 = *v122;
    if (!*v122)
    {
      goto LABEL_135;
    }

    v127 = v52;
    if (a4)
    {
      while (1)
      {
        v56 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v57 = *(v21 + 4);
          v58 = *(v21 + 5);
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_52:
          if (v60)
          {
            goto LABEL_114;
          }

          v73 = &v21[16 * v5];
          v75 = *v73;
          v74 = *(v73 + 1);
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_117;
          }

          v79 = &v21[16 * v56 + 32];
          v81 = *v79;
          v80 = *(v79 + 1);
          v67 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v67)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v77, v82))
          {
            goto LABEL_121;
          }

          if (v77 + v82 >= v59)
          {
            if (v59 < v82)
            {
              v56 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v83 = &v21[16 * v5];
        v85 = *v83;
        v84 = *(v83 + 1);
        v67 = __OFSUB__(v84, v85);
        v77 = v84 - v85;
        v78 = v67;
LABEL_66:
        if (v78)
        {
          goto LABEL_116;
        }

        v86 = &v21[16 * v56];
        v88 = *(v86 + 4);
        v87 = *(v86 + 5);
        v67 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v67)
        {
          goto LABEL_119;
        }

        if (v89 < v77)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v56 - 1;
        if (v56 - 1 >= v5)
        {
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

        if (!*a3)
        {
          goto LABEL_132;
        }

        v94 = v21;
        v95 = *&v21[16 * a4 + 32];
        v5 = *&v21[16 * v56 + 40];
        sub_100348AE8(*a3 + v10[9] * v95, (*a3 + v10[9] * *&v21[16 * v56 + 32]), *a3 + v10[9] * v5, v55);
        if (v6)
        {
          goto LABEL_107;
        }

        if (v5 < v95)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = sub_10025EFD4(v94);
        }

        if (a4 >= *(v94 + 2))
        {
          goto LABEL_111;
        }

        v96 = &v94[16 * a4];
        *(v96 + 4) = v95;
        *(v96 + 5) = v5;
        v141 = v94;
        sub_10025EF48(v56);
        v21 = v141;
        v5 = *(v141 + 2);
        v9 = v140;
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v61 = &v21[16 * v5 + 32];
      v62 = *(v61 - 64);
      v63 = *(v61 - 56);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_112;
      }

      v66 = *(v61 - 48);
      v65 = *(v61 - 40);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_113;
      }

      v68 = &v21[16 * v5];
      v70 = *v68;
      v69 = *(v68 + 1);
      v67 = __OFSUB__(v69, v70);
      v71 = v69 - v70;
      if (v67)
      {
        goto LABEL_115;
      }

      v67 = __OFADD__(v59, v71);
      v72 = v59 + v71;
      if (v67)
      {
        goto LABEL_118;
      }

      if (v72 >= v64)
      {
        v90 = &v21[16 * v56 + 32];
        v92 = *v90;
        v91 = *(v90 + 1);
        v67 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v67)
        {
          goto LABEL_122;
        }

        if (v59 < v93)
        {
          v56 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = a3[1];
    v20 = v127;
    a4 = v121;
    if (v127 >= v19)
    {
      goto LABEL_95;
    }
  }

  v120 = v6;
  v97 = *a3;
  v98 = v10[9];
  v118 = v10;
  v134 = v10[2];
  v99 = v97 + v98 * (v33 - 1);
  v100 = -v98;
  v119 = v22;
  v101 = (v22 - v33);
  v132 = v97;
  v124 = v98;
  v5 = v97 + v33 * v98;
  v127 = v51;
LABEL_85:
  v130 = v99;
  v131 = v33;
  v128 = v5;
  v129 = v101;
  v102 = v99;
  while (1)
  {
    v103 = v138;
    v104 = v134;
    (v134)(v138, v5, v9, v21);
    v105 = v139;
    v104(v139, v102, v140);
    v106 = static FMIPBeaconShare.directionSort(lhs:rhs:)();
    a4 = v136;
    v107 = *v136;
    v108 = v105;
    v9 = v140;
    (*v136)(v108, v140);
    v107(v103, v9);
    if ((v106 & 1) == 0)
    {
LABEL_84:
      v33 = v131 + 1;
      v99 = &v130[v124];
      v101 = v129 - 1;
      v5 = v128 + v124;
      v52 = v127;
      if (v131 + 1 != v127)
      {
        goto LABEL_85;
      }

      v6 = v120;
      a3 = v123;
      v10 = v118;
      v22 = v119;
      if (v127 < v119)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (!v132)
    {
      break;
    }

    a4 = v135;
    v109 = *v135;
    v110 = v133;
    (*v135)(v133, v5, v9);
    swift_arrayInitWithTakeFrontToBack();
    v109(v102, v110, v9);
    v102 += v100;
    v5 += v100;
    if (__CFADD__(v101++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
}

void sub_100348AE8(unint64_t a1, char *a2, unint64_t a3, char *a4)
{
  v56 = type metadata accessor for FMIPBeaconShare();
  v8 = *(v56 - 8);
  __chkstk_darwin(v56);
  v54 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v53 = &v44 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (&a2[-a1] == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v55 = a3;
  v15 = &a2[-a1] / v13;
  v59 = a1;
  v58 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || &a2[v17] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v28 = &a4[v17];
    if (v17 < 1)
    {
      v32 = &a4[v17];
    }

    else
    {
      v29 = -v13;
      v48 = (v8 + 8);
      v49 = (v8 + 16);
      v30 = &a4[v17];
      v31 = v55;
      v32 = v28;
      v46 = a1;
      v47 = a4;
      v50 = -v13;
      do
      {
        v44 = v32;
        v33 = a2;
        v34 = &a2[v29];
        v51 = v33;
        v52 = v34;
        while (1)
        {
          if (v33 <= a1)
          {
            v59 = v33;
            v57 = v44;
            goto LABEL_59;
          }

          v36 = v31;
          v45 = v32;
          v55 = v31 + v29;
          v37 = &v30[v29];
          v38 = *v49;
          v39 = v53;
          v40 = v56;
          v41 = v30;
          (*v49)(v53, v37, v56);
          v42 = v54;
          (v38)(v54, v34, v40);
          LOBYTE(v38) = static FMIPBeaconShare.directionSort(lhs:rhs:)();
          v43 = *v48;
          (*v48)(v42, v40);
          v43(v39, v40);
          if (v38)
          {
            break;
          }

          v32 = v37;
          v31 = v55;
          if (v36 < v41 || v55 >= v41)
          {
            swift_arrayInitWithTakeFrontToBack();
            v34 = v52;
            a1 = v46;
          }

          else
          {
            v34 = v52;
            a1 = v46;
            if (v36 != v41)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v30 = v37;
          v35 = v37 > v47;
          v29 = v50;
          v33 = v51;
          if (!v35)
          {
            a2 = v51;
            goto LABEL_58;
          }
        }

        v44 = v41;
        v31 = v55;
        if (v36 < v51 || v55 >= v51)
        {
          a2 = v52;
          swift_arrayInitWithTakeFrontToBack();
          v32 = v45;
          a1 = v46;
          v29 = v50;
        }

        else
        {
          a2 = v52;
          v32 = v45;
          a1 = v46;
          v29 = v50;
          if (v36 != v51)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v30 = v44;
      }

      while (v44 > v47);
    }

LABEL_58:
    v59 = a2;
    v57 = v32;
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

    v52 = &a4[v16];
    v57 = &a4[v16];
    if (v16 >= 1 && a2 < v55)
    {
      v50 = *(v8 + 16);
      v51 = (v8 + 16);
      v48 = v13;
      v49 = (v8 + 8);
      do
      {
        v19 = v53;
        v20 = v56;
        v21 = v50;
        (v50)(v53, a2, v56);
        v22 = a2;
        v23 = v54;
        v21(v54, a4, v20);
        v24 = static FMIPBeaconShare.directionSort(lhs:rhs:)();
        v25 = *v49;
        (*v49)(v23, v20);
        v25(v19, v20);
        if (v24)
        {
          v26 = v48;
          a2 = &v48[v22];
          if (a1 < v22 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v22)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          v26 = v48;
          v27 = &v48[a4];
          if (a1 < a4 || a1 >= v27)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v22;
          }

          else
          {
            a2 = v22;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v58 = v27;
          a4 = &v26[a4];
        }

        a1 += v26;
        v59 = a1;
      }

      while (a4 < v52 && a2 < v55);
    }
  }

LABEL_59:
  sub_10025F120(&v59, &v58, &v57);
}

void sub_100349078(uint64_t a1)
{
  v3 = v1[3];
  v4 = v3 >> 1;
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

  v5 = *v1;
  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
  *v1 = v5;
  if ((isUniquelyReferenced_nonNull & 1) == 0)
  {
    goto LABEL_10;
  }

  v7 = v1[2];
  v8 = v4 - v7;
  if (__OFSUB__(v4, v7))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v9 = v1[1];
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v10 = swift_dynamicCastClass();
  if (!v10)
  {
    swift_unknownObjectRelease();
    v10 = _swiftEmptyArrayStorage;
  }

  v11 = v10[2];
  if ((v9 + 16 * v7 + 16 * v8) != &v10[2 * v11 + 4])
  {

    goto LABEL_9;
  }

  v12 = v10[3];

  v13 = (v12 >> 1) - v11;
  v14 = __OFADD__(v8, v13);
  v8 += v13;
  if (!v14)
  {
LABEL_9:
    if (v8 >= a1)
    {
LABEL_17:
      *v1 = v5;
      return;
    }

LABEL_10:
    v15 = v1[2];
    if (__OFSUB__(v4, v15))
    {
      __break(1u);
    }

    else
    {
      v16 = sub_10002E21C(v4 - v15, a1);
      if (v4 >= v15)
      {
        v5 = v16;
        v17 = v16 + 4;
        swift_arrayInitWithCopy();
        if (!__OFSUB__(0, v15))
        {
          v18 = v5[2];
          v14 = __OFADD__(v15, v18);
          v19 = v15 + v18;
          if (!v14)
          {
            if (v19 >= v15)
            {
              if ((v19 & 0x8000000000000000) == 0)
              {
                v20 = (2 * v19) | 1;
                swift_unknownObjectRelease();
                v1[1] = &v17[-2 * v15];
                v1[2] = v15;
                v1[3] = v20;
                goto LABEL_17;
              }

              goto LABEL_23;
            }

LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_25:
  __break(1u);
}

void sub_1003491F8(uint64_t a1)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = (v2 >> 1) - v3;
  if (__OFSUB__(v2 >> 1, v3))
  {
    __break(1u);
    goto LABEL_38;
  }

  v6 = *(a1 + 16);
  if ((v2 & 1) == 0)
  {
    goto LABEL_7;
  }

  v7 = v1[1];
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v8 = swift_dynamicCastClass();
  if (!v8)
  {
    swift_unknownObjectRelease();
    v8 = _swiftEmptyArrayStorage;
  }

  v9 = v8[2];
  if ((v7 + 16 * v3 + 16 * v4) != &v8[2 * v9 + 4])
  {

LABEL_7:
    v10 = v4;
    goto LABEL_9;
  }

  v11 = v8[3];

  v12 = (v11 >> 1) - v9;
  v13 = __OFADD__(v4, v12);
  v10 = v4 + v12;
  if (v13)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

LABEL_9:
  v14 = v4 + v6;
  if (__OFADD__(v4, v6))
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v10 < v14)
  {
    if (v10 + 0x4000000000000000 < 0)
    {
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v15 = 2 * v10;
    if (v15 > v14)
    {
      v14 = v15;
    }
  }

  sub_100349078(v14);
  v17 = v1[2];
  v16 = v1[3];
  v18 = (v16 >> 1) - v17;
  if (__OFSUB__(v16 >> 1, v17))
  {
    goto LABEL_39;
  }

  v19 = v1[1] + 16 * v17 + 16 * v18;
  if ((v16 & 1) == 0)
  {
LABEL_20:
    v22 = v18;
    goto LABEL_22;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v20 = swift_dynamicCastClass();
  if (!v20)
  {
    swift_unknownObjectRelease();
    v20 = _swiftEmptyArrayStorage;
  }

  v21 = v20[2];
  if (v19 != &v20[2 * v21 + 4])
  {

    goto LABEL_20;
  }

  v23 = v20[3];

  v24 = (v23 >> 1) - v21;
  v13 = __OFADD__(v18, v24);
  v22 = v18 + v24;
  if (v13)
  {
LABEL_46:
    __break(1u);
    return;
  }

LABEL_22:
  v25 = v22 - v18;
  if (__OFSUB__(v22, v18))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v26 = *(a1 + 16);
  if (v26)
  {
    if (v25 >= v6)
    {
      swift_arrayInitWithCopy();
      if (v6 <= 0)
      {
        goto LABEL_30;
      }

      if (!__OFADD__(v18, v6))
      {
        sub_1003496F0(v18 + v6);
        goto LABEL_30;
      }

      goto LABEL_44;
    }

    goto LABEL_42;
  }

  if (v6 > 0)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v6 = 0;
LABEL_30:
  if (v6 == v25)
  {

    sub_1003497A8(a1, v26);
  }

  else
  {
  }
}

void sub_100349438(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v5 = v4[2];
  v6 = v4[3] >> 1;
  v7 = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
    __break(1u);
    goto LABEL_29;
  }

  v9 = *a1;
  v10 = *(*a1 + 16);
  v11 = __OFSUB__(v10, a2);
  v12 = v10 - a2;
  if (v11)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v14 = v12 - a3;
  if (__OFSUB__(v12, a3))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v15 = v7 - a2;
  if (__OFSUB__(v7, a2))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v11 = __OFSUB__(v15, v14);
  v16 = v15 - v14;
  if (v11)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v32 = v14;
  v33 = v16;
  v17 = (v9 + 32);
  v18 = v9 + 32 + 16 * a2;
  sub_10034A534(v7);
  v35 = v9 + 32;
  if (v19)
  {
    v20 = v19;
    __dst = (v18 + 16 * a3);
    v31 = v9;
    v21 = v4[2];
    v22 = (v4[1] + 16 * v21);
    v23 = &v22[16 * a2];
    swift_arrayDestroy();
    if (v17 != v22 || v17 >= v23)
    {
      memmove(v17, v22, 16 * a2);
    }

    swift_arrayDestroy();
    a4(v18, a3);
    v24 = &v23[16 * v33];
    if (__dst != v24 || __dst >= &v24[16 * v32])
    {
      memmove(__dst, v24, 16 * v32);
    }

    swift_arrayDestroy();
    *(v20 + 16) = 0;

    v9 = v31;
  }

  else
  {
    v21 = v4[2];
    v25 = v21 + a2;
    if (__OFADD__(v21, a2))
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v25 < v21)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (__OFSUB__(v25, v21))
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    swift_arrayInitWithCopy();
    a4(v35 + 16 * a2, a3);
    v26 = v25 + v33;
    if (__OFADD__(v25, v33))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v27 = v4[3] >> 1;
    if (v27 < v26)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (__OFSUB__(v27, v26))
    {
LABEL_42:
      __break(1u);
      return;
    }

    swift_arrayInitWithCopy();
  }

  swift_unknownObjectRelease();
  if (__OFSUB__(0, v21))
  {
    goto LABEL_33;
  }

  v28 = *(v9 + 16);
  v11 = __OFADD__(v21, v28);
  v29 = v21 + v28;
  if (v11)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v29 < v21)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v29 < 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  *v4 = v9;
  v4[1] = v35 - 16 * v21;
  v4[2] = v21;
  v4[3] = (2 * v29) | 1;
}

void sub_1003496F0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = v3 >> 1;
  v5 = __OFSUB__(v3 >> 1, v2);
  v6 = (v3 >> 1) - v2;
  if (v5)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = a1 - v6;
  if (__OFSUB__(a1, v6))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!v7)
  {
    return;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v8 = swift_dynamicCastClass();
  if (!v8)
  {
    swift_unknownObjectRelease();
    v8 = _swiftEmptyArrayStorage;
  }

  v9 = v8[2];
  v5 = __OFADD__(v9, v7);
  v10 = v9 + v7;
  if (v5)
  {
    goto LABEL_13;
  }

  v8[2] = v10;

  v11 = v4 + v7;
  if (__OFADD__(v4, v7))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v11 < 0)
  {
LABEL_15:
    __break(1u);
    return;
  }

  *(v1 + 24) = v3 & 1 | (2 * v11);
}

void sub_1003497A8(uint64_t a1, unint64_t a2)
{
  v4 = v2[2];
  v3 = v2[3];
  v5 = (v3 >> 1) - v4;
  if (__OFSUB__(v3 >> 1, v4))
  {
    goto LABEL_44;
  }

  v6 = a1;
  v7 = *(a1 + 16);
  v37 = v7;
  if (v7 == a2)
  {
LABEL_3:

    return;
  }

  if (v7 <= a2)
  {
    goto LABEL_45;
  }

  v8 = a1 + 16 * a2;
  v38 = a2 + 1;
  v10 = *(v8 + 32);
  v9 = *(v8 + 40);

  v32 = v2;
  while (!__OFADD__(v5, 1))
  {
    sub_100349A84(v5, v5 + 1, *v2, v2[1], v4, v3);
    v39 = v11;
    v12 = sub_100349C44();
    sub_100349438(&v39, v5, 0, v12);

    v4 = v2[2];
    v3 = v2[3];
    v13 = (v3 >> 1) - v4;
    if (__OFSUB__(v3 >> 1, v4))
    {
      goto LABEL_38;
    }

    v36 = v2[1];
    v35 = v3 >> 1;
    if ((v3 & 1) == 0)
    {
      goto LABEL_16;
    }

    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain();
    v14 = swift_dynamicCastClass();
    if (!v14)
    {
      swift_unknownObjectRelease();
      v14 = _swiftEmptyArrayStorage;
    }

    v15 = v14[2];
    if ((v36 + 16 * v4 + 16 * v13) != &v14[2 * v15 + 4])
    {

LABEL_16:
      v16 = (v3 >> 1) - v4;
      goto LABEL_18;
    }

    v17 = v14[3];

    v18 = (v17 >> 1) - v15;
    v16 = v13 + v18;
    if (__OFADD__(v13, v18))
    {
      goto LABEL_43;
    }

LABEL_18:
    if (v5 < v16)
    {
      v33 = v3;
      v19 = 0;
      v20 = v6;
      v21 = v4;
      v22 = v38;
      v23 = v6 + 16 * v38;
      v34 = v21;
      v24 = v36 + 16 * v5 + 16 * v21;
      while (1)
      {
        v25 = (v24 + v19);
        *v25 = v10;
        v25[1] = v9;
        ++v5;
        if (v37 == v22)
        {
          v10 = 0;
          v9 = 0;
          v38 = v37;
          goto LABEL_26;
        }

        if ((v38 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v22 >= *(v20 + 16))
        {
          goto LABEL_36;
        }

        ++v22;
        v10 = *(v23 + v19 + 32);
        v9 = *(v23 + v19 + 40);

        v19 += 16;
        if (v16 == v5)
        {
          v38 = v22;
          v5 = v16;
LABEL_26:
          v6 = v20;
          v2 = v32;
          v3 = v33;
          v4 = v34;
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
      break;
    }

LABEL_27:
    v26 = v5 - v13;
    if (__OFSUB__(v5, v13))
    {
      goto LABEL_39;
    }

    if (v26)
    {
      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain();
      v27 = swift_dynamicCastClass();
      if (!v27)
      {
        swift_unknownObjectRelease();
        v27 = _swiftEmptyArrayStorage;
      }

      v28 = v27[2];
      v29 = __OFADD__(v28, v26);
      v30 = v28 + v26;
      if (v29)
      {
        goto LABEL_40;
      }

      v27[2] = v30;

      v31 = v35 + v26;
      if (__OFADD__(v35, v26))
      {
        goto LABEL_41;
      }

      if ((v31 & 0x8000000000000000) != 0)
      {
        goto LABEL_42;
      }

      v3 = v3 & 1 | (2 * v31);
      v2[3] = v3;
    }

    if (!v9)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
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
LABEL_45:
  __break(1u);
}

void sub_100349A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
    __break(1u);
LABEL_28:
    if (v8 >= v7)
    {
      goto LABEL_21;
    }

LABEL_18:
    if (v8 + 0x4000000000000000 >= 0)
    {
      v8 *= 2;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_31;
  }

  v7 = a2;
  v6 = a1;
  if ((a6 & 1) == 0)
  {
    goto LABEL_28;
  }

  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = _swiftEmptyArrayStorage;
  }

  v12 = v11[2];
  v13 = a4 + 16 * a5 + 16 * v8;
  if (v13 == &v11[2 * v12 + 4])
  {
    v15 = v11[3];

    v16 = (v15 >> 1) - v12;
    v14 = v8 + v16;
    if (__OFADD__(v8, v16))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  else
  {

    v14 = v8;
  }

  swift_unknownObjectRetain();
  v17 = swift_dynamicCastClass();
  if (v14 < v7)
  {
    if (!v17)
    {
      swift_unknownObjectRelease();
      v17 = _swiftEmptyArrayStorage;
    }

    v18 = v17[2];
    if (v13 == &v17[2 * v18 + 4])
    {
      v20 = v17[3];

      v21 = (v20 >> 1) - v18;
      v22 = __OFADD__(v8, v21);
      v8 += v21;
      if (v22)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
    }

    goto LABEL_18;
  }

  if (!v17)
  {
    swift_unknownObjectRelease();
    v17 = _swiftEmptyArrayStorage;
  }

  v19 = v17[2];
  if (v13 == &v17[2 * v19 + 4])
  {
    v23 = v17[3];

    v24 = (v23 >> 1) - v19;
    v22 = __OFADD__(v8, v24);
    v8 += v24;
    if (!v22)
    {
      goto LABEL_21;
    }

LABEL_33:
    __break(1u);
    return;
  }

LABEL_21:
  if (v8 <= v7)
  {
    v25 = v7;
  }

  else
  {
    v25 = v8;
  }

  sub_10002E21C(v6, v25);
}

void sub_100349C60(uint64_t a1, uint64_t (*a2)(char *))
{
  v53 = a2;
  v3 = type metadata accessor for FMIPBeaconShare();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v47 = &v40 - v8;
  v10 = __chkstk_darwin(v9);
  v46 = &v40 - v11;
  v12 = *(a1 + 16);
  v13 = _swiftEmptyArrayStorage;
  if (v12)
  {
    v14 = 0;
    v43 = *(v4 + 80);
    v15 = (v43 + 32) & ~v43;
    v45 = _swiftEmptyArrayStorage + v15;
    v52 = a1 + v15;
    v50 = 0;
    v51 = v4 + 16;
    v48 = _swiftEmptyArrayStorage;
    v49 = (v4 + 32);
    while (v14 < v12)
    {
      v16 = v15;
      v17 = *(v4 + 72);
      (*(v4 + 16))(v6, v52 + v17 * v14, v3, v10);
      v18 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_39;
      }

      if (v53(v6))
      {
        v19 = *v49;
        (*v49)(v47, v6, v3);
        v19(v46, v47, v3);
        v20 = v19;
        if (v50)
        {
          v44 = v48;
          v21 = v50 - 1;
          if (__OFSUB__(v50, 1))
          {
            goto LABEL_40;
          }
        }

        else
        {
          v42 = v19;
          v22 = v48[3];
          if (((v22 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_42;
          }

          v23 = v22 & 0xFFFFFFFFFFFFFFFELL;
          if (v23 <= 1)
          {
            v23 = 1;
          }

          v50 = v23;
          sub_10007EBC0(&unk_1006B40A0, &unk_100555D50);
          v44 = swift_allocObject();
          v24 = j__malloc_size(v44);
          if (!v17)
          {
            goto LABEL_43;
          }

          v25 = v24 - v16;
          if (v24 - v16 == 0x8000000000000000 && v17 == -1)
          {
            goto LABEL_44;
          }

          v27 = v25 / v17;
          v28 = v44;
          v44[2] = v50;
          v28[3] = 2 * (v25 / v17);
          v29 = v28 + v16;
          v30 = v48;
          v31 = v48[3] >> 1;
          v32 = v31 * v17;
          if (v48[2])
          {
            if (v44 < v48 || v29 >= v48 + v16 + v32)
            {
              v50 = v28 + v16;
              v40 = v31;
              v41 = v31 * v17;
              v45 = v25 / v17;
              swift_arrayInitWithTakeFrontToBack();
              v31 = v40;
              v32 = v41;
              v29 = v50;
              v27 = v45;
            }

            else if (v44 != v48)
            {
              v50 = v28 + v16;
              v34 = v31;
              v45 = v25 / v17;
              v41 = v31 * v17;
              swift_arrayInitWithTakeBackToFront();
              v32 = v41;
              v31 = v34;
              v29 = v50;
              v27 = v45;
              v30 = v48;
            }

            v30[2] = 0;
          }

          v45 = &v29[v32];
          v50 = ((v27 & 0x7FFFFFFFFFFFFFFFLL) - v31);

          v20 = v42;
          v21 = v50 - 1;
          if (__OFSUB__(v50, 1))
          {
            goto LABEL_40;
          }
        }

        v50 = v21;
        v35 = v45;
        v20(v45, v46, v3);
        v45 = v35 + v17;
        v14 = v18;
        v13 = v44;
        v48 = v44;
        v15 = v16;
        if (v18 == v12)
        {
          goto LABEL_34;
        }
      }

      else
      {
        (*(v4 + 8))(v6, v3);
        ++v14;
        v15 = v16;
        if (v18 == v12)
        {
          v13 = v48;
          goto LABEL_34;
        }
      }
    }

    __break(1u);
LABEL_39:
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
    return;
  }

  v50 = 0;
LABEL_34:
  v36 = v13[3];
  if (v36 >= 2)
  {
    v37 = v36 >> 1;
    v38 = __OFSUB__(v37, v50);
    v39 = v37 - v50;
    if (!v38)
    {
      v13[2] = v39;
      return;
    }

    goto LABEL_41;
  }
}

void sub_10034A06C(uint64_t a1)
{
  v2 = sub_10007EBC0(&qword_1006BC490, qword_10055DFB8);
  __chkstk_darwin(v2 - 8);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v50 = &v43 - v6;
  v7 = type metadata accessor for FMDeviceCellViewModel(0);
  v8 = __chkstk_darwin(v7);
  v51 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = 0;
  v54 = 0;
  v10 = 0;
  v45 = *(v11 + 80);
  v12 = _swiftEmptyArrayStorage;
  v47 = v11;
  v48 = (v45 + 32) & ~v45;
  v52 = _swiftEmptyArrayStorage + v48;
  v13 = (v11 + 56);
  v46 = v11 + 48;
LABEL_4:
  v16 = *(a1 + 16);
  if (v10 != v16)
  {
    if (v10 < v16)
    {
      while (1)
      {
        v17 = *(a1 + 32 + 8 * v10);

        if (v17)
        {
          break;
        }

LABEL_9:
        ++v10;
        v18 = *(a1 + 16);
        if (v10 == v18)
        {
          goto LABEL_36;
        }

        if (v10 >= v18)
        {
          goto LABEL_42;
        }
      }

      v14 = *(v17 + 16);
      if (!v14)
      {
        (*v13)(v4, 1, 1, v7);
        sub_100012DF0(v4, &qword_1006BC490, qword_10055DFB8);
        goto LABEL_9;
      }

      v15 = 0;
      ++v10;
      while (1)
      {
        if (v15 >= v14)
        {
          goto LABEL_43;
        }

        v49 = v12;
        v19 = v47;
        v20 = *(v47 + 72);
        v54 = v15;
        sub_100316EAC(v17 + v48 + v20 * v15, v4);
        (*(v19 + 56))(v4, 0, 1, v7);
        v21 = v50;
        sub_10034D158(v4, v50);
        if ((*(v19 + 48))(v21, 1, v7) == 1)
        {
          v12 = v49;
          goto LABEL_37;
        }

        sub_10032AA04(v21, v51);
        v22 = v49;
        v23 = v53;
        if (!v53)
        {
          break;
        }

LABEL_34:
        v37 = __OFSUB__(v23, 1);
        v38 = v23 - 1;
        if (v37)
        {
          goto LABEL_44;
        }

        v53 = v38;
        ++v54;
        v39 = v52;
        sub_10032AA04(v51, v52);
        v52 = (v39 + v20);
        v12 = v22;
        v14 = *(v17 + 16);
        v15 = v54;
        if (v54 == v14)
        {
          (*v13)(v4, 1, 1, v7);
          sub_100012DF0(v4, &qword_1006BC490, qword_10055DFB8);
          goto LABEL_4;
        }
      }

      v24 = v49[3];
      if (((v24 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_46;
      }

      v25 = v24 & 0xFFFFFFFFFFFFFFFELL;
      if (v25 <= 1)
      {
        v26 = 1;
      }

      else
      {
        v26 = v25;
      }

      sub_10007EBC0(&unk_1006AF890, &qword_100555DC0);
      v27 = v48;
      v53 = v26;
      v22 = swift_allocObject();
      v28 = j__malloc_size(v22);
      if (!v20)
      {
        goto LABEL_47;
      }

      v29 = v28 - v27;
      if (v28 - v27 == 0x8000000000000000 && v20 == -1)
      {
        goto LABEL_48;
      }

      v31 = v27;
      v32 = v29 / v20;
      v22[2] = v53;
      v22[3] = 2 * (v29 / v20);
      v33 = v22 + v27;
      v34 = v49;
      v35 = v49[3] >> 1;
      v36 = v35 * v20;
      if (!v49[2])
      {
LABEL_33:
        v52 = &v33[v36];
        v53 = (v32 & 0x7FFFFFFFFFFFFFFFLL) - v35;

        v23 = v53;
        goto LABEL_34;
      }

      if (v22 < v49 || v33 >= v49 + v31 + v36)
      {
        v52 = (v49[3] >> 1);
        v53 = v33;
        v43 = v35 * v20;
        v44 = v29 / v20;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v22 == v49)
        {
LABEL_32:
          v34[2] = 0;
          goto LABEL_33;
        }

        v52 = (v49[3] >> 1);
        v53 = v33;
        v43 = v35 * v20;
        v44 = v29 / v20;
        swift_arrayInitWithTakeBackToFront();
      }

      v36 = v43;
      v32 = v44;
      v35 = v52;
      v33 = v53;
      goto LABEL_32;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    return;
  }

LABEL_36:
  v21 = v50;
  (*v13)(v50, 1, 1, v7, v8);
LABEL_37:

  sub_100012DF0(v21, &qword_1006BC490, qword_10055DFB8);
  v40 = v12[3];
  if (v40 >= 2)
  {
    v41 = v40 >> 1;
    v37 = __OFSUB__(v41, v53);
    v42 = v41 - v53;
    if (!v37)
    {
      v12[2] = v42;
      return;
    }

    goto LABEL_45;
  }
}

void sub_10034A534(uint64_t a1)
{
  if (swift_isUniquelyReferenced_nonNull())
  {
    v5 = v1[2];
    v4 = v1[3];
    v6 = (v4 >> 1) - v5;
    if (__OFSUB__(v4 >> 1, v5))
    {
      __break(1u);
      goto LABEL_20;
    }

    v7 = v1[1] + 16 * v5;
    if (v4)
    {
      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain();
      v8 = swift_dynamicCastClass();
      if (!v8)
      {
        swift_unknownObjectRelease();
        v8 = _swiftEmptyArrayStorage;
      }

      v9 = v8[2];
      if ((v7 + 16 * v6) == &v8[2 * v9 + 4])
      {
        v11 = v8[3];

        v12 = (v11 >> 1) - v9;
        v13 = __OFADD__(v6, v12);
        v10 = v6 + v12;
        if (v13)
        {
          __break(1u);
          return;
        }

LABEL_10:
        if (v10 < a1)
        {
          return;
        }

        type metadata accessor for __ContiguousArrayStorageBase();
        swift_unknownObjectRetain();
        v14 = swift_dynamicCastClass();
        if (!v14)
        {
          swift_unknownObjectRelease();
          v14 = _swiftEmptyArrayStorage;
        }

        v15 = v7 - v14 - 17;
        if (v7 - v14 - 32 >= 0)
        {
          v15 = v7 - v14 - 32;
        }

        v13 = __OFADD__(v6, v15 >> 4);
        v4 = v6 + (v15 >> 4);
        if (!v13)
        {
          v3 = v14[2];
          if (v4 >= v3)
          {
            return;
          }

LABEL_21:
          sub_1003CD588(v4, v3, 0);
          return;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    v10 = v6;
    goto LABEL_10;
  }
}

uint64_t sub_10034A694(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10007EBC0(&unk_1006B20C0, &unk_100552E10);
  __chkstk_darwin(v8 - 8);
  v10 = &v54 - v9;
  v11 = sub_10007EBC0(&qword_1006B22E8, &unk_100555270);
  __chkstk_darwin(v11);
  v13 = &v54 - v12;
  v14 = *(a1 + 8);
  v15 = *(a2 + 8);
  if (v14)
  {
    if (!v15 || (*a1 != *a2 || v14 != v15) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_55;
    }
  }

  else if (v15)
  {
    goto LABEL_55;
  }

  if ((*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_55;
  }

  v16 = *(a1 + 32);
  v17 = *(a2 + 32);
  if (v16)
  {
    if (!v17)
    {
      goto LABEL_55;
    }

    v55 = v5;
    sub_10000905C(0, &qword_1006BC2B0, UIImage_ptr);
    v18 = v17;
    v19 = v16;
    v20 = static NSObject.== infix(_:_:)();

    if ((v20 & 1) == 0)
    {
      goto LABEL_55;
    }
  }

  else
  {
    v55 = v5;
    if (v17)
    {
      goto LABEL_55;
    }
  }

  v21 = *(a1 + 40);
  v22 = *(a2 + 40);
  if (v21)
  {
    if (!v22)
    {
      goto LABEL_55;
    }

    sub_10000905C(0, &qword_1006BC2B0, UIImage_ptr);
    v23 = v22;
    v24 = v21;
    v25 = static NSObject.== infix(_:_:)();

    if ((v25 & 1) == 0)
    {
      goto LABEL_55;
    }
  }

  else if (v22)
  {
    goto LABEL_55;
  }

  v26 = *(a1 + 48);
  v27 = *(a2 + 48);
  if (v26)
  {
    if (!v27)
    {
      goto LABEL_55;
    }

    sub_10000905C(0, &qword_1006C0000, UIColor_ptr);
    v28 = v27;
    v29 = v26;
    v30 = static NSObject.== infix(_:_:)();

    if ((v30 & 1) == 0)
    {
      goto LABEL_55;
    }
  }

  else if (v27)
  {
    goto LABEL_55;
  }

  if (*(a1 + 56) != *(a2 + 56) || *(a1 + 64) != *(a2 + 64) || *(a1 + 65) != *(a2 + 65) || *(a1 + 72) != *(a2 + 72) || *(a1 + 80) != *(a2 + 80) || (*(a1 + 88) != *(a2 + 88) || *(a1 + 96) != *(a2 + 96)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_55;
  }

  if ((*(a1 + 104) != *(a2 + 104) || *(a1 + 112) != *(a2 + 112)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_55;
  }

  v31 = type metadata accessor for FMItemCellViewModel(0);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_55;
  }

  v32 = v31[17];
  v33 = *(a1 + v32);
  v34 = *(a1 + v32 + 8);
  v35 = (a2 + v32);
  if ((v33 != *v35 || v34 != v35[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_55;
  }

  if (*(a1 + v31[18]) != *(a2 + v31[18]))
  {
    goto LABEL_55;
  }

  v36 = v31[19];
  v37 = *(v11 + 48);
  sub_100007204(a1 + v36, v13, &unk_1006B20C0, &unk_100552E10);
  sub_100007204(a2 + v36, &v13[v37], &unk_1006B20C0, &unk_100552E10);
  v38 = *(v55 + 48);
  if (v38(v13, 1, v4) != 1)
  {
    sub_100007204(v13, v10, &unk_1006B20C0, &unk_100552E10);
    v54 = v37;
    if (v38(&v13[v37], 1, v4) != 1)
    {
      v39 = v55;
      (*(v55 + 32))(v7, &v13[v54], v4);
      sub_10034DE20(&qword_1006B22F0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v40 = dispatch thunk of static Equatable.== infix(_:_:)();
      v41 = *(v39 + 8);
      v41(v7, v4);
      v41(v10, v4);
      sub_100012DF0(v13, &unk_1006B20C0, &unk_100552E10);
      if ((v40 & 1) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_49;
    }

    (*(v55 + 8))(v10, v4);
LABEL_47:
    sub_100012DF0(v13, &qword_1006B22E8, &unk_100555270);
    goto LABEL_55;
  }

  if (v38(&v13[v37], 1, v4) != 1)
  {
    goto LABEL_47;
  }

  sub_100012DF0(v13, &unk_1006B20C0, &unk_100552E10);
LABEL_49:
  if ((sub_100244D08(*(a1 + v31[20]), *(a2 + v31[20])) & 1) == 0 || *(a1 + v31[21]) != *(a2 + v31[21]) || *(a1 + v31[22]) != *(a2 + v31[22]) || *(a1 + v31[23]) != *(a2 + v31[23]) || *(a1 + v31[24]) != *(a2 + v31[24]) || *(a1 + v31[25]) != *(a2 + v31[25]))
  {
    goto LABEL_55;
  }

  v44 = v31[26];
  v45 = (a1 + v44);
  v46 = *(a1 + v44 + 8);
  v47 = (a2 + v44);
  v48 = v47[1];
  if (v46)
  {
    if (!v48 || (*v45 != *v47 || v46 != v48) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_55;
    }
  }

  else if (v48)
  {
    goto LABEL_55;
  }

  v49 = v31[27];
  v50 = (a1 + v49);
  v51 = *(a1 + v49 + 8);
  v52 = (a2 + v49);
  v53 = v52[1];
  if (v51)
  {
    if (!v53 || (*v50 != *v52 || v51 != v53) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_55;
    }
  }

  else if (v53)
  {
    goto LABEL_55;
  }

  if (*(a1 + v31[28]) == *(a2 + v31[28]) && (sub_1002526D0() & 1) != 0)
  {
    v42 = *(a1 + v31[30]) ^ *(a2 + v31[30]) ^ 1;
    return v42 & 1;
  }

LABEL_55:
  v42 = 0;
  return v42 & 1;
}

uint64_t type metadata accessor for FMItemCellViewModel(uint64_t a1)
{
  result = qword_1006BC4F0;
  if (!qword_1006BC4F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10034ADE8(uint64_t a1, uint64_t a2, NSString *a3)
{
  v131 = sub_10007EBC0(&qword_1006B1AC0, &unk_10055DF70);
  v130 = *(v131 - 8);
  __chkstk_darwin(v131);
  v127 = &v123 - v5;
  v140 = sub_10007EBC0(&qword_1006B1AC8, &unk_100554170);
  v126 = *(v140 - 8);
  __chkstk_darwin(v140);
  v124 = &v123 - v6;
  v129 = sub_10007EBC0(&qword_1006B1AD0, &qword_10055DF80);
  v128 = *(v129 - 8);
  __chkstk_darwin(v129);
  v125 = &v123 - v7;
  v139 = sub_10007EBC0(&qword_1006BC458, &qword_10055DF88);
  v137 = *(v139 - 8);
  __chkstk_darwin(v139);
  v135 = &v123 - v8;
  v141 = sub_10007EBC0(&qword_1006BC460, &qword_10055DF90);
  v133 = *(v141 - 8);
  __chkstk_darwin(v141);
  v132 = &v123 - v9;
  v138 = sub_10007EBC0(&qword_1006BC468, &unk_10055DF98);
  v136 = *(v138 - 8);
  __chkstk_darwin(v138);
  v134 = &v123 - v10;
  v11 = sub_10007EBC0(&unk_1006C0240, &unk_1005534D0);
  __chkstk_darwin(v11 - 8);
  v143 = &v123 - v12;
  v150 = type metadata accessor for PersonNameComponents();
  v147 = *(v150 - 8);
  __chkstk_darwin(v150);
  *&v154 = &v123 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FMIPBeaconShare();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v142 = &v123 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v123 - v18;
  *&v155 = a2;
  *(&v155 + 1) = sub_100346F5C;
  *&v156 = 0;
  v144 = a2;

  sub_10007EBC0(&qword_1006BC470, &qword_10055DFA8);
  LazyFilterSequence.filter(_:)();
  v157 = v159;
  v158 = v160;
  LazyFilterSequence.filter(_:)();
  sub_100349C60(v155, *(&v155 + 1));
  *&v159 = v20;
  sub_100347CA4(&v159);

  v21 = *(v159 + 16);
  *&v153 = v14;
  v145 = v15;
  if (!v21)
  {

    v26 = _swiftEmptyArrayStorage;
    v33 = _swiftEmptyArrayStorage[2];
    if (v33)
    {
      goto LABEL_9;
    }

LABEL_43:

    v38 = _swiftEmptyArrayStorage;
    if (!(_swiftEmptyArrayStorage >> 62))
    {
      goto LABEL_14;
    }

    goto LABEL_44;
  }

  v149 = a3;
  v23 = *(v15 + 16);
  v22 = v15 + 16;
  countAndFlagsBits = v23;
  v24 = (*(v22 + 64) + 32) & ~*(v22 + 64);
  v148 = v159;
  v25 = v159 + v24;
  object = *(v22 + 56);
  v26 = _swiftEmptyArrayStorage;
  do
  {
    countAndFlagsBits(v19, v25, v14);
    v27 = FMIPBeaconShare.otherPartyHandle.getter();
    v29 = v28;
    (*(v22 - 8))(v19, v14);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = sub_10008B9E4(0, *(v26 + 2) + 1, 1, v26);
    }

    v31 = *(v26 + 2);
    v30 = *(v26 + 3);
    if (v31 >= v30 >> 1)
    {
      v26 = sub_10008B9E4((v30 > 1), v31 + 1, 1, v26);
    }

    *(v26 + 2) = v31 + 1;
    v32 = &v26[16 * v31];
    *(v32 + 4) = v27;
    *(v32 + 5) = v29;
    v25 += object;
    --v21;
    v14 = v153;
  }

  while (v21);

  v33 = *(v26 + 2);
  if (!v33)
  {
    goto LABEL_43;
  }

LABEL_9:
  *&v155 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  v34 = (v26 + 40);
  do
  {
    v36 = *(v34 - 1);
    v35 = *v34;

    dispatch thunk of FMFManager.contactsController.getter();
    v37 = dispatch thunk of FMFContactsDataController.lookupSlimContact(byHandle:)();

    if (!v37)
    {
      sub_1000EC68C(v36, v35);
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v34 += 2;
    --v33;
  }

  while (v33);

  v38 = v155;
  if (!(v155 >> 62))
  {
LABEL_14:
    v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v39)
    {
      goto LABEL_15;
    }

LABEL_45:
    v41 = _swiftEmptyArrayStorage;
LABEL_46:

    v62 = *(v144 + 16);
    v63 = v153;
    v64 = v142;
    if (v62)
    {
      v65 = *(v145 + 16);
      v66 = (v145 + 8);
      v67 = v144 + ((*(v145 + 80) + 32) & ~*(v145 + 80));
      v68 = *(v145 + 72);
      while (1)
      {
        v65(v64, v67, v63);
        if (FMIPBeaconShare.isSharedLostItem.getter())
        {
          break;
        }

        (*v66)(v64, v63);
        v67 += v68;
        if (!--v62)
        {
          goto LABEL_50;
        }
      }

      v109 = v145;
      v110 = v143;
      (*(v145 + 32))(v143, v64, v63);
      (*(v109 + 56))(v110, 0, 1, v63);
      sub_100012DF0(v110, &unk_1006C0240, &unk_1005534D0);
      if (!*(v41 + 2))
      {
        goto LABEL_59;
      }

      v112 = *(v41 + 4);
      v111 = *(v41 + 5);

      v113 = HIBYTE(v111) & 0xF;
      if ((v111 & 0x2000000000000000) == 0)
      {
        v113 = v112 & 0xFFFFFFFFFFFFLL;
      }

      if (!v113)
      {
LABEL_59:

        v119 = [objc_opt_self() mainBundle];
        v165._object = 0x800000010057D3F0;
        v120._countAndFlagsBits = 0xD000000000000026;
        v120._object = 0x8000000100592380;
        v121.value._object = 0x800000010057D3D0;
        v165._countAndFlagsBits = 0xD000000000000018;
        v121.value._countAndFlagsBits = 0xD000000000000013;
        v122._countAndFlagsBits = 0;
        v122._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v120, v121, v119, v122, v165);

        return;
      }

      v114 = [objc_opt_self() mainBundle];
      v164._object = 0x800000010057D3F0;
      v115._countAndFlagsBits = 0xD00000000000001ELL;
      v115._object = 0x8000000100592360;
      v116.value._object = 0x800000010057D3D0;
      v164._countAndFlagsBits = 0xD000000000000018;
      v116.value._countAndFlagsBits = 0xD000000000000013;
      v117._countAndFlagsBits = 0;
      v117._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v115, v116, v114, v117, v164);

      sub_10007EBC0(&unk_1006B20B0, &unk_1005523B0);
      v118 = swift_allocObject();
      *(v118 + 16) = xmmword_100552220;
      *(v118 + 56) = &type metadata for String;
      *(v118 + 64) = sub_10008EE84();
      *(v118 + 32) = v112;
      *(v118 + 40) = v111;
      String.init(format:_:)();
    }

    else
    {
LABEL_50:
      v69 = v143;
      (*(v145 + 56))(v143, 1, 1, v63);
      sub_100012DF0(v69, &unk_1006C0240, &unk_1005534D0);
      v70 = *(v41 + 2);
      if (v70 < 2)
      {
        *&v159 = v41;
        v96 = v126;
        v97 = v124;
        (*(v126 + 104))(v124, enum case for ListFormatStyle.ListType.and<A, B>(_:), v140);
        v98 = v130;
        v99 = v127;
        v100 = v131;
        (*(v130 + 104))(v127, enum case for ListFormatStyle.Width.standard<A, B>(_:), v131);
        sub_10007EBC0(&qword_1006C0C10, &qword_100556FC0);
        sub_100004098(&qword_1006B1AE0, &qword_1006C0C10, &qword_100556FC0, &protocol conformance descriptor for [A]);
        v101 = v125;
        static FormatStyle.list<A>(type:width:)();
        (*(v98 + 8))(v99, v100);
        (*(v96 + 8))(v97, v140);
        sub_100004098(&qword_1006B1AE8, &qword_1006B1AD0, &qword_10055DF80, &protocol conformance descriptor for ListFormatStyle<A, B>);
        v102 = v129;
        Sequence.formatted<A>(_:)();
        (*(v128 + 8))(v101, v102);

        v103 = v155;
        v104 = [objc_opt_self() mainBundle];
        v163._object = 0x800000010057D3F0;
        v105._countAndFlagsBits = 0xD000000000000019;
        v105._object = 0x80000001005923B0;
        v106.value._object = 0x800000010057D3D0;
        v163._countAndFlagsBits = 0xD000000000000018;
        v106.value._countAndFlagsBits = 0xD000000000000013;
        v107._countAndFlagsBits = 0;
        v107._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v105, v106, v104, v107, v163);

        sub_10007EBC0(&unk_1006B20B0, &unk_1005523B0);
        v108 = swift_allocObject();
        *(v108 + 16) = xmmword_100552220;
        *(v108 + 56) = &type metadata for String;
        *(v108 + 64) = sub_10008EE84();
        *(v108 + 32) = v103;
        String.init(format:_:)();
      }

      else
      {
        *&v154 = v41 + 32;
        v71 = v70 - 1;
        v72 = objc_opt_self();
        v73 = [v72 mainBundle];
        v161._object = 0x800000010057D3F0;
        v74._countAndFlagsBits = 0xD000000000000024;
        v74._object = 0x80000001005923D0;
        v75.value._object = 0x800000010057D3D0;
        v161._countAndFlagsBits = 0xD000000000000018;
        v75.value._countAndFlagsBits = 0xD000000000000013;
        v76._countAndFlagsBits = 0;
        v76._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v74, v75, v73, v76, v161);

        sub_10007EBC0(&unk_1006B20B0, &unk_1005523B0);
        v77 = swift_allocObject();
        v153 = xmmword_100552220;
        *(v77 + 16) = xmmword_100552220;
        *(v77 + 56) = &type metadata for Int;
        *(v77 + 64) = &protocol witness table for Int;
        *(v77 + 32) = v71;
        v78 = String.init(format:_:)();
        v80 = v79;

        sub_10007EBC0(&unk_1006AF770, &unk_1005542D0);
        inited = swift_initStackObject();
        *(inited + 16) = v153;
        *(inited + 32) = v78;
        *(inited + 40) = v80;
        *&v155 = v41;
        *(&v155 + 1) = v154;
        v156 = xmmword_10055DF60;

        sub_1003491F8(inited);
        v82 = v156;
        v154 = v155;
        v83 = [v72 mainBundle];
        v162._object = 0x800000010057D3F0;
        v84._countAndFlagsBits = 0xD000000000000019;
        v84._object = 0x80000001005923B0;
        v85.value._object = 0x800000010057D3D0;
        v162._countAndFlagsBits = 0xD000000000000018;
        v85.value._countAndFlagsBits = 0xD000000000000013;
        v86._countAndFlagsBits = 0;
        v86._object = 0xE000000000000000;
        v87 = NSLocalizedString(_:tableName:bundle:value:comment:)(v84, v85, v83, v86, v162);
        countAndFlagsBits = v87._countAndFlagsBits;
        object = v87._object;

        v88 = swift_allocObject();
        *(v88 + 16) = v153;
        v155 = v154;
        v156 = v82;
        v89 = v133;
        v90 = v132;
        (*(v133 + 104))(v132, enum case for ListFormatStyle.ListType.and<A, B>(_:), v141);
        v91 = v137;
        v92 = v135;
        v93 = v139;
        (*(v137 + 104))(v135, enum case for ListFormatStyle.Width.standard<A, B>(_:), v139);
        *&v153 = sub_10007EBC0(&qword_1006BC478, &qword_10055DFB0);
        sub_100004098(&qword_1006BC480, &qword_1006BC478, &qword_10055DFB0, &protocol conformance descriptor for ArraySlice<A>);
        v94 = v134;
        static FormatStyle.list<A>(type:width:)();
        (*(v91 + 8))(v92, v93);
        (*(v89 + 8))(v90, v141);
        *(v88 + 56) = &type metadata for String;
        *(v88 + 64) = sub_10008EE84();
        sub_100004098(&qword_1006BC488, &qword_1006BC468, &unk_10055DF98, &protocol conformance descriptor for ListFormatStyle<A, B>);
        v95 = v138;
        Sequence.formatted<A>(_:)();
        (*(v136 + 8))(v94, v95);
        String.init(format:_:)();

        swift_unknownObjectRelease();
      }
    }

    return;
  }

LABEL_44:
  v39 = _CocoaArrayWrapper.endIndex.getter();
  if (!v39)
  {
    goto LABEL_45;
  }

LABEL_15:
  v40 = 0;
  countAndFlagsBits = (v38 & 0xC000000000000001);
  object = v38 & 0xFFFFFFFFFFFFFF8;
  v149 = CNContactNicknameKey;
  v148 = CNContactGivenNameKey;
  ++v147;
  v41 = _swiftEmptyArrayStorage;
  v146 = CNContactFamilyNameKey;
  while (1)
  {
    if (countAndFlagsBits)
    {
      v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v40 >= *(object + 16))
      {
        goto LABEL_61;
      }

      v42 = *(v38 + 8 * v40 + 32);
    }

    v43 = v42;
    v44 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      break;
    }

    PersonNameComponents.init()();
    if ([v43 isKeyAvailable:v149])
    {
      v45 = [v43 nickname];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      PersonNameComponents.nickname.setter();
    }

    if ([v43 isKeyAvailable:v148])
    {
      v46 = [v43 givenName];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      PersonNameComponents.givenName.setter();
    }

    if ([v43 isKeyAvailable:v146])
    {
      v47 = [v43 familyName];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      PersonNameComponents.familyName.setter();
    }

    v48 = objc_opt_self();
    v49 = v154;
    isa = PersonNameComponents._bridgeToObjectiveC()().super.isa;
    v51 = [v48 localizedStringFromPersonNameComponents:isa style:1 options:0];

    v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v53;

    (*v147)(v49, v150);
    v55 = HIBYTE(v54) & 0xF;
    if ((v54 & 0x2000000000000000) == 0)
    {
      v55 = v52 & 0xFFFFFFFFFFFFLL;
    }

    if (v55)
    {
    }

    else
    {

      if (qword_1006AEA90 != -1)
      {
        swift_once();
      }

      v56 = [qword_1006D3D28 stringFromContact:v43];
      if (v56)
      {
        v57 = v56;
        v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v54 = v58;
      }

      else
      {

        v52 = 0;
        v54 = 0xE000000000000000;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_10008B9E4(0, *(v41 + 2) + 1, 1, v41);
    }

    v60 = *(v41 + 2);
    v59 = *(v41 + 3);
    if (v60 >= v59 >> 1)
    {
      v41 = sub_10008B9E4((v59 > 1), v60 + 1, 1, v41);
    }

    *(v41 + 2) = v60 + 1;
    v61 = &v41[16 * v60];
    *(v61 + 4) = v52;
    *(v61 + 5) = v54;
    ++v40;
    if (v44 == v39)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);

  __break(1u);
}

uint64_t sub_10034C388(uint64_t a1, uint64_t a2, int a3, int a4, NSString *a5)
{
  v129 = a2;
  v130 = a5;
  LODWORD(v134) = a4;
  v139 = a3;
  v6 = type metadata accessor for FMIPItemState();
  v137 = *(v6 - 8);
  v138 = v6;
  __chkstk_darwin(v6);
  v136 = &v115[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v135 = &v115[-v9];
  v10 = type metadata accessor for FMIPLocationType();
  v123 = *(v10 - 8);
  v124 = v10;
  __chkstk_darwin(v10);
  v122 = &v115[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for FMIPItem();
  v126 = *(v12 - 8);
  v127 = v12;
  __chkstk_darwin(v12);
  v125 = &v115[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for FMIPLocation();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v128 = &v115[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v19 = &v115[-v18];
  v20 = sub_10007EBC0(&unk_1006C0220, qword_100553770);
  __chkstk_darwin(v20 - 8);
  v22 = &v115[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v23);
  v25 = &v115[-v24];
  FMIPItem.location.getter();
  v131 = v15;
  v26 = *(v15 + 48);
  v27 = v26(v25, 1, v14);
  v28 = v25;
  v29 = a1;
  sub_100012DF0(v28, &unk_1006C0220, qword_100553770);
  v30 = [objc_opt_self() mainBundle];
  v31 = "ITEMS_LIST_SEPARATOR";
  if (v27 == 1)
  {
    v31 = "sUpdateViewController.swift";
    v32 = 0xD000000000000011;
  }

  else
  {
    v32 = 0xD000000000000019;
  }

  v132 = 0x8000000100579A00;
  v142._object = 0x8000000100579A00;
  v33 = v31 | 0x8000000000000000;
  v133 = "CLEAR_TAGS_MESSAGE";
  v34.value._object = 0x80000001005799E0;
  v142._countAndFlagsBits = 0xD000000000000018;
  v34.value._countAndFlagsBits = 0xD000000000000013;
  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  v36 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v32, v34, v30, v35, v142);

  v141 = v36;
  FMIPItem.location.getter();
  if (v26(v22, 1, v14) != 1)
  {
    v37 = v131;
    (*(v131 + 32))(v19, v22, v14);
    v38 = sub_1004FB6E0(a1, 1);
    if (!v39)
    {
      (*(v37 + 8))(v19, v14);
      goto LABEL_14;
    }

    v119._countAndFlagsBits = v38;
    v119._object = v39;

    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_100005B14(v40, qword_1006D4630);
    v41 = v125;
    v42 = v126;
    v43 = v127;
    (*(v126 + 16))(v125, v29, v127);
    v44 = v128;
    (*(v37 + 16))(v128, v19, v14);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();
    v47 = os_log_type_enabled(v45, v46);
    v121 = v14;
    v120 = v19;
    if (v47)
    {
      v48 = v43;
      v49 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v140._countAndFlagsBits = v117;
      *v49 = 136315394;
      v116 = v46;
      v50 = FMIPItem.identifier.getter();
      v118 = v29;
      v52 = v51;
      (*(v42 + 8))(v41, v48);
      v53 = sub_100005B4C(v50, v52, &v140._countAndFlagsBits);

      *(v49 + 4) = v53;
      *(v49 + 12) = 2080;
      v54 = FMIPLocation.location.getter();
      v55 = [v54 description];
      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v57;

      v128 = *(v131 + 8);
      (v128)(v44, v14);

      v59 = v56;
      v29 = v118;
      v60 = sub_100005B4C(v59, v58, &v140._countAndFlagsBits);

      *(v49 + 14) = v60;
      _os_log_impl(&_mh_execute_header, v45, v116, "FMItemCellViewModel: beacon %s, location %s", v49, 0x16u);
      swift_arrayDestroy();

      if ((v134 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {

      v128 = *(v131 + 8);
      (v128)(v44, v14);
      (*(v42 + 8))(v41, v43);
      if ((v134 & 1) == 0)
      {
LABEL_11:
        v61 = v120;
        if (FMIPLocation.isOld.getter())
        {
          (v128)(v61, v121);
          v134 = 0;
          v141 = v119;
        }

        else
        {
          v95 = v61;
          v134 = sub_1004FA9E0(v29, 0);
          v97 = v96;
          v99 = v98;
          v100 = [objc_opt_self() mainBundle];
          v146._object = v132;
          v101._countAndFlagsBits = 0xD000000000000014;
          v101._object = 0x8000000100592320;
          v102.value._object = (v133 | 0x8000000000000000);
          v146._countAndFlagsBits = 0xD000000000000018;
          v102.value._countAndFlagsBits = 0xD000000000000013;
          v103._countAndFlagsBits = 0;
          v103._object = 0xE000000000000000;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v101, v102, v100, v103, v146);

          sub_10007EBC0(&unk_1006B20B0, &unk_1005523B0);
          v104 = swift_allocObject();
          *(v104 + 16) = xmmword_100552210;
          *(v104 + 56) = &type metadata for String;
          v105 = sub_10008EE84();
          *(v104 + 32) = v97;
          *(v104 + 40) = v99;
          *(v104 + 96) = &type metadata for String;
          *(v104 + 104) = v105;
          countAndFlagsBits = v119._countAndFlagsBits;
          *(v104 + 64) = v105;
          *(v104 + 72) = __PAIR128__(v119._object, countAndFlagsBits);
          v107 = String.init(format:_:)();
          object = v108;

          if (FMIPShowLocationSource.getter())
          {
            v140._countAndFlagsBits = 0;
            v140._object = 0xE000000000000000;
            v110 = v122;
            FMIPLocation.locationType.getter();
            v111 = v124;
            _print_unlocked<A, B>(_:_:)();
            (*(v123 + 8))(v110, v111);
            v112._countAndFlagsBits = 539831584;
            v112._object = 0xE400000000000000;
            String.append(_:)(v112);

            v113._countAndFlagsBits = v107;
            v113._object = object;
            String.append(_:)(v113);

            v114 = v140._countAndFlagsBits;
            object = v140._object;
            (v128)(v95, v121);
            v141._countAndFlagsBits = v114;
          }

          else
          {
            (v128)(v95, v121);
            v141._countAndFlagsBits = v107;
          }

          v141._object = object;
        }

        goto LABEL_19;
      }
    }

    v80 = objc_opt_self();
    v81 = [v80 mainBundle];
    v144._object = v132;
    v82._countAndFlagsBits = 0xD000000000000014;
    v82._object = 0x8000000100592320;
    v83.value._object = (v133 | 0x8000000000000000);
    v144._countAndFlagsBits = 0xD000000000000018;
    v83.value._countAndFlagsBits = 0xD000000000000013;
    v84._countAndFlagsBits = 0;
    v84._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v82, v83, v81, v84, v144);

    sub_10007EBC0(&unk_1006B20B0, &unk_1005523B0);
    v85 = swift_allocObject();
    *(v85 + 16) = xmmword_100552210;
    v86 = [v80 mainBundle];
    v145._object = 0x8000000100589D20;
    v87._countAndFlagsBits = 0xD000000000000019;
    v87._object = 0x8000000100589D00;
    v145._countAndFlagsBits = 0xD00000000000002BLL;
    v88._countAndFlagsBits = 0;
    v88._object = 0xE000000000000000;
    v89 = NSLocalizedString(_:tableName:bundle:value:comment:)(v87, 0, v86, v88, v145);

    *(v85 + 56) = &type metadata for String;
    v90 = sub_10008EE84();
    *(v85 + 32) = v89;
    *(v85 + 96) = &type metadata for String;
    *(v85 + 104) = v90;
    v91 = v119._countAndFlagsBits;
    *(v85 + 64) = v90;
    *(v85 + 72) = __PAIR128__(v119._object, v91);
    v92 = String.init(format:_:)();
    v94 = v93;

    (v128)(v120, v121);
    v134 = 0;
    v141._countAndFlagsBits = v92;
    v141._object = v94;
    goto LABEL_19;
  }

  sub_100012DF0(v22, &unk_1006C0220, qword_100553770);
LABEL_14:
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v62 = type metadata accessor for Logger();
  sub_100005B14(v62, qword_1006D4630);
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 0;
    _os_log_impl(&_mh_execute_header, v63, v64, "FMItemCellViewModel: Location is nil and not locating...", v65, 2u);
  }

  v134 = 0;
LABEL_19:
  v66 = v135;
  FMIPItem.state.getter();
  v67 = v136;
  static FMIPItemState.isFirmwareUpdating.getter();
  sub_10034DE20(&qword_1006C0350, &type metadata accessor for FMIPItemState, &protocol conformance descriptor for FMIPItemState);
  v68 = v138;
  v69 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v70 = *(v137 + 8);
  v70(v67, v68);
  v70(v66, v68);
  if (v69)
  {
    v71 = "SPONDING_SUBTITLE_LIST";
    v72 = 0xD000000000000027;
  }

  else
  {
    if ((FMIPItem.isFirmwareUpdateMandatory.getter() & 1) == 0)
    {
      goto LABEL_24;
    }

    v71 = "ITEMS_NO_LOCATION";
    v72 = 0xD000000000000026;
  }

  v73 = [objc_opt_self() mainBundle];
  v143._object = v132;
  v74._object = (v71 | 0x8000000000000000);
  v75.value._object = (v133 | 0x8000000000000000);
  v143._countAndFlagsBits = 0xD000000000000018;
  v74._countAndFlagsBits = v72;
  v75.value._countAndFlagsBits = 0xD000000000000013;
  v76._countAndFlagsBits = 0;
  v76._object = 0xE000000000000000;
  v77 = NSLocalizedString(_:tableName:bundle:value:comment:)(v74, v75, v73, v76, v143);

  v141 = v77;
LABEL_24:
  if (v139 != 1)
  {
    sub_10034ADE8(v29, v129, v130);
    v140._countAndFlagsBits = 10;
    v140._object = 0xE100000000000000;
    String.append(_:)(v78);

    String.append(_:)(v140);
  }

  return v134;
}

uint64_t sub_10034D158(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006BC490, qword_10055DFB8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_10034D1C8(uint64_t a1, char a2)
{
  v3 = type metadata accessor for FMIPItemState();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v15 - v8;
  FMIPItem.state.getter();
  static FMIPItemState.isBTConnected.getter();
  sub_10034DE20(&qword_1006C0350, &type metadata accessor for FMIPItemState, &protocol conformance descriptor for FMIPItemState);
  v10 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v11 = *(v4 + 8);
  v11(v6, v3);
  v11(v9, v3);
  v12 = 1000.0;
  v13 = 0.0;
  if (a2)
  {
    v12 = 0.0;
  }

  if ((v10 & 1) == 0)
  {
    v13 = 100.0;
  }

  return v12 + v13;
}

id sub_10034D354(uint64_t a1, uint64_t a2)
{
  v56 = type metadata accessor for FMIPItemState();
  v51 = *(v56 - 8);
  __chkstk_darwin(v56);
  v55 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v50 - v6;
  v8 = type metadata accessor for FMIPBeaconShare();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10007EBC0(&unk_1006C0240, &unk_1005534D0);
  __chkstk_darwin(v12 - 8);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v50 - v16;
  v57 = [objc_opt_self() configurationWithPointSize:9.0];
  v18 = *(a2 + 16);
  v53 = v14;
  v54 = v9;
  v52 = a2;
  if (v18)
  {
    v50 = a1;
    v20 = v9 + 16;
    v19 = *(v9 + 16);
    v21 = (v9 + 8);
    v22 = a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v23 = *(v20 + 56);
    while (1)
    {
      v19(v11, v22, v8);
      if (FMIPBeaconShare.isSharedLostItem.getter())
      {
        break;
      }

      (*v21)(v11, v8);
      v22 += v23;
      if (!--v18)
      {
        v24 = 0;
        v25 = 1;
        a1 = v50;
        v9 = v54;
        goto LABEL_8;
      }
    }

    v9 = v54;
    (*(v54 + 32))(v17, v11, v8);
    v25 = 0;
    v24 = 1;
    a1 = v50;
  }

  else
  {
    v24 = 0;
    v25 = 1;
  }

LABEL_8:
  (*(v9 + 56))(v17, v25, 1, v8);
  sub_100012DF0(v17, &unk_1006C0240, &unk_1005534D0);
  FMIPItem.state.getter();
  v26 = v55;
  static FMIPItemState.markLostActive.getter();
  sub_10034DE20(&qword_1006C0350, &type metadata accessor for FMIPItemState, &protocol conformance descriptor for FMIPItemState);
  v27 = v56;
  v28 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v29 = v51[1];
  v29(v26, v27);
  v29(v7, v27);
  if (v24 & 1) != 0 || (v28)
  {
    v31 = v57;
    v32 = String._bridgeToObjectiveC()();
    v30 = [objc_opt_self() systemImageNamed:v32 withConfiguration:v31];

    v51 = [objc_opt_self() systemOrangeColor];
  }

  else
  {
    v51 = 0;
    v30 = 0;
  }

  FMIPItem.state.getter();
  v33 = v55;
  static FMIPItemState.isFirmwareUpdating.getter();
  v34 = v56;
  v35 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v29(v33, v34);
  v29(v7, v34);
  if (v35)
  {
    v36 = v57;
    v37 = String._bridgeToObjectiveC()();
    v38 = a1;
    v39 = [objc_opt_self() systemImageNamed:v37 withConfiguration:v36];

    v40 = [objc_opt_self() systemBlueColor];
    v30 = v39;
    a1 = v38;
    v41 = v52;
    v42 = v53;
  }

  else
  {
    v41 = v52;
    v42 = v53;
    v40 = v51;
  }

  My = type metadata accessor for Feature.FindMy();
  v58[3] = My;
  v58[4] = sub_10034DE20(&qword_1006B4220, &type metadata accessor for Feature.FindMy, &protocol conformance descriptor for Feature.FindMy);
  v44 = sub_100008FC0(v58);
  (*(*(My - 8) + 104))(v44, enum case for Feature.FindMy.cowardlyCarrot(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  v45 = sub_100006060(v58);
  if (My)
  {
    __chkstk_darwin(v45);
    *(&v50 - 2) = a1;
    sub_100110880(sub_10034DA80, v41, v42);
    if ((*(v54 + 48))(v42, 1, v8) == 1)
    {
    }

    else
    {
      v46 = v57;
      v47 = String._bridgeToObjectiveC()();
      v48 = [objc_opt_self() systemImageNamed:v47 withConfiguration:v46];

      [objc_opt_self() systemOrangeColor];
      v30 = v48;
    }

    sub_100012DF0(v42, &unk_1006C0240, &unk_1005534D0);
  }

  else
  {
  }

  return v30;
}

void sub_10034DAC8(uint64_t a1)
{
  sub_10000AF8C();
  if (v1 <= 0x3F)
  {
    sub_10002C124(319, &qword_1006B1398, &qword_1006BC2B0, UIImage_ptr);
    if (v2 <= 0x3F)
    {
      sub_10002C124(319, &unk_1006B13A0, &qword_1006C0000, UIColor_ptr);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Date();
        if (v4 <= 0x3F)
        {
          sub_10034DCC4(319, &qword_1006B7DC8, &type metadata accessor for UUID, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            sub_10034DCC4(319, &unk_1006BC500, &type metadata accessor for FMIPBeaconShare, &type metadata accessor for Array);
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

void sub_10034DCC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_10034DD70(uint64_t a1)
{
  result = sub_10034DE20(&qword_1006BC5C8, type metadata accessor for FMItemCellViewModel, &unk_10055E00C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10034DDC8(uint64_t a1)
{
  result = sub_10034DE20(&qword_1006BC5D0, type metadata accessor for FMItemCellViewModel, &unk_10055E04C);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10034DE20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10034E054()
{
  v1 = *&v0[OBJC_IVAR____TtC6FindMy30FMSymbolBulletedListHeaderView_titleLabel];
  [v0 addSubview:v1];
  v2 = *&v0[OBJC_IVAR____TtC6FindMy30FMSymbolBulletedListHeaderView_separatorView];
  [v0 addSubview:v2];
  v3 = objc_opt_self();
  v4 = [v3 labelColor];
  v5 = [v4 colorWithAlphaComponent:0.1];

  [v2 setBackgroundColor:v5];
  [v1 setAdjustsFontForContentSizeCategory:1];
  [v1 setNumberOfLines:0];
  v6 = [v3 secondaryLabelColor];
  [v1 setTextColor:v6];

  v7 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleCaption1];
  [v1 setFont:v7];
}

void sub_10034E1DC()
{
  sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100552EE0;
  v2 = *&v0[OBJC_IVAR____TtC6FindMy30FMSymbolBulletedListHeaderView_titleLabel];
  *(inited + 32) = v2;
  v3 = *&v0[OBJC_IVAR____TtC6FindMy30FMSymbolBulletedListHeaderView_separatorView];
  *(inited + 40) = v3;
  v4 = v2;
  v5 = v3;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_9;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

  for (i = v4; ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
  {
    v7 = i;
    [i setTranslatesAutoresizingMaskIntoConstraints:0];

    if ((inited & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v8 = *(inited + 40);
      goto LABEL_7;
    }

LABEL_8:
    __break(1u);
LABEL_9:
    ;
  }

  v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_7:
  v9 = v8;
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

  swift_setDeallocating();
  swift_arrayDestroy();
  v37 = objc_opt_self();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100552EF0;
  v11 = [v4 leadingAnchor];
  v12 = [v0 leadingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];

  *(v10 + 32) = v13;
  v14 = [v4 trailingAnchor];
  v15 = [v0 trailingAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];

  *(v10 + 40) = v16;
  v17 = [v4 topAnchor];
  v18 = [v0 topAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];

  *(v10 + 48) = v19;
  sub_10002B27C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v37 activateConstraints:isa];

  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100552F00;
  v22 = [v5 leadingAnchor];
  v23 = [v0 leadingAnchor];
  v24 = [v22 constraintEqualToAnchor:v23];

  *(v21 + 32) = v24;
  v25 = [v5 trailingAnchor];
  v26 = [v0 trailingAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];

  *(v21 + 40) = v27;
  v28 = [v5 heightAnchor];
  v29 = [v28 constraintEqualToConstant:1.0];

  *(v21 + 48) = v29;
  v30 = [v5 topAnchor];
  v31 = [v4 lastBaselineAnchor];
  v32 = [v30 constraintEqualToAnchor:v31 constant:6.0];

  *(v21 + 56) = v32;
  v33 = [v5 bottomAnchor];
  v34 = [v0 bottomAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];

  *(v21 + 64) = v35;
  v36 = Array._bridgeToObjectiveC()().super.isa;

  [v37 activateConstraints:v36];
}

id sub_10034E6F4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMSymbolBulletedListHeaderView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10034E798(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *((swift_isaMask & *v2) + 0x198));
  v4 = *v3;
  v5 = v3[1];
  *v3 = a1;
  v3[1] = a2;
  return sub_10001835C(v4, v5);
}

uint64_t sub_10034E7D4@<X0>(uint64_t a1@<X8>)
{
  v3 = *((swift_isaMask & *v1) + 0x1A0);
  swift_beginAccess();
  v4 = type metadata accessor for Optional();
  return (*(*(v4 - 8) + 16))(a1, &v1[v3], v4);
}

uint64_t sub_10034E894(uint64_t a1)
{
  v3 = *((swift_isaMask & *v1) + 0x1A0);
  swift_beginAccess();
  v4 = type metadata accessor for Optional();
  (*(*(v4 - 8) + 40))(&v1[v3], a1, v4);
  return swift_endAccess();
}

uint64_t sub_10034E95C()
{
  v1 = *v0;
  v2 = swift_isaMask;
  v3 = *((swift_isaMask & *v0) + 0x188);
  v4 = type metadata accessor for Optional();
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  v8 = type metadata accessor for FMActionableListTableViewCell(0, v3, *((v2 & v1) + 0x190), v7);
  v13.receiver = v0;
  v13.super_class = v8;
  objc_msgSendSuper2(&v13, "prepareForReuse");
  v9 = (v0 + *((swift_isaMask & *v0) + 0x198));
  v10 = *v9;
  v11 = v9[1];
  *v9 = 0;
  v9[1] = 0;
  sub_10001835C(v10, v11);
  (*(*(v3 - 8) + 56))(v6, 1, 1, v3);
  return sub_10034E894(v6);
}

void sub_10034EA98(void *a1)
{
  v1 = a1;
  sub_10034E95C();
}

id sub_10034EAE0(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = swift_isaMask;
  v6 = *((swift_isaMask & v4) + 0x188);
  v7 = type metadata accessor for Optional();
  __chkstk_darwin(v7 - 8);
  v67 = &v59 - v8;
  v9 = sub_10007EBC0(&qword_1006B9340, &qword_100565B40);
  __chkstk_darwin(v9 - 8);
  v60 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v59 - v12;
  v14 = sub_10007EBC0(&qword_1006B6D60, &qword_10055B380);
  __chkstk_darwin(v14 - 8);
  v16 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v66 = &v59 - v18;
  __chkstk_darwin(v19);
  v64 = &v59 - v20;
  __chkstk_darwin(v21);
  v23 = &v59 - v22;
  v25 = __chkstk_darwin(v24);
  v27 = &v59 - v26;
  v28 = *((v5 & v4) + 0x190);
  v62 = v28[29];
  v63 = v28 + 29;
  v65 = v62(v6, v28, v25);
  v29 = *(v2 + *((swift_isaMask & *v2) + 0x1A8));
  UIButton.configuration.getter();
  v30 = type metadata accessor for UIButton.Configuration();
  v31 = *(v30 - 8);
  v32 = *(v31 + 48);
  v69 = v31 + 48;
  v70 = v32;
  v33 = v32(v27, 1, v30);
  v68 = v29;
  if (v33)
  {
    sub_10028247C(v27, v16);
    UIButton.configuration.setter();
    sub_100012DF0(v27, &qword_1006B6D60, &qword_10055B380);
  }

  else
  {
    v34 = v28[20];
    v61 = a1;
    v35 = v34(v6, v28);
    v37 = v36;
    v59 = swift_allocObject();
    *(v59 + 16) = v2;
    v38 = v2;
    if (v37)
    {
      sub_10034F23C(v35, v37);

      v39 = 0;
    }

    else
    {
      v39 = 1;
    }

    v40 = type metadata accessor for AttributedString();
    (*(*(v40 - 8) + 56))(v13, v39, 1, v40);

    UIButton.Configuration.attributedTitle.setter();
    UIButton.configuration.setter();
    a1 = v61;
  }

  v41 = v64;
  UIButton.configuration.getter();
  if (v70(v23, 1, v30))
  {
    sub_10028247C(v23, v16);
    UIButton.configuration.setter();
    sub_100012DF0(v23, &qword_1006B6D60, &qword_10055B380);
  }

  else
  {
    (v62)(v6, v28);
    UIButton.Configuration.showsActivityIndicator.setter();
    UIButton.configuration.setter();
  }

  v42 = *(v2 + *((swift_isaMask & *v2) + 0x1B0));
  UIButton.configuration.getter();
  if (v70(v41, 1, v30))
  {
    sub_10028247C(v41, v16);
    UIButton.configuration.setter();
    sub_100012DF0(v41, &qword_1006B6D60, &qword_10055B380);
  }

  else
  {
    v43 = v28[21];
    v61 = a1;
    v44 = v43(v6, v28);
    v46 = v45;
    *(swift_allocObject() + 16) = v2;
    v47 = v2;
    if (v46)
    {
      v48 = v44;
      v49 = v60;
      sub_10034F23C(v48, v46);

      v50 = 0;
    }

    else
    {
      v50 = 1;
      v49 = v60;
    }

    v51 = type metadata accessor for AttributedString();
    (*(*(v51 - 8) + 56))(v49, v50, 1, v51);

    UIButton.Configuration.attributedTitle.setter();
    UIButton.configuration.setter();
    a1 = v61;
  }

  v52 = v66;
  UIButton.configuration.getter();
  if (v70(v52, 1, v30))
  {
    sub_10028247C(v52, v16);
    UIButton.configuration.setter();
    sub_100012DF0(v52, &qword_1006B6D60, &qword_10055B380);
  }

  else
  {
    (v62)(v6, v28);
    UIButton.Configuration.showsActivityIndicator.setter();
    UIButton.configuration.setter();
  }

  v53 = v65 == 0;
  v54 = v28[27];
  v55 = v54(v6, v28);
  [v68 setEnabled:v53 & ~v55];
  [v42 setEnabled:{v53 & ~v54(v6, v28)}];
  v56 = *(v6 - 8);
  v57 = v67;
  (*(v56 + 16))(v67, a1, v6);
  (*(v56 + 56))(v57, 0, 1, v6);
  sub_10034E894(v57);
  return sub_100047218(a1);
}

uint64_t sub_10034F23C(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for AttributeContainer();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v13 - v7;
  AttributeContainer.init()();
  v9 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  [v9 setAlignment:1];
  LODWORD(v10) = 1.0;
  [v9 setHyphenationFactor:v10];
  [v9 setLineBreakMode:0];
  v13[1] = v9;
  sub_100350E28();
  v11 = v9;
  AttributeContainer.subscript.setter();
  (*(v3 + 16))(v5, v8, v2);

  AttributedString.init(_:attributes:)();

  return (*(v3 + 8))(v8, v2);
}

void sub_10034F404()
{
  v1 = v0;
  v2 = sub_10007EBC0(&qword_1006B6D60, &qword_10055B380);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  sub_100044064();
  v5 = *(v0 + *((swift_isaMask & *v0) + 0x1A8));
  sub_100144DD0(0);
  v6 = type metadata accessor for UIButton.Configuration();
  v7 = *(*(v6 - 8) + 56);
  v7(v4, 0, 1, v6);
  UIButton.configuration.setter();
  v8 = *(v1 + *((swift_isaMask & *v1) + 0x1B0));
  sub_100144DD0(1);
  v7(v4, 0, 1, v6);
  UIButton.configuration.setter();
  v9 = [v5 titleLabel];
  if (v9)
  {
    v10 = v9;
    v11 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
    [v10 setFont:v11];
  }

  v12 = [v8 titleLabel];
  if (v12)
  {
    v13 = v12;
    v14 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
    [v13 setFont:v14];
  }

  [v5 addTarget:v1 action:"handleAccept" forControlEvents:64];
  [v8 addTarget:v1 action:"handleDecline" forControlEvents:64];
  v15 = [v1 contentView];
  [v15 addSubview:v5];

  v16 = [v1 contentView];
  [v16 addSubview:v8];
}

void sub_10034F6C0()
{
  sub_1000445C8();
  if (qword_1006AEB60 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + *((swift_isaMask & *v0) + 0x1C0));
  [v1 setSpacing:10.0];
  sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100552EE0;
  v3 = swift_isaMask & *v0;
  v4 = *(v0 + *(v3 + 0x1A8));
  *(v2 + 32) = v4;
  v5 = *(v0 + *(v3 + 432));
  *(v2 + 40) = v5;
  sub_100141CA8();
  v6 = v4;
  v7 = v5;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 setArrangedSubviews:isa];

  v9 = [v0 traitCollection];
  v10 = [v9 preferredContentSizeCategory];

  LOBYTE(v9) = UIContentSizeCategory.isAccessibilityCategory.getter();
  if (v9)
  {
    [v1 setAxis:1];
    [v1 setDistribution:0];
    v11 = *(v0 + qword_1006B7288);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100555280;
    v13 = *(v0 + qword_1006B7270);
    v14 = *(v0 + qword_1006B7290);
    *(v12 + 32) = v13;
    *(v12 + 40) = v14;
    v15 = *(v0 + qword_1006B72A8);
    v16 = *(v0 + qword_1006B7298);
    *(v12 + 48) = v15;
    *(v12 + 56) = v16;
    v17 = *(v0 + qword_1006B7268);
    *(v12 + 64) = v17;
    *(v12 + 72) = v1;
    v18 = v1;
    v19 = v13;
    v20 = v14;
    v21 = v15;
    v22 = v16;
    v23 = v17;
    v24 = Array._bridgeToObjectiveC()().super.isa;

    [v11 setArrangedSubviews:v24];

    [v11 setAlignment:3 forView:v18 inAxis:0];
  }

  else
  {
    [v1 setAxis:0];
    [v1 setDistribution:1];
    [v1 setAlignment:1];
    v25 = *(v0 + qword_1006B7280);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_100552EF0;
    v27 = *(v0 + qword_1006B7278);
    v28 = *(v0 + qword_1006B7298);
    *(v26 + 32) = v27;
    *(v26 + 40) = v28;
    *(v26 + 48) = v1;
    v29 = v27;
    v30 = v28;
    v31 = v1;
    v32 = Array._bridgeToObjectiveC()().super.isa;

    [v25 setArrangedSubviews:v32];

    [v25 setCustomSpacing:v30 afterView:10.0];
    v33 = [v0 containerView];
    [v33 directionalLayoutMargins];
    [v33 setDirectionalLayoutMargins:?];
  }
}

void sub_10034FAF8(void *a1)
{
  v1 = a1;
  sub_10034FAE8();
}

id sub_10034FB50(const char *a1, char a2, ...)
{
  v32 = a1;
  v4 = v2;
  v5 = *((swift_isaMask & *v2) + 0x188);
  v6 = type metadata accessor for Optional();
  v31 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v29 - v7;
  v9 = *(v5 - 8);
  __chkstk_darwin(v10);
  v30 = &v29 - v11;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100005B14(v12, qword_1006D4630);
  v13 = v2;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v29 = v5;
    v18 = v6;
    v19 = v9;
    v20 = a2;
    v21 = v17;
    *v16 = 138412290;
    *(v16 + 4) = v13;
    *v17 = v4;
    v22 = v13;
    _os_log_impl(&_mh_execute_header, v14, v15, v32, v16, 0xCu);
    sub_100012DF0(v21, &unk_1006AF760, &qword_100552DB0);
    a2 = v20;
    v9 = v19;
    v6 = v18;
    v5 = v29;
  }

  result = sub_10034FF14(a2 & 1);
  v24 = v13 + *((swift_isaMask & *v13) + 0x198);
  v25 = *v24;
  if (*v24)
  {
    v26 = *(v24 + 1);
    sub_10034E7D4(v8);
    if ((*(v9 + 48))(v8, 1, v5) == 1)
    {
      return (*(v31 + 8))(v8, v6);
    }

    else
    {
      v27 = v30;
      (*(v9 + 32))(v30, v8, v5);
      v28 = sub_100062900(v25, v26);
      v25(a2 & 1, v27, v28);
      sub_10001835C(v25, v26);
      return (*(v9 + 8))(v27, v5);
    }
  }

  return result;
}

void sub_10034FECC(void *a1)
{
  v1 = a1;
  sub_10034FB40();
}

id sub_10034FF14(int a1)
{
  v3 = sub_10007EBC0(&qword_1006B6D60, &qword_10055B380);
  __chkstk_darwin(v3 - 8);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v18 - v7;
  __chkstk_darwin(v9);
  v11 = v18 - v10;
  v12 = *(v1 + *((swift_isaMask & *v1) + 0x1A8));
  UIButton.configuration.getter();
  v13 = type metadata accessor for UIButton.Configuration();
  v14 = *(*(v13 - 8) + 48);
  v15 = v14(v11, 1, v13);
  v18[3] = a1;
  if (v15)
  {
    sub_10028247C(v11, v5);
    UIButton.configuration.setter();
    sub_100012DF0(v11, &qword_1006B6D60, &qword_10055B380);
  }

  else
  {
    UIButton.Configuration.showsActivityIndicator.setter();
    UIButton.configuration.setter();
  }

  v16 = *(v1 + *((swift_isaMask & *v1) + 0x1B0));
  UIButton.configuration.getter();
  if (v14(v8, 1, v13))
  {
    sub_10028247C(v8, v5);
    UIButton.configuration.setter();
    sub_100012DF0(v8, &qword_1006B6D60, &qword_10055B380);
  }

  else
  {
    UIButton.Configuration.showsActivityIndicator.setter();
    UIButton.configuration.setter();
  }

  [v12 setEnabled:0];
  return [v16 setEnabled:0];
}

id sub_100350180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = swift_isaMask;
  v31 = swift_isaMask & *v3;
  v6 = &v3[*(v31 + 0x198)];
  *v6 = 0;
  *(v6 + 1) = 0;
  v30 = *((v5 & v4) + 0x188);
  (*(*(v30 - 8) + 56))(&v3[*((swift_isaMask & *v3) + 0x1A0)], 1, 1);
  v7 = *((swift_isaMask & *v3) + 0x1A8);
  v8 = objc_opt_self();
  *&v3[v7] = [v8 buttonWithType:1];
  v9 = *((swift_isaMask & *v3) + 0x1B0);
  *&v3[v9] = [v8 buttonWithType:1];
  v10 = *((swift_isaMask & *v3) + 0x1B8);
  *&v3[v10] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v11 = *((swift_isaMask & *v3) + 0x1C0);
  *&v3[v11] = [objc_allocWithZone(NUIContainerStackView) init];
  *&v3[*((swift_isaMask & *v3) + 0x1C8)] = 0x406A400000000000;
  *&v3[*((swift_isaMask & *v3) + 0x1D0)] = 0x4059000000000000;
  v12 = &v3[*((swift_isaMask & *v3) + 0x1D8)];
  v13 = objc_opt_self();
  v14 = [v13 mainBundle];
  v34._object = 0x800000010057DB40;
  v15._object = 0x800000010057DB20;
  v34._countAndFlagsBits = 0xD00000000000002ALL;
  v15._countAndFlagsBits = 0xD000000000000018;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v17 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v14, v16, v34);

  *v12 = v17;
  v18 = &v3[*((swift_isaMask & *v3) + 0x1E0)];
  v19 = [v13 mainBundle];
  v35._object = 0x800000010057D750;
  v20._countAndFlagsBits = 0xD000000000000019;
  v20._object = 0x800000010057D730;
  v35._countAndFlagsBits = 0xD00000000000002BLL;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  v22 = NSLocalizedString(_:tableName:bundle:value:comment:)(v20, 0, v19, v21, v35);

  *v18 = v22;
  v23 = *((swift_isaMask & *v3) + 0x1E8);
  *&v3[v23] = [v8 buttonWithType:1];
  if (a3)
  {
    v25 = String._bridgeToObjectiveC()();
  }

  else
  {
    v25 = 0;
  }

  v26 = type metadata accessor for FMActionableListTableViewCell(0, v30, *(v31 + 400), v24);
  v33.receiver = v3;
  v33.super_class = v26;
  v27 = objc_msgSendSuper2(&v33, "initWithStyle:reuseIdentifier:", a1, v25);

  return v27;
}

id sub_10035059C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_100350180(a3, a4, v6);
}

id sub_1003505E8(void *a1)
{
  v26 = *v1;
  v2 = swift_isaMask;
  v27 = swift_isaMask;
  v3 = &v1[*((swift_isaMask & *v1) + 0x198)];
  *v3 = 0;
  *(v3 + 1) = 0;
  v25 = *((v2 & v26) + 0x188);
  (*(*(v25 - 8) + 56))(&v1[*((swift_isaMask & *v1) + 0x1A0)], 1, 1, v25);
  v4 = *((swift_isaMask & *v1) + 0x1A8);
  v5 = objc_opt_self();
  *&v1[v4] = [v5 buttonWithType:1];
  v6 = *((swift_isaMask & *v1) + 0x1B0);
  *&v1[v6] = [v5 buttonWithType:1];
  v7 = *((swift_isaMask & *v1) + 0x1B8);
  *&v1[v7] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  v8 = *((swift_isaMask & *v1) + 0x1C0);
  *&v1[v8] = [objc_allocWithZone(NUIContainerStackView) init];
  *&v1[*((swift_isaMask & *v1) + 0x1C8)] = 0x406A400000000000;
  *&v1[*((swift_isaMask & *v1) + 0x1D0)] = 0x4059000000000000;
  v9 = &v1[*((swift_isaMask & *v1) + 0x1D8)];
  v10 = objc_opt_self();
  v11 = [v10 mainBundle];
  v30._object = 0x800000010057DB40;
  v12._object = 0x800000010057DB20;
  v30._countAndFlagsBits = 0xD00000000000002ALL;
  v12._countAndFlagsBits = 0xD000000000000018;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v30);

  *v9 = v14;
  v15 = &v1[*((swift_isaMask & *v1) + 0x1E0)];
  v16 = [v10 mainBundle];
  v31._object = 0x800000010057D750;
  v17._countAndFlagsBits = 0xD000000000000019;
  v17._object = 0x800000010057D730;
  v31._countAndFlagsBits = 0xD00000000000002BLL;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, v16, v18, v31);

  *v15 = v19;
  v20 = *((swift_isaMask & *v1) + 0x1E8);
  *&v1[v20] = [v5 buttonWithType:1];
  v22 = type metadata accessor for FMActionableListTableViewCell(0, v25, *((v27 & v26) + 0x190), v21);
  v29.receiver = v1;
  v29.super_class = v22;
  v23 = objc_msgSendSuper2(&v29, "initWithCoder:", a1);

  if (v23)
  {
  }

  return v23;
}

void sub_100350A0C()
{
  v1 = &v0[*((swift_isaMask & *v0) + 0x198)];
  sub_10001835C(*v1, v1[1]);
  v2 = *((swift_isaMask & *v0) + 0x1A0);
  v3 = type metadata accessor for Optional();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);

  v4 = *&v0[*((swift_isaMask & *v0) + 0x1E8)];
}

id sub_100350BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for FMActionableListTableViewCell(0, *((swift_isaMask & *v4) + 0x188), *((swift_isaMask & *v4) + 0x190), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

void sub_100350C50(char *a1)
{
  v2 = &a1[*((swift_isaMask & *a1) + 0x198)];
  sub_10001835C(*v2, v2[1]);
  v3 = *((swift_isaMask & *a1) + 0x1A0);
  v4 = type metadata accessor for Optional();
  (*(*(v4 - 8) + 8))(&a1[v3], v4);

  v5 = *&a1[*((swift_isaMask & *a1) + 0x1E8)];
}

unint64_t sub_100350E28()
{
  result = qword_1006C3C90;
  if (!qword_1006C3C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3C90);
  }

  return result;
}

uint64_t sub_100350E7C()
{
  sub_100006060((v0 + 16));

  return swift_deallocClassInstance();
}

double sub_100350EB4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_10012105C;
  v6[3] = &unk_100637D38;
  v4 = _Block_copy(v6);

  [v3 stewiePublishStateWithCompletion:v4];
  _Block_release(v4);

  return result;
}

void sub_100350F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1003510BC;
  aBlock[3] = &unk_100637CE8;
  v7 = _Block_copy(aBlock);
  v9[4] = a3;
  v9[5] = a4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1001A44B4;
  v9[3] = &unk_100637D10;
  v8 = _Block_copy(v9);

  [v4 startMonitoringStewieStateWithBlock:v7 completion:v8];
  _Block_release(v8);
  _Block_release(v7);
}

double sub_1003510BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

double sub_100351110(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_1001A44B4;
  v6[3] = &unk_100637CC0;
  v4 = _Block_copy(v6);

  [v3 stopMonitoringStewieStateWithCompletion:v4];
  _Block_release(v4);

  return result;
}

uint64_t sub_1003511C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_10007EBC0(&qword_1006BC7F0, &unk_10055E2C0);
  v6[5] = swift_task_alloc();
  v7 = type metadata accessor for SecureLocationsStewie.PublishResult();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();

  return _swift_task_switch(sub_1003512C0, 0, 0);
}

uint64_t sub_1003512C0()
{
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_100351360;
  v2 = *(v0 + 64);

  return Session.stewiePublishResult()(v2);
}

uint64_t sub_100351360()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1003515A0;
  }

  else
  {
    v2 = sub_100351474;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100351474()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[3];
  sub_10000905C(0, &qword_1006BC7F8, SPSecureLocationsStewiePublishResult_ptr);
  (*(v2 + 16))(v3, v1, v4);
  (*(v2 + 56))(v3, 0, 1, v4);
  v6 = SPSecureLocationsStewiePublishResult.init(_:)();
  v5(v6, 0);

  (*(v2 + 8))(v1, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1003515A0()
{
  v1 = v0[10];
  v2 = v0[3];
  swift_errorRetain();
  v2(0, v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100351644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = type metadata accessor for SecureLocationsStewie.ServiceState();
  v8[7] = v9;
  v8[8] = *(v9 - 8);
  v8[9] = swift_task_alloc();
  v8[10] = swift_task_alloc();
  sub_10007EBC0(&qword_1006BC7D8, &qword_10055E298);
  v8[11] = swift_task_alloc();
  v10 = sub_10007EBC0(&qword_1006BC7E0, &qword_10055E2A0);
  v8[12] = v10;
  v8[13] = *(v10 - 8);
  v8[14] = swift_task_alloc();
  v11 = sub_10007EBC0(&qword_1006BC7E8, &qword_10055E2A8);
  v8[15] = v11;
  v8[16] = *(v11 - 8);
  v8[17] = swift_task_alloc();

  return _swift_task_switch(sub_100351820, 0, 0);
}

uint64_t sub_100351820()
{
  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  *v1 = v0;
  v1[1] = sub_10005BEBC;
  v2 = *(v0 + 112);

  return Session.startMonitoringStewieState()(v2);
}

uint64_t sub_1003518C0()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v4 = enum case for SecureLocationsStewie.ServiceState.available(_:);
  *(v0 + 168) = enum case for SecureLocationsStewie.ServiceState.unknown(_:);
  *(v0 + 172) = v4;
  v5 = enum case for SecureLocationsStewie.ServiceState.unavailableLocationPublish(_:);
  *(v0 + 176) = enum case for SecureLocationsStewie.ServiceState.unavailable(_:);
  *(v0 + 180) = v5;
  v6 = enum case for SecureLocationsStewie.ServiceState.publishInProgress(_:);
  *(v0 + 184) = enum case for SecureLocationsStewie.ServiceState.unavailableLocationServices(_:);
  *(v0 + 188) = v6;
  v7 = enum case for SecureLocationsStewie.ServiceState.disabled(_:);
  *(v0 + 192) = enum case for SecureLocationsStewie.ServiceState.throttled(_:);
  *(v0 + 196) = v7;
  v8 = enum case for SecureLocationsStewie.ServiceState.notSetup(_:);
  *(v0 + 200) = enum case for SecureLocationsStewie.ServiceState.disabledInGeo(_:);
  *(v0 + 204) = v8;
  v9 = swift_task_alloc();
  *(v0 + 160) = v9;
  *v9 = v0;
  v9[1] = sub_100351A28;
  v10 = *(v0 + 120);
  v11 = *(v0 + 88);

  return AsyncStream.Iterator.next(isolation:)(v11, 0, 0, v10);
}

uint64_t sub_100351A28()
{

  return _swift_task_switch(sub_100351B24, 0, 0);
}

uint64_t sub_100351B24()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

    v4 = *(v0 + 8);

    return v4();
  }

  v6 = *(v0 + 168);
  v8 = *(v0 + 72);
  v7 = *(v0 + 80);
  v9 = *(v3 + 32);
  v9(v7, v1, v2);
  v9(v8, v7, v2);
  v10 = (*(v3 + 88))(v8, v2);
  if (v10 != v6)
  {
    if (v10 == *(v0 + 172))
    {
      v11 = 1;
      goto LABEL_25;
    }

    if (v10 == *(v0 + 176))
    {
      v11 = 2;
      goto LABEL_25;
    }

    if (v10 == *(v0 + 180))
    {
      v11 = 3;
      goto LABEL_25;
    }

    if (v10 == *(v0 + 184))
    {
      v11 = 4;
      goto LABEL_25;
    }

    if (v10 == *(v0 + 188))
    {
      v11 = 5;
      goto LABEL_25;
    }

    if (v10 == *(v0 + 192))
    {
      v11 = 6;
      goto LABEL_25;
    }

    if (v10 == *(v0 + 196))
    {
      v11 = 7;
      goto LABEL_25;
    }

    if (v10 == *(v0 + 200))
    {
      v11 = 8;
      goto LABEL_25;
    }

    if (v10 == *(v0 + 204))
    {
      v11 = 9;
      goto LABEL_25;
    }

    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
  }

  v11 = 0;
LABEL_25:
  (*(v0 + 24))(v11);
  v12 = swift_task_alloc();
  *(v0 + 160) = v12;
  *v12 = v0;
  v12[1] = sub_100351A28;
  v13 = *(v0 + 120);
  v14 = *(v0 + 88);

  return AsyncStream.Iterator.next(isolation:)(v14, 0, 0, v13);
}

uint64_t sub_100351DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_100351E00, 0, 0);
}

uint64_t sub_100351E00()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_100351E98;

  return Session.stopMonitoringStewieState()();
}

uint64_t sub_100351E98()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100351FCC, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100351FCC()
{
  v1 = v0[6];
  v2 = v0[3];
  swift_errorRetain();
  v2(v1);

  v3 = v0[1];

  return v3();
}

double sub_100352078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_10007EBC0(&unk_1006BEF30, &qword_100554550);
  __chkstk_darwin(v9 - 8);
  v11 = &v16 - v10;
  v12 = *v4;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v12;
  v14[5] = a1;
  v14[6] = a2;
  v14[7] = a3;
  v14[8] = a4;

  sub_100170C90(0, 0, v11, &unk_10055E290, v14);

  return result;
}

double sub_1003521DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_10007EBC0(&unk_1006BEF30, &qword_100554550);
  __chkstk_darwin(v10 - 8);
  v12 = &v17 - v11;
  v13 = *v6;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v13;
  v15[5] = a1;
  v15[6] = a2;

  sub_100170C90(0, 0, v12, a6, v15);

  return result;
}

uint64_t sub_1003522F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000EE760;

  return sub_100351DDC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1003523C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000EE760;

  return sub_100351644(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10035249C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1003524E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000E3478;

  return sub_1003511C4(a1, v4, v5, v6, v7, v8);
}

void sub_1003525F8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_100355AEC(1);
  }
}

void sub_100352650(char *a1)
{
  v40 = type metadata accessor for FMSelectedSection(0);
  __chkstk_darwin(v40);
  v4 = &v41[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v41[-1] - v6;
  __chkstk_darwin(v8);
  v10 = &v41[-1] - v9;
  __chkstk_darwin(v11);
  v13 = &v41[-1] - v12;
  v14 = *&v1[OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator];
  v15 = *(v14 + 56);
  v16 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100062074(v15 + v16, v13);
  LOBYTE(v15) = sub_10005F7D0(v13, a1);
  sub_10005D4E4(v13);
  if ((v15 & 1) == 0)
  {
    v29 = [v1 presentedViewController];
    if (v29)
    {
      v30 = v29;
      [v29 dismissViewControllerAnimated:1 completion:0];
    }

    v31 = *(v14 + 56);
    sub_100062074(a1, v13);
    v32 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
    swift_beginAccess();
    sub_100062074(v31 + v32, v10);
    swift_beginAccess();

    sub_100058530(v13, v31 + v32);
    swift_endAccess();
    sub_100058594(v10);

    sub_10005D4E4(v10);
    v33 = v13;
    goto LABEL_19;
  }

  v17 = *&v1[OBJC_IVAR____TtC6FindMy20FMMainViewController_initialCardContainer];
  if (!*(v17 + OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_lockedPercent))
  {
    goto LABEL_5;
  }

  if (*(v17 + OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_lockedPercent) == 1)
  {
    v41[3] = &type metadata for SolariumFeatureFlag;
    v41[4] = sub_10000BD04();
    isFeatureEnabled(_:)();
    sub_100006060(v41);
LABEL_5:
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100005B14(v18, qword_1006D4630);
    sub_100062074(a1, v4);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v41[0] = v22;
      *v21 = 136315138;
      sub_100062074(v4, v13);
      v23 = String.init<A>(describing:)();
      v25 = v24;
      sub_10005D4E4(v4);
      v26 = sub_100005B4C(v23, v25, v41);

      *(v21 + 4) = v26;
      v27 = "FMMainViewController: Tab Bar change to already visible section: %s";
      v28 = v20;
LABEL_17:
      _os_log_impl(&_mh_execute_header, v19, v28, v27, v21, 0xCu);
      sub_100006060(v22);

      return;
    }

    v33 = v4;
    goto LABEL_19;
  }

  sub_10024D538(1, 0.4);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_100005B14(v34, qword_1006D4630);
  sub_100062074(a1, v7);
  v19 = Logger.logObject.getter();
  v35 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v19, v35))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v41[0] = v22;
    *v21 = 136315138;
    sub_100062074(v7, v13);
    v36 = String.init<A>(describing:)();
    v38 = v37;
    sub_10005D4E4(v7);
    v39 = sub_100005B4C(v36, v38, v41);

    *(v21 + 4) = v39;
    v27 = "FMMainViewController: Tab Bar change to already visible section in collapsed state. Animating to middle card position for %s";
    v28 = v35;
    goto LABEL_17;
  }

  v33 = v7;
LABEL_19:
  sub_10005D4E4(v33);
}

uint64_t sub_100352B14(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC6FindMy20FMMainViewController_tabBar + 8);
  ObjectType = swift_getObjectType();
  (*(v1 + 32))(ObjectType, v1);
  return (*(v1 + 40))(ObjectType, v1);
}

void sub_100352B88(_BYTE *a1)
{
  if ((a1[OBJC_IVAR____TtC6FindMy20FMMainViewController_isLastLocationPromptShowing] & 1) == 0)
  {
    a1[OBJC_IVAR____TtC6FindMy20FMMainViewController_isLastLocationPromptShowing] = 1;
    v2 = objc_opt_self();
    v3 = [v2 mainBundle];
    v35._object = 0x8000000100592870;
    v4._countAndFlagsBits = 0xD000000000000020;
    v4._object = 0x8000000100592840;
    v35._countAndFlagsBits = 0xD000000000000032;
    v5._countAndFlagsBits = 0;
    v5._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v35);

    sub_10022E294(0xD000000000000023, 0x80000001005928B0);
    sub_10007EBC0(&unk_1006B20B0, &unk_1005523B0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_100552220;
    *(v6 + 56) = &type metadata for Int;
    *(v6 + 64) = &protocol witness table for Int;
    *(v6 + 32) = 24;
    String.init(format:_:)();

    v7 = String._bridgeToObjectiveC()();

    v8 = String._bridgeToObjectiveC()();

    v9 = [objc_opt_self() alertControllerWithTitle:v7 message:v8 preferredStyle:1];

    v10 = [v2 mainBundle];
    v36._object = 0x8000000100592900;
    v11._object = 0x80000001005928E0;
    v36._countAndFlagsBits = 0xD000000000000026;
    v11._countAndFlagsBits = 0xD000000000000014;
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v11, 0, v10, v12, v36);

    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    v14 = a1;
    v15 = String._bridgeToObjectiveC()();

    v33 = sub_1003572C0;
    v34 = v13;
    aBlock = _NSConcreteStackBlock;
    v30 = 1107296256;
    v31 = sub_100017328;
    v32 = &unk_100637FB8;
    v16 = _Block_copy(&aBlock);

    v17 = objc_opt_self();
    v18 = [v17 actionWithTitle:v15 style:1 handler:v16];
    _Block_release(v16);

    [v9 addAction:v18];
    v19 = [v2 mainBundle];
    v37._object = 0x8000000100592950;
    v20._object = 0x8000000100592930;
    v37._countAndFlagsBits = 0xD000000000000026;
    v20._countAndFlagsBits = 0xD000000000000014;
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v20, 0, v19, v21, v37);

    v22 = swift_allocObject();
    *(v22 + 16) = v14;
    v23 = v14;
    v24 = String._bridgeToObjectiveC()();

    v33 = sub_1003572E0;
    v34 = v22;
    aBlock = _NSConcreteStackBlock;
    v30 = 1107296256;
    v31 = sub_100017328;
    v32 = &unk_100638008;
    v25 = _Block_copy(&aBlock);

    v26 = [v17 actionWithTitle:v24 style:0 handler:v25];
    _Block_release(v25);

    [v9 addAction:v26];
    v27 = sub_1003E1AD0();
    if (v27)
    {
      v28 = v27;
      [v27 presentViewController:v9 animated:1 completion:0];
    }
  }
}

void sub_100353068(uint64_t a1, uint64_t a2, char a3)
{

  sub_1000E6F4C(a3);

  *(a2 + OBJC_IVAR____TtC6FindMy20FMMainViewController_isLastLocationPromptShowing) = 0;
}

void sub_1003530CC(uint64_t a1, char *a2)
{
  v4 = type metadata accessor for FMIPAlertType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v87 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v86 = &v86 - v8;
  __chkstk_darwin(v9);
  v11 = &v86 - v10;
  __chkstk_darwin(v12);
  v90 = &v86 - v13;
  __chkstk_darwin(v14);
  v91 = &v86 - v15;
  __chkstk_darwin(v16);
  v92 = &v86 - v17;
  __chkstk_darwin(v18);
  v20 = &v86 - v19;
  __chkstk_darwin(v21);
  v23 = &v86 - v22;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  v25 = sub_100005B14(v24, qword_1006D4630);

  v88 = v25;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  v28 = os_log_type_enabled(v26, v27);
  v94 = a2;
  v95 = a1;
  v89 = v11;
  if (v28)
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    aBlock = v30;
    *v29 = 136315138;
    v31 = dispatch thunk of FMIPAlert.debugDescription.getter();
    v33 = sub_100005B4C(v31, v32, &aBlock);

    *(v29 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v26, v27, "FMMainViewController: devicesProvider didReceive %s", v29, 0xCu);
    sub_100006060(v30);
  }

  FMIPAlert.type.getter();
  v93 = *(v5 + 104);
  v93(v20, enum case for FMIPAlertType.recurrentNetworkIssue(_:), v4);
  sub_10000A390(&qword_1006BC880, &type metadata accessor for FMIPAlertType, &protocol conformance descriptor for FMIPAlertType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (aBlock == v102 && v97 == v103)
  {
    v34 = 1;
  }

  else
  {
    v34 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v35 = *(v5 + 8);
  v35(v20, v4);
  v35(v23, v4);

  if (v34)
  {
    goto LABEL_14;
  }

  v36 = v92;
  FMIPAlert.type.getter();
  v37 = v91;
  v93(v91, enum case for FMIPAlertType.networkIssue(_:), v4);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (aBlock == v102 && v97 == v103)
  {
    goto LABEL_12;
  }

  v38 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v35(v37, v4);
  v35(v36, v4);

  if ((v38 & 1) == 0)
  {
    v36 = v90;
    FMIPAlert.type.getter();
    v37 = v89;
    v93(v89, enum case for FMIPAlertType.initialization(_:), v4);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (aBlock != v102 || v97 != v103)
    {
      v44 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v35(v37, v4);
      v35(v36, v4);

      if ((v44 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

LABEL_12:
    v35(v37, v4);
    v35(v36, v4);
  }

LABEL_14:
  v39 = *&v94[OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator];
  v40 = *(v39 + 16);
  if ((*(v40 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_wasNoNetworkAlertShown) & 1) != 0 || *(v40 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_accountsAreInitialized) != 1 || *(v40 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_accountsAreSignedIn) != 1 || (*(v40 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_isAccountManaged) & 1) != 0 || (*(v40 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_areServerAlertsPostponed) & 1) != 0 || (sub_100056EF8() & 1) == 0)
  {
    return;
  }

  v41 = v86;
  FMIPAlert.type.getter();
  v42 = v87;
  v93(v87, enum case for FMIPAlertType.networkIssue(_:), v4);
  sub_10000A390(&qword_1006BC888, &type metadata accessor for FMIPAlertType, &protocol conformance descriptor for FMIPAlertType);
  v43 = dispatch thunk of static Equatable.== infix(_:_:)();
  v35(v42, v4);
  v35(v41, v4);
  if ((v43 & 1) == 0)
  {
    *(*(v39 + 16) + OBJC_IVAR____TtC6FindMy19FMConditionProvider_wasNoNetworkAlertShown) = 1;
  }

LABEL_25:
  v45 = v95;
  FMIPAlert.title.getter();
  v47 = v46;
  FMIPAlert.message.getter();
  v49 = v48;
  if (!v47)
  {
    v50 = 0;
    if (v48)
    {
      goto LABEL_27;
    }

LABEL_29:
    v51 = 0;
    goto LABEL_30;
  }

  v50 = String._bridgeToObjectiveC()();

  if (!v49)
  {
    goto LABEL_29;
  }

LABEL_27:
  v51 = String._bridgeToObjectiveC()();

LABEL_30:
  v52 = [objc_opt_self() alertControllerWithTitle:v50 message:v51 preferredStyle:1];

  FMIPAlert.cancelButtonLabel.getter();
  if (v53)
  {

    FMIPAlert.cancelButtonLabel.getter();
    v55 = v54;
    v56 = swift_allocObject();
    v57 = v94;
    *(v56 + 16) = v45;
    *(v56 + 24) = v57;

    v58 = v57;
    if (v55)
    {
      v59 = String._bridgeToObjectiveC()();
    }

    else
    {
      v59 = 0;
    }

    v100 = sub_1003575D4;
    v101 = v56;
    aBlock = _NSConcreteStackBlock;
    v97 = 1107296256;
    v98 = sub_100017328;
    v99 = &unk_1006380F8;
    v60 = _Block_copy(&aBlock);

    v61 = [objc_opt_self() actionWithTitle:v59 style:1 handler:v60];
    _Block_release(v60);

    [v52 addAction:v61];
  }

  FMIPAlert.okButtonLabel.getter();
  v63 = v62;
  v64 = swift_allocObject();
  v65 = v94;
  *(v64 + 16) = v45;
  *(v64 + 24) = v65;

  v66 = v65;
  if (v63)
  {
    v67 = String._bridgeToObjectiveC()();
  }

  else
  {
    v67 = 0;
  }

  v100 = sub_1003575CC;
  v101 = v64;
  aBlock = _NSConcreteStackBlock;
  v97 = 1107296256;
  v98 = sub_100017328;
  v99 = &unk_1006380A8;
  v68 = _Block_copy(&aBlock);

  v69 = [objc_opt_self() actionWithTitle:v67 style:0 handler:v68];
  _Block_release(v68);

  [v52 addAction:v69];
  v70 = sub_1004901CC();
  v71 = OBJC_IVAR____TtC6FindMy20FMMainViewController_alertQueue;
  swift_beginAccess();
  v72 = *&v65[v71];
  v73 = v52;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v65[v71] = v72;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v72 = sub_10008C140(0, v72[2] + 1, 1, v72);
    *&v65[v71] = v72;
  }

  v76 = v72[2];
  v75 = v72[3];
  if (v76 >= v75 >> 1)
  {
    v72 = sub_10008C140((v75 > 1), v76 + 1, 1, v72);
  }

  v72[2] = v76 + 1;
  v77 = &v72[2 * v76];
  *(v77 + 32) = v70 & 1;
  v77[5] = v73;
  *&v65[v71] = v72;
  swift_endAccess();
  if (v65[OBJC_IVAR____TtC6FindMy20FMMainViewController_isShowingAlert] & 1) == 0 && (v78 = *&v65[OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator], (sub_100056EF8()) && (v79 = *(v78 + 16), v82 = sub_100057590(v79, v80, v81), v79, v82) && v82 != 3)
  {
    sub_1003542A0();
  }

  else
  {
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      _os_log_impl(&_mh_execute_header, v83, v84, "FMMainViewController: Not presenting alert, onboarding and notifications have priority", v85, 2u);
    }
  }
}

void sub_100353C5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10007EBC0(&unk_1006B0120, &qword_100552B60);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  FMIPAlert.cancelButtonURL.getter();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_100012DF0(v6, &unk_1006B0120, &qword_100552B60);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v11 = [objc_opt_self() defaultWorkspace];
    if (v11)
    {
      v13 = v11;
      URL._bridgeToObjectiveC()(v12);
      v15 = v14;
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      [v13 openSensitiveURL:v15 withOptions:isa];
    }

    (*(v8 + 8))(v10, v7);
  }

  *(a3 + OBJC_IVAR____TtC6FindMy20FMMainViewController_isShowingAlert) = 0;
  sub_1003542A0();
}

void sub_100353E7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10007EBC0(&unk_1006B0120, &qword_100552B60);
  __chkstk_darwin(v5 - 8);
  v7 = &v37 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  FMIPAlert.okButtonURL.getter();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_100012DF0(v7, &unk_1006B0120, &qword_100552B60);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    v12 = [objc_opt_self() defaultWorkspace];
    if (v12)
    {
      v14 = v12;
      URL._bridgeToObjectiveC()(v13);
      v16 = v15;
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      [v14 openSensitiveURL:v16 withOptions:isa];
    }

    (*(v9 + 8))(v11, v8);
  }

  *(a3 + OBJC_IVAR____TtC6FindMy20FMMainViewController_isShowingAlert) = 0;
  sub_1003542A0();
  v18 = sub_1003E1AD0();
  if (v18)
  {
    v19 = v18;
    type metadata accessor for FMActivityIndicatingNavigationController();
    v20 = swift_dynamicCastClass();
    if (v20)
    {
      v21 = v20;
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_100005B14(v22, qword_1006D4630);

      v23 = v19;
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v37 = a2;
        v38 = v27;
        *v26 = 136315394;
        type metadata accessor for FMIPAlert();

        v28 = String.init<A>(describing:)();
        v30 = sub_100005B4C(v28, v29, &v38);

        *(v26 + 4) = v30;
        *(v26 + 12) = 2080;
        v31 = v23;
        v32 = [v21 description];
        v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = v34;

        v36 = sub_100005B4C(v33, v35, &v38);

        *(v26 + 14) = v36;
        _os_log_impl(&_mh_execute_header, v24, v25, "FMMainViewController: alert %s dismissing %s", v26, 0x16u);
        swift_arrayDestroy();
      }

      [v21 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

void sub_1003542A0()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator) + 16);
  if (*(v1 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_accountsAreInitialized) == 1 && *(v1 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_accountsAreSignedIn) == 1 && (*(v1 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_isAccountManaged) & 1) == 0 && (*(v1 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_areServerAlertsPostponed) & 1) == 0 && (sub_100056EF8() & 1) != 0 && (v2 = OBJC_IVAR____TtC6FindMy20FMMainViewController_alertQueue, swift_beginAccess(), v3 = *(v0 + v2), *(v3 + 16)))
  {
    v4 = *(v3 + 32);
    v5 = *(v3 + 40);
    swift_beginAccess();
    v6 = v5;
    sub_1003CF87C(0, 1);
    swift_endAccess();
    *(v0 + OBJC_IVAR____TtC6FindMy20FMMainViewController_isShowingAlert) = 1;
    v7 = (v0 + OBJC_IVAR____TtC6FindMy20FMMainViewController_currentAlert);
    v8 = *(v0 + OBJC_IVAR____TtC6FindMy20FMMainViewController_currentAlert + 8);
    *v7 = v4;
    v7[1] = v6;
    v9 = v6;

    v10 = sub_1003E1AD0();
    if (v10)
    {
      v11 = v10;
      [v10 presentViewController:v9 animated:1 completion:0];
    }
  }

  else
  {
    v12 = (v0 + OBJC_IVAR____TtC6FindMy20FMMainViewController_currentAlert);
    v9 = *(v0 + OBJC_IVAR____TtC6FindMy20FMMainViewController_currentAlert + 8);
    *v12 = 0;
    v12[1] = 0;
  }
}

void sub_100354424()
{
  v1 = OBJC_IVAR____TtC6FindMy20FMMainViewController_alertQueue;
  swift_beginAccess();
  v2 = *(*&v0[v1] + 16);
  if (v2)
  {
    v3 = ( + 40);
    v4 = _swiftEmptyArrayStorage;
    do
    {
      v5 = *(v3 - 8);
      if (*(v3 - 8))
      {
        v6 = 0x8000000100579120;
      }

      else
      {
        v6 = 0xE700000000000000;
      }

      if (v5 == 1 && 0x8000000100579120 == v6)
      {
      }

      else
      {
        v8 = *v3;
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v10 = v8;

        if (v9)
        {
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = sub_10008C140(0, v4[2] + 1, 1, v4);
          }

          v12 = v4[2];
          v11 = v4[3];
          if (v12 >= v11 >> 1)
          {
            v4 = sub_10008C140((v11 > 1), v12 + 1, 1, v4);
          }

          v4[2] = v12 + 1;
          v13 = &v4[2 * v12];
          *(v13 + 32) = v5;
          v13[5] = v10;
        }
      }

      v3 += 2;
      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  *&v0[v1] = v4;

  v14 = *&v0[OBJC_IVAR____TtC6FindMy20FMMainViewController_currentAlert + 8];
  if (v14)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = v0;
    aBlock[4] = sub_100357FBC;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    aBlock[3] = &unk_100638440;
    v16 = _Block_copy(aBlock);
    v17 = v14;
    v18 = v0;

    [v17 dismissViewControllerAnimated:1 completion:v16];
    _Block_release(v16);
  }
}

void sub_1003546A8(uint64_t a1, char *a2)
{
  v158 = a2;
  v3 = type metadata accessor for FMFAlertType();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v146 = &v136[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_10007EBC0(&qword_1006BC890, &qword_10055E3D0);
  __chkstk_darwin(v6);
  v140 = &v136[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v144 = &v136[-v9];
  __chkstk_darwin(v10);
  v156 = &v136[-v11];
  __chkstk_darwin(v12);
  v14 = &v136[-v13];
  v15 = sub_10007EBC0(&qword_1006BC898, &qword_10055E3D8);
  __chkstk_darwin(v15 - 8);
  v138 = &v136[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v139 = &v136[-v18];
  __chkstk_darwin(v19);
  v141 = &v136[-v20];
  __chkstk_darwin(v21);
  v142 = &v136[-v22];
  __chkstk_darwin(v23);
  v147 = &v136[-v24];
  __chkstk_darwin(v25);
  v148 = &v136[-v26];
  __chkstk_darwin(v27);
  v145 = &v136[-v28];
  __chkstk_darwin(v29);
  v31 = &v136[-v30];
  __chkstk_darwin(v32);
  v149 = &v136[-v33];
  __chkstk_darwin(v34);
  v36 = &v136[-v35];
  __chkstk_darwin(v37);
  v39 = &v136[-v38];
  __chkstk_darwin(v40);
  v42 = &v136[-v41];
  v150 = a1;
  FMFAlert.alertType.getter();
  v43 = v4[13];
  v157 = v4 + 13;
  v154 = v43;
  v43(v39, enum case for FMFAlertType.recurrentNetworkIssue(_:), v3);
  v152 = v4[7];
  v153 = v4 + 7;
  v152(v39, 0, 1, v3);
  v155 = v6;
  v44 = *(v6 + 48);
  sub_1003575E4(v42, v14);
  sub_1003575E4(v39, &v14[v44]);
  v151 = v4;
  v47 = v4[6];
  v45 = v4 + 6;
  v46 = v47;
  if (v47(v14, 1, v3) == 1)
  {
    sub_100012DF0(v39, &qword_1006BC898, &qword_10055E3D8);
    sub_100012DF0(v42, &qword_1006BC898, &qword_10055E3D8);
    v48 = v45;
    v49 = v46;
    if (v46(&v14[v44], 1, v3) == 1)
    {
      v50 = v150;
LABEL_16:
      sub_100012DF0(v14, &qword_1006BC898, &qword_10055E3D8);
      goto LABEL_17;
    }
  }

  else
  {
    sub_1003575E4(v14, v36);
    v143 = v45;
    v49 = v46;
    if (v46(&v14[v44], 1, v3) != 1)
    {
      v69 = v151;
      v70 = &v14[v44];
      v71 = v146;
      (v151[4])(v146, v70, v3);
      sub_10000A390(&unk_1006BC8A0, &type metadata accessor for FMFAlertType, &protocol conformance descriptor for FMFAlertType);
      v137 = dispatch thunk of static Equatable.== infix(_:_:)();
      v72 = v69[1];
      v72(v71, v3);
      sub_100012DF0(v39, &qword_1006BC898, &qword_10055E3D8);
      sub_100012DF0(v42, &qword_1006BC898, &qword_10055E3D8);
      v72(v36, v3);
      sub_100012DF0(v14, &qword_1006BC898, &qword_10055E3D8);
      v50 = v150;
      v48 = v143;
      v51 = v148;
      if (v137)
      {
        goto LABEL_17;
      }

      goto LABEL_7;
    }

    sub_100012DF0(v39, &qword_1006BC898, &qword_10055E3D8);
    sub_100012DF0(v42, &qword_1006BC898, &qword_10055E3D8);
    (v151[1])(v36, v3);
    v48 = v143;
  }

  sub_100012DF0(v14, &qword_1006BC890, &qword_10055E3D0);
  v50 = v150;
  v51 = v148;
LABEL_7:
  v52 = v149;
  FMFAlert.alertType.getter();
  v154(v31, enum case for FMFAlertType.networkIssue(_:), v3);
  v152(v31, 0, 1, v3);
  v53 = v156;
  v54 = *(v155 + 48);
  sub_1003575E4(v52, v156);
  sub_1003575E4(v31, v53 + v54);
  if (v49(v53, 1, v3) == 1)
  {
    sub_100012DF0(v31, &qword_1006BC898, &qword_10055E3D8);
    v14 = v156;
    sub_100012DF0(v52, &qword_1006BC898, &qword_10055E3D8);
    if (v49(&v14[v54], 1, v3) == 1)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  v55 = v145;
  sub_1003575E4(v53, v145);
  if (v49((v53 + v54), 1, v3) == 1)
  {
    sub_100012DF0(v31, &qword_1006BC898, &qword_10055E3D8);
    v14 = v156;
    sub_100012DF0(v149, &qword_1006BC898, &qword_10055E3D8);
    (v151[1])(v55, v3);
LABEL_12:
    sub_100012DF0(v14, &qword_1006BC890, &qword_10055E3D0);
    goto LABEL_13;
  }

  v80 = v151;
  v81 = v53 + v54;
  v82 = v146;
  (v151[4])(v146, v81, v3);
  sub_10000A390(&unk_1006BC8A0, &type metadata accessor for FMFAlertType, &protocol conformance descriptor for FMFAlertType);
  LODWORD(v150) = dispatch thunk of static Equatable.== infix(_:_:)();
  v83 = v53;
  v84 = v50;
  v85 = v48;
  v86 = v49;
  v87 = v80[1];
  v87(v82, v3);
  sub_100012DF0(v31, &qword_1006BC898, &qword_10055E3D8);
  sub_100012DF0(v149, &qword_1006BC898, &qword_10055E3D8);
  v87(v145, v3);
  v51 = v148;
  v49 = v86;
  v48 = v85;
  v50 = v84;
  sub_100012DF0(v83, &qword_1006BC898, &qword_10055E3D8);
  if ((v150 & 1) == 0)
  {
LABEL_13:
    FMFAlert.alertType.getter();
    v56 = v147;
    v154(v147, enum case for FMFAlertType.initialization(_:), v3);
    v152(v56, 0, 1, v3);
    v57 = *(v155 + 48);
    v58 = v144;
    sub_1003575E4(v51, v144);
    sub_1003575E4(v56, &v58[v57]);
    if (v49(v58, 1, v3) == 1)
    {
      sub_100012DF0(v56, &qword_1006BC898, &qword_10055E3D8);
      sub_100012DF0(v51, &qword_1006BC898, &qword_10055E3D8);
      if (v49(&v58[v57], 1, v3) == 1)
      {
        v14 = v58;
        goto LABEL_16;
      }
    }

    else
    {
      v73 = v142;
      sub_1003575E4(v58, v142);
      if (v49(&v58[v57], 1, v3) != 1)
      {
        v88 = v51;
        v89 = v151;
        v90 = &v58[v57];
        v91 = v146;
        (v151[4])(v146, v90, v3);
        sub_10000A390(&unk_1006BC8A0, &type metadata accessor for FMFAlertType, &protocol conformance descriptor for FMFAlertType);
        LODWORD(v156) = dispatch thunk of static Equatable.== infix(_:_:)();
        v143 = v48;
        v92 = v89[1];
        v92(v91, v3);
        sub_100012DF0(v147, &qword_1006BC898, &qword_10055E3D8);
        sub_100012DF0(v88, &qword_1006BC898, &qword_10055E3D8);
        v92(v73, v3);
        sub_100012DF0(v58, &qword_1006BC898, &qword_10055E3D8);
        if ((v156 & 1) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_17;
      }

      sub_100012DF0(v147, &qword_1006BC898, &qword_10055E3D8);
      sub_100012DF0(v51, &qword_1006BC898, &qword_10055E3D8);
      (v151[1])(v73, v3);
    }

    v66 = &qword_1006BC890;
    v67 = &qword_10055E3D0;
    v68 = v58;
    goto LABEL_31;
  }

LABEL_17:
  v59 = *&v158[OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator];
  v60 = *(v59 + 16);
  if ((*(v60 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_wasNoNetworkAlertShown) & 1) != 0 || *(v60 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_accountsAreInitialized) != 1 || *(v60 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_accountsAreSignedIn) != 1 || (*(v60 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_isAccountManaged) & 1) != 0 || (*(v60 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_areServerAlertsPostponed) & 1) != 0 || (sub_100056EF8() & 1) == 0)
  {
    return;
  }

  v61 = v141;
  FMFAlert.alertType.getter();
  v62 = v139;
  v154(v139, enum case for FMFAlertType.networkIssue(_:), v3);
  v152(v62, 0, 1, v3);
  v63 = *(v155 + 48);
  v64 = v140;
  sub_1003575E4(v61, v140);
  sub_1003575E4(v62, &v64[v63]);
  if (v49(v64, 1, v3) == 1)
  {
    sub_100012DF0(v62, &qword_1006BC898, &qword_10055E3D8);
    v65 = v140;
    sub_100012DF0(v141, &qword_1006BC898, &qword_10055E3D8);
    if (v49(&v65[v63], 1, v3) == 1)
    {
      v66 = &qword_1006BC898;
      v67 = &qword_10055E3D8;
      v68 = v65;
LABEL_31:
      sub_100012DF0(v68, v66, v67);
      goto LABEL_32;
    }

    goto LABEL_67;
  }

  v130 = v138;
  sub_1003575E4(v64, v138);
  if (v49(&v64[v63], 1, v3) == 1)
  {
    sub_100012DF0(v139, &qword_1006BC898, &qword_10055E3D8);
    v65 = v140;
    sub_100012DF0(v141, &qword_1006BC898, &qword_10055E3D8);
    (v151[1])(v130, v3);
LABEL_67:
    sub_100012DF0(v65, &qword_1006BC890, &qword_10055E3D0);
LABEL_68:
    *(*(v59 + 16) + OBJC_IVAR____TtC6FindMy19FMConditionProvider_wasNoNetworkAlertShown) = 1;
    goto LABEL_32;
  }

  v131 = v151;
  v132 = &v64[v63];
  v133 = v146;
  (v151[4])(v146, v132, v3);
  sub_10000A390(&unk_1006BC8A0, &type metadata accessor for FMFAlertType, &protocol conformance descriptor for FMFAlertType);
  v134 = dispatch thunk of static Equatable.== infix(_:_:)();
  v135 = v131[1];
  v135(v133, v3);
  sub_100012DF0(v139, &qword_1006BC898, &qword_10055E3D8);
  sub_100012DF0(v141, &qword_1006BC898, &qword_10055E3D8);
  v135(v138, v3);
  sub_100012DF0(v64, &qword_1006BC898, &qword_10055E3D8);
  if ((v134 & 1) == 0)
  {
    goto LABEL_68;
  }

LABEL_32:
  dispatch thunk of FMFAlert.title.getter();
  v75 = v74;
  dispatch thunk of FMFAlert.message.getter();
  v77 = v76;
  if (!v75)
  {
    v78 = 0;
    if (v76)
    {
      goto LABEL_34;
    }

LABEL_40:
    v79 = 0;
    goto LABEL_41;
  }

  v78 = String._bridgeToObjectiveC()();

  if (!v77)
  {
    goto LABEL_40;
  }

LABEL_34:
  v79 = String._bridgeToObjectiveC()();

LABEL_41:
  v93 = [objc_opt_self() alertControllerWithTitle:v78 message:v79 preferredStyle:1];

  dispatch thunk of FMFAlert.cancelButtonLabel.getter();
  if (v94)
  {

    dispatch thunk of FMFAlert.cancelButtonLabel.getter();
    v96 = v95;
    v97 = swift_allocObject();
    v98 = v158;
    *(v97 + 16) = v50;
    *(v97 + 24) = v98;

    v99 = v158;
    if (v96)
    {
      v100 = String._bridgeToObjectiveC()();
    }

    else
    {
      v100 = 0;
    }

    v163 = sub_1003576C0;
    v164 = v97;
    aBlock = _NSConcreteStackBlock;
    v160 = 1107296256;
    v161 = sub_100017328;
    v162 = &unk_1006381E8;
    v101 = _Block_copy(&aBlock);

    v102 = [objc_opt_self() actionWithTitle:v100 style:1 handler:v101];
    _Block_release(v101);

    [v93 addAction:v102];
  }

  dispatch thunk of FMFAlert.okButtonLabel.getter();
  v104 = v103;
  v105 = swift_allocObject();
  v106 = v158;
  *(v105 + 16) = v50;
  *(v105 + 24) = v106;

  v107 = v158;
  if (v104)
  {
    v108 = String._bridgeToObjectiveC()();
  }

  else
  {
    v108 = 0;
  }

  v163 = sub_100357654;
  v164 = v105;
  aBlock = _NSConcreteStackBlock;
  v160 = 1107296256;
  v161 = sub_100017328;
  v162 = &unk_100638198;
  v109 = _Block_copy(&aBlock);

  v110 = [objc_opt_self() actionWithTitle:v108 style:0 handler:v109];
  _Block_release(v109);

  [v93 addAction:v110];
  v111 = sub_100490644();
  v112 = OBJC_IVAR____TtC6FindMy20FMMainViewController_alertQueue;
  v113 = v158;
  swift_beginAccess();
  v114 = *&v113[v112];
  v115 = v93;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v113[v112] = v114;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v114 = sub_10008C140(0, v114[2] + 1, 1, v114);
    *&v158[v112] = v114;
  }

  v118 = v114[2];
  v117 = v114[3];
  if (v118 >= v117 >> 1)
  {
    v114 = sub_10008C140((v117 > 1), v118 + 1, 1, v114);
  }

  v114[2] = v118 + 1;
  v119 = &v114[2 * v118];
  *(v119 + 32) = v111;
  v119[5] = v115;
  v120 = v158;
  *&v158[v112] = v114;
  swift_endAccess();
  if (v120[OBJC_IVAR____TtC6FindMy20FMMainViewController_isShowingAlert] & 1) == 0 && (v121 = *&v158[OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator], (sub_100056EF8()) && (v122 = *(v121 + 16), v125 = sub_100057590(v122, v123, v124), v122, v125) && v125 != 3)
  {
    sub_1003542A0();
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v126 = type metadata accessor for Logger();
    sub_100005B14(v126, qword_1006D4630);
    v127 = Logger.logObject.getter();
    v128 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      *v129 = 0;
      _os_log_impl(&_mh_execute_header, v127, v128, "FMMainViewController: Not presenting alert, onboarding and notifications have priority", v129, 2u);
    }
  }
}

void sub_100355AEC(char a1)
{
  v2 = *&v1[OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator];
  v3 = *(v2 + 16);
  if (v3[OBJC_IVAR____TtC6FindMy19FMConditionProvider_preventOnboarding])
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100005B14(v4, qword_1006D4630);
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v5, "FMMainViewController: Not presenting onboarding, UT has priority", v6, 2u);
    }
  }

  else
  {
    v7 = v1;
    v3[OBJC_IVAR____TtC6FindMy19FMConditionProvider_areServerAlertsPostponed] = 1;
    v9 = v3;
    sub_10041E45C();

    *(*(v2 + 16) + OBJC_IVAR____TtC6FindMy19FMConditionProvider_preventOnboarding) = 0;
    v10 = objc_allocWithZone(type metadata accessor for FMOnboardingNavigationController());

    oslog = sub_1002DBA88(v11, a1 & 1);

    [oslog setModalPresentationStyle:2];
    [oslog setModalInPresentation:1];
    *(&oslog[1].isa + OBJC_IVAR____TtC6FindMy32FMOnboardingNavigationController_onboardingDelegate) = &off_100637D60;
    swift_unknownObjectWeakAssign();
    [v7 presentViewController:oslog animated:1 completion:0];
  }
}

void sub_100355CE0(void *a1, char a2)
{
  v3 = v2;
  v41 = type metadata accessor for FMIPAuthEventResponse();
  v6 = *(v41 - 8);
  __chkstk_darwin(v41);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FMIPNotificationAuthPromptEvent();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*&v2[OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator] + 16);
  v13[OBJC_IVAR____TtC6FindMy19FMConditionProvider_areServerAlertsPostponed] = 0;
  v14 = v13;
  sub_10041E45C();

  if (a2)
  {
    v39 = v9;
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v38 = v10;
    v40 = a1;
    v15 = type metadata accessor for Logger();
    sub_100005B14(v15, qword_1006D4630);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "FMMainViewController: Dismiss onboarding with Not Now", v18, 2u);
    }

    v19 = objc_opt_self();
    v20 = [v19 currentNotificationCenter];
    v21 = [v20 notificationSettings];

    v22 = [v21 authorizationStatus];
    if (v22)
    {
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();
      v25 = os_log_type_enabled(v23, v24);
      v26 = v38;
      if (v25)
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v23, v24, "FMMainViewController: No need to request deliver quietly authorization for Find My. Authorization already determined.", v27, 2u);
      }
    }

    else
    {
      v33 = [v19 currentNotificationCenter];
      v46 = sub_100356280;
      v47 = 0;
      aBlock = _NSConcreteStackBlock;
      v43 = 1107296256;
      v44 = sub_1004318E0;
      v45 = &unk_100638350;
      v34 = _Block_copy(&aBlock);
      [v33 requestAuthorizationWithOptions:66 completionHandler:v34];

      _Block_release(v34);
      v26 = v38;
    }

    (*(v6 + 104))(v8, enum case for FMIPAuthEventResponse.notNow(_:), v41);
    FMIPNotificationAuthPromptEvent.init(authEventResponse:)();

    FMIPManager.enqueue(notificationPromptEvent:)();

    v35 = swift_allocObject();
    *(v35 + 16) = v3;
    v46 = sub_100357FBC;
    v47 = v35;
    aBlock = _NSConcreteStackBlock;
    v43 = 1107296256;
    v44 = sub_100004AE4;
    v45 = &unk_100638328;
    v36 = _Block_copy(&aBlock);
    v37 = v3;

    [v40 dismissViewControllerAnimated:1 completion:v36];
    _Block_release(v36);
    (*(v26 + 8))(v12, v39);
  }

  else
  {
    v28 = [objc_opt_self() currentNotificationCenter];
    v29 = swift_allocObject();
    *(v29 + 16) = v3;
    *(v29 + 24) = a1;
    v46 = sub_1002DBF10;
    v47 = v29;
    aBlock = _NSConcreteStackBlock;
    v43 = 1107296256;
    v44 = sub_1004318E0;
    v45 = &unk_1006382D8;
    v30 = _Block_copy(&aBlock);
    v31 = v3;
    v32 = a1;

    [v28 requestAuthorizationWithOptions:7 completionHandler:v30];

    _Block_release(v30);
  }
}

void sub_100356280(char a1, uint64_t a2)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100005B14(v3, qword_1006D4630);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 67109378;
    *(v5 + 4) = a1 & 1;
    *(v5 + 8) = 2080;
    swift_errorRetain();
    sub_10007EBC0(&qword_1006B9570, &qword_1005523F0);
    v7 = String.init<A>(describing:)();
    v9 = sub_100005B4C(v7, v8, &v11);

    *(v5 + 10) = v9;
    _os_log_impl(&_mh_execute_header, oslog, v4, "FMMainViewController: Request deliver quietly authorization for Find My completed. Granted?: %{BOOL}d. Error?: %s", v5, 0x12u);
    sub_100006060(v6);
  }

  else
  {
  }
}

uint64_t sub_100356438(int a1, uint64_t a2, char *a3, void *a4)
{
  v50 = a4;
  v49 = type metadata accessor for DispatchWorkItemFlags();
  v52 = *(v49 - 8);
  __chkstk_darwin(v49);
  v48 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for DispatchQoS();
  v51 = *(v53 - 8);
  __chkstk_darwin(v53);
  v47 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FMIPNotificationAuthPromptEvent();
  v54 = *(v9 - 8);
  v55 = v9;
  __chkstk_darwin(v9);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FMIPAuthEventResponse();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v16);
  v19 = &v42 - v18;
  v56 = &v42 - v18;
  if (a2)
  {
    v46 = a1;
    swift_errorRetain();
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100005B14(v20, qword_1006D4630);
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    v45 = v22;
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v43 = v23;
      v44 = swift_slowAlloc();
      v57 = a2;
      aBlock[0] = v44;
      *v23 = 136315138;
      swift_errorRetain();
      sub_10007EBC0(&unk_1006AF7B0, &qword_100552E20);
      v24 = String.init<A>(describing:)();
      v26 = sub_100005B4C(v24, v25, aBlock);
      v19 = v56;

      v27 = v43;
      *(v43 + 1) = v26;
      _os_log_impl(&_mh_execute_header, v21, v45, "FMMainViewController: Failed to request authorization for notifications. Error: %s", v27, 0xCu);
      sub_100006060(v44);
    }

    else
    {
    }

    LOBYTE(a1) = v46;
  }

  v28 = &enum case for FMIPAuthEventResponse.granted(_:);
  if ((a1 & 1) == 0)
  {
    v28 = &enum case for FMIPAuthEventResponse.denied(_:);
  }

  (*(v13 + 104))(v19, *v28, v12, v17);
  (*(v13 + 16))(v15, v19, v12);
  FMIPNotificationAuthPromptEvent.init(authEventResponse:)();
  v29 = a3;
  v30 = v11;

  FMIPManager.enqueue(notificationPromptEvent:)();

  sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
  v31 = static OS_dispatch_queue.main.getter();
  v32 = swift_allocObject();
  v33 = v13;
  v34 = v50;
  *(v32 + 16) = v50;
  *(v32 + 24) = v29;
  aBlock[4] = sub_100357EE4;
  aBlock[5] = v32;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_1006383A0;
  v35 = _Block_copy(aBlock);
  v36 = v34;
  v37 = v29;

  v38 = v47;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A390(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
  sub_100037970();
  v40 = v48;
  v39 = v49;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v35);

  (*(v52 + 8))(v40, v39);
  (*(v51 + 8))(v38, v53);
  (*(v54 + 8))(v30, v55);
  return (*(v33 + 8))(v56, v12);
}

void sub_100356A8C(void *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v7[4] = sub_100357EEC;
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_100004AE4;
  v7[3] = &unk_1006383F0;
  v5 = _Block_copy(v7);
  v6 = a2;

  [a1 dismissViewControllerAnimated:1 completion:v5];
  _Block_release(v5);
}

double sub_100356B6C()
{

  return result;
}

id sub_100356C10()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMMainViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100356E0C(void *a1)
{
  v8[3] = &type metadata for SolariumFeatureFlag;
  v8[4] = sub_10000BD04();
  v2 = isFeatureEnabled(_:)();
  sub_100006060(v8);
  if (v2)
  {
    v3 = objc_opt_self();
    v4 = &selRef_clearColor;
  }

  else
  {
    v5 = [a1 userInterfaceStyle];
    v3 = objc_opt_self();
    v4 = &selRef_whiteColor;
    if (v5 == 2)
    {
      v4 = &selRef_tertiarySystemFillColor;
    }
  }

  v6 = [v3 *v4];

  return v6;
}

void sub_100356ECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*&v3[OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator] + 16);
  if (*(v13 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_accountsAreInitialized) == 1 && *(v13 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_accountsAreSignedIn) == 1 && (*(v13 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_isAccountManaged) & 1) == 0 && (*(v13 + OBJC_IVAR____TtC6FindMy19FMConditionProvider_areServerAlertsPostponed) & 1) == 0)
  {
    v14 = v10;
    if (sub_100056EF8())
    {
      v15 = v3;
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_100005B14(v16, qword_1006D4630);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "FMMainViewController: provider requested last location prompt and we can show it.", v19, 2u);
      }

      sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
      v20 = static OS_dispatch_queue.main.getter();
      v21 = swift_allocObject();
      *(v21 + 16) = v15;
      aBlock[4] = sub_1003572B8;
      aBlock[5] = v21;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100004AE4;
      aBlock[3] = &unk_100637F68;
      v22 = _Block_copy(aBlock);
      v23 = v15;

      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_10000A390(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
      sub_100037970();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v22);

      (*(v5 + 8))(v7, v4);
      (*(v9 + 8))(v12, v14);
    }
  }
}

uint64_t sub_100357300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a3;
  v20 = a4;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v10 = *(v21 - 8);
  __chkstk_darwin(v21);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
  v13 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = v4;
  aBlock[4] = v19;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = v20;
  v15 = _Block_copy(aBlock);

  v16 = v4;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A390(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v7 + 8))(v9, v6);
  return (*(v10 + 8))(v12, v21);
}

uint64_t sub_1003575E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006BC898, &qword_10055E3D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100357680()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1003576EC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void))
{
  v4 = *(v3 + 24);
  a3(a2, 0);
  *(v4 + OBJC_IVAR____TtC6FindMy20FMMainViewController_isShowingAlert) = 0;
  sub_1003542A0();
}

uint64_t sub_100357734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v9 = *(v18 - 8);
  __chkstk_darwin(v18);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = v17;
  v14 = _Block_copy(aBlock);
  v15 = v3;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A390(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v6 + 8))(v8, v5);
  return (*(v9 + 8))(v11, v18);
}

void sub_1003579EC()
{
  *(v0 + OBJC_IVAR____TtC6FindMy20FMMainViewController_isLastLocationPromptShowing) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy20FMMainViewController_alertQueue) = _swiftEmptyArrayStorage;
  v1 = (v0 + OBJC_IVAR____TtC6FindMy20FMMainViewController_currentAlert);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy20FMMainViewController_compactConstraints) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC6FindMy20FMMainViewController_regularConstraints) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC6FindMy20FMMainViewController_isShowingAlert) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_100357A9C(char a1)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005B14(v2, qword_1006D4630);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, oslog, v3, "FMMainViewController: updated account status %{BOOL}d", v4, 8u);
  }
}

void sub_100357BA0(char a1)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005B14(v2, qword_1006D4630);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v3, v4, "FMMainViewController: updated network status %{BOOL}d", v5, 8u);
  }

  if (a1)
  {

    sub_100354424();
  }
}

void sub_100357CC0(char a1)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005B14(v2, qword_1006D4630);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v3, v4, "FMMainViewController: updated server alert postponed %{BOOL}d", v5, 8u);
  }

  if ((a1 & 1) == 0)
  {

    sub_1003542A0();
  }
}

void sub_100357DE0()
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100005B14(v0, qword_1006D4630);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "FMMainViewController: App is now initialized", v2, 2u);
  }
}

void sub_100357FD0()
{
  v3 = OBJC_IVAR____TtC6FindMy13FMAppDelegate_alertQueue;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      return;
    }
  }

  else if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  v5 = *(v1 + v3);
  if (v5 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      return;
    }
  }

  else if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  if ((v5 & 0xC000000000000001) != 0)
  {

    v0 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v0 = *(v5 + 32);
  }

  swift_beginAccess();
  v5 = *(v1 + v3);
  v2 = v5 >> 62;
  if (!(v5 >> 62))
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_10;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_33:
    __break(1u);
    return;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    __break(1u);
    goto LABEL_22;
  }

LABEL_10:
  if ((v5 & 0xC000000000000001) == 0)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFF8;
    if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_32;
    }

    if (!v2)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

LABEL_24:
  specialized _ArrayBuffer._getElementSlowPath(_:)();
  swift_unknownObjectRelease();
  v6 = v5 & 0xFFFFFFFFFFFFFF8;
  if (!v2)
  {
LABEL_13:
    v7 = *(v6 + 16);
    goto LABEL_26;
  }

LABEL_25:
  v7 = _CocoaArrayWrapper.endIndex.getter();
LABEL_26:
  if (!v7)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  sub_1003CF8A8(0, 1);
  swift_endAccess();
  *(v1 + OBJC_IVAR____TtC6FindMy13FMAppDelegate_isShowingAlert) = 1;
  v8 = sub_1003E1AD0();
  if (v8)
  {
    v9 = v8;
    [v8 presentViewController:v0 animated:1 completion:0];
  }
}

void sub_1003581E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v70 = *(v4 - 8);
  v71 = v4;
  __chkstk_darwin(v4);
  v68 = &v58[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v69 = type metadata accessor for DispatchQoS();
  v67 = *(v69 - 8);
  __chkstk_darwin(v69);
  v7 = &v58[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for DispatchTime();
  v73 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v58[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v58[-v12];
  v14 = sub_10007EBC0(&unk_1006B0120, &qword_100552B60);
  __chkstk_darwin(v14 - 8);
  v16 = &v58[-v15];
  v17 = type metadata accessor for URL();
  v72 = *(v17 - 8);
  v18 = *(v72 + 64);
  __chkstk_darwin(v17);
  v19 = &v58[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v22 = &v58[-v21];
  sub_100362454(a1);
  if (v23)
  {
    v24 = v23;
    if (!*(v23 + 16) || (v25 = sub_10000726C(0x6449656369766564, 0xE800000000000000), (v26 & 1) == 0))
    {

      goto LABEL_8;
    }

    sub_100006004(*(v24 + 56) + 32 * v25, &aBlock);

    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_8:
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      sub_100005B14(v31, qword_1006D4630);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v32, v33, "FMAppDelegate: Error playing sound", v34, 2u);
      }

      return;
    }

    v64 = v8;
    v27 = v80;
    v65 = v81;
    aBlock = 0;
    v75 = 0xE000000000000000;
    _StringGuts.grow(_:)(41);

    aBlock = 0xD00000000000001ALL;
    v75 = 0x8000000100592C80;
    v63 = v27;
    v28._countAndFlagsBits = v27;
    v28._object = v65;
    String.append(_:)(v28);
    v29._countAndFlagsBits = 0x79616C703D706F26;
    v29._object = 0xED0000646E756F53;
    String.append(_:)(v29);
    URL.init(string:)();

    v30 = v72;
    if ((*(v72 + 48))(v16, 1, v17) == 1)
    {

      sub_100012DF0(v16, &unk_1006B0120, &qword_100552B60);
      goto LABEL_8;
    }

    v61 = *(v30 + 32);
    v62 = v30 + 32;
    v61(v22, v16, v17);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_100005B14(v39, qword_1006D4630);
    v40 = v65;

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v60 = v41;
      v59 = v42;
      v44 = v43;
      v45 = swift_slowAlloc();
      aBlock = v45;
      *v44 = 136315138;
      v46 = sub_100005B4C(v63, v40, &aBlock);

      *(v44 + 4) = v46;
      v47 = v60;
      _os_log_impl(&_mh_execute_header, v60, v59, "FMAppDelegate: Playing sound on %s", v44, 0xCu);
      sub_100006060(v45);
    }

    else
    {
    }

    sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
    v63 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    isa = v73[1].isa;
    ++v73;
    v65 = isa;
    (isa)(v10, v64);
    v49 = v72;
    (*(v72 + 16))(v19, v22, v17);
    v50 = (*(v49 + 80) + 24) & ~*(v49 + 80);
    v51 = swift_allocObject();
    v52 = v66;
    *(v51 + 16) = v66;
    v61((v51 + v50), v19, v17);
    v78 = sub_10036AC7C;
    v79 = v51;
    aBlock = _NSConcreteStackBlock;
    v75 = 1107296256;
    v76 = sub_100004AE4;
    v77 = &unk_100638698;
    v53 = _Block_copy(&aBlock);
    v54 = v52;

    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_10036AE08(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
    sub_100037970();
    v55 = v68;
    v56 = v71;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v57 = v63;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v53);

    (*(v70 + 8))(v55, v56);
    (*(v67 + 8))(v7, v69);
    (v65)(v13, v64);
    (*(v49 + 8))(v22, v17);
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_100005B14(v35, qword_1006D4630);
    v73 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v73, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v73, v36, "FMAppDelegate: Cannot read userInfo for play sound notification", v37, 2u);
    }

    v38 = v73;
  }
}

void sub_100358B70(void *a1, uint64_t a2, uint64_t a3, void (*a4)(__n128), uint64_t a5)
{
  v52 = a5;
  v53 = a4;
  v51 = a3;
  v48 = type metadata accessor for FMSelectedSection(0);
  __chkstk_darwin(v48);
  v50 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v49 = &v48 - v8;
  sub_10007EBC0(&unk_1006AF770, &unk_1005542D0);
  inited = swift_initStackObject();
  v54 = xmmword_100552210;
  *(inited + 16) = xmmword_100552210;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v10;
  *(inited + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 56) = v11;
  v12 = swift_initStackObject();
  *(v12 + 16) = v54;
  *(v12 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v12 + 40) = v13;
  *(v12 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v12 + 56) = v14;
  v15 = [a1 notification];
  v16 = [v15 request];

  v17 = [v16 content];
  v18 = [v17 categoryIdentifier];

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v57 = v19;
  v58 = v21;
  v56 = &v57;
  LOBYTE(v18) = sub_10008A40C(sub_10011F7D4, v55, inited);

  if (v18)
  {
    swift_setDeallocating();
    swift_arrayDestroy();
    if (qword_1006AEC80 != -1)
    {
      swift_once();
    }

    v22 = off_1006BE550;
    v23 = *(off_1006BE550 + 2);
    v23[OBJC_IVAR____TtC6FindMy19FMConditionProvider_areServerAlertsPostponed] = 1;
    v24 = v23;
    sub_10041E45C();

    v25 = v22[7];
    v26 = v49;
    swift_storeEnumTagMultiPayload();
    v27 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
    swift_beginAccess();
    v28 = v50;
    sub_100062074(v25 + v27, v50);
    swift_beginAccess();

    sub_100058530(v26, v25 + v27);
    swift_endAccess();
  }

  else
  {
    *&v54 = a1;
    v29 = [a1 notification];
    v30 = [v29 request];

    v31 = [v30 content];
    v32 = [v31 categoryIdentifier];

    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    v57 = v33;
    v58 = v35;
    __chkstk_darwin(v36);
    *(&v48 - 2) = &v57;
    LOBYTE(v33) = sub_10008A40C(sub_1001413D4, (&v48 - 4), v12);
    swift_setDeallocating();
    swift_arrayDestroy();

    if ((v33 & 1) == 0)
    {
      return;
    }

    if (qword_1006AEC80 != -1)
    {
      swift_once();
    }

    v37 = off_1006BE550;
    v38 = *(off_1006BE550 + 2);
    v38[OBJC_IVAR____TtC6FindMy19FMConditionProvider_areServerAlertsPostponed] = 1;
    v39 = v38;
    sub_10041E45C();

    v40 = v37[7];
    v26 = v49;
    swift_storeEnumTagMultiPayload();
    v41 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
    swift_beginAccess();
    v28 = v50;
    sub_100062074(v40 + v41, v50);
    swift_beginAccess();

    sub_100058530(v26, v40 + v41);
    swift_endAccess();
    a1 = v54;
  }

  sub_100058594(v28);

  sub_10005D4E4(v28);
  sub_10005D4E4(v26);
  v42 = [a1 notification];
  v43 = [a1 actionIdentifier];
  v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v46 = v45;

  sub_10036B330(v51, v42, v44, v46);

  (v53)(v47);
}

double sub_100359168(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100005B14(v9, qword_1006D4630);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v12 = 136315394;
    *(v12 + 4) = sub_100005B4C(a1, a2, &v19);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_100005B4C(a3, a4, &v19);
    _os_log_impl(&_mh_execute_header, v10, v11, "FMAppDelegate: processUTNotification for beacon %s, action %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  if (qword_1006AEC80 != -1)
  {
    swift_once();
  }

  *(*(off_1006BE550 + 2) + OBJC_IVAR____TtC6FindMy19FMConditionProvider_preventOnboarding) = 1;
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = v4;
  v13[5] = a3;
  v13[6] = a4;

  v14 = v4;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 67109120;
    _os_log_impl(&_mh_execute_header, v15, v16, "FMDeviceProvider: refreshUnknownBeacons, isCompletionNil? %{BOOL}d", v17, 8u);
  }

  FMIPManager.refreshUnknownBeacons(completion:)();

  return result;
}

void sub_100359450(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10007EBC0(&unk_1006B20C0, &unk_100552E10);
  __chkstk_darwin(v4 - 8);
  v42 = (v39 - v5);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  __chkstk_darwin(v6);
  v41 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v39 - v10;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100005B14(v12, qword_1006D4630);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v40 = v2;
    v16 = v15;
    v17 = swift_slowAlloc();
    v39[0] = v11;
    v39[1] = v8;
    v18 = v7;
    v19 = v17;
    v45[0] = v17;
    *v16 = 136315138;
    v20 = Dictionary.description.getter();
    v22 = v6;
    v23 = sub_100005B4C(v20, v21, v45);

    *(v16 + 4) = v23;
    v6 = v22;
    _os_log_impl(&_mh_execute_header, v13, v14, "FMAppDelegate: processUTPlaySoundNotification for userInfo %s", v16, 0xCu);
    sub_100006060(v19);
    v7 = v18;
    v11 = v39[0];

    v2 = v40;
  }

  v43 = 1684632949;
  v44 = 0xE400000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v24 = sub_10004CC50(v45), (v25 & 1) == 0))
  {
    sub_10004CDB8(v45);
    goto LABEL_11;
  }

  sub_100006004(*(a1 + 56) + 32 * v24, v46);
  sub_10004CDB8(v45);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "FMAppDelegate: processUTPlaySoundNotification no UUID found", v29, 2u);
    }

    return;
  }

  v26 = v42;
  UUID.init(uuidString:)();

  if ((*(v7 + 6))(v26, 1, v6) == 1)
  {
    sub_100012DF0(v26, &unk_1006B20C0, &unk_100552E10);
    goto LABEL_11;
  }

  v30 = v26;
  v31 = *(v7 + 4);
  v31(v11, v30, v6);
  if (qword_1006AEC80 != -1)
  {
    swift_once();
  }

  v42 = v7;
  v32 = v41;
  (*(v7 + 2))(v41, v11, v6);
  v33 = (v7[80] + 24) & ~v7[80];
  v34 = swift_allocObject();
  *(v34 + 16) = v2;
  v31((v34 + v33), v32, v6);

  v35 = v2;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 67109120;
    _os_log_impl(&_mh_execute_header, v36, v37, "FMDeviceProvider: refreshUnknownBeacons, isCompletionNil? %{BOOL}d", v38, 8u);
  }

  FMIPManager.refreshUnknownBeacons(completion:)();

  v42[1](v11, v6);
}

void sub_1003599E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v70 = *(v4 - 8);
  v71 = v4;
  __chkstk_darwin(v4);
  v68 = &v58[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v69 = type metadata accessor for DispatchQoS();
  v67 = *(v69 - 8);
  __chkstk_darwin(v69);
  v7 = &v58[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for DispatchTime();
  v73 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v58[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v58[-v12];
  v14 = sub_10007EBC0(&unk_1006B0120, &qword_100552B60);
  __chkstk_darwin(v14 - 8);
  v16 = &v58[-v15];
  v17 = type metadata accessor for URL();
  v72 = *(v17 - 8);
  v18 = *(v72 + 64);
  __chkstk_darwin(v17);
  v19 = &v58[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v22 = &v58[-v21];
  sub_100362454(a1);
  if (v23)
  {
    v24 = v23;
    if (!*(v23 + 16) || (v25 = sub_10000726C(1684632949, 0xE400000000000000), (v26 & 1) == 0))
    {

      goto LABEL_8;
    }

    sub_100006004(*(v24 + 56) + 32 * v25, &aBlock);

    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_8:
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for Logger();
      sub_100005B14(v31, qword_1006D4630);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v32, v33, "FMAppDelegate: Error handling low battery", v34, 2u);
      }

      return;
    }

    v64 = v8;
    v27 = v80;
    v65 = v81;
    aBlock = 0;
    v75 = 0xE000000000000000;
    _StringGuts.grow(_:)(40);

    aBlock = 0xD000000000000018;
    v75 = 0x8000000100592CA0;
    v63 = v27;
    v28._countAndFlagsBits = v27;
    v28._object = v65;
    String.append(_:)(v28);
    v29._countAndFlagsBits = 0x42776F6C3D706F26;
    v29._object = 0xEE00797265747461;
    String.append(_:)(v29);
    URL.init(string:)();

    v30 = v72;
    if ((*(v72 + 48))(v16, 1, v17) == 1)
    {

      sub_100012DF0(v16, &unk_1006B0120, &qword_100552B60);
      goto LABEL_8;
    }

    v61 = *(v30 + 32);
    v62 = v30 + 32;
    v61(v22, v16, v17);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_100005B14(v39, qword_1006D4630);
    v40 = v65;

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v60 = v41;
      v59 = v42;
      v44 = v43;
      v45 = swift_slowAlloc();
      aBlock = v45;
      *v44 = 136315138;
      v46 = sub_100005B4C(v63, v40, &aBlock);

      *(v44 + 4) = v46;
      v47 = v60;
      _os_log_impl(&_mh_execute_header, v60, v59, "FMAppDelegate: Handle Low battery for %s", v44, 0xCu);
      sub_100006060(v45);
    }

    else
    {
    }

    sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
    v63 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    isa = v73[1].isa;
    ++v73;
    v65 = isa;
    (isa)(v10, v64);
    v49 = v72;
    (*(v72 + 16))(v19, v22, v17);
    v50 = (*(v49 + 80) + 24) & ~*(v49 + 80);
    v51 = swift_allocObject();
    v52 = v66;
    *(v51 + 16) = v66;
    v61((v51 + v50), v19, v17);
    v78 = sub_10036E184;
    v79 = v51;
    aBlock = _NSConcreteStackBlock;
    v75 = 1107296256;
    v76 = sub_100004AE4;
    v77 = &unk_1006387D8;
    v53 = _Block_copy(&aBlock);
    v54 = v52;

    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_10036AE08(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
    sub_100037970();
    v55 = v68;
    v56 = v71;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v57 = v63;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v53);

    (*(v70 + 8))(v55, v56);
    (*(v67 + 8))(v7, v69);
    (v65)(v13, v64);
    (*(v49 + 8))(v22, v17);
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_100005B14(v35, qword_1006D4630);
    v73 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v73, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v73, v36, "FMAppDelegate: Cannot read userInfo for low battery notification", v37, 2u);
    }

    v38 = v73;
  }
}

void sub_10035A364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 1);
  __chkstk_darwin(v5);
  v95 = &v81[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v96 = type metadata accessor for DispatchQoS();
  v94 = *(v96 - 8);
  __chkstk_darwin(v96);
  v93 = &v81[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v98 = type metadata accessor for DispatchTime();
  v92 = *(v98 - 8);
  __chkstk_darwin(v98);
  v10 = &v81[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v97 = &v81[-v12];
  v13 = type metadata accessor for URL();
  v99 = *(v13 - 8);
  v14 = *(v99 + 64);
  __chkstk_darwin(v13);
  v15 = &v81[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v91 = &v81[-v17];
  v18 = sub_10007EBC0(&unk_1006B0120, &qword_100552B60);
  __chkstk_darwin(v18 - 8);
  v20 = &v81[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v21);
  v23 = &v81[-v22];
  __chkstk_darwin(v24);
  v100 = &v81[-v25];
  sub_100362454(a1);
  if (v26)
  {
    v27 = v26;
    if (*(v26 + 16))
    {
      v90 = v3;
      v28 = sub_10000726C(1684632949, 0xE400000000000000);
      if (v29)
      {
        v88 = v6;
        sub_100006004(*(v27 + 56) + 32 * v28, &aBlock);
        if (swift_dynamicCast())
        {
          v87 = v107;
          v89 = v108;
          (*(v99 + 56))(v100, 1, 1, v13);
          if (*(v27 + 16))
          {
            v30 = sub_10000726C(0x49555570756F7267, 0xE900000000000044);
            if (v31)
            {
              sub_100006004(*(v27 + 56) + 32 * v30, &aBlock);

              if ((swift_dynamicCast() & 1) == 0)
              {
LABEL_28:
                v52 = v89;
                if (qword_1006AEBE0 != -1)
                {
                  swift_once();
                }

                v53 = type metadata accessor for Logger();
                sub_100005B14(v53, qword_1006D4630);

                v54 = Logger.logObject.getter();
                v55 = static os_log_type_t.default.getter();

                if (os_log_type_enabled(v54, v55))
                {
                  v56 = swift_slowAlloc();
                  v86 = v5;
                  v57 = v56;
                  v58 = swift_slowAlloc();
                  aBlock = v58;
                  *v57 = 136315138;
                  *(v57 + 4) = sub_100005B4C(v87, v89, &aBlock);
                  _os_log_impl(&_mh_execute_header, v54, v55, "FMAppDelegate: Handle Local Notify When Found for %s", v57, 0xCu);
                  sub_100006060(v58);
                  v52 = v89;

                  v5 = v86;
                }

                v43 = v100;
                aBlock = 0;
                v102 = 0xE000000000000000;
                _StringGuts.grow(_:)(50);

                aBlock = 0xD000000000000018;
                v102 = 0x8000000100592CA0;
                v59._countAndFlagsBits = v87;
                v59._object = v52;
                String.append(_:)(v59);

                v60 = 0x8000000100592CC0;
                v61 = 0xD000000000000018;
                goto LABEL_33;
              }

              v32 = v108;
              v33 = HIBYTE(v108) & 0xF;
              if ((v108 & 0x2000000000000000) == 0)
              {
                v33 = v107 & 0xFFFFFFFFFFFFLL;
              }

              if (v33)
              {
                v85 = v107;
                if (qword_1006AEBE0 != -1)
                {
                  swift_once();
                }

                v34 = type metadata accessor for Logger();
                sub_100005B14(v34, qword_1006D4630);

                v35 = Logger.logObject.getter();
                v36 = static os_log_type_t.default.getter();
                v37 = v32;
                v38 = v36;
                v86 = v37;

                if (os_log_type_enabled(v35, v38))
                {
                  v39 = swift_slowAlloc();
                  v84 = v35;
                  v40 = v39;
                  v83 = swift_slowAlloc();
                  aBlock = v83;
                  *v40 = 136315394;
                  *(v40 + 4) = sub_100005B4C(v87, v89, &aBlock);
                  *(v40 + 12) = 2080;
                  v82 = v38;
                  v41 = v85;
                  *(v40 + 14) = sub_100005B4C(v85, v86, &aBlock);
                  _os_log_impl(&_mh_execute_header, v84, v82, "FMAppDelegate: Handle Local Notify When Found for %s of group %s", v40, 0x16u);
                  v42 = v41;
                  swift_arrayDestroy();

                  v43 = v100;
                }

                else
                {

                  v43 = v100;
                  v42 = v85;
                }

                aBlock = 0;
                v102 = 0xE000000000000000;
                _StringGuts.grow(_:)(48);

                aBlock = 0xD00000000000001ALL;
                v102 = 0x8000000100592C80;
                v78._countAndFlagsBits = v42;
                v78._object = v86;
                String.append(_:)(v78);

                v79._countAndFlagsBits = 0x3D64497472617026;
                v79._object = 0xE800000000000000;
                String.append(_:)(v79);
                v80._countAndFlagsBits = v87;
                v80._object = v89;
                String.append(_:)(v80);

                v61 = 0x69746F6E3D706F26;
                v60 = 0xEA00000000007966;
LABEL_33:
                String.append(_:)(*&v61);
                URL.init(string:)();

                sub_100012DF0(v43, &unk_1006B0120, &qword_100552B60);
                sub_100035318(v23, v43, &unk_1006B0120, &qword_100552B60);
                sub_100007204(v43, v20, &unk_1006B0120, &qword_100552B60);
                v62 = v99;
                if ((*(v99 + 48))(v20, 1, v13) == 1)
                {
                  sub_100012DF0(v20, &unk_1006B0120, &qword_100552B60);
                  if (qword_1006AEBE0 != -1)
                  {
                    swift_once();
                  }

                  v63 = type metadata accessor for Logger();
                  sub_100005B14(v63, qword_1006D4630);
                  v64 = Logger.logObject.getter();
                  v65 = static os_log_type_t.error.getter();
                  if (os_log_type_enabled(v64, v65))
                  {
                    v66 = swift_slowAlloc();
                    *v66 = 0;
                    _os_log_impl(&_mh_execute_header, v64, v65, "FMAppDelegate: Unable to construct landing URL for local notify when found", v66, 2u);
                  }

                  v67 = v43;
                }

                else
                {
                  v87 = *(v62 + 32);
                  v68 = v91;
                  v87(v91, v20, v13);
                  sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
                  v89 = static OS_dispatch_queue.main.getter();
                  static DispatchTime.now()();
                  + infix(_:_:)();
                  v92 = *(v92 + 8);
                  (v92)(v10, v98);
                  (*(v62 + 16))(v15, v68, v13);
                  v69 = (*(v62 + 80) + 24) & ~*(v62 + 80);
                  v70 = swift_allocObject();
                  v71 = v90;
                  *(v70 + 16) = v90;
                  v87((v70 + v69), v15, v13);
                  v105 = sub_10036E184;
                  v106 = v70;
                  aBlock = _NSConcreteStackBlock;
                  v102 = 1107296256;
                  v103 = sub_100004AE4;
                  v104 = &unk_100638828;
                  v72 = _Block_copy(&aBlock);
                  v73 = v71;

                  v74 = v93;
                  static DispatchQoS.unspecified.getter();
                  aBlock = _swiftEmptyArrayStorage;
                  sub_10036AE08(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
                  sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
                  sub_100037970();
                  v75 = v95;
                  dispatch thunk of SetAlgebra.init<A>(_:)();
                  v76 = v97;
                  v77 = v89;
                  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
                  _Block_release(v72);

                  (*(v88 + 8))(v75, v5);
                  (*(v94 + 8))(v74, v96);
                  (v92)(v76, v98);
                  (*(v62 + 8))(v68, v13);
                  v67 = v100;
                }

                sub_100012DF0(v67, &unk_1006B0120, &qword_100552B60);
                return;
              }
            }
          }

          goto LABEL_28;
        }
      }
    }

    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_100005B14(v44, qword_1006D4630);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "FMAppDelegate: Error handling local notify when found", v47, 2u);
    }
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_100005B14(v48, qword_1006D4630);
    v100 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v100, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v100, v49, "FMAppDelegate: Cannot read userInfo for local notify when found", v50, 2u);
    }

    v51 = v100;
  }
}

void sub_10035B140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v69 = *(v4 - 8);
  v70 = v4;
  __chkstk_darwin(v4);
  v67 = &v57[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v68 = type metadata accessor for DispatchQoS();
  v66 = *(v68 - 8);
  __chkstk_darwin(v68);
  v7 = &v57[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for DispatchTime();
  v72 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v57[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v57[-v12];
  v14 = sub_10007EBC0(&unk_1006B0120, &qword_100552B60);
  __chkstk_darwin(v14 - 8);
  v16 = &v57[-v15];
  v17 = type metadata accessor for URL();
  v71 = *(v17 - 8);
  v18 = *(v71 + 64);
  __chkstk_darwin(v17);
  v19 = &v57[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v22 = &v57[-v21];
  sub_100362454(a1);
  if (v23)
  {
    v24 = v23;
    if (!*(v23 + 16) || (v25 = sub_10000726C(0x754E6C6169726573, 0xEC0000007265626DLL), (v26 & 1) == 0))
    {

      goto LABEL_8;
    }

    sub_100006004(*(v24 + 56) + 32 * v25, &aBlock);

    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_8:
      if (qword_1006AEBE0 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_100005B14(v30, qword_1006D4630);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v31, v32, "FMAppDelegate: Error handling notifyWhenDetached notification", v33, 2u);
      }

      return;
    }

    v63 = v8;
    v27 = v79;
    v64 = v80;
    aBlock = 0;
    v74 = 0xE000000000000000;
    _StringGuts.grow(_:)(27);

    aBlock = 0xD000000000000019;
    v74 = 0x8000000100592CE0;
    v62 = v27;
    v28._countAndFlagsBits = v27;
    v28._object = v64;
    String.append(_:)(v28);
    URL.init(string:)();

    v29 = v71;
    if ((*(v71 + 48))(v16, 1, v17) == 1)
    {

      sub_100012DF0(v16, &unk_1006B0120, &qword_100552B60);
      goto LABEL_8;
    }

    v60 = *(v29 + 32);
    v61 = v29 + 32;
    v60(v22, v16, v17);
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_100005B14(v38, qword_1006D4630);
    v39 = v64;

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v59 = v40;
      v58 = v41;
      v43 = v42;
      v44 = swift_slowAlloc();
      aBlock = v44;
      *v43 = 136315138;
      v45 = sub_100005B4C(v62, v39, &aBlock);

      *(v43 + 4) = v45;
      v46 = v59;
      _os_log_impl(&_mh_execute_header, v59, v58, "FMAppDelegate: Handling notifyWhenDetached notification for %s", v43, 0xCu);
      sub_100006060(v44);
    }

    else
    {
    }

    sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
    v62 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    isa = v72[1].isa;
    ++v72;
    v64 = isa;
    (isa)(v10, v63);
    v48 = v71;
    (*(v71 + 16))(v19, v22, v17);
    v49 = (*(v48 + 80) + 24) & ~*(v48 + 80);
    v50 = swift_allocObject();
    v51 = v65;
    *(v50 + 16) = v65;
    v60((v50 + v49), v19, v17);
    v77 = sub_10036E184;
    v78 = v50;
    aBlock = _NSConcreteStackBlock;
    v74 = 1107296256;
    v75 = sub_100004AE4;
    v76 = &unk_100638878;
    v52 = _Block_copy(&aBlock);
    v53 = v51;

    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    sub_10036AE08(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
    sub_100037970();
    v54 = v67;
    v55 = v70;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v56 = v62;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v52);

    (*(v69 + 8))(v54, v55);
    (*(v66 + 8))(v7, v68);
    (v64)(v13, v63);
    (*(v48 + 8))(v22, v17);
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_100005B14(v34, qword_1006D4630);
    v72 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v72, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v72, v35, "FMAppDelegate: Cannot read userInfo for notifyWhenDetached notification", v36, 2u);
    }

    v37 = v72;
  }
}

uint64_t sub_10035BAAC()
{
  v0 = type metadata accessor for FMSelectedSection(0);
  __chkstk_darwin(v0);
  v2 = &v9[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v5 = &v9[-v4];
  if (qword_1006AEC80 != -1)
  {
    swift_once();
  }

  v6 = *(off_1006BE550 + 7);
  swift_storeEnumTagMultiPayload();
  v7 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100062074(v6 + v7, v2);
  swift_beginAccess();

  sub_100058530(v5, v6 + v7);
  swift_endAccess();
  sub_100058594(v2);

  sub_10005D4E4(v2);
  return sub_10005D4E4(v5);
}

double sub_10035BC10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void (*a14)(void), uint64_t a15)
{
  v157 = a8;
  v158 = a4;
  v161 = a14;
  v162 = a15;
  v159 = a13;
  v160 = a12;
  v156 = a9;
  v21 = sub_10007EBC0(&unk_1006B0000, &unk_100552AA0);
  __chkstk_darwin(v21 - 8);
  v144 = &v143 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v148 = &v143 - v24;
  __chkstk_darwin(v25);
  v146 = &v143 - v26;
  v27 = sub_10007EBC0(&unk_1006BEF80, &unk_100565B90);
  __chkstk_darwin(v27 - 8);
  v149 = &v143 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v150 = &v143 - v30;
  v31 = type metadata accessor for FMFLocationAlert();
  v151 = *(v31 - 8);
  v152 = v31;
  __chkstk_darwin(v31);
  v147 = &v143 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = &v143 - v34;
  v36 = type metadata accessor for FriendshipExpiration();
  v153 = *(v36 - 8);
  v154 = v36;
  *&v37 = __chkstk_darwin(v36).n128_u64[0];
  v155 = &v143 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = a1;
  v39 = [a1 actionIdentifier];
  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v163 = v41;

  v145 = a2;
  v42 = a2;
  v43 = a3;
  if (!a3)
  {
    v42 = v158;
    v43 = a5;
    if (!a5)
    {
      v43 = a7;
      if (!a7)
      {
        a6 = v157;
        v43 = v156;
        if (!v156)
        {

          a6 = a10;
          v43 = a11;
        }
      }

      v42 = a6;
    }
  }

  v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v46 = v163;
  if (v44 == v40 && v45 == v163)
  {

LABEL_13:
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_100005B14(v49, qword_1006D4630);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&_mh_execute_header, v50, v51, "FMAppDelegate: Default action", v52, 2u);
    }

    goto LABEL_18;
  }

  v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v48 = v43;
  if (v47)
  {
    goto LABEL_13;
  }

  if (v40 == 0x43415F4552414853 && v46 == 0xEF44495F4E4F4954 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

LABEL_18:

    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    sub_100005B14(v53, qword_1006D4630);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&_mh_execute_header, v54, v55, "FMAppDelegate: Share push action", v56, 2u);
    }

    sub_10035E03C(v159);
LABEL_23:
    v161();
    return result;
  }

  if (v43)
  {
    if (v40 == 0xD000000000000018 && 0x800000010057C0B0 == v46 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v58 = qword_1006AEBE0;

      if (v58 != -1)
      {
        swift_once();
      }

      v59 = type metadata accessor for Logger();
      sub_100005B14(v59, qword_1006D4630);
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&_mh_execute_header, v60, v61, "FMAppDelegate: Share for one hour", v62, 2u);
      }

      sub_10007EBC0(&unk_1006AF770, &unk_1005542D0);
      v63 = swift_allocObject();
      *(v63 + 16) = xmmword_100552220;
      *(v63 + 32) = v42;
      *(v63 + 40) = v43;
      (*(v153 + 104))(v155, enum case for FriendshipExpiration.oneHour(_:), v154);
      type metadata accessor for FMFShareLocationAction();
      swift_allocObject();

      v64 = FMFShareLocationAction.init(handles:friendId:duration:)();
      if (qword_1006AEC80 != -1)
      {
        swift_once();
      }

      v65 = swift_allocObject();
      v65[2] = v42;
      v65[3] = v43;
      v66 = v162;
      v65[4] = v161;
      v65[5] = v66;

      v67 = sub_10036E180;
LABEL_39:
      sub_1000FB600(v64, v67, v65);

      return result;
    }

    if (v40 == 0xD000000000000013 && 0x800000010057C120 == v46 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v68 = qword_1006AEBE0;

      if (v68 != -1)
      {
        swift_once();
      }

      v69 = type metadata accessor for Logger();
      sub_100005B14(v69, qword_1006D4630);
      v70 = Logger.logObject.getter();
      v71 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        *v72 = 0;
        _os_log_impl(&_mh_execute_header, v70, v71, "FMAppDelegate: Share EOD action", v72, 2u);
      }

      sub_10007EBC0(&unk_1006AF770, &unk_1005542D0);
      v73 = swift_allocObject();
      *(v73 + 16) = xmmword_100552220;
      *(v73 + 32) = v42;
      *(v73 + 40) = v43;
      (*(v153 + 104))(v155, enum case for FriendshipExpiration.endOfDay(_:), v154);
      type metadata accessor for FMFShareLocationAction();
      swift_allocObject();

      v64 = FMFShareLocationAction.init(handles:friendId:duration:)();
      if (qword_1006AEC80 != -1)
      {
        swift_once();
      }

      v65 = swift_allocObject();
      v65[2] = v42;
      v65[3] = v43;
      v65[4] = v161;
      v65[5] = v162;

      v67 = sub_10036DE80;
      goto LABEL_39;
    }

    if (v40 == 0xD00000000000001CLL && 0x800000010057C190 == v46 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v74 = qword_1006AEBE0;

      if (v74 != -1)
      {
        swift_once();
      }

      v75 = type metadata accessor for Logger();
      sub_100005B14(v75, qword_1006D4630);
      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        *v78 = 0;
        _os_log_impl(&_mh_execute_header, v76, v77, "FMAppDelegate: Share Indefinitely action", v78, 2u);
      }

      sub_10007EBC0(&unk_1006AF770, &unk_1005542D0);
      v79 = swift_allocObject();
      *(v79 + 16) = xmmword_100552220;
      *(v79 + 32) = v42;
      *(v79 + 40) = v43;
      (*(v153 + 104))(v155, enum case for FriendshipExpiration.forever(_:), v154);
      type metadata accessor for FMFShareLocationAction();
      swift_allocObject();

      v64 = FMFShareLocationAction.init(handles:friendId:duration:)();
      if (qword_1006AEC80 != -1)
      {
        swift_once();
      }

      v65 = swift_allocObject();
      v65[2] = v42;
      v65[3] = v43;
      v65[4] = v161;
      v65[5] = v162;

      v67 = sub_10036E180;
      goto LABEL_39;
    }
  }

  if (v40 == 0xD000000000000010 && 0x800000010057BFD0 == v46 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v80 = type metadata accessor for Logger();
    sub_100005B14(v80, qword_1006D4630);
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.default.getter();
    v83 = os_log_type_enabled(v81, v82);
    v85 = v156;
    v84 = v157;
    if (v83)
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&_mh_execute_header, v81, v82, "FMAppDelegate: Accept invite action", v86, 2u);
    }

    if (!v85)
    {
      goto LABEL_72;
    }

    type metadata accessor for FMFRespondToInviteAction();
    swift_allocObject();
    swift_bridgeObjectRetain_n();
    v87 = FMFRespondToInviteAction.init(friendId:accepted:)();
    if (qword_1006AEC80 != -1)
    {
      swift_once();
    }

    v88 = swift_allocObject();
    v88[2] = v84;
    v88[3] = v85;
    v88[4] = v161;
    v88[5] = v162;

    v89 = sub_10036DE58;
LABEL_71:
    sub_1000FB600(v87, v89, v88);

LABEL_72:

    return result;
  }

  if (v40 == 0xD000000000000011 && 0x800000010057C040 == v46 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v90 = type metadata accessor for Logger();
    sub_100005B14(v90, qword_1006D4630);
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.default.getter();
    v93 = os_log_type_enabled(v91, v92);
    v95 = v156;
    v94 = v157;
    if (v93)
    {
      v96 = swift_slowAlloc();
      *v96 = 0;
      _os_log_impl(&_mh_execute_header, v91, v92, "FMAppDelegate: Decline invite action", v96, 2u);
    }

    if (!v95)
    {
      goto LABEL_72;
    }

    type metadata accessor for FMFRespondToInviteAction();
    swift_allocObject();
    swift_bridgeObjectRetain_n();
    v87 = FMFRespondToInviteAction.init(friendId:accepted:)();
    if (qword_1006AEC80 != -1)
    {
      swift_once();
    }

    v88 = swift_allocObject();
    v88[2] = v94;
    v88[3] = v95;
    v88[4] = v161;
    v88[5] = v162;

    v89 = sub_10036DE30;
    goto LABEL_71;
  }

  if (!v43)
  {
    goto LABEL_115;
  }

  if (v40 == 0xD000000000000019 && 0x800000010057C360 == v46 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v97 = swift_allocObject();
    v97[2] = v42;
    v97[3] = v43;
    v99 = v160;
    v98 = v161;
    v97[4] = v160;
    v97[5] = v98;
    v97[6] = v162;
    v100 = qword_1006AEC80;
    swift_bridgeObjectRetain_n();

    v101 = v99;
    if (v100 != -1)
    {
      swift_once();
    }

    v102 = v150;
    sub_1000BD790(v42, v43, v150);

    v104 = v151;
    v103 = v152;
    if ((*(v151 + 48))(v102, 1, v152) != 1)
    {
      (*(v104 + 32))(v35, v102, v103);
      sub_10036C79C(v35, v42, v48, v161, v162);

      swift_bridgeObjectRelease_n();

      (*(v104 + 8))(v35, v103);
      return result;
    }

    sub_100012DF0(v102, &unk_1006BEF80, &unk_100565B90);
    v105 = swift_allocObject();
    v105[2] = v101;
    v105[3] = v42;
    v105[4] = v48;
    v105[5] = sub_10036DDA8;
    v106 = v161;
    v105[6] = v97;
    v105[7] = v106;
    v105[8] = v162;

    v107 = v101;

    sub_1000BEA00(sub_10036DE04, v105, v108);

    goto LABEL_94;
  }

  if (v40 == 0xD00000000000001ALL && 0x800000010057C3F0 == v46 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v109 = swift_allocObject();
    v109[2] = v42;
    v109[3] = v43;
    v111 = v160;
    v110 = v161;
    v109[4] = v160;
    v109[5] = v110;
    v109[6] = v162;
    v112 = qword_1006AEC80;
    swift_bridgeObjectRetain_n();

    v113 = v111;
    if (v112 != -1)
    {
      swift_once();
    }

    v114 = v149;
    sub_1000BD790(v42, v48, v149);

    v116 = v151;
    v115 = v152;
    if ((*(v151 + 48))(v114, 1, v152) != 1)
    {
      v121 = v147;
      (*(v116 + 32))(v147, v114, v115);
      sub_10036CE04(v121, v42, v48, v161, v162);

      swift_bridgeObjectRelease_n();

      (*(v116 + 8))(v121, v115);
      return result;
    }

    sub_100012DF0(v114, &unk_1006BEF80, &unk_100565B90);
    v117 = swift_allocObject();
    v117[2] = v113;
    v117[3] = v42;
    v117[4] = v48;
    v117[5] = sub_10036DD44;
    v118 = v161;
    v117[6] = v109;
    v117[7] = v118;
    v117[8] = v162;

    v119 = v113;

    sub_1000BEA00(sub_10036E188, v117, v120);

LABEL_94:

    return result;
  }

  if ((v40 != 0xD000000000000017 || 0x800000010057C4A0 != v46) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
LABEL_115:
    if (v40 == 0xD000000000000017 && 0x800000010057C530 == v46 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      sub_10036D19C(v159);
    }

    else
    {
      if ((v40 != 0xD00000000000001ALL || 0x800000010057C4E0 != v46) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {

        if (qword_1006AEBE0 != -1)
        {
          swift_once();
        }

        v131 = type metadata accessor for Logger();
        sub_100005B14(v131, qword_1006D4630);
        v132 = v143;
        v133 = Logger.logObject.getter();
        v134 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v133, v134))
        {
          v135 = swift_slowAlloc();
          v136 = swift_slowAlloc();
          *v135 = 138412290;
          *(v135 + 4) = v132;
          *v136 = v132;
          v137 = v132;
          _os_log_impl(&_mh_execute_header, v133, v134, "FMAppDelegate: Unhandled notification response %@", v135, 0xCu);
          sub_100012DF0(v136, &unk_1006AF760, &qword_100552DB0);
        }

        goto LABEL_23;
      }

      sub_10036D7D0(v159);
    }

    goto LABEL_72;
  }

  v122 = qword_1006AEBE0;

  if (v122 != -1)
  {
    swift_once();
  }

  v123 = type metadata accessor for Logger();
  sub_100005B14(v123, qword_1006D4630);
  v124 = Logger.logObject.getter();
  v125 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v124, v125))
  {
    v126 = swift_slowAlloc();
    *v126 = 0;
    _os_log_impl(&_mh_execute_header, v124, v125, "FMAppDelegate: Mute Geofence action", v126, 2u);
  }

  v127 = [objc_opt_self() endDateForMuteTimespan:1];
  if (v127)
  {
    v128 = v127;
    v129 = v148;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v130 = type metadata accessor for Date();
    (*(*(v130 - 8) + 56))(v129, 0, 1, v130);
  }

  else
  {
    v138 = type metadata accessor for Date();
    (*(*(v138 - 8) + 56))(v148, 1, 1, v138);
  }

  v139 = v146;
  sub_100035318(v148, v146, &unk_1006B0000, &unk_100552AA0);
  sub_100007204(v139, v144, &unk_1006B0000, &unk_100552AA0);
  type metadata accessor for FMFMuteFencesAction();
  swift_allocObject();
  v140 = FMFMuteFencesAction.init(friendId:endDate:)();
  if (qword_1006AEC80 != -1)
  {
    swift_once();
  }

  v141 = swift_allocObject();
  v141[2] = v145;
  v141[3] = a3;
  v142 = v162;
  v141[4] = v161;
  v141[5] = v142;

  sub_1000FB600(v140, sub_10036DD38, v141);

  sub_100012DF0(v146, &unk_1006B0000, &unk_100552AA0);
  return result;
}