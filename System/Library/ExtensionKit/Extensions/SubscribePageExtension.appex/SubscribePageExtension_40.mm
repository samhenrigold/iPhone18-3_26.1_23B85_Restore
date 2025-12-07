id sub_10048862C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC22SubscribePageExtension30AdvertsSearchResultContentView_disableAdvertRotation);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  sub_10001B5AC(a1, a2);
  v8 = sub_1000164A8(v6, v7);
  v9 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension30AdvertsSearchResultContentView_lockupView);
  v10 = *(v9 + OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_searchAdTransparencyButton);
  if (v10)
  {
    [v10 addTarget:v2 action:"disableAdvertRotationTap" forControlEvents:{64, v8}];
  }

  return [*(v9 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_offerButton) addTarget:v2 action:"disableAdvertRotationTap" forControlEvents:{64, v8}];
}

void sub_100488708()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension30AdvertsSearchResultContentView_lockupMediaView);
  v3 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_imageViews;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (v4 >> 62)
  {
    v5 = sub_100754664();
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    return;
  }

  v6 = 0;
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = sub_100754574();
    }

    else
    {
      v7 = *(v4 + 8 * v6 + 32);
    }

    v8 = v7;
    ++v6;
    type metadata accessor for BorderedScreenshotView(0);
    sub_10048BB14(&qword_100923470, 255, type metadata accessor for BorderedScreenshotView, &protocol conformance descriptor for NSObject);
    v9 = v8;
    sub_1007544E4();
    sub_100744264();
    sub_100016994(v29);
    v10 = *&v9[OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView];
    v30.value.super.isa = 0;
    v30.is_nil = 0;
    sub_100743384(v30, v11);
  }

  while (v5 != v6);

