id ShelvesViewProvider.layout(for:environment:safeAreaInsets:)(char *a1, void *a2, double a3, double a4, double a5, double a6)
{
  v335 = sub_307108();
  v328 = *(v335 - 8);
  __chkstk_darwin(v335);
  v291 = v9;
  v292 = &v279 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v289 = type metadata accessor for ShelvesViewProvider.Supplementaries.Header(0);
  __chkstk_darwin(v289);
  v290 = &v279 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406150, &qword_328DE0);
  __chkstk_darwin(v11 - 8);
  v282 = &v279 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v284 = &v279 - v14;
  v302 = type metadata accessor for ModernTitleHeaderView.Style(0);
  v294 = *(v302 - 8);
  __chkstk_darwin(v302);
  v288 = &v279 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v295 = &v279 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_406850, &unk_328DE8);
  __chkstk_darwin(v18 - 8);
  v287 = &v279 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v303 = &v279 - v21;
  v22 = sub_3071F8();
  v300 = *(v22 - 8);
  v301 = v22;
  __chkstk_darwin(v22);
  v286 = &v279 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v299 = &v279 - v25;
  v319 = sub_30B0B8();
  v322 = *(v319 - 8);
  __chkstk_darwin(v319);
  v318 = &v279 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402EA0, &unk_321440);
  __chkstk_darwin(v27 - 8);
  v280 = &v279 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v309 = &v279 - v30;
  __chkstk_darwin(v31);
  v321 = &v279 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400450, &qword_31DC60);
  __chkstk_darwin(v33 - 8);
  v316 = &v279 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v298 = &v279 - v36;
  __chkstk_darwin(v37);
  v296 = &v279 - v38;
  v306 = type metadata accessor for ShelvesViewProvider.SectionLayout(0);
  __chkstk_darwin(v306);
  v320 = (&v279 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v323 = sub_301F38();
  v317 = *(v323 - 1);
  __chkstk_darwin(v323);
  v293 = &v279 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400600, &qword_31DDA0);
  __chkstk_darwin(v41 - 8);
  v314 = &v279 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v315 = &v279 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4004A0, &unk_31DD80);
  __chkstk_darwin(v45 - 8);
  v283 = &v279 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v307 = (&v279 - v48);
  __chkstk_darwin(v49);
  v297 = &v279 - v50;
  __chkstk_darwin(v51);
  v304 = &v279 - v52;
  __chkstk_darwin(v53);
  v331 = &v279 - v54;
  __chkstk_darwin(v55);
  v333 = &v279 - v56;
  v57 = sub_302B48();
  v312 = *(v57 - 8);
  v313 = v57;
  __chkstk_darwin(v57);
  v327 = &v279 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_307268();
  v310 = *(v59 - 8);
  v311 = v59;
  __chkstk_darwin(v59);
  v61 = &v279 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_307048();
  v63 = *(v62 - 8);
  __chkstk_darwin(v62);
  v285 = &v279 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v65);
  v281 = &v279 - v66;
  __chkstk_darwin(v67);
  v305 = &v279 - v68;
  __chkstk_darwin(v69);
  v71 = &v279 - v70;
  __chkstk_darwin(v72);
  v74 = &v279 - v73;
  sub_307058();
  v75 = [a2 traitCollection];
  v324 = v74;
  ShelvesViewProvider.adjustedItemPresentation(for:traitCollection:)(v71, v75, v74);

  v308 = v63;
  v76 = *(v63 + 8);
  v330 = v62;
  v325 = v76;
  v326 = v63 + 8;
  v76(v71, v62);
  sub_3070A8();
  v77 = [a2 traitCollection];
  [v77 horizontalSizeClass];
  v329 = v61;
  v78 = a1;
  sub_307258();

  v332 = a2;
  [objc_msgSend(a2 "container")];
  swift_unknownObjectRelease();
  sub_302B08();
  sub_302B28();
  v80 = v79;
  v81 = v336;
  swift_beginAccess();
  v82 = v81[4];
  v368 = v81[3];
  v369 = v82;
  v370 = v81[5];
  v83 = v81[2];
  v366 = v81[1];
  v367 = v83;
  v84 = v368;
  v334 = a1;
  if (!v368)
  {
    v86 = v317;
    v85 = v315;
    v87 = v323;
    (*(v317 + 56))(v315, 1, 1, v323);
    goto LABEL_5;
  }

  sub_A0660(&v366, &v353);
  v85 = v315;
  v84(v78);
  v86 = v317;
  v87 = v323;
  if ((*(v317 + 48))(v85, 1, v323) == 1)
  {
    sub_A0044(&v366);
LABEL_5:
    v78 = v328;
    sub_EB68(v85, &qword_400600, &qword_31DDA0);
    (*(v78 + 7))(v333, 1, 1, v335);
    goto LABEL_10;
  }

  v88 = sub_301F08();
  v89 = *(v86 + 8);
  v89(v85, v87);
  if (__OFSUB__(v88, 1))
  {
    __break(1u);
    goto LABEL_187;
  }

  v90 = v367;
  if (v367)
  {
    v91 = v293;
    sub_301EC8();
    v90(v91);
    v89(v91, v87);
    sub_A0044(&v366);
    v78 = v328;
  }

  else
  {
    v78 = v328;
    (*(v328 + 56))(v333, 1, 1, v335);
    sub_A0044(&v366);
  }

LABEL_10:
  v92 = v314;
  v93 = v336[4];
  v363 = v336[3];
  v364 = v93;
  v365 = v336[5];
  v94 = v336[2];
  v361 = v336[1];
  v362 = v94;
  v95 = v363;
  if (!v363)
  {
    (*(v86 + 56))(v314, 1, 1, v87);
    goto LABEL_14;
  }

  sub_A0660(&v361, &v353);
  v95(v334);
  if ((*(v86 + 48))(v92, 1, v87) == 1)
  {
    sub_A0044(&v361);
LABEL_14:
    sub_EB68(v92, &qword_400600, &qword_31DDA0);
    v96 = v335;
    (*(v78 + 7))(v331, 1, 1, v335);
LABEL_19:
    v102 = *(v78 + 2);
    v103 = v304;
    v102(v304, v334, v96);
    v104 = *(v78 + 7);
    v104(v103, 0, 1, v96);
    v105 = v332;
    LODWORD(v323) = sub_18A17C(v103, v333, v332);
    sub_EB68(v103, &unk_4004A0, &unk_31DD80);
    v314 = v78 + 16;
    v293 = v102;
    v102(v103, v334, v96);
    v104(v103, 0, 1, v96);
    v106 = sub_18A17C(v331, v103, v105);
    sub_EB68(v103, &unk_4004A0, &unk_31DD80);
    v107 = *(sub_3070B8() + 16);

    v108 = sub_3070B8();
    if (*(v108 + 16))
    {
      sub_12670(v108 + 32, &v353);
    }

    else
    {

      *&v355 = 0;
      v353 = 0u;
      v354 = 0u;
    }

    v109 = v320;
    sub_18A8AC(v332, v323, v106, v324, v329, v327, v107, &v353, v320);
    sub_EB68(&v353, &qword_4064D0, &unk_31DCB0);
    v110 = *v109;
    v111 = (v109 + *(v306 + 24));
    v306 = *v111;
    a4 = v111[1];
    LODWORD(v315) = *(v111 + 16);
    v112 = v110;
    v113 = v305;
    sub_307058();
    v114 = sub_306FC8();
    v325(v113, v330);
    v115 = v335;
    v116 = v328;
    if ((v114 & 0x10000000000) == 0)
    {
      v117 = HIDWORD(v114) & 1;
      LOBYTE(v353) = BYTE4(v114) & 1;
      v118 = sub_173B98(v114 | ((BYTE4(v114) & 1) << 32));
      LOBYTE(v353) = v117;
      if (sub_306F98())
      {
        v119 = *(v116 + 48);
        v120 = v335;
        if (v119(v333, 1, v335) == 1)
        {
          v121 = -1000.0;
        }

        else
        {
          v121 = 0.0;
        }

        if (v119(v331, 1, v120) == 1)
        {
          v122 = -1000.0;
        }

        else
        {
          v122 = -1.0;
        }
      }

      else
      {
        v121 = 0.0;
        v122 = -1.0;
      }

      [v118 setContentInsets:{v121, -v80, v122, -v80}];
      v123 = v118;
      v124 = [v112 decorationItems];
      sub_124C4(0, &qword_406878, NSCollectionLayoutDecorationItem_ptr);
      v125 = sub_30C368();

      *&v353 = v125;
      sub_30C348();
      if (*(&dword_10 + (v353 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v353 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_30C378();
      }

      sub_30C3C8();
      isa = sub_30C358().super.isa;

      [v112 setDecorationItems:isa];

      v115 = v335;
    }

    v323 = v112;
    v129 = *(v116 + 48);
    v127 = v116 + 48;
    v128 = v129;
    v130 = (v129)(v333, 1, v115);
    v131 = *(v336 + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_showsHeaders);
    sub_304D58();
    if (v353 == 1)
    {
      v132 = v296;
      sub_3070C8();
      v133 = (*(v322 + 48))(v132, 1, v319) != 1;
      sub_EB68(v132, &qword_400450, &qword_31DC60);
    }

    else
    {
      v133 = 0;
    }

    v134 = v331;
    v135 = v332;
    v136 = [v332 traitCollection];
    v317 = v131;
    if (v133 || v130 != 1)
    {

      v144 = 0.0;
      v143 = v335;
      goto LABEL_46;
    }

    v138 = v136;
    v139 = sub_182DF8(v137);
    if (swift_conformsToProtocol2() && v139 && (sub_307378() & 1) != 0)
    {
      v140 = sub_307388();
      v141 = *&v140;
      if (v142)
      {
        v143 = v335;
        if (!v140)
        {

          v144 = 0.0;
          goto LABEL_46;
        }

        goto LABEL_81;
      }

      v144 = v141;
    }

    else
    {
      v196 = swift_conformsToProtocol2();
      v143 = v335;
      if (v196 && v139)
      {
        v197 = sub_307338();
        v198 = *&v197;
        if ((v199 & 1) == 0)
        {

          v144 = v198;
          goto LABEL_46;
        }

        if (v197)
        {
LABEL_81:
          sub_302B18();
          v144 = v200;

          goto LABEL_46;
        }
      }

      if (qword_3FAF48 != -1)
      {
        swift_once();
      }

      v349 = xmmword_42AD48;
      v350 = xmmword_42AD58;
      v351 = xmmword_42AD68;
      v345 = xmmword_42AD08;
      v346 = *&byte_42AD18;
      v347 = xmmword_42AD28;
      v348 = xmmword_42AD38;
      v341 = xmmword_42AD48;
      v342 = xmmword_42AD58;
      v343 = xmmword_42AD68;
      v337 = xmmword_42AD08;
      v338 = *&byte_42AD18;
      v352 = word_42AD78;
      v344 = word_42AD78;
      v339 = xmmword_42AD28;
      v340 = xmmword_42AD38;
      sub_9004C(&v345, &v353);
      if (qword_3FAC38 != -1)
      {
        swift_once();
      }

      v203 = sub_30D6F8();
      v204 = __swift_project_value_buffer(v203, qword_4295D8);
      sub_231F6C(v138, v204, 0);
      v144 = v205;

      v357 = v341;
      v358 = v342;
      v359 = v343;
      v360 = v344;
      v353 = v337;
      v354 = v338;
      v355 = v339;
      v356 = v340;
      sub_900A8(&v353);
    }

    v143 = v335;
LABEL_46:
    sub_304D58();
    if ((v353 & 1) == 0)
    {
      v147 = 0;
      goto LABEL_53;
    }

    v145 = v297;
    sub_EB00(v134, v297, &unk_4004A0, &unk_31DD80);
    if ((v128)(v145, 1, v143) == 1)
    {
      sub_EB68(v145, &unk_4004A0, &unk_31DD80);
      v146 = v298;
      (*(v322 + 56))(v298, 1, 1, v319);
    }

    else
    {
      v146 = v298;
      sub_3070C8();
      (*(v328 + 8))(v145, v143);
      v147 = 1;
      if ((*(v322 + 48))(v146, 1, v319) != 1)
      {
LABEL_52:
        sub_EB68(v146, &qword_400450, &qword_31DC60);
LABEL_53:
        v148 = v307;
        sub_EB00(v134, v307, &unk_4004A0, &unk_31DD80);
        v307 = v128;
        v149 = (v128)(v148, 1, v143);
        v150 = v127;
        if (v149 == 1)
        {
          sub_EB68(v148, &unk_4004A0, &unk_31DD80);
          v151 = 1;
          v152 = v330;
          v153 = v321;
        }

        else
        {
          v153 = v321;
          sub_307058();
          (*(v328 + 8))(v148, v143);
          v151 = 0;
          v152 = v330;
        }

        v154 = v308;
        (*(v308 + 56))(v153, v151, 1, v152);
        v155 = [v135 traitCollection];
        v156 = v309;
        sub_EB00(v153, v309, &qword_402EA0, &unk_321440);
        v157 = *(v154 + 48);
        if (v157(v156, 1, v152) == 1)
        {
          sub_EB68(v156, &qword_402EA0, &unk_321440);
          v160 = v316;
          v161 = v324;
        }

        else
        {
          sub_182DF8(v158);
          v161 = v324;
          v325(v156, v152);
          v162 = sub_307428();
          v160 = v316;
          if ((v163 & 1) == 0)
          {
            LOBYTE(v337) = 0;
            v345 = v162;
            LOBYTE(v346) = 0;
            *(&v346 + 1) = UIFontTextStyleBody;
            v352 = 0;
            v181 = qword_3FAC38;
            v182 = UIFontTextStyleBody;
            if (v181 == -1)
            {
              goto LABEL_66;
            }

            goto LABEL_71;
          }
        }

        sub_182DF8(v159);
        v164 = sub_307438();
        if (v165)
        {
          v309 = v155;
          if (v147)
          {
            v166 = v322;
            v167 = v318;
            if (qword_3FAF50 != -1)
            {
              swift_once();
            }

            v349 = xmmword_42ADC0;
            v350 = xmmword_42ADD0;
            v351 = xmmword_42ADE0;
            v345 = xmmword_42AD80;
            v346 = *&byte_42AD90;
            v347 = xmmword_42ADA0;
            v348 = xmmword_42ADB0;
            v341 = xmmword_42ADC0;
            v342 = xmmword_42ADD0;
            v343 = xmmword_42ADE0;
            v337 = xmmword_42AD80;
            v338 = *&byte_42AD90;
            v352 = word_42ADF0;
            v344 = word_42ADF0;
            v339 = xmmword_42ADA0;
            v340 = xmmword_42ADB0;
            sub_9004C(&v345, &v353);
            v168 = &selRef_registerImage_withTraitCollection_;
            if (qword_3FAC38 == -1)
            {
              goto LABEL_64;
            }

            goto LABEL_86;
          }

          v308 = v150;
          v201 = v321;
          v202 = v330;
          if (v157(v321, 1, v330) == 1)
          {
            v168 = &selRef_registerImage_withTraitCollection_;
            if (qword_3FAF48 != -1)
            {
              swift_once();
            }

            v349 = xmmword_42AD48;
            v350 = xmmword_42AD58;
            v351 = xmmword_42AD68;
            v345 = xmmword_42AD08;
            v346 = *&byte_42AD18;
            v347 = xmmword_42AD28;
            v348 = xmmword_42AD38;
            v341 = xmmword_42AD48;
            v342 = xmmword_42AD58;
            v343 = xmmword_42AD68;
            v337 = xmmword_42AD08;
            v338 = *&byte_42AD18;
            v352 = word_42AD78;
            v344 = word_42AD78;
            v339 = xmmword_42AD28;
            v340 = xmmword_42AD38;
            sub_9004C(&v345, &v353);
            v166 = v322;
            v167 = v318;
            if (qword_3FAC38 == -1)
            {
              goto LABEL_64;
            }

            goto LABEL_86;
          }

          v206 = sub_306FC8();
          v207 = v201;
          v208 = v280;
          sub_EB00(v207, v280, &qword_402EA0, &unk_321440);
          if (v157(v208, 1, v202) == 1)
          {
            sub_EB68(v208, &qword_402EA0, &unk_321440);
            v166 = v322;
            v167 = v318;
            v168 = &selRef_registerImage_withTraitCollection_;
            if ((v206 & 0x10000000000) != 0)
            {
LABEL_137:
              v222 = sub_182DF8(v209);
              if (swift_conformsToProtocol2() && v222 && (sub_307378() & 1) != 0)
              {
                v223 = sub_307388();
                v224 = *&v223;
                if (v225)
                {
                  v160 = v316;
                  if (!v223)
                  {

                    v173 = 0.0;
                    goto LABEL_67;
                  }

                  goto LABEL_147;
                }

                v173 = v224;
                v160 = v316;
LABEL_67:
                sub_EB68(v321, &qword_402EA0, &unk_321440);
                [v323 setContentInsets:{v144, 0.0, v173, 0.0}];
                sub_304D58();
                v179 = v332;
                if ((v353 & 1) == 0)
                {
                  goto LABEL_174;
                }

                sub_3070C8();
                v180 = v319;
                if ((*(v166 + 48))(v160, 1, v319) == 1)
                {
                  sub_EB68(v160, &qword_400450, &qword_31DC60);
                  goto LABEL_174;
                }

                v183 = (*(v166 + 32))(v167, v160, v180);
                sub_182DF8(v183);
                v184 = [v179 v168[241]];
                v185 = v299;
                sub_3074C8();

                v187 = v300;
                v186 = v301;
                v188 = v286;
                (*(v300 + 16))(v286, v185, v301);
                if ((*(v187 + 88))(v188, v186) == enum case for ShelfHeaderStyle.subdued(_:))
                {
                  v189 = [v179 v168[241]];
                  v190 = sub_30C968();

                  v191 = v284;
                  if (v190)
                  {
                    v192 = v283;
                    if (qword_3FAB80 != -1)
                    {
                      swift_once();
                    }

                    v193 = v302;
                    v194 = __swift_project_value_buffer(v302, qword_429438);
                    v195 = v303;
                    sub_196F8C(v194, v303, type metadata accessor for ModernTitleHeaderView.Style);
                    (*(v294 + 56))(v195, 0, 1, v193);
LABEL_98:
                    sub_EB00(v333, v192, &unk_4004A0, &unk_31DD80);
                    v210 = v335;
                    if ((v307)(v192, 1, v335) == 1)
                    {
                      sub_EB68(v192, &unk_4004A0, &unk_31DD80);
                      v211 = 0;
                      v212 = v295;
                    }

                    else
                    {
                      v213 = v281;
                      sub_307058();
                      (*(v328 + 8))(v192, v210);
                      v214 = sub_306FC8();
                      v325(v213, v330);
                      v212 = v295;
                      if ((v214 & 0x10000000000) != 0)
                      {
                        v211 = 0;
                      }

                      else
                      {
                        v211 = sub_306F98();
                      }
                    }

                    v215 = v285;
                    sub_307058();
                    v216 = sub_306FC8();
                    v325(v215, v330);
                    if ((v216 & 0x10000000000) != 0)
                    {
                      v217 = 0;
                    }

                    else
                    {
                      v217 = sub_306F98();
                    }

                    v218 = v287;
                    sub_EB00(v303, v287, &unk_406850, &unk_328DE8);
                    if ((*(v294 + 48))(v218, 1, v302) != 1)
                    {
                      sub_195EC4(v218, v212, type metadata accessor for ModernTitleHeaderView.Style);
                      goto LABEL_159;
                    }

                    sub_EB68(v218, &unk_406850, &unk_328DE8);
                    v219 = sub_30B078();
                    if (v211)
                    {
                      if ((v217 & 1) == 0)
                      {
                        if (v219)
                        {
                          if (qword_3FABA8 != -1)
                          {
                            swift_once();
                          }

                          v220 = qword_4294B0;
                        }

                        else
                        {
                          if (qword_3FAB90 != -1)
                          {
                            swift_once();
                          }

                          v220 = qword_429468;
                        }

LABEL_158:
                        v231 = __swift_project_value_buffer(v302, v220);
                        sub_196F8C(v231, v212, type metadata accessor for ModernTitleHeaderView.Style);
LABEL_159:
                        v232 = *(sub_3070B8() + 16);

                        if (v315)
                        {
                          v233 = 0;
                        }

                        else
                        {
                          v233 = v306;
                        }

                        v234 = [v179 v168[241]];
                        sub_30B058();
                        v235 = sub_30B048();
                        v236 = *(v235 - 8);
                        v237 = 1;
                        if ((*(v236 + 48))(v191, 1, v235) != 1)
                        {
                          v238 = v212;
                          v239 = v282;
                          sub_EB00(v191, v282, &qword_406150, &qword_328DE0);
                          if ((*(v236 + 88))(v239, v235) == enum case for Header.PrimaryAction.seeAll(_:))
                          {
                            v237 = v233 < v232;
                          }

                          (*(v236 + 8))(v239, v235);
                          v212 = v238;
                        }

                        sub_EB68(v191, &qword_406150, &qword_328DE0);
                        v86 = v318;
                        v240 = _s23ShelfKitCollectionViews21ModernTitleHeaderViewC19roughHeightEstimate6header5style6traits12CoreGraphics7CGFloatV0aB00G0V_AC5StyleVSo07UITraitC0CtFZ_0(v318, v212, v234);
                        v241 = objc_opt_self();
                        v242 = [v241 fractionalWidthDimension:1.0];
                        v243 = [v241 estimatedDimension:v240];
                        v244 = [objc_opt_self() sizeWithWidthDimension:v242 heightDimension:v243];

                        v245 = v288;
                        sub_196F8C(v212, v288, type metadata accessor for ModernTitleHeaderView.Style);
                        v246 = v289;
                        v247 = v290;
                        *v290 = !v237;
                        sub_196F8C(v245, v247 + *(v246 + 20), type metadata accessor for ModernTitleHeaderView.Style);
                        *&v353 = 0;
                        *(&v353 + 1) = 0xE000000000000000;
                        sub_30D558(17);

                        strcpy(&v353, "ShelfHeader.");
                        BYTE13(v353) = 0;
                        HIWORD(v353) = -5120;
                        if (v237)
                        {
                          v248._countAndFlagsBits = 0x65736C6166;
                        }

                        else
                        {
                          v248._countAndFlagsBits = 1702195828;
                        }

                        if (v237)
                        {
                          v249 = 0xE500000000000000;
                        }

                        else
                        {
                          v249 = 0xE400000000000000;
                        }

                        v248._object = v249;
                        sub_30C238(v248);

                        v371._countAndFlagsBits = 46;
                        v371._object = 0xE100000000000000;
                        sub_30C238(v371);
                        sub_301DF8();
                        sub_19779C(&qword_406870, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
                        v372._countAndFlagsBits = sub_30D6D8();
                        sub_30C238(v372);

                        v250 = *(&v353 + 1);
                        v251 = (v247 + *(v246 + 24));
                        *v251 = v353;
                        v251[1] = v250;
                        sub_1956EC(v247);
                        sub_195CEC(v245, type metadata accessor for ModernTitleHeaderView.Style);
                        v252 = sub_30C098();
                        v253 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v244 elementKind:v252 alignment:1];

                        sub_195CEC(v247, type metadata accessor for ShelvesViewProvider.Supplementaries.Header);
                        [v253 setZIndex:210];
                        v78 = v253;
                        v87 = v323;
                        v254 = [v323 boundarySupplementaryItems];
                        sub_124C4(0, &qword_4004D8, NSCollectionLayoutBoundarySupplementaryItem_ptr);
                        v255 = sub_30C368();

                        *&v353 = v255;
                        sub_30C348();
                        if (*(&dword_10 + (v353 & 0xFFFFFFFFFFFFFF8)) < *(&dword_18 + (v353 & 0xFFFFFFFFFFFFFF8)) >> 1)
                        {
                          goto LABEL_173;
                        }

                        goto LABEL_188;
                      }
                    }

                    else if (v217)
                    {
                      if (v219)
                      {
                        if (qword_3FABA0 != -1)
                        {
                          swift_once();
                        }

                        v220 = qword_429498;
                      }

                      else
                      {
                        if (qword_3FAB88 != -1)
                        {
                          swift_once();
                        }

                        v220 = qword_429450;
                      }

                      goto LABEL_158;
                    }

                    if (sub_30B078())
                    {
                      if (qword_3FAB98 != -1)
                      {
                        swift_once();
                      }

                      v220 = qword_429480;
                    }

                    else
                    {
                      if (qword_3FAB78 != -1)
                      {
                        swift_once();
                      }

                      v220 = qword_429420;
                    }

                    goto LABEL_158;
                  }

                  (*(v294 + 56))(v303, 1, 1, v302);
                }

                else
                {
                  (*(v294 + 56))(v303, 1, 1, v302);
                  (*(v187 + 8))(v188, v186);
                  v191 = v284;
                }

                v192 = v283;
                goto LABEL_98;
              }

              v226 = swift_conformsToProtocol2();
              v160 = v316;
              if (v226 && v222)
              {
                v227 = sub_307338();
                v228 = *&v227;
                if ((v229 & 1) == 0)
                {

                  v173 = v228;
                  goto LABEL_67;
                }

                if (v227)
                {
LABEL_147:
                  sub_302B18();
                  v173 = v230;

                  goto LABEL_67;
                }
              }

              if (qword_3FAF48 != -1)
              {
                swift_once();
              }

              v349 = xmmword_42AD48;
              v350 = xmmword_42AD58;
              v351 = xmmword_42AD68;
              v345 = xmmword_42AD08;
              v346 = *&byte_42AD18;
              v347 = xmmword_42AD28;
              v348 = xmmword_42AD38;
              v341 = xmmword_42AD48;
              v342 = xmmword_42AD58;
              v343 = xmmword_42AD68;
              v337 = xmmword_42AD08;
              v338 = *&byte_42AD18;
              v352 = word_42AD78;
              v344 = word_42AD78;
              v339 = xmmword_42AD28;
              v340 = xmmword_42AD38;
              sub_9004C(&v345, &v353);
              if (qword_3FAC38 == -1)
              {
                goto LABEL_64;
              }

LABEL_86:
              swift_once();
LABEL_64:
              v169 = sub_30D6F8();
              v170 = __swift_project_value_buffer(v169, qword_4295D8);
              v171 = v309;
              sub_231F6C(v309, v170, 0);
              v173 = v172;

              v357 = v341;
              v358 = v342;
              v359 = v343;
              v360 = v344;
              v353 = v337;
              v354 = v338;
              v355 = v339;
              v356 = v340;
              sub_900A8(&v353);
              goto LABEL_67;
            }
          }

          else
          {
            v221 = sub_306FC8();
            v325(v208, v202);
            v168 = &selRef_registerImage_withTraitCollection_;
            if ((v206 & 0x10000000000) != 0)
            {
              v166 = v322;
              v167 = v318;
              if ((v221 & 0x10000000000) != 0)
              {
                goto LABEL_137;
              }
            }

            else
            {
              v166 = v322;
              v167 = v318;
              if (v221 & 0x10000000000) == 0 && (sub_306F78())
              {
                goto LABEL_137;
              }
            }
          }

          if (qword_3FAF50 != -1)
          {
            swift_once();
          }

          v349 = xmmword_42ADC0;
          v350 = xmmword_42ADD0;
          v351 = xmmword_42ADE0;
          v345 = xmmword_42AD80;
          v346 = *&byte_42AD90;
          v347 = xmmword_42ADA0;
          v348 = xmmword_42ADB0;
          v341 = xmmword_42ADC0;
          v342 = xmmword_42ADD0;
          v343 = xmmword_42ADE0;
          v337 = xmmword_42AD80;
          v338 = *&byte_42AD90;
          v352 = word_42ADF0;
          v344 = word_42ADF0;
          v339 = xmmword_42ADA0;
          v340 = xmmword_42ADB0;
          sub_9004C(&v345, &v353);
          v160 = v316;
          if (qword_3FAC38 == -1)
          {
            goto LABEL_64;
          }

          goto LABEL_86;
        }

        LOBYTE(v337) = 0;
        v345 = v164;
        LOBYTE(v346) = 0;
        *(&v346 + 1) = UIFontTextStyleBody;
        v352 = 0;
        v174 = qword_3FAC38;
        v175 = UIFontTextStyleBody;
        if (v174 == -1)
        {
LABEL_66:
          v176 = sub_30D6F8();
          v177 = __swift_project_value_buffer(v176, qword_4295D8);
          sub_231F6C(v155, v177, 0);
          v173 = v178;

          v357 = v349;
          v358 = v350;
          v359 = v351;
          v360 = v352;
          v353 = v345;
          v354 = v346;
          v355 = v347;
          v356 = v348;
          sub_900A8(&v353);
          v166 = v322;
          v167 = v318;
          v168 = &selRef_registerImage_withTraitCollection_;
          goto LABEL_67;
        }

LABEL_71:
        swift_once();
        goto LABEL_66;
      }
    }

    v147 = 0;
    goto LABEL_52;
  }

  v97 = sub_301F08();
  v99 = *(v86 + 8);
  v86 += 8;
  v98 = v99;
  v99(v92, v87);
  if (!__OFADD__(v97, 1))
  {
    v100 = v362;
    if (v362)
    {
      v101 = v293;
      sub_301EC8();
      v100(v101);
      v98(v101, v87);
      sub_A0044(&v361);
      v96 = v335;
    }

    else
    {
      v96 = v335;
      (*(v78 + 7))(v331, 1, 1, v335);
      sub_A0044(&v361);
    }

    goto LABEL_19;
  }

LABEL_187:
  __break(1u);
LABEL_188:
  sub_30C378();
LABEL_173:
  sub_30C3C8();
  v256 = sub_30C358().super.isa;

  [v87 setBoundarySupplementaryItems:v256];

  sub_195CEC(v295, type metadata accessor for ModernTitleHeaderView.Style);
  sub_EB68(v303, &unk_406850, &unk_328DE8);
  (*(v300 + 8))(v299, v301);
  (*(v322 + 8))(v86, v319);
  v179 = v332;
  v161 = v324;
  v168 = &selRef_registerImage_withTraitCollection_;
LABEL_174:
  v257 = [v179 v168[241]];
  v258 = [v257 userInterfaceIdiom];

  v259 = v323;
  if (v258 == &dword_4 + 1)
  {
    sub_306FE8();
    v260 = sub_306FD8();
    v262 = v261;
    if (v260 == sub_306FD8() && v262 == v263)
    {

      if (v315)
      {
        goto LABEL_183;
      }
    }

    else
    {
      v264 = sub_30D728();

      if (v315 & 1 | ((v264 & 1) == 0))
      {
        goto LABEL_183;
      }
    }

    [v259 contentInsets];
    v266 = sub_1959A0(a4, v80, v265);
    v267 = [v259 boundarySupplementaryItems];
    sub_124C4(0, &qword_4004D8, NSCollectionLayoutBoundarySupplementaryItem_ptr);
    v268 = sub_30C368();

    *&v353 = v268;
    sub_30C348();
    if (*(&dword_10 + (v353 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v353 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_30C378();
    }

    sub_30C3C8();
    v269 = sub_30C358().super.isa;

    [v259 setBoundarySupplementaryItems:v269];

    v270 = swift_allocObject();
    swift_weakInit();
    v271 = v292;
    v272 = v335;
    (v293)(v292, v334, v335);
    v273 = v328;
    v274 = (*(v328 + 80) + 24) & ~*(v328 + 80);
    v275 = swift_allocObject();
    *(v275 + 16) = v270;
    v276 = v275 + v274;
    v259 = v323;
    (*(v273 + 32))(v276, v271, v272);
    *&v355 = sub_195E10;
    *(&v355 + 1) = v275;
    *&v353 = _NSConcreteStackBlock;
    *(&v353 + 1) = 1107296256;
    *&v354 = sub_189D1C;
    *(&v354 + 1) = &block_descriptor_34;
    v277 = _Block_copy(&v353);

    [v259 setVisibleItemsInvalidationHandler:v277];
    _Block_release(v277);
  }

LABEL_183:
  sub_195CEC(v320, type metadata accessor for ShelvesViewProvider.SectionLayout);
  (*(v312 + 8))(v327, v313);
  (*(v310 + 8))(v329, v311);
  v325(v161, v330);
  sub_EB68(v333, &unk_4004A0, &unk_31DD80);
  sub_EB68(v331, &unk_4004A0, &unk_31DD80);
  return v259;
}

double sub_189D1C(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v8 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4005C0, &qword_31DD10);
  v9 = sub_30C368();

  swift_unknownObjectRetain();
  v8(v9, a3, a4, a5);

  swift_unknownObjectRelease();
  return result;
}

double ShelvesViewProvider.dependenciesDidChange(_:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_objectGraph) = a1;

  return result;
}

uint64_t ShelvesViewProvider.converter.getter@<X0>(_OWORD *a1@<X8>)
{
  swift_beginAccess();
  v3 = v1[4];
  v10 = v1[3];
  v11 = v3;
  v12 = v1[5];
  v4 = v12;
  v5 = v1[2];
  v9[0] = v1[1];
  v6 = v9[0];
  v9[1] = v5;
  a1[2] = v10;
  a1[3] = v3;
  a1[4] = v4;
  *a1 = v6;
  a1[1] = v5;
  return sub_A0660(v9, v8);
}

uint64_t ShelvesViewProvider.converter.setter(_OWORD *a1)
{
  swift_beginAccess();
  v3 = v1[4];
  v8[2] = v1[3];
  v8[3] = v3;
  v8[4] = v1[5];
  v4 = v1[2];
  v8[0] = v1[1];
  v8[1] = v4;
  v5 = a1[3];
  v1[3] = a1[2];
  v1[4] = v5;
  v1[5] = a1[4];
  v6 = a1[1];
  v1[1] = *a1;
  v1[2] = v6;
  return sub_A0044(v8);
}

uint64_t ShelvesViewProvider.adjustedItemPresentation(for:traitCollection:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402EA0, &unk_321440);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v16 - v10;
  sub_307008();
  v12 = sub_307048();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (v14(v11, 1, v12) != 1)
  {
    return (*(v13 + 32))(a3, v11, v12);
  }

  sub_EB68(v11, &qword_402EA0, &unk_321440);
  if ([a2 horizontalSizeClass] != &dword_0 + 1)
  {
    return (*(v13 + 16))(a3, a1, v12);
  }

  sub_306FB8();
  if (v14(v8, 1, v12) != 1)
  {
    return (*(v13 + 32))(a3, v8, v12);
  }

  (*(v13 + 16))(a3, a1, v12);
  result = (v14)(v8, 1, v12);
  if (result != 1)
  {
    return sub_EB68(v8, &qword_402EA0, &unk_321440);
  }

  return result;
}

