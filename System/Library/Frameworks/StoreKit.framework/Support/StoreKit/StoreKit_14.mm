id sub_1001AFCD4@<X0>(uint64_t a1@<X0>, NSURL *a2@<X8>)
{
  URL._bridgeToObjectiveC()(a2);
  v4 = v3;
  v5 = [swift_getObjCClassFromMetadata() receiptFromBundleAtURL:v3];

  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 8))(a1, v6);
  return v5;
}

char *sub_1001AFD6C(uint64_t a1, void *a2, uint64_t a3)
{
  v199 = a3;
  v4 = v3;
  ObjectType = swift_getObjectType();
  v7 = sub_100080FB4(&unk_1003D0540, &unk_1002EDD50);
  __chkstk_darwin(v7 - 8);
  v183 = &v181 - v8;
  v9 = type metadata accessor for ClientOverride.Server(0);
  v10 = __chkstk_darwin(v9 - 8);
  v191 = &v181 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v189 = &v181 - v13;
  __chkstk_darwin(v12);
  v198 = &v181 - v14;
  v15 = sub_100080FB4(&unk_1003CE610, &unk_1002F8550);
  v16 = __chkstk_darwin(v15 - 8);
  v192 = &v181 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v193 = &v181 - v19;
  __chkstk_darwin(v18);
  v201 = &v181 - v20;
  v21 = sub_100080FB4(&unk_1003D20F0, &qword_1002EB950);
  v22 = __chkstk_darwin(v21 - 8);
  v197 = &v181 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v196 = &v181 - v25;
  v26 = __chkstk_darwin(v24);
  v195 = &v181 - v27;
  v28 = __chkstk_darwin(v26);
  v186 = &v181 - v29;
  v30 = __chkstk_darwin(v28);
  v194 = &v181 - v31;
  v32 = __chkstk_darwin(v30);
  v34 = &v181 - v33;
  v35 = __chkstk_darwin(v32);
  v37 = &v181 - v36;
  __chkstk_darwin(v35);
  v202 = &v181 - v38;
  v39 = type metadata accessor for URL();
  v40 = *(v39 - 8);
  v41 = __chkstk_darwin(v39);
  v182 = &v181 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v44 = &v181 - v43;
  v45 = &v4[OBJC_IVAR____TtC9storekitd6Client_auditToken];
  v46 = *(a1 + 16);
  *v45 = *a1;
  *(v45 + 1) = v46;
  v45[32] = *(a1 + 32);
  v47 = a2;
  v48 = [v47 URL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v49 = OBJC_IVAR____TtC9storekitd6Client_callerBundleURL;
  v50 = *(v40 + 32);
  v190 = v44;
  v185 = v40 + 32;
  v184 = v50;
  v50(&v4[OBJC_IVAR____TtC9storekitd6Client_callerBundleURL], v44, v39);
  v51 = v47;
  v52 = sub_1001B49D0(v51, &selRef_bundleIdentifier);
  if (!v53)
  {

    sub_1001B497C();
    swift_allocError();
    *v68 = 0;
    swift_willThrow();

    sub_10013B1E8(v199, &unk_1003D20F0, &qword_1002EB950);
    (*(v40 + 8))(&v4[v49], v39);
    swift_deallocPartialClassInstance();
    return v44;
  }

  v54 = v53;
  v181 = v39;
  v55 = &v4[OBJC_IVAR____TtC9storekitd6Client_callerBundleID];
  *v55 = v52;
  v55[1] = v53;
  v56 = v52;

  v187 = v56;
  v188 = v54;
  sub_1001A9D84(v56, v54, v57, v58, v59, v60, v61, v62, v181, v182, v183, v184, v185, v186);
  v63 = type metadata accessor for ClientOverride(0);
  if (sub_100081D0C(v37, 1, v63) == 1)
  {
    v64 = v202;
    sub_1001B4D7C(v199, v202, &unk_1003D20F0, &qword_1002EB950);
    v65 = sub_100081D0C(v37, 1, v63);
    v66 = v201;
    v67 = v192;
    if (v65 != 1)
    {
      sub_10013B1E8(v37, &unk_1003D20F0, &qword_1002EB950);
    }
  }

  else
  {
    v64 = v202;
    sub_1001B4A94(v37, v202);
    sub_100081DFC(v64, 0, 1, v63);
    v66 = v201;
    v67 = v192;
  }

  sub_1001B4D7C(v64, v34, &unk_1003D20F0, &qword_1002EB950);
  v69 = sub_100081D0C(v34, 1, v63);
  v201 = v63;
  if (v69 == 1)
  {
    sub_10013B1E8(v34, &unk_1003D20F0, &qword_1002EB950);
    v70 = type metadata accessor for UUID();
    v71 = v193;
    sub_100081DFC(v193, 1, 1, v70);
    goto LABEL_10;
  }

  v72 = &v34[*(v63 + 40)];
  v71 = v193;
  sub_1001B4D7C(v72, v193, &unk_1003CE610, &unk_1002F8550);
  sub_1001B3348(v34, type metadata accessor for ClientOverride);
  v73 = type metadata accessor for UUID();
  if (sub_100081D0C(v71, 1, v73) == 1)
  {
LABEL_10:
    v74 = [v51 deviceIdentifierForVendor];
    if (v74)
    {
      v75 = v74;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v76 = 0;
    }

    else
    {
      v76 = 1;
    }

    v77 = type metadata accessor for UUID();
    sub_100081DFC(v67, v76, 1, v77);
    sub_1001B4DC8(v67, v66, &unk_1003CE610, &unk_1002F8550);
    v78 = sub_100081D0C(v71, 1, v77);
    v79 = v196;
    if (v78 != 1)
    {
      sub_10013B1E8(v71, &unk_1003CE610, &unk_1002F8550);
    }

    goto LABEL_16;
  }

  (*(*(v73 - 8) + 32))(v66, v71, v73);
  sub_100081DFC(v66, 0, 1, v73);
  v79 = v196;
LABEL_16:
  sub_1001B4DC8(v66, &v4[OBJC_IVAR____TtC9storekitd6Client_deviceVendorID], &unk_1003CE610, &unk_1002F8550);
  v80 = [v51 sk_isAlmond];
  v4[OBJC_IVAR____TtC9storekitd6Client_isAlmond] = v80;
  v81 = sub_100178710();
  v82 = OBJC_IVAR____TtC9storekitd6Client_isAppStoreSigned;
  v4[OBJC_IVAR____TtC9storekitd6Client_isAppStoreSigned] = v81;
  v83 = [v51 isBeta];
  v4[OBJC_IVAR____TtC9storekitd6Client_isBeta] = v83;
  v84 = [v51 iTunesMetadata];
  v85 = [v84 distributorInfo];

  LOBYTE(v84) = [v85 distributorIsThirdParty];
  v4[OBJC_IVAR____TtC9storekitd6Client_isThirdPartyDistributed] = v84;
  v86 = [v51 localizedName];
  v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v89 = v88;

  v90 = &v4[OBJC_IVAR____TtC9storekitd6Client_localizedName];
  *v90 = v87;
  v90[1] = v89;
  v91 = [v51 applicationHasMIDBasedSINF];
  v4[OBJC_IVAR____TtC9storekitd6Client_hasMIDBasedSINF] = v91;
  v4[OBJC_IVAR____TtC9storekitd6Client_iOSTargetPlatform] = sub_10017C0C0();
  v92 = v51;
  v93 = sub_1001B49D0(v92, &selRef_signerOrganization);
  v94 = &v4[OBJC_IVAR____TtC9storekitd6Client_signerOrganization];
  *v94 = v93;
  v94[1] = v95;
  v96 = sub_1001B49D0([v92 iTunesMetadata], &selRef_artistName);
  v97 = &v4[OBJC_IVAR____TtC9storekitd6Client_vendorName];
  *v97 = v96;
  v97[1] = v98;
  v99 = v194;
  sub_1001B4D7C(v202, v194, &unk_1003D20F0, &qword_1002EB950);
  v100 = v201;
  if (sub_100081D0C(v99, 1, v201) == 1)
  {
    goto LABEL_17;
  }

  v101 = v99 + *(v100 + 36);
  v102 = *v101;
  v103 = *(v101 + 8);
  sub_1001B3348(v99, type metadata accessor for ClientOverride);
  if (v103)
  {
    goto LABEL_19;
  }

  v99 = v186;
  sub_1001B4D7C(v202, v186, &unk_1003D20F0, &qword_1002EB950);
  if (sub_100081D0C(v99, 1, v100) == 1)
  {
LABEL_17:
    sub_10013B1E8(v99, &unk_1003D20F0, &qword_1002EB950);
  }

  else
  {
    v124 = v99 + *(v100 + 32);
    v111 = *v124;
    v125 = *(v124 + 8);
    sub_1001B3348(v99, type metadata accessor for ClientOverride);
    if ((v125 & 1) == 0)
    {
      *&v4[OBJC_IVAR____TtC9storekitd6Client_storeItemID] = v102;
      goto LABEL_30;
    }
  }

LABEL_19:
  v104 = [v92 iTunesMetadata];
  v105 = [v104 storeItemIdentifier];

  if (v105 && (v106 = [v92 iTunesMetadata], v107 = objc_msgSend(v106, "versionIdentifier"), v106, v107))
  {
    v108 = [v92 iTunesMetadata];
    v109 = [v108 storeItemIdentifier];

    *&v4[OBJC_IVAR____TtC9storekitd6Client_storeItemID] = v109;
    v110 = [v92 iTunesMetadata];
    v111 = [v110 versionIdentifier];
  }

  else
  {
    sub_10008E5A4(0, &qword_1003D1058, ASFReceipt_ptr);
    v112 = [v92 URL];
    v113 = v190;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v115 = sub_1001AFCD4(v113, v114);
    v111 = v115;
    if (v115)
    {
      v116 = [v115 itemID];
      v117 = [v116 unsignedLongLongValue];

      *&v4[OBJC_IVAR____TtC9storekitd6Client_storeItemID] = v117;
      v118 = [v111 installerVersionID];
      v119 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v121 = v120;

      v122 = sub_1001A95FC(v119, v121);
      LOBYTE(v119) = v123;

      if (v119)
      {
        v111 = 0;
      }

      else
      {
        v111 = v122;
      }
    }

    else
    {
      *&v4[OBJC_IVAR____TtC9storekitd6Client_storeItemID] = 0;
    }
  }

LABEL_30:
  *&v4[OBJC_IVAR____TtC9storekitd6Client_storeExternalVersionID] = v111;
  if (v4[v82] == 1)
  {
    v126 = objc_opt_self();
    *&v207[0] = 0;
    v127 = [v126 loadMetadataFromApplicationRecord:v92 withError:v207];
    if (v127)
    {
      v128 = v127;
      v129 = *&v207[0];
      v130 = [v128 hasOrEverHasHadIAP];
      if (v130)
      {
        v131 = v130;
        v132 = [v130 BOOLValue];

        v4[OBJC_IVAR____TtC9storekitd6Client_hasEverHadIAPs] = v132;
        goto LABEL_37;
      }
    }

    else
    {
      v133 = *&v207[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  v4[OBJC_IVAR____TtC9storekitd6Client_hasEverHadIAPs] = 1;
LABEL_37:
  v134 = v195;
  v135 = [v92 appClipMetadata];
  v136 = v202;
  if (v135)
  {

    v4[OBJC_IVAR____TtC9storekitd6Client_isClip] = 1;
    v137 = [v92 entitlements];

    v138 = String._bridgeToObjectiveC()();
    sub_10008E5A4(0, &qword_1003CE638, NSArray_ptr);
    v139 = [v137 objectForKey:v138 ofClass:swift_getObjCClassFromMetadata()];

    if (v139)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v205 = 0u;
      v206 = 0u;
    }

    v207[0] = v205;
    v207[1] = v206;
    if (*(&v206 + 1))
    {
      sub_100080FB4(&unk_1003D0530, &qword_1002EBFC0);
      if (swift_dynamicCast())
      {
        if (*(v203 + 16))
        {

          v143 = String._bridgeToObjectiveC()();

          CPCopyBundleIdentifierAndTeamFromApplicationIdentifier();
        }

        else
        {
        }
      }

      goto LABEL_49;
    }

    v140 = &unk_1003CCB70;
    v141 = &unk_1002ED050;
    v142 = v207;
    goto LABEL_48;
  }

  v4[OBJC_IVAR____TtC9storekitd6Client_isClip] = 0;
  sub_1001B4D7C(v136, v134, &unk_1003D20F0, &qword_1002EB950);
  if (sub_100081D0C(v134, 1, v201) == 1)
  {
    v140 = &unk_1003D20F0;
    v141 = &qword_1002EB950;
    v142 = v134;
LABEL_48:
    sub_10013B1E8(v142, v140, v141);
LABEL_49:
    v144 = v188;
    v145 = v187;
    goto LABEL_50;
  }

  v167 = v134;
  v145 = *(v134 + 16);
  v144 = *(v134 + 24);

  sub_1001B3348(v167, type metadata accessor for ClientOverride);
  if (!v144)
  {
    goto LABEL_49;
  }

LABEL_50:
  v146 = &v4[OBJC_IVAR____TtC9storekitd6Client_requestBundleID];
  *v146 = v145;
  v146[1] = v144;
  sub_1001B4D7C(v136, v79, &unk_1003D20F0, &qword_1002EB950);
  if (sub_100081D0C(v79, 1, v201) == 1)
  {
    sub_10013B1E8(v79, &unk_1003D20F0, &qword_1002EB950);
    goto LABEL_53;
  }

  v148 = *(v79 + 32);
  v147 = *(v79 + 40);

  sub_1001B3348(v79, type metadata accessor for ClientOverride);
  if (!v147)
  {
LABEL_53:
    v149 = sub_1001B4A38(v92, &selRef_exactBundleVersion);
    if (v150)
    {
      v148 = v149;
      v147 = v150;
    }

    else
    {
      v147 = 0xE300000000000000;
      v148 = 3157553;
    }
  }

  v151 = &v4[OBJC_IVAR____TtC9storekitd6Client_requestBundleVersion];
  *v151 = v148;
  v151[1] = v147;
  v152 = v197;
  sub_1001B4D7C(v136, v197, &unk_1003D20F0, &qword_1002EB950);
  v153 = v201;
  if (sub_100081D0C(v152, 1, v201) == 1)
  {
    sub_10013B1E8(v136, &unk_1003D20F0, &qword_1002EB950);
    sub_10013B1E8(v152, &unk_1003D20F0, &qword_1002EB950);
    v154 = OBJC_IVAR____TtC9storekitd6Client_serverOverride;
    v155 = type metadata accessor for Client.Server(0);
    v156 = &v4[v154];
    v157 = 1;
  }

  else
  {
    v158 = v189;
    sub_1001B339C(v152 + *(v153 + 28), v189);
    sub_1001B3348(v152, type metadata accessor for ClientOverride);
    v159 = v158;
    v160 = v198;
    sub_1001B4A94(v159, v198);
    v161 = v160;
    v162 = v191;
    sub_1001B339C(v161, v191);
    v163 = sub_100080FB4(&qword_1003CCB50, &unk_1002F7130);
    switch(sub_100081D0C(v162, 3, v163))
    {
      case 1u:
        if (*&v4[OBJC_IVAR____TtC9storekitd6Client_storeItemID] && *&v4[OBJC_IVAR____TtC9storekitd6Client_storeExternalVersionID])
        {
          sub_1001B3348(v198, type metadata accessor for ClientOverride.Server);
          sub_10013B1E8(v136, &unk_1003D20F0, &qword_1002EB950);
          v171 = &v4[OBJC_IVAR____TtC9storekitd6Client_serverOverride];
          v172 = &v4[OBJC_IVAR____TtC9storekitd6Client_serverOverride];
          v173 = 1;
        }

        else
        {
          sub_10008E5A4(0, &unk_1003CED80, off_10037DC70);
          v174 = *&v4[OBJC_IVAR____TtC9storekitd6Client_requestBundleID];
          v175 = *&v4[OBJC_IVAR____TtC9storekitd6Client_requestBundleID + 8];

          v176 = v183;
          sub_10018C168(v174, v175, 1, v183);

          sub_1001B3348(v198, type metadata accessor for ClientOverride.Server);
          sub_10013B1E8(v136, &unk_1003D20F0, &qword_1002EB950);
          v177 = v181;
          if (sub_100081D0C(v176, 1, v181) == 1)
          {
            sub_10013B1E8(v176, &unk_1003D0540, &unk_1002EDD50);
            v171 = &v4[OBJC_IVAR____TtC9storekitd6Client_serverOverride];
            v172 = &v4[OBJC_IVAR____TtC9storekitd6Client_serverOverride];
            v173 = 2;
          }

          else
          {
            v178 = v182;
            v179 = v184;
            v184(v182, v176, v177);
            v171 = &v4[OBJC_IVAR____TtC9storekitd6Client_serverOverride];
            v179(&v4[OBJC_IVAR____TtC9storekitd6Client_serverOverride], v178, v177);
            v172 = v171;
            v173 = 0;
          }
        }

        sub_100081DFC(v172, v173, 2, v163);
        v169 = v199;
        v180 = type metadata accessor for Client.Server(0);
        sub_100081DFC(v171, 0, 1, v180);
        sub_1001B3348(v191, type metadata accessor for ClientOverride.Server);
        v168 = ObjectType;
        goto LABEL_66;
      case 2u:
        sub_1001B3348(v198, type metadata accessor for ClientOverride.Server);
        sub_10013B1E8(v136, &unk_1003D20F0, &qword_1002EB950);
        v164 = OBJC_IVAR____TtC9storekitd6Client_serverOverride;
        v165 = &v4[OBJC_IVAR____TtC9storekitd6Client_serverOverride];
        v166 = 1;
        goto LABEL_64;
      case 3u:
        sub_1001B3348(v198, type metadata accessor for ClientOverride.Server);
        sub_10013B1E8(v136, &unk_1003D20F0, &qword_1002EB950);
        v164 = OBJC_IVAR____TtC9storekitd6Client_serverOverride;
        v165 = &v4[OBJC_IVAR____TtC9storekitd6Client_serverOverride];
        v166 = 2;
        goto LABEL_64;
      default:
        sub_1001B3348(v198, type metadata accessor for ClientOverride.Server);
        sub_10013B1E8(v136, &unk_1003D20F0, &qword_1002EB950);
        v164 = OBJC_IVAR____TtC9storekitd6Client_serverOverride;
        v184(&v4[OBJC_IVAR____TtC9storekitd6Client_serverOverride], v191, v181);
        v165 = &v4[v164];
        v166 = 0;
LABEL_64:
        sub_100081DFC(v165, v166, 2, v163);
        v155 = type metadata accessor for Client.Server(0);
        v156 = &v4[v164];
        v157 = 0;
        break;
    }
  }

  sub_100081DFC(v156, v157, 1, v155);
  v169 = v199;
  v168 = ObjectType;
LABEL_66:
  v204.receiver = v4;
  v204.super_class = v168;
  v44 = objc_msgSendSuper2(&v204, "init");

  sub_10013B1E8(v169, &unk_1003D20F0, &qword_1002EB950);
  return v44;
}

id sub_1001B12C0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithContentsOfFile:v1];

  return v2;
}

void sub_1001B1610(uint64_t a1)
{
  type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    sub_1001B17A0(319, &qword_1003D0EE0, &type metadata accessor for UUID);
    if (v2 <= 0x3F)
    {
      sub_1001B17A0(319, &qword_1003D0EE8, type metadata accessor for Client.Server);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1001B17A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_1001B1814(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656469727265766FLL && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C69746E75 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1001B18D8(char a1)
{
  if (a1)
  {
    return 0x6C69746E75;
  }

  else
  {
    return 0x656469727265766FLL;
  }
}

uint64_t sub_1001B190C(void *a1)
{
  v3 = v1;
  v5 = sub_100080FB4(&qword_1003D1048, &qword_1002F8538);
  sub_1000890DC();
  v7 = v6;
  sub_100089118();
  __chkstk_darwin(v8);
  v10 = &v17[-v9];
  sub_100086D24(a1, a1[3]);
  sub_1001B32AC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17[15] = 0;
  type metadata accessor for ClientOverride(0);
  sub_1001B5280();
  sub_1001B3300(v11, v12, &unk_1002F8A70);
  sub_1001B5628(v3);
  if (!v2)
  {
    v13 = *(type metadata accessor for Client.TimedClientOverride(0) + 20);
    v17[14] = 1;
    type metadata accessor for Date();
    sub_1001B5158();
    sub_1001B3300(v14, v15, &protocol conformance descriptor for Date);
    sub_1001B5628(v3 + v13);
  }

  return (*(v7 + 8))(v10, v5);
}

void sub_1001B1ABC()
{
  sub_1000892DC();
  v2 = v1;
  v25 = v3;
  v26 = type metadata accessor for Date();
  sub_1000890DC();
  v24 = v4;
  __chkstk_darwin(v5);
  sub_100093D40();
  v8 = v7 - v6;
  type metadata accessor for ClientOverride(0);
  sub_100098B7C();
  __chkstk_darwin(v9);
  sub_100093D40();
  v27 = v11 - v10;
  sub_100080FB4(&qword_1003D1038, &qword_1002F8530);
  sub_1000890DC();
  sub_100089118();
  __chkstk_darwin(v12);
  v13 = type metadata accessor for Client.TimedClientOverride(0);
  sub_100098B7C();
  __chkstk_darwin(v14);
  sub_100093D40();
  v17 = v16 - v15;
  sub_100086D24(v2, v2[3]);
  sub_1001B32AC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    sub_100080F0C(v2);
  }

  else
  {
    sub_1001B5280();
    sub_1001B3300(v18, v19, &unk_1002F8A98);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_1001B5298();
    sub_1001B4A94(v27, v17);
    sub_1001B5158();
    sub_1001B3300(v20, v21, &protocol conformance descriptor for Date);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v22 = sub_1001B561C();
    v23(v22);
    (*(v24 + 32))(v17 + *(v13 + 20), v8, v26);
    sub_1001B339C(v17, v25);
    sub_100080F0C(v2);
    sub_1001B3348(v17, type metadata accessor for Client.TimedClientOverride);
  }

  sub_1000892C4();
}

uint64_t sub_1001B1E30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001B1814(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001B1E58(uint64_t a1)
{
  v2 = sub_1001B32AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B1E94(uint64_t a1)
{
  v2 = sub_1001B32AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1001B1F00()
{
  type metadata accessor for AppDefaultsManager();
  sub_100157F44();
  if (v0 >> 60 == 15)
  {
    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      swift_once();
    }

    v1 = type metadata accessor for SKLogger(0);
    sub_10007EDA4(v1, qword_1003F26C8);
    v2 = static os_log_type_t.info.getter();
    v3 = Logger.logObject.getter();
    if (os_log_type_enabled(v3, v2))
    {
      sub_1000B7DC8();
      v4 = swift_slowAlloc();
      sub_1000B7DBC();
      v5 = swift_slowAlloc();
      v12 = v5;
      *v4 = 136446466;
      v7 = sub_1000B056C(v5, v6);
      sub_100093BF8(v7);
      *(v4 + 14) = sub_100080210(0xD00000000000001ALL, 0x800000010031CBA0, &v12);
      sub_1001B552C(&_mh_execute_header, v8, v2, "%{public}s%{public}s");
      swift_arrayDestroy();
      sub_1000B7D68();

      sub_1001B5198();
    }

    return _swiftEmptyDictionarySingleton;
  }

  else
  {
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    sub_100080FB4(&qword_1003D1070, &unk_1002F8580);
    sub_1001B4C18();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    v9 = sub_1000BD8B8();
    sub_1000BC8B4(v9, v10);
    return v12;
  }
}

uint64_t sub_1001B22AC(uint64_t a1)
{
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_100080FB4(&qword_1003D1070, &unk_1002F8580);
  sub_1001B4AEC();
  v1 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v3 = v2;

  type metadata accessor for AppDefaultsManager();
  sub_100158034();
  sub_10008E168(v1, v3);
}

void sub_1001B2578()
{
  sub_100093D08();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = type metadata accessor for Client.TimedClientOverride(0);
  sub_1000890DC();
  __chkstk_darwin(v12);
  sub_100093D40();
  v55 = v14 - v13;
  v15 = sub_100080FB4(&qword_1003D1068, &qword_1002F8570);
  v16 = sub_1000B01B0(v15);
  __chkstk_darwin(v16);
  sub_10018ECCC();
  v56 = v17;
  sub_10018ED10();
  __chkstk_darwin(v18);
  sub_1001B5458();
  if (qword_1003CBE58 != -1)
  {
    sub_1000B7CD0();
    swift_once();
  }

  v19 = type metadata accessor for SKLogger(0);
  sub_10007EDA4(v19, qword_1003F26C8);
  sub_1000B01F4();
  _StringGuts.grow(_:)(40);

  v59[0] = 0xD00000000000001ALL;
  v59[1] = 0x800000010031CB50;
  v57 = v10;
  v20._countAndFlagsBits = sub_1001BC574();
  String.append(_:)(v20);

  v21._countAndFlagsBits = 0x20726F6620;
  v21._object = 0xE500000000000000;
  String.append(_:)(v21);
  v22._countAndFlagsBits = v8;
  v22._object = v6;
  String.append(_:)(v22);
  v23._countAndFlagsBits = 0x206C69746E7520;
  v23._object = 0xE700000000000000;
  String.append(_:)(v23);
  v24 = type metadata accessor for Date();
  sub_1001B5158();
  sub_1001B3300(v25, v26, &protocol conformance descriptor for Date);
  v58 = v4;
  v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v27);

  v28 = static os_log_type_t.default.getter();

  v29 = Logger.logObject.getter();

  if (os_log_type_enabled(v29, v28))
  {
    sub_1000B7DC8();
    v30 = swift_slowAlloc();
    sub_1000B7DBC();
    v31 = swift_slowAlloc();
    v59[0] = v31;
    *v30 = 136446466;
    *(v30 + 4) = sub_100093CF0(v31, v32, v59);
    *(v30 + 12) = 2082;
    v33 = sub_100080210(0xD00000000000001ALL, 0x800000010031CB50, v59);

    *(v30 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v29, v28, "%{public}s%{public}s", v30, 0x16u);
    swift_arrayDestroy();
    sub_1000B7D68();

    sub_1000B7D68();
  }

  else
  {
  }

  sub_1001B5170();
  sub_1001B339C(v57, v1);
  (*(*(v24 - 8) + 16))(v1 + *(v11 + 20), v58, v24);
  sub_1001B53E8();
  sub_100081DFC(v34, v35, v36, v37);

  v38 = v2;
  sub_1001B1F00();
  sub_1001B55CC();
  sub_1001B53F4();
  sub_1001B5430(v39, v40, v41);
  if (v42)
  {
    sub_10013B1E8(v1, &qword_1003D1068, &qword_1002F8570);
    sub_1000B6328(v8, v6);
    if (v43)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v59[0] = v2;
      sub_100080FB4(&unk_1003D3160, &qword_1002F8578);
      v44 = sub_1001B5608();
      _NativeDictionary.ensureUnique(isUnique:capacity:)(v44, v45);
      sub_1001B5648();
      sub_1001B50DC();
      v46 = v56;
      sub_1001B4A94(v47, v56);
      sub_1001073F0();
      _NativeDictionary._delete(at:)();
    }

    else
    {
      v46 = v56;
    }

    sub_1001B53E8();
    sub_100081DFC(v51, v52, v53, v54);

    sub_10013B1E8(v46, &qword_1003D1068, &qword_1002F8570);
  }

  else
  {
    sub_1001B50DC();
    sub_1001B4A94(v1, v55);
    swift_isUniquelyReferenced_nonNull_native();
    v59[0] = v2;
    v48 = sub_1000BD8B8();
    sub_10023F1EC(v48, v49, v6, v50);

    v38 = v59[0];
  }

  sub_1001B22AC(v38);
  sub_100093CB8();
}

void sub_1001B2A60()
{
  sub_100093D08();
  v1 = sub_100080FB4(&qword_1003D1068, &qword_1002F8570);
  sub_1000B01B0(v1);
  sub_100089118();
  __chkstk_darwin(v2);
  sub_1001B540C();
  if (qword_1003CBE58 != -1)
  {
    sub_1000B7CD0();
    swift_once();
  }

  v3 = type metadata accessor for SKLogger(0);
  sub_10007EDA4(v3, qword_1003F26C8);
  sub_1000B01F4();
  _StringGuts.grow(_:)(36);

  v23[0] = 0xD000000000000026;
  v23[1] = 0x800000010031CB70;
  v4._countAndFlagsBits = sub_100093CAC();
  String.append(_:)(v4);
  v5 = static os_log_type_t.default.getter();

  v6 = Logger.logObject.getter();

  if (os_log_type_enabled(v6, v5))
  {
    sub_1000B7DC8();
    v7 = swift_slowAlloc();
    sub_1000B7DBC();
    v8 = swift_slowAlloc();
    v23[0] = v8;
    *v7 = 136446466;
    *(v7 + 4) = sub_100093CF0(v8, v9, v23);
    *(v7 + 12) = 2082;
    v10 = sub_100080210(0xD000000000000026, 0x800000010031CB70, v23);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v6, v5, "%{public}s%{public}s", v7, 0x16u);
    swift_arrayDestroy();
    sub_1000B7D68();

    sub_1000B7D68();
  }

  else
  {
  }

  v11 = sub_1001B1F00();
  v12 = sub_100093CAC();
  sub_1000B6328(v12, v13);
  if (v14)
  {
    sub_1001B55FC();
    swift_isUniquelyReferenced_nonNull_native();
    v23[0] = v11;
    sub_100080FB4(&unk_1003D3160, &qword_1002F8578);
    v15 = sub_1001B5608();
    _NativeDictionary.ensureUnique(isUnique:capacity:)(v15, v16);
    v11 = v23[0];

    v17 = type metadata accessor for Client.TimedClientOverride(0);
    sub_100098B7C();
    sub_1001B50DC();
    sub_1001B4A94(v18, v0);
    _NativeDictionary._delete(at:)();
    v19 = v0;
    v20 = 0;
    v21 = 1;
    v22 = v17;
  }

  else
  {
    type metadata accessor for Client.TimedClientOverride(0);
    sub_1000B0690();
  }

  sub_100081DFC(v19, v20, v21, v22);
  sub_10013B1E8(v0, &qword_1003D1068, &qword_1002F8570);
  sub_1001B22AC(v11);
  sub_100093CB8();
}

uint64_t sub_1001B2D4C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }

  return v1 | (((a1 > 3u) | (1u >> (a1 & 0xF)) & 1) << 8);
}