LABEL_10:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    [*(Strong + qword_10093CB50) setImage:0];
    type metadata accessor for VideoView(0);
    sub_10048BB14(&qword_10093DD00, 255, type metadata accessor for VideoView, &protocol conformance descriptor for NSObject);
    v14 = v13;
    sub_1007544E4();
    sub_100744264();

    sub_100016994(v29);
  }

  v15 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30AdvertsSearchResultContentView_lockupView);
  v16 = *(v15 + OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_metadataRibbonView);
  v17 = *&v16[OBJC_IVAR____TtC22SubscribePageExtension18MetadataRibbonView_metadataRibbonItemViews];
  v18 = *(v17 + 16);
  if (v18)
  {
    type metadata accessor for MetadataRibbonIconWithLabelView(0);
    v28 = v16;

    v19 = 32;
    do
    {
      v20 = *(v17 + v19);
      if (swift_dynamicCastClass())
      {
        v21 = v20;
        v31.value.super.isa = 0;
        v31.is_nil = 0;
        sub_100743384(v31, v22);
        sub_1007433C4();
        sub_10048BB14(&qword_100925570, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
        sub_100744274();
      }

      v19 += 16;
      --v18;
    }

    while (v18);
  }

  v23 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView;
  v24 = *(v15 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
  v32.value.super.isa = 0;
  v32.is_nil = 0;
  sub_100743384(v32, v25);

  v26 = *(v15 + v23);
  sub_1007433C4();
  sub_10048BB14(&qword_100925570, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v27 = v26;
  sub_100744274();
}

uint64_t sub_100488B38(void (**a1)(uint64_t, uint64_t, __n128), uint64_t a2, __n128 a3)
{
  v257 = a2;
  v350 = sub_1007428D4();
  v4 = *(v350 - 8);
  __chkstk_darwin(v350);
  v304 = &v247 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v322 = &v247 - v7;
  __chkstk_darwin(v8);
  v321 = &v247 - v9;
  __chkstk_darwin(v10);
  v320 = &v247 - v11;
  v325 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  __chkstk_darwin(v325);
  v324 = &v247 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000C518(&unk_100934D80, &qword_1007BC850);
  __chkstk_darwin(v13 - 8);
  v259 = &v247 - v14;
  v326 = sub_1007504F4();
  v359 = *(v326 - 8);
  __chkstk_darwin(v326);
  v285 = &v247 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v286 = &v247 - v17;
  v283 = sub_100746B04();
  v358 = *(v283 - 8);
  __chkstk_darwin(v283);
  v323 = &v247 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000C518(&unk_1009281D0, qword_1007A82B0);
  __chkstk_darwin(v19 - 8);
  v284 = &v247 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v340 = &v247 - v22;
  v344 = sub_100746A94();
  v23 = *(v344 - 8);
  __chkstk_darwin(v344);
  v347 = (&v247 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v25);
  v265 = &v247 - v26;
  __chkstk_darwin(v27);
  v314 = &v247 - v28;
  __chkstk_darwin(v29);
  v266 = &v247 - v30;
  __chkstk_darwin(v31);
  v352 = &v247 - v32;
  v293 = sub_10000C518(&unk_100923180, &unk_1007A5F40);
  v357 = *(v293 - 8);
  __chkstk_darwin(v293);
  v292 = &v247 - v33;
  v291 = sub_10074A8C4();
  v356 = *(v291 - 8);
  __chkstk_darwin(v291);
  v290 = &v247 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v306 = sub_10074AE04();
  v35 = *(v306 - 8);
  __chkstk_darwin(v306);
  v268 = &v247 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v317 = sub_10074CD14();
  v355 = *(v317 - 8);
  __chkstk_darwin(v317);
  v289 = &v247 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v316 = sub_1007479B4();
  v38 = *(v316 - 8);
  __chkstk_darwin(v316);
  v288 = &v247 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v315 = &v247 - v41;
  v341 = sub_10074A8A4();
  v42 = *(v341 - 8);
  __chkstk_darwin(v341);
  v287 = &v247 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v349 = &v247 - v45;
  v46 = sub_10000C518(&unk_1009393C0, &qword_1007AEFB0);
  __chkstk_darwin(v46 - 8);
  v267 = &v247 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48);
  v327 = &v247 - v49;
  v299 = sub_10074A7F4();
  v50 = *(v299 - 8);
  __chkstk_darwin(v299);
  v305 = &v247 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_100747C14();
  __chkstk_darwin(v52 - 8);
  v53 = sub_10074F704();
  v255 = *(v53 - 8);
  v256 = v53;
  __chkstk_darwin(v53);
  v260 = &v247 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100747E74();
  sub_10048BB14(&qword_100927520, 255, &type metadata accessor for AdvertsSearchResult, &protocol conformance descriptor for SearchResult);
  result = sub_1007468B4();
  if (!v397[0])
  {
    return result;
  }

  v354 = v4;
  v258 = v397[0];
  v401 = _swiftEmptyArrayStorage;
  sub_100746884();
  if (qword_100920C20 != -1)
  {
    goto LABEL_210;
  }

LABEL_3:

  sub_10074F6A4();
  sub_10074F5A4();
  v57 = v56;
  v353 = a1;
  sub_100486868(a1);
  v59 = v58;
  v60 = sub_100747E64();
  v61 = v60;
  if (!(v60 >> 62))
  {
    v294 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v294)
    {
      goto LABEL_212;
    }

    goto LABEL_5;
  }

  v294 = sub_100754664();
  if (v294)
  {
LABEL_5:
    v311 = v42 + 2;
    v281 = (v38 + 16);
    v282 = (v35 + 56);
    v280 = (v38 + 32);
    v279 = UIFontTextStyleBody;
    v278 = (v355 + 8);
    v310 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v254 = (v35 + 32);
    v262 = (v35 + 8);
    v263 = (v35 + 48);
    v276 = (v356 + 1);
    v277 = UIFontTextStyleFootnote;
    v274 = (v42 + 1);
    v275 = (v38 + 8);
    v273 = v357 + 1;
    v264 = enum case for LockupMediaLayout.DisplayType.none(_:);
    v297 = (v23 + 104);
    v261 = (v23 + 32);
    v252 = (v50 + 56);
    v253 = (v50 + 16);
    v348 = (v23 + 8);
    v346 = (v23 + 16);
    v270 = (v359 + 8);
    v271 = (v359 + 56);
    v269 = (v358 + 1);
    v335 = (v23 + 88);
    left = UIEdgeInsetsZero.left;
    top = UIEdgeInsetsZero.top;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    v301 = bottom;
    v309 = xmmword_1007A5CF0;
    v356 = (v354 + 88);
    v336 = (v354 + 8);
    v339 = enum case for LockupMediaLayout.DisplayType.singleItemFill(_:);
    a1 = (v50 + 8);
    v50 = 0;
    v298 = enum case for LockupMediaLayout.DisplayType.landscape(_:);
    v251 = enum case for LockupMediaLayout.DisplayType.fourUp(_:);
    v249 = enum case for LockupMediaLayout.DisplayType.twoUp(_:);
    v248 = enum case for LockupMediaLayout.DisplayType.oneUp(_:);
    LODWORD(v355) = enum case for AppPlatform.watch(_:);
    v342 = v61 & 0xC000000000000001;
    v295 = v61 + 32;
    v296 = v61 & 0xFFFFFFFFFFFFFF8;
    v23 = v305;
    v35 = v306;
    v63 = v299;
    v319 = v57;
    v318 = v59;
    v313 = v61;
    v38 = v294;
    v272 = a1;
    v250 = enum case for LockupMediaLayout.DisplayType.threeUp(_:);
    while (1)
    {
      if (v342)
      {
        v42 = sub_100754574();
        v64 = __OFADD__(v50++, 1);
        if (v64)
        {
          goto LABEL_202;
        }
      }

      else
      {
        if (v50 >= *(v296 + 16))
        {
          goto LABEL_203;
        }

        v42 = *(v295 + 8 * v50);

        v64 = __OFADD__(v50++, 1);
        if (v64)
        {
LABEL_202:
          __break(1u);
LABEL_203:
          __break(1u);
LABEL_204:
          __break(1u);
LABEL_205:
          __break(1u);
LABEL_206:
          __break(1u);
LABEL_207:
          __break(1u);
LABEL_208:
          __break(1u);
LABEL_209:
          __break(1u);
LABEL_210:
          swift_once();
          goto LABEL_3;
        }
      }

      v65 = sub_10074EF24();
      v360 = v42;
      if (v65)
      {
        if (qword_100920548 != -1)
        {
          swift_once();
        }

        v66 = sub_100747064();
        sub_10000D0FC(v66, qword_10097E3A8);
        sub_100746F34();
        sub_10074F374();
        sub_100753284();
        if (*((v401 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v401 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100753304();
          a1 = v272;
        }

        sub_100753344();
      }

      v67 = sub_100745DF4();
      swift_getKeyPath();
      sub_100746914();

      v68 = v397[0];
      v69 = sub_100266258(v67, v397[0]);

      v70 = v69;
      v42 = v360;
      sub_10049FCD8(v70, v71);
      sub_100745E24();
      v72 = sub_100745DD4();
      if (v72 >> 62)
      {
        v138 = sub_100754664();

        if (!v138)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v73 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (!v73)
        {
          goto LABEL_6;
        }
      }

      if (sub_10074A7E4())
      {
        v74 = v35;
        v75 = sub_10074EF34();
        v77 = v76;
        v78 = sub_10074EFB4();
        v80 = v79;
        v81 = sub_10074EED4();

        v338 = v78;
        v337 = v80;
        v334 = v77;
        v331 = v75;
        if (v81 && (v82 = sub_100748644(), , v82))
        {
          v345 = sub_10074F764();
          v343 = v83;
        }

        else
        {
          v345 = 0;
          v343 = 0;
        }

        v359 = sub_100745DF4();
        v358 = sub_100745E14();
        v329 = sub_100745E34();
        swift_getKeyPath();
        sub_100746914();

        v84 = v400;
        (*v282)(v327, 1, 1, v74);
        if (qword_100920410 != -1)
        {
          swift_once();
        }

        v85 = v341;
        v86 = sub_10000D0FC(v341, qword_10097E010);
        v351 = *v311;
        (v351)(v349, v86, v85);
        v87 = sub_100753804();
        v308 = v50;
        if (v87)
        {
          v88 = qword_10093FF40;
          if (qword_100921988 != -1)
          {
            swift_once();
            v88 = qword_10093FF40;
          }
        }

        else
        {
          v88 = qword_10093FF58;
          if (qword_100921990 != -1)
          {
            swift_once();
            v88 = qword_10093FF58;
          }
        }

        v89 = v316;
        v90 = sub_10000D0FC(v316, v88);
        v91 = v288;
        (*v281)(v288, v90, v89);
        (*v280)(v315, v91, v89);
        v92 = [v84 preferredContentSizeCategory];
        sub_100753924();

        sub_100747964();
        sub_100747994();
        sub_10074A894();
        sub_10074A884();
        v333 = sub_100750F34();
        swift_allocObject();
        v354 = sub_100750F14();
        v93 = objc_opt_self();
        v332 = v84;
        v94 = v93;
        v330 = v93;
        v95 = [v93 preferredFontForTextStyle:v279];
        v96 = sub_10074F3F4();
        v398 = v96;
        v357 = sub_10048BB14(&qword_10092AC70, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
        v399 = v357;
        v97 = sub_10000D134(v397);
        v98 = *(*(v96 - 8) + 104);
        v99 = v310;
        v98(v97, v310, v96);
        sub_10074FC74();
        sub_10000C620(v397);
        v100 = v289;
        sub_10074CD04();
        sub_10074CCE4();
        v334 = *v278;
        v334(v100, v317);
        v101 = v277;
        v102 = [v94 preferredFontForTextStyle:v277];
        v396[3] = v96;
        v396[4] = v357;
        v103 = sub_10000D134(v396);
        v98(v103, v99, v96);
        sub_10074FC74();
        sub_10000C620(v396);
        sub_10074CD04();
        sub_10074CCE4();
        v104 = v317;
        v105 = v334;
        v334(v100, v317);
        v106 = [v330 preferredFontForTextStyle:v101];
        v395[3] = v96;
        v395[4] = v357;
        v107 = sub_10000D134(v395);
        v98(v107, v310, v96);
        sub_10074FC74();
        sub_10000C620(v395);
        sub_10074CD04();
        sub_10074CCE4();
        v105(v100, v104);
        v108 = v359;
        LODWORD(v357) = sub_10001BB7C() & (v108 != 0);
        if (v357 == 1)
        {
          v109 = v333;
          v110 = objc_allocWithZone(sub_100751034());
          v111 = v332;
          v112 = v332;
          v113 = sub_100751024();
          v114 = v267;
          sub_100016B4C(v327, v267, &unk_1009393C0, &qword_1007AEFB0);
          v115 = *v263;
          v116 = v306;
          if ((*v263)(v114, 1, v306) == 1)
          {
            v117 = v268;
            _s22SubscribePageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
            if (v115(v114, 1, v116) != 1)
            {
              sub_10000C8CC(v114, &unk_1009393C0, &qword_1007AEFB0);
            }
          }

          else
          {
            v117 = v268;
            (*v254)(v268, v114, v116);
          }

          v120 = v113;
          sub_100018CE4(v359, v117, v120, v57, v59);

          (*v262)(v117, v116);
          v118 = v109;
          swift_allocObject();
          v119 = sub_100750F04();
        }

        else
        {
          v118 = v333;
          swift_allocObject();
          v119 = sub_100750F14();
          v111 = v332;
        }

        v35 = v119;

        v121 = v358;
        if ((sub_10001BB7C() & (v121 != 0)) == 1)
        {
          sub_100077794(v121, v329 & 1, v57, v59);
          swift_allocObject();
          v122 = sub_100750F04();
        }

        else
        {
          swift_allocObject();
          v122 = sub_100750F14();
        }

        v123 = v122;
        (v351)(v287, v349, v341);
        v394 = &protocol witness table for LayoutViewPlaceholder;
        v393 = v118;
        v392 = v354;
        v391 = 0;
        *&v389[40] = 0u;
        v390 = 0u;
        sub_10000C824(v397, v389);
        sub_10000C824(v396, &v388);
        v387 = 0;
        v385 = 0u;
        v386 = 0u;
        v384 = 0;
        v382 = 0u;
        v383 = 0u;

        v124 = sub_100750F24();
        v381 = &protocol witness table for LayoutViewPlaceholder;
        v380 = v118;
        v379 = v124;
        v378 = 0;
        v376 = 0u;
        v377 = 0u;
        v375 = 0;
        v373 = 0u;
        v374 = 0u;
        v372 = 0;
        v370 = 0u;
        v371 = 0u;
        v369 = 0;
        v368 = 0u;
        *&v367[40] = 0u;
        sub_10000C824(v395, v367);
        v366 = &protocol witness table for LayoutViewPlaceholder;
        v365 = v118;
        v364 = v35;
        v363 = &protocol witness table for LayoutViewPlaceholder;
        v362 = v118;
        v361 = v123;
        v125 = v290;
        sub_10074A8B4();
        v357 = sub_100751034();
        sub_10000C518(&unk_1009231A0, qword_1007A5810);
        v126 = swift_allocObject();
        *(v126 + 16) = v309;
        *(v126 + 32) = v111;
        v127 = v111;
        v128 = sub_100751044();
        sub_10048BB14(&unk_10092AC80, 255, &type metadata accessor for SmallSearchLockupLayout, &protocol conformance descriptor for SmallSearchLockupLayout);
        v129 = v291;
        sub_100750404();

        (*v276)(v125, v129);
        sub_10000C620(v395);
        sub_10000C620(v396);
        sub_10000C620(v397);
        (*v275)(v315, v316);
        (*v274)(v349, v341);
        sub_10000C8CC(v327, &unk_1009393C0, &qword_1007AEFB0);
        v130 = v292;
        sub_10074DF44();
        v131 = swift_allocObject();
        *(v131 + 16) = v309;
        *(v131 + 32) = v127;
        v132 = v127;
        v133 = sub_100751044();
        sub_10001B5C0();
        v50 = v293;
        sub_100750544();

        (*v273)(v130, v50);
        v42 = sub_100745E04();
        v351 = sub_100745DE4();
        v134 = sub_100745DD4();
        if (v134 >> 62)
        {
          v139 = v134;
          v135 = sub_100754664();
          v134 = v139;
        }

        else
        {
          v135 = *((v134 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v38 = v344;
        a1 = v347;
        v136 = v352;
        v23 = v305;
        if (v135)
        {
          if ((v134 & 0xC000000000000001) != 0)
          {
            v357 = sub_100754574();
          }

          else
          {
            if (!*((v134 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_205;
            }

            v357 = *(v134 + 32);
          }
        }

        else
        {

          v357 = 0;
        }

        v137 = sub_100745E54();
        if (v137 >> 62)
        {
          v140 = v137;
          v141 = sub_100754664();
          v137 = v140;
          if (!v141)
          {
            goto LABEL_62;
          }

LABEL_54:
          if ((v137 & 0xC000000000000001) != 0)
          {
            v358 = sub_100754574();
          }

          else
          {
            if (!*((v137 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_206;
            }

            v358 = *(v137 + 32);
          }
        }

        else
        {
          if (*((v137 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_54;
          }

LABEL_62:

          v358 = 0;
        }

        v142 = sub_100745E04();
        v35 = sub_100745DE4();
        v143 = sub_100745DD4();
        if (v143 >> 62)
        {
          v145 = v143;
          v146 = sub_100754664();
          v143 = v145;
          v343 = v42;
          if (!v146)
          {
            goto LABEL_70;
          }

LABEL_65:
          if ((v143 & 0xC000000000000001) != 0)
          {
            v42 = sub_100754574();
          }

          else
          {
            if (!*((v143 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_207;
            }

            v42 = *(v143 + 32);
          }
        }

        else
        {
          v144 = *((v143 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v343 = v42;
          if (v144)
          {
            goto LABEL_65;
          }

LABEL_70:

          v42 = 0;
        }

        v147 = sub_100745E54();
        if (v147 >> 62)
        {
          v149 = v147;
          v150 = sub_100754664();
          v147 = v149;
          if (!v150)
          {
            goto LABEL_78;
          }

LABEL_73:
          if ((v147 & 0xC000000000000001) != 0)
          {
            v148 = sub_100754574();
          }

          else
          {
            if (!*((v147 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_208;
            }

            v148 = *(v147 + 32);
          }
        }

        else
        {
          if (*((v147 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_73;
          }

LABEL_78:

          v148 = 0;
        }

        if (sub_10074A7E4())
        {
          if (!(v35 | v142))
          {
            v152 = sub_100631A30(v42, v148, 0, 1, v151);
            v154 = v152;
            v155 = v152 >> 62;
            if (v152 >> 62)
            {
              v359 = sub_100754664();
              if (!v42)
              {
                goto LABEL_92;
              }

LABEL_83:
              v156 = sub_100743844();
            }

            else
            {
              v359 = *((v152 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v42)
              {
                goto LABEL_83;
              }

LABEL_92:
              v156 = 0;
            }

            v158 = sub_100631D8C(v156, v153);

            if (v42)
            {
              v159 = sub_100743844();
            }

            else
            {
              v159 = 0;
            }

            v160 = v259;
            v161 = v299;
            (*v253)(v259, v23, v299);
            (*v252)(v160, 0, 1, v161);
            v162 = sub_1006322B4(v159, v160);

            sub_10000C8CC(v160, &unk_100934D80, &qword_1007BC850);
            if (v155)
            {
              result = sub_100754664();
            }

            else
            {
              result = *((v154 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v38 = v344;
            v35 = v265;
            a1 = v347;
            if (result)
            {
              if ((v154 & 0xC000000000000001) == 0)
              {
                if (*((v154 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {

                  goto LABEL_103;
                }

                __break(1u);
LABEL_216:
                __break(1u);
                return result;
              }

              sub_100754574();
LABEL_103:

              v163 = sub_10074F194();

              v35 = v265;
              if (v163)
              {

                v164 = v266;
                (*v297)(v266, v298, v38);
                v42 = v286;
                v23 = v305;
                goto LABEL_116;
              }
            }

            else
            {
            }

            LODWORD(v345) = v158;
            v165 = v251;
            v354 = *v297;
            (v354)(v35, v251, v38);
            v166 = sub_100746A84();
            v167 = *v348;
            (*v348)(v35, v38);
            if (((v359 >= v166) & v162) != 0)
            {

              v164 = v266;
              (v354)(v266, v165, v38);
              v42 = v286;
              a1 = v347;
              v23 = v305;
              goto LABEL_116;
            }

            (v354)(v35, v250, v38);
            v168 = sub_100746A84();
            v169 = v167;
            v167(v35, v38);
            v23 = v305;
            if (((v359 >= v168) & v345) == 0)
            {
              v172 = v249;
              (v354)(v35, v249, v38);
              v173 = sub_100746A84();
              v169(v35, v38);
              if (v359 >= v173)
              {
              }

              else
              {
                v172 = v248;
                (v354)(v35, v248, v38);
                v174 = sub_100746A84();

                v169(v35, v38);
                if (v359 != v174)
                {
                  v164 = v266;
                  v170 = v266;
                  v171 = v264;
                  goto LABEL_115;
                }
              }

              v164 = v266;
              v170 = v266;
              v171 = v172;
              goto LABEL_115;
            }

            v164 = v266;
            v170 = v266;
            v171 = v250;
LABEL_115:
            (v354)(v170, v171, v38);
            v42 = v286;
            a1 = v347;
LABEL_116:
            v50 = v308;
            v136 = v352;
            (*v261)(v352, v164, v38);
LABEL_117:
            v175 = sub_10007DC04();
            (*v271)(v340, 1, 1, v326);
            v307 = v175;
            v312 = [v175 traitCollection];
            v399 = &protocol witness table for CGFloat;
            v398 = &type metadata for CGFloat;
            v397[0] = 0x4021000000000000;
            sub_10000C824(v397, v396);
            v345 = *v346;
            v345(v314, v136, v38);
            if (v351 | v343)
            {
              goto LABEL_127;
            }

            v177 = sub_100631A30(v357, v358, 0, 1, v176);
            if (v177 >> 62)
            {
              v178 = v177;
              v179 = sub_100754664();
              v177 = v178;
              if (!v179)
              {
                goto LABEL_126;
              }

LABEL_120:
              if ((v177 & 0xC000000000000001) != 0)
              {
                sub_100754574();
              }

              else
              {
                if (!*((v177 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_209;
                }
              }

              sub_10074F2A4();
              sub_100750504();
            }

            else
            {
              if (*((v177 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_120;
              }

LABEL_126:

LABEL_127:
              sub_100750504();
            }

            sub_100016B4C(v340, v284, &unk_1009281D0, qword_1007A82B0);
            sub_100746AD4();
            sub_10000C620(v397);
            v180 = v285;
            sub_100746AE4();
            sub_1007504C4();
            (*v270)(v180, v326);
            if (v351)
            {

              sub_10074EC14();
              v181 = sub_10074F374();
              v42 = sub_100254D74(0, 1, 1, _swiftEmptyArrayStorage);
              v183 = v42[2];
              v182 = v42[3];
              if (v183 >= v182 >> 1)
              {
                v42 = sub_100254D74((v182 > 1), v183 + 1, 1, v42);
              }

              (*v269)(v323, v283);
              sub_10000C8CC(v340, &unk_1009281D0, qword_1007A82B0);
              v42[2] = v183 + 1;
              v184 = &v42[2 * v183];
              v184[4] = v181;
              *(v184 + 40) = 0;
LABEL_132:
              v185 = v348;
              v186 = v42[2];
              if (v186)
              {
LABEL_133:
                v397[0] = _swiftEmptyArrayStorage;
                sub_1007545C4();
                v187 = 32;
                do
                {

                  sub_1007545A4();
                  sub_1007545D4();
                  sub_1007545E4();
                  sub_1007545B4();
                  v187 += 16;
                  --v186;
                }

                while (v186);
                swift_unknownObjectRelease();

                (*v348)(v352, v38);
                v189 = v397[0];
                goto LABEL_141;
              }

LABEL_140:
              swift_unknownObjectRelease();

              (*v185)(v136, v38);
              v189 = _swiftEmptyArrayStorage;
LABEL_141:
              sub_10049FCD8(v189, v188);
              v35 = v306;
              v63 = v299;
              v38 = v294;
              a1 = v272;
              v42 = v360;
              goto LABEL_7;
            }

            if (v343)
            {
              v190 = v50;

              v191 = sub_10074F374();
              v192 = sub_100254D74(0, 1, 1, _swiftEmptyArrayStorage);
              v194 = *(v192 + 2);
              v193 = *(v192 + 3);
              if (v194 >= v193 >> 1)
              {
                v192 = sub_100254D74((v193 > 1), v194 + 1, 1, v192);
              }

              v185 = v348;

              (*v269)(v323, v283);
              sub_10000C8CC(v340, &unk_1009281D0, qword_1007A82B0);
              *(v192 + 2) = v194 + 1;
              v195 = &v192[16 * v194];
              *(v195 + 4) = v191;
              v195[40] = 0;
              v50 = v190;
              v186 = *(v192 + 2);
              if (v186)
              {
                goto LABEL_133;
              }

              goto LABEL_140;
            }

            v196 = sub_100746A84();
            v198 = sub_100631A30(v357, v358, v196, 0, v197);
            sub_100746B24();
            v338 = v199;
            v337 = v200;
            if (!(v198 >> 62))
            {
              result = *((v198 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (result)
              {
                goto LABEL_144;
              }

              goto LABEL_200;
            }

            result = sub_100754664();
            if (!result)
            {
LABEL_200:

              (*v269)(v323, v283);
              sub_10000C8CC(v340, &unk_1009281D0, qword_1007A82B0);
              v42 = _swiftEmptyArrayStorage;
              goto LABEL_132;
            }

LABEL_144:
            if (result < 1)
            {
              goto LABEL_216;
            }

            v50 = 0;
            v334 = (v198 & 0xC000000000000001);
            v42 = _swiftEmptyArrayStorage;
            v333 = v198;
            v332 = result;
            while (2)
            {
              if (v334)
              {
                v23 = sub_100754574();
              }

              else
              {
                v23 = *(v198 + 8 * v50 + 32);
              }

              v345(a1, v136, v38);
              v201 = (*v335)(a1, v38);
              if (v201 == v339)
              {
                (*v348)(a1, v38);
                LODWORD(v354) = 0;
                v202 = v357;
              }

              else
              {
                v202 = v357;
                if (v201 == v298)
                {
                  LODWORD(v354) = 0;
                }

                else
                {
                  v203 = sub_10074F194();
                  (*v348)(a1, v38);
                  LODWORD(v354) = v203;
                }
              }

              v359 = v23;
              if (v358)
              {
                v204 = sub_10074F794();
                if (!(v204 >> 62))
                {
                  if (*((v204 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_157;
                  }

LABEL_185:

                  if (!v202)
                  {
LABEL_186:
                    if (qword_100920788 != -1)
                    {
                      swift_once();
                    }

                    v228 = qword_10092FC48;
                    v236 = 0;
                    v235 = 0;
                    v212 = 5.0;
                    v238 = 1;
                    v211 = 1.0;
                    v231 = left;
                    v232 = top;
                    v234 = right;
                    v233 = v301;
                    v239 = 1;
LABEL_189:
                    v242 = v324;
                    sub_100750504();

                    *v242 = v212;
                    *(v242 + 8) = v235;
                    *(v242 + 16) = v239 & 1;
                    *(v242 + 24) = v236;
                    *(v242 + 32) = v238 & 1;
                    *(v242 + 40) = v211;
                    *(v242 + 48) = v228;
                    *(v242 + 56) = v232;
                    *(v242 + 64) = v231;
                    *(v242 + 72) = v233;
                    *(v242 + 80) = v234;
                    sub_100753BA4();
                    v206 = sub_10074F374();
                    sub_100024440(v242);
                    v57 = v319;
                    v59 = v318;
                    v38 = v344;
                    a1 = v347;
LABEL_190:

                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v42 = sub_100254D74(0, v42[2] + 1, 1, v42);
                    }

                    v136 = v352;
                    v35 = v42[2];
                    v243 = v42[3];
                    if (v35 >= v243 >> 1)
                    {
                      v42 = sub_100254D74((v243 > 1), v35 + 1, 1, v42);
                    }

                    ++v50;

                    v42[2] = v35 + 1;
                    v244 = &v42[2 * v35];
                    v244[4] = v206;
                    *(v244 + 40) = v354 & 1;
                    v198 = v333;
                    if (v332 == v50)
                    {

                      (*v269)(v323, v283);
                      sub_10000C8CC(v340, &unk_1009281D0, qword_1007A82B0);
                      v23 = v305;
                      v50 = v308;
                      goto LABEL_132;
                    }

                    continue;
                  }

LABEL_164:
                  sub_100743844();

                  v207 = v320;
                  sub_1007444B4();

                  v208 = *v356;
                  v209 = v350;
                  v210 = (*v356)(v207, v350);
                  v211 = 0.0;
                  v212 = 0.0;
                  if (v210 != v355)
                  {
                    (*v336)(v320, v209);
                    v212 = 5.0;
                  }

                  v331 = sub_100744504();
                  v328 = v213;
                  v214 = sub_1007444F4();
                  v216 = v215;

                  v217 = v321;
                  sub_1007444B4();
                  v218 = v350;

                  v219 = v208(v217, v218);
                  if (v219 != v355)
                  {
                    (*v336)(v321, v218);
                    v211 = 1.0;
                  }

                  v220 = v322;
                  sub_1007444B4();
                  v221 = v350;
                  v222 = v208(v220, v350);
                  v330 = v214;
                  v329 = v216;
                  if (v222 == v355)
                  {
                    if (qword_100920780 != -1)
                    {
                      swift_once();
                    }

                    v223 = qword_10092FC40;
                  }

                  else
                  {
                    if (qword_100920788 != -1)
                    {
                      swift_once();
                    }

                    v223 = qword_10092FC48;

                    (*v336)(v322, v221);
                  }

                  v224 = v304;
                  sub_1007444B4();
                  v225 = v208(v224, v221);
                  if (v225 == v355)
                  {
                    *&v226 = COERCE_DOUBLE(sub_1007444F4());
                    if (v227)
                    {
                      v228 = v223;
                      if (qword_100920770 != -1)
                      {
                        swift_once();
                      }

                      sub_10000D0FC(v326, qword_10097ECE0);
                      sub_100750494();
                      v230 = v229;

                      v231 = 15.0;
                      v232 = v230 * 15.0;
                      v233 = v230 * 15.0;
                      v234 = 15.0;
                      v235 = v331;
                      v236 = v330;
                      goto LABEL_183;
                    }

                    v237 = *&v226;

                    v232 = v237;
                    v231 = v237;
                    v233 = v237;
                    v234 = v237;
                  }

                  else
                  {

                    (*v336)(v224, v221);
                    v231 = left;
                    v232 = top;
                    v234 = right;
                    v233 = v301;
                  }

                  v235 = v331;
                  v236 = v330;
                  v228 = v223;
LABEL_183:
                  v238 = v329;
                  v239 = v328;
                  goto LABEL_189;
                }

                v240 = v204;
                v241 = sub_100754664();
                v204 = v240;
                if (!v241)
                {
                  goto LABEL_185;
                }

LABEL_157:
                if ((v204 & 0xC000000000000001) != 0)
                {
                  sub_100754574();
                }

                else
                {
                  if (!*((v204 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_204;
                  }
                }

                sub_10074F3D4();
                sub_10074EC14();
                v205 = sub_10074F224();

                if (v205)
                {
                  v206 = sub_10074F374();

                  goto LABEL_190;
                }

                v202 = v357;
              }

              break;
            }

            if (!v202)
            {
              goto LABEL_186;
            }

            goto LABEL_164;
          }

          v157 = v266;
          sub_100750504();

          (*v297)(v157, v339, v38);
          (*v261)(v136, v157, v38);
        }

        else
        {

          (*v297)(v136, v264, v38);
        }

        v42 = v286;
        v50 = v308;
        goto LABEL_117;
      }

LABEL_6:

LABEL_7:

      (*a1)(v23, v63);
      if (v50 == v38)
      {

        v245 = v401;
        goto LABEL_213;
      }
    }
  }

LABEL_212:

  v245 = _swiftEmptyArrayStorage;
LABEL_213:
  v246._rawValue = v245;
  sub_100744224(v246);

  return (*(v255 + 8))(v260, v256);
}

id sub_10048B99C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30AdvertsSearchResultContentView_lockupMediaView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_10048BB14(&qword_1009230E0, 255, type metadata accessor for VideoView, &unk_1007C8140);
    v5 = [v4 superview];
    if (!v5)
    {
LABEL_6:

      goto LABEL_7;
    }

    v6 = v5;
    sub_100016C60(0, &qword_100922300, UIView_ptr);
    v7 = v2;
    v8 = sub_100753FC4();

    if (v8)
    {
      v9 = swift_unknownObjectWeakLoadStrong();
      if (v9)
      {
        v4 = v9;
        [v9 removeFromSuperview];
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  swift_unknownObjectWeakAssign();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    [v2 addSubview:v10];
  }

  sub_10062FDFC();

  return [v2 setNeedsLayout];
}

uint64_t sub_10048BB14(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10048BB5C()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension30AdvertsSearchResultContentView_lockupView;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v2 = OBJC_IVAR____TtC22SubscribePageExtension30AdvertsSearchResultContentView_lockupMediaView;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for LockupMediaView(0)) init];
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension30AdvertsSearchResultContentView_preferredImageSizes) = _swiftEmptyDictionarySingleton;
  v3 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension30AdvertsSearchResultContentView_disableAdvertRotation);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension30AdvertsSearchResultContentView_impressionsCalculator) = 0;
  v4 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension30AdvertsSearchResultContentView_impressionsUpdateBlock);
  *v4 = 0;
  v4[1] = 0;
  sub_100754644();
  __break(1u);
}

unint64_t sub_10048BC58()
{
  result = qword_1009393D8;
  if (!qword_1009393D8)
  {
    type metadata accessor for SmallLockupCollectionViewCell(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009393D8);
  }

  return result;
}

double sub_10048BCB0()
{
  v0 = sub_10074F704();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SmallLockupView(0);
  v4 = sub_100747BA4();
  sub_100747B84();
  sub_10074F674();
  v6 = v5;
  v8 = v7;
  (*(v1 + 8))(v3, v0);
  if (qword_100920548 != -1)
  {
    swift_once();
  }

  v9 = sub_100747064();
  v10 = sub_10000D0FC(v9, qword_10097E3A8);
  swift_getObjectType();
  sub_1001CF184(v10, v4, v6, v8);
  v12 = v11;
  swift_unknownObjectRelease();
  return v12;
}

id sub_10048BE48()
{
  v0 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v1) = 1051260355;
  LODWORD(v2) = 1059816735;
  LODWORD(v3) = 1.0;
  result = [v0 initWithControlPoints:v1 :0.0 :v2 :v3];
  qword_1009393E0 = result;
  return result;
}

char *sub_10048BE9C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_100741494();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v40[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_itemLayoutContext;
  v15 = sub_1007469A4();
  (*(*(v15 - 8) + 56))(&v5[v14], 1, 1, v15);
  v16 = OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_carouselView;
  type metadata accessor for HeroCarouselView(0);
  *&v5[v16] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_state;
  v18 = sub_10000C518(&unk_10092E120, &qword_1007C2F90);
  (*(*(v18 - 8) + 56))(&v5[v17], 1, 1, v18);
  v19 = OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_tapGestureRecognizer;
  *&v5[v19] = [objc_allocWithZone(UITapGestureRecognizer) init];
  v20 = &v5[OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_didSelectHandler];
  *v20 = 0;
  v20[1] = 0;
  swift_weakInit();
  v21 = &v5[OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_impressionsUpdateBlock];
  *v21 = 0;
  v21[1] = 0;
  swift_unknownObjectWeakInit();
  v22 = OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_currentTitleEffect;
  v23 = sub_100743B64();
  (*(*(v23 - 8) + 56))(&v5[v22], 1, 1, v23);
  v24 = OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_onUpdatePageTitleEffect;
  sub_10000C518(&qword_100939448, &qword_1007C3138);
  swift_allocObject();
  *&v5[v24] = sub_100752F04();
  sub_100741484();
  v25 = sub_100741464();
  v27 = v26;
  (*(v11 + 8))(v13, v10);
  v41[0] = v25;
  v41[1] = v27;
  sub_1007544E4();
  v5[OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_allowsAutoPlay] = 1;
  v5[OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_isPlaying] = 0;
  swift_unknownObjectWeakInit();
  v28 = type metadata accessor for HeroCarouselCollectionViewCell(0);
  v42.receiver = v5;
  v42.super_class = v28;
  v29 = objc_msgSendSuper2(&v42, "initWithFrame:", a1, a2, a3, a4);
  v30 = [v29 contentView];
  [v30 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v31 = [v29 contentView];
  v32 = OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_carouselView;
  [v31 addSubview:*&v29[OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_carouselView]];

  v33 = *&v29[v32];
  v41[3] = v28;
  v41[4] = &off_100876F90;
  v41[0] = v29;
  v34 = OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_carouselDelegate;
  swift_beginAccess();
  v35 = v29;
  v36 = v33;
  sub_10006644C(v41, v33 + v34, &unk_100939450, &qword_1007B3F70);
  swift_endAccess();

  v37 = OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_tapGestureRecognizer;
  [*&v35[OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_tapGestureRecognizer] addTarget:v35 action:"handleTap:"];
  v38 = *&v35[v37];
  [v38 setDelegate:v35];

  [v35 addGestureRecognizer:*&v35[v37]];
  return v35;
}

uint64_t sub_10048C36C(uint64_t a1)
{
  v3 = sub_1007470F4();
  v20 = *(v3 - 8);
  v21 = v3;
  __chkstk_darwin(v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&unk_10092E840, &qword_1007B3F78);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  v9 = sub_100743B64();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v19 - v14;
  v16 = OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_currentTitleEffect;
  swift_beginAccess();
  sub_10048E4B8(a1, v1 + v16);
  swift_endAccess();
  sub_100016B4C(v1 + v16, v8, &unk_10092E840, &qword_1007B3F78);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10000C8CC(a1, &unk_10092E840, &qword_1007B3F78);
    return sub_10000C8CC(v8, &unk_10092E840, &qword_1007B3F78);
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
    (*(v10 + 16))(v12, v15, v9);
    if (qword_100920CD8 != -1)
    {
      swift_once();
    }

    v18 = qword_1009393E0;
    sub_1007470E4();
    sub_100752EF4();
    sub_10000C8CC(a1, &unk_10092E840, &qword_1007B3F78);
    (*(v20 + 8))(v5, v21);
    return (*(v10 + 8))(v15, v9);
  }
}

void sub_10048C6A8()
{
  v1 = v0;
  v16.receiver = v0;
  v16.super_class = type metadata accessor for HeroCarouselCollectionViewCell(0);
  objc_msgSendSuper2(&v16, "layoutSubviews");
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_carouselView];
  v3 = [v0 contentView];
  sub_100016C60(0, &qword_100922300, UIView_ptr);
  sub_1007477B4();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v2 setFrame:{v5, v7, v9, v11}];
  v12 = &v1[OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_impressionsUpdateBlock];
  swift_beginAccess();
  v13 = *v12;
  if (*v12)
  {
    v14 = *(v12 + 1);

    v13(v15);
    sub_1000164A8(v13, v14);
  }
}

void sub_10048C80C()
{
  v1 = v0;
  v2 = sub_10000C518(&qword_10092E118, &qword_1007C3130);
  __chkstk_darwin(v2 - 8);
  v4 = &v16[-1] - v3;
  v5 = type metadata accessor for HeroCarouselCollectionViewCell(0);
  v17.receiver = v0;
  v17.super_class = v5;
  objc_msgSendSuper2(&v17, "prepareForReuse");
  v6 = sub_10000C518(&unk_10092E120, &qword_1007C2F90);
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_state;
  swift_beginAccess();
  sub_10006644C(v4, &v0[v7], &qword_10092E118, &qword_1007C3130);
  swift_endAccess();
  v8 = &v0[OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_didSelectHandler];
  v9 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_didSelectHandler];
  v10 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_didSelectHandler + 8];
  *v8 = 0;
  *(v8 + 1) = 0;
  sub_1000164A8(v9, v10);
  v11 = *(*&v0[OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_carouselView] + OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_scrollView);
  sub_10053C8B8(_swiftEmptyArrayStorage, 0);
  v12 = *(v11 + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_focusedPageTracker);
  *(v11 + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_focusedPageTracker) = 0;
  sub_10053C4A0(v12);

  *(v11 + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_currentPagingDirection) = 1;
  sub_10053C154();
  v13 = sub_10074F3E4();
  v16[3] = v13;
  v16[4] = sub_1002968B4();
  v14 = sub_10000D134(v16);
  (*(*(v13 - 8) + 104))(v14, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v13);
  LOBYTE(v13) = sub_10074FC74();
  sub_10000C620(v16);
  if ((v13 & 1) == 0)
  {
    sub_100231AA8(0);
  }

  v1[OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_isPlaying] = 0;
}

void sub_10048CA7C(void *a1)
{
  v30.receiver = v1;
  v30.super_class = type metadata accessor for HeroCarouselCollectionViewCell(0);
  objc_msgSendSuper2(&v30, "applyLayoutAttributes:", a1);
  type metadata accessor for BaseCollectionViewLayoutAttributes();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_carouselView];
    v26 = v3;
    v5 = OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_parallaxY;
    *(v4 + OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_parallaxY) = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension34BaseCollectionViewLayoutAttributes_parallaxY);
    v6 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_carouselItemViews);
    if (v6 >> 62)
    {
      goto LABEL_20;
    }

    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v27 = a1;

    if (v7)
    {
      v8 = 0;
      v9 = v6 & 0xC000000000000001;
      v10 = &OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_backgroundView;
      v11 = v6 & 0xFFFFFFFFFFFFFF8;
      v12 = &OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselItemBackgroundView_mediaViewContainer;
      v28 = v6 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v9)
        {
          v13 = sub_100754574();
          a1 = (v8 + 1);
          if (__OFADD__(v8, 1))
          {
LABEL_14:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v8 >= *(v11 + 16))
          {
            __break(1u);
LABEL_20:
            v7 = sub_100754664();
            goto LABEL_4;
          }

          v13 = *(v6 + 8 * v8 + 32);
          a1 = (v8 + 1);
          if (__OFADD__(v8, 1))
          {
            goto LABEL_14;
          }
        }

        v14 = *(v4 + v5);
        v15 = *(*(*&v13[*v10] + *v12) + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer);
        v16 = *&v15[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_parallaxY];
        *&v15[OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_parallaxY] = v14;
        if (v14 != v16)
        {
          v17 = v9;
          v18 = v6;
          v19 = v7;
          v20 = v5;
          v21 = v12;
          v22 = v10;
          v23 = v13;
          [v15 setNeedsLayout];
          v13 = v23;
          v10 = v22;
          v12 = v21;
          v5 = v20;
          v7 = v19;
          v6 = v18;
          v9 = v17;
          v11 = v28;
        }

        ++v8;
      }

      while (a1 != v7);
    }

    v24 = sub_10074F3E4();
    v29[3] = v24;
    v29[4] = sub_1002968B4();
    v25 = sub_10000D134(v29);
    (*(*(v24 - 8) + 104))(v25, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v24);
    LOBYTE(v24) = sub_10074FC74();
    sub_10000C620(v29);
    if ((v24 & 1) == 0)
    {
      *(v4 + OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_isRubberbanding) = *(v26 + OBJC_IVAR____TtC22SubscribePageExtension34BaseCollectionViewLayoutAttributes_isRubberbanding);
      sub_100231BFC();
    }
  }
}

void sub_10048CD84()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_10074B104();
  }

  v4 = sub_10074F3E4();
  v6[3] = v4;
  v6[4] = sub_1002968B4();
  v5 = sub_10000D134(v6);
  (*(*(v4 - 8) + 104))(v5, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v4);
  LOBYTE(v4) = sub_10074FC74();
  sub_10000C620(v6);
  if ((v4 & 1) == 0)
  {
    sub_100231AA8(1);
  }

  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_isPlaying) = 1;
}

void sub_10048D00C(uint64_t a1, uint64_t a2)
{
  v93 = sub_1007528E4();
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = v82 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000C518(&unk_100925380, qword_1007A8E40);
  __chkstk_darwin(v3 - 8);
  v94 = v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v82 - v6;
  __chkstk_darwin(v8);
  v10 = v82 - v9;
  __chkstk_darwin(v11);
  v13 = v82 - v12;
  v14 = sub_100752914();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v90 = v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = v82 - v18;
  __chkstk_darwin(v20);
  v22 = v82 - v21;
  __chkstk_darwin(v23);
  v25 = v82 - v24;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v27 = Strong;
  swift_beginAccess();
  v28 = swift_weakLoadStrong();
  if (!v28)
  {

    return;
  }

  v89 = v28;
  v87 = v19;
  v29 = OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_carouselView;
  v30 = *&v27[OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_carouselView];
  if ((v30[OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_previousIndex + 8] & 1) == 0)
  {
    v88 = v15;
    v31 = *&v30[OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_previousIndex];
    v32 = v30;
    v86 = v14;
    v33 = v32;
    v34 = v31;
    v15 = v88;
    v35 = sub_10053D1F0(v34, 0);

    v14 = v86;
    if (v35)
    {
      if (!*&v35[OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_heroCarouselItem])
      {

        v15 = v88;
        (*(v88 + 56))(v13, 1, 1, v14);
        goto LABEL_10;
      }

      v84 = OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_heroCarouselItem;
      v85 = v35;

      sub_100745D34();

      v15 = v88;
      v83 = *(v88 + 48);
      if (v83(v13, 1, v14) == 1)
      {

LABEL_10:
        sub_10000C8CC(v13, &unk_100925380, qword_1007A8E40);
        goto LABEL_19;
      }

      v82[0] = *(v15 + 32);
      (v82[0])(v25, v13, v14);
      v36 = v91;
      sub_1007528F4();
      v98 = 0u;
      v99 = 0u;
      v100 = 1;
      v37 = sub_100749524();
      (*(v92 + 8))(v36, v93);
      if (!v37)
      {
        goto LABEL_18;
      }

      v82[1] = v37;
      if (*&v85[v84] && (, v38 = sub_100745D64(), , v38))
      {
        sub_10074A4B4();

        v39 = v86;
        v40 = v83(v10, 1, v86);
        v41 = v88;
        if (v40 != 1)
        {
          (v82[0])(v22, v10, v39);
          sub_100749564();

          (*(v41 + 8))(v22, v39);
          goto LABEL_18;
        }
      }

      else
      {

        (*(v88 + 56))(v10, 1, 1, v86);
      }

      sub_10000C8CC(v10, &unk_100925380, qword_1007A8E40);
LABEL_18:
      sub_100749564();

      v15 = v88;
      v14 = v86;
      (*(v88 + 8))(v25, v86);
    }
  }

LABEL_19:
  v42 = *&v27[v29];
  v43 = sub_100231F08();

  if (!v43)
  {

    return;
  }

  v44 = OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_heroCarouselItem;
  if (!*&v43[OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_heroCarouselItem])
  {

    (*(v15 + 56))(v7, 1, 1, v14);
    goto LABEL_25;
  }

  sub_100745D34();

  v45 = v15;
  v46 = *(v15 + 48);
  if (v46(v7, 1, v14) == 1)
  {

LABEL_25:
    v47 = v7;
LABEL_26:
    sub_10000C8CC(v47, &unk_100925380, qword_1007A8E40);
    return;
  }

  v48 = *(v15 + 32);
  v49 = v87;
  v88 = v15 + 32;
  v86 = v48;
  v48(v87, v7, v14);
  [v43 bounds];
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v58 = v27;
  v59 = v14;
  v60 = [v58 superview];
  [v43 convertRect:v60 toView:{v51, v53, v55, v57}];

  sub_100749544();
  v61 = *&v43[OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_overlayView];
  if (!v61)
  {

    (*(v15 + 8))(v49, v59);
    return;
  }

  if (!*&v43[v44])
  {

    v64 = v94;
LABEL_36:
    (*(v15 + 8))(v87, v59);
    (*(v15 + 56))(v64, 1, 1, v59);
    goto LABEL_37;
  }

  v62 = v61;

  v63 = sub_100745D64();

  v64 = v94;
  if (!v63)
  {

    goto LABEL_36;
  }

  sub_10074A4B4();

  v65 = v59;
  if (v46(v64, 1, v59) == 1)
  {

    (*(v15 + 8))(v87, v59);
LABEL_37:
    v47 = v64;
    goto LABEL_26;
  }

  v66 = v90;
  v86(v90, v64, v65);
  v67 = v91;
  v68 = v87;
  sub_1007528F4();
  v95 = 0u;
  v96 = 0u;
  v97 = 1;
  v69 = sub_100749524();
  (*(v92 + 8))(v67, v93);
  v70 = v45;
  if (v69)
  {
    v71 = v62;
    [v71 bounds];
    v73 = v72;
    v75 = v74;
    v77 = v76;
    v79 = v78;
    v80 = [v58 superview];

    [v71 convertRect:v80 toView:{v73, v75, v77, v79}];
    sub_100749544();
  }

  else
  {
  }

  v81 = *(v70 + 8);
  v81(v66, v65);
  v81(v68, v65);
}

id sub_10048DB24()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeroCarouselCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for HeroCarouselCollectionViewCell(uint64_t a1)
{
  result = qword_100939418;
  if (!qword_100939418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10048DCD4(uint64_t a1)
{
  sub_10048DEBC(319, &qword_100928E60, &type metadata accessor for ItemLayoutContext);
  if (v1 <= 0x3F)
  {
    sub_10048DE58(319);
    if (v2 <= 0x3F)
    {
      sub_10048DEBC(319, &qword_100939440, &type metadata accessor for TitleEffect);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_10048DE58(uint64_t a1)
{
  if (!qword_100939430)
  {
    sub_10000C724(&unk_10092E120, &qword_1007C2F90);
    v1 = sub_100754284();
    if (!v2)
    {
      atomic_store(v1, &qword_100939430);
    }
  }
}

void sub_10048DEBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_100754284();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10048DF14@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_playbackId;
  swift_beginAccess();
  return sub_100066198(v1 + v3, a1);
}

void sub_10048DF80()
{
  v1 = v0;
  v2 = sub_10074F3E4();
  v4[3] = v2;
  v4[4] = sub_1002968B4();
  v3 = sub_10000D134(v4);
  (*(*(v2 - 8) + 104))(v3, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v2);
  LOBYTE(v2) = sub_10074FC74();
  sub_10000C620(v4);
  if ((v2 & 1) == 0)
  {
    sub_100231AA8(0);
  }

  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_isPlaying) = 0;
}

double sub_10048E0CC(uint64_t a1)
{
  swift_beginAccess();
  swift_weakAssign();

  return result;
}

void (*sub_10048E12C(uint64_t *a1))(void **a1, char a2, __n128 a3)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_impressionsCalculator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_100091CAC;
}

uint64_t sub_10048E1C4()
{
  v1 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10001B5AC(*v1, v1[1]);
  return v2;
}

double sub_10048E220(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1000164A8(v6, v7);
}

void (*sub_10048E2E0(uint64_t a1, uint64_t a2))()
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  return sub_10048E4B0;
}

uint64_t sub_10048E380@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_currentTitleEffect;
  swift_beginAccess();
  return sub_100016B4C(v3 + v4, a1, &unk_10092E840, &qword_1007B3F78);
}

uint64_t sub_10048E400()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10048E438()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10048E470()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10048E4B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_10092E840, &qword_1007B3F78);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_10048E528(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000C518(&unk_10092E120, &qword_1007C2F90);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26[-v8];
  v10 = sub_10000C518(&qword_10092E118, &qword_1007C3130);
  __chkstk_darwin(v10 - 8);
  v12 = &v26[-v11];
  v13 = OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_state;
  swift_beginAccess();
  sub_100016B4C(v3 + v13, v12, &qword_10092E118, &qword_1007C3130);
  if ((*(v7 + 48))(v12, 1, v6))
  {
    sub_10000C8CC(v12, &qword_10092E118, &qword_1007C3130);
  }

  else
  {
    (*(v7 + 16))(v9, v12, v6);
    v14 = sub_10000C8CC(v12, &qword_10092E118, &qword_1007C3130);
    __chkstk_darwin(v14);
    *&v26[-16] = a1;
    sub_1002143A0();
    sub_100752954();
    (*(v7 + 8))(v9, v6);
  }

  v15 = v3 + OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_impressionsUpdateBlock;
  swift_beginAccess();
  v16 = *v15;
  if (*v15)
  {
    v17 = *(v15 + 8);

    v16(v18);
    sub_1000164A8(v16, v17);
  }

  if (a2)
  {
    v19 = *(*(*(*(a2 + OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_backgroundView) + OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselItemBackgroundView_mediaViewContainer) + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents);
    if (v19)
    {
      type metadata accessor for VideoView(0);
      v20 = swift_dynamicCastClass();
      if (v20)
      {
        v21 = *(v20 + qword_10093CB70);
        if (v21)
        {
          v22 = v19;
          v23 = v21;
          sub_100743BE4();
        }
      }
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    sub_10074B104();
  }
}

void sub_10048E858()
{
  v1 = v0;
  v2 = sub_100741494();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_itemLayoutContext;
  v7 = sub_1007469A4();
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_carouselView;
  type metadata accessor for HeroCarouselView(0);
  *(v1 + v8) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v9 = OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_state;
  v10 = sub_10000C518(&unk_10092E120, &qword_1007C2F90);
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_tapGestureRecognizer;
  *(v1 + v11) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v12 = (v1 + OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_didSelectHandler);
  *v12 = 0;
  v12[1] = 0;
  swift_weakInit();
  v13 = (v1 + OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_impressionsUpdateBlock);
  *v13 = 0;
  v13[1] = 0;
  swift_unknownObjectWeakInit();
  v14 = OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_currentTitleEffect;
  v15 = sub_100743B64();
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_onUpdatePageTitleEffect;
  sub_10000C518(&qword_100939448, &qword_1007C3138);
  swift_allocObject();
  *(v1 + v16) = sub_100752F04();
  sub_100741484();
  v17 = sub_100741464();
  v19 = v18;
  (*(v3 + 8))(v5, v2);
  v20[0] = v17;
  v20[1] = v19;
  sub_1007544E4();
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_allowsAutoPlay) = 1;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselCollectionViewCell_isPlaying) = 0;
  swift_unknownObjectWeakInit();
  sub_100754644();
  __break(1u);
}

id sub_10048EB78(uint64_t a1)
{
  result = [*(*(v1 + 16) + OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_pageControl) currentPage];
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

unint64_t CompoundActionImplementation.PerformError.localizedDescription.getter()
{
  sub_10048ECD8(v0, &v4);
  if (!v5)
  {
    return 0xD00000000000003ALL;
  }

  sub_100012160(&v4, v3);
  sub_100754534(49);
  v6._object = 0x800000010077E4B0;
  v6._countAndFlagsBits = 0xD000000000000016;
  sub_1007531B4(v6);
  sub_10000C518(&unk_10092B358, &unk_1007C3140);
  sub_1007545F4();
  v7._countAndFlagsBits = 0xD000000000000019;
  v7._object = 0x800000010077E4D0;
  sub_1007531B4(v7);
  v1 = 0;
  sub_10000C620(v3);
  return v1;
}

uint64_t CompoundActionImplementation.perform(_:asPartOf:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C518(&unk_100923960, &qword_1007A6240);
  __chkstk_darwin(v3 - 8);
  v5 = &v18 - v4;
  v6 = sub_10000C518(&unk_100923210, &unk_1007A5C60);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - v8;
  sub_100752754();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10000C8CC(v5, &unk_100923960, &qword_1007A6240);
    sub_10000C518(&qword_100930CA0, &unk_1007A58A0);
    sub_10048F078();
    swift_allocError();
    *v10 = 0u;
    *(v10 + 16) = 0u;
    *(v10 + 32) = 0;
    return sub_100752D74();
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v12 = sub_1007527C4();
    if (v12)
    {
      v13 = v12;
      *(&v19 + 1) = sub_1000A7FA0();
      v20 = &protocol witness table for OS_dispatch_queue;
      *&v18 = v13;
      sub_100012160(&v18, v21);
    }

    else
    {
      v14 = sub_100752934();
      v18 = 0u;
      v19 = 0u;
      v20 = 0;
      v22 = v14;
      v23 = &protocol witness table for SyncTaskScheduler;
      sub_10000D134(v21);
      sub_100752924();
      if (*(&v19 + 1))
      {
        sub_10000C8CC(&v18, &qword_100939478, &qword_1007C3150);
      }
    }

    sub_10000C518(&qword_100930CA0, &unk_1007A58A0);
    v15 = sub_100752DE4();
    v16 = swift_allocObject();
    *(v16 + 16) = sub_100744CA4();
    *(v16 + 24) = 0;
    sub_10000C888(v21, v22);
    sub_10000C824(v21, &v18);
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = v15;
    v17[4] = a2;
    sub_100012160(&v18, (v17 + 5));

    sub_100752674();

    (*(v7 + 8))(v9, v6);

    sub_10000C620(v21);
    return v15;
  }
}

unint64_t sub_10048F078()
{
  result = qword_100939470;
  if (!qword_100939470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939470);
  }

  return result;
}

uint64_t sub_10048F0CC()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10048F104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100752624();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v12 = *(a1 + 16);
  if (v12 >> 62)
  {
    v13 = sub_100754664();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = *(a1 + 24);
  if (v14 == v13)
  {
    swift_endAccess();
    (*(v9 + 104))(v11, enum case for ActionOutcome.performed(_:), v8);
    sub_100752DB4();
    (*(v9 + 8))(v11, v8);
    return;
  }

  if ((v12 & 0xC000000000000001) != 0)
  {
    v15 = sub_100754574();
    v16 = v14 + 1;
    if (!__OFADD__(v14, 1))
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_16:
    __break(1u);
    return;
  }

  v15 = *(v12 + 8 * v14 + 32);

  v16 = v14 + 1;
  if (__OFADD__(v14, 1))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

LABEL_9:
  *(a1 + 24) = v16;
  swift_endAccess();
  sub_10052AB60(v15, 1, a3);
  sub_10000C824(a4, v19);
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  sub_100012160(v19, (v17 + 5));
  v17[10] = v15;
  swift_retain_n();

  sub_100752D64();
}

uint64_t sub_10048F3A4()
{

  sub_10000C620((v0 + 40));

  return _swift_deallocObject(v0, 80, 7);
}

void sub_10048F43C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_100752624();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v16);
  v19 = &v30 - v18;
  (*(v13 + 16))(&v30 - v18, a1, v12, v17);
  v20 = (*(v13 + 88))(v19, v12);
  v21 = v20;
  if (v20 != enum case for ActionOutcome.performed(_:))
  {
    if (v20 == enum case for ActionOutcome.unsupported(_:))
    {
      sub_10048F078();
      swift_allocError();
      v26 = v25;
      v25[3] = sub_10074ECD4();
      v26[4] = sub_10048F910(&qword_10093D890, &type metadata accessor for Action);
      *v26 = a6;

      sub_100752DA4();

      return;
    }

    goto LABEL_20;
  }

  swift_beginAccess();
  v22 = *(a2 + 16);
  if (v22 >> 62)
  {
    v23 = sub_100754664();
  }

  else
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v24 = *(a2 + 24);
  if (v24 == v23)
  {
    swift_endAccess();
    (*(v13 + 104))(v15, v21, v12);
    sub_100752DB4();
    (*(v13 + 8))(v15, v12);
    return;
  }

  if ((v22 & 0xC000000000000001) != 0)
  {
    v27 = sub_100754574();
    v28 = v24 + 1;
    if (!__OFADD__(v24, 1))
    {
      goto LABEL_12;
    }

    goto LABEL_17;
  }

  if ((v24 & 0x8000000000000000) != 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v24 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_19:
    __break(1u);
LABEL_20:
    sub_100754744();
    __break(1u);
    return;
  }

  v27 = *(v22 + 8 * v24 + 32);

  v28 = v24 + 1;
  if (__OFADD__(v24, 1))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_12:
  *(a2 + 24) = v28;
  swift_endAccess();
  sub_10052AB60(v27, 1, a4);
  sub_10000C824(a5, v31);
  v29 = swift_allocObject();
  v29[2] = a2;
  v29[3] = a3;
  v29[4] = a4;
  sub_100012160(v31, (v29 + 5));
  v29[10] = v27;
  swift_retain_n();

  sub_100752D64();
}

uint64_t sub_10048F804(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10048F81C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10048F86C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

double sub_10048F8C8(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10048F910(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

uint64_t sub_10048F964()
{

  sub_10000C620((v0 + 40));

  return _swift_deallocObject(v0, 88, 7);
}

double sub_10048F9DC(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_offerButton);
  sub_100032C04(a1, v13);
  v5 = v14;
  if (v14)
  {
    v6 = sub_10000C888(v13, v14);
    v7 = *(v5 - 8);
    v8 = __chkstk_darwin(v6);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_100754734();
    (*(v7 + 8))(v10, v5);
    sub_10000C620(v13);
  }

  else
  {
    v11 = 0;
  }

  [v4 addTarget:v11 action:a2 forControlEvents:64];
  swift_unknownObjectRelease();
  return result;
}

char *sub_10048FB34(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v114 = sub_10074AB44();
  v101 = *(v114 - 8);
  __chkstk_darwin(v114);
  v102 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v11 - 8);
  v100 = &v95 - v12;
  v13 = sub_100741E54();
  __chkstk_darwin(v13 - 8);
  v99 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000C518(&unk_1009249B0, &qword_1007B5A70);
  __chkstk_darwin(v15 - 8);
  v107 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v110 = &v95 - v18;
  __chkstk_darwin(v19);
  v108 = &v95 - v20;
  __chkstk_darwin(v21);
  v106 = &v95 - v22;
  v23 = sub_100750304();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v95 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_metrics;
  v140[13] = &type metadata for Double;
  v140[14] = &protocol witness table for Double;
  v140[9] = &protocol witness table for Double;
  v140[10] = 0x4024000000000000;
  v140[8] = &type metadata for Double;
  v140[5] = 0x4000000000000000;
  if (qword_1009212B0 != -1)
  {
    swift_once();
  }

  v104 = v5;
  v98 = &v5[v27];
  v28 = sub_100750534();
  v109 = sub_10000D0FC(v28, qword_100981548);
  v29 = *(v28 - 8);
  v30 = v29 + 16;
  v121 = *(v29 + 16);
  v122 = v29;
  v121(v26, v109, v28);
  LODWORD(v118) = enum case for FontSource.useCase(_:);
  v119 = v24[13];
  v119(v26);
  v120 = sub_100750B04();
  v140[3] = v120;
  v140[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v140);
  v138 = v23;
  v139 = &protocol witness table for FontSource;
  v31 = sub_10000D134(v137);
  v111 = v24[2];
  v111(v31, v26, v23);
  sub_100750B14();
  v32 = v24[1];
  v113 = v24 + 1;
  v32(v26, v23);
  v137[0] = 0x405C000000000000;
  v134[0] = 0x4044000000000000;
  v33 = sub_10000C518(&unk_100923AE0, &qword_1007A8370);
  sub_100743484();
  v115 = v28;
  v116 = v30;
  v121(v26, v109, v28);
  v112 = v24 + 13;
  (v119)(v26, v118, v23);
  v138 = v120;
  v139 = &protocol witness table for StaticDimension;
  sub_10000D134(v137);
  v135 = v23;
  v136 = &protocol witness table for FontSource;
  v34 = sub_10000D134(v134);
  v117 = v24 + 2;
  v111(v34, v26, v23);
  sub_100750B14();
  v96 = v32;
  v32(v26, v23);
  v134[0] = 0x405C000000000000;
  v131[0] = 0x4044000000000000;
  v105 = v33;
  sub_100743484();
  if (qword_1009212B8 != -1)
  {
    swift_once();
  }

  v35 = v115;
  v97 = sub_10000D0FC(v115, qword_100981560);
  v36 = v121;
  (v121)(v26);
  (v119)(v26, v118, v23);
  v135 = v120;
  v136 = &protocol witness table for StaticDimension;
  sub_10000D134(v134);
  v132 = v23;
  v133 = &protocol witness table for FontSource;
  v37 = sub_10000D134(v131);
  v38 = v111;
  v111(v37, v26, v23);
  sub_100750B14();
  v39 = v96;
  v96(v26, v23);
  v131[0] = 0x405C000000000000;
  v128[0] = 0x4044000000000000;
  sub_100743484();
  v40 = v36;
  v41 = v39;
  v42 = v35;
  if (qword_1009212A0 != -1)
  {
    swift_once();
  }

  v43 = sub_10000D0FC(v35, qword_100981518);
  v40(v26, v43, v35);
  v44 = v118;
  (v119)(v26, v118, v23);
  v132 = v120;
  v133 = &protocol witness table for StaticDimension;
  sub_10000D134(v131);
  v129 = v23;
  v130 = &protocol witness table for FontSource;
  v45 = sub_10000D134(v128);
  v38(v45, v26, v23);
  sub_100750B14();
  v41(v26, v23);
  v128[0] = 0x4052000000000000;
  v125[0] = 0x4034000000000000;
  sub_100743484();
  *v26 = UIFontTextStyleBody;
  *(v26 + 2) = 0;
  v46 = v41;
  LODWORD(v105) = enum case for FontUseCase.preferredFont(_:);
  v95 = *(v122 + 104);
  v95(v26);
  v47 = v119;
  (v119)(v26, v44, v23);
  v129 = v120;
  v130 = &protocol witness table for StaticDimension;
  sub_10000D134(v128);
  v126 = v23;
  v127 = &protocol witness table for FontSource;
  v48 = sub_10000D134(v125);
  v49 = v111;
  v111(v48, v26, v23);
  v50 = UIFontTextStyleBody;
  sub_100750B14();
  v46(v26, v23);
  *v26 = v50;
  *(v26 + 2) = 0;
  (v95)(v26, v105, v42);
  (v47)(v26, v118, v23);
  v126 = v120;
  v127 = &protocol witness table for StaticDimension;
  sub_10000D134(v125);
  v124[3] = v23;
  v124[4] = &protocol witness table for FontSource;
  v51 = sub_10000D134(v124);
  v49(v51, v26, v23);
  sub_100750B14();
  v46(v26, v23);
  sub_1007418E4();
  v52 = v99;
  sub_100741DD4();
  v53 = objc_allocWithZone(type metadata accessor for InAppPurchaseView(0));
  v54 = sub_10027562C(v52, 1);
  v55 = v104;
  *&v104[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_inAppPurchaseView] = v54;
  v56 = v100;
  v57 = v109;
  v58 = v121;
  v121(v100, v109, v42);
  v59 = *(v122 + 56);
  v122 += 56;
  v59(v56, 0, 1, v42);
  LODWORD(v120) = enum case for DirectionalTextAlignment.none(_:);
  v60 = v102;
  v118 = *(v101 + 104);
  v118(v102);
  v119 = sub_100745C84();
  v61 = objc_allocWithZone(v119);
  *&v55[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_titleLabel] = sub_100745C74();
  v62 = v115;
  v58(v56, v57, v115);
  v63 = v59;
  v59(v56, 0, 1, v62);
  v64 = v120;
  v65 = v118;
  (v118)(v60, v120, v114);
  v66 = objc_allocWithZone(v119);
  *&v55[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_parentTitleLabel] = sub_100745C74();
  v67 = v115;
  v121(v56, v97, v115);
  v63(v56, 0, 1, v67);
  v68 = v64;
  v69 = v114;
  v70 = v119;
  v65(v60, v68);
  v71 = objc_allocWithZone(v70);
  *&v55[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_subtitleLabel] = sub_100745C74();
  if (qword_1009212A8 != -1)
  {
    swift_once();
  }

  v72 = v115;
  v73 = sub_10000D0FC(v115, qword_100981530);
  v121(v56, v73, v72);
  v63(v56, 0, 1, v72);
  (v65)(v60, v120, v69);
  v74 = objc_allocWithZone(v70);
  *&v55[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_descriptionLabel] = sub_100745C74();
  v75 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v55[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_offerButton] = sub_100154454(0);
  *&v55[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_ageRatingBadge] = [objc_allocWithZone(type metadata accessor for AgeRatingBadgeView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v123.receiver = v55;
  v123.super_class = ObjectType;
  v76 = objc_msgSendSuper2(&v123, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v80 = v76;
  [v80 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v80 setScrollEnabled:1];
  [v80 setTranslatesAutoresizingMaskIntoConstraints:0];
  v81 = OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_titleLabel;
  [*&v80[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_titleLabel] setTextAlignment:1];
  v82 = OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_parentTitleLabel;
  [*&v80[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_parentTitleLabel] setTextAlignment:1];
  v83 = OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_subtitleLabel;
  [*&v80[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_subtitleLabel] setTextAlignment:1];
  v84 = OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_descriptionLabel;
  [*&v80[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_descriptionLabel] setTextAlignment:1];
  v85 = *&v80[v81];
  sub_10000D198();
  v86 = v85;
  v87 = sub_100753DD4();
  [v86 setTextColor:v87];

  v88 = *&v80[v82];
  v89 = sub_100753DF4();
  [v88 setTextColor:v89];

  v90 = *&v80[v83];
  v91 = sub_100753DE4();
  [v90 setTextColor:v91];

  v92 = *&v80[v84];
  v93 = sub_100753DD4();
  [v92 setTextColor:v93];

  [v80 addSubview:*&v80[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_inAppPurchaseView]];
  [v80 addSubview:*&v80[v81]];
  [v80 addSubview:*&v80[v82]];
  [v80 addSubview:*&v80[v83]];
  [v80 addSubview:*&v80[v84]];
  [v80 addSubview:*&v80[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_offerButton]];
  [v80 addSubview:*&v80[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_ageRatingBadge]];

  return v80;
}

double sub_100490B04(double a1, double a2)
{
  v3 = sub_1007418F4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31[1] = v6;
  v7 = sub_100741914();
  v8 = *(v7 - 8);
  v32 = v7;
  v33 = v8;
  v9 = __chkstk_darwin(v7);
  v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, v2 + OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_metrics, v3, v9);
  v12 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_inAppPurchaseView);
  v53 = type metadata accessor for InAppPurchaseView(0);
  v54 = &protocol witness table for UIView;
  v52 = v12;
  v13 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_titleLabel);
  v50 = sub_100745C84();
  v51 = &protocol witness table for UILabel;
  v49 = v13;
  v14 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_parentTitleLabel);
  v47 = v50;
  v48 = &protocol witness table for UILabel;
  v45 = &protocol witness table for UILabel;
  v46 = v14;
  v15 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_subtitleLabel);
  v44 = v50;
  v42 = &protocol witness table for UILabel;
  v43 = v15;
  v16 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_descriptionLabel);
  v41 = v50;
  v40 = v16;
  v17 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_ageRatingBadge);
  v38 = type metadata accessor for AgeRatingBadgeView(0);
  v39 = &protocol witness table for UIView;
  v37 = v17;
  v18 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_offerButton);
  v35 = type metadata accessor for OfferButton();
  v36 = &protocol witness table for UIView;
  v34 = v18;
  v19 = v12;
  v20 = v13;
  v21 = v14;
  v22 = v15;
  v23 = v16;
  v24 = v17;
  v25 = v18;
  sub_100741904();
  sub_1004913D4(v26);
  v27 = v32;
  sub_100750404();
  v29 = v28;
  (*(v33 + 8))(v11, v27);
  return v29;
}

uint64_t sub_100490E20()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v32 = ObjectType;
  v3 = sub_100750354();
  v36 = *(v3 - 8);
  v37 = v3;
  __chkstk_darwin(v3);
  v33 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1007418F4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v8;
  v9 = sub_100741914();
  v34 = *(v9 - 8);
  v35 = v9;
  *&v10 = __chkstk_darwin(v9).n128_u64[0];
  v31 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59.receiver = v1;
  v59.super_class = ObjectType;
  objc_msgSendSuper2(&v59, "layoutSubviews", v10);
  (*(v6 + 16))(v8, &v1[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_metrics], v5);
  v12 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_inAppPurchaseView];
  v57 = type metadata accessor for InAppPurchaseView(0);
  v58 = &protocol witness table for UIView;
  v56 = v12;
  v13 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_titleLabel];
  v54 = sub_100745C84();
  v55 = &protocol witness table for UILabel;
  v53 = v13;
  v14 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_parentTitleLabel];
  v51 = v54;
  v52 = &protocol witness table for UILabel;
  v49 = &protocol witness table for UILabel;
  v50 = v14;
  v15 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_subtitleLabel];
  v48 = v54;
  v46 = &protocol witness table for UILabel;
  v47 = v15;
  v16 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_descriptionLabel];
  v45 = v54;
  v44 = v16;
  v17 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_ageRatingBadge];
  v42 = type metadata accessor for AgeRatingBadgeView(0);
  v43 = &protocol witness table for UIView;
  v41 = v17;
  v18 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_offerButton];
  v39 = type metadata accessor for OfferButton();
  v40 = &protocol witness table for UIView;
  v38 = v18;
  v19 = v12;
  v20 = v13;
  v21 = v14;
  v22 = v15;
  v23 = v16;
  v24 = v17;
  v25 = v18;
  v26 = v31;
  sub_100741904();
  sub_1007477B4();
  v27 = v33;
  sub_1007418D4();
  [v1 frame];
  Width = CGRectGetWidth(v60);
  sub_100750334();
  [v1 setContentSize:Width];
  (*(v36 + 8))(v27, v37);
  return (*(v34 + 8))(v26, v35);
}