uint64_t sub_18A17C(uint64_t a1, uint64_t a2, void *a3)
{
  v65 = a2;
  v60 = a3;
  v4 = sub_307048();
  v62 = *(v4 - 8);
  v63 = v4;
  __chkstk_darwin(v4);
  v57 = v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v56 = v55 - v7;
  __chkstk_darwin(v8);
  v58 = v55 - v9;
  __chkstk_darwin(v10);
  v59 = v55 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400450, &qword_31DC60);
  __chkstk_darwin(v12 - 8);
  v14 = v55 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4004A0, &unk_31DD80);
  __chkstk_darwin(v15 - 8);
  v61 = v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = v55 - v18;
  __chkstk_darwin(v20);
  v22 = v55 - v21;
  v23 = sub_307108();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v64 = v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = v55 - v27;
  __chkstk_darwin(v29);
  v31 = v55 - v30;
  sub_EB00(a1, v22, &unk_4004A0, &unk_31DD80);
  v32 = *(v24 + 48);
  if (v32(v22, 1, v23) != 1)
  {
    v55[0] = *(v24 + 32);
    v55[1] = v24 + 32;
    (v55[0])(v31, v22, v23);
    sub_3070C8();
    v33 = sub_30B0B8();
    v34 = (*(*(v33 - 8) + 48))(v14, 1, v33);
    sub_EB68(v14, &qword_400450, &qword_31DC60);
    if (v34 == 1)
    {
      (*(v24 + 8))(v31, v23);
      return 0;
    }

    if (*(v66 + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_hideAllHeaderSeparators) == 1)
    {
      (*(v24 + 8))(v31, v23);
      return 2;
    }

    sub_EB00(v65, v19, &unk_4004A0, &unk_31DD80);
    if (v32(v19, 1, v23) == 1)
    {
      sub_EB68(v19, &unk_4004A0, &unk_31DD80);
      v36 = v64;
    }

    else
    {
      (v55[0])(v28, v19, v23);
      v37 = v58;
      sub_307058();
      v38 = [v60 traitCollection];
      v39 = v59;
      ShelvesViewProvider.adjustedItemPresentation(for:traitCollection:)(v37, v38, v59);

      v66 = *(v62 + 8);
      v40 = v37;
      v41 = v63;
      v42 = v66(v40, v63);
      sub_182DF8(v42);
      LOBYTE(v38) = sub_3073F8();
      v66(v39, v41);
      v43 = *(v24 + 8);
      v43(v28, v23);
      v36 = v64;
      if (v38)
      {
        v43(v31, v23);
        return 2;
      }
    }

    v44 = v61;
    sub_EB00(v65, v61, &unk_4004A0, &unk_31DD80);
    if (v32(v44, 1, v23) == 1)
    {
      (*(v24 + 8))(v31, v23);
      sub_EB68(v44, &unk_4004A0, &unk_31DD80);
      return 1;
    }

    (v55[0])(v36, v44, v23);
    v45 = v56;
    sub_307058();
    v46 = sub_306FC8();
    v47 = v63;
    v48 = *(v62 + 8);
    v48(v45, v63);
    v49 = v57;
    sub_307058();
    v50 = sub_306FC8();
    v48(v49, v47);
    if ((v46 & 0x10000000000) != 0)
    {
      v53 = *(v24 + 8);
      v53(v64, v23);
      v53(v31, v23);
      if ((v50 & 0x10000000000) != 0)
      {
        return 1;
      }
    }

    else
    {
      if ((v50 & 0x10000000000) != 0)
      {
        v54 = *(v24 + 8);
        v54(v64, v23);
        v54(v31, v23);
        return 3;
      }

      v51 = sub_306F78();
      v52 = *(v24 + 8);
      v52(v64, v23);
      v52(v31, v23);
      if (v51)
      {
        return 1;
      }
    }

    return 3;
  }

  sub_EB68(v22, &unk_4004A0, &unk_31DD80);
  return 0;
}

void sub_18A8AC(void *a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v178 = a8;
  v168 = a7;
  v191 = a6;
  v180 = a5;
  v165 = a2;
  v166 = a3;
  v188 = a9;
  v189 = sub_30D6F8();
  v184 = *(v189 - 8);
  __chkstk_darwin(v189);
  v183 = &v164 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_406808, &unk_328DC0);
  __chkstk_darwin(v12 - 8);
  v177 = &v164 - v13;
  v14 = sub_307048();
  v175 = *(v14 - 8);
  v176 = v14;
  __chkstk_darwin(v14);
  v16 = &v164 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_3071E8();
  v193 = *(v17 - 8);
  v194 = v17;
  __chkstk_darwin(v17);
  v198 = &v164 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = sub_302858();
  v187 = *(v190 - 8);
  __chkstk_darwin(v190);
  v174 = (&v164 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20);
  v167 = (&v164 - v21);
  __chkstk_darwin(v22);
  v197 = (&v164 - v23);
  v24 = sub_304B48();
  v170 = *(v24 - 8);
  v171 = v24;
  __chkstk_darwin(v24);
  v169 = &v164 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_304BA8();
  v172 = *(v26 - 8);
  v173 = v26;
  __chkstk_darwin(v26);
  v181 = &v164 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_307278();
  v164 = *(v28 - 8);
  __chkstk_darwin(v28);
  v30 = &v164 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_3072C8();
  v185 = *(v31 - 8);
  __chkstk_darwin(v31);
  v33 = &v164 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v36 = &v164 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4069E0, &qword_328EB8);
  __chkstk_darwin(v37 - 8);
  v39 = &v164 - v38;
  v192 = sub_307308();
  v195 = *(v192 - 8);
  v40 = __chkstk_darwin(v192);
  v182 = &v164 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = a1;
  v196 = [a1 traitCollection];
  v199 = a4;
  v43 = sub_182DF8(v42);
  if (swift_conformsToProtocol2() && v43 && (sub_307378() & 1) != 0)
  {
    if (swift_conformsToProtocol2())
    {
      sub_3073A8();
      v44 = v195;
      v45 = v192;
      v198 = *(v195 + 56);
      (v198)(v39, 0, 1, v192);
      v46 = v182;
      (*(v44 + 32))(v182, v39, v45);
      LODWORD(v193) = enum case for ShelfCellListSeparatorMode.Placement.default(_:);
    }

    else
    {
      v140 = v195;
      v141 = v192;
      v198 = *(v195 + 56);
      (v198)(v39, 1, 1, v192);
      v142 = *(v185 + 104);
      LODWORD(v193) = enum case for ShelfCellListSeparatorMode.Placement.default(_:);
      v142(v36);
      (*(v164 + 104))(v30, enum case for ShelfCellListSeparatorMode.Layout.default(_:), v28);
      v45 = v141;
      sub_3072D8();
      if ((*(v140 + 48))(v39, 1, v141) != 1)
      {
        sub_EB68(v39, &qword_4069E0, &qword_328EB8);
      }

      v44 = v195;
      v46 = v182;
    }

    sub_302B28();
    v144 = v143;
    LODWORD(v194) = sub_307038();
    (*(v170 + 104))(v169, enum case for UICollectionLayoutListConfiguration.Appearance.plain(_:), v171);
    sub_304B58();
    sub_304B88();
    v197 = swift_allocBox();
    (*(v44 + 16))(v145, v46, v45);
    sub_3072E8();
    v146 = v185;
    v147 = *(v185 + 104);
    v147(v33, v193, v31);
    v148 = sub_3072B8();
    v149 = *(v146 + 8);
    v149(v33, v31);
    v185 = v146 + 8;
    v149(v36, v31);
    if (v148)
    {
      v150 = v166 == 2;
      *v36 = (v165 & 0xFD) != 1;
      v36[1] = v150;
      v147(v36, enum case for ShelfCellListSeparatorMode.Placement.custom(_:), v31);
      sub_3072F8();
    }

    if ((sub_306FC8() & 0x10000000000) != 0 || !sub_306F88())
    {
      v151 = [objc_opt_self() clearColor];
    }

    v152 = v181;
    sub_304B68();
    sub_3072E8();
    v147(v33, enum case for ShelfCellListSeparatorMode.Placement.never(_:), v31);
    sub_19779C(&qword_406BA8, &type metadata accessor for ShelfCellListSeparatorMode.Placement, &protocol conformance descriptor for ShelfCellListSeparatorMode.Placement);
    sub_30C018();
    v149(v33, v31);
    v149(v36, v31);
    sub_304B78();
    v153 = swift_allocObject();
    v154 = v179;
    v153[2] = v197;
    v153[3] = v154;
    v153[4] = v144;

    swift_unknownObjectRetain();
    sub_304B98();
    if (sub_3070E8())
    {
      swift_allocObject();
      swift_weakInit();
      sub_304B28();
      swift_allocObject();
      swift_weakInit();
      sub_304B38();
    }

    sub_124C4(0, &qword_406A50, NSCollectionLayoutSection_ptr);
    v155 = sub_30CBA8();
    (*(v172 + 8))(v152, v173);

    [v155 setContentInsetsReference:2];

    v156 = type metadata accessor for ShelvesViewProvider.SectionLayout(0);
    v157 = *(v156 + 20);
    v158 = v188;
    v159 = v192;
    (*(v195 + 32))(v188 + v157, v182, v192);
    (v198)(v158 + v157, 0, 1, v159);
    *v158 = v155;
    v160 = v158 + *(v156 + 24);
    *v160 = 0;
    *(v160 + 1) = 0;
    v160[16] = 1;
    return;
  }

  v182 = &protocol descriptor for ShelfCellListCustomizations;
  v47 = v199;
  sub_183C10(v197);
  sub_306FE8();
  v48 = sub_306FD8();
  v50 = v49;
  if (v48 != sub_306FD8() || v50 != v51)
  {
    sub_30D728();
  }

  v185 = sub_302AF8();
  sub_302B18();
  v53 = v52;
  v54 = sub_182DF8(v52);
  v55 = swift_conformsToProtocol2();
  v56 = v196;
  v57 = v186;
  if (v55 && v54)
  {
    sub_EB00(v178, &v208, &qword_4064D0, &unk_31DCB0);
    if (*(&v209 + 1))
    {
      sub_12658(&v208, v216);
      sub_3073E8();
      __swift_destroy_boxed_opaque_existential_1(v216);
      goto LABEL_21;
    }

    sub_EB68(&v208, &qword_4064D0, &unk_31DCB0);
  }

  if (([*(v57 + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_heightCacheTraitCollection) containsTraitsInCollection:v56] & 1) == 0)
  {
    v59 = OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_heightCache;
    swift_beginAccess();
    *(v57 + v59) = &_swiftEmptyDictionarySingleton;
  }

  v60 = OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_heightCache;
  swift_beginAccess();
  v61 = *(v57 + v60);
  if (*(v61 + 16) && (v62 = sub_191BF4(v47), (v63 & 1) != 0))
  {
    (*(v193 + 16))(v198, *(v61 + 56) + *(v193 + 72) * v62, v194);
  }

  else
  {
    swift_endAccess();
    sub_182DF8(v64);
    v65 = v198;
    sub_3074D8();
    (*(v175 + 16))(v16, v47, v176);
    v67 = v193;
    v66 = v194;
    v68 = v177;
    (*(v193 + 16))(v177, v65, v194);
    (*(v67 + 56))(v68, 0, 1, v66);
    swift_beginAccess();
    sub_184028(v68, v16);
  }

  swift_endAccess();
