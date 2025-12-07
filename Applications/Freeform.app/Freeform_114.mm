void sub_100E43E74(uint64_t a1, void *a2)
{
  v5 = *a2;
  if (*(*a2 + 16))
  {
    v6 = sub_1000486F0(a1);
    if (v7)
    {
      if (*(*(v5 + 56) + v6))
      {
        return;
      }

LABEL_7:
      sub_100EA3464();
      swift_allocError();
      swift_willThrow();
      return;
    }
  }

  v8 = sub_100DEE8DC(a1, 1);
  if (!v2)
  {
    v9 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *a2;
    sub_100AA0F68(v9 & 1, a1, isUniquelyReferenced_nonNull_native);
    *a2 = v11;
    if ((v9 & 1) == 0)
    {
      goto LABEL_7;
    }
  }
}

uint64_t *sub_100E43F64(int64_t a1, uint64_t a2, int a3, int a4)
{
  v264 = a4;
  LODWORD(v263) = a3;
  *&v274 = a2;
  v6 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  __chkstk_darwin(v6 - 8);
  v252 = &v239 - v7;
  v255 = type metadata accessor for URL();
  v253 = *(v255 - 8);
  __chkstk_darwin(v255);
  v250 = &v239 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v251 = &v239 - v10;
  v261 = sub_1005B981C(&qword_101A21F30, &qword_1014B68F8);
  __chkstk_darwin(v261);
  v268 = &v239 - v11;
  v12 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v12 - 8);
  v260 = &v239 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v282 = type metadata accessor for UUID();
  v269 = *(v282 - 8);
  __chkstk_darwin(v282);
  v256 = &v239 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v266 = &v239 - v16;
  __chkstk_darwin(v17);
  v259 = (&v239 - v18);
  __chkstk_darwin(v19);
  v265 = &v239 - v20;
  v21 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v21 - 8);
  v258 = &v239 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v262 = &v239 - v24;
  __chkstk_darwin(v25);
  v257 = &v239 - v26;
  __chkstk_darwin(v27);
  v267 = (&v239 - v28);
  __chkstk_darwin(v29);
  v31 = &v239 - v30;
  __chkstk_darwin(v32);
  v285 = (&v239 - v33);
  v34 = type metadata accessor for DispatchPredicate();
  v35 = *(v34 - 8);
  v36 = __chkstk_darwin(v34);
  v38 = (&v239 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = *(v4 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v38 = v39;
  v40 = *(v35 + 104);
  v278 = enum case for DispatchPredicate.onQueue(_:);
  v276 = v40;
  v277 = v35 + 104;
  v40(v38, v36);
  v41 = v39;
  LOBYTE(v39) = _dispatchPreconditionTest(_:)();
  v43 = *(v35 + 8);
  v42 = (v35 + 8);
  v279 = v38;
  v280 = v42;
  v281 = v34;
  v275 = v43;
  v43(v38, v34);
  if ((v39 & 1) == 0)
  {
    __break(1u);
    goto LABEL_99;
  }

  v44 = *(v4 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_crdtContext);
  v45 = sub_100E98A48(a1, v44, 0, 0xF000000000000000);
  *&v284 = v4;
  if (v45)
  {
    v283 = v45;
    v248 = 0;
    goto LABEL_4;
  }

  v53 = v286;
  v54 = sub_100DECDC4(a1 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_id, a1 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_boardIdentifier);
  if (!v53)
  {
    v243 = a1;
    v286 = 0;
    if (v54 && (v55 = *(v54 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData), v56 = *(v54 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData + 8), sub_100024E84(v55, v56), , v56 >> 60 != 15))
    {
      sub_100024E98(v55, v56);
      a1 = v243;
      v108 = sub_100E98A48(v243, v44, v55, v56);
      sub_100025870(v55, v56);
      sub_100025870(v55, v56);
      v283 = v108;
      v248 = v108 != 0;
    }

    else
    {
      v248 = 0;
      v283 = 0;
      a1 = v243;
    }

LABEL_4:
    v46 = *(a1 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_rawTypeValues);
    v246 = *(a1 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_rawTypeValues + 8);
    v247 = v46;
    v245 = *(a1 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_rawTypeValues + 16);
    v47 = OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_parentContainerUUID;
    swift_beginAccess();
    sub_10000BE14(a1 + v47, v285, &qword_1019F6990, &qword_10146D2F0);
    LODWORD(v254) = *(a1 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_tombstoned);
    v48 = *(a1 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_syncData);
    v49 = *(a1 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_syncData + 8);
    v50 = *(a1 + OBJC_IVAR____TtC8Freeform28CRLBoardItemSyncRemoteRecord_capsuleMergeableData);
    v4 = v284;
    v271 = v48;
    v272 = v49;
    sub_100024E84(v48, v49);
    if (v50)
    {
      v51 = v50;
      v270 = sub_100F00014(v51);
      v273 = v52;
    }

    else
    {
      v270 = 0;
      v273 = 0xF000000000000000;
    }

    *&v249 = OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_id;
    v57 = OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_boardIdentifier;
    v42 = v279;
    *v279 = v41;
    v58 = v281;
    v276(v42, v278, v281);
    v41 = v41;
    v59 = _dispatchPreconditionTest(_:)();
    v275(v42, v58);
    if (v59)
    {
      v60 = v286;
      sub_100E43E74(a1 + v57, v274);
      v61 = v60;
      if (v60)
      {
        sub_100025870(v270, v273);
        sub_100025870(v271, v272);

        v62 = v285;
LABEL_14:
        sub_10000CAAC(v62, &qword_1019F6990, &qword_10146D2F0);
        return v4;
      }

      v242 = v41;
      sub_10000BE14(v285, v31, &qword_1019F6990, &qword_10146D2F0);
      v64 = v269;
      v65 = v282;
      v66 = (*(v269 + 48))(v31, 1, v282);
      v244 = v57;
      if (v66 == 1)
      {
        sub_10000CAAC(v31, &qword_1019F6990, &qword_10146D2F0);
      }

      else
      {
        v286 = 0;
        v99 = *(v64 + 32);
        v100 = v265;
        v99(v265, v31, v65);
        v101 = v286;
        v102 = sub_100DEEFC0(v100, a1 + v57);
        v286 = v101;
        if (v101)
        {
          sub_100025870(v270, v273);
          sub_100025870(v271, v272);

          (*(v64 + 8))(v100, v65);
          sub_10000CAAC(v285, &qword_1019F6990, &qword_10146D2F0);
          return v4;
        }

        v240 = v99;
        v241 = v64 + 32;
        v106 = v244;
        v107 = a1;
        if (v102)
        {
          (*(v269 + 8))(v265, v282);
          v61 = v286;
          v67 = v283;
          v57 = v106;
LABEL_19:
          v68 = v267;
          sub_10000BE14(v285, v267, &qword_1019F6990, &qword_10146D2F0);
          if (v67)
          {
            v286 = v61;
            v69 = qword_1019F2270;

            v283 = v67;
            if (v69 != -1)
            {
              goto LABEL_102;
            }

            while (1)
            {
              v265 = static OS_os_log.dataSync;
              sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_10146C6B0;
              v71 = UUID.uuidString.getter();
              v73 = v72;
              *(inited + 56) = &type metadata for String;
              v74 = a1;
              v75 = sub_1000053B0();
              *(inited + 64) = v75;
              *(inited + 32) = v71;
              *(inited + 40) = v73;
              v76 = static os_log_type_t.info.getter();
              v77 = v265;
              sub_100005404(v265, &_mh_execute_header, v76, "Merging board item data with id %{public}@", 42, 2, inited);
              swift_setDeallocating();
              sub_100005070((inited + 32));
              v78 = swift_initStackObject();
              v79 = v78;
              *(v78 + 16) = xmmword_10146C4D0;
              v80 = (v263 & 1) == 0;
              v81 = 0x676E696772654DLL;
              if (v263)
              {
                v81 = 0x746972777265764FLL;
              }

              v82 = 0xE700000000000000;
              if (v263)
              {
                v82 = 0xEB00000000676E69;
              }

              *(v78 + 56) = &type metadata for String;
              *(v78 + 64) = v75;
              *(v78 + 32) = v81;
              *(v78 + 40) = v82;
              if (v80)
              {
                v83 = 1;
              }

              else
              {
                v83 = 2;
              }

              LODWORD(v274) = v83;
              v84 = UUID.uuidString.getter();
              v79[12] = &type metadata for String;
              v79[13] = v75;
              v79[9] = v84;
              v79[10] = v85;
              v86 = v244;
              v87 = UUID.uuidString.getter();
              v79[17] = &type metadata for String;
              v79[18] = v75;
              a1 = v74;
              v79[14] = v87;
              v79[15] = v88;
              v89 = static os_log_type_t.info.getter();
              sub_100005404(v77, &_mh_execute_header, v89, "%{public}@ board item with id: %{public}@, boardID: %{public}@", 62, 2, v79);
              swift_setDeallocating();
              sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
              swift_arrayDestroy();
              v90 = v273;
              v91 = v74 + v86;
              v93 = v271;
              v92 = v272;
              v94 = v270;
              v95 = v286;
              v96 = sub_100DF00A0(v283, v91, v274, v271, v272, v254 ^ 1, v254, v270, v273, v264 & 1, v248);
              if (v95)
              {

                sub_100025870(v94, v90);
                sub_100025870(v93, v92);

                v4 = &qword_1019F6990;
                sub_10000CAAC(v267, &qword_1019F6990, &qword_10146D2F0);
                goto LABEL_30;
              }

              v103 = v96;
              v109 = v97;
              v110 = v267;
              if (v96)
              {
                v264 = v98;
                v111 = *(*v96 + 272);

                v113 = v110;
                v114 = v257;
                v111(v112);

                sub_10000CAAC(v113, &qword_1019F6990, &qword_10146D2F0);
                v115 = v114;
                v110 = v113;
                sub_10003DFF8(v115, v113, &qword_1019F6990, &qword_10146D2F0);
              }

              else
              {

                v264 = 0;
              }

              v57 = v244;
              v105 = v249;
              v104 = 0;
              if (v254 && (v109 & 0x10) == 0)
              {
LABEL_47:
                v265 = v103;
                v286 = v104;
                if (qword_1019F2270 != -1)
                {
                  swift_once();
                }

                v144 = static OS_os_log.dataSync;
                sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
                v145 = swift_initStackObject();
                *(v145 + 16) = xmmword_10146C6B0;
                v146 = UUID.uuidString.getter();
                v147 = a1;
                v149 = v148;
                *(v145 + 56) = &type metadata for String;
                *(v145 + 64) = sub_1000053B0();
                *(v145 + 32) = v146;
                *(v145 + 40) = v149;
                a1 = v147;
                v150 = static os_log_type_t.default.getter();
                sub_100005404(v144, &_mh_execute_header, v150, "Merging a tombstoned BoardItem record with id %{public}@", 56, 2, v145);
                swift_setDeallocating();
                sub_100005070((v145 + 32));
                v151 = v273;
                v152 = v270;
                v153 = a1 + v105;
                v57 = v244;
                v110 = v267;
                v155 = v271;
                v154 = v272;
                v156 = v286;
                sub_100E420CC(v153, v247, v246, v245, v267, a1 + v244, v271, v272, v270, v273);
                if (v156)
                {

                  sub_100025870(v152, v151);
                  sub_100025870(v155, v154);

                  v4 = &qword_1019F6990;
                  sub_10000CAAC(v110, &qword_1019F6990, &qword_10146D2F0);
                  sub_10000CAAC(v285, &qword_1019F6990, &qword_10146D2F0);
                  return v4;
                }

                v103 = v265;
              }

              v61 = 0;
              sub_100025870(v270, v273);
              sub_100025870(v271, v272);
              sub_10000CAAC(v110, &qword_1019F6990, &qword_10146D2F0);
              sub_10000CAAC(v285, &qword_1019F6990, &qword_10146D2F0);
              if (!v103)
              {
                break;
              }

              if (v254)
              {
                goto LABEL_86;
              }

              v286 = 0;

              sub_100E45BF8();
              v158 = v157;
              sub_100E45F8C();
              sub_1010ACAA4(v159, v158);
              v161 = v160;
              v162 = OBJC_IVAR____TtC8Freeform28CRLBoardItemSyncRemoteRecord_assets;
              swift_beginAccess();
              v243 = a1;
              v163 = *(a1 + v162);
              v164 = v163 + 64;
              v165 = 1 << *(v163 + 32);
              if (v165 < 64)
              {
                v166 = ~(-1 << v165);
              }

              else
              {
                v166 = -1;
              }

              v167 = v166 & *(v163 + 64);
              v257 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
              v258 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock;
              a1 = (v165 + 63) >> 6;
              v168 = v269;
              v285 = (v269 + 16);
              v271 = (v269 + 8);
              v272 = v161 + 56;
              v259 = (v253 + 6);
              v169 = (v253 + 4);
              ++v253;
              v254 = v169;
              v267 = v163;
              swift_bridgeObjectRetain_n();
              v170 = 0;
              v249 = xmmword_10146C6B0;
              v262 = a1;
              v263 = v164;
              v265 = v103;
              while (v167)
              {
LABEL_65:
                v172 = __clz(__rbit64(v167)) | (v170 << 6);
                v173 = v267;
                v174 = v267[6];
                v273 = *(v168 + 72);
                v175 = *(v168 + 16);
                v176 = v268;
                *&v274 = v175;
                v175(v268, v174 + v273 * v172, v282);
                v177 = *(v173 + 56);
                v178 = v176;
                v179 = *(v177 + 8 * v172);
                *(v178 + *(v261 + 48)) = v179;
                v180 = *(v161 + 16);
                v270 = v167;
                if (v180)
                {
                  sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

                  v181 = dispatch thunk of Hashable._rawHashValue(seed:)();
                  v182 = -1 << *(v161 + 32);
                  v183 = v181 & ~v182;
                  if ((*(v272 + ((v183 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v183))
                  {
                    v260 = v179;
                    v184 = ~v182;
                    while (1)
                    {
                      v185 = v161;
                      v186 = *(v161 + 48) + v183 * v273;
                      v187 = v266;
                      v188 = v282;
                      (v274)(v266, v186, v282);
                      sub_1000066D0(&qword_1019F37C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
                      v189 = dispatch thunk of static Equatable.== infix(_:_:)();
                      v42 = *v271;
                      (*v271)(v187, v188);
                      if (v189)
                      {
                        break;
                      }

                      v183 = (v183 + 1) & v184;
                      v161 = v185;
                      v178 = v268;
                      if (((*(v272 + ((v183 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v183) & 1) == 0)
                      {
                        goto LABEL_59;
                      }
                    }

                    v190 = v279;
                    v191 = v242;
                    *v279 = v242;
                    v192 = v281;
                    v276(v190, v278, v281);
                    v193 = v191;
                    LOBYTE(v191) = _dispatchPreconditionTest(_:)();
                    result = v275(v190, v192);
                    if ((v191 & 1) == 0)
                    {
                      __break(1u);
                      return result;
                    }

                    v194 = v260;
                    v195 = v260 + OBJC_IVAR____TtC8Freeform24CRLAssetSyncRemoteRecord_metadata;
                    v41 = v256;
                    v31 = v282;
                    (v274)(v256, v260 + OBJC_IVAR____TtC8Freeform24CRLAssetSyncRemoteRecord_metadata, v282);
                    v196 = (v195 + *(type metadata accessor for CRLAssetSyncMetadata(0) + 20));
                    v197 = *v196;
                    v273 = v196[1];
                    *&v274 = v197;
                    v198 = v286;
                    sub_100E2CA3C(v41, v197, v273);
                    v286 = v198;
                    v199 = v255;
                    if (v198)
                    {
                      goto LABEL_100;
                    }

                    v200 = v252;
                    sub_10000BE14(v194 + OBJC_IVAR____TtC8Freeform24CRLAssetSyncRemoteRecord_downloadedFileURL, v252, &unk_1019F33C0, &unk_101468A60);
                    if ((*v259)(v200, 1, v199) == 1)
                    {
                      (v42)(v41, v31);
                      sub_10000CAAC(v200, &unk_1019F33C0, &unk_101468A60);
                    }

                    else
                    {
                      (*v254)(v251, v200, v199);
                      v201 = v284;
                      v202 = *(v284 + v258);
                      os_unfair_lock_lock(*(v202 + 16));
                      v203 = v257;
                      v204 = *&v257[v201];
                      if (v204)
                      {
                        v205 = *&v257[v201];
                      }

                      else
                      {
                        v206 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager(0));
                        v207 = v201;
                        v208 = sub_10001F1A0(v207);

                        v209 = *&v203[v201];
                        *&v203[v201] = v208;
                        v205 = v208;

                        v204 = 0;
                      }

                      v211 = v273;
                      v210 = v274;
                      v212 = *(v202 + 16);
                      v213 = v204;
                      os_unfair_lock_unlock(v212);
                      v214 = v250;
                      v215 = v256;
                      v216 = v210;
                      v217 = v251;
                      v218 = v286;
                      sub_10109223C(v256, v216, v211, v251, 1, v250);
                      v286 = v218;
                      if (v218)
                      {

                        if (qword_1019F2258 != -1)
                        {
                          swift_once();
                        }

                        v219 = static OS_os_log.boardStore;
                        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
                        v220 = swift_initStackObject();
                        *(v220 + 16) = v249;
                        swift_getErrorValue();
                        v221 = Error.localizedDescription.getter();
                        v273 = v222;
                        *&v274 = v221;
                        *(v220 + 56) = &type metadata for String;
                        *(v220 + 64) = sub_1000053B0();
                        v223 = v273;
                        *(v220 + 32) = v274;
                        *(v220 + 40) = v223;
                        v224 = static os_log_type_t.error.getter();
                        sub_100005404(v219, &_mh_execute_header, v224, "Failed to create an asset from data with error: %@", 50, 2, v220);

                        swift_setDeallocating();
                        sub_100005070((v220 + 32));
                        (*v253)(v217, v255);
                        (v42)(v256, v282);
                        v286 = 0;
                      }

                      else
                      {

                        v225 = *v253;
                        v226 = v214;
                        v227 = v255;
                        (*v253)(v226, v255);
                        v225(v217, v227);
                        (v42)(v215, v282);
                      }
                    }

                    v161 = v185;
                    v178 = v268;
                  }
                }

                else
                {
                }

LABEL_59:
                v167 = (v270 - 1) & v270;
                sub_10000CAAC(v178, &qword_101A21F30, &qword_1014B68F8);
                v168 = v269;
                v103 = v265;
                a1 = v262;
                v164 = v263;
              }

              while (1)
              {
                v171 = v170 + 1;
                if (__OFADD__(v170, 1))
                {
                  break;
                }

                if (v171 >= a1)
                {
                  v61 = v286;

                  a1 = v243;
                  v57 = v244;
                  goto LABEL_86;
                }

                v167 = *(v164 + 8 * v171);
                ++v170;
                if (v167)
                {
                  v170 = v171;
                  goto LABEL_65;
                }
              }

              __break(1u);
LABEL_102:
              swift_once();
            }

            v264 = 0;
          }

          else
          {
            if (v254)
            {
              v264 = 0;
              v103 = 0;
              v104 = v61;
              v105 = v249;
              goto LABEL_47;
            }

            sub_100025870(v270, v273);
            sub_100025870(v271, v272);
            sub_10000CAAC(v68, &qword_1019F6990, &qword_10146D2F0);
            sub_10000CAAC(v285, &qword_1019F6990, &qword_10146D2F0);
            v264 = 0;
            v103 = 0;
          }

LABEL_86:
          v285 = sub_100EFF9E4(a1 + v57);
          v228 = *(a1 + OBJC_IVAR____TtC8Freeform28CRLBoardItemSyncRemoteRecord_minRequiredVersionForSync);
          v229 = *(a1 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_minRequiredVersions + 16);
          v230 = sub_10001FF1C();
          v231 = v230;
          v265 = v103;
          if (v230 < v228)
          {
            v286 = v61;
            v264 = 2;
            goto LABEL_90;
          }

          if (v230 < v229)
          {
            v286 = v61;
LABEL_90:
            v232 = swift_initStackObject();
            v284 = xmmword_101465920;
            *(v232 + 16) = xmmword_101465920;
            v233 = v285;
            *(v232 + 32) = v285;
            v234 = v233;
            sub_1005BFFC4(v232);
            v4 = v235;
            swift_setDeallocating();
            swift_arrayDestroy();
            if (v231 < v228)
            {
              v236 = swift_initStackObject();
              *(v236 + 16) = v284;
              *(v236 + 32) = v234;
              v237 = v234;
              sub_1005BFFC4(v236);

              return v4;
            }

LABEL_95:
            if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
            {
              sub_1005BFFC4(_swiftEmptyArrayStorage);
            }

            else
            {
            }

            return v4;
          }

          if (!(_swiftEmptyArrayStorage >> 62))
          {
LABEL_94:
            v4 = _swiftEmptySetSingleton;
            goto LABEL_95;
          }

LABEL_106:
          if (_CocoaArrayWrapper.endIndex.getter())
          {
            sub_1005BFFC4(_swiftEmptyArrayStorage);
            v4 = v238;
            goto LABEL_95;
          }

          goto LABEL_94;
        }

        v116 = v269;
        *&v274 = *(v269 + 56);
        (v274)(v262, 1, 1, v282);
        v117 = v279;
        v118 = v242;
        *v279 = v242;
        v119 = v281;
        v276(v117, v278, v281);
        v120 = v118;
        LOBYTE(v118) = _dispatchPreconditionTest(_:)();
        v275(v117, v119);
        if ((v118 & 1) == 0)
        {
          __break(1u);
          goto LABEL_106;
        }

        v121 = *(v116 + 16);
        v122 = v259;
        v123 = v282;
        v121(v259, v265, v282);
        v239 = 0x2000400000000;
        v124 = v258;
        sub_10000BE14(v262, v258, &qword_1019F6990, &qword_10146D2F0);
        v243 = v107;
        v125 = v107 + v106;
        v126 = v260;
        sub_10000C83C(v125, v260, type metadata accessor for CRLBoardIdentifier);
        type metadata accessor for CRLBoardItemDatabaseRow(0);
        v127 = swift_allocObject();
        v128 = OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_parentContainerUUID;
        (v274)(v127 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_parentContainerUUID, 1, 1, v123);
        v274 = xmmword_101486780;
        *(v127 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData) = xmmword_101486780;
        *(v127 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData) = xmmword_101486780;
        *(v127 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData) = xmmword_101486780;
        *(v127 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData) = xmmword_101486780;
        *(v127 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue) = xmmword_101486780;
        v240(v127 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_itemUUID, v122, v123);
        v129 = v127 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_minRequiredVersions;
        v130 = v239;
        *v129 = 0x1000000000000;
        *(v129 + 8) = v130;
        *(v129 + 16) = 0x1000000000000;
        *(v129 + 24) = 0;
        *(v129 + 32) = 1;
        *(v127 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_objectOptions) = 0;
        swift_beginAccess();
        sub_10002C638(v124, v127 + v128, &qword_1019F6990, &qword_10146D2F0);
        swift_endAccess();
        sub_100025668(v126, v127 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
        v131 = v127 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_rawTypeValues;
        *v131 = xmmword_101474CF0;
        *(v131 + 16) = 1;
        v132 = *(v127 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData);
        v133 = *(v127 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData + 8);
        *(v127 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData) = v274;
        sub_100025870(v132, v133);
        v134 = *(v127 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData);
        v135 = *(v127 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData + 8);
        *(v127 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData) = v274;
        sub_100025870(v134, v135);
        v136 = *(v127 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData);
        v137 = *(v127 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData + 8);
        *(v127 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData) = v274;
        sub_100025870(v136, v137);
        *(v127 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_isLocalTombstone) = 0;
        *(v127 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_unsyncedChanges) = 0;
        v138 = *(v127 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData);
        v139 = *(v127 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData + 8);
        *(v127 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData) = v274;
        sub_100025870(v138, v139);
        v140 = *(v127 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue);
        v141 = *(v127 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue + 8);
        *(v127 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue) = v274;
        sub_100025870(v140, v141);
        v142 = v286;
        sub_100DF5A90(v127);
        v61 = v142;
        v143 = v273;
        if (v142)
        {

          sub_100025870(v270, v143);
          sub_100025870(v271, v272);
          swift_setDeallocating();
          sub_100FE3A40();
          swift_deallocClassInstance();
          v4 = &qword_1019F6990;
          sub_10000CAAC(v262, &qword_1019F6990, &qword_10146D2F0);
          (*(v269 + 8))(v265, v282);
LABEL_30:
          v62 = v285;
          goto LABEL_14;
        }

        swift_setDeallocating();
        sub_100FE3A40();
        swift_deallocClassInstance();
        sub_10000CAAC(v262, &qword_1019F6990, &qword_10146D2F0);
        (*(v269 + 8))(v265, v282);
        a1 = v243;
        v57 = v244;
      }

      v67 = v283;
      goto LABEL_19;
    }

LABEL_99:
    __break(1u);
LABEL_100:
    (v42)(v41, v31);

    v4 = v267;

    sub_10000CAAC(v268, &qword_101A21F30, &qword_1014B68F8);
  }

  return v4;
}

void sub_100E45BF8()
{
  v36 = type metadata accessor for UUID();
  v1 = *(v36 - 8);
  __chkstk_darwin(v36);
  v33 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  v35 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v27 - v8;
  v10 = (*(*v0 + 664))(v7);
  v11 = v10;
  v12 = v10 + 64;
  v13 = 1 << *(v10 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v10 + 64);
  v16 = (v13 + 63) >> 6;
  v17 = (v1 + 48);
  v31 = v1;
  v32 = (v1 + 32);

  v18 = 0;
  v34 = _swiftEmptyArrayStorage;
  while (1)
  {
    v19 = v18;
    if (!v15)
    {
      break;
    }

LABEL_8:
    v20 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    sub_10000BE14(*(v11 + 56) + *(v35 + 72) * (v20 | (v18 << 6)), v9, &qword_1019F6990, &qword_10146D2F0);
    sub_10003DFF8(v9, v5, &qword_1019F6990, &qword_10146D2F0);
    if ((*v17)(v5, 1, v36) == 1)
    {
      sub_10000CAAC(v5, &qword_1019F6990, &qword_10146D2F0);
    }

    else
    {
      v30 = *v32;
      v30(v33, v5, v36);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_100B356D0(0, *(v34 + 2) + 1, 1, v34);
      }

      v22 = *(v34 + 2);
      v21 = *(v34 + 3);
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        v28 = *(v34 + 2);
        v29 = v22 + 1;
        v26 = sub_100B356D0((v21 > 1), v22 + 1, 1, v34);
        v22 = v28;
        v23 = v29;
        v34 = v26;
      }

      v24 = v33;
      v25 = v34;
      *(v34 + 2) = v23;
      v30(&v25[((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v22], v24, v36);
    }
  }

  while (1)
  {
    v18 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v18 >= v16)
    {

      sub_100E93A84(v34);

      return;
    }

    v15 = *(v12 + 8 * v18);
    ++v19;
    if (v15)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

void sub_100E45F8C()
{
  v36 = type metadata accessor for UUID();
  v1 = *(v36 - 8);
  __chkstk_darwin(v36);
  v33 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  v35 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v27 - v8;
  v10 = (*(*v0 + 672))(v7);
  v11 = v10;
  v12 = v10 + 64;
  v13 = 1 << *(v10 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(v10 + 64);
  v16 = (v13 + 63) >> 6;
  v17 = (v1 + 48);
  v31 = v1;
  v32 = (v1 + 32);

  v18 = 0;
  v34 = _swiftEmptyArrayStorage;
  while (1)
  {
    v19 = v18;
    if (!v15)
    {
      break;
    }

LABEL_8:
    v20 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    sub_10000BE14(*(v11 + 56) + *(v35 + 72) * (v20 | (v18 << 6)), v9, &qword_1019F6990, &qword_10146D2F0);
    sub_10003DFF8(v9, v5, &qword_1019F6990, &qword_10146D2F0);
    if ((*v17)(v5, 1, v36) == 1)
    {
      sub_10000CAAC(v5, &qword_1019F6990, &qword_10146D2F0);
    }

    else
    {
      v30 = *v32;
      v30(v33, v5, v36);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_100B356D0(0, *(v34 + 2) + 1, 1, v34);
      }

      v22 = *(v34 + 2);
      v21 = *(v34 + 3);
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        v28 = *(v34 + 2);
        v29 = v22 + 1;
        v26 = sub_100B356D0((v21 > 1), v22 + 1, 1, v34);
        v22 = v28;
        v23 = v29;
        v34 = v26;
      }

      v24 = v33;
      v25 = v34;
      *(v34 + 2) = v23;
      v30(&v25[((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v22], v24, v36);
    }
  }

  while (1)
  {
    v18 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v18 >= v16)
    {

      sub_100E93A84(v34);

      return;
    }

    v15 = *(v12 + 8 * v18);
    ++v19;
    if (v15)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

void sub_100E46320(uint64_t a1, void *a2)
{
  LODWORD(v4) = v3;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = (&v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v11 = v12;
  (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7, v9);
  v13 = v12;
  inited = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v11, v7);
  if ((inited & 1) == 0)
  {
    goto LABEL_37;
  }

  v15 = sub_100DEB448(a1);
  if (!v3)
  {
    v58 = 0;
    if (v15)
    {

      sub_100E469D8(a2, a1);
      return;
    }

    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v16 = UUID.uuidString.getter();
    v18 = v17;
    *(inited + 56) = &type metadata for String;
    v19 = sub_1000053B0();
    *(inited + 32) = v16;
    v60 = v19;
    v61 = inited + 32;
    *(inited + 64) = v19;
    *(inited + 40) = v18;
    v55 = objc_opt_self();
    LODWORD(v4) = [v55 _atomicIncrementAssertCount];
    v62 = [objc_allocWithZone(NSString) init];
    sub_100604538(inited, &v62, "Trying to apply merge of a CKShare from server when we don't have a corresponding local board database row. {public}%@", 118, 2u);
    StaticString.description.getter("_sync_mergeServerSyncedBoardShare(boardIdentifier:ckShare:)", 59, 2);
    v57 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
    v20 = String._bridgeToObjectiveC()();

    v21 = [v20 lastPathComponent];

    a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v56 = v22;

    if (qword_1019F20A0 != -1)
    {
      goto LABEL_38;
    }

LABEL_6:
    v23 = static OS_os_log.crlAssert;
    v24 = swift_initStackObject();
    *(v24 + 16) = xmmword_10146CA70;
    *(v24 + 56) = &type metadata for Int32;
    *(v24 + 64) = &protocol witness table for Int32;
    *(v24 + 32) = v4;
    v25 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(v24 + 96) = v25;
    v26 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
    v27 = v57;
    *(v24 + 72) = v57;
    v28 = v60;
    *(v24 + 136) = &type metadata for String;
    *(v24 + 144) = v28;
    *(v24 + 104) = v26;
    *(v24 + 112) = a1;
    *(v24 + 120) = v56;
    *(v24 + 176) = &type metadata for UInt;
    *(v24 + 184) = &protocol witness table for UInt;
    *(v24 + 152) = 9681;
    v29 = v62;
    *(v24 + 216) = v25;
    *(v24 + 224) = v26;
    *(v24 + 192) = v29;
    v30 = v27;
    v31 = v29;
    v32 = static os_log_type_t.error.getter();
    sub_100005404(v23, &_mh_execute_header, v32, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v24);
    swift_setDeallocating();
    v57 = sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v33 = static os_log_type_t.error.getter();
    sub_100005404(v23, &_mh_execute_header, v33, "Trying to apply merge of a CKShare from server when we don't have a corresponding local board database row. {public}%@", 118, 2, inited);

    type metadata accessor for __VaListBuilder();
    v34 = swift_allocObject();
    v34[2] = 8;
    v34[3] = 0;
    v35 = v34 + 3;
    v34[4] = 0;
    v34[5] = 0;
    a1 = *(inited + 16);
    if (a1)
    {
      v36 = 0;
      v59 = inited;
      v60 = a1;
      while (1)
      {
        sub_100020E58((v61 + 40 * v36), *(v61 + 40 * v36 + 24));
        v37 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
        v4 = *v35;
        v38 = *(v37 + 16);
        v39 = __OFADD__(*v35, v38);
        v40 = *v35 + v38;
        if (v39)
        {
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          swift_once();
          goto LABEL_6;
        }

        v41 = v34[4];
        if (v41 >= v40)
        {
          goto LABEL_23;
        }

        if (v41 + 0x4000000000000000 < 0)
        {
          goto LABEL_35;
        }

        v42 = v34[5];
        if (2 * v41 > v40)
        {
          v40 = 2 * v41;
        }

        v34[4] = v40;
        if ((v40 - 0x1000000000000000) >> 61 != 7)
        {
          goto LABEL_36;
        }

        v43 = v37;
        v44 = swift_slowAlloc();
        v45 = v44;
        v34[5] = v44;
        if (v42)
        {
          break;
        }

        v37 = v43;
        a1 = v60;
        inited = v59;
        if (!v45)
        {
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

LABEL_24:
        v47 = *(v37 + 16);
        if (v47)
        {
          v48 = (v37 + 32);
          v49 = *v35;
          while (1)
          {
            v50 = *v48++;
            *&v45[8 * v49] = v50;
            v49 = *v35 + 1;
            if (__OFADD__(*v35, 1))
            {
              break;
            }

            *v35 = v49;
            if (!--v47)
            {
              goto LABEL_8;
            }
          }

          __break(1u);
          goto LABEL_34;
        }

LABEL_8:

        if (++v36 == a1)
        {
          goto LABEL_31;
        }
      }

      if (v44 != v42 || v44 >= &v42[8 * v4])
      {
        memmove(v44, v42, 8 * v4);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v37 = v43;
      inited = v59;
      a1 = v60;
LABEL_23:
      v45 = v34[5];
      if (!v45)
      {
        goto LABEL_30;
      }

      goto LABEL_24;
    }

LABEL_31:
    v51 = __VaListBuilder.va_list()();
    StaticString.description.getter("_sync_mergeServerSyncedBoardShare(boardIdentifier:ckShare:)", 59, 2);
    v52 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
    v53 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Trying to apply merge of a CKShare from server when we don't have a corresponding local board database row. {public}%@", 118, 2);
    v54 = String._bridgeToObjectiveC()();

    [v55 handleFailureInFunction:v52 file:v53 lineNumber:9681 isFatal:0 format:v54 args:v51];

    swift_setDeallocating();
    swift_arrayDestroy();
  }
}

void sub_100E469D8(void *a1, uint64_t a2)
{
  v4 = v2;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = (v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v4 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v11 = v12;
  (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7, v9);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v11, v7);
  if (v12)
  {
    if (qword_1019F2258 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v14 = static OS_os_log.boardStore;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v25[11] = a1;
  sub_1005B981C(&qword_101A21F40, &unk_1014B6900);
  v16 = Optional.debugDescription.getter();
  v18 = v17;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v16;
  *(inited + 40) = v18;
  v19 = static os_log_type_t.debug.getter();
  sub_100005404(v14, &_mh_execute_header, v19, "sync overwrite local CKShare with remote CKShare %@", 51, 2, inited);
  swift_setDeallocating();
  sub_100005070((inited + 32));
  v20 = sub_100E18A88(a2);
  if (v3)
  {
    return;
  }

  v21 = v20;
  sub_100E196EC(a2, a1, 0);
  if (a1)
  {
    if (v21)
    {
      sub_100006370(0, &qword_1019F52C0, CKShare_ptr);
      v22 = a1;
      v23 = v21;
      v24 = static NSObject.== infix(_:_:)();

      if (v24)
      {
        goto LABEL_10;
      }
    }
  }

  else if (!v21)
  {
    return;
  }

  sub_100DE02C4(a2, &unk_1018A5D08, sub_100EA34B8, &unk_1018A5D20);
  v23 = v21;
LABEL_10:
}

void sub_100E46CD0(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v28 = a3;
  v27 = a2;
  v8 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = (&v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v6 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v15 = v16;
  (*(v12 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v11, v13);
  v17 = v16;
  v18 = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v15, v11);
  if ((v18 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  if (!a1)
  {
    return;
  }

  sub_10000C83C(a1 + OBJC_IVAR____TtC8Freeform24CRLUserBoardMetadataData_boardIdentifier, v10, type metadata accessor for CRLBoardIdentifier);
  v19 = qword_1019F2270;

  if (v19 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v20 = static OS_os_log.dataSync;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v22 = UUID.uuidString.getter();
  v24 = v23;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v22;
  *(inited + 40) = v24;
  v25 = static os_log_type_t.info.getter();
  sub_100005404(v20, &_mh_execute_header, v25, "Merging board metadata data with id %{public}@", 46, 2, inited);
  swift_setDeallocating();
  sub_100005070((inited + 32));
  sub_100E06DBC(a1, 1, v27, v28, 1, v26);
  if (v5)
  {
    sub_100026028(v10, type metadata accessor for CRLBoardIdentifier);
  }

  else
  {

    sub_100026028(v10, type metadata accessor for CRLBoardIdentifier);
  }
}

void (*sub_100E46FDC(uint64_t a1, void *a2, int a3))(objc_class **, uint64_t)
{
  HIDWORD(v45) = a3;
  v47 = a2;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = (&v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v49 = v3;
  v10 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v9 = v10;
  v11 = enum case for DispatchPredicate.onQueue(_:);
  v12 = v6 + 104;
  v13 = *(v6 + 104);
  (v13)(v9, enum case for DispatchPredicate.onQueue(_:), v5, v7);
  v50 = v10;
  v14 = _dispatchPreconditionTest(_:)();
  v17 = *(v6 + 8);
  v16 = v6 + 8;
  v15 = v17;
  v17(v9, v5);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  v14 = OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_boardIdentifier;
  v46 = a1;
  v18 = a1 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_syncData;
  v20 = *(a1 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_syncData);
  v19 = *(v18 + 8);
  *v9 = v50;
  v21 = v11;
  v22 = v19;
  v13(v9, v21, v5);
  v12 = v20;
  sub_100024E84(v20, v22);
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  v15(v9, v5);
  if ((v20 & 1) == 0)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    swift_once();
    goto LABEL_8;
  }

  v16 = v46;
  v23 = v48;
  sub_100E43E74(v46 + v14, v47);
  v9 = v23;
  if (v23)
  {
LABEL_13:
    sub_100025870(v12, v22);
    return v15;
  }

  v50 = v22;
  LOBYTE(v15) = BYTE4(v45);
  if ((v45 & 0x100000000) != 0)
  {
    v24 = 2;
  }

  else
  {
    v24 = 1;
  }

  LODWORD(v48) = v24;
  if (qword_1019F2270 != -1)
  {
    goto LABEL_27;
  }

LABEL_8:
  v47 = static OS_os_log.dataSync;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C4D0;
  v26 = sub_1000053B0();
  v27 = v26;
  v28 = 0x676E696772654DLL;
  if (v15)
  {
    v28 = 0x746972777265764FLL;
  }

  v29 = 0xE700000000000000;
  if (v15)
  {
    v29 = 0xEB00000000676E69;
  }

  v15 = &type metadata for String;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = v26;
  *(inited + 32) = v28;
  *(inited + 40) = v29;
  v30 = *(v16 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_bucketIndex);
  *(inited + 96) = &type metadata for Int;
  *(inited + 104) = &protocol witness table for Int;
  *(inited + 72) = v30;
  v31 = UUID.uuidString.getter();
  *(inited + 136) = &type metadata for String;
  *(inited + 144) = v27;
  *(inited + 112) = v31;
  *(inited + 120) = v32;
  v33 = static os_log_type_t.info.getter();
  sub_100005404(v47, &_mh_execute_header, v33, "%{public}@ freehand bucket with index %{public}d, boardID: %{public}@", 69, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v22 = v50;
  sub_100E1F188(v16, v16 + v14, v48, v12, v50);
  if (v9)
  {
    goto LABEL_13;
  }

  sub_100025870(v12, v22);
  v35 = sub_100EFF9E4(v16 + v14);
  if (*(v16 + OBJC_IVAR____TtC8Freeform40CRLFreehandDrawingBucketSyncRemoteRecord_minRequiredVersionForSync + 8) & 1) != 0 || (v36 = v16 + OBJC_IVAR____TtC8Freeform40CRLFreehandDrawingBucketSyncRemoteRecord_minRequiredVersions, (*(v16 + OBJC_IVAR____TtC8Freeform40CRLFreehandDrawingBucketSyncRemoteRecord_minRequiredVersions + 49)) || (v37 = *(v16 + OBJC_IVAR____TtC8Freeform40CRLFreehandDrawingBucketSyncRemoteRecord_minRequiredVersionForSync), v38 = *(v36 + 32), v39 = sub_10001FF1C(), v40 = v39, v39 >= v37) && v39 >= v38)
  {
    if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
    {
      sub_1005BFFC4(_swiftEmptyArrayStorage);
      v15 = v44;
    }

    else
    {
      v15 = _swiftEmptySetSingleton;
    }
  }

  else
  {
    v41 = swift_initStackObject();
    v49 = xmmword_101465920;
    *(v41 + 16) = xmmword_101465920;
    *(v41 + 32) = v35;
    v50 = v35;
    sub_1005BFFC4(v41);
    v15 = v42;
    swift_setDeallocating();
    swift_arrayDestroy();
    if (v40 < v37)
    {
      v43 = swift_initStackObject();
      *(v43 + 16) = v49;
      *(v43 + 32) = v50;
      sub_1005BFFC4(v43);
      swift_setDeallocating();
      swift_arrayDestroy();
      return v15;
    }
  }

  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_1005BFFC4(_swiftEmptyArrayStorage);
  }

  else
  {
  }

  return v15;
}

void *sub_100E4755C(int64_t a1, int a2)
{
  LODWORD(v188) = a2;
  v183 = a1;
  v3 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  __chkstk_darwin(v3 - 8);
  v164 = &v155 - v4;
  v5 = type metadata accessor for URL();
  v166 = *(v5 - 8);
  __chkstk_darwin(v5);
  v163 = &v155 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v165 = &v155 - v8;
  *&v195 = type metadata accessor for UUID();
  v174 = *(v195 - 8);
  __chkstk_darwin(v195);
  v168 = &v155 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v192 = &v155 - v11;
  v173 = sub_1005B981C(&qword_101A21F30, &qword_1014B68F8);
  __chkstk_darwin(v173);
  v194 = &v155 - v12;
  v13 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v13 - 8);
  v189 = &v155 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1005B981C(&qword_101A21C68, &qword_1014B6530);
  __chkstk_darwin(v15 - 8);
  v17 = &v155 - v16;
  v18 = type metadata accessor for CRLBoardCRDTData(0);
  v191 = *(v18 - 8);
  __chkstk_darwin(v18);
  v190 = &v155 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v187 = &v155 - v21;
  v22 = type metadata accessor for DispatchPredicate();
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v26 = (&v155 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v26 = v27;
  v28 = *(v23 + 104);
  v179 = enum case for DispatchPredicate.onQueue(_:);
  v177 = v28;
  v178 = v23 + 104;
  v28(v26, v24);
  v176 = v27;
  LOBYTE(v27) = _dispatchPreconditionTest(_:)();
  v29 = *(v23 + 8);
  v180 = v26;
  v181 = v23 + 8;
  v182 = v22;
  v175 = v29;
  v29(v26, v22);
  if ((v27 & 1) == 0)
  {
    goto LABEL_88;
  }

  v167 = v5;
  v184 = v2;
  v5 = v183;
  v30 = (v183 + OBJC_IVAR____TtC8Freeform24CRLBoardSyncRemoteRecord_boardCRDTData);
  v31 = *(v183 + OBJC_IVAR____TtC8Freeform24CRLBoardSyncRemoteRecord_boardCRDTData + 8);
  if (v31 >> 60 == 15)
  {
    v32 = 0;
    v33 = v193;
  }

  else
  {
    v34 = *v30;
    sub_100024E84(*v30, *(v183 + OBJC_IVAR____TtC8Freeform24CRLBoardSyncRemoteRecord_boardCRDTData + 8));
    sub_100024E84(v34, v31);
    sub_1000066D0(&unk_101A22E10, type metadata accessor for CRLBoardCRDTData, byte_1014DD800);

    v35 = v193;
    CRDT.init(serializedData:)();
    if (v35)
    {

      sub_100025870(v34, v31);

      (*(v191 + 56))(v17, 1, 1, v18);
      sub_10000CAAC(v17, &qword_101A21C68, &qword_1014B6530);
      v32 = 0;
    }

    else
    {
      (*(v191 + 56))(v17, 0, 1, v18);
      v193 = type metadata accessor for CRLBoardCRDTData;
      v36 = v187;
      sub_100025668(v17, v187, type metadata accessor for CRLBoardCRDTData);
      LODWORD(v191) = *(v5 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_minRequiredVersions + 32);
      v37 = *(v5 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_minRequiredVersions);
      v185 = *(v5 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_minRequiredVersions + 16);
      v186 = v37;
      v38 = v190;
      sub_10000C83C(v36, v190, type metadata accessor for CRLBoardCRDTData);
      v39 = v189;
      sub_10000C83C(v5 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_boardIdentifier, v189, type metadata accessor for CRLBoardIdentifier);
      v40 = &v39[*(type metadata accessor for CRLBoardIdentifierStorage(0) + 20)];
      v41 = v40[1];
      v172 = *v40;

      sub_100026028(v39, type metadata accessor for CRLBoardIdentifier);
      sub_100025870(v34, v31);

      type metadata accessor for CRLBoardData(0);
      v32 = swift_allocObject();
      sub_100026028(v36, type metadata accessor for CRLBoardCRDTData);
      *(v32 + 16) = 7;
      v42 = v186;
      *(v32 + 40) = v185;
      *(v32 + 24) = v42;
      *(v32 + 56) = v191;
      sub_100025668(v38, v32 + OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData, v193);
      v43 = (v32 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
      *v43 = v172;
      v43[1] = v41;
    }

    v33 = 0;
  }

  *&v185 = OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_boardIdentifier;
  LODWORD(v190) = *(v5 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_tombstoned);
  *&v186 = OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_rootContainerUUID;
  v18 = *(v5 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_hideFromRecentlyDeleted);
  v171 = OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_alternateRootContainerUUID;
  v2 = *(v5 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_syncData);
  v44 = *(v5 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_syncData + 8);
  v45 = v180;
  v46 = v177;
  *v180 = v176;
  v47 = v182;
  v46(v45, v179, v182);
  v191 = v2;
  sub_100024E84(v2, v44);
  LOBYTE(v2) = _dispatchPreconditionTest(_:)();
  v175(v45, v47);
  if ((v2 & 1) == 0)
  {
    goto LABEL_89;
  }

  v189 = v44;
  LODWORD(v187) = v18;
  if (!v32)
  {
    v170 = 0;
    v64 = 0;
    v59 = v191;
    goto LABEL_25;
  }

  v193 = v33;
  LOBYTE(v2) = v188;
  if (v188)
  {
    v48 = 2;
  }

  else
  {
    v48 = 1;
  }

  LODWORD(v172) = v48;
  v49 = qword_1019F2270;

  v18 = v32;
  if (v49 != -1)
  {
    goto LABEL_90;
  }

  while (1)
  {
    v50 = static OS_os_log.dataSync;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    v52 = sub_1000053B0();
    v53 = v52;
    v54 = 0x676E696772654DLL;
    if (v2)
    {
      v54 = 0x746972777265764FLL;
    }

    v55 = 0xE700000000000000;
    if (v2)
    {
      v55 = 0xEB00000000676E69;
    }

    *(inited + 56) = &type metadata for String;
    *(inited + 64) = v52;
    *(inited + 32) = v54;
    *(inited + 40) = v55;
    v56 = UUID.uuidString.getter();
    *(inited + 96) = &type metadata for String;
    *(inited + 104) = v53;
    *(inited + 72) = v56;
    *(inited + 80) = v57;
    v58 = static os_log_type_t.info.getter();
    sub_100005404(v50, &_mh_execute_header, v58, "%{public}@ board data with id %{public}@", 40, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v59 = v191;
    v44 = v189;
    v60 = v184;
    v61 = v193;
    v62 = sub_100DFE838(v18, v172, v191, v189, v190 ^ 1, 1);
    v33 = v61;
    v32 = v18;
    if (v61)
    {

      sub_100025870(v59, v44);
LABEL_36:

      return v60;
    }

    v64 = v62;
    v65 = v63;

    if (v64)
    {
      v66 = v65;
    }

    else
    {
      v66 = 0;
    }

    v170 = v66;
    LODWORD(v18) = v187;
LABEL_25:
    v169 = v32;
    v172 = v64;
    if (v190)
    {
      if (qword_1019F2270 != -1)
      {
        swift_once();
      }

      v67 = static OS_os_log.dataSync;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v68 = swift_initStackObject();
      *(v68 + 16) = xmmword_10146C6B0;
      v69 = v185;
      v70 = UUID.uuidString.getter();
      v72 = v71;
      *(v68 + 56) = &type metadata for String;
      *(v68 + 64) = sub_1000053B0();
      *(v68 + 32) = v70;
      *(v68 + 40) = v72;
      v73 = static os_log_type_t.default.getter();
      sub_100005404(v67, &_mh_execute_header, v73, "Merging a tombstoned Board record with id %{public}@", 52, 2, v68);
      swift_setDeallocating();
      sub_100005070((v68 + 32));
      v59 = v191;
      v44 = v189;
      v60 = v184;
      sub_100E43198((v5 + v69), v5 + v186, v5 + v171, v191, v189);
      if (v33)
      {
        sub_100025870(v59, v44);
        goto LABEL_35;
      }

      v64 = v172;
      LODWORD(v18) = v187;
    }

    if (v18)
    {
      break;
    }

    sub_100025870(v59, v44);
    if (!v64)
    {
      v170 = 0;
LABEL_74:
      v76 = v185;
      goto LABEL_75;
    }

    v193 = v33;

    sub_100E9DF44();
    v84 = v83;
    v85 = OBJC_IVAR____TtC8Freeform24CRLBoardSyncRemoteRecord_assets;
    swift_beginAccess();
    v86 = *(v5 + v85);
    v87 = v86 + 64;
    v88 = 1 << *(v86 + 32);
    if (v88 < 64)
    {
      v89 = ~(-1 << v88);
    }

    else
    {
      v89 = -1;
    }

    v90 = v89 & *(v86 + 64);
    v158 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManager;
    v159 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore__assetFileManagerLock;
    v5 = (v88 + 63) >> 6;
    v191 = v174 + 16;
    v187 = v84 + 56;
    *&v186 = v174 + 8;
    v160 = (v166 + 48);
    v156 = (v166 + 8);
    v157 = (v166 + 32);
    v171 = v86;
    swift_bridgeObjectRetain_n();
    v18 = 0;
    v155 = xmmword_10146C6B0;
    v91 = v194;
    v190 = v84;
    v166 = v87;
    v162 = v5;
    while (v90)
    {
LABEL_51:
      v93 = __clz(__rbit64(v90)) | (v18 << 6);
      v94 = v171;
      v95 = *(v171 + 48) + *(v174 + 72) * v93;
      v96 = *(v174 + 16);
      v188 = *(v174 + 72);
      v189 = v96;
      (v96)(v91, v95, v195);
      v97 = *(*(v94 + 56) + 8 * v93);
      *(v91 + *(v173 + 48)) = v97;
      v98 = v190;
      if (*(v190 + 16))
      {
        sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v161 = v97;

        v99 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v100 = -1 << *(v98 + 32);
        v101 = v99 & ~v100;
        if ((*(v187 + ((v101 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v101))
        {
          v102 = ~v100;
          while (1)
          {
            v103 = *(v98 + 48) + v101 * v188;
            v104 = v192;
            v105 = v195;
            (v189)(v192, v103, v195);
            sub_1000066D0(&qword_1019F37C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v106 = dispatch thunk of static Equatable.== infix(_:_:)();
            v107 = *v186;
            (*v186)(v104, v105);
            if (v106)
            {
              break;
            }

            v101 = (v101 + 1) & v102;
            v98 = v190;
            if (((*(v187 + ((v101 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v101) & 1) == 0)
            {
              goto LABEL_44;
            }
          }

          v108 = v180;
          v110 = v176;
          v109 = v177;
          *v180 = v176;
          v111 = v182;
          v109(v108, v179, v182);
          v112 = v110;
          LOBYTE(v110) = _dispatchPreconditionTest(_:)();
          v175(v108, v111);
          if ((v110 & 1) == 0)
          {
            __break(1u);
            goto LABEL_94;
          }

          v113 = v161;
          v114 = v161 + OBJC_IVAR____TtC8Freeform24CRLAssetSyncRemoteRecord_metadata;
          v115 = v168;
          (v189)(v168, v161 + OBJC_IVAR____TtC8Freeform24CRLAssetSyncRemoteRecord_metadata, v195);
          v116 = (v114 + *(type metadata accessor for CRLAssetSyncMetadata(0) + 20));
          v117 = *v116;
          v188 = v116[1];
          v189 = v117;
          v118 = v193;
          sub_100E2CA3C(v115, v117, v188);
          v119 = v167;
          if (v118)
          {
            (v107)(v115, v195);

            v60 = v171;

            sub_10000CAAC(v194, &qword_101A21F30, &qword_1014B68F8);

            return v60;
          }

          v120 = v164;
          sub_10000BE14(v113 + OBJC_IVAR____TtC8Freeform24CRLAssetSyncRemoteRecord_downloadedFileURL, v164, &unk_1019F33C0, &unk_101468A60);
          v121 = (*v160)(v120, 1, v119);
          v193 = 0;
          if (v121 == 1)
          {
            (v107)(v115, v195);
            sub_10000CAAC(v120, &unk_1019F33C0, &unk_101468A60);
          }

          else
          {
            (*v157)(v165, v120, v119);
            v122 = v184;
            v123 = *(v184 + v159);
            os_unfair_lock_lock(*(v123 + 16));
            v124 = v158;
            v125 = *&v122[v158];
            if (v125)
            {
              v126 = *&v122[v158];
            }

            else
            {
              v127 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager(0));
              v128 = v122;
              v129 = sub_10001F1A0(v128);

              v130 = *&v122[v124];
              *&v122[v124] = v129;
              v126 = v129;

              v125 = 0;
            }

            v131 = *(v123 + 16);
            v132 = v125;
            os_unfair_lock_unlock(v131);
            v133 = v163;
            v134 = v168;
            v135 = v165;
            v136 = v193;
            sub_10109223C(v168, v189, v188, v165, 1, v163);
            if (v136)
            {

              if (qword_1019F2258 != -1)
              {
                swift_once();
              }

              v137 = static OS_os_log.boardStore;
              sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
              v138 = swift_initStackObject();
              *(v138 + 16) = v155;
              swift_getErrorValue();
              v193 = Error.localizedDescription.getter();
              v189 = v139;
              *(v138 + 56) = &type metadata for String;
              *(v138 + 64) = sub_1000053B0();
              *(v138 + 32) = v193;
              *(v138 + 40) = v189;
              v140 = static os_log_type_t.error.getter();
              sub_100005404(v137, &_mh_execute_header, v140, "Failed to create an asset from data with error: %@", 50, 2, v138);

              swift_setDeallocating();
              sub_100005070((v138 + 32));
              (*v156)(v135, v167);
              (v107)(v168, v195);
              v193 = 0;
            }

            else
            {
              v193 = 0;

              v141 = *v156;
              v142 = v133;
              v143 = v167;
              (*v156)(v142, v167);
              v141(v135, v143);
              (v107)(v134, v195);
            }
          }
        }
      }

      else
      {
      }

LABEL_44:
      v90 &= v90 - 1;
      v91 = v194;
      sub_10000CAAC(v194, &qword_101A21F30, &qword_1014B68F8);
      v87 = v166;
      v5 = v162;
    }

    v2 = v193;
    while (1)
    {
      v92 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v92 >= v5)
      {

        v5 = v183;
        v33 = v2;
        goto LABEL_74;
      }

      v90 = *(v87 + 8 * v92);
      ++v18;
      if (v90)
      {
        v18 = v92;
        goto LABEL_51;
      }
    }

    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    swift_once();
  }

  v193 = v33;
  if (qword_1019F2270 != -1)
  {
    swift_once();
  }

  v74 = static OS_os_log.dataSync;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v75 = swift_initStackObject();
  *(v75 + 16) = xmmword_10146C6B0;
  v76 = v185;
  v77 = UUID.uuidString.getter();
  v79 = v78;
  *(v75 + 56) = &type metadata for String;
  *(v75 + 64) = sub_1000053B0();
  *(v75 + 32) = v77;
  *(v75 + 40) = v79;
  v80 = static os_log_type_t.default.getter();
  sub_100005404(v74, &_mh_execute_header, v80, "Purging board with id %{public}@ after syncing hideFromRecentlyDeleted state", 76, 2, v75);
  swift_setDeallocating();
  sub_100005070((v75 + 32));
  v60 = v184;
  v81 = v193;
  sub_100E0C7BC((v5 + v76), 0xD000000000000025, 0x80000001015A7410, 0);
  v33 = v81;
  sub_100025870(v191, v189);
  if (v81)
  {
LABEL_35:

    goto LABEL_36;
  }

  v144 = v170;
  if (!v172)
  {
    v144 = 0;
  }

  v170 = v144;
LABEL_75:
  v107 = sub_100EFF9E4(v5 + v76);
  v145 = *(v5 + OBJC_IVAR____TtC8Freeform24CRLBoardSyncRemoteRecord_minRequiredVersionForSync);
  v146 = *(v5 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_minRequiredVersions + 16);
  v147 = sub_10001FF1C();
  v148 = v147;
  if (v147 < v145)
  {
    v193 = v33;
    v170 = 2;
    goto LABEL_79;
  }

  if (v147 < v146)
  {
    v193 = v33;
LABEL_79:
    v149 = swift_initStackObject();
    v195 = xmmword_101465920;
    *(v149 + 16) = xmmword_101465920;
    *(v149 + 32) = v107;
    v150 = v107;
    sub_1005BFFC4(v149);
    v60 = v151;
    swift_setDeallocating();
    swift_arrayDestroy();
    if (v148 < v145)
    {
      v152 = swift_initStackObject();
      *(v152 + 16) = v195;
      *(v152 + 32) = v150;
      v153 = v150;
      sub_1005BFFC4(v152);

      return v60;
    }

    goto LABEL_84;
  }

  if (_swiftEmptyArrayStorage >> 62)
  {
LABEL_94:
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_1005BFFC4(_swiftEmptyArrayStorage);
      v60 = v154;
      goto LABEL_84;
    }
  }

  v60 = _swiftEmptySetSingleton;
LABEL_84:
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_1005BFFC4(_swiftEmptyArrayStorage);
  }

  else
  {
  }

  return v60;
}

void *sub_100E48B08(uint64_t a1)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v8 = v9;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4, v6);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_22:
    swift_once();
    goto LABEL_6;
  }

  v12 = sub_100E9FE1C(v11);
  if (v12)
  {
    sub_100E46CD0(v12, *(a1 + OBJC_IVAR____TtC8Freeform30CRLUserBoardMetadataSyncRecord_syncData), *(a1 + OBJC_IVAR____TtC8Freeform30CRLUserBoardMetadataSyncRecord_syncData + 8));
    if (v2)
    {

      return v1;
    }

    if (qword_1019F25F8 != -1)
    {
      swift_once();
    }

    v19 = qword_101AD87A8;
    v20 = sub_100EFF9E4(a1 + OBJC_IVAR____TtC8Freeform30CRLUserBoardMetadataSyncRecord_boardIdentifier);
    v21 = *(a1 + OBJC_IVAR____TtC8Freeform36CRLUserBoardMetadataSyncRemoteRecord_minRequiredVersionForSync);
    v22 = *(a1 + OBJC_IVAR____TtC8Freeform30CRLUserBoardMetadataSyncRecord_minRequiredVersionForFullFidelity);
    v23 = sub_10001FF1C();
    if (v23 >= v21 && v23 >= v22)
    {
      if (!(_swiftEmptyArrayStorage >> 62))
      {
        v1 = _swiftEmptySetSingleton;
        goto LABEL_19;
      }

      if (_CocoaArrayWrapper.endIndex.getter())
      {
        sub_1005BFFC4(_swiftEmptyArrayStorage);
        v1 = v33;
      }

      else
      {
        v1 = _swiftEmptySetSingleton;
      }

      if (!(_swiftEmptyArrayStorage >> 62))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v25 = v23;
      inited = swift_initStackObject();
      v34 = xmmword_101465920;
      *(inited + 16) = xmmword_101465920;
      *(inited + 32) = v19;
      v27 = v19;
      sub_1005BFFC4(inited);
      v1 = v28;
      swift_setDeallocating();
      swift_arrayDestroy();
      if (v25 < v21)
      {
        v29 = swift_initStackObject();
        *(v29 + 16) = v34;
        *(v29 + 32) = v20;
        v30 = v20;
        sub_1005BFFC4(v29);

        return v1;
      }

      if (!(_swiftEmptyArrayStorage >> 62))
      {
LABEL_19:

        return v1;
      }
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
      sub_1005BFFC4(_swiftEmptyArrayStorage);

      return v1;
    }

    goto LABEL_19;
  }

  if (qword_1019F2258 != -1)
  {
    goto LABEL_22;
  }

LABEL_6:
  v13 = static OS_os_log.boardStore;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_10146C6B0;
  v15 = UUID.uuidString.getter();
  v17 = v16;
  *(v14 + 56) = &type metadata for String;
  *(v14 + 64) = sub_1000053B0();
  *(v14 + 32) = v15;
  *(v14 + 40) = v17;
  v18 = static os_log_type_t.error.getter();
  sub_100005404(v13, &_mh_execute_header, v18, "Unable to create CRLUserBoardMetadataData from CRLUserBoardMetadataSyncRemoteRecord remoteRecord: %{public}@.", 109, 2, v14);
  swift_setDeallocating();
  sub_100005070((v14 + 32));
  if (!(_swiftEmptyArrayStorage >> 62))
  {
    return _swiftEmptySetSingleton;
  }

  if (_CocoaArrayWrapper.endIndex.getter())
  {
    sub_1005BFFC4(_swiftEmptyArrayStorage);
    v1 = v32;
  }

  else
  {
    v1 = _swiftEmptySetSingleton;
  }

  if (_CocoaArrayWrapper.endIndex.getter())
  {
    sub_1005BFFC4(_swiftEmptyArrayStorage);
  }

  return v1;
}

void sub_100E48FE0(uint64_t a1, char a2)
{
  LOBYTE(v4) = a2;
  v66 = type metadata accessor for DispatchWorkItemFlags();
  v71 = *(v66 - 8);
  __chkstk_darwin(v66);
  v69 = v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for DispatchQoS();
  v68 = *(v70 - 8);
  __chkstk_darwin(v70);
  v67 = v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CRLBoardIdentifier(0);
  v73 = *(v7 - 8);
  __chkstk_darwin(v7 - 8);
  v74 = v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v72 = v63 - v10;
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 1);
  v13 = __chkstk_darwin(v11);
  v15 = (v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *&v2[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
  *v15 = v16;
  (*(v12 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v11, v13);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v15, v11);
  if (v16)
  {
    v87 = _swiftEmptyDictionarySingleton;
    v85 = _swiftEmptySetSingleton;
    v86 = _swiftEmptySetSingleton;
    v84 = _swiftEmptySetSingleton;
    v83 = 0;
    v82 = _swiftEmptySetSingleton;
    aBlock = _swiftEmptyArrayStorage;
    swift_retain_n();
    v11 = v2;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) < *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
LABEL_40:
    __break(1u);
  }

  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_3:
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v18 = aBlock;
  if (aBlock >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_5;
    }
  }

  else if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_5:
    v19 = v4;
    while (1)
    {
      v20 = v18 >> 62;
      if (v18 >> 62)
      {
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
          return;
        }

        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_72;
        }
      }

      else if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      if ((v18 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v21 = v18 & 0xFFFFFFFFFFFFFF8;
        if (!v20)
        {
          goto LABEL_11;
        }
      }

      else
      {
        if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v4 = *(v18 + 32);

        v21 = v18 & 0xFFFFFFFFFFFFFF8;
        if (!v20)
        {
LABEL_11:
          v22 = *(v21 + 16);
          if (!v22)
          {
            goto LABEL_38;
          }

          goto LABEL_20;
        }
      }

      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_38;
      }

      if (_CocoaArrayWrapper.endIndex.getter() < 1)
      {
        goto LABEL_39;
      }

      v22 = _CocoaArrayWrapper.endIndex.getter();
LABEL_20:
      v23 = v22 - 1;
      if (__OFSUB__(v22, 1))
      {
        goto LABEL_37;
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      aBlock = v18;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v20)
        {
          if (v23 <= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_28;
          }

          goto LABEL_27;
        }

LABEL_26:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_27;
      }

      if (v20)
      {
        goto LABEL_26;
      }

LABEL_27:
      v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      aBlock = v18;
LABEL_28:
      sub_10067CF10(0, 1, 0);
      aBlock = v18;
      sub_100E49C30(v4, v11, v19 == 1, &v87, &v86, &v85, &v84, &v83);
      if (v3)
      {

        goto LABEL_47;
      }

      swift_beginAccess();

      sub_10079B674(v25);

      v18 = aBlock;
      if (aBlock >> 62)
      {
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
LABEL_33:

          v26 = v86;
          goto LABEL_44;
        }
      }

      else if (!*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }
    }
  }

  v26 = _swiftEmptySetSingleton;
LABEL_44:
  v27 = sub_10001FF1C();
  sub_100E2863C(v26, v27);
  if (v3)
  {

LABEL_47:
  }

  else
  {
    v28 = v85;
    sub_100E2B4E8(v85);
    v63[1] = v28;
    v63[2] = v26;
    v29 = v82;
    v30 = v82 + 7;
    v31 = 1 << *(v82 + 32);
    v32 = -1;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    v33 = v32 & v82[7];
    v34 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_transientSyncExclusions;
    v35 = (v31 + 63) >> 6;

    v36 = 0;
    v64 = v29;
    while (v33)
    {
LABEL_59:
      v38 = v29[6];
      v65 = *(v73 + 72);
      v39 = v72;
      sub_10000C83C(v38 + v65 * (__clz(__rbit64(v33)) | (v36 << 6)), v72, type metadata accessor for CRLBoardIdentifier);
      v40 = v74;
      sub_100025668(v39, v74, type metadata accessor for CRLBoardIdentifier);
      swift_beginAccess();
      v41 = sub_1000486F0(v40);
      if (v42)
      {
        v43 = v41;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v45 = *&v11[v34];
        v81 = v45;
        *&v11[v34] = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_100AAC740();
          v45 = v81;
        }

        sub_100026028(*(v45 + 48) + v43 * v65, type metadata accessor for CRLBoardIdentifier);

        sub_100BDBBA4(v43, v45);
        *&v11[v34] = v45;
      }

      v33 &= v33 - 1;
      swift_endAccess();
      sub_100026028(v74, type metadata accessor for CRLBoardIdentifier);
      v29 = v64;
    }

    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        __break(1u);
        goto LABEL_71;
      }

      if (v37 >= v35)
      {
        break;
      }

      v33 = v30[v37];
      ++v36;
      if (v33)
      {
        v36 = v37;
        goto LABEL_59;
      }
    }

    v46 = &unk_101466000;
    v47 = v66;
    if (v29[2])
    {
      v48 = sub_100BD9514(_swiftEmptyArrayStorage);
      if (v29[2])
      {
        sub_100006370(0, &qword_1019F2D90, OS_dispatch_queue_ptr);
        v74 = static OS_dispatch_queue.main.getter();
        v49 = swift_allocObject();
        *(v49 + 16) = v11;
        *(v49 + 24) = v29;
        *(v49 + 32) = 0;
        *(v49 + 40) = v48;
        v79 = sub_10007A268;
        v80 = v49;
        aBlock = _NSConcreteStackBlock;
        v76 = *"";
        v77 = sub_100007638;
        v78 = &unk_1018A5C30;
        v50 = _Block_copy(&aBlock);
        v51 = v11;

        v52 = v67;
        static DispatchQoS.unspecified.getter();
        aBlock = _swiftEmptyArrayStorage;
        sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
        sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00, &protocol conformance descriptor for [A]);
        v53 = v69;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v54 = v74;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v50);

        v55 = v53;
        v46 = &unk_101466000;
        (*(v71 + 8))(v55, v47);
        (*(v68 + 8))(v52, v70);
      }

      else
      {
      }
    }

    v56 = v84;
    if ((v83 & 1) != 0 || v84[2])
    {
      sub_100006370(0, &qword_1019F2D90, OS_dispatch_queue_ptr);
      v74 = static OS_dispatch_queue.main.getter();
      v57 = swift_allocObject();
      *(v57 + 16) = _swiftEmptySetSingleton;
      *(v57 + 24) = _swiftEmptySetSingleton;
      *(v57 + 32) = v56;
      *(v57 + 40) = 0;
      *(v57 + 48) = v11;
      v79 = sub_1000260F4;
      v80 = v57;
      aBlock = _NSConcreteStackBlock;
      v76 = v46[308];
      v77 = sub_100007638;
      v78 = &unk_1018A5C80;
      v58 = _Block_copy(&aBlock);
      v59 = v11;

      v60 = v67;
      static DispatchQoS.unspecified.getter();
      aBlock = _swiftEmptyArrayStorage;
      sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
      sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00, &protocol conformance descriptor for [A]);
      v61 = v69;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v62 = v74;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v58);

      (*(v71 + 8))(v61, v47);
      (*(v68 + 8))(v60, v70);
    }
  }
}

void sub_100E49C30(uint64_t a1, uint64_t a2, int a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8)
{
  v146 = a8;
  v147 = a7;
  v149 = a6;
  v152 = a4;
  LODWORD(v153) = a3;
  v12 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v12 - 8);
  v154 = &v141 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v141 - v15;
  v155 = type metadata accessor for DispatchPredicate();
  v17 = *(v155 - 1);
  v18 = __chkstk_darwin(v155);
  v20 = (&v141 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(a1 + 32);
  if (!v21)
  {
    if (qword_1019F2258 == -1)
    {
LABEL_9:
      v30 = static OS_os_log.boardStore;
      v31 = static os_log_type_t.info.getter();
      sub_100005404(v30, &_mh_execute_header, v31, "Skipping a change with no data", 30, 2, _swiftEmptyArrayStorage);
      return;
    }

LABEL_50:
    swift_once();
    goto LABEL_9;
  }

  v148 = v16;
  v144 = a5;
  v150 = a2;
  v151 = v8;
  v22 = *(a2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v20 = v22;
  v23 = enum case for DispatchPredicate.onQueue(_:);
  v24 = v155;
  v143 = *(v17 + 104);
  (v143)(v20, enum case for DispatchPredicate.onQueue(_:), v155, v18);
  swift_unknownObjectRetain();
  v142 = v22;
  LOBYTE(v22) = _dispatchPreconditionTest(_:)();
  v25 = *(v17 + 8);
  v25(v20, v24);
  if ((v22 & 1) == 0)
  {
    __break(1u);
    goto LABEL_50;
  }

  type metadata accessor for CRLBoardItemSyncRemoteRecord(0);
  if (swift_dynamicCastClass() || (type metadata accessor for CRLBoardItemSyncRemoteRecord.Partial(0), swift_dynamicCastClass()))
  {
    type metadata accessor for CRLBoardItemSyncRemoteRecord.Partial(0);
    v26 = swift_dynamicCastClass();
    if (v26)
    {
      swift_unknownObjectRetain();
      v27 = v151;
      v28 = sub_100E4AE54(v26);
      v29 = v27;
      swift_unknownObjectRelease();
      if (v27)
      {
        goto LABEL_27;
      }

      v145 = v21;
    }

    else
    {
      v28 = swift_dynamicCastClassUnconditional();
      v145 = v21;
      swift_unknownObjectRetain();
      v29 = v151;
    }

    v32 = OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_boardIdentifier;
    v33 = v154;
    sub_10000C83C(v28 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_boardIdentifier, v154, type metadata accessor for CRLBoardIdentifier);

    v34 = v148;
    sub_100031F10(v148, v33);
    sub_100026028(v34, type metadata accessor for CRLBoardIdentifier);
    sub_100E43F64(v28, v152, v153 & 1, v26 != 0);
    if (v29)
    {
      swift_unknownObjectRelease();

      return;
    }

    v36 = v35;

    sub_100637378(v37);

    sub_100637378(v38);
    if (!v36)
    {
      swift_unknownObjectRelease();

      return;
    }

    if (v36 == 1)
    {

      *v146 = 1;
    }

    else
    {
      v49 = v154;
      sub_10000C83C(v28 + v32, v154, type metadata accessor for CRLBoardIdentifier);
      v50 = v148;
      sub_100031F10(v148, v49);

      sub_100026028(v50, type metadata accessor for CRLBoardIdentifier);
    }

    goto LABEL_27;
  }

  type metadata accessor for CRLBoardSyncRemoteRecord(0);
  v39 = swift_dynamicCastClass();
  if (v39)
  {
    v145 = v21;
    v40 = OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_boardIdentifier;
    v41 = v39;
    v42 = v154;
    sub_10000C83C(v39 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_boardIdentifier, v154, type metadata accessor for CRLBoardIdentifier);
    v43 = v148;
    sub_100031F10(v148, v42);
    sub_100026028(v43, type metadata accessor for CRLBoardIdentifier);
    v44 = v151;
    sub_100E4755C(v41, v153 & 1);
    if (!v44)
    {
      v46 = v45;
      v155 = v40;

      sub_100637378(v47);

      sub_100637378(v48);
      if (v46)
      {
        if (v46 == 1)
        {

          *v146 = 1;
        }

        else
        {
          sub_10000C83C(v155 + v41, v42, type metadata accessor for CRLBoardIdentifier);
          v62 = v148;
          sub_100031F10(v148, v42);

          sub_100026028(v62, type metadata accessor for CRLBoardIdentifier);
        }

        goto LABEL_27;
      }

      goto LABEL_31;
    }

LABEL_27:
    swift_unknownObjectRelease();
    return;
  }

  type metadata accessor for CRLBoardShareSyncRemoteRecord(0);
  v51 = swift_dynamicCastClass();
  if (v51)
  {
    v52 = v51;
    v145 = v21;
    v21 = v142;
    v53 = v143;
    *v20 = v142;
    v54 = v155;
    v53(v20, v23, v155);
    v55 = v21;
    v56 = _dispatchPreconditionTest(_:)();
    v25(v20, v54);
    if (v56)
    {
      sub_100E469D8(*(v52 + OBJC_IVAR____TtC8Freeform23CRLBoardShareSyncRecord_ckShare), v52 + OBJC_IVAR____TtC8Freeform23CRLBoardShareSyncRecord_boardIdentifier);
      goto LABEL_27;
    }

    __break(1u);
LABEL_54:
    swift_once();
LABEL_39:
    v67 = static OS_os_log.boardStore;
    v68 = static os_log_type_t.error.getter();
    sub_100005404(v67, &_mh_execute_header, v68, "Attempted to apply unknown CRLSyncRemoteRecord type", 51, 2, _swiftEmptyArrayStorage);
    type metadata accessor for CRLUnknownSyncRemoteRecord();
    v69 = swift_dynamicCastClass();
    if (v69)
    {
      v145 = v21;
      v70 = *(v69 + 16);
      v71 = [v70 zoneID];
      if (qword_1019F2270 != -1)
      {
        swift_once();
      }

      v155 = static OS_os_log.dataSync;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146BDE0;
      v73 = [v70 recordName];
      v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v76 = v75;

      *(inited + 56) = &type metadata for String;
      v77 = sub_1000053B0();
      *(inited + 64) = v77;
      *(inited + 32) = v74;
      *(inited + 40) = v76;
      v78 = [v71 zoneName];
      v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v81 = v80;

      *(inited + 96) = &type metadata for String;
      *(inited + 104) = v77;
      *(inited + 72) = v79;
      *(inited + 80) = v81;
      v82 = static os_log_type_t.default.getter();
      sub_100005404(v155, &_mh_execute_header, v82, "Adding unknown remote record to zonesNeedingRefetch, recordID: %@, zoneID: %@", 77, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      sub_100E7227C(&v156, v71, &qword_1019F69D0, CKRecordZoneID_ptr, &unk_1019F3540, &unk_1014B6540);
      v83 = v156;
      swift_unknownObjectRelease();
    }

    else
    {
      v155 = objc_opt_self();
      v117 = [v155 _atomicIncrementAssertCount];
      v156 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v156, "Unknown record type", 19, 2u);
      StaticString.description.getter("_sync_mergeRemoteSyncRecords(_:context:)", 40, 2);
      v118 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
      v119 = String._bridgeToObjectiveC()();

      v120 = [v119 lastPathComponent];

      v121 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v123 = v122;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v124 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v125 = swift_initStackObject();
      *(v125 + 16) = xmmword_10146CA70;
      *(v125 + 56) = &type metadata for Int32;
      *(v125 + 64) = &protocol witness table for Int32;
      *(v125 + 32) = v117;
      v126 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(v125 + 96) = v126;
      v127 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
      *(v125 + 104) = v127;
      *(v125 + 72) = v118;
      *(v125 + 136) = &type metadata for String;
      v128 = sub_1000053B0();
      *(v125 + 112) = v121;
      *(v125 + 120) = v123;
      *(v125 + 176) = &type metadata for UInt;
      *(v125 + 184) = &protocol witness table for UInt;
      *(v125 + 144) = v128;
      *(v125 + 152) = 9865;
      v129 = v156;
      *(v125 + 216) = v126;
      *(v125 + 224) = v127;
      *(v125 + 192) = v129;
      v130 = v118;
      v131 = v129;
      v132 = static os_log_type_t.error.getter();
      sub_100005404(v124, &_mh_execute_header, v132, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v125);

      v133 = static os_log_type_t.error.getter();
      sub_100005404(v124, &_mh_execute_header, v133, "Unknown record type", 19, 2, _swiftEmptyArrayStorage);

      sub_10063DF98(_swiftEmptyArrayStorage, "Unknown record type");
      type metadata accessor for __VaListBuilder();
      v134 = swift_allocObject();
      v134[2] = 8;
      v134[3] = 0;
      v134[4] = 0;
      v134[5] = 0;
      v135 = __VaListBuilder.va_list()();
      StaticString.description.getter("_sync_mergeRemoteSyncRecords(_:context:)", 40, 2);
      v136 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
      v137 = String._bridgeToObjectiveC()();

      StaticString.description.getter("Unknown record type", 19, 2);
      v138 = String._bridgeToObjectiveC()();

      [v155 handleFailureInFunction:v136 file:v137 lineNumber:9865 isFatal:1 format:v138 args:v135];

      SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v139, v140);
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    return;
  }

  type metadata accessor for CRLFreehandDrawingBucketSyncRemoteRecord(0);
  v57 = swift_dynamicCastClass();
  if (v57)
  {
    v58 = v151;
    v59 = sub_100E46FDC(v57, v152, v153 & 1);
    if (!v58)
    {
      v61 = v60;
      sub_100637378(v59);
      sub_100637378(v61);
    }

    goto LABEL_27;
  }

  type metadata accessor for CRLUserBoardMetadataSyncRemoteRecord(0);
  v63 = swift_dynamicCastClass();
  v64 = v151;
  if (!v63)
  {
    if (qword_1019F2258 == -1)
    {
      goto LABEL_39;
    }

    goto LABEL_54;
  }

  if (v153)
  {
    if (qword_1019F2270 != -1)
    {
      swift_once();
    }

    v65 = static OS_os_log.dataSync;
    v66 = static os_log_type_t.error.getter();
    sub_100005404(v65, &_mh_execute_header, v66, "Unexpected call to overwrite a boardMetadataRecord.", 51, 2, _swiftEmptyArrayStorage);
    goto LABEL_27;
  }

  v84 = v63;
  v85 = sub_100E48B08(v63);
  if (v64)
  {
    goto LABEL_27;
  }

  v88 = v85;
  v89 = v86;
  v90 = v87;

  sub_100637378(v91);

  sub_100637378(v92);
  if (!v90)
  {
LABEL_31:
    swift_unknownObjectRelease();

    return;
  }

  if (v90 != 1)
  {
    v115 = v154;
    sub_10000C83C(v84 + OBJC_IVAR____TtC8Freeform30CRLUserBoardMetadataSyncRecord_boardIdentifier, v154, type metadata accessor for CRLBoardIdentifier);
    v116 = v148;
    sub_100031F10(v148, v115);

    sub_100026028(v116, type metadata accessor for CRLBoardIdentifier);
    goto LABEL_27;
  }

  v153 = v89;
  v154 = v88;
  v145 = v21;
  v151 = 0;
  v152 = objc_opt_self();
  v93 = [v152 _atomicIncrementAssertCount];
  v156 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v156, "Merging a CRLUserBoardMetadataSyncRemoteRecord shouldn't result in us becoming supported again.", 95, 2u);
  StaticString.description.getter("_sync_applySyncRemoteRecord(record:shouldOverwrite:isResultOfSave:cachedBoardIdentifiers:zonesToRefetch:unsupportedZonesToRefetch:unsupportedBoardIdentifiers:needsHierarchyChangeNotification:modifiedBoardIdentifiers:)", 217, 2);
  v155 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
  v94 = String._bridgeToObjectiveC()();

  v95 = [v94 lastPathComponent];

  v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v98 = v97;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v99 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v100 = swift_initStackObject();
  *(v100 + 16) = xmmword_10146CA70;
  *(v100 + 56) = &type metadata for Int32;
  *(v100 + 64) = &protocol witness table for Int32;
  *(v100 + 32) = v93;
  v101 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(v100 + 96) = v101;
  v102 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
  *(v100 + 104) = v102;
  v103 = v155;
  *(v100 + 72) = v155;
  *(v100 + 136) = &type metadata for String;
  v104 = sub_1000053B0();
  *(v100 + 112) = v96;
  *(v100 + 120) = v98;
  *(v100 + 176) = &type metadata for UInt;
  *(v100 + 184) = &protocol witness table for UInt;
  *(v100 + 144) = v104;
  *(v100 + 152) = 9967;
  v105 = v156;
  *(v100 + 216) = v101;
  *(v100 + 224) = v102;
  *(v100 + 192) = v105;
  v106 = v103;
  v107 = v105;
  v108 = static os_log_type_t.error.getter();
  sub_100005404(v99, &_mh_execute_header, v108, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v100);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v109 = static os_log_type_t.error.getter();
  sub_100005404(v99, &_mh_execute_header, v109, "Merging a CRLUserBoardMetadataSyncRemoteRecord shouldn't result in us becoming supported again.", 95, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v110 = swift_allocObject();
  v110[2] = 8;
  v110[3] = 0;
  v110[4] = 0;
  v110[5] = 0;
  v111 = __VaListBuilder.va_list()();
  StaticString.description.getter("_sync_applySyncRemoteRecord(record:shouldOverwrite:isResultOfSave:cachedBoardIdentifiers:zonesToRefetch:unsupportedZonesToRefetch:unsupportedBoardIdentifiers:needsHierarchyChangeNotification:modifiedBoardIdentifiers:)", 217, 2);
  v112 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
  v113 = String._bridgeToObjectiveC()();

  StaticString.description.getter("Merging a CRLUserBoardMetadataSyncRemoteRecord shouldn't result in us becoming supported again.", 95, 2);
  v114 = String._bridgeToObjectiveC()();

  [v152 handleFailureInFunction:v112 file:v113 lineNumber:9967 isFatal:0 format:v114 args:v111];
  swift_unknownObjectRelease();
}

char *sub_100E4AE54(uint64_t a1)
{
  v4 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v4 - 8);
  v139 = &v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v135 = *(v6 - 8);
  __chkstk_darwin(v6);
  v136 = &v117 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v8 - 8);
  v137 = &v117 - v9;
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = (&v117 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue);
  *v14 = v15;
  (*(v11 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v10, v12);
  v16 = v15;
  LOBYTE(v15) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v14, v10);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v17 = OBJC_IVAR____TtCC8Freeform28CRLBoardItemSyncRemoteRecord7Partial_id;
  v18 = OBJC_IVAR____TtCC8Freeform28CRLBoardItemSyncRemoteRecord7Partial_boardIdentifier;
  v19 = sub_100DECDC4(a1 + OBJC_IVAR____TtCC8Freeform28CRLBoardItemSyncRemoteRecord7Partial_id, a1 + OBJC_IVAR____TtCC8Freeform28CRLBoardItemSyncRemoteRecord7Partial_boardIdentifier);
  if (v2)
  {

    goto LABEL_4;
  }

  v39 = v19;
  if (!v19)
  {
LABEL_4:
    v139 = objc_opt_self();
    LODWORD(v6) = [v139 _atomicIncrementAssertCount];
    v138[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v138, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("makeFullRecord(fromPartial:)", 28, 2);
    v137 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
    v20 = String._bridgeToObjectiveC()();

    v21 = [v20 lastPathComponent];

    v136 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v22;

    if (qword_1019F20A0 == -1)
    {
LABEL_5:
      v23 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v6;
      v25 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(inited + 96) = v25;
      v26 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
      *(inited + 104) = v26;
      v27 = v137;
      *(inited + 72) = v137;
      *(inited + 136) = &type metadata for String;
      v28 = sub_1000053B0();
      *(inited + 112) = v136;
      *(inited + 120) = v14;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v28;
      *(inited + 152) = 11888;
      v29 = v138[0];
      *(inited + 216) = v25;
      *(inited + 224) = v26;
      *(inited + 192) = v29;
      v30 = v27;
      v31 = v29;
      v32 = static os_log_type_t.error.getter();
      sub_100005404(v23, &_mh_execute_header, v32, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v33 = static os_log_type_t.error.getter();
      sub_100005404(v23, &_mh_execute_header, v33, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v34 = swift_allocObject();
      v34[2] = 8;
      v34[3] = 0;
      v34[4] = 0;
      v34[5] = 0;
      v35 = __VaListBuilder.va_list()();
      StaticString.description.getter("makeFullRecord(fromPartial:)", 28, 2);
      v36 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
      v37 = String._bridgeToObjectiveC()();

      StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
      v38 = String._bridgeToObjectiveC()();

      [v139 handleFailureInFunction:v36 file:v37 lineNumber:11888 isFatal:0 format:v38 args:v35];

      sub_100EA3410();
      swift_allocError();
      swift_willThrow();
      return v37;
    }

LABEL_11:
    swift_once();
    goto LABEL_5;
  }

  *&v129 = v18;
  v134 = v6;
  v40 = *(v19 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_minRequiredVersions);
  v132 = *(v19 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_minRequiredVersions + 16);
  v133 = v40;
  v130 = *(v19 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_minRequiredVersions + 32);
  v131 = *(v19 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_objectOptions);
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v41 = swift_initStackObject();
  *(v41 + 16) = xmmword_10146BDE0;
  v42 = *(a1 + OBJC_IVAR____TtCC8Freeform28CRLBoardItemSyncRemoteRecord7Partial_rawMainTypeValue);
  *(v41 + 32) = v42;
  *(v41 + 56) = &type metadata for Int;
  *(v41 + 64) = &protocol witness table for Int;
  v43 = v39 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_rawTypeValues;
  v44 = *(v39 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_rawTypeValues);
  *(v41 + 96) = &type metadata for Int;
  *(v41 + 104) = &protocol witness table for Int;
  *(v41 + 72) = v44;
  if (v42 == v44)
  {
    v122 = 0x1000000000000;
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v45 = *v43;
    v126 = *(v43 + 8);
    v127 = v45;
    v125 = *(v43 + 16);
    v46 = OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_parentContainerUUID;
    swift_beginAccess();
    sub_10000BE14(v39 + v46, v137, &qword_1019F6990, &qword_10146D2F0);
    v128 = *(v39 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_isLocalTombstone);
    v47 = *(v39 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData);
    v117 = *(v39 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData + 8);
    v118 = v47;
    v49 = *(v39 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData);
    v119 = *(v39 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData + 8);
    v48 = v119;
    v120 = v49;
    v121 = *(a1 + OBJC_IVAR____TtCC8Freeform28CRLBoardItemSyncRemoteRecord7Partial_capsuleMergeableData);
    v50 = *(v39 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData);
    v123 = *(v39 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData + 8);
    v51 = v123;
    v124 = v50;
    sub_100024E84(v47, v117);
    sub_100024E84(v49, v48);
    sub_100024E84(v50, v51);

    v52 = v135;
    (*(v135 + 16))(v136, a1 + v17, v134);
    sub_10000C83C(a1 + v129, v139, type metadata accessor for CRLBoardIdentifier);
    type metadata accessor for CRLBoardItemSyncRemoteRecord(0);
    v37 = swift_allocObject();
    v53 = &v37[OBJC_IVAR____TtC8Freeform28CRLBoardItemSyncRemoteRecord_commonCRDTData];
    v129 = xmmword_101486780;
    *v53 = xmmword_101486780;
    v54 = &v37[OBJC_IVAR____TtC8Freeform28CRLBoardItemSyncRemoteRecord_specificCRDTData];
    *&v37[OBJC_IVAR____TtC8Freeform28CRLBoardItemSyncRemoteRecord_specificCRDTData] = xmmword_101486780;
    v55 = OBJC_IVAR____TtC8Freeform28CRLBoardItemSyncRemoteRecord_capsuleMergeableData;
    *&v37[OBJC_IVAR____TtC8Freeform28CRLBoardItemSyncRemoteRecord_capsuleMergeableData] = 0;
    *&v37[OBJC_IVAR____TtC8Freeform28CRLBoardItemSyncRemoteRecord_assets] = _swiftEmptyDictionarySingleton;
    v56 = *v53;
    v57 = *(v53 + 1);
    v58 = v117;
    *v53 = v118;
    *(v53 + 1) = v58;
    v59 = v121;
    v60 = v121;
    sub_100025870(v56, v57);
    v61 = *v54;
    v62 = v54[1];
    v63 = v119;
    *v54 = v120;
    v54[1] = v63;
    sub_100025870(v61, v62);
    *&v37[v55] = v59;
    *&v37[OBJC_IVAR____TtC8Freeform28CRLBoardItemSyncRemoteRecord_minRequiredVersionForSync] = v122;
    v64 = OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_parentContainerUUID;
    v65 = v134;
    (*(v52 + 56))(&v37[OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_parentContainerUUID], 1, 1, v134);
    *&v37[OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_syncData] = v129;
    (*(v52 + 32))(&v37[OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_id], v136, v65);
    v66 = &v37[OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_minRequiredVersions];
    v66[32] = v130;
    v67 = v132;
    *v66 = v133;
    *(v66 + 1) = v67;
    *&v37[OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_objectOptions] = v131;
    v68 = &v37[OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_rawTypeValues];
    v69 = v126;
    *v68 = v127;
    *(v68 + 1) = v69;
    v68[16] = v125;
    swift_beginAccess();
    sub_10002C638(v137, &v37[v64], &qword_1019F6990, &qword_10146D2F0);
    swift_endAccess();
    sub_100025668(v139, &v37[OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_boardIdentifier], type metadata accessor for CRLBoardIdentifier);
    v37[OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_tombstoned] = v128;
    v70 = &v37[OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_syncData];
    v71 = *&v37[OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_syncData];
    v72 = *&v37[OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_syncData + 8];
    v74 = v123;
    v73 = v124;
    sub_100024E84(v124, v123);
    *v70 = v73;
    v70[1] = v74;
    sub_100025870(v71, v72);
    sub_100025870(v73, v74);
    return v37;
  }

  v139 = (v41 + 32);
  v76 = v41;
  v136 = objc_opt_self();
  LODWORD(v77) = [v136 _atomicIncrementAssertCount];
  v138[0] = [objc_allocWithZone(NSString) init];
  v137 = v76;
  sub_100604538(v76, v138, "Expected remote partial and local full record types to match but %{public}d did not match %{public}d", 100, 2u);
  StaticString.description.getter("makeFullRecord(fromPartial:)", 28, 2);
  v78 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
  v79 = String._bridgeToObjectiveC()();

  v80 = [v79 lastPathComponent];

  v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v83 = v82;

  if (qword_1019F20A0 != -1)
  {
LABEL_41:
    swift_once();
  }

  v84 = static OS_os_log.crlAssert;
  v85 = swift_initStackObject();
  *(v85 + 16) = xmmword_10146CA70;
  *(v85 + 56) = &type metadata for Int32;
  *(v85 + 64) = &protocol witness table for Int32;
  *(v85 + 32) = v77;
  v86 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(v85 + 96) = v86;
  v87 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
  *(v85 + 104) = v87;
  v88 = v78;
  *(v85 + 72) = v78;
  *(v85 + 136) = &type metadata for String;
  v89 = sub_1000053B0();
  *(v85 + 112) = v81;
  *(v85 + 120) = v83;
  *(v85 + 176) = &type metadata for UInt;
  *(v85 + 184) = &protocol witness table for UInt;
  *(v85 + 144) = v89;
  *(v85 + 152) = 11895;
  v90 = v138[0];
  *(v85 + 216) = v86;
  *(v85 + 224) = v87;
  *(v85 + 192) = v90;
  v91 = v88;
  v92 = v90;
  v93 = static os_log_type_t.error.getter();
  sub_100005404(v84, &_mh_execute_header, v93, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v85);

  v94 = static os_log_type_t.error.getter();
  v95 = v84;
  v96 = v137;
  sub_100005404(v95, &_mh_execute_header, v94, "Expected remote partial and local full record types to match but %{public}d did not match %{public}d", 100, 2, v137);

  sub_10063DF98(v96, "Expected remote partial and local full record types to match but %{public}d did not match %{public}d");
  type metadata accessor for __VaListBuilder();
  v77 = swift_allocObject();
  v77[2] = 8;
  v77[3] = 0;
  v83 = v77 + 3;
  v77[4] = 0;
  v77[5] = 0;
  v97 = v96[2];
  if (v97)
  {
    v78 = 0;
    while (1)
    {
      v81 = sub_100020E58(&v139[40 * v78], *&v139[40 * v78 + 24]);
      v98 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v99 = *v83;
      v100 = *(v98 + 16);
      v101 = __OFADD__(*v83, v100);
      v102 = *v83 + v100;
      if (v101)
      {
        goto LABEL_38;
      }

      v103 = v98;
      v81 = v77[4];
      if (v81 >= v102)
      {
        goto LABEL_30;
      }

      if (v81 + 0x4000000000000000 < 0)
      {
        goto LABEL_39;
      }

      v104 = v77[5];
      if (2 * v81 > v102)
      {
        v102 = 2 * v81;
      }

      v77[4] = v102;
      if ((v102 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_40;
      }

      v105 = swift_slowAlloc();
      v77[5] = v105;
      if (v104)
      {
        break;
      }

LABEL_31:
      if (!v105)
      {
        __break(1u);
        goto LABEL_43;
      }

      v107 = *(v103 + 16);
      if (v107)
      {
        v108 = (v103 + 32);
        v109 = *v83;
        while (1)
        {
          v110 = *v108++;
          *&v105[8 * v109] = v110;
          v109 = *v83 + 1;
          if (__OFADD__(*v83, 1))
          {
            break;
          }

          *v83 = v109;
          if (!--v107)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

LABEL_15:

      v78 = v78 + 1;
      if (v78 == v97)
      {
        goto LABEL_43;
      }
    }

    if (v105 != v104 || v105 >= &v104[8 * v99])
    {
      memmove(v105, v104, 8 * v99);
    }

    v81 = v77;
    __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_30:
    v105 = v77[5];
    goto LABEL_31;
  }

LABEL_43:
  v111 = __VaListBuilder.va_list()();
  StaticString.description.getter("makeFullRecord(fromPartial:)", 28, 2);
  v112 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
  v113 = String._bridgeToObjectiveC()();

  StaticString.description.getter("Expected remote partial and local full record types to match but %{public}d did not match %{public}d", 100, 2);
  v114 = String._bridgeToObjectiveC()();

  [v136 handleFailureInFunction:v112 file:v113 lineNumber:11895 isFatal:1 format:v114 args:v111];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v115, v116);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

double sub_100E4BDC0(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_recordIDsToOverwrite;
  swift_beginAccess();
  v3 = *(a1 + v2);
  if ((v3 & 0xC000000000000001) != 0)
  {

    v4 = __CocoaSet.count.getter();

    if (!v4)
    {
      return sub_10069AC44();
    }
  }

  else if (!*(v3 + 16))
  {
    return sub_10069AC44();
  }

  v28 = objc_opt_self();
  v5 = [v28 _atomicIncrementAssertCount];
  v29 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v29, "Expected recordIDsToOverwrite to be empty before saving new changes.", 68, 2u);
  StaticString.description.getter("sync_willApplySyncSaveResults(syncScope:)", 41, 2);
  v6 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
  v7 = String._bridgeToObjectiveC()();

  v8 = [v7 lastPathComponent];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v12 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v5;
  v14 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(inited + 96) = v14;
  v15 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
  *(inited + 104) = v15;
  *(inited + 72) = v6;
  *(inited + 136) = &type metadata for String;
  v16 = sub_1000053B0();
  *(inited + 112) = v9;
  *(inited + 120) = v11;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v16;
  *(inited + 152) = 9981;
  v17 = v29;
  *(inited + 216) = v14;
  *(inited + 224) = v15;
  *(inited + 192) = v17;
  v18 = v6;
  v19 = v17;
  v20 = static os_log_type_t.error.getter();
  sub_100005404(v12, &_mh_execute_header, v20, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v21 = static os_log_type_t.error.getter();
  sub_100005404(v12, &_mh_execute_header, v21, "Expected recordIDsToOverwrite to be empty before saving new changes.", 68, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v22 = swift_allocObject();
  v22[2] = 8;
  v22[3] = 0;
  v22[4] = 0;
  v22[5] = 0;
  v23 = __VaListBuilder.va_list()();
  StaticString.description.getter("sync_willApplySyncSaveResults(syncScope:)", 41, 2);
  v24 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
  v25 = String._bridgeToObjectiveC()();

  StaticString.description.getter("Expected recordIDsToOverwrite to be empty before saving new changes.", 68, 2);
  v26 = String._bridgeToObjectiveC()();

  [v28 handleFailureInFunction:v24 file:v25 lineNumber:9981 isFatal:0 format:v26 args:v23];

  return sub_10069AC44();
}

double sub_100E4C1F4(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_recordIDsToOverwrite;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if ((v5 & 0xC000000000000001) != 0)
  {

    v6 = __CocoaSet.count.getter();

    if (!v6)
    {
      goto LABEL_10;
    }
  }

  else if (!*(v5 + 16))
  {
    goto LABEL_10;
  }

  if (*(a1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_syncHelper))
  {

    sub_10112D538(v7, 1, a2 & 1);
  }

  else
  {
    if (qword_1019F2270 != -1)
    {
      swift_once();
    }

    v8 = static OS_os_log.dataSync;
    v9 = static os_log_type_t.error.getter();
    sub_100005404(v8, &_mh_execute_header, v9, "Refetching readOnly changes was cancelled because there is no syncHelper set on the dataStore", 93, 2, _swiftEmptyArrayStorage);
  }

LABEL_10:
  *(a1 + v4) = _swiftEmptySetSingleton;

  return sub_10069BFA4();
}

uint64_t sub_100E4C368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, _BYTE *a4@<X8>)
{
  v7[2] = a1;
  v7[3] = a2;
  v8 = a3 & 1;
  result = sub_10002FA9C(sub_100EA5470, v7);
  if (!v4)
  {
    *a4 = result & 1;
  }

  return result;
}

void sub_100E4C3C8(uint64_t a1, int a2)
{
  v4 = v3;
  LODWORD(v123) = a2;
  v108 = type metadata accessor for DispatchWorkItemFlags();
  v113 = *(v108 - 8);
  __chkstk_darwin(v108);
  v111 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for DispatchQoS();
  v110 = *(v112 - 8);
  __chkstk_darwin(v112);
  v109 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLBoardIdentifier(0);
  v124 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v115 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v116 = &v107 - v11;
  __chkstk_darwin(v12);
  v117 = &v107 - v13;
  __chkstk_darwin(v14);
  v120 = &v107 - v15;
  __chkstk_darwin(v16);
  v121 = (&v107 - v17);
  v18 = type metadata accessor for DispatchPredicate();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = (&v107 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *&v2[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
  *v22 = v23;
  (*(v19 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v18, v20);
  v24 = v23;
  v25 = _dispatchPreconditionTest(_:)();
  (*(v19 + 8))(v22, v18);
  if (v25)
  {
    v140 = _swiftEmptyDictionarySingleton;
    v138 = _swiftEmptySetSingleton;
    v139 = _swiftEmptySetSingleton;
    v136 = _swiftEmptySetSingleton;
    v137 = _swiftEmptySetSingleton;
    v135 = _swiftEmptySetSingleton;
    v134 = 0;
    v133 = _swiftEmptySetSingleton;
    v23 = *(a1 + 16);
    v126 = _swiftEmptyArrayStorage;
    swift_retain_n();
    v125 = v2;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v126 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v126 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
LABEL_40:
    __break(1u);
  }

  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_3:
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v26 = v126;
  if (v126 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_5;
    }
  }

  else if (*((v126 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_5:
    v122 = v23;
    v23 = (v123 & 1);
    while (1)
    {
      v27 = v26 >> 62;
      if (v26 >> 62)
      {
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_105;
        }

        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_106;
        }
      }

      else if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      if ((v26 & 0xC000000000000001) != 0)
      {
        v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v29 = v26 & 0xFFFFFFFFFFFFFF8;
        if (!v27)
        {
          goto LABEL_11;
        }
      }

      else
      {
        if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v28 = *(v26 + 32);

        v29 = v26 & 0xFFFFFFFFFFFFFF8;
        if (!v27)
        {
LABEL_11:
          v30 = *(v29 + 16);
          if (!v30)
          {
            goto LABEL_38;
          }

          goto LABEL_20;
        }
      }

      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_38;
      }

      if (_CocoaArrayWrapper.endIndex.getter() < 1)
      {
        goto LABEL_39;
      }

      v30 = _CocoaArrayWrapper.endIndex.getter();
LABEL_20:
      v31 = v30 - 1;
      if (__OFSUB__(v30, 1))
      {
        goto LABEL_37;
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v126 = v26;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v27)
        {
          if (v31 <= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_28;
          }

          goto LABEL_27;
        }

LABEL_26:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_27;
      }

      if (v27)
      {
        goto LABEL_26;
      }

LABEL_27:
      v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v126 = v26;
LABEL_28:
      sub_10067D1CC(0, 1, 0);
      v126 = v26;
      sub_100E51B74(v28, v125, &v140, &v137, &v136, &v135, &v134, &v133, v23);
      if (v3)
      {

LABEL_78:

LABEL_79:

        return;
      }

      swift_beginAccess();

      sub_10079BF64(v33);

      v26 = v126;
      if (v126 >> 62)
      {
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
LABEL_33:

          v34 = v139;
          goto LABEL_44;
        }
      }

      else if (!*((v126 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }
    }
  }

  v34 = _swiftEmptySetSingleton;
LABEL_44:
  v35 = v34 + 7;
  v36 = 1 << *(v34 + 32);
  v37 = -1;
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  v38 = v37 & v34[7];
  v39 = (v36 + 63) >> 6;
  v114 = "se to userDeleteZone error";

  v40 = 0;
  v123 = xmmword_10146C6B0;
  i = v34 + 7;
  v119 = v34;
  v41 = v120;
  while (v38)
  {
LABEL_56:
    v48 = v121;
    sub_10000C83C(v34[6] + *(v124 + 72) * (__clz(__rbit64(v38)) | (v40 << 6)), v121, type metadata accessor for CRLBoardIdentifier);
    sub_100025668(v48, v41, type metadata accessor for CRLBoardIdentifier);
    v49 = sub_100DEE194(v41);
    if (v4)
    {
      if (qword_1019F2258 != -1)
      {
        swift_once();
      }

      v122 = static OS_os_log.boardStore;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = v123;
      swift_getErrorValue();
      v43 = Error.localizedDescription.getter();
      v45 = v44;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = sub_1000053B0();
      *(inited + 32) = v43;
      *(inited + 40) = v45;
      v46 = static os_log_type_t.error.getter();
      sub_100005404(v122, &_mh_execute_header, v46, "Failed to purge board in response to user deleted zone with error: %@", 69, 2, inited);

      swift_setDeallocating();
      sub_100005070((inited + 32));
      v4 = 0;
      v34 = v119;
      v41 = v120;
    }

    else if (v49)
    {
      if (qword_1019F2258 != -1)
      {
        swift_once();
      }

      v50 = static OS_os_log.boardStore;
      v51 = static os_log_type_t.default.getter();
      sub_100005404(v50, &_mh_execute_header, v51, "User deleted zone was synced at least once. Purging it in response to userDeleteZone error", 90, 2, _swiftEmptyArrayStorage);
      sub_100E0C7BC(v41, 0xD00000000000001FLL, v114 | 0x8000000000000000, 0);
    }

    v35 = i;
    v38 &= v38 - 1;
    sub_100026028(v41, type metadata accessor for CRLBoardIdentifier);
  }

  while (1)
  {
    v47 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      __break(1u);
      goto LABEL_103;
    }

    if (v47 >= v39)
    {
      break;
    }

    v38 = v35[v47];
    ++v40;
    if (v38)
    {
      v40 = v47;
      goto LABEL_56;
    }
  }

  v52 = v138;
  v53 = v138 + 7;
  v54 = 1 << *(v138 + 32);
  v55 = -1;
  if (v54 < 64)
  {
    v55 = ~(-1 << v54);
  }

  v56 = v55 & v138[7];
  v57 = (v54 + 63) >> 6;
  v120 = "called _sync_applySaveResults()";

  v58 = 0;
  v59 = v117;
  for (i = v52; v56; v52 = i)
  {
LABEL_70:
    while (1)
    {
      v61 = __clz(__rbit64(v56));
      v56 &= v56 - 1;
      sub_10000C83C(v52[6] + *(v124 + 72) * (v61 | (v58 << 6)), v59, type metadata accessor for CRLBoardIdentifier);
      v62 = v4;
      sub_100E0C7BC(v59, 0xD00000000000001DLL, v120 | 0x8000000000000000, 0);
      if (v4)
      {
        break;
      }

      sub_100026028(v59, type metadata accessor for CRLBoardIdentifier);
      if (!v56)
      {
        goto LABEL_66;
      }
    }

    sub_100026028(v59, type metadata accessor for CRLBoardIdentifier);
    if (qword_1019F2258 != -1)
    {
      swift_once();
    }

    v121 = static OS_os_log.boardStore;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v63 = swift_initStackObject();
    *(v63 + 16) = v123;
    v122 = v62;
    swift_getErrorValue();
    v64 = Error.localizedDescription.getter();
    v66 = v65;
    *(v63 + 56) = &type metadata for String;
    *(v63 + 64) = sub_1000053B0();
    *(v63 + 32) = v64;
    *(v63 + 40) = v66;
    v67 = static os_log_type_t.error.getter();
    sub_100005404(v121, &_mh_execute_header, v67, "Failed to purge board in response to zone not found for shared zone. Error: %@", 78, 2, v63);

    swift_setDeallocating();
    sub_100005070((v63 + 32));
    v4 = 0;
    v59 = v117;
  }

LABEL_66:
  while (1)
  {
    v60 = v58 + 1;
    if (__OFADD__(v58, 1))
    {
      break;
    }

    if (v60 >= v57)
    {

      v68 = v137;
      v69 = sub_10001FF1C();
      sub_100E2863C(v68, v69);
      if (v4)
      {

        goto LABEL_78;
      }

      v70 = v136;
      sub_100E2B4E8(v136);
      v71 = 0;
      v114 = v70;
      v117 = v68;
      v72 = v133;
      v73 = v133 + 7;
      v74 = 1 << *(v133 + 32);
      v75 = -1;
      if (v74 < 64)
      {
        v75 = ~(-1 << v74);
      }

      v76 = v75 & v133[7];
      v122 = 0;
      *&v123 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_transientSyncExclusions;
      v77 = (v74 + 63) >> 6;

      v78 = v115;
      v121 = v72;
      while (v76)
      {
LABEL_90:
        v80 = v72[6];
        v120 = *(v124 + 72);
        v81 = v116;
        sub_10000C83C(v80 + v120 * (__clz(__rbit64(v76)) | (v71 << 6)), v116, type metadata accessor for CRLBoardIdentifier);
        sub_100025668(v81, v78, type metadata accessor for CRLBoardIdentifier);
        swift_beginAccess();
        v82 = sub_1000486F0(v78);
        if (v83)
        {
          v84 = v82;
          v85 = v125;
          v86 = v123;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v88 = *&v85[v86];
          v132 = v88;
          *&v85[v86] = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_100AAC740();
            v88 = v132;
          }

          sub_100026028(*(v88 + 48) + v84 * v120, type metadata accessor for CRLBoardIdentifier);

          sub_100BDBBA4(v84, v88);
          *&v85[v86] = v88;
          v78 = v115;
        }

        v76 &= v76 - 1;
        swift_endAccess();
        sub_100026028(v78, type metadata accessor for CRLBoardIdentifier);
        v72 = v121;
      }

      while (1)
      {
        v79 = v71 + 1;
        if (__OFADD__(v71, 1))
        {
          goto LABEL_104;
        }

        if (v79 >= v77)
        {

          v89 = v108;
          if (v72[2])
          {
            v90 = sub_100BD9514(_swiftEmptyArrayStorage);
            v91 = v121;
            if (v121[2])
            {
              sub_100006370(0, &qword_1019F2D90, OS_dispatch_queue_ptr);
              v124 = static OS_dispatch_queue.main.getter();
              v92 = swift_allocObject();
              v93 = v125;
              *(v92 + 16) = v125;
              *(v92 + 24) = v91;
              *(v92 + 32) = 0;
              *(v92 + 40) = v90;
              v130 = sub_10007A268;
              v131 = v92;
              v126 = _NSConcreteStackBlock;
              v127 = *"";
              v128 = sub_100007638;
              v129 = &unk_1018A6720;
              v94 = _Block_copy(&v126);
              v95 = v93;

              v96 = v109;
              static DispatchQoS.unspecified.getter();
              v126 = _swiftEmptyArrayStorage;
              *&v123 = sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
              sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
              sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00, &protocol conformance descriptor for [A]);
              v97 = v111;
              dispatch thunk of SetAlgebra.init<A>(_:)();
              v98 = v124;
              OS_dispatch_queue.async(group:qos:flags:execute:)();
              _Block_release(v94);

              (*(v113 + 8))(v97, v89);
              (*(v110 + 8))(v96, v112);
            }

            else
            {
            }
          }

          v99 = v135;
          if ((v134 & 1) != 0 || *(v135 + 2))
          {
            sub_100006370(0, &qword_1019F2D90, OS_dispatch_queue_ptr);
            v124 = static OS_dispatch_queue.main.getter();
            v100 = swift_allocObject();
            *(v100 + 16) = _swiftEmptySetSingleton;
            *(v100 + 24) = _swiftEmptySetSingleton;
            *(v100 + 32) = v99;
            *(v100 + 40) = 0;
            v101 = v125;
            *(v100 + 48) = v125;
            v130 = sub_1000260F4;
            v131 = v100;
            v126 = _NSConcreteStackBlock;
            v127 = *"";
            v128 = sub_100007638;
            v129 = &unk_1018A6770;
            *&v123 = _Block_copy(&v126);
            v102 = v101;

            v103 = v109;
            static DispatchQoS.unspecified.getter();
            v126 = _swiftEmptyArrayStorage;
            sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
            sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
            v125 = v99;
            sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00, &protocol conformance descriptor for [A]);
            v104 = v111;
            dispatch thunk of SetAlgebra.init<A>(_:)();
            v105 = v123;
            v106 = v124;
            OS_dispatch_queue.async(group:qos:flags:execute:)();
            _Block_release(v105);

            (*(v113 + 8))(v104, v89);
            (*(v110 + 8))(v103, v112);
          }

          else
          {
          }

          goto LABEL_79;
        }

        v76 = v73[v79];
        ++v71;
        if (v76)
        {
          v71 = v79;
          goto LABEL_90;
        }
      }
    }

    v56 = v53[v60];
    ++v58;
    if (v56)
    {
      v58 = v60;
      goto LABEL_70;
    }
  }

LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
}

uint64_t sub_100E4D61C(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v52 = type metadata accessor for DispatchWorkItemFlags();
  v64 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for DispatchQoS();
  v7 = *(v50 - 8);
  __chkstk_darwin(v50);
  v49 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CRLBoardIdentifier(0);
  v48 = *(v9 - 8);
  __chkstk_darwin(v9 - 8);
  v46 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v10;
  __chkstk_darwin(v11);
  v13 = &v42 - v12;
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = (&v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *&v4[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
  *v18 = v19;
  v20 = *(v15 + 104);
  v57 = enum case for DispatchPredicate.onQueue(_:);
  v56 = v15 + 104;
  v55 = v20;
  v20(v18, v16);
  v54 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  v21 = *(v15 + 8);
  v58 = v18;
  v59 = v15 + 8;
  v60 = v14;
  v53 = v21;
  result = v21(v18, v14);
  if (v19)
  {
    v23 = *(a1 + 16);
    if (v23)
    {
      v24 = a1 + 32;
      v44 = v66;
      v43 = (v64 + 8);
      v42 = (v7 + 8);
      v64 = " ck record from cache with id ";
      v45 = v13;
      while (1)
      {
        sub_10000630C(v24, v68);
        sub_10000630C(v68, aBlock);
        sub_1005B981C(&qword_101A21F90, &qword_1014B6960);
        type metadata accessor for CRLBoardSyncRemoteRecordIdentifier(0);
        if (swift_dynamicCast())
        {
          break;
        }

        sub_10000630C(v68, aBlock);
        type metadata accessor for CRLBoardItemSyncRemoteRecordIdentifier(0);
        if (swift_dynamicCast())
        {
          v25 = v3;
          sub_100DFCA00((v67 + OBJC_IVAR____TtC8Freeform38CRLBoardItemSyncRemoteRecordIdentifier_itemUUID), (v67 + OBJC_IVAR____TtC8Freeform38CRLBoardItemSyncRemoteRecordIdentifier_boardIdentifier));
LABEL_5:
          v3 = v25;

          if (v25)
          {
            return sub_100005070(v68);
          }

LABEL_6:
          result = sub_100005070(v68);
          goto LABEL_7;
        }

        sub_10000630C(v68, aBlock);
        type metadata accessor for CRLBoardShareSyncRemoteRecordIdentifier(0);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_6;
        }

        v63 = v67;
        v26 = v58;
        v27 = v54;
        *v58 = v54;
        v28 = v60;
        v55(v26, v57, v60);
        v29 = v27;
        LOBYTE(v27) = _dispatchPreconditionTest(_:)();
        result = v53(v26, v28);
        if ((v27 & 1) == 0)
        {
          __break(1u);
          goto LABEL_19;
        }

        sub_10000C83C(v63 + OBJC_IVAR____TtC8Freeform39CRLBoardShareSyncRemoteRecordIdentifier_boardIdentifier, v13, type metadata accessor for CRLBoardIdentifier);
        sub_100DFE34C(v13, 0, 0xF000000000000000, 0);
        if (v3)
        {

          sub_100026028(v13, type metadata accessor for CRLBoardIdentifier);
          return sub_100005070(v68);
        }

        sub_100006370(0, &qword_1019F2D90, OS_dispatch_queue_ptr);
        v62 = static OS_dispatch_queue.main.getter();
        v30 = v46;
        sub_10000C83C(v13, v46, type metadata accessor for CRLBoardIdentifier);
        v31 = (*(v48 + 80) + 24) & ~*(v48 + 80);
        v32 = swift_allocObject();
        *(v32 + 16) = v4;
        sub_100025668(v30, v32 + v31, type metadata accessor for CRLBoardIdentifier);
        v66[2] = sub_100EA3628;
        v66[3] = v32;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = *"";
        v66[0] = sub_100007638;
        v66[1] = &unk_1018A5D70;
        v61 = _Block_copy(aBlock);
        v33 = v4;

        v34 = v49;
        static DispatchQoS.unspecified.getter();
        aBlock[0] = _swiftEmptyArrayStorage;
        sub_1000066D0(&qword_1019F4D10, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_1005B981C(&unk_1019FF400, &unk_10146CF00);
        sub_10001A2F8(&qword_1019F4D20, &unk_1019FF400, &unk_10146CF00, &protocol conformance descriptor for [A]);
        v35 = v51;
        v36 = v4;
        v37 = v52;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v39 = v61;
        v38 = v62;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v39);

        v40 = v37;
        v4 = v36;
        (*v43)(v35, v40);
        v41 = v34;
        v13 = v45;
        (*v42)(v41, v50);

        sub_100026028(v13, type metadata accessor for CRLBoardIdentifier);
        result = sub_100005070(v68);
LABEL_7:
        v24 += 40;
        if (!--v23)
        {
          return result;
        }
      }

      v25 = v3;
      sub_100E0C7BC((v67 + OBJC_IVAR____TtC8Freeform34CRLBoardSyncRemoteRecordIdentifier_boardIdentifier), 0xD000000000000020, v64 | 0x8000000000000000, 0);
      goto LABEL_5;
    }
  }

  else
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_100E4DE54(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v5 - 8);
  v27 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v28 = &v27 - v8;
  __chkstk_darwin(v9);
  v11 = &v27 - v10;
  __chkstk_darwin(v12);
  v14 = &v27 - v13;
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = (&v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v19 = v20;
  (*(v16 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v15, v17);
  v21 = v20;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  result = (*(v16 + 8))(v19, v15);
  if ((v20 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v23 = *(a1 + 16);
  if (v23)
  {
    v24 = a1 + 32;
    v25 = v27;
    do
    {
      v31 = _swiftEmptySetSingleton;
      sub_10000630C(v24, v30);
      sub_1005B981C(&qword_101A21F90, &qword_1014B6960);
      type metadata accessor for CRLBoardSyncRemoteRecordIdentifier(0);
      if (swift_dynamicCast())
      {
        sub_10000C83C(v29 + OBJC_IVAR____TtC8Freeform34CRLBoardSyncRemoteRecordIdentifier_boardIdentifier, v11, type metadata accessor for CRLBoardIdentifier);

        sub_100025668(v11, v14, type metadata accessor for CRLBoardIdentifier);
        sub_100E36FC8();
        if (v2)
        {
          return sub_100026028(v14, type metadata accessor for CRLBoardIdentifier);
        }

        sub_100E4E254(1, v14);
        sub_100E4E6C8(1, v14);
        sub_100E4EB3C(v14);
        sub_100E09120(v14, 1);
        sub_100E4EFA4(1, v14);
        sub_100E4F418(1, v14);
        sub_100E4F88C(v14);
        sub_10000C83C(v14, v25, type metadata accessor for CRLBoardIdentifier);
        v26 = v28;
        sub_100031F10(v28, v25);
        sub_100026028(v26, type metadata accessor for CRLBoardIdentifier);
        sub_100026028(v14, type metadata accessor for CRLBoardIdentifier);
      }

      if (v31[2])
      {
        sub_100E513C0(v31);
        if (v2)
        {
        }
      }

      v24 += 40;
      --v23;
    }

    while (v23);
  }

  return result;
}

void sub_100E4E254(sqlite3_int64 a1, uint64_t a2)
{
  v43 = a1;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = (&v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v9 = v10;
  v11 = *(v6 + 104);
  v44 = enum case for DispatchPredicate.onQueue(_:);
  v11(v9, v7);
  v12 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  v41 = *(v6 + 8);
  v41(v9, v5);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v40 = v5;
  v42 = v11;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v14 = sub_10001CC04(v13, 0xD00000000000005ALL, 0x80000001015A85A0);

  if (v3)
  {
    return;
  }

  sub_100034254(v43, 1);
  v15 = type metadata accessor for CRLBoardIdentifierStorage(0);
  v16 = sub_10084DAE4(a2, *(a2 + *(v15 + 20)), *(a2 + *(v15 + 20) + 8));
  v43 = v17;
  v18 = v16;
  v19 = *(*(v14 + 16) + 32);
  *v9 = v19;
  v20 = v40;
  v42(v9, v44, v40);
  v21 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  v22 = v41;
  v41(v9, v20);
  if ((v19 & 1) == 0)
  {
    goto LABEL_16;
  }

  v23 = v18;
  v24 = v18;
  v25 = v43;
  sub_100DCCAB4(v24, v43, v14, 2);
  sub_10002640C(v23, v25);
  v26 = *(*(v14 + 16) + 32);
  *v9 = v26;
  v27 = v42;
  v42(v9, v44, v20);
  v28 = v26;
  LOBYTE(v26) = _dispatchPreconditionTest(_:)();
  v22(v9, v20);
  if ((v26 & 1) == 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v29 = *(v14 + 16);

  v30 = sub_10001CEC4(v29, v14);

  if (v30 != 101)
  {
    sub_10089C7D0();
    swift_allocError();
    *v35 = v30;
    *(v35 + 8) = 0xD00000000000002DLL;
    *(v35 + 16) = 0x80000001015A8600;
    swift_willThrow();
    v36 = *(*(v14 + 16) + 32);
    *v9 = v36;
    v27(v9, v44, v20);
    v37 = v36;
    v38 = _dispatchPreconditionTest(_:)();
    v41(v9, v20);
    if (v38)
    {
      swift_beginAccess();
      v34 = *(v14 + 24);
      if (!v34)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }

LABEL_19:
    __break(1u);
  }

  v31 = *(*(v14 + 16) + 32);
  *v9 = v31;
  v27(v9, v44, v20);
  v32 = v31;
  v33 = _dispatchPreconditionTest(_:)();
  v22(v9, v20);
  if ((v33 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  swift_beginAccess();
  v34 = *(v14 + 24);
  if (v34)
  {
LABEL_11:
    sqlite3_finalize(v34);
    *(v14 + 24) = 0;
  }

LABEL_4:
}

void sub_100E4E6C8(sqlite3_int64 a1, uint64_t a2)
{
  v43 = a1;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = (&v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v9 = v10;
  v11 = *(v6 + 104);
  v44 = enum case for DispatchPredicate.onQueue(_:);
  v11(v9, v7);
  v12 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  v41 = *(v6 + 8);
  v41(v9, v5);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v40 = v5;
  v42 = v11;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v14 = sub_10001CC04(v13, 0xD000000000000054, 0x80000001015A8510);

  if (v3)
  {
    return;
  }

  sub_100034254(v43, 1);
  v15 = type metadata accessor for CRLBoardIdentifierStorage(0);
  v16 = sub_10084DAE4(a2, *(a2 + *(v15 + 20)), *(a2 + *(v15 + 20) + 8));
  v43 = v17;
  v18 = v16;
  v19 = *(*(v14 + 16) + 32);
  *v9 = v19;
  v20 = v40;
  v42(v9, v44, v40);
  v21 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  v22 = v41;
  v41(v9, v20);
  if ((v19 & 1) == 0)
  {
    goto LABEL_16;
  }

  v23 = v18;
  v24 = v18;
  v25 = v43;
  sub_100DCCAB4(v24, v43, v14, 2);
  sub_10002640C(v23, v25);
  v26 = *(*(v14 + 16) + 32);
  *v9 = v26;
  v27 = v42;
  v42(v9, v44, v20);
  v28 = v26;
  LOBYTE(v26) = _dispatchPreconditionTest(_:)();
  v22(v9, v20);
  if ((v26 & 1) == 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v29 = *(v14 + 16);

  v30 = sub_10001CEC4(v29, v14);

  if (v30 != 101)
  {
    sub_10089C7D0();
    swift_allocError();
    *v35 = v30;
    *(v35 + 8) = 0xD000000000000027;
    *(v35 + 16) = 0x80000001015A8570;
    swift_willThrow();
    v36 = *(*(v14 + 16) + 32);
    *v9 = v36;
    v27(v9, v44, v20);
    v37 = v36;
    v38 = _dispatchPreconditionTest(_:)();
    v41(v9, v20);
    if (v38)
    {
      swift_beginAccess();
      v34 = *(v14 + 24);
      if (!v34)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }

LABEL_19:
    __break(1u);
  }

  v31 = *(*(v14 + 16) + 32);
  *v9 = v31;
  v27(v9, v44, v20);
  v32 = v31;
  v33 = _dispatchPreconditionTest(_:)();
  v22(v9, v20);
  if ((v33 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  swift_beginAccess();
  v34 = *(v14 + 24);
  if (v34)
  {
LABEL_11:
    sqlite3_finalize(v34);
    *(v14 + 24) = 0;
  }

LABEL_4:
}

void sub_100E4EB3C(uint64_t a1)
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v8 = v9;
  v10 = *(v5 + 104);
  v41 = enum case for DispatchPredicate.onQueue(_:);
  v10(v8, v6);
  v11 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v39 = *(v5 + 8);
  v39(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v38 = v4;
  v40 = v10;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v13 = sub_10001CC04(v12, 0xD00000000000005ELL, 0x80000001015A8460);

  if (v2)
  {
    return;
  }

  v14 = type metadata accessor for CRLBoardIdentifierStorage(0);
  v15 = sub_10084DAE4(a1, *(a1 + *(v14 + 20)), *(a1 + *(v14 + 20) + 8));
  v37 = v16;
  v17 = v15;
  v18 = *(*(v13 + 16) + 32);
  *v8 = v18;
  v19 = v38;
  v40(v8, v41, v38);
  v20 = v18;
  v21 = _dispatchPreconditionTest(_:)();
  v39(v8, v19);
  if ((v21 & 1) == 0)
  {
    goto LABEL_16;
  }

  v22 = v17;
  v23 = v17;
  v24 = v37;
  sub_100DCCAB4(v23, v37, v13, 1);
  sub_10002640C(v22, v24);
  v25 = *(*(v13 + 16) + 32);
  *v8 = v25;
  v40(v8, v41, v19);
  v26 = v25;
  LOBYTE(v22) = _dispatchPreconditionTest(_:)();
  v27 = v39;
  v39(v8, v19);
  if ((v22 & 1) == 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v28 = *(v13 + 16);

  v29 = sub_10001CEC4(v28, v13);

  if (v29 != 101)
  {
    sub_10089C7D0();
    swift_allocError();
    *v33 = v29;
    *(v33 + 8) = 0xD000000000000043;
    *(v33 + 16) = 0x80000001015A84C0;
    swift_willThrow();
    v34 = *(*(v13 + 16) + 32);
    *v8 = v34;
    v40(v8, v41, v19);
    v35 = v34;
    LOBYTE(v34) = _dispatchPreconditionTest(_:)();
    v27(v8, v19);
    if (v34)
    {
      swift_beginAccess();
      v32 = *(v13 + 24);
      if (!v32)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }

LABEL_19:
    __break(1u);
  }

  v30 = *(*(v13 + 16) + 32);
  *v8 = v30;
  v40(v8, v41, v19);
  v31 = v30;
  LOBYTE(v30) = _dispatchPreconditionTest(_:)();
  v27(v8, v19);
  if ((v30 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  swift_beginAccess();
  v32 = *(v13 + 24);
  if (v32)
  {
LABEL_11:
    sqlite3_finalize(v32);
    *(v13 + 24) = 0;
  }

LABEL_4:
}

void sub_100E4EFA4(sqlite3_int64 a1, uint64_t a2)
{
  v43 = a1;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = (&v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v9 = v10;
  v11 = *(v6 + 104);
  v44 = enum case for DispatchPredicate.onQueue(_:);
  v11(v9, v7);
  v12 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  v41 = *(v6 + 8);
  v41(v9, v5);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v40 = v5;
  v42 = v11;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v14 = sub_10001CC04(v13, 0xD000000000000054, 0x80000001015A8310);

  if (v3)
  {
    return;
  }

  sub_100034254(v43, 1);
  v15 = type metadata accessor for CRLBoardIdentifierStorage(0);
  v16 = sub_10084DAE4(a2, *(a2 + *(v15 + 20)), *(a2 + *(v15 + 20) + 8));
  v43 = v17;
  v18 = v16;
  v19 = *(*(v14 + 16) + 32);
  *v9 = v19;
  v20 = v40;
  v42(v9, v44, v40);
  v21 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  v22 = v41;
  v41(v9, v20);
  if ((v19 & 1) == 0)
  {
    goto LABEL_16;
  }

  v23 = v18;
  v24 = v18;
  v25 = v43;
  sub_100DCCAB4(v24, v43, v14, 2);
  sub_10002640C(v23, v25);
  v26 = *(*(v14 + 16) + 32);
  *v9 = v26;
  v27 = v42;
  v42(v9, v44, v20);
  v28 = v26;
  LOBYTE(v26) = _dispatchPreconditionTest(_:)();
  v22(v9, v20);
  if ((v26 & 1) == 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v29 = *(v14 + 16);

  v30 = sub_10001CEC4(v29, v14);

  if (v30 != 101)
  {
    sub_10089C7D0();
    swift_allocError();
    *v35 = v30;
    *(v35 + 8) = 0xD000000000000032;
    *(v35 + 16) = 0x80000001015A8370;
    swift_willThrow();
    v36 = *(*(v14 + 16) + 32);
    *v9 = v36;
    v27(v9, v44, v20);
    v37 = v36;
    v38 = _dispatchPreconditionTest(_:)();
    v41(v9, v20);
    if (v38)
    {
      swift_beginAccess();
      v34 = *(v14 + 24);
      if (!v34)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }

LABEL_19:
    __break(1u);
  }

  v31 = *(*(v14 + 16) + 32);
  *v9 = v31;
  v27(v9, v44, v20);
  v32 = v31;
  v33 = _dispatchPreconditionTest(_:)();
  v22(v9, v20);
  if ((v33 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  swift_beginAccess();
  v34 = *(v14 + 24);
  if (v34)
  {
LABEL_11:
    sqlite3_finalize(v34);
    *(v14 + 24) = 0;
  }

LABEL_4:
}

void sub_100E4F418(sqlite3_int64 a1, uint64_t a2)
{
  v43 = a1;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = (&v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v9 = v10;
  v11 = *(v6 + 104);
  v44 = enum case for DispatchPredicate.onQueue(_:);
  v11(v9, v7);
  v12 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  v41 = *(v6 + 8);
  v41(v9, v5);
  if ((v10 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v40 = v5;
  v42 = v11;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v14 = sub_10001CC04(v13, 0xD00000000000004ALL, 0x80000001015A8280);

  if (v3)
  {
    return;
  }

  sub_100034254(v43, 1);
  v15 = type metadata accessor for CRLBoardIdentifierStorage(0);
  v16 = sub_10084DAE4(a2, *(a2 + *(v15 + 20)), *(a2 + *(v15 + 20) + 8));
  v43 = v17;
  v18 = v16;
  v19 = *(*(v14 + 16) + 32);
  *v9 = v19;
  v20 = v40;
  v42(v9, v44, v40);
  v21 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  v22 = v41;
  v41(v9, v20);
  if ((v19 & 1) == 0)
  {
    goto LABEL_16;
  }

  v23 = v18;
  v24 = v18;
  v25 = v43;
  sub_100DCCAB4(v24, v43, v14, 2);
  sub_10002640C(v23, v25);
  v26 = *(*(v14 + 16) + 32);
  *v9 = v26;
  v27 = v42;
  v42(v9, v44, v20);
  v28 = v26;
  LOBYTE(v26) = _dispatchPreconditionTest(_:)();
  v22(v9, v20);
  if ((v26 & 1) == 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v29 = *(v14 + 16);

  v30 = sub_10001CEC4(v29, v14);

  if (v30 != 101)
  {
    sub_10089C7D0();
    swift_allocError();
    *v35 = v30;
    *(v35 + 8) = 0xD000000000000030;
    *(v35 + 16) = 0x80000001015A82D0;
    swift_willThrow();
    v36 = *(*(v14 + 16) + 32);
    *v9 = v36;
    v27(v9, v44, v20);
    v37 = v36;
    v38 = _dispatchPreconditionTest(_:)();
    v41(v9, v20);
    if (v38)
    {
      swift_beginAccess();
      v34 = *(v14 + 24);
      if (!v34)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }

LABEL_19:
    __break(1u);
  }

  v31 = *(*(v14 + 16) + 32);
  *v9 = v31;
  v27(v9, v44, v20);
  v32 = v31;
  v33 = _dispatchPreconditionTest(_:)();
  v22(v9, v20);
  if ((v33 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  swift_beginAccess();
  v34 = *(v14 + 24);
  if (v34)
  {
LABEL_11:
    sqlite3_finalize(v34);
    *(v14 + 24) = 0;
  }

LABEL_4:
}

void sub_100E4F88C(uint64_t a1)
{
  v171 = a1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = (&v160 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v7 = v8;
  v9 = (v4 + 104);
  v10 = *(v4 + 104);
  v173 = enum case for DispatchPredicate.onQueue(_:);
  v10(v7, v5);
  v11 = v8;
  v12 = _dispatchPreconditionTest(_:)();
  v15 = *(v4 + 8);
  v13 = v4 + 8;
  v14 = v15;
  v15(v7, v3);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v169 = v14;
  v172 = v10;
  v170 = v9;
  v16 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_database);
  v17 = type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v19 = sub_10001CC04(v18, 0xD000000000000042, 0x80000001015A8090);
  if (v2)
  {
    goto LABEL_40;
  }

  v20 = v19;
  v168 = v17;

  v21 = (v171 + *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20));
  v22 = *v21;
  v23 = v21[1];
  v24 = sub_10084DAE4(v171, *v21, v23);
  v26 = v16;
  v27 = v24;
  v167 = v25;
  v162 = v23;
  v163 = v22;
  v164 = v26;
  v165 = 0;
  v28 = v169;
  v29 = v13;
  v30 = *(*(v20 + 16) + 32);
  *v7 = v30;
  v31 = v170;
  v172(v7, v173, v3);
  v32 = v30;
  LOBYTE(v30) = _dispatchPreconditionTest(_:)();
  v33 = v28(v7, v3);
  if ((v30 & 1) == 0)
  {
    __break(1u);
    goto LABEL_42;
  }

  v35 = v167;
  v36 = v165;
  sub_100DCCAB4(v27, v167, v20, 1);
  v165 = v36;
  sub_10002640C(v27, v35);
  v37 = *(*(v20 + 16) + 32);
  *v7 = v37;
  v172(v7, v173, v3);
  v38 = v37;
  LOBYTE(v37) = _dispatchPreconditionTest(_:)();
  v166 = v3;
  v167 = v29;
  v33 = v28(v7, v3);
  if ((v37 & 1) == 0)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    v115 = v33;
    v116 = v34;
    v117 = *(*(v29 + 16) + 32);
    *v7 = v117;
    v172(v7, v173, v20);
    v118 = v117;
    LOBYTE(v117) = _dispatchPreconditionTest(_:)();
    v169(v7, v20);
    if (v117)
    {

      sub_100DCCAB4(v115, v116, v29, 1);
      sub_10002640C(v115, v116);
      v119 = *(*(v29 + 16) + 32);
      *v31 = v119;
      v120 = v166;
      v172(v31, v173, v166);
      v121 = v119;
      LOBYTE(v119) = _dispatchPreconditionTest(_:)();
      v169(v31, v120);
      if (v119)
      {
        v122 = *(v29 + 16);

        v123 = sub_10001CEC4(v122, v29);

        if (v123 != 101)
        {
          goto LABEL_59;
        }

        v124 = *(*(v29 + 16) + 32);
        *v31 = v124;
        v125 = v166;
        v172(v31, v173, v166);
        v126 = v124;
        LOBYTE(v124) = _dispatchPreconditionTest(_:)();
        v169(v31, v125);
        if (v124)
        {
          swift_beginAccess();
          v127 = *(v29 + 24);
          if (v127)
          {
            sqlite3_finalize(v127);
            *(v29 + 24) = 0;
          }

          v128 = *(*(v3 + 16) + 32);
          *v31 = v128;
          v129 = v166;
          v172(v31, v173, v166);
          v130 = v128;
          LOBYTE(v128) = _dispatchPreconditionTest(_:)();
          v169(v31, v129);
          if (v128)
          {
            swift_beginAccess();
            v131 = *(v3 + 24);
            if (v131)
            {
              sqlite3_finalize(v131);
              *(v3 + 24) = 0;
            }

            v132 = *(*(v160 + 16) + 32);
            *v31 = v132;
            v133 = v166;
            v172(v31, v173, v166);
            v134 = v132;
            LOBYTE(v132) = _dispatchPreconditionTest(_:)();
            v169(v31, v133);
            if (v132)
            {
              v135 = v160;
              swift_beginAccess();
              v136 = *(v135 + 24);
              if (v136)
              {
                sqlite3_finalize(v136);
                *(v160 + 24) = 0;
              }

              v137 = *(*(v161 + 16) + 32);
              *v31 = v137;
              v138 = v166;
              v172(v31, v173, v166);
              v139 = v137;
              LOBYTE(v137) = _dispatchPreconditionTest(_:)();
              v169(v31, v138);
              if (v137)
              {
                v140 = v161;
                swift_beginAccess();
                v141 = *(v140 + 24);
                if (!v141)
                {
                  goto LABEL_40;
                }

                goto LABEL_70;
              }

              goto LABEL_89;
            }

            goto LABEL_87;
          }

          goto LABEL_85;
        }

LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v39 = v20;
  v29 = v28;
  v40 = *(v20 + 16);

  v41 = v40;
  v42 = v165;
  v43 = sub_10001CEC4(v41, v20);

  if (v43 == 101)
  {
    swift_initStackObject();

    v43 = v44;
    v45 = sub_10001CC04(v44, 0xD00000000000003DLL, 0x80000001015A8110);
    v46 = v166;
    if (v42)
    {

      v47 = *(*(v39 + 16) + 32);
      *v7 = v47;
      v172(v7, v173, v46);
      v48 = v47;
      LOBYTE(v47) = _dispatchPreconditionTest(_:)();
      v28(v7, v46);
      if (v47)
      {
        goto LABEL_12;
      }

      __break(1u);
      goto LABEL_11;
    }

    v54 = v45;

    v55 = sub_10084DAE4(v171, v163, v162);
    v161 = v39;
    v57 = v56;
    v58 = v55;
    v59 = *(*(v54 + 16) + 32);
    *v7 = v59;
    v172(v7, v173, v46);
    v60 = v59;
    LOBYTE(v59) = _dispatchPreconditionTest(_:)();
    v28(v7, v46);
    if (v59)
    {

      sub_100DCCAB4(v58, v57, v54, 1);
      sub_10002640C(v58, v57);
      v61 = *(*(v54 + 16) + 32);
      *v7 = v61;
      v172(v7, v173, v46);
      v62 = v61;
      LOBYTE(v61) = _dispatchPreconditionTest(_:)();
      (v29)(v7, v46);
      if (v61)
      {
        v63 = *(v54 + 16);

        v64 = sub_10001CEC4(v63, v54);

        if (v64 == 101)
        {
          swift_initStackObject();

          v66 = sub_10001CC04(v65, 0xD000000000000050, 0x80000001015A8170);
          v67 = v166;
          v82 = v66;

          v83 = sub_10084DAE4(v171, v163, v162);
          v160 = v54;
          v85 = v84;
          v86 = v83;
          v87 = *(*(v82 + 16) + 32);
          *v7 = v87;
          v172(v7, v173, v67);
          v88 = v87;
          LOBYTE(v87) = _dispatchPreconditionTest(_:)();
          v89 = v67;
          v90 = v67;
          v9 = v169;
          v169(v7, v89);
          if (v87)
          {

            sub_100DCCAB4(v86, v85, v82, 1);
            sub_10002640C(v86, v85);
            v91 = *(*(v82 + 16) + 32);
            *v7 = v91;
            v172(v7, v173, v90);
            v92 = v91;
            LOBYTE(v91) = _dispatchPreconditionTest(_:)();
            (v9)(v7, v90);
            if (v91)
            {
              v12 = v82;
              v93 = *(v82 + 16);

              v94 = sub_10001CEC4(v93, v82);

              v3 = v160;
              v13 = 0xD00000000000001FLL;
              if (v94 == 101)
              {
                v3 = v82;
                swift_initStackObject();

                v96 = sub_10001CC04(v95, 0xD000000000000046, 0x80000001015A8200);
                v20 = v166;
                v29 = v96;

                v33 = sub_10084DAE4(v171, v163, v162);
                v31 = v7;
                goto LABEL_43;
              }

LABEL_31:
              sub_10089C7D0();
              v97 = swift_allocError();
              *v98 = 101;
              *(v98 + 8) = v13 + 11;
              *(v98 + 16) = 0x80000001015A81D0;
              v165 = v97;
              swift_willThrow();
              v99 = *(*(v12 + 16) + 32);
              *v7 = v99;
              v100 = v173;
              v101 = v166;
              v102 = v172;
              v172(v7, v173, v166);
              v103 = v99;
              LOBYTE(v99) = _dispatchPreconditionTest(_:)();
              (v9)(v7, v101);
              if (v99)
              {
                swift_beginAccess();
                v104 = *(v12 + 24);
                if (v104)
                {
                  sqlite3_finalize(v104);
                  *(v12 + 24) = 0;
                }

                v105 = *(*(v3 + 16) + 32);
                *v7 = v105;
                v106 = v166;
                v102(v7, v100, v166);
                v107 = v105;
                LOBYTE(v105) = _dispatchPreconditionTest(_:)();
                v169(v7, v106);
                if (v105)
                {
                  swift_beginAccess();
                  v108 = *(v3 + 24);
                  v109 = v161;
                  if (v108)
                  {
                    sqlite3_finalize(v108);
                    *(v3 + 24) = 0;
                  }

                  v110 = *(*(v109 + 16) + 32);
                  *v7 = v110;
                  v111 = v100;
                  v112 = v166;
                  v102(v7, v111, v166);
                  v113 = v110;
                  LOBYTE(v110) = _dispatchPreconditionTest(_:)();
                  v169(v7, v112);
                  if (v110)
                  {
                    swift_beginAccess();
                    v114 = *(v109 + 24);
                    if (v114)
                    {
                      sqlite3_finalize(v114);
                      *(v109 + 24) = 0;
                    }

                    goto LABEL_40;
                  }

                  goto LABEL_80;
                }

LABEL_79:
                __break(1u);
LABEL_80:
                __break(1u);
                __break(1u);
                __break(1u);
                __break(1u);
                __break(1u);
                __break(1u);
                __break(1u);
                goto LABEL_81;
              }

LABEL_78:
              __break(1u);
              goto LABEL_79;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
          goto LABEL_78;
        }

        sub_10089C7D0();
        swift_allocError();
        *v68 = v64;
        *(v68 + 8) = 0xD00000000000001FLL;
        *(v68 + 16) = 0x80000001015A8150;
        swift_willThrow();
        v69 = *(*(v54 + 16) + 32);
        *v7 = v69;
        v70 = v173;
        v71 = v166;
        v72 = v172;
        v172(v7, v173, v166);
        v73 = v69;
        LOBYTE(v69) = _dispatchPreconditionTest(_:)();
        v74 = v71;
        v75 = v29;
        (v29)(v7, v74);
        if (v69)
        {
          swift_beginAccess();
          v76 = *(v54 + 24);
          if (v76)
          {
            sqlite3_finalize(v76);
            *(v54 + 24) = 0;
          }

          v77 = v161;
          v78 = *(*(v161 + 16) + 32);
          *v7 = v78;
          v79 = v166;
          v72(v7, v70, v166);
          v80 = v78;
          LOBYTE(v78) = _dispatchPreconditionTest(_:)();
          v75(v7, v79);
          if (v78)
          {
            swift_beginAccess();
            v81 = *(v77 + 24);
            if (v81)
            {
              sqlite3_finalize(v81);
              *(v77 + 24) = 0;
            }

            goto LABEL_40;
          }

LABEL_75:
          __break(1u);
          __break(1u);
          __break(1u);
        }

LABEL_74:
        __break(1u);
        goto LABEL_75;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_74;
  }

LABEL_11:
  sub_10089C7D0();
  swift_allocError();
  *v49 = v43;
  *(v49 + 8) = 0xD000000000000025;
  *(v49 + 16) = 0x80000001015A80E0;
  swift_willThrow();
  v50 = *(*(v39 + 16) + 32);
  *v7 = v50;
  v51 = v166;
  v172(v7, v173, v166);
  v52 = v50;
  LOBYTE(v50) = _dispatchPreconditionTest(_:)();
  v28(v7, v51);
  if (v50)
  {
LABEL_12:
    swift_beginAccess();
    v53 = *(v39 + 24);
    if (v53)
    {
      sqlite3_finalize(v53);
      *(v39 + 24) = 0;
    }

    goto LABEL_40;
  }

  __break(1u);
LABEL_59:
  sub_10089C7D0();
  swift_allocError();
  *v142 = 101;
  *(v142 + 8) = 0xD000000000000028;
  *(v142 + 16) = 0x80000001015A8250;
  swift_willThrow();
  v143 = *(*(v29 + 16) + 32);
  *v31 = v143;
  v144 = v166;
  v172(v31, v173, v166);
  v145 = v143;
  LOBYTE(v143) = _dispatchPreconditionTest(_:)();
  v169(v31, v144);
  if ((v143 & 1) == 0)
  {
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  swift_beginAccess();
  v146 = *(v29 + 24);
  if (v146)
  {
    sqlite3_finalize(v146);
    *(v29 + 24) = 0;
  }

  v147 = *(*(v3 + 16) + 32);
  *v31 = v147;
  v148 = v166;
  v172(v31, v173, v166);
  v149 = v147;
  LOBYTE(v147) = _dispatchPreconditionTest(_:)();
  v169(v31, v148);
  if ((v147 & 1) == 0)
  {
    goto LABEL_86;
  }

  swift_beginAccess();
  v150 = *(v3 + 24);
  if (v150)
  {
    sqlite3_finalize(v150);
    *(v3 + 24) = 0;
  }

  v151 = *(*(v160 + 16) + 32);
  *v31 = v151;
  v152 = v166;
  v172(v31, v173, v166);
  v153 = v151;
  LOBYTE(v151) = _dispatchPreconditionTest(_:)();
  v169(v31, v152);
  if ((v151 & 1) == 0)
  {
    goto LABEL_88;
  }

  v154 = v160;
  swift_beginAccess();
  v155 = *(v154 + 24);
  if (v155)
  {
    sqlite3_finalize(v155);
    *(v160 + 24) = 0;
  }

  v156 = *(*(v161 + 16) + 32);
  *v31 = v156;
  v157 = v166;
  v172(v31, v173, v166);
  v158 = v156;
  LOBYTE(v156) = _dispatchPreconditionTest(_:)();
  v169(v31, v157);
  if (v156)
  {
    v159 = v161;
    swift_beginAccess();
    v141 = *(v159 + 24);
    if (!v141)
    {
      goto LABEL_40;
    }

LABEL_70:
    sqlite3_finalize(v141);
    *(v161 + 24) = 0;
LABEL_40:

    return;
  }

LABEL_90:
  __break(1u);
}

uint64_t sub_100E513C0(uint64_t a1)
{
  v3 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v25 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = (&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for CRLBoardDataStore.KeyValueTableKey(0);
  __chkstk_darwin(v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  v10 = sub_10002BB60(v9);
  if (v2)
  {

LABEL_4:
    v12 = _swiftEmptySetSingleton;
    goto LABEL_5;
  }

  if (v11 >> 60 == 15)
  {
    goto LABEL_4;
  }

  v21 = v10;
  v22 = v11;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  v23 = JSONDecoder.init()();
  sub_1005B981C(&unk_101A22E80, &unk_1014A08B0);
  sub_100034CCC(&qword_101A21F10, &qword_1019F4758, "U);", &protocol conformance descriptor for <> Set<A>);
  v24 = v21;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  sub_100025870(v24, v22);

  v12 = v26;
LABEL_5:
  v27 = v12;

  sub_100636CB4(v13);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v26 = v27;
  sub_1005B981C(&unk_101A22E80, &unk_1014A08B0);
  sub_100034CCC(&qword_101A21F98, &qword_1019F4780, byte_101480FE4, &protocol conformance descriptor for <> Set<A>);
  v14 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v16 = v15;

  v17 = *(v3 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v6 = v17;
  v18 = v25;
  (*(v25 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v4);
  v19 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  result = (*(v18 + 8))(v6, v4);
  if (v17)
  {
    sub_100024E98(v14, v16);
    sub_100E257D0(v9, 0, 0, v3, v14, v16);
    sub_100026028(v9, type metadata accessor for CRLBoardDataStore.KeyValueTableKey);
    return sub_10002640C(v14, v16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_100E517DC(char a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = sub_101270CEC(a3);
  v5[40] = 1;
  v5[16] = 1;
  v5[41] = a1;
  swift_endAccess();

  return result;
}

uint64_t sub_100E51860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6[2] = a1;
  v6[3] = a2;
  result = sub_10002FA9C(sub_100EA52E0, v6);
  if (!v3)
  {
    *a3 = result & 1;
  }

  return result;
}

uint64_t sub_100E518B8(uint64_t a1)
{
  v3 = type metadata accessor for CRLBoardDataStore.KeyValueTableKey(0);
  __chkstk_darwin(v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  v6 = sub_10002BB60(v5);
  if (v1)
  {

LABEL_4:
    if (qword_1019F2258 != -1)
    {
      swift_once();
    }

    v8 = static OS_os_log.boardStore;
    v9 = static os_log_type_t.error.getter();
    sub_100005404(v8, &_mh_execute_header, v9, "Attempted to remove board identifiers from sync reset boards but data not found", 79, 2, _swiftEmptyArrayStorage);
    return sub_100026028(v5, type metadata accessor for CRLBoardDataStore.KeyValueTableKey);
  }

  if (v7 >> 60 == 15)
  {
    goto LABEL_4;
  }

  v11 = v6;
  v12 = v7;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1005B981C(&unk_101A22E80, &unk_1014A08B0);
  sub_100034CCC(&qword_101A21F10, &qword_1019F4758, "U);", &protocol conformance descriptor for <> Set<A>);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (*(a1 + 16) <= v15[2] >> 3)
  {
    sub_1012D515C(a1);
    v13 = v15;
  }

  else
  {
    v13 = sub_1012D77B4(a1, v15);
  }

  sub_100E513C0(v13);
  sub_100026028(v5, type metadata accessor for CRLBoardDataStore.KeyValueTableKey);

  return sub_100025870(v11, v12);
}

double sub_100E51B74(void *a1, char *a2, void *a3, uint64_t a4, void *a5, char *a6, _BYTE *a7, uint64_t a8, char a9)
{
  v830 = a2;
  v815 = a8;
  v809 = a7;
  v810 = a6;
  v812 = a4;
  v813 = a5;
  v819 = a3;
  v800 = sub_1005B981C(&unk_101A22860, &unk_1014B6550);
  __chkstk_darwin(v800);
  v790 = &v784 - v10;
  v11 = sub_1005B981C(&unk_1019F52D0, &unk_10147C1C0);
  __chkstk_darwin(v11 - 8);
  v801 = (&v784 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v793 = (&v784 - v14);
  v15 = sub_1005B981C(&unk_101A341C0, &unk_1014B1D00);
  v16 = *(v15 - 8);
  v795 = v15;
  v796 = v16;
  __chkstk_darwin(v15);
  v791 = &v784 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v789 = &v784 - v19;
  __chkstk_darwin(v20);
  v799 = &v784 - v21;
  v806 = sub_1005B981C(&unk_101A0AFE0, &unk_10146F3C0);
  __chkstk_darwin(v806);
  v807 = &v784 - v22;
  *&v826 = type metadata accessor for DispatchPredicate();
  *&v829 = *(v826 - 8);
  __chkstk_darwin(v826);
  *&v823 = &v784 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for CRLBoardIdentifier(0);
  v803 = *(v24 - 8);
  v804 = v24;
  __chkstk_darwin(v24);
  v26 = &v784 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v788 = &v784 - v28;
  __chkstk_darwin(v29);
  v31 = &v784 - v30;
  __chkstk_darwin(v32);
  v34 = &v784 - v33;
  __chkstk_darwin(v35);
  v37 = &v784 - v36;
  __chkstk_darwin(v38);
  v792 = (&v784 - v39);
  __chkstk_darwin(v40);
  v818 = (&v784 - v41);
  __chkstk_darwin(v42);
  v817 = &v784 - v43;
  __chkstk_darwin(v44);
  v794 = &v784 - v45;
  __chkstk_darwin(v46);
  v816 = &v784 - v47;
  __chkstk_darwin(v48);
  v798 = &v784 - v49;
  __chkstk_darwin(v50);
  *&v821 = &v784 - v51;
  v52 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v52 - 8);
  v797 = &v784 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v811 = &v784 - v55;
  __chkstk_darwin(v56);
  v802 = &v784 - v57;
  __chkstk_darwin(v58);
  v814 = &v784 - v59;
  __chkstk_darwin(v60);
  v808 = (&v784 - v61);
  __chkstk_darwin(v62);
  v805 = &v784 - v63;
  __chkstk_darwin(v64);
  v66 = &v784 - v65;
  __chkstk_darwin(v67);
  *&v820 = &v784 - v68;
  __chkstk_darwin(v69);
  v822 = &v784 - v70;
  v71 = type metadata accessor for UUID();
  __chkstk_darwin(v71);
  v73 = &v784 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v74);
  v76 = &v784 - v75;
  __chkstk_darwin(v77);
  __chkstk_darwin(v78);
  v80 = (&v784 - v79);
  __chkstk_darwin(v81);
  __chkstk_darwin(v82);
  __chkstk_darwin(v83);
  v92 = __chkstk_darwin(v84);
  v93 = a1[5];
  if ((~v93 & 0xF000000000000007) == 0)
  {
    return v92.n128_f64[0];
  }

  v94 = a1[4];
  v824 = a1[6];
  v825 = v93;
  v95 = a1[7];
  v96 = a1[8];
  v827 = v94;
  v828 = v95;
  if (!(v93 >> 62))
  {
    v810 = v87;
    v812 = v91;
    v813 = v86;
    v818 = v80;
    v784 = v90;
    v785 = &v784 - v88;
    v815 = v89;
    v786 = v85;
    type metadata accessor for CRLBoardItemSyncLocalChangeRecord(0);
    v115 = v827;
    v116 = swift_dynamicCastClass();
    if (v116)
    {
      v117 = *(v815 + 16);
      v118 = v116;
      v803 = v815 + 16;
      v801 = v117;
      v117(v785, v116 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_id, v786);
      v119 = *(v118 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_rawTypeValues);
      v799 = *(v118 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_rawTypeValues + 8);
      v800 = v119;
      LODWORD(v796) = *(v118 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_rawTypeValues + 16);
      v818 = *(v118 + OBJC_IVAR____TtC8Freeform33CRLBoardItemSyncLocalChangeRecord_itemData);
      v120 = OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_parentContainerUUID;
      swift_beginAccess();
      v787 = v96;
      sub_10000BE14(v118 + v120, v822, &qword_1019F6990, &qword_10146D2F0);
      sub_10000BE14(v118 + v120, v820, &qword_1019F6990, &qword_10146D2F0);
      sub_10000C83C(v118 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_boardIdentifier, v821, type metadata accessor for CRLBoardIdentifier);
      LODWORD(v809) = *(v118 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_tombstoned);
      v804 = v118;
      v121 = *(v118 + OBJC_IVAR____TtC8Freeform33CRLBoardItemSyncLocalChangeRecord_ckMergeableRecordValueData);
      v122 = *(v118 + OBJC_IVAR____TtC8Freeform33CRLBoardItemSyncLocalChangeRecord_ckMergeableRecordValueData + 8);
      v813 = *&v830[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
      v34 = v823;
      *v823 = v813;
      v123 = v829;
      v124 = *(v829 + 104);
      LODWORD(v794) = enum case for DispatchPredicate.onQueue(_:);
      v795 = v829 + 104;
      v793 = v124;
      v124(v34);
      v125 = swift_unknownObjectRetain_n();
      v126 = v824;
      v127 = v828;
      v128 = v787;
      sub_100EA54FC(v125, v825, v824, v828, v787, v129);
      sub_100024E84(v126, v127);

      v130 = v128;
      v816 = v122;
      v817 = v121;
      sub_100024E84(v121, v122);
      v131 = v813;
      v132 = _dispatchPreconditionTest(_:)();
      v133 = *(v123 + 8);
      *&v829 = v123 + 8;
      v134 = v133(v34, v826);
      if (v132)
      {
        v135 = v821;
        v136 = v831;
        sub_100E43E74(v821, v819);
        v831 = v136;
        if (v136)
        {
          v137 = v824;
          v138 = v828;
          sub_100025870(v824, v828);
          sub_100025870(v817, v816);
          v139 = v827;
          swift_unknownObjectRelease();

          sub_100EA5510(v139, v825, v137, v138, v787, v140);

          swift_unknownObjectRelease();
          sub_100026028(v135, type metadata accessor for CRLBoardIdentifier);
          sub_10000CAAC(v822, &qword_1019F6990, &qword_10146D2F0);
          (*(v815 + 8))(v785, v786);
          goto LABEL_15;
        }

        v813 = v131;
        v819 = v130;
        sub_10000BE14(v822, v66, &qword_1019F6990, &qword_10146D2F0);
        v249 = v815;
        v250 = *(v815 + 48);
        v251 = v786;
        if ((v250)(v66, 1, v786) == 1)
        {
          v252 = v66;
        }

        else
        {
          v306 = v812;
          v791 = *(v249 + 32);
          v792 = (v249 + 32);
          (v791)(v812, v66, v251);
          v307 = (v250)(v820, 1, v251);
          v308 = v811;
          if (v307 == 1)
          {
            goto LABEL_163;
          }

          v309 = v805;
          v310 = v786;
          v801(v805, v306, v786);
          (*(v815 + 56))(v309, 0, 1, v310);
          v311 = v807;
          v312 = *(v806 + 48);
          sub_10000BE14(v309, v807, &qword_1019F6990, &qword_10146D2F0);
          sub_10000BE14(v820, v311 + v312, &qword_1019F6990, &qword_10146D2F0);
          if ((v250)(v311, 1, v310) != 1)
          {
            goto LABEL_160;
          }

          sub_10000CAAC(v309, &qword_1019F6990, &qword_10146D2F0);
          if ((v250)(v311 + v312, 1, v310) != 1)
          {
LABEL_162:
            sub_10000CAAC(v311, &unk_101A0AFE0, &unk_10146F3C0);
            v308 = v811;
            v306 = v812;
            goto LABEL_163;
          }

          (*(v815 + 8))(v812, v786);
          v252 = v311;
        }

        sub_10000CAAC(v252, &qword_1019F6990, &qword_10146D2F0);
        goto LABEL_65;
      }

      __break(1u);
LABEL_300:
      v720 = v134;
      sub_100026028(v34, type metadata accessor for CRLBoardIdentifier);
      if (v720)
      {
        v721 = *(v720 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData);
        v722 = *(v720 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData + 8);
        *(v720 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData) = xmmword_101486780;
        sub_100025870(v721, v722);
        sub_100E21DC4(v720);
        if (!v132)
        {
          goto LABEL_309;
        }

        v723 = v824;
        sub_1009F5E04(v824, 0);
        sub_100EA5510(v827, v825, v723, v828, v787, v724);
        swift_unknownObjectRelease_n();
LABEL_310:

        return v92.n128_f64[0];
      }

LABEL_307:
      v729 = v827;
      swift_unknownObjectRelease();
      v730 = v824;
      sub_1009F5E04(v824, 0);
      swift_unknownObjectRelease();
      v92.n128_f64[0] = sub_100EA5510(v729, v825, v730, v828, v787, v731);
      return v92.n128_f64[0];
    }

LABEL_45:
    type metadata accessor for CRLBoardSyncLocalChangeRecord(v116);
    v188 = swift_dynamicCastClass();
    if (v188)
    {
      v189 = v96;
      v190 = v188;
      sub_10000C83C(v188 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_boardIdentifier, v816, type metadata accessor for CRLBoardIdentifier);
      v191 = *(v815 + 16);
      v192 = v786;
      v191(v818, v190 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_rootContainerUUID, v786);
      v191(v813, v190 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_alternateRootContainerUUID, v192);
      v193 = *(v190 + OBJC_IVAR____TtC8Freeform29CRLBoardSyncLocalChangeRecord_boardData);
      LODWORD(v822) = *(v190 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_tombstoned);
      LODWORD(v820) = *(v190 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_hideFromRecentlyDeleted);
      v194 = *&v830[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
      v195 = v823;
      *v823 = v194;
      v196 = v829;
      v197 = v826;
      (*(v829 + 104))(v195, enum case for DispatchPredicate.onQueue(_:), v826);
      v198 = swift_unknownObjectRetain();
      v199 = v824;
      v200 = v828;
      sub_100EA54FC(v198, v825, v824, v828, v189, v201);
      sub_100024E84(v199, v200);

      v787 = v189;
      v202 = v189;
      v203 = v194;
      LOBYTE(v194) = _dispatchPreconditionTest(_:)();
      (*(v196 + 8))(v195, v197);
      if (v194)
      {
        *&v821 = v202;
        if (v193)
        {
          v204 = qword_1019F2270;

          if (v204 != -1)
          {
            swift_once();
          }

          v205 = static OS_os_log.dataSync;
          sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
          v206 = swift_allocObject();
          *(v206 + 16) = xmmword_10146BDE0;
          *(v206 + 56) = &type metadata for String;
          v207 = sub_1000053B0();
          *(v206 + 64) = v207;
          *(v206 + 32) = 0x676E696772654DLL;
          *(v206 + 40) = 0xE700000000000000;
          v208 = UUID.uuidString.getter();
          *(v206 + 96) = &type metadata for String;
          *(v206 + 104) = v207;
          *(v206 + 72) = v208;
          *(v206 + 80) = v209;
          v210 = static os_log_type_t.info.getter();
          sub_100005404(v205, &_mh_execute_header, v210, "%{public}@ board data with id %{public}@", 40, 2, v206);
          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
          swift_arrayDestroy();
          swift_deallocClassInstance();
          v211 = v822;
          v199 = v824;
          v200 = v828;
          v212 = v831;
          sub_100DFE838(v193, 1, v824, v828, v822 ^ 1, 1);
          v831 = v212;
          if (v212)
          {
            sub_100025870(v199, v200);
            v213 = v827;
            swift_unknownObjectRelease();

            goto LABEL_173;
          }

          v313 = v787;
        }

        else
        {
          v313 = v787;
          v211 = v822;
        }

        if (v211)
        {
          if (qword_1019F2270 != -1)
          {
            swift_once();
          }

          v333 = static OS_os_log.dataSync;
          sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
          v334 = swift_allocObject();
          *(v334 + 16) = xmmword_10146C6B0;
          v335 = v816;
          v336 = UUID.uuidString.getter();
          v338 = v337;
          *(v334 + 56) = &type metadata for String;
          *(v334 + 64) = sub_1000053B0();
          *(v334 + 32) = v336;
          *(v334 + 40) = v338;
          v339 = static os_log_type_t.default.getter();
          sub_100005404(v333, &_mh_execute_header, v339, "Merging a tombstoned Board record with id %{public}@", 52, 2, v334);
          swift_setDeallocating();
          sub_100005070((v334 + 32));
          swift_deallocClassInstance();
          v340 = v335;
          v199 = v824;
          v200 = v828;
          v341 = v831;
          sub_100E43198(v340, v818, v813, v824, v828);
          v342 = v341;
          if (v341)
          {
            v343 = v199;
            goto LABEL_172;
          }

          v313 = v787;
        }

        else
        {
          v342 = v831;
        }

        v434 = v827;
        if (v820)
        {
          v831 = v342;
          if (qword_1019F2270 != -1)
          {
            goto LABEL_313;
          }

          goto LABEL_170;
        }

        goto LABEL_191;
      }

      __break(1u);
      goto LABEL_307;
    }

    type metadata accessor for CRLUserBoardMetadataSyncLocalChangeRecord(0);
    v285 = swift_dynamicCastClass();
    v133 = v828;
    v286 = v824;
    if (v285)
    {
      v287 = *(v285 + OBJC_IVAR____TtC8Freeform41CRLUserBoardMetadataSyncLocalChangeRecord_boardMetadataData);
      v288 = swift_unknownObjectRetain();
      v289 = v825;
      sub_100EA54FC(v288, v825, v286, v133, v96, v290);
      sub_100024E84(v286, v133);

      v291 = v96;
      v292 = v831;
      sub_100E46CD0(v287, v286, v133);
      if (!v292)
      {

        sub_100025870(v286, v133);
        sub_100EA5510(v115, v289, v286, v133, v96, v376);
        swift_unknownObjectRelease();
        goto LABEL_310;
      }

      sub_100025870(v286, v133);
      swift_unknownObjectRelease();
      v294 = v115;
      v295 = v289;
      v296 = v286;
      v297 = v133;
      v298 = v96;
LABEL_253:
      v92.n128_f64[0] = sub_100EA5510(v294, v295, v296, v297, v298, v293);
      return v92.n128_f64[0];
    }

    type metadata accessor for CRLFreehandDrawingBucketSyncLocalChangeRecord(0);
    v344 = swift_dynamicCastClass();
    if (!v344)
    {
      v466 = v96;
      type metadata accessor for CRLBoardShareSyncLocalChangeRecord(0);
      v467 = swift_dynamicCastClass();
      if (!v467)
      {
        v735 = objc_opt_self();
        v736 = swift_unknownObjectRetain();
        v737 = v824;
        sub_100EA54FC(v736, v825, v824, v133, v96, v738);
        sub_100024E84(v737, v133);
        v739 = v96;
        v831 = v735;
        v740 = [v735 _atomicIncrementAssertCount];
        v833 = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, &v833, "Unknown record type", 19, 2u);
        StaticString.description.getter("_sync_applySyncSaveResults(_:syncScope:)", 40, 2);
        v741 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
        v742 = String._bridgeToObjectiveC()();

        v743 = [v742 lastPathComponent];

        v744 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v746 = v745;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v747 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        v748 = swift_allocObject();
        *(v748 + 16) = xmmword_10146CA70;
        *(v748 + 56) = &type metadata for Int32;
        *(v748 + 64) = &protocol witness table for Int32;
        *(v748 + 32) = v740;
        v749 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
        *(v748 + 96) = v749;
        v750 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
        *(v748 + 104) = v750;
        *(v748 + 72) = v741;
        *(v748 + 136) = &type metadata for String;
        v751 = sub_1000053B0();
        *(v748 + 112) = v744;
        *(v748 + 120) = v746;
        *(v748 + 176) = &type metadata for UInt;
        *(v748 + 184) = &protocol witness table for UInt;
        *(v748 + 144) = v751;
        *(v748 + 152) = 10145;
        v752 = v833;
        *(v748 + 216) = v749;
        *(v748 + 224) = v750;
        *(v748 + 192) = v752;
        v753 = v741;
        v754 = v752;
        v755 = static os_log_type_t.error.getter();
        sub_100005404(v747, &_mh_execute_header, v755, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v748);

        v756 = static os_log_type_t.error.getter();
        sub_100005404(v747, &_mh_execute_header, v756, "Unknown record type", 19, 2, _swiftEmptyArrayStorage);

        sub_10063DF98(_swiftEmptyArrayStorage, "Unknown record type");
        type metadata accessor for __VaListBuilder();
        v757 = swift_allocObject();
        v757[2] = 8;
        v757[3] = 0;
        v757[4] = 0;
        v757[5] = 0;
        v758 = __VaListBuilder.va_list()();
        StaticString.description.getter("_sync_applySyncSaveResults(_:syncScope:)", 40, 2);
        v759 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
        v760 = String._bridgeToObjectiveC()();

        StaticString.description.getter("Unknown record type", 19, 2);
        v761 = String._bridgeToObjectiveC()();

        [v831 handleFailureInFunction:v759 file:v760 lineNumber:10145 isFatal:1 format:v761 args:v758];
        goto LABEL_323;
      }

      v468 = v467;
      objc_opt_self();
      v469 = swift_dynamicCastObjCClass();
      *&v829 = v468;
      if (v469)
      {
        v470 = v466;
      }

      v471 = OBJC_IVAR____TtC8Freeform23CRLBoardShareSyncRecord_boardIdentifier;
      v472 = swift_unknownObjectRetain();
      v474 = v824;
      v473 = v825;
      sub_100EA54FC(v472, v825, v824, v133, v466, v475);
      sub_100024E84(v474, v133);
      v476 = v466;
      sub_100E46320(v829 + v471, v469);

      sub_100025870(v474, v133);
      swift_unknownObjectRelease();

      v294 = v115;
      v295 = v473;
      v296 = v474;
      v297 = v133;
      v298 = v466;
      goto LABEL_253;
    }

    v345 = v344;
    v346 = swift_unknownObjectRetain_n();
    sub_100EA54FC(v346, v825, v286, v133, v96, v347);
    sub_100024E84(v286, v133);
    v787 = v96;
    v348 = v96;
    v349 = sub_100EEB05C(0x6C6261656772654DLL, 0xEF74656B63754265, 1);
    v822 = v348;
    if (!v349)
    {
      if (qword_1019F2270 != -1)
      {
        goto LABEL_317;
      }

      goto LABEL_212;
    }

    v350 = v349;
    v351 = *(v345 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_bucketIndex);
    v352 = *(v345 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_bucketData);
    v353 = *(v345 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_bucketData + 8);
    v354 = *(v345 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_minRequiredVersions);
    v820 = *(v345 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_minRequiredVersions + 16);
    v821 = v354;
    v355 = *(v345 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_minRequiredVersions + 32);
    v817 = *(v345 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_minRequiredVersions + 40);
    v818 = v355;
    v171 = v115;
    v356 = *(v345 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_minRequiredVersions + 48);
    swift_unknownObjectRetain();
    sub_100024E98(v352, v353);
    sub_10001A2F8(&qword_101A228C0, &unk_101A22860, &unk_1014B6550, &protocol conformance descriptor for CRDictionary<A, B>);
    v357 = v799;
    v358 = v831;
    Capsule.init(serializedData:allowedAppFormats:fileSignature:)();
    v831 = v358;
    if (v358)
    {

      swift_unknownObjectRelease();
      v359 = v824;
      v360 = v828;
      sub_100025870(v824, v828);
      swift_unknownObjectRelease_n();

      v245 = v171;
      v246 = v825;
      v247 = v359;
      v248 = v360;
      goto LABEL_61;
    }

    sub_1005B981C(&unk_101A228D0, "ԥ'");
    v172 = swift_allocObject();
    *(v172 + *(*v172 + 136)) = 0;
    v172[2] = v351;
    (*(v796 + 32))(v172 + *(*v172 + 120), v357, v795);
    *(v172 + *(*v172 + 136)) = 0;
    v561 = v172 + *(*v172 + 128);
    v562 = v820;
    *v561 = v821;
    *(v561 + 1) = v562;
    v563 = v817;
    *(v561 + 4) = v818;
    *(v561 + 5) = v563;
    v561[48] = v356;
    sub_10000C83C(v345 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_boardIdentifier, v794, type metadata accessor for CRLBoardIdentifier);
    swift_unknownObjectRelease();
    v564 = *&v830[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
    v565 = v823;
    *v823 = v564;
    v566 = v829;
    v567 = v826;
    (*(v829 + 104))(v565, enum case for DispatchPredicate.onQueue(_:), v826);
    *&v821 = v350;
    v568 = v564;
    LOBYTE(v564) = _dispatchPreconditionTest(_:)();
    v569 = *(v566 + 8);
    v449 = v566 + 8;
    v569(v565, v567);
    if (v564)
    {
      v173 = v794;
      v570 = v831;
      sub_100E43E74(v794, v819);
      v142 = v828;
      if (!v570)
      {
        sub_100E1E144(v172, v173, 1, v824, v828, v350);
LABEL_282:

        v661 = v824;
        sub_100025870(v824, v142);
        v662 = v821;

        swift_setDeallocating();
        (*(v796 + 8))(v172 + *(*v172 + 120), v795);
        swift_deallocClassInstance();
        swift_unknownObjectRelease_n();
        sub_100EA5510(v171, v825, v661, v142, v787, v663);
        sub_100026028(v173, type metadata accessor for CRLBoardIdentifier);
        return v92.n128_f64[0];
      }

      v571 = v787;

      v597 = v824;
      sub_100025870(v824, v142);
      v598 = v821;

      swift_setDeallocating();
      (*(v796 + 8))(v172 + *(*v172 + 120), v795);
      swift_deallocClassInstance();
      swift_unknownObjectRelease_n();
      sub_100EA5510(v171, v825, v597, v142, v571, v599);
      v236 = v173;
      goto LABEL_245;
    }

    __break(1u);
    goto LABEL_319;
  }

  if (v93 >> 62 == 1)
  {
    v97 = *&v830[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue];
    v98 = v823;
    *v823 = v97;
    v99 = v96;
    v100 = enum case for DispatchPredicate.onQueue(_:);
    v101 = v829;
    v102 = (v829 + 104);
    v103 = v826;
    v822 = *(v829 + 104);
    v104 = (v822)(v98, enum case for DispatchPredicate.onQueue(_:), v826, v92);
    v105 = v824;
    v787 = v99;
    sub_100EA54FC(v827, v825, v824, v828, v99, v104);
    swift_unknownObjectRetain();
    *&v821 = v97;
    LOBYTE(v99) = _dispatchPreconditionTest(_:)();
    v106 = *(v101 + 8);
    *&v829 = v101 + 8;
    v107 = v106(v98, v103);
    if (v99)
    {
      type metadata accessor for CRLBoardItemSyncRemoteRecord(0);
      v108 = swift_dynamicCastClass();
      v109 = v818;
      if (v108 || (type metadata accessor for CRLBoardItemSyncRemoteRecord.Partial(0), swift_dynamicCastClass()))
      {
        type metadata accessor for CRLBoardItemSyncRemoteRecord.Partial(0);
        v110 = swift_dynamicCastClass();
        if (v110)
        {
          swift_unknownObjectRetain();
          v111 = v831;
          v112 = sub_100E4AE54(v110);
          v114 = v111;
          if (v111)
          {
            sub_100EA5510(v827, v825, v105, v828, v787, v113);
            swift_unknownObjectRelease_n();
            return v92.n128_f64[0];
          }

          v237 = v112;
          swift_unknownObjectRelease();
        }

        else
        {
          v237 = swift_dynamicCastClassUnconditional();
          swift_unknownObjectRetain();
          v114 = v831;
        }

        v278 = OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_boardIdentifier;
        sub_10000C83C(v237 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_boardIdentifier, v109, type metadata accessor for CRLBoardIdentifier);

        v279 = v817;
        sub_100031F10(v817, v109);
        sub_100026028(v279, type metadata accessor for CRLBoardIdentifier);
        sub_100E43F64(v237, v819, 0, v110 != 0);
        if (v114)
        {
          sub_100EA5510(v827, v825, v824, v828, v787, v281);
          swift_unknownObjectRelease();

          return v92.n128_f64[0];
        }

        v282 = v280;

        sub_100637378(v283);

        sub_100637378(v284);
        if (v282)
        {
          if (v282 == 1)
          {

            *v809 = 1;
          }

          else
          {
            v319 = v818;
            sub_10000C83C(v237 + v278, v818, type metadata accessor for CRLBoardIdentifier);
            sub_100031F10(v279, v319);

            sub_100026028(v279, type metadata accessor for CRLBoardIdentifier);
          }
        }

        else
        {
        }

        v105 = v824;
        v320 = v828;
        sub_10069B83C(v237);

        goto LABEL_95;
      }

      type metadata accessor for CRLBoardSyncRemoteRecord(0);
      v299 = swift_dynamicCastClass();
      if (v299)
      {
        v300 = v299;
        v301 = OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_boardIdentifier;
        sub_10000C83C(v299 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_boardIdentifier, v109, type metadata accessor for CRLBoardIdentifier);
        v302 = v817;
        sub_100031F10(v817, v109);
        sub_100026028(v302, type metadata accessor for CRLBoardIdentifier);
        v303 = v831;
        sub_100E4755C(v300, 0);
        if (!v303)
        {
          v377 = v304;

          sub_100637378(v378);

          sub_100637378(v379);
          v381 = v377;
          v380 = v377 == 0;
          v382 = v828;
          if (v380)
          {
          }

          else if (v381 == 1)
          {

            *v809 = 1;
          }

          else
          {
            v547 = v818;
            sub_10000C83C(v300 + v301, v818, type metadata accessor for CRLBoardIdentifier);
            sub_100031F10(v302, v547);

            sub_100026028(v302, type metadata accessor for CRLBoardIdentifier);
          }

          v321 = v787;
          v105 = v824;
          v320 = v382;
          goto LABEL_96;
        }

        sub_100EA5510(v827, v825, v824, v828, v787, v305);
LABEL_189:
        swift_unknownObjectRelease();
        return v92.n128_f64[0];
      }

      type metadata accessor for CRLBoardShareSyncRemoteRecord(0);
      v361 = swift_dynamicCastClass();
      v362 = v831;
      if (v361)
      {
        v363 = v361;
        v364 = v822;
        v365 = v823;
        v366 = v821;
        *v823 = v821;
        v331 = v826;
        (v364)(v365, v100, v826);
        v367 = v366;
        v368 = _dispatchPreconditionTest(_:)();
        v106(v365, v331);
        if (v368)
        {
          sub_100E469D8(*(v363 + OBJC_IVAR____TtC8Freeform23CRLBoardShareSyncRecord_ckShare), v363 + OBJC_IVAR____TtC8Freeform23CRLBoardShareSyncRecord_boardIdentifier);
          v320 = v828;
          v105 = v824;
          if (!v362)
          {
            goto LABEL_95;
          }

          goto LABEL_188;
        }

        __break(1u);
        goto LABEL_315;
      }

      type metadata accessor for CRLFreehandDrawingBucketSyncRemoteRecord(0);
      v477 = swift_dynamicCastClass();
      if (v477)
      {
        v478 = sub_100E46FDC(v477, v819, 0);
        v320 = v828;
        if (!v362)
        {
          v589 = v479;
          sub_100637378(v478);
          sub_100637378(v589);
LABEL_95:
          v321 = v787;
          goto LABEL_96;
        }

LABEL_188:
        sub_100EA5510(v827, v825, v105, v320, v787, v369);
        goto LABEL_189;
      }

      type metadata accessor for CRLUserBoardMetadataSyncRemoteRecord(0);
      v572 = swift_dynamicCastClass();
      v573 = v828;
      if (v572)
      {
        v574 = v572;
        v576 = sub_100E48B08(v572);
        if (v362)
        {
          sub_100EA5510(v827, v825, v824, v573, v787, v577);
          swift_unknownObjectRelease();
          return v92.n128_f64[0];
        }

        v625 = v575;

        sub_100637378(v626);

        sub_100637378(v627);
        if (v625)
        {
          if (v625 == 1)
          {
            v830 = v576;
            v831 = 0;
            *&v829 = objc_opt_self();
            v628 = [v829 _atomicIncrementAssertCount];
            v833 = [objc_allocWithZone(NSString) init];
            sub_100604538(_swiftEmptyArrayStorage, &v833, "Merging a CRLUserBoardMetadataSyncRemoteRecord shouldn't result in us becoming supported again.", 95, 2u);
            StaticString.description.getter("_sync_applySyncRemoteRecord(record:shouldOverwrite:isResultOfSave:cachedBoardIdentifiers:zonesToRefetch:unsupportedZonesToRefetch:unsupportedBoardIdentifiers:needsHierarchyChangeNotification:modifiedBoardIdentifiers:)", 217, 2);
            *&v826 = String._bridgeToObjectiveC()();

            StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
            v629 = String._bridgeToObjectiveC()();

            v630 = [v629 lastPathComponent];

            v631 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v822 = v632;
            *&v823 = v631;

            if (qword_1019F20A0 != -1)
            {
              swift_once();
            }

            v633 = static OS_os_log.crlAssert;
            sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
            v634 = swift_allocObject();
            *(v634 + 16) = xmmword_10146CA70;
            *(v634 + 56) = &type metadata for Int32;
            *(v634 + 64) = &protocol witness table for Int32;
            *(v634 + 32) = v628;
            v635 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
            *(v634 + 96) = v635;
            v636 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
            *(v634 + 104) = v636;
            v637 = v826;
            *(v634 + 72) = v826;
            *(v634 + 136) = &type metadata for String;
            v638 = sub_1000053B0();
            v639 = v822;
            *(v634 + 112) = v823;
            *(v634 + 120) = v639;
            *(v634 + 176) = &type metadata for UInt;
            *(v634 + 184) = &protocol witness table for UInt;
            *(v634 + 144) = v638;
            *(v634 + 152) = 9967;
            v640 = v833;
            *(v634 + 216) = v635;
            *(v634 + 224) = v636;
            *(v634 + 192) = v640;
            v641 = v637;
            v642 = v640;
            v643 = static os_log_type_t.error.getter();
            sub_100005404(v633, &_mh_execute_header, v643, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v634);
            swift_setDeallocating();
            sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
            swift_arrayDestroy();
            swift_deallocClassInstance();
            v644 = static os_log_type_t.error.getter();
            sub_100005404(v633, &_mh_execute_header, v644, "Merging a CRLUserBoardMetadataSyncRemoteRecord shouldn't result in us becoming supported again.", 95, 2, _swiftEmptyArrayStorage);

            type metadata accessor for __VaListBuilder();
            v645 = swift_allocObject();
            v645[2] = 8;
            v645[3] = 0;
            v645[4] = 0;
            v645[5] = 0;
            v646 = __VaListBuilder.va_list()();
            StaticString.description.getter("_sync_applySyncRemoteRecord(record:shouldOverwrite:isResultOfSave:cachedBoardIdentifiers:zonesToRefetch:unsupportedZonesToRefetch:unsupportedBoardIdentifiers:needsHierarchyChangeNotification:modifiedBoardIdentifiers:)", 217, 2);
            v647 = String._bridgeToObjectiveC()();

            StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
            v648 = String._bridgeToObjectiveC()();

            StaticString.description.getter("Merging a CRLUserBoardMetadataSyncRemoteRecord shouldn't result in us becoming supported again.", 95, 2);
            v649 = String._bridgeToObjectiveC()();

            [v829 handleFailureInFunction:v647 file:v648 lineNumber:9967 isFatal:0 format:v649 args:v646];

            v321 = v787;
            v320 = v828;
            v105 = v824;
            goto LABEL_96;
          }

          v685 = v818;
          sub_10000C83C(v574 + OBJC_IVAR____TtC8Freeform30CRLUserBoardMetadataSyncRecord_boardIdentifier, v818, type metadata accessor for CRLBoardIdentifier);
          v686 = v817;
          sub_100031F10(v817, v685);

          sub_100026028(v686, type metadata accessor for CRLBoardIdentifier);
          v321 = v787;
          v105 = v824;
        }

        else
        {

          v321 = v787;
          v105 = v824;
        }

        v320 = v573;
LABEL_96:
        swift_unknownObjectRelease();
        v92.n128_f64[0] = sub_100EA5510(v827, v825, v105, v320, v321, v322);
        return v92.n128_f64[0];
      }

      if (qword_1019F2258 != -1)
      {
        swift_once();
      }

      v600 = static OS_os_log.boardStore;
      v601 = static os_log_type_t.error.getter();
      sub_100005404(v600, &_mh_execute_header, v601, "Attempted to apply unknown CRLSyncRemoteRecord type", 51, 2, _swiftEmptyArrayStorage);
      v830 = objc_opt_self();
      v602 = [v830 _atomicIncrementAssertCount];
      v833 = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, &v833, "Failed to handle remote record!", 31, 2u);
      StaticString.description.getter("_sync_applySyncSaveResults(_:syncScope:)", 40, 2);
      *&v829 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
      v603 = String._bridgeToObjectiveC()();

      v604 = [v603 lastPathComponent];

      *&v826 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v606 = v605;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v607 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v608 = swift_allocObject();
      *(v608 + 16) = xmmword_10146CA70;
      *(v608 + 56) = &type metadata for Int32;
      *(v608 + 64) = &protocol witness table for Int32;
      *(v608 + 32) = v602;
      v609 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(v608 + 96) = v609;
      v610 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
      *(v608 + 104) = v610;
      v611 = v829;
      *(v608 + 72) = v829;
      *(v608 + 136) = &type metadata for String;
      v612 = sub_1000053B0();
      *(v608 + 112) = v826;
      *(v608 + 120) = v606;
      *(v608 + 176) = &type metadata for UInt;
      *(v608 + 184) = &protocol witness table for UInt;
      *(v608 + 144) = v612;
      *(v608 + 152) = 10149;
      v613 = v833;
      *(v608 + 216) = v609;
      *(v608 + 224) = v610;
      *(v608 + 192) = v613;
      v614 = v611;
      v615 = v613;
      v616 = static os_log_type_t.error.getter();
      sub_100005404(v607, &_mh_execute_header, v616, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v608);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v617 = static os_log_type_t.error.getter();
      sub_100005404(v607, &_mh_execute_header, v617, "Failed to handle remote record!", 31, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v618 = swift_allocObject();
      v618[2] = 8;
      v618[3] = 0;
      v618[4] = 0;
      v618[5] = 0;
      v619 = __VaListBuilder.va_list()();
      StaticString.description.getter("_sync_applySyncSaveResults(_:syncScope:)", 40, 2);
      v620 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
      v621 = String._bridgeToObjectiveC()();

      StaticString.description.getter("Failed to handle remote record!", 31, 2);
      v622 = String._bridgeToObjectiveC()();

      [v830 handleFailureInFunction:v620 file:v621 lineNumber:10149 isFatal:0 format:v622 args:v619];
      v623 = v824;
      swift_unknownObjectRelease();

      v245 = v827;
      v246 = v825;
      v247 = v623;
      goto LABEL_60;
    }

    __break(1u);
LABEL_293:
    type metadata accessor for CRLBoardShareSyncLocalChangeRecord(v107);
    v687 = swift_dynamicCastClass();
    if (!v687)
    {
      while (1)
      {
        v831 = objc_opt_self();
        v764 = [v831 _atomicIncrementAssertCount];
        v833 = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, &v833, "Unknown record type", 19, 2u);
        StaticString.description.getter("_sync_applySyncSaveResults(_:syncScope:)", 40, 2);
        v765 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
        v766 = String._bridgeToObjectiveC()();

        v767 = [v766 lastPathComponent];

        v768 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v770 = v769;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v771 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        v772 = swift_allocObject();
        *(v772 + 16) = xmmword_10146CA70;
        *(v772 + 56) = &type metadata for Int32;
        *(v772 + 64) = &protocol witness table for Int32;
        *(v772 + 32) = v764;
        v773 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
        *(v772 + 96) = v773;
        v774 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
        *(v772 + 104) = v774;
        *(v772 + 72) = v765;
        *(v772 + 136) = &type metadata for String;
        v775 = sub_1000053B0();
        *(v772 + 112) = v768;
        *(v772 + 120) = v770;
        *(v772 + 176) = &type metadata for UInt;
        *(v772 + 184) = &protocol witness table for UInt;
        *(v772 + 144) = v775;
        *(v772 + 152) = 10197;
        v776 = v833;
        *(v772 + 216) = v773;
        *(v772 + 224) = v774;
        *(v772 + 192) = v776;
        v777 = v765;
        v778 = v776;
        v779 = static os_log_type_t.error.getter();
        sub_100005404(v771, &_mh_execute_header, v779, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v772);

        v780 = static os_log_type_t.error.getter();
        sub_100005404(v771, &_mh_execute_header, v780, "Unknown record type", 19, 2, _swiftEmptyArrayStorage);

        sub_10063DF98(_swiftEmptyArrayStorage, "Unknown record type");
        type metadata accessor for __VaListBuilder();
        v781 = swift_allocObject();
        v781[2] = 8;
        v781[3] = 0;
        v781[4] = 0;
        v781[5] = 0;
        v782 = __VaListBuilder.va_list()();
        StaticString.description.getter("_sync_applySyncSaveResults(_:syncScope:)", 40, 2);
        v759 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
        v760 = String._bridgeToObjectiveC()();

        StaticString.description.getter("Unknown record type", 19, 2);
        v761 = String._bridgeToObjectiveC()();

        [v831 handleFailureInFunction:v759 file:v760 lineNumber:10197 isFatal:1 format:v761 args:v782];
LABEL_323:

        SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v762, v763);
        _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
      }
    }

    v688 = v687;
    if (qword_1019F2270 != -1)
    {
      swift_once();
    }

    *&v829 = static OS_os_log.dataSync;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v690 = OBJC_IVAR____TtC8Freeform23CRLBoardShareSyncRecord_boardIdentifier;
    v691 = v817;
    sub_10000C83C(v688 + OBJC_IVAR____TtC8Freeform23CRLBoardShareSyncRecord_boardIdentifier, v817, type metadata accessor for CRLBoardIdentifier);
    v692 = v815;
    v693 = v784;
    v694 = v786;
    (*(v815 + 16))(v784, v691, v786);
    sub_100026028(v691, type metadata accessor for CRLBoardIdentifier);
    v695 = UUID.uuidString.getter();
    v697 = v696;
    (*(v692 + 8))(v693, v694);
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v695;
    *(inited + 40) = v697;
    v698 = static os_log_type_t.default.getter();
    sub_100005404(v829, &_mh_execute_header, v698, "Board %{public}@ set ckShare to nil with reason: CKError Unknown Item.", 70, 2, inited);
    swift_setDeallocating();
    sub_100005070((inited + 32));
    sub_100E196EC(v688 + v690, 0, 0);
    v699 = v824;
    sub_1009F5E04(v824, 0);
    v700 = v827;
    swift_unknownObjectRelease();
    v92.n128_f64[0] = sub_100EA5510(v700, v825, v699, v828, v787, v701);
    return v92.n128_f64[0];
  }

  *&v829 = v31;
  v141 = v828;
  if (!v828)
  {
    v784 = v90;
    v815 = v89;
    v786 = v85;
    v216 = v824;
    v215 = v825;
    *&v823 = v825 & 0x3FFFFFFFFFFFFFFFLL;
    v832 = v824;
    sub_1009F5EE8(v824, 0);
    v217 = v215;
    v218 = v828;
    v787 = v96;
    sub_100EA54FC(v827, v217, v216, v828, v96, v219);
    sub_1009F5EE8(v216, 0);
    type metadata accessor for CKError(0);
    v221 = v220;
    v222 = sub_1000066D0(&qword_1019F3348, type metadata accessor for CKError, byte_101468944);
    swift_unknownObjectRetain();
    *&v826 = v222;
    _BridgedStoredNSError.code.getter();
    if (v837 > 0x23)
    {
      goto LABEL_103;
    }

    if (((1 << v837) & 0xC8A0B1000) != 0)
    {
      type metadata accessor for CRLBoardItemSyncLocalChangeRecord(0);
      v175 = v827;
      v223 = swift_dynamicCastClass();
      if (v223)
      {
        v224 = v223;
        sub_1009F5E04(v824, 0);
        v225 = v815;
        *&v823 = *(v815 + 16);
        v226 = v784;
        (v823)(v784, &v224[OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_id], v786);
        v822 = v224;
        *&v820 = OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_boardIdentifier;
        *&v829 = v221;
        v227 = v817;
        sub_10000C83C(&v224[OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_boardIdentifier], v817, type metadata accessor for CRLBoardIdentifier);
        v228 = OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_transientSyncExclusions;
        swift_beginAccess();
        *&v821 = v228;
        sub_101270CEC(v227);
        v229 = v226;
        v230 = v786;
        (v823)(v73, v229, v786);
        v231 = v824;
        swift_beginAccess();
        sub_100E6AF38(v76, v73);
        v232 = *(v225 + 8);
        v232(v76, v230);
        swift_endAccess();

        swift_endAccess();
        sub_100026028(v227, type metadata accessor for CRLBoardIdentifier);
        v232(v784, v230);
        v833 = v231;
        _BridgedStoredNSError.code.getter();
        if (v832 != 34)
        {
          v833 = v231;
          _BridgedStoredNSError.code.getter();
          if (v832 != 25)
          {
            sub_1009F5E04(v231, 0);
            v375 = v827;
            swift_unknownObjectRelease();
            v245 = v375;
            v246 = v825;
            v247 = v231;
            goto LABEL_60;
          }
        }

        sub_10000C83C(&v822[v820], v227, type metadata accessor for CRLBoardIdentifier);
        swift_beginAccess();
        v233 = sub_101270CEC(v227);
        *(v233 + 16) = 1;
        *(v233 + 42) = 1;
        swift_endAccess();

        sub_1009F5E04(v231, 0);
        v234 = v827;
        swift_unknownObjectRelease();
        sub_100EA5510(v234, v825, v231, v828, v787, v235);
        v236 = v227;
LABEL_245:
        sub_100026028(v236, type metadata accessor for CRLBoardIdentifier);
        return v92.n128_f64[0];
      }

      type metadata accessor for CRLBoardSyncLocalChangeRecord(0);
      v314 = swift_dynamicCastClass();
      if (v314)
      {
        v315 = v314;
        v316 = v824;
        sub_1009F5E04(v824, 0);
        v833 = v316;
        _BridgedStoredNSError.code.getter();
        v317 = v817;
        if (v832 == 34 || (v833 = v316, _BridgedStoredNSError.code.getter(), v832 == 25))
        {
          sub_10000C83C(v315 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_boardIdentifier, v317, type metadata accessor for CRLBoardIdentifier);
          swift_beginAccess();
          v318 = sub_101270CEC(v317);
          *(v318 + 16) = 1;
          *(v318 + 42) = 1;
        }

        else
        {
          sub_10000C83C(v315 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_boardIdentifier, v317, type metadata accessor for CRLBoardIdentifier);
          swift_beginAccess();
          *(sub_101270CEC(v317) + 16) = 1;
        }

        swift_endAccess();

        sub_1009F5E04(v316, 0);
        swift_unknownObjectRelease();
        sub_100EA5510(v175, v825, v316, v828, v787, v528);
        v236 = v317;
        goto LABEL_245;
      }

      type metadata accessor for CRLUserBoardMetadataSyncLocalChangeRecord(0);
      v383 = swift_dynamicCastClass();
      v384 = v831;
      v385 = v817;
      v171 = v824;
      if (!v383)
      {
        sub_1009F5E04(v824, 0);
        type metadata accessor for CRLFreehandDrawingBucketSyncLocalChangeRecord(0);
        v545 = swift_dynamicCastClass();
        if (v545)
        {
          v546 = *(v545 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_bucketIndex);
          sub_10000C83C(v545 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_boardIdentifier, v385, type metadata accessor for CRLBoardIdentifier);
          swift_beginAccess();
          sub_101270CEC(v385);
          swift_beginAccess();
          sub_100E7219C(&v837, v546);
          swift_endAccess();

          swift_endAccess();
        }

        else
        {
          type metadata accessor for CRLBoardShareSyncLocalChangeRecord(0);
          v590 = swift_dynamicCastClass();
          if (!v590)
          {
            if (qword_1019F2270 != -1)
            {
              swift_once();
            }

            v650 = static OS_os_log.dataSync;
            v651 = static os_log_type_t.default.getter();
            sub_100005404(v650, &_mh_execute_header, v651, "Failed to apply sync save causing transient sync exclusion, unknown local record type", 85, 2, _swiftEmptyArrayStorage);
            sub_1009F5E04(v171, 0);
            sub_100EA5510(v175, v825, v171, v828, v787, v652);
            swift_unknownObjectRelease();
            return v92.n128_f64[0];
          }

          sub_10000C83C(v590 + OBJC_IVAR____TtC8Freeform23CRLBoardShareSyncRecord_boardIdentifier, v385, type metadata accessor for CRLBoardIdentifier);
          swift_beginAccess();
          *(sub_101270CEC(v385) + 17) = 1;
          swift_endAccess();
        }

        sub_1009F5E04(v171, 0);
        swift_unknownObjectRelease();
        sub_100EA5510(v175, v825, v171, v828, v787, v591);
        v236 = v385;
        goto LABEL_245;
      }

      v386 = v383;
      v833 = v824;
      swift_unknownObjectRetain();
      _BridgedStoredNSError.code.getter();
      if (v832 == 31)
      {
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        v387 = swift_initStackObject();
        *(v387 + 16) = xmmword_10146C6B0;
        *&v820 = v386;
        sub_10000C83C(v386 + OBJC_IVAR____TtC8Freeform30CRLUserBoardMetadataSyncRecord_boardIdentifier, v385, type metadata accessor for CRLBoardIdentifier);
        v388 = v815;
        v389 = v784;
        v390 = v786;
        (*(v815 + 16))(v784, v385, v786);
        sub_100026028(v385, type metadata accessor for CRLBoardIdentifier);
        v391 = UUID.uuidString.getter();
        v393 = v392;
        (*(v388 + 8))(v389, v390);
        v394 = v387;
        *(v387 + 56) = &type metadata for String;
        v395 = sub_1000053B0();
        *(v387 + 32) = v391;
        *&v826 = v387 + 32;
        *&v823 = v395;
        *(v387 + 64) = v395;
        *(v387 + 40) = v393;
        v819 = objc_opt_self();
        v396 = [v819 _atomicIncrementAssertCount];
        v833 = [objc_allocWithZone(NSString) init];
        sub_100604538(v387, &v833, "Logic error. A reference violation for UserBoardMetadata should never happen because the record does not save any references. Metadata boardIdentifier %{public}@", 161, 2u);
        StaticString.description.getter("_sync_applySyncSaveResults(_:syncScope:)", 40, 2);
        v822 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
        v397 = String._bridgeToObjectiveC()();

        v398 = [v397 lastPathComponent];

        v399 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *&v821 = v400;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v401 = static OS_os_log.crlAssert;
        v402 = swift_initStackObject();
        *(v402 + 16) = xmmword_10146CA70;
        *(v402 + 56) = &type metadata for Int32;
        *(v402 + 64) = &protocol witness table for Int32;
        *(v402 + 32) = v396;
        v403 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
        *(v402 + 96) = v403;
        v404 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
        v405 = v822;
        *(v402 + 72) = v822;
        v406 = v823;
        *(v402 + 136) = &type metadata for String;
        *(v402 + 144) = v406;
        *(v402 + 104) = v404;
        *(v402 + 112) = v399;
        *(v402 + 120) = v821;
        *(v402 + 176) = &type metadata for UInt;
        *(v402 + 184) = &protocol witness table for UInt;
        *(v402 + 152) = 10219;
        v407 = v833;
        *(v402 + 216) = v403;
        *(v402 + 224) = v404;
        *(v402 + 192) = v407;
        v408 = v405;
        v409 = v407;
        v410 = static os_log_type_t.error.getter();
        sub_100005404(v401, &_mh_execute_header, v410, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v402);
        swift_setDeallocating();
        v822 = sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
        swift_arrayDestroy();
        v411 = static os_log_type_t.error.getter();
        sub_100005404(v401, &_mh_execute_header, v411, "Logic error. A reference violation for UserBoardMetadata should never happen because the record does not save any references. Metadata boardIdentifier %{public}@", 161, 2, v387);

        type metadata accessor for __VaListBuilder();
        v312 = swift_allocObject();
        *(v312 + 16) = 8;
        *(v312 + 24) = 0;
        v218 = (v312 + 24);
        *(v312 + 32) = 0;
        *(v312 + 40) = 0;
        *&v823 = *(v387 + 16);
        if (v823)
        {
          v250 = 0;
          while (1)
          {
            v133 = v394;
            v412 = (v826 + 40 * v250);
            v310 = v412[4];
            sub_100020E58(v412, v412[3]);
            v413 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
            v311 = *v218;
            v414 = *(v413 + 16);
            v177 = __OFADD__(*v218, v414);
            v415 = *v218 + v414;
            if (v177)
            {
              __break(1u);
LABEL_309:
              v732 = v827;
              swift_unknownObjectRelease();
              v733 = v824;
              sub_1009F5E04(v824, 0);
              swift_unknownObjectRelease();
              sub_100EA5510(v732, v825, v733, v828, v787, v734);
              goto LABEL_310;
            }

            v309 = *(v312 + 32);
            if (v309 >= v415)
            {
              goto LABEL_152;
            }

            if (v309 + 0x4000000000000000 < 0)
            {
              __break(1u);
LABEL_312:
              __break(1u);
LABEL_313:
              swift_once();
LABEL_170:
              v435 = static OS_os_log.dataSync;
              sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
              v436 = swift_allocObject();
              *(v436 + 16) = xmmword_10146C6B0;
              v437 = v816;
              v438 = UUID.uuidString.getter();
              v440 = v439;
              *(v436 + 56) = &type metadata for String;
              *(v436 + 64) = sub_1000053B0();
              *(v436 + 32) = v438;
              *(v436 + 40) = v440;
              v441 = static os_log_type_t.default.getter();
              sub_100005404(v435, &_mh_execute_header, v441, "Purging board with id %{public}@ after syncing hideFromRecentlyDeleted state", 76, 2, v436);
              swift_setDeallocating();
              sub_100005070((v436 + 32));
              swift_deallocClassInstance();
              v442 = v831;
              sub_100E0C7BC(v437, 0xD000000000000025, 0x80000001015A7410, 0);
              if (v442)
              {
                v199 = v824;
                v343 = v824;
                v200 = v828;
LABEL_172:
                sub_100025870(v343, v200);
                v213 = v827;
                swift_unknownObjectRelease();

LABEL_173:
                v443 = v787;
                v444 = v213;
                v445 = v825;
                v446 = v199;
                v447 = v200;
LABEL_192:
                sub_100EA5510(v444, v445, v446, v447, v443, v214);

                v480 = *(v815 + 8);
                v481 = v786;
                v480(v813, v786);
                v480(v818, v481);
                sub_100026028(v816, type metadata accessor for CRLBoardIdentifier);
                return v92.n128_f64[0];
              }

              v313 = v787;
              v434 = v827;
              v200 = v828;
              v199 = v824;
LABEL_191:
              sub_100025870(v199, v200);

              swift_unknownObjectRelease();

              v444 = v434;
              v445 = v825;
              v446 = v199;
              v447 = v200;
              v443 = v313;
              goto LABEL_192;
            }

            v416 = *(v312 + 40);
            if (2 * v309 > v415)
            {
              v415 = 2 * v309;
            }

            *(v312 + 32) = v415;
            if ((v415 - 0x1000000000000000) >> 61 != 7)
            {
              goto LABEL_312;
            }

            v310 = v413;
            v417 = swift_slowAlloc();
            v418 = v417;
            *(v312 + 40) = v417;
            if (v416)
            {
              break;
            }

            v413 = v310;
            if (!v418)
            {
LABEL_159:
              __break(1u);
LABEL_160:
              sub_10000BE14(v311, v808, &qword_1019F6990, &qword_10146D2F0);
              if ((v250)(v311 + v312, 1, v310) == 1)
              {
                sub_10000CAAC(v309, &qword_1019F6990, &qword_10146D2F0);
                (*(v815 + 8))(v808, v310);
                goto LABEL_162;
              }

              v511 = v784;
              (v791)(v784, v311 + v312, v310);
              sub_1000066D0(&qword_1019F37C0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
              v512 = v808;
              v513 = v309;
              LODWORD(v806) = dispatch thunk of static Equatable.== infix(_:_:)();
              v514 = *(v815 + 8);
              v514(v511, v310);
              sub_10000CAAC(v513, &qword_1019F6990, &qword_10146D2F0);
              v514(v512, v310);
              sub_10000CAAC(v311, &qword_1019F6990, &qword_10146D2F0);
              v308 = v811;
              v306 = v812;
              if (v806)
              {
                v514(v812, v786);
LABEL_65:
                v253 = v831;
LABEL_66:
                v254 = v827;
                v172 = v828;
                v255 = v818;
                v256 = v814;
                sub_10000BE14(v822, v814, &qword_1019F6990, &qword_10146D2F0);
                v257 = v804;
                if (v255)
                {
                  v831 = v253;
                  v258 = qword_1019F2270;

                  if (v258 != -1)
                  {
                    swift_once();
                  }

                  v259 = static OS_os_log.dataSync;
                  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
                  v260 = swift_allocObject();
                  *(v260 + 16) = xmmword_10146C6B0;
                  v261 = UUID.uuidString.getter();
                  v263 = v262;
                  *(v260 + 56) = &type metadata for String;
                  v264 = sub_1000053B0();
                  *(v260 + 64) = v264;
                  *(v260 + 32) = v261;
                  *(v260 + 40) = v263;
                  v265 = static os_log_type_t.info.getter();
                  sub_100005404(v259, &_mh_execute_header, v265, "Merging board item data with id %{public}@", 42, 2, v260);
                  swift_setDeallocating();
                  sub_100005070((v260 + 32));
                  swift_deallocClassInstance();
                  v266 = swift_allocObject();
                  *(v266 + 16) = xmmword_10146C4D0;
                  *(v266 + 56) = &type metadata for String;
                  *(v266 + 64) = v264;
                  *(v266 + 32) = 0x676E696772654DLL;
                  *(v266 + 40) = 0xE700000000000000;
                  v267 = UUID.uuidString.getter();
                  *(v266 + 96) = &type metadata for String;
                  *(v266 + 104) = v264;
                  *(v266 + 72) = v267;
                  *(v266 + 80) = v268;
                  v269 = v821;
                  v270 = UUID.uuidString.getter();
                  *(v266 + 136) = &type metadata for String;
                  *(v266 + 144) = v264;
                  *(v266 + 112) = v270;
                  *(v266 + 120) = v271;
                  v272 = static os_log_type_t.info.getter();
                  sub_100005404(v259, &_mh_execute_header, v272, "%{public}@ board item with id: %{public}@, boardID: %{public}@", 62, 2, v266);
                  swift_setDeallocating();
                  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
                  swift_arrayDestroy();
                  swift_deallocClassInstance();
                  v171 = v816;
                  v273 = v817;
                  v274 = v824;
                  v172 = v828;
                  v80 = v831;
                  v116 = sub_100DF00A0(v818, v269, 1u, v824, v828, v809 ^ 1, v809, v817, v816, 0, 0);
                  if (!v80)
                  {
                    goto LABEL_123;
                  }

                  sub_100025870(v274, v172);

                  sub_100025870(v273, v171);
                  v275 = v827;
                  swift_unknownObjectRelease();

                  sub_100EA5510(v275, v825, v274, v172, v787, v276);

                  swift_unknownObjectRelease();
                  sub_10000CAAC(v814, &qword_1019F6990, &qword_10146D2F0);
                  v277 = v269;
                }

                else
                {
                  if ((v809 & 1) == 0)
                  {
                    sub_100025870(v817, v816);
                    goto LABEL_221;
                  }

LABEL_202:
                  v831 = v253;
                  if (qword_1019F2270 != -1)
                  {
                    swift_once();
                  }

                  v515 = static OS_os_log.dataSync;
                  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
                  v516 = swift_allocObject();
                  *(v516 + 16) = xmmword_10146C6B0;
                  v517 = v785;
                  v518 = UUID.uuidString.getter();
                  v520 = v519;
                  *(v516 + 56) = &type metadata for String;
                  *(v516 + 64) = sub_1000053B0();
                  *(v516 + 32) = v518;
                  *(v516 + 40) = v520;
                  v521 = static os_log_type_t.default.getter();
                  sub_100005404(v515, &_mh_execute_header, v521, "Merging a tombstoned BoardItem record with id %{public}@", 56, 2, v516);
                  swift_setDeallocating();
                  sub_100005070((v516 + 32));
                  swift_deallocClassInstance();
                  v522 = v816;
                  v523 = v817;
                  v524 = v824;
                  v172 = v828;
                  v525 = v831;
                  sub_100E420CC(v517, v800, v799, v796, v814, v821, v824, v828, v817, v816);
                  if (!v525)
                  {

                    sub_100025870(v523, v522);

                    v256 = v814;
                    v257 = v804;
                    v254 = v827;
                    goto LABEL_221;
                  }

                  sub_100025870(v524, v172);

                  sub_100025870(v523, v522);
                  v526 = v827;
                  swift_unknownObjectRelease();

                  sub_100EA5510(v526, v825, v524, v172, v787, v527);

                  swift_unknownObjectRelease();
                  sub_10000CAAC(v814, &qword_1019F6990, &qword_10146D2F0);
                  v277 = v821;
                }

                sub_100026028(v277, type metadata accessor for CRLBoardIdentifier);
                sub_10000CAAC(v822, &qword_1019F6990, &qword_10146D2F0);
                (*(v815 + 8))(v785, v786);
                goto LABEL_15;
              }

LABEL_163:
              v424 = v821;
              v425 = v831;
              v426 = sub_100DEEFC0(v306, v821);
              v831 = v425;
              if (v425)
              {
                v427 = v424;
                v428 = v824;
                v429 = v828;
                sub_100025870(v824, v828);
                sub_100025870(v817, v816);
                v430 = v827;
                swift_unknownObjectRelease();

                sub_100EA5510(v430, v825, v428, v429, v787, v431);

                swift_unknownObjectRelease();
                v432 = *(v815 + 8);
                v433 = v786;
                v432(v306, v786);
                sub_100026028(v427, type metadata accessor for CRLBoardIdentifier);
                sub_10000CAAC(v822, &qword_1019F6990, &qword_10146D2F0);
                v432(v785, v433);
                goto LABEL_15;
              }

              if (v426)
              {
                (*(v815 + 8))(v812, v786);
                v253 = v831;
                goto LABEL_66;
              }

              v115 = v786;
              v808 = *(v815 + 56);
              (v808)(v308, 1, 1, v786);
              v482 = v823;
              v483 = v813;
              *v823 = v813;
              v345 = v826;
              (v793)(v482, v794, v826);
              v484 = v483;
              LOBYTE(v483) = _dispatchPreconditionTest(_:)();
              v133(v482, v345);
              if (v483)
              {
                v485 = v810;
                v801(v810, v812, v115);
                *&v826 = 0x2000400000000;
                v486 = v797;
                sub_10000BE14(v308, v797, &qword_1019F6990, &qword_10146D2F0);
                v487 = v798;
                sub_10000C83C(v424, v798, type metadata accessor for CRLBoardIdentifier);
                type metadata accessor for CRLBoardItemDatabaseRow(0);
                v488 = swift_allocObject();
                v489 = OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_parentContainerUUID;
                (v808)(v488 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_parentContainerUUID, 1, 1, v115);
                v829 = xmmword_101486780;
                *(v488 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData) = xmmword_101486780;
                *(v488 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData) = xmmword_101486780;
                *(v488 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData) = xmmword_101486780;
                *(v488 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData) = xmmword_101486780;
                *(v488 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue) = xmmword_101486780;
                (v791)(v488 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_itemUUID, v485, v115);
                v490 = v488 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_minRequiredVersions;
                v491 = v826;
                *v490 = 0x1000000000000;
                *(v490 + 8) = v491;
                *(v490 + 16) = 0x1000000000000;
                *(v490 + 24) = 0;
                *(v490 + 32) = 1;
                *(v488 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_objectOptions) = 0;
                swift_beginAccess();
                sub_10002C638(v486, v488 + v489, &qword_1019F6990, &qword_10146D2F0);
                swift_endAccess();
                sub_100025668(v487, v488 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
                v492 = v488 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_rawTypeValues;
                *v492 = xmmword_101474CF0;
                *(v492 + 16) = 1;
                v493 = *(v488 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData);
                v494 = *(v488 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData + 8);
                *(v488 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_commonData) = v829;
                sub_100025870(v493, v494);
                v495 = *(v488 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData);
                v496 = *(v488 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData + 8);
                *(v488 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_specificData) = v829;
                sub_100025870(v495, v496);
                v497 = *(v488 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData);
                v498 = *(v488 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData + 8);
                *(v488 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_capsuleData) = v829;
                sub_100025870(v497, v498);
                *(v488 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_isLocalTombstone) = 0;
                *(v488 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_unsyncedChanges) = 0;
                v499 = *(v488 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData);
                v500 = *(v488 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData + 8);
                *(v488 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_syncData) = v829;
                sub_100025870(v499, v500);
                v501 = *(v488 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue);
                v502 = *(v488 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue + 8);
                *(v488 + OBJC_IVAR____TtC8Freeform23CRLBoardItemDatabaseRow_ckMergeableRecordValue) = v829;
                sub_100025870(v501, v502);
                v503 = v831;
                sub_100DF5A90(v488);
                v253 = v503;
                if (!v503)
                {
                  swift_setDeallocating();
                  sub_100FE3A40();
                  swift_deallocClassInstance();
                  sub_10000CAAC(v811, &qword_1019F6990, &qword_10146D2F0);
                  (*(v815 + 8))(v812, v786);
                  goto LABEL_66;
                }

                sub_100025870(v817, v816);
                v504 = v827;
                swift_unknownObjectRelease_n();

                v505 = v504;
                v506 = v824;
                v507 = v828;
                sub_100EA5510(v505, v825, v824, v828, v787, v508);
                sub_100025870(v506, v507);
                swift_setDeallocating();
                sub_100FE3A40();
                swift_deallocClassInstance();
                sub_10000CAAC(v811, &qword_1019F6990, &qword_10146D2F0);
                v509 = *(v815 + 8);
                v510 = v786;
                v509(v812, v786);
                sub_100026028(v821, type metadata accessor for CRLBoardIdentifier);
                sub_10000CAAC(v822, &qword_1019F6990, &qword_10146D2F0);
                v509(v785, v510);
LABEL_15:
                sub_10000CAAC(v820, &qword_1019F6990, &qword_10146D2F0);
                return v92.n128_f64[0];
              }

              __break(1u);
LABEL_317:
              swift_once();
LABEL_212:
              *&v829 = static OS_os_log.dataSync;
              sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
              v529 = swift_allocObject();
              *(v529 + 16) = xmmword_10146BDE0;
              v530 = *(v345 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_bucketIndex);
              *(v529 + 56) = &type metadata for Int;
              *(v529 + 64) = &protocol witness table for Int;
              *(v529 + 32) = v530;
              v830 = (v529 + 32);
              v531 = v817;
              sub_10000C83C(v345 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_boardIdentifier, v817, type metadata accessor for CRLBoardIdentifier);
              v532 = v815;
              v533 = v784;
              v534 = v786;
              (*(v815 + 16))(v784, v531, v786);
              sub_100026028(v531, type metadata accessor for CRLBoardIdentifier);
              v535 = UUID.uuidString.getter();
              v537 = v536;
              (*(v532 + 8))(v533, v534);
              *(v529 + 96) = &type metadata for String;
              *(v529 + 104) = sub_1000053B0();
              *(v529 + 72) = v535;
              *(v529 + 80) = v537;
              v538 = static os_log_type_t.error.getter();
              sub_100005404(v829, &_mh_execute_header, v538, "_sync_applySyncSaveResults unable to get ckMergeableRecordValue for bucket %{public}d, probably a partial record. Board: %{public}@", 131, 2, v529);
              v539 = v824;
              sub_100025870(v824, v133);
              swift_unknownObjectRelease_n();

              sub_100EA5510(v115, v825, v539, v133, v787, v540);
              swift_setDeallocating();
              sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
              swift_arrayDestroy();
              swift_deallocClassInstance();
              return v92.n128_f64[0];
            }

LABEL_153:
            v394 = v133;
            v420 = *(v413 + 16);
            if (v420)
            {
              v421 = (v413 + 32);
              v422 = *v218;
              while (1)
              {
                v423 = *v421++;
                *&v418[8 * v422] = v423;
                v422 = *v218 + 1;
                if (__OFADD__(*v218, 1))
                {
                  break;
                }

                *v218 = v422;
                if (!--v420)
                {
                  goto LABEL_137;
                }
              }

              __break(1u);
LABEL_274:
              if (qword_1019F2270 != -1)
              {
                swift_once();
              }

              v654 = static OS_os_log.dataSync;
              v655 = static os_log_type_t.default.getter();
              sub_100005404(v654, &_mh_execute_header, v655, "Failed to apply sync save permission failure, unknown local record type", 71, 2, _swiftEmptyArrayStorage);
              sub_1009F5E04(v133, 0);
              sub_100EA5510(v310, v825, v133, v218, v787, v656);
              swift_unknownObjectRelease();
              return v92.n128_f64[0];
            }

LABEL_137:

            if (++v250 == v823)
            {
              goto LABEL_228;
            }
          }

          if (v417 != v416 || v417 >= &v416[8 * v311])
          {
            memmove(v417, v416, 8 * v311);
          }

          v309 = v312;
          __VaListBuilder.deallocStorage(wordCount:storage:)();
          v413 = v310;
LABEL_152:
          v418 = *(v312 + 40);
          if (!v418)
          {
            goto LABEL_159;
          }

          goto LABEL_153;
        }

LABEL_228:
        v554 = __VaListBuilder.va_list()();
        StaticString.description.getter("_sync_applySyncSaveResults(_:syncScope:)", 40, 2);
        v555 = String._bridgeToObjectiveC()();

        StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
        v556 = String._bridgeToObjectiveC()();

        StaticString.description.getter("Logic error. A reference violation for UserBoardMetadata should never happen because the record does not save any references. Metadata boardIdentifier %{public}@", 161, 2);
        v557 = String._bridgeToObjectiveC()();

        [v819 handleFailureInFunction:v555 file:v556 lineNumber:10219 isFatal:0 format:v557 args:v554];

        swift_setDeallocating();
        swift_arrayDestroy();
        v384 = v831;
        v171 = v824;
        v175 = v827;
        v386 = v820;
      }

      v558 = v829;
      sub_10000C83C(v386 + OBJC_IVAR____TtC8Freeform30CRLUserBoardMetadataSyncRecord_boardIdentifier, v829, type metadata accessor for CRLBoardIdentifier);
      v559 = sub_100E07F54(v558);
      if (!v384)
      {
        v578 = v559;
        sub_100026028(v558, type metadata accessor for CRLBoardIdentifier);
        v142 = v828;
        if (!v578)
        {
LABEL_264:
          sub_1009F5E04(v171, 0);
          sub_1009F5E04(v171, 0);
          swift_unknownObjectRelease_n();
          v92.n128_f64[0] = sub_100EA5510(v175, v825, v171, v142, v787, v624);
          return v92.n128_f64[0];
        }

        *(v578 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_unsyncedChanges) = 0;
        sub_100E08660(v578);
        sub_1009F5E04(v171, 0);
        sub_1009F5E04(v171, 0);
        swift_unknownObjectRelease_n();
        sub_100EA5510(v175, v825, v171, v142, v787, v653);
        goto LABEL_310;
      }

      sub_1009F5E04(v171, 0);
      sub_1009F5E04(v171, 0);
      swift_unknownObjectRelease_n();
      sub_100EA5510(v175, v825, v171, v828, v787, v560);
      v236 = v558;
      goto LABEL_245;
    }

    if (v837 != 26)
    {
      if (v837 == 28)
      {
        v323 = v824;
        sub_1009F5E04(v824, 0);
        v324 = v827;
        ObjectType = swift_getObjectType();
        v833 = v324;
        v326 = (*(*(v823 + 8) + 8))(ObjectType);
        v327 = [v326 zoneID];

        v328 = v801;
        sub_100EE9190(v801);

        if ((*(v803 + 48))(v328, 1, v804) == 1)
        {
          sub_1009F5E04(v323, 0);
          swift_unknownObjectRelease();
          sub_100EA5510(v324, v825, v323, v218, v787, v329);
          sub_10000CAAC(v328, &unk_1019F52D0, &unk_10147C1C0);
          return v92.n128_f64[0];
        }

        sub_100025668(v328, v26, type metadata accessor for CRLBoardIdentifier);
        v541 = v818;
        sub_10000C83C(v26, v818, type metadata accessor for CRLBoardIdentifier);
        v542 = v817;
        sub_100031F10(v817, v541);
        sub_1009F5E04(v323, 0);
        swift_unknownObjectRelease();
        sub_100EA5510(v324, v825, v323, v218, v787, v543);
        sub_100026028(v542, type metadata accessor for CRLBoardIdentifier);
        v236 = v26;
        goto LABEL_245;
      }

LABEL_103:
      if (v837 != 10)
      {
        v330 = v831;
        v331 = v827;
        if (v837 != 11)
        {
          v102 = v824;
          sub_1009F5E04(v824, 0);
          if (qword_1019F2270 == -1)
          {
LABEL_181:
            v459 = static OS_os_log.dataSync;
            sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
            v460 = swift_initStackObject();
            *(v460 + 16) = xmmword_10146C6B0;
            v833 = v102;
            sub_1000066D0(&qword_1019F31E0, type metadata accessor for CKError, byte_101467228);
            v461 = Error.localizedDescription.getter();
            v463 = v462;
            *(v460 + 56) = &type metadata for String;
            *(v460 + 64) = sub_1000053B0();
            *(v460 + 32) = v461;
            *(v460 + 40) = v463;
            v464 = static os_log_type_t.default.getter();
            sub_100005404(v459, &_mh_execute_header, v464, "Failed to apply sync save result because of an unhandled CKError %@", 67, 2, v460);
            sub_1009F5E04(v102, 0);
            swift_unknownObjectRelease();
            sub_100EA5510(v331, v825, v102, v828, v787, v465);
            swift_setDeallocating();
            sub_100005070((v460 + 32));
            return v92.n128_f64[0];
          }

LABEL_315:
          swift_once();
          goto LABEL_181;
        }

        sub_1009F5E04(v824, 0);
        type metadata accessor for CRLBoardItemSyncLocalChangeRecord(0);
        v332 = swift_dynamicCastClass();
        if (v332)
        {
          sub_100DFCA00((v332 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_id), (v332 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_boardIdentifier));
LABEL_227:
          v553 = v824;
          sub_1009F5E04(v824, 0);
          swift_unknownObjectRelease();
          v294 = v331;
          v295 = v825;
          v296 = v553;
LABEL_236:
          v297 = v218;
          v298 = v787;
          goto LABEL_253;
        }

        type metadata accessor for CRLBoardSyncLocalChangeRecord(0);
        v552 = swift_dynamicCastClass();
        if (v552)
        {
          sub_100E0C7BC((v552 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_boardIdentifier), 0xD000000000000014, 0x80000001015ABC60, 0);
          goto LABEL_227;
        }

        type metadata accessor for CRLUserBoardMetadataSyncLocalChangeRecord(0);
        v593 = swift_dynamicCastClass();
        if (v593)
        {
          sub_10000C83C(v593 + OBJC_IVAR____TtC8Freeform30CRLUserBoardMetadataSyncRecord_boardIdentifier, v37, type metadata accessor for CRLBoardIdentifier);
          swift_unknownObjectRetain();
          v594 = sub_100E07F54(v37);
          if (!v330)
          {
            v684 = v594;
            sub_100026028(v37, type metadata accessor for CRLBoardIdentifier);
            if (!v684)
            {
              swift_unknownObjectRelease();
              v725 = v824;
              sub_1009F5E04(v824, 0);
              swift_unknownObjectRelease();
              v92.n128_f64[0] = sub_100EA5510(v331, v825, v725, v218, v787, v726);
              return v92.n128_f64[0];
            }

            *(v684 + OBJC_IVAR____TtC8Freeform31CRLUserBoardMetadataDatabaseRow_unsyncedChanges) = 0;
            sub_100E08660(v684);
            swift_unknownObjectRelease();
            v727 = v824;
            sub_1009F5E04(v824, 0);
            swift_unknownObjectRelease();
            sub_100EA5510(v331, v825, v727, v218, v787, v728);
            goto LABEL_310;
          }

          v595 = v824;
          sub_1009F5E04(v824, 0);
          swift_unknownObjectRelease_n();
          sub_100EA5510(v331, v825, v595, v218, v787, v596);
          v236 = v37;
          goto LABEL_245;
        }

        type metadata accessor for CRLFreehandDrawingBucketSyncLocalChangeRecord(0);
        v107 = swift_dynamicCastClass();
        if (!v107)
        {
          goto LABEL_293;
        }

        v657 = v107;
        sub_10000C83C(v107 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_boardIdentifier, v34, type metadata accessor for CRLBoardIdentifier);
        v658 = *(v657 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_bucketIndex);
        swift_unknownObjectRetain();
        v134 = sub_100E213C8(v34, v658);
        v132 = v330;
        if (v330)
        {
          v659 = v824;
          sub_1009F5E04(v824, 0);
          swift_unknownObjectRelease_n();
          sub_100EA5510(v331, v825, v659, v218, v787, v660);
          sub_100026028(v34, type metadata accessor for CRLBoardIdentifier);
          return v92.n128_f64[0];
        }

        goto LABEL_300;
      }

      v133 = v824;
      sub_1009F5E04(v824, 0);
      v310 = v827;
      v456 = swift_getObjectType();
      v835 = v310;
      v457 = (*(*(v823 + 8) + 8))(v456);
      swift_beginAccess();
      sub_100E7227C(v836, v457, &qword_1019F6E98, CKRecordID_ptr, &qword_101A22010, &unk_1014B6B10);
      swift_endAccess();

      type metadata accessor for CRLBoardItemSyncLocalChangeRecord(0);
      v458 = swift_dynamicCastClass();
      if (v458)
      {
        if ((*(v458 + OBJC_IVAR____TtC8Freeform33CRLBoardItemSyncLocalChangeRecord_unsyncedChanges) & 1) == 0)
        {
          sub_1009F5E04(v133, 0);
          swift_unknownObjectRelease();
          v294 = v310;
          v295 = v825;
          v296 = v133;
          v297 = v218;
          v298 = v787;
          goto LABEL_253;
        }

        sub_100DFCA00((v458 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_id), (v458 + OBJC_IVAR____TtC8Freeform22CRLBoardItemSyncRecord_boardIdentifier));
LABEL_235:
        sub_1009F5E04(v133, 0);
        swift_unknownObjectRelease();
        v294 = v310;
        v295 = v825;
        v296 = v133;
        goto LABEL_236;
      }

      type metadata accessor for CRLBoardSyncLocalChangeRecord(0);
      v550 = swift_dynamicCastClass();
      v551 = v787;
      if (v550)
      {
        if (*(v550 + OBJC_IVAR____TtC8Freeform29CRLBoardSyncLocalChangeRecord_unsyncedChanges))
        {
          sub_100E0C7BC((v550 + OBJC_IVAR____TtC8Freeform18CRLBoardSyncRecord_boardIdentifier), 0xD00000000000001ALL, 0x80000001015ABAE0, 0);
          goto LABEL_235;
        }
      }

      else
      {
        type metadata accessor for CRLFreehandDrawingBucketSyncLocalChangeRecord(0);
        v592 = swift_dynamicCastClass();
        if (!v592)
        {
          goto LABEL_274;
        }

        if (*(v592 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_unsyncedChanges))
        {
          v664 = *(v592 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_bucketIndex);
          *&v829 = v592;
          v665 = *(v592 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_minRequiredVersions);
          v823 = *(v592 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_minRequiredVersions + 16);
          v826 = v665;
          v666 = *(v592 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_minRequiredVersions + 40);
          v822 = *(v592 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_minRequiredVersions + 32);
          *&v821 = v666;
          LODWORD(v820) = *(v592 + OBJC_IVAR____TtC8Freeform45CRLFreehandDrawingBucketSyncLocalChangeRecord_minRequiredVersions + 48);
          v819 = v664;
          v833 = v664;
          swift_unknownObjectRetain();
          dispatch thunk of CustomStringConvertible.description.getter();
          sub_1005B981C(&qword_101A228A0, &unk_1014B1D10);
          sub_1000066D0(&qword_1019FB870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          sub_10001A2F8(&qword_101A1F620, &qword_101A228A0, &unk_1014B1D10, &protocol conformance descriptor for Ref<A>);
          sub_10001A2F8(&unk_101A22E50, &qword_101A228A0, &unk_1014B1D10, &protocol conformance descriptor for Ref<A>);
          CRDictionary.init()();
          sub_10001A2F8(&qword_101A228C0, &unk_101A22860, &unk_1014B6550, &protocol conformance descriptor for CRDictionary<A, B>);
          v667 = v789;
          Capsule.init(_:id:)();
          sub_1005B981C(&unk_101A228D0, "ԥ'");
          v668 = swift_allocObject();
          *(v668 + *(*v668 + 136)) = 0;
          v669 = *(*v668 + 120);
          v671 = v795;
          v670 = v796;
          (*(v796 + 32))(v668 + v669, v667, v795);
          swift_beginAccess();
          v672 = v668 + v669;
          v673 = v791;
          (*(v670 + 16))(v791, v672, v671);
          if (qword_1019F1520 != -1)
          {
            swift_once();
          }

          v674 = type metadata accessor for CRCodableVersion();
          sub_1005EB3DC(v674, qword_101AD6348);
          v675 = v831;
          v676 = Capsule.serializedData(_:version:allowedAppFormats:fileSignature:)();
          v831 = v675;
          if (v675)
          {
            v678 = v673;
            v679 = v824;
            sub_1009F5E04(v824, 0);
            swift_setDeallocating();
            v680 = *(v670 + 8);
            v680(v668 + *(*v668 + 120), v671);
            swift_deallocClassInstance();
            v681 = v827;
            swift_unknownObjectRelease_n();
            v683 = sub_100EA5510(v681, v825, v679, v828, v787, v682);
            (v680)(v678, v671, v683);
          }

          else
          {
            v702 = v676;
            v703 = v677;
            v704 = *(v670 + 8);
            v796 = v670 + 8;
            v818 = v704;
            (v704)(v673, v671);
            v705 = v788;
            sub_10000C83C(v829 + OBJC_IVAR____TtC8Freeform34CRLFreehandDrawingBucketSyncRecord_boardIdentifier, v788, type metadata accessor for CRLBoardIdentifier);
            type metadata accessor for CRLFreehandDrawingBucketDatabaseRow(0);
            v706 = swift_allocObject();
            v829 = xmmword_101486780;
            *(v706 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData) = xmmword_101486780;
            *(v706 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData) = xmmword_101486780;
            sub_100025668(v705, v706 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
            *(v706 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketIndex) = v819;
            v707 = (v706 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketData);
            *v707 = v702;
            v707[1] = v703;
            *(v706 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_unsyncedChanges) = 0;
            v708 = (v706 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData);
            v709 = *(v706 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData);
            v710 = *(v706 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData + 8);
            sub_100024E98(v702, v703);
            *v708 = v829;
            sub_100025870(v709, v710);
            v711 = *(v706 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData);
            v712 = *(v706 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData + 8);
            *(v706 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData) = v829;
            sub_100025870(v711, v712);
            v713 = v706 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_minRequiredVersions;
            v714 = v823;
            *v713 = v826;
            *(v713 + 16) = v714;
            v715 = v821;
            *(v713 + 32) = v822;
            *(v713 + 40) = v715;
            *(v713 + 48) = v820;
            v716 = v831;
            sub_100E21DC4(v706);
            sub_10002640C(v702, v703);
            swift_setDeallocating();
            (v818)(v668 + *(*v668 + 120), v671);
            swift_deallocClassInstance();
            if (v716)
            {
              v717 = v827;
              swift_unknownObjectRelease_n();
              v718 = v824;
              sub_1009F5E04(v824, 0);
            }

            else
            {
              v718 = v824;
              sub_1009F5E04(v824, 0);
              v717 = v827;
              swift_unknownObjectRelease_n();
            }

            sub_100EA5510(v717, v825, v718, v828, v787, v719);
            swift_setDeallocating();
            sub_100026028(v706 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_boardIdentifier, type metadata accessor for CRLBoardIdentifier);
            sub_10002640C(*(v706 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketData), *(v706 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_bucketData + 8));
            sub_100025870(*(v706 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData), *(v706 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_syncData + 8));
            sub_100025870(*(v706 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData), *(v706 + OBJC_IVAR____TtC8Freeform35CRLFreehandDrawingBucketDatabaseRow_ckMergeableRecordValueData + 8));
            swift_deallocClassInstance();
          }

          return v92.n128_f64[0];
        }
      }

      sub_1009F5E04(v133, 0);
      swift_unknownObjectRelease();
      v294 = v310;
      v295 = v825;
      v296 = v133;
      v297 = v218;
      v298 = v551;
      goto LABEL_253;
    }

    v448 = v824;
    sub_1009F5E04(v824, 0);
    if ((a9 & 1) == 0)
    {
      sub_1009F5E04(v448, 0);
      v544 = v827;
      swift_unknownObjectRelease();
      v245 = v544;
      v246 = v825;
      v247 = v448;
      v248 = v218;
      goto LABEL_61;
    }

    v449 = v827;
    v450 = swift_getObjectType();
    v833 = v449;
    v451 = (*(*(v823 + 8) + 8))(v450);
    v452 = [v451 zoneID];

    v453 = v793;
    sub_100EE9190(v793);

    if ((*(v803 + 48))(v453, 1, v804) == 1)
    {
      v454 = v824;
      sub_1009F5E04(v824, 0);
      swift_unknownObjectRelease();
      sub_100EA5510(v449, v825, v454, v828, v787, v455);
      sub_10000CAAC(v453, &unk_1019F52D0, &unk_10147C1C0);
      return v92.n128_f64[0];
    }

    v171 = v792;
    sub_100025668(v453, v792, type metadata accessor for CRLBoardIdentifier);
    if (qword_1019F2270 == -1)
    {
LABEL_244:
      v579 = static OS_os_log.dataSync;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v580 = swift_allocObject();
      *(v580 + 16) = xmmword_10146C6B0;
      v581 = UUID.uuidString.getter();
      v583 = v582;
      *(v580 + 56) = &type metadata for String;
      *(v580 + 64) = sub_1000053B0();
      *(v580 + 32) = v581;
      *(v580 + 40) = v583;
      v584 = static os_log_type_t.default.getter();
      sub_100005404(v579, &_mh_execute_header, v584, "Adding board identifier to be purged in response to zoneNotFound for shared zone %{public}@ .", 93, 2, v580);
      swift_setDeallocating();
      sub_100005070((v580 + 32));
      swift_deallocClassInstance();
      v585 = v818;
      sub_10000C83C(v171, v818, type metadata accessor for CRLBoardIdentifier);
      v586 = v817;
      sub_100031F10(v817, v585);
      v587 = v824;
      sub_1009F5E04(v824, 0);
      swift_unknownObjectRelease();
      sub_100EA5510(v449, v825, v587, v828, v787, v588);
      sub_100026028(v586, type metadata accessor for CRLBoardIdentifier);
      v236 = v171;
      goto LABEL_245;
    }

LABEL_319:
    swift_once();
    goto LABEL_244;
  }

  if (v828 != 1)
  {
    return v92.n128_f64[0];
  }

  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v142 = swift_initStackObject();
  *(v142 + 16) = xmmword_10146C6B0;
  v833 = 0x203A65707954;
  v834 = 0xE600000000000000;
  v143 = v824;
  v787 = v96;
  sub_100EA54FC(v827, v825, v824, v141, v96, COERCE_DOUBLE(1));
  sub_1009F5EE8(v143, 1u);
  swift_unknownObjectRetain();
  v144._countAndFlagsBits = CKRecord.recordType.getter();
  String.append(_:)(v144);

  v145._countAndFlagsBits = 0x203A444920;
  v145._object = 0xE500000000000000;
  String.append(_:)(v145);
  v146 = [v143 recordID];
  v147 = [v146 recordName];

  v148 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v150 = v149;

  v151._countAndFlagsBits = v148;
  v151._object = v150;
  String.append(_:)(v151);

  v152 = v833;
  v153 = v834;
  *(v142 + 56) = &type metadata for String;
  v154 = sub_1000053B0();
  *(v142 + 32) = v152;
  v830 = (v142 + 32);
  *&v829 = v154;
  *(v142 + 64) = v154;
  *(v142 + 40) = v153;
  *&v821 = objc_opt_self();
  v155 = [v821 _atomicIncrementAssertCount];
  v833 = [objc_allocWithZone(NSString) init];
  sub_100604538(v142, &v833, "Logic error. Failed to convert record to remote record object %{public}@", 72, 2u);
  StaticString.description.getter("_sync_applySyncSaveResults(_:syncScope:)", 40, 2);
  *&v823 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
  v156 = String._bridgeToObjectiveC()();

  v157 = [v156 lastPathComponent];

  v158 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v822 = v159;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v160 = static OS_os_log.crlAssert;
  v161 = swift_initStackObject();
  *(v161 + 16) = xmmword_10146CA70;
  *(v161 + 56) = &type metadata for Int32;
  *(v161 + 64) = &protocol witness table for Int32;
  *(v161 + 32) = v155;
  v162 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(v161 + 96) = v162;
  v163 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
  v164 = v823;
  *(v161 + 72) = v823;
  v165 = v829;
  *(v161 + 136) = &type metadata for String;
  *(v161 + 144) = v165;
  *(v161 + 104) = v163;
  *(v161 + 112) = v158;
  *(v161 + 120) = v822;
  *(v161 + 176) = &type metadata for UInt;
  *(v161 + 184) = &protocol witness table for UInt;
  *(v161 + 152) = 10274;
  v166 = v833;
  *(v161 + 216) = v162;
  *(v161 + 224) = v163;
  *(v161 + 192) = v166;
  v167 = v164;
  v168 = v166;
  v169 = static os_log_type_t.error.getter();
  sub_100005404(v160, &_mh_execute_header, v169, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v161);
  swift_setDeallocating();
  *&v823 = sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v170 = static os_log_type_t.error.getter();
  sub_100005404(v160, &_mh_execute_header, v170, "Logic error. Failed to convert record to remote record object %{public}@", 72, 2, v142);

  type metadata accessor for __VaListBuilder();
  v171 = swift_allocObject();
  v171[2] = 8;
  v171[3] = 0;
  v172 = v171 + 3;
  v171[4] = 0;
  v171[5] = 0;
  v173 = *(v142 + 16);
  if (!v173)
  {
LABEL_59:
    v238 = __VaListBuilder.va_list()();
    StaticString.description.getter("_sync_applySyncSaveResults(_:syncScope:)", 40, 2);
    v239 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
    v240 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Logic error. Failed to convert record to remote record object %{public}@", 72, 2);
    v241 = String._bridgeToObjectiveC()();

    [v821 handleFailureInFunction:v239 file:v240 lineNumber:10274 isFatal:0 format:v241 args:v238];

    swift_setDeallocating();
    swift_arrayDestroy();
    v242 = v824;
    sub_1009F5E04(v824, 1u);
    v243 = v827;
    swift_unknownObjectRelease();
    v245 = v243;
    v246 = v825;
    v247 = v242;
LABEL_60:
    v248 = v828;
LABEL_61:
    v92.n128_f64[0] = sub_100EA5510(v245, v246, v247, v248, v787, v244);
    return v92.n128_f64[0];
  }

  v115 = 0;
  *&v829 = *(v142 + 16);
  *&v826 = v142;
  while (1)
  {
    sub_100020E58(&v830[40 * v115], *&v830[40 * v115 + 24]);
    v116 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v175 = *v172;
    v176 = v116[2];
    v177 = __OFADD__(*v172, v176);
    v178 = *v172 + v176;
    if (v177)
    {
      __break(1u);
      goto LABEL_264;
    }

    v96 = v171[4];
    if (v96 >= v178)
    {
      goto LABEL_37;
    }

    if (v96 + 0x4000000000000000 < 0)
    {
      __break(1u);
LABEL_281:
      __break(1u);
      goto LABEL_282;
    }

    v179 = v171[5];
    if (2 * v96 > v178)
    {
      v178 = 2 * v96;
    }

    v171[4] = v178;
    if ((v178 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_281;
    }

    v180 = v116;
    v181 = swift_slowAlloc();
    v182 = v181;
    v171[5] = v181;
    if (v179)
    {
      if (v181 != v179 || v181 >= &v179[8 * v175])
      {
        memmove(v181, v179, 8 * v175);
      }

      v96 = v171;
      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v116 = v180;
      v142 = v826;
      v173 = v829;
LABEL_37:
      v182 = v171[5];
      if (!v182)
      {
        goto LABEL_44;
      }

      goto LABEL_38;
    }

    v116 = v180;
    v173 = v829;
    v142 = v826;
    if (!v182)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

LABEL_38:
    v184 = v116[2];
    if (v184)
    {
      break;
    }

LABEL_22:

    if (++v115 == v173)
    {
      goto LABEL_59;
    }
  }

  v185 = v116 + 4;
  v186 = *v172;
  while (1)
  {
    v187 = *v185++;
    *&v182[8 * v186] = v187;
    v186 = *v172 + 1;
    if (__OFADD__(*v172, 1))
    {
      break;
    }

    *v172 = v186;
    if (!--v184)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_123:
  v831 = v80;
  *&v829 = v174;
  v254 = v827;
  if (v116)
  {
    v370 = *(*v116 + 272);

    v372 = v802;
    v370(v371);

    v373 = v814;
    sub_10000CAAC(v814, &qword_1019F6990, &qword_10146D2F0);
    v374 = v373;
    v171 = v816;
    sub_10003DFF8(v372, v374, &qword_1019F6990, &qword_10146D2F0);
  }

  else
  {
  }

  v257 = v804;
  if (v809 && (v829 & 0x10) == 0)
  {
    v253 = v831;
    goto LABEL_202;
  }

  sub_100025870(v817, v171);

  v256 = v814;
LABEL_221:
  sub_10000CAAC(v256, &qword_1019F6990, &qword_10146D2F0);
  sub_100026028(v821, type metadata accessor for CRLBoardIdentifier);
  sub_10000CAAC(v822, &qword_1019F6990, &qword_10146D2F0);
  (*(v815 + 8))(v785, v786);
  sub_10000CAAC(v820, &qword_1019F6990, &qword_10146D2F0);
  sub_10069B3C8(v257);

  v548 = v824;
  sub_100025870(v824, v172);
  swift_unknownObjectRelease();
  sub_100EA5510(v254, v825, v548, v172, v787, v549);
  swift_unknownObjectRelease();
  return v92.n128_f64[0];
}

uint64_t sub_100E5883C()
{
  sub_100E3657C(1);
  if (!v0)
  {
    sub_100E35B30(1);
    sub_100E35EC0();
    sub_100E3690C();
  }

  return 1;
}

uint64_t sub_100E5889C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  OS_dispatch_queue.sync<A>(execute:)();

  return 1;
}

void sub_100E58940(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = (&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *&a1[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_queue];
  *v11 = v12;
  (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7, v9);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v11, v7);
  if (v12)
  {
    v14 = sub_100E301C0(a2);
    if (!v3)
    {
      v18 = _swiftEmptyDictionarySingleton;
      v15 = v14;
      v16 = a1;
      sub_100E957C0(v15, &v18, v16);

      *a3 = v18;
    }
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_100E58AE0()
{
  result = qword_101A21BB8;
  if (!qword_101A21BB8)
  {
    result = swift_getWitnessTable(byte_1014B6408, &type metadata for CRLBoardDataStore.SchemaVersion, v0, v1);
    atomic_store(result, &qword_101A21BB8);
  }

  return result;
}

unint64_t sub_100E58B38()
{
  result = qword_101A21BC0;
  if (!qword_101A21BC0)
  {
    result = swift_getWitnessTable(byte_1014B6398, &type metadata for CRLBoardDataStore.Table, v0, v1);
    atomic_store(result, &qword_101A21BC0);
  }

  return result;
}

unint64_t sub_100E58B8C(uint64_t a1)
{
  result = sub_100E58BB4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100E58BB4()
{
  result = qword_101A21C10;
  if (!qword_101A21C10)
  {
    result = swift_getWitnessTable(byte_1014B63C0, &type metadata for CRLBoardDataStore.Table, v0, v1);
    atomic_store(result, &qword_101A21C10);
  }

  return result;
}

unint64_t sub_100E58C4C(void *a1)
{
  a1[1] = sub_100E58C84();
  a1[2] = sub_100E58CD8();
  result = sub_100E58D2C();
  a1[3] = result;
  return result;
}

unint64_t sub_100E58C84()
{
  result = qword_101A21C28;
  if (!qword_101A21C28)
  {
    result = swift_getWitnessTable(byte_1014B64D8, &type metadata for CRLBoardDataStore.SchemaVersion, v0, v1);
    atomic_store(result, &qword_101A21C28);
  }

  return result;
}

unint64_t sub_100E58CD8()
{
  result = qword_101A21C30;
  if (!qword_101A21C30)
  {
    result = swift_getWitnessTable(asc_1014B645C, &type metadata for CRLBoardDataStore.SchemaVersion, v0, v1);
    atomic_store(result, &qword_101A21C30);
  }

  return result;
}

unint64_t sub_100E58D2C()
{
  result = qword_101A21C38;
  if (!qword_101A21C38)
  {
    result = swift_getWitnessTable(byte_1014B6424, &type metadata for CRLBoardDataStore.SchemaVersion, v0, v1);
    atomic_store(result, &qword_101A21C38);
  }

  return result;
}

unint64_t sub_100E58D80()
{
  result = qword_101A21C40;
  if (!qword_101A21C40)
  {
    result = swift_getWitnessTable(a5_4, &type metadata for CRLBoardDataStore.SchemaVersion, v0, v1);
    atomic_store(result, &qword_101A21C40);
  }

  return result;
}

uint64_t sub_100E58E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[2] = a2;
  v5[3] = a1;
  v5[4] = a3;
  return sub_10002FA9C(sub_100EA530C, v5);
}

uint64_t sub_100E58EC4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v84 = a4;
  v88 = a3;
  v8 = type metadata accessor for DispatchPredicate();
  v86 = *(v8 - 8);
  v87 = v8;
  __chkstk_darwin(v8);
  v85 = (&v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = a1 + 64;
  v11 = 1 << *(a1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a1 + 64);
  v90 = a1;
  v91 = (v11 + 63) >> 6;

  v14 = 0;
  v102 = xmmword_10146C6B0;
  v103 = a2;
  v89 = a1 + 64;
  v15 = v91;
  if (v13)
  {
    while (1)
    {
LABEL_10:
      v17 = *(v90 + 56);
      v95 = v14;
      v18 = v17 + ((v14 << 11) | (32 * __clz(__rbit64(v13))));
      v20 = *v18;
      v19 = *(v18 + 8);
      v21 = *(v18 + 16);
      v22 = *(v18 + 24);
      v93 = *(v18 + 25);
      v23 = *(v18 + 26);
      v98 = v21;
      v99 = v19;
      if (v19 >> 62)
      {
        v59 = v22;
        v60 = v23;
        v61 = _CocoaArrayWrapper.endIndex.getter();
        v23 = v60;
        v22 = v59;
        v24 = v61;
      }

      else
      {
        v24 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v96 = v20;
      v97 = v13;
      v94 = v22;
      v92 = v23;
      if (v24)
      {
        if (v24 < 1)
        {
LABEL_55:
          __break(1u);
LABEL_56:
          swift_once();
LABEL_52:
          v74 = static OS_os_log.boardStore;
          sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10146BDE0;
          swift_getErrorValue();
          v76 = Error.publicDescription.getter(v105, v106);
          v78 = v77;
          *(inited + 56) = &type metadata for String;
          v79 = sub_1000053B0();
          *(inited + 64) = v79;
          *(inited + 32) = v76;
          *(inited + 40) = v78;
          swift_getErrorValue();
          v80 = Error.fullDescription.getter(v104);
          *(inited + 96) = &type metadata for String;
          *(inited + 104) = v79;
          *(inited + 72) = v80;
          *(inited + 80) = v81;
          v82 = static os_log_type_t.error.getter();
          sub_100005404(v74, &_mh_execute_header, v82, "Failed to persist syncMetadata with error %{public}@ %@", 55, 2, inited);

          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
          swift_arrayDestroy();
          return 1;
        }

        v25 = v99;
        v101 = v99 & 0xC000000000000001;
        swift_bridgeObjectRetain_n();
        v26 = v20;

        v27 = 0;
        v100 = v24;
        do
        {
          if (v101)
          {
            v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v28 = *(v25 + 8 * v27 + 32);
          }

          v29 = v28;
          sub_100E59820(v28);
          if (v5)
          {
            if (qword_1019F2258 != -1)
            {
              swift_once();
            }

            v30 = static OS_os_log.boardStore;
            sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
            v31 = swift_initStackObject();
            *(v31 + 16) = v102;
            v32 = [v29 recordID];
            v33 = [v32 recordName];

            v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v36 = v35;

            *(v31 + 56) = &type metadata for String;
            *(v31 + 64) = sub_1000053B0();
            *(v31 + 32) = v34;
            *(v31 + 40) = v36;
            v37 = static os_log_type_t.error.getter();
            sub_100005404(v30, &_mh_execute_header, v37, "Failed to persist record %{public}@ into cache", 46, 2, v31);

            swift_setDeallocating();
            sub_100005070((v31 + 32));
            v5 = 0;
            v25 = v99;
            v24 = v100;
          }

          else
          {
          }

          ++v27;
        }

        while (v24 != v27);

        v20 = v96;
        v13 = v97;
        v38 = *(v98 + 16);
        if (v38)
        {
LABEL_27:
          v40 = ( + 48);
          do
          {
            v41 = *(v40 - 1);
            v42 = *v40;
            v43 = *(v40 - 2);

            sub_100E5A7FC(v43, v41, v42);
            if (v5)
            {
              v101 = v5;
              if (qword_1019F2258 != -1)
              {
                swift_once();
              }

              v100 = static OS_os_log.boardStore;
              sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
              v44 = swift_initStackObject();
              *(v44 + 16) = v102;
              v45 = [v43 recordName];
              v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v48 = v47;

              *(v44 + 56) = &type metadata for String;
              *(v44 + 64) = sub_1000053B0();
              *(v44 + 32) = v46;
              *(v44 + 40) = v48;
              v49 = static os_log_type_t.error.getter();
              sub_100005404(v100, &_mh_execute_header, v49, "Failed to persist purgedRecord %{public}@ into cache", 52, 2, v44);

              swift_setDeallocating();
              sub_100005070((v44 + 32));
              v5 = 0;
            }

            else
            {
            }

            v40 += 3;
            --v38;
          }

          while (v38);

          v20 = v96;
          v13 = v97;
        }
      }

      else
      {

        v39 = v20;
        v38 = *( + 16);
        if (v38)
        {
          goto LABEL_27;
        }
      }

      v13 &= v13 - 1;
      a2 = v103;
      if (((v94 | v93 | v92) & 1) != 0 && (!v92 ? (v50 = 0) : (v50 = 0x10000), !v93 ? (v51 = 0) : (v51 = 256), sub_100E5AE00(v51 | v94 | v50, v20), v5))
      {
        v97 = v13;
        if (qword_1019F2258 != -1)
        {
          swift_once();
        }

        v52 = static OS_os_log.boardStore;
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        v53 = swift_initStackObject();
        *(v53 + 16) = v102;
        v54 = [v20 zoneName];
        v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v57 = v56;

        *(v53 + 56) = &type metadata for String;
        *(v53 + 64) = sub_1000053B0();
        *(v53 + 32) = v55;
        *(v53 + 40) = v57;
        v58 = static os_log_type_t.error.getter();
        sub_100005404(v52, &_mh_execute_header, v58, "Failed to persist zone changes %{public}@ into cache", 52, 2, v53);

        swift_setDeallocating();
        sub_100005070((v53 + 32));
        v5 = 0;
        v10 = v89;
        v14 = v95;
        v13 = v97;
        v15 = v91;
        if (!v97)
        {
          goto LABEL_6;
        }
      }

      else
      {

        v10 = v89;
        v14 = v95;
        v15 = v91;
        if (!v13)
        {
          goto LABEL_6;
        }
      }
    }
  }

  while (1)
  {
LABEL_6:
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_55;
    }

    if (v16 >= v15)
    {
      break;
    }

    v13 = *(v10 + 8 * v16);
    ++v14;
    if (v13)
    {
      v14 = v16;
      goto LABEL_10;
    }
  }

  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  v62 = PropertyListEncoder.init()();
  sub_100020E58(v88, v88[3]);
  *&v102 = v62;
  v63 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v5)
  {
    v103 = 0;

    if (qword_1019F2258 != -1)
    {
      goto LABEL_56;
    }

    goto LABEL_52;
  }

  v65 = v63;
  v101 = v64;
  v66 = *(a2 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  v68 = v85;
  v67 = v86;
  *v85 = v66;
  v69 = v87;
  (*(v67 + 104))(v68, enum case for DispatchPredicate.onQueue(_:), v87);
  v70 = v66;
  v71 = _dispatchPreconditionTest(_:)();
  result = (*(v67 + 8))(v68, v69);
  if (v71)
  {
    v73 = v101;
    sub_100024E98(v65, v101);
    sub_100E257D0(v84, 0, 0, a2, v65, v73);
    sub_10002640C(v65, v73);

    return 1;
  }

  __break(1u);
  return result;
}

void sub_100E59820(void *a1)
{
  v143 = a1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = (&v134 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_writeQueue);
  *v8 = v9;
  v10 = (v5 + 104);
  v11 = *(v5 + 104);
  v146 = enum case for DispatchPredicate.onQueue(_:);
  v11(v8, v6);
  v12 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v14 = *(v5 + 8);
  v13 = v5 + 8;
  v142 = v14;
  v14(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v144 = v11;
  v145 = v10;
  v10 = *(v1 + OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_database);
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v16 = sub_10001CC04(v15, 0xD000000000000044, 0x80000001015AB2C0);
  if (v2)
  {
    goto LABEL_38;
  }

  v17 = v16;
  v139 = 0;

  v18 = [v143 recordID];
  v19 = sub_100E5B438();
  v141 = v17;
  v20 = v13;
  v21 = v19;
  v23 = v22;

  v24 = v21;
  v25 = v141;
  sub_1000285F8(v24, v23, 1);

  v26 = *(*(v25 + 16) + 32);
  *v8 = v26;
  v3 = v4;
  v144(v8, v146, v4);
  v27 = v26;
  LOBYTE(v26) = _dispatchPreconditionTest(_:)();
  v140 = v20;
  v28 = v142;
  v142(v8, v4);
  if ((v26 & 1) == 0)
  {
    goto LABEL_40;
  }

  v29 = v28;
  type metadata accessor for SQLiteRowIterator();
  inited = swift_initStackObject();
  inited[4] = 0;
  inited[5] = 1;
  inited[2] = v25;
  inited[3] = 0;

  v138 = inited;
  v31 = sub_10001E1D0();
  if (!v31)
  {
    goto LABEL_10;
  }

  v32 = v31;
  v33 = *(*(v31 + 16) + 32);
  *v8 = v33;
  v144(v8, v146, v4);
  v34 = v33;
  LOBYTE(v33) = _dispatchPreconditionTest(_:)();
  v29(v8, v4);
  if ((v33 & 1) == 0)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    swift_once();
    goto LABEL_13;
  }

  v35 = sub_10002C280(0, v32);
  if (v35)
  {
    v37 = sub_100024DD4(v35, v36);
    v39 = v38;

    sub_100006370(0, &unk_101A22DC0, CKRecord_ptr);
    v40 = v39;
    v25 = v141;
    v41 = sub_100EEB2BC(v37, v40);
    if (v41)
    {
      v42 = v41;
      v43 = sub_100F07BD8(v42, v143);
      v143 = v42;

      v44 = v43;
      goto LABEL_11;
    }
  }

  else
  {
  }

LABEL_10:
  v44 = v143;
  v143 = 0;
LABEL_11:
  v45 = v44;
  v137 = sub_100EEA848();
  v47 = v46;

  if (v47 >> 60 != 15)
  {
    v135 = v47;
    v147 = 0;
    v148 = 0xE000000000000000;
    _StringGuts.grow(_:)(55);
    v61._countAndFlagsBits = 0xD000000000000017;
    v61._object = 0x80000001015A40C0;
    String.append(_:)(v61);
    v62._countAndFlagsBits = 0x64726F6365726B63;
    v62._object = 0xEE0065686361635FLL;
    String.append(_:)(v62);
    v63._countAndFlagsBits = 10272;
    v63._object = 0xE200000000000000;
    String.append(_:)(v63);
    v64._countAndFlagsBits = 0x695F64726F636572;
    v64._object = 0xE900000000000064;
    String.append(_:)(v64);
    v65._countAndFlagsBits = 8236;
    v65._object = 0xE200000000000000;
    String.append(_:)(v65);
    v66._countAndFlagsBits = 0x64695F656E6F7ALL;
    v66._object = 0xE700000000000000;
    String.append(_:)(v66);
    v67._countAndFlagsBits = 8236;
    v67._object = 0xE200000000000000;
    String.append(_:)(v67);
    v68._countAndFlagsBits = 0x64726F636572;
    v68._object = 0xE600000000000000;
    String.append(_:)(v68);
    v69._object = 0x80000001015A40E0;
    v69._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v69);
    v70 = v147;
    v71 = v148;
    swift_initStackObject();

    v73 = v139;
    v136 = sub_10001CC04(v72, v70, v71);
    v139 = v73;
    if (v73)
    {

      sub_100025870(v137, v135);

      v74 = v138;
      swift_setDeallocating();
      sub_10001E364(v74[3], v74[4], v74[5]);

      v75 = *(*(v25 + 16) + 32);
      *v8 = v75;
      v144(v8, v146, v3);
      v76 = v75;
      LOBYTE(v75) = _dispatchPreconditionTest(_:)();
      v29(v8, v3);
      if ((v75 & 1) == 0)
      {
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      swift_beginAccess();
      v77 = *(v25 + 24);
      if (!v77)
      {
        goto LABEL_38;
      }
    }

    else
    {

      v78 = [v45 recordID];
      v79 = sub_100E5B438();
      v80 = v45;
      v82 = v81;

      v83 = v136;
      sub_1000285F8(v79, v82, 1);

      v134 = v80;
      v84 = [v80 recordID];
      v85 = [v84 zoneID];

      v86 = [v85 zoneName];
      v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v89 = v88;

      v147 = v87;
      v148 = v89;

      v90._countAndFlagsBits = 58;
      v90._object = 0xE100000000000000;
      String.append(_:)(v90);

      v91 = v147;
      v92 = v148;
      v93 = [v85 ownerName];
      v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v96 = v95;

      v147 = v91;
      v148 = v92;

      v97._countAndFlagsBits = v94;
      v97._object = v96;
      String.append(_:)(v97);

      sub_1000285F8(v147, v148, 2);

      v98 = *(v83 + 16);
      v99 = v142;
      v100 = *(v98 + 32);
      *v8 = v100;
      v101 = v146;
      v102 = v144;
      v144(v8, v146, v3);
      v103 = v100;
      LOBYTE(v100) = _dispatchPreconditionTest(_:)();
      v99(v8, v3);
      if ((v100 & 1) == 0)
      {
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      v104 = v136;

      sub_100DCCAB4(v137, v135, v104, 3);
      v105 = *(*(v104 + 16) + 32);
      *v8 = v105;
      v102(v8, v101, v3);
      v106 = v105;
      LOBYTE(v105) = _dispatchPreconditionTest(_:)();
      v99(v8, v3);
      if ((v105 & 1) == 0)
      {
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v107 = v136;
      v108 = *(v136 + 16);

      v109 = sub_10001CEC4(v108, v107);

      v25 = v141;
      if (v109 == 101)
      {
        v110 = *(*(v136 + 16) + 32);
        *v8 = v110;
        v102(v8, v146, v3);
        v111 = v110;
        LOBYTE(v110) = _dispatchPreconditionTest(_:)();
        v99(v8, v3);
        if ((v110 & 1) == 0)
        {
LABEL_47:
          __break(1u);
          goto LABEL_48;
        }

        v112 = v136;
        swift_beginAccess();
        v113 = *(v112 + 24);
        v114 = v134;
        if (v113)
        {
          sqlite3_finalize(v113);

          sub_100025870(v137, v135);

          *(v136 + 24) = 0;
        }

        else
        {

          sub_100025870(v137, v135);
        }

        v130 = *(*(v25 + 16) + 32);
        *v8 = v130;
        v102(v8, v146, v3);
        v131 = v130;
        LOBYTE(v130) = _dispatchPreconditionTest(_:)();
        v99(v8, v3);
        if ((v130 & 1) == 0)
        {
          goto LABEL_49;
        }

        swift_beginAccess();
        v77 = *(v25 + 24);
        if (!v77)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v147 = 0;
        v148 = 0xE000000000000000;
        _StringGuts.grow(_:)(54);
        v115._countAndFlagsBits = 0xD000000000000034;
        v115._object = 0x80000001015AB370;
        String.append(_:)(v115);
        v116 = [v134 recordID];
        v117 = [v116 description];

        v118 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v120 = v119;

        v121._countAndFlagsBits = v118;
        v121._object = v120;
        String.append(_:)(v121);
        v122 = v142;

        v123 = v147;
        v124 = v148;
        sub_10089C7D0();
        swift_allocError();
        *v125 = v109;
        *(v125 + 8) = v123;
        *(v125 + 16) = v124;
        swift_willThrow();
        v126 = *(*(v136 + 16) + 32);
        *v8 = v126;
        v102(v8, v146, v3);
        v127 = v126;
        LOBYTE(v126) = _dispatchPreconditionTest(_:)();
        v122(v8, v3);
        if ((v126 & 1) == 0)
        {
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        v128 = v136;
        swift_beginAccess();
        v129 = *(v128 + 24);
        if (v129)
        {
          sqlite3_finalize(v129);

          sub_100025870(v137, v135);

          *(v136 + 24) = 0;
        }

        else
        {

          sub_100025870(v137, v135);
        }

        v132 = *(*(v25 + 16) + 32);
        *v8 = v132;
        v102(v8, v146, v3);
        v133 = v132;
        LOBYTE(v132) = _dispatchPreconditionTest(_:)();
        v122(v8, v3);
        if ((v132 & 1) == 0)
        {
LABEL_50:
          __break(1u);
        }

        swift_beginAccess();
        v77 = *(v25 + 24);
        if (!v77)
        {
          goto LABEL_38;
        }
      }
    }

    sqlite3_finalize(v77);
    *(v25 + 24) = 0;
    goto LABEL_38;
  }

  v10 = v45;
  if (qword_1019F2258 != -1)
  {
    goto LABEL_42;
  }

LABEL_13:
  v48 = static OS_os_log.boardStore;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v49 = swift_initStackObject();
  *(v49 + 16) = xmmword_10146C6B0;
  v50 = [v10 recordID];
  v51 = [v50 recordName];

  v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v54 = v53;

  *(v49 + 56) = &type metadata for String;
  *(v49 + 64) = sub_1000053B0();
  *(v49 + 32) = v52;
  *(v49 + 40) = v54;
  v55 = static os_log_type_t.error.getter();
  sub_100005404(v48, &_mh_execute_header, v55, "Failed to serialize CKRecord with id %{public}@ for persisting into ck record cache.", 84, 2, v49);
  swift_setDeallocating();
  sub_100005070((v49 + 32));
  sub_100EA5330();
  swift_allocError();
  swift_willThrow();
  v56 = v141;

  v57 = v138;
  swift_setDeallocating();
  sub_10001E364(v57[3], v57[4], v57[5]);
  v58 = *(*(v56 + 16) + 32);
  *v8 = v58;
  v144(v8, v146, v3);
  v59 = v58;
  LOBYTE(v58) = _dispatchPreconditionTest(_:)();
  v142(v8, v3);
  if ((v58 & 1) == 0)
  {
    __break(1u);
    goto LABEL_44;
  }

  swift_beginAccess();
  v60 = *(v56 + 24);
  if (v60)
  {
    sqlite3_finalize(v60);
    *(v56 + 24) = 0;
  }

LABEL_38:
}