uint64_t type metadata accessor for InstallPagePreInstallFreeOfferView(uint64_t a1)
{
  result = qword_1009394B0;
  if (!qword_1009394B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10049132C(uint64_t a1)
{
  result = sub_1007418F4();
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

unint64_t sub_1004913D4(__n128 a1)
{
  result = qword_1009394C8;
  if (!qword_1009394C8)
  {
    sub_100741914();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009394C8);
  }

  return result;
}

void sub_10049142C()
{
  v0 = sub_10000C518(&unk_1009249B0, &qword_1007B5A70);
  __chkstk_darwin(v0 - 8);
  v39 = v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v41 = v33 - v3;
  __chkstk_darwin(v4);
  v40 = v33 - v5;
  __chkstk_darwin(v6);
  v38 = v33 - v7;
  v8 = sub_100750304();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = OBJC_IVAR____TtC22SubscribePageExtension34InstallPagePreInstallFreeOfferView_metrics;
  v67[13] = &type metadata for Double;
  v67[14] = &protocol witness table for Double;
  v67[9] = &protocol witness table for Double;
  v67[10] = 0x4024000000000000;
  v67[8] = &type metadata for Double;
  v67[5] = 0x4000000000000000;
  if (qword_1009212B0 != -1)
  {
    swift_once();
  }

  v12 = sub_100750534();
  v46 = sub_10000D0FC(v12, qword_100981548);
  v34 = *(v12 - 8);
  v13 = v34 + 16;
  v37 = *(v34 + 16);
  v37(v11, v46, v12);
  v49 = enum case for FontSource.useCase(_:);
  v50 = v9[13];
  v50(v11);
  v47 = sub_100750B04();
  v67[3] = v47;
  v67[4] = &protocol witness table for StaticDimension;
  sub_10000D134(v67);
  v65 = v8;
  v66 = &protocol witness table for FontSource;
  v14 = sub_10000D134(v64);
  v15 = v9[2];
  v15(v14, v11, v8);
  sub_100750B14();
  v42 = v9[1];
  v42(v11, v8);
  v64[0] = 0x405C000000000000;
  v61[0] = 0x4044000000000000;
  v16 = sub_10000C518(&unk_100923AE0, &qword_1007A8370);
  sub_100743484();
  v44 = v12;
  v33[1] = v13;
  v37(v11, v46, v12);
  v46 = (v9 + 13);
  (v50)(v11, v49, v8);
  v65 = v47;
  v66 = &protocol witness table for StaticDimension;
  sub_10000D134(v64);
  v62 = v8;
  v63 = &protocol witness table for FontSource;
  v17 = sub_10000D134(v61);
  v43 = v9 + 2;
  v48 = v15;
  v15(v17, v11, v8);
  sub_100750B14();
  v45 = v9 + 1;
  v42(v11, v8);
  v61[0] = 0x405C000000000000;
  v58[0] = 0x4044000000000000;
  v36 = v16;
  sub_100743484();
  if (qword_1009212B8 != -1)
  {
    swift_once();
  }

  v18 = v44;
  v19 = sub_10000D0FC(v44, qword_100981560);
  v20 = v18;
  v21 = v37;
  v37(v11, v19, v20);
  (v50)(v11, v49, v8);
  v62 = v47;
  v63 = &protocol witness table for StaticDimension;
  sub_10000D134(v61);
  v59 = v8;
  v60 = &protocol witness table for FontSource;
  v22 = sub_10000D134(v58);
  v48(v22, v11, v8);
  sub_100750B14();
  v42(v11, v8);
  v58[0] = 0x405C000000000000;
  v55[0] = 0x4044000000000000;
  sub_100743484();
  if (qword_1009212A0 != -1)
  {
    swift_once();
  }

  v23 = v44;
  v24 = sub_10000D0FC(v44, qword_100981518);
  v21(v11, v24, v23);
  v25 = v49;
  (v50)(v11, v49, v8);
  v26 = v47;
  v59 = v47;
  v60 = &protocol witness table for StaticDimension;
  sub_10000D134(v58);
  v56 = v8;
  v57 = &protocol witness table for FontSource;
  v27 = sub_10000D134(v55);
  v48(v27, v11, v8);
  sub_100750B14();
  v28 = v42;
  v42(v11, v8);
  v55[0] = 0x4052000000000000;
  v52[0] = 0x4034000000000000;
  sub_100743484();
  *v11 = UIFontTextStyleBody;
  *(v11 + 2) = 0;
  LODWORD(v37) = enum case for FontUseCase.preferredFont(_:);
  v36 = *(v34 + 104);
  v36(v11);
  (v50)(v11, v25, v8);
  v56 = v26;
  v57 = &protocol witness table for StaticDimension;
  sub_10000D134(v55);
  v53 = v8;
  v54 = &protocol witness table for FontSource;
  v29 = sub_10000D134(v52);
  v48(v29, v11, v8);
  v30 = UIFontTextStyleBody;
  sub_100750B14();
  v28(v11, v8);
  *v11 = v30;
  *(v11 + 2) = 0;
  (v36)(v11, v37, v44);
  (v50)(v11, v49, v8);
  v53 = v47;
  v54 = &protocol witness table for StaticDimension;
  sub_10000D134(v52);
  v51[3] = v8;
  v51[4] = &protocol witness table for FontSource;
  v31 = sub_10000D134(v51);
  v48(v31, v11, v8);
  v32 = v30;
  sub_100750B14();
  v28(v11, v8);
  sub_1007418E4();
  sub_100754644();
  __break(1u);
}

double sub_100491D20()
{
  v0 = sub_10074F704();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100746DB4();
  sub_100491F24(&qword_10092C6A8, &type metadata accessor for ProductCapability, &protocol conformance descriptor for ProductCapability);
  sub_1007468B4();
  if (!v18[1])
  {
    return 0.0;
  }

  swift_getKeyPath();
  sub_100746914();

  sub_10074F674();
  v5 = v4;
  v7 = v6;
  (*(v1 + 8))(v3, v0);
  v8 = sub_100746D84();
  v10 = v9;
  v11 = sub_100746DA4();
  v12 = sub_100746D94();
  v13 = sub_10007DC04();
  swift_getObjectType();
  v14.n128_u64[0] = v5;
  sub_1001BF6CC(v8, v10, v11, v12, v13, v14, v7);
  v16 = v15;

  swift_unknownObjectRelease();

  return v16;
}

uint64_t sub_100491F24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_100491F70(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC22SubscribePageExtension23BadgeCollectionViewCell_itemLayoutContext;
  v11 = sub_1007469A4();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension23BadgeCollectionViewCell_badgeView] = [objc_allocWithZone(type metadata accessor for BadgeView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v12 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension23BadgeCollectionViewCell_verticalSeparatorView] = v12;
  v13 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension23BadgeCollectionViewCell_topSeparatorView] = v13;
  v14 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension23BadgeCollectionViewCell_bottomSeparatorView] = v14;
  v32.receiver = v4;
  v32.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v32, "initWithFrame:", a1, a2, a3, a4);
  v16 = OBJC_IVAR____TtC22SubscribePageExtension23BadgeCollectionViewCell_verticalSeparatorView;
  v17 = *&v15[OBJC_IVAR____TtC22SubscribePageExtension23BadgeCollectionViewCell_verticalSeparatorView];
  sub_10000D198();
  v18 = v15;
  v19 = v17;
  v20 = sub_100753DB4();
  [v19 setBackgroundColor:v20];

  v21 = OBJC_IVAR____TtC22SubscribePageExtension23BadgeCollectionViewCell_topSeparatorView;
  v22 = *&v18[OBJC_IVAR____TtC22SubscribePageExtension23BadgeCollectionViewCell_topSeparatorView];
  v23 = sub_100753DB4();
  [v22 setBackgroundColor:v23];

  v24 = OBJC_IVAR____TtC22SubscribePageExtension23BadgeCollectionViewCell_bottomSeparatorView;
  v25 = *&v18[OBJC_IVAR____TtC22SubscribePageExtension23BadgeCollectionViewCell_bottomSeparatorView];
  v26 = sub_100753DB4();
  [v25 setBackgroundColor:v26];

  v27 = [v18 contentView];
  [v27 addSubview:*&v18[OBJC_IVAR____TtC22SubscribePageExtension23BadgeCollectionViewCell_badgeView]];

  v28 = [v18 contentView];
  [v28 addSubview:*&v15[v16]];

  v29 = [v18 contentView];
  [v29 addSubview:*&v18[v21]];

  v30 = [v18 contentView];
  [v30 addSubview:*&v18[v24]];

  return v18;
}

