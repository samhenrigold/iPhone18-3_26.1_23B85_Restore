void sub_100192C08(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  *&v7 = __chkstk_darwin(v4, v6).n128_u64[0];
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = [a1 objectID];
  v28 = [a1 remObjectID];
  v10 = [a1 name];
  if (v10)
  {
    v11 = v10;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v13;
    v27 = v12;
  }

  else
  {
    v26 = 0;
    v27 = 0;
  }

  v14 = [a1 shouldAutoCategorizeItems];
  v15 = [a1 shouldCategorizeGroceryItems];
  v16 = [a1 shouldSuggestConversionToGroceryList];
  if (v15)
  {
    v17 = [a1 groceryLocaleID];
    if (v17)
    {
      v18 = v17;
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;
    }

    else
    {
      v19 = 0;
      v21 = 0;
    }
  }

  else
  {
    static Locale.current.getter();
    v19 = Locale.identifier.getter();
    v21 = v22;
    (*(v5 + 8))(v9, v4);
  }

  v23 = [a1 sharingStatus];

  v24 = v28;
  *a2 = v29;
  *(a2 + 8) = v24;
  v25 = v26;
  *(a2 + 16) = v27;
  *(a2 + 24) = v25;
  *(a2 + 32) = v14;
  *(a2 + 33) = v15;
  *(a2 + 34) = v16;
  *(a2 + 40) = v19;
  *(a2 + 48) = v21;
  *(a2 + 56) = v23 == 2;
}

uint64_t sub_100192E28(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v262 = a2;
  v263 = a1;
  v255 = sub_1000F5104(&unk_10093A3D0, &qword_100795770);
  __chkstk_darwin(v255, v11);
  v258 = &v248 - v12;
  v13 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v13 - 8, v14);
  v16 = &v248 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v18);
  v253 = &v248 - v19;
  __chkstk_darwin(v20, v21);
  v256 = &v248 - v22;
  __chkstk_darwin(v23, v24);
  v257 = &v248 - v25;
  v254 = _s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa(0);
  v26 = *(v254 - 8);
  __chkstk_darwin(v254, v27);
  v29 = &v248 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30, v31);
  v261 = &v248 - v32;
  v33 = type metadata accessor for UUID();
  v34 = *(v33 - 8);
  v264 = v33;
  v265 = v34;
  __chkstk_darwin(v33, v35);
  v37 = &v248 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38, v39);
  v41 = &v248 - v40;
  __chkstk_darwin(v42, v43);
  v266 = &v248 - v44;
  v267 = a6;
  v259 = a6;
  v260 = a7;
  v268 = a7;
  sub_10013BCF4();
  v45 = StringProtocol.lowercased(with:)();
  v53 = v46;
  if (!a3)
  {
    goto LABEL_39;
  }

  v252 = v45;
  v54 = a3;
  v55 = [v54 groupIdentifier];
  if (v55)
  {
    v251 = v54;
    v63 = v55;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v64 = v265;
    v65 = v266;
    v66 = *(v265 + 32);
    v67 = v41;
    v68 = v264;
    v66(v266, v67, v264);
    if (*(a4 + 16))
    {
      v69 = sub_100363F20(v65);
      v65 = v266;
      if (v70)
      {
        sub_100193AB0(*(a4 + 56) + *(v26 + 72) * v69, v29);
        v71 = v261;
        sub_100193B14(v29, v261);
        if (!v263)
        {
          goto LABEL_32;
        }

        v72 = &selRef_setPublicLinkLastModifiedDate_;
        v73 = [v263 memberships];
        v250 = sub_1000060C8(0, &qword_10093A540, REMTimestampedUUID_ptr);
        v74 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        if (*(v74 + 16) && (v82 = sub_100005F4C(v252, v53), (v75 & 1) != 0))
        {
          v83 = *(*(v74 + 56) + 8 * v82);
          v74, v84, v85, v86, v87, v88, v89, v90;
          v248 = v83;
          v91 = [v83 identifier];
          v249 = v53;
          if (v91)
          {
            v92 = v257;
            v93 = v91;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v94 = 0;
          }

          else
          {
            v94 = 1;
            v92 = v257;
          }

          v221 = v264;
          v220 = v265;
          v222 = *(v265 + 56);
          v222(v92, v94, 1, v264);
          v223 = v256;
          (*(v220 + 16))(v256, v261, v221);
          v222(v223, 0, 1, v221);
          v224 = *(v255 + 48);
          v225 = v258;
          sub_10018E470(v92, v258);
          sub_10018E470(v223, v225 + v224);
          v226 = *(v220 + 48);
          if (v226(v225, 1, v221) == 1)
          {

            sub_1000050A4(v223, &unk_100939D90, "8\n\r");
            v227 = v258;
            sub_1000050A4(v92, &unk_100939D90, "8\n\r");
            v228 = v226(v227 + v224, 1, v221);
            v68 = v221;
            v53 = v249;
            if (v228 == 1)
            {
              sub_1000050A4(v227, &unk_100939D90, "8\n\r");
              v149 = v251;
              v71 = v261;
LABEL_63:
              v53, v229, v230, v231, v232, v233, v234, v235;

LABEL_64:
              sub_100193BC4(v71, _s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa);
              (*(v265 + 8))(v266, v68);
              goto LABEL_40;
            }
          }

          else
          {
            v236 = v253;
            sub_10018E470(v225, v253);
            if (v226(v225 + v224, 1, v221) != 1)
            {
              v66(v37, (v225 + v224), v221);
              sub_10018E4E0();
              v245 = v225;
              v246 = dispatch thunk of static Equatable.== infix(_:_:)();

              v247 = *(v265 + 8);
              v247(v37, v221);
              sub_1000050A4(v256, &unk_100939D90, "8\n\r");
              sub_1000050A4(v257, &unk_100939D90, "8\n\r");
              v247(v236, v221);
              sub_1000050A4(v245, &unk_100939D90, "8\n\r");
              v68 = v221;
              v149 = v251;
              v53 = v249;
              v71 = v261;
              v72 = &selRef_setPublicLinkLastModifiedDate_;
              if (v246)
              {
                goto LABEL_63;
              }

              goto LABEL_28;
            }

            sub_1000050A4(v256, &unk_100939D90, "8\n\r");
            v227 = v258;
            sub_1000050A4(v257, &unk_100939D90, "8\n\r");
            (*(v265 + 8))(v236, v221);
            v68 = v221;
            v53 = v249;
          }

          sub_1000050A4(v227, &unk_10093A3D0, &qword_100795770);
          v149 = v251;
          v71 = v261;
          v72 = &selRef_setPublicLinkLastModifiedDate_;
        }

        else
        {
          v74, v75, v76, v77, v78, v79, v80, v81;
          v149 = v251;
        }

LABEL_28:
        v150 = [v263 v72[203]];
        v151 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        if (*(v151 + 16))
        {
          sub_100005F4C(v252, v53);
          if (v152)
          {
            v53, v152, v153, v154, v155, v156, v157, v158;

            v151, v159, v160, v161, v162, v163, v164, v165;
LABEL_66:
            sub_100193BC4(v71, _s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa);
            (*(v265 + 8))(v266, v68);
            v140 = 1;
            return v140 & 1;
          }
        }

        v151, v152, v153, v154, v155, v156, v157, v158;
        v64 = v265;
LABEL_32:
        v166 = v262;
        if (v262)
        {
          v167 = v251;
          if (*(v262 + 16))
          {
            v168 = sub_100005F4C(v259, v260);
            if (v169)
            {
              v170 = (*(v166 + 56) + 16 * v168);
              v172 = *v170;
              v171 = v170[1];

              v53, v173, v174, v175, v176, v177, v178, v179;
LABEL_46:
              v211 = (v71 + *(v254 + 20));
              v212 = v211[1];
              if (v212)
              {
                if (*v211 != v172 || v212 != v171)
                {
                  v237 = _stringCompareWithSmolCheck(_:_:expecting:)();
                  v171, v238, v239, v240, v241, v242, v243, v244;

                  sub_100193BC4(v71, _s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa);
                  (*(v265 + 8))(v266, v68);
                  v140 = (v237 & 1) == 0;
                  return v140 & 1;
                }

                v171, v212, v180, v181, v182, v183, v184, v185;

                goto LABEL_64;
              }

              sub_100193BC4(v71, _s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa);
              (*(v265 + 8))(v266, v68);
              v139 = v171;
              goto LABEL_20;
            }

            if (*(v166 + 16))
            {
              v201 = sub_100005F4C(v252, v53);
              v203 = v202;
              v53, v202, v204, v205, v206, v207, v208, v209;
              if ((v203 & 1) == 0)
              {

                goto LABEL_66;
              }

              v210 = (*(v166 + 56) + 16 * v201);
              v172 = *v210;
              v171 = v210[1];

              goto LABEL_46;
            }
          }
        }

        else
        {
        }

        v53, v194, v195, v196, v197, v198, v199, v200;
        sub_100193BC4(v71, _s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa);
        (*(v64 + 8))(v266, v68);
        v140 = 1;
        return v140 & 1;
      }
    }

    v53, v95, v96, v97, v98, v99, v100, v101;
    (*(v64 + 8))(v65, v68);
LABEL_40:
    v140 = 0;
    return v140 & 1;
  }

  v102 = v263;
  if (!v263)
  {
LABEL_22:
    v141 = v262;
    if (!v262)
    {
      v53, v56, v57, v58, v59, v60, v61, v62;

      goto LABEL_40;
    }

    if (*(v262 + 16))
    {
      sub_100005F4C(v259, v260);
      if (v142)
      {
        v53, v142, v143, v144, v145, v146, v147, v148;

        v140 = 1;
        return v140 & 1;
      }

      if (*(v141 + 16))
      {
        sub_100005F4C(v252, v53);
        v140 = v186;
        v53, v186, v187, v188, v189, v190, v191, v192;

        return v140 & 1;
      }
    }

LABEL_39:
    v53, v46, v47, v48, v49, v50, v51, v52;
    goto LABEL_40;
  }

  v103 = [v263 memberships];
  sub_1000060C8(0, &qword_10093A540, REMTimestampedUUID_ptr);
  v104 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v104 + 16) && (v112 = sub_100005F4C(v252, v53), (v105 & 1) != 0))
  {
    v113 = *(*(v104 + 56) + 8 * v112);
    v104, v114, v115, v116, v117, v118, v119, v120;
    v121 = [v113 identifier];
    if (!v121)
    {

      v53, v213, v214, v215, v216, v217, v218, v219;
      (*(v265 + 56))(v16, 1, 1, v264);
      sub_1000050A4(v16, &unk_100939D90, "8\n\r");
      goto LABEL_40;
    }

    v122 = v121;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v265 + 56))(v16, 0, 1, v264);
    sub_1000050A4(v16, &unk_100939D90, "8\n\r");
  }

  else
  {
    v104, v105, v106, v107, v108, v109, v110, v111;
  }

  v123 = [v102 memberships];
  v124 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v124 + 16) || (sub_100005F4C(v252, v53), (v125 & 1) == 0))
  {
    v124, v125, v126, v127, v128, v129, v130, v131;
    goto LABEL_22;
  }

  v53, v125, v126, v127, v128, v129, v130, v131;

  v139 = v124;
LABEL_20:
  v139, v132, v133, v134, v135, v136, v137, v138;
  v140 = 1;
  return v140 & 1;
}

uint64_t _s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa(uint64_t a1)
{
  result = qword_10093A5E8;
  if (!qword_10093A5E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100193AB0(uint64_t a1, uint64_t a2)
{
  v4 = _s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100193B14(uint64_t a1, uint64_t a2)
{
  v4 = _s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100193BC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100193C24(void *a1, unint64_t a2, uint64_t a3, void *a4)
{
  v233 = a3;
  v242 = a4;
  v237 = sub_1000F5104(&unk_10093A3D0, &qword_100795770);
  __chkstk_darwin(v237, v6);
  v243 = &v219 - v7;
  v8 = type metadata accessor for REMRemindersListDataView.AutoCategorizationMessage();
  v238 = *(v8 - 8);
  __chkstk_darwin(v8, v9);
  v11 = &v219 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v13);
  v227 = (&v219 - v14);
  __chkstk_darwin(v15, v16);
  v228 = &v219 - v17;
  v18 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v19 = *(v18 - 8);
  __chkstk_darwin(v18 - 8, v20);
  v22 = &v219 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23, v24);
  v26 = &v219 - v25;
  __chkstk_darwin(v27, v28);
  v236 = &v219 - v29;
  __chkstk_darwin(v30, v31);
  v240 = &v219 - v32;
  __chkstk_darwin(v33, v34);
  v232 = (&v219 - v35);
  __chkstk_darwin(v36, v37);
  v229 = &v219 - v38;
  __chkstk_darwin(v39, v40);
  v230 = &v219 - v41;
  v250 = type metadata accessor for UUID();
  v244 = *(v250 - 8);
  __chkstk_darwin(v250, v42);
  v44 = (&v219 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v45, v46);
  v48 = (&v219 - v47);
  __chkstk_darwin(v49, v50);
  v231 = &v219 - v51;
  *&v54 = __chkstk_darwin(v52, v53).n128_u64[0];
  v239 = &v219 - v55;
  v245 = a1;
  v56 = [a1 name];
  if (v56)
  {
    v57 = a2;
    v58 = v56;
    v235 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v241 = v59;

    a2 = v57;
  }

  else
  {
    v235 = 0;
    v241 = 0;
  }

  v234 = v8;
  v60 = a2 >> 62;
  v61 = v250;
  if (a2 >> 62)
  {
    if ((a2 & 0x8000000000000000) != 0)
    {
      v89 = a2;
    }

    else
    {
      v89 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    v249 = v89;
    v62 = _CocoaArrayWrapper.endIndex.getter();
    if (v62 == 1)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_61;
      }

      goto LABEL_6;
    }
  }

  else
  {
    v62 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v62 == 1)
    {
LABEL_6:
      if ((a2 & 0xC000000000000001) != 0)
      {
        goto LABEL_79;
      }

      if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v63 = *(a2 + 32);
        goto LABEL_9;
      }

      __break(1u);
      goto LABEL_81;
    }
  }

  if (v62 < 2)
  {
    goto LABEL_61;
  }

  v226 = (a2 >> 62);
  v251 = &_swiftEmptyArrayStorage;
  v246 = v62;
  sub_100253218(0, v62, 0);
  v90 = 0;
  v44 = v251;
  v247 = a2;
  v91 = a2 & 0xC000000000000001;
  v249 = (v244 + 56);
  do
  {
    if (v91)
    {
      v92 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v92 = *(v247 + 8 * v90 + 32);
    }

    v93 = v92;
    v94 = [v92 groupIdentifier];
    if (v94)
    {
      v95 = v94;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v96 = 0;
    }

    else
    {
      v96 = 1;
    }

    v248 = *v249;
    v248(v22, v96, 1, v61);
    sub_100100FB4(v22, v26);
    v251 = v44;
    v98 = *v44->clientIdentity;
    v97 = *&v44->clientIdentity[8];
    if (v98 >= v97 >> 1)
    {
      sub_100253218((v97 > 1), v98 + 1, 1);
      v44 = v251;
    }

    ++v90;
    *v44->clientIdentity = v98 + 1;
    v11 = ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v60 = *(v19 + 72);
    sub_100100FB4(v26, &v11[v44 + v60 * v98]);
    v61 = v250;
  }

  while (v246 != v90);
  if (v226)
  {
    v106 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v106 = *((v247 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v107 = v238;
  v26 = v230;
  v22 = v229;
  if (v106)
  {
    if (!v91)
    {
      if (!*((v247 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
      }

      v108 = *(v247 + 32);
      goto LABEL_39;
    }

LABEL_81:
    v108 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_39:
    v109 = v108;
    v110 = v243;
    v111 = [v108 groupIdentifier];

    if (v111)
    {
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v112 = 0;
    }

    else
    {
      v112 = 1;
    }

    v113 = v244;
    v48 = v232;
    v248(v22, v112, 1, v61);
    sub_100100FB4(v22, v26);
    v114 = v113[6];
    v223 = (v113 + 6);
    v229 = v114;
    if ((v114)(v26, 1, v61) == 1)
    {
      v44, v115, v116, v117, v118, v119, v120, v121;
      v107 = v238;
      goto LABEL_45;
    }

    v138 = v113[4];
    v221 = v113 + 4;
    v220 = v138;
    v138(v239, v26, v61);
    v225 = *v44->clientIdentity;
    if (!v225)
    {
      v44, v139, v140, v141, v142, v143, v144, v145;
      v193 = v113[2];
LABEL_71:
      v194 = sub_1000F5104(&qword_10093A550, &qword_100797758);
      v195 = *(v194 + 48);
      v196 = *(v194 + 64);
      v197 = v227;
      *v227 = v246;
      v193(&v197[v195], v239, v61);
      v198 = type metadata accessor for Date();
      (*(*(v198 - 8) + 16))(&v197[v196], v233, v198);
      v199 = v238;
      v200 = v234;
      (*(v238 + 104))(v197, enum case for REMRemindersListDataView.AutoCategorizationMessage.manyRemindersToOneSection(_:), v234);
      REMRemindersListDataView.AutoCategorizationMessage.encodedString.getter();
      if (v201)
      {
        v202 = v201;
        v203 = String._bridgeToObjectiveC()();
        v202, v204, v205, v206, v207, v208, v209, v210;
      }

      else
      {
        v203 = 0;
      }

      [v245 setName:{v203, v219}];

      (*(v199 + 8))(v197, v200);
      (*(v244 + 8))(v239, v61);
      goto LABEL_61;
    }

    v146 = 0;
    v222 = (v113 + 1);
    v147 = &v11[v44];
    v226 = (v113 + 2);
    v219 = (v113 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v11 = v223;
    v148 = v110;
    while (v146 < *v44->clientIdentity)
    {
      v230 = v146;
      v247 = v147;
      sub_10018E470(v147, v48);
      v149 = v48;
      v150 = v240;
      v224 = *v226;
      v224(v240, v239, v61);
      v248(v150, 0, 1, v61);
      v151 = v11;
      v152 = *(v237 + 48);
      sub_10018E470(v149, v148);
      sub_10018E470(v150, v148 + v152);
      v153 = v229;
      if ((v229)(v148, 1, v61) == 1)
      {
        v154 = v150;
        v48 = v149;
        sub_1000050A4(v154, &unk_100939D90, "8\n\r");
        sub_1000050A4(v149, &unk_100939D90, "8\n\r");
        if (v153(v148 + v152, 1, v61) != 1)
        {
          (*v222)(v239, v61);
          v44, v211, v212, v213, v214, v215, v216, v217;
          v123 = v233;
          v122 = v234;
          v107 = v238;
          v124 = v228;
          v170 = v148;
LABEL_77:
          sub_1000050A4(v170, &unk_10093A3D0, &qword_100795770);
          goto LABEL_47;
        }

        v11 = v151;
        sub_1000050A4(v148, &unk_100939D90, "8\n\r");
      }

      else
      {
        v162 = v236;
        sub_10018E470(v148, v236);
        v170 = v148;
        if (v153(v148 + v152, 1, v61) == 1)
        {
          v44, v163, v164, v165, v166, v167, v168, v169;
          sub_1000050A4(v240, &unk_100939D90, "8\n\r");
          sub_1000050A4(v232, &unk_100939D90, "8\n\r");
          v218 = *v222;
          (*v222)(v239, v61);
          v218(v162, v61);
          v123 = v233;
          v122 = v234;
          v107 = v238;
          v124 = v228;
          goto LABEL_77;
        }

        v171 = v231;
        v220(v231, v148 + v152, v61);
        sub_10018E4E0();
        v172 = dispatch thunk of static Equatable.== infix(_:_:)();
        v173 = *v222;
        (*v222)(v171, v61);
        sub_1000050A4(v240, &unk_100939D90, "8\n\r");
        v48 = v232;
        sub_1000050A4(v232, &unk_100939D90, "8\n\r");
        v173(v236, v61);
        sub_1000050A4(v243, &unk_100939D90, "8\n\r");
        v11 = v223;
        if ((v172 & 1) == 0)
        {
          v173(v239, v61);
          v44, v174, v175, v176, v177, v178, v179, v180;
          v122 = v234;
          v107 = v238;
          goto LABEL_46;
        }
      }

      v146 = v230 + 1;
      v147 = v247 + v60;
      v148 = v243;
      if (v225 == v230 + 1)
      {
        v44, v155, v156, v157, v158, v159, v160, v161;
        v193 = v224;
        goto LABEL_71;
      }
    }

    __break(1u);
LABEL_79:
    v63 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_9:
    v64 = v63;
    v65 = [v63 groupIdentifier];
    if (v65)
    {
      v66 = v61;
      v67 = v65;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v68 = [v64 memberIdentifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v69 = sub_1000F5104(&qword_10093A558, &qword_100797760);
      v70 = *(v69 + 48);
      v71 = *(v69 + 64);
      v72 = *(v244 + 16);
      v72(v11, v44, v66);
      v73 = v66;
      v74 = v234;
      v72(&v11[v70], v48, v73);
      v75 = type metadata accessor for Date();
      (*(*(v75 - 8) + 16))(&v11[v71], v233, v75);
      v76 = v238;
      (*(v238 + 104))(v11, enum case for REMRemindersListDataView.AutoCategorizationMessage.oneReminderToOneSection(_:), v74);
      REMRemindersListDataView.AutoCategorizationMessage.encodedString.getter();
      if (v77)
      {
        v78 = v77;
        v79 = String._bridgeToObjectiveC()();
        v78, v80, v81, v82, v83, v84, v85, v86;
      }

      else
      {
        v79 = 0;
      }

      [v245 setName:v79];

      (*(v76 + 8))(v11, v74);
      v87 = *(v244 + 8);
      v88 = v250;
      v87(v44, v250);
      v87(v48, v88);
    }

    else
    {
    }

    goto LABEL_61;
  }

  v44, v99, v100, v101, v102, v103, v104, v105;
  v248(v26, 1, 1, v61);
LABEL_45:
  sub_1000050A4(v26, &unk_100939D90, "8\n\r");
  v122 = v234;
LABEL_46:
  v123 = v233;
  v124 = v228;
LABEL_47:
  v125 = v246;
  v126 = *(sub_1000F5104(&qword_10093A548, &qword_100797750) + 48);
  *v124 = v125;
  v127 = type metadata accessor for Date();
  (*(*(v127 - 8) + 16))(&v124[v126], v123, v127);
  (*(v107 + 104))(v124, enum case for REMRemindersListDataView.AutoCategorizationMessage.manyRemindersToManySections(_:), v122);
  REMRemindersListDataView.AutoCategorizationMessage.encodedString.getter();
  if (v128)
  {
    v129 = v128;
    v130 = String._bridgeToObjectiveC()();
    v129, v131, v132, v133, v134, v135, v136, v137;
  }

  else
  {
    v130 = 0;
  }

  [v245 setName:{v130, v219}];

  (*(v107 + 8))(v124, v122);
LABEL_61:
  v251 = 0;
  if ([v242 save:&v251])
  {
    v181 = v241;
    if (v241)
    {
      v182 = v251;
      v183 = String._bridgeToObjectiveC()();
    }

    else
    {
      v185 = v251;
      v183 = 0;
    }
  }

  else
  {
    v184 = v251;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v181 = v241;
    if (v241)
    {
      v183 = String._bridgeToObjectiveC()();
    }

    else
    {
      v183 = 0;
    }
  }

  [v245 setName:v183];
  v181, v186, v187, v188, v189, v190, v191, v192;
}

uint64_t *sub_100194C20(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v16 = *a2;
    *a1 = *a2;
    a1 = (v16 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = type metadata accessor for UUID();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 20);
    v9 = *(a3 + 24);
    v10 = (a1 + v8);
    v11 = (a2 + v8);
    v12 = v11[1];
    *v10 = *v11;
    v10[1] = v12;
    v13 = (a1 + v9);
    v14 = (a2 + v9);
    v15 = v14[1];
    *v13 = *v14;
    v13[1] = v15;
  }

  return a1;
}

double sub_100194D0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(a1, v4);
  *(a1 + *(a2 + 20) + 8), v5, v6, v7, v8, v9, v10, v11;
  v19 = *(a1 + *(a2 + 24) + 8);

  v19, v12, v13, v14, v15, v16, v17, v18;
  return result;
}

uint64_t sub_100194D94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = *(a3 + 24);
  v9 = (a1 + v7);
  v10 = (a2 + v7);
  v11 = v10[1];
  *v9 = *v10;
  v9[1] = v11;
  v12 = (a1 + v8);
  v13 = (a2 + v8);
  v14 = v13[1];
  *v12 = *v13;
  v12[1] = v14;

  return a1;
}

uint64_t sub_100194E34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  *v8 = *v9;
  v10 = v8[1];
  v8[1] = v9[1];

  v10, v11, v12, v13, v14, v15, v16, v17;
  v18 = *(a3 + 24);
  v19 = (a1 + v18);
  v20 = (a2 + v18);
  *v19 = *v20;
  v21 = v19[1];
  v19[1] = v20[1];

  v21, v22, v23, v24, v25, v26, v27, v28;
  return a1;
}

uint64_t sub_100194EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + v7) = *(a2 + v7);
  return a1;
}