LABEL_21:
  v69 = sub_182DF8(v58);
  if (!swift_conformsToProtocol2() || !v69 || (sub_307378() & 1) == 0)
  {
    if (swift_conformsToProtocol2() && v69)
    {
      *&v70 = COERCE_DOUBLE(sub_307338());
      if ((v74 & 1) == 0)
      {
        goto LABEL_37;
      }

      if (*&v70 != 0.0)
      {
LABEL_31:
        sub_302B18();
        v73 = v71;
        goto LABEL_38;
      }
    }

    if (qword_3FAF48 != -1)
    {
      swift_once();
    }

    v212 = xmmword_42AD48;
    v213 = xmmword_42AD58;
    v214 = xmmword_42AD68;
    v208 = xmmword_42AD08;
    v209 = *&byte_42AD18;
    v210 = xmmword_42AD28;
    v211 = xmmword_42AD38;
    v204 = xmmword_42AD48;
    v205 = xmmword_42AD58;
    v206 = xmmword_42AD68;
    v200 = xmmword_42AD08;
    v201 = *&byte_42AD18;
    v215 = word_42AD78;
    v207 = word_42AD78;
    v202 = xmmword_42AD28;
    v203 = xmmword_42AD38;
    sub_9004C(&v208, v216);
    if (qword_3FAC38 != -1)
    {
      swift_once();
    }

    v75 = __swift_project_value_buffer(v189, qword_4295D8);
    sub_231F6C(v56, v75, 0);
    v73 = v76;
    v216[4] = v204;
    v216[5] = v205;
    v216[6] = v206;
    v217 = v207;
    v216[0] = v200;
    v216[1] = v201;
    v216[2] = v202;
    v216[3] = v203;
    sub_900A8(v216);
    goto LABEL_38;
  }

  *&v70 = COERCE_DOUBLE(sub_307388());
  if (v72)
  {
    if (*&v70 == 0.0)
    {
      v73 = 0.0;
      goto LABEL_38;
    }

    goto LABEL_31;
  }

LABEL_37:
  v73 = *&v70;
LABEL_38:
  v77 = _swiftEmptyArrayStorage;
  *&v216[0] = _swiftEmptyArrayStorage;
  v78 = sub_182DF8(v71);
  if (!swift_conformsToProtocol2() || !v78 || (sub_307328() & 1) == 0)
  {
    goto LABEL_43;
  }

  v79 = objc_opt_self();
  v80 = [v79 fractionalWidthDimension:1.0];
  v81 = [v179 traitCollection];
  sub_3043A8();
  v82 = [v79 absoluteDimension:?];

  v83 = [objc_opt_self() sizeWithWidthDimension:v80 heightDimension:v82];
  v84 = objc_opt_self();
  v77 = v83;
  v85 = [v84 layoutAnchorWithEdges:4 absoluteOffset:{0.0, v73 * 0.5}];
  v86 = sub_30C098();
  v87 = [objc_opt_self() supplementaryItemWithLayoutSize:v77 elementKind:v86 containerAnchor:v85];

  [v87 setZIndex:10];
  v88 = v87;
  sub_307318();
  [v88 contentInsets];
  [v88 setContentInsets:?];

  v89 = v88;
  sub_30C348();
  if (*(&dword_10 + (*&v216[0] & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*&v216[0] & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    goto LABEL_82;
  }

  while (1)
  {
    sub_30C3C8();

    v77 = *&v216[0];
LABEL_43:
    sub_3071D8();
    v91 = v90;
    v93 = v183;
    v92 = v184;
    v94 = v189;
    (*(v184 + 104))(v183, enum case for FloatingPointRoundingRule.down(_:), v189);
    sub_30C958();
    sub_302E58();
    v96 = v95;
    (*(v92 + 8))(v93, v94);
    v97 = sub_306FD8();
    v99 = v98;
    v101 = sub_306FD8();
    v102 = v97;
    v89 = v100;
    if (v102 == v101 && v99 == v100)
    {

LABEL_47:
      v104 = objc_opt_self();
      v105 = [v104 absoluteDimension:v91];
      v107 = sub_182DF8(v106);
      v108 = swift_conformsToProtocol2();
      v199 = 3;
      if (v108 && v107)
      {
        if (sub_3073C8())
        {
          v109 = [v104 estimatedDimension:v91];

          v105 = v109;
        }

        v110 = sub_3073B8();
        v111 = 3;
        if (v110)
        {
          v111 = 1;
        }

        v199 = v111;
      }

      v112 = [v104 fractionalWidthDimension:1.0];
      v113 = objc_opt_self();
      v114 = [v113 sizeWithWidthDimension:v112 heightDimension:v105];

      sub_124C4(0, &qword_406BA0, NSCollectionLayoutSupplementaryItem_ptr);
      isa = sub_30C358().super.isa;

      v116 = [objc_opt_self() itemWithLayoutSize:v114 supplementaryItems:isa];

      v117 = [v104 fractionalWidthDimension:1.0];
      v118 = [v113 sizeWithWidthDimension:v117 heightDimension:v105];

      v119 = [objc_opt_self() horizontalGroupWithLayoutSize:v118 subitem:v116 count:v185];
      v120 = [objc_opt_self() fixedSpacing:v53];
      [v119 setInterItemSpacing:v120];

      v121 = [objc_opt_self() sectionWithGroup:v119];
      [v121 setInterGroupSpacing:v73];

      v122 = 0;
      v123 = 1;
      v124 = 0.0;
      v125 = v195;
      v56 = v196;
LABEL_80:
      [v121 setContentInsetsReference:v199];

      (*(v193 + 8))(v198, v194);
      (*(v187 + 8))(v197, v190);
      v161 = type metadata accessor for ShelvesViewProvider.SectionLayout(0);
      v162 = v188;
      (*(v125 + 56))(v188 + *(v161 + 20), 1, 1, v192);
      *v162 = v121;
      v163 = (v162 + *(v161 + 24));
      *v163 = v122;
      v163[1] = v124;
      *(v163 + 16) = v123;
      return;
    }

    v103 = sub_30D728();

    if (v103)
    {
      goto LABEL_47;
    }

    v126 = sub_306FF8();
    if (v185)
    {
      break;
    }

    __break(1u);
LABEL_82:
    sub_30C378();
  }

  v127 = v167;
  v128 = v190;
  if (v168 != 0x8000000000000000 || v185 != -1)
  {
    v129 = v168 / v185;
    if (v168 / v185 >= v126)
    {
      v129 = v126;
    }

    if (v129 <= 1)
    {
      v130 = 1;
    }

    else
    {
      v130 = v129;
    }

    sub_195218(v77, v130, v96, v91, v73);
    v132 = v131;

    v121 = [objc_opt_self() sectionWithGroup:v132];
    [v121 setInterGroupSpacing:v53];
    [v121 setOrthogonalScrollingBehavior:2];
    v133 = [v121 orthogonalScrollingProperties];
    sub_183C10(v127);
    v134 = v187;
    v135 = v174;
    (*(v187 + 16))(v174, v127, v128);
    v136 = (*(v134 + 88))(v135, v128);
    v137 = *(v134 + 8);
    if (v136 == enum case for Grid.a(_:) || v136 == enum case for Grid.d(_:))
    {
      v138 = UICollectionLayoutSectionOrthogonalScrollingDecelerationRateFast;
      v139 = v190;
    }

    else
    {
      v138 = UICollectionLayoutSectionOrthogonalScrollingDecelerationRateAutomatic;
      v139 = v190;
      v137(v127, v190);
      v127 = v174;
    }

    v137(v127, v139);
    [v133 setDecelerationRate:v138];

    v122 = v185 * v130;
    if ((v185 * v130) >> 64 == (v185 * v130) >> 63)
    {
      v123 = 0;
      v124 = v91 * v130 + v73 * (v130 - 1);
      v199 = 3;
      v125 = v195;
      goto LABEL_80;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_18C154(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_18C1CC(a6, a1);
  }
}

void sub_18C1CC(uint64_t a1, double a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406B88, qword_328F40);
  __chkstk_darwin(v6 - 8);
  v8 = &v80 - v7;
  v85 = type metadata accessor for ShelvesViewProvider.Page(0);
  v84 = *(v85 - 8);
  __chkstk_darwin(v85);
  v82 = (&v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v12 = &v80 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400600, &qword_31DDA0);
  __chkstk_darwin(v13 - 8);
  v92 = &v80 - v14;
  v15 = sub_301F38();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v83 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v90 = &v80 - v19;
  v91 = a1;
  v20 = sub_3070A8();
  v22 = v21;
  v23 = OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_pageControlOffsets;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v93[0] = *(v3 + v23);
  *(v3 + v23) = 0x8000000000000000;
  sub_296304(v20, v22, isUniquelyReferenced_nonNull_native, a2);

  *(v3 + v23) = v93[0];
  swift_endAccess();
  swift_beginAccess();
  v25 = v3[6];
  if (!v25)
  {
    v35 = v92;
    (*(v16 + 56))(v92, 1, 1, v15);
    goto LABEL_10;
  }

  v80 = v12;
  v81 = v8;
  v27 = v3[10];
  v87 = v3[11];
  v26 = v87;
  v88 = v16;
  v89 = v15;
  v28 = v3[8];
  v29 = v3[9];
  v30 = v3[7];
  v31 = v3[4];
  v32 = v3[5];
  v33 = v3[2];
  v86 = v3[3];
  sub_9FF04(v33, v86);
  sub_9FF04(v31, v32);
  sub_9FF04(v25, v30);
  sub_9FF04(v28, v29);
  v34 = sub_9FF04(v27, v26);
  v35 = v92;
  v25(v91, v34);
  sub_1EBD0(v33, v86);
  sub_1EBD0(v31, v32);
  sub_1EBD0(v25, v30);
  v37 = v88;
  v36 = v89;
  sub_1EBD0(v28, v29);
  sub_1EBD0(v27, v87);
  if ((*(v37 + 48))(v35, 1, v36) == 1)
  {
LABEL_10:
    v70 = &qword_400600;
    v71 = &qword_31DDA0;
    v72 = v35;
LABEL_11:
    sub_EB68(v72, v70, v71);
    return;
  }

  v38 = v90;
  (*(v37 + 32))(v90, v35, v36);
  v39 = OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_collectionView;
  swift_beginAccess();
  v40 = *(v3 + v39);
  if (!v40)
  {
LABEL_14:
    (*(v37 + 8))(v38, v36);
    return;
  }

  v41 = v40;
  v42 = sub_30C098();
  isa = sub_301EA8().super.isa;
  v44 = [v41 supplementaryViewForElementKind:v42 atIndexPath:isa];

  if (!v44)
  {
    (*(v37 + 8))(v38, v36);

    return;
  }

  type metadata accessor for ShelfPageControl();
  v45 = swift_dynamicCastClass();
  if (!v45)
  {

    goto LABEL_14;
  }

  v91 = v45;
  v92 = v44;
  v46 = v83;
  (*(v37 + 16))(v83, v38, v36);
  v47 = v41;
  v48 = v46;
  v49 = sub_30C098();
  v50 = sub_301EA8().super.isa;
  v51 = [v47 layoutAttributesForSupplementaryElementOfKind:v49 atIndexPath:v50];

  if (v51)
  {
    [v51 frame];
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v59 = v58;

    v60 = v47;
    v61 = v82;
    *v82 = v60;
    v62 = v85;
    v87 = v60;
    v63 = v60;
    [v63 bounds];
    CGRectGetWidth(v94);
    [v63 safeAreaInsets];
    [v63 safeAreaInsets];
    v64 = 0.0;
    sub_302B08();
    sub_302B28();
    v66 = v53 + v65;
    v67 = v57 - (v65 + v65);
    v68 = v80;
    if (a2 == 0.0)
    {
      v69 = *(v37 + 8);
      v69(v48, v36);
    }

    else
    {
      [v63 directionalLayoutMargins];
      v76 = v75;

      v69 = *(v37 + 8);
      v69(v48, v36);
      v64 = a2 - v76;
    }

    v77 = v61 + *(v62 + 24);
    *v77 = v66 + v64;
    *(v77 + 8) = v55;
    *(v77 + 16) = v67;
    *(v77 + 24) = v59;
    v74 = v81;
    sub_195EC4(v61, v81, type metadata accessor for ShelvesViewProvider.Page);
    v73 = 0;
    v47 = v87;
  }

  else
  {
    v69 = *(v37 + 8);
    v69(v48, v36);

    v73 = 1;
    v74 = v81;
    v68 = v80;
    v62 = v85;
  }

  v78 = v84;
  (*(v84 + 56))(v74, v73, 1, v62);
  if ((*(v78 + 48))(v74, 1, v62) == 1)
  {
    v69(v38, v36);

    v70 = &qword_406B88;
    v71 = qword_328F40;
    v72 = v74;
    goto LABEL_11;
  }

  sub_195EC4(v74, v68, type metadata accessor for ShelvesViewProvider.Page);
  v79 = sub_1901CC();
  sub_298908(v79);

  sub_195CEC(v68, type metadata accessor for ShelvesViewProvider.Page);
  v69(v38, v36);
}

double sub_18CA10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v58 = a6;
  v59 = a7;
  v60 = a5;
  v45 = a4;
  v57 = a1;
  v56 = sub_307048();
  v52 = *(v56 - 8);
  __chkstk_darwin(v56);
  v51 = v9;
  v53 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_307108();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v11 + 16);
  v54 = a2;
  v48 = v15;
  v49 = v11 + 16;
  (v15)(v14, a2, v10, v13);
  sub_12670(a3, v61);
  v16 = *(v11 + 80);
  v47 = ~v16;
  v17 = (v16 + 16) & ~v16;
  v46 = v12 + 7;
  v18 = (v12 + 7 + v17) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  v20 = *(v11 + 32);
  v21 = v19 + v17;
  v22 = v14;
  v23 = v10;
  v24 = v10;
  v25 = v45;
  v55 = v11 + 32;
  v50 = v20;
  v20(v21, v14, v24);
  v26 = a3;
  sub_12658(v61, v19 + v18);

  v27 = sub_30B948();

  type metadata accessor for ShelvesViewSwiftUIHelperCell();
  v28 = swift_dynamicCastClass();
  if (v28)
  {
    v29 = v28;
    v30 = v60;
    v31 = sub_307218();
    *(v29 + OBJC_IVAR____TtC23ShelfKitCollectionViews28ShelvesViewSwiftUIHelperCell_objectGraph) = v27;

    *(v29 + OBJC_IVAR____TtC23ShelfKitCollectionViews28ShelvesViewSwiftUIHelperCell_interactionContextView) = v31;
  }

  v44 = v27;
  v32 = v52;
  v33 = v53;
  v34 = v25;
  v35 = v56;
  (*(v52 + 16))(v53, v34, v56);
  sub_12670(v26, v61);
  v48(v22, v54, v23);
  v36 = (*(v32 + 80) + 40) & ~*(v32 + 80);
  v37 = (v51 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v16 + v37 + 40) & v47;
  v39 = (v46 + v38) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v41 = v59;
  *(v40 + 2) = v58;
  *(v40 + 3) = v41;
  *(v40 + 4) = v57;
  (*(v32 + 32))(&v40[v36], v33, v35);
  sub_12658(v61, &v40[v37]);
  v50(&v40[v38], v22, v23);
  *&v40[v39] = v44;

  sub_30CA98();

  return result;
}

uint64_t sub_18CE0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v21 = a8;
  v22 = a3;
  v27 = a6;
  v28 = a7;
  v25 = a1;
  v26 = a5;
  v23 = a4;
  v24 = a2;
  v20 = a9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_406BF8, &unk_328F80);
  sub_305528();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_406C00, &qword_31CF90);
  sub_305528();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FD450, &qword_328F90);
  sub_305528();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_406C10, &qword_328F98);
  sub_305528();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_406C18, &unk_328FA0);
  sub_305528();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_406C20, &unk_31D000);
  sub_305528();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_406C28, &qword_328FB0);
  sub_305528();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_406C30, &qword_328FB8);
  v18[0] = sub_305528();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_406C38, &qword_328FC0);
  v18[1] = sub_305528();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_406C40, &unk_328FC8);
  v19 = sub_305528();
  v59 = *(*(a9 + 8) + 16);
  v60 = sub_197470(&qword_406C48, &qword_406BF8, &unk_328F80);
  WitnessTable = swift_getWitnessTable();
  v58 = sub_197470(&unk_406C50, &unk_406C00, &qword_31CF90);
  v55 = swift_getWitnessTable();
  v56 = sub_197470(&qword_3FD448, &qword_3FD450, &qword_328F90);
  v53 = swift_getWitnessTable();
  v54 = sub_197470(&qword_406C60, &qword_406C10, &qword_328F98);
  v51 = swift_getWitnessTable();
  v52 = sub_197470(&qword_406C68, &qword_406C18, &unk_328FA0);
  v49 = swift_getWitnessTable();
  v50 = sub_197470(&qword_406C70, &qword_406C20, &unk_31D000);
  v47 = swift_getWitnessTable();
  v48 = sub_197470(&qword_406C78, &qword_406C28, &qword_328FB0);
  v45 = swift_getWitnessTable();
  v46 = sub_197470(&qword_406C80, &qword_406C30, &qword_328FB8);
  v43 = swift_getWitnessTable();
  v44 = sub_197470(&qword_406C88, &qword_406C38, &qword_328FC0);
  v41 = swift_getWitnessTable();
  v42 = sub_197470(&unk_406C90, &qword_406C40, &unk_328FC8);
  v38[0] = v19;
  v38[1] = &type metadata for EmptyView;
  v38[2] = swift_getWitnessTable();
  v39 = &protocol witness table for EmptyView;
  v9 = sub_305ED8();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v18 - v14;
  v29 = v21;
  v30 = v20;
  v31 = v22;
  v32 = v23;
  v33 = v26;
  v34 = v24;
  v35 = v27;
  v36 = v25;
  v37 = v28;
  sub_305EC8();
  sub_3060C8();
  sub_305EB8();
  v16 = *(v10 + 8);
  v16(v12, v9);
  v39 = v9;
  v40 = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_0Tm(v38);
  sub_305EA8();
  v16(v15, v9);
  return sub_30CA78();
}

uint64_t sub_18D3C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v105 = a7;
  v104 = a6;
  v100 = a5;
  v81 = a3;
  v80 = a2;
  v103 = a1;
  v106 = a9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_400440, &qword_318C30);
  __chkstk_darwin(v12 - 8);
  v83 = &v79 - v13;
  v14 = sub_307048();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = *(a8 - 8);
  __chkstk_darwin(v18);
  v20 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_406BF8, &unk_328F80);
  v21 = sub_305528();
  v85 = *(v21 - 8);
  __chkstk_darwin(v21);
  v79 = &v79 - v22;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_406C00, &qword_31CF90);
  v23 = sub_305528();
  v87 = *(v23 - 8);
  __chkstk_darwin(v23);
  v86 = &v79 - v24;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_3FD450, &qword_328F90);
  v25 = sub_305528();
  v89 = *(v25 - 8);
  __chkstk_darwin(v25);
  v88 = &v79 - v26;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_406C10, &qword_328F98);
  v90 = v25;
  v27 = sub_305528();
  v94 = *(v27 - 8);
  __chkstk_darwin(v27);
  v91 = &v79 - v28;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_406C18, &unk_328FA0);
  v96 = v27;
  v29 = sub_305528();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_406C20, &unk_31D000);
  v92 = v29;
  v30 = sub_305528();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_406C28, &qword_328FB0);
  v93 = v30;
  v31 = sub_305528();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_406C30, &qword_328FB8);
  v95 = v31;
  v32 = sub_305528();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_406C38, &qword_328FC0);
  v97 = v32;
  v33 = sub_305528();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_406C40, &unk_328FC8);
  v98 = v33;
  v84 = sub_305528();
  v102 = *(v84 - 8);
  __chkstk_darwin(v84);
  v99 = &v79 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v35);
  v101 = &v79 - v37;
  (*(v15 + 16))(v17, v80, v14, v36);
  sub_12670(v81, &v128);
  v38 = *(a10 + 8);
  sub_3093B8();
  swift_getKeyPath();
  if (qword_3FA990 != -1)
  {
    swift_once();
  }

  v103 = a4;
  sub_304628();
  if (!v129)
  {
    sub_EB68(&v128, &qword_406CA0, &qword_329000);
    goto LABEL_7;
  }

  type metadata accessor for CGSize(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    __asm { FMOV            V0.2D, #10.0 }

    goto LABEL_8;
  }

  _Q0 = v107;
LABEL_8:
  v128 = _Q0;
  v44 = *(v38 + 16);
  v45 = v79;
  sub_306528();

  (*(v82 + 8))(v20, a8);
  swift_getKeyPath();
  v46 = v83;
  sub_307068();
  v47 = sub_197470(&qword_406C48, &qword_406BF8, &unk_328F80);
  v126 = v44;
  v127 = v47;
  WitnessTable = swift_getWitnessTable();
  v49 = v86;
  sub_306528();

  sub_EB68(v46, &unk_400440, &qword_318C30);
  (*(v85 + 8))(v45, v21);
  swift_getKeyPath();
  v50 = *(sub_3070B8() + 16);

  *&v128 = v50;
  BYTE8(v128) = 0;
  v51 = sub_197470(&unk_406C50, &unk_406C00, &qword_31CF90);
  v124 = WitnessTable;
  v125 = v51;
  v52 = swift_getWitnessTable();
  v53 = v88;
  sub_306528();

  (*(v87 + 8))(v49, v23);
  swift_getKeyPath();
  LOBYTE(v128) = sub_3045D8() & 1;
  v54 = sub_197470(&qword_3FD448, &qword_3FD450, &qword_328F90);
  v122 = v52;
  v123 = v54;
  v55 = v90;
  v56 = swift_getWitnessTable();
  v57 = v91;
  sub_306528();

  (*(v89 + 8))(v53, v55);
  type metadata accessor for ShelvesViewSwiftUIHelperCell();
  v58 = swift_dynamicCastClass();
  v59 = sub_197470(&qword_406C60, &qword_406C10, &qword_328F98);
  v120 = v56;
  v121 = v59;
  v60 = v96;
  v61 = swift_getWitnessTable();
  v62 = v99;
  v63 = sub_1AA090(v58, v61, v99);
  (*(v94 + 8))(v57, v60, v63);
  v64 = sub_197470(&qword_406C68, &qword_406C18, &unk_328FA0);
  v118 = v61;
  v119 = v64;
  v65 = swift_getWitnessTable();
  v66 = sub_197470(&qword_406C70, &qword_406C20, &unk_31D000);
  v116 = v65;
  v117 = v66;
  v67 = swift_getWitnessTable();
  v68 = sub_197470(&qword_406C78, &qword_406C28, &qword_328FB0);
  v114 = v67;
  v115 = v68;
  v69 = swift_getWitnessTable();
  v70 = sub_197470(&qword_406C80, &qword_406C30, &qword_328FB8);
  v112 = v69;
  v113 = v70;
  v71 = swift_getWitnessTable();
  v72 = sub_197470(&qword_406C88, &qword_406C38, &qword_328FC0);
  v110 = v71;
  v111 = v72;
  v73 = swift_getWitnessTable();
  v74 = sub_197470(&unk_406C90, &qword_406C40, &unk_328FC8);
  v108 = v73;
  v109 = v74;
  v75 = v84;
  swift_getWitnessTable();
  v76 = v101;
  sub_1A7FE0();
  v77 = *(v102 + 8);
  v77(v62, v75);
  sub_1A7FE0();
  return (v77)(v76, v75);
}