id sub_100492340()
{
  v1 = v0;
  v52.receiver = v0;
  v52.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v52, "layoutSubviews");
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension23BadgeCollectionViewCell_badgeView];
  v3 = [v1 contentView];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v2 setFrame:{v5, v7, v9, v11}];
  v12 = [v1 contentView];
  [v12 frame];

  if (qword_100920A78 != -1)
  {
    swift_once();
  }

  v13 = sub_100749104();
  sub_10000D0FC(v13, qword_10097FD50);
  v14 = [v1 traitCollection];
  sub_100749044();
  v16 = v15;

  v17 = [v1 traitCollection];
  [v17 displayScale];
  v19 = v18;

  v20 = 1.0 / v19;
  v21 = [v1 traitCollection];
  LOBYTE(v14) = sub_1007537F4();

  v22 = 0.0;
  if ((v14 & 1) == 0)
  {
    v23 = [v1 contentView];
    [v23 frame];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;

    v53.origin.x = v25;
    v53.origin.y = v27;
    v53.size.width = v29;
    v53.size.height = v31;
    v22 = CGRectGetMaxX(v53) - v20;
  }

  v32 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23BadgeCollectionViewCell_verticalSeparatorView];
  v33 = [v1 contentView];
  [v33 frame];
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;

  v54.origin.x = v35;
  v54.origin.y = v37;
  v54.size.width = v39;
  v54.size.height = v41;
  [v32 setFrame:{v22, floor((CGRectGetHeight(v54) - (v16 + -54.0)) * 0.5), v20, v16 + -54.0}];
  v42 = [v1 traitCollection];
  [v42 displayScale];
  v44 = v43;

  v45 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23BadgeCollectionViewCell_topSeparatorView];
  v46 = 1.0 / v44;
  [v1 bounds];
  MinX = CGRectGetMinX(v55);
  [v1 bounds];
  [v45 setFrame:{MinX, 0.0, CGRectGetWidth(v56), v46}];
  v48 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23BadgeCollectionViewCell_bottomSeparatorView];
  [v1 bounds];
  v49 = CGRectGetMinX(v57);
  [v1 bounds];
  v50 = CGRectGetMaxY(v58) - v46;
  [v1 bounds];
  return [v48 setFrame:{v49, v50, CGRectGetWidth(v59), v46}];
}

uint64_t type metadata accessor for BadgeCollectionViewCell(uint64_t a1)
{
  result = qword_100939520;
  if (!qword_100939520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100492858(uint64_t a1)
{
  sub_100016898(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1004928FC(void *a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v31[1] = a2;
  v32 = a1;
  v5 = sub_100754074();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1007410D4();
  __chkstk_darwin(v9 - 8);
  v10 = sub_10000C518(&qword_100923030, &unk_1007B17C0);
  __chkstk_darwin(v10 - 8);
  v12 = v31 - v11;
  v13 = sub_100754154();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100754164();
  (*(v14 + 104))(v16, enum case for UIButton.Configuration.Size.large(_:), v13);
  sub_100754064();
  if (a3)
  {
    v31[0] = v5;
    sub_10000C518(&unk_100929CA0, &qword_1007A6610);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007A5A00;
    *(inited + 32) = NSFontAttributeName;
    v18 = qword_100920CF0;

    v19 = NSFontAttributeName;
    if (v18 != -1)
    {
      swift_once();
    }

    v20 = qword_100939530;
    *(inited + 64) = sub_100016C60(0, &qword_100923AB0, UIFont_ptr);
    *(inited + 40) = v20;
    v21 = v20;
    sub_100413A18(inited);
    swift_setDeallocating();
    sub_10000C8CC(inited + 32, &unk_100923510, &unk_1007A6620);
    sub_1007410F4();
    sub_100741094();
    v22 = sub_100741084();
    (*(*(v22 - 8) + 56))(v12, 0, 1, v22);
    sub_1007540F4();
    v5 = v31[0];
  }

  sub_1007540C4();
  (*(v6 + 104))(v8, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v5);
  sub_100754084();
  v23 = sub_100754034();
  sub_1007515A4();
  v23(v33, 0);
  sub_100016C60(0, &qword_100923500, UIColor_ptr);
  v24 = objc_opt_self();
  v25 = [v24 systemGray6Color];
  v26.super.isa = [v24 secondarySystemBackgroundColor];
  v27.super.isa = v25;
  sub_100753EC4(v27, v26);
  sub_100754114();
  sub_100754094();
  if (qword_100920CF8 != -1)
  {
    swift_once();
  }

  v28 = qword_100939538;
  sub_100754024();
  v29 = v32;
  return sub_100754194();
}

uint64_t sub_100492DC4(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  v5 = sub_100743B04();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v9, *a2, v5, v7);
  v10 = sub_100743AE4();
  result = (*(v6 + 8))(v9, v5);
  *a3 = v10;
  return result;
}

void sub_100492EC0()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleHeadline;
  v2 = [v0 preferredFontDescriptorWithTextStyle:v1];
  v3 = [objc_opt_self() fontWithDescriptor:v2 size:0.0];

  qword_100939530 = v3;
}

void sub_100492F64()
{
  if (qword_100920CF0 != -1)
  {
    swift_once();
  }

  v0 = qword_100939530;
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 configurationWithFont:v2 scale:1];

  qword_100939538 = v3;
}

char *sub_100493000(double a1, double a2, double a3, double a4)
{
  v9 = sub_10000C518(&qword_100932470, &unk_1007A5A90);
  __chkstk_darwin(v9 - 8);
  v11 = &v44 - v10;
  v12 = OBJC_IVAR____TtC22SubscribePageExtension24ProductReviewActionsView_writeReviewAction;
  v13 = sub_10000C518(&unk_100933080, &unk_1007B1AB0);
  v14 = *(*(v13 - 8) + 56);
  v14(&v4[v12], 1, 1, v13);
  v14(&v4[OBJC_IVAR____TtC22SubscribePageExtension24ProductReviewActionsView_supportAction], 1, 1, v13);
  v15 = [objc_allocWithZone(UIButton) init];
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension24ProductReviewActionsView_writeReviewButton] = v15;
  v16 = [objc_allocWithZone(UIButton) init];
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension24ProductReviewActionsView_supportButton] = v16;
  v17 = type metadata accessor for ProductReviewActionsView(0);
  v44.receiver = v4;
  v44.super_class = v17;
  v18 = objc_msgSendSuper2(&v44, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v22 = v18;
  [v22 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v23 = OBJC_IVAR____TtC22SubscribePageExtension24ProductReviewActionsView_writeReviewButton;
  v24 = qword_100920CE0;
  v25 = *&v22[OBJC_IVAR____TtC22SubscribePageExtension24ProductReviewActionsView_writeReviewButton];
  if (v24 != -1)
  {
    swift_once();
  }

  sub_1004928FC(qword_100980560, 0, 0, v26);
  v27 = sub_1007541F4();
  v28 = *(*(v27 - 8) + 56);
  v28(v11, 0, 1, v27);
  sub_100754224();

  v29 = [*&v22[v23] titleLabel];
  if (v29)
  {
    if (qword_100920CF0 != -1)
    {
      v42 = v29;
      swift_once();
      v29 = v42;
    }

    v30 = v29;
    [v29 setFont:qword_100939530];
  }

  [*&v22[v23] addTarget:v22 action:"writeReviewWithSender:" forControlEvents:64];
  v31 = *&v22[v23];
  v32 = [v22 tintColor];
  [v31 setTitleColor:v32 forState:0];

  [v22 addSubview:*&v22[v23]];
  v33 = OBJC_IVAR____TtC22SubscribePageExtension24ProductReviewActionsView_supportButton;
  v34 = qword_100920CE8;
  v35 = *&v22[OBJC_IVAR____TtC22SubscribePageExtension24ProductReviewActionsView_supportButton];
  if (v34 != -1)
  {
    swift_once();
  }

  sub_1004928FC(qword_100980568, 0, 0, v36);
  v28(v11, 0, 1, v27);
  sub_100754224();

  v37 = [*&v22[v33] titleLabel];
  if (v37)
  {
    if (qword_100920CF0 != -1)
    {
      v43 = v37;
      swift_once();
      v37 = v43;
    }

    v38 = v37;
    [v37 setFont:qword_100939530];
  }

  [*&v22[v33] addTarget:v22 action:"supportWithSender:" forControlEvents:64];
  v39 = *&v22[v33];
  v40 = [v22 tintColor];

  [v39 setTitleColor:v40 forState:0];
  [v22 addSubview:*&v22[v33]];

  return v22;
}

uint64_t sub_100493620(uint64_t a1, uint64_t *a2)
{
  v4 = sub_10000C518(&unk_100923960, &qword_1007A6240);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - v5;
  v7 = sub_10000C518(&qword_100933090, &unk_1007B1B00);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - v8;
  v10 = sub_10000C518(&unk_100933080, &unk_1007B1AB0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - v12;
  v14 = *a2;
  swift_beginAccess();
  sub_1001E899C(v2 + v14, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    v15 = &qword_100933090;
    v16 = &unk_1007B1B00;
    v17 = v9;
    return sub_10000C8CC(v17, v15, v16);
  }

  (*(v11 + 32))(v13, v9, v10);
  sub_1007455B4();
  v18 = sub_10000C518(&unk_100923210, &unk_1007A5C60);
  sub_1007526C4();

  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v6, 1, v18) == 1)
  {
    (*(v11 + 8))(v13, v10);
    v15 = &unk_100923960;
    v16 = &qword_1007A6240;
    v17 = v6;
    return sub_10000C8CC(v17, v15, v16);
  }

  sub_1007455C4();
  v21 = sub_1007455B4();
  sub_1003C0E00(v22, 1, v21, v6);

  (*(v11 + 8))(v13, v10);

  return (*(v19 + 8))(v6, v18);
}

uint64_t sub_10049395C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_100754314();
    v7 = swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  a4(v7);

  return sub_10000C8CC(v9, &unk_100923520, &qword_1007A5A70);
}

uint64_t sub_1004939E8@<X0>(uint64_t *a1@<X8>)
{
  v43 = a1;
  v2 = sub_100751144();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v35 - v7;
  __chkstk_darwin(v9);
  v11 = &v35 - v10;
  __chkstk_darwin(v12);
  v14 = &v35 - v13;
  v42 = sub_100750A34();
  v45 = *(v42 - 8);
  __chkstk_darwin(v42);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v44 = &v35 - v18;
  sub_100750A04();
  v38 = v1;
  v19 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension24ProductReviewActionsView_writeReviewButton);
  v41 = sub_100016C60(0, &qword_10093B420, UIButton_ptr);
  v47 = v41;
  v48 = &protocol witness table for UIButton;
  v46 = v19;
  v40 = type metadata accessor for ProductReviewActionsView(0);
  v20 = v19;
  sub_1007477B4();
  *(v14 + 3) = &type metadata for CGFloat;
  *(v14 + 4) = &protocol witness table for CGFloat;
  *v14 = v21 * 0.5 + -6.0;
  v39 = enum case for Resize.Rule.replaced(_:);
  v22 = *(v3 + 104);
  v22(v14);
  v23 = enum case for Resize.Rule.unchanged(_:);
  v36 = v11;
  (v22)(v11, enum case for Resize.Rule.unchanged(_:), v2);
  (v22)(v8, v23, v2);
  (v22)(v5, v23, v2);
  v37 = sub_100751154();
  v50 = v37;
  v51 = &protocol witness table for Resize;
  sub_10000D134(v49);
  v24 = v8;
  v25 = v5;
  sub_100751164();
  sub_100750A14();
  v26 = *(v45 + 8);
  v45 += 8;
  v27 = v16;
  v28 = v42;
  v26(v27, v42);
  sub_10000C620(v49);
  v29 = *(v38 + OBJC_IVAR____TtC22SubscribePageExtension24ProductReviewActionsView_supportButton);
  v47 = v41;
  v48 = &protocol witness table for UIButton;
  v46 = v29;
  v30 = v29;
  sub_1007477B4();
  *(v14 + 3) = &type metadata for CGFloat;
  *(v14 + 4) = &protocol witness table for CGFloat;
  *v14 = v31 * 0.5 + -6.0;
  (v22)(v14, v39, v2);
  (v22)(v36, v23, v2);
  (v22)(v24, v23, v2);
  (v22)(v25, v23, v2);
  v50 = v37;
  v51 = &protocol witness table for Resize;
  sub_10000D134(v49);
  sub_100751164();
  v32 = v43;
  v43[3] = v28;
  v32[4] = &protocol witness table for HorizontalStack;
  sub_10000D134(v32);
  v33 = v44;
  sub_100750A14();
  v26(v33, v28);
  return sub_10000C620(v49);
}