uint64_t sub_100194F80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  v11 = *v9;
  v10 = v9[1];
  v12 = v8[1];
  *v8 = v11;
  v8[1] = v10;
  v12, v13, v14, v15, v16, v17, v18, v19;
  v20 = *(a3 + 24);
  v21 = (a1 + v20);
  v22 = (a2 + v20);
  v24 = *v22;
  v23 = v22[1];
  v25 = v21[1];
  *v21 = v24;
  v21[1] = v23;
  v25, v26, v27, v28, v29, v30, v31, v32;
  return a1;
}

uint64_t sub_100195050(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

double _s9UtilitiesO44REMCDReminderThreadSafePartialRepresentationVwxx(uint64_t a1)
{
  v9 = *(a1 + 16);

  v9, v2, v3, v4, v5, v6, v7, v8;
  return result;
}

void *sub_100195134(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  a1[2] = *(a2 + 16);
  v5 = v3;

  return a1;
}

uint64_t _s9UtilitiesO44REMCDReminderThreadSafePartialRepresentationVwca(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a1 + 16);
  *(a1 + 16) = v7;

  v8, v9, v10, v11, v12, v13, v14, v15;
  return a1;
}

uint64_t _s9UtilitiesO44REMCDReminderThreadSafePartialRepresentationVwta(uint64_t a1, void *a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = a2[2];
  v6 = *(a1 + 16);
  *(a1 + 8) = a2[1];
  *(a1 + 16) = v5;
  v6, v7, v8, v9, v10, v11, v12, v13;
  return a1;
}

uint64_t getEnumTagSinglePayload for RDSavedDueDateDeltaAlert(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for RDSavedDueDateDeltaAlert(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double _s9UtilitiesO40REMCDListThreadSafePartialRepresentationVwxx(uint64_t a1)
{
  *(a1 + 24), v2, v3, v4, v5, v6, v7, v8;
  v16 = *(a1 + 48);

  v16, v9, v10, v11, v12, v13, v14, v15;
  return result;
}

uint64_t _s9UtilitiesO40REMCDListThreadSafePartialRepresentationVwcp(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  v6 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v6;
  *(a1 + 56) = *(a2 + 56);
  v7 = v3;
  v8 = v4;

  return a1;
}

uint64_t _s9UtilitiesO40REMCDListThreadSafePartialRepresentationVwca(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a1 + 8);
  v8 = *(a2 + 8);
  *(a1 + 8) = v8;
  v9 = v8;

  *(a1 + 16) = *(a2 + 16);
  v10 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);

  v10, v11, v12, v13, v14, v15, v16, v17;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  *(a1 + 34) = *(a2 + 34);
  *(a1 + 40) = *(a2 + 40);
  v18 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);

  v18, v19, v20, v21, v22, v23, v24, v25;
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

__n128 _s9UtilitiesO40REMCDListThreadSafePartialRepresentationVwtk(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t _s9UtilitiesO40REMCDListThreadSafePartialRepresentationVwta(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;

  v5 = *(a2 + 24);
  v6 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;
  v6, v7, v8, v9, v10, v11, v12, v13;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  *(a1 + 34) = *(a2 + 34);
  v14 = *(a2 + 48);
  v15 = *(a1 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v14;
  v15, v16, v17, v18, v19, v20, v21, v22;
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t _s9UtilitiesO40REMCDListThreadSafePartialRepresentationVwet(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t _s9UtilitiesO40REMCDListThreadSafePartialRepresentationVwst(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001955C4(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000F5104(&qword_100936FA8, &qword_100791B70);
  __chkstk_darwin(v9 - 8, v10);
  v12 = v33 - v11;
  sub_100010364(a3, v33 - v11, &qword_100936FA8, &qword_100791B70);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1000050A4(v12, &qword_100936FA8, &qword_100791B70);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v34[0] = 0;
        v34[1] = 0;
        v22 = v34;
        v34[2] = v17;
        v34[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v33[1] = 7;
      v33[2] = v22;
      v33[3] = v20;
      v24 = swift_task_create();

      sub_1000050A4(a3, &qword_100936FA8, &qword_100791B70);
      a2, v25, v26, v27, v28, v29, v30, v31;

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000050A4(a3, &qword_100936FA8, &qword_100791B70);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v34[4] = 0;
    v34[5] = 0;
    v34[6] = v17;
    v34[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1001958C4(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000F5104(&qword_100936FA8, &qword_100791B70);
  __chkstk_darwin(v9 - 8, v10);
  v12 = v33 - v11;
  sub_100010364(a3, v33 - v11, &qword_100936FA8, &qword_100791B70);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1000050A4(v12, &qword_100936FA8, &qword_100791B70);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v34[0] = 0;
        v34[1] = 0;
        v22 = v34;
        v34[2] = v17;
        v34[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v33[1] = 7;
      v33[2] = v22;
      v33[3] = v20;
      v24 = swift_task_create();

      sub_1000050A4(a3, &qword_100936FA8, &qword_100791B70);
      a2, v25, v26, v27, v28, v29, v30, v31;

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000050A4(a3, &qword_100936FA8, &qword_100791B70);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v34[4] = 0;
    v34[5] = 0;
    v34[6] = v17;
    v34[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_100195BBC()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093A628);
  v1 = sub_100006654(v0, qword_10093A628);
  if (qword_1009364C0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975188);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100195C84(unint64_t a1)
{
  v251 = *v1;
  v3 = sub_1000F5104(&qword_100936FA8, &qword_100791B70);
  __chkstk_darwin(v3 - 8, v4);
  v234 = &v224 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v7);
  v246 = &v224 - v8;
  v245 = type metadata accessor for REMUrgentReminder();
  v237 = *(v245 - 8);
  __chkstk_darwin(v245, v9);
  v233 = &v224 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = v10;
  __chkstk_darwin(v11, v12);
  v244 = &v224 - v13;
  v14 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v14 - 8, v15);
  v17 = (&v224 - v16);
  v18 = type metadata accessor for UUID();
  v242 = *(v18 - 8);
  __chkstk_darwin(v18, v19);
  v250 = &v224 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21, v22);
  v253 = &v224 - v23;
  __chkstk_darwin(v24, v25);
  v232 = &v224 - v26;
  __chkstk_darwin(v27, v28);
  v227 = &v224 - v29;
  __chkstk_darwin(v30, v31);
  v33 = &v224 - v32;
  v34 = sub_1000F5104(&qword_10093A6F8, &qword_100797B38);
  __chkstk_darwin(v34 - 8, v35);
  v37 = &v224 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38, v39);
  v235 = (&v224 - v40);
  __chkstk_darwin(v41, v42);
  v230 = &v224 - v43;
  v252 = sub_1000F5104(&qword_10093A700, &qword_100797B40);
  v247 = *(v252 - 8);
  __chkstk_darwin(v252, v44);
  v228 = &v224 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46, v47);
  v241 = (&v224 - v48);
  __chkstk_darwin(v49, v50);
  v240 = &v224 - v51;
  __chkstk_darwin(v52, v53);
  v231 = &v224 - v54;
  __chkstk_darwin(v55, v56);
  v248 = (&v224 - v57);
  __chkstk_darwin(v58, v59);
  v243 = &v224 - v60;
  __chkstk_darwin(v61, v62);
  v238 = (&v224 - v63);
  __chkstk_darwin(v64, v65);
  v229 = &v224 - v66;
  if (qword_100935B08 != -1)
  {
    goto LABEL_84;
  }

  while (1)
  {
    v67 = type metadata accessor for Logger();
    sub_100006654(v67, qword_10093A628);

    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 134217984;
      *(v70 + 4) = *(a1 + 16);
      a1, v71, v72, v73, v74, v75, v76, v77;
      _os_log_impl(&_mh_execute_header, v68, v69, "RDUrgentAlarmConsumer consume %ld producerAlarms", v70, 0xCu);
    }

    else
    {

      a1, v78, v79, v80, v81, v82, v83, v84;
    }

    v236 = v37;
    v85 = *(a1 + 16);
    v249 = v17;
    v86 = v230;
    v87 = 0;
    if (v85)
    {
      v88 = (v247 + 48);
      v89 = (a1 + 66);
      v90 = &_swiftEmptyArrayStorage;
      do
      {
        v91 = *v89;
        v92 = *(v89 - 1);
        v93 = *(v89 - 2);
        v94 = *(v89 - 10);
        v259 = *(v89 - 34);
        v260 = *(v89 - 26);
        v261 = v94;
        v262 = v93;
        v263 = v92;
        v264 = v91;
        sub_100197254(&v259, v86);
        if ((*v88)(v86, 1, v252) == 1)
        {
          sub_1000050A4(v86, &qword_10093A6F8, &qword_100797B38);
        }

        else
        {
          v95 = v229;
          sub_100031B58(v86, v229, &qword_10093A700, &qword_100797B40);
          sub_100031B58(v95, v238, &qword_10093A700, &qword_100797B40);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v90 = sub_1003666F4(0, *v90->clientIdentity + 1, 1, v90);
          }

          v97 = *v90->clientIdentity;
          v96 = *&v90->clientIdentity[8];
          v98 = v90;
          v86 = v230;
          if (v97 >= v96 >> 1)
          {
            v98 = sub_1003666F4((v96 > 1), v97 + 1, 1, v90);
          }

          *v98->clientIdentity = v97 + 1;
          v90 = v98;
          sub_100031B58(v238, v98 + ((*(v247 + 80) + 32) & ~*(v247 + 80)) + *(v247 + 72) * v97, &qword_10093A700, &qword_100797B40);
          v17 = v249;
        }

        v89 += 40;
        --v85;
      }

      while (v85);
    }

    else
    {
      v90 = &_swiftEmptyArrayStorage;
    }

    v99 = *v90->clientIdentity;
    v100 = &_swiftEmptyArrayStorage;
    v238 = v90;
    v254 = v18;
    if (v99)
    {
      v226 = 0;
      v259 = &_swiftEmptyArrayStorage;
      sub_100253258(0, v99, 0);
      v100 = v259;
      v101 = v90 + ((*(v247 + 80) + 32) & ~*(v247 + 80));
      v230 = *(v247 + 72);
      v229 = v242 + 32;
      do
      {
        v102 = v243;
        sub_100010364(v101, v243, &qword_10093A700, &qword_100797B40);
        p_isa = &v248->super.isa;
        sub_100010364(v102, v248, &qword_10093A700, &qword_100797B40);
        v104 = v33;
        v105 = *p_isa;
        v251 = *(v252 + 48);
        v106 = [v105 objectID];

        v107 = [v106 uuid];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        sub_1000050A4(v102, &qword_10093A700, &qword_100797B40);
        v108 = type metadata accessor for Date();
        (*(*(v108 - 8) + 8))(p_isa + v251, v108);
        v259 = v100;
        v110 = *v100->clientIdentity;
        v109 = *&v100->clientIdentity[8];
        if (v110 >= v109 >> 1)
        {
          sub_100253258((v109 > 1), v110 + 1, 1);
          v100 = v259;
        }

        *v100->clientIdentity = v110 + 1;
        v18 = v254;
        (*(v242 + 32))(v100 + ((*(v242 + 80) + 32) & ~*(v242 + 80)) + *(v242 + 72) * v110, v104, v254);
        v101 += v230;
        --v99;
        v33 = v104;
      }

      while (v99);
      v87 = v226;
      v17 = v249;
    }

    v111 = sub_1001A59A4(v100);
    v100, v112, v113, v114, v115, v116, v117, v118;
    v119 = sub_100197B90();
    v120 = sub_1001A59A4(v119);
    v119, v121, v122, v123, v124, v125, v126, v127;
    v128 = sub_1001A2130(v120, v111, sub_1001A2E50, sub_1001A2E50);
    v129 = v128;
    if (v128[2] <= *(v120 + 16) >> 3)
    {
      v259 = v120;
      sub_10019BC20(v128);
      v130 = v259;
    }

    else
    {
      v130 = sub_10019CB14(v128, v120);
    }

    v251 = v129;
    v226 = v87;
    sub_100197D34(v130);
    v130, v131, v132, v133, v134, v135, v136, v137;
    v138 = v238;
    v243 = *v238->clientIdentity;
    if (v243)
    {
      a1 = 0;
      v139 = (v242 + 48);
      v33 = v242 + 32;
      v140 = &_swiftEmptyArrayStorage;
      v37 = &qword_10093A700;
      while (a1 < *(v138 + 16))
      {
        v141 = v231;
        sub_100010364(v138 + ((*(v247 + 80) + 32) & ~*(v247 + 80)) + *(v247 + 72) * a1, v231, &qword_10093A700, &qword_100797B40);
        sub_1001982CC(*v141, v141 + *(v252 + 48), v17);
        sub_1000050A4(v141, &qword_10093A700, &qword_100797B40);
        if ((*v139)(v17, 1, v18) == 1)
        {
          sub_1000050A4(v17, &unk_100939D90, "8\n\r");
        }

        else
        {
          v142 = *v33;
          v143 = v227;
          (*v33)(v227, v17, v18);
          v142(v232, v143, v18);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v140 = sub_100366328(0, *v140->clientIdentity + 1, 1, v140);
          }

          v145 = *v140->clientIdentity;
          v144 = *&v140->clientIdentity[8];
          if (v145 >= v144 >> 1)
          {
            v140 = sub_100366328((v144 > 1), v145 + 1, 1, v140);
          }

          *v140->clientIdentity = v145 + 1;
          v142(v140 + ((*(v242 + 80) + 32) & ~*(v242 + 80)) + *(v242 + 72) * v145, v232, v18);
          v138 = v238;
          v17 = v249;
        }

        if (v243 == ++a1)
        {
          goto LABEL_37;
        }
      }

      __break(1u);
      goto LABEL_81;
    }

    v140 = &_swiftEmptyArrayStorage;
LABEL_37:
    v146 = sub_1001A59A4(v140);
    v140, v147, v148, v149, v150, v151, v152, v153;
    if (*(v251 + 16) <= *(v146 + 16) >> 3)
    {
      v259 = v146;
      sub_10019BC20(v251);

      v37 = v259;
    }

    else
    {
      v37 = sub_10019CB14(v251, v146);
    }

    a1 = v253;
    v161 = v238;
    if (!v243)
    {
      break;
    }

    v162 = 0;
    v251 = v37 + 56;
    v249 = (v242 + 16);
    v17 = &_swiftEmptyArrayStorage;
    v33 = &qword_10093A700;
    v163 = (v242 + 8);
    while (v162 < *(v161 + 16))
    {
      v232 = ((*(v247 + 80) + 32) & ~*(v247 + 80));
      v231 = *(v247 + 72);
      v164 = v240;
      sub_100010364(&v232[v161 + v231 * v162], v240, &qword_10093A700, &qword_100797B40);
      v165 = v164;
      v166 = v241;
      sub_100010364(v165, v241, &qword_10093A700, &qword_100797B40);
      v167 = *v166;
      v168 = [v167 objectID];

      v169 = [v168 uuid];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v170 = *(v37 + 16);
      v248 = v17;
      if (v170 && (sub_1001A3B50(&qword_10093B410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID), v171 = dispatch thunk of Hashable._rawHashValue(seed:)(), v172 = -1 << *(v37 + 32), v173 = v171 & ~v172, ((*(v251 + ((v173 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v173) & 1) != 0))
      {
        v174 = ~v172;
        v175 = *(v242 + 72);
        v176 = *(v242 + 16);
        while (1)
        {
          v177 = v37;
          v178 = *(v37 + 48) + v175 * v173;
          v179 = v250;
          v180 = v254;
          v176(v250, v178, v254);
          sub_1001A3B50(&qword_10093A3E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v181 = dispatch thunk of static Equatable.== infix(_:_:)();
          (*v163)(v179, v180);
          if (v181)
          {
            break;
          }

          v173 = (v173 + 1) & v174;
          v37 = v177;
          if (((*(v251 + ((v173 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v173) & 1) == 0)
          {
            goto LABEL_53;
          }
        }

        v37 = v177;
      }

      else
      {
        v181 = 0;
      }

LABEL_53:
      a1 = v253;
      v182 = *(v252 + 48);
      v18 = v254;
      (*v163)(v253, v254);
      v183 = type metadata accessor for Date();
      (*(*(v183 - 8) + 8))(v241 + v182, v183);
      if (v181)
      {
        v33 = &qword_10093A700;
        sub_100031B58(v240, v228, &qword_10093A700, &qword_100797B40);
        v17 = v248;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v259 = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10025375C(0, *v17->clientIdentity + 1, 1);
          v17 = v259;
        }

        v186 = *v17->clientIdentity;
        v185 = *&v17->clientIdentity[8];
        if (v186 >= v185 >> 1)
        {
          sub_10025375C((v185 > 1), v186 + 1, 1);
          v17 = v259;
        }

        *v17->clientIdentity = v186 + 1;
        sub_100031B58(v228, &v232[v17 + v186 * v231], &qword_10093A700, &qword_100797B40);
      }

      else
      {
        v33 = &qword_10093A700;
        sub_1000050A4(v240, &qword_10093A700, &qword_100797B40);
        v17 = v248;
      }

      ++v162;
      v161 = v238;
      if (v162 == v243)
      {
        goto LABEL_60;
      }
    }

LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    swift_once();
  }

  v17 = &_swiftEmptyArrayStorage;
LABEL_60:
  v161, v154, v155, v156, v157, v158, v159, v160;
  v37, v187, v188, v189, v190, v191, v192, v193;
  a1 = 0;
  v194 = *v17->clientIdentity;
  v250 = (v247 + 48);
  v251 = v247 + 56;
  v249 = (v237 + 16);
  v243 = v225 + 7;
  v242 = v237 + 32;
  v241 = (v237 + 8);
  v195 = v236;
  v196 = v235;
  v248 = v17;
  v240 = v194;
  while (1)
  {
    if (a1 == v194)
    {
      v198 = 1;
      v199 = v194;
    }

    else
    {
      if ((a1 & 0x8000000000000000) != 0)
      {
        goto LABEL_82;
      }

      if (a1 >= *v17->clientIdentity)
      {
        goto LABEL_83;
      }

      sub_100010364(v17 + ((*(v247 + 80) + 32) & ~*(v247 + 80)) + *(v247 + 72) * a1, v195, &qword_10093A700, &qword_100797B40);
      v198 = 0;
      v199 = a1 + 1;
    }

    v200 = v252;
    (*v251)(v195, v198, 1, v252);
    sub_100031B58(v195, v196, &qword_10093A6F8, &qword_100797B38);
    if ((*v250)(v196, 1, v200) == 1)
    {
    }

    v201 = *v196;
    v202 = [v201 objectID];
    v203 = [v201 titleAsString];
    v253 = v201;
    v254 = v199;
    if (v203)
    {
      v204 = v203;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v205 = v244;
    REMUrgentReminder.init(reminderID:title:)();
    v206 = type metadata accessor for TaskPriority();
    v207 = *(v206 - 8);
    v208 = v246;
    (*(v207 + 56))(v246, 1, 1, v206);
    v209 = v237;
    v210 = v233;
    v211 = v245;
    (*(v237 + 16))(v233, v205, v245);
    v212 = (*(v209 + 80) + 40) & ~*(v209 + 80);
    v213 = (v243 + v212) & 0xFFFFFFFFFFFFFFF8;
    v214 = swift_allocObject();
    *(v214 + 2) = 0;
    *(v214 + 3) = 0;
    *(v214 + 4) = v239;
    (*(v209 + 32))(&v214[v212], v210, v211);
    v215 = v253;
    *&v214[v213] = v253;
    v216 = v234;
    sub_100010364(v208, v234, &qword_100936FA8, &qword_100791B70);
    LODWORD(v212) = (*(v207 + 48))(v216, 1, v206);

    v217 = v215;

    if (v212 == 1)
    {
      sub_1000050A4(v216, &qword_100936FA8, &qword_100791B70);
      v37 = 7168;
    }

    else
    {
      v218 = TaskPriority.rawValue.getter();
      (*(v207 + 8))(v216, v206);
      v37 = v218 | 0x1C00;
    }

    v219 = *(v214 + 2);
    swift_unknownObjectRetain();

    v195 = v236;
    if (v219)
    {
      swift_getObjectType();
      v220 = dispatch thunk of Actor.unownedExecutor.getter();
      v33 = v221;
      swift_unknownObjectRelease();
    }

    else
    {
      v220 = 0;
      v33 = 0;
    }

    v18 = *(v252 + 48);
    sub_1000050A4(v246, &qword_100936FA8, &qword_100791B70);
    v222 = swift_allocObject();
    *(v222 + 16) = &unk_100797B50;
    *(v222 + 24) = v214;
    if (v33 | v220)
    {
      v255 = 0;
      v256 = 0;
      v257 = v220;
      v258 = v33;
    }

    v17 = v248;
    v194 = v240;
    a1 = v254;
    swift_task_create();

    (*v241)(v244, v245);
    v197 = type metadata accessor for Date();
    v196 = v235;
    (*(*(v197 - 8) + 8))(v235 + v18, v197);
  }
}

void sub_100197254(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v5 - 8, v6);
  v8 = v38 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v41 = *(a1 + 8);
  v15 = *(a1 + 16);
  v39 = *(a1 + 24);
  v40 = v15;
  v16 = *(a1 + 32);
  v17 = v14;
  if ([v17 prefersUrgentPresentationStyleForDateAlarms])
  {
    v38[1] = v2;
    if (v16)
    {

      v18 = sub_1000F5104(&qword_10093A700, &qword_100797B40);
      (*(*(v18 - 8) + 56))(a2, 1, 1, v18);
    }

    else
    {
      v20 = v41;
      v38[0] = v41;
      sub_100197764(v17, v38[0], v8);
      v21 = a2;
      if ((*(v10 + 48))(v8, 1, v9) == 1)
      {
        sub_1000050A4(v8, &unk_100938850, qword_100795AE0);
        v22 = v39;
        v23 = v40;
        if (qword_100935B08 != -1)
        {
          swift_once();
        }

        v24 = type metadata accessor for Logger();
        sub_100006654(v24, qword_10093A628);
        v25 = v17;
        v26 = v41;
        sub_1001A3944(v41, v23, v22, 0);
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.fault.getter();

        sub_1001A39AC(v26, v23, v22, 0);
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          *v29 = 138543618;
          v31 = [v25 objectID];
          *(v29 + 4) = v31;
          *v30 = v31;
          *(v29 + 12) = 2114;
          v32 = [v38[0] objectID];
          *(v29 + 14) = v32;
          v30[1] = v32;
          _os_log_impl(&_mh_execute_header, v27, v28, "RDUrgentAlarmConsumer: Unable to determine fireDate. An alarm without fireDate shouldn't have reached here {reminderID: %{public}@, alarmID: %{public}@}", v29, 0x16u);
          sub_1000F5104(&unk_100938E70, &unk_100797230);
          swift_arrayDestroy();

          sub_1001A39AC(v26, v23, v22, 0);
        }

        else
        {

          sub_1001A39AC(v26, v23, v22, 0);
        }

        v37 = sub_1000F5104(&qword_10093A700, &qword_100797B40);
        (*(*(v37 - 8) + 56))(v21, 1, 1, v37);
      }

      else
      {
        v33 = sub_1001A39AC(v20, v40, v39, 0);
        v34 = *(v10 + 32);
        v34(v13, v8, v9, v33);
        v35 = sub_1000F5104(&qword_10093A700, &qword_100797B40);
        v36 = *(v35 + 48);
        *a2 = v17;
        (v34)(a2 + v36, v13, v9);
        (*(*(v35 - 8) + 56))(a2, 0, 1, v35);
      }
    }
  }

  else
  {
    v19 = sub_1000F5104(&qword_10093A700, &qword_100797B40);
    (*(*(v19 - 8) + 56))(a2, 1, 1, v19);
  }
}

uint64_t sub_100197764@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v6 - 8, v7);
  v9 = v28 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  *&v13 = __chkstk_darwin(v10, v12).n128_u64[0];
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = [a2 trigger];
  sub_1000060C8(0, &qword_10093A710, REMAlarmTrigger_ptr);
  sub_1000F5104(&unk_1009404E0, &unk_10079FF80);
  if (swift_dynamicCast())
  {
    sub_100054B6C(v28, v31);
    Date.init()();
    v16 = v32;
    v17 = v33;
    sub_10000F61C(v31, v32);
    (*(v17 + 24))(a1, v15, v16, v17);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_1000050A4(v9, &unk_100938850, qword_100795AE0);
      v18 = v32;
      v19 = v33;
      sub_10000F61C(v31, v32);
      (*(v19 + 8))(a1, v18, v19);
      (*(v11 + 8))(v15, v10);
    }

    else
    {
      (*(v11 + 8))(v15, v10);
      (*(v11 + 32))(a3, v9, v10);
      (*(v11 + 56))(a3, 0, 1, v10);
    }

    return sub_10000607C(v31);
  }

  else
  {
    v29 = 0;
    memset(v28, 0, sizeof(v28));
    sub_1000050A4(v28, &qword_10093A718, &qword_100797B90);
    if (qword_100935B08 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100006654(v20, qword_10093A628);
    v21 = a1;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138543362;
      v26 = [v21 objectID];
      *(v24 + 4) = v26;
      *v25 = v26;
      _os_log_impl(&_mh_execute_header, v22, v23, "RDUrgentConsumer: Failed to cast alarm trigger as RDFireDateSource {reminderID: %{public}@}", v24, 0xCu);
      sub_1000050A4(v25, &unk_100938E70, &unk_100797230);
    }

    return (*(v11 + 56))(a3, 1, 1, v10);
  }
}

void sub_100197D34(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  __chkstk_darwin(v2, v3);
  v5 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v7);
  __chkstk_darwin(v8, v9);
  v44 = v33 - v12;
  if (*(a1 + 16))
  {
    v43 = v11;
    v13 = a1 + 56;
    v14 = 1 << *(a1 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(a1 + 56);
    v17 = (v14 + 63) >> 6;
    v37 = v10 + 32;
    v38 = v10;
    v40 = (v10 + 8);
    v41 = v10 + 16;

    v35 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    *&v21 = 136446210;
    v33[3] = v21;
    v42 = v2;
    v34 = v5;
    v39 = a1;
    while (v16)
    {
      v46 = v19;
      v36 = v18;
LABEL_11:
      v23 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v24 = *(a1 + 48);
      v25 = v38;
      v26 = v44;
      v27 = v42;
      (*(v38 + 16))(v44, v24 + *(v38 + 72) * (v23 | (v20 << 6)), v42);
      v28 = v43;
      (*(v25 + 32))(v43, v26, v27);
      sub_10000F61C((v45 + 16), *(v45 + 40));
      sub_10051CB34(v28);
      (*v40)(v28, v27);
      v18 = v46 + 1;
      v19 = v46 + 1;
      a1 = v39;
      if (__OFADD__(v46, 1))
      {
LABEL_20:
        __break(1u);
LABEL_21:
        swift_once();
        goto LABEL_15;
      }
    }

    while (1)
    {
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_20;
      }

      if (v22 >= v17)
      {
        break;
      }

      v16 = *(v13 + 8 * v22);
      ++v20;
      if (v16)
      {
        v46 = v19;
        v36 = v18;
        v20 = v22;
        goto LABEL_11;
      }
    }

    if (qword_100935B08 != -1)
    {
      goto LABEL_21;
    }

LABEL_15:
    v29 = type metadata accessor for Logger();
    sub_100006654(v29, qword_10093A628);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 134218240;
      *(v32 + 4) = v18;
      *(v32 + 12) = 2048;
      *(v32 + 14) = v35;
      _os_log_impl(&_mh_execute_header, v30, v31, "RDUrgentAlarmConsumer: Finished cancelling alarms in alarm service {successfulCancelCount: %ld, failedCancelCount: %ld}", v32, 0x16u);
    }
  }
}

uint64_t sub_1001982CC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v73 = a3;
  v5 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v68[-v7];
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v72 = &v68[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13, v14);
  v16 = &v68[-v15];
  __chkstk_darwin(v17, v18);
  v20 = &v68[-v19];
  *&v23 = __chkstk_darwin(v21, v22).n128_u64[0];
  v25 = &v68[-v24];
  v26 = [a1 lastBannerPresentationDate];
  if (v26)
  {
    v27 = v26;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v28 = *(v10 + 32);
    v28(v8, v20, v9);
    (*(v10 + 56))(v8, 0, 1, v9);
    v28(v25, v8, v9);
  }

  else
  {
    (*(v10 + 56))(v8, 1, 1, v9);
    static Date.distantPast.getter();
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      sub_1000050A4(v8, &unk_100938850, qword_100795AE0);
    }
  }

  if (static Date.> infix(_:_:)())
  {
    v29 = [a1 objectID];
    v30 = [v29 uuid];

    v31 = v73;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v10 + 8))(v25, v9);
    v32 = 0;
  }

  else
  {
    if (qword_100935B08 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100006654(v33, qword_10093A628);
    v34 = *(v10 + 16);
    v34(v16, a2, v9);
    v35 = v72;
    v34(v72, v25, v9);
    v36 = a1;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v70 = v40;
      v71 = swift_slowAlloc();
      v74 = v71;
      *v39 = 138543874;
      v41 = [v36 objectID];
      *(v39 + 4) = v41;
      *v40 = v41;
      *(v39 + 12) = 2082;
      sub_1001A3B50(&qword_100937010, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v42 = dispatch thunk of CustomStringConvertible.description.getter();
      v69 = v38;
      v44 = v43;
      v45 = *(v10 + 8);
      v45(v16, v9);
      v46 = sub_10000668C(v42, v44, &v74);
      v44, v47, v48, v49, v50, v51, v52, v53;
      *(v39 + 14) = v46;
      *(v39 + 22) = 2082;
      v54 = dispatch thunk of CustomStringConvertible.description.getter();
      v56 = v55;
      v45(v35, v9);
      v57 = sub_10000668C(v54, v56, &v74);
      v56, v58, v59, v60, v61, v62, v63, v64;
      *(v39 + 24) = v57;
      _os_log_impl(&_mh_execute_header, v37, v69, "RDUrgentAlarmConsumer: lastBannerPresentationDate is after the reminder fireDate. Assuming the alarm has already fired. Skipping {reminderID: %{public}@, fireDate: %{public}s, lastBannerPresentationDate: %{public}s}", v39, 0x20u);
      sub_1000050A4(v70, &unk_100938E70, &unk_100797230);

      swift_arrayDestroy();

      v45(v25, v9);
    }

    else
    {

      v65 = *(v10 + 8);
      v65(v35, v9);
      v65(v16, v9);
      v65(v25, v9);
    }

    v32 = 1;
    v31 = v73;
  }

  v66 = type metadata accessor for UUID();
  return (*(*(v66 - 8) + 56))(v31, v32, 1, v66);
}