double sub_18DFBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_406BD0, &unk_328F70);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v9[0] = sub_307078();
  v9[1] = v7;
  sub_30BBC8();
  sub_30BC08();
  (*(v4 + 8))(v6, v3);

  return result;
}

double sub_18E0D0(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    swift_beginAccess();
    v10 = v9[10];
    if (v10)
    {
      v20 = v9[11];
      v21 = a4;
      v23 = a3;
      v11 = v9[9];
      v22 = a1;
      v13 = v9[7];
      v12 = v9[8];
      v15 = v9[5];
      v14 = v9[6];
      v16 = v9[3];
      v17 = v9[4];
      v18 = v9[2];
      sub_9FF04(v18, v16);
      sub_9FF04(v17, v15);
      sub_9FF04(v14, v13);
      sub_9FF04(v12, v11);
      v19 = sub_9FF04(v10, v20);
      v10(v23, v21, v22 & 1, v19);

      sub_1EBD0(v18, v16);
      sub_1EBD0(v17, v15);
      sub_1EBD0(v14, v13);
      sub_1EBD0(v12, v11);
      sub_1EBD0(v10, v20);
    }

    else
    {
    }
  }

  return result;
}

int *sub_18E23C()
{
  result = sub_2D72B8(_swiftEmptyArrayStorage);
  off_4067A0 = result;
  return result;
}

uint64_t sub_18E264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (qword_3FABF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = off_4067A0;
  if (*(&dword_10 + off_4067A0) && (v7 = sub_19182C(a1, a2), (v8 & 1) != 0))
  {
    v9 = v7;
    v10 = *&stru_20.segname[v6 + 16];
    v11 = type metadata accessor for ShelvesViewProvider.Supplementaries.Header(0);
    v12 = *(v11 - 8);
    sub_196F8C(v10 + *(v12 + 72) * v9, a3, type metadata accessor for ShelvesViewProvider.Supplementaries.Header);
    (*(v12 + 56))(a3, 0, 1, v11);
  }

  else
  {
    v13 = type metadata accessor for ShelvesViewProvider.Supplementaries.Header(0);
    (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
  }

  return swift_endAccess();
}

double sub_18E3F0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_406BD0, &unk_328F70);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v6 - v2;
  v6[0] = sub_3070A8();
  v6[1] = v4;
  sub_30BBC8();
  sub_30BC08();
  (*(v1 + 8))(v3, v0);

  return result;
}

double sub_18E4F8(char a1, uint64_t a2, void (*a3)(char *, char *, uint64_t))
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_18E56C(a3, a1 & 1);
  }

  return result;
}

uint64_t sub_18E56C(void (*a1)(char *, char *, uint64_t), int a2)
{
  v3 = v2;
  v134 = a2;
  v5 = sub_3041E8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v126 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406B88, qword_328F40);
  __chkstk_darwin(v9 - 8);
  v137 = &v126 - v10;
  v142 = type metadata accessor for ShelvesViewProvider.Page(0);
  v135 = *(v142 - 1);
  __chkstk_darwin(v142);
  v138 = (&v126 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v14 = &v126 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400600, &qword_31DDA0);
  __chkstk_darwin(v15 - 8);
  v136 = &v126 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v146 = &v126 - v18;
  v19 = sub_301F38();
  v148 = *(v19 - 8);
  __chkstk_darwin(v19);
  v133 = &v126 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v126 - v22;
  __chkstk_darwin(v24);
  v141 = &v126 - v25;
  __chkstk_darwin(v26);
  v143 = &v126 - v27;
  v145 = a1;
  v28 = sub_3070A8();
  v30 = v29;
  v31 = OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_pageControlOffsets;
  swift_beginAccess();
  v147 = v3;
  v32 = *(v3 + v31);
  if (*(v32 + 16))
  {
    v33 = sub_19182C(v28, v30);
    v35 = v34;

    if (v35)
    {
      v36 = 0;
      v37 = *(*(v32 + 56) + 8 * v33);
      goto LABEL_6;
    }
  }

  else
  {
  }

  v36 = 1;
  v37 = 0.0;
LABEL_6:
  swift_endAccess();
  v38 = v147;
  swift_beginAccess();
  v39 = v38[6];
  if (!v39)
  {
    v49 = v146;
    (*(v148 + 56))(v146, 1, 1, v19);
    goto LABEL_13;
  }

  v130 = v36;
  v131 = v23;
  v127 = v8;
  v132 = v14;
  v128 = v6;
  v129 = v5;
  v41 = v38[10];
  v140 = v38[11];
  v40 = v140;
  v43 = v38[8];
  v42 = v38[9];
  v44 = v38[7];
  v46 = v38[4];
  v45 = v38[5];
  v144 = v19;
  v47 = v38[2];
  v139 = v38[3];
  sub_9FF04(v47, v139);
  sub_9FF04(v46, v45);
  sub_9FF04(v39, v44);
  sub_9FF04(v43, v42);
  v48 = sub_9FF04(v41, v40);
  v49 = v146;
  v39(v145, v48);
  v50 = v47;
  v51 = v144;
  sub_1EBD0(v50, v139);
  sub_1EBD0(v46, v45);
  sub_1EBD0(v39, v44);
  sub_1EBD0(v43, v42);
  sub_1EBD0(v41, v140);
  v52 = v148;
  v53 = *(v148 + 48);
  if (v53(v49, 1, v51) == 1)
  {
LABEL_13:
    v79 = &qword_400600;
    v80 = &qword_31DDA0;
LABEL_14:
    v81 = v49;
    return sub_EB68(v81, v79, v80);
  }

  v54 = *(v52 + 32);
  v55 = v143;
  v54(v143, v49, v51);
  v56 = OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_collectionView;
  swift_beginAccess();
  v57 = *(v38 + v56);
  if (!v57)
  {
    return (*(v52 + 8))(v55, v51);
  }

  v140 = v54;
  v58 = *(v52 + 16);
  v59 = v141;
  v146 = (v52 + 16);
  v145 = v58;
  v58(v141, v55, v51);
  v60 = v57;
  v61 = sub_30C098();
  isa = sub_301EA8().super.isa;
  v63 = [v60 layoutAttributesForSupplementaryElementOfKind:v61 atIndexPath:isa];

  if (v63)
  {
    [v63 frame];
    v65 = v64;
    v67 = v66;
    v69 = v68;
    v71 = v70;

    *v138 = v60;
    v72 = v60;
    [v72 bounds];
    CGRectGetWidth(v153);
    [v72 safeAreaInsets];
    [v72 safeAreaInsets];
    v73 = 0.0;
    sub_302B08();
    sub_302B28();
    v75 = v65 + v74;
    v76 = v69 - (v74 + v74);
    if (v130)
    {
      v77 = *(v148 + 8);
      v77(v141, v144);

      v49 = v137;
      v78 = v136;
    }

    else
    {
      v85 = v148;
      v49 = v137;
      v78 = v136;
      v86 = v141;
      if (v37 == 0.0)
      {
        v77 = *(v148 + 8);
        v77(v141, v144);
      }

      else
      {
        [v72 directionalLayoutMargins];
        v88 = v87;

        v77 = *(v85 + 8);
        v77(v86, v144);
        v73 = v37 - v88;
      }
    }

    v84 = v142;
    v89 = v138;
    v90 = v138 + v142[6];
    *v90 = v75 + v73;
    *(v90 + 1) = v67;
    *(v90 + 2) = v76;
    *(v90 + 3) = v71;
    sub_195EC4(v89, v49, type metadata accessor for ShelvesViewProvider.Page);
    v83 = 0;
  }

  else
  {
    v77 = *(v52 + 8);
    v77(v59, v51);

    v83 = 1;
    v49 = v137;
    v78 = v136;
    v84 = v142;
  }

  v91 = v135;
  (*(v135 + 56))(v49, v83, 1, v84);
  if ((*(v91 + 48))(v49, 1, v84) == 1)
  {
    v77(v143, v144);

    v79 = &qword_406B88;
    v80 = qword_328F40;
    goto LABEL_14;
  }

  v92 = v132;
  sub_195EC4(v49, v132, type metadata accessor for ShelvesViewProvider.Page);
  sub_18FF10(v134 & 1, v78);
  v93 = v144;
  if (v53(v78, 1, v144) == 1)
  {

    sub_195CEC(v92, type metadata accessor for ShelvesViewProvider.Page);
    v77(v143, v93);
    v79 = &qword_400600;
    v80 = &qword_31DDA0;
    v81 = v78;
    return sub_EB68(v81, v79, v80);
  }

  v141 = v77;
  v142 = v60;
  v94 = v131;
  v140(v131, v78, v93);
  v95 = v147[8];
  if (!v95)
  {
    v152 = 0;
    v150 = 0u;
    v151 = 0u;
    v105 = v133;
    goto LABEL_31;
  }

  v97 = v147[10];
  v96 = v147[11];
  v98 = v147[9];
  v100 = v147[6];
  v99 = v147[7];
  v102 = v147[4];
  v101 = v147[5];
  v103 = v147[2];
  v140 = v147[3];
  sub_9FF04(v103, v140);
  sub_9FF04(v102, v101);
  sub_9FF04(v100, v99);
  sub_9FF04(v95, v98);
  v104 = sub_9FF04(v97, v96);
  v95(&v150, v94, v104);
  sub_1EBD0(v103, v140);
  sub_1EBD0(v102, v101);
  sub_1EBD0(v100, v99);
  sub_1EBD0(v95, v98);
  sub_1EBD0(v97, v96);
  v105 = v133;
  if (!*(&v151 + 1))
  {
LABEL_31:
    sub_EB68(&v150, &qword_4064D0, &unk_31DCB0);
    goto LABEL_32;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4064E0, &qword_31DC90);
  sub_309A78();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_32:
    v106 = 0;
    v108 = 0;
    goto LABEL_33;
  }

  v106 = sub_307D88();
  v108 = v107;

LABEL_33:
  sub_124C4(0, &qword_3FC1C0, OS_os_log_ptr);
  v109 = v127;
  sub_30D348();
  v110 = v144;
  v145(v105, v131, v144);

  v111 = sub_3041D8();
  v112 = sub_30C788();

  if (os_log_type_enabled(v111, v112))
  {
    v113 = swift_slowAlloc();
    v147 = swift_slowAlloc();
    v149 = v147;
    *&v150 = v106;
    *v113 = 136315394;
    *(&v150 + 1) = v108;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_40AB30, &qword_319B40);
    v114 = sub_30C148();
    v116 = sub_191264(v114, v115, &v149);

    *(v113 + 4) = v116;
    *(v113 + 12) = 2080;
    sub_19779C(&qword_406BF0, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
    v117 = sub_30D6D8();
    v119 = v118;
    v120 = v141;
    (v141)(v105, v110);
    v121 = sub_191264(v117, v119, &v149);
    v122 = v120;

    *(v113 + 14) = v121;
    _os_log_impl(&dword_0, v111, v112, "PageControls: scrolling to %s at IndexPath %s", v113, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v122 = v141;
    (v141)(v105, v110);
  }

  (*(v128 + 8))(v109, v129);
  v123 = v131;
  v124 = sub_301EA8().super.isa;
  v125 = v142;
  [v142 scrollToItemAtIndexPath:v124 atScrollPosition:8 animated:1];

  (v122)(v123, v110);
  sub_195CEC(v132, type metadata accessor for ShelvesViewProvider.Page);
  return (v122)(v143, v110);
}

void *sub_18F3A8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406B88, qword_328F40);
  __chkstk_darwin(v4 - 8);
  v6 = &v76 - v5;
  v7 = type metadata accessor for ShelvesViewProvider.Page(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v82 = (&v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v12 = &v76 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400600, &qword_31DDA0);
  __chkstk_darwin(v13 - 8);
  v89 = &v76 - v14;
  v15 = sub_301F38();
  v90 = *(v15 - 8);
  __chkstk_darwin(v15);
  v87 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v86 = &v76 - v18;
  v88 = a1;
  v19 = sub_3070A8();
  v21 = v20;
  v22 = OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_pageControlOffsets;
  swift_beginAccess();
  v23 = *(v2 + v22);
  if (*(v23 + 16))
  {
    v24 = sub_19182C(v19, v21);
    v26 = v25;

    if (v26)
    {
      v27 = 0;
      v28 = *(*(v23 + 56) + 8 * v24);
      goto LABEL_6;
    }
  }

  else
  {
  }

  v27 = 1;
  v28 = 0.0;
LABEL_6:
  swift_endAccess();
  swift_beginAccess();
  v29 = v2[6];
  if (!v29)
  {
    v39 = v89;
    (*(v90 + 56))(v89, 1, 1, v15);
    goto LABEL_15;
  }

  v78 = v27;
  v81 = v8;
  v79 = v7;
  v77 = v12;
  v80 = v6;
  v31 = v2[10];
  v84 = v2[11];
  v30 = v84;
  v85 = v15;
  v32 = v2[8];
  v33 = v2[9];
  v34 = v2[7];
  v35 = v2[4];
  v36 = v2[5];
  v37 = v2[2];
  v83 = v2[3];
  sub_9FF04(v37, v83);
  sub_9FF04(v35, v36);
  sub_9FF04(v29, v34);
  sub_9FF04(v32, v33);
  v38 = sub_9FF04(v31, v30);
  v39 = v89;
  v29(v88, v38);
  sub_1EBD0(v37, v83);
  sub_1EBD0(v35, v36);
  sub_1EBD0(v29, v34);
  v40 = v85;
  sub_1EBD0(v32, v33);
  sub_1EBD0(v31, v84);
  v41 = v90;
  if ((*(v90 + 48))(v39, 1, v40) == 1)
  {
LABEL_15:
    v69 = &qword_400600;
    v70 = &qword_31DDA0;
LABEL_16:
    sub_EB68(v39, v69, v70);
    return &_swiftEmptySetSingleton;
  }

  v42 = v86;
  (*(v41 + 32))(v86, v39, v40);
  v43 = OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_collectionView;
  swift_beginAccess();
  v44 = *(v2 + v43);
  v45 = v81;
  if (!v44)
  {
    (*(v41 + 8))(v42, v40);
    return &_swiftEmptySetSingleton;
  }

  v46 = v87;
  (*(v41 + 16))(v87, v42, v40);
  v47 = v44;
  v48 = sub_30C098();
  isa = sub_301EA8().super.isa;
  v50 = [v47 layoutAttributesForSupplementaryElementOfKind:v48 atIndexPath:isa];

  if (v50)
  {
    [v50 frame];
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v58 = v57;

    *v82 = v47;
    v59 = v79;
    v60 = v47;
    [v60 bounds];
    CGRectGetWidth(v91);
    [v60 safeAreaInsets];
    [v60 safeAreaInsets];
    v61 = 0.0;
    sub_302B08();
    sub_302B28();
    v63 = v52 + v62;
    v64 = v56 - (v62 + v62);
    if ((v78 & 1) != 0 || v28 == 0.0)
    {
      v65 = *(v41 + 8);
      v65(v87, v40);
    }

    else
    {
      [v60 directionalLayoutMargins];
      v75 = v74;

      v65 = *(v41 + 8);
      v65(v87, v40);
      v61 = v28 - v75;
    }

    v66 = v82;
    v67 = v82 + *(v59 + 24);
    *v67 = v63 + v61;
    *(v67 + 1) = v54;
    *(v67 + 2) = v64;
    *(v67 + 3) = v58;
    v39 = v80;
    sub_195EC4(v66, v80, type metadata accessor for ShelvesViewProvider.Page);
    v68 = 0;
  }

  else
  {
    v65 = *(v41 + 8);
    v65(v46, v40);

    v68 = 1;
    v39 = v80;
    v59 = v79;
  }

  (*(v45 + 56))(v39, v68, 1, v59);
  if ((*(v45 + 48))(v39, 1, v59) == 1)
  {
    v65(v42, v40);

    v69 = &qword_406B88;
    v70 = qword_328F40;
    goto LABEL_16;
  }

  v72 = v77;
  sub_195EC4(v39, v77, type metadata accessor for ShelvesViewProvider.Page);
  v73 = sub_1901CC();

  sub_195CEC(v72, type metadata accessor for ShelvesViewProvider.Page);
  v65(v42, v40);
  return v73;
}