uint64_t sub_1001B2D80@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001B2D4C(*a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t sub_1001B2E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001B52B0();
  v7 = type metadata accessor for ClientOverride(v6);
  if (*(*(v7 - 8) + 84) == a2)
  {
    v8 = v7;
    v9 = v3;
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = v3 + *(a3 + 20);
  }

  return sub_100081D0C(v9, a2, v8);
}

uint64_t sub_1001B2F30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1001B52B0();
  v9 = type metadata accessor for ClientOverride(v8);
  if (*(*(v9 - 8) + 84) == a3)
  {
    v10 = v9;
    v11 = v4;
  }

  else
  {
    v10 = type metadata accessor for Date();
    v11 = v4 + *(a4 + 20);
  }

  return sub_100081DFC(v11, a2, a2, v10);
}

uint64_t sub_1001B2FF0(uint64_t a1)
{
  result = type metadata accessor for ClientOverride(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Date();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001B3088(uint64_t a1, uint64_t a2)
{
  v4 = sub_100080FB4(&qword_1003CCB50, &unk_1002F7130);
  v5 = sub_100081D0C(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001B30F0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_100080FB4(&qword_1003CCB50, &unk_1002F7130);

  return sub_100081DFC(a1, v5, a3, v6);
}

uint64_t sub_1001B315C(uint64_t a1)
{
  sub_1001B31B4();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_1001B31B4()
{
  if (!qword_1003D1000)
  {
    v0 = type metadata accessor for URL();
    if (!v1)
    {
      atomic_store(v0, &qword_1003D1000);
    }
  }
}

unint64_t sub_1001B3200()
{
  result = qword_1003D1028;
  if (!qword_1003D1028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1028);
  }

  return result;
}

unint64_t sub_1001B3258()
{
  result = qword_1003D1030;
  if (!qword_1003D1030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1030);
  }

  return result;
}

unint64_t sub_1001B32AC()
{
  result = qword_1003D1040;
  if (!qword_1003D1040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1040);
  }

  return result;
}

uint64_t sub_1001B3300(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001B3348(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_10013B618();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1001B339C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1001B52B0();
  v4(v3);
  sub_100098B7C();
  v5 = sub_1001073F0();
  v6(v5);
  return a2;
}

id sub_1001B35E8(uint64_t a1, char a2)
{
  v3 = v2;
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v7 = v6;
  v17 = 0;
  v8 = [v3 initWithURL:v6 allowPlaceholder:a2 & 1 error:&v17];

  v9 = v17;
  if (v8)
  {
    v10 = type metadata accessor for URL();
    sub_100098B7C();
    v12 = *(v11 + 8);
    v13 = v9;
    v12(a1, v10);
  }

  else
  {
    v14 = v17;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    type metadata accessor for URL();
    sub_10013B618();
    (*(v15 + 8))(a1);
  }

  return v8;
}

id sub_1001B3728(uint64_t a1, uint64_t a2, char a3)
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

id sub_1001B3804(uint64_t a1)
{
  v2 = v1;
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v5 = v4;
  v14 = 0;
  v6 = [v2 initWithURL:v4 error:&v14];

  v7 = v14;
  if (v6)
  {
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 8);
    v10 = v7;
    v9(a1, v8);
  }

  else
  {
    v11 = v14;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  return v6;
}

uint64_t sub_1001B3950(uint64_t a1, unint64_t a2)
{
  v2 = sub_1001B39B8(sub_1001B39B4, 0, a1, a2);
  sub_1001B39EC(v2, v3, v4, v5);

  return sub_1001B5400();
}

uint64_t sub_1001B39EC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = sub_1001B3B4C(v9, 0), v12 = sub_1001B3BBC(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

void *sub_1001B3B4C(uint64_t a1, uint64_t a2)
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

  sub_100080FB4(&qword_1003CC1E8, &unk_1002EAA40);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

unint64_t sub_1001B3BBC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_1001C3EA4(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_1001C3EA4(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1001B3DCC(uint64_t (*a1)(void))
{
  a1();

  return _typeName(_:qualified:)();
}

unsigned __int8 *sub_1001B3E08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v82 = a1;
  v83 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v43 = sub_100093DD0();
    v6 = sub_1001B3950(v43, v44);
    v46 = v45;

    v7 = v46;
    if ((v46 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      sub_100093DD0();
      result = _StringObject.sharedUTF8.getter();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        if (v8 != 1)
        {
          sub_1001B54A0();
          if (v25 ^ v26 | v24)
          {
            v29 = 65;
          }

          if (!(v25 ^ v26 | v24))
          {
            v30 = 58;
          }

          if (v27)
          {
            v17 = 0;
            v31 = (v27 + 1);
            do
            {
              v32 = *v31;
              if (v32 < 0x30 || v32 >= v30)
              {
                if (v32 < 0x41 || v32 >= v29)
                {
                  sub_1001B54C4();
                  if (!v22 || v32 >= v34)
                  {
                    goto LABEL_142;
                  }

                  v33 = -87;
                }

                else
                {
                  v33 = -55;
                }
              }

              else
              {
                v33 = -48;
              }

              v35 = v17 * a3;
              if ((v17 * a3) >> 64 != (v17 * a3) >> 63)
              {
                goto LABEL_141;
              }

              v17 = v35 + (v32 + v33);
              if (__OFADD__(v35, (v32 + v33)))
              {
                goto LABEL_141;
              }

              ++v31;
              --v28;
            }

            while (v28);
LABEL_52:
            v6 = v17;
            goto LABEL_142;
          }

          goto LABEL_72;
        }

LABEL_141:
        v6 = 0;
        goto LABEL_142;
      }

      goto LABEL_146;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v36 = a3 + 48;
        v37 = a3 + 55;
        v38 = a3 + 87;
        if (a3 > 10)
        {
          v36 = 58;
        }

        else
        {
          v38 = 97;
          v37 = 65;
        }

        if (result)
        {
          v39 = 0;
          do
          {
            v40 = *result;
            if (v40 < 0x30 || v40 >= v36)
            {
              if (v40 < 0x41 || v40 >= v37)
              {
                v6 = 0;
                if (v40 < 0x61 || v40 >= v38)
                {
                  goto LABEL_142;
                }

                v41 = -87;
              }

              else
              {
                v41 = -55;
              }
            }

            else
            {
              v41 = -48;
            }

            v42 = v39 * a3;
            if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
            {
              goto LABEL_141;
            }

            v39 = v42 + (v40 + v41);
            if (__OFADD__(v42, (v40 + v41)))
            {
              goto LABEL_141;
            }

            ++result;
            --v8;
          }

          while (v8);
          v6 = v42 + (v40 + v41);
          goto LABEL_142;
        }

        goto LABEL_72;
      }

      goto LABEL_141;
    }

    if (v8 >= 1)
    {
      if (v8 != 1)
      {
        sub_1001B54A0();
        if (v11 ^ v12 | v10)
        {
          v15 = 65;
        }

        if (!(v11 ^ v12 | v10))
        {
          v16 = 58;
        }

        if (v13)
        {
          v17 = 0;
          v18 = (v13 + 1);
          while (1)
          {
            v19 = *v18;
            if (v19 < 0x30 || v19 >= v16)
            {
              if (v19 < 0x41 || v19 >= v15)
              {
                sub_1001B54C4();
                if (!v22 || v19 >= v21)
                {
                  goto LABEL_142;
                }

                v20 = -87;
              }

              else
              {
                v20 = -55;
              }
            }

            else
            {
              v20 = -48;
            }

            v23 = v17 * a3;
            if ((v17 * a3) >> 64 != (v17 * a3) >> 63)
            {
              goto LABEL_141;
            }

            v17 = v23 - (v19 + v20);
            if (__OFSUB__(v23, (v19 + v20)))
            {
              goto LABEL_141;
            }

            ++v18;
            if (!--v14)
            {
              goto LABEL_52;
            }
          }
        }

LABEL_72:
        v6 = 0;
LABEL_142:

        return v6;
      }

      goto LABEL_141;
    }

    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

  v47 = HIBYTE(v7) & 0xF;
  v82 = v6;
  v83 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v47)
      {
        sub_1001B51C4();
        if (v72 ^ v73 | v71)
        {
          v75 = 65;
        }

        if (!(v72 ^ v73 | v71))
        {
          v76 = 58;
        }

        v77 = &v82;
        while (1)
        {
          v78 = *v77;
          if (v78 < 0x30 || v78 >= v76)
          {
            if (v78 < 0x41 || v78 >= v75)
            {
              sub_1001B54C4();
              if (!v22 || v78 >= v80)
              {
                goto LABEL_142;
              }

              v79 = -87;
            }

            else
            {
              v79 = -55;
            }
          }

          else
          {
            v79 = -48;
          }

          v81 = v52 * a3;
          if ((v52 * a3) >> 64 != (v52 * a3) >> 63)
          {
            goto LABEL_141;
          }

          v52 = v81 + (v78 + v79);
          if (__OFADD__(v81, (v78 + v79)))
          {
            goto LABEL_141;
          }

          v77 = (v77 + 1);
          if (!--v74)
          {
            goto LABEL_140;
          }
        }
      }

      goto LABEL_141;
    }

    if (v47)
    {
      if (v47 != 1)
      {
        sub_1001B51C4();
        if (v49 ^ v50 | v48)
        {
          v53 = 65;
        }

        if (!(v49 ^ v50 | v48))
        {
          v54 = 58;
        }

        v55 = &v82 + 1;
        while (1)
        {
          v56 = *v55;
          if (v56 < 0x30 || v56 >= v54)
          {
            if (v56 < 0x41 || v56 >= v53)
            {
              sub_1001B54C4();
              if (!v22 || v56 >= v58)
              {
                goto LABEL_142;
              }

              v57 = -87;
            }

            else
            {
              v57 = -55;
            }
          }

          else
          {
            v57 = -48;
          }

          v59 = v52 * a3;
          if ((v52 * a3) >> 64 != (v52 * a3) >> 63)
          {
            goto LABEL_141;
          }

          v52 = v59 - (v56 + v57);
          if (__OFSUB__(v59, (v56 + v57)))
          {
            goto LABEL_141;
          }

          ++v55;
          if (!--v51)
          {
            goto LABEL_140;
          }
        }
      }

      goto LABEL_141;
    }

    goto LABEL_145;
  }

  if (v47)
  {
    if (v47 != 1)
    {
      sub_1001B51C4();
      if (v61 ^ v62 | v60)
      {
        v64 = 65;
      }

      if (!(v61 ^ v62 | v60))
      {
        v65 = 58;
      }

      v66 = &v82 + 1;
      do
      {
        v67 = *v66;
        if (v67 < 0x30 || v67 >= v65)
        {
          if (v67 < 0x41 || v67 >= v64)
          {
            sub_1001B54C4();
            if (!v22 || v67 >= v69)
            {
              goto LABEL_142;
            }

            v68 = -87;
          }

          else
          {
            v68 = -55;
          }
        }

        else
        {
          v68 = -48;
        }

        v70 = v52 * a3;
        if ((v52 * a3) >> 64 != (v52 * a3) >> 63)
        {
          goto LABEL_141;
        }

        v52 = v70 + (v67 + v68);
        if (__OFADD__(v70, (v67 + v68)))
        {
          goto LABEL_141;
        }

        ++v66;
        --v63;
      }

      while (v63);
LABEL_140:
      v6 = v52;
      goto LABEL_142;
    }

    goto LABEL_141;
  }

LABEL_147:
  __break(1u);
  return result;
}

unsigned __int8 *sub_1001B4318(uint64_t a1, uint64_t a2, int64_t a3)
{
  v69 = a1;
  v70 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1001B3950(result, v5);
    v40 = v39;

    v7 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v22 = v8 - 1;
        if (v8 != 1)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v14 = 0;
            v26 = result + 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_129;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              if (!is_mul_ok(v14, a3))
              {
                goto LABEL_128;
              }

              v29 = v14 * a3;
              v30 = v27 + v28;
              v21 = __CFADD__(v29, v30);
              v14 = v29 + v30;
              if (v21)
              {
                goto LABEL_128;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_47:
            v18 = v14;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v18 = 0;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_129;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            if (!is_mul_ok(v34, a3))
            {
              goto LABEL_128;
            }

            v37 = v34 * a3;
            v38 = v35 + v36;
            v21 = __CFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_128;
            }

            ++result;
            --v8;
          }

          while (v8);
          v18 = v34;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v13)
                {
                  goto LABEL_129;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            if (!is_mul_ok(v14, a3))
            {
              goto LABEL_128;
            }

            v19 = v14 * a3;
            v20 = v16 + v17;
            v21 = v19 >= v20;
            v14 = v19 - v20;
            if (!v21)
            {
              goto LABEL_128;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v18 = 0;
LABEL_129:

        return v18;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v7) & 0xF;
  v69 = v6;
  v70 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v69;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          if (!is_mul_ok(v43, a3))
          {
            goto LABEL_128;
          }

          v67 = v43 * a3;
          v68 = v65 + v66;
          v21 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v69 + 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          if (!is_mul_ok(v43, a3))
          {
            goto LABEL_128;
          }

          v50 = v43 * a3;
          v51 = v48 + v49;
          v21 = v50 >= v51;
          v43 = v50 - v51;
          if (!v21)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v69 + 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        if (!is_mul_ok(v43, a3))
        {
          goto LABEL_128;
        }

        v59 = v43 * a3;
        v60 = v57 + v58;
        v21 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v18 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

void sub_1001B48A0(uint64_t a1, unint64_t a2, void *a3)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10008E168(a1, a2);
  [a3 setAuditTokenData:isa];
}

id sub_1001B4914(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  v5 = [a3 effectiveBoolValueForSetting:v4];

  return v5;
}

unint64_t sub_1001B497C()
{
  result = qword_1003D1060;
  if (!qword_1003D1060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1060);
  }

  return result;
}

uint64_t sub_1001B49D0(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return sub_1001B5400();
}

uint64_t sub_1001B4A38(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return sub_1001073F0();
}

uint64_t sub_1001B4A94(uint64_t a1, uint64_t a2)
{
  v3 = sub_1001B52B0();
  v4(v3);
  sub_100098B7C();
  v5 = sub_1001073F0();
  v6(v5);
  return a2;
}

unint64_t sub_1001B4AEC()
{
  result = qword_1003D1078;
  if (!qword_1003D1078)
  {
    sub_1000852D4(&qword_1003D1070, &unk_1002F8580);
    sub_1001B3300(&qword_1003D1080, type metadata accessor for Client.TimedClientOverride, &unk_1002F83D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1078);
  }

  return result;
}

uint64_t sub_1001B4BA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100080FB4(&unk_1003CE610, &unk_1002F8550);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001B4C18()
{
  result = qword_1003D1098;
  if (!qword_1003D1098)
  {
    sub_1000852D4(&qword_1003D1070, &unk_1002F8580);
    sub_1001B3300(&qword_1003D10A0, type metadata accessor for Client.TimedClientOverride, &unk_1002F8400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1098);
  }

  return result;
}

unint64_t sub_1001B4CD4()
{
  result = qword_1003D10A8;
  if (!qword_1003D10A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D10A8);
  }

  return result;
}

unint64_t sub_1001B4D28()
{
  result = qword_1003D10B0;
  if (!qword_1003D10B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D10B0);
  }

  return result;
}

uint64_t sub_1001B4D7C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1001B5668(a1, a2, a3, a4);
  sub_100098B7C();
  v5 = sub_1001073F0();
  v6(v5);
  return v4;
}

uint64_t sub_1001B4DC8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1001B5668(a1, a2, a3, a4);
  sub_100098B7C();
  v5 = sub_1001073F0();
  v6(v5);
  return v4;
}

_BYTE *sub_1001B4E28(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1001B4EF4);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001B4F30()
{
  result = qword_1003D10B8;
  if (!qword_1003D10B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D10B8);
  }

  return result;
}

unint64_t sub_1001B4F88()
{
  result = qword_1003D10C0;
  if (!qword_1003D10C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D10C0);
  }

  return result;
}

