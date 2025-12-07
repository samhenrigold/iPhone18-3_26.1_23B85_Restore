void sub_10121F684(unint64_t a1, double a2, double a3)
{
  v4 = v3;
  v315 = type metadata accessor for CRLTableAnchorHint(0);
  v8 = *(v315 - 8);
  __chkstk_darwin(v315);
  v303 = &v278 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v301 = _s13StyleCRDTDataVMa(0);
  __chkstk_darwin(v301);
  v300 = &v278 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v299 = sub_1005B981C(&unk_101A2C890, &qword_101471EB0);
  v11 = *(v299 - 8);
  __chkstk_darwin(v299);
  v298 = &v278 - v12;
  v297 = _s15CapsuleDatabaseVMa(0);
  __chkstk_darwin(v297);
  v296 = &v278 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v321 = type metadata accessor for UUID();
  v316 = *(v321 - 8);
  __chkstk_darwin(v321);
  v304 = &v278 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v295 = &v278 - v16;
  __chkstk_darwin(v17);
  v302 = &v278 - v18;
  __chkstk_darwin(v19);
  v307 = &v278 - v20;
  __chkstk_darwin(v21);
  v306 = &v278 - v22;
  __chkstk_darwin(v23);
  v313 = &v278 - v24;
  __chkstk_darwin(v25);
  v312 = &v278 - v26;
  v27 = sub_1005B981C(&unk_101A09DD0, &unk_101478C10);
  __chkstk_darwin(v27 - 8);
  v294 = &v278 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v293 = &v278 - v30;
  __chkstk_darwin(v31);
  v311 = &v278 - v32;
  v309 = _s6CellIDVMa(0);
  __chkstk_darwin(v309);
  v292 = &v278 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v305 = &v278 - v35;
  __chkstk_darwin(v36);
  v310 = &v278 - v37;
  __chkstk_darwin(v38);
  v308 = &v278 - v39;
  *&v41 = __chkstk_darwin(v40).n128_u64[0];
  v314 = &v278 - v42;
  if (([v3 isLocked] & 1) == 0)
  {
    v43 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
LABEL_100:
      v44 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v44 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v45 = 0;
    v335 = a1 & 0xC000000000000001;
    v322 = a1 + 32;
    while (v44 != v45)
    {
      if (v335)
      {
        v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v45 >= *(v43 + 16))
        {
          goto LABEL_97;
        }

        v46 = *(a1 + 8 * v45 + 32);
      }

      v47 = v46;
      if (__OFADD__(v45, 1))
      {
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
        goto LABEL_100;
      }

      v48 = sub_10121C240(v46);

      ++v45;
      if (v48)
      {
        return;
      }
    }

    [v4 convertNaturalPointFromUnscaledCanvas:{a2, a3}];
    if (v44)
    {
      v51 = v49;
      v52 = v50;
      v53 = 0;
      v291 = v316 + 16;
      v289 = (v8 + 6);
      v290 = v316 + 32;
      v283 = (v11 + 8);
      v284 = (v11 + 16);
      v287 = OBJC_IVAR____TtC8Freeform11CRLTableRep_icc;
      v288 = (v316 + 8);
      v282 = (v8 + 7);
      v8 = &selRef_isEnumeratingForUserSearch;
      v11 = &unk_101A0A000;
      v286 = xmmword_10146CA70;
      v280 = xmmword_101465920;
      v319 = v4;
      v320 = v43;
      v323 = v44;
      v317 = a1;
      do
      {
        if (v335)
        {
          v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v53 >= *(v43 + 16))
          {
            goto LABEL_99;
          }

          v54 = *(v322 + 8 * v53);
        }

        v55 = v54;
        if (__OFADD__(v53++, 1))
        {
          goto LABEL_98;
        }

        v57 = [v54 info];
        KeyPath = type metadata accessor for CRLBoardItem(0);
        v58 = swift_dynamicCastClass();
        if (v58)
        {
          v331 = v58;
          v332 = v57;
          v333 = v55;
          v59 = [v4 v8[343]];
          v334 = type metadata accessor for CRLTableLayout();
          v60 = swift_dynamicCastClassUnconditional();
          v61 = *(v60 + OBJC_IVAR____TtC8Freeform14CRLTableLayout_dynamicAnchorCell + 8);
          v329 = *(v60 + OBJC_IVAR____TtC8Freeform14CRLTableLayout_dynamicAnchorCell);
          v327 = v61;
          v62 = *(v60 + OBJC_IVAR____TtC8Freeform14CRLTableLayout_dynamicAnchorCell + 16);

          if (v62 == 1)
          {
            if ((sub_1009AFD54(v331) & 1) != 0 && (v63 = swift_unknownObjectWeakLoadStrong()) != 0)
            {
              v64 = v63;
              type metadata accessor for CRLTableItem(0);
              while (1)
              {
                v65 = swift_dynamicCastClass();
                if (v65)
                {
                  break;
                }

                Strong = swift_unknownObjectWeakLoadStrong();

                v64 = Strong;
                if (!Strong)
                {
                  v67 = 0;
                  goto LABEL_33;
                }
              }

              v67 = v65;
LABEL_33:
              v8 = &selRef_isEnumeratingForUserSearch;
            }

            else
            {
              v67 = 0;
            }

            v68 = [v4 v8[343]];
            v69 = [swift_dynamicCastClassUnconditional() boardItem];
            if (!v69)
            {
              goto LABEL_102;
            }

            v70 = v69;

            type metadata accessor for CRLTableItem(0);
            swift_dynamicCastClassUnconditional();
            if (!v67)
            {

LABEL_40:
              swift_unknownObjectRelease();

              goto LABEL_87;
            }

            v71 = v67;
            v72 = static NSObject.== infix(_:_:)();

            if ((v72 & 1) == 0)
            {
              goto LABEL_40;
            }

            v73 = v311;
            (*((swift_isaMask & *v331) + 0x128))();
            v11 = &unk_101A0A000;
            if ((*v289)(v73, 1, v315))
            {

              swift_unknownObjectRelease();
              sub_10000CAAC(v73, &unk_101A09DD0, &unk_101478C10);
              v8 = &selRef_isEnumeratingForUserSearch;
              continue;
            }

            v74 = v308;
            sub_101224348(v73, v308, _s6CellIDVMa);
            sub_10000CAAC(v73, &unk_101A09DD0, &unk_101478C10);
            sub_101225434(v74, v314, _s6CellIDVMa);
            v75 = [v4 layout];
            v76 = [swift_dynamicCastClassUnconditional() boardItem];
            if (!v76)
            {
              goto LABEL_103;
            }

            v77 = v76;

            swift_dynamicCastClassUnconditional();
            sub_1011DB114();

            sub_1011DB114();
            v79 = v78;
            if (!*(v78 + 16) || (v80 = sub_10003E994(v314), (v81 & 1) == 0))
            {

              v44 = v323;
LABEL_52:
              swift_unknownObjectRelease();

              sub_1012243B0(v314, _s6CellIDVMa);
              v43 = v320;
              goto LABEL_87;
            }

            v82 = *(*(v79 + 56) + 8 * v80);
            v328 = v53;
            v329 = v82;

            v83 = *(v309 + 20);
            v84 = sub_1011DB114();
            if (!*(v84 + 16))
            {

              v44 = v323;
LABEL_51:
              v53 = v328;
              goto LABEL_52;
            }

            v85 = sub_10003E994(v314 + v83);
            v44 = v323;
            if ((v86 & 1) == 0)
            {

              goto LABEL_51;
            }

            *&v325 = v52;
            *&v326 = v51;
            v87 = *(*(v84 + 56) + 8 * v85);

            v8 = &selRef_isEnumeratingForUserSearch;
            v88 = [v4 layout];
            swift_dynamicCastClassUnconditional();
            v327 = v87;
            sub_10120C854(v329, v87);
            v90 = v89;
            v92 = v91;
            v94 = v93;
            v96 = v95;

            v97 = [v333 layout];
            [v97 frameForCullingInRoot];
            v99 = v98;
            v101 = v100;
            a3 = v102;
            a2 = v103;

            [v4 convertNaturalRectFromUnscaledCanvas:{v99, v101, a3, a2}];
            v108 = sub_10011FF38(v90, v92, v94, v96, v104, v105, v106, v107);
            v53 = v328;
            if (v108)
            {
              sub_1012243B0(v314, _s6CellIDVMa);
              v51 = v326;
              v52 = v325;
            }

            else
            {
              v109 = [v4 layout];
              swift_dynamicCastClassUnconditional();
              v51 = v326;
              v52 = v325;
              v329 = sub_10120C344(*&v326, *&v325);
              v327 = v110;
              v112 = v111;

              sub_1012243B0(v314, _s6CellIDVMa);
              v43 = v320;
              v11 = &unk_101A0A000;
              if (v112)
              {
                swift_unknownObjectRelease();

                continue;
              }
            }
          }

          v328 = v53;
          *&v326 = [v4 v8[343]];
          v113 = [swift_dynamicCastClassUnconditional() boardItem];
          if (!v113)
          {
            __break(1u);
LABEL_102:
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
            return;
          }

          v114 = v113;
          v115 = type metadata accessor for CRLTableItem(0);
          *&v325 = v114;
          v318 = v115;
          v116 = swift_dynamicCastClassUnconditional();
          v117 = v116;
          if ((*(v116 + OBJC_IVAR____TtC8Freeform12CRLTableItem_rowColumnIndexCacheIsInvalid) & 1) != 0 || !*(v116 + OBJC_IVAR____TtC8Freeform12CRLTableItem_idToIndexMap)) && (*&v324 = OBJC_IVAR____TtC8Freeform12CRLTableItem_rowColumnIndexCacheIsInvalid, type metadata accessor for CRLTableItemData(0), swift_dynamicCastClassUnconditional(), , v118 = sub_1011FD0F0(), , swift_dynamicCastClassUnconditional(), , v119 = sub_1011FBBD8(), , v120 = sub_1011EE2D4(v118, v119), v122 = v121, v124 = v123, v126 = v125, , v127 = (v117 + OBJC_IVAR____TtC8Freeform12CRLTableItem_idToIndexMap), v128 = *(v117 + OBJC_IVAR____TtC8Freeform12CRLTableItem_idToIndexMap), *v127 = v120, v127[1] = v122, v127[2] = v124, v127[3] = v126, , , , , sub_1011DAB1C(v128), , , , , (*(v117 + v324)) || !*(v117 + OBJC_IVAR____TtC8Freeform12CRLTableItem_idToIndexMap))
          {
            type metadata accessor for CRLTableItemData(0);
            swift_dynamicCastClassUnconditional();

            v130 = sub_1011FD0F0();

            swift_dynamicCastClassUnconditional();

            v131 = sub_1011FBBD8();

            v132 = sub_1011EE2D4(v130, v131);
            v134 = v133;
            v136 = v135;
            v129 = v137;

            v138 = (v117 + OBJC_IVAR____TtC8Freeform12CRLTableItem_idToIndexMap);
            v139 = *(v117 + OBJC_IVAR____TtC8Freeform12CRLTableItem_idToIndexMap);
            *v138 = v132;
            v138[1] = v134;
            v138[2] = v136;
            v138[3] = v129;

            sub_1011DAB1C(v139);
          }

          else
          {
            v129 = *(v117 + OBJC_IVAR____TtC8Freeform12CRLTableItem_idToIndexMap + 24);
          }

          v44 = v323;
          v53 = v328;
          v11 = &unk_101A0A000;
          if (*(v129 + 16))
          {
            v140 = sub_1007C7EC0(v329);
            if (v141)
            {
              v142 = v316;
              v143 = *(v316 + 72);
              v144 = *(v129 + 56) + v143 * v140;
              v145 = v313;
              v146 = v321;
              *&v324 = *(v316 + 16);
              (v324)(v313, v144, v321);

              v147 = *(v142 + 32);
              v148 = v312;
              v147(v312, v145, v146);
              sub_1011DB114();
              v150 = v149;
              if (*(v149 + 16) && (v151 = sub_1007C7EC0(v327), (v152 & 1) != 0))
              {
                v153 = *(v150 + 56) + v151 * v143;
                v154 = v307;
                v155 = v321;
                (v324)(v307, v153, v321);

                v156 = v306;
                v147(v306, v154, v155);
                v157 = v305;
                v147(v305, v148, v155);
                v147((v157 + *(v309 + 20)), v156, v155);
                sub_101225434(v157, v310, _s6CellIDVMa);
                v4 = v319;
                v158 = swift_unknownObjectWeakLoadStrong();
                if (v158)
                {
                  v159 = v158;
                  v160 = [v158 commandController];

                  if (v160)
                  {
                    v285 = v160;
                    v279 = v147;
                    v161 = [v4 layout];
                    v162 = [swift_dynamicCastClassUnconditional() boardItem];
                    if (!v162)
                    {
                      goto LABEL_105;
                    }

                    v163 = v162;

                    swift_dynamicCastClassUnconditional();
                    type metadata accessor for CRLTableItemData(0);
                    v164 = swift_dynamicCastClassUnconditional();
                    v165 = qword_101AD9268;
                    swift_beginAccess();
                    v166 = v164 + v165;
                    v167 = v298;
                    v168 = v299;
                    (*v284)(v298, v166, v299);
                    v169 = v296;
                    Capsule.root.getter();
                    (*v283)(v167, v168);
                    v170 = v300;
                    sub_101224348(v169 + *(v297 + 32), v300, _s13StyleCRDTDataVMa);
                    sub_1012243B0(v169, _s15CapsuleDatabaseVMa);
                    sub_1005B981C(&qword_101A2C810, &unk_101480B50);
                    CRRegister.wrappedValue.getter();

                    sub_1012243B0(v170, _s13StyleCRDTDataVMa);
                    a1 = v317;
                    if (LOBYTE(v340[0]) == 1)
                    {
                      v171 = v302;
                      v172 = v310;
                      v173 = v321;
                      v174 = v324;
                      (v324)(v302, v310, v321);
                      v175 = v295;
                      v174(v295, v172 + *(v309 + 20), v173);
                      sub_10088E3FC(0);
                      v176 = [v4 layout];
                      swift_dynamicCastClassUnconditional();
                      sub_10120579C(v171);
                      v178 = v177;

                      if ((v178 & 0x100000000) == 0)
                      {
                        v179 = [v4 layout];
                        if (![swift_dynamicCastClassUnconditional() boardItem])
                        {
                          goto LABEL_109;
                        }

                        v180 = *&v178;
                        v181 = swift_dynamicCastClassUnconditional();
                        v182 = v304;
                        (v324)(v304, v302, v321);
                        v183 = objc_allocWithZone(type metadata accessor for CRLCommandTableRowSetHeight(0));
                        v184 = sub_1006B77E4(v181, v182, v180);
                        sub_100888700(v184, 0, 0, 4uLL, 0);

                        v175 = v295;
                      }

                      v185 = [v4 layout];
                      swift_dynamicCastClassUnconditional();
                      sub_101205C90(v175);
                      v187 = v186;

                      if ((v187 & 0x100000000) == 0)
                      {
                        v188 = [v4 layout];
                        if (![swift_dynamicCastClassUnconditional() boardItem])
                        {
                          goto LABEL_108;
                        }

                        v189 = *&v187;
                        v190 = swift_dynamicCastClassUnconditional();
                        v191 = v304;
                        v175 = v295;
                        (v324)(v304, v295, v321);
                        v192 = objc_allocWithZone(type metadata accessor for CRLCommandTableColumnSetWidth(0));
                        v193 = sub_1006BA49C(v190, v191, v189);
                        sub_100888700(v193, 0, 0, 4uLL, 0);
                      }

                      sub_10088E600(0);
                      v194 = *v288;
                      v195 = v321;
                      (*v288)(v175, v321);
                      v194(v302, v195);
                    }

                    v196 = [v333 layout];
                    v197 = [v196 geometry];

                    v198 = [v331 parentContainerItem];
                    v199 = [v4 layout];
                    v200 = [swift_dynamicCastClassUnconditional() boardItem];
                    if (!v200)
                    {
                      goto LABEL_104;
                    }

                    v201 = v200;

                    swift_dynamicCastClassUnconditional();
                    if (v198)
                    {
                      type metadata accessor for CRLContainerItem(0);
                      v202 = static NSObject.== infix(_:_:)();

                      if (v202)
                      {
                        goto LABEL_95;
                      }
                    }

                    else
                    {
                    }

                    v281 = v197;
                    v225 = [v333 layout];
                    v226 = [v225 geometry];

                    v227 = [v4 layout];
                    v228 = [swift_dynamicCastClassUnconditional() boardItem];
                    if (!v228)
                    {
                      goto LABEL_107;
                    }

                    v229 = v228;

                    v230 = swift_dynamicCastClassUnconditional();
                    v278 = v229;
                    b = 0.0;
                    a = 1.0;
                    c = 0.0;
                    d = 1.0;
                    tx = 0.0;
                    ty = 0.0;
                    do
                    {
                      v237 = *((swift_isaMask & *v230) + 0xE0);
                      v238 = v230;
                      v239 = v237();
                      [v239 transform];
                      v325 = *&v340[2];
                      v326 = *v340;
                      v324 = *&v340[4];

                      v340[0] = *&a;
                      v340[1] = *&b;
                      v340[2] = *&c;
                      v340[3] = *&d;
                      v340[4] = *&tx;
                      v340[5] = *&ty;
                      *&v339.a = v326;
                      *&v339.c = v325;
                      *&v339.tx = v324;
                      CGAffineTransformConcat(&v338, v340, &v339);
                      a = v338.a;
                      b = v338.b;
                      c = v338.c;
                      d = v338.d;
                      tx = v338.tx;
                      ty = v338.ty;
                      v230 = swift_unknownObjectWeakLoadStrong();
                    }

                    while (v230);

                    v340[0] = *&a;
                    v340[1] = *&b;
                    v340[2] = *&c;
                    v340[3] = *&d;
                    v340[4] = *&tx;
                    v340[5] = *&ty;
                    CGAffineTransformInvert(&v339, v340);
                    *v340 = v339;
                    v240 = [v226 geometryByTransformingBy:v340];

                    v241 = objc_allocWithZone(CRLCanvasInfoGeometry);
                    swift_unknownObjectRetain();
                    v242 = [v241 initWithLayoutGeometry:v240];
                    v243 = objc_allocWithZone(type metadata accessor for CRLCommandSetInfoGeometry(0));
                    v244 = v304;
                    (*((swift_isaMask & *v331) + 0x88))();
                    isa = UUID._bridgeToObjectiveC()().super.isa;
                    (*v288)(v244, v321);
                    v246 = [v243 initWithId:isa geometry:v242];

                    swift_unknownObjectRelease();
                    sub_100888700(v246, 0, 0, 4uLL, 0);
                    v247 = [v4 layout];
                    if (![swift_dynamicCastClassUnconditional() boardItem])
                    {
                      goto LABEL_106;
                    }

                    v248 = swift_dynamicCastClassUnconditional();
                    v249 = type metadata accessor for CRLCommandReparentBoardItems();
                    v250 = objc_allocWithZone(v249);
                    v251 = swift_allocObject();
                    *(v251 + 16) = v280;
                    *(v251 + 32) = v331;
                    v252 = objc_allocWithZone(v249);
                    *&v252[OBJC_IVAR____TtC8Freeform28CRLCommandReparentBoardItems_boardItems] = v251;
                    *&v252[OBJC_IVAR____TtC8Freeform28CRLCommandReparentBoardItems_destinationContainer] = v248;
                    v253 = &v252[OBJC_IVAR____TtC8Freeform28CRLCommandReparentBoardItems_index];
                    *v253 = 0;
                    v253[8] = 1;
                    v337.receiver = v252;
                    v337.super_class = v249;
                    swift_unknownObjectRetain();
                    v254 = objc_msgSendSuper2(&v337, "init");
                    swift_getObjectType();
                    swift_deallocPartialClassInstance();
                    sub_100888700(v254, 0, 0, 4uLL, 0);

                    v197 = v240;
LABEL_95:
                    v281 = v197;
                    v255 = [v4 layout];
                    swift_dynamicCastClassUnconditional();
                    sub_10120E014(v329, v327);
                    a3 = v256;
                    a2 = v257;

                    v258 = [v197 geometryByTranslatingBy:{sub_10011F340(a3, a2, -1.0)}];
                    v329 = v258;
                    v259 = v292;
                    sub_101224348(v310, v292, _s6CellIDVMa);
                    v260 = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithLayoutGeometry:v258];
                    v261 = v315;
                    v262 = v303;
                    *(v303 + *(v315 + 24)) = _swiftEmptyDictionarySingleton;
                    v263 = v262;
                    sub_101224348(v259, v262, _s6CellIDVMa);
                    sub_101271CCC(v260, v341);

                    v334 = _s6CellIDVMa;
                    sub_1012243B0(v259, _s6CellIDVMa);
                    v264 = (v263 + *(v261 + 20));
                    v265 = v341[1];
                    *v264 = v341[0];
                    v264[1] = v265;
                    v266 = v293;
                    sub_101224348(v263, v293, type metadata accessor for CRLTableAnchorHint);
                    (*v282)(v266, 0, 1, v261);
                    v267 = objc_allocWithZone(sub_1005B981C(&unk_101A2D9D0, &qword_101483968));
                    v268 = v294;
                    v269 = sub_10000BE14(v266, v294, &unk_101A09DD0, &unk_101478C10);
                    __chkstk_darwin(v269);
                    *(&v278 - 2) = KeyPath;
                    KeyPath = swift_getKeyPath();
                    v270 = &v267[*((swift_isaMask & *v267) + 0xF0)];
                    *v270 = 0;
                    *(v270 + 1) = 0xE000000000000000;
                    v271 = v304;
                    (*((swift_isaMask & *v331) + 0x88))();
                    v272 = v271;
                    v8 = &selRef_isEnumeratingForUserSearch;
                    v279(&v267[*((swift_isaMask & *v267) + 0xD8)], v272, v321);
                    sub_10000BE14(v268, &v267[*((swift_isaMask & *v267) + 0xE0)], &unk_101A09DD0, &unk_101478C10);
                    *&v267[*((swift_isaMask & *v267) + 0xE8)] = KeyPath;
                    v273 = sub_1005B981C(&unk_101A2C790, &qword_1014839A8);
                    v336.receiver = v267;
                    v336.super_class = v273;
                    v274 = objc_msgSendSuper2(&v336, "init");
                    sub_10000CAAC(v268, &unk_101A09DD0, &unk_101478C10);
                    v275 = v274;
                    sub_10000CAAC(v266, &unk_101A09DD0, &unk_101478C10);
                    v276 = (v275 + *((swift_isaMask & *v275) + 0xF0));
                    *v276 = 0;
                    v276[1] = 0xE000000000000000;

                    v277 = v285;
                    sub_100888700(v275, 0, 0, 4uLL, 0);
                    swift_unknownObjectRelease();

                    sub_1012243B0(v303, type metadata accessor for CRLTableAnchorHint);
                    sub_1012243B0(v310, v334);
                    v43 = v320;
                    v44 = v323;
                    v53 = v328;
LABEL_88:
                    v11 = &unk_101A0A000;
                    continue;
                  }
                }

                v334 = objc_opt_self();
                v203 = [v334 _atomicIncrementAssertCount];
                v340[0] = [objc_allocWithZone(NSString) init];
                sub_100604538(_swiftEmptyArrayStorage, v340, "invalid nil found when unwrapping value", 39, 2u);
                StaticString.description.getter("commitChangesWhenDragEnds(at:with:)", 35, 2);
                v204 = String._bridgeToObjectiveC()();

                StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/Tables/CRLTableRep.swift", 89, 2);
                v205 = String._bridgeToObjectiveC()();

                v206 = [v205 lastPathComponent];

                v207 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v209 = v208;

                if (qword_1019F20A0 != -1)
                {
                  swift_once();
                }

                v210 = static OS_os_log.crlAssert;
                sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
                inited = swift_initStackObject();
                *(inited + 16) = v286;
                *(inited + 56) = &type metadata for Int32;
                *(inited + 64) = &protocol witness table for Int32;
                *(inited + 32) = v203;
                v212 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
                *(inited + 96) = v212;
                v213 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
                *(inited + 104) = v213;
                *(inited + 72) = v204;
                *(inited + 136) = &type metadata for String;
                v214 = sub_1000053B0();
                *(inited + 112) = v207;
                *(inited + 120) = v209;
                *(inited + 176) = &type metadata for UInt;
                *(inited + 144) = v214;
                *(inited + 152) = 1014;
                v215 = v340[0];
                *(inited + 216) = v212;
                *(inited + 224) = v213;
                *(inited + 184) = &protocol witness table for UInt;
                *(inited + 192) = v215;
                v216 = v204;
                v217 = v215;
                v218 = static os_log_type_t.error.getter();
                sub_100005404(v210, &_mh_execute_header, v218, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
                swift_setDeallocating();
                sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
                swift_arrayDestroy();
                v219 = static os_log_type_t.error.getter();
                sub_100005404(v210, &_mh_execute_header, v219, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

                type metadata accessor for __VaListBuilder();
                v220 = swift_allocObject();
                v220[2] = 8;
                v220[3] = 0;
                v220[4] = 0;
                v220[5] = 0;
                v221 = __VaListBuilder.va_list()();
                StaticString.description.getter("commitChangesWhenDragEnds(at:with:)", 35, 2);
                v222 = String._bridgeToObjectiveC()();

                StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/Tables/CRLTableRep.swift", 89, 2);
                v223 = String._bridgeToObjectiveC()();

                StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
                v224 = String._bridgeToObjectiveC()();

                [v334 handleFailureInFunction:v222 file:v223 lineNumber:1014 isFatal:0 format:v224 args:v221];

                sub_1012243B0(v310, _s6CellIDVMa);
                swift_unknownObjectRelease();
              }

              else
              {

                swift_unknownObjectRelease();
                (*v288)(v148, v321);
              }

              v4 = v319;
              v43 = v320;
              a1 = v317;
              v44 = v323;
              v53 = v328;
LABEL_87:
              v8 = &selRef_isEnumeratingForUserSearch;
              goto LABEL_88;
            }
          }

          swift_unknownObjectRelease();

          v4 = v319;
          v43 = v320;
          a1 = v317;
          v8 = &selRef_isEnumeratingForUserSearch;
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }

      while (v53 != v44);
    }
  }
}

void sub_101221B9C(uint64_t a1, uint64_t a2, void *a3, double a4, double a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a3;
  *(v10 + 32) = a4;
  *(v10 + 40) = a5;
  *(v10 + 48) = a2;
  v15[4] = sub_1012253C0;
  v15[5] = v10;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = *"";
  v15[2] = sub_100007638;
  v15[3] = &unk_1018B7F60;
  v11 = _Block_copy(v15);

  v12 = a3;

  v13 = v11;
  if (+[NSThread isMainThread])
  {
    v13[2](v13);
  }

  else
  {
    v14 = &_dispatch_main_q;
    dispatch_async(&_dispatch_main_q, v13);
  }

  _Block_release(v13);
}

double sub_101221CE4(unint64_t a1, void *a2, uint64_t a3, double a4, double a5)
{
  if (a1)
  {
    sub_1012236A4(a1, a4, a5);
  }

  else
  {
    if (qword_1019F20A8 != -1)
    {
      swift_once();
    }

    v8 = static OS_os_log.crlError;
    v9 = static os_log_type_t.default.getter();
    sub_100005404(v8, &_mh_execute_header, v9, "Unable to get object from drop of native objects", 48, 2, _swiftEmptyArrayStorage);
    if (*(a3 + 16))
    {
      v10 = [a2 interactiveCanvasController];
      if (v10)
      {
        v11 = v10;
        v12 = [v10 layerHost];

        if (v12)
        {
          sub_1005B981C(&unk_1019F6B40, &qword_10146F320);
          isa = Array._bridgeToObjectiveC()().super.isa;
          [v12 presentErrors:isa withLocalizedDescription:0 completionHandler:0];

          swift_unknownObjectRelease();
        }
      }
    }
  }

  return result;
}

uint64_t sub_101221E34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (a2)
  {
    sub_1005B981C(&qword_101A0B1B8, &qword_10148B738);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_1005B981C(&unk_1019F6B40, &qword_10146F320);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4(v3, v5);
}

void sub_101221EEC(uint64_t a1, void *a2, double a3, double a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  v13[4] = sub_1012253D0;
  v13[5] = v8;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = *"";
  v13[2] = sub_100007638;
  v13[3] = &unk_1018B7FB0;
  v9 = _Block_copy(v13);

  v10 = a2;

  v11 = v9;
  if (+[NSThread isMainThread])
  {
    v11[2](v11);
  }

  else
  {
    v12 = &_dispatch_main_q;
    dispatch_async(&_dispatch_main_q, v11);
  }

  _Block_release(v11);
}

void sub_10122201C(unint64_t result, double a2, double a3)
{
  if (result)
  {
    if (result >> 62)
    {
      v3 = result;
      v4 = a3;
      v5 = a2;
      v6 = _CocoaArrayWrapper.endIndex.getter();
      a2 = v5;
      a3 = v4;
      v7 = v6;
      result = v3;
      if (v7 < 1)
      {
        return;
      }
    }

    else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
    {
      return;
    }

    sub_101222680(a2, a3, result, 0, 0);
  }
}

uint64_t sub_10122210C(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a1;
  *(v6 + 32) = a2;
  *(v6 + 16) = a6;
  v7 = type metadata accessor for ContinuousClock();
  *(v6 + 40) = v7;
  *(v6 + 48) = *(v7 - 8);
  *(v6 + 56) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v6 + 64) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 72) = v9;
  *(v6 + 80) = v8;

  return _swift_task_switch(sub_101222204, v9, v8);
}

uint64_t sub_101222204()
{
  v1 = static Duration.seconds(_:)();
  v3 = v2;
  static Clock<>.continuous.getter();
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = sub_1012222E4;

  return sub_100061EEC(v1, v3, 0, 0, 1);
}