uint64_t sub_100493EA4@<X0>(uint64_t *a1@<X8>)
{
  v43 = a1;
  v2 = sub_100751144();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v35 - v7;
  __chkstk_darwin(v9);
  v11 = &v35 - v10;
  __chkstk_darwin(v12);
  v14 = &v35 - v13;
  v42 = sub_1007507B4();
  v45 = *(v42 - 8);
  __chkstk_darwin(v42);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v44 = &v35 - v18;
  sub_100750794();
  v38 = v1;
  v19 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension24ProductReviewActionsView_writeReviewButton);
  v41 = sub_100016C60(0, &qword_10093B420, UIButton_ptr);
  v47 = v41;
  v48 = &protocol witness table for UIButton;
  v46 = v19;
  v40 = type metadata accessor for ProductReviewActionsView(0);
  v20 = v19;
  sub_1007477B4();
  Width = CGRectGetWidth(v52);
  *(v14 + 3) = &type metadata for CGFloat;
  *(v14 + 4) = &protocol witness table for CGFloat;
  *v14 = Width;
  v39 = enum case for Resize.Rule.replaced(_:);
  v22 = *(v3 + 104);
  v22(v14);
  v23 = enum case for Resize.Rule.unchanged(_:);
  v36 = v11;
  (v22)(v11, enum case for Resize.Rule.unchanged(_:), v2);
  (v22)(v8, v23, v2);
  (v22)(v5, v23, v2);
  v37 = sub_100751154();
  v50 = v37;
  v51 = &protocol witness table for Resize;
  sub_10000D134(v49);
  v24 = v8;
  v25 = v5;
  sub_100751164();
  sub_1007507A4();
  v26 = *(v45 + 8);
  v45 += 8;
  v27 = v16;
  v28 = v42;
  v26(v27, v42);
  sub_10000C620(v49);
  v29 = *(v38 + OBJC_IVAR____TtC22SubscribePageExtension24ProductReviewActionsView_supportButton);
  v47 = v41;
  v48 = &protocol witness table for UIButton;
  v46 = v29;
  v30 = v29;
  sub_1007477B4();
  v31 = CGRectGetWidth(v53);
  *(v14 + 3) = &type metadata for CGFloat;
  *(v14 + 4) = &protocol witness table for CGFloat;
  *v14 = v31;
  (v22)(v14, v39, v2);
  (v22)(v36, v23, v2);
  (v22)(v24, v23, v2);
  (v22)(v25, v23, v2);
  v50 = v37;
  v51 = &protocol witness table for Resize;
  sub_10000D134(v49);
  sub_100751164();
  v32 = v43;
  v43[3] = v28;
  v32[4] = &protocol witness table for VerticalStack;
  sub_10000D134(v32);
  v33 = v44;
  sub_1007507A4();
  v26(v33, v28);
  return sub_10000C620(v49);
}

uint64_t sub_100494340@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension24ProductReviewActionsView_writeReviewButton);
  type metadata accessor for ProductReviewActionsView(0);
  sub_1007477B4();
  [v3 sizeThatFits:{v4, v5}];
  v7 = v6;
  v8 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension24ProductReviewActionsView_supportButton);
  sub_1007477B4();
  [v8 sizeThatFits:{v9, v10}];
  v12 = v11;
  sub_1007477B4();
  v14 = v13 * 0.5 + -6.0;
  if (v14 < v7 || v14 < v12)
  {

    return sub_100493EA4(a1);
  }

  else
  {

    return sub_1004939E8(a1);
  }
}

double sub_100494538(double a1, double a2)
{
  v3 = v2;
  swift_getObjectType();
  v6 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension24ProductReviewActionsView_writeReviewButton);
  v7 = [v6 titleForState:0];
  if (v7)
  {
    v8 = v7;
LABEL_3:
    v9 = sub_100753094();
    v11 = v10;

    goto LABEL_7;
  }

  v12 = [v6 titleLabel];
  if (v12)
  {
    v13 = v12;
    v8 = [v12 text];

    if (v8)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
  v11 = 0;
LABEL_7:
  v14 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension24ProductReviewActionsView_supportButton);
  v15 = [v14 titleForState:0];
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v20 = [v14 titleLabel];
    if (!v20 || (v21 = v20, v16 = [v20 text], v21, !v16))
    {
      v17 = 0;
      v19 = 0;
      goto LABEL_13;
    }
  }

  v17 = sub_100753094();
  v19 = v18;

LABEL_13:
  v22 = sub_100494988(v9, v11, v17, v19, a1, a2);

  return v22;
}

id sub_100494734()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProductReviewActionsView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ProductReviewActionsView(uint64_t a1)
{
  result = qword_100939570;
  if (!qword_100939570)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100494848(uint64_t a1)
{
  sub_1001E5A54(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_100494988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v12 = sub_1007541F4();
  __chkstk_darwin(v12 - 8);
  sub_100016C60(0, &qword_10093B420, UIButton_ptr);
  if (qword_100920CE0 != -1)
  {
    swift_once();
  }

  sub_1004928FC(qword_100980560, a1, a2, v13);
  v14 = sub_100754204();
  [v14 sizeThatFits:{a5, a6}];
  if (qword_100920CE8 != -1)
  {
    swift_once();
  }

  sub_1004928FC(qword_100980568, a3, a4, v15);
  v16 = sub_100754204();
  [v16 sizeThatFits:{a5, a6}];

  return a5;
}

char *sub_100494BAC()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension10PlayButton_backgroundView;
  *&v0[v1] = [objc_allocWithZone(AVBackgroundView) init];
  v2 = OBJC_IVAR____TtC22SubscribePageExtension10PlayButton_glyphView;
  *&v0[v2] = [objc_allocWithZone(UIImageView) init];
  v3 = &v0[OBJC_IVAR____TtC22SubscribePageExtension10PlayButton_tapActionBlock];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension10PlayButton_tapGestureRecognizer] = 0;
  v15.receiver = v0;
  v15.super_class = type metadata accessor for PlayButton();
  v4 = objc_msgSendSuper2(&v15, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v5 = OBJC_IVAR____TtC22SubscribePageExtension10PlayButton_glyphView;
  v6 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension10PlayButton_glyphView];
  v7 = v4;
  v8 = v6;
  v9 = sub_10056003C(0xD000000000000012, 0x800000010077E820, 0);
  v10 = [v9 imageWithRenderingMode:2];

  [v8 setImage:v10];
  v11 = qword_100920D00;
  v12 = *&v4[v5];
  if (v11 != -1)
  {
    swift_once();
  }

  [v12 setTintColor:qword_100939580];

  [*&v4[v5] setUserInteractionEnabled:0];
  if (ASKPerformanceProfileGetForCurrentDevice() != 2)
  {
    [*&v7[OBJC_IVAR____TtC22SubscribePageExtension10PlayButton_backgroundView] setPrefersLowQualityEffects:1];
  }

  v13 = OBJC_IVAR____TtC22SubscribePageExtension10PlayButton_backgroundView;
  [*&v7[OBJC_IVAR____TtC22SubscribePageExtension10PlayButton_backgroundView] addSubview:*&v4[v5] applyingMaterialStyle:0 tintEffectStyle:0];
  [*&v7[v13] setUserInteractionEnabled:0];
  [*&v7[v13] setCircular:1];
  [v7 addSubview:*&v7[v13]];
  [v7 addTarget:v7 action:"didTap" forControlEvents:64];

  return v7;
}

id sub_100494E78()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for PlayButton();
  objc_msgSendSuper2(&v11, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension10PlayButton_backgroundView];
  [v0 bounds];
  [v1 setFrame:?];
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension10PlayButton_glyphView];
  [v0 bounds];
  [v2 sizeThatFits:{v3, v4}];
  v6 = v5;
  v8 = v7;
  [v0 bounds];
  v9 = CGRectGetMidX(v12) - v6 * 0.5;
  [v0 bounds];
  return [v2 setFrame:{v9, CGRectGetMidY(v13) - v8 * 0.5, v6, v8}];
}

id sub_100495078()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlayButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100495140()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension10PlayButton_backgroundView;
  *(v0 + v1) = [objc_allocWithZone(AVBackgroundView) init];
  v2 = OBJC_IVAR____TtC22SubscribePageExtension10PlayButton_glyphView;
  *(v0 + v2) = [objc_allocWithZone(UIImageView) init];
  v3 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension10PlayButton_tapActionBlock);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension10PlayButton_tapGestureRecognizer) = 0;
  sub_100754644();
  __break(1u);
}

uint64_t sub_100495204(uint64_t a1, uint64_t a2)
{
  v4 = sub_10074E984();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - v10;
  swift_getKeyPath();
  sub_100746914();

  swift_getKeyPath();
  sub_1007525B4();

  (*(v9 + 8))(v11, v8);
  v12 = (*(v5 + 88))(v7, v4);
  if (v12 == enum case for Shelf.ContentType.singleColumnList(_:) || v12 == enum case for Shelf.ContentType.twoColumnList(_:))
  {
    v14 = &qword_1009396A8;
    v15 = qword_1007C3500;
    v16 = sub_10000C518(&qword_1009396A8, qword_1007C3500);
    sub_10002DDC8(&qword_1009396B0, &qword_1009396A8, qword_1007C3500, &unk_1007D1488);
    sub_10002DDC8(&qword_1009396B8, &qword_1009396A8, qword_1007C3500, &unk_1007C11F0);
    v17 = &unk_1009396C0;
  }

  else
  {
    if (v12 != enum case for Shelf.ContentType.scrollablePill(_:))
    {
      v16 = sub_1004F9E04(a1, a2);
      (*(v5 + 8))(v7, v4);
      return v16;
    }

    v14 = &qword_100939688;
    v15 = &qword_1007C34F8;
    v16 = sub_10000C518(&qword_100939688, &qword_1007C34F8);
    sub_10002DDC8(&qword_100939690, &qword_100939688, &qword_1007C34F8, &unk_1007D1488);
    sub_10002DDC8(&qword_100939698, &qword_100939688, &qword_1007C34F8, &unk_1007C11F0);
    v17 = &unk_1009396A0;
  }

  sub_10002DDC8(v17, v14, v15, &unk_1007D14B8);
  return v16;
}

uint64_t sub_10049556C()
{

  return swift_deallocClassInstance();
}

id sub_1004955D8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v6 = sub_10074F6E4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v22 - v11;
  v13 = sub_10074F704();
  v22 = *(v13 - 8);
  v23 = v13;
  v14 = __chkstk_darwin(v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v12, enum case for PageGrid.Direction.vertical(_:), v6, v14);
  if (a3)
  {
    result = [v4 view];
    if (!result)
    {
      goto LABEL_7;
    }

    v18 = result;
    [result bounds];
  }

  result = [v4 view];
  if (result)
  {
    v19 = result;
    [result safeAreaInsets];

    (*(v7 + 16))(v9, v12, v6);
    sub_1004E97E0(0.0);
    sub_10074F6B4();
    (*(v7 + 8))(v12, v6);
    v20 = [v4 navigationItem];
    sub_10074F694();
    [v20 largeTitleInsets];
    [v20 setLargeTitleInsets:?];

    v21 = [v4 navigationItem];
    sub_10074F694();
    [v21 largeTitleInsets];
    [v21 setLargeTitleInsets:?];

    return (*(v22 + 8))(v16, v23);
  }

  __break(1u);
LABEL_7:
  __break(1u);
  return result;
}

char *sub_100495940(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_100743584();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000C518(&qword_100932560, qword_1007A7BB0);
  __chkstk_darwin(v15 - 8);
  v17 = &v38 - v16;
  v18 = OBJC_IVAR____TtC22SubscribePageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_itemLayoutContext;
  v19 = sub_1007469A4();
  (*(*(v19 - 8) + 56))(&v5[v18], 1, 1, v19);
  v20 = OBJC_IVAR____TtC22SubscribePageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_condensedAdLockupWithIconBackgroundView;
  type metadata accessor for CondensedAdLockupWithIconBackgroundView();
  *&v5[v20] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v21 = OBJC_IVAR____TtC22SubscribePageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_shadowView;
  sub_100743034();
  *&v5[v21] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_impressionsCalculator] = 0;
  v22 = &v5[OBJC_IVAR____TtC22SubscribePageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_impressionsUpdateBlock];
  *v22 = 0;
  *(v22 + 1) = 0;
  v38.receiver = v5;
  v38.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v38, "initWithFrame:", a1, a2, a3, a4);
  v24 = OBJC_IVAR____TtC22SubscribePageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_shadowView;
  v25 = *&v23[OBJC_IVAR____TtC22SubscribePageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_shadowView];
  v26 = qword_100920520;
  v27 = v23;
  v28 = v25;
  if (v26 != -1)
  {
    swift_once();
  }

  v29 = sub_10074F0C4();
  v30 = sub_10000D0FC(v29, qword_10097E320);
  v31 = *(v29 - 8);
  (*(v31 + 16))(v17, v30, v29);
  (*(v31 + 56))(v17, 0, 1, v29);
  sub_100743014();

  v32 = *&v23[v24];
  (*(v12 + 104))(v14, enum case for CornerStyle.continuous(_:), v11);
  v33 = v32;
  sub_100743024();

  (*(v12 + 8))(v14, v11);
  [v27 addSubview:*&v23[v24]];
  v34 = [v27 contentView];
  [v34 setClipsToBounds:1];

  v35 = OBJC_IVAR____TtC22SubscribePageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_condensedAdLockupWithIconBackgroundView;
  [*&v27[OBJC_IVAR____TtC22SubscribePageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_condensedAdLockupWithIconBackgroundView] setClipsToBounds:1];
  v36 = [v27 contentView];

  [v36 addSubview:*&v27[v35]];
  return v27;
}

double sub_100495EB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10074F704();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10074DB64();
  sub_100496A0C(&qword_100939718, &type metadata accessor for CondensedAdLockupWithIconBackground, &protocol conformance descriptor for CondensedAdLockupWithIconBackground);
  sub_1007468B4();
  v9 = v11;
  if (v11)
  {
    swift_getKeyPath();
    sub_100746914();

    sub_10009C1C4(v9, v7, a2);
    (*(v5 + 8))(v7, v4);
    [v2 setNeedsLayout];
  }

  return result;
}

void sub_10049604C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000C518(&unk_100925380, qword_1007A8E40);
  __chkstk_darwin(v4 - 8);
  v6 = &v14[-v5 - 8];
  v7 = sub_100752914();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_10000C824(a3, v14);
      sub_10000C518(&qword_1009242A0, &qword_1007A6400);
      sub_10074DB64();
      if (swift_dynamicCast())
      {
        sub_10074DB54();

        sub_10074EE94();
        if ((*(v8 + 48))(v6, 1, v7) == 1)
        {

          sub_10000C8CC(v6, &unk_100925380, qword_1007A8E40);
        }

        else
        {
          (*(v8 + 32))(v10, v6, v7);
          [v12 bounds];
          sub_100749544();

          (*(v8 + 8))(v10, v7);
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t type metadata accessor for CondensedAdLockupWithIconBackgroundCollectionViewCell(uint64_t a1)
{
  result = qword_100939700;
  if (!qword_100939700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004963C4(uint64_t a1)
{
  sub_100016898(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100496478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100496A0C(&qword_100939710, type metadata accessor for CondensedAdLockupWithIconBackgroundCollectionViewCell, &unk_1007C3670);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100496510@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_100020514(v1 + v3, a1);
}

uint64_t sub_100496568(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000204A4(a1, v1 + v3);
  return swift_endAccess();
}

double sub_100496628()
{
  v1 = v0;
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "prepareForReuse");
  sub_100743344();
  v2 = OBJC_IVAR____TtC22SubscribePageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_impressionsCalculator;
  swift_beginAccess();
  *&v1[v2] = 0;

  return result;
}

double sub_1004966BC()
{
  swift_beginAccess();

  return result;
}

double sub_100496704(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_1004967BC()
{
  v1 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10001B5AC(*v1, v1[1]);
  return v2;
}

double sub_100496818(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC22SubscribePageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1000164A8(v6, v7);
}

void (*sub_1004968D8(uint64_t a1, uint64_t a2))()
{
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  swift_weakInit();
  sub_10000C824(a1, v7);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  sub_100012160(v7, v5 + 32);
  return sub_100496B10;
}

uint64_t sub_100496A0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100496A58()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100496A90()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100496AC8()
{

  sub_10000C620((v0 + 32));

  return _swift_deallocObject(v0, 72, 7);
}

void sub_100496B1C()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_itemLayoutContext;
  v2 = sub_1007469A4();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC22SubscribePageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_condensedAdLockupWithIconBackgroundView;
  type metadata accessor for CondensedAdLockupWithIconBackgroundView();
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = OBJC_IVAR____TtC22SubscribePageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_shadowView;
  sub_100743034();
  *(v0 + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_impressionsCalculator) = 0;
  v5 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension53CondensedAdLockupWithIconBackgroundCollectionViewCell_impressionsUpdateBlock);
  *v5 = 0;
  v5[1] = 0;
  sub_100754644();
  __break(1u);
}

void sub_100496C30()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_artworkViews;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_9:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = *(*(v2 + 56) + ((v8 << 9) | (8 * v9)));
    sub_1007433C4();
    sub_10004D658();
    v11 = v10;
    sub_100744274();
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(v2 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_100496DB4(double a1, double a2, uint64_t a3, uint64_t *a4)
{
  v5 = sub_1007504F4();
  __chkstk_darwin(v5 - 8);
  v6 = sub_10074C114();
  sub_100039C50(v6, a4);
  sub_10000D0FC(v6, a4);
  sub_100750504();
  return sub_10074C104();
}

double sub_100496F04()
{
  v0 = sub_1007504F4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = sub_10000C518(&unk_1009298F0, &unk_1007C3780);
  sub_100039C50(v7, qword_100939780);
  sub_10000D0FC(v7, qword_100939780);
  if (qword_100920D20 != -1)
  {
    swift_once();
  }

  v8 = sub_10000D0FC(v0, qword_100939768);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  if (qword_100920D18 != -1)
  {
    swift_once();
  }

  v10 = sub_10000D0FC(v0, qword_100939750);
  v9(v3, v10, v0);
  sub_10000C518(&unk_100923AE0, &qword_1007A8370);
  sub_100743484();
  return result;
}

char *sub_1004970E4(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension21ArcadeWelcomeItemView_artwork] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension21ArcadeWelcomeItemView_artworkLoader] = 0;
  v4[OBJC_IVAR____TtC22SubscribePageExtension21ArcadeWelcomeItemView_shouldUpdateArtwork] = 0;
  sub_100745C84();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension21ArcadeWelcomeItemView_headlineLabel] = v11;
  v12 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension21ArcadeWelcomeItemView_bodyLabel] = v12;
  sub_1007433C4();
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension21ArcadeWelcomeItemView_artworkView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v19.receiver = v4;
  v19.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
  v14 = *&v13[OBJC_IVAR____TtC22SubscribePageExtension21ArcadeWelcomeItemView_headlineLabel];
  v15 = v13;
  [v15 addSubview:v14];
  [v15 addSubview:*&v15[OBJC_IVAR____TtC22SubscribePageExtension21ArcadeWelcomeItemView_bodyLabel]];
  v16 = OBJC_IVAR____TtC22SubscribePageExtension21ArcadeWelcomeItemView_artworkView;
  [v15 addSubview:*&v15[OBJC_IVAR____TtC22SubscribePageExtension21ArcadeWelcomeItemView_artworkView]];
  [v15 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  v17 = *&v15[v16];
  sub_100743224();

  sub_100497288();
  return v15;
}

id sub_100497288()
{
  v1 = v0;
  v2 = sub_10074AB44();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 traitCollection];
  v8 = sub_100753804();

  if (v8)
  {
    v9 = enum case for DirectionalTextAlignment.leading(_:);
    v10 = *(v3 + 104);
    v10(v6, enum case for DirectionalTextAlignment.leading(_:), v2);
    sub_100745BF4();
    v10(v6, v9, v2);
    return sub_100745BF4();
  }

  else
  {
    [*&v1[OBJC_IVAR____TtC22SubscribePageExtension21ArcadeWelcomeItemView_headlineLabel] setTextAlignment:1];
    v12 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension21ArcadeWelcomeItemView_bodyLabel];

    return [v12 setTextAlignment:1];
  }
}

uint64_t sub_10049762C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100750354();
  v37 = *(v3 - 8);
  v38 = v3;
  __chkstk_darwin(v3);
  v34 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10074C134();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v32 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10074C114();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v31 - v11;
  *&v14 = __chkstk_darwin(v13).n128_u64[0];
  v16 = &v31 - v15;
  v48.receiver = v1;
  v48.super_class = ObjectType;
  v36 = ObjectType;
  objc_msgSendSuper2(&v48, "layoutSubviews", v14);
  if (sub_1003836EC())
  {
    if (qword_100920D10 != -1)
    {
      swift_once();
    }

    v17 = qword_100939738;
  }

  else
  {
    if (qword_100920D08 != -1)
    {
      swift_once();
    }

    v17 = qword_100939720;
  }

  v18 = sub_10000D0FC(v6, v17);
  v19 = *(v7 + 16);
  v20 = v19(v12, v18, v6);
  __chkstk_darwin(v20);
  *(&v31 - 2) = v1;
  sub_10074F4B4();
  v21 = *(v7 + 8);
  v21(v12, v6);
  v19(v9, v16, v6);
  v22 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension21ArcadeWelcomeItemView_headlineLabel];
  v46 = sub_100745C84();
  v47 = &protocol witness table for UILabel;
  v44 = &protocol witness table for UILabel;
  v45 = v22;
  v23 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension21ArcadeWelcomeItemView_bodyLabel];
  v43 = v46;
  v42 = v23;
  v24 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension21ArcadeWelcomeItemView_artworkView];
  v40 = sub_1007433C4();
  v41 = &protocol witness table for UIView;
  v39 = v24;
  v25 = v22;
  v26 = v23;
  v27 = v24;
  v28 = v32;
  sub_10074C124();
  sub_1007477B4();
  v29 = v34;
  sub_10074C0E4();
  (*(v37 + 8))(v29, v38);
  sub_100497AE0();
  (*(v33 + 8))(v28, v35);
  return (v21)(v16, v6);
}

uint64_t sub_100497A80()
{
  swift_getObjectType();
  sub_1007477B4();
  CGRectGetWidth(v1);
  return sub_10074C0F4();
}

void sub_100497AE0()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_1007504F4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007477B4();
  v15.origin.x = 0.0;
  v15.origin.y = 0.0;
  v15.size.width = 0.0;
  v15.size.height = 0.0;
  if (!CGRectEqualToRect(v14, v15))
  {
    v6 = OBJC_IVAR____TtC22SubscribePageExtension21ArcadeWelcomeItemView_shouldUpdateArtwork;
    if (v0[OBJC_IVAR____TtC22SubscribePageExtension21ArcadeWelcomeItemView_shouldUpdateArtwork] == 1)
    {
      if (*&v0[OBJC_IVAR____TtC22SubscribePageExtension21ArcadeWelcomeItemView_artwork])
      {
        v7 = qword_100920D28;

        if (v7 != -1)
        {
          swift_once();
        }

        v8 = sub_10000C518(&unk_1009298F0, &unk_1007C3780);
        sub_10000D0FC(v8, qword_100939780);
        v13 = v1;
        v9 = v1;
        sub_100743464();

        sub_1007477B4();
        sub_100750474();
        (*(v3 + 8))(v5, v2);
        sub_10074F364();
        if (*&v9[OBJC_IVAR____TtC22SubscribePageExtension21ArcadeWelcomeItemView_artworkLoader])
        {
          v12 = *&v9[OBJC_IVAR____TtC22SubscribePageExtension21ArcadeWelcomeItemView_artworkView];
          v10 = v12;
          sub_1007433C4();
          sub_100498550();

          v11 = v10;
          sub_1007544E4();
          swift_allocObject();
          swift_unknownObjectWeakInit();

          sub_1007441F4();

          sub_100416858(&v13);
        }

        else
        {
        }
      }

      *(v1 + v6) = 0;
    }
  }
}