char *sub_18FB40(char a1)
{
  v39 = sub_301F38();
  v36 = *(v39 - 8);
  __chkstk_darwin(v39);
  v35 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v38 = &v34 - v5;
  v6 = type metadata accessor for ShelvesViewProvider.Page(0);
  sub_302B18();
  MaxX = v7;
  v9 = (v1 + *(v6 + 24));
  v10 = v9[1];
  v11 = v9[2];
  v12 = v9[3];
  v13 = -v11;
  if (a1)
  {
    v13 = v9[2];
  }

  v14 = *v9 + v13;
  v15 = [*v1 collectionViewLayout];
  v16 = [v15 layoutAttributesForElementsInRect:{v14, v10, v11, v12}];

  if (!v16)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_124C4(0, &qword_406B98, UICollectionViewLayoutAttributes_ptr);
  v17 = sub_30C368();

  if (v17 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)); i; i = sub_30D668())
  {
    v19 = 0;
    v20 = v17 & 0xC000000000000001;
    v21 = MaxX * 0.5;
    v37 = (v36 + 32);
    v22 = _swiftEmptyArrayStorage;
    v23 = &selRef_hitTestInsets;
    v34 = v17 & 0xC000000000000001;
    while (1)
    {
      if (v20)
      {
        v24 = sub_30D578();
      }

      else
      {
        if (v19 >= *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_25;
        }

        v24 = *(v17 + 8 * v19 + 32);
      }

      v25 = v24;
      v26 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if ([v24 v23[162]] || (objc_msgSend(v25, "frame"), v14 > v21 + v27) || (objc_msgSend(v25, "frame"), MaxX = CGRectGetMaxX(v40), v41.origin.x = v14, v41.origin.y = v10, v41.size.width = v11, v41.size.height = v12, MaxX > v21 + CGRectGetMaxX(v41)))
      {
      }

      else
      {
        v28 = [v25 indexPath];
        v29 = v35;
        sub_301EB8();

        v30 = *v37;
        (*v37)(v38, v29, v39);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_CB0E0(0, *(v22 + 2) + 1, 1, v22);
        }

        v32 = *(v22 + 2);
        v31 = *(v22 + 3);
        v20 = v34;
        if (v32 >= v31 >> 1)
        {
          v22 = sub_CB0E0((v31 > 1), v32 + 1, 1, v22);
        }

        *(v22 + 2) = v32 + 1;
        v30(&v22[((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v32], v38, v39);
        v23 = &selRef_hitTestInsets;
      }

      ++v19;
      if (v26 == i)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

  v22 = _swiftEmptyArrayStorage;
LABEL_28:

  return v22;
}

uint64_t sub_18FF10@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_301F38();
  v26 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v21 - v8;
  v10 = sub_18FB40(a1 & 1);
  v11 = *(v10 + 2);
  if (v11)
  {
    v22 = a2;
    v12 = *(v26 + 16);
    v24 = &v10[(*(v26 + 80) + 32) & ~*(v26 + 80)];
    v25 = v12;
    (v12)(v9);
    if (v11 == 1)
    {
LABEL_3:

      v13 = v22;
      (*(v26 + 32))(v22, v9, v4);
      return (*(v26 + 56))(v13, 0, 1, v4);
    }

    else
    {
      result = v26;
      v23 = v26 + 8;
      v16 = (v26 + 32);
      v17 = 1;
      while (v17 < *(v10 + 2))
      {
        v25(v6, &v24[*(v26 + 72) * v17], v4);
        v18 = sub_301ED8();
        v19 = sub_301ED8();
        v20 = *(v26 + 8);
        if (v18 >= v19)
        {
          result = v20(v6, v4);
        }

        else
        {
          v20(v9, v4);
          result = (*v16)(v9, v6, v4);
        }

        if (v11 == ++v17)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {

    v15 = *(v26 + 56);

    return v15(a2, 1, 1, v4);
  }

  return result;
}

void *sub_1901CC()
{
  v5 = &_swiftEmptySetSingleton;
  v0 = *(sub_18FB40(0) + 2);

  if (v0)
  {
    sub_192E9C(&v3, 0);
  }

  v1 = *(sub_18FB40(1) + 2);

  if (v1)
  {
    sub_192E9C(&v4, 1);
  }

  return v5;
}

uint64_t *ShelvesViewProvider.deinit()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[10];
  v8 = v0[11];
  sub_1EBD0(v0[2], v0[3]);
  sub_1EBD0(v1, v2);
  sub_1EBD0(v3, v4);
  sub_1EBD0(v5, v6);
  sub_1EBD0(v7, v8);
  sub_EB68(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_cachedShelfAttributes, &qword_4067C0, &unk_328DA0);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_episodeController));
  sub_EB68(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_deletableExtension, &qword_401100, &unk_31EA40);

  sub_EB68(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_visiblePageControls, &qword_400600, &qword_31DDA0);

  return v0;
}

uint64_t ShelvesViewProvider.__deallocating_deinit()
{
  ShelvesViewProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_190430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v48 = a4;
  v56 = a2;
  v57 = a5;
  v46 = a1;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406BB8, &qword_328F60);
  __chkstk_darwin(v49);
  v52 = &v43[-v6];
  v7 = sub_307278();
  v50 = *(v7 - 8);
  v51 = v7;
  __chkstk_darwin(v7);
  v47 = &v43[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_304928();
  v53 = *(v9 - 8);
  __chkstk_darwin(v9);
  v45 = &v43[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v43[-v12];
  v14 = sub_3072C8();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v43[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v20 = &v43[-v19];
  v21 = sub_304948();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v43[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_307308();
  swift_projectBox();
  v55 = v22;
  v25 = *(v22 + 16);
  v26 = v56;
  v56 = v21;
  v25(v24, v26, v21);
  swift_beginAccess();
  sub_3072E8();
  swift_endAccess();
  (*(v15 + 104))(v17, enum case for ShelfCellListSeparatorMode.Placement.never(_:), v14);
  sub_19779C(&qword_406BA8, &type metadata accessor for ShelfCellListSeparatorMode.Placement, &protocol conformance descriptor for ShelfCellListSeparatorMode.Placement);
  LOBYTE(v22) = sub_30C018();
  v54 = *(v15 + 8);
  v54(v17, v14);
  v27 = (v53 + 104);
  if ((v22 & 1) == 0)
  {
    v30 = sub_3072A8();
    v31 = *v27;
    if (v30)
    {
      v44 = enum case for UIListSeparatorConfiguration.Visibility.hidden(_:);
      v31(v13);
      sub_3048D8();
      LODWORD(v53) = enum case for UIListSeparatorConfiguration.Visibility.visible(_:);
    }

    else
    {
      LODWORD(v53) = enum case for UIListSeparatorConfiguration.Visibility.visible(_:);
      v31(v13);
      sub_3048D8();
      v44 = enum case for UIListSeparatorConfiguration.Visibility.hidden(_:);
    }

    v31(v13);
    sub_3048F8();
    if (!sub_301ED8())
    {
      if (sub_307298())
      {
        v32 = v53;
      }

      else
      {
        v32 = v44;
      }

      (v31)(v45, v32, v9);
      sub_3048D8();
    }

    swift_beginAccess();
    v33 = v47;
    sub_307288();
    swift_endAccess();
    v34 = [v48 traitCollection];
    v35 = [v34 horizontalSizeClass];

    v36 = v50;
    v37 = *(v49 + 48);
    v38 = v52;
    v39 = v33;
    v40 = v51;
    (*(v50 + 32))(v52, v39, v51);
    *(v38 + v37) = v35;
    v41 = (*(v36 + 88))(v38, v40);
    if (v41 == enum case for ShelfCellListSeparatorMode.Layout.custom(_:))
    {
      (*(v36 + 96))(v38, v40);
    }

    else if (v41 != enum case for ShelfCellListSeparatorMode.Layout.default(_:) && v41 != enum case for ShelfCellListSeparatorMode.Layout.marginToMargin(_:))
    {
      sub_EB68(v38, &qword_406BB8, &qword_328F60);
      goto LABEL_16;
    }

    sub_304918();
LABEL_16:
    sub_304908();
    sub_3048E8();
    goto LABEL_17;
  }

  v28 = enum case for UIListSeparatorConfiguration.Visibility.hidden(_:);
  v29 = *v27;
  (*v27)(v13, enum case for UIListSeparatorConfiguration.Visibility.hidden(_:), v9);
  sub_3048D8();
  (v29)(v13, v28, v9);
  sub_3048F8();
LABEL_17:
  v54(v20, v14);
  return (*(v55 + 32))(v57, v24, v56);
}

uint64_t sub_190B00(uint64_t a1, int a2)
{
  v3 = v2;
  v54 = a2;
  v5 = sub_302268();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406BB0, qword_31E160);
  __chkstk_darwin(v9 - 8);
  v11 = (v46 - v10);
  v12 = sub_3022E8();
  v53 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v15 = v3[4];
  v62[2] = v3[3];
  v63 = v15;
  v64 = v3[5];
  v16 = v3[2];
  v62[0] = v3[1];
  v62[1] = v16;
  v17 = v63;
  if (!v63)
  {
    v61 = 0;
    v59 = 0u;
    v60 = 0u;
    goto LABEL_14;
  }

  v52 = v6;
  sub_A0660(v62, v58);
  v17(&v59, a1);
  sub_A0044(v62);
  if (!*(&v60 + 1))
  {
LABEL_14:
    sub_EB68(&v59, &qword_4064D0, &unk_31DCB0);
    v55 = 0u;
    v56 = 0u;
    v57 = 0;
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4064E0, &qword_31DC90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406560, &qword_32CDD0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v57 = 0;
    v55 = 0u;
    v56 = 0u;
    goto LABEL_16;
  }

  if (!*(&v56 + 1))
  {
LABEL_16:
    sub_EB68(&v55, &unk_406568, &qword_328C90);
    return 0;
  }

  sub_12658(&v55, &v59);
  v18 = OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_collectionView;
  swift_beginAccess();
  v19 = *(v3 + v18);
  if (!v19)
  {
    __swift_destroy_boxed_opaque_existential_1(&v59);
    swift_endAccess();
    return 0;
  }

  v50 = v5;
  swift_endAccess();
  v20 = v19;
  v21 = sub_30CE68();

  v51 = v21;
  if (!v21)
  {
    __swift_destroy_boxed_opaque_existential_1(&v59);
    return 0;
  }

  swift_beginAccess();
  v22 = *(v3 + v18);
  if (!v22)
  {
    __swift_destroy_boxed_opaque_existential_1(&v59);
    swift_endAccess();
LABEL_22:

    return 0;
  }

  swift_endAccess();
  v23 = v22;
  isa = sub_301EA8().super.isa;
  v25 = [v23 cellForItemAtIndexPath:isa];

  if (!v25)
  {
    __swift_destroy_boxed_opaque_existential_1(&v59);
    goto LABEL_22;
  }

  v49 = v25;
  v26 = v3[2];
  v58[0] = v3[1];
  v58[1] = v26;
  v27 = v3[4];
  v58[2] = v3[3];
  v58[3] = v27;
  v58[4] = v3[5];
  v28 = *&v58[0];
  if (!*&v58[0])
  {
LABEL_29:

    goto LABEL_30;
  }

  sub_A0660(v58, &v55);
  v29 = v28(a1);
  if (!v29)
  {
LABEL_28:
    sub_A0044(v58);
    goto LABEL_29;
  }

  v30 = v29;
  swift_getObjectType();
  if (swift_conformsToProtocol2())
  {
    v31 = sub_307518();
    goto LABEL_25;
  }

  type metadata accessor for ShelvesViewSwiftUIHelperCell();
  v33 = swift_dynamicCastClass();
  if (!v33)
  {

    goto LABEL_28;
  }

  v31 = *(v33 + OBJC_IVAR____TtC23ShelfKitCollectionViews28ShelvesViewSwiftUIHelperCell_objectGraph);

LABEL_25:

  sub_A0044(v58);
  if (!v31)
  {
    goto LABEL_29;
  }

LABEL_30:
  v34 = *(v3 + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_episodeController + 32);
  v47 = *(v3 + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_episodeController + 24);
  v48 = v34;
  v46[1] = __swift_project_boxed_opaque_existential_1Tm((v3 + OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_episodeController), v47);
  v51 = v51;
  v35 = v49;
  [v35 bounds];
  *v11 = v35;
  v11[1] = v36;
  v11[2] = v37;
  v11[3] = v38;
  v11[4] = v39;
  v40 = enum case for PresentationSource.Position.view(_:);
  v41 = sub_3022D8();
  v42 = *(v41 - 8);
  (*(v42 + 104))(v11, v40, v41);
  (*(v42 + 56))(v11, 0, 1, v41);
  v43 = v35;
  v44 = v51;
  sub_3022A8();
  sub_30CE78();

  v45 = sub_30A8E8();

  (*(v52 + 8))(v8, v50);
  (*(v53 + 8))(v14, v12);
  __swift_destroy_boxed_opaque_existential_1(&v59);
  return v45;
}

uint64_t sub_191100(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return 0;
  }

  v5 = sub_190B00(a1, a3 & 1);

  return v5;
}

uint64_t sub_191184(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

_BYTE **sub_1911D0(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_191208(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(uint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_191264(v6, v7, a3);

  v9 = *a1;
  *v9 = v8;
  *a1 = v9 + 1;
}

uint64_t sub_191264(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  sub_191330(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1DA1C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

void sub_191330(uint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
          *(__dst + v9) = 0;
          *a1 = __dst;
          return;
        }
      }
    }

LABEL_8:
    sub_19143C(a5, a6);
    *a1 = v8;
    return;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    v7 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    v7 = sub_30D598();
    a6 = v11;
    if (!v7)
    {
      __break(1u);
      return;
    }
  }

  *a1 = v7;
  if ((a6 & 0x8000000000000000) == 0)
  {
    swift_unknownObjectRetain();
  }
}

void *sub_19143C(uint64_t a1, unint64_t a2)
{
  v3 = sub_191488(a1, a2);
  sub_1915B8(&off_3B4558);
  return v3;
}

void *sub_191488(uint64_t a1, unint64_t a2)
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

  v6 = sub_2A16F4(v5, 0);
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

  result = sub_30D598();
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
        v10 = sub_30C258();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_2A16F4(v10, 0);
        result = sub_30D548();
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

void sub_1915B8(uint64_t a1)
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

  v3 = sub_1916A4(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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

  memcpy(&v3[v8 + 32], (a1 + 32), v2);

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

char *sub_1916A4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406BC8, &qword_328F68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_19179C(uint64_t a1)
{
  sub_30C0D8();
  sub_30D7F8();
  sub_30C1F8();
  v2 = sub_30D858();

  return sub_1920D8(a1, v2);
}

unint64_t sub_19182C(uint64_t a1, uint64_t a2)
{
  sub_30D7F8();
  sub_30C1F8();
  v4 = sub_30D858();

  return sub_191DC8(a1, a2, v4);
}

unint64_t sub_1918A4(uint64_t a1)
{
  sub_30A4E8();
  sub_19779C(&unk_406B50, &type metadata accessor for FlowPresentationContext, &protocol conformance descriptor for FlowPresentationContext);
  v2 = sub_30BFC8();
  return sub_1922E0(a1, v2, &type metadata accessor for FlowPresentationContext, &unk_40A520, &type metadata accessor for FlowPresentationContext, &protocol conformance descriptor for FlowPresentationContext);
}

unint64_t sub_1919B4(uint64_t a1)
{
  sub_30D7F8();
  sub_309808();
  v2 = sub_30D858();

  return sub_191E80(a1, v2);
}

unint64_t sub_191A20(double *a1)
{
  sub_30D7F8();
  v2 = *a1;
  if (*a1 == 0.0)
  {
    v2 = 0.0;
  }

  sub_30D838(*&v2);
  v3 = a1[1];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  sub_30D838(*&v3);
  type metadata accessor for EpisodeHeroTextAreaUIKitView.CacheKey(0);
  sub_305478();
  sub_19779C(&unk_40C480, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  sub_30BFD8();
  v4 = sub_30D858();

  return sub_191F1C(a1, v4);
}

unint64_t sub_191B1C(uint64_t a1)
{
  sub_30D7F8();
  sub_30B668();
  sub_30C1F8();

  v2 = sub_30D858();

  return sub_1921DC(a1, v2);
}

unint64_t sub_191BA4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_30D088(*(v2 + 40));
  return sub_19255C(a1, v4, &qword_3FBD90, UIView_ptr);
}

unint64_t sub_191BF4(uint64_t a1)
{
  sub_307048();
  sub_19779C(&qword_40C400, &type metadata accessor for ModernShelf.ItemPresentation, &protocol conformance descriptor for ModernShelf.ItemPresentation);
  v2 = sub_30BFC8();
  return sub_1922E0(a1, v2, &type metadata accessor for ModernShelf.ItemPresentation, &unk_406BE0, &type metadata accessor for ModernShelf.ItemPresentation, &protocol conformance descriptor for ModernShelf.ItemPresentation);
}

unint64_t sub_191CC8(uint64_t a1)
{
  v1 = a1;
  sub_30D7F8();
  sub_30D808(v1);
  v2 = sub_30D858();

  return sub_1924EC(v1, v2);
}

unint64_t sub_191D34(uint64_t a1)
{
  v2 = v1;
  v4 = sub_30D088(*(v2 + 40));
  return sub_19255C(a1, v4, &qword_40C3C0, UITextView_ptr);
}

unint64_t sub_191D84(uint64_t a1)
{
  v2 = v1;
  v4 = sub_30D4D8(*(v2 + 40));

  return sub_192628(a1, v4);
}

unint64_t sub_191DC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_30D728())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_191E80(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      if (sub_3097F8())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_191F1C(double *a1, uint64_t a2)
{
  v5 = type metadata accessor for EpisodeHeroTextAreaUIKitView.CacheKey(0);
  __chkstk_darwin(v5);
  v8 = (&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *a1;
    v13 = *(v6 + 72);
    do
    {
      sub_196F8C(*(v2 + 48) + v13 * v10, v8, type metadata accessor for EpisodeHeroTextAreaUIKitView.CacheKey);
      if (*v8 == v12 && v8[1] == a1[1])
      {
        v14 = sub_305468();
        sub_195CEC(v8, type metadata accessor for EpisodeHeroTextAreaUIKitView.CacheKey);
        if (v14)
        {
          return v10;
        }
      }

      else
      {
        sub_195CEC(v8, type metadata accessor for EpisodeHeroTextAreaUIKitView.CacheKey);
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_1920D8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_30C0D8();
      v8 = v7;
      if (v6 == sub_30C0D8() && v8 == v9)
      {
        break;
      }

      v11 = sub_30D728();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1921DC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_30B668();
      v8 = v7;
      if (v6 == sub_30B668() && v8 == v9)
      {
        break;
      }

      v11 = sub_30D728();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1922E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10.n128_f64[0] = __chkstk_darwin(v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8, v10);
      sub_19779C(v24, v25, v26);
      v20 = sub_30C018();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_192480(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1924EC(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_19255C(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_124C4(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_30D098();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_192628(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_11F450(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_30D4E8();
      sub_196EC8(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1926F0(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_30D7E8();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(v5 + 48);
      if (*(v10 + 8 * v8) == a2)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(v10 + 8 * v8);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_19488C(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1927D4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_30D7F8();
  sub_30C1F8();
  v8 = sub_30D858();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_30D728() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1949C0(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_19292C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_192964(double a1)
{
  v2 = sub_307108();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 64) & ~v4;
  v6 = *(v3 + 64);

  __swift_destroy_boxed_opaque_existential_1((v1 + 24));
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

double sub_192A30(char a1, double a2)
{
  v4 = *(sub_307108() - 8);
  v5 = *(v2 + 16);
  v6 = v2 + ((*(v4 + 80) + 64) & ~*(v4 + 80));

  return sub_18E0D0(a1, v5, v2 + 24, v6);
}

uint64_t sub_192AA8(double a1)
{
  v2 = sub_3091A8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = sub_307108();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v6 + v9 + 40) & ~v9;
  v11 = *(v8 + 64);
  v12 = v4 | v9;
  (*(v3 + 8))(v1 + v5, v2);
  __swift_destroy_boxed_opaque_existential_1((v1 + v6));
  (*(v8 + 8))(v1 + v10, v7);

  return _swift_deallocObject(v1, v10 + v11, v12 | 7);
}

double sub_192C04(uint64_t a1, double a2)
{
  v4 = *(sub_3091A8() - 8);
  v5 = (*(v4 + 64) + ((*(v4 + 80) + 16) & ~*(v4 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_307108() - 8);
  v7 = (v5 + *(v6 + 80) + 40) & ~*(v6 + 80);
  v8 = sub_309188();
  v8(v2 + v5, v2 + v7, a1);

  return result;
}

double sub_192D30(char a1, double a2)
{
  v4 = *(sub_307108() - 8);
  v5 = *(v2 + 16);
  v6 = (v2 + ((*(v4 + 80) + 24) & ~*(v4 + 80)));

  return sub_18E4F8(a1 & 1, v5, v6);
}

uint64_t sub_192DA4(double a1)
{
  v2 = sub_307108();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

double sub_192E2C(double a1)
{
  sub_307108();

  return sub_18E3F0();
}

uint64_t sub_192E9C(_BYTE *a1, char a2)
{
  v3 = v2;
  v6 = *v3;
  sub_30D7F8();
  v7 = a2 & 1;
  sub_30D808(a2 & 1);
  v8 = sub_30D858();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(v6 + 48);
      if (*(v12 + v10) == v7)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    LOBYTE(v7) = *(v12 + v10);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_194B40(v7, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    result = 1;
  }

  *a1 = v7;
  return result;
}

uint64_t sub_192F9C(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406B40, qword_327B10);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v30 - v9;
  v31 = v2;
  v11 = *v2;
  sub_30D7F8();
  v35 = v4;
  v12 = *(v4 + 28);
  v32 = a2;
  v13 = (a2 + v12);
  v14 = *v13;
  v15 = v13[1];
  sub_30C1F8();
  v16 = sub_30D858();
  v36 = v11;
  v17 = -1 << *(v11 + 32);
  v18 = v16 & ~v17;
  v34 = v11 + 56;
  v19 = *(v11 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18;
  v30 = v10;
  if (v19)
  {
    v20 = ~v17;
    v21 = *(v5 + 72);
    while (1)
    {
      sub_EB00(*(v36 + 48) + v21 * v18, v7, &qword_406B40, qword_327B10);
      v22 = &v7[*(v35 + 28)];
      if (*v22 == v14 && *(v22 + 1) == v15)
      {
        break;
      }

      v24 = sub_30D728();
      sub_EB68(v7, &qword_406B40, qword_327B10);
      if (v24)
      {
        goto LABEL_11;
      }

      v18 = (v18 + 1) & v20;
      if (((*(v34 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    sub_EB68(v7, &qword_406B40, qword_327B10);
LABEL_11:
    sub_EB68(v32, &qword_406B40, qword_327B10);
    sub_EB00(*(v36 + 48) + v21 * v18, v33, &qword_406B40, qword_327B10);
    return 0;
  }

  else
  {
LABEL_9:
    v25 = v31;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v32;
    v28 = v30;
    sub_EB00(v32, v30, &qword_406B40, qword_327B10);
    v37 = *v25;
    sub_194C94(v28, v18, isUniquelyReferenced_nonNull_native);
    *v25 = v37;
    sub_9FFD4(v27, v33);
    return 1;
  }
}

uint64_t sub_193260(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_30D7E8();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_194F10(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_193340(Swift::UInt64 *a1, Swift::UInt64 a2)
{
  v5 = *v2;
  sub_30D7F8();
  sub_30D838(a2);
  v6 = sub_30D858();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_195044(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

void sub_193438()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406CA8, &qword_329088);
  v2 = *v0;
  v3 = sub_30D518();
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

void sub_193594()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406B90, &unk_328BB0);
  v2 = *v0;
  v3 = sub_30D518();
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
}

void sub_1936D4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406B40, qword_327B10);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406B48, &unk_334BD0);
  v6 = *v0;
  v7 = sub_30D518();
  v8 = v7;
  if (*(v6 + 16))
  {
    v23 = v1;
    v9 = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    v15 = *(v6 + 56);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v16 = v14 & v15;
    v17 = (v13 + 63) >> 6;
    if ((v14 & v15) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_EB00(*(v6 + 48) + v21, v5, &qword_406B40, qword_327B10);
        sub_9FFD4(v5, *(v8 + 48) + v21);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }
}

void sub_1938EC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_30D518();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 56 + 8 * v8)
    {
      memmove(v7, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + 8 * v16) = *(*(v4 + 48) + 8 * v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
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
}

void sub_193A1C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406D50, &unk_334BE0);
  v2 = *v0;
  v3 = sub_30D518();
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
}

void sub_193B5C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406B38, &unk_334BC0);
  v4 = sub_30D528();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      v17 = sub_30D7E8();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }
}

void sub_193D4C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406CA8, &qword_329088);
  v4 = sub_30D528();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_30D7F8();

      sub_30C1F8();
      v20 = sub_30D858();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_193F84(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406B90, &unk_328BB0);
  v4 = sub_30D528();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_30D7F8();
      sub_30D808(v16);
      v17 = sub_30D858();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_1941A4(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406B40, qword_327B10);
  v29 = *(v3 - 8);
  v30 = v3;
  __chkstk_darwin(v3);
  v5 = &v28 - v4;
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406B48, &unk_334BD0);
  v7 = sub_30D528();
  v8 = v7;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = 1 << *(v6 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v6 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = v7 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v29 + 72);
      sub_EB00(*(v6 + 48) + v19 * (v16 | (v9 << 6)), v5, &qword_406B40, qword_327B10);
      sub_30D7F8();
      sub_30C1F8();
      v20 = sub_30D858();
      v21 = -1 << *(v8 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      sub_9FFD4(v5, *(v8 + 48) + v15 * v19);
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v18 = *(v6 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v8;
  }
}

void sub_19447C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406B60, &qword_328F30);
  v4 = sub_30D528();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      v17 = sub_30D7E8();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }
}

void sub_19466C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406D50, &unk_334BE0);
  v4 = sub_30D528();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      sub_30D7F8();
      sub_30D838(v16);
      v17 = sub_30D858();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_19488C(uint64_t a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2ECE94(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_1938EC(&qword_406B38, &unk_334BC0);
      a2 = v7;
      goto LABEL_12;
    }

    sub_193B5C(v5 + 1);
  }

  v8 = *v3;
  v9 = sub_30D7E8();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != a1)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = a1;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  sub_30D768();
  __break(1u);
}

void sub_1949C0(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_2ED2E0(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_193438();
      goto LABEL_16;
    }

    sub_193D4C(v8 + 1);
  }

  v10 = *v4;
  sub_30D7F8();
  sub_30C1F8();
  v11 = sub_30D858();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == a1 && v14[1] == a2;
      if (v15 || (sub_30D728() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = a1;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_30D768();
  __break(1u);
}

void sub_194B40(char a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2ED540(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_193594();
      a2 = v7;
      goto LABEL_12;
    }

    sub_193F84(v5 + 1);
  }

  v8 = *v3;
  sub_30D7F8();
  sub_30D808(a1 & 1);
  v9 = sub_30D858();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + a2) != (a1 & 1))
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = a1 & 1;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  sub_30D768();
  __break(1u);
}

uint64_t sub_194C94(uint64_t a1, unint64_t a2, char a3)
{
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406B40, qword_327B10);
  v7 = *(v34 - 8);
  __chkstk_darwin(v34);
  v9 = &v30 - v8;
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v31 = v3;
  v32 = a1;
  v30 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_2ED790(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1936D4();
      goto LABEL_16;
    }

    sub_1941A4(v10 + 1);
  }

  v12 = *v3;
  sub_30D7F8();
  v13 = (a1 + *(v34 + 28));
  v14 = *v13;
  v15 = v13[1];
  sub_30C1F8();
  v16 = sub_30D858();
  v17 = v12 + 56;
  v33 = v12;
  v18 = -1 << *(v12 + 32);
  a2 = v16 & ~v18;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v20 = *(v7 + 72);
    do
    {
      sub_EB00(*(v33 + 48) + v20 * a2, v9, &qword_406B40, qword_327B10);
      v21 = &v9[*(v34 + 28)];
      if (*v21 == v14 && *(v21 + 1) == v15)
      {
        goto LABEL_19;
      }

      v23 = sub_30D728();
      sub_EB68(v9, &qword_406B40, qword_327B10);
      if (v23)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v19;
    }

    while (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v24 = v32;
  v25 = *v31;
  *(*v31 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_9FFD4(v24, *(v25 + 48) + *(v30 + 72) * a2);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_19:
  sub_EB68(v9, &qword_406B40, qword_327B10);
LABEL_20:
  result = sub_30D768();
  __break(1u);
  return result;
}

void sub_194F10(uint64_t a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2EDA88(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_1938EC(&qword_406B60, &qword_328F30);
      a2 = v7;
      goto LABEL_12;
    }

    sub_19447C(v5 + 1);
  }

  v8 = *v3;
  v9 = sub_30D7E8();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != a1)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = a1;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  sub_30D768();
  __break(1u);
}

void sub_195044(Swift::UInt64 a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2EDCAC(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_193A1C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_19466C(v5 + 1);
  }

  v8 = *v3;
  sub_30D7F8();
  sub_30D838(a1);
  v9 = sub_30D858();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != a1)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = a1;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  sub_30D768();
  __break(1u);
}

uint64_t sub_195190(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  sub_30D7F8();
  sub_30D808(0);
  v2 = sub_30D858() & ~(-1 << *(a1 + 32));
  return (*(a1 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v2) & 1;
}

double sub_195218(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  if (a2 <= 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = a2;
  }

  v10 = objc_opt_self();
  v11 = [v10 fractionalWidthDimension:1.0];
  v12 = [v10 absoluteDimension:a4];
  v13 = objc_opt_self();
  v36 = [v13 sizeWithWidthDimension:v11 heightDimension:v12];

  v14 = v9 * a4 + (v9 + -1.0) * a5;
  if (a2 >= 2)
  {
    sub_124C4(0, &qword_406BA0, NSCollectionLayoutSupplementaryItem_ptr);
    v15 = v36;
    isa = sub_30C358().super.isa;
    v17 = [objc_opt_self() itemWithLayoutSize:v15 supplementaryItems:isa];

    v18 = [v10 fractionalWidthDimension:1.0];
    v19 = [v10 absoluteDimension:v14 - a4 - a5];
    v20 = [v13 sizeWithWidthDimension:v18 heightDimension:v19];

    v21 = [objc_opt_self() verticalGroupWithLayoutSize:v20 subitem:v17 count:v9 - 1];
    v22 = [objc_opt_self() fixedSpacing:a5];
    [v21 setInterItemSpacing:v22];

    v23 = v21;
    sub_30C348();
    if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_30C378();
    }

    sub_30C3C8();
  }

  v24 = [v10 fractionalWidthDimension:{1.0, v36}];
  v25 = [v10 absoluteDimension:a4];
  v26 = [v13 sizeWithWidthDimension:v24 heightDimension:v25];

  v27 = [objc_opt_self() itemWithLayoutSize:v26];
  sub_30C348();
  if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_30C378();
  }

  sub_30C3C8();
  v28 = [v10 absoluteDimension:a3];
  v29 = [v10 absoluteDimension:v14];
  v30 = [v13 sizeWithWidthDimension:v28 heightDimension:v29];

  v31 = objc_opt_self();
  sub_124C4(0, &qword_406BC0, NSCollectionLayoutItem_ptr);
  v32 = sub_30C358().super.isa;

  v33 = [v31 verticalGroupWithLayoutSize:v30 subitems:v32];

  v34 = [objc_opt_self() fixedSpacing:a5];
  [v33 setInterItemSpacing:v34];

  return v9 * a4 + (v9 + -1.0) * a5;
}

uint64_t sub_1956EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_406820, &qword_328DD8);
  __chkstk_darwin(v2 - 8);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v21 - v6;
  if (qword_3FABF0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for ShelvesViewProvider.Supplementaries.Header(0);
  v9 = (a1 + *(v8 + 24));
  v10 = *v9;
  v11 = v9[1];
  swift_beginAccess();
  v12 = off_4067A0;
  if (*(&dword_10 + off_4067A0) && (v13 = sub_19182C(v10, v11), (v14 & 1) != 0))
  {
    v15 = *&stru_20.segname[v12 + 16];
    v16 = *(v8 - 8);
    sub_196F8C(v15 + *(v16 + 72) * v13, v7, type metadata accessor for ShelvesViewProvider.Supplementaries.Header);
    v17 = 0;
  }

  else
  {
    v16 = *(v8 - 8);
    v17 = 1;
  }

  v18 = *(v16 + 56);
  v18(v7, v17, 1, v8);
  swift_endAccess();
  v19 = (*(v16 + 48))(v7, 1, v8);
  result = sub_EB68(v7, &qword_406820, &qword_328DD8);
  if (v19 == 1)
  {
    sub_196F8C(a1, v4, type metadata accessor for ShelvesViewProvider.Supplementaries.Header);
    v18(v4, 0, 1, v8);
    swift_beginAccess();

    sub_184254(v4, v10, v11);
    return swift_endAccess();
  }

  return result;
}

id sub_1959A0(double a1, double a2, double a3)
{
  v5 = -(a1 + a3);
  v6 = objc_opt_self();
  v7 = [v6 fractionalWidthDimension:1.0];
  v8 = [v6 absoluteDimension:a1];
  v9 = [objc_opt_self() sizeWithWidthDimension:v7 heightDimension:v8];

  v10 = v9;
  v11 = sub_30C098();
  v12 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v10 elementKind:v11 alignment:5 absoluteOffset:{0.0, v5}];

  [v12 setContentInsets:{0.0, -a2, 0.0, -a2}];
  [v12 setZIndex:200];

  return v12;
}

uint64_t sub_195B0C(void *a1, uint64_t a2, char *a3)
{
  v5 = type metadata accessor for ModernTitleHeaderView.Style(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ShelvesViewProvider.Supplementaries.Header(0);
  v9 = sub_30C098();
  v10 = sub_30C098();
  isa = sub_301EA8().super.isa;
  v12 = [a1 dequeueReusableSupplementaryViewOfKind:v9 withReuseIdentifier:v10 forIndexPath:isa];

  type metadata accessor for ModernTitleHeaderView(0);
  v13 = swift_dynamicCastClassUnconditional();
  sub_196F8C(&a3[*(v8 + 20)], v7, type metadata accessor for ModernTitleHeaderView.Style);
  ModernTitleHeaderView.style.setter(v7);
  v14 = *a3;
  v15 = OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_forceHideButton;
  swift_beginAccess();
  *(v13 + v15) = v14;
  v16 = *(v13 + OBJC_IVAR____TtC23ShelfKitCollectionViews21ModernTitleHeaderView_button);
  if (v16)
  {
    v17 = v16;
    if (v14)
    {
      v18 = 1;
    }

    else
    {
      v18 = sub_30D0E8();
    }

    [v17 setHidden:v18 & 1];
  }

  return v13;
}

uint64_t sub_195CEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_12Tm(double a1)
{
  v2 = sub_307108();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

void sub_195E10(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v9 = *(sub_307108() - 8);
  v10 = *(v4 + 16);
  v11 = v4 + ((*(v9 + 80) + 24) & ~*(v9 + 80));

  sub_18C154(a3, a4, a1, a2, v10, v11);
}

double block_copy_helper_34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_195EC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void _s23ShelfKitCollectionViews19ShelvesViewProviderC6adjust010collectionF010boundsSize010horizontalK5ClassySo012UICollectionF0C_So6CGSizeVSo015UIUserInterfacekM0VtF_0(void *a1, uint64_t a2)
{
  v68 = a2;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_406B68, &qword_328F38);
  __chkstk_darwin(v64);
  v65 = &v62 - v4;
  v73 = sub_307178();
  v5 = *(v73 - 8);
  __chkstk_darwin(v73);
  v63 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v62 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4067C0, &unk_328DA0);
  __chkstk_darwin(v10 - 8);
  v66 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v67 = &v62 - v13;
  __chkstk_darwin(v14);
  v16 = &v62 - v15;
  __chkstk_darwin(v17);
  v74 = &v62 - v18;
  v19 = sub_302B48();
  v72 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v22);
  v25 = &v62 - v24;
  [a1 bounds];
  CGRectGetWidth(v75);
  [a1 safeAreaInsets];
  [a1 safeAreaInsets];
  sub_302B08();
  sub_302B28();
  v27 = v26;
  [a1 layoutMargins];
  if (v31 != 0.0 || v28 != v27 || v29 != 0.0 || v30 != v27)
  {
    [a1 setLayoutMargins:{0.0, v27, 0.0, v27}];
  }

  v69 = a1;
  v32 = OBJC_IVAR____TtC23ShelfKitCollectionViews19ShelvesViewProvider_cachedShelfAttributes;
  swift_beginAccess();
  sub_EB00(v2 + v32, v74, &qword_4067C0, &unk_328DA0);
  sub_302B38();
  v33 = *(v72 + 16);
  v70 = v19;
  v33(v21, v25, v19);
  sub_307168();
  v34 = *(v5 + 16);
  v35 = v5;
  v36 = v73;
  v34(v16, v9, v73);
  v71 = v35;
  v37 = *(v35 + 56);
  v37(v16, 0, 1, v36);
  swift_beginAccess();
  sub_196F1C(v16, v2 + v32);
  swift_endAccess();
  v38 = *(v2 + 96);
  v39 = v68;
  *(v2 + 96) = v68;
  if (v38 != v39 && v38)
  {
    [v69 reloadData];
    v40 = v73;
LABEL_27:
    v50 = v70;
    v45 = v71;
    goto LABEL_28;
  }

  v41 = v67;
  v40 = v73;
  v34(v67, v9, v73);
  v42 = v41;
  v37(v41, 0, 1, v40);
  v43 = v65;
  v44 = *(v64 + 48);
  sub_EB00(v42, v65, &qword_4067C0, &unk_328DA0);
  sub_EB00(v74, v43 + v44, &qword_4067C0, &unk_328DA0);
  v45 = v71;
  v46 = *(v71 + 48);
  v47 = v46(v43, 1, v40);
  v48 = v69;
  if (v47 == 1)
  {
    sub_EB68(v42, &qword_4067C0, &unk_328DA0);
    v49 = v46(v43 + v44, 1, v40);
    v50 = v70;
    if (v49 == 1)
    {
      sub_EB68(v43, &qword_4067C0, &unk_328DA0);
LABEL_28:
      (*(v45 + 8))(v9, v40);
      sub_EB68(v74, &qword_4067C0, &unk_328DA0);
      (*(v72 + 8))(v25, v50);
      return;
    }

    goto LABEL_14;
  }

  sub_EB00(v43, v66, &qword_4067C0, &unk_328DA0);
  v51 = v46(v43 + v44, 1, v40);
  v50 = v70;
  if (v51 == 1)
  {
    sub_EB68(v67, &qword_4067C0, &unk_328DA0);
    (*(v45 + 8))(v66, v40);
LABEL_14:
    sub_EB68(v43, &unk_406B68, &qword_328F38);
    goto LABEL_15;
  }

  v58 = v43 + v44;
  v59 = v63;
  (*(v45 + 32))(v63, v58, v40);
  sub_19779C(&unk_406B78, &type metadata accessor for ShelfAttributes, &protocol conformance descriptor for ShelfAttributes);
  v60 = sub_30C018();
  v61 = *(v45 + 8);
  v61(v59, v40);
  sub_EB68(v67, &qword_4067C0, &unk_328DA0);
  v61(v66, v40);
  v48 = v69;
  sub_EB68(v43, &qword_4067C0, &unk_328DA0);
  if (v60)
  {
    goto LABEL_28;
  }

LABEL_15:
  v52 = [v48 visibleCells];
  sub_124C4(0, &qword_406520, UICollectionViewCell_ptr);
  v53 = sub_30C368();

  if (!(v53 >> 62))
  {
    v54 = *(&dword_10 + (v53 & 0xFFFFFFFFFFFFFF8));
    if (v54)
    {
      goto LABEL_17;
    }

LABEL_32:

    goto LABEL_28;
  }

  v54 = sub_30D668();
  if (!v54)
  {
    goto LABEL_32;
  }

LABEL_17:
  if (v54 >= 1)
  {
    for (i = 0; i != v54; ++i)
    {
      if ((v53 & 0xC000000000000001) != 0)
      {
        v56 = sub_30D578();
      }

      else
      {
        v56 = *(v53 + 8 * i + 32);
      }

      v57 = v56;
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        if (v57)
        {
          swift_getObjectType();
          sub_307578();
        }
      }
    }

    goto LABEL_27;
  }

  __break(1u);
}

void sub_19679C(uint64_t a1)
{
  sub_196BD4(319, &qword_4068D8, &type metadata accessor for ShelfAttributes);
  if (v1 <= 0x3F)
  {
    sub_196BD4(319, qword_4068E0, &type metadata accessor for DeletableExtension);
    if (v2 <= 0x3F)
    {
      sub_196BD4(319, &qword_408A50, &type metadata accessor for IndexPath);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_19698C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4069E0, &qword_328EB8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_196A5C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4069E0, &qword_328EB8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_196B0C(uint64_t a1)
{
  sub_124C4(319, &qword_406A50, NSCollectionLayoutSection_ptr);
  if (v1 <= 0x3F)
  {
    sub_196BD4(319, &qword_406A58, &type metadata accessor for ShelfCellListSeparatorMode);
    if (v2 <= 0x3F)
    {
      sub_196C28();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_196BD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_30D3A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_196C28()
{
  if (!qword_406A60)
  {
    v0 = sub_30D3A8();
    if (!v1)
    {
      atomic_store(v0, &qword_406A60);
    }
  }
}

uint64_t sub_196CAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ModernTitleHeaderView.Style(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_196D84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ModernTitleHeaderView.Style(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_196E44(uint64_t a1)
{
  result = type metadata accessor for ModernTitleHeaderView.Style(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_196F1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4067C0, &unk_328DA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_196F8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_197014()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t objectdestroyTm_9(double a1)
{
  v2 = sub_307108();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v1 + v5, v2);
  __swift_destroy_boxed_opaque_existential_1((v1 + v6));

  return _swift_deallocObject(v1, v6 + 40, v4 | 7);
}

double sub_19713C(uint64_t a1, double a2)
{
  v4 = *(sub_307108() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  return sub_18DFBC(a1, v2 + v5, v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t sub_1971CC()
{
  v1 = sub_307048();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_307108();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 40) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  __swift_destroy_boxed_opaque_existential_1((v0 + v5));
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v11 + 8, v10 | 7);
}

uint64_t sub_19733C(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = *(sub_307048() - 8);
  v8 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(sub_307108() - 8);
  v11 = (v9 + *(v10 + 80) + 40) & ~*(v10 + 80);
  return sub_18CE0C(a1, a2, v2[4], v2 + v8, v2 + v9, v2 + v11, *(v2 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8)), v5, v6);
}

uint64_t sub_197470(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_19750C@<X0>(uint64_t a1@<X8>)
{
  result = sub_3058D8();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_19758C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_302B48();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_19764C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_302B48();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1976F0(uint64_t a1)
{
  sub_124C4(319, &unk_406D18, UICollectionView_ptr);
  if (v1 <= 0x3F)
  {
    sub_302B48();
    if (v2 <= 0x3F)
    {
      type metadata accessor for CGRect(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_19779C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1977F4(void *a1)
{
  v13.receiver = v1;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, "applyLayoutAttributes:", a1);
  [a1 size];
  v3 = &v1[OBJC_IVAR____TtC23ShelfKitCollectionViews28ShelvesViewSwiftUIHelperCell_cellSize];
  *v3 = v4;
  *(v3 + 1) = v5;
  v6 = objc_opt_self();
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_197F80;
  *(v8 + 24) = v7;
  v12[4] = sub_293C0;
  v12[5] = v8;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_19D688;
  v12[3] = &block_descriptor_35;
  v9 = _Block_copy(v12);
  v10 = v1;

  [v6 performWithoutAnimation:v9];
  _Block_release(v9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

uint64_t sub_197AF8()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v5, "_bridgedConfigurationState");
  sub_3045F8();

  if (qword_3FA990 != -1)
  {
    swift_once();
  }

  v2 = qword_3FE8B8;
  type metadata accessor for CGSize(0);
  sub_197EF0();
  v3 = v2;
  sub_30D508();
  return sub_304638();
}

id sub_197D2C(void *a1)
{
  ObjectType = swift_getObjectType();
  __asm { FMOV            V0.2D, #10.0 }

  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews28ShelvesViewSwiftUIHelperCell_cellSize] = _Q0;
  *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews28ShelvesViewSwiftUIHelperCell_objectGraph] = 0;
  v1[OBJC_IVAR____TtC23ShelfKitCollectionViews28ShelvesViewSwiftUIHelperCell_interactionContextView] = 7;
  v9 = &v1[OBJC_IVAR____TtC23ShelfKitCollectionViews28ShelvesViewSwiftUIHelperCell_transitionNamespace];
  *v9 = 0;
  v9[8] = 1;
  v12.receiver = v1;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, "initWithCoder:", a1);

  if (v10)
  {
  }

  return v10;
}

uint64_t sub_197E4C()
{
  if (*(*v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews28ShelvesViewSwiftUIHelperCell_transitionNamespace + 8))
  {
    return 0;
  }

  v2 = [*v0 contentView];
  sub_3089D8();
  v3 = sub_30CFA8();

  return v3;
}

unint64_t sub_197EF0()
{
  result = qword_406DA0;
  if (!qword_406DA0)
  {
    type metadata accessor for CGSize(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_406DA0);
  }

  return result;
}

uint64_t sub_197F48()
{

  return _swift_deallocObject(v0, 24, 7);
}

double block_copy_helper_35(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_197FB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1802AC();

  return sub_304558();
}

uint64_t sub_198018()
{
  v0 = qword_406DA8;

  return v0;
}

uint64_t EnvironmentValues.isDisplayingCell.getter()
{
  sub_1980A8();
  sub_305A18();
  return v1;
}

unint64_t sub_1980A8()
{
  result = qword_406DB8;
  if (!qword_406DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_406DB8);
  }

  return result;
}

uint64_t (*EnvironmentValues.isDisplayingCell.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_1980A8();
  sub_305A18();
  *(a1 + 16) = *(a1 + 17);
  return sub_1981A0;
}

void *sub_1981D8@<X0>(_BYTE *a1@<X8>)
{
  sub_1980A8();
  result = sub_305A18();
  *a1 = v3;
  return result;
}

unint64_t sub_198298()
{
  result = qword_406DC0;
  if (!qword_406DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_406DC0);
  }

  return result;
}

uint64_t sub_1982EC@<X0>(_BYTE *a1@<X8>)
{
  sub_1802AC();
  result = sub_30C9F8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_198330(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  return sub_197FB8(v2, v3, v4);
}

void CircularProgressView.progressState.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews20CircularProgressView_progressState;
  swift_beginAccess();
  *v4 = v2;
  *(v4 + 8) = v3;
  sub_1991E0();
}

uint64_t CircularProgressView.Style.size.setter(uint64_t result, uint64_t a2, char a3)
{
  *v3 = result;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3 & 1;
  return result;
}

uint64_t CircularProgressView.Style.stopGlyphSize.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 40) = result;
  *(v3 + 48) = a2;
  *(v3 + 56) = a3 & 1;
  return result;
}

void *CircularProgressView.Style.customPrimaryColor.getter()
{
  v1 = *(v0 + 72);
  v2 = v1;
  return v1;
}

void *CircularProgressView.Style.customSecondaryColor.getter()
{
  v1 = *(v0 + 80);
  v2 = v1;
  return v1;
}

void *CircularProgressView.Style.fontMetrics.getter()
{
  v1 = *(v0 + 88);
  v2 = v1;
  return v1;
}

uint64_t CircularProgressView.style.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews20CircularProgressView_style);
  swift_beginAccess();
  v4 = v3[2];
  v6 = v3[4];
  v7 = v3[5];
  v13 = v3[3];
  v5 = v13;
  v14 = v6;
  v15 = v7;
  v9 = v3[1];
  v12[0] = *v3;
  v8 = v12[0];
  v12[1] = v9;
  v12[2] = v4;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  *a1 = v8;
  a1[1] = v9;
  return sub_199DC8(v12, v11);
}

uint64_t sub_198700@<X0>(void *a1@<X0>, __int128 *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC23ShelfKitCollectionViews20CircularProgressView_style);
  swift_beginAccess();
  v4 = *v3;
  v14[1] = v3[1];
  v14[0] = v4;
  v5 = v3[2];
  v6 = v3[3];
  v7 = v3[5];
  v14[4] = v3[4];
  v14[5] = v7;
  v14[2] = v5;
  v14[3] = v6;
  v8 = v3[1];
  *a2 = *v3;
  a2[1] = v8;
  v9 = v3[2];
  v10 = v3[3];
  v11 = v3[5];
  a2[4] = v3[4];
  a2[5] = v11;
  a2[2] = v9;
  a2[3] = v10;
  return sub_199DC8(v14, v13);
}

void CircularProgressView.style.setter(_OWORD *a1)
{
  v3 = v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews20CircularProgressView_style;
  swift_beginAccess();
  v4 = *(v3 + 48);
  v13[2] = *(v3 + 32);
  v13[3] = v4;
  v5 = *(v3 + 80);
  v13[4] = *(v3 + 64);
  v13[5] = v5;
  v6 = *(v3 + 16);
  v13[0] = *v3;
  v13[1] = v6;
  v7 = a1[3];
  *(v3 + 32) = a1[2];
  *(v3 + 48) = v7;
  v8 = a1[5];
  *(v3 + 64) = a1[4];
  *(v3 + 80) = v8;
  v9 = a1[1];
  *v3 = *a1;
  *(v3 + 16) = v9;
  sub_199E00(v13);
  v10 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews20CircularProgressView_stopSign);
  v11 = 0.0;
  if ((*(v3 + 56) & 1) == 0)
  {
    v12 = v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews20CircularProgressView_progressState;
    swift_beginAccess();
    v11 = *v12;
    LODWORD(v11) = 1.0;
    if (*(v12 + 8) & 1 | (*v12 == 0.0))
    {
      *&v11 = 0.0;
    }
  }

  [v10 setOpacity:v11];
  sub_198894();
  _s23ShelfKitCollectionViews20CircularProgressViewC18tintColorDidChangeyyF_0();
}

void sub_198894()
{
  [v0 bounds];
  MidX = CGRectGetMidX(v47);
  [v0 bounds];
  MidY = CGRectGetMidY(v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60, &qword_318100);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_31D470;
  v4 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews20CircularProgressView_backgroundRing];
  *(inited + 32) = v4;
  v5 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews20CircularProgressView_ring];
  *(inited + 40) = v5;
  v6 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews20CircularProgressView_stopSign];
  *(inited + 48) = v6;
  v7 = inited & 0xC000000000000001;
  v8 = v4;
  v9 = v5;
  v10 = v8;
  v11 = v9;
  v44 = v6;
  if ((inited & 0xC000000000000001) != 0)
  {
    v12 = sub_30D578();
  }

  else
  {
    v12 = v10;
  }

  v13 = v12;
  [v0 bounds];
  [v13 setBounds:?];
  [v13 setPosition:{MidX, MidY}];

  if (v7)
  {
    v14 = sub_30D578();
  }

  else
  {
    if (*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)) < 2uLL)
    {
      __break(1u);
      goto LABEL_31;
    }

    v14 = *(inited + 40);
  }

  v15 = v14;
  [v0 bounds];
  [v15 setBounds:?];
  [v15 setPosition:{MidX, MidY}];

  if (v7)
  {
    v16 = sub_30D578();
    goto LABEL_11;
  }

  if (*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)) < 3uLL)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v16 = *(inited + 48);