uint64_t sub_1012222E4()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[7];
  v5 = v2[6];
  v6 = v2[5];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[9];
    v8 = v3[10];
    v9 = sub_1012255A0;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[9];
    v8 = v3[10];
    v9 = sub_101222478;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_101222478()
{

  if ((static Task<>.isCancelled.getter() & 1) == 0)
  {
    v2 = v0[3];
    v1 = v0[4];
    v3 = *(v0 + 2);
    v4 = [v3 layout];
    type metadata accessor for CRLTableLayout();
    v5 = swift_dynamicCastClassUnconditional();
    v6 = [v3 layout];
    swift_dynamicCastClassUnconditional();
    v7 = sub_10120C344(v2, v1);
    v9 = v8;
    v11 = v10;

    v12 = v5 + OBJC_IVAR____TtC8Freeform14CRLTableLayout_dynamicAnchorCell;
    *v12 = v7;
    *(v12 + 8) = v9;
    *(v12 + 16) = v11 & 1;
    sub_1012053C8();
  }

  v13 = *(v0 + 1);

  return v13();
}

void sub_101222680(double a1, double a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v11 = [v5 interactiveCanvasController];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 editingCoordinator];

    if (v13)
    {
      v14 = *&v13[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_boardItemFactory];

      v15 = objc_allocWithZone(CRLPasteboardMultipleImportableBoardItemProvider);
      sub_1005B981C(&qword_1019F8DC0, &qword_101471FD0);
      isa = Array._bridgeToObjectiveC()().super.isa;
      v17 = [v15 initWithImportableBoardItemProviders:isa];

      v18 = [v6 interactiveCanvasController];
      v77 = v6;
      v75 = v14;
      if (v18)
      {
        v19 = v18;
        v20 = [v18 layerHost];
      }

      else
      {
        v20 = 0;
      }

      [v17 setAlertPresenter:v20];
      swift_unknownObjectRelease();
      v21 = [objc_opt_self() mainBundle];
      v22 = String._bridgeToObjectiveC()();
      v23 = String._bridgeToObjectiveC()();
      v24 = [v21 localizedStringForKey:v22 value:v23 table:0];

      if (!v24)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = String._bridgeToObjectiveC()();
      }

      v25 = swift_allocObject();
      *(v25 + 16) = v17;
      v76 = v17;
      v26 = v77;
      v27 = [v77 interactiveCanvasController];
      if (v27 && (v28 = v27, v29 = [v27 layerHost], v28, v29))
      {
        v30 = [v76 progress];
        v82 = sub_101224268;
        v83 = v25;
        aBlock = _NSConcreteStackBlock;
        v79 = *"";
        v80 = sub_100007638;
        v81 = &unk_1018B7DA8;
        v31 = _Block_copy(&aBlock);

        v32 = [v29 beginModalOperationWithPresentedLocalizedMessage:v24 progress:v30 cancelHandler:v31];
        _Block_release(v31);
        swift_unknownObjectRelease();

        if (v32)
        {
          swift_unknownObjectRetain();
          goto LABEL_40;
        }
      }

      else
      {
      }

      v74 = a4;
      v73 = objc_opt_self();
      LODWORD(a4) = [v73 _atomicIncrementAssertCount];
      aBlock = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &aBlock, "invalid nil value found", 23, 2u);
      StaticString.description.getter("insertDroppedImportableBoardItems(from:at:completionHandler:)", 61, 2);
      v33 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/Tables/CRLTableRep.swift", 89, 2);
      v34 = String._bridgeToObjectiveC()();

      v35 = [v34 lastPathComponent];

      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;

      if (qword_1019F20A0 != -1)
      {
        goto LABEL_46;
      }

LABEL_14:
      v39 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = a4;
      v41 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(inited + 96) = v41;
      v42 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
      *(inited + 104) = v42;
      *(inited + 72) = v33;
      *(inited + 136) = &type metadata for String;
      v43 = sub_1000053B0();
      *(inited + 112) = v36;
      *(inited + 120) = v38;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v43;
      *(inited + 152) = 1207;
      v44 = aBlock;
      *(inited + 216) = v41;
      *(inited + 224) = v42;
      *(inited + 192) = v44;
      v45 = v33;
      v46 = v44;
      v47 = static os_log_type_t.error.getter();
      sub_100005404(v39, &_mh_execute_header, v47, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v48 = static os_log_type_t.error.getter();
      sub_100005404(v39, &_mh_execute_header, v48, "invalid nil value found", 23, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      a4 = swift_allocObject();
      a4[2] = 8;
      a4[3] = 0;
      v49 = a4 + 3;
      a4[4] = 0;
      a4[5] = 0;
      v50 = _swiftEmptyArrayStorage[2];
      if (v50)
      {
        v51 = 0;
        while (1)
        {
          v52 = &_swiftEmptyArrayStorage[5 * v51];
          v36 = v52[7];
          v33 = sub_100020E58(v52 + 4, v36);
          v53 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
          v38 = *v49;
          v54 = *(v53 + 16);
          v55 = __OFADD__(*v49, v54);
          v56 = *v49 + v54;
          if (v55)
          {
LABEL_43:
            __break(1u);
LABEL_44:
            __break(1u);
LABEL_45:
            __break(1u);
LABEL_46:
            swift_once();
            goto LABEL_14;
          }

          v36 = a4[4];
          if (v36 >= v56)
          {
            goto LABEL_31;
          }

          if (v36 + 0x4000000000000000 < 0)
          {
            goto LABEL_44;
          }

          v33 = a4[5];
          if (2 * v36 > v56)
          {
            v56 = 2 * v36;
          }

          a4[4] = v56;
          if ((v56 - 0x1000000000000000) >> 61 != 7)
          {
            goto LABEL_45;
          }

          v57 = v53;
          v58 = swift_slowAlloc();
          v59 = v58;
          a4[5] = v58;
          if (v33)
          {
            break;
          }

          v53 = v57;
          if (!v59)
          {
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

LABEL_32:
          v61 = *(v53 + 16);
          if (v61)
          {
            v62 = (v53 + 32);
            v63 = *v49;
            while (1)
            {
              v64 = *v62++;
              v59[v63] = v64;
              v63 = *v49 + 1;
              if (__OFADD__(*v49, 1))
              {
                break;
              }

              *v49 = v63;
              if (!--v61)
              {
                goto LABEL_16;
              }
            }

            __break(1u);
            goto LABEL_43;
          }

LABEL_16:

          if (++v51 == v50)
          {
            goto LABEL_39;
          }
        }

        if (v58 != v33 || v58 >= &v33[v38])
        {
          memmove(v58, v33, 8 * v38);
        }

        v33 = a4;
        __VaListBuilder.deallocStorage(wordCount:storage:)();
        v53 = v57;
LABEL_31:
        v59 = a4[5];
        if (!v59)
        {
          goto LABEL_38;
        }

        goto LABEL_32;
      }

LABEL_39:
      v65 = __VaListBuilder.va_list()();
      StaticString.description.getter("insertDroppedImportableBoardItems(from:at:completionHandler:)", 61, 2);
      v66 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/Tables/CRLTableRep.swift", 89, 2);
      v67 = String._bridgeToObjectiveC()();

      StaticString.description.getter("invalid nil value found", 23, 2);
      v68 = String._bridgeToObjectiveC()();

      [v73 handleFailureInFunction:v66 file:v67 lineNumber:1207 isFatal:0 format:v68 args:v65];

      v32 = 0;
      a4 = v74;
      v26 = v77;
LABEL_40:
      v69 = swift_allocObject();
      *(v69 + 16) = v26;
      *(v69 + 24) = v32;
      *(v69 + 32) = v76;
      *(v69 + 40) = a4;
      *(v69 + 48) = a5;
      *(v69 + 56) = a1;
      *(v69 + 64) = a2;
      v82 = sub_101224278;
      v83 = v69;
      aBlock = _NSConcreteStackBlock;
      v79 = *"";
      v80 = sub_100007638;
      v81 = &unk_1018B7D80;
      v70 = _Block_copy(&aBlock);
      v71 = v76;
      v72 = v26;
      sub_10067F2EC(a4, a5);

      [v71 provideBoardItemsWithFactory:v75 completionHandler:v70];

      swift_unknownObjectRelease();
      _Block_release(v70);
    }
  }
}

void sub_101222FC8(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  v14 = [a1 interactiveCanvasController];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 layerHost];

    if (v16)
    {
      v17 = swift_allocObject();
      *(v17 + 16) = a2;
      *(v17 + 24) = a1;
      *(v17 + 32) = a3;
      *(v17 + 40) = a4;
      *(v17 + 48) = a5;
      *(v17 + 56) = a6;
      *(v17 + 64) = a7;
      v21[4] = sub_101224290;
      v21[5] = v17;
      v21[0] = _NSConcreteStackBlock;
      v21[1] = *"";
      v21[2] = sub_100007638;
      v21[3] = &unk_1018B7DF8;
      v18 = _Block_copy(v21);
      v19 = a1;
      v20 = a3;
      sub_10067F2EC(a4, a5);
      swift_unknownObjectRetain();

      [v16 continueAsynchronousWorkOnMainThreadUsingBlock:v18];
      swift_unknownObjectRelease();
      _Block_release(v18);
    }
  }
}

void sub_101223138(uint64_t a1, void *a2, id a3, void (*a4)(uint64_t), uint64_t a5, double a6, double a7)
{
  if (a1)
  {
    swift_unknownObjectRetain();
    v14 = [a2 interactiveCanvasController];
    if (v14)
    {
      v15 = v14;
      v16 = [v14 layerHost];

      if (v16)
      {
        [v16 endModalOperationWithToken:a1];
        swift_unknownObjectRelease();
      }
    }

    swift_unknownObjectRelease();
  }

  v17 = [a3 isCancelled];
  if (v17)
  {
    goto LABEL_26;
  }

  v18 = [a3 boardItems];
  if (v18)
  {
    v19 = v18;
    type metadata accessor for CRLBoardItem(0);
    v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;
    if (v20 >> 62)
    {
      v22 = _CocoaArrayWrapper.endIndex.getter();
      if (v22 >= 1)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v22 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v22 >= 1)
      {
LABEL_10:
        if (qword_1019F2140 != -1)
        {
          swift_once();
        }

        v23 = static OS_os_log.crlDragAndDrop;
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146C6B0;
        *(inited + 56) = sub_1005B981C(&qword_1019F5740, &unk_101479D10);
        *(inited + 64) = sub_101224204();
        *(inited + 32) = v21;

        v25 = static os_log_type_t.default.getter();
        sub_100005404(v23, &_mh_execute_header, v25, "Inserting importable infos %@", 29, 2, inited);
        swift_setDeallocating();
        sub_100005070((inited + 32));
        v26 = objc_opt_self();
        v27 = NSNotFound.getter();
        if (v27 < 0)
        {
          __break(1u);
          return;
        }

        v28 = [v26 dragInsertionContextWithPreferredCenter:0 required:1 shouldEndEditing:0 fromDragToInsertController:0 insertFloating:v27 targetZOrder:{a6, a7}];
        if (v22 == 1 || ![a3 producesValidGeometry])
        {
          v29 = 0;
        }

        else
        {
          [objc_opt_self() adjustGeometriesOfBoardItems:v19 toPreserveRelativePositionsWithContainingRectCenteredAtUnscaledPoint:{a6, a7}];
          v29 = 1;
        }

        sub_101223AC8(v21, v28, v29);

        goto LABEL_20;
      }
    }
  }

LABEL_20:
  v30 = [a3 errors];
  sub_1005B981C(&unk_1019F6B40, &qword_10146F320);
  v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v31 + 16))
  {
    v32 = [a2 interactiveCanvasController];
    if (v32 && (v33 = v32, v34 = [v32 layerHost], v33, v34))
    {
      v35 = swift_allocObject();
      v35[2] = a2;
      v35[3] = v31;
      v35[4] = a3;
      v35[5] = a4;
      v35[6] = a5;
      aBlock[4] = sub_101224338;
      aBlock[5] = v35;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = *"";
      aBlock[2] = sub_100007638;
      aBlock[3] = &unk_1018B7E48;
      v36 = _Block_copy(aBlock);
      v37 = a2;
      v38 = a3;
      sub_10067F2EC(a4, a5);

      [v34 continueAsynchronousWorkOnMainThreadUsingBlock:v36];
      swift_unknownObjectRelease();
      _Block_release(v36);
    }

    else
    {
    }

    return;
  }

LABEL_26:
  if (a4)
  {
    a4(v17);
  }
}

void sub_1012235B4(void *a1, uint64_t a2, void *a3, void (*a4)(id))
{
  v6 = [a1 interactiveCanvasController];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 layerHost];

    if (v8)
    {
      sub_1005B981C(&unk_1019F6B40, &qword_10146F320);
      isa = Array._bridgeToObjectiveC()().super.isa;
      v10 = [a3 localizedErrorDescription];
      [v8 presentErrors:isa withLocalizedDescription:v10 completionHandler:0];

      v6 = swift_unknownObjectRelease();
    }
  }

  if (a4)
  {
    a4(v6);
  }
}

uint64_t sub_1012236A4(unint64_t a1, double a2, double a3)
{
  v6 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_23:
    v7 = _CocoaArrayWrapper.endIndex.getter();
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_24:
    v25 = _swiftEmptyArrayStorage;
    goto LABEL_25;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_24;
  }

LABEL_3:
  v8 = 0;
  v25 = _swiftEmptyArrayStorage;
  do
  {
    v9 = v8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v8 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v9 >= *(v6 + 16))
        {
          goto LABEL_22;
        }

        v10 = *(a1 + 8 * v9 + 32);
        swift_unknownObjectRetain();
        v8 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }
      }

      v11 = [v26 interactiveCanvasController];
      if (v11)
      {
        v12 = v11;
        v13 = [v11 editingCoordinator];

        if (v13)
        {
          break;
        }
      }

      swift_unknownObjectRelease();
LABEL_6:
      ++v9;
      if (v8 == v7)
      {
        goto LABEL_25;
      }
    }

    v14 = *&v13[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_boardItemFactory];

    v15 = [v10 newBoardItemWithFactory:v14 bakedSize:0];
    swift_unknownObjectRelease();
    if (!v15)
    {
      goto LABEL_6;
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v25 = _swiftEmptyArrayStorage;
  }

  while (v8 != v7);
LABEL_25:
  if (v25 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_36;
    }

    v16 = _CocoaArrayWrapper.endIndex.getter();
    if (v16 >= 2)
    {
LABEL_28:
      v17 = objc_opt_self();
      type metadata accessor for CRLBoardItem(0);
      isa = Array._bridgeToObjectiveC()().super.isa;
      [v17 adjustGeometriesOfBoardItems:isa toPreserveRelativePositionsWithContainingRectCenteredAtUnscaledPoint:{a2, a3}];
    }

LABEL_29:
    if (qword_1019F2140 != -1)
    {
      swift_once();
    }

    v19 = static OS_os_log.crlDragAndDrop;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    *(inited + 56) = sub_1005B981C(&qword_1019F5740, &unk_101479D10);
    *(inited + 64) = sub_101224204();
    *(inited + 32) = v25;

    v21 = static os_log_type_t.default.getter();
    sub_100005404(v19, &_mh_execute_header, v21, "Inserting native infos %@", 25, 2, inited);
    swift_setDeallocating();
    sub_100005070((inited + 32));
    v22 = objc_opt_self();
    result = NSNotFound.getter();
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      v24 = [v22 dragInsertionContextWithPreferredCenter:0 required:0 fromDragToInsertController:1 insertFloating:result targetZOrder:{a2, a3}];
      sub_101223AC8(v25, v24, v16 > 1);
    }
  }

  else
  {
    v16 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      if (v16 >= 2)
      {
        goto LABEL_28;
      }

      goto LABEL_29;
    }

LABEL_36:
  }

  return result;
}

void sub_101223AC8(unint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = [v3 interactiveCanvasController];
  v9 = [v8 commandController];

  if (v9)
  {
    v10 = v9;
    sub_10088E3FC(0);
  }

  if ((a3 & 1) == 0)
  {
    v11 = [v4 interactiveCanvasController];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 canvasEditor];

      if (v13)
      {
        type metadata accessor for CRLBoardItem(0);
        isa = Array._bridgeToObjectiveC()().super.isa;
        [v13 prepareGeometryForInsertingBoardItems:isa withInsertionContext:a2];

        swift_unknownObjectRelease();
      }
    }
  }

  if (!(a1 >> 62))
  {
    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_23:
    if (v9)
    {
      v53 = v9;
      sub_10088E600(0);
    }

    return;
  }

LABEL_22:
  v15 = _CocoaArrayWrapper.endIndex.getter();
  if (!v15)
  {
    goto LABEL_23;
  }

LABEL_9:
  v16 = 0;
  v58 = a1 & 0xFFFFFFFFFFFFFF8;
  v59 = a1 & 0xC000000000000001;
  v17 = &selRef_isEnumeratingForUserSearch;
  v18 = &selRef_allowResizeDelegate;
  v56 = a1;
  v57 = v4;
  v54 = v15;
  v55 = v9;
  while (1)
  {
    if (v59)
    {
      v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v16 >= *(v58 + 16))
      {
        goto LABEL_21;
      }

      v19 = *(a1 + 8 * v16 + 32);
    }

    v20 = v19;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v63 = v16 + 1;
    v64 = v16;
    v21 = (*((swift_isaMask & *v19) + 0xE0))();
    v22 = [v4 v17[343]];
    type metadata accessor for CRLTableLayout();
    v23 = [swift_dynamicCastClassUnconditional() v18[381]];
    if (!v23)
    {
      break;
    }

    v24 = v23;
    v25 = v20;

    type metadata accessor for CRLTableItem(0);
    v26 = *(**(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);

    v28 = v26(v27);

    v29 = [v21 geometryRelativeToGeometry:v28];

    v30 = *((swift_isaMask & *v25) + 0xE8);
    v62 = v29;
    v30();
    v31 = [v4 v17[343]];
    v32 = [swift_dynamicCastClassUnconditional() v18[381]];
    if (!v32)
    {
      goto LABEL_27;
    }

    v33 = v32;
    v34 = v25;

    v61 = swift_dynamicCastClassUnconditional();
    inserted = type metadata accessor for CRLCommandInsertBoardItems();
    objc_allocWithZone(inserted);
    swift_getObjectType();
    sub_1005B981C(&unk_101A09DB0, &unk_1014B9050);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v37 = v34;
    *(inited + 32) = NSNotFound.getter();
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_101465920;
    *(v38 + 32) = v37;
    *(inited + 40) = v38;
    v60 = sub_100BD4E94(inited);
    swift_setDeallocating();
    v39 = v37;
    sub_10000CAAC(inited + 32, &qword_101A039D0, &unk_101489780);
    v40 = objc_allocWithZone(inserted);
    v41 = &v40[OBJC_IVAR____TtC8Freeform26CRLCommandInsertBoardItems_actionString];
    v42 = [objc_opt_self() mainBundle];
    v43 = String._bridgeToObjectiveC()();
    v44 = String._bridgeToObjectiveC()();
    v45 = String._bridgeToObjectiveC()();
    v46 = [v42 localizedStringForKey:v43 value:v44 table:v45];

    v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;

    *v41 = v47;
    v41[1] = v49;
    *&v40[OBJC_IVAR____TtC8Freeform26CRLCommandInsertBoardItems_container] = v61;
    *&v40[OBJC_IVAR____TtC8Freeform26CRLCommandInsertBoardItems_boardItemsByIndex] = v60;
    v65.receiver = v40;
    v65.super_class = inserted;
    v50 = v33;
    v51 = objc_msgSendSuper2(&v65, "init");

    swift_deallocPartialClassInstance();
    v9 = v55;
    if (v55)
    {
      v52 = v55;
      sub_100888700(v51, 0, 0, 4uLL, 0);
    }

    v16 = v64 + 1;
    a1 = v56;
    v4 = v57;
    v17 = &selRef_isEnumeratingForUserSearch;
    v18 = &selRef_allowResizeDelegate;
    if (v63 == v54)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

id sub_101224110(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CRLTableRep();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_101224204()
{
  result = qword_101A2D9C0;
  if (!qword_101A2D9C0)
  {
    v3 = sub_1005C4E5C(&qword_1019F5740, &unk_101479D10);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v3, v0, v1);
    atomic_store(result, &qword_101A2D9C0);
  }

  return result;
}

uint64_t sub_1012242C4(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 24));

  if (*(v2 + 40))
  {
  }

  return _swift_deallocObject(v2, a2, 7);
}

uint64_t sub_101224348(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1012243B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_101224410(void *a1, double a2, double a3)
{
  v4 = v3;
  v8 = [v3 interactiveCanvasController];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 editingCoordinator];

    if (v10)
    {
      v11 = *&v10[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_boardItemFactory];

      v12 = [v4 interactiveCanvasController];
      if (v12)
      {
        v13 = v12;
        v14 = [v12 editingCoordinator];

        if (v14)
        {
          v15 = *&v14[OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_followCoordinator];

          sub_1008FEE94(1);
        }
      }

      v16 = [v4 interactiveCanvasController];
      if (v16)
      {
        v17 = v16;
        v18 = [v16 layerHost];

        if (v18)
        {
          if (([v18 respondsToSelector:"asiOSCVC"] & 1) == 0)
          {
            goto LABEL_16;
          }

          v19 = [v18 asiOSCVC];
          v20 = [v19 delegate];

          if (!v20)
          {
            __break(1u);
            return;
          }

          swift_unknownObjectRelease();
          if ([v20 respondsToSelector:"currentDocumentMode"])
          {
            v21 = [v20 currentDocumentMode];
            swift_unknownObjectRelease();
            if ([v21 wantsToEndForDragAndDropInteractions])
            {
              v22 = [v21 boardViewController];
              if (v22)
              {
                v23 = v22;
                v24 = sub_101012FD4();

                [v24 resetToDefaultModeAnimated:1];
              }
            }
          }

          else
          {
LABEL_16:
            swift_unknownObjectRelease();
          }
        }
      }

      v25 = [a1 itemSource];
      objc_opt_self();
      v26 = swift_dynamicCastObjCClass();
      if (!v26)
      {

        swift_unknownObjectRelease();
        return;
      }

      v27 = v26;
      if ([v26 hasNativeBoardItems])
      {
        v28 = swift_allocObject();
        *(v28 + 16) = v4;
        *(v28 + 24) = a2;
        *(v28 + 32) = a3;
        v82 = sub_1012253B4;
        v83 = v28;
        aBlock = _NSConcreteStackBlock;
        v79 = *"";
        v80 = sub_101221E34;
        v81 = &unk_1018B7F10;
        v29 = _Block_copy(&aBlock);
        v30 = v4;

        v31 = [v27 loadProvidersForNativeBoardItemsWithBoardItemFactory:v11 loadHandler:v29];
        _Block_release(v29);
        if (!v31)
        {
          v76 = objc_opt_self();
          v32 = [v76 _atomicIncrementAssertCount];
          aBlock = [objc_allocWithZone(NSString) init];
          sub_100604538(_swiftEmptyArrayStorage, &aBlock, "invalid nil value found", 23, 2u);
          StaticString.description.getter("handleDragOperation(_:with:at:)", 31, 2);
          v74 = String._bridgeToObjectiveC()();

          StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/Tables/CRLTableRep.swift", 89, 2);
          v33 = String._bridgeToObjectiveC()();

          v34 = [v33 lastPathComponent];

          v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v37 = v36;

          if (qword_1019F20A0 != -1)
          {
            swift_once();
          }

          v38 = static OS_os_log.crlAssert;
          sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10146CA70;
          *(inited + 56) = &type metadata for Int32;
          *(inited + 64) = &protocol witness table for Int32;
          *(inited + 32) = v32;
          v40 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
          *(inited + 96) = v40;
          v41 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
          *(inited + 104) = v41;
          *(inited + 72) = v74;
          *(inited + 136) = &type metadata for String;
          v42 = sub_1000053B0();
          *(inited + 112) = v35;
          *(inited + 120) = v37;
          *(inited + 176) = &type metadata for UInt;
          *(inited + 184) = &protocol witness table for UInt;
          *(inited + 144) = v42;
          *(inited + 152) = 1133;
          v43 = aBlock;
          *(inited + 216) = v40;
          *(inited + 224) = v41;
          *(inited + 192) = v43;
          v44 = v74;
          v45 = v43;
          v46 = static os_log_type_t.error.getter();
          sub_100005404(v38, &_mh_execute_header, v46, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
          swift_arrayDestroy();
          v47 = static os_log_type_t.error.getter();
          sub_100005404(v38, &_mh_execute_header, v47, "invalid nil value found", 23, 2, _swiftEmptyArrayStorage);

          type metadata accessor for __VaListBuilder();
          v48 = swift_allocObject();
          v48[2] = 8;
          v48[3] = 0;
          v48[4] = 0;
          v48[5] = 0;
          v49 = __VaListBuilder.va_list()();
          StaticString.description.getter("handleDragOperation(_:with:at:)", 31, 2);
          v50 = String._bridgeToObjectiveC()();

          StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/Tables/CRLTableRep.swift", 89, 2);
          v51 = String._bridgeToObjectiveC()();

          StaticString.description.getter("invalid nil value found", 23, 2);
          v52 = String._bridgeToObjectiveC()();

          [v76 handleFailureInFunction:v50 file:v51 lineNumber:1133 isFatal:0 format:v52 args:v49];
          swift_unknownObjectRelease();

LABEL_29:

          return;
        }
      }

      else
      {
        v53 = swift_allocObject();
        *(v53 + 16) = v4;
        *(v53 + 24) = a2;
        *(v53 + 32) = a3;
        v82 = sub_1012253A8;
        v83 = v53;
        aBlock = _NSConcreteStackBlock;
        v79 = *"";
        v80 = sub_101213480;
        v81 = &unk_1018B7EC0;
        v54 = _Block_copy(&aBlock);
        v55 = v4;

        v31 = [v27 loadProvidersForImportedBoardItemsUsingBoardItemFactory:v11 WithLoadHandler:v54];
        _Block_release(v54);
        if (!v31)
        {
          v77 = objc_opt_self();
          v56 = [v77 _atomicIncrementAssertCount];
          aBlock = [objc_allocWithZone(NSString) init];
          sub_100604538(_swiftEmptyArrayStorage, &aBlock, "invalid nil value found", 23, 2u);
          StaticString.description.getter("handleDragOperation(_:with:at:)", 31, 2);
          v75 = String._bridgeToObjectiveC()();

          StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/Tables/CRLTableRep.swift", 89, 2);
          v57 = String._bridgeToObjectiveC()();

          v58 = [v57 lastPathComponent];

          v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v60 = v59;

          if (qword_1019F20A0 != -1)
          {
            swift_once();
          }

          v61 = static OS_os_log.crlAssert;
          sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
          v62 = swift_initStackObject();
          *(v62 + 16) = xmmword_10146CA70;
          *(v62 + 56) = &type metadata for Int32;
          *(v62 + 64) = &protocol witness table for Int32;
          *(v62 + 32) = v56;
          v63 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
          *(v62 + 96) = v63;
          v64 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
          *(v62 + 104) = v64;
          *(v62 + 72) = v75;
          *(v62 + 136) = &type metadata for String;
          v65 = sub_1000053B0();
          *(v62 + 112) = v73;
          *(v62 + 120) = v60;
          *(v62 + 176) = &type metadata for UInt;
          *(v62 + 184) = &protocol witness table for UInt;
          *(v62 + 144) = v65;
          *(v62 + 152) = 1145;
          v66 = aBlock;
          *(v62 + 216) = v63;
          *(v62 + 224) = v64;
          *(v62 + 192) = v66;
          v67 = v75;
          v68 = v66;
          v69 = static os_log_type_t.error.getter();
          sub_100005404(v61, &_mh_execute_header, v69, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v62);
          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
          swift_arrayDestroy();
          v70 = static os_log_type_t.error.getter();
          sub_100005404(v61, &_mh_execute_header, v70, "invalid nil value found", 23, 2, _swiftEmptyArrayStorage);

          type metadata accessor for __VaListBuilder();
          v71 = swift_allocObject();
          v71[2] = 8;
          v71[3] = 0;
          v71[4] = 0;
          v71[5] = 0;
          v72 = __VaListBuilder.va_list()();
          StaticString.description.getter("handleDragOperation(_:with:at:)", 31, 2);
          v50 = String._bridgeToObjectiveC()();

          StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/Tables/CRLTableRep.swift", 89, 2);
          v51 = String._bridgeToObjectiveC()();

          StaticString.description.getter("invalid nil value found", 23, 2);
          v52 = String._bridgeToObjectiveC()();

          [v77 handleFailureInFunction:v50 file:v51 lineNumber:1145 isFatal:0 format:v52 args:v72];
          swift_unknownObjectRelease();

          goto LABEL_29;
        }
      }

      swift_unknownObjectRelease();
    }
  }
}