double sub_100497E00(uint64_t a1, __n128 a2, double a3)
{
  v4 = v3;
  v34 = a1;
  v6 = a2.n128_u64[0];
  v35 = sub_10074C134();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10074C114();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v32 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v32 - v13;
  __chkstk_darwin(v15);
  v17 = &v32 - v16;
  if (sub_1003836EC())
  {
    if (qword_100920D10 != -1)
    {
      swift_once();
    }

    v18 = qword_100939738;
  }

  else
  {
    if (qword_100920D08 != -1)
    {
      swift_once();
    }

    v18 = qword_100939720;
  }

  v19 = sub_10000D0FC(v9, v18);
  v20 = *(v10 + 16);
  v21 = v20(v14, v19, v9);
  __chkstk_darwin(v21);
  *(&v32 - 2) = v6;
  *(&v32 - 1) = a3;
  sub_10074F4B4();
  v22 = *(v10 + 8);
  v22(v14, v9);
  v20(v32, v17, v9);
  v23 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension21ArcadeWelcomeItemView_headlineLabel);
  v43 = sub_100745C84();
  v44 = &protocol witness table for UILabel;
  v41 = &protocol witness table for UILabel;
  v42 = v23;
  v24 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension21ArcadeWelcomeItemView_bodyLabel);
  v40 = v43;
  v39 = v24;
  v25 = *(v4 + OBJC_IVAR____TtC22SubscribePageExtension21ArcadeWelcomeItemView_artworkView);
  v37 = sub_1007433C4();
  v38 = &protocol witness table for UIView;
  v36 = v25;
  v26 = v23;
  v27 = v24;
  v28 = v25;
  sub_10074C124();
  sub_10074C0D4();
  v30 = v29;
  (*(v33 + 8))(v8, v35);
  v22(v17, v9);
  return v30;
}

void sub_100498244(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = OBJC_IVAR____TtC22SubscribePageExtension21ArcadeWelcomeItemView_artworkView;
      v8 = *(Strong + OBJC_IVAR____TtC22SubscribePageExtension21ArcadeWelcomeItemView_artworkView);
      v9 = Strong;
      v10 = a1;
      v11 = v8;
      [v10 size];
      sub_100743394();
      sub_100753B74();
      sub_1007433A4();

      v12 = *&v9[v7];
      v13 = v10;
      v14 = v12;
      v16.value.super.isa = a1;
      v16.is_nil = 0;
      sub_100743384(v16, v15);
    }
  }
}

id sub_10049833C(uint64_t a1)
{
  v2 = v1;
  v7.receiver = v1;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = sub_100753804();

  if (!a1 || (sub_100753804() & 1) != (v5 & 1))
  {
    sub_100497288();
  }

  return [v2 setNeedsLayout];
}

unint64_t sub_100498550()
{
  result = qword_100926DB8;
  if (!qword_100926DB8)
  {
    sub_1007433C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100926DB8);
  }

  return result;
}

uint64_t sub_1004985A8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1004985E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10074E9E4();
  *a1 = result;
  return result;
}

uint64_t sub_100498614@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10074EA04();
  *a1 = result;
  return result;
}

uint64_t sub_100498640(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v2 = sub_100754724();
  v28 = *(v2 - 8);
  v29 = v2;
  __chkstk_darwin(v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1007457B4();
  v5 = *(v30 - 8);
  __chkstk_darwin(v30);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v28 - v13;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v15 = *(v9 + 8);
  v15(v14, v8);
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v15(v11, v8);
  if (v32 && (sub_100743A34() & 1) != 0)
  {
    if (qword_100921708 != -1)
    {
      swift_once();
    }

    v16 = sub_100750B04();
    sub_10000D0FC(v16, qword_100982098);
    sub_100747BA4();
    sub_1007502D4();
    sub_100750564();
    bottom = v17;

    swift_unknownObjectRelease();
    (*(v28 + 8))(v4, v29);
    left = 0.0;
    top = 32.0;
    right = 0.0;
  }

  else
  {
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  v19.n128_f64[0] = top;
  v20.n128_f64[0] = left;
  v21.n128_f64[0] = bottom;
  v22.n128_f64[0] = right;
  v26 = sub_1006CFC7C(v7, v31, v19, v20, v21, v22);
  return (*(v5 + 8))(v7, v30, v26);
}

double sub_1004989E4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v142 = a4;
  v148 = a5;
  v8 = sub_1007457B4();
  v9 = *(v8 - 8);
  v140 = v8;
  v141 = v9;
  __chkstk_darwin(v8);
  v149 = (&v138 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_100747C14();
  v12 = *(v11 - 8);
  v146 = v11;
  v147 = v12;
  __chkstk_darwin(v11);
  v143 = v13;
  v145 = &v138 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v138 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v138 - v19;
  __chkstk_darwin(v21);
  v23 = &v138 - v22;
  if (sub_100753094() == a1 && v24 == a2)
  {
  }

  else
  {
    v139 = a2;
    v26 = sub_100754754();

    if ((v26 & 1) == 0)
    {
      if (sub_100753094() == a1 && v27 == v139)
      {

        v28 = a3;
        goto LABEL_18;
      }

      v68 = sub_100754754();

      v28 = a3;
      if (v68)
      {
LABEL_18:
        sub_100747C04();
        swift_getKeyPath();
        sub_1007525B4();

        (*(v15 + 8))(v17, v14);
        if (v151)
        {

          v69 = sub_10000C518(&qword_1009399D8, &unk_1007C3B30);
          v70 = v148;
          *(v148 + 24) = v69;
          v70[4] = sub_100150440(&qword_1009399E0, &qword_1009399D8, &unk_1007C3B30);
          v149 = sub_10000D134(v70);
          v148 = sub_100753094();
          v141 = v71;
          type metadata accessor for ShelfFooterView();
          sub_1007539D4();
          v72 = swift_allocObject();
          swift_weakInit();
          v73 = v146;
          v74 = v147;
          v75 = v145;
          (*(v147 + 16))(v145, v28, v146);
          v76 = (*(v74 + 80) + 24) & ~*(v74 + 80);
          v77 = (v143 + v76 + 7) & 0xFFFFFFFFFFFFFFF8;
          v78 = swift_allocObject();
          *(v78 + 16) = v72;
          (*(v74 + 32))(v78 + v76, v75, v73);
          *(v78 + v77) = v142;
        }

        else
        {
          v79 = sub_10000C518(&qword_100930928, &unk_1007B76D8);
          v80 = v148;
          *(v148 + 24) = v79;
          v80[4] = sub_100150440(&unk_100930930, &qword_100930928, &unk_1007B76D8);
          sub_10000D134(v80);
          sub_100753094();
          type metadata accessor for InfiniteScrollFooterView();
          sub_1007539D4();
        }

        goto LABEL_20;
      }

      type metadata accessor for GradientSectionBackgroundView();
      if (sub_1007539C4() == a1 && v81 == v139)
      {

LABEL_27:
        v83 = sub_10000C518(&qword_1009399C8, &unk_1007C3B20);
        v84 = v148;
        *(v148 + 24) = v83;
        v84[4] = sub_100150440(&qword_1009399D0, &qword_1009399C8, &unk_1007C3B20);
        v149 = sub_10000D134(v84);
        v148 = sub_1007539C4();
        sub_1007539D4();
        v85 = v146;
        v86 = v147;
        v87 = v145;
        (*(v147 + 16))(v145, v28, v146);
        v88 = (*(v86 + 80) + 16) & ~*(v86 + 80);
        v89 = (v143 + v88 + 7) & 0xFFFFFFFFFFFFFFF8;
        v90 = swift_allocObject();
        (*(v86 + 32))(v90 + v88, v87, v85);
        *(v90 + v89) = v144;

        goto LABEL_20;
      }

      v82 = sub_100754754();

      if (v82)
      {
        goto LABEL_27;
      }

      type metadata accessor for MaterialGradientSectionBackgroundView();
      if (sub_1007539C4() == a1 && v91 == v139)
      {

LABEL_33:
        v93 = sub_10000C518(&qword_1009399B8, &qword_1007C3B18);
        v94 = v148;
        *(v148 + 24) = v93;
        v94[4] = sub_100150440(&qword_1009399C0, &qword_1009399B8, &qword_1007C3B18);
        v149 = sub_10000D134(v94);
        v148 = sub_1007539C4();
        sub_1007539D4();
        v95 = v146;
        v96 = v147;
        v97 = v145;
        (*(v147 + 16))(v145, v28, v146);
        v98 = (*(v96 + 80) + 16) & ~*(v96 + 80);
        v99 = (v143 + v98 + 7) & 0xFFFFFFFFFFFFFFF8;
        v100 = swift_allocObject();
        (*(v96 + 32))(v100 + v98, v97, v95);
        *(v100 + v99) = v144;

        goto LABEL_20;
      }

      v92 = sub_100754754();

      if (v92)
      {
        goto LABEL_33;
      }

      type metadata accessor for ArtworkSectionBackgroundView();
      if (sub_1007539C4() == a1 && v101 == v139)
      {

LABEL_38:
        v103 = sub_10000C518(&qword_1009399A8, &qword_1007C3B10);
        v104 = v148;
        *(v148 + 24) = v103;
        v104[4] = sub_100150440(&qword_1009399B0, &qword_1009399A8, &qword_1007C3B10);
        v149 = sub_10000D134(v104);
        v148 = sub_1007539C4();
        sub_1007539D4();
        v105 = v146;
        v106 = v147;
        v107 = v145;
        (*(v147 + 16))(v145, v28, v146);
        v108 = (*(v106 + 80) + 16) & ~*(v106 + 80);
        v109 = (v143 + v108 + 7) & 0xFFFFFFFFFFFFFFF8;
        v110 = swift_allocObject();
        (*(v106 + 32))(v110 + v108, v107, v105);
        *(v110 + v109) = v144;

        goto LABEL_20;
      }

      v102 = sub_100754754();

      if (v102)
      {
        goto LABEL_38;
      }

      type metadata accessor for InteractiveSectionBackgroundView(0);
      if (sub_1007539C4() == a1 && v111 == v139)
      {

LABEL_43:
        v113 = sub_10000C518(&qword_100939998, &qword_1007C3B08);
        v114 = v148;
        *(v148 + 24) = v113;
        v114[4] = sub_100150440(&qword_1009399A0, &qword_100939998, &qword_1007C3B08);
        v149 = sub_10000D134(v114);
        v148 = sub_1007539C4();
        sub_1007539D4();
        v115 = swift_allocObject();
        swift_weakInit();
        v116 = v146;
        v117 = v147;
        v118 = v145;
        (*(v147 + 16))(v145, v28, v146);
        v119 = (*(v117 + 80) + 24) & ~*(v117 + 80);
        v120 = swift_allocObject();
        *(v120 + 16) = v115;
        (*(v117 + 32))(v120 + v119, v118, v116);
        goto LABEL_20;
      }

      v112 = sub_100754754();

      if (v112)
      {
        goto LABEL_43;
      }

      type metadata accessor for EditorsChoiceBackgroundView();
      if (sub_1007539C4() == a1 && v121 == v139)
      {

LABEL_48:
        v123 = sub_10000C518(&qword_100939988, &qword_1007C3B00);
        v124 = v148;
        *(v148 + 24) = v123;
        v124[4] = sub_100150440(&qword_100939990, &qword_100939988, &qword_1007C3B00);
        v149 = sub_10000D134(v124);
        v148 = sub_1007539C4();
        sub_1007539D4();
        v125 = v146;
        v126 = v147;
        v127 = v145;
        (*(v147 + 16))(v145, v28, v146);
        v128 = (*(v126 + 80) + 16) & ~*(v126 + 80);
        v129 = (v143 + v128 + 7) & 0xFFFFFFFFFFFFFFF8;
        v130 = swift_allocObject();
        (*(v126 + 32))(v130 + v128, v127, v125);
        *(v130 + v129) = v144;

        goto LABEL_20;
      }

      v122 = sub_100754754();

      if (v122)
      {
        goto LABEL_48;
      }

      sub_100748754();
      if (sub_100748734() == a1 && v131 == v139)
      {
        goto LABEL_51;
      }

      v132 = sub_100754754();

      if (v132)
      {
        goto LABEL_53;
      }

      if (sub_100748744() == a1 && v135 == v139)
      {
LABEL_51:
      }

      else
      {
        v136 = sub_100754754();

        if ((v136 & 1) == 0)
        {
          v137 = v148;
          *(v148 + 32) = 0;
          result = 0.0;
          *v137 = 0u;
          v137[1] = 0u;
          return result;
        }
      }

LABEL_53:
      v133 = sub_10000C518(&qword_100929BC0, &qword_1007ADE10);
      v134 = v148;
      *(v148 + 24) = v133;
      v134[4] = sub_100150440(&qword_100929BC8, &qword_100929BC0, &qword_1007ADE10);
      sub_10000D134(v134);
      sub_100748724();
      return result;
    }
  }

  v29 = a3;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v30 = *(v15 + 8);
  v30(v23, v14);
  if (!v150)
  {
    v32 = v140;
    v33 = v149;
    goto LABEL_14;
  }

  v31 = sub_100743904();

  v32 = v140;
  v33 = v149;
  if ((v31 & 1) == 0)
  {
LABEL_14:
    sub_100747C04();
    swift_getKeyPath();
    sub_1007525B4();

    v30(v20, v14);
    v44 = (*(v141 + 88))(v33, v32);
    v45 = v147;
    if (v44 != enum case for ShelfBackground.interactive(_:))
    {
      v55 = sub_10000C518(&qword_100929BD0, qword_1007ADE18);
      v56 = v148;
      *(v148 + 24) = v55;
      v56[4] = sub_100150440(&qword_100929BD8, &qword_100929BD0, qword_1007ADE18);
      sub_10000D134(v56);
      v148 = sub_100753094();
      v140 = v57;
      type metadata accessor for TitleHeaderView(0);
      v58 = sub_1007539D4();
      v138 = v59;
      v139 = v58;
      v60 = v29;
      v61 = swift_allocObject();
      swift_weakInit();
      v63 = v145;
      v62 = v146;
      (*(v45 + 16))(v145, v60, v146);
      v64 = (*(v45 + 80) + 24) & ~*(v45 + 80);
      v65 = (v143 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
      v66 = swift_allocObject();
      *(v66 + 16) = v61;
      (*(v45 + 32))(v66 + v64, v63, v62);
      *(v66 + v65) = v142;

      sub_10074D744();
      (*(v141 + 8))(v149, v32);
      return result;
    }

    v46 = sub_10000C518(&qword_1009399E8, &unk_1007C3B40);
    v47 = v148;
    *(v148 + 24) = v46;
    v47[4] = sub_100150440(&unk_1009399F0, &qword_1009399E8, &unk_1007C3B40);
    v149 = sub_10000D134(v47);
    v148 = sub_100753094();
    v141 = v48;
    type metadata accessor for InteractiveTitleHeaderView(0);
    sub_1007539D4();
    v49 = swift_allocObject();
    swift_weakInit();
    v51 = v145;
    v50 = v146;
    (*(v45 + 16))(v145, v29, v146);
    v52 = (*(v45 + 80) + 24) & ~*(v45 + 80);
    v53 = (v143 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
    v54 = swift_allocObject();
    *(v54 + 16) = v49;
    (*(v45 + 32))(v54 + v52, v51, v50);
    *(v54 + v53) = v142;

    goto LABEL_20;
  }

  v34 = sub_10000C518(&qword_1009358B8, &qword_1007BDD08);
  v35 = v148;
  *(v148 + 24) = v34;
  v35[4] = sub_100150440(&unk_1009358C0, &qword_1009358B8, &qword_1007BDD08);
  v149 = sub_10000D134(v35);
  v148 = sub_100753094();
  v141 = v36;
  type metadata accessor for ShelfHeaderView(0);
  sub_1007539D4();
  v37 = swift_allocObject();
  swift_weakInit();
  v39 = v146;
  v38 = v147;
  v40 = v145;
  (*(v147 + 16))(v145, v29, v146);
  v41 = (*(v38 + 80) + 24) & ~*(v38 + 80);
  v42 = (v143 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  *(v43 + 16) = v37;
  (*(v38 + 32))(v43 + v41, v40, v39);
  *(v43 + v42) = v142;

LABEL_20:
  sub_10074D744();
  return result;
}

uint64_t sub_100499B68(uint64_t a1, int *a2)
{
  v56 = a2;
  v3 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v3 - 8);
  v60 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10074F704();
  v61 = *(v5 - 8);
  v62 = v5;
  __chkstk_darwin(v5);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v58 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v57 = &v54 - v12;
  __chkstk_darwin(v13);
  v55 = &v54 - v14;
  __chkstk_darwin(v15);
  v17 = &v54 - v16;
  __chkstk_darwin(v18);
  v20 = &v54 - v19;
  __chkstk_darwin(v21);
  v23 = &v54 - v22;
  __chkstk_darwin(v24);
  v26 = &v54 - v25;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v27 = *(v9 + 8);
  v27(v26, v8);
  v28 = v68;
  if (!v68)
  {
    goto LABEL_16;
  }

  v29 = v67;

  v30 = (v28 >> 56) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v30 = v29 & 0xFFFFFFFFFFFFLL;
  }

  if (!v30)
  {
LABEL_16:
    sub_100747C04();
    swift_getKeyPath();
    sub_1007525B4();

    v27(v23, v8);
    if (!v67)
    {
      return 0;
    }

    v31 = sub_100743A34();

    if ((v31 & 1) == 0)
    {
      return 0;
    }
  }

  sub_100747BC4();
  sub_10074FC24();
  sub_10074F674();
  v33 = v32;
  v35 = v34;
  (*(v61 + 8))(v7, v62);
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v27(v20, v8);
  v36 = v67;
  if (!v67)
  {
    goto LABEL_12;
  }

  if ((sub_100743904() & 1) == 0)
  {

LABEL_12:
    v38 = sub_10049C4B4(v33, v35);
    v40 = v39;
    v62 = type metadata accessor for TitleHeaderView(0);
    sub_100747C04();
    swift_getKeyPath();
    sub_1007525B4();

    v27(v17, v8);
    v61 = v67;
    v56 = v68;
    v41 = v55;
    sub_100747C04();
    swift_getKeyPath();
    sub_1007525B4();

    v27(v41, v8);
    v42 = v66;
    v43 = v57;
    sub_100747C04();
    swift_getKeyPath();
    sub_1007525B4();

    v27(v43, v8);
    v45 = v64;
    v44 = v65;
    v46 = v58;
    sub_100747C04();
    swift_getKeyPath();
    sub_1007525B4();

    v27(v46, v8);
    v47 = v63;
    v48 = sub_10049C82C();
    v49 = v60;
    (*(*v59 + 192))(a1);
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    v53 = sub_100747BA4();
    swift_getObjectType();
    sub_1001072B0(v61, v56, v42, v45, v44, v47, 0, 0, v33, v35, v38, v40, UIEdgeInsetsZero.top, left, bottom, right, 0, 0, v48, v49, 1, v53);
    swift_unknownObjectRelease();

    sub_10049E22C(v49, type metadata accessor for TitleHeaderView.Style);
    return *&v33;
  }

  type metadata accessor for ShelfHeaderView(0);
  v33 = sub_100060B24(v36, a1, v33, v35);

  return *&v33;
}

uint64_t sub_10049A228(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1007457B4();
  v108 = *(v6 - 8);
  v109 = v6;
  __chkstk_darwin(v6);
  v107 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_10074E984();
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v100 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100752AC4();
  v105 = *(v9 - 8);
  v106 = v9;
  __chkstk_darwin(v9);
  v99 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v98 = &v85 - v12;
  __chkstk_darwin(v13);
  v104 = &v85 - v14;
  v94 = sub_100747C14();
  v93 = *(v94 - 8);
  __chkstk_darwin(v94);
  v92 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = v15;
  __chkstk_darwin(v16);
  v90 = &v85 - v17;
  v18 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  __chkstk_darwin(v18 - 8);
  v87 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v86);
  v110 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_10074F284();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v22 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v101 = *(v23 - 8);
  __chkstk_darwin(v23);
  v97 = &v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v85 - v26;
  v114 = a2;
  sub_100747C04();
  sub_1007442C4();
  sub_100752764();
  v95 = a3;
  sub_100752D34();
  v111 = v115;
  swift_getKeyPath();
  sub_1007525B4();

  v28 = v115;
  v29 = OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowArtwork;
  v30 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowArtwork);

  sub_100100BC8(v28, v31);
  *(a1 + v29) = v28;

  sub_100100BDC(v30);

  swift_getKeyPath();
  v112 = v23;
  v113 = v27;
  sub_1007525B4();

  v32 = v115;
  v33 = v116;
  v34 = (a1 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowText);
  v36 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowText);
  v35 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowText + 8);

  sub_1001005A8(v32, v33);
  *v34 = v32;
  v34[1] = v33;

  sub_10010063C(v36, v35);

  if (*(a1 + v29))
  {
    v37 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowArtworkView);
    if (v37)
    {

      v38 = v37;
      sub_10074F2A4();
      sub_10074F294();
      sub_10074F254();
      (*(v88 + 8))(v22, v89);
      sub_10074F374();
      sub_1007433C4();
      sub_10049E28C(&qword_100925570, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      sub_100744204();
    }
  }

  swift_getKeyPath();
  sub_1007525B4();

  v39 = v115;
  v40 = OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleArtwork;
  v41 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleArtwork);

  sub_100100D68(v39, v42);
  *(a1 + v40) = v39;

  sub_100100E7C(v41);

  v43 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleLabel);
  swift_getKeyPath();
  sub_1007525B4();

  if (v116)
  {
    v44 = sub_100753064();
  }

  else
  {
    v44 = 0;
  }

  [v43 setText:v44];

  v45 = *(a1 + v40);
  if (v45)
  {
    v46 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleArtworkView);
    if (v46)
    {
      v47 = v110;
      (*((swift_isaMask & *a1) + 0x1C0))();
      v48 = v87;
      sub_10015027C(v47 + *(v86 + 20), v87);

      v49 = v46;
      sub_10049E22C(v47, type metadata accessor for TitleHeaderView.Style);
      sub_1005E530C(v45, v48, a1);
      sub_10049E22C(v48, type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_10074F294();
      sub_10074F254();
      (*(v88 + 8))(v22, v89);
      sub_10074F374();
      sub_1007433C4();
      sub_10049E28C(&qword_100925570, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      sub_100744204();
    }
  }

  v50 = v93;
  v51 = *(v93 + 16);
  v52 = v90;
  v53 = v114;
  v54 = v94;
  v51(v90, v114, v94);
  v55 = v92;
  v51(v92, v52, v54);
  v56 = (*(v50 + 80) + 24) & ~*(v50 + 80);
  v57 = swift_allocObject();
  v58 = v96;
  *(v57 + 16) = v96;
  (*(v50 + 32))(v57 + v56, v52, v54);
  v59 = (a1 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleLabelNumberOfLines);
  *v59 = sub_10049E1C0;
  v59[1] = v57;

  [v43 setNumberOfLines:sub_10049C82C()];

  (*(v50 + 8))(v55, v54);
  v60 = v110;
  (*(*v58 + 192))(v53);
  (*((swift_isaMask & *a1) + 0x1C8))(v60);
  v61 = *(a1 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_detailLabel);
  if (v61)
  {
    swift_getKeyPath();
    v62 = v61;
    sub_1007525B4();

    if (v116)
    {
      v63 = sub_100753064();
    }

    else
    {
      v63 = 0;
    }

    [v62 setText:v63];
  }

  sub_10049B138(a1, v114, v95);
  v115 = sub_100747BF4();
  v64 = sub_100754714();
  v118[3] = &type metadata for String;
  v118[0] = v64;
  v118[1] = v65;
  sub_100747BE4();
  v66 = sub_1007544A4();
  v68 = v67;
  sub_100016994(&v115);
  v117 = &type metadata for String;
  v115 = v66;
  v116 = v68;
  v69 = v99;
  sub_100752A94();
  sub_10000C8CC(&v115, &unk_100923520, &qword_1007A5A70);
  sub_10000C8CC(v118, &unk_100923520, &qword_1007A5A70);
  swift_getKeyPath();
  v70 = v100;
  v71 = v112;
  v72 = v113;
  sub_1007525B4();

  v73 = sub_10074E974();
  v75 = v74;
  (*(v102 + 8))(v70, v103);
  v117 = &type metadata for String;
  v115 = v73;
  v116 = v75;
  v76 = v98;
  sub_100752AA4();
  v77 = v106;
  v78 = *(v105 + 8);
  v78(v69, v106);
  sub_10000C8CC(&v115, &unk_100923520, &qword_1007A5A70);
  swift_getKeyPath();
  sub_1007525B4();

  v79 = *(v118[0] + 16);

  v117 = &type metadata for Int;
  v115 = v79;
  v80 = v104;
  sub_100752AA4();
  v78(v76, v77);
  sub_10000C8CC(&v115, &unk_100923520, &qword_1007A5A70);
  sub_100753C74();
  v78(v80, v77);
  v81 = v97;
  sub_100747C04();
  swift_getKeyPath();
  v82 = v107;
  sub_1007525B4();

  v83 = *(v101 + 8);
  v83(v81, v71);
  [a1 setOverrideUserInterfaceStyle:sub_1002EF020()];
  (*(v108 + 8))(v82, v109);
  [a1 setNeedsLayout];

  return (v83)(v72, v71);
}