LABEL_11:
  v17 = v16;

  v18 = v17;
  [v0 bounds];
  [v18 setBounds:?];
  [v18 setPosition:{MidX, MidY}];

  v19 = sub_19A7B4(v0);
  v21 = v20;
  v22 = &v0[OBJC_IVAR____TtC23ShelfKitCollectionViews20CircularProgressView_style];
  swift_beginAccess();
  v23 = *(v22 + 11);
  if (v23)
  {
    [v23 scaledValueForValue:*(v22 + 4)];
    v25 = v24;
  }

  else
  {
    v25 = *(v22 + 4);
  }

  if (v21 >= v19)
  {
    v26 = v19;
  }

  else
  {
    v26 = v21;
  }

  v27 = [objc_opt_self() bezierPathWithArcCenter:1 radius:MidX startAngle:MidY endAngle:(v26 - v25) * 0.5 clockwise:{-1.57079633, 4.71238898}];
  v28 = [v27 CGPath];

  v29 = swift_initStackObject();
  *(v29 + 16) = xmmword_317F20;
  *(v29 + 32) = v10;
  *(v29 + 40) = v11;
  if ((v29 & 0xC000000000000001) != 0)
  {
    v30 = sub_30D578();
  }

  else
  {
    v30 = v10;
  }

  v31 = v30;
  [v30 setPath:v28];
  [v31 setLineWidth:v25];

  if ((v29 & 0xC000000000000001) == 0)
  {
    if (*(&dword_10 + (v29 & 0xFFFFFFFFFFFFFF8)) >= 2uLL)
    {
      v32 = *(v29 + 40);
      goto LABEL_23;
    }

LABEL_32:
    __break(1u);
    return;
  }

  v32 = sub_30D578();