void sub_101224F84(double a1, double a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v40 - v8;
  v10 = &v2[OBJC_IVAR____TtC8Freeform11CRLTableRep_currentDragPointOnRep];
  LOBYTE(v8) = v2[OBJC_IVAR____TtC8Freeform11CRLTableRep_currentDragPointOnRep + 16];
  v11 = &v2[OBJC_IVAR____TtC8Freeform11CRLTableRep_previousDragPointOnRep];
  *v11 = *v10;
  *(v11 + 16) = v8;
  [v3 convertNaturalPointFromUnscaledCanvas:{a1, a2}];
  *v10 = v12;
  v10[1] = v13;
  *(v10 + 16) = 0;
  if (v11[2])
  {
    return;
  }

  v14 = v12;
  v15 = v13;
  v41 = ObjectType;
  v17 = *v11;
  v16 = v11[1];
  v18 = [v3 layout];
  type metadata accessor for CRLTableLayout();
  swift_dynamicCastClassUnconditional();
  v19 = sub_10120C344(v17, v16);
  if (v21)
  {

LABEL_9:
    v30 = [v3 layout];
    v31 = swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8Freeform14CRLTableLayout_dynamicAnchorCell;
    *v31 = 0;
    *(v31 + 8) = 0;
    *(v31 + 16) = 1;
    sub_1012053C8();

    goto LABEL_10;
  }

  v22 = v19;
  v23 = v20;
  v24 = sub_10120C344(v14, v15);
  v26 = v25;
  v28 = v27;

  if (v28)
  {
    goto LABEL_9;
  }

  if (v22 != v24 || v23 != v26)
  {
    goto LABEL_9;
  }

LABEL_10:
  v32 = [v3 layout];
  v33 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8Freeform14CRLTableLayout_dynamicAnchorCell + 16);

  v34 = v41;
  if (v33 == 1)
  {
    v35 = OBJC_IVAR____TtC8Freeform11CRLTableRep_activateCellAnchorTask;
    if (*&v3[OBJC_IVAR____TtC8Freeform11CRLTableRep_activateCellAnchorTask])
    {

      Task.cancel()();
    }

    v36 = type metadata accessor for TaskPriority();
    (*(*(v36 - 8) + 56))(v9, 1, 1, v36);
    type metadata accessor for MainActor();
    v37 = v3;
    v38 = static MainActor.shared.getter();
    v39 = swift_allocObject();
    *(v39 + 2) = v38;
    *(v39 + 3) = &protocol witness table for MainActor;
    *(v39 + 4) = v37;
    v39[5] = v14;
    v39[6] = v15;
    *(v39 + 7) = v34;
    *&v3[v35] = sub_10064191C(0, 0, v9, &unk_1014D3560, v39);
  }
}

uint64_t sub_1012252D0(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_10122210C(v7, v8, a1, v4, v5, v6);
}

unint64_t sub_1012253DC()
{
  result = qword_101A2C8D0;
  if (!qword_101A2C8D0)
  {
    v3 = _s6CellIDVMa(255);
    result = swift_getWitnessTable(aI_27, v3, v0, v1);
    atomic_store(result, &qword_101A2C8D0);
  }

  return result;
}

uint64_t sub_101225434(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10122549C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002D3D4;

  return sub_10121AD08(a1, v4, v5, v6, v7);
}

void sub_1012255A8(uint64_t a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for CRLTableRowColumnAdderKnobTracker();
  objc_msgSendSuper2(&v9, "endMovingKnob");
  v2 = [v1 knob];
  [v1 currentPosition];
  v5 = [v2 isHitByUnscaledPoint:objc_msgSend(v1 inputType:{"inputType"), v3, v4}];

  if (v5)
  {
    v6 = [v1 knob];
    type metadata accessor for CRLTableKnob();
    v7 = swift_dynamicCastClass();
    if (v7 && *(v7 + OBJC_IVAR____TtC8Freeform12CRLTableKnob_knobVariant + 8) == 2)
    {
      v8 = *(v7 + OBJC_IVAR____TtC8Freeform12CRLTableKnob_knobVariant);
      if (v8)
      {
        if (v8 == 1)
        {
          sub_101225714();
        }
      }

      else
      {
        sub_101225F50();
      }
    }
  }
}