double sub_10049B138(void *a1, uint64_t a2, uint64_t a3)
{
  v46 = a3;
  v47 = a1;
  v4 = sub_100752AC4();
  v44 = *(v4 - 8);
  v45 = v4;
  __chkstk_darwin(v4);
  v43 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100747C14();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000C518(&qword_10093FDB0, &unk_1007AC460);
  __chkstk_darwin(v10 - 8);
  v12 = &v41 - v11;
  v13 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v48 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v41 - v14;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  if (v49[0])
  {
    v41 = v15;
    v42 = v13;
    v16 = a2;
    sub_10049B838(a2, v12);
    v17 = type metadata accessor for Accessory(0);
    (*(*(v17 - 8) + 56))(v12, 0, 1, v17);
    v18 = v47;
    (*((swift_isaMask & *v47) + 0x268))(v12, v46);
    sub_10000C8CC(v12, &qword_10093FDB0, &unk_1007AC460);
    v19 = swift_allocObject();
    swift_weakInit();
    (*(v7 + 16))(&v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v16, v6);
    v20 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = v19;
    (*(v7 + 32))(v21 + v20, v9, v6);
    v22 = (v18 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_accessoryAction);
    v23 = *(v18 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_accessoryAction);
    v24 = *(v18 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_accessoryAction + 8);
    *v22 = sub_10049E14C;
    v22[1] = v21;

    sub_1000164A8(v23, v24);

    v25 = *(v18 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_accessoryView);
    if (v25)
    {
      v26 = v25;
      v27 = sub_100747BF4();
      v50[3] = &type metadata for Int;
      v50[0] = v27;
      sub_100747BE4();
      v28 = sub_1007544A4();
      v30 = v29;
      sub_100016994(v49);
      v49[3] = &type metadata for String;
      v49[0] = v28;
      v49[1] = v30;
      v31 = v43;
      sub_100752A94();
      sub_10000C8CC(v49, &unk_100923520, &qword_1007A5A70);
      sub_10000C8CC(v50, &unk_100923520, &qword_1007A5A70);
      sub_100753C74();

      (*(v44 + 8))(v31, v45);
    }

    else
    {
    }

    (*(v48 + 8))(v41, v42);
  }

  else
  {
    v33 = v46;
    v32 = v47;
    swift_getKeyPath();
    sub_1007525B4();

    if (v49[0])
    {
      *v12 = v49[0];
      *(v12 + 8) = xmmword_1007C3790;
      v34 = type metadata accessor for Accessory(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v34 - 8) + 56))(v12, 0, 1, v34);
      v35 = *((swift_isaMask & *v32) + 0x268);

      v35(v12, v33);

      sub_10000C8CC(v12, &qword_10093FDB0, &unk_1007AC460);
      (*(v48 + 8))(v15, v13);
    }

    else
    {
      v37 = type metadata accessor for Accessory(0);
      (*(*(v37 - 8) + 56))(v12, 1, 1, v37);
      (*((swift_isaMask & *v32) + 0x268))(v12, v33);
      sub_10000C8CC(v12, &qword_10093FDB0, &unk_1007AC460);
      (*(v48 + 8))(v15, v13);
      v38 = (v32 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_accessoryAction);
      v39 = *(v32 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_accessoryAction);
      v40 = *(v32 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_accessoryAction + 8);
      *v38 = 0;
      v38[1] = 0;
      return sub_1000164A8(v39, v40);
    }
  }

  return result;
}

double sub_10049B838@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - v6;
  v8 = sub_10074EAB4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v22 - v13;
  v15 = sub_10074ECB4();
  v23 = v16;
  v24 = v15;
  v25 = a1;
  sub_100747BD4();
  sub_10074EA94();
  sub_10049E28C(&unk_100925360, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
  v17 = sub_100754324();
  v18 = *(v9 + 8);
  v18(v11, v8);
  v18(v14, v8);
  v19 = 0;
  if (v17)
  {
    sub_10000D198();
    v19 = sub_100753DD4();
  }

  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  (*(v5 + 8))(v7, v4);
  v20 = v23;
  *a2 = v24;
  *(a2 + 8) = v20;
  *(a2 + 16) = v19;
  *(a2 + 24) = v26;
  type metadata accessor for Accessory(0);
  swift_storeEnumTagMultiPayload();
  return result;
}

uint64_t sub_10049BACC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10074E9B4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

double sub_10049BAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - v11;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    sub_100747C04();
    swift_getKeyPath();
    sub_1007525B4();

    (*(v10 + 8))(v12, v9);
    v16 = v18;
    if (v18)
    {
      v17 = swift_unknownObjectWeakLoadStrong();
      sub_10005E8C0(v16, v17, *(v15 + 32), a6, a7);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

double sub_10049BC94(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10049A228(a1, a6, a7);
  }

  return result;
}

double sub_10049BD10(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10049E7C4(a1, a6);
  }

  return result;
}

uint64_t sub_10049BD84(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v19 - v12 + 16;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_10049A228(*&a1[OBJC_IVAR____TtC22SubscribePageExtension26InteractiveTitleHeaderView_titleView], a6, a7);
    type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
    sub_100752764();
    sub_100752D34();
    v15 = v19[0];
    sub_100747C04();
    swift_getKeyPath();
    sub_1007525B4();

    (*(v11 + 8))(v13, v10);
    swift_beginAccess();
    if (*(*(v15 + 16) + 16))
    {

      sub_100412148(v19);
      if (v16)
      {

        sub_100016994(v19);

        v19[3] = type metadata accessor for InteractiveTitleHeaderView(0);
        v19[4] = &off_1008683F8;
        v19[0] = a1;
        v17 = a1;
        sub_10004F9EC(v19);

        return sub_10000C8CC(v19, &unk_1009242D0, &qword_1007A7810);
      }
    }

    else
    {
    }

    return sub_100016994(v19);
  }

  return result;
}

double sub_10049BFEC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v14 - v8;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
    sub_100752764();

    sub_100752D34();

    v11 = v15[0];
    sub_100747C04();
    swift_getKeyPath();
    sub_1007525B4();

    (*(v7 + 8))(v9, v6);
    swift_beginAccess();
    if (*(*(v11 + 16) + 16))
    {

      sub_100412148(v15);
      if (v12)
      {

        sub_100016994(v15);

        v14[3] = type metadata accessor for InteractiveSectionBackgroundView(0);
        v14[4] = &off_1008761A8;
        v14[0] = a1;
        v13 = a1;
        sub_10004F9EC(v14);

        sub_10000C8CC(v14, &unk_1009242D0, &qword_1007A7810);
        return result;
      }
    }

    sub_100016994(v15);
  }

  return result;
}

void sub_10049C240(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t, uint64_t))
{
  v5 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - v7;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = swift_unknownObjectWeakLoadStrong();
    v12 = *(v10 + 32);

    if (v11)
    {
      ObjectType = swift_getObjectType();
      sub_100747C04();
      a4(v8, ObjectType, v12);
      swift_unknownObjectRelease();
      (*(v6 + 8))(v8, v5);
    }
  }
}

uint64_t sub_10049C448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for GenericPageShelfSupplementaryProvider();
  v7 = swift_allocObject();
  *(v7 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v7 + 32) = a5;
  swift_unknownObjectWeakAssign();
  *(v7 + 16) = a2;
  return v7;
}

double sub_10049C4B4(double a1, double a2)
{
  v4 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v28 - v9;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v11 = *(v5 + 8);
  v11(v10, v4);
  if (v29)
  {
    v12 = sub_100747B94();
    sub_10074ECB4();
    v14 = v13;
    if (qword_1009202A0 != -1)
    {
      swift_once();
    }

    v15 = qword_100928AB8;
    if (v14)
    {
      v16 = sub_100753064();
    }

    else
    {
      v16 = 0;
    }

    [v15 setTitle:v16 forState:0];

    [v15 setImage:0 forState:0];
    v19 = [v15 titleLabel];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
      v22 = [v21 font];
      if (v22)
      {
        v23 = v22;
        v24 = [v22 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v12];
      }

      else
      {
        v24 = 0;
      }

      [v21 setFont:v24];
    }

    [v15 sizeThatFits:{a1, a2}];
    v26 = v25;

    v18 = v26 + 0.0;
    [v15 setTitle:0 forState:0];
    [v15 setImage:0 forState:0];
  }

  else
  {
    sub_100747C04();
    swift_getKeyPath();
    sub_1007525B4();

    v11(v7, v4);
    if (v29 && (v17 = sub_100743A34(), , (v17 & 1) != 0))
    {
      return 156.0;
    }

    else
    {
      return 0.0;
    }
  }

  return v18;
}

uint64_t sub_10049C82C()
{
  v0 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = sub_100747B94();
  v8 = sub_100753804();

  if (v8)
  {
    return 0;
  }

  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v10 = *(v1 + 8);
  v10(v6, v0);
  if (v13)
  {

    return 1;
  }

  else
  {
    sub_100747C04();
    swift_getKeyPath();
    sub_1007525B4();

    v10(v3, v0);
    if (v13 && (v11 = sub_100743A34(), , (v11 & 1) != 0))
    {
      return 3;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_10049CA04()
{
  v0 = sub_10000C518(&qword_10092F318, &unk_1007C3860);
  __chkstk_darwin(v0 - 8);
  v2 = &v21 - v1;
  v22 = sub_10074F704();
  v3 = *(v22 - 8);
  __chkstk_darwin(v22);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v21 - v11;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v13 = *(v7 + 8);
  v13(v12, v6);
  v14 = v24;
  if (!v24)
  {
    return 0;
  }

  v21 = v23;
  sub_100747BC4();
  sub_10074FC24();
  sub_10074F674();
  v16 = v15;
  v18 = v17;
  (*(v3 + 8))(v5, v22);
  v19 = sub_100747B94();
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v13(v9, v6);
  sub_10059B0F0(v21, v14, v19, v2, v16, v18);

  sub_10000C8CC(v2, &qword_10092F318, &unk_1007C3860);
  return *&v16;
}

void *sub_10049CD00(uint64_t a1, int *a2)
{
  v2 = COERCE_DOUBLE(sub_100499B68(a1, a2));
  if ((v4 & 1) != 0 || ((v5 = v2, v6 = v3, v3 >= v2) ? (v7 = v2) : (v7 = v3), v7 <= 0.0))
  {
    v12 = 0;
  }

  else
  {
    v8 = objc_opt_self();
    v9 = [v8 absoluteDimension:v5];
    v10 = [v8 estimatedDimension:v6];
    v11 = [objc_opt_self() sizeWithWidthDimension:v9 heightDimension:v10];

    v12 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v11 elementKind:UICollectionElementKindSectionHeader alignment:1];
    v13 = v12;
  }

  v14 = COERCE_DOUBLE(sub_10049CA04());
  if ((v16 & 1) != 0 || ((v17 = v14, v18 = v15, v15 >= v14) ? (v19 = v14) : (v19 = v15), v19 <= 0.0))
  {
    v24 = 0;
  }

  else
  {
    v20 = objc_opt_self();
    v21 = [v20 absoluteDimension:v17];
    v22 = [v20 absoluteDimension:v18];
    v23 = [objc_opt_self() sizeWithWidthDimension:v21 heightDimension:v22];

    v24 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v23 elementKind:UICollectionElementKindSectionFooter alignment:5];
    v25 = v24;
  }

  v26 = 0;
  v30[4] = v12;
  v30[5] = v24;
  while (v26 != 2)
  {
    v27 = v30[v26++ + 4];
    if (v27)
    {
      v28 = v27;
      sub_100753284();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100753304();
      }

      sub_100753344();
    }
  }

  sub_10000C518(&qword_100939978, &qword_1007C3858);
  swift_arrayDestroy();
  return _swiftEmptyArrayStorage;
}

uint64_t sub_10049CFE8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10074E9B4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_10049D038()
{
  v0 = sub_1007457B4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v42 - v6;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  (*(v5 + 8))(v7, v4);
  v8 = (*(v1 + 88))(v3, v0);
  if (v8 == enum case for ShelfBackground.artwork(_:))
  {
    (*(v1 + 96))(v3, v0);

    v9 = *(sub_10000C518(&qword_100940630, &qword_1007C18F0) + 48);
    sub_10000C518(&unk_1009231A0, qword_1007A5810);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1007A5CF0;
    v11 = objc_opt_self();
    type metadata accessor for ArtworkSectionBackgroundView();
    sub_1007539C4();
    v12 = sub_100753064();

    v13 = [v11 backgroundDecorationItemWithElementKind:v12];

    *(v10 + 32) = v13;
    v14 = sub_100748E34();
    (*(*(v14 - 8) + 8))(&v3[v9], v14);
  }

  else if (v8 == enum case for ShelfBackground.gradient(_:))
  {
    (*(v1 + 96))(v3, v0);

    v15 = sub_10000C518(&unk_100940620, &qword_1007C3900);
    v16 = v15[12];
    v17 = v15[16];
    v18 = v15[20];
    sub_10000C518(&unk_1009231A0, qword_1007A5810);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1007A5CF0;
    v19 = objc_opt_self();
    type metadata accessor for GradientSectionBackgroundView();
    sub_1007539C4();
    v20 = sub_100753064();

    v21 = [v19 backgroundDecorationItemWithElementKind:v20];

    *(v10 + 32) = v21;
    v22 = sub_100748E34();
    (*(*(v22 - 8) + 8))(&v3[v18], v22);
    v23 = sub_10074D3E4();
    v24 = *(*(v23 - 8) + 8);
    v24(&v3[v17], v23);
    v24(&v3[v16], v23);
  }

  else if (v8 == enum case for ShelfBackground.materialGradient(_:))
  {
    (*(v1 + 96))(v3, v0);
    v25 = *(sub_10000C518(&qword_1009245B8, &unk_1007A7AE0) + 48);
    sub_10000C518(&unk_1009231A0, qword_1007A5810);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1007A5CF0;
    v26 = objc_opt_self();
    type metadata accessor for MaterialGradientSectionBackgroundView();
    sub_1007539C4();
    v27 = sub_100753064();

    v28 = [v26 backgroundDecorationItemWithElementKind:v27];

    *(v10 + 32) = v28;
    v29 = sub_100748E34();
    (*(*(v29 - 8) + 8))(&v3[v25], v29);
    v30 = sub_10074DDF4();
    (*(*(v30 - 8) + 8))(v3, v30);
  }

  else if (v8 == enum case for ShelfBackground.none(_:))
  {
    return _swiftEmptyArrayStorage;
  }

  else if (v8 == enum case for ShelfBackground.interactive(_:))
  {
    sub_10000C518(&unk_1009231A0, qword_1007A5810);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1007A5CF0;
    v31 = objc_opt_self();
    type metadata accessor for InteractiveSectionBackgroundView(0);
    sub_1007539C4();
    v32 = sub_100753064();

    v33 = [v31 backgroundDecorationItemWithElementKind:v32];

    *(v10 + 32) = v33;
  }

  else
  {
    v34 = enum case for ShelfBackground.editorsChoice(_:);
    v35 = v8;
    sub_10000C518(&unk_1009231A0, qword_1007A5810);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1007A5CF0;
    v36 = objc_opt_self();
    if (v35 == v34)
    {
      type metadata accessor for EditorsChoiceBackgroundView();
      sub_1007539C4();
      v37 = sub_100753064();

      v38 = [v36 backgroundDecorationItemWithElementKind:v37];

      *(v10 + 32) = v38;
    }

    else
    {
      type metadata accessor for GradientSectionBackgroundView();
      sub_1007539C4();
      v39 = sub_100753064();

      v40 = [v36 backgroundDecorationItemWithElementKind:v39];

      *(v10 + 32) = v40;
      (*(v1 + 8))(v3, v0);
    }
  }

  return v10;
}

uint64_t sub_10049D76C(uint64_t a1, void (*a2)(char *, __n128))
{
  v21 = a2;
  v2 = sub_100754724();
  v18 = *(v2 - 8);
  v19 = v2;
  __chkstk_darwin(v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1007457B4();
  v5 = *(v20 - 8);
  __chkstk_darwin(v20);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v18 - v13;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v15 = *(v9 + 8);
  v15(v14, v8);
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v15(v11, v8);
  if (v22)
  {
    if (sub_100743A34())
    {
      if (qword_100921708 != -1)
      {
        swift_once();
      }

      v16 = sub_100750B04();
      sub_10000D0FC(v16, qword_100982098);
      sub_100747BA4();
      sub_1007502D4();
      sub_100750564();

      swift_unknownObjectRelease();
      (*(v18 + 8))(v4, v19);
    }

    else
    {
    }
  }

  (v21)(v7);
  return (*(v5 + 8))(v7, v20);
}

uint64_t sub_10049DAC8()
{
  v0 = sub_100754724();
  v16 = *(v0 - 8);
  v17 = v0;
  __chkstk_darwin(v0);
  v2 = &v16 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1007457B4();
  v3 = *(v18 - 8);
  __chkstk_darwin(v18);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v16 - v11;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v13 = *(v7 + 8);
  v13(v12, v6);
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v13(v9, v6);
  if (v19)
  {
    if (sub_100743A34())
    {
      if (qword_100921708 != -1)
      {
        swift_once();
      }

      v14 = sub_100750B04();
      sub_10000D0FC(v14, qword_100982098);
      sub_100747BA4();
      sub_1007502D4();
      sub_100750564();

      swift_unknownObjectRelease();
      (*(v16 + 8))(v2, v17);
    }

    else
    {
    }
  }

  return (*(v3 + 8))(v5, v18);
}

void *sub_10049DE10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a2;
  v5 = sub_1007457B4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - v11;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  (*(v10 + 8))(v12, v9);
  v13 = (*(v6 + 88))(v8, v5);
  LODWORD(v10) = enum case for ShelfBackground.interactive(_:);
  (*(v6 + 8))(v8, v5);
  if (v13 != v10)
  {
    return _swiftEmptyArrayStorage;
  }

  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  sub_100752764();
  sub_100752D34();
  v14 = sub_10031557C(a1, v18, a3);
  sub_10000C518(&qword_10092F170, &qword_1007B5010);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1007A5A00;
  v16 = sub_10049E28C(&qword_100939980, type metadata accessor for InteractiveSectionBackgroundScrollObserver, &unk_1007A7720);
  *(v15 + 32) = v14;
  *(v15 + 40) = v16;

  return v15;
}

uint64_t sub_10049E0BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10074EA14();
  *a1 = result;
  return result;
}

uint64_t sub_10049E0E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10074EA24();
  *a1 = result;
  return result;
}

uint64_t sub_10049E114()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10049E164@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10074EA04();
  *a1 = result;
  return result;
}

uint64_t sub_10049E194@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10074E9E4();
  *a1 = result;
  return result;
}

uint64_t sub_10049E1C0()
{
  sub_100747C14();

  return sub_10049C82C();
}

uint64_t sub_10049E22C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10049E28C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10049E2D8()
{
  sub_100747C14();

  return sub_10049DAC8();
}

double sub_10049E338(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100747C14();
  v9 = *(v4 + 16);

  return sub_10049BFEC(a1, a2, a3, a4, v9);
}

uint64_t sub_10049E3D4()
{
  v1 = *(sub_100747C14() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  return sub_100498640(v0 + v2, *(*(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)) + 16));
}