LABEL_23:
  v33 = v32;

  [v33 setPath:v28];
  [v33 setLineWidth:v25];

  if ((v22[56] & 1) == 0)
  {
    v35 = *(v22 + 5);
    v34 = *(v22 + 6);
    v36 = *(v22 + 3);
    v46[2] = *(v22 + 2);
    v46[3] = v36;
    v37 = *(v22 + 5);
    v46[4] = *(v22 + 4);
    v46[5] = v37;
    v38 = *(v22 + 1);
    v46[0] = *v22;
    v46[1] = v38;
    v39 = *(&v37 + 1);
    if (*(&v37 + 1))
    {
      sub_199DC8(v46, v45);
      v40 = v39;
      [v40 scaledValueForValue:v35];
      v35 = v41;
      [v40 scaledValueForValue:v34];
      v34 = v42;
      sub_199E00(v46);
    }

    v49.size.width = 0.0;
    v49.size.height = 0.0;
    v49.origin.x = MidX;
    v49.origin.y = MidY;
    v50 = CGRectInset(v49, v35 * -0.5, v34 * -0.5);
    v43 = CGPathCreateWithRoundedRect(v50, *(v22 + 8), *(v22 + 8), 0);
    [v44 setPath:v43];
  }
}

void _s23ShelfKitCollectionViews20CircularProgressViewC18tintColorDidChangeyyF_0()
{
  v1 = objc_opt_self();
  [v1 begin];
  [v1 setDisableActions:1];
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews20CircularProgressView_episodeCellState;
  swift_beginAccess();
  v3 = v0[v2];
  if (v3 != 2)
  {
    v17 = v3 & 1;
    v9 = &v0[OBJC_IVAR____TtC23ShelfKitCollectionViews20CircularProgressView_progressState];
    swift_beginAccess();
    v10 = v9[8];
    v15 = *v9;
    v16 = v10;
    v6 = sub_19A440(&v17, &v15);
    v8 = v11;
    goto LABEL_5;
  }

  v4 = [v0 tintColor];
  if (v4)
  {
    v5 = v4;
    v6 = sub_19A630(v4);
    v8 = v7;

LABEL_5:
    v12 = *&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews20CircularProgressView_ring];
    v13 = v6;
    v14 = v8;
    [v12 setStrokeColor:v13];
    [*&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews20CircularProgressView_stopSign] setFillColor:v13];

    [*&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews20CircularProgressView_backgroundRing] setStrokeColor:v14];
    [v1 commit];

    return;
  }

  __break(1u);
}

uint64_t (*CircularProgressView.style.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews20CircularProgressView_style;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_198F48;
}

void sub_198F48(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + OBJC_IVAR____TtC23ShelfKitCollectionViews20CircularProgressView_stopSign);
    if (*(v4 + v3[4] + 56))
    {
      v6 = 0.0;
    }

    else
    {
      v7 = v4 + OBJC_IVAR____TtC23ShelfKitCollectionViews20CircularProgressView_progressState;
      swift_beginAccess();
      v6 = *v7;
      LODWORD(v6) = 1.0;
      if (*(v7 + 8) & 1 | (*v7 == 0.0))
      {
        *&v6 = 0.0;
      }
    }

    [v5 setOpacity:v6];
    sub_198894();
    _s23ShelfKitCollectionViews20CircularProgressViewC18tintColorDidChangeyyF_0();
  }

  free(v3);
}

uint64_t CircularProgressView.episodeCellState.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews20CircularProgressView_episodeCellState;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

void CircularProgressView.episodeCellState.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews20CircularProgressView_episodeCellState;
  swift_beginAccess();
  *(v1 + v3) = v2;
  _s23ShelfKitCollectionViews20CircularProgressViewC18tintColorDidChangeyyF_0();
}

uint64_t (*CircularProgressView.episodeCellState.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_199124;
}

uint64_t CircularProgressView.progressState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews20CircularProgressView_progressState;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v5;
  return result;
}

void sub_1991E0()
{
  v1 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews20CircularProgressView_stopSign);
  v2 = v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews20CircularProgressView_style;
  swift_beginAccess();
  v3 = 0.0;
  if ((*(v2 + 56) & 1) == 0)
  {
    v4 = v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews20CircularProgressView_progressState;
    swift_beginAccess();
    v3 = *v4;
    LODWORD(v3) = 1.0;
    if (*(v4 + 8) & 1 | (*v4 == 0.0))
    {
      *&v3 = 0.0;
    }
  }

  [v1 setOpacity:v3];
  v5 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews20CircularProgressView_backgroundRing);
  v6 = v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews20CircularProgressView_progressState;
  swift_beginAccess();
  v7 = *v6;
  LODWORD(v7) = 1.0;
  if (*(v6 + 8) & 1 | (*v6 == 0.0))
  {
    *&v7 = 0.0;
  }

  [v5 setOpacity:v7];
  v8 = *v6;
  if (*(v6 + 8) & 1 | (*v6 == 0.0))
  {
    v8 = 0.85;
  }

  [*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews20CircularProgressView_ring) setStrokeEnd:v8];
  sub_199348();
  _s23ShelfKitCollectionViews20CircularProgressViewC18tintColorDidChangeyyF_0();
}

void sub_199348()
{
  v1 = OBJC_IVAR____TtC23ShelfKitCollectionViews20CircularProgressView_rotationState;
  v2 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews20CircularProgressView_rotationState);
  v3 = v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews20CircularProgressView_progressState;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8) | (*v3 == 0.0);
  if (v2 != 1)
  {
    if (!(*(v3 + 8) & 1 | (*v3 == 0.0)))
    {
      return;
    }

    goto LABEL_6;
  }

  v6 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews20CircularProgressView_ring);
  if (v5)
  {
    v7 = sub_30C098();
    v8 = [v6 animationForKey:v7];

    if (v8)
    {

      return;
    }

LABEL_6:
    v9 = sub_30C098();
    v10 = [objc_opt_self() animationWithKeyPath:v9];

    v11 = v10;
    [v11 setDuration:0.375];
    LODWORD(v12) = 2139095039;
    [v11 setRepeatCount:v12];
    [v11 setCumulative:1];
    isa = sub_302DF8().super.super.isa;
    [v11 setByValue:isa];

    v14 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionLinear];
    [v11 setTimingFunction:v14];

    v15 = *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews20CircularProgressView_ring);
    v16 = sub_30C098();
    [v15 addAnimation:v11 forKey:v16];

    *(v0 + v1) = 1;
    return;
  }

  v17 = [*(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews20CircularProgressView_ring) presentationLayer];
  if (v17)
  {
    v18 = v17;
    v19 = sub_30C098();
    v20 = [v18 valueForKeyPath:v19];

    if (v20)
    {
      sub_30D448();
      swift_unknownObjectRelease();
    }

    else
    {
      v28 = 0u;
      v29 = 0u;
    }

    v30[0] = v28;
    v30[1] = v29;
    if (*(&v29 + 1))
    {
      if (swift_dynamicCast())
      {
        v21 = sub_30C098();
        v22 = [objc_opt_self() animationWithKeyPath:v21];

        v23 = v22;
        [v23 setDuration:0.2];
        v24 = sub_302DF8().super.super.isa;
        [v23 setFromValue:v24];

        v25 = sub_30C588().super.super.isa;
        [v23 setToValue:v25];

        v26 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionLinear];
        [v23 setTimingFunction:v26];

        v27 = sub_30C098();
        [v6 addAnimation:v23 forKey:v27];

        *(v0 + v1) = 0;
      }

      else
      {
      }
    }

    else
    {

      sub_9097C(v30);
    }
  }
}

uint64_t (*CircularProgressView.progressState.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_199828;
}

uint64_t sub_199840(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

void CircularProgressView.init(style:)(_OWORD *a1)
{
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR____TtC23ShelfKitCollectionViews20CircularProgressView_episodeCellState] = 2;
  v4 = &v1[OBJC_IVAR____TtC23ShelfKitCollectionViews20CircularProgressView_progressState];
  *v4 = 0;
  v4[8] = 1;
  v1[OBJC_IVAR____TtC23ShelfKitCollectionViews20CircularProgressView_rotationState] = 0;
  v5 = OBJC_IVAR____TtC23ShelfKitCollectionViews20CircularProgressView_backgroundRing;
  *&v1[v5] = [objc_allocWithZone(CAShapeLayer) init];
  v6 = OBJC_IVAR____TtC23ShelfKitCollectionViews20CircularProgressView_ring;
  *&v1[v6] = [objc_allocWithZone(CAShapeLayer) init];
  v7 = OBJC_IVAR____TtC23ShelfKitCollectionViews20CircularProgressView_stopSign;
  *&v1[v7] = [objc_allocWithZone(CAShapeLayer) init];
  v8 = &v1[OBJC_IVAR____TtC23ShelfKitCollectionViews20CircularProgressView_style];
  v9 = a1[1];
  *v8 = *a1;
  v8[1] = v9;
  v10 = a1[5];
  v8[4] = a1[4];
  v8[5] = v10;
  v11 = a1[3];
  v8[2] = a1[2];
  v8[3] = v11;
  v51.receiver = v1;
  v51.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v51, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v13 = OBJC_IVAR____TtC23ShelfKitCollectionViews20CircularProgressView_ring;
  [*(v12 + OBJC_IVAR____TtC23ShelfKitCollectionViews20CircularProgressView_ring) setLineCap:kCALineCapRound];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FFD60, &qword_318100);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_31D470;
  v49 = OBJC_IVAR____TtC23ShelfKitCollectionViews20CircularProgressView_backgroundRing;
  v50 = v13;
  v15 = *(v12 + OBJC_IVAR____TtC23ShelfKitCollectionViews20CircularProgressView_backgroundRing);
  *(inited + 32) = v15;
  v16 = *(v12 + v13);
  *(inited + 40) = v16;
  v47 = OBJC_IVAR____TtC23ShelfKitCollectionViews20CircularProgressView_stopSign;
  v17 = *(v12 + OBJC_IVAR____TtC23ShelfKitCollectionViews20CircularProgressView_stopSign);
  *(inited + 48) = v17;
  v18 = inited & 0xC000000000000001;
  v19 = v15;
  v20 = v16;
  v21 = v17;
  if ((inited & 0xC000000000000001) != 0)
  {
    v22 = sub_30D578();
  }

  else
  {
    v22 = v19;
  }

  v23 = v22;
  v24 = objc_opt_self();
  v25 = [v24 clearColor];
  v26 = [v25 CGColor];

  [v23 setFillColor:v26];
  v27 = [v12 layer];
  [v27 addSublayer:v23];

  if (v18)
  {
    v28 = sub_30D578();
  }

  else
  {
    if (*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)) < 2uLL)
    {
      __break(1u);
      goto LABEL_21;
    }

    v28 = *(inited + 40);
  }

  v29 = v28;
  v30 = [v24 clearColor];
  v31 = [v30 CGColor];

  [v29 setFillColor:v31];
  v32 = [v12 layer];
  [v32 addSublayer:v29];

  if (v18)
  {
    v33 = sub_30D578();
    goto LABEL_11;
  }

  if (*(&dword_10 + (inited & 0xFFFFFFFFFFFFFF8)) < 3uLL)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v33 = *(inited + 48);
LABEL_11:
  v34 = v33;

  v35 = [v24 clearColor];
  v36 = [v35 CGColor];

  [v34 setFillColor:v36];
  v37 = [v12 layer];
  [v37 addSublayer:v34];

  _s23ShelfKitCollectionViews20CircularProgressViewC18tintColorDidChangeyyF_0();
  sub_198894();
  v38 = *(v12 + v48);
  v39 = v12 + OBJC_IVAR____TtC23ShelfKitCollectionViews20CircularProgressView_style;
  swift_beginAccess();
  v40 = 0.0;
  if ((v39[56] & 1) == 0)
  {
    v41 = (v12 + OBJC_IVAR____TtC23ShelfKitCollectionViews20CircularProgressView_progressState);
    swift_beginAccess();
    v40 = *v41;
    LODWORD(v40) = 1.0;
    if (v41[1] & 1 | (*v41 == 0.0))
    {
      *&v40 = 0.0;
    }
  }

  [v38 setOpacity:v40];
  v42 = *(v12 + v49);
  v43 = (v12 + OBJC_IVAR____TtC23ShelfKitCollectionViews20CircularProgressView_progressState);
  swift_beginAccess();
  v44 = *v43;
  LODWORD(v44) = 1.0;
  if (v43[1] & 1 | (*v43 == 0.0))
  {
    *&v44 = 0.0;
  }

  [v42 setOpacity:v44];
  sub_199348();
  v45 = *v43;
  if (v43[1] & 1 | (*v43 == 0.0))
  {
    v45 = 0.85;
  }

  [*(v12 + v50) setStrokeEnd:v45];
  v46 = [objc_opt_self() defaultCenter];
  [v46 addObserver:v12 selector:"updateRotationAnimation" name:UIApplicationWillEnterForegroundNotification object:0];
}

Swift::Void __swiftcall CircularProgressView.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "traitCollectionDidChange:", isa);
  _s23ShelfKitCollectionViews20CircularProgressViewC18tintColorDidChangeyyF_0();
  sub_198894();
}

Swift::Void __swiftcall CircularProgressView.layoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, "layoutSubviews");
  sub_198894();
}

void sub_19A014(_OWORD *a1)
{
  v2 = a1[3];
  v6[2] = a1[2];
  v6[3] = v2;
  v3 = a1[5];
  v6[4] = a1[4];
  v6[5] = v3;
  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  sub_199DC8(v6, &v5);
  CircularProgressView.style.setter(a1);
}

uint64_t sub_19A06C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews20CircularProgressView_episodeCellState;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

void sub_19A0C4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews20CircularProgressView_episodeCellState;
  swift_beginAccess();
  *(v3 + v4) = v2;
  _s23ShelfKitCollectionViews20CircularProgressViewC18tintColorDidChangeyyF_0();
}

uint64_t sub_19A11C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC23ShelfKitCollectionViews20CircularProgressView_progressState;
  result = swift_beginAccess();
  v5 = *(v3 + 8);
  *a2 = *v3;
  *(a2 + 8) = v5;
  return result;
}

void sub_19A178(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2 + OBJC_IVAR____TtC23ShelfKitCollectionViews20CircularProgressView_progressState;
  swift_beginAccess();
  *v4 = v2;
  *(v4 + 8) = v3;
  sub_1991E0();
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_19A2CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 72);
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

uint64_t sub_19A328(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlayButton.Theme(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PlayButton.Theme(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_19A3F4(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19A410(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

id sub_19A440(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 8);
  v5 = objc_opt_self();
  v6 = [v5 systemGray2Color];
  v7 = [v2 traitCollection];
  v8 = [v6 resolvedColorWithTraitCollection:v7];

  v9 = [v8 CGColor];
  if (v3)
  {
    v10 = [v5 whiteColor];
    v11 = [v2 traitCollection];
    v12 = [v10 resolvedColorWithTraitCollection:v11];

    v13 = [v12 CGColor];
  }

  else if (v4)
  {
    return v9;
  }

  else
  {
    if (qword_3FAFB8 != -1)
    {
      swift_once();
    }

    v14 = qword_40DB80;
    v15 = [v2 traitCollection];
    v16 = [v14 resolvedColorWithTraitCollection:v15];

    v13 = [v16 CGColor];
  }

  return v13;
}

id sub_19A630(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC23ShelfKitCollectionViews20CircularProgressView_style];
  swift_beginAccess();
  v4 = *(v3 + 9);
  if (v4)
  {
    v5 = *(v3 + 9);
  }

  else
  {
    v5 = a1;
    v4 = 0;
  }

  v6 = v4;
  v7 = [v1 traitCollection];
  v8 = [v5 resolvedColorWithTraitCollection:v7];

  v9 = [v8 CGColor];
  v10 = *(v3 + 10);
  if (v10)
  {
    v11 = *(v3 + 10);
  }

  else
  {
    v11 = [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.2];
    v10 = 0;
  }

  v12 = v10;
  v13 = [v1 traitCollection];
  v14 = [v11 resolvedColorWithTraitCollection:v13];

  [v14 CGColor];
  return v9;
}

double sub_19A7B4(char *a1)
{
  v2 = &a1[OBJC_IVAR____TtC23ShelfKitCollectionViews20CircularProgressView_style];
  swift_beginAccess();
  if (v2[16])
  {
    [a1 bounds];
    v3 = CGRectGetWidth(v15) - (*(v2 + 3) + *(v2 + 3));
    [a1 bounds];
    CGRectGetHeight(v16);
  }

  else
  {
    v3 = *v2;
    v4 = *(v2 + 1);
    v5 = *(v2 + 3);
    v6 = *(v2 + 4);
    v7 = *(v2 + 1);
    v14[2] = *(v2 + 2);
    v14[3] = v5;
    v8 = *(v2 + 5);
    v14[4] = v6;
    v14[5] = v8;
    v14[0] = *v2;
    v14[1] = v7;
    v9 = *(&v8 + 1);
    if (*(&v8 + 1))
    {
      sub_199DC8(v14, &v13);
      v10 = v9;
      [v10 scaledValueForValue:v3];
      v3 = v11;
      [v10 scaledValueForValue:v4];
      sub_199E00(v14);
    }
  }

  return v3;
}

unint64_t sub_19A928()
{
  result = qword_406E28;
  if (!qword_406E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_406E28);
  }

  return result;
}

void sub_19A97C()
{
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews20CircularProgressView_episodeCellState) = 2;
  v1 = v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews20CircularProgressView_progressState;
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC23ShelfKitCollectionViews20CircularProgressView_rotationState) = 0;
  v2 = OBJC_IVAR____TtC23ShelfKitCollectionViews20CircularProgressView_backgroundRing;
  *(v0 + v2) = [objc_allocWithZone(CAShapeLayer) init];
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews20CircularProgressView_ring;
  *(v0 + v3) = [objc_allocWithZone(CAShapeLayer) init];
  v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews20CircularProgressView_stopSign;
  *(v0 + v4) = [objc_allocWithZone(CAShapeLayer) init];
  sub_30D648();
  __break(1u);
}

double sub_19AA70(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC23ShelfKitCollectionViews14DownloadButton_presenter;
  if (*&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews14DownloadButton_presenter])
  {

    sub_30A418();
  }

  *&v1[v3] = a1;

  if (*&v1[v3])
  {
    sub_19BF44();

    v4 = v1;
    sub_30A418();
  }

  return result;
}

id sub_19AB24(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v54 = a4;
  v55 = a3;
  v56 = a1;
  v53 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4080B0, &unk_31E0C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v46 - v8;
  v49 = &v46 - v8;
  v10 = sub_302AB8();
  v50 = v10;
  v52 = *(v10 - 8);
  v11 = v52;
  v12 = __chkstk_darwin(v10);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4[OBJC_IVAR____TtC23ShelfKitCollectionViews14DownloadButton_episodeCellState] = 2;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews14DownloadButton_presenter] = 0;
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews14DownloadButton_progressView] = 0;
  v15 = &v4[OBJC_IVAR____TtC23ShelfKitCollectionViews14DownloadButton_progressState];
  *v15 = 0;
  *(v15 + 4) = 256;
  v16 = OBJC_IVAR____TtC23ShelfKitCollectionViews14DownloadButton_downloadButtonStyle;
  sub_74800(a1, &v5[OBJC_IVAR____TtC23ShelfKitCollectionViews14DownloadButton_downloadButtonStyle], v12);
  v51 = *(v11 + 16);
  v51(v14, &v5[v16], v10);
  v17 = sub_3029E8();
  v18 = *(v17 - 8);
  v47 = *(v18 + 56);
  v48 = v18 + 56;
  v47(v9, 1, 1, v17);
  v19 = &v5[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customTitle];
  *v19 = 0;
  v19[1] = 0;
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fillMask] = 0;
  v20 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_platterFillColor;
  sub_124C4(0, &qword_3FFD48, UIColor_ptr);
  v21 = objc_opt_self();
  v22 = [v21 systemGray6Color];
  v23 = [v21 systemGray5Color];
  v24 = sub_30CFB8();

  *&v5[v20] = v24;
  v25 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_glyphView;
  *&v5[v25] = [objc_allocWithZone(UIImageView) init];
  v26 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fillView;
  v27 = [objc_allocWithZone(UIView) init];
  [v27 setClipsToBounds:1];
  [v27 setUserInteractionEnabled:0];
  *&v5[v26] = v27;
  v28 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_blurView;
  v29 = [objc_opt_self() effectWithStyle:16];
  v30 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v29];

  v31 = v30;
  [v31 setUserInteractionEnabled:0];
  [v31 setClipsToBounds:1];

  *&v5[v28] = v31;
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_previousPlatterFillColor] = 0;
  *&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customOverlay] = 0;
  v5[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customOverlayHidesBackground] = 1;
  v32 = &v5[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fadeUpdateBlock];
  *v32 = 0;
  v32[1] = 0;
  v5[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_fadeOutInProgress] = 0;
  v33 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_color;
  v47(&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_color], 1, 1, v17);
  v34 = v50;
  v51(&v5[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_glyph], v14, v50);
  swift_beginAccess();
  v35 = v49;
  sub_A8088(v49, &v5[v33]);
  swift_endAccess();
  v5[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_style] = 0;
  v5[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_active] = 0;
  v36 = *&v5[v25];
  v37 = &v5[OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_layout];
  *(v37 + 1) = 0;
  *(v37 + 2) = 0;
  *v37 = v36;
  v37[24] = 0;
  v38 = type metadata accessor for GlyphButton(0);
  v57.receiver = v5;
  v57.super_class = v38;
  v39 = v36;
  v40 = objc_msgSendSuper2(&v57, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_24DE30();
  sub_24F788(v53, v55, v54 & 1);

  sub_A80F8(v35);
  (*(v52 + 8))(v14, v34);
  sub_124C4(0, &qword_408080, UIAction_ptr);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v41 = v40;
  v42 = sub_30D0C8();
  [v41 addAction:v42 forControlEvents:0x2000];

  v43 = sub_30C098();
  [v41 setAccessibilityIdentifier:v43];

  sub_74864(v56, v44);
  return v41;
}

double sub_19B130(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC23ShelfKitCollectionViews14DownloadButton_presenter);
    v5 = Strong;

    if (v4)
    {
      sub_30A3E8();
    }
  }

  return result;
}