uint64_t sub_1001988F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a4;
  v6[3] = a6;
  sub_1000F5104(&unk_100938850, qword_100795AE0);
  v8 = swift_task_alloc();
  v6[4] = v8;
  v9 = swift_task_alloc();
  v6[5] = v9;
  *v9 = v6;
  v9[1] = sub_1001989DC;

  return sub_100198CC0(v8, a5);
}

uint64_t sub_1001989DC()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  v1[6] = v3;
  *v3 = v2;
  v3[1] = sub_100198B48;
  v4 = v1[4];
  v5 = v1[3];

  return sub_1001997C0(v5, v4);
}

uint64_t sub_100198B48()
{

  return _swift_task_switch(sub_100198C44, 0, 0);
}

uint64_t sub_100198C44()
{
  sub_1000050A4(*(v0 + 32), &unk_100938850, qword_100795AE0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100198CC0(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = type metadata accessor for REMUrgentReminder();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();

  return _swift_task_switch(sub_100198E10, 0, 0);
}

uint64_t sub_100198E10(uint64_t a1)
{
  v2 = v1[5];
  Date.init(timeIntervalSinceNow:)();
  sub_10000F61C((v2 + 16), *(v2 + 40));
  Date.init()();
  v3 = swift_task_alloc();
  v1[16] = v3;
  *v3 = v1;
  v3[1] = sub_100198ED4;
  v5 = v1[14];
  v4 = v1[15];
  v6 = v1[4];

  return sub_10051BE18(v6, v4, v5);
}

uint64_t sub_100198ED4()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v2[17] = v0;

  v6 = *(v4 + 8);
  v2[18] = v6;
  v2[19] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);
  if (v0)
  {
    v7 = sub_1001993BC;
  }

  else
  {
    v7 = sub_100199058;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100199058()
{
  v42 = v0;
  if (qword_100935B08 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[9];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[4];
  v9 = type metadata accessor for Logger();
  sub_100006654(v9, qword_10093A628);
  (*(v7 + 16))(v5, v8, v6);
  (*(v4 + 16))(v2, v1, v3);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[18];
  v14 = v0[13];
  v15 = v0[9];
  v16 = v0[10];
  v18 = v0[6];
  v17 = v0[7];
  if (v12)
  {
    v19 = swift_slowAlloc();
    v39 = v11;
    v20 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v41 = v40;
    *v19 = 138543618;
    v38 = v13;
    v21 = REMUrgentReminder.reminderID.getter();
    (*(v17 + 8))(v15, v18);
    *(v19 + 4) = v21;
    *v20 = v21;
    *(v19 + 12) = 2082;
    sub_1001A3B50(&qword_100937010, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    v38(v14, v16);
    v25 = sub_10000668C(v22, v24, &v41);
    v24, v26, v27, v28, v29, v30, v31, v32;
    *(v19 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v10, v39, "RDUrgentAlarmConsumer: Successfully scheduled alarm {reminderID: %{public}@, fireDate: %{public}s}", v19, 0x16u);
    sub_1000050A4(v20, &unk_100938E70, &unk_100797230);

    sub_10000607C(v40);
  }

  else
  {

    v13(v14, v16);
    (*(v17 + 8))(v15, v18);
  }

  v33 = v0[10];
  v34 = v0[11];
  v35 = v0[3];
  (*(v34 + 32))(v35, v0[15], v33);
  (*(v34 + 56))(v35, 0, 1, v33);

  v36 = v0[1];

  return v36();
}

uint64_t sub_1001993BC()
{
  v52 = v0;
  if (qword_100935B08 != -1)
  {
    swift_once();
  }

  v49 = v0[15];
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[6];
  v7 = v0[4];
  v8 = type metadata accessor for Logger();
  sub_100006654(v8, qword_10093A628);
  (*(v4 + 16))(v5, v7, v6);
  (*(v2 + 16))(v1, v49, v3);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  LOBYTE(v4) = static os_log_type_t.fault.getter();

  v47 = v4;
  v10 = os_log_type_enabled(v9, v4);
  v11 = v0[18];
  v48 = v0[17];
  v50 = v0[15];
  v12 = v0[12];
  v13 = v0[10];
  v15 = v0[7];
  v14 = v0[8];
  v16 = v0[6];
  if (v10)
  {
    v17 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v17 = 138543874;
    log = v9;
    v18 = v13;
    v19 = v11;
    v20 = REMUrgentReminder.reminderID.getter();
    (*(v15 + 8))(v14, v16);
    *(v17 + 4) = v20;
    *v45 = v20;
    *(v17 + 12) = 2082;
    sub_1001A3B50(&qword_100937010, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    v19(v12, v18);
    v24 = sub_10000668C(v21, v23, &v51);
    v23, v25, v26, v27, v28, v29, v30, v31;
    *(v17 + 14) = v24;
    *(v17 + 22) = 2082;
    v0[2] = v48;
    swift_errorRetain();
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
    v32 = String.init<A>(describing:)();
    v34 = v33;
    v35 = sub_10000668C(v32, v33, &v51);
    v34, v36, v37, v38, v39, v40, v41, v42;
    *(v17 + 24) = v35;
    _os_log_impl(&_mh_execute_header, log, v47, "RDUrgentAlarmConsumer: Failed to schedule alarm with alarm service. Urgent reminder will not go off {reminderID: %{public}@, fireDate: %{public}s, error: %{public}s}", v17, 0x20u);
    sub_1000050A4(v45, &unk_100938E70, &unk_100797230);

    swift_arrayDestroy();

    v19(v50, v18);
  }

  else
  {

    v11(v12, v13);
    (*(v15 + 8))(v14, v16);
    v11(v50, v13);
  }

  (*(v0[11] + 56))(v0[3], 1, 1, v0[10]);

  v43 = v0[1];

  return v43();
}

uint64_t sub_1001997C0(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  sub_1000F5104(&unk_100938850, qword_100795AE0);
  v3[9] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_1001998D4, 0, 0);
}

uint64_t sub_1001998D4()
{
  v46 = v0;
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  sub_100010364(v0[7], v3, &unk_100938850, qword_100795AE0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000050A4(v0[9], &unk_100938850, qword_100795AE0);

    v4 = v0[1];

    return v4();
  }

  else
  {
    (*(v0[11] + 32))(v0[14], v0[9], v0[10]);
    if (qword_100935B08 != -1)
    {
      swift_once();
    }

    v6 = v0[13];
    v7 = v0[14];
    v8 = v0[10];
    v9 = v0[11];
    v10 = v0[6];
    v11 = type metadata accessor for Logger();
    v0[15] = sub_100006654(v11, qword_10093A628);
    v12 = *(v9 + 16);
    v0[16] = v12;
    v0[17] = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v6, v7, v8);
    v13 = v10;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[13];
    v19 = v0[10];
    v18 = v0[11];
    if (v16)
    {
      v20 = v0[6];
      v21 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45 = v44;
      *v21 = 138543618;
      v22 = [v20 objectID];
      *(v21 + 4) = v22;
      *v43 = v22;
      *(v21 + 12) = 2082;
      v23 = Date.description.getter();
      v25 = v24;
      v26 = *(v18 + 8);
      v26(v17, v19);
      v27 = sub_10000668C(v23, v25, &v45);
      v25, v28, v29, v30, v31, v32, v33, v34;
      *(v21 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v14, v15, "RDUrgentAlarmConsumer: Attempting to update lastBannerPresentationDate {reminderID: %{public}@, lastBannerPresentationDate: %{public}s}", v21, 0x16u);
      sub_1000050A4(v43, &unk_100938E70, &unk_100797230);

      sub_10000607C(v44);
    }

    else
    {

      v26 = *(v18 + 8);
      v26(v17, v19);
    }

    v0[18] = v26;
    v35 = v0[8];
    v36 = v0[6];
    v37 = [objc_allocWithZone(REMStore) initWithDaemonController:*(v35 + 64)];
    v0[19] = v37;
    v38 = [objc_allocWithZone(REMSaveRequest) initWithStore:v37];
    v0[20] = v38;
    [v38 setAuthor:RDUrgentAlarmConsumerLastBannerPresentationDateAuthor];
    [v38 setUpdateLastModifiedDates:0];
    [v38 setSyncToCloudKit:0];
    v39 = [v38 updateReminder:v36];
    v0[21] = v39;
    isa = Date._bridgeToObjectiveC()().super.isa;
    [v39 setLastBannerPresentationDate:isa];

    v41 = *(v35 + 56);
    v42 = swift_task_alloc();
    v0[22] = v42;
    *v42 = v0;
    v42[1] = sub_100199D5C;

    return REMSaveRequest.saveAsync(with:)(v41);
  }
}

uint64_t sub_100199D5C()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_10019A120;
  }

  else
  {
    v2 = sub_100199E70;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100199E70()
{
  v36 = v0;
  v1 = *(v0 + 48);
  (*(v0 + 128))(*(v0 + 96), *(v0 + 112), *(v0 + 80));
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 160);
  v7 = *(v0 + 144);
  v8 = *(v0 + 152);
  v9 = *(v0 + 112);
  v10 = *(v0 + 96);
  v11 = *(v0 + 80);
  if (v5)
  {
    v33 = *(v0 + 160);
    v12 = *(v0 + 48);
    v31 = *(v0 + 168);
    v34 = *(v0 + 112);
    v13 = swift_slowAlloc();
    v32 = v8;
    v14 = swift_slowAlloc();
    log = v3;
    v30 = swift_slowAlloc();
    v35 = v30;
    *v13 = 138543618;
    v15 = [v12 objectID];
    *(v13 + 4) = v15;
    *v14 = v15;
    *(v13 + 12) = 2082;
    v16 = Date.description.getter();
    v18 = v17;
    v7(v10, v11);
    v19 = sub_10000668C(v16, v18, &v35);
    v18, v20, v21, v22, v23, v24, v25, v26;
    *(v13 + 14) = v19;
    _os_log_impl(&_mh_execute_header, log, v4, "RDUrgentAlarmConsumer: Updated lastBannerPresentationDate {reminderID: %{public}@, lastBannerPresentationDate: %{public}s}", v13, 0x16u);
    sub_1000050A4(v14, &unk_100938E70, &unk_100797230);

    sub_10000607C(v30);

    v7(v34, v11);
  }

  else
  {

    v7(v10, v11);
    v7(v9, v11);
  }

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_10019A120()
{
  v34 = v0;
  v1 = *(v0 + 48);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 168);
    v31 = *(v0 + 112);
    v32 = *(v0 + 144);
    v28 = *(v0 + 160);
    v29 = *(v0 + 152);
    v30 = *(v0 + 80);
    v5 = *(v0 + 48);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v33 = v8;
    *v6 = 138543618;
    v9 = [v5 objectID];
    *(v6 + 4) = v9;
    *v7 = v9;
    *(v6 + 12) = 2080;
    swift_getErrorValue();
    v10 = Error.localizedDescription.getter();
    v12 = v11;
    v13 = sub_10000668C(v10, v11, &v33);
    v12, v14, v15, v16, v17, v18, v19, v20;
    *(v6 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v2, v3, "RDUrgentAlarmConsumer: Failed to update lastBannerPresentationDate {reminderID: %{public}@, error: %s}", v6, 0x16u);
    sub_1000050A4(v7, &unk_100938E70, &unk_100797230);

    sub_10000607C(v8);

    v32(v31, v30);
  }

  else
  {
    v22 = *(v0 + 160);
    v21 = *(v0 + 168);
    v23 = *(v0 + 144);
    v24 = *(v0 + 112);
    v25 = *(v0 + 80);

    v23(v24, v25);
  }

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_10019A3C4()
{
  sub_10000607C((v0 + 16));

  sub_10000CC4C(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112) | (*(v0 + 116) << 32), v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_10019A470(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10019A568;

  return v6(a1);
}

uint64_t sub_10019A568()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_10019A674()
{
  v1 = v0;
  sub_1000F5104(&qword_100942EE0, &qword_1007A3970);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_10019ABF4()
{
  v1 = v0;
  sub_1000F5104(&qword_100943E70, &qword_100797DA8);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 32 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *(v18 + 24);
        v20 = *(v4 + 48) + v17;
        v21 = *(v18 + 8);
        *v20 = *v18;
        *(v20 + 8) = v21;
        *(v20 + 24) = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void *sub_10019AD80()
{
  v1 = v0;
  sub_1000F5104(&qword_10093A858, &qword_100797DD8);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10019AF4C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1000F5104(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        *(*(v6 + 48) + 8 * (v16 | (v10 << 6))) = *(*(v4 + 48) + 8 * (v16 | (v10 << 6)));
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_10019B0B4(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = &v27 - v10;
  sub_1000F5104(a2, a3);
  v12 = *v3;
  v13 = static _SetStorage.copy(original:)();
  v14 = v13;
  if (*(v12 + 16))
  {
    v28 = v6;
    result = (v13 + 56);
    v16 = ((1 << *(v14 + 32)) + 63) >> 6;
    if (v14 != v12 || result >= v12 + 56 + 8 * v16)
    {
      result = memmove(result, (v12 + 56), 8 * v16);
    }

    v18 = 0;
    *(v14 + 16) = *(v12 + 16);
    v19 = 1 << *(v12 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v12 + 56);
    v22 = (v19 + 63) >> 6;
    v29 = v8 + 32;
    for (i = v8 + 16; v21; result = (*(v8 + 32))(*(v14 + 48) + v26, v11, v7))
    {
      v23 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v26 = *(v8 + 72) * (v23 | (v18 << 6));
      (*(v8 + 16))(v11, *(v12 + 48) + v26, v7);
    }

    v24 = v18;
    while (1)
    {
      v18 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v18 >= v22)
      {

        v6 = v28;
        goto LABEL_21;
      }

      v25 = *(v12 + 56 + 8 * v18);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v14;
  }

  return result;
}

id sub_10019B300()
{
  v1 = v0;
  sub_1000F5104(&qword_100943A70, &qword_100797D20);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_10019B45C()
{
  v1 = v0;
  sub_1000F5104(&qword_10093A748, &qword_100797BF8);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 24 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = (*(v4 + 48) + v17);
        *v21 = *v18;
        v21[1] = v19;
        v21[2] = v20;
        v22 = v19;
        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10019B5C8()
{
  v1 = v0;
  v2 = type metadata accessor for RDPermanentlyHiddenReminder(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000F5104(&qword_10093A750, &qword_100797C30);
  v7 = *v0;
  v8 = static _SetStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        sub_1001A3A2C(*(v7 + 48) + v22, v6);
        result = sub_1001A3A90(v6, *(v9 + 48) + v22);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_16;
      }

      v21 = *(v11 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v9;
  }

  return result;
}

void *sub_10019B7C0()
{
  v1 = v0;
  sub_1000F5104(&qword_10093A740, &qword_100797BF0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_10019B93C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1000F5104(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void sub_10019BAF4(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_10019EC58(v12, v13);
        v15 = v14;
        v13, v14, v16, v17, v18, v19, v20, v21;
        v15, v22, v23, v24, v25, v26, v27, v28;
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

void sub_10019BC20(uint64_t a1)
{
  v3 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v3 - 8, v4);
  v6 = v19 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v12 = 1 << *(a1 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(a1 + 56);
    v15 = (v12 + 63) >> 6;
    v19[0] = v8 + 8;
    v19[1] = v8 + 16;

    v16 = 0;
    while (v14)
    {
      v17 = v16;
LABEL_10:
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      (*(v8 + 16))(v11, *(a1 + 48) + *(v8 + 72) * (v18 | (v17 << 6)), v7);
      sub_10019ED94(v11, v6);
      (*(v8 + 8))(v11, v7);
      sub_1000050A4(v6, &unk_100939D90, "8\n\r");
    }

    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v15)
      {

        return;
      }

      v14 = *(a1 + 56 + 8 * v17);
      ++v16;
      if (v14)
      {
        v16 = v17;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void *sub_10019BE3C(uint64_t a1, void *a2)
{
  v4 = a2;
  if (!a2[2])
  {

    return _swiftEmptySetSingleton;
  }

  v5 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for REMObjectID_Codable();
    sub_1001A3B50(&qword_100943E80, &type metadata accessor for REMObjectID_Codable, &protocol conformance descriptor for NSObject);
    Set.Iterator.init(_cocoa:)();
    v5 = v79;
    v7 = v80;
    v8 = v81;
    v9 = v82;
    v10 = v83;
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v7 = a1 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a1 + 56);

    v9 = 0;
  }

  v74 = v5;
  v75 = v7;
  v76 = v8;
  v77 = v9;
  v65 = v8;
  v14 = (v8 + 64) >> 6;
  v71 = v4 + 7;
  v78 = v10;
  v68 = v5;
  v69 = v14;
  v67 = v7;
  while (1)
  {
    if (v5 < 0)
    {
      v22 = __CocoaSet.Iterator.next()();
      if (!v22)
      {
        goto LABEL_65;
      }

      v72 = v22;
      type metadata accessor for REMObjectID_Codable();
      swift_dynamicCast();
      v20 = v73;
      v18 = v9;
      v2 = v10;
      if (!v73)
      {
        goto LABEL_65;
      }
    }

    else
    {
      v15 = v10;
      v16 = v9;
      if (v10)
      {
LABEL_20:
        v2 = (v15 - 1) & v15;
        v20 = *(*(v5 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
        v21 = v20;
        v18 = v16;
      }

      else
      {
        if (v14 <= v9 + 1)
        {
          v17 = v9 + 1;
        }

        else
        {
          v17 = v14;
        }

        v18 = v17 - 1;
        v19 = v9;
        while (1)
        {
          v16 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            goto LABEL_67;
          }

          if (v16 >= v14)
          {
            break;
          }

          v15 = *(v7 + 8 * v16);
          ++v19;
          if (v15)
          {
            goto LABEL_20;
          }
        }

        v20 = 0;
        v2 = 0;
      }

      v74 = v5;
      v75 = v7;
      v76 = v65;
      v77 = v18;
      v78 = v2;
      if (!v20)
      {
LABEL_65:
        v54 = v5;
        goto LABEL_63;
      }
    }

    v23 = v20;
    v24 = NSObject._rawHashValue(seed:)(v4[5]);
    v25 = -1 << *(v4 + 32);
    v7 = v24 & ~v25;
    v5 = v7 >> 6;
    v16 = 1 << v7;
    if (((1 << v7) & v71[v7 >> 6]) != 0)
    {
      break;
    }

LABEL_10:

    v9 = v18;
    v10 = v2;
    v7 = v67;
    v5 = v68;
    v14 = v69;
  }

  v3 = ~v25;
  v26 = type metadata accessor for REMObjectID_Codable();
  v27 = *(v4[6] + 8 * v7);
  v70 = v26;
  while (1)
  {
    v28 = static NSObject.== infix(_:_:)();

    if (v28)
    {
      break;
    }

    v7 = (v7 + 1) & v3;
    v5 = v7 >> 6;
    v16 = 1 << v7;
    if (((1 << v7) & v71[v7 >> 6]) == 0)
    {
      goto LABEL_10;
    }

    v27 = *(v4[6] + 8 * v7);
  }

  v31 = *(v4 + 32);
  v62 = ((1 << v31) + 63) >> 6;
  v6 = 8 * v62;
  v3 = v69;
  if ((v31 & 0x3Fu) > 0xD)
  {
    goto LABEL_68;
  }

  while (2)
  {
    v63 = &v61;
    __chkstk_darwin(v29, v30);
    v33 = &v61 - ((v32 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v33, v71, v32);
    v34 = *&v33[8 * v5] & ~v16;
    v35 = v4[2];
    v64 = v33;
    *&v33[8 * v5] = v34;
    v5 = v35 - 1;
    v37 = v67;
    v36 = v68;
LABEL_33:
    v66 = v5;
    while (v36 < 0)
    {
      v38 = __CocoaSet.Iterator.next()();
      if (!v38)
      {
        goto LABEL_61;
      }

      v72 = v38;
      swift_dynamicCast();
      v39 = v73;
      if (!v73)
      {
        goto LABEL_61;
      }

LABEL_50:
      v44 = NSObject._rawHashValue(seed:)(v4[5]);
      v45 = v4;
      v46 = -1 << *(v4 + 32);
      v7 = v44 & ~v46;
      v47 = v7 >> 6;
      v48 = 1 << v7;
      if (((1 << v7) & v71[v7 >> 6]) != 0)
      {
        v49 = ~v46;
        while (1)
        {
          v50 = *(v45[6] + 8 * v7);
          v51 = static NSObject.== infix(_:_:)();

          if (v51)
          {
            break;
          }

          v7 = (v7 + 1) & v49;
          v47 = v7 >> 6;
          v48 = 1 << v7;
          if (((1 << v7) & v71[v7 >> 6]) == 0)
          {
            goto LABEL_34;
          }
        }

        v3 = v69;

        v52 = v64[v47];
        v64[v47] = v52 & ~v48;
        v53 = (v52 & v48) == 0;
        v4 = v45;
        v37 = v67;
        v36 = v68;
        v5 = v66;
        if (!v53)
        {
          v5 = v66 - 1;
          if (__OFSUB__(v66, 1))
          {
            __break(1u);
          }

          if (v66 == 1)
          {

            v4 = _swiftEmptySetSingleton;
            goto LABEL_62;
          }

          goto LABEL_33;
        }
      }

      else
      {
LABEL_34:

        v4 = v45;
        v37 = v67;
        v36 = v68;
        v3 = v69;
        v5 = v66;
      }
    }

    if (v2)
    {
      v16 = v18;
LABEL_48:
      v42 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v39 = *(*(v36 + 48) + ((v16 << 9) | (8 * v42)));
      v43 = v39;
      v41 = v16;
LABEL_49:
      v74 = v36;
      v75 = v37;
      v76 = v65;
      v77 = v41;
      v18 = v41;
      v78 = v2;
      if (!v39)
      {
LABEL_61:
        v4 = sub_1001A1154(v64, v62, v5, v4, &qword_10093A838, &unk_1007A4510);
        goto LABEL_62;
      }

      goto LABEL_50;
    }

    if (v3 <= v18 + 1)
    {
      v40 = v18 + 1;
    }

    else
    {
      v40 = v3;
    }

    v41 = v40 - 1;
    while (1)
    {
      v16 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v16 >= v3)
      {
        v39 = 0;
        v2 = 0;
        goto LABEL_49;
      }

      v2 = *(v37 + 8 * v16);
      ++v18;
      if (v2)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    v56 = v6;

    v57 = v56;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v58 = swift_slowAlloc();
  memcpy(v58, v71, v57);
  sub_10019F6B0(v58, v62, v4, v7, &v74);
  v60 = v59;

  v4 = v60;
LABEL_62:
  v54 = v74;
LABEL_63:
  sub_10001B860(v54);
  return v4;
}

void *sub_10019C4D4(uint64_t a1, void *a2)
{
  v5 = a2;
  if (!a2[2])
  {

    return _swiftEmptySetSingleton;
  }

  v69 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v73 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v77 = a2 + 7;

  v15 = 0;
  v75 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_56;
      }

      if (v17 >= v12)
      {
        goto LABEL_53;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v76 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v23 = Hasher._finalize()();
    v31 = -1 << *(v5 + 32);
    v2 = v23 & ~v31;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v77[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:
    v21, v24, v25, v26, v27, v28, v29, v30;
    v13 = v75;
    v15 = v76;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v31;
  while (1)
  {
    v32 = (v5[6] + 16 * v2);
    v24 = v32[1];
    v33 = *v32 == v22 && v24 == v21;
    if (v33 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v77[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v75;
  v34 = v76;
  v79 = v73;
  v80 = v76;
  v81 = v11;
  v78[0] = v75;
  v78[1] = v7;
  v21, v24, v25, v26, v27, v28, v29, v30;
  v37 = *(v5 + 32);
  v70 = ((1 << v37) + 63) >> 6;
  v14 = 8 * v70;
  if ((v37 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v71 = &v69;
    __chkstk_darwin(v35, v36);
    v2 = &v69 - ((v38 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v77, v38);
    v39 = *(v2 + 8 * v8) & ~v4;
    v40 = v5[2];
    v74 = v2;
    *(v2 + 8 * v8) = v39;
    v41 = v40 - 1;
LABEL_23:
    v72 = v41;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v43 = v34;
    while (1)
    {
      v44 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      if (v44 >= v12)
      {
        v5 = sub_1001A0BCC(v74, v70, v72, v5);
        goto LABEL_51;
      }

      v11 = *(v7 + 8 * v44);
      ++v43;
      if (v11)
      {
        v34 = v44;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v45 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v46 = *(v3 + 48);
            v76 = v34;
            v47 = (v46 + ((v34 << 10) | (16 * v45)));
            v48 = *v47;
            v4 = v47[1];
            Hasher.init(_seed:)();

            String.hash(into:)();
            v49 = Hasher._finalize()();
            v57 = -1 << *(v5 + 32);
            v8 = v49 & ~v57;
            v2 = v8 >> 6;
            v58 = 1 << v8;
            if (((1 << v8) & v77[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:
            v4, v50, v51, v52, v53, v54, v55, v56;
            v34 = v76;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v59 = (v5[6] + 16 * v8);
          v50 = v59[1];
          if (*v59 != v48 || v50 != v4)
          {
            v61 = ~v57;
            while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              v8 = (v8 + 1) & v61;
              v2 = v8 >> 6;
              v58 = 1 << v8;
              if (((1 << v8) & v77[v8 >> 6]) == 0)
              {
                v3 = v75;
                goto LABEL_45;
              }

              v62 = (v5[6] + 16 * v8);
              v50 = v62[1];
              if (*v62 == v48 && v50 == v4)
              {
                break;
              }
            }
          }

          v4, v50, v51, v52, v53, v54, v55, v56;
          v3 = v75;
          v42 = v74[v2];
          v74[v2] = v42 & ~v58;
          v33 = (v42 & v58) == 0;
          v34 = v76;
          if (!v33)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v41 = v72 - 1;
        if (__OFSUB__(v72, 1))
        {
          __break(1u);
        }

        if (v72 == 1)
        {

          v5 = _swiftEmptySetSingleton;
          goto LABEL_51;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v64 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v34 = v76;
  }

  v65 = swift_slowAlloc();
  memcpy(v65, v77, v64);
  v66 = v69;
  sub_10019F93C(v65, v70, v5, v2, v78);
  v68 = v67;

  if (!v66)
  {

    v3 = v78[0];
    v73 = v79;
    v5 = v68;
LABEL_51:
    v13 = v3;
LABEL_53:
    sub_10001B860(v13);
    return v5;
  }

  __break(1u);
  return result;
}

void *sub_10019CA44(uint64_t a1, void *a2)
{

  return sub_10019E5F8(a1, a2, &qword_100943670, &qword_100797CB0);
}

void *sub_10019CAAC(uint64_t a1, void *a2)
{

  return sub_10019E5F8(a1, a2, &qword_1009432A0, &qword_100797C48);
}

char *sub_10019CB14(uint64_t a1, char *a2)
{
  v5 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v10);
  v12 = (&v72 - v11);
  v13 = type metadata accessor for UUID();
  __chkstk_darwin(v13, v14);
  v92 = (&v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16, v17);
  v19 = (&v72 - v18);
  __chkstk_darwin(v20, v21);
  v87 = (&v72 - v23);
  if (!*(a2 + 2))
  {

    return _swiftEmptySetSingleton;
  }

  v73 = v12;
  v75 = v8;
  v25 = a1 + 56;
  v24 = *(a1 + 56);
  v26 = -1 << *(a1 + 32);
  v86 = ~v26;
  if (-v26 < 64)
  {
    v27 = ~(-1 << -v26);
  }

  else
  {
    v27 = -1;
  }

  v94 = (v27 & v24);
  v79 = (63 - v26) >> 6;
  v93 = v22 + 16;
  v84 = (v22 + 48);
  v85 = (v22 + 56);
  v83 = (v22 + 32);
  v89 = a2 + 56;
  v74 = v22;
  v95 = (v22 + 8);

  v29 = 0;
  v76 = a1;
  for (i = a1 + 56; ; v25 = i)
  {
    v30 = v94;
    v31 = v29;
    if (v94)
    {
LABEL_14:
      v2 = (v30 - 1) & v30;
      v35 = v73;
      (*(v74 + 16))(v73, *(a1 + 48) + *(v74 + 72) * (__clz(__rbit64(v30)) | (v31 << 6)), v13);
      v36 = 0;
      v33 = v31;
    }

    else
    {
      v32 = v79 <= (v29 + 1) ? v29 + 1 : v79;
      v33 = v32 - 1;
      v34 = v29;
      while (1)
      {
        v31 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          goto LABEL_58;
        }

        if (v31 >= v79)
        {
          break;
        }

        v30 = *(v25 + 8 * v31);
        ++v34;
        if (v30)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v36 = 1;
      v35 = v73;
    }

    v81 = *v85;
    v81(v35, v36, 1, v13);
    v96 = a1;
    v97 = v25;
    v98 = v86;
    v99 = v33;
    v100 = v2;
    v80 = *v84;
    if (v80(v35, 1, v13) == 1)
    {
      sub_1000050A4(v35, &unk_100939D90, "8\n\r");
      v65 = a1;
      goto LABEL_53;
    }

    v78 = *v83;
    v78(v87, v35, v13);
    v77 = sub_1001A3B50(&qword_10093B410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v37 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v38 = -1 << a2[32];
    v29 = v37 & ~v38;
    v31 = v29 >> 6;
    v25 = 1 << v29;
    if (((1 << v29) & v89[v29 >> 6]) != 0)
    {
      break;
    }

    (*v95)(v87, v13);
LABEL_22:
    v29 = v33;
    v94 = v2;
  }

  v72 = v95 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v88 = ~v38;
  v39 = *(v74 + 72);
  v90 = *(v74 + 16);
  v91 = v39;
  while (1)
  {
    v90(v19, *(a2 + 6) + v91 * v29, v13);
    v40 = sub_1001A3B50(&qword_10093A3E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v41 = dispatch thunk of static Equatable.== infix(_:_:)();
    v94 = *v95;
    v94(v19, v13);
    if (v41)
    {
      break;
    }

    v29 = (v29 + 1) & v88;
    v31 = v29 >> 6;
    v25 = 1 << v29;
    if (((1 << v29) & v89[v29 >> 6]) == 0)
    {
      a1 = v76;
      v94(v87, v13);
      goto LABEL_22;
    }
  }

  v88 = v40;
  v42 = (v94)(v87, v13);
  v44 = a2[32];
  v72 = ((1 << v44) + 63) >> 6;
  v28 = 8 * v72;
  a1 = v76;
  if ((v44 & 0x3Fu) > 0xD)
  {
    goto LABEL_59;
  }

  while (2)
  {
    v73 = &v72;
    __chkstk_darwin(v42, v43);
    v46 = &v72 - ((v45 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v46, v89, v45);
    v47 = *&v46[8 * v31] & ~v25;
    v48 = *(a2 + 2);
    v87 = v46;
    *&v46[8 * v31] = v47;
    v49 = v48 - 1;
    v29 = v75;
    v50 = i;
    v51 = v79;
LABEL_26:
    v74 = v49;
    while (v2)
    {
      v52 = v33;
LABEL_38:
      v55 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v90(v29, *(a1 + 48) + (v55 | (v52 << 6)) * v91, v13);
      v56 = 0;
LABEL_39:
      v81(v29, v56, 1, v13);
      v96 = a1;
      v97 = v50;
      v98 = v86;
      v99 = v33;
      v100 = v2;
      if (v80(v29, 1, v13) == 1)
      {
        sub_1000050A4(v29, &unk_100939D90, "8\n\r");
        a2 = sub_1001A0E04(v87, v72, v74, a2);
        goto LABEL_52;
      }

      v78(v92, v29, v13);
      v57 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v58 = a2;
      v59 = -1 << a2[32];
      v60 = v57 & ~v59;
      v31 = v60 >> 6;
      v25 = 1 << v60;
      if (((1 << v60) & v89[v60 >> 6]) != 0)
      {
        v90(v19, *(v58 + 6) + v60 * v91, v13);
        v61 = dispatch thunk of static Equatable.== infix(_:_:)();
        v94(v19, v13);
        if ((v61 & 1) == 0)
        {
          v62 = ~v59;
          do
          {
            v60 = (v60 + 1) & v62;
            v31 = v60 >> 6;
            v25 = 1 << v60;
            if (((1 << v60) & v89[v60 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v90(v19, *(v58 + 6) + v60 * v91, v13);
            v63 = dispatch thunk of static Equatable.== infix(_:_:)();
            v94(v19, v13);
          }

          while ((v63 & 1) == 0);
        }

        v94(v92, v13);
        v64 = v87[v31];
        v87[v31] = v64 & ~v25;
        a2 = v58;
        a1 = v76;
        v29 = v75;
        v50 = i;
        v51 = v79;
        if ((v64 & v25) != 0)
        {
          v49 = v74 - 1;
          if (__OFSUB__(v74, 1))
          {
            __break(1u);
          }

          if (v74 == 1)
          {

            a2 = _swiftEmptySetSingleton;
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v94(v92, v13);
        a2 = v58;
        a1 = v76;
        v29 = v75;
        v50 = i;
        v51 = v79;
      }
    }

    if (v51 <= (v33 + 1))
    {
      v53 = v33 + 1;
    }

    else
    {
      v53 = v51;
    }

    v54 = v53 - 1;
    while (1)
    {
      v52 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v52 >= v51)
      {
        v2 = 0;
        v56 = 1;
        v33 = v54;
        goto LABEL_39;
      }

      v2 = *(v50 + 8 * v52);
      ++v33;
      if (v2)
      {
        v33 = v52;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v67 = v28;

    v87 = a2;
    v68 = v67;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v69 = v87;

      a2 = v69;
      continue;
    }

    break;
  }

  v70 = swift_slowAlloc();
  memcpy(v70, v89, v68);
  sub_10019FD7C(v70, v72, v87, v29, &v96);
  a2 = v71;

LABEL_52:
  v65 = v96;
LABEL_53:
  sub_10001B860(v65);
  return a2;
}

void *sub_10019D578(uint64_t a1, void *a2)
{

  return sub_10019E5F8(a1, a2, &qword_10093A7C8, &qword_100797CE8);
}

void *sub_10019D5E0(uint64_t a1, void *a2)
{

  return sub_10019E5F8(a1, a2, &qword_100943520, &qword_1007A3EA0);
}

void *sub_10019D648(uint64_t a1, void *a2)
{

  return sub_10019E5F8(a1, a2, &qword_100943BE0, &unk_100797D50);
}

void *sub_10019D6B0(uint64_t a1, void *a2)
{

  return sub_10019E5F8(a1, a2, &qword_100943BA0, &qword_100797D48);
}

void *sub_10019D718(uint64_t a1, void *a2)
{

  return sub_10019E5F8(a1, a2, &qword_100943B60, &qword_100797D40);
}

void *sub_10019D780(uint64_t a1, void *a2)
{

  return sub_10019E5F8(a1, a2, &qword_100943B20, &qword_100797D38);
}

void *sub_10019D7E8(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v69 = v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v9);
  v11 = v61 - v10;
  __chkstk_darwin(v12, v13);
  i = v61 - v14;
  if (!a2[2])
  {

    return _swiftEmptySetSingleton;
  }

  v75[0] = a1;
  v15 = *(a1 + 16);

  v63 = v15;
  if (!v15)
  {
LABEL_11:
    v36 = a1;
    goto LABEL_31;
  }

  v23 = 0;
  v25 = *(v5 + 16);
  v24 = v5 + 16;
  v26 = *(v24 + 64);
  v65 = a1;
  v66 = a1 + ((v26 + 32) & ~v26);
  v72 = *(v24 + 56);
  v73 = v25;
  v70 = a2 + 7;
  v71 = a2;
  v74 = v24;
  v27 = (v24 - 8);
  v62 = ((v24 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
  while (1)
  {
    v67 = v23 + 1;
    v75[1] = v23 + 1;
    v73(i, v66 + v72 * v23, v4);
    v64 = sub_1001A3B50(&qword_10093B410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v28 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v29 = -1 << *(a2 + 32);
    v30 = v28 & ~v29;
    v31 = v30 >> 6;
    v32 = 1 << v30;
    if (((1 << v30) & v70[v30 >> 6]) != 0)
    {
      break;
    }

    v35 = *v27;
LABEL_10:
    v35(i, v4);
    v23 = v67;
    if (v67 == v63)
    {
      goto LABEL_11;
    }
  }

  v33 = ~v29;
  while (1)
  {
    v73(v11, v71[6] + v30 * v72, v4);
    sub_1001A3B50(&qword_10093A3E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v34 = dispatch thunk of static Equatable.== infix(_:_:)();
    v35 = *v27;
    (*v27)(v11, v4);
    if (v34)
    {
      break;
    }

    v30 = (v30 + 1) & v33;
    v31 = v30 >> 6;
    v32 = 1 << v30;
    if (((1 << v30) & v70[v30 >> 6]) == 0)
    {
      a2 = v71;
      a1 = v65;
      goto LABEL_10;
    }
  }

  v37 = (v35)(i, v4);
  v39 = v71;
  v40 = *(v71 + 32);
  v61[0] = ((1 << v40) + 63) >> 6;
  v41 = 8 * v61[0];
  if ((v40 & 0x3Fu) > 0xD)
  {
    goto LABEL_35;
  }

  while (2)
  {
    v61[1] = v61;
    __chkstk_darwin(v37, v38);
    v43 = v61 - ((v42 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v43, v70, v42);
    v44 = v39[2];
    *&v43[8 * v31] &= ~v32;
    v62 = v43;
    v63 = (v44 - 1);
    v45 = *(v65 + 16);
    v46 = v67;
    for (i = v45; ; v45 = i)
    {
      if (v46 == v45)
      {
        a2 = sub_1001A0E04(v62, v61[0], v63, v39);
        goto LABEL_30;
      }

      if (v46 >= *(v65 + 16))
      {
        break;
      }

      v67 = v46;
      v73(v69, v66 + v46 * v72, v4);
      v48 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v49 = -1 << *(v39 + 32);
      v30 = v48 & ~v49;
      v32 = v30 >> 6;
      v31 = 1 << v30;
      if (((1 << v30) & v70[v30 >> 6]) == 0)
      {
        goto LABEL_15;
      }

      v73(v11, v71[6] + v30 * v72, v4);
      v50 = dispatch thunk of static Equatable.== infix(_:_:)();
      v35(v11, v4);
      if ((v50 & 1) == 0)
      {
        v51 = ~v49;
        while (1)
        {
          v30 = (v30 + 1) & v51;
          v32 = v30 >> 6;
          v31 = 1 << v30;
          if (((1 << v30) & v70[v30 >> 6]) == 0)
          {
            break;
          }

          v73(v11, v71[6] + v30 * v72, v4);
          v52 = dispatch thunk of static Equatable.== infix(_:_:)();
          v35(v11, v4);
          if (v52)
          {
            goto LABEL_25;
          }
        }

LABEL_15:
        v35(v69, v4);
        v39 = v71;
LABEL_16:
        v47 = v67;
        goto LABEL_17;
      }

LABEL_25:
      v35(v69, v4);
      v53 = v62[v32];
      v62[v32] = v53 & ~v31;
      v39 = v71;
      if ((v53 & v31) == 0)
      {
        goto LABEL_16;
      }

      v54 = v63 - 1;
      v47 = v67;
      if (__OFSUB__(v63, 1))
      {
        goto LABEL_34;
      }

      --v63;
      if (!v54)
      {

        a2 = _swiftEmptySetSingleton;
        goto LABEL_30;
      }

LABEL_17:
      v46 = v47 + 1;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    v56 = v41;

    v57 = v56;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v58 = v71;

      v39 = v58;
      continue;
    }

    break;
  }

  v59 = swift_slowAlloc();
  memcpy(v59, v70, v57);
  sub_1001A0250(v59, v61[0], v71, v30, v75);
  a2 = v60;

LABEL_30:
  v36 = v65;
LABEL_31:
  v36, v16, v17, v18, v19, v20, v21, v22;
  return a2;
}

void *sub_10019DEA8(uint64_t a1, void *a2)
{

  return sub_10019E5F8(a1, a2, &qword_10093A7A0, &qword_100797CC0);
}

void *sub_10019DF10(uint64_t a1, void *a2)
{

  return sub_10019E5F8(a1, a2, &qword_10093A7A8, &qword_100797CC8);
}

void *sub_10019DF78(uint64_t a1, void *a2)
{

  return sub_10019E5F8(a1, a2, &qword_10093A7B0, &qword_100797CD0);
}

void *sub_10019DFE0(uint64_t a1, void *a2)
{

  return sub_10019E5F8(a1, a2, &qword_10093A7B8, &qword_100797CD8);
}

void *sub_10019E048(uint64_t a1, void *a2)
{

  return sub_10019E5F8(a1, a2, &qword_10093A7C0, &qword_100797CE0);
}

void *sub_10019E0B0(uint64_t a1, void *a2)
{

  return sub_10019E5F8(a1, a2, &qword_10093A7D0, &unk_100797CF0);
}

void *sub_10019E118(uint64_t a1, void *a2)
{

  return sub_10019E5F8(a1, a2, &qword_10093A7D8, &qword_100797D08);
}

void *sub_10019E180(uint64_t a1, void *a2)
{

  return sub_10019E5F8(a1, a2, &qword_10093A760, &qword_100797C40);
}

void *sub_10019E1E8(uint64_t a1, void *a2)
{

  return sub_10019E5F8(a1, a2, &qword_10093A768, &qword_100797C50);
}

void *sub_10019E250(uint64_t a1, void *a2)
{

  return sub_10019E5F8(a1, a2, &qword_10093A848, &qword_1007A4740);
}

void *sub_10019E2B8(uint64_t a1, void *a2)
{

  return sub_10019E5F8(a1, a2, &qword_10093A770, &qword_100797C58);
}

void *sub_10019E320(uint64_t a1, void *a2)
{

  return sub_10019E5F8(a1, a2, &qword_10093A778, &qword_100797C60);
}

void *sub_10019E388(uint64_t a1, void *a2)
{

  return sub_10019E5F8(a1, a2, &qword_10093A780, &qword_100797C68);
}

void *sub_10019E3F0(uint64_t a1, void *a2)
{

  return sub_10019E5F8(a1, a2, &qword_10093A788, &unk_100797C70);
}

void *sub_10019E458(uint64_t a1, void *a2)
{

  return sub_10019E5F8(a1, a2, &qword_1009435C0, &unk_100797CA0);
}

void *sub_10019E4C0(uint64_t a1, void *a2)
{

  return sub_10019E5F8(a1, a2, &qword_100943620, &qword_1007A3F40);
}

void *sub_10019E528(uint64_t a1, void *a2)
{

  return sub_10019E5F8(a1, a2, &qword_10093A798, &qword_100797CB8);
}

void *sub_10019E590(uint64_t a1, void *a2)
{

  return sub_10019E5F8(a1, a2, &qword_100943900, &qword_100797D00);
}

void *sub_10019E5F8(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = a2;
  if (a2[2])
  {
    v5 = a1;
    v61 = a3;
    v62 = a4;
    v70[0] = a1;
    v6 = *(a1 + 16);

    v65 = v6;
    if (!v6)
    {
      goto LABEL_29;
    }

    v14 = 0;
    v67 = v5 + 32;
    v69 = v4 + 7;
    while (1)
    {
      v15 = *(v67 + 8 * v14);
      v68 = v14 + 1;
      Hasher.init(_seed:)();
      v16 = v15;
      NSObject.hash(into:)();
      v17 = Hasher._finalize()();
      v18 = -1 << *(v4 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      v21 = 1 << v19;
      if (((1 << v19) & v69[v19 >> 6]) != 0)
      {
        break;
      }

LABEL_4:

      v14 = v68;
      if (v68 == v65)
      {
        goto LABEL_29;
      }
    }

    v22 = ~v18;
    sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
    while (1)
    {
      v23 = *(v4[6] + 8 * v19);
      v24 = static NSObject.== infix(_:_:)();

      if (v24)
      {
        break;
      }

      v19 = (v19 + 1) & v22;
      v20 = v19 >> 6;
      v21 = 1 << v19;
      if (((1 << v19) & v69[v19 >> 6]) == 0)
      {
        goto LABEL_4;
      }
    }

    v25 = v68;
    v70[1] = v68;

    v28 = *(v4 + 32);
    v29 = ((1 << v28) + 63) >> 6;
    v30 = 8 * v29;
    if ((v28 & 0x3Fu) > 0xD)
    {
LABEL_33:
      v46 = v30;

      v47 = v46;
      if (!swift_stdlib_isStackAllocationSafe())
      {
        v48 = swift_slowAlloc();
        memcpy(v48, v69, v47);
        sub_10019FB74(v48, v29, v4, v19, v70, v61, v62);
        v50 = v49;

        v5, v51, v52, v53, v54, v55, v56, v57;
        return v50;
      }
    }

    v59 = v29;
    v60 = &v58;
    __chkstk_darwin(v26, v27);
    v32 = &v58 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v32, v69, v31);
    v33 = v4[2];
    v34 = *&v32[8 * v20] & ~v21;
    v64 = v32;
    *&v32[8 * v20] = v34;
    v35 = v33 - 1;
    v36 = *(v5 + 16);
    v65 = v36;
    v66 = v5;
LABEL_13:
    v63 = v35;
    if (v25 != v36)
    {
      v29 = v25;
      v68 = v25;
      do
      {
        if ((v25 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        if (v29 >= *(v5 + 16))
        {
          goto LABEL_32;
        }

        v37 = *(v67 + 8 * v29++);
        Hasher.init(_seed:)();
        v38 = v37;
        NSObject.hash(into:)();
        v39 = Hasher._finalize()();
        v40 = -1 << *(v4 + 32);
        v21 = v39 & ~v40;
        v19 = v21 >> 6;
        v20 = 1 << v21;
        if (((1 << v21) & v69[v21 >> 6]) != 0)
        {
          v41 = ~v40;
          while (1)
          {
            v42 = *(v4[6] + 8 * v21);
            v43 = static NSObject.== infix(_:_:)();

            if (v43)
            {
              break;
            }

            v21 = (v21 + 1) & v41;
            v19 = v21 >> 6;
            v20 = 1 << v21;
            if (((1 << v21) & v69[v21 >> 6]) == 0)
            {
              goto LABEL_15;
            }
          }

          v25 = v68;
          v36 = v65;

          v44 = v64[v19];
          v64[v19] = v44 & ~v20;
          v5 = v66;
          if ((v44 & v20) != 0)
          {
            v35 = v63 - 1;
            if (__OFSUB__(v63, 1))
            {
              __break(1u);
            }

            v25 = v29;
            if (v63 == 1)
            {

              v4 = _swiftEmptySetSingleton;
              goto LABEL_29;
            }

            goto LABEL_13;
          }
        }

        else
        {
LABEL_15:

          v36 = v65;
          v5 = v66;
          v25 = v68;
        }
      }

      while (v29 != v36);
    }

    v4 = sub_1001A1340(v64, v59, v63, v4, v61, v62);
LABEL_29:
    v5, v7, v8, v9, v10, v11, v12, v13;
  }

  else
  {

    return _swiftEmptySetSingleton;
  }

  return v4;
}

uint64_t sub_10019EA98(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = __CocoaSet.contains(_:)();

    if (v6)
    {
      v14 = sub_1001A1548(v4, v5, sub_10037F9A0, &type metadata accessor for REMObjectID_Codable, v10, v11, v12, v13);
      v3, v15, v16, v17, v18, v19, v20, v21;
      return v14;
    }

    v3, v7, v8, v9, v10, v11, v12, v13;
    return 0;
  }

  v23 = v1;
  type metadata accessor for REMObjectID_Codable();
  v24 = NSObject._rawHashValue(seed:)(*(v3 + 40));
  v25 = -1 << *(v3 + 32);
  v26 = v24 & ~v25;
  if (((*(v3 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
  {
    return 0;
  }

  v27 = ~v25;
  while (1)
  {
    v28 = *(*(v3 + 48) + 8 * v26);
    v29 = static NSObject.== infix(_:_:)();

    if (v29)
    {
      break;
    }

    v26 = (v26 + 1) & v27;
    if (((*(v3 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v23;
  v33 = *v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10019B93C(&qword_10093A838, &unk_1007A4510);
    v31 = v33;
  }

  v32 = *(*(v31 + 48) + 8 * v26);
  sub_100052DA4(v26);
  result = v32;
  *v23 = v33;
  return result;
}

uint64_t sub_10019EC58(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10019A674();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_1001A1820(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_10019ED94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1001A3B50(&qword_10093B410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v32 = a1;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v30 = v10 + 56;
  v31 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v27 = v2;
    v28 = v6;
    v29 = a2;
    v15 = ~v13;
    v18 = *(v6 + 16);
    v17 = v6 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    while (1)
    {
      v16(v9, *(v31 + 48) + v19 * v14, v5);
      sub_1001A3B50(&qword_10093A3E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v17 - 8))(v9, v5);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v30 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v21 = 1;
        v6 = v28;
        a2 = v29;
        return (*(v6 + 56))(a2, v21, 1, v5);
      }
    }

    v22 = v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v22;
    v33 = *v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10019B0B4(&type metadata accessor for UUID, &qword_10093A708, &unk_100797B68);
      v24 = v33;
    }

    v6 = v28;
    a2 = v29;
    (*(v28 + 32))(v29, *(v24 + 48) + v19 * v14, v5);
    sub_1001A19E4(v14);
    v21 = 0;
    *v22 = v33;
  }

  else
  {
    v21 = 1;
  }

  return (*(v6 + 56))(a2, v21, 1, v5);
}

uint64_t sub_10019F060(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = __CocoaSet.contains(_:)();

    if (v6)
    {
      v14 = sub_1001A16B0(v4, v5, sub_10037F77C, &qword_1009391E0, REMObjectID_ptr, v11, v12, v13);
      v3, v15, v16, v17, v18, v19, v20, v21;
      return v14;
    }

    v3, v7, v8, v9, v10, v11, v12, v13;
    return 0;
  }

  v23 = v1;
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  v24 = NSObject._rawHashValue(seed:)(*(v3 + 40));
  v25 = -1 << *(v3 + 32);
  v26 = v24 & ~v25;
  if (((*(v3 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
  {
    return 0;
  }

  v27 = ~v25;
  while (1)
  {
    v28 = *(*(v3 + 48) + 8 * v26);
    v29 = static NSObject.== infix(_:_:)();

    if (v29)
    {
      break;
    }

    v26 = (v26 + 1) & v27;
    if (((*(v3 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v23;
  v33 = *v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10019B93C(&qword_10093A728, &unk_100797BC0);
    v31 = v33;
  }

  v32 = *(*(v31 + 48) + 8 * v26);
  sub_100052DA4(v26);
  result = v32;
  *v23 = v33;
  return result;
}

uint64_t sub_10019F22C@<X0>(uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = type metadata accessor for RDPermanentlyHiddenReminder(0);
  v23 = *(v3 - 8);
  __chkstk_darwin(v3, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v7 = *v2;
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1001A3B50(&qword_10093B410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v24 = v3;
  type metadata accessor for Date();
  sub_1001A3B50(&unk_1009431A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  dispatch thunk of Hashable.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return (*(v23 + 56))(v22, 1, 1, v24);
  }

  v11 = ~v9;
  v12 = *(v23 + 72);
  while (1)
  {
    sub_1001A3A2C(*(v7 + 48) + v12 * v10, v6);
    if (static UUID.== infix(_:_:)())
    {
      break;
    }

    sub_1001A3AF4(v6);
LABEL_4:
    v10 = (v10 + 1) & v11;
    if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return (*(v23 + 56))(v22, 1, 1, v24);
    }
  }

  v13 = static Date.== infix(_:_:)();
  sub_1001A3AF4(v6);
  if ((v13 & 1) == 0)
  {
    goto LABEL_4;
  }

  v14 = v21;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v14;
  v25 = *v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10019B5C8();
    v16 = v25;
  }

  v17 = *(v16 + 48) + v12 * v10;
  v18 = v22;
  sub_1001A3A90(v17, v22);
  sub_1001A1CEC(v10);
  *v14 = v25;
  return (*(v23 + 56))(v18, 0, 1, v24);
}

uint64_t sub_10019F4E4(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = __CocoaSet.contains(_:)();

    if (v6)
    {
      v14 = sub_1001A16B0(v4, v5, sub_10037FE48, &unk_10093F610, NSString_ptr, v11, v12, v13);
      v3, v15, v16, v17, v18, v19, v20, v21;
      return v14;
    }

    v3, v7, v8, v9, v10, v11, v12, v13;
    return 0;
  }

  v23 = v1;
  sub_1000060C8(0, &unk_10093F610, NSString_ptr);
  v24 = NSObject._rawHashValue(seed:)(*(v3 + 40));
  v25 = -1 << *(v3 + 32);
  v26 = v24 & ~v25;
  if (((*(v3 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
  {
    return 0;
  }

  v27 = ~v25;
  while (1)
  {
    v28 = *(*(v3 + 48) + 8 * v26);
    v29 = static NSObject.== infix(_:_:)();

    if (v29)
    {
      break;
    }

    v26 = (v26 + 1) & v27;
    if (((*(v3 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v23;
  v33 = *v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_10019B93C(&qword_10093A850, &qword_100797DD0);
    v31 = v33;
  }

  v32 = *(*(v31 + 48) + 8 * v26);
  sub_100052DA4(v26);
  result = v32;
  *v23 = v33;
  return result;
}

void sub_10019F6B0(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v33 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        if ((*v5 & 0x8000000000000000) != 0)
        {
          if (!__CocoaSet.Iterator.next()())
          {
            goto LABEL_30;
          }

          type metadata accessor for REMObjectID_Codable();
          swift_dynamicCast();
          v12 = v34;
          if (!v34)
          {
            goto LABEL_30;
          }
        }

        else
        {
          v9 = v5[3];
          v10 = v5[4];
          if (!v10)
          {
            v13 = (v5[2] + 64) >> 6;
            if (v13 <= v9 + 1)
            {
              v14 = v9 + 1;
            }

            else
            {
              v14 = (v5[2] + 64) >> 6;
            }

            v15 = v14 - 1;
            while (1)
            {
              v11 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                break;
              }

              if (v11 >= v13)
              {
                v12 = 0;
                v16 = 0;
                goto LABEL_18;
              }

              v10 = *(v5[1] + 8 * v11);
              ++v9;
              if (v10)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_32;
          }

          v11 = v5[3];
LABEL_17:
          v16 = (v10 - 1) & v10;
          v12 = *(*(*v5 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
          v17 = v12;
          v15 = v11;
LABEL_18:
          v5[3] = v15;
          v5[4] = v16;
          if (!v12)
          {
LABEL_30:

            sub_1001A1154(a1, a2, v30, a3, &qword_10093A838, &unk_1007A4510);
            return;
          }
        }

        v18 = NSObject._rawHashValue(seed:)(*(a3 + 40));
        v19 = -1 << *(a3 + 32);
        v20 = v18 & ~v19;
        v21 = v20 >> 6;
        v22 = 1 << v20;
        if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        type metadata accessor for REMObjectID_Codable();
        v23 = *(*(a3 + 48) + 8 * v20);
        v24 = static NSObject.== infix(_:_:)();

        if (v24)
        {
          break;
        }

        v25 = ~v19;
        while (1)
        {
          v20 = (v20 + 1) & v25;
          v21 = v20 >> 6;
          v22 = 1 << v20;
          if (((1 << v20) & *(v33 + 8 * (v20 >> 6))) == 0)
          {
            break;
          }

          v26 = *(*(a3 + 48) + 8 * v20);
          v27 = static NSObject.== infix(_:_:)();

          if (v27)
          {
            goto LABEL_24;
          }
        }

LABEL_3:

        v5 = a5;
      }

LABEL_24:
      v5 = a5;

      v28 = a1[v21];
      a1[v21] = v28 & ~v22;
    }

    while ((v28 & v22) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_32:
      __break(1u);
      return;
    }

    if (v30 != 1)
    {
      continue;
    }

    break;
  }
}

void sub_10019F93C(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v37 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v35 = v11 + 1;
          }

          else
          {
            v35 = (a5[2] + 64) >> 6;
          }

          a5[3] = v35 - 1;
          a5[4] = 0;

          sub_1001A0BCC(a1, a2, v37, a3);
          return;
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        Hasher.init(_seed:)();

        String.hash(into:)();
        v19 = Hasher._finalize()();
        v27 = -1 << *(a3 + 32);
        v28 = v19 & ~v27;
        v29 = v28 >> 6;
        v30 = 1 << v28;
        if (((1 << v28) & *(v9 + 8 * (v28 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
        v17, v20, v21, v22, v23, v24, v25, v26;
      }

      v31 = (*(a3 + 48) + 16 * v28);
      v20 = v31[1];
      if (*v31 != v18 || v20 != v17)
      {
        v33 = ~v27;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v28 = (v28 + 1) & v33;
          v29 = v28 >> 6;
          v30 = 1 << v28;
          if (((1 << v28) & *(v9 + 8 * (v28 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v34 = (*(a3 + 48) + 16 * v28);
          v20 = v34[1];
          if (*v34 == v18 && v20 == v17)
          {
            break;
          }
        }
      }

      v17, v20, v21, v22, v23, v24, v25, v26;
      v10 = a1[v29];
      a1[v29] = v10 & ~v30;
    }

    while ((v10 & v30) == 0);
    v8 = v37 - 1;
    if (__OFSUB__(v37, 1))
    {
LABEL_30:
      __break(1u);
    }

    else if (v37 != 1)
    {
      continue;
    }

    break;
  }
}

void sub_10019FB74(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, uint64_t *a6, uint64_t *a7)
{
  v8 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v31 = a3 + 56;
  v30 = a5;
  while (2)
  {
    v28 = v9;
    while (1)
    {
      v10 = a5[1];
      v11 = *(*a5 + 16);
      if (v10 == v11)
      {

        sub_1001A1340(a1, a2, v28, a3, a6, a7);
        return;
      }

      if (v10 >= v11)
      {
        __break(1u);
        goto LABEL_18;
      }

      v12 = *(*a5 + 8 * v10 + 32);
      a5[1] = v10 + 1;
      Hasher.init(_seed:)();
      v13 = v12;
      NSObject.hash(into:)();
      v14 = Hasher._finalize()();
      v15 = -1 << *(a3 + 32);
      v16 = v14 & ~v15;
      v17 = v16 >> 6;
      v18 = 1 << v16;
      if (((1 << v16) & *(v31 + 8 * (v16 >> 6))) == 0)
      {
        goto LABEL_3;
      }

      sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
      v19 = *(*(a3 + 48) + 8 * v16);
      v20 = static NSObject.== infix(_:_:)();

      if ((v20 & 1) == 0)
      {
        v21 = ~v15;
        while (1)
        {
          v16 = (v16 + 1) & v21;
          v17 = v16 >> 6;
          v18 = 1 << v16;
          if (((1 << v16) & *(v31 + 8 * (v16 >> 6))) == 0)
          {
            break;
          }

          v22 = *(*(a3 + 48) + 8 * v16);
          v23 = static NSObject.== infix(_:_:)();

          if (v23)
          {
            goto LABEL_12;
          }
        }

LABEL_3:

        goto LABEL_4;
      }

LABEL_12:

      v24 = a1[v17];
      a1[v17] = v24 & ~v18;
      if ((v24 & v18) != 0)
      {
        break;
      }

LABEL_4:
      a5 = v30;
    }

    v9 = v28 - 1;
    a5 = v30;
    if (__OFSUB__(v28, 1))
    {
LABEL_18:
      __break(1u);
      return;
    }

    if (v28 != 1)
    {
      continue;
    }

    break;
  }
}

void sub_10019FD7C(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v50 = a2;
  v9 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v9 - 8, v10);
  v12 = &v49 - v11;
  v13 = type metadata accessor for UUID();
  __chkstk_darwin(v13, v14);
  v60 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16, v17);
  v66 = &v49 - v19;
  v20 = *(a3 + 16);
  v21 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v22 = *(a1 + v21);
  v52 = a1;
  v53 = v12;
  *(a1 + v21) = v22 & ((-1 << a4) - 1);
  v23 = v20 - 1;
  v63 = v24 + 16;
  v64 = a3;
  v57 = (v24 + 48);
  v58 = (v24 + 56);
  v56 = (v24 + 32);
  v62 = a3 + 56;
  v59 = v24;
  v65 = (v24 + 8);
  v54 = a5;
  while (2)
  {
    v51 = v23;
    do
    {
      while (1)
      {
        v26 = *a5;
        v27 = a5[1];
        v29 = a5[2];
        v28 = a5[3];
        v30 = a5[4];
        if (!v30)
        {
          v32 = (v29 + 64) >> 6;
          if (v32 <= v28 + 1)
          {
            v33 = v28 + 1;
          }

          else
          {
            v33 = (v29 + 64) >> 6;
          }

          v34 = v33 - 1;
          while (1)
          {
            v31 = v28 + 1;
            if (__OFADD__(v28, 1))
            {
              break;
            }

            if (v31 >= v32)
            {
              v35 = 0;
              v36 = 1;
              goto LABEL_15;
            }

            v30 = *(v27 + 8 * v31);
            ++v28;
            if (v30)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_29;
        }

        v31 = a5[3];
LABEL_14:
        v35 = (v30 - 1) & v30;
        (*(v59 + 16))(v12, *(v26 + 48) + *(v59 + 72) * (__clz(__rbit64(v30)) | (v31 << 6)), v13, v18);
        v36 = 0;
        v34 = v31;
LABEL_15:
        (*v58)(v12, v36, 1, v13);
        *a5 = v26;
        a5[1] = v27;
        a5[2] = v29;
        a5[3] = v34;
        a5[4] = v35;
        if ((*v57)(v12, 1, v13) == 1)
        {
          sub_1000050A4(v12, &unk_100939D90, "8\n\r");
          v48 = v64;

          sub_1001A0E04(v52, v50, v51, v48);
          return;
        }

        (*v56)(v66, v12, v13);
        v37 = v64;
        sub_1001A3B50(&qword_10093B410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v38 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v39 = -1 << *(v37 + 32);
        v40 = v38 & ~v39;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) != 0)
        {
          break;
        }

        v25 = *v65;
LABEL_4:
        v25(v66, v13);
      }

      v55 = v65 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v61 = ~v39;
      v43 = *(v59 + 72);
      v44 = *(v59 + 16);
      while (1)
      {
        v45 = v60;
        v44(v60, *(v64 + 48) + v43 * v40, v13);
        sub_1001A3B50(&qword_10093A3E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v46 = dispatch thunk of static Equatable.== infix(_:_:)();
        v25 = *v65;
        (*v65)(v45, v13);
        if (v46)
        {
          break;
        }

        v40 = (v40 + 1) & v61;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) == 0)
        {
          v12 = v53;
          a5 = v54;
          goto LABEL_4;
        }
      }

      v25(v66, v13);
      v12 = v53;
      v47 = v52[v41];
      v52[v41] = v47 & ~v42;
      a5 = v54;
    }

    while ((v47 & v42) == 0);
    v23 = v51 - 1;
    if (__OFSUB__(v51, 1))
    {
LABEL_29:
      __break(1u);
      return;
    }

    if (v51 != 1)
    {
      continue;
    }

    break;
  }
}

void sub_1001A0250(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v38 = a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9, v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v15);
  v45 = &v38 - v16;
  v19 = __chkstk_darwin(v17, v18);
  v51 = &v38 - v20;
  v21 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v39 = a1;
  v40 = v21 - 1;
  v22 = *a5;
  v23 = a5[1];
  v24 = *(*a5 + 16);
  if (v23 == v24)
  {
LABEL_2:

    sub_1001A0E04(v39, v38, v40, a3);
    return;
  }

  v43 = v10 + 32;
  v44 = v10;
  v46 = a3 + 56;
  v41 = a5;
  v49 = v10 + 16;
  v50 = (v10 + 8);
  while (v23 < v24)
  {
    v26 = *(v10 + 80);
    v48 = *(v10 + 72);
    v27 = v45;
    v47 = *(v10 + 16);
    v47(v45, v22 + ((v26 + 32) & ~v26) + v48 * v23, v9, v19);
    a5[1] = v23 + 1;
    (*(v10 + 32))(v51, v27, v9);
    sub_1001A3B50(&qword_10093B410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v28 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v29 = -1 << *(a3 + 32);
    v30 = v28 & ~v29;
    v31 = v30 >> 6;
    v32 = 1 << v30;
    if (((1 << v30) & *(v46 + 8 * (v30 >> 6))) == 0)
    {
      v25 = *v50;
LABEL_5:
      v25(v51, v9);
      goto LABEL_6;
    }

    v42 = v50 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v33 = a3;
    v34 = ~v29;
    while (1)
    {
      (v47)(v13, *(v33 + 48) + v30 * v48, v9);
      sub_1001A3B50(&qword_10093A3E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v35 = dispatch thunk of static Equatable.== infix(_:_:)();
      v25 = *v50;
      (*v50)(v13, v9);
      if (v35)
      {
        break;
      }

      v30 = (v30 + 1) & v34;
      v31 = v30 >> 6;
      v32 = 1 << v30;
      if (((1 << v30) & *(v46 + 8 * (v30 >> 6))) == 0)
      {
        a3 = v33;
        a5 = v41;
        goto LABEL_5;
      }
    }

    v25(v51, v9);
    v36 = v39[v31];
    v39[v31] = v36 & ~v32;
    if ((v36 & v32) == 0)
    {
      a3 = v33;
      a5 = v41;
LABEL_6:
      v10 = v44;
      goto LABEL_7;
    }

    v37 = v40 - 1;
    v10 = v44;
    if (__OFSUB__(v40, 1))
    {
      goto LABEL_20;
    }

    a3 = v33;
    a5 = v41;
    --v40;
    if (!v37)
    {
      return;
    }

LABEL_7:
    v22 = *a5;
    v23 = a5[1];
    v24 = *(*a5 + 16);
    if (v23 == v24)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

Swift::Int sub_1001A0644(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = _swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1000F5104(&qword_10093A748, &qword_100797BF8);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v33 = (v10 - 1) & v10;
LABEL_17:
    v16 = (*(v4 + 48) + 24 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = v16[2];
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v17);
    v20 = v18;
    v21 = v19;
    NSObject.hash(into:)();
    NSObject.hash(into:)();
    result = Hasher._finalize()();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (v9[6] + 24 * v25);
    *v30 = v17;
    v30[1] = v20;
    v30[2] = v21;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    v10 = v33;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v33 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1001A08A4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  PredicateType = type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicateType();
  v8 = *(PredicateType - 8);
  __chkstk_darwin(PredicateType, v9);
  v35 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return _swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_1000F5104(&qword_10093A820, &qword_1007A4570);
  result = static _SetStorage.allocate(capacity:)();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v31 = (v8 + 32);
  v32 = v8 + 16;
  v30 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v33 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v34 = *(v8 + 72);
    (*(v8 + 16))(v35, v19 + v34 * (v16 | (v14 << 6)), PredicateType);
    sub_1001A3B50(&qword_10093A818, &type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicateType, &protocol conformance descriptor for REMCustomSmartListFilterDescriptor.PostFetchPredicateType);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = (*v31)(*(v11 + 48) + v23 * v34, v35, PredicateType);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v30;
    v13 = v33;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v33 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

Swift::Int sub_1001A0BCC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = _swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1000F5104(&qword_100942EE0, &qword_1007A3970);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (v9[6] + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1001A0E04(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = type metadata accessor for UUID();
  v8 = *(v36 - 8);
  __chkstk_darwin(v36, v9);
  v35 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return _swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_1000F5104(&qword_10093A708, &unk_100797B68);
  result = static _SetStorage.allocate(capacity:)();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v31 = (v8 + 32);
  v32 = v8 + 16;
  v30 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v33 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v34 = *(v8 + 72);
    (*(v8 + 16))(v35, v19 + v34 * (v16 | (v14 << 6)), v36);
    sub_1001A3B50(&qword_10093B410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = (*v31)(*(v11 + 48) + v23 * v34, v35, v36);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v30;
    v13 = v33;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v33 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

Swift::Int sub_1001A1154(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v6 = a4;
  if (!a3)
  {
    v11 = _swiftEmptySetSingleton;
LABEL_6:

    return v11;
  }

  v7 = a3;
  if (*(a4 + 16) == a3)
  {
    return v6;
  }

  sub_1000F5104(a5, a6);
  result = static _SetStorage.allocate(capacity:)();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_17:
    v18 = v11[5];
    v19 = *(*(v6 + 48) + 8 * (v15 | (v13 << 6)));
    result = NSObject._rawHashValue(seed:)(v18);
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v14 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(v11[6] + 8 * v23) = v19;
    ++v11[2];
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_32;
    }

    if (!v7)
    {
      goto LABEL_6;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_6;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v12 = (v17 - 1) & v17;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

Swift::Int sub_1001A1340(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v6 = a4;
  if (!a3)
  {
    v11 = _swiftEmptySetSingleton;
LABEL_6:

    return v11;
  }

  v7 = a3;
  if (*(a4 + 16) == a3)
  {
    return v6;
  }

  sub_1000F5104(a5, a6);
  result = static _SetStorage.allocate(capacity:)();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_17:
    v18 = *(*(v6 + 48) + 8 * (v15 | (v13 << 6)));
    Hasher.init(_seed:)();
    v19 = v18;
    NSObject.hash(into:)();
    result = Hasher._finalize()();
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v14 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(v11[6] + 8 * v23) = v19;
    ++v11[2];
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_32;
    }

    if (!v7)
    {
      goto LABEL_6;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_6;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v12 = (v17 - 1) & v17;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1001A1548(uint64_t a1, const char *a2, uint64_t (*a3)(uint64_t, uint64_t), void (*a4)(void), void *a5, void *a6, void *a7, void *a8)
{
  v11 = v8;
  *v8, a2, a3, a4, a5, a6, a7, a8;
  v12 = __CocoaSet.count.getter();
  v13 = swift_unknownObjectRetain();
  v14 = a3(v13, v12);
  v24 = v14;
  v15 = *(v14 + 40);

  v16 = NSObject._rawHashValue(seed:)(v15);
  v17 = -1 << *(v14 + 32);
  v18 = v16 & ~v17;
  if ((*(v14 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
  {
    v19 = ~v17;
    a4(0);
    while (1)
    {
      v20 = *(*(v14 + 48) + 8 * v18);
      v21 = static NSObject.== infix(_:_:)();

      if (v21)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v14 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v22 = *(*(v14 + 48) + 8 * v18);
  sub_100052DA4(v18);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    *v11 = v24;
    return v22;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001A16B0(uint64_t a1, const char *a2, uint64_t (*a3)(uint64_t, uint64_t), unint64_t *a4, void *a5, void *a6, void *a7, void *a8)
{
  v12 = v8;
  *v8, a2, a3, a4, a5, a6, a7, a8;
  v13 = __CocoaSet.count.getter();
  v14 = swift_unknownObjectRetain();
  v15 = a3(v14, v13);
  v25 = v15;
  v16 = *(v15 + 40);

  v17 = NSObject._rawHashValue(seed:)(v16);
  v18 = -1 << *(v15 + 32);
  v19 = v17 & ~v18;
  if ((*(v15 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
  {
    v20 = ~v18;
    sub_1000060C8(0, a4, a5);
    while (1)
    {
      v21 = *(*(v15 + 48) + 8 * v19);
      v22 = static NSObject.== infix(_:_:)();

      if (v22)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v15 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v23 = *(*(v15 + 48) + 8 * v19);
  sub_100052DA4(v19);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    *v12 = v25;
    return v23;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1001A1820(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 16 * v6 + 8);
        Hasher.init(_seed:)();

        String.hash(into:)();
        v11 = Hasher._finalize()();
        v10, v12, v13, v14, v15, v16, v17, v18;
        v19 = v11 & v7;
        if (v2 >= v9)
        {
          if (v19 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v19 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v19)
        {
LABEL_11:
          v20 = *(v3 + 48);
          v21 = (v20 + 16 * v2);
          v22 = (v20 + 16 * v6);
          if (v2 != v6 || v21 >= v22 + 1)
          {
            *v21 = *v22;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v23 = *(v3 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v25;
    ++*(v3 + 36);
  }

  return result;
}

void sub_1001A19E4(int64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = _HashTable.previousHole(before:)();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v14 = v12;
      v15 = (v13 + 1) & v12;
      v35 = *(v4 + 16);
      v36 = v4 + 16;
      v16 = *(v4 + 72);
      v33 = (v4 + 8);
      v34 = v9;
      v17 = v16;
      do
      {
        v18 = v17;
        v19 = v17 * v11;
        v35(v7, *(v8 + 48) + v17 * v11, v3);
        v20 = v8;
        v21 = v15;
        v22 = v14;
        v23 = v20;
        sub_1001A3B50(&qword_10093B410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v24 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v33)(v7, v3);
        v25 = v24 & v22;
        v14 = v22;
        v15 = v21;
        if (a1 >= v21)
        {
          if (v25 >= v21 && a1 >= v25)
          {
LABEL_16:
            v8 = v23;
            v28 = *(v23 + 48);
            v17 = v18;
            v29 = v18 * a1;
            if (v18 * a1 < v19 || v28 + v18 * a1 >= (v28 + v19 + v18))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v11;
            }

            else
            {
              a1 = v11;
              if (v29 != v19)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v11;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v25 >= v21 || a1 >= v25)
        {
          goto LABEL_16;
        }

        v8 = v23;
        v17 = v18;
LABEL_5:
        v11 = (v11 + 1) & v14;
        v9 = v34;
      }

      while (((*(v34 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v30 = *(v8 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v32;
    ++*(v8 + 36);
  }
}

void sub_1001A1CEC(int64_t a1)
{
  v27 = type metadata accessor for RDPermanentlyHiddenReminder(0);
  v3 = *(v27 - 8);
  __chkstk_darwin(v27, v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = _HashTable.previousHole(before:)();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v26 = (v12 + 1) & v11;
      v13 = *(v3 + 72);
      v14 = v11;
      do
      {
        v15 = v8;
        v16 = v13;
        v17 = v13 * v10;
        sub_1001A3A2C(*(v7 + 48) + v13 * v10, v6);
        Hasher.init(_seed:)();
        type metadata accessor for UUID();
        sub_1001A3B50(&qword_10093B410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v18 = v14;
        dispatch thunk of Hashable.hash(into:)();
        type metadata accessor for Date();
        sub_1001A3B50(&unk_1009431A0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        dispatch thunk of Hashable.hash(into:)();
        v19 = Hasher._finalize()();
        sub_1001A3AF4(v6);
        v20 = v19 & v18;
        v14 = v18;
        if (a1 >= v26)
        {
          if (v20 < v26)
          {
            v13 = v16;
            goto LABEL_5;
          }

          v13 = v16;
          if (a1 < v20)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v13 = v16;
          if (v20 < v26 && a1 < v20)
          {
            goto LABEL_5;
          }
        }

        v21 = v13 * a1;
        if (v13 * a1 < v17 || *(v7 + 48) + v13 * a1 >= (*(v7 + 48) + v17 + v13))
        {
          swift_arrayInitWithTakeFrontToBack();
          goto LABEL_17;
        }

        a1 = v10;
        if (v21 != v17)
        {
          swift_arrayInitWithTakeBackToFront();
LABEL_17:
          a1 = v10;
        }

LABEL_5:
        v10 = (v10 + 1) & v14;
        v8 = v15;
      }

      while (((*(v15 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v22 = *(v7 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v24;
    ++*(v7 + 36);
  }
}

void *sub_1001A2030(uint64_t a1, uint64_t a2, __n128 a3)
{

  return sub_1001A2130(a1, a2, sub_1001A23A4, sub_1001A23A4);
}

void *sub_1001A20B0(uint64_t a1, uint64_t a2, __n128 a3)
{

  return sub_1001A2130(a1, a2, sub_1001A2A8C, sub_1001A2A8C);
}

void *sub_1001A2130(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a4)(void *, uint64_t, uint64_t, uint64_t))
{
  v8 = *(a2 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe, v13);
    bzero(&v17 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v11);
    v14 = a3(&v17 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v10, a2, a1);
  }

  else
  {
    v16 = swift_slowAlloc();

    v14 = sub_1001A230C(v16, v10, a2, a1, a4);
  }

  return v14;
}

void *sub_1001A230C(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a5(result, a2, a3, a4);

    return v10;
  }

  return result;
}

void sub_1001A23A4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v66 = a2;
  v70 = a1;
  PredicateType = type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicateType();
  v7 = *(PredicateType - 8);
  __chkstk_darwin(PredicateType, v8);
  v79 = v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v13 = v65 - v12;
  __chkstk_darwin(v14, v15);
  v80 = (v65 - v16);
  v19 = __chkstk_darwin(v17, v18);
  v69 = v65 - v20;
  v21 = *(a3 + 16);
  v22 = *(a4 + 16);
  v81 = v7 + 16;
  v77 = a4;
  v78 = a3;
  v73 = v7;
  if (v22 >= v21)
  {
    v46 = 0;
    v47 = *(a3 + 56);
    v68 = a3 + 56;
    v48 = 1 << *(a3 + 32);
    if (v48 < 64)
    {
      v49 = ~(-1 << v48);
    }

    else
    {
      v49 = -1;
    }

    v50 = v49 & v47;
    v51 = (v48 + 63) >> 6;
    v76 = a4 + 56;
    v80 = (v7 + 8);
    j = v51;
    v72 = 0;
    if (v50)
    {
      goto LABEL_30;
    }

LABEL_31:
    v53 = v46;
    while (1)
    {
      v46 = v53 + 1;
      if (__OFADD__(v53, 1))
      {
        break;
      }

      if (v46 >= v51)
      {
LABEL_44:

        sub_1001A08A4(v70, v66, v72, a3);
        return;
      }

      v54 = *(v68 + 8 * v46);
      ++v53;
      if (v54)
      {
        v52 = __clz(__rbit64(v54));
        for (i = ((v54 - 1) & v54); ; i = ((v50 - 1) & v50))
        {
          v55 = v52 | (v46 << 6);
          v56 = *(a3 + 48);
          v57 = *(v7 + 72);
          v74 = v55;
          v58 = *(v7 + 16);
          v58(v79, v56 + v57 * v55, PredicateType, v19);
          sub_1001A3B50(&qword_10093A818, &type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicateType, &protocol conformance descriptor for REMCustomSmartListFilterDescriptor.PostFetchPredicateType);
          v59 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v60 = -1 << *(a4 + 32);
          v61 = v59 & ~v60;
          if ((*(v76 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v61))
          {
            v69 = (v80 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
            v62 = ~v60;
            while (1)
            {
              (v58)(v13, *(v77 + 48) + v61 * v57, PredicateType);
              sub_1001A3B50(&qword_100943DD0, &type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicateType, &protocol conformance descriptor for REMCustomSmartListFilterDescriptor.PostFetchPredicateType);
              v63 = dispatch thunk of static Equatable.== infix(_:_:)();
              v64 = *v80;
              (*v80)(v13, PredicateType);
              if (v63)
              {
                break;
              }

              v61 = (v61 + 1) & v62;
              if (((*(v76 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v61) & 1) == 0)
              {
                a4 = v77;
                goto LABEL_42;
              }
            }

            v64(v79, PredicateType);
            v7 = v73;
            *(v70 + ((v74 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v74;
            v51 = j;
            v31 = __OFADD__(v72++, 1);
            a4 = v77;
            a3 = v78;
            v50 = i;
            if (v31)
            {
              goto LABEL_47;
            }

            if (!i)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v64 = *v80;
LABEL_42:
            v64(v79, PredicateType);
            a3 = v78;
            v7 = v73;
            v51 = j;
            v50 = i;
            if (!i)
            {
              goto LABEL_31;
            }
          }

LABEL_30:
          v52 = __clz(__rbit64(v50));
        }
      }
    }

    __break(1u);
  }

  else
  {
    v72 = 0;
    v23 = a4;
    v24 = 0;
    v26 = v23 + 56;
    v25 = *(v23 + 56);
    v65[0] = v26;
    v27 = 1 << *(v26 - 24);
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    else
    {
      v28 = -1;
    }

    v29 = v28 & v25;
    v30 = (v27 + 63) >> 6;
    v67 = v7 + 32;
    v68 = v30;
    v74 = a3 + 56;
    v79 = (v7 + 8);
    if (v29)
    {
      goto LABEL_9;
    }

LABEL_10:
    v33 = v24;
    while (1)
    {
      v24 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v24 >= v30)
      {
        goto LABEL_44;
      }

      v34 = *(v65[0] + 8 * v24);
      ++v33;
      if (v34)
      {
        v32 = __clz(__rbit64(v34));
        for (j = (v34 - 1) & v34; ; j = (v29 - 1) & v29)
        {
          v35 = *(v7 + 72);
          v36 = *(v77 + 48) + v35 * (v32 | (v24 << 6));
          v37 = v69;
          i = *(v7 + 16);
          v76 = v35;
          i(v69, v36, PredicateType, v19);
          (*(v7 + 32))(v80, v37, PredicateType);
          sub_1001A3B50(&qword_10093A818, &type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicateType, &protocol conformance descriptor for REMCustomSmartListFilterDescriptor.PostFetchPredicateType);
          v38 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v39 = -1 << *(a3 + 32);
          v40 = v38 & ~v39;
          v41 = v40 >> 6;
          v42 = 1 << v40;
          if (((1 << v40) & *(v74 + 8 * (v40 >> 6))) != 0)
          {
            v65[1] = v79 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v43 = ~v39;
            while (1)
            {
              (i)(v13, *(v78 + 48) + v40 * v76, PredicateType);
              sub_1001A3B50(&qword_100943DD0, &type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicateType, &protocol conformance descriptor for REMCustomSmartListFilterDescriptor.PostFetchPredicateType);
              v44 = dispatch thunk of static Equatable.== infix(_:_:)();
              v45 = *v79;
              (*v79)(v13, PredicateType);
              if (v44)
              {
                break;
              }

              v40 = (v40 + 1) & v43;
              v41 = v40 >> 6;
              v42 = 1 << v40;
              if (((1 << v40) & *(v74 + 8 * (v40 >> 6))) == 0)
              {
                a3 = v78;
                goto LABEL_21;
              }
            }

            v45(v80, PredicateType);
            v29 = j;
            v70[v41] |= v42;
            v7 = v73;
            v31 = __OFADD__(v72++, 1);
            a3 = v78;
            v30 = v68;
            if (v31)
            {
              goto LABEL_48;
            }

            if (!v29)
            {
              goto LABEL_10;
            }
          }

          else
          {
            v45 = *v79;
LABEL_21:
            v45(v80, PredicateType);
            v7 = v73;
            v30 = v68;
            v29 = j;
            if (!j)
            {
              goto LABEL_10;
            }
          }

LABEL_9:
          v32 = __clz(__rbit64(v29));
        }
      }
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
}

void sub_1001A2A8C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) >= *(a3 + 16))
  {
LABEL_22:
    v51 = 0;
    v25 = 0;
    v47 = v5 + 56;
    v26 = 1 << *(v5 + 32);
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    else
    {
      v27 = -1;
    }

    v28 = v27 & *(v5 + 56);
    v29 = (v26 + 63) >> 6;
    v30 = v4 + 56;
    while (v28)
    {
      v31 = __clz(__rbit64(v28));
      v53 = (v28 - 1) & v28;
LABEL_34:
      v34 = v31 | (v25 << 6);
      v35 = *(v5 + 48);
      v50 = v34;
      v36 = *(v4 + 40);
      v37 = *(v35 + 8 * v34);
      v38 = NSObject._rawHashValue(seed:)(v36);
      v39 = -1 << *(v4 + 32);
      v40 = v38 & ~v39;
      if ((*(v30 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40))
      {
        v41 = ~v39;
        type metadata accessor for REMObjectID_Codable();
        while (1)
        {
          v42 = *(*(v4 + 48) + 8 * v40);
          v43 = static NSObject.== infix(_:_:)();

          if (v43)
          {
            break;
          }

          v40 = (v40 + 1) & v41;
          v4 = a4;
          if (((*(v30 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        *(a1 + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v50;
        v28 = v53;
        v24 = __OFADD__(v51++, 1);
        v5 = a3;
        v4 = a4;
        if (v24)
        {
          __break(1u);
          goto LABEL_42;
        }
      }

      else
      {
LABEL_26:

        v28 = v53;
        v5 = a3;
      }
    }

    v32 = v25;
    while (1)
    {
      v25 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v25 >= v29)
      {
        goto LABEL_42;
      }

      v33 = *(v47 + 8 * v25);
      ++v32;
      if (v33)
      {
        v31 = __clz(__rbit64(v33));
        v53 = (v33 - 1) & v33;
        goto LABEL_34;
      }
    }

    __break(1u);
    goto LABEL_44;
  }

  v6 = 0;
  v44 = a4 + 56;
  v7 = 1 << *(a4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  v10 = (v7 + 63) >> 6;
  v51 = 0;
  v52 = a3 + 56;
  v46 = v10;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v49 = (v9 - 1) & v9;
LABEL_14:
    v14 = *(v5 + 40);
    v15 = *(*(a4 + 48) + 8 * (v11 | (v6 << 6)));
    v16 = NSObject._rawHashValue(seed:)(v14);
    v17 = -1 << *(v5 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    v20 = 1 << v18;
    if (((1 << v18) & *(v52 + 8 * (v18 >> 6))) != 0)
    {
      type metadata accessor for REMObjectID_Codable();
      v4 = *(*(v5 + 48) + 8 * v18);
      v21 = static NSObject.== infix(_:_:)();

      if ((v21 & 1) == 0)
      {
        v22 = ~v17;
        do
        {
          v18 = (v18 + 1) & v22;
          v19 = v18 >> 6;
          v5 = a3;
          v20 = 1 << v18;
          if (((1 << v18) & *(v52 + 8 * (v18 >> 6))) == 0)
          {
            goto LABEL_6;
          }

          v23 = *(*(a3 + 48) + 8 * v18);
          v4 = static NSObject.== infix(_:_:)();
        }

        while ((v4 & 1) == 0);
      }

      v5 = a3;

      v10 = v46;
      a1[v19] |= v20;
      v9 = v49;
      v24 = __OFADD__(v51++, 1);
      if (v24)
      {
        __break(1u);
        goto LABEL_22;
      }
    }

    else
    {
LABEL_6:

      v10 = v46;
      v9 = v49;
    }
  }

  v12 = v6;
  while (1)
  {
    v6 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v6 >= v10)
    {
LABEL_42:

      sub_1001A1154(a1, a2, v51, v5, &qword_10093A838, &unk_1007A4510);
      return;
    }

    v13 = *(v44 + 8 * v6);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v49 = (v13 - 1) & v13;
      goto LABEL_14;
    }
  }

LABEL_44:
  __break(1u);
}

void sub_1001A2E50(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v66 = a2;
  v70 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v79 = v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v13 = v65 - v12;
  __chkstk_darwin(v14, v15);
  v80 = (v65 - v16);
  v19 = __chkstk_darwin(v17, v18);
  v69 = v65 - v20;
  v21 = *(a3 + 16);
  v22 = *(a4 + 16);
  v81 = v7 + 16;
  v77 = a4;
  v78 = a3;
  v73 = v7;
  if (v22 >= v21)
  {
    v46 = 0;
    v47 = *(a3 + 56);
    v68 = a3 + 56;
    v48 = 1 << *(a3 + 32);
    if (v48 < 64)
    {
      v49 = ~(-1 << v48);
    }

    else
    {
      v49 = -1;
    }

    v50 = v49 & v47;
    v51 = (v48 + 63) >> 6;
    v76 = a4 + 56;
    v80 = (v7 + 8);
    j = v51;
    v72 = 0;
    if (v50)
    {
      goto LABEL_30;
    }

LABEL_31:
    v53 = v46;
    while (1)
    {
      v46 = v53 + 1;
      if (__OFADD__(v53, 1))
      {
        break;
      }

      if (v46 >= v51)
      {
LABEL_44:

        sub_1001A0E04(v70, v66, v72, a3);
        return;
      }

      v54 = *(v68 + 8 * v46);
      ++v53;
      if (v54)
      {
        v52 = __clz(__rbit64(v54));
        for (i = ((v54 - 1) & v54); ; i = ((v50 - 1) & v50))
        {
          v55 = v52 | (v46 << 6);
          v56 = *(a3 + 48);
          v57 = *(v7 + 72);
          v74 = v55;
          v58 = *(v7 + 16);
          v58(v79, v56 + v57 * v55, v6, v19);
          sub_1001A3B50(&qword_10093B410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v59 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v60 = -1 << *(a4 + 32);
          v61 = v59 & ~v60;
          if ((*(v76 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v61))
          {
            v69 = (v80 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
            v62 = ~v60;
            while (1)
            {
              (v58)(v13, *(v77 + 48) + v61 * v57, v6);
              sub_1001A3B50(&qword_10093A3E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
              v63 = dispatch thunk of static Equatable.== infix(_:_:)();
              v64 = *v80;
              (*v80)(v13, v6);
              if (v63)
              {
                break;
              }

              v61 = (v61 + 1) & v62;
              if (((*(v76 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v61) & 1) == 0)
              {
                a4 = v77;
                goto LABEL_42;
              }
            }

            v64(v79, v6);
            v7 = v73;
            *(v70 + ((v74 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v74;
            v51 = j;
            v31 = __OFADD__(v72++, 1);
            a4 = v77;
            a3 = v78;
            v50 = i;
            if (v31)
            {
              goto LABEL_47;
            }

            if (!i)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v64 = *v80;
LABEL_42:
            v64(v79, v6);
            a3 = v78;
            v7 = v73;
            v51 = j;
            v50 = i;
            if (!i)
            {
              goto LABEL_31;
            }
          }

LABEL_30:
          v52 = __clz(__rbit64(v50));
        }
      }
    }

    __break(1u);
  }

  else
  {
    v72 = 0;
    v23 = a4;
    v24 = 0;
    v26 = v23 + 56;
    v25 = *(v23 + 56);
    v65[0] = v26;
    v27 = 1 << *(v26 - 24);
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    else
    {
      v28 = -1;
    }

    v29 = v28 & v25;
    v30 = (v27 + 63) >> 6;
    v67 = v7 + 32;
    v68 = v30;
    v74 = a3 + 56;
    v79 = (v7 + 8);
    if (v29)
    {
      goto LABEL_9;
    }

LABEL_10:
    v33 = v24;
    while (1)
    {
      v24 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v24 >= v30)
      {
        goto LABEL_44;
      }

      v34 = *(v65[0] + 8 * v24);
      ++v33;
      if (v34)
      {
        v32 = __clz(__rbit64(v34));
        for (j = (v34 - 1) & v34; ; j = (v29 - 1) & v29)
        {
          v35 = *(v7 + 72);
          v36 = *(v77 + 48) + v35 * (v32 | (v24 << 6));
          v37 = v69;
          i = *(v7 + 16);
          v76 = v35;
          i(v69, v36, v6, v19);
          (*(v7 + 32))(v80, v37, v6);
          sub_1001A3B50(&qword_10093B410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v38 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v39 = -1 << *(a3 + 32);
          v40 = v38 & ~v39;
          v41 = v40 >> 6;
          v42 = 1 << v40;
          if (((1 << v40) & *(v74 + 8 * (v40 >> 6))) != 0)
          {
            v65[1] = v79 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v43 = ~v39;
            while (1)
            {
              (i)(v13, *(v78 + 48) + v40 * v76, v6);
              sub_1001A3B50(&qword_10093A3E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
              v44 = dispatch thunk of static Equatable.== infix(_:_:)();
              v45 = *v79;
              (*v79)(v13, v6);
              if (v44)
              {
                break;
              }

              v40 = (v40 + 1) & v43;
              v41 = v40 >> 6;
              v42 = 1 << v40;
              if (((1 << v40) & *(v74 + 8 * (v40 >> 6))) == 0)
              {
                a3 = v78;
                goto LABEL_21;
              }
            }

            v45(v80, v6);
            v29 = j;
            v70[v41] |= v42;
            v7 = v73;
            v31 = __OFADD__(v72++, 1);
            a3 = v78;
            v30 = v68;
            if (v31)
            {
              goto LABEL_48;
            }

            if (!v29)
            {
              goto LABEL_10;
            }
          }

          else
          {
            v45 = *v79;
LABEL_21:
            v45(v80, v6);
            v7 = v73;
            v30 = v68;
            v29 = j;
            if (!j)
            {
              goto LABEL_10;
            }
          }

LABEL_9:
          v32 = __clz(__rbit64(v29));
        }
      }
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
}

uint64_t sub_1001A3538(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_1001A362C;

  return v5(v2 + 16);
}

uint64_t sub_1001A362C()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1001A375C(uint64_t a1)
{
  v4 = *(type metadata accessor for REMUrgentReminder() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000FCBFC;

  return sub_1001988F0(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_1001A388C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000FDA74;

  return sub_10019A470(a1, v4);
}

id sub_1001A3944(id result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 < 3u || a4 == 4)
  {

    return result;
  }

  if (a4 == 3)
  {
    v6 = result;

    result = v6;

    return result;
  }

  return result;
}

double sub_1001A39AC(void *a1, uint64_t a2, _TtC7remindd19RDXPCStorePerformer *a3, unsigned __int8 a4)
{
  if (a4 <= 2u)
  {
LABEL_4:

    return result;
  }

  if (a4 != 3)
  {
    if (a4 != 4)
    {
      return result;
    }

    goto LABEL_4;
  }

  a3, v7, v8, v9, v10, v11, v12, v13;
  return result;
}

uint64_t sub_1001A3A2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RDPermanentlyHiddenReminder(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001A3A90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RDPermanentlyHiddenReminder(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001A3AF4(uint64_t a1)
{
  v2 = type metadata accessor for RDPermanentlyHiddenReminder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001A3B50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001A3B98(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000FDA74;

  return sub_1001A3538(a1, v4);
}

uint64_t sub_1001A3C50(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000FCBFC;

  return sub_1001A3538(a1, v4);
}

uint64_t sub_1001A3D08(uint64_t a1, uint64_t a2)
{
  v3 = (*(a2 + 16))(a1);
  if (v4 >> 60 == 15)
  {
    return 0;
  }

  v6 = v3;
  v7 = v4;
  sub_1001A3EE4();
  static REMJSONRepresentable.fromJSONData(_:)();
  result = sub_100031A14(v6, v7);
  if (!v2)
  {
    return v8;
  }

  return result;
}

uint64_t sub_1001A3DB4()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10093A880);
  v1 = sub_100006654(v0, qword_10093A880);
  if (qword_1009364E0 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1001A3E7C()
{
  v1 = [v0 membershipsOfRemindersInSectionsAsData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

unint64_t sub_1001A3EE4()
{
  result = qword_1009440A0;
  if (!qword_1009440A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1009440A0);
  }

  return result;
}

uint64_t sub_1001A3F34()
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100796900;
  *(v0 + 32) = swift_getKeyPath();
  result = swift_getKeyPath();
  *(v0 + 40) = result;
  qword_10093A898 = v0;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_1001A3FA8(_TtC7remindd19RDXPCStorePerformer *a1)
{
  v3 = sub_10000F8A4(7uLL, 0, 7u);
  sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
  v4 = [objc_allocWithZone(NSFetchRequest) init];
  v5 = [swift_getObjCClassFromMetadata() entity];
  [v4 setEntity:v5];

  [v4 setAffectedStores:0];
  [v4 setPredicate:v3];
  v6 = NSManagedObjectContext.fetch<A>(_:)();

  if (!v1)
  {

    v23 = sub_10000EEFC(v7);
    sub_100011170(&v23);
    v6, v8, v9, v10, v11, v12, v13, v14;
    v15 = v23;
    v23 = &_swiftEmptyArrayStorage;
    if ((v15 & 0x8000000000000000) != 0 || (v15 & 0x4000000000000000) != 0)
    {
      goto LABEL_15;
    }

    for (i = *v15->clientIdentity; i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v17 = 0;
      while (1)
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v17 >= *v15->clientIdentity)
          {
            goto LABEL_14;
          }

          v18 = *&v15->clientIdentity[8 * v17 + 16];
        }

        v19 = v18;
        v20 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        v21 = sub_1003FAFA0(a1);
        sub_100271FCC(v21);

        ++v17;
        if (v20 == i)
        {
          a1 = v23;
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      ;
    }

    a1 = &_swiftEmptyArrayStorage;
LABEL_17:
  }

  return a1;
}

_TtC7remindd19RDXPCStorePerformer *sub_1001A41EC(uint64_t a1, uint64_t a2)
{
  v173 = a1;
  v3 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v3 - 8, v4);
  v168 = &v157 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v7);
  v170 = &v157 - v8;
  __chkstk_darwin(v9, v10);
  v171 = &v157 - v11;
  __chkstk_darwin(v12, v13);
  v176 = &v157 - v14;
  v177 = type metadata accessor for UUID();
  v158 = *(v177 - 8);
  __chkstk_darwin(v177, v15);
  v159 = &v157 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v18);
  v174 = &v157 - v19;
  v169 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v167 = *(v169 - 1);
  __chkstk_darwin(v169, v20);
  v165 = &v157 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  __chkstk_darwin(v22 - 8, v23);
  v162 = &v157 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = _s9UtilitiesO12SortingStyleOMa(0);
  __chkstk_darwin(v163, v25);
  v164 = (&v157 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v27, v28);
  v161 = &v157 - v29;
  __chkstk_darwin(v30, v31);
  v166 = &v157 - v32;
  v160 = _s10PredicatesOMa(0);
  __chkstk_darwin(v160, v33);
  v35 = &v157 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  Subtasks = type metadata accessor for REMRemindersListDataView.FetchSubtasks();
  v37 = *(Subtasks - 8);
  __chkstk_darwin(Subtasks, v38);
  v40 = &v157 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41, v42);
  v44 = &v157 - v43;
  v172 = a2;
  REMRemindersListDataView.FetchConfiguration.fetchSubtasks.getter();
  (*(v37 + 104))(v40, enum case for REMRemindersListDataView.FetchSubtasks.on(_:), Subtasks);
  sub_1001A4E80();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v45 = *(&v181 + 1);
  v46 = *(&v180 + 1);
  if (v181 == v180)
  {
    v47 = *(v37 + 8);
    v47(v40, Subtasks);
    v47(v44, Subtasks);
    v45, v48, v49, v50, v51, v52, v53, v54;
    v46, v55, v56, v57, v58, v59, v60, v61;
  }

  else
  {
    v62 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v63 = *(v37 + 8);
    v63(v40, Subtasks);
    v63(v44, Subtasks);
    v45, v64, v65, v66, v67, v68, v69, v70;
    v46, v71, v72, v73, v74, v75, v76, v77;
    if ((v62 & 1) == 0)
    {
      v109 = objc_opt_self();
      v148 = String._bridgeToObjectiveC()();
      [(RDXPCStorePerformer *)v109 internalErrorWithDebugDescription:v148];

      swift_willThrow();
      return v109;
    }
  }

  REMRemindersListDataView.FetchConfiguration.showCompleted.getter();
  swift_storeEnumTagMultiPayload();
  v78 = sub_100043AA8();
  sub_1001A4F3C(v35, _s10PredicatesOMa);
  v79 = v162;
  REMRemindersListDataView.FetchConfiguration.sortingStyle.getter();
  v80 = v161;
  swift_storeEnumTagMultiPayload();
  v81 = v166;
  sub_1005368D8(v79, v80, v166);
  if (qword_1009363F8 != -1)
  {
    swift_once();
  }

  *&v181 = qword_100974F68;
  v82 = qword_100935B18;

  v83 = v171;
  v84 = v177;
  v85 = v164;
  if (v82 != -1)
  {
    swift_once();
  }

  *&v180 = qword_10093A898;

  v87 = sub_10053CBE4(v81, v86);
  sub_100271A80(v87);
  sub_1001A4ED8(v81, v85, v88);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload < 4)
  {
    sub_1001A4F3C(v85, _s9UtilitiesO12SortingStyleOMa);
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload != 4)
  {
LABEL_13:
    v90 = &_swiftEmptyArrayStorage;
    goto LABEL_14;
  }

  sub_1001A4F3C(v85, _s9UtilitiesO12SortingStyleOMa);
  if (qword_1009367F0 != -1)
  {
    goto LABEL_48;
  }

  while (1)
  {

LABEL_14:
    sub_100271A80(v90);
    v91 = v181;
    v92 = v180;
    v93 = sub_100050654(v181, v180, 0, v78);
    v91, v94, v95, v96, v97, v98, v99, v100;
    v92, v101, v102, v103, v104, v105, v106, v107;
    v108 = v165;
    REMRemindersListDataView.FetchConfiguration.showCompleted.getter();
    v109 = sub_10053CE0C(v81, v108, 0);
    v167[1](v108, v169);
    sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
    v109, v111, v112, v113, v114, v115, v116, v117;
    [(RDXPCStorePerformer *)v93 setSortDescriptors:isa];

    sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    v118 = v175;
    v119 = NSManagedObjectContext.fetch<A>(_:)();
    if (v118)
    {
      sub_1001A4F3C(v81, _s9UtilitiesO12SortingStyleOMa);

      return v109;
    }

    v182 = _swiftEmptyDictionarySingleton;
    v179 = _swiftEmptyDictionarySingleton;
    v173 = v119;
    if (v119 >> 62)
    {
      break;
    }

    v120 = *((v119 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v121 = v176;
    if (!v120)
    {
      goto LABEL_44;
    }

LABEL_18:
    v163 = 0;
    v164 = v93;
    v165 = v78;
    if (v120 >= 1)
    {
      v122 = v120;
      v123 = 0;
      v124 = v173;
      v175 = v173 & 0xC000000000000001;
      v125 = (v158 + 56);
      v126 = (v158 + 48);
      v169 = (v158 + 32);
      v167 = (v158 + 8);
      v172 = v120;
      while (1)
      {
        if (v175)
        {
          v127 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v127 = *&v124->clientIdentity[8 * v123 + 16];
        }

        v128 = v127;
        v129 = [v127 list];
        if (v129)
        {
          v130 = v129;
          v131 = [v129 identifier];

          if (v131)
          {
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v132 = 0;
          }

          else
          {
            v132 = 1;
          }

          v84 = v177;
          v133 = *v125;
          (*v125)(v83, v132, 1, v177);
          v121 = v176;
          sub_100100FB4(v83, v176);
          v134 = *v126;
          if ((*v126)(v121, 1, v84) != 1)
          {
            v135 = *v169;
            (*v169)(v174, v121, v84);
            v136 = [v128 parentReminder];
            if (v136)
            {
              v137 = v136;
              v138 = [v136 identifier];

              if (v138)
              {
                v139 = v168;
                static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                v140 = 0;
              }

              else
              {
                v140 = 1;
                v139 = v168;
              }

              v142 = v177;
              v133(v139, v140, 1, v177);
              v143 = v139;
              v144 = v142;
              v141 = v170;
              sub_100100FB4(v143, v170);
              if (v134(v141, 1, v144) == 1)
              {
LABEL_38:
                sub_1001A4F9C(v141);
                v178 = v128;
                sub_1000F5104(&qword_10093A8A8, &unk_100797EA0);
                sub_1001A5004();
                v145 = v174;
                v84 = v177;
                Dictionary<>.append(_:toCollectionUnderKey:)();
                (*v167)(v145, v84);
              }

              else
              {
                v146 = v159;
                v135(v159, v141, v144);
                v178 = v128;
                sub_1000F5104(&qword_10093A8A8, &unk_100797EA0);
                sub_1001A5004();
                v84 = v177;
                Dictionary<>.append(_:toCollectionUnderKey:)();
                v147 = *v167;
                (*v167)(v146, v84);
                v147(v174, v84);
              }

              v83 = v171;
              v122 = v172;
              v121 = v176;
              v124 = v173;
              goto LABEL_22;
            }

            v141 = v170;
            v133(v170, 1, 1, v84);
            goto LABEL_38;
          }

          v122 = v172;
          v124 = v173;
        }

        else
        {

          (*v125)(v121, 1, 1, v84);
        }

        sub_1001A4F9C(v121);
LABEL_22:
        if (v122 == ++v123)
        {

          v109 = v182;
          v81 = v166;
          goto LABEL_45;
        }
      }
    }

    __break(1u);
LABEL_48:
    swift_once();
  }

  v120 = _CocoaArrayWrapper.endIndex.getter();
  v121 = v176;
  if (v120)
  {
    goto LABEL_18;
  }

LABEL_44:

  v109 = _swiftEmptyDictionarySingleton;
  v124 = v173;
LABEL_45:
  v124, v149, v150, v151, v152, v153, v154, v155;
  sub_1001A4F3C(v81, _s9UtilitiesO12SortingStyleOMa);
  return v109;
}

unint64_t sub_1001A4E80()
{
  result = qword_10093A8A0;
  if (!qword_10093A8A0)
  {
    type metadata accessor for REMRemindersListDataView.FetchSubtasks();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093A8A0);
  }

  return result;
}

uint64_t sub_1001A4ED8(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = _s9UtilitiesO12SortingStyleOMa(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001A4F3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001A4F9C(uint64_t a1)
{
  v2 = sub_1000F5104(&unk_100939D90, "8\n\r");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1001A5004()
{
  result = qword_10093A8B0;
  if (!qword_10093A8B0)
  {
    sub_1000F514C(&qword_10093CAC0, &unk_10079E1E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093A8B0);
  }

  return result;
}

void sub_1001A5080(uint64_t a1)
{
  v2 = 0;
  v21 = Set.init(minimumCapacity:)();
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
    v9 = (*(a1 + 56) + ((v7 << 10) | (16 * v8)));
    v10 = *v9;
    v11 = v9[1];

    sub_100378434(v19, v10, v11);
    v20, v12, v13, v14, v15, v16, v17, v18;
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

void sub_1001A519C(uint64_t a1)
{
  v2 = 0;
  v21 = Set.init(minimumCapacity:)();
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
    v9 = (*(a1 + 48) + ((v7 << 10) | (16 * v8)));
    v10 = *v9;
    v11 = v9[1];

    sub_100378434(v19, v10, v11);
    v20, v12, v13, v14, v15, v16, v17, v18;
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

uint64_t static REMCDTemplateSection.cdEntityName.getter()
{
  sub_1000060C8(0, &qword_10093A8B8, REMTemplateSection_ptr);
  v0 = [swift_getObjCClassFromMetadata() cdEntityName];
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v1;
}

Swift::Int __swiftcall REMCDTemplateSection.parentEffectiveMinimumSupportedVersion()()
{
  v1 = [v0 template];
  if (!v1)
  {
    return kREMSupportedVersionUnset;
  }

  v2 = v1;
  v3 = [v1 effectiveMinimumSupportedVersion];

  return v3;
}

uint64_t static REMCDTemplateSection.keyPathsForValuesAffectingEffectiveMinimumSupportedVersion()()
{
  v0 = sub_1001A5660(&off_1008DED80);
  sub_100034610(&unk_1008DEDA0);
  return v0;
}

id REMCDTemplateSection.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for REMCDTemplateSection();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

id REMCDTemplateSection.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for REMCDTemplateSection();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1001A5660(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v15 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_100378434(v14, v6, v5);
      v14[1], v7, v8, v9, v10, v11, v12, v13;
      v4 += 2;
      --v2;
    }

    while (v2);
    return v15;
  }

  return result;
}

void *sub_1001A57F4(unint64_t a1, void (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t), void (*a5)(id *, uint64_t (*)(void)))
{
  v9 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  a2(0);
  while (1)
  {
    sub_1001A6868(a3, a4, &protocol conformance descriptor for NSObject);
    result = Set.init(minimumCapacity:)();
    v16 = result;
    if (v9)
    {
      break;
    }

    a3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!a3)
    {
      return result;
    }

LABEL_7:
    v11 = 0;
    v9 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v11 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v12 = *(a1 + 8 * v11 + 32);
      }

      a2 = v12;
      v13 = (v11 + 1);
      if (__OFADD__(v11, 1))
      {
        break;
      }

      a4 = &v16;
      a5(&v15, v12);

      ++v11;
      if (v13 == a3)
      {
        return v16;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    v14 = a2;
    _CocoaArrayWrapper.endIndex.getter();
    v14(0);
  }

  a4 = result;
  a3 = _CocoaArrayWrapper.endIndex.getter();
  result = a4;
  if (a3)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1001A59A4(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v8);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  sub_1001A6868(&qword_10093B410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  result = Set.init(minimumCapacity:)();
  v19 = result;
  if (v11)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v6, v16, v2);
      sub_1003794C4(v10, v6);
      (*(v13 - 8))(v10, v2);
      v16 += v17;
      --v11;
    }

    while (v11);
    return v19;
  }

  return result;
}

uint64_t sub_1001A5B40(uint64_t a1)
{
  PredicateType = type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicateType();
  v3 = *(PredicateType - 8);
  __chkstk_darwin(PredicateType, v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v8);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  sub_1001A6868(&qword_10093A818, &type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicateType, &protocol conformance descriptor for REMCustomSmartListFilterDescriptor.PostFetchPredicateType);
  result = Set.init(minimumCapacity:)();
  v19 = result;
  if (v11)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v6, v16, PredicateType);
      sub_100379BD8(v10, v6);
      (*(v13 - 8))(v10, PredicateType);
      v16 += v17;
      --v11;
    }

    while (v11);
    return v19;
  }

  return result;
}

uint64_t sub_1001A5CDC(uint64_t a1)
{
  v2 = type metadata accessor for REMManualOrdering.PinnedList();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v8);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  sub_1001A6868(&qword_100943580, &type metadata accessor for REMManualOrdering.PinnedList, &protocol conformance descriptor for REMManualOrdering.PinnedList);
  result = Set.init(minimumCapacity:)();
  v19 = result;
  if (v11)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v6, v16, v2);
      sub_10037A15C(v10, v6);
      (*(v13 - 8))(v10, v2);
      v16 += v17;
      --v11;
    }

    while (v11);
    return v19;
  }

  return result;
}

uint64_t sub_1001A5ED8(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, void (*a5)(id *, void *))
{
  v10 = *(a1 + 16);
  sub_1000F5104(a2, a3);
  sub_10000CB48(a4, a2, a3, &unk_100798D20);
  result = Set.init(minimumCapacity:)();
  v15 = result;
  if (v10)
  {
    v12 = (a1 + 32);
    do
    {
      v13 = *v12++;
      a5(&v14, v13);

      --v10;
    }

    while (v10);
    return v15;
  }

  return result;
}

uint64_t sub_1001A61EC(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_18:
    _CocoaArrayWrapper.endIndex.getter();
  }

  sub_1000F5104(&unk_100939F10, &qword_100797F30);
  result = Set.init(minimumCapacity:)();
  v9 = result;
  if (!v2)
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return result;
    }

LABEL_6:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_14:
          __break(1u);
          return v9;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_18;
        }

        v6 = *(a1 + 8 * i + 32);

        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_14;
        }
      }

      sub_100378ACC(&v8, v6);

      if (v7 == v2)
      {
        return v9;
      }
    }
  }

  v4 = result;
  v2 = _CocoaArrayWrapper.endIndex.getter();
  result = v4;
  if (v2)
  {
    goto LABEL_6;
  }

  return result;
}