void sub_101225714()
{
  v1 = v0;
  inserted = type metadata accessor for CRLCommandTableInsertColumn.InsertPosition(0);
  __chkstk_darwin(inserted);
  v4 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s14ColumnCRDTDataVMa(0);
  __chkstk_darwin(v5);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v11 = &v58 - v10;
  v12 = [v1 icc];
  v13 = [v12 commandController];

  if (v13)
  {
    v59 = v13;
    v60 = v7;
    v61 = v4;
    v14 = [v1 rep];
    v15 = [v14 layout];

    type metadata accessor for CRLTableLayout();
    v16 = swift_dynamicCastClassUnconditional();
    v17 = (v16 + OBJC_IVAR____TtC8Freeform14CRLTableLayout_dynamicTableState);
    swift_beginAccess();
    v18 = *v17;
    if (*v17)
    {
      sub_1011DAB7C(v18, v17[1]);

      sub_1011DABBC(v19);
    }

    else
    {
      v18 = *(v16 + OBJC_IVAR____TtC8Freeform14CRLTableLayout_infoTableState);
    }

    v43 = *(v18 + 16);
    if (v43)
    {
      v44 = *(v18 + 8 * v43 + 24);

      v45 = v44;
    }

    else
    {

      v45 = 0.0;
    }

    v46 = v43 == 0;
    v63 = 0.0;
    v64 = 1;
    sub_1005B981C(&unk_101A095E0, &qword_10146DBA0);
    sub_1005FEB28();
    CRRegister.init(wrappedValue:)();
    v47 = *(v5 + 20);
    *&v11[v47] = _swiftEmptyDictionarySingleton;
    v63 = v45;
    v64 = v46;
    sub_1005B981C(&unk_101A2C7E0, &unk_10149A510);
    CRRegister.wrappedValue.setter();
    *&v11[v47] = _swiftEmptyDictionarySingleton;
    v48 = [v1 rep];
    type metadata accessor for CRLTableRep();
    v49 = [swift_dynamicCastClassUnconditional() layout];
    if ([swift_dynamicCastClassUnconditional() boardItem])
    {

      type metadata accessor for CRLTableItem(0);
      v50 = swift_dynamicCastClassUnconditional();
      v51 = v60;
      sub_101226854(v11, v60, _s14ColumnCRDTDataVMa);
      v52 = v61;
      swift_storeEnumTagMultiPayload();
      v53 = type metadata accessor for CRLCommandTableInsertColumn(0);
      v54 = objc_allocWithZone(v53);
      UUID.init()();
      v55 = &v54[OBJC_IVAR____TtC8Freeform27CRLCommandTableInsertColumn_actionString];
      *v55 = 0xD00000000000001FLL;
      *(v55 + 1) = 0x80000001015C5210;
      *&v54[OBJC_IVAR____TtC8Freeform27CRLCommandTableInsertColumn_tableBoardItem] = v50;
      sub_101226854(v51, &v54[OBJC_IVAR____TtC8Freeform27CRLCommandTableInsertColumn_columnDataToInsert], _s14ColumnCRDTDataVMa);
      sub_101226854(v52, &v54[OBJC_IVAR____TtC8Freeform27CRLCommandTableInsertColumn_variant], type metadata accessor for CRLCommandTableInsertColumn.InsertPosition);
      v62.receiver = v54;
      v62.super_class = v53;
      v56 = objc_msgSendSuper2(&v62, "init");
      sub_1012268BC(v52, type metadata accessor for CRLCommandTableInsertColumn.InsertPosition);
      sub_1012268BC(v51, _s14ColumnCRDTDataVMa);
      v57 = v59;
      sub_100888700(v56, 0, 0, 4uLL, 0);

      sub_1012268BC(v11, _s14ColumnCRDTDataVMa);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v20 = objc_opt_self();
    v21 = [v20 _atomicIncrementAssertCount];
    v65 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v65, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("appendColumnToTable()", 21, 2);
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/Tables/CRLTableRowColumnAdderKnobTracker.swift", 111, 2);
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
    v30 = sub_1005CF000();
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
    *(inited + 152) = 38;
    v33 = v65;
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
    StaticString.description.getter("appendColumnToTable()", 21, 2);
    v40 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/Tables/CRLTableRowColumnAdderKnobTracker.swift", 111, 2);
    v41 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
    v42 = String._bridgeToObjectiveC()();

    [v20 handleFailureInFunction:v40 file:v41 lineNumber:38 isFatal:0 format:v42 args:v39];
  }
}

void sub_101225F50()
{
  v1 = v0;
  inserted = type metadata accessor for CRLCommandTableInsertRow.InsertPosition(0);
  __chkstk_darwin(inserted);
  v4 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = _s11RowCRDTDataVMa(0);
  __chkstk_darwin(v5);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v11 = &v58 - v10;
  v12 = [v1 icc];
  v13 = [v12 commandController];

  if (v13)
  {
    v63 = inserted;
    v59 = v13;
    v60 = v7;
    v61 = v4;
    v14 = [v1 rep];
    v15 = [v14 layout];

    v62 = type metadata accessor for CRLTableLayout();
    v16 = swift_dynamicCastClassUnconditional();
    v17 = (v16 + OBJC_IVAR____TtC8Freeform14CRLTableLayout_dynamicTableState);
    swift_beginAccess();
    v18 = *v17;
    if (*v17)
    {
      v19 = v17[1];
      sub_1011DAB7C(*v17, v19);

      sub_1011DABBC(v18);
    }

    else
    {
      v19 = *(v16 + OBJC_IVAR____TtC8Freeform14CRLTableLayout_infoTableState + 8);
    }

    v43 = *(v19 + 16);
    if (v43)
    {
      v44 = *(v19 + 8 * v43 + 24);

      v45 = v44;
    }

    else
    {

      v45 = 0.0;
    }

    v46 = v43 == 0;
    v65 = 0.0;
    v66 = 1;
    sub_1005B981C(&unk_101A095E0, &qword_10146DBA0);
    sub_1005FEB28();
    CRRegister.init(wrappedValue:)();
    v47 = *(v5 + 20);
    *&v11[v47] = _swiftEmptyDictionarySingleton;
    v65 = v45;
    v66 = v46;
    sub_1005B981C(&unk_101A2C7E0, &unk_10149A510);
    CRRegister.wrappedValue.setter();
    *&v11[v47] = _swiftEmptyDictionarySingleton;
    v48 = [v1 rep];
    type metadata accessor for CRLTableRep();
    v49 = [swift_dynamicCastClassUnconditional() layout];
    if ([swift_dynamicCastClassUnconditional() boardItem])
    {

      type metadata accessor for CRLTableItem(0);
      v50 = swift_dynamicCastClassUnconditional();
      v51 = v60;
      sub_101226854(v11, v60, _s11RowCRDTDataVMa);
      v52 = v61;
      swift_storeEnumTagMultiPayload();
      v53 = type metadata accessor for CRLCommandTableInsertRow(0);
      v54 = objc_allocWithZone(v53);
      UUID.init()();
      v55 = &v54[OBJC_IVAR____TtC8Freeform24CRLCommandTableInsertRow_actionString];
      *v55 = 0xD00000000000001CLL;
      *(v55 + 1) = 0x80000001015C5180;
      *&v54[OBJC_IVAR____TtC8Freeform24CRLCommandTableInsertRow_tableBoardItem] = v50;
      sub_101226854(v51, &v54[OBJC_IVAR____TtC8Freeform24CRLCommandTableInsertRow_rowDataToInsert], _s11RowCRDTDataVMa);
      sub_101226854(v52, &v54[OBJC_IVAR____TtC8Freeform24CRLCommandTableInsertRow_variant], type metadata accessor for CRLCommandTableInsertRow.InsertPosition);
      v64.receiver = v54;
      v64.super_class = v53;
      v56 = objc_msgSendSuper2(&v64, "init");
      sub_1012268BC(v52, type metadata accessor for CRLCommandTableInsertRow.InsertPosition);
      sub_1012268BC(v51, _s11RowCRDTDataVMa);
      v57 = v59;
      sub_100888700(v56, 0, 0, 4uLL, 0);

      sub_1012268BC(v11, _s11RowCRDTDataVMa);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v20 = objc_opt_self();
    v21 = [v20 _atomicIncrementAssertCount];
    v67 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v67, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("appendRowToTable()", 18, 2);
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/Tables/CRLTableRowColumnAdderKnobTracker.swift", 111, 2);
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
    v30 = sub_1005CF000();
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
    *(inited + 152) = 49;
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
    StaticString.description.getter("appendRowToTable()", 18, 2);
    v40 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/Tables/CRLTableRowColumnAdderKnobTracker.swift", 111, 2);
    v41 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
    v42 = String._bridgeToObjectiveC()();

    [v20 handleFailureInFunction:v40 file:v41 lineNumber:49 isFatal:0 format:v42 args:v39];
  }
}

id sub_1012267FC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CRLTableRowColumnAdderKnobTracker();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_101226854(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1012268BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_10122691C(void *a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC8Freeform34CRLTableRowColumnResizeKnobTracker_baseRowDividerOffsets] = _swiftEmptyArrayStorage;
  *&v2[OBJC_IVAR____TtC8Freeform34CRLTableRowColumnResizeKnobTracker_baseColumnDividerOffsets] = _swiftEmptyArrayStorage;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for CRLTableRowColumnResizeKnobTracker();
  v5 = objc_msgSendSuper2(&v13, "initWithRep:knob:", a1, a2);
  v6 = [v5 rep];
  v7 = [v6 layout];

  type metadata accessor for CRLTableLayout();
  swift_dynamicCastClassUnconditional();
  v8 = sub_1012054CC();

  *&v5[OBJC_IVAR____TtC8Freeform34CRLTableRowColumnResizeKnobTracker_baseRowDividerOffsets] = v8;

  v9 = [v5 rep];
  v10 = [v9 layout];

  swift_dynamicCastClassUnconditional();
  v11 = sub_101205638();

  *&v5[OBJC_IVAR____TtC8Freeform34CRLTableRowColumnResizeKnobTracker_baseColumnDividerOffsets] = v11;

  return v5;
}

void sub_101226BF8(double a1, double a2)
{
  v7 = v2;
  v22 = [v2 knob];
  type metadata accessor for CRLTableKnob();
  v10 = swift_dynamicCastClass();
  if (v10 && *(v10 + OBJC_IVAR____TtC8Freeform12CRLTableKnob_knobVariant + 8) <= 1u)
  {
    v11 = *(v10 + OBJC_IVAR____TtC8Freeform12CRLTableKnob_knobVariant);
    sub_1012271A4();
    if ((v11 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v13 = *&v2[OBJC_IVAR____TtC8Freeform34CRLTableRowColumnResizeKnobTracker_baseRowDividerOffsets];
      if (v11 < *(v13 + 16))
      {
        a2 = v12;
        v6 = *(v13 + 8 * v11 + 32);
        v14 = [v2 rep];
        v15 = [v14 layout];

        type metadata accessor for CRLTableLayout();
        v16 = [swift_dynamicCastClassUnconditional() boardItem];
        if (!v16)
        {
LABEL_19:
          __break(1u);
          return;
        }

        v17 = v16;

        type metadata accessor for CRLTableItem(0);
        swift_dynamicCastClassUnconditional();
        a1 = sub_1011E3F2C(v11, v18);

        v19 = [v7 rep];
        v7 = [v19 layout];

        v2 = swift_dynamicCastClassUnconditional();
        v3 = sub_101207514(v23);
        if (!*v20)
        {
          (v3)(v23, 0);
          goto LABEL_14;
        }

        v5 = v20;
        v4 = v20[1];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v5[1] = v4;
        if (isUniquelyReferenced_nonNull_native)
        {
LABEL_8:
          if (v11 < *(v4 + 2))
          {
            *&v4[8 * v11 + 32] = a2 - v6 + a1;
            (v3)(v23, 0);
LABEL_14:
            [v2 invalidateSize];
            sub_10120617C();

            return;
          }

          __break(1u);
          goto LABEL_19;
        }

LABEL_17:
        v4 = sub_10113CF98(v4);
        v5[1] = v4;
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_17;
  }
}

void sub_101226ED0(double a1, double a2)
{
  v7 = v2;
  v22 = [v2 knob];
  type metadata accessor for CRLTableKnob();
  v10 = swift_dynamicCastClass();
  if (v10 && *(v10 + OBJC_IVAR____TtC8Freeform12CRLTableKnob_knobVariant + 8) <= 1u)
  {
    v11 = *(v10 + OBJC_IVAR____TtC8Freeform12CRLTableKnob_knobVariant);
    sub_1012271A4();
    if ((v11 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v13 = *&v2[OBJC_IVAR____TtC8Freeform34CRLTableRowColumnResizeKnobTracker_baseColumnDividerOffsets];
      if (v11 < *(v13 + 16))
      {
        a2 = v12;
        v6 = *(v13 + 8 * v11 + 32);
        v14 = [v2 rep];
        v15 = [v14 layout];

        type metadata accessor for CRLTableLayout();
        v16 = [swift_dynamicCastClassUnconditional() boardItem];
        if (!v16)
        {
LABEL_19:
          __break(1u);
          return;
        }

        v17 = v16;

        type metadata accessor for CRLTableItem(0);
        swift_dynamicCastClassUnconditional();
        a1 = sub_1011E5BDC(v11, v18);

        v19 = [v7 rep];
        v7 = [v19 layout];

        v2 = swift_dynamicCastClassUnconditional();
        v3 = sub_101207514(v23);
        v4 = *v20;
        if (!*v20)
        {
          (v3)(v23, 0);
          goto LABEL_14;
        }

        v5 = v20;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v5 = v4;
        if (isUniquelyReferenced_nonNull_native)
        {
LABEL_8:
          if (v11 < *(v4 + 2))
          {
            *&v4[8 * v11 + 32] = a2 - v6 + a1;
            (v3)(v23, 0);
LABEL_14:
            [v2 invalidateSize];
            sub_10120617C();

            return;
          }

          __break(1u);
          goto LABEL_19;
        }

LABEL_17:
        v4 = sub_10113CF98(v4);
        *v5 = v4;
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_17;
  }
}

void sub_1012271A4()
{
  v1 = [v0 knob];
  type metadata accessor for CRLTableKnob();
  v2 = swift_dynamicCastClass();
  if (!v2 || *(v2 + OBJC_IVAR____TtC8Freeform12CRLTableKnob_knobVariant + 8) > 1u)
  {

    return;
  }

  v3 = *(v2 + OBJC_IVAR____TtC8Freeform12CRLTableKnob_knobVariant);
  if (*(v2 + OBJC_IVAR____TtC8Freeform12CRLTableKnob_knobVariant + 8))
  {
    if (!v3)
    {
      [v0 originalBounds];
      CGRectGetMinX(v12);
      goto LABEL_16;
    }

    v4 = v3 - 1;
    if (__OFSUB__(v3, 1))
    {
      __break(1u);
    }

    else if ((v4 & 0x8000000000000000) == 0)
    {
      if (v4 < *(*&v0[OBJC_IVAR____TtC8Freeform34CRLTableRowColumnResizeKnobTracker_baseColumnDividerOffsets] + 16))
      {
LABEL_16:
        v6 = [v0 rep];
        v7 = [v6 layout];

        type metadata accessor for CRLTableLayout();
        swift_dynamicCastClassUnconditional();
        sub_101210784(v9);
        if (*(v11 + 16))
        {
          sub_1007C7EC0(v3);
        }

LABEL_22:

        return;
      }

      goto LABEL_25;
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (!v3)
  {
    [v0 originalBounds];
    CGRectGetMinY(v13);
    goto LABEL_20;
  }

  v5 = v3 - 1;
  if (__OFSUB__(v3, 1))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v5 < *(*&v0[OBJC_IVAR____TtC8Freeform34CRLTableRowColumnResizeKnobTracker_baseRowDividerOffsets] + 16))
  {
LABEL_20:
    v8 = [v0 rep];
    v7 = [v8 layout];

    type metadata accessor for CRLTableLayout();
    swift_dynamicCastClassUnconditional();
    sub_101210784(v9);
    if (*(v10 + 16))
    {
      sub_1007C7EC0(v3);
    }

    goto LABEL_22;
  }

LABEL_28:
  __break(1u);
}

id sub_10122746C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CRLTableRowColumnResizeKnobTracker();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_101227510(uint64_t a1, char a2, char a3)
{
  v6 = type metadata accessor for CRLTableCellRange(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v37 = Strong;
  v10 = swift_unknownObjectWeakLoadStrong();
  if (!v10 || (v11 = v10, v12 = [v10 interactiveCanvasController], v11, !v12) || (v13 = objc_msgSend(v12, "canvasEditor"), v12, !v13))
  {
    v19 = v37;
LABEL_11:

    return;
  }

  v14 = swift_unknownObjectWeakLoadStrong();
  if (v14 && (v15 = v14, v16 = [v14 interactiveCanvasController], v15, v16) && (v17 = objc_msgSend(v16, "editorController"), v16, v17))
  {
    if (type metadata accessor for CRLTableEditor())
    {
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    }

    else
    {
      ObjCClassFromMetadata = 0;
    }

    [v17 mostSpecificCurrentEditorOfClass:ObjCClassFromMetadata];

    v20 = swift_dynamicCastClass();
    if (v20)
    {
      v21 = v20;
      v36 = [v13 selectionPathWithInfo:{objc_msgSend(v37, "info")}];
      swift_unknownObjectRelease();
      if (a3 == 3)
      {
        sub_101210B80(a1, v8);
        v22 = type metadata accessor for CRLTableCellSelection(0);
        v23 = objc_allocWithZone(v22);
        sub_101210B80(v8, &v23[OBJC_IVAR____TtC8Freeform21CRLTableCellSelection_range]);
        v23[OBJC_IVAR____TtC8Freeform21CRLTableCellSelection_type] = a2;
        v38.receiver = v23;
        v38.super_class = v22;
        v24 = objc_msgSendSuper2(&v38, "init");
        sub_1012279A8(v8);
        v25 = [v36 selectionPathWithAppendedSelection:v24];

        v26 = v25;
        v27 = [v21 editorController];
        [v27 setSelectionPath:v26];

        if (qword_1019F21D8 != -1)
        {
          swift_once();
        }

        v28 = static OS_os_log.crlTables;
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146C6B0;
        v30 = [v26 description];

        v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v33 = v32;

        *(inited + 56) = &type metadata for String;
        *(inited + 64) = sub_1000053B0();
        *(inited + 32) = v31;
        *(inited + 40) = v33;
        v34 = static os_log_type_t.default.getter();
        sub_100005404(v28, &_mh_execute_header, v34, "Updated table selection to: %@", 30, 2, inited);
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        swift_setDeallocating();
        sub_100005070((inited + 32));
        return;
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v19 = v36;
      goto LABEL_11;
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }

  swift_unknownObjectRelease();
}

uint64_t sub_1012279A8(uint64_t a1)
{
  v2 = type metadata accessor for CRLTableCellRange(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for CRLFileWriteAssetDownloadAlertViewController(uint64_t a1)
{
  result = qword_101A2DB18;
  if (!qword_101A2DB18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_101227A90@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v67 = a1;
  v3 = sub_1005B981C(&qword_101A2DC38, &qword_1014D37B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v63 - v4;
  v69 = sub_1005B981C(&qword_101A2DC40, &qword_1014D37B8);
  __chkstk_darwin(v69);
  v72 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v68 = &v63 - v8;
  __chkstk_darwin(v9);
  v71 = &v63 - v10;
  v11 = type metadata accessor for Divider();
  v65 = *(v11 - 8);
  v66 = v11;
  __chkstk_darwin(v11);
  v64 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1005B981C(&qword_101A2DC48, &unk_1014D37C0);
  __chkstk_darwin(v63);
  v70 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v63 - v15;
  __chkstk_darwin(v17);
  v83 = &v63 - v18;
  LocalizedStringKey.init(stringLiteral:)();
  v19 = Text.init(_:tableName:bundle:comment:)();
  v21 = v20;
  v23 = v22;
  static Font.headline.getter();
  v24 = Text.font(_:)();
  v80 = v25;
  v81 = v24;
  v27 = v26;
  v82 = v28;

  sub_10007441C(v19, v21, v23 & 1);

  LOBYTE(v19) = static Edge.Set.top.getter();
  v29 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v19)
  {
    v29 = Edge.Set.init(rawValue:)();
  }

  v78 = v27 & 1;
  v79 = v29;
  v115 = v27 & 1;
  v114 = 1;
  LocalizedStringKey.init(stringLiteral:)();
  v30 = Text.init(_:tableName:bundle:comment:)();
  v32 = v31;
  v34 = v33;
  static Font.body.getter();
  v35 = Text.font(_:)();
  v75 = v36;
  v76 = v35;
  v38 = v37;
  v77 = v39;

  sub_10007441C(v30, v32, v34 & 1);

  LOBYTE(v30) = static Edge.Set.top.getter();
  v40 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v30)
  {
    v40 = Edge.Set.init(rawValue:)();
  }

  v73 = v38 & 1;
  v74 = v40;
  v111 = v38 & 1;
  v110 = 1;
  v41 = v64;
  Divider.init()();
  sub_1005B981C(&qword_101A07218, &qword_101486410);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C4D0;
  v43 = static Edge.Set.top.getter();
  *(inited + 32) = v43;
  v44 = static Edge.Set.leading.getter();
  *(inited + 33) = v44;
  v45 = static Edge.Set.trailing.getter();
  *(inited + 34) = v45;
  v46 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v43)
  {
    v46 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v44)
  {
    v46 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v45)
  {
    v46 = Edge.Set.init(rawValue:)();
  }

  (*(v65 + 32))(v16, v41, v66);
  v47 = &v16[*(v63 + 36)];
  *v47 = v46;
  *(v47 + 8) = 0u;
  *(v47 + 24) = 0u;
  v47[40] = 1;
  sub_10003DFF8(v16, v83, &qword_101A2DC48, &unk_1014D37C0);
  *v5 = static VerticalAlignment.center.getter();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v48 = sub_1005B981C(&qword_101A2DC50, &qword_1014D37D0);
  sub_1012283BC(v67, &v5[*(v48 + 44)]);
  v49 = static Edge.Set.top.getter();
  v50 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v49)
  {
    v50 = Edge.Set.init(rawValue:)();
  }

  v51 = v68;
  sub_10003DFF8(v5, v68, &qword_101A2DC38, &qword_1014D37B0);
  v52 = v51 + *(v69 + 36);
  *v52 = v50;
  *(v52 + 8) = 0u;
  *(v52 + 24) = 0u;
  *(v52 + 40) = 1;
  v53 = v71;
  sub_10003DFF8(v51, v71, &qword_101A2DC40, &qword_1014D37B8);
  v54 = v70;
  sub_10000BE14(v83, v70, &qword_101A2DC48, &unk_1014D37C0);
  v55 = v72;
  sub_10000BE14(v53, v72, &qword_101A2DC40, &qword_1014D37B8);
  *&v84 = v81;
  *(&v84 + 1) = v80;
  LOBYTE(v85) = v78;
  *(&v85 + 1) = v113[0];
  DWORD1(v85) = *(v113 + 3);
  *(&v85 + 1) = v82;
  LOBYTE(v86[0]) = v79;
  *(v86 + 1) = *v112;
  DWORD1(v86[0]) = *&v112[3];
  *(v86 + 8) = 0u;
  *(&v86[1] + 8) = 0u;
  BYTE8(v86[2]) = 1;
  v56 = v86[1];
  a2[2] = v86[0];
  a2[3] = v56;
  *(a2 + 57) = *(&v86[1] + 9);
  v57 = v85;
  *a2 = v84;
  a2[1] = v57;
  *&v87 = v76;
  *(&v87 + 1) = v75;
  LOBYTE(v88) = v73;
  DWORD1(v88) = *(v109 + 3);
  *(&v88 + 1) = v109[0];
  *(&v88 + 1) = v77;
  LOBYTE(v89[0]) = v74;
  DWORD1(v89[0]) = *&v108[3];
  *(v89 + 1) = *v108;
  *(&v89[1] + 8) = 0u;
  *(v89 + 8) = 0u;
  BYTE8(v89[2]) = 1;
  v58 = v87;
  v59 = v88;
  *(a2 + 137) = *(&v89[1] + 9);
  v60 = v89[1];
  a2[7] = v89[0];
  a2[8] = v60;
  a2[5] = v58;
  a2[6] = v59;
  v61 = sub_1005B981C(&qword_101A2DC58, &qword_1014D37D8);
  sub_10000BE14(v54, a2 + *(v61 + 64), &qword_101A2DC48, &unk_1014D37C0);
  sub_10000BE14(v55, a2 + *(v61 + 80), &qword_101A2DC40, &qword_1014D37B8);
  sub_10000BE14(&v84, v99, &qword_101A2DC60, &qword_1014D37E0);
  sub_10000BE14(&v87, v99, &qword_101A2DC60, &qword_1014D37E0);
  sub_10000CAAC(v53, &qword_101A2DC40, &qword_1014D37B8);
  sub_10000CAAC(v83, &qword_101A2DC48, &unk_1014D37C0);
  sub_10000CAAC(v55, &qword_101A2DC40, &qword_1014D37B8);
  sub_10000CAAC(v54, &qword_101A2DC48, &unk_1014D37C0);
  v90[0] = v76;
  v90[1] = v75;
  v91 = v73;
  *v92 = v109[0];
  *&v92[3] = *(v109 + 3);
  v93 = v77;
  v94 = v74;
  *v95 = *v108;
  *&v95[3] = *&v108[3];
  v96 = 0u;
  v97 = 0u;
  v98 = 1;
  sub_10000CAAC(v90, &qword_101A2DC60, &qword_1014D37E0);
  v99[0] = v81;
  v99[1] = v80;
  v100 = v78;
  *v101 = v113[0];
  *&v101[3] = *(v113 + 3);
  v102 = v82;
  v103 = v79;
  *v104 = *v112;
  *&v104[3] = *&v112[3];
  v105 = 0u;
  v106 = 0u;
  v107 = 1;
  return sub_10000CAAC(v99, &qword_101A2DC60, &qword_1014D37E0);
}

uint64_t sub_1012283BC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v62 = a2;
  v60 = sub_1005B981C(&qword_101A2DC68, &unk_1014D37E8) - 8;
  __chkstk_darwin(v60);
  v61 = v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v58 = v47 - v5;
  __chkstk_darwin(v6);
  v59 = v47 - v7;
  v54 = sub_1005B981C(&qword_1019FEA78, &qword_101485080);
  v63 = *(v54 - 8);
  __chkstk_darwin(v54);
  v57 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v56 = v47 - v10;
  __chkstk_darwin(v11);
  v55 = v47 - v12;
  v13 = LocalizedStringKey.init(stringLiteral:)();
  v49 = v14;
  v50 = v13;
  v47[1] = v15;
  v48 = v16;
  v66[0] = *a1;
  v17 = *(a1 + 16);
  v51 = *(a1 + 24);
  v18 = v51;
  v52 = v17;
  v19 = *(a1 + 40);
  v53 = *(a1 + 32);
  v20 = v53;
  v22 = *(a1 + 48);
  v21 = *(a1 + 56);
  v23 = swift_allocObject();
  v24 = *(a1 + 16);
  v23[1] = *a1;
  v23[2] = v24;
  v25 = *(a1 + 48);
  v23[3] = *(a1 + 32);
  v23[4] = v25;
  sub_10000BE14(v66, &v65, &qword_101A1CF70, &qword_10149A710);
  sub_10067F2EC(v17, v18);
  sub_10067F2EC(v20, v19);
  sub_10067F2EC(v22, v21);
  Button<>.init(_:action:)();
  v65 = v66[0];
  sub_1005B981C(&qword_101A1CF70, &qword_10149A710);
  State.wrappedValue.getter();
  LocalizedStringKey.init(stringLiteral:)();
  v26 = swift_allocObject();
  v27 = *(a1 + 16);
  v26[1] = *a1;
  v26[2] = v27;
  v28 = *(a1 + 48);
  v26[3] = *(a1 + 32);
  v26[4] = v28;
  sub_10000BE14(v66, &v65, &qword_101A1CF70, &qword_10149A710);
  sub_10067F2EC(v52, v51);
  sub_10067F2EC(v53, v19);
  sub_10067F2EC(v22, v21);
  v29 = v56;
  Button<>.init(_:action:)();
  v65 = v66[0];
  State.wrappedValue.getter();
  LOBYTE(a1) = v64;
  KeyPath = swift_getKeyPath();
  v31 = swift_allocObject();
  *(v31 + 16) = a1;
  v32 = v63;
  v33 = v58;
  v34 = v54;
  (*(v63 + 32))(v58, v29, v54);
  v35 = v59;
  v36 = (v33 + *(v60 + 44));
  *v36 = KeyPath;
  v36[1] = sub_101229D34;
  v36[2] = v31;
  sub_10003DFF8(v33, v35, &qword_101A2DC68, &unk_1014D37E8);
  v37 = *(v32 + 16);
  v38 = v57;
  v39 = v55;
  v40 = v34;
  v37(v57, v55, v34);
  v41 = v61;
  sub_10000BE14(v35, v61, &qword_101A2DC68, &unk_1014D37E8);
  v42 = v62;
  *v62 = 0;
  *(v42 + 8) = 1;
  v43 = v42;
  v44 = sub_1005B981C(&qword_101A2DC70, &qword_1014D3828);
  v37(&v43[*(v44 + 48)], v38, v40);
  sub_10000BE14(v41, &v43[*(v44 + 64)], &qword_101A2DC68, &unk_1014D37E8);
  sub_10000CAAC(v35, &qword_101A2DC68, &unk_1014D37E8);
  v45 = *(v63 + 8);
  v45(v39, v40);
  sub_10000CAAC(v41, &qword_101A2DC68, &unk_1014D37E8);
  return (v45)(v38, v40);
}

uint64_t sub_101228924(__int128 *a1)
{
  sub_1005B981C(&qword_101A1CF70, &qword_10149A710);
  result = State.wrappedValue.setter();
  v3 = *(a1 + 4);
  if (v3)
  {
    return v3(result);
  }

  return result;
}

uint64_t sub_101228994@<X0>(uint64_t a2@<X8>)
{
  v4 = v2[1];
  v18 = *v2;
  v19 = v4;
  v5 = v2[3];
  v20 = v2[2];
  v21 = v5;
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v6 = sub_1005B981C(&qword_101A2DC18, &qword_1014D3788);
  sub_101227A90(&v18, (a2 + *(v6 + 44)));
  v22 = v18;
  v7 = v19;
  v8 = v20;
  v9 = v21;
  v10 = swift_allocObject();
  v11 = v19;
  v10[1] = v18;
  v10[2] = v11;
  v12 = v21;
  v10[3] = v20;
  v10[4] = v12;
  v13 = (a2 + *(sub_1005B981C(&qword_101A2DC20, &unk_1014D3790) + 36));
  *v13 = 0;
  v13[1] = 0;
  v13[2] = sub_10081E9CC;
  v13[3] = v10;
  sub_10000BE14(&v22, &v17, &qword_101A1CF70, &qword_10149A710);
  sub_10067F2EC(v7, *(&v7 + 1));
  sub_10067F2EC(v8, *(&v8 + 1));
  sub_10067F2EC(v9, *(&v9 + 1));
  v14 = static Edge.Set.all.getter();
  v15 = a2 + *(sub_1005B981C(&qword_101A2DC28, &qword_1014D37A0) + 36);
  *v15 = v14;
  *(v15 + 8) = 0u;
  *(v15 + 24) = 0u;
  *(v15 + 40) = 1;
  result = sub_1005B981C(&qword_101A2DC30, &qword_1014D37A8);
  *(a2 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_101228B28(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  State.init(wrappedValue:)();
  return UIHostingController.init(coder:rootView:)();
}

void sub_101228B9C(void *a1)
{
  v8.receiver = a1;
  v8.super_class = type metadata accessor for CRLFileWriteAssetDownloadAlertViewController(0);
  v1 = v8.receiver;
  objc_msgSendSuper2(&v8, "viewDidLoad");
  v2 = [v1 view];
  if (v2)
  {
    v3 = v2;
    [v2 intrinsicContentSize];
    v5 = v4;
    v7 = v6;

    [v1 setPreferredContentSize:{v5, v7}];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_101228C4C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = type metadata accessor for MainActor();
  v3[6] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[7] = v5;
  v3[8] = v4;

  return _swift_task_switch(sub_101228CEC, v5, v4);
}

uint64_t sub_101228CEC()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC8Freeform8CRLBoard_store);
  sub_100EC53F4(1);
  v3 = v2;
  type metadata accessor for CRLAssetDownloadHelper(0);
  v4 = swift_allocObject();
  v0[9] = v4;
  swift_defaultActor_initialize();
  UUID.init()();
  *(v4 + OBJC_IVAR____TtC8Freeform22CRLAssetDownloadHelper__assetUUIDsNeedingDownload) = 0;
  *(v4 + OBJC_IVAR____TtC8Freeform22CRLAssetDownloadHelper_isDownloading) = 0;
  *(v4 + OBJC_IVAR____TtC8Freeform22CRLAssetDownloadHelper_downloadWasCancelled) = 0;
  *(v4 + OBJC_IVAR____TtC8Freeform22CRLAssetDownloadHelper_assetUUIDsBeingDownloaded) = _swiftEmptySetSingleton;
  *(v4 + 112) = v1;
  *(v4 + 120) = v3;
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_101228E18;

  return sub_1005D92A0();
}

uint64_t sub_101228E18(uint64_t a1)
{
  v2 = *(*v1 + 72);
  *(*v1 + 88) = a1;

  return _swift_task_switch(sub_101228F30, v2, 0);
}

uint64_t sub_101228F30()
{
  v0[12] = *(v0[11] + 16);

  v1 = v0[7];
  v2 = v0[8];

  return _swift_task_switch(sub_101228F9C, v1, v2);
}

uint64_t sub_101228F9C()
{
  v1 = v0[9];
  if (v0[12])
  {
    v2 = v0[4];
    v3 = v0[3];
    type metadata accessor for CRLFileWriteAssetDownloadAlertViewController.ParentWrapper();
    v4 = swift_allocObject();
    v0[13] = v4;
    *(v4 + 16) = v3;
    v5 = v3;
    v6 = static MainActor.shared.getter();
    v0[14] = v6;
    v7 = swift_task_alloc();
    v0[15] = v7;
    v7[2] = v2;
    v7[3] = v1;
    v7[4] = v4;
    v8 = swift_task_alloc();
    v0[16] = v8;
    *v8 = v0;
    v8[1] = sub_101229128;

    return withCheckedContinuation<A>(isolation:function:_:)(v8, v6, &protocol witness table for MainActor, 0xD000000000000021, 0x80000001015C67E0, sub_101229D4C, v7, &type metadata for () + 8);
  }

  else
  {

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_101229128()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_101229288, v3, v2);
}

uint64_t sub_101229288()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_101229300(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v34 = a1;
  v7 = sub_1005B981C(&qword_101A15A30, &qword_1014B6A70);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v33 - v9;
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a2;

  v12 = a2;
  v13 = dispatch thunk of UIHostingController.rootView.modify();
  v15 = *(v14 + 16);
  v16 = *(v14 + 24);
  *(v14 + 16) = sub_101229D58;
  *(v14 + 24) = v11;
  v17 = sub_1000C1014(v15, v16);
  v13(v35, 0, v17);
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = v12;

  v19 = v12;
  v20 = dispatch thunk of UIHostingController.rootView.modify();
  v22 = *(v21 + 32);
  v23 = *(v21 + 40);
  *(v21 + 32) = sub_101229DDC;
  *(v21 + 40) = v18;
  v24 = sub_1000C1014(v22, v23);
  v20(v35, 0, v24);
  (*(v8 + 16))(v10, v34, v7);
  v25 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v26 = swift_allocObject();
  (*(v8 + 32))(v26 + v25, v10, v7);
  v27 = dispatch thunk of UIHostingController.rootView.modify();
  v29 = *(v28 + 48);
  v30 = *(v28 + 56);
  *(v28 + 48) = sub_1008A1948;
  *(v28 + 56) = v26;
  v31 = sub_1000C1014(v29, v30);
  v27(v35, 0, v31);
  return [*(a4 + 16) presentViewController:v19 animated:1 completion:0];
}

uint64_t sub_10122958C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();

  return _swift_task_switch(sub_10122960C, a4, 0);
}

uint64_t sub_10122960C()
{
  sub_1005DB59C();
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10122969C, v1, v0);
}

uint64_t sub_10122969C()
{
  v1 = *(v0 + 24);

  [*(v1 + 16) dismissViewControllerAnimated:1 completion:0];
  v2 = *(v0 + 8);

  return v2();
}

double sub_101229718(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  type metadata accessor for MainActor();

  v13 = a3;
  v14 = static MainActor.shared.getter();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = &protocol witness table for MainActor;
  v15[4] = a1;
  v15[5] = a2;
  v15[6] = v13;
  sub_10064191C(0, 0, v11, a5, v15);

  return result;
}

uint64_t sub_101229860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a5;
  v5[3] = type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v6 = swift_task_alloc();
  v5[5] = v6;
  *v6 = v5;
  v6[1] = sub_101229910;

  return sub_1005D9B94();
}

uint64_t sub_101229910()
{

  if (v0)
  {

    v1 = dispatch thunk of Actor.unownedExecutor.getter();
    v3 = v2;
    v4 = sub_10122A200;
  }

  else
  {
    v1 = dispatch thunk of Actor.unownedExecutor.getter();
    v3 = v5;
    v4 = sub_101229A94;
  }

  return _swift_task_switch(v4, v1, v3);
}

uint64_t sub_101229A94()
{
  v1 = *(v0 + 16);

  [*(v1 + 16) dismissViewControllerAnimated:1 completion:0];
  v2 = *(v0 + 8);

  return v2();
}

id sub_101229B10()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLFileWriteAssetDownloadAlertViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_101229BD4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_101229C30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_101229CC8@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_101229D94()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_101229E18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002D3D4;

  return sub_101229860(a1, v4, v5, v6, v7);
}

uint64_t sub_101229EE0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_101229F30(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002D4C8;

  return sub_10122958C(a1, v4, v5, v6, v7);
}

unint64_t sub_101229FF8()
{
  result = qword_101A2DC78;
  if (!qword_101A2DC78)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_1005C4E5C(&qword_101A2DC30, &qword_1014D37A8);
    v4[0] = sub_10122A084();
    v4[1] = &protocol witness table for _FixedSizeLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_101A2DC78);
  }

  return result;
}

unint64_t sub_10122A084()
{
  result = qword_101A2DC80;
  if (!qword_101A2DC80)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_1005C4E5C(&qword_101A2DC28, &qword_1014D37A0);
    v4[0] = sub_10122A110();
    v4[1] = &protocol witness table for _PaddingLayout;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_101A2DC80);
  }

  return result;
}

unint64_t sub_10122A110()
{
  result = qword_101A2DC88;
  if (!qword_101A2DC88)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_1005C4E5C(&qword_101A2DC20, &unk_1014D3790);
    v4[0] = sub_10122A19C();
    v4[1] = &protocol witness table for _AppearanceActionModifier;
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_101A2DC88);
  }

  return result;
}

unint64_t sub_10122A19C()
{
  result = qword_101A2DC90;
  if (!qword_101A2DC90)
  {
    v3 = sub_1005C4E5C(&qword_101A2DC98, &unk_1014D3850);
    result = swift_getWitnessTable(&protocol conformance descriptor for VStack<A>, v3, v0, v1);
    atomic_store(result, &qword_101A2DC90);
  }

  return result;
}

uint64_t _s13ThumbnailViewVMa(uint64_t a1)
{
  result = qword_101A2DCF8;
  if (!qword_101A2DCF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10122A278(uint64_t a1)
{
  sub_10122A318();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ShadowStyle();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10122A318()
{
  if (!qword_101A2DD08)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_101A2DD08);
    }
  }
}

uint64_t sub_10122A368(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10122A3C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_10122A444()
{
  result = static Font.headline.getter();
  qword_101AD9340 = result;
  return result;
}

double sub_10122A484()
{
  v0 = type metadata accessor for Color.RGBColorSpace();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ShadowStyle();
  sub_10061655C(v4, qword_101AD9350);
  sub_1005EB3DC(v4, qword_101AD9350);
  (*(v1 + 104))(v3, enum case for Color.RGBColorSpace.sRGBLinear(_:), v0);
  Color.init(_:white:opacity:)();
  static ShadowStyle.drop(color:radius:x:y:)();

  return result;
}

uint64_t sub_10122A5B0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v60 = a3;
  v9 = sub_1005B981C(&qword_101A2DD50, &qword_1014D3960);
  v61 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v57 - v10;
  v12 = sub_1005B981C(&qword_101A2DD58, &qword_1014D3968);
  __chkstk_darwin(v12 - 8);
  v64 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v63 = &v57 - v15;
  v16 = sub_1005B981C(&qword_101A0A8F0, &qword_10148A348);
  __chkstk_darwin(v16);
  v62 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v57 - v19;
  v21 = qword_1019F2AF8;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for ShadowStyle();
  v23 = sub_1005EB3DC(v22, qword_101AD9350);
  v24 = _s13ThumbnailViewVMa(0);
  (*(*(v22 - 8) + 16))(&v20[*(v24 + 32)], v23, v22);
  *v20 = a1;
  v20[8] = a2 & 1;
  __asm { FMOV            V1.2D, #8.0 }

  *(v20 + 1) = xmmword_1014D3860;
  *(v20 + 2) = _Q1;
  *(v20 + 6) = 0x4020000000000000;
  v30 = &v20[*(v16 + 36)];
  *v30 = 0x3FF5555555555555;
  *(v30 + 4) = 0;
  if (a4)
  {
    v58 = v9;
    v59 = a5;
    v65 = v60;
    v66 = a4;
    sub_100017CD8();

    v31 = Text.init<A>(_:)();
    v33 = v32;
    v35 = v34;
    if (qword_1019F2AE8 != -1)
    {
      swift_once();
    }

    v36 = Text.font(_:)();
    v38 = v37;
    v40 = v39;
    sub_10007441C(v31, v33, v35 & 1);

    if (qword_1019F2AF0 != -1)
    {
      swift_once();
    }

    v41 = Text.fontWeight(_:)();
    v43 = v42;
    v45 = v44;
    v60 = v46;
    sub_10007441C(v36, v38, v40 & 1);

    v47 = &v11[*(sub_1005B981C(&qword_101A2DD68, &qword_1014D3978) + 36)];
    v48 = *(sub_1005B981C(&qword_101A067D8, &qword_101485010) + 28);
    v49 = enum case for Text.TruncationMode.tail(_:);
    v50 = type metadata accessor for Text.TruncationMode();
    (*(*(v50 - 8) + 104))(v47 + v48, v49, v50);
    *v47 = swift_getKeyPath();
    *v11 = v41;
    *(v11 + 1) = v43;
    v11[16] = v45 & 1;
    *(v11 + 3) = v60;
    v9 = v58;
    *&v11[*(v58 + 36)] = 0xBFF0000000000000;
    v51 = v63;
    sub_10122B4BC(v11, v63);
    v52 = 0;
    a5 = v59;
  }

  else
  {
    v52 = 1;
    v51 = v63;
  }

  (*(v61 + 56))(v51, v52, 1, v9);
  v53 = v62;
  sub_10000BE14(v20, v62, &qword_101A0A8F0, &qword_10148A348);
  v54 = v64;
  sub_10000BE14(v51, v64, &qword_101A2DD58, &qword_1014D3968);
  sub_10000BE14(v53, a5, &qword_101A0A8F0, &qword_10148A348);
  v55 = sub_1005B981C(&qword_101A2DD60, &qword_1014D3970);
  sub_10000BE14(v54, a5 + *(v55 + 48), &qword_101A2DD58, &qword_1014D3968);
  sub_10000CAAC(v51, &qword_101A2DD58, &qword_1014D3968);
  sub_10000CAAC(v20, &qword_101A0A8F0, &qword_10148A348);
  sub_10000CAAC(v54, &qword_101A2DD58, &qword_1014D3968);
  return sub_10000CAAC(v53, &qword_101A0A8F0, &qword_10148A348);
}

uint64_t sub_10122AB40@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v8 = sub_1005B981C(&qword_101A2DD48, &qword_1014D3958);
  return sub_10122A5B0(v4, v5, v7, v6, a2 + *(v8 + 44));
}

uint64_t sub_10122ABBC(uint64_t a1)
{
  result = static Color.white.getter();
  qword_101AD9368 = result;
  return result;
}

uint64_t sub_10122ABDC()
{
  v0 = type metadata accessor for Color.RGBColorSpace();
  v1 = __chkstk_darwin(v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Color.RGBColorSpace.sRGB(_:), v1);
  result = Color.init(_:white:opacity:)();
  qword_101AD9370 = result;
  return result;
}

uint64_t sub_10122ACB0(uint64_t a1)
{
  result = static Color.accentColor.getter();
  qword_101AD9378 = result;
  return result;
}

uint64_t sub_10122ACD0@<X0>(char **a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v63 = type metadata accessor for Image.ResizingMode();
  v61 = *(v63 - 8);
  __chkstk_darwin(v63);
  v60 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for RoundedRectangle();
  __chkstk_darwin(v4);
  v6 = (&v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v66 = sub_1005B981C(&qword_101A2DD78, &qword_1014D39B8);
  __chkstk_darwin(v66);
  v67 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = (&v59 - v9);
  if (*(a1 + 8) == 1)
  {
    if (qword_1019F2B10 != -1)
    {
      swift_once();
    }

    v11 = &qword_101AD9378;
  }

  else
  {
    if (qword_1019F2B08 != -1)
    {
      swift_once();
    }

    v11 = &qword_101AD9370;
  }

  v65 = *v11;

  v12 = a1[2];
  v13 = *(v4 + 20);
  v64 = v4;
  v14 = enum case for RoundedCornerStyle.continuous(_:);
  v15 = type metadata accessor for RoundedCornerStyle();
  v16 = *(*(v15 - 8) + 104);
  v16(v10 + v13, v14, v15);
  *v10 = v12;
  v10[1] = v12;
  v17 = *(_s13ThumbnailViewVMa(0) + 32);
  v18 = sub_1005B981C(&qword_101A2DD80, &qword_1014D39C0);
  v19 = *(v18 + 52);
  v20 = type metadata accessor for ShadowStyle();
  (*(*(v20 - 8) + 16))(v10 + v19, a1 + v17, v20);
  *(v10 + *(v18 + 56)) = 256;
  if (qword_1019F2B00 != -1)
  {
    swift_once();
  }

  v21 = qword_101AD9368;
  KeyPath = swift_getKeyPath();
  v23 = (v10 + *(sub_1005B981C(&qword_101A2DD88, &qword_1014D39F8) + 36));
  *v23 = KeyPath;
  v23[1] = v21;
  v16(v6 + *(v64 + 20), v14, v15);
  *v6 = v12;
  v6[1] = v12;

  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v24 = v10 + *(v66 + 9);
  sub_10122B52C(v6, v24);
  v25 = v24 + *(sub_1005B981C(&qword_101A2DD90, &qword_1014D9D20) + 36);
  v26 = v79;
  *v25 = v78;
  *(v25 + 16) = v26;
  *(v25 + 32) = v80;
  v27 = sub_1005B981C(&qword_101A2DD98, &qword_1014D3A00);
  *(v24 + *(v27 + 52)) = v65;
  *(v24 + *(v27 + 56)) = 256;
  v28 = static Alignment.center.getter();
  v30 = v29;
  sub_10122B590(v6);
  v31 = (v24 + *(sub_1005B981C(&qword_101A2DDA0, &qword_1014D3A08) + 36));
  *v31 = v28;
  v31[1] = v30;
  v32 = static Alignment.center.getter();
  v34 = v33;
  v35 = (v24 + *(sub_1005B981C(&qword_101A2DDA8, &qword_1014D3A10) + 36));
  *v35 = v32;
  v35[1] = v34;
  v36 = *a1;
  if (*a1)
  {
    v37 = v61;
    v38 = v60;
    v39 = v63;
    (*(v61 + 104))(v60, enum case for Image.ResizingMode.stretch(_:), v63);
    v62 = Image.resizable(capInsets:resizingMode:)();
    (*(v37 + 8))(v38, v39);
    v41 = a1[3];
    v40 = a1[4];
    v42 = a1[6];
    v66 = a1[5];
    v65 = v42;
    LOBYTE(v36) = static Edge.Set.all.getter();
    v77 = 1;
    v76 = 0;
    v43 = 1;
    v64 = 0;
    v63 = static Color.accentColor.getter();
    v44 = swift_getKeyPath();
    v36 = v36;
  }

  else
  {
    v62 = 0;
    v41 = 0;
    v40 = 0;
    v66 = 0;
    v65 = 0;
    v44 = 0;
    v63 = 0;
    v64 = 0;
    v43 = 0;
  }

  v60 = v36;
  v61 = v43;
  v45 = v67;
  sub_10000BE14(v10, v67, &qword_101A2DD78, &qword_1014D39B8);
  v46 = v68;
  sub_10000BE14(v45, v68, &qword_101A2DD78, &qword_1014D39B8);
  v47 = v46 + *(sub_1005B981C(&qword_101A2DDB0, &qword_1014D3A18) + 48);
  v48 = v62;
  v69 = v62;
  *&v70 = v43;
  *(&v70 + 1) = v36;
  *&v71 = v41;
  *(&v71 + 1) = v40;
  v49 = v66;
  *&v72 = v66;
  v50 = v10;
  v51 = v65;
  *(&v72 + 1) = v65;
  v52 = v64;
  *&v73 = v64;
  v53 = v44;
  *(&v73 + 1) = v44;
  v54 = v63;
  v74 = v63;
  *(v47 + 80) = v63;
  v55 = v70;
  *v47 = v69;
  *(v47 + 16) = v55;
  v56 = v72;
  *(v47 + 32) = v71;
  *(v47 + 48) = v56;
  *(v47 + 64) = v73;
  v57 = v48;
  sub_10000BE14(&v69, v75, &qword_101A2DDB8, &qword_1014D3A20);
  sub_10000CAAC(v50, &qword_101A2DD78, &qword_1014D39B8);
  v75[0] = v57;
  v75[1] = 0;
  v75[2] = v61;
  v75[3] = v60;
  v75[4] = v41;
  v75[5] = v40;
  v75[6] = v49;
  v75[7] = v51;
  v75[8] = v52;
  v75[9] = v53;
  v75[10] = v54;
  sub_10000CAAC(v75, &qword_101A2DDB8, &qword_1014D3A20);
  return sub_10000CAAC(v45, &qword_101A2DD78, &qword_1014D39B8);
}

uint64_t sub_10122B454@<X0>(uint64_t *a1@<X8>)
{
  *a1 = static Alignment.center.getter();
  a1[1] = v4;
  v5 = sub_1005B981C(&qword_101A2DD70, &qword_1014D39B0);
  return sub_10122ACD0(v2, a1 + *(v5 + 44));
}

uint64_t sub_10122B4BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A2DD50, &qword_1014D3960);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10122B52C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoundedRectangle();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10122B590(uint64_t a1)
{
  v2 = type metadata accessor for RoundedRectangle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10122B5EC()
{
  v0 = type metadata accessor for CharacterSet();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v33[0] = v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = v33 - v4;
  __chkstk_darwin(v6);
  v8 = v33 - v7;
  v9 = objc_allocWithZone(NSString);
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 initWithString:v10];

  v12 = [v11 stringByDeletingPathExtension];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v36 = v13;
  v37 = v15;
  static CharacterSet.whitespacesAndNewlines.getter();
  sub_100017CD8();
  v16 = StringProtocol.components(separatedBy:)();
  v17 = *(v1 + 8);
  v17(v8, v0);

  v36 = v16;
  sub_1005B981C(&unk_1019F4D80, &unk_10146CF20);
  sub_100613214();
  v18 = BidirectionalCollection<>.joined(separator:)();
  v20 = v19;

  v36 = v18;
  v37 = v20;

  static CharacterSet.urlFragmentAllowed.getter();
  CharacterSet.inverted.getter();
  v17(v8, v0);
  v34 = v18;
  v35 = v20;
  StringProtocol.rangeOfCharacter(from:options:range:)();
  LOBYTE(v12) = v21;

  if ((v12 & 1) == 0)
  {

    if (qword_1019F2098 != -1)
    {
      swift_once();
    }

    v31 = static OS_os_log.crlDefault;
    v32 = static os_log_type_t.default.getter();
    sub_100005404(v31, &_mh_execute_header, v32, "Board title contains characters the require URLEncoding. Returning empty nil", 76, 2, _swiftEmptyArrayStorage);
    v17(v5, v0);
    return 0;
  }

  v34 = 46;
  v35 = 0xE100000000000000;
  __chkstk_darwin(v22);
  v33[-2] = &v34;
  result = sub_100E8FE90(sub_1008335B4, &v33[-4], v18, v20);
  if (v24)
  {
LABEL_7:
    v26 = v33[0];
    CharacterSet.init(charactersIn:)();
    v34 = v36;
    v35 = v37;
    v27 = StringProtocol.trimmingCharacters(in:)();
    v29 = v28;

    v17(v26, v0);
    v17(v5, v0);
    v30 = HIBYTE(v29) & 0xF;
    if ((v29 & 0x2000000000000000) == 0)
    {
      v30 = v27 & 0xFFFFFFFFFFFFLL;
    }

    if (v30)
    {
      return v27;
    }

    return 0;
  }

  v25 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v25 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v25 >= result >> 14)
  {
    String.removeSubrange(_:)();
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for CRLChangeSelectionColorIntent(uint64_t a1)
{
  result = qword_101A2DE50;
  if (!qword_101A2DE50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10122BB1C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_10122BB9C(uint64_t a1)
{
  v2[46] = a1;
  v2[47] = v1;
  v2[48] = type metadata accessor for CRLChangeSelectionColorIntent(0);
  v2[49] = swift_task_alloc();
  type metadata accessor for CRLBoardIdentifier(0);
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  type metadata accessor for CRLBoardEntity(0);
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[54] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[55] = v4;
  v2[56] = v3;

  return _swift_task_switch(sub_10122BCD4, v4, v3);
}

uint64_t sub_10122BCD4()
{
  v1 = v0[53];
  v2 = v0[51];
  IntentParameter.wrappedValue.getter();
  sub_10000C90C(v1, v2, type metadata accessor for CRLBoardIdentifier);
  sub_10122DF5C(v1, type metadata accessor for CRLBoardEntity);
  AppDependency.wrappedValue.getter();
  v0[39] = &type metadata for CRLBoardLibraryProvidingDependency;
  v0[40] = &off_1018AD9D0;
  v3 = swift_task_alloc();
  v0[57] = v3;
  *v3 = v0;
  v3[1] = sub_10122BE04;
  v4 = v0[51];

  return sub_10128694C(v4, (v0 + 36));
}

uint64_t sub_10122BE04(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[58] = a1;
  v4[59] = a2;
  v4[60] = v2;

  sub_10122DF5C(v4[51], type metadata accessor for CRLBoardIdentifier);
  if (v2)
  {
    v5 = v4[55];
    v6 = v4[56];
    v7 = sub_10122CD00;
  }

  else
  {
    sub_100005070(v4 + 36);
    v5 = v4[55];
    v6 = v4[56];
    v7 = sub_10122BF5C;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_10122BF5C()
{
  v124 = v0;
  v3 = *(v0 + 464);

  v4 = [v3 selectionModelTranslator];
  if (!v4)
  {
    v117 = objc_opt_self();
    LODWORD(v6) = [v117 _atomicIncrementAssertCount];
    v122 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v122, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("perform()", 9, 2);
    v1 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/AppIntents/Intents/Board Items Selection Customization/CRLChangeSelectionColorIntent.swift", 144, 2);
    v12 = String._bridgeToObjectiveC()();

    v13 = [v12 lastPathComponent];

    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = v15;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_122;
    }

    goto LABEL_5;
  }

  v6 = v4;
  v111 = [*(v0 + 472) selectionPath];
  v112 = v6;
  v5 = [v6 unlockedBoardItemsForSelectionPath:?];
  type metadata accessor for CRLBoardItem(0);
  LODWORD(v6) = sub_10122BB1C(&qword_1019FCB80, type metadata accessor for CRLBoardItem, &protocol conformance descriptor for NSObject);
  v7 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v7 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v7 = *(v0 + 248);
    v8 = *(v0 + 256);
    v9 = *(v0 + 264);
    v10 = *(v0 + 272);
    v11 = *(v0 + 280);
  }

  else
  {
    v10 = 0;
    v49 = -1 << *(v7 + 32);
    v8 = v7 + 56;
    v50 = ~v49;
    v51 = -v49;
    if (v51 < 64)
    {
      v52 = ~(-1 << v51);
    }

    else
    {
      v52 = -1;
    }

    v11 = v52 & *(v7 + 56);
    v9 = v50;
  }

  v114 = *(v0 + 384);
  v53 = (v9 + 64) >> 6;
  v116 = v8;
  v117 = v53;
  v113 = v7;
  while (1)
  {
    if (v7 < 0)
    {
      v57 = __CocoaSet.Iterator.next()();
      if (!v57 || (*(v0 + 360) = v57, swift_dynamicCast(), v2 = *(v0 + 352), v14 = v10, v56 = v11, !v2))
      {
LABEL_115:
        v103 = *(v0 + 464);
        v104 = *(v0 + 472);
        sub_100035F90(v7);
        static IntentResult.result<>()();

        v105 = *(v0 + 8);
        goto LABEL_118;
      }

      goto LABEL_21;
    }

    v54 = v10;
    v55 = v11;
    v14 = v10;
    if (!v11)
    {
      break;
    }

LABEL_17:
    v56 = (v55 - 1) & v55;
    v2 = *(*(v7 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v55)))));
    if (!v2)
    {
      goto LABEL_115;
    }

LABEL_21:
    v120 = v56;
    v58 = *((swift_isaMask & *v2) + 0xC8);
    v1 = ((swift_isaMask & *v2) + 200);
    v59 = v58();
    if ((v61 & 0x100) == 0)
    {
      goto LABEL_98;
    }

    if (!(v59 | v60) && v61 == 0)
    {
      goto LABEL_98;
    }

    if (v59 == 1 && v60 == 0 && v61 == 0)
    {
      type metadata accessor for CRLWPShapeItem(0);
      v95 = swift_dynamicCastClass();
      if (!v95)
      {
        v96 = v2;
        v6 = Logger.logObject.getter();
        v97 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v6, v97))
        {
          v98 = swift_slowAlloc();
          v99 = swift_slowAlloc();
          v1 = swift_slowAlloc();
          v122 = v1;
          *v98 = 138412546;
          *(v98 + 4) = v96;
          *v99 = v2;
          *(v98 + 12) = 2080;
          *(v0 + 347) = 0;
          v110 = v96;
          goto LABEL_108;
        }

        goto LABEL_113;
      }

      v6 = *(v0 + 376);
      sub_10122DFBC(v95, *(v0 + 472));
LABEL_105:

      v10 = v14;
      v53 = v117;
      v11 = v120;
    }

    else
    {
      if (v59 != 2 || v60 != 0 || v61 != 0)
      {
        v67 = v59 == 3 && v60 == 0;
        if (!v67 || v61 != 0)
        {
          v69 = v59 == 4 && v60 == 0;
          if (!v69 || v61 != 0)
          {
            v71 = v59 == 5 && v60 == 0;
            if (!v71 || v61 != 0)
            {
              v73 = v59 == 6 && v60 == 0;
              if (!v73 || v61 != 0)
              {
                v75 = v59 == 7 && v60 == 0;
                if (!v75 || v61 != 0)
                {
                  v77 = v59 == 8 && v60 == 0;
                  if (!v77 || v61 != 0)
                  {
                    v79 = v59 == 9 && v60 == 0;
                    v80 = v79 && v61 == 0;
                    v81 = !v80 && v59 == 10;
                    v82 = v81 && v60 == 0;
                    if (v82 && v61 == 0)
                    {
                      type metadata accessor for CRLWPStickyNoteItem(0);
                      if (!swift_dynamicCastClass())
                      {
                        v96 = v2;
                        v6 = Logger.logObject.getter();
                        v97 = static os_log_type_t.error.getter();

                        if (os_log_type_enabled(v6, v97))
                        {
                          v98 = swift_slowAlloc();
                          v99 = swift_slowAlloc();
                          v1 = swift_slowAlloc();
                          v122 = v1;
                          *v98 = 138412546;
                          *(v98 + 4) = v96;
                          *v99 = v2;
                          *(v98 + 12) = 2080;
                          *(v0 + 346) = 1;
                          v110 = v96;
LABEL_108:
                          v100 = String.init<A>(describing:)();
                          v2 = v101;
                          v102 = sub_101007640(v100, v101, &v122);

                          *(v98 + 14) = v102;
                          _os_log_impl(&_mh_execute_header, v6, v97, "Wrong subclass %@ received for type: %s", v98, 0x16u);
                          sub_10000CAAC(v99, &unk_101A27F60, &unk_1014779D0);

                          sub_100005070(v1);

LABEL_114:
                          v10 = v14;
                          v11 = v120;
                          goto LABEL_102;
                        }

LABEL_113:

                        goto LABEL_114;
                      }

                      v6 = *(v0 + 376);
                      sub_10122E294(*(v0 + 472));
                      goto LABEL_105;
                    }
                  }
                }
              }
            }
          }
        }
      }

LABEL_98:
      v6 = *(v0 + 376);
      v84 = *(v114 + 28);
      v85 = v2;
      LODWORD(v6) = v6 + v84;
      v86 = Logger.logObject.getter();
      v2 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v86, v2))
      {
        v87 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        v122 = v88;
        *v87 = 136315138;
        *(v0 + 328) = v58();
        *(v0 + 336) = v89;
        *(v0 + 344) = v90;
        *(v0 + 345) = v91 & 1;
        v92 = String.init<A>(describing:)();
        LODWORD(v6) = v93;
        v94 = sub_101007640(v92, v93, &v122);

        *(v87 + 4) = v94;
        _os_log_impl(&_mh_execute_header, v86, v2, "Unsupported board item %s", v87, 0xCu);
        sub_100005070(v88);
      }

      else
      {
      }

      v10 = v14;
      v11 = v120;
      v7 = v113;
LABEL_102:
      v8 = v116;
      v53 = v117;
    }
  }

  while (1)
  {
    v14 = v54 + 1;
    if (__OFADD__(v54, 1))
    {
      break;
    }

    if (v14 >= v53)
    {
      goto LABEL_115;
    }

    v55 = *(v8 + 8 * v14);
    ++v54;
    if (v55)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_122:
  swift_once();
LABEL_5:
  v115 = *(v0 + 392);
  v16 = *(v0 + 376);
  v17 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v119 = v0;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v6;
  v19 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(inited + 96) = v19;
  v20 = sub_1005CF04C();
  *(inited + 104) = v20;
  *(inited + 72) = v1;
  *(inited + 136) = &type metadata for String;
  v21 = sub_1000053B0();
  *(inited + 112) = v14;
  *(inited + 120) = v2;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v21;
  *(inited + 152) = 51;
  v22 = v122;
  *(inited + 216) = v19;
  *(inited + 224) = v20;
  *(inited + 192) = v22;
  v23 = v1;
  v24 = v22;
  v25 = static os_log_type_t.error.getter();
  sub_100005404(v17, &_mh_execute_header, v25, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v26 = static os_log_type_t.error.getter();
  sub_100005404(v17, &_mh_execute_header, v26, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v27 = swift_allocObject();
  v27[2] = 8;
  v27[3] = 0;
  v27[4] = 0;
  v27[5] = 0;
  v28 = __VaListBuilder.va_list()();
  StaticString.description.getter("perform()", 9, 2);
  v29 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/AppIntents/Intents/Board Items Selection Customization/CRLChangeSelectionColorIntent.swift", 144, 2);
  v30 = String._bridgeToObjectiveC()();

  StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
  v31 = String._bridgeToObjectiveC()();

  [v117 handleFailureInFunction:v29 file:v30 lineNumber:51 isFatal:0 format:v31 args:v28];

  sub_10000C90C(v16, v115, type metadata accessor for CRLChangeSelectionColorIntent);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = v119[52];
    v35 = v119[50];
    v118 = v119[49];
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v121 = v37;
    *v36 = 136315138;
    IntentParameter.wrappedValue.getter();
    sub_10000C90C(v34, v35, type metadata accessor for CRLBoardIdentifier);
    sub_10122DF5C(v34, type metadata accessor for CRLBoardEntity);
    v122 = UUID.uuidString.getter();
    v123 = v38;

    v39._countAndFlagsBits = 58;
    v39._object = 0xE100000000000000;
    String.append(_:)(v39);

    v40 = v122;
    v41 = v123;
    v42 = (v35 + *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20));
    v44 = *v42;
    v43 = v42[1];
    v122 = v40;
    v123 = v41;

    v45._countAndFlagsBits = v44;
    v45._object = v43;
    String.append(_:)(v45);

    v46 = v122;
    v47 = v123;
    sub_10122DF5C(v35, type metadata accessor for CRLBoardIdentifier);
    sub_10122DF5C(v118, type metadata accessor for CRLChangeSelectionColorIntent);
    v48 = sub_101007640(v46, v47, &v121);

    *(v36 + 4) = v48;
    _os_log_impl(&_mh_execute_header, v32, v33, "Missing selection model translator for %s", v36, 0xCu);
    sub_100005070(v37);
  }

  else
  {
    v106 = v119[49];

    sub_10122DF5C(v106, type metadata accessor for CRLChangeSelectionColorIntent);
  }

  v107 = v119[58];
  v108 = v119[59];
  type metadata accessor for _PrebuiltAppIntentError();
  sub_10122BB1C(&qword_101A00A28, &type metadata accessor for _PrebuiltAppIntentError, &protocol conformance descriptor for _PrebuiltAppIntentError);
  swift_allocError();
  static _UnrecoverableError.actionNotAllowed.getter();
  swift_willThrow();

  v105 = v119[1];
LABEL_118:

  return v105();
}