void sub_19B240(double a1)
{
  v2 = (v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews14DownloadButton_progressState);
  if (*(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews14DownloadButton_progressState + 9))
  {
    v3 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews14DownloadButton_progressView);
    *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews14DownloadButton_progressView) = 0;

    v4 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customOverlay;
    swift_beginAccess();
    v5 = *(v1 + v4);
    if (v5)
    {
      [v5 removeFromSuperview];
      v6 = *(v1 + v4);
    }

    else
    {
      v6 = 0;
    }

    *(v1 + v4) = 0;

    sub_250E38();
  }

  else
  {
    v7 = *v2;
    v8 = *(v2 + 8);
    v9 = OBJC_IVAR____TtC23ShelfKitCollectionViews14DownloadButton_progressView;
    v10 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews14DownloadButton_progressView);
    if (v10)
    {
      v11 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews14DownloadButton_progressView);
    }

    else
    {
      v12 = v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews14DownloadButton_downloadButtonStyle;
      v13 = (v12 + *(type metadata accessor for DownloadButton.Style(0) + 20));
      v14 = v13[3];
      v15 = v13[1];
      v32 = v13[2];
      v33 = v14;
      v16 = v13[3];
      v17 = v13[5];
      v34 = v13[4];
      v35 = v17;
      v18 = v13[1];
      v31[0] = *v13;
      v31[1] = v18;
      v30[2] = v32;
      v30[3] = v16;
      v19 = v13[5];
      v30[4] = v34;
      v30[5] = v19;
      v30[0] = v31[0];
      v30[1] = v15;
      v20 = objc_allocWithZone(type metadata accessor for CircularProgressView());
      sub_199DC8(v31, &v29);
      CircularProgressView.init(style:)(v30);
      v22 = v21;
      [v22 setUserInteractionEnabled:0];
      v23 = *(v1 + v9);
      *(v1 + v9) = v22;

      v24 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_customOverlay;
      swift_beginAccess();
      v25 = *(v1 + v24);
      if (v25)
      {
        [v25 removeFromSuperview];
        v26 = *(v1 + v24);
      }

      else
      {
        v26 = 0;
      }

      *(v1 + v24) = v22;
      v11 = v22;

      sub_250E38();
      v10 = 0;
    }

    v27 = &v11[OBJC_IVAR____TtC23ShelfKitCollectionViews20CircularProgressView_progressState];
    swift_beginAccess();
    *v27 = v7;
    v27[8] = v8 & 1;
    v28 = v10;
    sub_1991E0();
  }
}

void sub_19B464(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = objc_opt_self();
  v4 = &selRef_whiteColor;
  if (!v2)
  {
    v4 = &selRef_systemGray2Color;
  }

  v5 = [v3 *v4];
  [v1 setTintColor:v5];

  v6 = *&v1[OBJC_IVAR____TtC23ShelfKitCollectionViews14DownloadButton_progressView];
  if (v6)
  {
    v7 = OBJC_IVAR____TtC23ShelfKitCollectionViews20CircularProgressView_episodeCellState;
    swift_beginAccess();
    v6[v7] = v2;
    v8 = v6;
    _s23ShelfKitCollectionViews20CircularProgressViewC18tintColorDidChangeyyF_0();
  }
}

void sub_19B558(double a1)
{
  sub_74864(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews14DownloadButton_downloadButtonStyle, a1);

  v2 = *(v1 + OBJC_IVAR____TtC23ShelfKitCollectionViews14DownloadButton_progressView);
}

id sub_19B5A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DownloadButton(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_19B664(uint64_t a1, double a2)
{
  result = type metadata accessor for DownloadButton.Style(319);
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

void sub_19B734(uint64_t a1, char a2)
{
  v5 = sub_302AB8();
  v6 = *(v5 - 8);
  v8 = __chkstk_darwin(v5);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {
    v11 = 0;
    v13 = 0;
    v12 = 0;
    goto LABEL_9;
  }

  if (!a1)
  {
    (*(v6 + 16))(v10, v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews14DownloadButton_downloadButtonStyle, v7, v8);
    sub_24E704(v10);
    v11 = 0;
    v13 = 0;
LABEL_8:
    v12 = 1;
    goto LABEL_9;
  }

  if (a1 != 1)
  {
    v14 = v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews14DownloadButton_downloadButtonStyle;
    v15 = v7;
    v16 = type metadata accessor for DownloadButton.Style(0);
    (*(v6 + 16))(v10, v14 + *(v16 + 24), v15);
    sub_24E704(v10);
    a1 = 0;
    v13 = 0;
    v11 = *(v14 + *(v16 + 28));
    goto LABEL_8;
  }

  v11 = 0;
  a1 = 0;
  v12 = 0;
  v13 = 1;
LABEL_9:
  v17 = OBJC_IVAR____TtC23ShelfKitCollectionViews11GlyphButton_active;
  swift_beginAccess();
  *(v2 + v17) = v11;
  sub_24E1B8();
  v18 = v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews14DownloadButton_progressState;
  *v18 = a1;
  *(v18 + 8) = v13;
  *(v18 + 9) = v12;
  sub_19B240(v19);
}

uint64_t sub_19B910()
{
  if (*&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews14DownloadButton_presenter])
  {

    v1 = sub_30A3D8();
    v3 = v2;

    if ((v3 & 1) == 0)
    {
      goto LABEL_5;
    }

    if (!v1)
    {
      v5 = [objc_opt_self() mainBundle];
      v12._countAndFlagsBits = 0xE000000000000000;
      v6._object = 0x80000000003392F0;
      v6._countAndFlagsBits = 0xD000000000000012;
      goto LABEL_7;
    }

    if (v1 != 1)
    {
      v4 = "AX_DOWNLOADING_BUTTON";
      v5 = [objc_opt_self() mainBundle];
      v12._countAndFlagsBits = 0xE000000000000000;
      v6._countAndFlagsBits = 0xD000000000000014;
    }

    else
    {
LABEL_5:
      v4 = "podcasts.downloadNavButton";
      v5 = [objc_opt_self() mainBundle];
      v12._countAndFlagsBits = 0xE000000000000000;
      v6._countAndFlagsBits = 0xD000000000000015;
    }

    v6._object = (v4 | 0x8000000000000000);
LABEL_7:
    v14.value._countAndFlagsBits = 0;
    v14.value._object = 0;
    v7.super.isa = v5;
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    v8 = sub_301AB8(v6, v14, v7, v15, 0, v12);
    goto LABEL_10;
  }

  v13.receiver = v0;
  v13.super_class = type metadata accessor for DownloadButton(0);
  v9 = objc_msgSendSuper2(&v13, "accessibilityLabel");
  if (!v9)
  {
    return 0;
  }

  v5 = v9;
  v8 = sub_30C0D8();
LABEL_10:
  v10 = v8;

  return v10;
}

id sub_19BAE8(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_30C098();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_19BB68()
{
  if (*&v0[OBJC_IVAR____TtC23ShelfKitCollectionViews14DownloadButton_presenter])
  {

    sub_30A3D8();
    v2 = v1;

    if ((v2 & 1) == 0)
    {
      v3 = UIAXFormatFloatWithPercentage();
      if (v3)
      {
        goto LABEL_4;
      }

      return 0;
    }
  }

  v7.receiver = v0;
  v7.super_class = type metadata accessor for DownloadButton(0);
  v3 = objc_msgSendSuper2(&v7, "accessibilityValue");
  if (!v3)
  {
    return 0;
  }

LABEL_4:
  v4 = v3;
  v5 = sub_30C0D8();

  return v5;
}

void sub_19BC40(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  if (a3)
  {
    sub_30C0D8();
    v6 = a1;
    v7 = sub_30C098();
  }

  else
  {
    v8 = a1;
    v7 = 0;
  }

  v9.receiver = a1;
  v9.super_class = type metadata accessor for DownloadButton(0);
  objc_msgSendSuper2(&v9, *a4, v7);
}

uint64_t sub_19BCE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_302AB8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 72);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_19BDC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_302AB8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 72) = a2;
  }

  return result;
}

uint64_t sub_19BE84(uint64_t a1)
{
  result = sub_302AB8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_19BF04()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_19BF44()
{
  result = qword_406F10;
  if (!qword_406F10)
  {
    type metadata accessor for DownloadButton(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_406F10);
  }

  return result;
}

void sub_19BF9C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews12FilterButton_hoverRecognizer] = 0;
  v4[OBJC_IVAR____TtC23ShelfKitCollectionViews12FilterButton_isHovering] = 0;
  v16.receiver = v4;
  v16.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
  v11 = objc_allocWithZone(UIHoverGestureRecognizer);
  v12 = v10;
  v13 = [v11 initWithTarget:v12 action:"didHover:"];
  v14 = *&v12[OBJC_IVAR____TtC23ShelfKitCollectionViews12FilterButton_hoverRecognizer];
  *&v12[OBJC_IVAR____TtC23ShelfKitCollectionViews12FilterButton_hoverRecognizer] = v13;
  v15 = v13;

  if (v15)
  {
    [v12 addGestureRecognizer:v15];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_19C140()
{
  v0 = sub_30D278();
  __swift_allocate_value_buffer(v0, qword_429520);
  __swift_project_value_buffer(v0, qword_429520);
  return sub_19C18C();
}

uint64_t sub_19C18C()
{
  v0 = sub_30D278();
  v22 = *(v0 - 8);
  v23 = v0;
  __chkstk_darwin(v0);
  v2 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_3046C8();
  v3 = *(v21 - 8);
  __chkstk_darwin(v21);
  v20 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v18 - v6;
  v19 = sub_302AB8();
  v8 = *(v19 - 8);
  __chkstk_darwin(v19);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_30D1A8();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_30D258();
  v15 = [objc_opt_self() labelColor];
  sub_30D1F8();
  sub_30D188();
  (*(v12 + 104))(v14, enum case for UIButton.Configuration.TitleAlignment.leading(_:), v11);
  sub_30D1D8();
  sub_302968();
  sub_302A08();
  (*(v8 + 8))(v10, v19);
  sub_30D248();
  sub_30D1B8();
  sub_30D258();
  sub_30D118();
  (*(v22 + 8))(v2, v23);
  sub_304648();
  v16 = v21;
  (*(v3 + 16))(v20, v7, v21);
  sub_30D128();
  return (*(v3 + 8))(v7, v16);
}

uint64_t sub_19C4F8()
{
  v1 = v0;
  v2 = sub_3046C8();
  v42 = *(v2 - 8);
  __chkstk_darwin(v2);
  v41 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v37 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400A80, &unk_31E150);
  __chkstk_darwin(v7 - 8);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v37 - v11;
  v13 = sub_30D278();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v37 - v18;
  sub_30D298();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_19CB84(v12);
  }

  v40 = v2;
  (*(v14 + 32))(v19, v12, v13);
  v21 = [v0 traitCollection];
  v22 = [v21 userInterfaceStyle];

  if (v22 == &dword_0 + 1)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = 1.0;
  }

  v38 = *(v14 + 16);
  v38(v16, v19, v13);
  sub_30D118();
  v24 = objc_opt_self();
  v25 = [v24 labelColor];
  sub_30D1F8();
  v26 = [v24 clearColor];
  sub_304678();
  v27 = [v1 state];
  v28 = v1[OBJC_IVAR____TtC23ShelfKitCollectionViews12FilterButton_isHovering];
  v39 = v14 + 16;
  if (v28 != 1)
  {
    if (v27 != &dword_4)
    {
      if (v27 != (&dword_0 + 1))
      {
        goto LABEL_17;
      }

LABEL_13:
      [objc_allocWithZone(UIColor) initWithWhite:v23 alpha:0.1];
      goto LABEL_20;
    }

LABEL_14:
    v29 = [v24 whiteColor];
    sub_30D1F8();
    if (qword_3FAFB8 != -1)
    {
      swift_once();
    }

    v30 = qword_40DB80;
    goto LABEL_20;
  }

  if (v27 == &dword_4)
  {
    goto LABEL_14;
  }

  if (v27 == (&dword_0 + 1))
  {
    goto LABEL_13;
  }

  if (!v27)
  {
    [objc_allocWithZone(UIColor) initWithWhite:v23 alpha:0.05];
    goto LABEL_20;
  }

LABEL_17:
  if ([v1 state] & 4) != 0 && (objc_msgSend(v1, "state"))
  {
    if (qword_3FAFB8 != -1)
    {
      swift_once();
    }

    v35 = qword_40DB80;
    sub_304678();
    v36 = [v24 whiteColor];
    sub_30D1F8();
    goto LABEL_21;
  }

  v31 = [v24 clearColor];
LABEL_20:
  sub_304678();
LABEL_21:
  v32 = v42;
  v33 = v40;
  (*(v42 + 16))(v41, v6, v40);
  sub_30D128();
  v38(v9, v16, v13);
  (*(v14 + 56))(v9, 0, 1, v13);
  sub_30D2A8();
  (*(v32 + 8))(v6, v33);
  v34 = *(v14 + 8);
  v34(v16, v13);
  return (v34)(v19, v13);
}

uint64_t sub_19CB84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_400A80, &unk_31E150);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Int GlyphButton.Layout.hashValue.getter(char a1)
{
  sub_30D7F8();
  sub_30D808(a1 & 1);
  return sub_30D858();
}

Swift::Int sub_19CCEC(uint64_t a1)
{
  sub_30D7F8();
  GlyphButton.Layout.hash(into:)(v3, *v1);
  return sub_30D858();
}

uint64_t sub_19CD2C(uint64_t a1)
{
  swift_getObjCClassMetadata();
  sub_19CD64();

  return swift_getObjCClassFromMetadata();
}

uint64_t sub_19CD6C()
{
  v1 = [v0 layer];
  objc_opt_self();

  return swift_dynamicCastObjCClassUnconditional();
}

id sub_19CDD4(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = type metadata accessor for MirroredViewContainer.ReplicatorView(0, *(&stru_20.filesize + (swift_isaMask & *v8)), a7, a8);
  v15.receiver = v8;
  v15.super_class = v13;
  return objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
}

id sub_19CE84(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for MirroredViewContainer.ReplicatorView(0, *(&stru_20.filesize + (swift_isaMask & *v4)), a3, a4);
  v9.receiver = v4;
  v9.super_class = v6;
  v7 = objc_msgSendSuper2(&v9, "initWithCoder:", a1);

  if (v7)
  {
  }

  return v7;
}

id sub_19CF6C(uint64_t a1, char a2)
{
  v3 = &v2[qword_406F68];
  *v3 = a1;
  v3[8] = a2;
  return [v2 setNeedsLayout];
}

void sub_19CFB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = type metadata accessor for MirroredViewContainer(0, *(&stru_20.filesize + (swift_isaMask & *v4)), a3, a4);
  v23.receiver = v4;
  v23.super_class = v6;
  objc_msgSendSuper2(&v23, "layoutSubviews");
  v7 = *&v4[qword_406F68];
  v8 = v4[qword_406F68 + 8];
  [v5 bounds];
  if (v8)
  {
    if (v8 == 1)
    {
      v11 = (1.0 - v7) * v10;
    }

    else
    {
      v11 = v10 - v7;
    }
  }

  else
  {
    v11 = v9 * v7;
  }

  v12 = v5[qword_406F58];
  v13 = 0.0;
  if ((v12 & 1) == 0)
  {
    [v5 bounds];
    v13 = v14 - v11;
  }

  v15 = *&v5[qword_406F50];
  [v5 bounds];
  [v15 setFrame:{0.0, v13}];
  [v5 bounds];
  if (v16 <= v11)
  {
    v19 = sub_19CD6C();
    [v19 setInstanceCount:1];
  }

  else
  {
    v17 = v11 + -1.0;
    if (!v12)
    {
      v17 = 1.0 - v11;
    }

    CATransform3DMakeTranslation(&v22, 0.0, v17, 0.0);
    v18 = sub_19CD6C();
    v21 = v22;
    CATransform3DScale(&v20, &v21, 1.0, -1.0, 1.0);
    [v18 setInstanceTransform:&v20];

    v19 = sub_19CD6C();
    [v19 setInstanceCount:2];
  }
}

void sub_19D1A0(void *a1)
{
  v4 = a1;
  sub_19CFB8(v4, v1, v2, v3);
}

id sub_19D228(uint64_t (*a1)(void, void))
{
  v2 = a1(0, *(&stru_20.filesize + (swift_isaMask & *v1)));
  v4.receiver = v1;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_19D28C(uint64_t a1)
{
  v2 = *(a1 + qword_406F60);
}

unint64_t sub_19D3E0()
{
  result = qword_4070F0;
  if (!qword_4070F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_4070F0);
  }

  return result;
}

void sub_19D42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = qword_406F50;
  type metadata accessor for MirroredViewContainer.ReplicatorView(0, *(&stru_20.filesize + (swift_isaMask & *v4)), a3, a4);
  *(v4 + v5) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_30D648();
  __break(1u);
}

void sub_19D570(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = objc_opt_self();
  v7 = sub_30C098();
  v8 = [v6 upNextForPodcastUuid:v7 ctx:a4];

  if (v8)
  {
    v9 = [v8 upNextScore];
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a1 + 24);
  *(a1 + 24) = v9;

  v11 = sub_30C098();
  v12 = [a4 podcastForUuid:v11];

  if (v12)
  {
    v13 = [v12 isSerialShowTypeInFeed];
  }

  else
  {
    v13 = 0;
  }

  *(a1 + 16) = v13;
}

void sub_19D6B0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = __swift_project_boxed_opaque_existential_1Tm(a1, a1[3])[3];
  if (v3)
  {
    v4 = v3;
    [v4 combinedScore];
    sub_30D558(71);
    v51._countAndFlagsBits = 0x6353206C61746F54;
    v51._object = 0xEF2073692065726FLL;
    sub_30C238(v51);
    v52._countAndFlagsBits = sub_30C4B8();
    sub_30C238(v52);

    v53._countAndFlagsBits = 0xD000000000000036;
    v53._object = 0x800000000033E920;
    sub_30C238(v53);
  }

  sub_E504();
  v5 = sub_3063C8();
  v7 = v6;
  v9 = v8;
  v43 = sub_306368();
  v47 = v10;
  v48 = v11;
  v13 = v12;
  sub_EBC8(v5, v7, v9 & 1);

  v14 = __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_19DF58(*(v14 + 16), v14[3]);
  if (v15)
  {
    v16 = sub_3063C8();
    v18 = v17;
    v49 = v16;
    v44 = v20;
    v42 = v19 & 1;
    sub_EBD8(v16, v20, v19 & 1);
    v50 = v18;
  }

  else
  {
    v49 = 0;
    v50 = 0;
    v44 = 0;
    v42 = 0;
  }

  v21 = __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_19E28C(v21[3]);
  if (v22)
  {
    v23 = sub_3063C8();
    v25 = v24;
    v27 = v23;
    v41 = v28;
    v45 = v26 & 1;
    sub_EBD8(v23, v28, v26 & 1);
    v46 = v25;
  }

  else
  {
    v27 = 0;
    v41 = 0;
    v45 = 0;
    v46 = 0;
  }

  v29 = __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_19E5F0(v29[3]);
  if (v30)
  {
    v31 = sub_3063C8();
    v33 = v32;
    v35 = v31;
    v37 = v36;
    v38 = v34 & 1;
    sub_EBD8(v31, v36, v34 & 1);
    v39 = v33;
  }

  else
  {
    v35 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
  }

  sub_EBD8(v43, v47, v13 & 1);

  sub_EBD8(v43, v47, v13 & 1);

  sub_4A24C(v49, v44, v42, v50);
  sub_4A24C(v27, v41, v45, v46);
  sub_4A24C(v35, v37, v38, v39);
  sub_4A290(v27, v41, v45, v46);
  sub_4A290(v49, v44, v42, v50);
  sub_4A290(v35, v37, v38, v39);
  sub_EBC8(v43, v47, v13 & 1);

  *a2 = v43;
  *(a2 + 8) = v47;
  *(a2 + 16) = v13 & 1;
  *(a2 + 24) = v48;
  *(a2 + 32) = v49;
  *(a2 + 40) = v44;
  *(a2 + 48) = v42;
  *(a2 + 56) = v50;
  *(a2 + 64) = v27;
  *(a2 + 72) = v41;
  *(a2 + 80) = v45;
  *(a2 + 88) = v46;
  *(a2 + 96) = v35;
  *(a2 + 104) = v37;
  *(a2 + 112) = v38;
  *(a2 + 120) = v39;
  sub_4A290(v35, v37, v38, v39);
  sub_4A290(v27, v41, v45, v46);
  sub_4A290(v49, v44, v42, v50);
  sub_EBC8(v43, v47, v13 & 1);
}

uint64_t sub_19DB04()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4070F8, &qword_329768);
  sub_EC8C(&qword_407100, &qword_4070F8, &qword_329768, &protocol conformance descriptor for TupleView<A>);
  return sub_306298();
}

void sub_19DBA8(uint64_t a1, uint64_t a2)
{
  v13 = 0;
  v14 = 0;
  v12[0] = a1;
  v12[1] = a2;
  v4 = objc_opt_self();

  v5 = [v4 sharedInstance];
  v6 = [v5 mainOrPrivateContext];

  v7 = swift_allocObject();
  v7[2] = v12;
  v7[3] = a1;
  v7[4] = a2;
  v7[5] = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_19DDC8;
  *(v8 + 24) = v7;
  v11[4] = sub_747B0;
  v11[5] = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_19D688;
  v11[3] = &block_descriptor_36;
  v9 = _Block_copy(v11);
  v10 = v6;

  [v10 performBlockAndWait:v9];

  _Block_release(v9);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_19DD88()
{

  return _swift_deallocObject(v0, 48, 7);
}

double block_copy_helper_36(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_19DDFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_19DE44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_19DE94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_19DEDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_19DF58(char a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = a2;
  [v3 episodesFromShowWeight];
  if (v4 <= 0.0)
  {

    return 0;
  }

  [v3 episodesFromShowPlayedPercent];
  [v3 episodesFromShowWeight];
  sub_30D558(184);
  v10._countAndFlagsBits = 0x2065687420664FLL;
  v10._object = 0xE700000000000000;
  sub_30C238(v10);
  if (a1)
  {
    v5._countAndFlagsBits = 0x207473616CLL;
  }

  else
  {
    v5._countAndFlagsBits = 0;
  }

  if (a1)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE000000000000000;
  }

  v5._object = v6;
  sub_30C238(v5);

  result = [v3 episodesFromShowTotalCount];
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v11._countAndFlagsBits = sub_30D6D8();
  sub_30C238(v11);

  v12._countAndFlagsBits = 0xD00000000000003ELL;
  v12._object = 0x800000000033EA70;
  sub_30C238(v12);
  result = [v3 episodesFromShowPlayedCount];
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v9 > -9.22337204e18)
  {
    if (v9 < 9.22337204e18)
    {
      v13._countAndFlagsBits = sub_30D6D8();
      sub_30C238(v13);

      v14._countAndFlagsBits = 0x65646F7369706520;
      v14._object = 0xED000020726F2073;
      sub_30C238(v14);
      [v3 episodesFromShowPlayedPercent];
      v15._countAndFlagsBits = sub_30C4B8();
      sub_30C238(v15);

      v16._countAndFlagsBits = 0xD00000000000003FLL;
      v16._object = 0x800000000033EAB0;
      sub_30C238(v16);
      [v3 episodesFromShowWeight];
      v17._countAndFlagsBits = sub_30C4B8();
      sub_30C238(v17);

      v18._object = 0x800000000033EA50;
      v18._countAndFlagsBits = 0xD00000000000001BLL;
      sub_30C238(v18);
      v19._countAndFlagsBits = sub_30C4B8();
      sub_30C238(v19);

      return 0;
    }

    goto LABEL_23;
  }

LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}