uint64_t sub_10049E480()
{
  v1 = sub_100747C14();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10049E5F4()
{
  v1 = sub_100747C14();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10049E6E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, unint64_t, uint64_t))
{
  v10 = *(sub_100747C14() - 8);
  v11 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v12 = *(v5 + 16);
  v13 = *(v5 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a5(a1, a2, a3, a4, v12, v5 + v11, v13);
}

double sub_10049E7C4(char *a1, uint64_t a2)
{
  v42 = a1;
  v3 = sub_100747C14();
  v40 = *(v3 - 8);
  v41 = v3;
  __chkstk_darwin(v3);
  v38 = v4;
  v39 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1007457B4();
  v36 = *(v5 - 8);
  v37 = v5;
  __chkstk_darwin(v5);
  v35 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C518(&qword_10092F318, &unk_1007C3860);
  __chkstk_darwin(v7 - 8);
  v9 = &v34 - v8;
  v10 = sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v34 - v15;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v17 = *(v11 + 8);
  v17(v16, v10);
  v18 = v44;
  v34 = v43;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v17(v13, v10);
  if (qword_100921908 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for ShelfFooterView.Style(0);
  v20 = sub_10000D0FC(v19, qword_1009826A0);
  v21 = v42;
  sub_10059BCE0(v34, v18, v20, v9, a2);

  sub_10000C8CC(v9, &qword_10092F318, &unk_1007C3860);
  sub_100747C04();
  swift_getKeyPath();
  v22 = v35;
  sub_1007525B4();

  v17(v16, v10);
  v23 = sub_1002EF020();
  (*(v36 + 8))(v22, v37);
  [v21 setOverrideUserInterfaceStyle:v23];
  v24 = swift_allocObject();
  swift_weakInit();
  v26 = v39;
  v25 = v40;
  v27 = v41;
  (*(v40 + 16))(v39, a2, v41);
  v28 = (*(v25 + 80) + 24) & ~*(v25 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = v24;
  (*(v25 + 32))(v29 + v28, v26, v27);
  v30 = &v21[OBJC_IVAR____TtC22SubscribePageExtension15ShelfFooterView_footerAction];
  v31 = *&v21[OBJC_IVAR____TtC22SubscribePageExtension15ShelfFooterView_footerAction];
  v32 = *&v21[OBJC_IVAR____TtC22SubscribePageExtension15ShelfFooterView_footerAction + 8];
  *v30 = sub_10049EC80;
  v30[1] = v29;

  sub_1000164A8(v31, v32);

  return result;
}

uint64_t LinkableHeaderViewLayout.init(metrics:topSeparator:text:bottomSeparator:)@<X0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, _OWORD *a5@<X8>)
{
  v8 = a1[7];
  a5[6] = a1[6];
  a5[7] = v8;
  v9 = a1[9];
  a5[8] = a1[8];
  a5[9] = v9;
  v10 = a1[3];
  a5[2] = a1[2];
  a5[3] = v10;
  v11 = a1[5];
  a5[4] = a1[4];
  a5[5] = v11;
  v12 = a1[1];
  *a5 = *a1;
  a5[1] = v12;
  sub_100012160(a2, (a5 + 10));
  sub_100012160(a3, a5 + 200);

  return sub_100012160(a4, (a5 + 15));
}

uint64_t sub_10049EDD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_100931390, &qword_1007ABDE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double LinkableHeaderViewLayout.measurements(fitting:in:)(uint64_t a1, double a2, double a3)
{
  swift_getObjectType();

  return sub_10049F2B8(a1, v3, a2, a3);
}

uint64_t LinkableHeaderViewLayout.placeChildren(relativeTo:in:)(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v11 = sub_100754724();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C888(v5 + 20, v5[23]);
  sub_100750414();
  v36 = v16;
  v37 = v15;
  v39.origin.x = a2;
  v39.origin.y = a3;
  v39.size.width = a4;
  v39.size.height = a5;
  MinX = CGRectGetMinX(v39);
  v40.origin.x = a2;
  v40.origin.y = a3;
  v40.size.width = a4;
  v40.size.height = a5;
  MinY = CGRectGetMinY(v40);
  sub_10000C888(v6 + 20, v6[23]);
  sub_100750394();
  v41.origin.x = a2;
  v41.origin.y = a3;
  v41.size.width = a4;
  v41.size.height = a5;
  CGRectGetWidth(v41);
  v18 = v5[3];
  sub_10000C888(v6, v6[3]);
  sub_100536120(v18);
  sub_100750564();
  (*(v12 + 8))(v14, v11);
  v34 = a2;
  v42.origin.x = a2;
  v42.origin.y = a3;
  v42.size.width = a4;
  v42.size.height = a5;
  CGRectGetHeight(v42);
  sub_10000C888(v6 + 25, v6[28]);
  sub_100750404();
  v20 = v19;
  v22 = v21;
  *&v33[1] = a3;
  v33[2] = v23;
  v38 = v24;
  v43.origin.x = a2;
  v43.origin.y = a3;
  v43.size.width = a4;
  v25 = a5;
  v43.size.height = a5;
  v26 = CGRectGetMidX(v43) + v20 * -0.5;
  v44.origin.x = MinX;
  v44.size.height = v36;
  v44.origin.y = MinY;
  v44.size.width = v37;
  MaxY = CGRectGetMaxY(v44);
  sub_10000C888(v6 + 5, v6[8]);
  sub_100750584();
  v29 = MaxY + v28;
  sub_10000C888(v6 + 25, v6[28]);
  sub_100750394();
  sub_10000C888(v6 + 30, v6[33]);
  sub_100750414();
  v36 = v31;
  v37 = v30;
  v45.origin.x = v34;
  v45.origin.y = a3;
  v45.size.width = a4;
  v45.size.height = v25;
  CGRectGetMinX(v45);
  v46.origin.x = v26;
  v46.origin.y = v29;
  v46.size.width = v20;
  v46.size.height = v22;
  CGRectGetMaxY(v46);
  sub_10000C888(v6 + 10, v6[13]);
  sub_100750554();
  sub_10000C888(v6 + 30, v6[33]);
  sub_100750394();
  return sub_100750314();
}

double sub_10049F2B8(uint64_t a1, void *a2, double a3, double a4)
{
  v6 = sub_100754724();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2[3];
  sub_10000C888(a2, v10);
  sub_100536120(v10);
  sub_100750564();
  v11 = *(v7 + 8);
  v11(v9, v6);
  sub_10000C888(a2 + 25, a2[28]);
  sub_100750404();
  sub_100120E28((a2 + 15), v15);
  v12 = v16;
  if (v16)
  {
    sub_10000C888(v15, v16);
    sub_100536120(v12);
    sub_100750564();
    v11(v9, v6);
    sub_10000C620(v15);
  }

  else
  {
    sub_1000F4268(v15);
  }

  sub_10000C888(a2 + 30, a2[33]);
  sub_100750414();
  sub_10000C888(a2 + 20, a2[23]);
  sub_100750414();
  sub_10000C888(a2 + 5, a2[8]);
  sub_100750584();
  sub_10000C888(a2 + 10, a2[13]);
  sub_100750554();
  return a3;
}

uint64_t sub_10049F5C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 280))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10049F608(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
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
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 280) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 280) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10049F6B8(void *a1)
{
  v2 = [a1 view];
  if (v2)
  {
    v3 = v2;
    v6[0] = 0x3FF0000000000000;
    v6[1] = 0;
    v6[2] = 0;
    v6[3] = 0x3FF0000000000000;
    v6[4] = 0;
    v6[5] = 0;
    [v2 setTransform:v6];

    v4 = [a1 view];
    if (v4)
    {
      v5 = v4;
      [v4 setAlpha:1.0];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_10049F824(void *a1)
{
  v2 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
  if (v2)
  {
    v3 = v2;
    v4 = [a1 containerView];
    v5 = [v3 view];
    if (v5)
    {
      v6 = v5;
      [v4 addSubview:v5];

      v7 = [v3 view];
      if (v7)
      {
        v8 = v7;
        CGAffineTransformMakeScale(&v17, 1.15, 1.15);
        [v8 setTransform:&v17];

        v9 = [v3 view];
        if (v9)
        {
          v10 = v9;
          [v9 setAlpha:0.0];

          v11 = objc_opt_self();
          v12 = swift_allocObject();
          *(v12 + 16) = v3;
          *&v17.tx = sub_10049FB14;
          *&v17.ty = v12;
          *&v17.a = _NSConcreteStackBlock;
          *&v17.b = 1107296256;
          *&v17.c = sub_1000CF7B0;
          *&v17.d = &unk_100877550;
          v13 = _Block_copy(&v17);
          v14 = v3;

          v15 = swift_allocObject();
          *(v15 + 16) = a1;
          *&v17.tx = sub_10049FB6C;
          *&v17.ty = v15;
          *&v17.a = _NSConcreteStackBlock;
          *&v17.b = 1107296256;
          *&v17.c = sub_100144DD8;
          *&v17.d = &unk_1008775A0;
          v16 = _Block_copy(&v17);
          swift_unknownObjectRetain();

          [v11 animateWithDuration:0x20000 delay:v13 options:v16 animations:0.25 completion:0.0];
          _Block_release(v16);
          _Block_release(v13);

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

uint64_t sub_10049FADC()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_10049FB1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10049FB34()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10049FB8C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_1002548C4(isUniquelyReferenced_nonNull_native, v11, 1, v3);
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
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_10000C518(&qword_100923378, &qword_1007B4FD0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_10049FD08(uint64_t a1)
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

  v3 = sub_100254EA4(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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

  memcpy(&v3[8 * v8 + 32], (a1 + 32), 8 * v2);

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

void sub_10049FE38(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(a1 + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(a1 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
}

void sub_10049FF7C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_100255708(isUniquelyReferenced_nonNull_native, v11, 1, v3);
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
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_10000C518(&unk_100939AF0, &qword_1007A62F0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_1004A0110(uint64_t a1)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_100255E84(isUniquelyReferenced_nonNull_native, v11, 1, v3);
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
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_1004A0208(uint64_t a1)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_1002563A4(isUniquelyReferenced_nonNull_native, v11, 1, v3);
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
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_1004A02FC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_100255D50(isUniquelyReferenced_nonNull_native, v11, 1, v3);
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
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_10000C518(&qword_10092FE70, &qword_1007A63F0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_1004A0430(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t), __n128 a3)
{
  if (a1 >> 62)
  {
    v6 = sub_100754664();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v3 >> 62))
  {
    v7 = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = __OFADD__(v7, v6);
    v9 = v7 + v6;
    if (!v8)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v16 = sub_100754664();
  v8 = __OFADD__(v16, v6);
  v9 = v16 + v6;
  if (v8)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1004A0FF8(v9, 1, a3);
  v10 = *v3;
  v11 = *v3 & 0xFFFFFFFFFFFFFF8;
  a2(v11 + 8 * *(v11 + 0x10) + 32, (*(v11 + 0x18) >> 1) - *(v11 + 0x10), a1);
  v13 = v12;

  if (v13 < v6)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v13 < 1)
  {
LABEL_9:
    *v3 = v10;
    return;
  }

  v14 = *(v11 + 16);
  v8 = __OFADD__(v14, v13);
  v15 = v14 + v13;
  if (!v8)
  {
    *(v11 + 16) = v15;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
}

void sub_1004A0528(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = *(*v4 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_8;
  }

  v13 = *(v7 + 24) >> 1;
  if (v13 < v9)
  {
    goto LABEL_8;
  }

  if (v5 == a3)
  {
    while (v6 > 0)
    {
      __break(1u);
LABEL_8:
      if (v8 <= v9)
      {
        v14 = v8 + v6;
      }

      else
      {
        v14 = v8;
      }

      isUniquelyReferenced_nonNull_native = sub_100256608(isUniquelyReferenced_nonNull_native, v14, 1, v7);
      v7 = isUniquelyReferenced_nonNull_native;
      v13 = *(isUniquelyReferenced_nonNull_native + 24) >> 1;
      if (v5 != a3)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  v15 = *(v7 + 16);
  if (v13 - v15 < v6)
  {
    goto LABEL_19;
  }

  memcpy((v7 + 16 * v15 + 32), (a2 + 16 * a3), 16 * v6);
  if (v6 <= 0)
  {
LABEL_16:
    swift_unknownObjectRelease();
    *v4 = v7;
    return;
  }

  v16 = *(v7 + 16);
  v17 = __OFADD__(v16, v6);
  v18 = v16 + v6;
  if (!v17)
  {
    *(v7 + 16) = v18;
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
}

id static TodayCardTitleBackingGradient.make(from:)(void *a1)
{
  v2 = [objc_allocWithZone(CAGradientLayer) init];
  v3 = [a1 locations];
  [v2 setLocations:v3];

  [a1 startPoint];
  [v2 setStartPoint:?];
  [a1 endPoint];
  [v2 setEndPoint:?];
  v4 = [a1 type];
  [v2 setType:v4];

  v5 = [a1 colors];
  [v2 setColors:v5];

  v6 = v2;
  v7 = [a1 filters];
  [v6 setFilters:v7];

  return v6;
}

id static TodayCardTitleBackingGradient.make(using:)(uint64_t a1)
{
  v2 = sub_10074FB54();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for TodayCard.Style.automatic(_:) || v7 == enum case for TodayCard.Style.white(_:))
  {
LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  if (v7 != enum case for TodayCard.Style.dark(_:))
  {
    if (v7 != enum case for TodayCard.Style.light(_:))
    {
      v44 = 0;
      v45 = 0xE000000000000000;
      sub_100754534(44);

      v44 = 0xD00000000000002ALL;
      v45 = 0x800000010076F550;
      v46._countAndFlagsBits = sub_10074FB44();
      sub_1007531B4(v46);

      result = sub_100754644();
      __break(1u);
      return result;
    }

    goto LABEL_8;
  }

  v9 = 1;
LABEL_9:
  v10 = [objc_allocWithZone(CAGradientLayer) init];
  sub_100753094();
  if (v9)
  {
    v11 = [objc_opt_self() blackColor];
    v12 = [v11 colorWithAlphaComponent:0.32];
  }

  else
  {
    v12 = [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.32];
  }

  v13 = [v12 CGColor];

  sub_10000C518(&unk_1009231A0, qword_1007A5810);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1007A57A0;
  sub_100016C60(0, &qword_10092BE20, NSNumber_ptr);
  v15 = v13;
  *(v14 + 32) = sub_100753FA4(0);
  *(v14 + 40) = sub_100753F94(0.3);
  *(v14 + 48) = sub_100753F94(0.7);
  *(v14 + 56) = sub_100753F94(1.0);
  isa = sub_100753294().super.isa;

  [v10 setLocations:isa];

  [v10 setStartPoint:{0.5, 0.0}];
  [v10 setEndPoint:{0.5, 1.0}];
  [v10 setType:kCAGradientLayerAxial];
  v17 = [objc_opt_self() clearColor];
  v18 = [v17 CGColor];

  sub_10000C518(&unk_1009259C0, &unk_1007A9270);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1007A97A0;
  type metadata accessor for CGColor(0);
  *(v19 + 32) = v18;
  *(v19 + 56) = v20;
  *(v19 + 64) = v15;
  *(v19 + 88) = v20;
  *(v19 + 96) = v15;
  *(v19 + 152) = v20;
  *(v19 + 120) = v20;
  *(v19 + 128) = v18;
  v21 = v18;
  v43 = v15;
  v42 = v21;
  v22 = sub_100753294().super.isa;

  [v10 setColors:v22];

  v23 = objc_allocWithZone(CAFilter);
  v24 = sub_100753064();

  v25 = [v23 initWithType:v24];

  v26 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterGaussianBlur];
  v27 = sub_10074FC14().super.super.isa;
  v28 = sub_100753064();
  [v26 setValue:v27 forKey:v28];

  v29 = v10;
  v30 = [v29 filters];
  if (v30)
  {
    v31 = v30;
    v32 = sub_1007532A4();
  }

  else
  {
    v32 = _swiftEmptyArrayStorage;
  }

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007A6580;
  v34 = sub_100016C60(0, &qword_1009384C8, CAFilter_ptr);
  *(inited + 32) = v25;
  *(inited + 88) = v34;
  *(inited + 56) = v34;
  *(inited + 64) = v26;
  v44 = v32;
  v41 = v25;
  v35 = v26;
  sub_1004A0110(inited);
  v36 = sub_100753294().super.isa;

  [v29 setFilters:v36];

  sub_10000C518(&unk_100939A90, qword_1007B3AA0);
  v37 = swift_initStackObject();
  *(v37 + 16) = xmmword_1007A79C0;
  *(v37 + 32) = 0x6E6F697469736F70;
  *(v37 + 40) = 0xE800000000000000;
  *(v37 + 48) = [objc_allocWithZone(NSNull) init];
  *(v37 + 56) = 0x6E6564646968;
  *(v37 + 64) = 0xE600000000000000;
  *(v37 + 72) = [objc_allocWithZone(NSNull) init];
  *(v37 + 80) = 0x49726564724F6E6FLL;
  *(v37 + 88) = 0xE90000000000006ELL;
  *(v37 + 96) = [objc_allocWithZone(NSNull) init];
  *(v37 + 104) = 0x4F726564724F6E6FLL;
  *(v37 + 112) = 0xEA00000000007475;
  *(v37 + 120) = [objc_allocWithZone(NSNull) init];
  *(v37 + 128) = 0x726579616C627573;
  *(v37 + 136) = 0xE900000000000073;
  *(v37 + 144) = [objc_allocWithZone(NSNull) init];
  *(v37 + 152) = 0x73746E65746E6F63;
  *(v37 + 160) = 0xE800000000000000;
  *(v37 + 168) = [objc_allocWithZone(NSNull) init];
  *(v37 + 176) = 0x73646E756F62;
  *(v37 + 184) = 0xE600000000000000;
  *(v37 + 192) = [objc_allocWithZone(NSNull) init];
  sub_100413A3C(v37);
  swift_setDeallocating();
  sub_10000C518(&qword_10092E6D0, &unk_1007C3D30);
  swift_arrayDestroy();
  sub_10000C518(&qword_100939AA0, qword_1007C4530);
  v38 = sub_100752F34().super.isa;

  [v29 setActions:v38];

  return v29;
}

uint64_t sub_1004A0FF8(uint64_t a1, char a2, __n128 a3)
{
  v5 = *v3;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v3 = v5;
  if (result)
  {
    if ((v5 & 0x8000000000000000) == 0 && (v5 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v5 & 0x8000000000000000) == 0 && (v5 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_100754664();
LABEL_9:
  result = sub_100754584();
  *v3 = result;
  return result;
}

uint64_t sub_1004A1098(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_100754664();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_100754664();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1004A2A14(&qword_100939AD0, &qword_1009423E0, &unk_1007CE740);
          for (i = 0; i != v6; ++i)
          {
            sub_10000C518(&qword_1009423E0, &unk_1007CE740);
            v9 = sub_1004A2704(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100016C60(0, &qword_100922300, UIView_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1004A1238(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_100754664();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_100754664();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1004A2A14(&qword_100939AB8, &qword_100939AB0, &qword_1007C3DF8);
          for (i = 0; i != v6; ++i)
          {
            sub_10000C518(&qword_100939AB0, &qword_1007C3DF8);
            v9 = sub_1004A2784(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100748014();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1004A13C8(uint64_t result, uint64_t a2, unint64_t a3, __n128 a4)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    v13 = a2;
    result = sub_100754664();
    a2 = v13;
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    if (v6)
    {
      v8 = a2;
      result = sub_100754664();
      if (result <= v8)
      {
        if (v7 >= 1)
        {
          sub_1004A2A14(&qword_100939AC8, &qword_100939AC0, &unk_1007C3E00);
          for (i = 0; i != v7; ++i)
          {
            sub_10000C518(&qword_100939AC0, &unk_1007C3E00);
            v10 = sub_1004A280C(v14, i, a3);
            v12 = *v11;

            (v10)(v14, 0);
            *(v5 + 8 * i) = v12;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_10074F3D4();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1004A1558(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_100754664();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_100754664();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1004A2A14(&qword_100939B38, &qword_100939B30, &qword_1007C3E38);
          for (i = 0; i != v6; ++i)
          {
            sub_10000C518(&qword_100939B30, &qword_1007C3E38);
            v9 = sub_1004A280C(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for HeroCarouselScrollView.PageViewTracker();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1004A16E8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_100754664();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_100754664();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1004A2A14(&qword_100939BB8, &qword_100939BB0, &qword_1007C3E68);
          for (i = 0; i != v6; ++i)
          {
            sub_10000C518(&qword_100939BB0, &qword_1007C3E68);
            v9 = sub_1004A2704(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100016C60(0, &qword_100923730, UICollectionViewLayoutAttributes_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1004A1888(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_100754664();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_100754664();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1004A2A14(&unk_100939B08, &qword_100939B00, &qword_1007C3E20);
          for (i = 0; i != v6; ++i)
          {
            sub_10000C518(&qword_100939B00, &qword_1007C3E20);
            v9 = sub_1004A2704(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100016C60(0, &qword_100923500, UIColor_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1004A1A28(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_100754664();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_100754664();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1004A2A14(&qword_100939AE8, &qword_100939AE0, &unk_1007C3E10);
          for (i = 0; i != v6; ++i)
          {
            sub_10000C518(&qword_100939AE0, &unk_1007C3E10);
            v9 = sub_1004A288C(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_10000C518(&qword_1009242C0, &qword_1007A7800);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1004A1BC4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_100754664();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_100754664();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1004A2A14(&unk_100939B20, &qword_100939B18, &unk_1007C3E28);
          for (i = 0; i != v6; ++i)
          {
            sub_10000C518(&qword_100939B18, &unk_1007C3E28);
            v9 = sub_1004A2704(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100016C60(0, &unk_10092E470, NSCollectionLayoutSupplementaryItem_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1004A1D64(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_100754664();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_100754664();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1004A2A14(&unk_100939B68, &qword_100939B60, &unk_1007C3E48);
          for (i = 0; i != v6; ++i)
          {
            sub_10000C518(&qword_100939B60, &unk_1007C3E48);
            v9 = sub_1004A2704(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100016C60(0, &qword_10092E460, NSCollectionLayoutBoundarySupplementaryItem_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1004A1F04(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_100754664();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_100754664();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1004A2A14(&unk_100939BA0, &qword_100939B98, &qword_1007C3E60);
          for (i = 0; i != v6; ++i)
          {
            sub_10000C518(&qword_100939B98, &qword_1007C3E60);
            v9 = sub_1004A2704(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100016C60(0, &qword_100939B90, NSCollectionLayoutGroup_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1004A20A4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_100754664();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_100754664();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1004A2A14(&qword_100939B78, &unk_100939AF0, &qword_1007A62F0);
          for (i = 0; i != v6; ++i)
          {
            sub_10000C518(&unk_100939AF0, &qword_1007A62F0);
            v9 = sub_1004A2704(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for CGColor(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1004A2234(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_100754664();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_100754664();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1004A2A14(&qword_100939B88, &qword_100939B80, &qword_1007C3E58);
          for (i = 0; i != v6; ++i)
          {
            sub_10000C518(&qword_100939B80, &qword_1007C3E58);
            v9 = sub_1004A280C(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for DebugSetting();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1004A23C4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_100754664();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_100754664();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1004A2A14(&unk_100939BD0, &qword_100939BC8, &unk_1007C3E70);
          for (i = 0; i != v6; ++i)
          {
            sub_10000C518(&qword_100939BC8, &unk_1007C3E70);
            v9 = sub_1004A2704(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100016C60(0, &qword_100939BC0, AMSNotificationSettingsItem_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1004A2564(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_100754664();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_100754664();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1004A2A14(&unk_100939B50, &qword_100939B48, &qword_1007C3E40);
          for (i = 0; i != v6; ++i)
          {
            sub_10000C518(&qword_100939B48, &qword_1007C3E40);
            v9 = sub_1004A2704(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100016C60(0, &qword_100939B40, NSValue_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_1004A2704(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_100754574();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1004A2A6C;
  }

  __break(1u);
  return result;
}

double (*sub_1004A2784(double (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_100754574();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_1004A2804;
  }

  __break(1u);
  return result;
}

double (*sub_1004A280C(double (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_100754574();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_1004A2A68;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1004A288C(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_100754574();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_1004A290C;
  }

  __break(1u);
  return result;
}

void (*sub_1004A2914(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_100754574();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1004A2994;
  }

  __break(1u);
  return result;
}

unint64_t sub_1004A29A0()
{
  result = qword_100939AA8;
  if (!qword_100939AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939AA8);
  }

  return result;
}

uint64_t sub_1004A2A14(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000C724(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1004A2B2C()
{
  v1 = v0;
  v40.receiver = v0;
  v40.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v40, "viewDidLoad");
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension30LocalizationTestViewController_objectGraph];
  v3 = qword_100920D30;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = qword_100939BE0;

  sub_1004A5954(v2, v41 + 8);
  *&v41[0] = v2;
  *(&v42 + 1) = v4;
  v39[7] = v41[2];
  v39[8] = v41[3];
  v39[9] = v42;
  v39[5] = v41[0];
  v39[6] = v41[1];
  v5 = objc_allocWithZone(sub_10000C518(&qword_100939C18, &unk_1007C3EE0));
  sub_1004A5CD8(v41, v39);
  v6 = sub_100751D54();
  [v1 addChildViewController:v6];
  v7 = [v6 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_16;
  }

  v8 = v7;
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  v9 = [v1 view];
  if (!v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = v9;
  v11 = [v6 view];

  if (!v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v10 addSubview:v11];

  sub_10000C518(&unk_1009231A0, qword_1007A5810);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1007A57A0;
  v13 = [v6 view];

  if (!v13)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v14 = [v13 topAnchor];

  v15 = [v1 view];
  if (!v15)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v15;
  v17 = [v15 topAnchor];

  v18 = [v14 constraintEqualToAnchor:v17];
  *(v12 + 32) = v18;
  v19 = [v6 view];

  if (!v19)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v20 = [v19 leadingAnchor];

  v21 = [v1 view];
  if (!v21)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v22 = v21;
  v23 = [v21 leadingAnchor];

  v24 = [v20 constraintEqualToAnchor:v23];
  *(v12 + 40) = v24;
  v25 = [v6 view];

  if (!v25)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v26 = [v25 bottomAnchor];

  v27 = [v1 view];
  if (!v27)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v28 = v27;
  v29 = [v27 bottomAnchor];

  v30 = [v26 constraintEqualToAnchor:v29];
  *(v12 + 48) = v30;
  v31 = [v6 view];

  if (!v31)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v32 = [v31 trailingAnchor];

  v33 = [v1 view];
  if (v33)
  {
    v34 = v33;
    v35 = objc_opt_self();
    v36 = [v34 trailingAnchor];

    v37 = [v32 constraintEqualToAnchor:v36];
    *(v12 + 56) = v37;
    sub_100016C60(0, &qword_100922E80, NSLayoutConstraint_ptr);
    isa = sub_100753294().super.isa;

    [v35 activateConstraints:isa];

    [v6 didMoveToParentViewController:v1];
    sub_1004A5D10(v41);
    return;
  }

LABEL_25:
  __break(1u);
}