unint64_t sub_1001B4FE0()
{
  result = qword_1003D10C8;
  if (!qword_1003D10C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D10C8);
  }

  return result;
}

unint64_t sub_1001B5038()
{
  result = qword_1003D10D0;
  if (!qword_1003D10D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D10D0);
  }

  return result;
}

uint64_t sub_1001B51E0(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2082;
  return result;
}

uint64_t sub_1001B51F0()
{
  sub_10008B5D0((v0 - 112), (v0 - 144));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_1001B5220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t sub_1001B52C8()
{

  return sub_1001B3348(v0 + v1, type metadata accessor for ClientOverride.Server);
}

uint64_t sub_1001B52F0()
{

  return sub_1001B3348(v0, type metadata accessor for Client.TimedClientOverride);
}

_OWORD *sub_1001B5418()
{

  return sub_10008B5D0((v0 - 112), (v0 - 144));
}

uint64_t sub_1001B5468(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2082;
  return result;
}

uint64_t sub_1001B54D0(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

uint64_t sub_1001B54EC()
{
}

_OWORD *sub_1001B5508(uint64_t a1)
{
  *(v3 - 152) = v1;

  return sub_10023ED0C(v3 - 144, v2, a1);
}

void sub_1001B552C(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

uint64_t sub_1001B5548(uint64_t a1)
{

  return sub_100219334();
}

uint64_t sub_1001B5628(uint64_t a1)
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

uint64_t sub_1001B5648()
{
}

uint64_t sub_1001B5668(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_100080FB4(a3, a4);
}

uint64_t sub_1001B5688()
{

  return swift_slowAlloc();
}

BOOL sub_1001B56A0(uint64_t a1)
{
  v1 = a1;
  sub_1001B5C3C(9, &v6);
  if (!v7)
  {
    sub_10008B69C(&v6, &unk_1003CCB70, &unk_1002ED050);
    return 0;
  }

  sub_100080FB4(&unk_1003D0530, &qword_1002EBFC0);
  if ((sub_1001B6A2C() & 1) == 0)
  {
    return 0;
  }

  *&v6 = sub_1001B5864(v1);
  *(&v6 + 1) = v2;
  __chkstk_darwin(v6);
  v5[2] = &v6;
  v3 = sub_100178848(sub_1001060A4, v5, v5[5]);

  return v3;
}

uint64_t sub_1001B57B8(char a1)
{
  switch(a1)
  {
    case 1:
      v1 = 5;
      goto LABEL_11;
    case 2:
      v1 = 6;
      goto LABEL_11;
    case 3:
      if (sub_1001B5FAC(4))
      {
        return 1;
      }

      v1 = 7;
LABEL_11:

      return sub_1001B5FAC(v1);
    case 4:

      return sub_1001B56A0(3);
    default:
      v1 = 4;
      goto LABEL_11;
  }
}

unint64_t sub_1001B5864(char a1)
{
  result = 0x73746E756F636341;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = sub_1001B6A20(10);
      break;
    case 3:
      result = 0x6C616E7265747845;
      break;
    case 4:
      result = 0x4F786F62646E6153;
      break;
    case 5:
      result = sub_1001B6A20(9);
      break;
    case 6:
      result = 0x73656C6369747241;
      break;
    case 7:
      result = 0xD000000000000017;
      break;
    case 8:
      result = 0xD000000000000022;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001B59B0(char a1)
{
  result = 0x6B7361742D746567;
  switch(a1)
  {
    case 1:
      sub_1001B6A58();
      result = v8 + 11;
      break;
    case 2:
      sub_1001B6A58();
      result = v5 + 8;
      break;
    case 3:
      sub_1001B6A58();
      result = v6 + 15;
      break;
    case 4:
      sub_1001B6A58();
      result = v4 + 25;
      break;
    case 5:
      sub_1001B6A58();
      result = v9 + 20;
      break;
    case 6:
      sub_1001B6A58();
      result = v10 + 24;
      break;
    case 7:
      sub_1001B6A58();
      result = v7 + 35;
      break;
    case 8:
      result = sub_1001B6A20(5);
      break;
    case 9:
      result = 0xD00000000000001ALL;
      break;
    case 10:
      return result;
    case 11:
      result = 0xD00000000000001ALL;
      break;
    default:
      sub_1001B6A58();
      result = v3 | 4;
      break;
  }

  return result;
}

void *sub_1001B5BC8()
{
  sub_1001B5C3C(1, &v2);
  if (v3)
  {
    result = sub_1001B6A2C();
    if (result)
    {
      return v1;
    }
  }

  else
  {
    sub_10008B69C(&v2, &unk_1003CCB70, &unk_1002ED050);
    return 0;
  }

  return result;
}

double sub_1001B5C3C@<D0>(char a1@<W0>, _OWORD *a2@<X8>)
{
  sub_1001B59B0(a1);
  v4 = String._bridgeToObjectiveC()();

  v5 = [v2 valueForEntitlement:v4];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

void *sub_1001B5D10()
{
  sub_1001B5C3C(2, &v1);
  if (v2)
  {
    sub_10008B5D0(&v1, &v3);
  }

  else
  {
    sub_1001B5C3C(0, &v3);
    if (v2)
    {
      sub_10008B69C(&v1, &unk_1003CCB70, &unk_1002ED050);
    }
  }

  if (v4)
  {
    result = sub_1001B6A2C();
    if (result)
    {
      return v1;
    }
  }

  else
  {
    sub_10008B69C(&v3, &unk_1003CCB70, &unk_1002ED050);
    return 0;
  }

  return result;
}

void *sub_1001B5E74()
{
  sub_1001B5C3C(8, &v3);
  if (v4)
  {
    sub_10008B5D0(&v3, &v5);
  }

  else
  {
    sub_1001B5C3C(3, &v1);
    if (v2)
    {
      sub_10008B5D0(&v1, &v5);
    }

    else
    {
      sub_1001B5C3C(0, &v5);
      if (v2)
      {
        sub_10008B69C(&v1, &unk_1003CCB70, &unk_1002ED050);
      }
    }

    if (v4)
    {
      sub_10008B69C(&v3, &unk_1003CCB70, &unk_1002ED050);
    }
  }

  if (v6)
  {
    result = sub_1001B6A2C();
    if (result)
    {
      return v3;
    }
  }

  else
  {
    sub_10008B69C(&v5, &unk_1003CCB70, &unk_1002ED050);
    return 0;
  }

  return result;
}

void *sub_1001B5FAC(char a1)
{
  sub_1001B5C3C(a1, &v3);
  if (v4)
  {
    result = sub_1001B6A2C();
    if (result)
    {
      return v2;
    }
  }

  else
  {
    sub_10008B69C(&v3, &unk_1003CCB70, &unk_1002ED050);
    return 0;
  }

  return result;
}

uint64_t sub_1001B608C()
{
  if (sub_1001B5FAC(10))
  {
    return 1;
  }

  result = sub_100070464();
  if (result)
  {
    if (qword_1003CBDF8 != -1)
    {
      swift_once();
    }

    return byte_1003F25E1;
  }

  return result;
}

void sub_1001B610C()
{
  v1 = sub_100080FB4(&unk_1003D0540, &unk_1002EDD50);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v51 - v6;
  v8 = __chkstk_darwin(v5);
  v10 = &v51 - v9;
  __chkstk_darwin(v8);
  v12 = &v51 - v11;
  v13 = type metadata accessor for URL();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v55 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v51 - v18;
  __chkstk_darwin(v17);
  v21 = &v51 - v20;
  sub_1000AF0B0(v0, &selRef_sk_executablePath);
  if (!v22)
  {
    sub_1000AF0B0(v0, &selRef_sk_processName);
    return;
  }

  v54 = v0;
  v56 = v21;
  v23 = String._bridgeToObjectiveC()();
  v24 = CFURLCreateWithFileSystemPath(0, v23, kCFURLPOSIXPathStyle, 0);

  if (v24)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v14;
    v25 = v56;
    v26 = v19;
    v27 = *(v14 + 32);
    v27(v56, v26, v13);
    sub_100081DFC(v12, 1, 1, v13);
    sub_10012A7F8(v12, v10);
    v28 = sub_100081D0C(v10, 1, v13);
    v53 = v24;
    if (v28 == 1)
    {
      sub_10008B69C(v10, &unk_1003D0540, &unk_1002EDD50);
      URL._bridgeToObjectiveC()(v29);
      v31 = v30;
      v32 = _CFBundleCopyBundleURLForExecutableURL();

      if (!v32)
      {
        __break(1u);
        return;
      }

      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10008B69C(v12, &unk_1003D0540, &unk_1002EDD50);
      sub_100081DFC(v7, 0, 1, v13);
      sub_1000B71B8(v7, v12);
      v25 = v56;
    }

    else
    {

      sub_10008B69C(v10, &unk_1003D0540, &unk_1002EDD50);
    }

    v35 = v55;
    sub_10012A7F8(v12, v4);
    if (sub_100081D0C(v4, 1, v13) == 1)
    {
      sub_10008B69C(v4, &unk_1003D0540, &unk_1002EDD50);
      v36 = v52;
    }

    else
    {
      v27(v35, v4, v13);
      URL._bridgeToObjectiveC()(v37);
      v39 = v38;
      v40 = CFBundleCreate(0, v38);

      if (v40)
      {
        v41 = CFBundleGetIdentifier(v40);
        v36 = v52;
        v42 = v54;
        if (v41)
        {
          v43 = v41;
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v44 = *(v36 + 8);
          v44(v35, v13);
          sub_10008B69C(v12, &unk_1003D0540, &unk_1002EDD50);
          v44(v25, v13);
          return;
        }

        v49 = sub_1001B6A44();
        v50(v49);

        goto LABEL_18;
      }

      v36 = v52;
      v45 = sub_1001B6A44();
      v46(v45);
    }

    v42 = v54;
LABEL_18:
    v47 = [v42 sk_processName];
    if (v47)
    {
      v48 = v47;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
    }

    sub_10008B69C(v12, &unk_1003D0540, &unk_1002EDD50);
    (*(v36 + 8))(v56, v13);
    return;
  }

  v33 = [v54 sk_processName];
  if (v33)
  {
    v34 = v33;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }
}

uint64_t sub_1001B6698(uint64_t a1, id a2, int (*a3)(uint64_t, uint64_t, uint64_t))
{
  [a2 auditToken];
  v5 = sub_1001B6A18(v9);
  v6 = swift_slowAlloc();
  if ((a1 & 0x80000000) != 0)
  {
    __break(1u);
  }

  if (a3(v5, v6, a1) < 1)
  {

    return 0;
  }

  else
  {
    v7 = String.init(cString:)();
  }

  return v7;
}

id sub_1001B67AC(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_1001B68CC()
{
  [v0 auditToken];
  [v0 auditToken];
  return Data.init(bytes:count:)();
}

uint64_t sub_1001B6980()
{
  v1 = sub_1000AF0B0(v0, &selRef_sk_clientID);
  if (v2)
  {
    if (v1 == 0xD000000000000023 && v2 == 0x800000010031CD60)
    {
      v4 = 1;
    }

    else
    {
      v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_1001B6A2C()
{

  return swift_dynamicCast();
}

uint64_t sub_1001B6A80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100080FB4(&unk_1003D20F0, &qword_1002EB950);
    v9 = a1 + *(a3 + 24);

    return sub_100081D0C(v9, a2, v8);
  }
}

uint64_t sub_1001B6B28(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100080FB4(&unk_1003D20F0, &qword_1002EB950);
    v8 = v5 + *(a4 + 24);

    return sub_100081DFC(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for PerformPurchaseRequest(uint64_t a1)
{
  result = qword_1003D1130;
  if (!qword_1003D1130)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001B6C00(uint64_t a1)
{
  sub_100081F84(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1001B6C7C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D61726150797562 && a2 == 0xE900000000000073;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x79654B676F6CLL && a2 == 0xE600000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x764F746E65696C63 && a2 == 0xEE00656469727265)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1001B6D98(char a1)
{
  if (!a1)
  {
    return 0x6D61726150797562;
  }

  if (a1 == 1)
  {
    return 0x79654B676F6CLL;
  }

  return 0x764F746E65696C63;
}

uint64_t sub_1001B6DFC(void *a1)
{
  v3 = sub_100080FB4(&qword_1003D1190, &qword_1002F8848);
  sub_1000890DC();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v12[-v7];
  sub_100086D24(a1, a1[3]);
  sub_1001B7494();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v12[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    type metadata accessor for PerformPurchaseRequest(0);
    v12[13] = 2;
    type metadata accessor for ClientOverride(0);
    sub_1001B7798();
    sub_1001B7544(v9, v10, &unk_1002F8A70);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1001B6FC0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_100080FB4(&unk_1003D20F0, &qword_1002EB950);
  __chkstk_darwin(v4 - 8);
  v6 = v22 - v5;
  sub_100080FB4(&qword_1003D1180, &qword_1002F8840);
  sub_1000890DC();
  v24 = v8;
  v25 = v7;
  __chkstk_darwin(v7);
  v9 = type metadata accessor for PerformPurchaseRequest(0);
  v10 = __chkstk_darwin(v9 - 8);
  v12 = (v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v10 + 32);
  v14 = type metadata accessor for ClientOverride(0);
  v26 = v13;
  sub_100081DFC(v12 + v13, 1, 1, v14);
  sub_100086D24(a1, a1[3]);
  sub_1001B7494();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100080F0C(a1);
    return sub_100086DC0(v12 + v26);
  }

  else
  {
    v29 = 0;
    *v12 = KeyedDecodingContainer.decode(_:forKey:)();
    v12[1] = v15;
    v22[1] = v15;
    v28 = 1;
    v12[2] = KeyedDecodingContainer.decode(_:forKey:)();
    v12[3] = v16;
    v27 = 2;
    sub_1001B7798();
    sub_1001B7544(v17, v18, &unk_1002F8A98);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v19 = sub_1001B77B0();
    v20(v19);
    sub_1000E0B18(v6, v12 + v26);
    sub_10008DE64(v12, v23);
    sub_100080F0C(a1);
    return sub_1001B74E8(v12);
  }
}

uint64_t sub_1001B72E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001B6C7C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001B7310(uint64_t a1)
{
  v2 = sub_1001B7494();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001B734C(uint64_t a1)
{
  v2 = sub_1001B7494();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001B73B8(uint64_t a1)
{
  *(a1 + 8) = sub_1001B7544(&qword_1003CE2D8, type metadata accessor for PerformPurchaseRequest, &unk_1002F87C0);
  result = sub_1001B7544(&qword_1003D1170, type metadata accessor for PerformPurchaseRequest, "1d\b");
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1001B743C(uint64_t a1)
{
  result = sub_1001B7544(&qword_1003D1178, type metadata accessor for PerformPurchaseRequest, &unk_1002F87F8);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1001B7494()
{
  result = qword_1003D1188;
  if (!qword_1003D1188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1188);
  }

  return result;
}

uint64_t sub_1001B74E8(uint64_t a1)
{
  v2 = type metadata accessor for PerformPurchaseRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001B7544(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for PerformPurchaseRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1001B7658);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001B7694()
{
  result = qword_1003D1198;
  if (!qword_1003D1198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1198);
  }

  return result;
}

unint64_t sub_1001B76EC()
{
  result = qword_1003D11A0;
  if (!qword_1003D11A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D11A0);
  }

  return result;
}

unint64_t sub_1001B7744()
{
  result = qword_1003D11A8;
  if (!qword_1003D11A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D11A8);
  }

  return result;
}

uint64_t sub_1001B77C0()
{
  sub_10008BE9C();
  v1[26] = v2;
  v1[27] = v0;
  v1[28] = type metadata accessor for FinishTransactionTask(0);
  v1[29] = swift_task_alloc();
  v1[30] = type metadata accessor for SKLogger(0);
  v1[31] = swift_task_alloc();
  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001B7E24()
{
  sub_10008BE9C();
  v1 = v0[27];
  v0[2] = v0;
  v0[3] = sub_1001B7EB8;
  v2 = swift_continuation_init();
  sub_1001B8724(v2, v1);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1001B7EB8()
{
  sub_10008BE9C();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;
  sub_100098AD0();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001B7F88()
{
  sub_10008BE9C();
  v0[13] = &type metadata for StoreKitFeatureFlag;
  v1 = sub_1000B7380();
  *(v0 + 80) = 2;
  v0[14] = v1;
  v2 = isFeatureEnabled(_:)();
  sub_100080F0C(v0 + 10);
  if (v2)
  {
    v3 = swift_task_alloc();
    v0[33] = v3;
    *v3 = v0;
    v3[1] = sub_1001B80B4;
    v4 = sub_1000B06F4(v0[26]);

    return sub_1001B8BC0(v4);
  }

  else
  {
    v6 = swift_task_alloc();
    v0[35] = v6;
    *v6 = v0;
    v6[1] = sub_1001B81E0;
    v7 = sub_1000B06F4(v0[26]);

    return sub_1001B9420(v7);
  }
}

uint64_t sub_1001B80B4()
{
  sub_10008BE9C();
  sub_10008C070();
  v3 = v2;
  sub_10008BEFC();
  *v4 = v3;
  v5 = *v1;
  sub_100098AB4();
  *v6 = v5;
  *(v3 + 272) = v0;

  if (v0)
  {
    sub_100098AD0();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    sub_100098AA4();

    return v10();
  }
}

uint64_t sub_1001B81E0()
{
  sub_10008BE9C();
  sub_10008C070();
  v3 = v2;
  sub_10008BEFC();
  *v4 = v3;
  v5 = *v1;
  sub_100098AB4();
  *v6 = v5;
  *(v3 + 288) = v0;

  if (v0)
  {
    sub_100098AD0();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {

    sub_100098AA4();

    return v10();
  }
}

uint64_t sub_1001B8724(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v22 = a1;
  v23 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v23 - 8);
  __chkstk_darwin(v23);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v24 = *(v4 - 8);
  v25 = v4;
  __chkstk_darwin(v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FinishTransactionTask(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = type metadata accessor for DispatchQoS.QoSClass();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10008E5A4(0, &qword_1003CC1F0, OS_dispatch_queue_ptr);
  (*(v11 + 104))(v13, enum case for DispatchQoS.QoSClass.utility(_:), v10);
  v14 = static OS_dispatch_queue.global(qos:)();
  (*(v11 + 8))(v13, v10);
  sub_1001BA1C4(v21, &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FinishTransactionTask);
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = swift_allocObject();
  sub_1001BA3AC(&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  *(v16 + ((v9 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v22;
  aBlock[4] = sub_1001BA758;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10019E0C0;
  aBlock[3] = &unk_10038E770;
  v17 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v27 = _swiftEmptyArrayStorage;
  sub_1001BA7FC();
  sub_100080FB4(&qword_1003CCB60, &qword_1002EEE70);
  sub_10008E34C();
  v18 = v23;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v26 + 8))(v3, v18);
  (*(v24 + 8))(v6, v25);
}

uint64_t sub_1001B8B2C(uint64_t a1, uint64_t a2)
{
  v2 = [objc_allocWithZone(InAppDownloadManager) init];
  type metadata accessor for FinishTransactionTask(0);
  v3 = String._bridgeToObjectiveC()();
  [v2 removeDownloadsForTransactionID:v3];

  return swift_continuation_throwingResume();
}

uint64_t sub_1001B8BC0(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  type metadata accessor for TransactionCacheManager();
  v4 = swift_task_alloc();
  v2[6] = v4;
  *v4 = v2;
  v4[1] = sub_1001B8C64;

  return sub_100108EE8(a1);
}

uint64_t sub_1001B8C64()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_10008BEFC();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 56) = v3;

  v4 = sub_10009F0B8();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1001B8D50()
{
  v1 = type metadata accessor for FinishTransactionTask(0);
  sub_1001BA86C(v1);
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  *v2 = v0;
  v3 = sub_1001BA8B0(v2);

  return sub_10010C8DC(v3, v4);
}

uint64_t sub_1001B8DF0()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_10008BEFC();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 112) = v3;

  v4 = sub_10009F0B8();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1001B8EDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = v3;
  if (*(v3 + 112))
  {
    if (qword_1003CBE58 != -1)
    {
      sub_100081C08(&qword_1003CBE58);
    }

    v4 = type metadata accessor for SKLogger(0);
    sub_10007EDA4(v4, qword_1003F26C8);
    if (qword_1003CBE98 != -1)
    {
      sub_10008BCDC(&qword_1003CBE98);
    }

    TaskLocal.get()();
    v6 = *(v3 + 16);
    v5 = *(v3 + 24);
    v7 = static os_log_type_t.default.getter();

    v8 = Logger.logObject.getter();

    if (os_log_type_enabled(v8, v7))
    {
      v9 = sub_10008E688();
      v10 = sub_10008E670();
      *v9 = 136446466;
      sub_10008E5EC();
      v11._countAndFlagsBits = v6;
      v11._object = v5;
      String.append(_:)(v11);
      v12._countAndFlagsBits = 8285;
      v12._object = 0xE200000000000000;
      String.append(_:)(v12);
      v13 = sub_100080210(v28[1], v28[2], v28);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2082;
      *(v9 + 14) = sub_1001BA918(v14, v15, v16, v17, v18, v19, v20, v21, v28[0]);
      _os_log_impl(&_mh_execute_header, v8, v7, "%{public}s%{public}s", v9, 0x16u);
      swift_arrayDestroy();
      sub_100081C28(v10);
      sub_1000AFF34();
    }

    sub_100098AA4();
    sub_10008E654();

    __asm { BRAA            X1, X16 }
  }

  v24 = swift_task_alloc();
  *(v3 + 88) = v24;
  *v24 = v3;
  v24[1] = sub_1001B9130;
  sub_1000B06F4(*(v3 + 32));
  sub_10008E654();

  return sub_1001B9C74(v25);
}

uint64_t sub_1001B9130()
{
  sub_10008BE9C();
  sub_10008C070();
  v3 = v2;
  sub_10008BEFC();
  *v4 = v3;
  v5 = *v1;
  sub_100098AB4();
  *v6 = v5;
  v3[12] = v0;

  if (v0)
  {
    sub_100098AD0();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {
    v10 = swift_task_alloc();
    v3[13] = v10;
    *v10 = v5;
    v10[1] = sub_1001B9288;
    sub_1000B06F4(v3[8]);

    return sub_10010D1F0();
  }
}

uint64_t sub_1001B9288()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001B936C()
{
  sub_10008BE9C();

  sub_100098AA4();

  return v0();
}

uint64_t sub_1001B93C4()
{
  sub_10008BE9C();

  sub_100098AC4();

  return v0();
}

uint64_t sub_1001B9420(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  sub_10008E5A4(0, &unk_1003CE5F0, off_10037DC80);
  v4 = swift_task_alloc();
  v2[6] = v4;
  *v4 = v2;
  v4[1] = sub_1001B94D4;

  return sub_100148CA8(a1);
}

uint64_t sub_1001B94D4()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_10008BEFC();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 56) = v3;

  v4 = sub_10009F0B8();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1001B95C0()
{
  v1 = type metadata accessor for FinishTransactionTask(0);
  sub_1001BA86C(v1);
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  *v2 = v0;
  sub_1001BA8B0(v2);

  return sub_10014AC4C();
}

uint64_t sub_1001B9660()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_10008BEFC();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 112) = v3;

  v4 = sub_10009F0B8();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1001B974C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = v3;
  if (*(v3 + 112))
  {
    if (qword_1003CBE58 != -1)
    {
      sub_100081C08(&qword_1003CBE58);
    }

    v4 = type metadata accessor for SKLogger(0);
    sub_10007EDA4(v4, qword_1003F26C8);
    if (qword_1003CBE98 != -1)
    {
      sub_10008BCDC(&qword_1003CBE98);
    }

    TaskLocal.get()();
    v6 = *(v3 + 16);
    v5 = *(v3 + 24);
    v7 = static os_log_type_t.default.getter();

    v8 = Logger.logObject.getter();

    v9 = os_log_type_enabled(v8, v7);
    v10 = *(v3 + 56);
    if (v9)
    {
      v11 = sub_10008E688();
      sub_10008E670();
      *v11 = 136446466;
      sub_10008E5EC();
      v12._countAndFlagsBits = v6;
      v12._object = v5;
      String.append(_:)(v12);
      v13._countAndFlagsBits = 8285;
      v13._object = 0xE200000000000000;
      String.append(_:)(v13);
      sub_100080210(v30[1], v30[2], v30);

      sub_1000AFD94();
      *(v11 + 14) = sub_1001BA918(v14, v15, v16, v17, v18, v19, v20, v21, v30[0]);
      sub_1000AFE74(&_mh_execute_header, v22, v23, "%{public}s%{public}s");
      swift_arrayDestroy();
      sub_1000AFF34();
      sub_100081C28(v11);
    }

    sub_100098AA4();
    sub_10008E654();

    __asm { BRAA            X1, X16 }
  }

  v26 = swift_task_alloc();
  *(v3 + 88) = v26;
  *v26 = v3;
  v26[1] = sub_1001B9984;
  sub_1000B06F4(*(v3 + 32));
  sub_10008E654();

  return sub_1001B9C74(v27);
}

uint64_t sub_1001B9984()
{
  sub_10008BE9C();
  sub_10008C070();
  v3 = v2;
  sub_10008BEFC();
  *v4 = v3;
  v5 = *v1;
  sub_100098AB4();
  *v6 = v5;
  v3[12] = v0;

  if (v0)
  {
    sub_100098AD0();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {
    v10 = swift_task_alloc();
    v3[13] = v10;
    *v10 = v5;
    v10[1] = sub_1001B9ADC;
    sub_1000B06F4(v3[8]);

    return sub_10014B1C0();
  }
}

uint64_t sub_1001B9ADC()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001B9BC0()
{
  sub_10008BE9C();

  sub_100098AA4();

  return v1();
}

uint64_t sub_1001B9C18()
{
  sub_10008BE9C();

  sub_100098AC4();

  return v1();
}

uint64_t sub_1001B9C74(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(type metadata accessor for FinishTransactionTask(0) - 8);
  v2[4] = v3;
  v2[5] = *(v3 + 64);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_1001B9D38, 0, 0);
}

uint64_t sub_1001B9D38()
{
  sub_1001A7AB4();
  ObjectType = swift_getObjectType();
  if (qword_1003CBF90 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v5 = qword_1003F27F8;
  sub_1001BA854();
  sub_1001BA1C4(v6, v2, v7);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_1001BA3AC(v2, v9 + v8);
  v10 = sub_100235724(v5, &unk_1002F89B8, v9, ObjectType);
  v0[7] = v10;
  swift_unknownObjectRelease();

  v11 = objc_allocWithZone(type metadata accessor for Request());
  v0[8] = sub_10021E56C(v4, v10, 3, 2, 0, 0);
  v12 = swift_task_alloc();
  v0[9] = v12;
  *v12 = v0;
  v12[1] = sub_1001B9EE8;

  return sub_10021E694();
}

uint64_t sub_1001B9EE8()
{
  sub_10008BE9C();
  v3 = v2;
  sub_10008C070();
  sub_10008BEFC();
  *v5 = v4;
  v6 = *v1;
  sub_100098AB4();
  *v7 = v6;
  *(v8 + 80) = v0;

  if (!v0)
  {
  }

  sub_100098AD0();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1001B9FEC()
{
  sub_10008BE9C();
  v1 = *(v0 + 56);

  sub_100098AA4();

  return v2();
}

uint64_t sub_1001BA054()
{
  sub_10008BE9C();
  v1 = *(v0 + 56);

  sub_100098AC4();

  return v2();
}

uint64_t sub_1001BA0E0()
{
  sub_10008BE9C();
  v1 = *(v0 + 80);
  sub_100080FB4(&unk_1003CEE30, qword_1002F28C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002ED290;
  strcpy((inited + 32), "transactionId");
  *(inited + 46) = -4864;
  v3 = (v1 + *(type metadata accessor for FinishTransactionTask(0) + 24));
  v4 = v3[1];
  *(inited + 48) = *v3;
  *(inited + 56) = v4;

  v5 = Dictionary.init(dictionaryLiteral:)();
  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_1001BA1C4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100098B7C();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1001BA224()
{
  type metadata accessor for FinishTransactionTask(0);
  sub_1001BA8C8();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = (v0 + v4);
  v8 = type metadata accessor for ClientOverride(0);
  if (!sub_1000F2F1C(v8))
  {
    v9 = v7[1];
    if (v9 >> 60 != 15)
    {
      sub_10008E168(*v7, v9);
    }

    v10 = *(v1 + 28);
    v11 = sub_100080FB4(&qword_1003CCB50, &unk_1002F7130);
    if (!sub_100081D0C(v7 + v10, 3, v11))
    {
      type metadata accessor for URL();
      sub_100098B7C();
      (*(v12 + 8))(v7 + v10);
    }

    v13 = *(v1 + 40);
    v14 = type metadata accessor for UUID();
    if (!sub_1001BA958(v14))
    {
      (*(*(v1 - 8) + 8))(v7 + v13, v1);
    }
  }

  sub_1001BA978();
  sub_1001BA978();

  return _swift_deallocObject(v0, v4 + v6, v3 | 7);
}

uint64_t sub_1001BA3AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FinishTransactionTask(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001BA410()
{
  sub_10008BE9C();
  v2 = *(type metadata accessor for FinishTransactionTask(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1001BA4D8;

  return sub_1001BA0C0(v0 + v3);
}

uint64_t sub_1001BA4D8()
{
  sub_10008BE9C();
  v2 = v1;
  sub_10008C070();
  v3 = *v0;
  sub_100098AB4();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_1001BA5C4()
{
  type metadata accessor for FinishTransactionTask(0);
  sub_1001BA8C8();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = (v0 + v4);
  v8 = type metadata accessor for ClientOverride(0);
  if (!sub_1000F2F1C(v8))
  {
    v9 = v7[1];
    if (v9 >> 60 != 15)
    {
      sub_10008E168(*v7, v9);
    }

    v10 = *(v1 + 28);
    v11 = sub_100080FB4(&qword_1003CCB50, &unk_1002F7130);
    if (!sub_100081D0C(v7 + v10, 3, v11))
    {
      type metadata accessor for URL();
      sub_100098B7C();
      (*(v12 + 8))(v7 + v10);
    }

    v13 = *(v1 + 40);
    v14 = type metadata accessor for UUID();
    if (!sub_1001BA958(v14))
    {
      (*(*(v1 - 8) + 8))(v7 + v13, v1);
    }
  }

  sub_1001BA978();
  sub_1001BA978();

  return _swift_deallocObject(v0, ((v6 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1001BA758()
{
  v1 = *(type metadata accessor for FinishTransactionTask(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1001B8B2C(v0 + v2, v3);
}

uint64_t sub_1001BA7E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1001BA7FC()
{
  result = qword_1003CCB58;
  if (!qword_1003CCB58)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CCB58);
  }

  return result;
}

uint64_t sub_1001BA86C(uint64_t result)
{
  v3 = (v1 + *(result + 24));
  *(v2 + 64) = *v3;
  *(v2 + 72) = v3[1];
  return result;
}

unint64_t sub_1001BA888(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v4 + 4) = v3;
  *(v4 + 12) = 2082;

  return sub_100080210(a2, v2, va);
}

void sub_1001BA8E0(uint64_t a1@<X8>)
{
  v3 = 0xD00000000000001DLL;

  v2 = (a1 - 32) | 0x8000000000000000;
  String.append(_:)(*&v3);
}

unint64_t sub_1001BA918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_100080210(0xD00000000000001FLL, v9 | 0x8000000000000000, &a9);
}

void sub_1001BA938()
{

  _StringGuts.grow(_:)(31);
}

uint64_t sub_1001BA958(uint64_t a1)
{

  return sub_100081D0C(v1 + v2, 1, a1);
}

uint64_t sub_1001BA978()
{
}

uint64_t sub_1001BA9A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
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
    v9 = type metadata accessor for ClientOverride.Server(0);
    if (*(*(v9 - 8) + 84) == a2)
    {
      v10 = v9;
      v11 = *(a3 + 28);
    }

    else
    {
      v10 = sub_100080FB4(&unk_1003CE610, &unk_1002F8550);
      v11 = *(a3 + 40);
    }

    return sub_100081D0C(a1 + v11, a2, v10);
  }
}

uint64_t sub_1001BAABC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    v8 = type metadata accessor for ClientOverride.Server(0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 28);
    }

    else
    {
      v9 = sub_100080FB4(&unk_1003CE610, &unk_1002F8550);
      v10 = *(a4 + 40);
    }

    return sub_100081DFC(v5 + v10, a2, a2, v9);
  }

  return result;
}

void sub_1001BABB0(uint64_t a1)
{
  sub_10016D86C(319, &qword_1003CD708, &type metadata for Data);
  if (v1 <= 0x3F)
  {
    sub_10016D86C(319, &qword_1003CD3C0, &type metadata for String);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ClientOverride.Server(319);
      if (v3 <= 0x3F)
      {
        sub_10016D86C(319, &unk_1003D1218, &type metadata for UInt64);
        if (v4 <= 0x3F)
        {
          sub_1001BACAC(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1001BACAC(uint64_t a1)
{
  if (!qword_1003D0EE0)
  {
    type metadata accessor for UUID();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1003D0EE0);
    }
  }
}

uint64_t sub_1001BAD18(uint64_t a1, uint64_t a2)
{
  v4 = sub_100080FB4(&qword_1003CCB50, &unk_1002F7130);
  v5 = sub_100081D0C(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001BAD80(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_100080FB4(&qword_1003CCB50, &unk_1002F7130);

  return sub_100081DFC(a1, v5, a3, v6);
}

uint64_t sub_1001BADEC(uint64_t a1)
{
  sub_1001B31B4();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_1001BAE44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001BE170();
  v6 = v6 && v5 == 0xE900000000000063;
  if (v6 || (sub_1000DCD4C(v4, 0xE900000000000063) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v8 = sub_1001BE11C();
    v10 = v6 && a2 == v9;
    if (v10 || (sub_1000DCD4C(v8, 0xEA00000000006E6FLL) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v11 = sub_1001BE158();
      v12 = v6 && a2 == 0xE700000000000000;
      if (v12 || (sub_1000DCD4C(v11, 0xE700000000000000) & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x73655465646F6378 && a2 == 0xE900000000000074)
      {

        return 3;
      }

      else
      {
        v14 = sub_1000DCD4C(0x73655465646F6378, 0xE900000000000074);

        if (v14)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1001BAF4C(char a1)
{
  result = 0x6974616D6F747561;
  switch(a1)
  {
    case 1:
      result = 0x69746375646F7270;
      break;
    case 2:
      result = 0x786F62646E6173;
      break;
    case 3:
      result = 0x73655465646F6378;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001BAFE8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000010031D1A0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1001BB08C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001BAE44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001BB0C0(uint64_t a1)
{
  v2 = sub_1001BD680();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001BB0FC(uint64_t a1)
{
  v2 = sub_1001BD680();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001BB158@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001BAFE8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1001BB190(uint64_t a1)
{
  v2 = sub_1001BD6D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001BB1CC(uint64_t a1)
{
  v2 = sub_1001BD6D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001BB208()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  sub_1000890DC();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_100093D40();
  v8 = v7 - v6;
  v9 = type metadata accessor for ClientOverride.Server(0);
  v10 = sub_1000B01B0(v9);
  __chkstk_darwin(v10);
  sub_100093D40();
  v13 = v12 - v11;
  sub_1001BE0A0();
  sub_1001BD5C8(v1, v13, v14);
  v15 = sub_100080FB4(&qword_1003CCB50, &unk_1002F7130);
  v16 = 0x6974616D6F747541;
  switch(sub_100081D0C(v13, 3, v15))
  {
    case 1u:
      return v16;
    case 2u:
      v16 = 0x69746375646F7250;
      break;
    case 3u:
      v16 = 0x786F62646E6153;
      break;
    default:
      (*(v4 + 32))(v8, v13, v2);
      sub_1001BE058();
      sub_1001BD4C8(v17, v18, &protocol conformance descriptor for URL);
      v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v19);

      v20._countAndFlagsBits = 41;
      v20._object = 0xE100000000000000;
      String.append(_:)(v20);
      v16 = 0x73655465646F6358;
      (*(v4 + 8))(v8, v2);
      break;
  }

  return v16;
}

uint64_t sub_1001BB444@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v4 = sub_100080FB4(&qword_1003D1338, &qword_1002F8AF8);
  sub_1000B01B0(v4);
  sub_100089118();
  __chkstk_darwin(v5);
  sub_1000891AC();
  v91 = v6;
  v93 = sub_100080FB4(&qword_1003D1340, &qword_1002F8B00);
  sub_1000890DC();
  v90 = v7;
  sub_100089118();
  __chkstk_darwin(v8);
  sub_1000891AC();
  v89 = v9;
  v95 = sub_100080FB4(&qword_1003D1348, &qword_1002F8B08);
  sub_1000890DC();
  v92 = v10;
  sub_100089118();
  __chkstk_darwin(v11);
  sub_1000891AC();
  v94 = v12;
  type metadata accessor for URL();
  sub_1000890DC();
  v100 = v14;
  v101 = v13;
  __chkstk_darwin(v13);
  sub_100093D40();
  v96 = v16 - v15;
  v17 = sub_100080FB4(&qword_1003D1350, &qword_1002F8B10);
  sub_1000890DC();
  v97 = v18;
  sub_100089118();
  __chkstk_darwin(v19);
  v21 = &v87 - v20;
  v22 = sub_100080FB4(&qword_1003D1358, &qword_1002F8B18);
  sub_1000B01B0(v22);
  sub_100089118();
  __chkstk_darwin(v23);
  v25 = &v87 - v24;
  v26 = sub_100080FB4(&qword_1003D1360, &qword_1002F8B20);
  sub_1000890DC();
  v28 = v27;
  sub_100089118();
  __chkstk_darwin(v29);
  sub_10018ED2C();
  v30 = type metadata accessor for ClientOverride.Server(0);
  v31 = sub_1000B01B0(v30);
  __chkstk_darwin(v31);
  sub_100093D40();
  v99 = v33 - v32;
  v34 = a1[3];
  v104 = a1;
  sub_100086D24(a1, v34);
  sub_1001BD680();
  v35 = v102;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v35)
  {

    sub_100081DFC(v25, 1, 1, v26);
    sub_1000AF25C(v25, &qword_1003D1358, &qword_1002F8B18);
  }

  else
  {
    v102 = v21;
    v88 = v17;
    v40 = v100;
    v39 = v101;
    sub_100081DFC(v25, 0, 1, v26);
    (*(v28 + 32))(v2, v25, v26);
    v41 = KeyedDecodingContainer.allKeys.getter();
    if (*(v41 + 16))
    {
      v42 = *(v41 + 32);

      switch(v42)
      {
        case 1:
          v65 = sub_1001BE0E0();
          v66(v65);
          sub_100080FB4(&qword_1003CCB50, &unk_1002F7130);
          v45 = sub_1001BE0D0();
          v47 = 2;
          goto LABEL_24;
        case 2:
          v58 = sub_1001BE0E0();
          v59(v58);
          sub_100080FB4(&qword_1003CCB50, &unk_1002F7130);
          v45 = sub_1001BE0D0();
          v47 = 3;
          goto LABEL_24;
        case 3:
          v60 = v39;
          v61 = v40;
          LOBYTE(v103[0]) = 3;
          sub_1001BD6D4();
          v62 = v102;
          v63 = v2;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v64 = v28;
          sub_1001BE058();
          sub_1001BD4C8(v68, v69, &protocol conformance descriptor for URL);
          v70 = v96;
          v71 = v62;
          v72 = v88;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v97 + 8))(v71, v72);
          (*(v64 + 8))(v63, v26);
          v36 = v104;
          v42 = v99;
          (*(v61 + 32))(v99, v70, v60);
          v73 = sub_100080FB4(&qword_1003CCB50, &unk_1002F7130);
          sub_100081DFC(v42, 0, 3, v73);
          break;
        default:
          v43 = sub_1001BE0E0();
          v44(v43);
          sub_100080FB4(&qword_1003CCB50, &unk_1002F7130);
          v45 = sub_1001BE0D0();
          v47 = 1;
LABEL_24:
          sub_100081DFC(v45, v47, 3, v46);
          v36 = v104;
          break;
      }

LABEL_25:
      sub_1001BD564(v42, v98);
      return sub_100080F0C(v36);
    }

    v48 = sub_1001BE0E0();
    v49(v48);
  }

  v36 = v104;
  sub_100086D24(v104, v104[3]);
  sub_1001BE1EC();
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v35)
  {
    sub_100086D24(v103, v103[3]);
    sub_1001BE1EC();
    v37 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    v42 = v37;
    v50 = v38;
    v51 = v37 == 1869903201 && v38 == 0xE400000000000000;
    if (v51 || (sub_1001BE100(1869903201, 0xE400000000000000) & 1) != 0 || ((v52 = sub_1001BE170(), v51) ? (v54 = v50 == v53) : (v54 = 0), v54 || (sub_1001BE100(v52, 0xE900000000000063) & 1) != 0))
    {

      v55 = 1;
    }

    else
    {
      v74 = v42 == 1685025392 && v50 == 0xE400000000000000;
      if (v74 || (sub_1001BE100(1685025392, 0xE400000000000000) & 1) != 0 || ((v75 = sub_1001BE11C(), v51) ? (v77 = v50 == v76) : (v77 = 0), v77 || (sub_1001BE100(v75, 0xEA00000000006E6FLL) & 1) != 0))
      {

        v55 = 2;
      }

      else
      {
        v78 = sub_1001BE158();
        v79 = v51 && v50 == 0xE700000000000000;
        if (v79 || (sub_1001BE100(v78, 0xE700000000000000) & 1) != 0)
        {

          v55 = 3;
        }

        else
        {
          sub_100080FB4(&qword_1003D1370, &qword_1002F8B28);
          Regex.init(_regexString:version:)();
          v80 = v91;
          Regex.wholeMatch(in:)();

          if (sub_100081D0C(v80, 1, v93) == 1)
          {
            sub_1000AF25C(v80, &qword_1003D1338, &qword_1002F8AF8);
            v81 = type metadata accessor for DecodingError();
            swift_allocError();
            v83 = v82;
            v36 = v104;
            sub_100086D24(v104, v104[3]);
            dispatch thunk of Decoder.codingPath.getter();
            DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
            (*(*(v81 - 8) + 104))(v83, enum case for DecodingError.dataCorrupted(_:), v81);
            swift_willThrow();
            (*(v92 + 8))(v94, v95);
            sub_100080F0C(v103);
            return sub_100080F0C(v36);
          }

          v84 = v90;
          v85 = v89;
          v86 = v93;
          (*(v90 + 32))(v89, v80, v93);
          swift_getKeyPath();
          Regex.Match.subscript.getter();

          v42 = static String._fromSubstring(_:)();

          URL.init(fileURLWithPath:)();

          (*(v84 + 8))(v85, v86);
          (*(v92 + 8))(v94, v95);
          v55 = 0;
          v36 = v104;
        }
      }
    }

    sub_100080FB4(&qword_1003CCB50, &unk_1002F7130);
    v56 = sub_1001BE0D0();
    sub_100081DFC(v56, v55, 3, v57);
    sub_100080F0C(v103);
    goto LABEL_25;
  }

  return sub_100080F0C(v36);
}

uint64_t sub_1001BBE8C(void *a1)
{
  sub_100080FB4(&qword_1003D1380, &qword_1002F8B50);
  sub_1000890DC();
  v55 = v4;
  v56 = v3;
  sub_100089118();
  __chkstk_darwin(v5);
  sub_1000891AC();
  v52 = v6;
  type metadata accessor for URL();
  sub_1000890DC();
  v53 = v8;
  v54 = v7;
  __chkstk_darwin(v7);
  sub_100093D40();
  v57 = v10 - v9;
  sub_100080FB4(&qword_1003D1388, &qword_1002F8B58);
  sub_1000890DC();
  v50 = v12;
  v51 = v11;
  sub_100089118();
  __chkstk_darwin(v13);
  sub_1000891AC();
  v49 = v14;
  sub_100080FB4(&qword_1003D1390, &qword_1002F8B60);
  sub_1000890DC();
  v47 = v16;
  v48 = v15;
  sub_100089118();
  __chkstk_darwin(v17);
  sub_100089350();
  sub_100080FB4(&qword_1003D1398, &qword_1002F8B68);
  sub_1000890DC();
  v45 = v19;
  v46 = v18;
  sub_100089118();
  __chkstk_darwin(v20);
  v22 = &v44 - v21;
  v23 = type metadata accessor for ClientOverride.Server(0);
  v24 = sub_1000B01B0(v23);
  __chkstk_darwin(v24);
  sub_100093D40();
  v27 = v26 - v25;
  v28 = sub_100080FB4(&qword_1003D13A0, &unk_1002F8B70);
  sub_1000890DC();
  v30 = v29;
  sub_100089118();
  __chkstk_darwin(v31);
  v33 = &v44 - v32;
  sub_100086D24(a1, a1[3]);
  sub_1001BD680();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1001BE0A0();
  sub_1001BD5C8(v58, v27, v34);
  v35 = sub_100080FB4(&qword_1003CCB50, &unk_1002F7130);
  switch(sub_100081D0C(v27, 3, v35))
  {
    case 1u:
      v59 = 0;
      sub_1001BD7D0();
      sub_1001BE13C(&type metadata for ClientOverride.Server.AutomaticCodingKeys);
      (*(v45 + 8))(v22, v46);
      goto LABEL_6;
    case 2u:
      v60 = 1;
      sub_1001BD77C();
      sub_1001BE13C(&type metadata for ClientOverride.Server.ProductionCodingKeys);
      (*(v47 + 8))(v1, v48);
      goto LABEL_6;
    case 3u:
      v61 = 2;
      sub_1001BD728();
      v43 = v49;
      sub_1001BE13C(&type metadata for ClientOverride.Server.SandboxCodingKeys);
      (*(v50 + 8))(v43, v51);
LABEL_6:
      result = (*(v30 + 8))(v33, v28);
      break;
    default:
      v37 = v53;
      v36 = v54;
      (*(v53 + 32))(v57, v27, v54);
      v62 = 3;
      sub_1001BD6D4();
      v38 = v52;
      sub_1001BE13C(&type metadata for ClientOverride.Server.XcodeTestCodingKeys);
      sub_1001BE058();
      sub_1001BD4C8(v39, v40, &protocol conformance descriptor for URL);
      v41 = v56;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v55 + 8))(v38, v41);
      (*(v37 + 8))(v57, v36);
      result = (*(v30 + 8))(v33, v28);
      break;
  }

  return result;
}

uint64_t sub_1001BC3D8(uint64_t a1)
{
  v2 = sub_1001BD7D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001BC414(uint64_t a1)
{
  v2 = sub_1001BD7D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001BC450(uint64_t a1)
{
  v2 = sub_1001BD77C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001BC48C(uint64_t a1)
{
  v2 = sub_1001BD77C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001BC4C8(uint64_t a1)
{
  v2 = sub_1001BD728();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001BC504(uint64_t a1)
{
  v2 = sub_1001BD728();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001BC574()
{
  v3 = sub_100080FB4(&unk_1003CE610, &unk_1002F8550);
  sub_1000B01B0(v3);
  sub_100089118();
  __chkstk_darwin(v4);
  sub_100089350();
  v5 = type metadata accessor for UUID();
  sub_1000890DC();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_100093D40();
  sub_10018ED2C();
  v9 = v0[3];
  if (v9)
  {
    v10 = v0[2];
    String.append(_:)(*(&v9 - 1));
    sub_1001BE1A0();
    v11._countAndFlagsBits = 0x2864696272;
    v11._object = 0xE500000000000000;
    String.append(_:)(v11);
  }

  v12 = v0[5];
  if (v12)
  {
    v13 = v0[4];
    String.append(_:)(*(&v12 - 1));
    sub_1001BE1A0();
    v14._countAndFlagsBits = 0x287372766272;
    v14._object = 0xE600000000000000;
    String.append(_:)(v14);
  }

  v15 = type metadata accessor for ClientOverride(0);
  if ((*(v0 + v15[9] + 8) & 1) == 0)
  {
    v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v16);

    sub_1001BE1A0();
    v17._countAndFlagsBits = 0x2864496D616461;
    v17._object = 0xE700000000000000;
    String.append(_:)(v17);
  }

  if ((*(v0 + v15[8] + 8) & 1) == 0)
  {
    v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v18);

    sub_1001BE1A0();
    v19._countAndFlagsBits = 0x6449737256747865;
    v19._object = 0xE900000000000028;
    String.append(_:)(v19);
  }

  sub_1000E3228(v0 + v15[10], v2);
  if (sub_100081D0C(v2, 1, v5) == 1)
  {
    sub_1000AF25C(v2, &unk_1003CE610, &unk_1002F8550);
  }

  else
  {
    (*(v7 + 32))(v1, v2, v5);
    sub_1001BE070();
    sub_1001BD4C8(v20, v21, &protocol conformance descriptor for UUID);
    v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v22);

    sub_1001BE1A0();
    v23._countAndFlagsBits = 677669238;
    v23._object = 0xE400000000000000;
    String.append(_:)(v23);

    (*(v7 + 8))(v1, v5);
  }

  v24._countAndFlagsBits = sub_1001BB208();
  String.append(_:)(v24);

  v25._countAndFlagsBits = 41;
  v25._object = 0xE100000000000000;
  String.append(_:)(v25);
  v26._countAndFlagsBits = 0x28726576726573;
  v26._object = 0xE700000000000000;
  String.append(_:)(v26);

  return 0;
}

uint64_t sub_1001BC930(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x800000010031D160 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4274736575716572 && a2 == 0xEF4449656C646E75;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000014 && 0x800000010031C620 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x726576726573 && a2 == 0xE600000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000014 && 0x800000010031D180 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x65744965726F7473 && a2 == 0xEB0000000044496DLL;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x4449726F646E6576 && a2 == 0xE800000000000000)
            {

              return 6;
            }

            else
            {
              v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1001BCB78(char a1)
{
  result = 0x4274736575716572;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0x726576726573;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0x65744965726F7473;
      break;
    case 6:
      result = 0x4449726F646E6576;
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

uint64_t sub_1001BCC78(void *a1)
{
  v4 = v1;
  v6 = sub_100080FB4(&qword_1003D1320, &qword_1002F8AF0);
  sub_1000890DC();
  v8 = v7;
  sub_100089118();
  __chkstk_darwin(v9);
  sub_10018ED2C();
  sub_100086D24(a1, a1[3]);
  sub_1001BD510();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = *v4;
  v16 = v4[1];
  sub_1000BC7F4(*v4, v16);
  sub_1000BC860();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v2)
  {
    sub_1000BC8B4(v15, v16);
  }

  else
  {
    sub_1000BC8B4(v15, v16);
    sub_1001BE088(1);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_1001BE088(2);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    type metadata accessor for ClientOverride(0);
    type metadata accessor for ClientOverride.Server(0);
    sub_1001BE0B8();
    sub_1001BD4C8(v10, v11, &unk_1002F89F8);
    sub_1001BE188();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1001BE088(4);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    sub_1001BE088(5);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    type metadata accessor for UUID();
    sub_1001BE070();
    sub_1001BD4C8(v12, v13, &protocol conformance descriptor for UUID);
    sub_1001BE188();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v3, v6);
}

uint64_t sub_1001BCEFC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100080FB4(&unk_1003CE610, &unk_1002F8550);
  sub_1000B01B0(v5);
  sub_100089118();
  __chkstk_darwin(v6);
  sub_100089350();
  type metadata accessor for ClientOverride.Server(0);
  sub_100098B7C();
  __chkstk_darwin(v7);
  sub_100093D40();
  sub_10018ED2C();
  sub_100080FB4(&qword_1003D1300, &qword_1002F8AE8);
  sub_1000890DC();
  sub_100089118();
  __chkstk_darwin(v8);
  type metadata accessor for ClientOverride(0);
  sub_100098B7C();
  __chkstk_darwin(v9);
  sub_100093D40();
  v12 = (v11 - v10);
  *(v11 - v10) = xmmword_1002F0420;
  v32 = v13;
  v14 = v13[10];
  v15 = type metadata accessor for UUID();
  v33 = v14;
  sub_100081DFC(v12 + v14, 1, 1, v15);
  v16 = sub_100086D24(a1, a1[3]);
  sub_1001BD510();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v31)
  {
    sub_1001BE1B8();
    sub_100080F0C(a1);
    sub_1000BC8B4(*v12, v12[1]);

    if (v16)
    {
      sub_1001BD628(v12 + *(v3 + 28), type metadata accessor for ClientOverride.Server);
    }

    return sub_1000AF25C(v12 + v33, &unk_1003CE610, &unk_1002F8550);
  }

  else
  {
    sub_1000BC95C();
    sub_1000BD838();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_1000BC8B4(*v12, v12[1]);
    *v12 = v34;
    v12[1] = v35;
    sub_1001BE1E0(1);
    sub_1000BD838();
    v12[2] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v12[3] = v17;
    sub_1001BE1E0(2);
    sub_1000BD838();
    v12[4] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v12[5] = v18;
    sub_1001BE0B8();
    sub_1001BD4C8(v19, v20, &unk_1002F8A20);
    sub_1000BD838();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_1001BD564(v2, v12 + v32[7]);
    sub_1001BE1E0(4);
    sub_1000BD838();
    v21 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    sub_1001BE1CC(v21, v22, v32[8]);
    sub_1001BE1E0(5);
    sub_1000BD838();
    v23 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    sub_1001BE1CC(v23, v24, v32[9]);
    sub_1001BE070();
    sub_1001BD4C8(v25, v26, &protocol conformance descriptor for UUID);
    sub_1000BD838();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v27 = sub_1001BE0F0();
    v28(v27);
    sub_1001B4BA8(v3, v12 + v33);
    sub_1001BD5C8(v12, a2, type metadata accessor for ClientOverride);
    sub_100080F0C(a1);
    return sub_1001BD628(v12, type metadata accessor for ClientOverride);
  }
}

uint64_t sub_1001BD3F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001BC930(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001BD41C(uint64_t a1)
{
  v2 = sub_1001BD510();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001BD458(uint64_t a1)
{
  v2 = sub_1001BD510();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001BD4C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1001BD510()
{
  result = qword_1003D1308;
  if (!qword_1003D1308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1308);
  }

  return result;
}

uint64_t sub_1001BD564(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientOverride.Server(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001BD5C8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100098B7C();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1001BD628(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100098B7C();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1001BD680()
{
  result = qword_1003D1368;
  if (!qword_1003D1368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1368);
  }

  return result;
}

unint64_t sub_1001BD6D4()
{
  result = qword_1003D1378;
  if (!qword_1003D1378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1378);
  }

  return result;
}

unint64_t sub_1001BD728()
{
  result = qword_1003D13A8;
  if (!qword_1003D13A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D13A8);
  }

  return result;
}

unint64_t sub_1001BD77C()
{
  result = qword_1003D13B0;
  if (!qword_1003D13B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D13B0);
  }

  return result;
}

unint64_t sub_1001BD7D0()
{
  result = qword_1003D13B8;
  if (!qword_1003D13B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D13B8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ClientOverride.Server.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1001BD920);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ClientOverride.Server.XcodeTestCodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x1001BD9F4);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ClientOverride.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1001BDAF8);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1001BDB34()
{
  result = qword_1003D13C0;
  if (!qword_1003D13C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D13C0);
  }

  return result;
}

unint64_t sub_1001BDB8C()
{
  result = qword_1003D13C8;
  if (!qword_1003D13C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D13C8);
  }

  return result;
}

unint64_t sub_1001BDBE4()
{
  result = qword_1003D13D0;
  if (!qword_1003D13D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D13D0);
  }

  return result;
}

unint64_t sub_1001BDC3C()
{
  result = qword_1003D13D8;
  if (!qword_1003D13D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D13D8);
  }

  return result;
}

unint64_t sub_1001BDC94()
{
  result = qword_1003D13E0;
  if (!qword_1003D13E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D13E0);
  }

  return result;
}

unint64_t sub_1001BDCEC()
{
  result = qword_1003D13E8;
  if (!qword_1003D13E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D13E8);
  }

  return result;
}

unint64_t sub_1001BDD44()
{
  result = qword_1003D13F0;
  if (!qword_1003D13F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D13F0);
  }

  return result;
}

unint64_t sub_1001BDD9C()
{
  result = qword_1003D13F8;
  if (!qword_1003D13F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D13F8);
  }

  return result;
}

unint64_t sub_1001BDDF4()
{
  result = qword_1003D1400;
  if (!qword_1003D1400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1400);
  }

  return result;
}

unint64_t sub_1001BDE4C()
{
  result = qword_1003D1408;
  if (!qword_1003D1408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1408);
  }

  return result;
}

unint64_t sub_1001BDEA4()
{
  result = qword_1003D1410;
  if (!qword_1003D1410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1410);
  }

  return result;
}

unint64_t sub_1001BDEFC()
{
  result = qword_1003D1418;
  if (!qword_1003D1418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1418);
  }

  return result;
}

unint64_t sub_1001BDF54()
{
  result = qword_1003D1420;
  if (!qword_1003D1420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1420);
  }

  return result;
}

unint64_t sub_1001BDFAC()
{
  result = qword_1003D1428;
  if (!qword_1003D1428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1428);
  }

  return result;
}

unint64_t sub_1001BE004()
{
  result = qword_1003D1430;
  if (!qword_1003D1430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1430);
  }

  return result;
}

uint64_t sub_1001BE100(uint64_t a1, uint64_t a2)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1001BE13C(uint64_t a1)
{

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

void sub_1001BE1A0()
{
  v1 = 8233;
  v2 = 0xE200000000000000;

  String.append(_:)(*&v1);
}

uint64_t sub_1001BE1CC@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3 + a3;
  *v4 = result;
  *(v4 + 8) = a2 & 1;
  return result;
}

id sub_1001BE200(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC9storekitd30SQLiteSequentialValueTransform_components] = a1;
  v5.receiver = v3;
  v5.super_class = v1;

  return objc_msgSendSuper2(&v5, "init");
}

uint64_t sub_1001BE34C(uint64_t result)
{
  v2 = result;
  v3 = *(v1 + OBJC_IVAR____TtC9storekitd30SQLiteSequentialValueTransform_components);
  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_11:

    return v2;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v4 = result;
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v4 >= 1)
  {

    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v6 = *(v3 + 8 * v5 + 32);
        swift_unknownObjectRetain();
      }

      ++v5;
      v7 = String._bridgeToObjectiveC()();

      v8 = [v6 transformSQLWithRoot:v7];

      v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      swift_unknownObjectRelease();
    }

    while (v4 != v5);
    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001BE514(uint64_t result, uint64_t a2)
{
  v4 = result;
  v5 = *(v2 + OBJC_IVAR____TtC9storekitd30SQLiteSequentialValueTransform_components);
  if (v5 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v6 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return result;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v6; ++i)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v8 = *(v5 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      [v8 applyTransformBinding:v4 atIndex:a2];
      result = swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1001BE66C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 65) = a4;
  *(v4 + 24) = a3;
  return _swift_task_switch(sub_1001BE690, 0, 0);
}

uint64_t sub_1001BE690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = v3;
  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v4 = *(v3 + 65);
  v5 = *(v3 + 24);
  v6 = type metadata accessor for SKLogger(0);
  sub_10007EDA4(v6, qword_1003F26C8);
  _StringGuts.grow(_:)(36);

  v18 = 0xD00000000000001ELL;
  v19 = 0x800000010031D240;
  *(v3 + 16) = v5;
  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 8250;
  v8._object = 0xE200000000000000;
  String.append(_:)(v8);
  *(v3 + 64) = v4 & 1;
  v9._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v9);

  v11 = v18;
  v10 = v19;
  v12 = static os_log_type_t.default.getter();

  v13 = Logger.logObject.getter();

  if (os_log_type_enabled(v13, v12))
  {
    v14 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v14 = 136446466;
    *(v14 + 4) = sub_100080210(0, 0xE000000000000000, &v18);
    *(v14 + 12) = 2082;
    v15 = sub_100080210(v11, v10, &v18);

    *(v14 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v13, v12, "%{public}s%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  if (qword_1003CBDE0 != -1)
  {
    swift_once();
  }

  v16 = qword_1003F25D8;
  *(v3 + 32) = qword_1003F25D8;

  return _swift_task_switch(sub_1001BE944, v16, 0);
}

uint64_t sub_1001BE944()
{
  *(v0 + 40) = sub_10019D99C();

  return _swift_task_switch(sub_1001BE9B0, 0, 0);
}

uint64_t sub_1001BE9B0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 65) & 1;
  v3 = swift_allocObject();
  *(v0 + 48) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_1001BEA90;

  return sub_1001D5E3C(sub_1001BEBCC, v3);
}

uint64_t sub_1001BEA90()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_1001BEBD8()
{
  sub_100093D08();
  sub_1001C5518();
  v2 = 0;
  v44[0] = v3;
  v44[1] = v4;
  *&v47 = v3;
  *(&v47 + 1) = v4;

  sub_100080FB4(&qword_1003D1570, &qword_1002F9238);
  if (swift_dynamicCast())
  {
    sub_1000F2C78(v45, &v48);
    sub_100086D24(&v48, v49);
    sub_1001C543C();
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    v45[0] = v47;
    sub_100080F0C(&v48);
    goto LABEL_56;
  }

  v46 = 0;
  memset(v45, 0, sizeof(v45));
  sub_10013B1E8(v45, &qword_1003D1578, &unk_1002F9240);
  if ((v0 & 0x1000000000000000) != 0)
  {
    goto LABEL_60;
  }

  if ((v0 & 0x2000000000000000) != 0)
  {
    *&v45[0] = v1;
    *(&v45[0] + 1) = v0 & 0xFFFFFFFFFFFFFFLL;
    v5 = v45;
    v6 = HIBYTE(v0) & 0xF;
  }

  else if ((v1 & 0x1000000000000000) != 0)
  {
    v5 = ((v0 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v6 = v1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    sub_100107174();
    v5 = _StringObject.sharedUTF8.getter();
  }

  sub_1001C4608(v5, v6, &v48);
  v7 = *(&v48 + 1);
  v8 = v48;
  if (*(&v48 + 1) >> 60 != 15)
  {
    v45[0] = v48;
    goto LABEL_56;
  }

LABEL_9:
  *&v45[0] = Data._Representation.init(count:)();
  *(&v45[0] + 1) = v9;
  __chkstk_darwin(*&v45[0]);
  v39[2] = v44;
  v10 = sub_1001C4724(sub_1001C51E0, v39);
  v12 = *(&v45[0] + 1) >> 62;
  v13 = v10;
  v15 = v14;
  v17 = v16;
  v18 = BYTE14(v45[0]);
  switch(*(&v45[0] + 1) >> 62)
  {
    case 1:
      LODWORD(v19) = DWORD1(v45[0]) - LODWORD(v45[0]);
      if (__OFSUB__(DWORD1(v45[0]), v45[0]))
      {
        goto LABEL_63;
      }

      v19 = v19;
LABEL_19:
      if (v11 == v19)
      {
        goto LABEL_20;
      }

      if (v12 == 2)
      {
        v18 = *(*&v45[0] + 24);
      }

      else if (v12 == 1)
      {
        v18 = *&v45[0] >> 32;
      }

      goto LABEL_53;
    case 2:
      v21 = *(*&v45[0] + 16);
      v20 = *(*&v45[0] + 24);
      v22 = __OFSUB__(v20, v21);
      v19 = v20 - v21;
      if (!v22)
      {
        goto LABEL_19;
      }

      __break(1u);
LABEL_15:
      if (v11)
      {
        v18 = 0;
LABEL_53:
        if (v18 < v11)
        {
          __break(1u);
LABEL_63:
          __break(1u);
        }

        Data._Representation.replaceSubrange(_:with:count:)();
        goto LABEL_55;
      }

LABEL_20:
      v39[4] = v2;
      v40 = v8;
      v41 = v7;
      LOBYTE(v23) = 0;
      if ((v15 & 0x2000000000000000) != 0)
      {
        v24 = HIBYTE(v15) & 0xF;
      }

      else
      {
        v24 = v10 & 0xFFFFFFFFFFFFLL;
      }

      v25 = (v10 >> 59) & 1;
      if ((v15 & 0x1000000000000000) == 0)
      {
        LOBYTE(v25) = 1;
      }

      v26 = 4 << v25;
      v42 = (v15 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v43 = v15 & 0xFFFFFFFFFFFFFFLL;
      *(&v47 + 7) = 0;
      *&v47 = 0;
      break;
    case 3:
      goto LABEL_15;
    default:
      v19 = BYTE14(v45[0]);
      goto LABEL_19;
  }

  while (4 * v24 != v17 >> 14)
  {
    v2 = v17 & 0xC;
    v27 = v17;
    if (v2 == v26)
    {
      v31 = sub_1001073E4();
      v27 = sub_1001C3EA4(v31, v32, v15);
    }

    v28 = v27 >> 16;
    if (v27 >> 16 >= v24)
    {
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      sub_100107174();
      String.UTF8View._foreignCount()();
      v8 = 0;
      v7 = 0xF000000000000000;
      goto LABEL_9;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v30 = String.UTF8View._foreignSubscript(position:)();
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v48 = v13;
      *(&v48 + 1) = v43;
      v30 = *(&v48 + v28);
    }

    else
    {
      v29 = v42;
      if ((v13 & 0x1000000000000000) == 0)
      {
        v29 = _StringObject.sharedUTF8.getter();
      }

      v30 = *(v29 + v28);
    }

    if (v2 == v26)
    {
      v33 = sub_1001073E4();
      v17 = sub_1001C3EA4(v33, v34, v15);
      if ((v15 & 0x1000000000000000) == 0)
      {
LABEL_38:
        v17 = (v17 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_43;
      }
    }

    else if ((v15 & 0x1000000000000000) == 0)
    {
      goto LABEL_38;
    }

    if (v24 <= v17 >> 16)
    {
      goto LABEL_59;
    }

    sub_1001073E4();
    v17 = String.UTF8View._foreignIndex(after:)();
LABEL_43:
    *(&v47 + v23) = v30;
    v23 = v23 + 1;
    if ((v23 >> 8))
    {
      goto LABEL_58;
    }

    if (v23 == 14)
    {
      sub_1001C559C();
      Data._Representation.append(contentsOf:)();
      LOBYTE(v23) = 0;
    }
  }

  if (!v23)
  {

    sub_1000BC8B4(v40, v41);
    goto LABEL_56;
  }

  sub_1001C559C();
  Data._Representation.append(contentsOf:)();
  sub_1000BC8B4(v40, v41);
LABEL_55:

LABEL_56:
  v35 = sub_1001B5400();
  sub_1000BC808(v35, v36);

  v37 = sub_1001B5400();
  sub_10008E168(v37, v38);
  sub_1001B5400();
  sub_100093CB8();
}

uint64_t sub_1001BF094(uint64_t a1)
{
  v2 = type metadata accessor for Insecure.SHA1Digest();
  v7 = v2;
  v8 = sub_1001C5198(&qword_1003D1568, &type metadata accessor for Insecure.SHA1Digest, &protocol conformance descriptor for Insecure.SHA1Digest);
  v3 = sub_10009E720(v6);
  v4 = *(v2 - 8);
  (*(v4 + 16))(v3, a1, v2);
  sub_100086D24(v6, v7);
  sub_1001C543C();
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  sub_100080F0C(v6);
  (*(v4 + 8))(a1, v2);
  return sub_1001B5400();
}

Class sub_1001BF1C0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_10008E5A4(0, &qword_1003D0210, NSObject_ptr);
    v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

uint64_t sub_1001BF25C()
{
  type metadata accessor for MessageActor(0);
  v0 = swift_allocObject();
  result = sub_1001BF938();
  qword_1003F26A8 = v0;
  return result;
}

uint64_t sub_1001BF29C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return _swift_task_switch(sub_1001BF2C8, v6, 0);
}

uint64_t sub_1001BF2C8(uint64_t a1)
{
  v32 = v1;
  v3 = v1[7];
  v2 = v1[8];
  if (v2[14])
  {
    static os_log_type_t.default.getter();
    sub_10019DE64();
    Logger.logObject.getter();
    sub_100107EE4();
    if (sub_10009F1F4())
    {
      sub_10008E688();
      sub_10019DB8C();
      sub_10019DAD0(4.8752e-34);
      v29 = v4;
      v30 = v5;
      v31 = v6;
      v7._countAndFlagsBits = sub_1001073E4();
      String.append(_:)(v7);
      sub_10009F134();
      sub_100080210(v30, v31, &v29);
      sub_1000B0494();
      sub_10013BBCC();
      *(v3 + 14) = sub_100080210(0xD000000000000037, 0x800000010031D5F0, &v29);
      sub_10013BF7C(&_mh_execute_header, v8, v9, "%{public}s%{public}s");
      sub_100106E34();
      sub_1000AFFE8();
      sub_1000D3E6C();
    }

    sub_100098AC4();

    return v10();
  }

  else
  {
    v12 = v1[4];
    v13 = v1[5];
    v15 = v1[2];
    v14 = v1[3];
    v2[14] = v15;
    v2[15] = v14;
    v2[16] = v12;
    v2[17] = v13;
    v1[9] = OBJC_IVAR____TtC9storekitd12MessageActor_logger;
    v16 = v15;

    v17 = v13;
    static os_log_type_t.default.getter();
    sub_10019DE64();
    Logger.logObject.getter();
    sub_100107EE4();
    if (sub_10009F1F4())
    {
      sub_10008E688();
      sub_10019DB8C();
      sub_10019DAD0(4.8752e-34);
      v29 = v18;
      v30 = v19;
      v31 = v20;
      v21._countAndFlagsBits = sub_1001073E4();
      String.append(_:)(v21);
      sub_10009F134();
      sub_100080210(v30, v31, &v29);
      sub_1000B0494();
      sub_10013BBCC();
      *(v3 + 14) = sub_100080210(0x676E697472617453, 0xEE002E6B73617420, &v29);
      sub_10013BF7C(&_mh_execute_header, v22, v23, "%{public}s%{public}s");
      sub_100106E34();
      sub_1000AFFE8();
      sub_1000D3E6C();
    }

    v24 = swift_task_alloc();
    v1[10] = v24;
    *v24 = v1;
    v24[1] = sub_1001BF578;
    v25 = sub_1000B06F4(v1[2]);

    return sub_10022FCA4(v25, v26, v27, v28);
  }
}

uint64_t sub_1001BF578()
{
  sub_10008BE9C();
  sub_10008C070();
  v2 = *(v1 + 64);
  v3 = *v0;
  sub_100098AB4();
  *v4 = v3;

  return _swift_task_switch(sub_1001BF678, v2, 0);
}

uint64_t sub_1001BF678()
{
  sub_1000EDA60();
  v19 = v0;
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);
  static os_log_type_t.default.getter();
  sub_10019DE64();
  Logger.logObject.getter();
  sub_100107EE4();
  if (sub_10009F1F4())
  {
    sub_10008E688();
    sub_10019DB8C();
    sub_10019DAD0(4.8752e-34);
    v16 = v3;
    v17 = v4;
    v18 = v5;
    v6._countAndFlagsBits = sub_1001073E4();
    String.append(_:)(v6);
    sub_10009F134();
    sub_100080210(v17, v18, &v16);
    sub_1000B0494();
    sub_10013BBCC();
    *(v2 + 14) = sub_100080210(0x6574656C706D6F43, 0xEF2E6B7361742064, &v16);
    sub_10013BF7C(&_mh_execute_header, v7, v8, "%{public}s%{public}s");
    sub_100106E34();
    sub_1000AFFE8();
    sub_1000D3E6C();
  }

  v9 = *(v0 + 64);
  v10 = v9[14];
  v11 = v9[15];
  v12 = v9[16];
  v13 = v9[17];
  *(v9 + 7) = 0u;
  *(v9 + 8) = 0u;
  sub_1001C521C(v10, v11, v12, v13);
  sub_100098AC4();

  return v14();
}

void *sub_1001BF7C4()
{
  sub_1001C521C(*(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));
  sub_1001C5270(v0 + OBJC_IVAR____TtC9storekitd12MessageActor_logger, type metadata accessor for SKLogger);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1001BF814()
{
  sub_1001BF7C4();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for MessageActor(uint64_t a1)
{
  result = qword_1003D14B0;
  if (!qword_1003D14B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001BF894(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

uint64_t sub_1001BF938()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  if (qword_1003CBE50 != -1)
  {
    sub_1001C532C(&qword_1003CBE50);
  }

  v1 = type metadata accessor for SKLogger(0);
  sub_10007EDA4(v1, qword_1003F26B0);
  sub_1001C534C();
  sub_1001C50E8();
  return v0;
}

void sub_1001BFCB0()
{
  sub_100093D08();
  v1 = v0;
  v3 = v2;
  v4 = sub_100080FB4(&unk_1003CE2B0, &qword_1002EEE80);
  sub_1000B01B0(v4);
  sub_100089118();
  __chkstk_darwin(v5);
  v7 = &v42 - v6;
  if (qword_1003CBE58 != -1)
  {
    sub_100081C08(&qword_1003CBE58);
  }

  v8 = type metadata accessor for SKLogger(0);
  sub_100107C34(v8, qword_1003F26C8);
  sub_1001CA63C();
  v10 = v9;
  v12 = v11;
  if (qword_1003CBE50 != -1)
  {
    sub_1001C532C(&qword_1003CBE50);
  }

  v13 = sub_10007EDA4(v8, qword_1003F26B0);
  sub_1000B01F4();
  _StringGuts.grow(_:)(30);

  sub_1000C446C();
  v48 = 0xD00000000000001CLL;
  v49 = v14;
  v45 = v3;
  String.append(_:)(*&v3[OBJC_IVAR____TtC9storekitd6Client_requestBundleID]);
  v15 = v48;
  v16 = v49;

  v17 = static os_log_type_t.default.getter();

  v44 = v13;
  v18 = Logger.logObject.getter();

  v19 = os_log_type_enabled(v18, v17);
  v46 = v10;
  if (v19)
  {
    sub_10008E688();
    v43 = v1;
    v20 = sub_10019DB8C();
    v42 = v7;
    v21 = v20;
    *v1 = 136446466;
    sub_10016C84C(v20);
    v22._countAndFlagsBits = v10;
    v22._object = v12;
    String.append(_:)(v22);
    sub_10009F134();
    sub_1000B0340();
    sub_1000B0494();
    sub_10013BBCC();
    v23 = sub_100080210(v15, v16, &v47);

    *(v1 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v18, v17, "%{public}s%{public}s", v1, 0x16u);
    swift_arrayDestroy();
    v24 = v21;
    v7 = v42;
    sub_100081C28(v24);
    v25 = v1;
    v1 = v43;
    sub_100081C28(v25);
  }

  else
  {
  }

  v26 = v45;
  v27 = *(v45 + OBJC_IVAR____TtC9storekitd6Client_isClip);

  if ((v27 & 1) == 0)
  {
    v34 = type metadata accessor for TaskPriority();
    sub_1001C55D0(v7, v35, v36, v34);
    v37 = swift_allocObject();
    v37[2] = 0;
    v37[3] = 0;
    v38 = v46;
    v37[4] = v26;
    v37[5] = v38;
    v37[6] = v12;
    v37[7] = v1;
    v37[8] = v38;
    v37[9] = v12;

    v39 = v26;
    v40 = v1;
    sub_1001C5454();
    sub_100165CBC();

    goto LABEL_12;
  }

  v28 = static os_log_type_t.default.getter();

  v29 = Logger.logObject.getter();

  v30 = os_log_type_enabled(v29, v28);
  v31 = v46;
  if (v30)
  {
    sub_10008E688();
    v32 = sub_10019DB8C();
    *v1 = 136446466;
    sub_10016C84C(v32);
    v33._countAndFlagsBits = v31;
    v33._object = v12;
    String.append(_:)(v33);
    sub_10009F134();
    sub_1000B0340();
    sub_1000B0494();
    sub_10013BBCC();
    *(v1 + 14) = sub_100080210(0xD00000000000002ALL, 0x800000010031D580, &v47);
    _os_log_impl(&_mh_execute_header, v29, v28, "%{public}s%{public}s", v1, 0x16u);
    swift_arrayDestroy();
    sub_1000AFFE8();
    sub_1000D3E6C();

LABEL_12:
    sub_100093CB8();
    return;
  }

  sub_100093CB8();
}

uint64_t sub_1001C00BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v10;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  return _swift_task_switch(sub_1001C00EC, 0, 0);
}

uint64_t sub_1001C00EC()
{
  sub_10008BE9C();
  if (qword_1003CBE48 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1001C01B8;
  v2 = sub_1000B06F4(*(v0 + 16));

  return sub_1001BF29C(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1001C01B8()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  sub_100098AC4();

  return v3();
}

void sub_1001C0320()
{
  sub_100093D08();
  v145 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_100080FB4(&unk_1003CE2B0, &qword_1002EEE80);
  sub_1000B01B0(v7);
  sub_100089118();
  __chkstk_darwin(v8);
  v10 = &v128 - v9;
  v11 = type metadata accessor for Client.Server(0);
  v12 = sub_1000B01B0(v11);
  __chkstk_darwin(v12);
  sub_100093D40();
  v15 = v14 - v13;
  type metadata accessor for MessageServerRequest(0);
  sub_1000890DC();
  v136 = v16;
  v137 = v17;
  v18 = __chkstk_darwin(v16);
  v138 = v19;
  v139 = &v128 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v143 = (&v128 - v20);
  if (qword_1003CBE58 != -1)
  {
    sub_100081C08(&qword_1003CBE58);
  }

  v21 = type metadata accessor for SKLogger(0);
  sub_100107C34(v21, qword_1003F26C8);
  sub_1001CA63C();
  v23 = v22;
  v25 = v24;
  if (v6)
  {
    v135 = v10;
    v26 = v4;
    v27 = v6;
    v28 = sub_1001A81B0(v27);
    v144 = [v28 ams_DSID];

    v142 = v26;
    if (sub_1001A79F8())
    {
      sub_10008E5A4(0, &qword_1003D0520, NSNumber_ptr);
      isa = NSNumber.init(integerLiteral:)(0).super.super.isa;

      v144 = isa;
      goto LABEL_11;
    }

    if (v144)
    {
LABEL_11:
      v132 = v23;
      v133 = v15;
      if (qword_1003CBE50 != -1)
      {
        sub_1001C532C(&qword_1003CBE50);
      }

      v37 = sub_10007EDA4(v21, qword_1003F26B0);
      v146 = 0;
      v147 = 0xE000000000000000;
      _StringGuts.grow(_:)(39);

      sub_1000C446C();
      v146 = 0xD00000000000001ELL;
      v147 = v38;
      v141 = v27;
      v39 = [v27 description];
      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v41;

      v43._countAndFlagsBits = v40;
      v43._object = v42;
      String.append(_:)(v43);

      v44._countAndFlagsBits = 0x20726F6620;
      v44._object = 0xE500000000000000;
      String.append(_:)(v44);
      v45._countAndFlagsBits = *&v142[OBJC_IVAR____TtC9storekitd6Client_requestBundleID];
      v129 = *&v142[OBJC_IVAR____TtC9storekitd6Client_requestBundleID + 8];
      v45._object = v129;
      countAndFlagsBits = v45._countAndFlagsBits;
      String.append(_:)(v45);
      v46 = v146;
      v47 = v147;

      v48 = static os_log_type_t.default.getter();

      v134 = v37;
      v49 = Logger.logObject.getter();

      v50 = os_log_type_enabled(v49, v48);
      v51 = v145;
      v140 = v25;
      v131 = v2;
      if (v50)
      {
        v52 = sub_10008E688();
        v53 = sub_10008E670();
        sub_1001C537C(v53, 4.8752e-34);
        v54 = v132;
        v55._countAndFlagsBits = v132;
        String.append(_:)(v55);
        sub_10009F134();
        v56 = sub_10018ED38();

        *(v52 + 4) = v56;
        v51 = v145;
        *(v52 + 12) = 2082;
        v57 = sub_100080210(v46, v47, v148);

        *(v52 + 14) = v57;
        _os_log_impl(&_mh_execute_header, v49, v48, "%{public}s%{public}s", v52, 0x16u);
        swift_arrayDestroy();
        sub_100081C28(v53);
        sub_100081C28(v52);
      }

      else
      {

        v54 = v132;
      }

      v66 = v133;
      v67 = v142;
      sub_1001A7E5C(v58, v59, v60, v61, v62, v63, v64, v65, v128, v129, countAndFlagsBits, v131, v132, v133, v134, v135, v136, v137, v138, v139);
      v68 = sub_100080FB4(&qword_1003CCB50, &unk_1002F7130);
      v69 = sub_100081D0C(v66, 2, v68);
      v70 = v141;
      if (v69)
      {
        v71 = v140;
        if (v69 == 1)
        {
          v72 = [v51 messageInfoForClient:v67 messageType:v141];

          if (v72)
          {
            v73 = [v72 status];
            v74 = [v73 integerValue];

            v75 = [v72 type];
            v76 = v143;
            *v143 = v67;
            v76[1] = v74;
            v76[2] = v75;
            *(v76 + 24) = 0;
            v76[4] = v54;
            v76[5] = v71;
            v77 = v136;
            sub_1001C534C();
            sub_1001C50E8();
            v78 = *(v77 + 36);
            v79 = objc_opt_self();

            v80 = v67;
            v81 = [v79 sharedManager];

            *(v76 + v78) = v81;
LABEL_24:
            v87 = v67;
            v88 = type metadata accessor for TaskPriority();
            sub_1001C55D0(v135, v89, v90, v88);
            sub_1001C53D8();
            sub_1001C50E8();
            v91 = (v138 + ((*(v137 + 80) + 32) & ~*(v137 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
            v92 = (v91 + 15) & 0xFFFFFFFFFFFFFFF8;
            v93 = (v92 + 15) & 0xFFFFFFFFFFFFFFF8;
            v94 = swift_allocObject();
            sub_1001C53B8(v94);
            sub_1001C4254();
            v95 = v145;
            *&v72[v91] = v145;
            *&v72[v92] = v87;
            v96 = v131;
            *&v72[v93] = v131;
            v97 = &v72[(v93 + 15) & 0xFFFFFFFFFFFFFFF8];
            v98 = v140;
            *v97 = v54;
            v97[1] = v98;
            v99 = v96;
            v100 = v87;
            v101 = v95;
            sub_1001C5454();
            sub_100165CBC();

            sub_1001C5424();
            sub_1001C5270(v143, v102);
LABEL_37:
            sub_100093CB8();
            return;
          }

          v146 = 0;
          v147 = 0xE000000000000000;
          _StringGuts.grow(_:)(50);

          sub_1000C446C();
          v146 = 0xD000000000000029;
          v147 = v110;
          v111 = [v70 description];
          v112 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v114 = v113;

          v115._countAndFlagsBits = v112;
          v115._object = v114;
          String.append(_:)(v115);

          v116._countAndFlagsBits = sub_1000B7E68();
          v116._object = 0xE500000000000000;
          String.append(_:)(v116);
          v117._object = v129;
          v117._countAndFlagsBits = countAndFlagsBits;
          String.append(_:)(v117);
          v119 = v146;
          v118 = v147;
          v120 = static os_log_type_t.default.getter();

          v121 = Logger.logObject.getter();

          if (os_log_type_enabled(v121, v120))
          {
            v122 = sub_10008E688();
            v123 = sub_10008E670();
            sub_1001C537C(v123, 4.8752e-34);
            v124._countAndFlagsBits = v54;
            v124._object = v71;
            String.append(_:)(v124);
            sub_10009F134();
            sub_10018ED38();
            sub_1000B02F8();
            *(v122 + 4) = v70;
            *(v122 + 12) = 2082;
            v125 = sub_100080210(v119, v118, v148);

            *(v122 + 14) = v125;
            sub_1001C5558(&_mh_execute_header, v126, v120, "%{public}s%{public}s");
            sub_1000B0010();
            sub_100081C28(v123);
            sub_100081C28(v122);
          }

          else
          {
          }

LABEL_36:

          goto LABEL_37;
        }
      }

      else
      {
        v71 = v140;

        type metadata accessor for URL();
        sub_10013B618();
        (*(v82 + 8))(v66);
      }

      v83 = v143;
      *v143 = v67;
      *(v83 + 1) = xmmword_1002F9150;
      *(v83 + 24) = 1;
      v83[4] = v54;
      v83[5] = v71;
      v84 = v136;
      sub_1001C534C();
      sub_1001C50E8();
      v85 = *(v84 + 36);
      v72 = objc_opt_self();

      v86 = v67;
      *(v83 + v85) = [v72 sharedManager];
      goto LABEL_24;
    }

    if (qword_1003CBE50 != -1)
    {
      sub_1001C532C(&qword_1003CBE50);
    }

    sub_100107C34(v21, qword_1003F26B0);
    v103 = static os_log_type_t.error.getter();

    v104 = Logger.logObject.getter();

    if (os_log_type_enabled(v104, v103))
    {
      v105 = sub_10008E688();
      v106 = sub_10008E670();
      sub_1001C537C(v106, 4.8752e-34);
      v107._countAndFlagsBits = v23;
      v107._object = v25;
      String.append(_:)(v107);
      sub_10009F134();
      sub_10018ED38();

      sub_1001C54B8();
      *(v105 + 14) = sub_100080210(v108 + 5, 0x800000010031D4E0, v148);
      sub_1001C5558(&_mh_execute_header, v109, v103, "%{public}s%{public}s");
      swift_arrayDestroy();
      sub_1000D3E6C();
      sub_100081C28(v105);

      goto LABEL_36;
    }
  }

  else
  {
    if (qword_1003CBE50 != -1)
    {
      sub_1001C532C(&qword_1003CBE50);
    }

    sub_100107C34(v21, qword_1003F26B0);
    v30 = static os_log_type_t.error.getter();

    v31 = Logger.logObject.getter();

    if (os_log_type_enabled(v31, v30))
    {
      v32 = sub_10008E688();
      v33 = sub_10008E670();
      sub_1001C537C(v33, 4.8752e-34);
      v34._countAndFlagsBits = v23;
      v34._object = v25;
      String.append(_:)(v34);
      sub_10009F134();
      sub_10018ED38();

      sub_1001C54B8();
      *(v32 + 14) = sub_100080210(v35 + 10, 0x800000010031D4B0, v148);
      sub_1001C5558(&_mh_execute_header, v36, v30, "%{public}s%{public}s");
      swift_arrayDestroy();
      sub_1000D3E6C();
      sub_100081C28(v32);

      goto LABEL_36;
    }
  }

  sub_100093CB8();
}

uint64_t sub_1001C0E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a8;
  v8[6] = v13;
  v8[3] = a6;
  v8[4] = a7;
  v8[2] = a5;
  v8[7] = type metadata accessor for MessageServerResponse(0);
  v8[8] = swift_task_alloc();
  sub_100080FB4(&qword_1003CDC70, &unk_1002FB7B0);
  v8[9] = swift_task_alloc();
  v9 = swift_task_alloc();
  v8[10] = v9;
  v10 = swift_task_alloc();
  v8[11] = v10;
  *v10 = v8;
  v10[1] = sub_1001C0F4C;

  return sub_1000D41E4(v9);
}

uint64_t sub_1001C0F4C()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001C1030()
{
  v1 = v0[9];
  v2 = v0[7];
  sub_1001C3F00();
  if (sub_100081D0C(v1, 1, v2) == 1)
  {
    sub_10013B1E8(v0[10], &qword_1003CDC70, &unk_1002FB7B0);
    sub_10013B1E8(v0[9], &qword_1003CDC70, &unk_1002FB7B0);

    sub_100098AC4();

    return v3();
  }

  else
  {
    sub_1001C53F4();
    v5 = swift_task_alloc();
    v0[12] = v5;
    *v5 = v0;
    v5[1] = sub_1001C11A8;
    sub_1000B06F4(v0[8]);

    return sub_1001C132C();
  }
}

uint64_t sub_1001C11A8()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001C128C()
{
  sub_1001C5364();
  sub_1001C5270(v1, v2);
  sub_10013B1E8(*(v0 + 80), &qword_1003CDC70, &unk_1002FB7B0);

  sub_100098AC4();

  return v3();
}

uint64_t sub_1001C132C()
{
  sub_10008BE9C();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v1[3] = v5;
  v1[4] = v6;
  v1[2] = v7;
  v1[9] = swift_getObjectType();
  v8 = type metadata accessor for URL();
  v1[10] = v8;
  sub_1000B046C(v8);
  v1[11] = v9;
  v1[12] = swift_task_alloc();
  v10 = type metadata accessor for SKLogger(0);
  v1[13] = v10;
  sub_1000B01B0(v10);
  v1[14] = swift_task_alloc();
  v11 = type metadata accessor for MessageServerResponse.MessageItem(0);
  v1[15] = v11;
  sub_1000B01B0(v11);
  v1[16] = swift_task_alloc();
  v12 = sub_10009F0B8();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_1001C1448()
{
  v48 = v0;
  sub_1001C50E8();
  sub_100107174();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[16];
  if (EnumCaseMultiPayload == 1)
  {
    v3 = v0[4];
    v4 = *v2;
    v5 = *(v2 + 8);
    v7 = *(v2 + 16);
    v6 = *(v2 + 24);
    if (v3)
    {
      v43 = *(v2 + 24);
      v44 = *(v2 + 8);
      v8 = v0[4];
LABEL_12:
      v0[17] = v8;
      v23 = qword_1003CBE58;
      v24 = v3;
      v25 = v8;
      if (v23 != -1)
      {
        sub_100081C08(&qword_1003CBE58);
      }

      v26 = v7;
      v0[18] = sub_10007EDA4(v0[13], qword_1003F26C8);
      sub_1001CA63C();
      v28 = v27;
      v30 = v29;
      if (qword_1003CBE50 != -1)
      {
        sub_1001C532C(&qword_1003CBE50);
      }

      v31 = v0[14];
      v32 = v0[5];
      v33 = v0[3];
      sub_10007EDA4(v0[13], qword_1003F26B0);
      sub_1001C534C();
      sub_1001C50E8();
      v34 = objc_allocWithZone(type metadata accessor for SubscriptionOfferRemoteAlert(0));
      v0[19] = sub_1001CE134(v33, v4, v44, v26, v43, v25, v32, v28, v30, 0, 0, v31);
      v35 = swift_task_alloc();
      v0[20] = v35;
      *v35 = v0;
      v35[1] = sub_1001C1878;

      return sub_1001CCDA4();
    }

    v22 = [objc_opt_self() currentConnection];
    if (v22)
    {
      v8 = v22;
      v43 = v6;
      v44 = v5;
      v3 = v0[4];
      goto LABEL_12;
    }

    if (qword_1003CBE50 != -1)
    {
      sub_1001C532C(&qword_1003CBE50);
    }

    v36 = v0[7];
    sub_100107C34(v0[13], qword_1003F26B0);
    static os_log_type_t.error.getter();
    sub_10019DE64();
    Logger.logObject.getter();
    sub_100107EE4();
    if (sub_10009F1F4())
    {
      sub_10008E688();
      sub_10019DB8C();
      sub_10019DAD0(4.8752e-34);
      v45 = v37;
      v46 = v38;
      v47 = v39;
      v40._countAndFlagsBits = sub_1001073E4();
      String.append(_:)(v40);
      sub_10009F134();
      sub_100080210(v46, v47, &v45);
      sub_1000B0494();
      sub_10013BBCC();
      *(v36 + 14) = sub_100080210(0xD000000000000043, 0x800000010031D370, &v45);
      sub_10013BF7C(&_mh_execute_header, v41, v42, "%{public}s%{public}s");
      sub_100106E34();
      sub_1000AFFE8();
      sub_1000D3E6C();
    }
  }

  else
  {
    (*(v0[11] + 32))(v0[12], v2, v0[10]);
    if (qword_1003CBE58 != -1)
    {
      sub_100081C08(&qword_1003CBE58);
    }

    v9 = v0[12];
    v10 = v0[10];
    v11 = v0[11];
    v12 = v0[8];
    v13 = v0[5];
    v14 = v0[3];
    sub_100107C34(v0[13], qword_1003F26C8);
    sub_1001CA63C();
    sub_1001C390C();
    v16 = v15;

    URL._bridgeToObjectiveC()(v17);
    v19 = v18;
    [v12 _showMessage:v18 forClient:v14 messageType:v13 useItmsUI:v16 & 1];

    (*(v11 + 8))(v9, v10);
  }

  sub_100098AC4();

  return v20();
}

uint64_t sub_1001C1878()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

void sub_1001C195C(uint64_t a1)
{
  v3 = v2[7];
  static os_log_type_t.default.getter();
  sub_10019DE64();
  Logger.logObject.getter();
  sub_100107EE4();
  v4 = sub_10009F1F4();
  v5 = v2[19];
  v6 = v2[17];
  if (v4)
  {
    sub_10008E688();
    sub_10019DB8C();
    sub_10019DAD0(4.8752e-34);
    v15 = v7;
    v16 = v8;
    v17 = v9;
    v10._countAndFlagsBits = sub_1001073E4();
    String.append(_:)(v10);
    sub_10009F134();
    sub_100080210(v16, v17, &v15);
    sub_1000B0494();
    sub_10013BBCC();
    *(v3 + 14) = sub_100080210(0xD000000000000026, 0x800000010031D3C0, &v15);
    sub_10013BF7C(&_mh_execute_header, v11, v12, "%{public}s%{public}s");
    sub_100106E34();
    sub_1000AFFE8();
    sub_1000D3E6C();
  }

  sub_100098AC4();
  sub_10008BE10();

  __asm { BRAA            X1, X16 }
}

void sub_1001C1B60()
{
  sub_100093D08();
  v106 = v0;
  v107 = v2;
  v110 = v3;
  v113 = v4;
  v5 = sub_100080FB4(&unk_1003CE2B0, &qword_1002EEE80);
  sub_1000B01B0(v5);
  sub_100089118();
  __chkstk_darwin(v6);
  v108 = &v101 - v7;
  v8 = type metadata accessor for ConsultMessageListenerTask(0);
  sub_1000890DC();
  v104 = v9;
  v11 = *(v10 + 64);
  __chkstk_darwin(v12);
  sub_1001C5588();
  v105 = v13;
  __chkstk_darwin(v14);
  v16 = (&v101 - v15);
  v17 = type metadata accessor for Client.Server(0);
  v18 = sub_1000B01B0(v17);
  __chkstk_darwin(v18);
  sub_100093D40();
  sub_10018ED2C();
  v19 = sub_100080FB4(&unk_1003D0540, &unk_1002EDD50);
  sub_1000B01B0(v19);
  sub_100089118();
  __chkstk_darwin(v20);
  v22 = &v101 - v21;
  v23 = type metadata accessor for URL();
  sub_1000890DC();
  v25 = v24;
  __chkstk_darwin(v26);
  sub_100093D40();
  v111 = v28 - v27;
  if (qword_1003CBE58 != -1)
  {
    sub_100081C08(&qword_1003CBE58);
  }

  v29 = type metadata accessor for SKLogger(0);
  sub_100107C34(v29, qword_1003F26C8);
  sub_1001CA63C();
  v109 = v30;
  v112 = v31;
  sub_1001C3F00();
  if (sub_100081D0C(v22, 1, v23) == 1)
  {
    sub_10013B1E8(v22, &unk_1003D0540, &unk_1002EDD50);
    if (qword_1003CBE50 != -1)
    {
      sub_1001C532C(&qword_1003CBE50);
    }

    sub_10007EDA4(v29, qword_1003F26B0);
    sub_1000B01F4();
    _StringGuts.grow(_:)(48);

    sub_1000C446C();
    v115 = 0xD000000000000027;
    v116 = v32;
    v114 = [v110 type];
    v33._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v33);

    v34._countAndFlagsBits = sub_1000B7E68();
    v34._object = 0xE500000000000000;
    String.append(_:)(v34);
    sub_1001C553C(OBJC_IVAR____TtC9storekitd6Client_requestBundleID);
    v36 = v115;
    v35 = v116;
    v37 = static os_log_type_t.error.getter();
    v38 = v112;

    v39 = Logger.logObject.getter();

    if (os_log_type_enabled(v39, v37))
    {
      v40 = sub_10008E688();
      v41 = sub_10008E670();
      *v40 = 136446466;
      sub_10016C84C(v41);
      v42._countAndFlagsBits = v109;
      v42._object = v38;
      String.append(_:)(v42);
      sub_10009F134();
      sub_1000B0340();
      sub_1000B02F8();
      *(v40 + 4) = v11;
      *(v40 + 12) = 2082;
      v43 = sub_100080210(v36, v35, &v114);

      *(v40 + 14) = v43;
      _os_log_impl(&_mh_execute_header, v39, v37, "%{public}s%{public}s", v40, 0x16u);
      sub_1000B0010();
      sub_100081C28(v41);
      sub_1000AFFE8();
    }

    else
    {
    }
  }

  else
  {
    v44 = (*(v25 + 32))(v111, v22, v23);
    sub_1001A7E5C(v44, v45, v46, v47, v48, v49, v50, v51, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112);
    v52 = sub_100080FB4(&qword_1003CCB50, &unk_1002F7130);
    if (sub_100081D0C(v1, 2, v52))
    {
      v103 = v23;
      sub_1001C5270(v1, type metadata accessor for Client.Server);
      if (qword_1003CBE50 != -1)
      {
        sub_1001C532C(&qword_1003CBE50);
      }

      v53 = sub_10007EDA4(v29, qword_1003F26B0);
      sub_1000B01F4();
      _StringGuts.grow(_:)(60);
      v54._object = 0x800000010031D420;
      v54._countAndFlagsBits = 0xD000000000000017;
      String.append(_:)(v54);
      v114 = [v110 type];
      v55._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v55);

      v56._countAndFlagsBits = 0xD000000000000021;
      v56._object = 0x800000010031D440;
      String.append(_:)(v56);
      sub_1001C553C(OBJC_IVAR____TtC9storekitd6Client_requestBundleID);
      v57 = static os_log_type_t.error.getter();
      v58 = v112;

      Logger.logObject.getter();
      sub_100107EE4();

      if (os_log_type_enabled(v53, v57))
      {
        v59 = sub_10008E688();
        v60 = sub_10008E670();
        *v59 = 136446466;
        sub_10016C84C(v60);
        v61._countAndFlagsBits = v109;
        v61._object = v58;
        String.append(_:)(v61);
        sub_10009F134();
        sub_1000B0340();
        sub_1000B02F8();
        v62 = sub_1001C5490();

        *(v59 + 14) = v62;
        sub_1001C55B0(&_mh_execute_header, v63, v64, "%{public}s%{public}s");
        swift_arrayDestroy();
        sub_100081C28(v60);
        sub_100081C28(v59);
      }

      else
      {
      }

      (*(v25 + 8))(v111, v103);
    }

    else
    {
      v65 = v25 + 8;
      v102 = *(v25 + 8);
      v102(v1, v23);
      v66 = v107;
      if (v107)
      {
        v101 = v25 + 8;
        v67 = *(v25 + 16);
        v68 = v16 + *(v8 + 32);
        v103 = v23;
        v67(v68, v111, v23);
        type metadata accessor for MessageServerResponse.MessageItem(0);
        swift_storeEnumTagMultiPayload();
        v69 = qword_1003CBE50;
        v70 = v66;
        v71 = v112;

        if (v69 != -1)
        {
          sub_1001C532C(&qword_1003CBE50);
        }

        sub_10007EDA4(v29, qword_1003F26B0);
        sub_1001C534C();
        sub_1001C50E8();
        v72 = v113;
        v16[2] = v113;
        v16[3] = v70;
        v73 = v109;
        v16[4] = v110;
        *v16 = v73;
        v16[1] = v71;
        v74 = type metadata accessor for TaskPriority();
        sub_1001C55D0(v108, v75, v76, v74);
        v107 = v70;
        sub_1001C50E8();
        sub_1001C5500();
        sub_1001C54E8();
        v77 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
        v78 = swift_allocObject();
        *(v78 + 16) = 0;
        *(v78 + 24) = 0;
        sub_1001C4254();
        v80 = v106;
        v79 = v107;
        *(v78 + v71) = v106;
        *(v78 + v29) = v72;
        *(v78 + v8) = v79;
        v81 = v109;
        v82 = v110;
        *(v78 + v77) = v110;
        v83 = (v78 + ((v77 + 15) & 0xFFFFFFFFFFFFFFF8));
        v84 = v112;
        *v83 = v81;
        v83[1] = v84;
        v85 = v72;
        v86 = v82;
        v87 = v85;
        v88 = v86;
        v89 = v80;
        sub_1001C5454();
        sub_100165CBC();

        sub_1001C5270(v16, type metadata accessor for ConsultMessageListenerTask);
        v102(v111, v103);
      }

      else
      {
        if (qword_1003CBE50 != -1)
        {
          sub_1001C532C(&qword_1003CBE50);
        }

        v90 = sub_10007EDA4(v29, qword_1003F26B0);
        sub_1000B01F4();
        _StringGuts.grow(_:)(53);
        v91._countAndFlagsBits = 0xD000000000000033;
        v91._object = 0x800000010031D470;
        String.append(_:)(v91);
        sub_1001C553C(OBJC_IVAR____TtC9storekitd6Client_requestBundleID);
        v92 = static os_log_type_t.error.getter();
        v93 = v112;

        Logger.logObject.getter();
        sub_100107EE4();

        if (os_log_type_enabled(v90, v92))
        {
          v94 = sub_10008E688();
          v95 = sub_10008E670();
          v101 = v65;
          v96 = v95;
          *v94 = 136446466;
          sub_10016C84C(v95);
          v97._countAndFlagsBits = v109;
          v97._object = v93;
          String.append(_:)(v97);
          sub_10009F134();
          sub_1000B0340();
          sub_1000B02F8();
          v98 = sub_1001C5490();

          *(v94 + 14) = v98;
          sub_1001C55B0(&_mh_execute_header, v99, v100, "%{public}s%{public}s");
          swift_arrayDestroy();
          sub_100081C28(v96);
          sub_100081C28(v94);
        }

        else
        {
        }

        v102(v111, v23);
      }
    }
  }

  sub_100093CB8();
}

uint64_t sub_1001C2598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = v12;
  v8[7] = v13;
  v8[4] = a7;
  v8[5] = a8;
  v8[2] = a5;
  v8[3] = a6;
  sub_100080FB4(&unk_1003CCCB8, &unk_1002EF450);
  v8[8] = swift_task_alloc();
  v8[9] = type metadata accessor for MessageServerResponse.MessageItem(0);
  v8[10] = swift_task_alloc();
  v9 = swift_task_alloc();
  v8[11] = v9;
  *v9 = v8;
  v9[1] = sub_1001C26B0;

  return sub_100094C6C();
}

uint64_t sub_1001C26B0()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001C2794()
{
  v1 = v0[8];
  if (sub_100081D0C(v1, 1, v0[9]) == 1)
  {
    sub_10013B1E8(v1, &unk_1003CCCB8, &unk_1002EF450);

    sub_100098AC4();

    return v2();
  }

  else
  {
    v4 = v0[5];
    sub_1001C4254();
    [v4 type];
    v5 = swift_task_alloc();
    v0[12] = v5;
    *v5 = v0;
    v5[1] = sub_1001C28E8;
    sub_1000B06F4(v0[10]);

    return sub_1001C132C();
  }
}

uint64_t sub_1001C28E8()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001C29CC()
{
  sub_10008BE9C();
  sub_1001C5270(*(v0 + 80), type metadata accessor for MessageServerResponse.MessageItem);

  sub_100098AC4();

  return v1();
}

void sub_1001C2B7C()
{
  sub_100093D08();
  sub_1001C5518();
  v68 = v3;
  ObjectType = swift_getObjectType();
  v5 = sub_100080FB4(&unk_1003CE2B0, &qword_1002EEE80);
  sub_1000B01B0(v5);
  sub_100089118();
  __chkstk_darwin(v6);
  sub_10018ED2C();
  type metadata accessor for MessageServerRequest(0);
  sub_1000890DC();
  v67 = v7;
  __chkstk_darwin(v8);
  sub_1001C5588();
  v66 = v9;
  v11 = __chkstk_darwin(v10);
  v13 = &v58 - v12;
  if (v1 && v0)
  {
    v62 = v11;
    v63 = ObjectType;
    v14 = qword_1003CBE58;
    v15 = v1;
    v16 = v0;
    if (v14 != -1)
    {
      sub_100081C08(&qword_1003CBE58);
    }

    v17 = type metadata accessor for SKLogger(0);
    sub_100107C34(v17, qword_1003F26C8);
    sub_1001CA63C();
    v64 = v18;
    v20 = v19;
    if (qword_1003CBE50 != -1)
    {
      sub_1001C532C(&qword_1003CBE50);
    }

    v21 = sub_10007EDA4(v17, qword_1003F26B0);
    sub_1000B01F4();
    _StringGuts.grow(_:)(44);

    sub_1000C446C();
    v70 = 0xD000000000000023;
    v71 = v22;
    v69 = [v15 type];
    v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v23);

    v24._countAndFlagsBits = sub_1000B7E68();
    v24._object = 0xE500000000000000;
    String.append(_:)(v24);
    v61 = v16;
    v25 = *&v16[OBJC_IVAR____TtC9storekitd6Client_requestBundleID];
    v26 = *&v16[OBJC_IVAR____TtC9storekitd6Client_requestBundleID + 8];

    v27._countAndFlagsBits = v25;
    v27._object = v26;
    String.append(_:)(v27);

    v28 = v71;
    v59 = v70;

    v29 = static os_log_type_t.default.getter();

    v60 = v21;
    v30 = Logger.logObject.getter();

    v31 = os_log_type_enabled(v30, v29);
    v65 = v15;
    if (v31)
    {
      v32 = sub_10008E688();
      v58 = v2;
      v33 = v32;
      v34 = sub_10008E670();
      *v33 = 136446466;
      sub_10016C84C(v34);
      v35._countAndFlagsBits = v64;
      v35._object = v20;
      String.append(_:)(v35);
      sub_10009F134();
      v36 = v29;
      v37 = v20;
      v38 = sub_1000B0340();

      *(v33 + 4) = v38;
      v20 = v37;
      *(v33 + 12) = 2082;
      v39 = sub_100080210(v59, v28, &v69);

      *(v33 + 14) = v39;
      _os_log_impl(&_mh_execute_header, v30, v36, "%{public}s%{public}s", v33, 0x16u);
      sub_1000B0010();
      v40 = v34;
      v15 = v65;
      sub_100081C28(v40);
      v41 = v33;
      v2 = v58;
      sub_100081C28(v41);
    }

    else
    {
    }

    v42 = v61;
    v61 = v42;
    v43 = [v15 status];
    v44 = [v43 integerValue];

    v45 = [v15 type];
    *v13 = v42;
    *(v13 + 1) = v44;
    *(v13 + 2) = v45;
    v13[24] = 0;
    v46 = v64;
    *(v13 + 4) = v64;
    *(v13 + 5) = v20;
    v47 = v62;
    sub_1001C534C();
    sub_1001C50E8();
    v48 = *(v47 + 36);
    v49 = objc_opt_self();

    *&v13[v48] = [v49 sharedManager];
    v50 = type metadata accessor for TaskPriority();
    sub_1001C55D0(v2, v51, v52, v50);
    sub_1001C53D8();
    sub_1001C50E8();
    sub_1001C5500();
    v67 = v13;
    sub_1001C54E8();
    v53 = swift_allocObject();
    sub_1001C53B8(v53);
    sub_1001C4254();
    v54 = v68;
    *(v49 + v2) = v68;
    *(v49 + v28) = v61;
    v55 = &v15[v49];
    *v55 = v46;
    v55[1] = v20;
    *(v49 + ((v15 + 23) & 0xFFFFFFFFFFFFFFF8)) = v63;
    v56 = v54;
    sub_1001C5454();
    sub_100165CBC();

    sub_1001C5424();
    sub_1001C5270(v67, v57);
  }

  sub_100093CB8();
}

uint64_t sub_1001C307C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[7] = type metadata accessor for MessageServerResponse(0);
  v8[8] = swift_task_alloc();
  sub_100080FB4(&qword_1003CDC70, &unk_1002FB7B0);
  v8[9] = swift_task_alloc();
  v9 = swift_task_alloc();
  v8[10] = v9;
  v10 = swift_task_alloc();
  v8[11] = v10;
  *v10 = v8;
  v10[1] = sub_1001C3198;

  return sub_1000D41E4(v9);
}

uint64_t sub_1001C3198()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001C327C()
{
  v38 = v0;
  v1 = v0[9];
  v2 = v0[7];
  sub_1001C3F00();
  if (sub_100081D0C(v1, 1, v2) == 1)
  {
    sub_10013B1E8(v0[10], &qword_1003CDC70, &unk_1002FB7B0);
    v3 = sub_100107174();
    goto LABEL_3;
  }

  sub_1001C53F4();
  if (*(v1 + *(v2 + 20)))
  {
    if (qword_1003CBE50 != -1)
    {
      sub_1001C532C(&qword_1003CBE50);
    }

    v8 = v0[7];
    v7 = v0[8];
    v9 = v0[4];
    v10 = type metadata accessor for SKLogger(0);
    sub_10007EDA4(v10, qword_1003F26B0);
    v36 = 0;
    v37 = 0xE000000000000000;
    _StringGuts.grow(_:)(78);
    v11._object = 0x800000010031D320;
    v11._countAndFlagsBits = 0xD00000000000001CLL;
    String.append(_:)(v11);
    v0[2] = *(v7 + *(v8 + 24));
    v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v12);

    v13._countAndFlagsBits = sub_1000B7E68();
    v13._object = 0xE500000000000000;
    String.append(_:)(v13);
    String.append(_:)(*(v9 + OBJC_IVAR____TtC9storekitd6Client_requestBundleID));
    v14._countAndFlagsBits = 0xD000000000000029;
    v14._object = 0x800000010031D340;
    String.append(_:)(v14);
    v15 = v37;
    v16 = static os_log_type_t.default.getter();

    v17 = Logger.logObject.getter();

    v18 = os_log_type_enabled(v17, v16);
    v19 = v0[10];
    v20 = v0[8];
    if (v18)
    {
      v33 = v36;
      v21 = v0[5];
      v22 = v0[6];
      v23 = sub_10008E688();
      v24 = sub_10008E670();
      *v23 = 136446466;
      v35 = v24;
      v36 = 91;
      v37 = 0xE100000000000000;
      v34 = v19;
      v25._countAndFlagsBits = v21;
      v25._object = v22;
      String.append(_:)(v25);
      sub_10009F134();
      v26 = sub_100080210(91, 0xE100000000000000, &v35);

      *(v23 + 4) = v26;
      *(v23 + 12) = 2082;
      v27 = sub_100080210(v33, v15, &v35);

      *(v23 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v17, v16, "%{public}s%{public}s", v23, 0x16u);
      swift_arrayDestroy();
      sub_100081C28(v24);
      sub_100081C28(v23);

      sub_1001C5364();
      sub_1001C5270(v20, v28);
      v4 = &qword_1003CDC70;
      v3 = v34;
    }

    else
    {

      sub_1001C5364();
      sub_1001C5270(v20, v32);
      v4 = &qword_1003CDC70;
      v3 = v19;
    }

LABEL_3:
    sub_10013B1E8(v3, v4, &unk_1002FB7B0);

    sub_100098AC4();
    sub_10008BE10();

    __asm { BRAA            X1, X16 }
  }

  v29 = swift_task_alloc();
  v0[12] = v29;
  *v29 = v0;
  v29[1] = sub_1001C3690;
  sub_1000B06F4(v0[8]);
  sub_10008BE10();

  return sub_1001C132C();
}

uint64_t sub_1001C3690()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001C3774()
{
  sub_10008BE9C();
  v1 = *(v0 + 80);
  sub_1001C5364();
  sub_1001C5270(v2, v3);
  sub_10013B1E8(v1, &qword_1003CDC70, &unk_1002FB7B0);

  sub_100098AC4();

  return v4();
}

uint64_t sub_1001C3890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for SKLogger(0);
  sub_1001C52C4(v3, qword_1003F26B0);
  v4 = sub_1001073F0();
  sub_10007EDA4(v4, v5);
  return Logger.init(subsystem:category:)();
}

void sub_1001C390C()
{
  sub_100093D08();
  v1 = v0;
  type metadata accessor for URL();
  sub_1000890DC();
  __chkstk_darwin(v2);
  sub_100093D40();
  sub_10018ED2C();
  type metadata accessor for SKLogger(0);
  sub_100098B7C();
  __chkstk_darwin(v3);
  sub_100093D40();
  if (!sub_1001A79F8())
  {
    v4 = sub_1001A7AB4();
    sub_1001881F8(v1, v4);
    swift_unknownObjectRelease();
  }

  sub_100093CB8();
}

uint64_t sub_1001C3C60()
{
  sub_100093D08();
  type metadata accessor for MessageServerRequest(0);
  sub_1001C5574();
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = (*(v4 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v6 = (v1 + v3);

  v7 = *(v0 + 40);
  type metadata accessor for Logger();
  sub_10013B618();
  (*(v8 + 8))(v6 + v7);

  sub_100093CB8();

  return _swift_deallocObject(v9, v10, v11);
}

uint64_t sub_1001C3D8C()
{
  sub_1000EDD30();
  sub_1000EDA60();
  v0 = type metadata accessor for MessageServerRequest(0);
  sub_1000B046C(v0);
  sub_1001C5398();
  v1 = swift_task_alloc();
  v2 = sub_1001C5480(v1);
  *v2 = v3;
  sub_1001C54D0(v2);
  sub_1000EDC30();

  return sub_1001C307C(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1001C3EA4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v6 = String.UTF16View.index(_:offsetBy:)();
    sub_1001C5524(v6);
    return v7 | 4;
  }

  else
  {
    v3 = String.UTF8View._foreignIndex(_:offsetBy:)();
    sub_1001C5524(v3);
    return v4 | 8;
  }
}

uint64_t sub_1001C3F00()
{
  sub_1001C5518();
  sub_100080FB4(v1, v2);
  sub_100098B7C();
  v3 = sub_1001073F0();
  v4(v3);
  return v0;
}

uint64_t sub_1001C3F58()
{
  sub_100093D08();
  v2 = type metadata accessor for ConsultMessageListenerTask(0);
  v3 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v4 = *(*(v2 - 8) + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3 + *(v2 + 32);
  type metadata accessor for MessageServerResponse.MessageItem(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    type metadata accessor for URL();
    sub_10013B618();
    (*(v6 + 8))(v5);
  }

  sub_1001C5464();
  v7 = *(v2 + 36);
  type metadata accessor for Logger();
  sub_10013B618();
  (*(v8 + 8))(v0 + v3 + v7);

  sub_100093CB8();

  return _swift_deallocObject(v9, v10, v11);
}

uint64_t sub_1001C4100(uint64_t a1)
{
  v2 = type metadata accessor for ConsultMessageListenerTask(0);
  sub_1000B046C(v2);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  sub_1001C5398();
  v17 = *(v1 + v5);
  v7 = *(v1 + v6);
  v9 = *(v1 + v8);
  v10 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = swift_task_alloc();
  v14 = sub_1001C5480(v13);
  *v14 = v15;
  v14[1] = sub_1000AFC98;

  return sub_1001C2598(a1, v11, v12, v1 + v4, v17, v7, v9, v10);
}

uint64_t sub_1001C4254()
{
  sub_1001C5518();
  v1(0);
  sub_100098B7C();
  v2 = sub_1001073F0();
  v3(v2);
  return v0;
}

uint64_t sub_1001C42AC()
{
  sub_100093D08();
  type metadata accessor for MessageServerRequest(0);
  sub_1001C5574();
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  sub_1001C5464();
  swift_unknownObjectRelease();
  v7 = (v1 + v6);

  v8 = *(v0 + 40);
  type metadata accessor for Logger();
  sub_10013B618();
  (*(v9 + 8))(v7 + v8);

  sub_100093CB8();

  return _swift_deallocObject(v10, v11, v12);
}

uint64_t sub_1001C43CC()
{
  sub_1000EDD30();
  sub_1000EDA60();
  v0 = type metadata accessor for MessageServerRequest(0);
  sub_1000B046C(v0);
  sub_1001C5398();
  v1 = swift_task_alloc();
  v2 = sub_1001C5480(v1);
  *v2 = v3;
  sub_1001C54D0(v2);
  sub_1000EDC30();

  return sub_1001C0E28(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1001C44E4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1001C453C()
{
  sub_1000EDD30();
  sub_1000EDA60();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000A7644;
  sub_1000EDC30();

  return sub_1001C00BC(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1001C4608@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = Data.InlineData.init(_:)();
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      v8 = __DataStorage.init(bytes:length:)();
      if (a2 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_1001C46D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  v5[2] = v6;
  return sub_1001C4C64(sub_1001C51FC, v5, a1, a2);
}

uint64_t sub_1001C4724(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v5 = v2;
  v7 = *v2;
  v6 = v2[1];
  switch(v6 >> 62)
  {
    case 1uLL:
      v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

      sub_10008E168(v7, v6);
      *v5 = xmmword_1002F9160;
      sub_10008E168(0, 0xC000000000000000);
      v13 = v7 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v13 < v7)
      {
        goto LABEL_23;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v7, __DataStorage._offset.getter()))
      {
        goto LABEL_24;
      }

      type metadata accessor for __DataStorage();
      swift_allocObject();
      v14 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v12 = v14;
LABEL_16:
      if (v13 < v7)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v4 = sub_1001C4CC8(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (v3)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    case 2uLL:
      v4 = v6 & 0x3FFFFFFFFFFFFFFFLL;

      sub_10008E168(v7, v6);
      v17 = v7;
      v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
      *v5 = xmmword_1002F9160;
      sub_10008E168(0, 0xC000000000000000);
      Data.LargeSlice.ensureUniqueReference()();
      v7 = v17;
      v10 = sub_1001C4CC8(*(v17 + 16), *(v17 + 24), a1);
      if (v3)
      {
        v11 = v18 | 0x8000000000000000;
LABEL_18:
        *v5 = v7;
        v5[1] = v11;
      }

      else
      {
        v4 = v10;
        v11 = v18 | 0x8000000000000000;
LABEL_20:
        *v5 = v7;
        v5[1] = v11;
      }

      return v4;
    case 3uLL:
      memset(v19, 0, 15);
      a1(&v17, v19, v19);
      if (!v3)
      {
        return v17;
      }

      return v4;
    default:
      v4 = v7 >> 8;
      sub_10008E168(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        v4 = v17;
      }

      v9 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v5 = v19[0];
      v5[1] = v9;
      return v4;
  }
}

uint64_t sub_1001C4AF8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = Data.InlineData.init(_:)();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = Data.LargeSlice.init(_:)();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = Data.InlineSlice.init(_:)();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1001C4B70(uint64_t a1, unint64_t a2, uint64_t a3)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v8 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_11;
      }

      a1 = a1;
      v6 = v8;
LABEL_9:
      result = sub_1001C4E50(a1, v6);
      if (v3)
      {
        goto LABEL_10;
      }

      return result;
    case 2uLL:
      v5 = *(a1 + 24);
      a1 = *(a1 + 16);
      v6 = v5;
      goto LABEL_9;
    case 3uLL:
      a1 = 0;
      v4 = 0;
      goto LABEL_5;
    default:
      v4 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      result = sub_1001C4D7C(a1, v4);
      if (v3)
      {
LABEL_10:

        __break(1u);
LABEL_11:
        __break(1u);
        JUMPOUT(0x1001C4C0CLL);
      }

      return result;
  }
}

uint64_t sub_1001C4C1C(uint64_t result)
{
  if (result)
  {
    result = _StringGuts.copyUTF8(into:)();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1001C4C64(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a4 - a3;
    v7 = a3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result = a1(&v9, v7, v6);
  if (!v4)
  {
    return v9;
  }

  __break(1u);
  return result;
}

char *sub_1001C4CC8(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = __DataStorage._length.getter();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_1001C4D7C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Insecure.SHA1();
  sub_1001C5198(&qword_1003CEB10, &type metadata accessor for Insecure.SHA1, &protocol conformance descriptor for Insecure.SHA1);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t sub_1001C4E50(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      type metadata accessor for Insecure.SHA1();
      sub_1001C5198(&qword_1003CEB10, &type metadata accessor for Insecure.SHA1, &protocol conformance descriptor for Insecure.SHA1);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1001C4F30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1001C46D0(a1, a2, *a3, a3[1]);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    a4[3] = v9;
  }

  return result;
}

uint64_t sub_1001C4F68@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1001C4C1C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1001C4FA8(uint64_t a1)
{
  v7[3] = type metadata accessor for StoreKitMessageAnalyticsEvent(0);
  v7[4] = &off_10038A5B8;
  sub_10009E720(v7);
  sub_1001C50E8();
  v1 = String._bridgeToObjectiveC()();
  sub_10015490C(v7, v6);
  v2 = swift_allocObject();
  sub_1000F2C78(v6, v2 + 16);
  v5[4] = sub_1001C5178;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_1001BF1C0;
  v5[3] = &unk_10038EAA8;
  v3 = _Block_copy(v5);

  AnalyticsSendEventLazy();
  _Block_release(v3);

  return sub_100080F0C(v7);
}

uint64_t sub_1001C50E8()
{
  sub_1001C5518();
  v1(0);
  sub_100098B7C();
  v2 = sub_1001073F0();
  v3(v2);
  return v0;
}

uint64_t sub_1001C5140()
{
  sub_100080F0C((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1001C5180(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001C5198(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1001C521C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
  }
}

uint64_t sub_1001C5270(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_10013B618();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t *sub_1001C52C4(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1001C532C(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1001C537C(uint64_t result, float a2)
{
  *v2 = a2;
  *(v3 - 112) = 91;
  *(v3 - 104) = 0xE100000000000000;
  *(v3 - 96) = result;
  return result;
}

uint64_t sub_1001C53B8(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_1001C53F4()
{

  return sub_1001C4254();
}

unint64_t sub_1001C5490()
{
  *(v2 + 4) = v3;
  *(v2 + 12) = 2082;

  return sub_100080210(v1, v0, (v4 - 104));
}

uint64_t sub_1001C54D0(uint64_t a1)
{
  *(a1 + 8) = v1;
  *(v3 + 16) = v2;
  return *(v3 + 24);
}

void sub_1001C553C(uint64_t a1@<X8>)
{
  v3 = (*(v1 - 112) + a1);
  v4 = *v3;
  v5 = v3[1];

  String.append(_:)(*&v4);
}

void sub_1001C5558(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v5, a3, a4, v4, 0x16u);
}

void sub_1001C55B0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t sub_1001C55D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_100081DFC(a1, 1, 1, a4);
}

uint64_t sub_1001C55F8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E656B6F74 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1001C5680(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100080FB4(&qword_1003D1580, &qword_1002F92E8);
  sub_1000890DC();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = &v11 - v8;
  sub_100086D24(a1, a1[3]);
  sub_1001C59F4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v6 + 8))(v9, v4);
}

void *sub_1001C57B4(void *a1)
{
  v3 = sub_100080FB4(&qword_1003D1590, &qword_1002F92F0);
  sub_1000890DC();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v11 - v7;
  v9 = sub_100086D24(a1, a1[3]);
  sub_1001C59F4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v5 + 8))(v8, v3);
  }

  sub_100080F0C(a1);
  return v9;
}

uint64_t sub_1001C5908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001C55F8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1001C5934(uint64_t a1)
{
  v2 = sub_1001C59F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001C5970(uint64_t a1)
{
  v2 = sub_1001C59F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1001C59AC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1001C57B4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_1001C59F4()
{
  result = qword_1003D1588;
  if (!qword_1003D1588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1588);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ExternalGatewayResponse.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x1001C5AE4);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1001C5B20()
{
  result = qword_1003D1598;
  if (!qword_1003D1598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D1598);
  }

  return result;
}

unint64_t sub_1001C5B78()
{
  result = qword_1003D15A0;
  if (!qword_1003D15A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D15A0);
  }

  return result;
}

unint64_t sub_1001C5BD0()
{
  result = qword_1003D15A8;
  if (!qword_1003D15A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D15A8);
  }

  return result;
}

uint64_t sub_1001C5C2C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 67))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001C5C6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 66) = 0;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 67) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 67) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001C5CD4()
{
  v1[68] = v0;
  v2 = type metadata accessor for URL();
  v1[69] = v2;
  v1[70] = *(v2 - 8);
  v1[71] = swift_task_alloc();
  v1[72] = type metadata accessor for SKLogger(0);
  v1[73] = swift_task_alloc();
  v1[74] = swift_task_alloc();
  v1[75] = swift_task_alloc();
  v1[76] = swift_task_alloc();
  v1[77] = swift_task_alloc();
  sub_100080FB4(&unk_1003D0540, &unk_1002EDD50);
  v1[78] = swift_task_alloc();
  v1[79] = swift_task_alloc();
  v1[80] = swift_task_alloc();
  v1[81] = swift_task_alloc();
  v1[82] = swift_task_alloc();
  v1[83] = swift_task_alloc();

  return _swift_task_switch(sub_1001C5E68, 0, 0);
}

uint64_t sub_1001C5E68()
{
  v1 = v0[82];
  v2 = v0[69];
  sub_100081DFC(v0[83], 1, 1, v2);
  sub_100081DFC(v1, 1, 1, v2);
  if (qword_1003CC0C8 != -1)
  {
    swift_once();
  }

  v3 = v0[68];
  v4 = qword_1003F2930;
  v0[84] = qword_1003F2930;
  v5 = objc_allocWithZone(AMSLookup);
  swift_unknownObjectRetain_n();

  v6 = sub_1001C9ED0(v4);
  v0[85] = v6;
  v7 = sub_1001A8808();
  v0[86] = v7;
  [v7 setAccountMediaType:AMSAccountMediaTypeProduction];
  [v6 setClientInfo:v7];
  v8 = String._bridgeToObjectiveC()();
  [v6 setPlatform:v8];

  sub_100080FB4(&unk_1003D2720, &qword_1002ED4B0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1002ED290;
  v10 = *(v3 + 8);
  v0[87] = v10;
  v11 = *(v3 + 16);
  v0[88] = v11;
  *(v9 + 32) = v10;
  *(v9 + 40) = v11;

  v12 = sub_1001CA2F8(0, v9, v6);
  v0[89] = v12;
  v0[2] = v0;
  v0[7] = v0 + 67;
  v0[3] = sub_1001C6128;
  v13 = swift_continuation_init();
  v0[62] = sub_100080FB4(&qword_1003D15B0, &unk_1002F9490);
  v0[55] = _NSConcreteStackBlock;
  v0[56] = 1107296256;
  v0[57] = sub_1000D67A8;
  v0[58] = &unk_10038EC78;
  v0[59] = v13;
  [v12 resultWithCompletion:v0 + 55];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1001C6128()
{
  v1 = *(*v0 + 48);
  *(*v0 + 720) = v1;
  if (v1)
  {
    v2 = sub_1001C7190;
  }

  else
  {
    v2 = sub_1001C6238;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1001C6238()
{
  v123 = v1;
  v2 = v1[67];
  v3 = [v2 allItems];
  sub_10008E5A4(0, &qword_1003D15B8, AMSLookupItem_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = &unk_1002F8000;
  if (!sub_1000AFC90(v4))
  {

    sub_1001CA458();
    if (!v74)
    {
      sub_100081C08(&qword_1003CBE58);
    }

    v12 = v1[75];
    v13 = sub_1001CA464();
    sub_1001CA4A0(v13, qword_1003F26C8);
    sub_1001CA388(v0, (v1 + 46));
    v14 = v12;
    Logger.logObject.getter();
    sub_1001461BC();
    sub_10013B618();
    (*(v15 + 8))(v12);
    v16 = static os_log_type_t.error.getter();
    sub_1001CA3C0(v0);
    if (os_log_type_enabled(v14, v16))
    {
      v17 = v1[88];
      v18 = v1[87];
      v19 = v1[68];
      v20 = swift_slowAlloc();
      v118 = v2;
      v21 = sub_1001CA470();
      v122[0] = v21;
      *v20 = 136446722;
      *(v20 + 4) = sub_1001CA40C("ProductLookupTask");
      *(v20 + 12) = 2082;
      *(v20 + 14) = sub_100080210(*(v19 + 40), *(v19 + 48), v122);
      *(v20 + 22) = 2082;
      *(v20 + 24) = sub_100080210(v18, v17, v122);
      _os_log_impl(&_mh_execute_header, v14, v16, "[%{public}s][%{public}s]: Lookup for %{public}s completed without an item", v20, 0x20u);
      swift_arrayDestroy();
      v22 = v21;
      v2 = v118;
      sub_100081C28(v22);
      sub_100081C28(v20);
    }

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = objc_allocWithZone(NSError);
    sub_1001CA430();
    swift_willThrow();

    goto LABEL_11;
  }

  v117 = v2;
  sub_10017C8AC();
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v6 = *(v4 + 32);
  }

  v7 = v6;

  v8 = [v7 itemDictionary];
  v114 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = [v7 productPageURL];
  if (v9)
  {
    v10 = v9;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v35 = v1[83];
  v36 = v1[81];
  v37 = v1[69];
  sub_10013B1E8(v35, &unk_1003D0540, &unk_1002EDD50);
  sub_100081DFC(v36, v11, 1, v37);
  sub_1000B71B8(v36, v35);
  v40 = sub_1001C74D4(v7, v38, v39);
  v41 = sub_1001CA1A0(v7);
  if (!v42)
  {

LABEL_24:
    v115 = 0;
    v120 = 0;
LABEL_31:
    sub_1001CA458();
    if (!v74)
    {
      sub_100081C08(&qword_1003CBE58);
    }

    v63 = v1[73];
    v64 = sub_1001CA464();
    sub_1001CA4A0(v64, qword_1003F26C8);
    sub_1001CA388(v36, (v1 + 19));

    v65 = v63;
    Logger.logObject.getter();
    sub_1001461BC();
    sub_10013B618();
    (*(v66 + 8))(v63);
    v67 = static os_log_type_t.default.getter();
    sub_1001CA3C0(v36);
    if (os_log_type_enabled(v63, v67))
    {
      v68 = v1[88];
      v69 = v1[87];
      v70 = v5;
      v71 = v1[68];
      v72 = swift_slowAlloc();
      v73 = sub_1001CA470();
      v122[0] = v73;
      *v72 = v70[85];
      *(v72 + 4) = sub_1001CA40C("ProductLookupTask");
      *(v72 + 12) = 2082;
      *(v72 + 14) = sub_100080210(*(v71 + 40), *(v71 + 48), v122);
      *(v72 + 22) = 2082;
      *(v72 + 24) = sub_100080210(v69, v68, v122);
      *(v72 + 32) = 1024;
      v75 = 0;
      if (v120)
      {
        v74 = v115 == 0xD000000000000027 && v120 == 0x800000010031D6A0;
        if (v74 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v75 = 1;
        }
      }

      *(v72 + 34) = v75;

      _os_log_impl(&_mh_execute_header, v65, v67, "[%{public}s][%{public}s]: Lookup for %{public}s completed. App Store: %{BOOL}d", v72, 0x26u);
      swift_arrayDestroy();
      sub_100081C28(v73);
      sub_100081C28(v72);
    }

    else
    {
    }

    v110 = v1[89];
    v111 = v1[86];
    v112 = v1[85];
    v76 = v1[83];
    v77 = v1[82];
    v78 = v1[79];
    v79 = v1[78];
    v80 = v1[68];
    sub_10008B634(v76, v78, &unk_1003D0540, &unk_1002EDD50);
    v81 = *(v80 + 64);
    v82 = *(v80 + 56);
    sub_10008B634(v77, v79, &unk_1003D0540, &unk_1002EDD50);
    v83 = *(v80 + 66);
    v84 = objc_allocWithZone(SKProductLookupResponse);

    v85 = sub_1001C9F70(v114, v115, v120, v78, v81, v82, v79, v83);

    swift_unknownObjectRelease();
    sub_10013B1E8(v77, &unk_1003D0540, &unk_1002EDD50);
    sub_10013B1E8(v76, &unk_1003D0540, &unk_1002EDD50);

    v86 = v1[1];

    return v86(v85);
  }

  v43 = v42;
  if (v40)
  {

    sub_1001CA458();
    if (!v74)
    {
      sub_100081C08(&qword_1003CBE58);
    }

    v44 = v1[77];
    v45 = v1[68];
    sub_1001CA4A0(v1[72], qword_1003F26C8);
    sub_1001CA388(v45, (v1 + 37));
    v46 = v44;
    Logger.logObject.getter();
    sub_1001461BC();
    sub_10013B618();
    (*(v47 + 8))(v44);
    v36 = static os_log_type_t.default.getter();
    sub_1001CA3C0(v45);
    if (os_log_type_enabled(v44, v36))
    {
      v48 = v1[68];
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v122[0] = v50;
      *v49 = 136446466;
      *(v49 + 4) = sub_1001CA40C("ProductLookupTask");
      *(v49 + 12) = 2082;
      v51 = *(v48 + 40);
      v52 = *(v48 + 48);
      v5 = &unk_1002F8000;
      *(v49 + 14) = sub_100080210(v51, v52, v122);
      _os_log_impl(&_mh_execute_header, v46, v36, "[%{public}s][%{public}s]: Treating item for lookup as an article", v49, 0x16u);
      swift_arrayDestroy();
      sub_100081C28(v50);
      sub_100081C28(v49);
    }

    v120 = 0x800000010031D6A0;
    v115 = 0xD000000000000027;
    goto LABEL_31;
  }

  if ((*(v1[68] + 65) & 1) != 0 || (v87 = v41, v1[63] = v41, v1[64] = v42, v88 = swift_task_alloc(), *(v88 + 16) = v1 + 63, v36 = 0, v89 = sub_100178848(sub_1001060A4, v88, &off_100383C90), , !v89) && (v1[65] = v87, v1[66] = v43, v90 = swift_task_alloc(), *(v90 + 16) = v1 + 65, v91 = sub_100178848(sub_1001CA3F0, v90, &off_100383D00), , !v91))
  {

    v115 = sub_1001C873C(v7, v60, v61);
    v120 = v62;

    goto LABEL_31;
  }

  v92 = v1[80];
  v93 = v1[69];
  sub_10008B634(v1[83], v92, &unk_1003D0540, &unk_1002EDD50);
  if (sub_100081D0C(v92, 1, v93) != 1)
  {
    v102 = v1[82];
    v103 = v1[80];
    v36 = v1[79];
    v104 = v1[71];
    v105 = v1[70];
    v106 = v1[69];
    v107 = v1[68];

    (*(v105 + 32))(v104, v103, v106);
    sub_1001C77E8(v104, *(v107 + 56), v36);

    (*(v105 + 8))(v104, v106);
    sub_10013B1E8(v102, &unk_1003D0540, &unk_1002EDD50);
    v108 = v106;
    v5 = &unk_1002F8000;
    sub_100081DFC(v36, 0, 1, v108);
    sub_1000B71B8(v36, v102);
    goto LABEL_24;
  }

  sub_10013B1E8(v1[80], &unk_1003D0540, &unk_1002EDD50);
  sub_1001CA458();
  if (!v74)
  {
    sub_100081C08(&qword_1003CBE58);
  }

  v94 = v1[76];
  v95 = sub_1001CA464();
  sub_1001CA4A0(v95, qword_1003F26C8);
  sub_1001CA388(0, (v1 + 28));

  v96 = v94;
  Logger.logObject.getter();
  sub_1001461BC();
  sub_10013B618();
  (*(v97 + 8))(v94);
  v98 = static os_log_type_t.error.getter();
  sub_1001CA3C0(0);

  if (os_log_type_enabled(v96, v98))
  {
    v116 = v1[88];
    v113 = v1[87];
    v99 = v1[68];
    v100 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v122[0] = v121;
    *v100 = 136446978;
    *(v100 + 4) = sub_1001CA40C("ProductLookupTask");
    *(v100 + 12) = 2082;
    *(v100 + 14) = sub_100080210(*(v99 + 40), *(v99 + 48), v122);
    *(v100 + 22) = 2082;
    *(v100 + 24) = sub_100080210(v113, v116, v122);
    *(v100 + 32) = 2080;
    v101 = sub_100080210(v87, v43, v122);

    *(v100 + 34) = v101;
    _os_log_impl(&_mh_execute_header, v96, v98, "[%{public}s][%{public}s]: Lookup for %{public}s (%s) is missing a URL", v100, 0x2Au);
    swift_arrayDestroy();
    sub_100081C28(v121);
    sub_100081C28(v100);
  }

  else
  {
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v109 = objc_allocWithZone(NSError);
  sub_1001CA430();
  swift_willThrow();

LABEL_11:
  sub_1001CA458();
  if (!v74)
  {
    sub_100081C08(&qword_1003CBE58);
  }

  v24 = v1[74];
  v25 = v1[68];
  sub_1001CA4A0(v1[72], qword_1003F26C8);
  sub_1001CA388(v25, (v1 + 10));
  swift_errorRetain();
  v26 = v24;
  Logger.logObject.getter();
  sub_1001461BC();
  sub_10013B618();
  (*(v27 + 8))(v24);
  v28 = static os_log_type_t.error.getter();
  sub_1001CA3C0(v25);

  if (os_log_type_enabled(v24, v28))
  {
    v119 = v1[88];
    v29 = v1[87];
    v30 = v1[68];
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = sub_1001CA470();
    v122[0] = v33;
    *v31 = 136446978;
    *(v31 + 4) = sub_1001CA40C("ProductLookupTask");
    *(v31 + 12) = 2082;
    *(v31 + 14) = sub_100080210(*(v30 + 40), *(v30 + 48), v122);
    *(v31 + 22) = 2082;
    *(v31 + 24) = sub_100080210(v29, v119, v122);
    *(v31 + 32) = 2112;
    v34 = _convertErrorToNSError(_:)();
    *(v31 + 34) = v34;
    *v32 = v34;
    _os_log_impl(&_mh_execute_header, v26, v28, "[%{public}s][%{public}s]: Lookup for %{public}s completed with error: %@", v31, 0x2Au);
    sub_10013B1E8(v32, &qword_1003D18D0, &qword_1002F7FE0);
    sub_100081C28(v32);
    swift_arrayDestroy();
    sub_100081C28(v33);
    sub_100081C28(v31);
  }

  else
  {
  }

  v53 = v1[89];
  v54 = v1[86];
  v55 = v1[85];
  v56 = v1[83];
  v57 = v1[82];
  swift_willThrow();

  swift_unknownObjectRelease();
  sub_1001CA488(v57);
  sub_1001CA488(v56);

  v58 = v1[1];

  return v58();
}