uint64_t sub_10122CD00()
{

  sub_100005070((v0 + 288));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10122CDAC()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  sub_10061655C(v6, qword_101AD9380);
  sub_1005EB3DC(v6, qword_101AD9380);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_10122CFA4()
{
  v0 = sub_1005B981C(&qword_101A2DEC0, &qword_1014D3BC8);
  __chkstk_darwin(v0 - 8);
  v1 = sub_1005B981C(&qword_101A2DEC8, &qword_1014D3BD0);
  __chkstk_darwin(v1);
  type metadata accessor for CRLChangeSelectionColorIntent(0);
  sub_10122BB1C(&qword_101A2DDF0, type metadata accessor for CRLChangeSelectionColorIntent, aY_24);
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._object = 0x80000001015C69C0;
  v2._countAndFlagsBits = 0xD00000000000001FLL;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_1005B981C(&qword_101A2DED0, &qword_1014D3C00);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 544175136;
  v3._object = 0xE400000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  swift_getKeyPath();
  sub_1005B981C(&qword_101A2DED8, &unk_1014D3C30);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t sub_10122D1E0@<X0>(uint64_t *a1@<X8>)
{
  v62 = a1;
  v1 = type metadata accessor for InputConnectionBehavior();
  v2 = *(v1 - 8);
  v63 = v1;
  v64 = v2;
  __chkstk_darwin(v1);
  v61 = &v39[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1005B981C(&qword_1019F6260, &unk_10146ED40);
  __chkstk_darwin(v4 - 8);
  v60 = &v39[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v58 = &v39[-v7];
  v8 = sub_1005B981C(&qword_1019F6268, &unk_101471D00);
  __chkstk_darwin(v8 - 8);
  v59 = &v39[-v9];
  v10 = sub_1005B981C(&qword_1019F6270, &unk_10146ED50);
  __chkstk_darwin(v10 - 8);
  v55 = &v39[-v11];
  v12 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v39[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = type metadata accessor for Locale();
  __chkstk_darwin(v16 - 8);
  v17 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v17 - 8);
  v57 = type metadata accessor for LocalizedStringResource();
  v18 = *(v57 - 8);
  __chkstk_darwin(v57);
  v56 = &v39[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v54 = sub_1005B981C(&qword_1019F6278, &unk_101471D10);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v20 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v21 = *(v13 + 104);
  v45 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v46 = v12;
  v21(v15, enum case for LocalizedStringResource.BundleDescription.main(_:), v12);
  v47 = v21;
  v48 = v13 + 104;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v21(v15, v20, v12);
  v22 = v55;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v23 = *(v18 + 56);
  v52 = v18 + 56;
  v53 = v23;
  v23(v22, 0, 1, v57);
  v24 = type metadata accessor for CRLBoardEntity(0);
  (*(*(v24 - 8) + 56))(v59, 1, 1, v24);
  v25 = type metadata accessor for IntentDialog();
  v42 = v25;
  v26 = *(v25 - 8);
  v27 = *(v26 + 56);
  v43 = v27;
  v44 = v26 + 56;
  v27(v58, 1, 1, v25);
  v27(v60, 1, 1, v25);
  v50 = sub_1005B981C(&qword_1019F6280, &qword_10146ED60);
  v51 = 0x8000000101558510;
  v65 = 0xD00000000000001FLL;
  v66 = 0x8000000101558510;
  AnyHashable.init<A>(_:)();
  v49 = type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  v67 = AppDependency.__allocating_init(key:manager:)();
  v40 = enum case for InputConnectionBehavior.default(_:);
  v28 = *(v64 + 104);
  v64 += 104;
  v41 = v28;
  v28(v61);
  sub_100616374();
  sub_10122BB1C(&qword_1019F6290, type metadata accessor for CRLBoardEntity, aQ_25);
  v29 = v55;
  *v62 = IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:optionsProvider:)();
  v59 = sub_1005B981C(&qword_101A2DEB0, &qword_1014D3B88);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v30 = v45;
  v31 = v46;
  v32 = v47;
  v47(v15, v45, v46);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v32(v15, v30, v31);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v53(v29, 0, 1, v57);
  LOBYTE(v67) = 8;
  v33 = v42;
  v34 = v43;
  v43(v58, 1, 1, v42);
  v34(v60, 1, 1, v33);
  v41(v61, v40, v63);
  sub_10122DF08();
  v35 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
  v36 = v62;
  v62[1] = v35;
  v65 = 0xD00000000000001FLL;
  v66 = v51;
  AnyHashable.init<A>(_:)();
  static AppDependencyManager.shared.getter();
  v36[2] = AppDependency.__allocating_init(key:manager:)();
  type metadata accessor for CRLChangeSelectionColorIntent(0);
  if (qword_1019F2238 != -1)
  {
    swift_once();
  }

  v37 = static OS_os_log.appIntents;
  return Logger.init(_:)();
}

uint64_t sub_10122DB70@<X0>(uint64_t a1@<X8>)
{
  if (qword_1019F2B18 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_1005EB3DC(v2, qword_101AD9380);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10122DC1C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002D3D4;

  return sub_10122BB9C(a1);
}

uint64_t sub_10122DCB8(uint64_t a1)
{
  result = sub_10122BB1C(&qword_101A2DDF0, type metadata accessor for CRLChangeSelectionColorIntent, aY_24);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10122DD10(uint64_t a1)
{
  v2 = sub_10122BB1C(&qword_101A2DDF0, type metadata accessor for CRLChangeSelectionColorIntent, aY_24);

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

void sub_10122DDA4(uint64_t a1)
{
  sub_100D5C204(319);
  if (v1 <= 0x3F)
  {
    sub_10122DE58(319);
    if (v2 <= 0x3F)
    {
      sub_100D5C2F4();
      if (v3 <= 0x3F)
      {
        type metadata accessor for Logger();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10122DE58(uint64_t a1)
{
  if (!qword_101A2DE60)
  {
    sub_10122DEB4();
    v1 = type metadata accessor for IntentParameter();
    if (!v2)
    {
      atomic_store(v1, &qword_101A2DE60);
    }
  }
}

unint64_t sub_10122DEB4()
{
  result = qword_101A2DE68;
  if (!qword_101A2DE68)
  {
    result = swift_getWitnessTable(asc_1014D8670, &type metadata for CRLColorEntity, v0, v1);
    atomic_store(result, &qword_101A2DE68);
  }

  return result;
}

unint64_t sub_10122DF08()
{
  result = qword_101A2DEB8;
  if (!qword_101A2DEB8)
  {
    result = swift_getWitnessTable(aA_15, &type metadata for CRLColorEntity, v0, v1);
    atomic_store(result, &qword_101A2DEB8);
  }

  return result;
}

uint64_t sub_10122DF5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_10122DFBC(uint64_t a1, void *a2)
{
  if (type metadata accessor for CRLWPEditor(0))
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  else
  {
    ObjCClassFromMetadata = 0;
  }

  v5 = [a2 mostSpecificCurrentEditorOfClass:ObjCClassFromMetadata];
  if (swift_dynamicCastClass())
  {
    IntentParameter.wrappedValue.getter();
    v6 = sub_10127F41C(v24);
    KeyPath = swift_getKeyPath();
    v8 = v6;
    sub_1012E689C(KeyPath, v8);
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    if (sub_100006370(0, &qword_101A0F420, off_10182FA00))
    {
      v10 = swift_getObjCClassFromMetadata();
    }

    else
    {
      v10 = 0;
    }

    [a2 mostSpecificCurrentEditorOfClass:v10];
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11 && (v12 = v11, [v11 isSingleBoardItemSelected]))
    {
      v13 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
      v14 = *(**(a1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);

      v16 = v14(v15);

      v17 = [v16 widthValid];

      if (v17 && (v18 = *(**(a1 + v13) + 296), v19 = , v20 = v18(v19), , v21 = [v20 heightValid], v20, (v21 & 1) != 0))
      {
        IntentParameter.wrappedValue.getter();
        v22 = sub_10127F41C(v25);
        [v12 setShapeFill:v22];
      }

      else
      {
        IntentParameter.wrappedValue.getter();
        v23 = sub_10127F41C(v26);
        sub_100A5BEE8(v23);
      }
    }

    swift_unknownObjectRelease();
  }

  return result;
}

double sub_10122E294(void *a1)
{
  IntentParameter.wrappedValue.getter();
  v2 = sub_10127F648(v10[0]);
  if (v2 == 7)
  {
    type metadata accessor for CRLChangeSelectionColorIntent(0);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Unsupported color for Sticky Note", v5, 2u);
    }
  }

  else
  {
    v7 = v2;
    if (type metadata accessor for CRLWPStickyNoteEditor())
    {
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    }

    else
    {
      ObjCClassFromMetadata = 0;
    }

    v9 = [a1 mostSpecificCurrentEditorOfClass:ObjCClassFromMetadata];
    if (swift_dynamicCastClass())
    {
      v11 = &type metadata for CRLStickyNotePreset;
      v10[0] = v7;
      swift_unknownObjectRetain();
      sub_100FE5B88(v10);
      swift_unknownObjectRelease_n();
      sub_10000CAAC(v10, &unk_1019F4D00, &unk_10146E7F0);
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return result;
}

id sub_10122E40C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterArrangeBuilder_arrangeDataProvider);
  if (!sub_100B89DF0())
  {
    goto LABEL_15;
  }

  v2 = *(v1 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
  if (sub_100006370(0, &qword_101A0C7E0, off_10182F958))
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  else
  {
    ObjCClassFromMetadata = 0;
  }

  v4 = [v2 mostSpecificCurrentEditorOfClass:ObjCClassFromMetadata];
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  v6 = [v5 canIntersectPaths];
  swift_unknownObjectRelease();
  if ((v6 & 1) == 0)
  {
LABEL_9:
    v7 = [objc_opt_self() mainBundle];
    v8 = String._bridgeToObjectiveC()();
    v9 = String._bridgeToObjectiveC()();
    v10 = [v7 localizedStringForKey:v8 value:v9 table:0];

    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = sub_1005D42AC(v11, v13);

    v15 = v14;
    [v15 setTag:1];
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  sub_10122E820();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_15:
  v16 = sub_10122EC70();
  if (v16)
  {
    v17 = v16;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v18 = sub_1012318D4();
  if (v18)
  {
    v19 = v18;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v20 = objc_allocWithZone(UIStackView);
  sub_100006370(0, &qword_1019F6D00, UIView_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v22 = [v20 initWithArrangedSubviews:isa];

  [v22 setAxis:1];
  [v22 setSpacing:12.0];
  v23 = [v22 viewWithTag:1];
  if (v23)
  {
    v24 = v23;
    [v22 setCustomSpacing:v23 afterView:8.0];
  }

  return v22;
}

id sub_10122E820()
{
  swift_getObjectType();
  specialized ContiguousArray.reserveCapacity(_:)();
  sub_100006370(0, &qword_1019F6190, UIAction_ptr);
  v0 = objc_opt_self();
  for (i = 0; i != 24; i += 4)
  {
    v2 = *(&off_101872B50 + i + 32);
    sub_1012326D8(v2);
    v4 = v3;
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = v2;
    v19 = v6;
    v7 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v8 = sub_101232938(v2);
    v10 = v9;
    v11 = [v0 labelColor];
    v12 = [v0 labelColor];
    if (qword_1019F12D0 != -1)
    {
      swift_once();
    }

    sub_1005D3A94(v4, 0, 0, v7, 0, 0, v11, v12, *&qword_101AD5E10, 0, 0, 1u, v8, v10, 0);

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    sub_100006370(0, &qword_1019F6D00, UIView_ptr);
    _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100006370(0, &qword_1019F6D00, UIView_ptr);
  }

  v13 = objc_allocWithZone(UIStackView);
  sub_100006370(0, &qword_1019F6D00, UIView_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v15 = [v13 initWithArrangedSubviews:isa];

  [v15 setAxis:0];
  [v15 setAlignment:0];
  [v15 setDistribution:2];
  [v15 setSpacing:1.0];
  v16 = [v15 heightAnchor];
  v17 = [v16 constraintGreaterThanOrEqualToConstant:34.0];

  [v17 setActive:1];
  return v15;
}

void sub_10122EBF4(uint64_t a1, uint64_t a2, int a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterArrangeBuilder_arrangeDataProvider);

    sub_100B8A0E4(a3);
  }
}

id sub_10122EC70()
{
  if (sub_100B89C9C())
  {
    sub_10122EEEC();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v0 = sub_100B89F44();
  if (v0)
  {
    if ((v0 & 0x100) != 0)
    {
      sub_101230880();
    }

    else
    {
      sub_10122F5C0();
    }
  }

  else
  {
    if ((v0 & 0x100) == 0)
    {
      goto LABEL_14;
    }

    sub_10122FF24();
  }

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
LABEL_14:
  if (_swiftEmptyArrayStorage >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_16;
    }

LABEL_18:

    return 0;
  }

  if (!*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_18;
  }

LABEL_16:
  v1 = objc_allocWithZone(UIStackView);
  sub_100006370(0, &qword_1019F6D00, UIView_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v3 = [v1 initWithArrangedSubviews:isa];

  [v3 setAxis:0];
  [v3 setAlignment:0];
  [v3 setDistribution:1];
  [v3 setSpacing:12.0];
  v4 = [v3 heightAnchor];
  v5 = [v4 constraintGreaterThanOrEqualToConstant:34.0];

  [v5 setActive:1];
  return v3;
}

id sub_10122EEEC()
{
  swift_getObjectType();
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_10146CE00;
  v0 = String._bridgeToObjectiveC()();
  v37 = objc_opt_self();
  v1 = [v37 systemImageNamed:v0];

  sub_100006370(0, &qword_1019F6190, UIAction_ptr);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v4 = objc_opt_self();
  v5 = [v4 mainBundle];
  v6 = String._bridgeToObjectiveC()();
  v7 = String._bridgeToObjectiveC()();
  v8 = [v5 localizedStringForKey:v6 value:v7 table:0];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = objc_opt_self();
  v13 = [v12 labelColor];
  v14 = [v12 labelColor];
  if (qword_1019F12D0 != -1)
  {
    swift_once();
  }

  v15 = *&qword_101AD5E10;
  v16 = sub_1005D3A94(v1, 0, 0, v3, 0, 0, v13, v14, *&qword_101AD5E10, 0, 0, 1u, v9, v11, 0);

  *(v38 + 32) = v16;
  v17 = String._bridgeToObjectiveC()();
  v18 = [v37 systemImageNamed:v17];

  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v21 = [v4 mainBundle];
  v22 = String._bridgeToObjectiveC()();
  v23 = String._bridgeToObjectiveC()();
  v24 = [v21 localizedStringForKey:v22 value:v23 table:0];

  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  v28 = [v12 labelColor];
  v29 = [v12 labelColor];
  v30 = sub_1005D3A94(v18, 0, 0, v20, 0, 0, v28, v29, v15, 0, 0, 1u, v25, v27, 0);

  *(v38 + 40) = v30;
  v31 = objc_allocWithZone(UIStackView);
  sub_100006370(0, &qword_1019F6D00, UIView_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v33 = [v31 initWithArrangedSubviews:isa];

  [v33 setAxis:0];
  [v33 setAlignment:0];
  [v33 setDistribution:2];
  [v33 setSpacing:1.0];
  v34 = [v33 heightAnchor];
  v35 = [v34 constraintGreaterThanOrEqualToConstant:34.0];

  [v35 setActive:1];
  return v33;
}

double sub_10122F4C0(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4, SEL *a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = *(Strong + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterArrangeBuilder_arrangeDataProvider);

    v12 = *&v11[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController];
    if (sub_100006370(0, a3, a4))
    {
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    }

    else
    {
      ObjCClassFromMetadata = 0;
    }

    v14 = [v12 mostSpecificCurrentEditorOfClass:ObjCClassFromMetadata];
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (v15)
    {
      [v15 *a5];
    }

    swift_unknownObjectRelease();
  }

  return result;
}

id sub_10122F5C0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_1005B981C(&unk_1019F4CE0, &qword_10146F270);
  __chkstk_darwin(v2 - 8);
  v60 = &v55 - v3;
  v4 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v57 = *(v4 - 8);
  v58 = v4;
  __chkstk_darwin(v4);
  v56 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UIButton.Configuration.Size();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UIButton.Configuration();
  v65 = *(v10 - 8);
  v66 = v10;
  __chkstk_darwin(v10);
  v59 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v55 - v13;
  __chkstk_darwin(v15);
  v67 = &v55 - v16;
  v17 = [objc_opt_self() mainBundle];
  v18 = String._bridgeToObjectiveC()();
  v19 = String._bridgeToObjectiveC()();
  v20 = [v17 localizedStringForKey:v18 value:v19 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  sub_100006370(0, &qword_1019F6190, UIAction_ptr);
  swift_allocObject();
  v64 = v1;
  swift_unknownObjectWeakInit();
  v55 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v23 = objc_opt_self();
  v62 = [v23 labelColor];
  if (qword_1019F12D0 != -1)
  {
    swift_once();
  }

  static UIButton.Configuration.filled()();

  v61 = v22;
  UIButton.Configuration.title.setter();
  UIButton.Configuration.image.setter();
  UIButton.Configuration.imagePadding.setter();
  v24 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleSubheadline scale:-1];
  UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
  (*(v7 + 104))(v9, enum case for UIButton.Configuration.Size.medium(_:), v6);
  UIButton.Configuration.buttonSize.setter();
  v25 = [objc_opt_self() mainScreen];
  v26 = [v25 traitCollection];

  LODWORD(v25) = [v26 crl_isUserInterfaceStyleDark];
  if (v25)
  {
    v27 = v65;
    if (qword_1019F12B0 != -1)
    {
      swift_once();
    }

    v28 = &qword_101AD5DF0;
  }

  else
  {
    v27 = v65;
    if (qword_1019F12A8 != -1)
    {
      swift_once();
    }

    v28 = &qword_101AD5DE8;
  }

  v29 = *v28;
  UIButton.Configuration.baseBackgroundColor.setter();
  v30 = [v23 labelColor];
  UIButton.Configuration.baseForegroundColor.setter();
  (*(v57 + 104))(v56, enum case for UIButton.Configuration.CornerStyle.fixed(_:), v58);
  UIButton.Configuration.cornerStyle.setter();
  v31 = UIButton.Configuration.background.modify();
  UIBackgroundConfiguration.cornerRadius.setter();
  v31(aBlock, 0);
  UIButton.Configuration.contentInsets.setter();
  *(swift_allocObject() + 16) = 0;
  v32 = v60;
  UIConfigurationTextAttributesTransformer.init(_:)();
  v33 = type metadata accessor for UIConfigurationTextAttributesTransformer();
  (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
  UIButton.Configuration.titleTextAttributesTransformer.setter();
  v35 = v66;
  v34 = v67;
  (*(v27 + 32))(v67, v14, v66);
  sub_100006370(0, &qword_1019F6E10, UIButton_ptr);
  (*(v27 + 16))(v59, v34, v35);
  v36 = v55;
  v37 = UIButton.init(configuration:primaryAction:)();
  v38 = [v23 labelColor];
  v39 = [v23 labelColor];
  v40 = sub_1005D46A0(0, 0, v38, v39);
  v42 = v41;

  aBlock[4] = v40;
  aBlock[5] = v42;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_10068B39C;
  aBlock[3] = &unk_1018B8448;
  v43 = _Block_copy(aBlock);

  [v37 setConfigurationUpdateHandler:v43];
  _Block_release(v43);
  v44 = v37;
  v45 = String._bridgeToObjectiveC()();
  [v44 setAccessibilityLabel:v45];

  v46 = v44;
  [v46 setShowsLargeContentViewer:1];
  v47 = String._bridgeToObjectiveC()();
  [v46 setLargeContentTitle:v47];

  [v46 setLargeContentImage:0];
  v48 = objc_allocWithZone(UILargeContentViewerInteraction);
  v49 = [v48 initWithDelegate:v64];
  [v46 addInteraction:v49];

  v50 = [v46 titleLabel];
  if (v50)
  {
    v51 = v50;
    [v50 setTextAlignment:1];
  }

  v52 = [v46 heightAnchor];

  v53 = [v52 constraintGreaterThanOrEqualToConstant:34.0];
  [v53 setActive:1];

  (*(v27 + 8))(v67, v35);
  return v46;
}

id sub_10122FF24()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_1005B981C(&unk_1019F4CE0, &qword_10146F270);
  __chkstk_darwin(v2 - 8);
  v60 = &v55 - v3;
  v4 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v57 = *(v4 - 8);
  v58 = v4;
  __chkstk_darwin(v4);
  v56 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UIButton.Configuration.Size();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UIButton.Configuration();
  v65 = *(v10 - 8);
  v66 = v10;
  __chkstk_darwin(v10);
  v59 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v55 - v13;
  __chkstk_darwin(v15);
  v67 = &v55 - v16;
  v17 = [objc_opt_self() mainBundle];
  v18 = String._bridgeToObjectiveC()();
  v19 = String._bridgeToObjectiveC()();
  v20 = [v17 localizedStringForKey:v18 value:v19 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  sub_100006370(0, &qword_1019F6190, UIAction_ptr);
  swift_allocObject();
  v64 = v1;
  swift_unknownObjectWeakInit();
  v55 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v23 = objc_opt_self();
  v62 = [v23 labelColor];
  if (qword_1019F12D0 != -1)
  {
    swift_once();
  }

  static UIButton.Configuration.filled()();

  v61 = v22;
  UIButton.Configuration.title.setter();
  UIButton.Configuration.image.setter();
  UIButton.Configuration.imagePadding.setter();
  v24 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleSubheadline scale:-1];
  UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
  (*(v7 + 104))(v9, enum case for UIButton.Configuration.Size.medium(_:), v6);
  UIButton.Configuration.buttonSize.setter();
  v25 = [objc_opt_self() mainScreen];
  v26 = [v25 traitCollection];

  LODWORD(v25) = [v26 crl_isUserInterfaceStyleDark];
  if (v25)
  {
    v27 = v65;
    if (qword_1019F12B0 != -1)
    {
      swift_once();
    }

    v28 = &qword_101AD5DF0;
  }

  else
  {
    v27 = v65;
    if (qword_1019F12A8 != -1)
    {
      swift_once();
    }

    v28 = &qword_101AD5DE8;
  }

  v29 = *v28;
  UIButton.Configuration.baseBackgroundColor.setter();
  v30 = [v23 labelColor];
  UIButton.Configuration.baseForegroundColor.setter();
  (*(v57 + 104))(v56, enum case for UIButton.Configuration.CornerStyle.fixed(_:), v58);
  UIButton.Configuration.cornerStyle.setter();
  v31 = UIButton.Configuration.background.modify();
  UIBackgroundConfiguration.cornerRadius.setter();
  v31(aBlock, 0);
  UIButton.Configuration.contentInsets.setter();
  *(swift_allocObject() + 16) = 0;
  v32 = v60;
  UIConfigurationTextAttributesTransformer.init(_:)();
  v33 = type metadata accessor for UIConfigurationTextAttributesTransformer();
  (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
  UIButton.Configuration.titleTextAttributesTransformer.setter();
  v35 = v66;
  v34 = v67;
  (*(v27 + 32))(v67, v14, v66);
  sub_100006370(0, &qword_1019F6E10, UIButton_ptr);
  (*(v27 + 16))(v59, v34, v35);
  v36 = v55;
  v37 = UIButton.init(configuration:primaryAction:)();
  v38 = [v23 labelColor];
  v39 = [v23 labelColor];
  v40 = sub_1005D46A0(0, 0, v38, v39);
  v42 = v41;

  aBlock[4] = v40;
  aBlock[5] = v42;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_10068B39C;
  aBlock[3] = &unk_1018B83F8;
  v43 = _Block_copy(aBlock);

  [v37 setConfigurationUpdateHandler:v43];
  _Block_release(v43);
  v44 = v37;
  v45 = String._bridgeToObjectiveC()();
  [v44 setAccessibilityLabel:v45];

  v46 = v44;
  [v46 setShowsLargeContentViewer:1];
  v47 = String._bridgeToObjectiveC()();
  [v46 setLargeContentTitle:v47];

  [v46 setLargeContentImage:0];
  v48 = objc_allocWithZone(UILargeContentViewerInteraction);
  v49 = [v48 initWithDelegate:v64];
  [v46 addInteraction:v49];

  v50 = [v46 titleLabel];
  if (v50)
  {
    v51 = v50;
    [v50 setTextAlignment:1];
  }

  v52 = [v46 heightAnchor];

  v53 = [v52 constraintGreaterThanOrEqualToConstant:34.0];
  [v53 setActive:1];

  (*(v27 + 8))(v67, v35);
  return v46;
}

id sub_101230880()
{
  ObjectType = swift_getObjectType();
  v0 = sub_1005B981C(&unk_1019F4CE0, &qword_10146F270);
  __chkstk_darwin(v0 - 8);
  v2 = &v69 - v1;
  v3 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v69 = *(v3 - 8);
  v70 = v3;
  __chkstk_darwin(v3);
  v5 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UIButton.Configuration.Size();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UIButton.Configuration();
  v75 = *(v10 - 8);
  v76 = v10;
  __chkstk_darwin(v10);
  v71 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v69 - v13;
  __chkstk_darwin(v15);
  v79 = &v69 - v16;
  v77 = objc_opt_self();
  v17 = [v77 mainBundle];
  v18 = String._bridgeToObjectiveC()();
  v19 = String._bridgeToObjectiveC()();
  v20 = [v17 localizedStringForKey:v18 value:v19 table:0];

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = objc_opt_self();
  v74 = [v22 labelColor];
  if (qword_1019F12D0 != -1)
  {
    swift_once();
  }

  static UIButton.Configuration.filled()();

  v72 = v21;
  UIButton.Configuration.title.setter();
  UIButton.Configuration.image.setter();
  UIButton.Configuration.imagePadding.setter();
  v23 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleSubheadline scale:-1];
  UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
  (*(v7 + 104))(v9, enum case for UIButton.Configuration.Size.medium(_:), v6);
  UIButton.Configuration.buttonSize.setter();
  v24 = [objc_opt_self() mainScreen];
  v25 = [v24 traitCollection];

  LODWORD(v24) = [v25 crl_isUserInterfaceStyleDark];
  if (v24)
  {
    if (qword_1019F12B0 != -1)
    {
      swift_once();
    }

    v26 = &qword_101AD5DF0;
  }

  else
  {
    if (qword_1019F12A8 != -1)
    {
      swift_once();
    }

    v26 = &qword_101AD5DE8;
  }

  v27 = *v26;
  UIButton.Configuration.baseBackgroundColor.setter();
  v28 = [v22 labelColor];
  UIButton.Configuration.baseForegroundColor.setter();
  (*(v69 + 104))(v5, enum case for UIButton.Configuration.CornerStyle.fixed(_:), v70);
  UIButton.Configuration.cornerStyle.setter();
  v29 = UIButton.Configuration.background.modify();
  UIBackgroundConfiguration.cornerRadius.setter();
  v29(aBlock, 0);
  UIButton.Configuration.contentInsets.setter();
  *(swift_allocObject() + 16) = 0;
  UIConfigurationTextAttributesTransformer.init(_:)();
  v30 = type metadata accessor for UIConfigurationTextAttributesTransformer();
  (*(*(v30 - 8) + 56))(v2, 0, 1, v30);
  UIButton.Configuration.titleTextAttributesTransformer.setter();
  v31 = v75;
  v32 = v79;
  v33 = v14;
  v34 = v76;
  (*(v75 + 32))(v79, v33, v76);
  sub_100006370(0, &qword_1019F6E10, UIButton_ptr);
  (*(v31 + 16))(v71, v32, v34);
  v35 = UIButton.init(configuration:primaryAction:)();
  v36 = [v22 labelColor];
  v37 = [v22 labelColor];
  v38 = sub_1005D46A0(0, 0, v36, v37);
  v40 = v39;

  aBlock[4] = v38;
  aBlock[5] = v40;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_10068B39C;
  aBlock[3] = &unk_1018B83A8;
  v41 = _Block_copy(aBlock);

  [v35 setConfigurationUpdateHandler:v41];
  _Block_release(v41);
  v42 = v35;
  v43 = String._bridgeToObjectiveC()();
  [v42 setAccessibilityLabel:v43];

  v44 = v42;
  [v44 setShowsLargeContentViewer:1];
  v45 = String._bridgeToObjectiveC()();
  [v44 setLargeContentTitle:v45];

  [v44 setLargeContentImage:0];
  v46 = objc_allocWithZone(UILargeContentViewerInteraction);
  v47 = [v46 initWithDelegate:v78];
  [v44 addInteraction:v47];

  v48 = [v44 titleLabel];
  if (v48)
  {
    v49 = v48;
    [v48 setTextAlignment:1];
  }

  v50 = [v44 heightAnchor];

  v51 = [v50 constraintGreaterThanOrEqualToConstant:34.0];
  [v51 setActive:1];

  (*(v31 + 8))(v79, v34);
  [v44 setShowsMenuAsPrimaryAction:1];
  sub_100006370(0, &qword_1019F6190, UIAction_ptr);
  v52 = v77;
  v53 = [v77 mainBundle];
  v54 = String._bridgeToObjectiveC()();
  v55 = String._bridgeToObjectiveC()();
  v56 = [v53 localizedStringForKey:v54 value:v55 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v57 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v58 = [v52 mainBundle];
  v59 = String._bridgeToObjectiveC()();
  v60 = String._bridgeToObjectiveC()();
  v61 = [v58 localizedStringForKey:v59 value:v60 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v62 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  sub_100006370(0, &qword_1019F6C00, UIMenu_ptr);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_10146CE00;
  *(v63 + 32) = v57;
  *(v63 + 40) = v62;
  v67 = v63;
  v64._countAndFlagsBits = 0;
  v64._object = 0xE000000000000000;
  v81.value.super.isa = 0;
  v81.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v64, 0, v81, 0, 0xFFFFFFFFFFFFFFFFLL, v67, v68).super.super.isa;
  [v44 setMenu:isa];

  return v44;
}

id sub_1012313F8()
{
  swift_getObjectType();
  specialized ContiguousArray.reserveCapacity(_:)();
  sub_100006370(0, &qword_1019F6190, UIAction_ptr);
  v0 = objc_opt_self();
  for (i = 0; i != 32; i += 8)
  {
    v2 = *(&off_101872B88 + i + 32);
    v3 = sub_101232A98(v2);
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = v2;
    v18 = v5;
    v6 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v7 = sub_101232B6C();
    v9 = v8;
    v10 = [v0 labelColor];
    v11 = [v0 labelColor];
    if (qword_1019F12D0 != -1)
    {
      swift_once();
    }

    sub_1005D3A94(v3, 0, 0, v6, 0, 0, v10, v11, *&qword_101AD5E10, 0, 0, 1u, v7, v9, 0);

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
  {
    sub_100006370(0, &qword_1019F6D00, UIView_ptr);
    _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100006370(0, &qword_1019F6D00, UIView_ptr);
  }

  v12 = objc_allocWithZone(UIStackView);
  sub_100006370(0, &qword_1019F6D00, UIView_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v14 = [v12 initWithArrangedSubviews:isa];

  [v14 setAxis:0];
  [v14 setAlignment:0];
  [v14 setDistribution:2];
  [v14 setSpacing:1.0];
  v15 = [v14 heightAnchor];
  v16 = [v15 constraintGreaterThanOrEqualToConstant:34.0];

  [v16 setActive:1];
  return v14;
}

void sub_1012317C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterArrangeBuilder_arrangeDataProvider);

    v7 = *&v6[OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController];
    if (sub_100006370(0, &qword_101A0C7E0, off_10182F958))
    {
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    }

    else
    {
      ObjCClassFromMetadata = 0;
    }

    v9 = [v7 mostSpecificCurrentEditorOfClass:ObjCClassFromMetadata];
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (!v10)
    {
      swift_unknownObjectRelease();
    }

    [v10 performBooleanOperationOnPaths:a3];
  }
}

id sub_1012318D4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_1005B981C(&unk_1019F4CE0, &qword_10146F270);
  __chkstk_darwin(v2 - 8);
  v91 = &v80 - v3;
  v4 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v88 = *(v4 - 8);
  v89 = v4;
  __chkstk_darwin(v4);
  v6 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UIButton.Configuration.Size();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for UIButton.Configuration();
  v94 = *(v11 - 8);
  __chkstk_darwin(v11);
  v90 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v80 - v14;
  __chkstk_darwin(v16);
  v93 = &v80 - v17;
  v18 = *(*(v0 + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterArrangeBuilder_arrangeDataProvider) + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
  if (sub_100006370(0, &qword_101A0C7E0, off_10182F958))
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  else
  {
    ObjCClassFromMetadata = 0;
  }

  v20 = [v18 mostSpecificCurrentEditorOfClass:ObjCClassFromMetadata];
  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (v21)
  {
    v22 = [v21 canIntersectPaths];
    swift_unknownObjectRelease();
    if (v22)
    {
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_10146CE00;
      v24 = [objc_opt_self() mainBundle];
      v25 = String._bridgeToObjectiveC()();
      v26 = String._bridgeToObjectiveC()();
      v27 = [v24 localizedStringForKey:v25 value:v26 table:0];

      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      v31 = sub_1005D42AC(v28, v30);

      *(v23 + 32) = v31;
      *(v23 + 40) = sub_1012313F8();
      v32 = objc_allocWithZone(UIStackView);
      sub_100006370(0, &qword_1019F6D00, UIView_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v34 = [v32 initWithArrangedSubviews:isa];

      [v34 setAxis:1];
      [v34 setSpacing:12.0];
      return v34;
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  if (!sub_100B8A45C())
  {
    return 0;
  }

  v81 = v6;
  v86 = v11;
  v85 = swift_allocObject();
  *(v85 + 16) = xmmword_101465920;
  v35 = [objc_opt_self() mainBundle];
  v36 = v1;
  v37 = String._bridgeToObjectiveC()();
  v38 = String._bridgeToObjectiveC()();
  v39 = [v35 localizedStringForKey:v37 value:v38 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;

  sub_100006370(0, &qword_1019F6190, UIAction_ptr);
  swift_allocObject();
  v87 = v36;
  swift_unknownObjectWeakInit();
  v82 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v42 = objc_opt_self();
  v83 = [v42 labelColor];
  if (qword_1019F12D0 != -1)
  {
    swift_once();
  }

  static UIButton.Configuration.filled()();

  v84 = v41;
  UIButton.Configuration.title.setter();
  UIButton.Configuration.image.setter();
  UIButton.Configuration.imagePadding.setter();
  v43 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleSubheadline scale:-1];
  UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
  (*(v8 + 104))(v10, enum case for UIButton.Configuration.Size.medium(_:), v7);
  UIButton.Configuration.buttonSize.setter();
  v44 = [objc_opt_self() mainScreen];
  v45 = [v44 traitCollection];

  LODWORD(v44) = [v45 crl_isUserInterfaceStyleDark];
  v46 = v86;
  if (v44)
  {
    v47 = v81;
    if (qword_1019F12B0 != -1)
    {
      swift_once();
    }

    v48 = &qword_101AD5DF0;
  }

  else
  {
    v47 = v81;
    if (qword_1019F12A8 != -1)
    {
      swift_once();
    }

    v48 = &qword_101AD5DE8;
  }

  v49 = *v48;
  UIButton.Configuration.baseBackgroundColor.setter();
  v50 = [v42 labelColor];
  UIButton.Configuration.baseForegroundColor.setter();
  (*(v88 + 104))(v47, enum case for UIButton.Configuration.CornerStyle.fixed(_:), v89);
  UIButton.Configuration.cornerStyle.setter();
  v51 = UIButton.Configuration.background.modify();
  UIBackgroundConfiguration.cornerRadius.setter();
  v51(aBlock, 0);
  UIButton.Configuration.contentInsets.setter();
  *(swift_allocObject() + 16) = 0;
  v52 = v91;
  UIConfigurationTextAttributesTransformer.init(_:)();
  v53 = type metadata accessor for UIConfigurationTextAttributesTransformer();
  (*(*(v53 - 8) + 56))(v52, 0, 1, v53);
  UIButton.Configuration.titleTextAttributesTransformer.setter();
  v55 = v93;
  v54 = v94;
  (*(v94 + 32))(v93, v15, v46);
  sub_100006370(0, &qword_1019F6E10, UIButton_ptr);
  (*(v54 + 16))(v90, v55, v46);
  v56 = v82;
  v57 = UIButton.init(configuration:primaryAction:)();
  v58 = [v42 labelColor];
  v59 = [v42 labelColor];
  v60 = sub_1005D46A0(0, 0, v58, v59);
  v62 = v61;

  aBlock[4] = v60;
  aBlock[5] = v62;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = *"";
  aBlock[2] = sub_10068B39C;
  aBlock[3] = &unk_1018B8330;
  v63 = _Block_copy(aBlock);

  [v57 setConfigurationUpdateHandler:v63];
  _Block_release(v63);
  v64 = v57;
  v65 = String._bridgeToObjectiveC()();
  [v64 setAccessibilityLabel:v65];

  v66 = v64;
  [v66 setShowsLargeContentViewer:1];
  v67 = String._bridgeToObjectiveC()();
  [v66 setLargeContentTitle:v67];

  [v66 setLargeContentImage:0];
  v68 = objc_allocWithZone(UILargeContentViewerInteraction);
  v69 = [v68 initWithDelegate:v87];
  [v66 addInteraction:v69];

  v70 = [v66 titleLabel];
  if (v70)
  {
    v71 = v70;
    [v70 setTextAlignment:1];
  }

  v72 = [v66 heightAnchor];
  v73 = [v72 constraintGreaterThanOrEqualToConstant:34.0];

  [v73 setActive:1];

  (*(v94 + 8))(v93, v46);
  *(v85 + 32) = v66;
  v74 = objc_allocWithZone(UIStackView);
  sub_100006370(0, &qword_1019F6D00, UIView_ptr);
  v75 = Array._bridgeToObjectiveC()().super.isa;

  v76 = [v74 initWithArrangedSubviews:v75];

  [v76 setAxis:0];
  [v76 setAlignment:0];
  [v76 setDistribution:0];
  [v76 setSpacing:12.0];
  v34 = v76;
  v77 = [v34 heightAnchor];
  v78 = [v77 constraintGreaterThanOrEqualToConstant:34.0];

  [v78 setActive:1];
  return v34;
}

BOOL sub_1012325D4()
{
  v0 = sub_100B89DF0();
  v1 = sub_100B89C9C();
  v2 = sub_100B89F44();
  return (((v0 || v1) | v2 | (v2 >> 8)) & 1) == 0;
}

id sub_10123263C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CRLiOSMiniFormatterArrangeBuilder();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1012326D8(int a1)
{
  v1 = a1;
  if (a1 > 2)
  {
LABEL_7:
    switch(v1)
    {
      case 3:
LABEL_14:
        v8 = String._bridgeToObjectiveC()();
        v9 = [objc_opt_self() systemImageNamed:v8];

        if (v9)
        {
          return;
        }

        __break(1u);
        goto LABEL_16;
      case 4:
LABEL_18:
        v12 = String._bridgeToObjectiveC()();
        v13 = [objc_opt_self() systemImageNamed:v12];

        if (!v13)
        {
          __break(1u);
        }

        return;
      case 5:
        v4 = String._bridgeToObjectiveC()();
        v5 = [objc_opt_self() systemImageNamed:v4];

        if (!v5)
        {
          __break(1u);
          goto LABEL_12;
        }

        break;
    }

    return;
  }

  switch(a1)
  {
    case 0:
LABEL_12:
      v6 = String._bridgeToObjectiveC()();
      v7 = [objc_opt_self() systemImageNamed:v6];

      if (v7)
      {
        return;
      }

      __break(1u);
      goto LABEL_14;
    case 1:
LABEL_16:
      v10 = String._bridgeToObjectiveC()();
      v11 = [objc_opt_self() systemImageNamed:v10];

      if (v11)
      {
        return;
      }

      __break(1u);
      goto LABEL_18;
    case 2:
      v2 = String._bridgeToObjectiveC()();
      v3 = [objc_opt_self() systemImageNamed:v2];

      if (!v3)
      {
        __break(1u);
        goto LABEL_7;
      }

      break;
  }
}

uint64_t sub_101232938(unsigned int a1)
{
  v1 = 0;
  if (a1 > 2)
  {
    if (a1 == 3 || a1 == 4 || a1 == 5)
    {
      goto LABEL_7;
    }
  }

  else if (a1 <= 2)
  {
LABEL_7:
    v2 = [objc_opt_self() mainBundle];
    v3 = String._bridgeToObjectiveC()();
    v4 = String._bridgeToObjectiveC()();
    v5 = [v2 localizedStringForKey:v3 value:v4 table:0];

    v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return v1;
}

id sub_101232A98(unint64_t a1)
{
  v1 = 0;
  if (a1 > 1)
  {
    if (a1 == 2 || a1 == 3)
    {
      goto LABEL_6;
    }
  }

  else if (a1 <= 1)
  {
LABEL_6:
    v2 = String._bridgeToObjectiveC()();
    v1 = [objc_opt_self() imageNamed:v2];
  }

  return v1;
}

uint64_t sub_101232B6C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v4;
}

uint64_t type metadata accessor for CRLSpringLayerAnimation(uint64_t a1)
{
  result = qword_101A2DF68;
  if (!qword_101A2DF68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_101232E80(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_1005F8CFC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_101232F28(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 316))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 304);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_101232F84(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
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
    *(result + 312) = 0;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 316) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 316) = 0;
    }

    if (a2)
    {
      *(result + 304) = a2;
    }
  }

  return result;
}

uint64_t sub_10123303C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLLayerAnimationDisplayLink.Handler(0);
  v44 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v39[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1005B981C(&qword_1019F57A8, &unk_101470220);
  __chkstk_darwin(v7 - 8);
  v42 = &v39[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v39[-v10];
  v12 = sub_1005B981C(qword_101A2DFD0, &qword_1014D4618);
  __chkstk_darwin(v12);
  v43 = &v39[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v16 = &v39[-v15];
  v17 = type metadata accessor for CRLSpringLayerAnimation(0);
  Strong = swift_unknownObjectWeakLoadStrong();
  v19 = swift_unknownObjectWeakLoadStrong();
  v20 = v19;
  if (Strong)
  {
    if (!v19)
    {

      goto LABEL_23;
    }

    v41 = v6;
    sub_100006370(0, &qword_1019FFFF0, CALayer_ptr);
    v21 = static NSObject.== infix(_:_:)();

    if ((v21 & 1) == 0)
    {
LABEL_23:
      v35 = 0;
      return v35 & 1;
    }
  }

  else
  {
    v41 = v6;
    if (v19)
    {

      goto LABEL_23;
    }
  }

  if ((sub_101235DF4(a2, a1) & 1) == 0)
  {
    goto LABEL_23;
  }

  v22 = *(v17 + 28);
  v23 = *(v12 + 48);
  sub_10000BE14(a1 + v22, v16, &qword_1019F57A8, &unk_101470220);
  v24 = a2 + v22;
  v25 = v23;
  sub_10000BE14(v24, &v16[v23], &qword_1019F57A8, &unk_101470220);
  v26 = v44 + 48;
  v27 = *(v44 + 48);
  if (v27(v16, 1, v4) == 1)
  {
    if (v27(&v16[v25], 1, v4) == 1)
    {
      v44 = v26;
      sub_10000CAAC(v16, &qword_1019F57A8, &unk_101470220);
      goto LABEL_16;
    }

LABEL_14:
    v28 = v16;
LABEL_22:
    sub_10000CAAC(v28, qword_101A2DFD0, &qword_1014D4618);
    goto LABEL_23;
  }

  sub_10000BE14(v16, v11, &qword_1019F57A8, &unk_101470220);
  if (v27(&v16[v25], 1, v4) == 1)
  {
    sub_101235F4C(v11, type metadata accessor for CRLLayerAnimationDisplayLink.Handler);
    goto LABEL_14;
  }

  v44 = v26;
  v29 = &v16[v25];
  v30 = v41;
  sub_101235FAC(v29, v41, type metadata accessor for CRLLayerAnimationDisplayLink.Handler);
  v40 = static UUID.== infix(_:_:)();
  sub_101235F4C(v30, type metadata accessor for CRLLayerAnimationDisplayLink.Handler);
  sub_101235F4C(v11, type metadata accessor for CRLLayerAnimationDisplayLink.Handler);
  sub_10000CAAC(v16, &qword_1019F57A8, &unk_101470220);
  if ((v40 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_16:
  v31 = *(v17 + 32);
  v32 = *(v12 + 48);
  v33 = a1 + v31;
  v34 = v43;
  sub_10000BE14(v33, v43, &qword_1019F57A8, &unk_101470220);
  sub_10000BE14(a2 + v31, &v34[v32], &qword_1019F57A8, &unk_101470220);
  if (v27(v34, 1, v4) != 1)
  {
    v36 = v42;
    sub_10000BE14(v34, v42, &qword_1019F57A8, &unk_101470220);
    if (v27(&v34[v32], 1, v4) != 1)
    {
      v38 = v41;
      sub_101235FAC(&v34[v32], v41, type metadata accessor for CRLLayerAnimationDisplayLink.Handler);
      v35 = static UUID.== infix(_:_:)();
      sub_101235F4C(v38, type metadata accessor for CRLLayerAnimationDisplayLink.Handler);
      sub_101235F4C(v36, type metadata accessor for CRLLayerAnimationDisplayLink.Handler);
      sub_10000CAAC(v34, &qword_1019F57A8, &unk_101470220);
      return v35 & 1;
    }

    sub_101235F4C(v36, type metadata accessor for CRLLayerAnimationDisplayLink.Handler);
    goto LABEL_21;
  }

  if (v27(&v34[v32], 1, v4) != 1)
  {
LABEL_21:
    v28 = v34;
    goto LABEL_22;
  }

  sub_10000CAAC(v34, &qword_1019F57A8, &unk_101470220);
  v35 = 1;
  return v35 & 1;
}

uint64_t sub_1012335AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLLayerAnimationDisplayLink.Handler(0);
  v46 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v41[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1005B981C(&qword_1019F57A8, &unk_101470220);
  __chkstk_darwin(v7 - 8);
  v44 = &v41[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v41[-v10];
  v12 = sub_1005B981C(qword_101A2DFD0, &qword_1014D4618);
  __chkstk_darwin(v12);
  v45 = &v41[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v16 = &v41[-v15];
  v17 = type metadata accessor for CRLCanvasLayerAnimation(0);
  Strong = swift_unknownObjectWeakLoadStrong();
  v19 = swift_unknownObjectWeakLoadStrong();
  v20 = v19;
  if (Strong)
  {
    if (!v19)
    {

      goto LABEL_23;
    }

    v43 = v6;
    sub_100006370(0, &qword_1019FFFF0, CALayer_ptr);
    v21 = static NSObject.== infix(_:_:)();

    if ((v21 & 1) == 0)
    {
LABEL_23:
      v37 = 0;
      return v37 & 1;
    }
  }

  else
  {
    v43 = v6;
    if (v19)
    {

      goto LABEL_23;
    }
  }

  v22 = (a1 + v17[12]);
  v23 = v22[3];
  sub_100020E58(v22, v23);
  if (!sub_1007D01F8(a2 + v17[12], v23))
  {
    goto LABEL_23;
  }

  v24 = v17[13];
  v25 = *(v12 + 48);
  sub_10000BE14(a1 + v24, v16, &qword_1019F57A8, &unk_101470220);
  v26 = a2 + v24;
  v27 = v25;
  sub_10000BE14(v26, &v16[v25], &qword_1019F57A8, &unk_101470220);
  v28 = v46 + 48;
  v29 = *(v46 + 48);
  if (v29(v16, 1, v4) == 1)
  {
    if (v29(&v16[v27], 1, v4) == 1)
    {
      v46 = v28;
      sub_10000CAAC(v16, &qword_1019F57A8, &unk_101470220);
      goto LABEL_16;
    }

LABEL_14:
    v30 = v16;
LABEL_22:
    sub_10000CAAC(v30, qword_101A2DFD0, &qword_1014D4618);
    goto LABEL_23;
  }

  sub_10000BE14(v16, v11, &qword_1019F57A8, &unk_101470220);
  if (v29(&v16[v27], 1, v4) == 1)
  {
    sub_101235F4C(v11, type metadata accessor for CRLLayerAnimationDisplayLink.Handler);
    goto LABEL_14;
  }

  v46 = v28;
  v31 = &v16[v27];
  v32 = v43;
  sub_101235FAC(v31, v43, type metadata accessor for CRLLayerAnimationDisplayLink.Handler);
  v42 = static UUID.== infix(_:_:)();
  sub_101235F4C(v32, type metadata accessor for CRLLayerAnimationDisplayLink.Handler);
  sub_101235F4C(v11, type metadata accessor for CRLLayerAnimationDisplayLink.Handler);
  sub_10000CAAC(v16, &qword_1019F57A8, &unk_101470220);
  if ((v42 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_16:
  v33 = v17[14];
  v34 = *(v12 + 48);
  v35 = a1 + v33;
  v36 = v45;
  sub_10000BE14(v35, v45, &qword_1019F57A8, &unk_101470220);
  sub_10000BE14(a2 + v33, &v36[v34], &qword_1019F57A8, &unk_101470220);
  if (v29(v36, 1, v4) != 1)
  {
    v38 = v44;
    sub_10000BE14(v36, v44, &qword_1019F57A8, &unk_101470220);
    if (v29(&v36[v34], 1, v4) != 1)
    {
      v40 = v43;
      sub_101235FAC(&v36[v34], v43, type metadata accessor for CRLLayerAnimationDisplayLink.Handler);
      v37 = static UUID.== infix(_:_:)();
      sub_101235F4C(v40, type metadata accessor for CRLLayerAnimationDisplayLink.Handler);
      sub_101235F4C(v38, type metadata accessor for CRLLayerAnimationDisplayLink.Handler);
      sub_10000CAAC(v36, &qword_1019F57A8, &unk_101470220);
      return v37 & 1;
    }

    sub_101235F4C(v38, type metadata accessor for CRLLayerAnimationDisplayLink.Handler);
    goto LABEL_21;
  }

  if (v29(&v36[v34], 1, v4) != 1)
  {
LABEL_21:
    v30 = v36;
    goto LABEL_22;
  }

  sub_10000CAAC(v36, &qword_1019F57A8, &unk_101470220);
  v37 = 1;
  return v37 & 1;
}

uint64_t sub_101233B40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLLayerAnimationDisplayLink.Handler(0);
  v44 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v39[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1005B981C(&qword_1019F57A8, &unk_101470220);
  __chkstk_darwin(v7 - 8);
  v42 = &v39[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v39[-v10];
  v12 = sub_1005B981C(qword_101A2DFD0, &qword_1014D4618);
  __chkstk_darwin(v12);
  v43 = &v39[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v16 = &v39[-v15];
  v17 = type metadata accessor for CRLBasicLayerAnimation(0);
  Strong = swift_unknownObjectWeakLoadStrong();
  v19 = swift_unknownObjectWeakLoadStrong();
  v20 = v19;
  if (Strong)
  {
    if (!v19)
    {

      goto LABEL_23;
    }

    v41 = v6;
    sub_100006370(0, &qword_1019FFFF0, CALayer_ptr);
    v21 = static NSObject.== infix(_:_:)();

    if ((v21 & 1) == 0)
    {
LABEL_23:
      v35 = 0;
      return v35 & 1;
    }
  }

  else
  {
    v41 = v6;
    if (v19)
    {

      goto LABEL_23;
    }
  }

  if ((sub_101235CA0(a2, a1) & 1) == 0)
  {
    goto LABEL_23;
  }

  v22 = *(v17 + 28);
  v23 = *(v12 + 48);
  sub_10000BE14(a1 + v22, v16, &qword_1019F57A8, &unk_101470220);
  v24 = a2 + v22;
  v25 = v23;
  sub_10000BE14(v24, &v16[v23], &qword_1019F57A8, &unk_101470220);
  v26 = v44 + 48;
  v27 = *(v44 + 48);
  if (v27(v16, 1, v4) == 1)
  {
    if (v27(&v16[v25], 1, v4) == 1)
    {
      v44 = v26;
      sub_10000CAAC(v16, &qword_1019F57A8, &unk_101470220);
      goto LABEL_16;
    }

LABEL_14:
    v28 = v16;
LABEL_22:
    sub_10000CAAC(v28, qword_101A2DFD0, &qword_1014D4618);
    goto LABEL_23;
  }

  sub_10000BE14(v16, v11, &qword_1019F57A8, &unk_101470220);
  if (v27(&v16[v25], 1, v4) == 1)
  {
    sub_101235F4C(v11, type metadata accessor for CRLLayerAnimationDisplayLink.Handler);
    goto LABEL_14;
  }

  v44 = v26;
  v29 = &v16[v25];
  v30 = v41;
  sub_101235FAC(v29, v41, type metadata accessor for CRLLayerAnimationDisplayLink.Handler);
  v40 = static UUID.== infix(_:_:)();
  sub_101235F4C(v30, type metadata accessor for CRLLayerAnimationDisplayLink.Handler);
  sub_101235F4C(v11, type metadata accessor for CRLLayerAnimationDisplayLink.Handler);
  sub_10000CAAC(v16, &qword_1019F57A8, &unk_101470220);
  if ((v40 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_16:
  v31 = *(v17 + 32);
  v32 = *(v12 + 48);
  v33 = a1 + v31;
  v34 = v43;
  sub_10000BE14(v33, v43, &qword_1019F57A8, &unk_101470220);
  sub_10000BE14(a2 + v31, &v34[v32], &qword_1019F57A8, &unk_101470220);
  if (v27(v34, 1, v4) != 1)
  {
    v36 = v42;
    sub_10000BE14(v34, v42, &qword_1019F57A8, &unk_101470220);
    if (v27(&v34[v32], 1, v4) != 1)
    {
      v38 = v41;
      sub_101235FAC(&v34[v32], v41, type metadata accessor for CRLLayerAnimationDisplayLink.Handler);
      v35 = static UUID.== infix(_:_:)();
      sub_101235F4C(v38, type metadata accessor for CRLLayerAnimationDisplayLink.Handler);
      sub_101235F4C(v36, type metadata accessor for CRLLayerAnimationDisplayLink.Handler);
      sub_10000CAAC(v34, &qword_1019F57A8, &unk_101470220);
      return v35 & 1;
    }

    sub_101235F4C(v36, type metadata accessor for CRLLayerAnimationDisplayLink.Handler);
    goto LABEL_21;
  }

  if (v27(&v34[v32], 1, v4) != 1)
  {
LABEL_21:
    v28 = v34;
    goto LABEL_22;
  }

  sub_10000CAAC(v34, &qword_1019F57A8, &unk_101470220);
  v35 = 1;
  return v35 & 1;
}

uint64_t sub_1012340B0(void *a1)
{
  v3 = type metadata accessor for CRLSpringLayerAnimation(0);
  __chkstk_darwin(v3);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000630C(a1, &v57);
  sub_1005B981C(&qword_1019FA4B0, &unk_101472F40);
  if (swift_dynamicCast())
  {
    sub_100005070(a1);
    memcpy(v58, v56, 0x13CuLL);
    return sub_101235C68(v58, v1);
  }

  memset(v56, 0, 304);
  v56[38] = 1;
  LODWORD(v56[39]) = 0;
  sub_10000CAAC(v56, &qword_101A00A20, &qword_1014D4600);
  v54 = sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  v53 = a1;
  sub_10000630C(a1, v58);
  v8 = String.init<A>(describing:)();
  v10 = v9;
  *(inited + 56) = &type metadata for String;
  v14 = sub_1000053B0();
  *(inited + 32) = v8;
  v11 = inited + 32;
  *(inited + 64) = v14;
  *(inited + 40) = v10;
  sub_101235C04(v1, v5);
  v12 = String.init<A>(describing:)();
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v14;
  v55 = v14;
  *(inited + 72) = v12;
  *(inited + 80) = v13;
  v52 = objc_opt_self();
  LODWORD(v14) = [v52 _atomicIncrementAssertCount];
  v58[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(inited, v58, "Tried to assign an invalid CRLLayerAnimationDef %@ to spring animation %@", 73, 2u);
  StaticString.description.getter("def", 3, 2);
  v15 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/Animation/Animations/CRLSpringLayerAnimation.swift", 120, 2);
  v16 = String._bridgeToObjectiveC()();

  v17 = [v16 lastPathComponent];

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  if (qword_1019F20A0 != -1)
  {
    goto LABEL_34;
  }

LABEL_4:
  v21 = static OS_os_log.crlAssert;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_10146CA70;
  *(v22 + 56) = &type metadata for Int32;
  *(v22 + 64) = &protocol witness table for Int32;
  *(v22 + 32) = v14;
  v23 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(v22 + 96) = v23;
  v24 = sub_1005CF04C();
  *(v22 + 72) = v15;
  v25 = v55;
  *(v22 + 136) = &type metadata for String;
  *(v22 + 144) = v25;
  *(v22 + 104) = v24;
  *(v22 + 112) = v18;
  *(v22 + 120) = v20;
  *(v22 + 176) = &type metadata for UInt;
  *(v22 + 184) = &protocol witness table for UInt;
  *(v22 + 152) = 54;
  v26 = v58[0];
  *(v22 + 216) = v23;
  *(v22 + 224) = v24;
  *(v22 + 192) = v26;
  v27 = v15;
  v28 = v26;
  v29 = static os_log_type_t.error.getter();
  sub_100005404(v21, &_mh_execute_header, v29, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v22);
  swift_setDeallocating();
  v54 = sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v30 = static os_log_type_t.error.getter();
  sub_100005404(v21, &_mh_execute_header, v30, "Tried to assign an invalid CRLLayerAnimationDef %@ to spring animation %@", 73, 2, inited);

  type metadata accessor for __VaListBuilder();
  v15 = swift_allocObject();
  v15[2] = 8;
  v15[3] = 0;
  v31 = v15 + 3;
  v15[4] = 0;
  v15[5] = 0;
  v55 = inited;
  v14 = *(inited + 16);
  if (v14)
  {
    v32 = 0;
    inited = 40;
    while (1)
    {
      v33 = (v11 + 40 * v32);
      v18 = v33[3];
      v20 = sub_100020E58(v33, v18);
      v34 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v35 = *v31;
      v36 = *(v34 + 16);
      v37 = __OFADD__(*v31, v36);
      v38 = *v31 + v36;
      if (v37)
      {
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        swift_once();
        goto LABEL_4;
      }

      v20 = v15[4];
      if (v20 >= v38)
      {
        goto LABEL_21;
      }

      if (v20 + 0x4000000000000000 < 0)
      {
        goto LABEL_32;
      }

      v18 = v15[5];
      if (2 * v20 > v38)
      {
        v38 = 2 * v20;
      }

      v15[4] = v38;
      if ((v38 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_33;
      }

      v39 = v11;
      v40 = v34;
      v41 = swift_slowAlloc();
      v42 = v41;
      v15[5] = v41;
      if (v18)
      {
        break;
      }

      v34 = v40;
      v11 = v39;
      inited = 40;
      if (!v42)
      {
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

LABEL_22:
      v44 = *(v34 + 16);
      if (v44)
      {
        v45 = (v34 + 32);
        v46 = *v31;
        while (1)
        {
          v47 = *v45++;
          *&v42[8 * v46] = v47;
          v46 = *v31 + 1;
          if (__OFADD__(*v31, 1))
          {
            break;
          }

          *v31 = v46;
          if (!--v44)
          {
            goto LABEL_6;
          }
        }

        __break(1u);
        goto LABEL_31;
      }

LABEL_6:

      if (++v32 == v14)
      {
        goto LABEL_29;
      }
    }

    if (v41 != v18 || v41 >= &v18[8 * v35])
    {
      memmove(v41, v18, 8 * v35);
    }

    v20 = v15;
    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v34 = v40;
    v11 = v39;
    inited = 40;
LABEL_21:
    v42 = v15[5];
    if (!v42)
    {
      goto LABEL_28;
    }

    goto LABEL_22;
  }

LABEL_29:
  v48 = __VaListBuilder.va_list()();
  StaticString.description.getter("def", 3, 2);
  v49 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/Animation/Animations/CRLSpringLayerAnimation.swift", 120, 2);
  v50 = String._bridgeToObjectiveC()();

  StaticString.description.getter("Tried to assign an invalid CRLLayerAnimationDef %@ to spring animation %@", 73, 2);
  v51 = String._bridgeToObjectiveC()();

  [v52 handleFailureInFunction:v49 file:v50 lineNumber:54 isFatal:0 format:v51 args:v48];

  swift_setDeallocating();
  swift_arrayDestroy();
  return sub_100005070(v53);
}

double sub_10123476C()
{
  sub_100915954(v10);
  v0 = CACurrentMediaTime();
  sub_10000BE14(v10, v8, &unk_101A09F80, &unk_10146DB30);
  sub_10000BE14(v8, v6, &unk_101A09F80, &unk_10146DB30);
  v1 = v7;
  sub_10000CAAC(v6, &unk_101A09F80, &unk_10146DB30);
  if (!v1)
  {
    sub_100915954(v6);
    sub_10000CAAC(v8, &unk_101A09F80, &unk_10146DB30);
    v8[3] = v6[3];
    v8[4] = v6[4];
    v9 = v7;
    v8[0] = v6[0];
    v8[1] = v6[1];
    v8[2] = v6[2];
  }

  v2 = sub_101234CC0(v8, v0);
  sub_10000CAAC(v8, &unk_101A09F80, &unk_10146DB30);
  sub_10000CAAC(v10, &unk_101A09F80, &unk_10146DB30);
  [v2 duration];
  v4 = v3;

  return v4;
}

uint64_t sub_1012348A8(uint64_t a1)
{
  v3 = sub_1005B981C(&qword_101A2DFC8, &unk_1014D4608);
  __chkstk_darwin(v3 - 8);
  v5 = &v15[-v4 - 8];
  v6 = type metadata accessor for CRLSpringLayerAnimation(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_10000630C(a1, v15);
  sub_1005B981C(&qword_1019F5870, &qword_101470360);
  v10 = swift_dynamicCast();
  v11 = *(v7 + 56);
  if (v10)
  {
    v11(v5, 0, 1, v6);
    sub_101235FAC(v5, v9, type metadata accessor for CRLSpringLayerAnimation);
    v12 = sub_10123303C(v9, v1);
    sub_101235F4C(v9, type metadata accessor for CRLSpringLayerAnimation);
  }

  else
  {
    v11(v5, 1, 1, v6);
    sub_10000CAAC(v5, &qword_101A2DFC8, &unk_1014D4608);
    v12 = 0;
  }

  return v12 & 1;
}

float sub_101234A80(float a1)
{
  sub_100915954(v13);
  v2 = CACurrentMediaTime();
  sub_10000BE14(v13, v11, &unk_101A09F80, &unk_10146DB30);
  sub_10000BE14(v11, v9, &unk_101A09F80, &unk_10146DB30);
  v3 = v10;
  sub_10000CAAC(v9, &unk_101A09F80, &unk_10146DB30);
  if (!v3)
  {
    sub_100915954(v9);
    sub_10000CAAC(v11, &unk_101A09F80, &unk_10146DB30);
    v11[3] = v9[3];
    v11[4] = v9[4];
    v12 = v10;
    v11[0] = v9[0];
    v11[1] = v9[1];
    v11[2] = v9[2];
  }

  v4 = sub_101234CC0(v11, v2);
  sub_10000CAAC(v11, &unk_101A09F80, &unk_10146DB30);
  sub_10000CAAC(v13, &unk_101A09F80, &unk_10146DB30);
  *&v5 = a1;
  [v4 solveForInput:v5];
  v7 = v6;

  return v7;
}

id sub_101234BC4(uint64_t a1, double a2)
{
  sub_10000BE14(a1, v8, &unk_101A09F80, &unk_10146DB30);
  sub_10000BE14(v8, v6, &unk_101A09F80, &unk_10146DB30);
  v3 = v7;
  sub_10000CAAC(v6, &unk_101A09F80, &unk_10146DB30);
  if (!v3)
  {
    sub_100915954(v6);
    sub_10000CAAC(v8, &unk_101A09F80, &unk_10146DB30);
    v8[3] = v6[3];
    v8[4] = v6[4];
    v9 = v7;
    v8[0] = v6[0];
    v8[1] = v6[1];
    v8[2] = v6[2];
  }

  v4 = sub_101234CC0(v8, a2);
  sub_10000CAAC(v8, &unk_101A09F80, &unk_10146DB30);
  return v4;
}

id sub_101234CC0(uint64_t a1, double a2)
{
  v3 = v2;
  sub_10000BE14(a1, v44, &unk_101A09F80, &unk_10146DB30);
  sub_10000BE14(v44, &v37, &unk_101A09F80, &unk_10146DB30);
  v5 = v42;
  sub_10000CAAC(&v37, &unk_101A09F80, &unk_10146DB30);
  if (!v5)
  {
    sub_100915954(&v37);
    sub_10000CAAC(v44, &unk_101A09F80, &unk_10146DB30);
    v44[2] = v39;
    v44[3] = v40;
    v44[4] = v41;
    v45 = v42;
    v44[0] = v37;
    v44[1] = v38;
  }

  sub_1008DA1EC(v2, &v37);
  v6 = sub_100B7694C();
  sub_100B76520(v6);
  v7 = String._bridgeToObjectiveC()();

  v8 = [objc_opt_self() animationWithKeyPath:v7];

  sub_1007D0604(&v37);
  sub_10000BE14(v44, &v31, &unk_101A09F80, &unk_10146DB30);
  if (v36)
  {
    v40 = v34;
    v41 = v35;
    v42 = v36;
    v37 = v31;
    v38 = v32;
    v39 = v33;
    sub_10000BE14(&v37, &v31, &unk_1019F4D00, &unk_10146E7F0);
    v9 = *(&v32 + 1);
    if (*(&v32 + 1))
    {
      v10 = sub_100020E58(&v31, *(&v32 + 1));
      v11 = *(v9 - 8);
      v12 = __chkstk_darwin(v10);
      v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v11 + 16))(v14, v12);
      v15 = v8;
      v16 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v11 + 8))(v14, v9);
      sub_100005070(&v31);
    }

    else
    {
      v17 = v8;
      v16 = 0;
    }

    [v8 setFromValue:v16];
    swift_unknownObjectRelease();
    sub_10000BE14(&v39, &v31, &unk_1019F4D00, &unk_10146E7F0);
    v18 = *(&v32 + 1);
    if (*(&v32 + 1))
    {
      v19 = sub_100020E58(&v31, *(&v32 + 1));
      v20 = *(v18 - 8);
      v21 = __chkstk_darwin(v19);
      v23 = &v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v20 + 16))(v23, v21);
      v24 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v20 + 8))(v23, v18);
      sub_100005070(&v31);
    }

    else
    {
      v24 = 0;
    }

    [v8 setToValue:v24];

    swift_unknownObjectRelease();
    sub_1005F8A64(&v37);
  }

  else
  {
    sub_10000CAAC(&v31, &unk_101A09F80, &unk_10146DB30);
  }

  [v8 setDamping:*v3];
  [v8 setInitialVelocity:v3[1]];
  [v8 setMass:v3[2]];
  [v8 setStiffness:v3[3]];
  sub_1008DA1EC(v3, &v37);
  v25 = v43;
  if (v43)
  {
    v26 = v8;
    v27 = v25;
  }

  else
  {
    v27 = [v8 fillMode];
  }

  v28 = v25;
  sub_1007D0604(&v37);
  [v8 setFillMode:v27];

  [v8 settlingDuration];
  [v8 setDuration:?];
  [v8 setBeginTime:v3[4] + a2];

  sub_10000CAAC(v44, &unk_101A09F80, &unk_10146DB30);
  return v8;
}

uint64_t sub_1012351C8@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for CRLSpringLayerAnimation.Def;
  a1[4] = sub_1008DA198();
  v3 = swift_allocObject();
  *a1 = v3;

  return sub_1008DA1EC(v1, v3 + 16);
}

void (*sub_10123522C(uint64_t **a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[10] = v1;
  v3[3] = &type metadata for CRLSpringLayerAnimation.Def;
  v3[4] = sub_1008DA198();
  v5 = swift_allocObject();
  *v4 = v5;
  sub_1008DA1EC(v1, v5 + 16);
  return sub_1012352D4;
}

void sub_1012352D4(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_10000630C(*a1, (v2 + 5));
    sub_1012340B0(v2 + 5);
    sub_100005070(v2);
  }

  else
  {
    sub_1012340B0(*a1);
  }

  free(v2);
}

Swift::Int sub_101235348()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_101235BBC(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1012353E4(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_101235BBC(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_101235464(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_101235BBC(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

double (*sub_1012354FC(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *(v1 + 32);
  return sub_101235528;
}

double sub_101235528(uint64_t a1)
{
  result = *a1;
  *(*(a1 + 8) + 32) = *a1;
  return result;
}

id sub_10123553C(uint64_t a1, double a2)
{
  v3 = v2;
  v6 = sub_100B7694C();
  sub_100B76520(v6);
  v7 = String._bridgeToObjectiveC()();

  v8 = [objc_opt_self() animationWithKeyPath:v7];

  sub_10000BE14(a1, &v31, &unk_101A09F80, &unk_10146DB30);
  if (v36)
  {
    v38[1] = v34;
    v38[2] = v35;
    v39 = v36;
    v37[0] = v31;
    v37[1] = v32;
    v38[0] = v33;
    sub_10000BE14(v37, &v31, &unk_1019F4D00, &unk_10146E7F0);
    v9 = *(&v32 + 1);
    if (*(&v32 + 1))
    {
      v10 = sub_100020E58(&v31, *(&v32 + 1));
      v11 = *(v9 - 8);
      v12 = __chkstk_darwin(v10);
      v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v11 + 16))(v14, v12);
      v15 = v8;
      v16 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v11 + 8))(v14, v9);
      sub_100005070(&v31);
    }

    else
    {
      v17 = v8;
      v16 = 0;
    }

    [v8 setFromValue:v16];
    swift_unknownObjectRelease();
    sub_10000BE14(v38, &v31, &unk_1019F4D00, &unk_10146E7F0);
    v18 = *(&v32 + 1);
    if (*(&v32 + 1))
    {
      v19 = sub_100020E58(&v31, *(&v32 + 1));
      v20 = *(v18 - 8);
      v21 = __chkstk_darwin(v19);
      v23 = &v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v20 + 16))(v23, v21);
      v24 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v20 + 8))(v23, v18);
      sub_100005070(&v31);
    }

    else
    {
      v24 = 0;
    }

    [v8 setToValue:v24];

    swift_unknownObjectRelease();
    sub_1005F8A64(v37);
  }

  else
  {
    sub_10000CAAC(&v31, &unk_101A09F80, &unk_10146DB30);
  }

  [v8 setDamping:*v3];
  [v8 setInitialVelocity:*(v3 + 8)];
  [v8 setMass:*(v3 + 16)];
  [v8 setStiffness:*(v3 + 24)];
  v25 = *(v3 + 304);
  if (v25)
  {
    v26 = v8;
    v27 = v25;
  }

  else
  {
    v27 = [v8 fillMode];
  }

  v28 = v25;
  [v8 setFillMode:v27];

  [v8 settlingDuration];
  [v8 setDuration:?];
  [v8 setBeginTime:*(v3 + 32) + a2];

  return v8;
}

void *sub_101235980()
{
  v1 = *(v0 + 304);
  v2 = v1;
  return v1;
}

double sub_101235A14()
{
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v5 = 0u;
  v0 = CACurrentMediaTime();
  v1 = sub_10123553C(&v5, v0);
  sub_10000CAAC(&v5, &unk_101A09F80, &unk_10146DB30);
  [v1 duration];
  v3 = v2;

  return v3;
}

unint64_t sub_101235AA0(uint64_t a1)
{
  result = sub_101235AC8();
  *(a1 + 40) = result;
  return result;
}

unint64_t sub_101235AC8()
{
  result = qword_101A2DFB0;
  if (!qword_101A2DFB0)
  {
    result = swift_getWitnessTable(asc_1014D449C, &type metadata for CRLSpringLayerAnimation.Def, v0, v1);
    atomic_store(result, &qword_101A2DFB0);
  }

  return result;
}

uint64_t sub_101235B64(uint64_t a1)
{
  result = sub_101235BBC(&qword_101A2DFC0, type metadata accessor for CRLSpringLayerAnimation, byte_1014D4520);
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_101235BBC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_101235C04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLSpringLayerAnimation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_101235CA0(uint64_t a1, uint64_t a2)
{
  v11[3] = &type metadata for CRLBasicLayerAnimation.Def;
  v11[4] = sub_1005F907C();
  v11[0] = swift_allocObject();
  sub_1005F8AB8(a1, v11[0] + 16);
  sub_1005F8AB8(a2, v10);
  sub_10000630C(v11, v8);
  sub_1005B981C(&qword_1019FA4B0, &unk_101472F40);
  if (!swift_dynamicCast())
  {
    memset(v7, 0, 300);
    sub_1005F8B14(v10);
    sub_10000CAAC(v7, &qword_1019FA4B8, &unk_10147CA90);
    goto LABEL_5;
  }

  memcpy(__dst, v7, 0x12CuLL);
  v4 = sub_1006C0FF4(v10, __dst);
  sub_1005F8B14(__dst);
  sub_1005F8B14(v10);
  if ((v4 & 1) == 0)
  {
LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  v5 = 1;
LABEL_6:
  sub_100005070(v11);
  return v5;
}

uint64_t sub_101235DF4(uint64_t a1, uint64_t a2)
{
  v11[3] = &type metadata for CRLSpringLayerAnimation.Def;
  v11[4] = sub_1008DA198();
  v11[0] = swift_allocObject();
  sub_1008DA1EC(a1, v11[0] + 16);
  sub_1008DA1EC(a2, v10);
  sub_10000630C(v11, v8);
  sub_1005B981C(&qword_1019FA4B0, &unk_101472F40);
  if (!swift_dynamicCast())
  {
    memset(v7, 0, 304);
    *&v7[19] = 1;
    DWORD2(v7[19]) = 0;
    sub_1007D0604(v10);
    sub_10000CAAC(v7, &qword_101A00A20, &qword_1014D4600);
    goto LABEL_5;
  }

  memcpy(__dst, v7, 0x13CuLL);
  v4 = sub_101236014(v10, __dst);
  sub_1007D0604(__dst);
  sub_1007D0604(v10);
  if ((v4 & 1) == 0)
  {
LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  v5 = 1;
LABEL_6:
  sub_100005070(v11);
  return v5;
}

uint64_t sub_101235F4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_101235FAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_101236014(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  if ((sub_100B79004(a1 + 40, a2 + 40) & 1) == 0)
  {
    goto LABEL_28;
  }

  v4 = *(a2 + 304);
  if (*(a1 + 304))
  {
    if (v4)
    {
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;
      if (v5 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v7 == v8)
      {

        v9 = a2;
        v10 = a1;
        goto LABEL_16;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v9 = a2;
      v10 = a1;
      if (v12)
      {
LABEL_16:
        v13 = v10[312];
        v14 = v9[312];
        if (v13 == 2)
        {
          if (v14 != 2)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v15 = 0;
          if (v14 == 2 || ((v14 ^ v13) & 1) != 0)
          {
            return v15 & 1;
          }
        }

        v16 = v10[313];
        v17 = v9[313];
        if (v16 == 2)
        {
          if (v17 != 2)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v15 = 0;
          if (v17 == 2 || ((v17 ^ v16) & 1) != 0)
          {
            return v15 & 1;
          }
        }

        v18 = v10[314];
        v19 = v9[314];
        if (v18 == 2)
        {
          if (v19 != 2)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v15 = 0;
          if (v19 == 2 || ((v19 ^ v18) & 1) != 0)
          {
            return v15 & 1;
          }
        }

        v15 = v10[315] ^ v9[315] ^ 1;
        return v15 & 1;
      }
    }
  }

  else
  {
    v10 = a1;
    v9 = a2;
    if (!v4)
    {
      goto LABEL_16;
    }
  }

LABEL_28:
  v15 = 0;
  return v15 & 1;
}

uint64_t sub_101236208(void *a1)
{
  result = type metadata accessor for CheckedContinuation();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1012362B8()
{

  v1 = *(*v0 + 112);
  v2 = type metadata accessor for CheckedContinuation();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1012363C8()
{
  sub_1012362B8();

  return swift_deallocClassInstance();
}

id sub_10123643C()
{
  result = [objc_allocWithZone(type metadata accessor for CRLLayerAnimationDisplayLink()) init];
  qword_101AD9398 = result;
  return result;
}

void sub_101236528(void *a1)
{
  v3 = OBJC_IVAR____TtC8Freeform28CRLLayerAnimationDisplayLink_displayLink;
  v4 = *(v1 + OBJC_IVAR____TtC8Freeform28CRLLayerAnimationDisplayLink_displayLink);
  if (v4 && ([v4 setPaused:1], (v5 = *(v1 + v3)) != 0))
  {
    [v5 invalidate];
    v6 = *(v1 + v3);
  }

  else
  {
    v6 = 0;
  }

  *(v1 + v3) = a1;
  v9 = a1;

  v7 = *(v1 + v3);
  if (v7)
  {
    v8 = v7;
    [v8 setPaused:0];
  }
}

void sub_10123661C()
{
  if (*(v0 + OBJC_IVAR____TtC8Freeform28CRLLayerAnimationDisplayLink_startMediaTime + 8))
  {
    v1 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLLayerAnimationDisplayLink_displayLink);
    if (v1)
    {
      v2 = objc_opt_self();
      v3 = v1;
      v4 = [v2 _atomicIncrementAssertCount];
      aBlock[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, aBlock, "expected nil value, but non-nil found", 37, 2u);
      StaticString.description.getter("startDisplayLink()", 18, 2);
      v5 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/Animation/CRLLayerAnimationDisplayLink.swift", 114, 2);
      v6 = String._bridgeToObjectiveC()();

      v7 = [v6 lastPathComponent];

      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v11 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v4;
      v13 = sub_1005CF000();
      *(inited + 96) = v13;
      v14 = sub_101238E20(&qword_1019F52E0, sub_1005CF000, &protocol conformance descriptor for NSObject);
      *(inited + 104) = v14;
      *(inited + 72) = v5;
      *(inited + 136) = &type metadata for String;
      v15 = sub_1000053B0();
      *(inited + 112) = v8;
      *(inited + 120) = v10;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v15;
      *(inited + 152) = 94;
      v16 = aBlock[0];
      *(inited + 216) = v13;
      *(inited + 224) = v14;
      *(inited + 192) = v16;
      v17 = v5;
      v18 = v16;
      v19 = static os_log_type_t.error.getter();
      sub_100005404(v11, &_mh_execute_header, v19, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v20 = static os_log_type_t.error.getter();
      sub_100005404(v11, &_mh_execute_header, v20, "expected nil value, but non-nil found", 37, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v21 = swift_allocObject();
      v21[2] = 8;
      v21[3] = 0;
      v21[4] = 0;
      v21[5] = 0;
      v22 = __VaListBuilder.va_list()();
      StaticString.description.getter("startDisplayLink()", 18, 2);
      v23 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/Animation/CRLLayerAnimationDisplayLink.swift", 114, 2);
      v24 = String._bridgeToObjectiveC()();

      StaticString.description.getter("expected nil value, but non-nil found", 37, 2);
      v25 = String._bridgeToObjectiveC()();

      [v2 handleFailureInFunction:v23 file:v24 lineNumber:94 isFatal:0 format:v25 args:v22];
    }

    else
    {
      v48 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v49 = objc_allocWithZone(CRLDisplayLink);
      aBlock[4] = sub_101239010;
      aBlock[5] = v48;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = *"";
      aBlock[2] = sub_101238E68;
      aBlock[3] = &unk_1018B8A70;
      v50 = _Block_copy(aBlock);

      v51 = [v49 initWithHandler:v50];
      _Block_release(v50);

      v25 = v51;
      sub_101236528(v51);
    }
  }

  else
  {
    v26 = objc_opt_self();
    v27 = [v26 _atomicIncrementAssertCount];
    aBlock[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, aBlock, "expected nil value, but non-nil found", 37, 2u);
    StaticString.description.getter("startDisplayLink()", 18, 2);
    v28 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/Animation/CRLLayerAnimationDisplayLink.swift", 114, 2);
    v29 = String._bridgeToObjectiveC()();

    v30 = [v29 lastPathComponent];

    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v34 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v35 = swift_initStackObject();
    *(v35 + 16) = xmmword_10146CA70;
    *(v35 + 56) = &type metadata for Int32;
    *(v35 + 64) = &protocol witness table for Int32;
    *(v35 + 32) = v27;
    v36 = sub_1005CF000();
    *(v35 + 96) = v36;
    v37 = sub_101238E20(&qword_1019F52E0, sub_1005CF000, &protocol conformance descriptor for NSObject);
    *(v35 + 104) = v37;
    *(v35 + 72) = v28;
    *(v35 + 136) = &type metadata for String;
    v38 = sub_1000053B0();
    *(v35 + 112) = v31;
    *(v35 + 120) = v33;
    *(v35 + 176) = &type metadata for UInt;
    *(v35 + 184) = &protocol witness table for UInt;
    *(v35 + 144) = v38;
    *(v35 + 152) = 94;
    v39 = aBlock[0];
    *(v35 + 216) = v36;
    *(v35 + 224) = v37;
    *(v35 + 192) = v39;
    v40 = v28;
    v41 = v39;
    v42 = static os_log_type_t.error.getter();
    sub_100005404(v34, &_mh_execute_header, v42, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v35);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v43 = static os_log_type_t.error.getter();
    sub_100005404(v34, &_mh_execute_header, v43, "expected nil value, but non-nil found", 37, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v44 = swift_allocObject();
    v44[2] = 8;
    v44[3] = 0;
    v44[4] = 0;
    v44[5] = 0;
    v45 = __VaListBuilder.va_list()();
    StaticString.description.getter("startDisplayLink()", 18, 2);
    v46 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/Animation/CRLLayerAnimationDisplayLink.swift", 114, 2);
    v47 = String._bridgeToObjectiveC()();

    StaticString.description.getter("expected nil value, but non-nil found", 37, 2);
    v25 = String._bridgeToObjectiveC()();

    [v26 handleFailureInFunction:v46 file:v47 lineNumber:94 isFatal:0 format:v25 args:v45];
  }
}

void sub_101236E5C(double a1, double a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = Strong + OBJC_IVAR____TtC8Freeform28CRLLayerAnimationDisplayLink_startMediaTime;
    if (*(Strong + OBJC_IVAR____TtC8Freeform28CRLLayerAnimationDisplayLink_startMediaTime + 8) == 1)
    {
      *v8 = a1;
      *(v8 + 8) = 0;
    }

    sub_101237850(a1, a2);
  }
}

double sub_101236F30()
{
  v1 = v0 + OBJC_IVAR____TtC8Freeform28CRLLayerAnimationDisplayLink_startMediaTime;
  if ((*(v0 + OBJC_IVAR____TtC8Freeform28CRLLayerAnimationDisplayLink_startMediaTime + 8) & 1) != 0 || !*(v0 + OBJC_IVAR____TtC8Freeform28CRLLayerAnimationDisplayLink_displayLink))
  {
    v12 = (v0 + OBJC_IVAR____TtC8Freeform28CRLLayerAnimationDisplayLink_completionHandler);
    v13 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLLayerAnimationDisplayLink_completionHandler);
    if (v13)
    {
      v14 = v12[1];

      v13(v15);
      sub_1000C1014(v13, v14);
      v16 = *v12;
      v17 = v12[1];
      *v12 = 0;
      v12[1] = 0;

      return sub_1000C1014(v16, v17);
    }
  }

  else
  {
    *v1 = 0;
    *(v1 + 8) = 1;
    v2 = v0 + OBJC_IVAR____TtC8Freeform28CRLLayerAnimationDisplayLink_baseMediaTime;
    *v2 = 0;
    *(v2 + 8) = 1;
    v3 = v0 + OBJC_IVAR____TtC8Freeform28CRLLayerAnimationDisplayLink_previousTickMediaTime;
    *v3 = 0;
    *(v3 + 8) = 1;
    sub_101236528(0);
    sub_1012376F4();
    v4 = OBJC_IVAR____TtC8Freeform28CRLLayerAnimationDisplayLink_displayLinkAnimations;
    swift_beginAccess();
    *(v0 + v4) = 0;

    v6 = (v0 + OBJC_IVAR____TtC8Freeform28CRLLayerAnimationDisplayLink_completionHandler);
    v7 = *(v0 + OBJC_IVAR____TtC8Freeform28CRLLayerAnimationDisplayLink_completionHandler);
    if (v7)
    {
      v8 = v6[1];

      v7(v9);
      sub_1000C1014(v7, v8);
      v10 = *v6;
      v11 = v6[1];
      *v6 = 0;
      v6[1] = 0;
      return sub_1000C1014(v10, v11);
    }
  }

  return result;
}

void sub_1012370D4(void *a1, uint64_t a2, void *a3, double a4, double a5)
{
  v6 = *&v5[OBJC_IVAR____TtC8Freeform28CRLLayerAnimationDisplayLink_displayLink];
  if (v6)
  {
    v12 = v6;
    if (([v12 paused] & 1) == 0)
    {
      [v12 setPaused:1];
      v17 = v5;
      sub_1012376F4();
      v32 = a1[2];

      if (!v32)
      {
LABEL_12:
        v38 = OBJC_IVAR____TtC8Freeform28CRLLayerAnimationDisplayLink_displayLinkAnimations;
        swift_beginAccess();
        *&v17[v38] = a1;

        v39 = &v17[OBJC_IVAR____TtC8Freeform28CRLLayerAnimationDisplayLink_totalRunTime];
        *v39 = a5;
        v39[8] = 0;
        v40 = &v17[OBJC_IVAR____TtC8Freeform28CRLLayerAnimationDisplayLink_completionHandler];
        v41 = *&v17[OBJC_IVAR____TtC8Freeform28CRLLayerAnimationDisplayLink_completionHandler];
        v42 = *&v17[OBJC_IVAR____TtC8Freeform28CRLLayerAnimationDisplayLink_completionHandler + 8];
        *v40 = a2;
        *(v40 + 1) = a3;
        sub_1000C1014(v41, v42);
        v43 = &v17[OBJC_IVAR____TtC8Freeform28CRLLayerAnimationDisplayLink_baseMediaTime];
        *v43 = a4;
        v43[8] = 0;
        sub_10067F2EC(a2, a3);
        [v12 setPaused:0];
        goto LABEL_13;
      }

      v33 = 0;
      v15 = 0;
      while (1)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a1 = sub_10113CE44(a1);
        }

        if (v15 >= a1[2])
        {
          break;
        }

        ++v15;
        v35 = a1[v33 + 7];
        v34 = a1[v33 + 8];
        v36 = sub_10002A948(&a1[v33 + 4], v35);
        v37 = *(*(v34 + 16) + 24);
        v5 = v36;
        v37(v35);
        v33 += 5;
        if (v32 == v15)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
      goto LABEL_15;
    }
  }

  a3 = objc_opt_self();
  LODWORD(v12) = [a3 _atomicIncrementAssertCount];
  v44 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v44, "Called schedule(displayLinkAnimations:) without a running display link", 70, 2u);
  StaticString.description.getter("schedule(displayLinkAnimations:toRunAt:totalRunTime:completionHandler:)", 71, 2);
  v5 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/Animation/CRLLayerAnimationDisplayLink.swift", 114, 2);
  v13 = String._bridgeToObjectiveC()();

  v14 = [v13 lastPathComponent];

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  if (qword_1019F20A0 != -1)
  {
LABEL_15:
    swift_once();
  }

  v18 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v12;
  v20 = sub_1005CF000();
  *(inited + 96) = v20;
  v21 = sub_101238E20(&qword_1019F52E0, sub_1005CF000, &protocol conformance descriptor for NSObject);
  *(inited + 104) = v21;
  *(inited + 72) = v5;
  *(inited + 136) = &type metadata for String;
  v22 = sub_1000053B0();
  *(inited + 112) = v15;
  *(inited + 120) = v17;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v22;
  *(inited + 152) = 142;
  v23 = v44;
  *(inited + 216) = v20;
  *(inited + 224) = v21;
  *(inited + 192) = v23;
  v24 = v5;
  v25 = v23;
  v26 = static os_log_type_t.error.getter();
  sub_100005404(v18, &_mh_execute_header, v26, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v27 = static os_log_type_t.error.getter();
  sub_100005404(v18, &_mh_execute_header, v27, "Called schedule(displayLinkAnimations:) without a running display link", 70, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v28 = swift_allocObject();
  v28[2] = 8;
  v28[3] = 0;
  v28[4] = 0;
  v28[5] = 0;
  v29 = __VaListBuilder.va_list()();
  StaticString.description.getter("schedule(displayLinkAnimations:toRunAt:totalRunTime:completionHandler:)", 71, 2);
  v30 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/Animation/CRLLayerAnimationDisplayLink.swift", 114, 2);
  v31 = String._bridgeToObjectiveC()();

  StaticString.description.getter("Called schedule(displayLinkAnimations:) without a running display link", 70, 2);
  v12 = String._bridgeToObjectiveC()();

  [a3 handleFailureInFunction:v30 file:v31 lineNumber:142 isFatal:0 format:v12 args:v29];

LABEL_13:
}

id sub_101237604()
{
  sub_101236F30();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLLayerAnimationDisplayLink();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1012376F4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8Freeform28CRLLayerAnimationDisplayLink_displayLinkAnimations;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = *(v3 + 16);
    if (v4)
    {

      v5 = 0;
      for (i = 4; ; i += 5)
      {
        sub_10000630C(v3 + i * 8, v15);
        v8 = v16;
        v7 = v17;
        sub_10002A948(v15, v16);
        (*(*(v7 + 16) + 32))(v8);
        v10 = sub_1012364C8(v14);
        v11 = *v9;
        if (*v9)
        {
          v12 = v9;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v12 = v11;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v11 = sub_10113CE44(v11);
            *v12 = v11;
          }

          if (v5 >= v11[2])
          {
            __break(1u);
            return;
          }

          sub_100774FCC(&v11[i], v15);
        }

        (v10)(v14, 0);
        ++v5;
        sub_100005070(v15);
        if (v4 == v5)
        {

          return;
        }
      }
    }
  }
}

void sub_101237850(double a1, double a2)
{
  v3 = v2;
  v6 = type metadata accessor for CRLLayerAnimationDisplayLink.Handler(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v167 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1005B981C(&qword_1019F57A8, &unk_101470220);
  __chkstk_darwin(v10 - 8);
  v12 = &v167 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v167 - v14;
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  __chkstk_darwin(v18);
  __chkstk_darwin(v19);
  v186 = &v167 - v20;
  __chkstk_darwin(v21);
  v187 = &v167 - v22;
  __chkstk_darwin(v23);
  v185 = &v167 - v27;
  v28 = *&v3[OBJC_IVAR____TtC8Freeform28CRLLayerAnimationDisplayLink_displayLink];
  if (!v28)
  {
    goto LABEL_4;
  }

  v176 = v26;
  v177 = v25;
  v29 = v24;
  v181 = v28;
  if ([v181 paused])
  {

LABEL_4:
    v3 = objc_opt_self();
    LODWORD(v30) = [v3 _atomicIncrementAssertCount];
    v191[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v191, "Called tick() without a running display link", 44, 2u);
    StaticString.description.getter("tick(previousTick:targetTick:)", 30, 2);
    v7 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/Animation/CRLLayerAnimationDisplayLink.swift", 114, 2);
    v31 = String._bridgeToObjectiveC()();

    v32 = [v31 lastPathComponent];

    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    if (qword_1019F20A0 != -1)
    {
LABEL_85:
      swift_once();
    }

    v35 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v30;
    v37 = sub_1005CF000();
    *(inited + 96) = v37;
    v38 = sub_101238E20(&qword_1019F52E0, sub_1005CF000, &protocol conformance descriptor for NSObject);
    *(inited + 104) = v38;
    *(inited + 72) = v7;
    *(inited + 136) = &type metadata for String;
    v39 = sub_1000053B0();
    *(inited + 112) = v15;
    *(inited + 120) = v34;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v39;
    *(inited + 152) = 197;
    v40 = v191[0];
    *(inited + 216) = v37;
    *(inited + 224) = v38;
    *(inited + 192) = v40;
    v41 = v7;
    v42 = v40;
    v43 = static os_log_type_t.error.getter();
    sub_100005404(v35, &_mh_execute_header, v43, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v44 = static os_log_type_t.error.getter();
    sub_100005404(v35, &_mh_execute_header, v44, "Called tick() without a running display link", 44, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v45 = swift_allocObject();
    v45[2] = 8;
    v45[3] = 0;
    v45[4] = 0;
    v45[5] = 0;
    v46 = __VaListBuilder.va_list()();
    StaticString.description.getter("tick(previousTick:targetTick:)", 30, 2);
    v47 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CrossPlatformUI/Animation/CRLLayerAnimationDisplayLink.swift", 114, 2);
    v48 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Called tick() without a running display link", 44, 2);
    v49 = String._bridgeToObjectiveC()();

    [v3 handleFailureInFunction:v47 file:v48 lineNumber:197 isFatal:0 format:v49 args:v46];

    return;
  }

  if (v3[OBJC_IVAR____TtC8Freeform28CRLLayerAnimationDisplayLink_baseMediaTime + 8] & 1) != 0 || (v3[OBJC_IVAR____TtC8Freeform28CRLLayerAnimationDisplayLink_totalRunTime + 8])
  {
    v50 = v181;

    return;
  }

  v180 = v29;
  v51 = *&v3[OBJC_IVAR____TtC8Freeform28CRLLayerAnimationDisplayLink_baseMediaTime];
  v52 = *&v3[OBJC_IVAR____TtC8Freeform28CRLLayerAnimationDisplayLink_totalRunTime];
  v53 = OBJC_IVAR____TtC8Freeform28CRLLayerAnimationDisplayLink_displayLinkAnimations;
  swift_beginAccess();
  v30 = *&v3[v53];
  if (!v30)
  {
LABEL_83:

    return;
  }

  v175 = v17;
  v168 = v15;
  v169 = v9;
  v171 = v12;
  v173 = v6;
  v54 = objc_opt_self();

  [v54 begin];
  v170 = v54;
  [v54 setDisableActions:1];
  v179 = *(v30 + 16);
  if (!v179)
  {
LABEL_81:

    [v170 commit];
    if (v51 + v52 < a1)
    {
      sub_101236F30();
    }

    goto LABEL_83;
  }

  v34 = OBJC_IVAR____TtC8Freeform28CRLLayerAnimationDisplayLink_animationStatusMap;
  swift_beginAccess();
  v55 = v30 + 32;
  v56 = 0;
  v188 = (v175 + 8);
  v174 = v175 + 16;
  v172 = v7 + 6;
  v57 = 32;
  v178 = v30;
  while (1)
  {
    if (v56 >= *(v30 + 16))
    {
      __break(1u);
      goto LABEL_85;
    }

    v183 = v57;
    v184 = v56;
    v182 = v55;
    sub_10000630C(v55, v191);
    v60 = v3;
    v61 = v34;
    v62 = v60;
    v63 = *&v60[v34];
    v65 = v192;
    v64 = v193;
    sub_100020E58(v191, v192);
    v66 = *(v64 + 56);

    v67 = v185;
    v66(v65, v64);
    if (*(v63 + 16))
    {
      sub_10003E994(v67);
      v69 = v68;
    }

    else
    {
      v69 = 0;
    }

    v70 = v180;
    v15 = v186;
    v71 = *v188;
    (*v188)(v67, v180);

    v34 = v61;
    v3 = v62;
    if ((v69 & 1) == 0)
    {
      v72 = v71;
      v73 = v192;
      v74 = v193;
      sub_100020E58(v191, v192);
      v75 = v187;
      (*(v74 + 56))(v73, v74);
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v190 = *&v3[v34];
      v77 = v190;
      *&v3[v34] = 0x8000000000000000;
      v79 = sub_10003E994(v75);
      v80 = v77[2];
      v81 = (v78 & 1) == 0;
      v82 = v80 + v81;
      if (__OFADD__(v80, v81))
      {
        goto LABEL_87;
      }

      v83 = v78;
      if (v77[3] < v82)
      {
        sub_100A9A2BC(v82, isUniquelyReferenced_nonNull_native);
        v84 = sub_10003E994(v187);
        if ((v83 & 1) != (v85 & 1))
        {
          goto LABEL_94;
        }

        v79 = v84;
        v86 = v190;
        if ((v83 & 1) == 0)
        {
          goto LABEL_30;
        }

LABEL_28:
        *(v86[7] + v79) = 0;
        v71 = v72;
        v72(v187, v70);
LABEL_32:
        *&v3[v34] = v86;

        swift_endAccess();
        goto LABEL_33;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v86 = v190;
        if (v78)
        {
          goto LABEL_28;
        }
      }

      else
      {
        sub_100AAE01C();
        v86 = v190;
        if (v83)
        {
          goto LABEL_28;
        }
      }

LABEL_30:
      v86[(v79 >> 6) + 8] |= 1 << v79;
      v87 = v187;
      (*(v175 + 16))(v86[6] + *(v175 + 72) * v79, v187, v70);
      *(v86[7] + v79) = 0;
      v71 = v72;
      v72(v87, v70);
      v88 = v86[2];
      v89 = __OFADD__(v88, 1);
      v90 = v88 + 1;
      if (v89)
      {
        goto LABEL_88;
      }

      v86[2] = v90;
      goto LABEL_32;
    }

LABEL_33:
    v91 = v192;
    v92 = v193;
    sub_100020E58(v191, v192);
    (*(v92 + 56))(v91, v92);
    v93 = *&v3[v34];
    if (!*(v93 + 16))
    {
      goto LABEL_41;
    }

    v94 = sub_10003E994(v15);
    if ((v95 & 1) == 0)
    {
      break;
    }

    v96 = v71;
    v97 = *(*(v93 + 56) + v94);
    v98 = v96;
    v96(v15, v70);

    if (v97 == 2)
    {
      goto LABEL_42;
    }

    v100 = v192;
    v99 = v193;
    sub_100020E58(v191, v192);
    v101 = v51 + (*(*(*(v99 + 24) + 8) + 8))(v100);
    v103 = v192;
    v102 = v193;
    sub_100020E58(v191, v192);
    v104 = (a2 - v101) / (v51 + (*(*(*(v102 + 24) + 8) + 40))(v103) - v101);
    if (v104 > 0.0)
    {
      if (v97)
      {
        goto LABEL_59;
      }

      v106 = v192;
      v105 = v193;
      sub_100020E58(v191, v192);
      v107 = v168;
      (*(*(v105 + 16) + 40))(v106);
      v108 = v173;
      if ((*v172)(v107, 1, v173))
      {
        sub_101238EE8(v107);
      }

      else
      {
        v115 = v169;
        sub_101238F50(v107, v169);
        sub_101238EE8(v107);
        v116 = *(v115 + *(v108 + 20));

        v117 = sub_101238FB4(v115);
        v116(v117, a2);
      }

      v118 = v192;
      v119 = v193;
      sub_100020E58(v191, v192);
      v120 = v176;
      (*(v119 + 56))(v118, v119);
      swift_beginAccess();
      v121 = swift_isUniquelyReferenced_nonNull_native();
      v190 = *&v3[v34];
      v122 = v190;
      *&v3[v34] = 0x8000000000000000;
      v123 = sub_10003E994(v120);
      v125 = v122[2];
      v126 = (v124 & 1) == 0;
      v89 = __OFADD__(v125, v126);
      v127 = v125 + v126;
      if (v89)
      {
        goto LABEL_92;
      }

      v128 = v124;
      if (v122[3] >= v127)
      {
        if ((v121 & 1) == 0)
        {
          v132 = v123;
          sub_100AAE01C();
          v123 = v132;
          v130 = v190;
          if (v128)
          {
            goto LABEL_54;
          }

          goto LABEL_56;
        }
      }

      else
      {
        sub_100A9A2BC(v127, v121);
        v123 = sub_10003E994(v120);
        if ((v128 & 1) != (v129 & 1))
        {
          goto LABEL_95;
        }
      }

      v130 = v190;
      if (v128)
      {
LABEL_54:
        *(v130[7] + v123) = 1;
        v131 = v120;
        v70 = v180;
        v98(v131, v180);
LABEL_58:
        *&v3[v34] = v130;

        swift_endAccess();
LABEL_59:
        if (v104 < 1.0)
        {
          v139 = v192;
          v138 = v193;
          sub_10002A948(v191, v192);
          (*(*(v138 + 16) + 16))(v139, v51, a2);
        }

        goto LABEL_61;
      }

LABEL_56:
      v15 = 1;
      v130[(v123 >> 6) + 8] |= 1 << v123;
      v133 = v120;
      v134 = v123;
      v135 = v180;
      (*(v175 + 16))(v130[6] + *(v175 + 72) * v123, v133, v180);
      *(v130[7] + v134) = 1;
      v70 = v135;
      v98(v133, v135);
      v136 = v130[2];
      v89 = __OFADD__(v136, 1);
      v137 = v136 + 1;
      if (v89)
      {
        goto LABEL_93;
      }

      v130[2] = v137;
      goto LABEL_58;
    }

LABEL_61:
    if (v97 == 1 && v104 >= 1.0)
    {
      v140 = v192;
      v141 = v193;
      sub_100020E58(v191, v192);
      v15 = v177;
      (*(v141 + 56))(v140, v141);
      swift_beginAccess();
      v142 = swift_isUniquelyReferenced_nonNull_native();
      v190 = *&v3[v34];
      v143 = v190;
      *&v3[v34] = 0x8000000000000000;
      v144 = sub_10003E994(v15);
      v146 = v143[2];
      v147 = (v145 & 1) == 0;
      v89 = __OFADD__(v146, v147);
      v148 = v146 + v147;
      if (v89)
      {
        goto LABEL_90;
      }

      v149 = v145;
      if (v143[3] >= v148)
      {
        if ((v142 & 1) == 0)
        {
          v166 = v144;
          sub_100AAE01C();
          v144 = v166;
        }
      }

      else
      {
        sub_100A9A2BC(v148, v142);
        v144 = sub_10003E994(v177);
        if ((v149 & 1) != (v150 & 1))
        {
          goto LABEL_94;
        }
      }

      v151 = v177;
      v152 = v190;
      if (v149)
      {
        *(v190[7] + v144) = 2;
        v98(v151, v70);
      }

      else
      {
        v190[(v144 >> 6) + 8] |= 1 << v144;
        v153 = v144;
        (*(v175 + 16))(v152[6] + *(v175 + 72) * v144, v151, v180);
        *(v152[7] + v153) = 2;
        v98(v151, v180);
        v154 = v152[2];
        v89 = __OFADD__(v154, 1);
        v155 = v154 + 1;
        if (v89)
        {
          goto LABEL_91;
        }

        v152[2] = v155;
      }

      *&v3[v34] = v152;

      swift_endAccess();
      v157 = v192;
      v156 = v193;
      sub_100020E58(v191, v192);
      v158 = v171;
      (*(*(v156 + 16) + 64))(v157);
      v159 = v173;
      if ((*v172)(v158, 1, v173))
      {
        sub_101238EE8(v158);
      }

      else
      {
        v160 = v169;
        sub_101238F50(v158, v169);
        sub_101238EE8(v158);
        v161 = *(v160 + *(v159 + 20));

        v162 = sub_101238FB4(v160);
        v161(v162, a2);
      }
    }

    v7 = sub_1012364C8(v189);
    v110 = *v163;
    if (*v163)
    {
      v164 = v163;
      v165 = swift_isUniquelyReferenced_nonNull_native();
      *v164 = v110;
      v30 = v178;
      if ((v165 & 1) == 0)
      {
        v110 = sub_10113CE44(v110);
        *v164 = v110;
      }

      v59 = v184;
      if (v184 >= v110[2])
      {
        goto LABEL_89;
      }

      goto LABEL_46;
    }

LABEL_14:
    (v7)(v189, 0);
    v30 = v178;
    v58 = v183;
    v59 = v184;
LABEL_15:
    v56 = v59 + 1;
    sub_100005070(v191);
    v55 = v182 + 40;
    v57 = v58 + 40;
    if (v179 == v56)
    {
      goto LABEL_81;
    }
  }

LABEL_41:
  v71(v15, v70);
LABEL_42:
  v7 = sub_1012364C8(v189);
  v110 = *v109;
  if (!*v109)
  {
    goto LABEL_14;
  }

  v111 = v109;
  v112 = swift_isUniquelyReferenced_nonNull_native();
  *v111 = v110;
  v30 = v178;
  if ((v112 & 1) == 0)
  {
    v110 = sub_10113CE44(v110);
    *v111 = v110;
  }

  v59 = v184;
  if (v184 < v110[2])
  {
LABEL_46:
    v113 = (v110 + v183);
    v58 = v183;
    v114 = sub_100774FCC(v113, v191);
    (v7)(v189, 0, v114);
    goto LABEL_15;
  }

  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_95:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

id sub_1012389D8(double a1)
{
  *&v1[OBJC_IVAR____TtC8Freeform28CRLLayerAnimationDisplayLink_displayLinkAnimations] = 0;
  v2 = &v1[OBJC_IVAR____TtC8Freeform28CRLLayerAnimationDisplayLink_totalRunTime];
  *v2 = 0;
  v2[8] = 1;
  v3 = &v1[OBJC_IVAR____TtC8Freeform28CRLLayerAnimationDisplayLink_startMediaTime];
  *v3 = 0;
  v3[8] = 1;
  v4 = &v1[OBJC_IVAR____TtC8Freeform28CRLLayerAnimationDisplayLink_baseMediaTime];
  *v4 = 0;
  v4[8] = 1;
  v5 = &v1[OBJC_IVAR____TtC8Freeform28CRLLayerAnimationDisplayLink_previousTickMediaTime];
  *v5 = 0;
  v5[8] = 1;
  v6 = &v1[OBJC_IVAR____TtC8Freeform28CRLLayerAnimationDisplayLink_completionHandler];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&v1[OBJC_IVAR____TtC8Freeform28CRLLayerAnimationDisplayLink_displayLink] = 0;
  *&v1[OBJC_IVAR____TtC8Freeform28CRLLayerAnimationDisplayLink_animationStatusMap] = _swiftEmptyDictionarySingleton;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for CRLLayerAnimationDisplayLink();
  return objc_msgSendSuper2(&v8, "init");
}

uint64_t type metadata accessor for CRLLayerAnimationDisplayLink.Handler(uint64_t a1)
{
  result = qword_101A2E198;
  if (!qword_101A2E198)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_101238B68(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = sub_1007152FC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

Swift::Int sub_101238C38()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_101238E20(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_101238CC0(uint64_t a1)
{
  type metadata accessor for UUID();
  sub_101238E20(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_101238D44(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_101238E20(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

unint64_t sub_101238DCC()
{
  result = qword_101A2E1D8;
  if (!qword_101A2E1D8)
  {
    result = swift_getWitnessTable(byte_1014D47F0, &type metadata for CRLLayerAnimationDisplayLink.AnimationStatus, v0, v1);
    atomic_store(result, &qword_101A2E1D8);
  }

  return result;
}

uint64_t sub_101238E20(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

void sub_101238E68(uint64_t a1, void *a2, double a3, double a4)
{
  v7 = *(a1 + 32);

  v8 = a2;
  v7(a3, a4);
}

uint64_t sub_101238EE8(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_1019F57A8, &unk_101470220);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_101238F50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLLayerAnimationDisplayLink.Handler(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_101238FB4(uint64_t a1)
{
  v2 = type metadata accessor for CRLLayerAnimationDisplayLink.Handler(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_101239018(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return _swift_task_switch(sub_101239038, v1, 0);
}

uint64_t sub_101239038()
{
  v1 = sub_100EFF9E4(v0[10]);
  v0[12] = v1;
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_1012390DC;

  return sub_100842C40(v1);
}

uint64_t sub_1012390DC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v6 = *(v4 + 88);

    return _swift_task_switch(sub_101239234, v6, 0);
  }

  else
  {

    v7 = *(v5 + 8);

    return v7(a1);
  }
}

uint64_t sub_101239234()
{
  v1 = *(v0 + 112);

  *(v0 + 16) = v1;
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40, &qword_10146F320);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 24);
    *(v0 + 32) = v2;
    sub_100877178();
    _BridgedStoredNSError.code.getter();
    if (*(v0 + 40) == 26 || (*(v0 + 48) = v2, _BridgedStoredNSError.code.getter(), *(v0 + 56) == 28))
    {

LABEL_5:

      v3 = *(v0 + 8);

      return v3(0);
    }

    *(v0 + 64) = v2;
    _BridgedStoredNSError.code.getter();

    if (*(v0 + 72) == 11)
    {
      goto LABEL_5;
    }
  }

  swift_willThrow();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1012393D8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for UUID();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_10123949C, v2, 0);
}

uint64_t sub_10123949C()
{
  v1 = v0[4];
  v2 = *(v1 + 136);
  if (v2)
  {
    v3 = v0[3];
    v4 = *(v1 + 128);
    v5 = (v3 + *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20));
    v7 = *v5;
    v6 = v5[1];
    v8 = *v5 == v4 && v2 == v6;
    if (v8 || (v9 = _stringCompareWithSmolCheck(_:_:expecting:)(), v3 = v0[3], (v9 & 1) != 0))
    {
      v10 = v0[7];
      v11 = v0[2];
      (*(v0[6] + 16))(v10, v3, v0[5]);
      v12 = v11;
      v13 = v10;
      v14 = 0;
      v15 = 0xE000000000000000;
    }

    else
    {
      v18 = v0[7];
      v19 = v0[2];
      (*(v0[6] + 16))(v18, v0[3], v0[5]);

      v12 = v19;
      v13 = v18;
      v14 = v7;
      v15 = v6;
    }

    sub_10084BD4C(v13, v14, v15, v12);

    v20 = v0[1];

    return v20();
  }

  else
  {
    v16 = swift_task_alloc();
    v0[8] = v16;
    *v16 = v0;
    v16[1] = sub_10123964C;

    return sub_10084306C();
  }
}

uint64_t sub_10123964C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {

    v8 = v7[1];

    return v8();
  }

  else
  {
    v10 = v6[4];
    v6[9] = a2;
    v6[10] = a1;

    return _swift_task_switch(sub_1012397B0, v10, 0);
  }
}