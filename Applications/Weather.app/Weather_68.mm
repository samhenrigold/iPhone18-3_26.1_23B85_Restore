uint64_t sub_100739D90()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v9._object = 0x8000000100ADCA50;
  v2._countAndFlagsBits = 0x796E6E7553;
  v2._object = 0xE500000000000000;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0xD000000000000030;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v1, v3, v9)._countAndFlagsBits;

  if ((CurrentWeather.isDaylight.getter() & 1) == 0)
  {

    v5 = [v0 mainBundle];
    v6._countAndFlagsBits = 0xD000000000000010;
    v10._object = 0x8000000100ADCAB0;
    v7._countAndFlagsBits = 0x7261656C43;
    v6._object = 0x8000000100ADCA90;
    v7._object = 0xE500000000000000;
    v10._countAndFlagsBits = 0xD000000000000030;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v10)._countAndFlagsBits;
  }

  return countAndFlagsBits;
}

uint64_t sub_100739F1C()
{
  v1 = v0;
  v2 = type metadata accessor for ContentSizeCategory();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 != enum case for ContentSizeCategory.extraSmall(_:) && v7 != enum case for ContentSizeCategory.small(_:) && v7 != enum case for ContentSizeCategory.medium(_:) && v7 != enum case for ContentSizeCategory.large(_:) && v7 != enum case for ContentSizeCategory.extraLarge(_:) && v7 != enum case for ContentSizeCategory.extraExtraLarge(_:) && v7 != enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
  {
    if (v7 == enum case for ContentSizeCategory.accessibilityMedium(_:) || v7 == enum case for ContentSizeCategory.accessibilityLarge(_:) || v7 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:) || v7 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:) || v7 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
    {
      return 1;
    }

    (*(v3 + 8))(v6, v2);
  }

  return 0;
}

uint64_t sub_10073A0E8@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v22 = type metadata accessor for Location.Identifier();
  v2 = *(v22 - 8);
  __chkstk_darwin(v22);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for SavedLocation();
  __chkstk_darwin(v20);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161C0((v1 + 16), *(v1 + 40));
  result = dispatch thunk of SavedLocationsManagerType.savedLocations.getter();
  v8 = result;
  v9 = 0;
  v10 = *(result + 16);
  v11 = (v2 + 8);
  while (1)
  {
    if (v10 == v9)
    {

      v17 = 1;
      v18 = v21;
      return sub_10001B350(v18, v17, 1, v20);
    }

    if (v9 >= *(v8 + 16))
    {
      break;
    }

    sub_1007441CC();
    SavedLocation.identifier.getter();
    v12 = Location.Identifier.name.getter();
    v14 = v13;
    (*v11)(v4, v22);
    if (v12 == 0x6B726F592077654ELL && v14 == 0xE800000000000000)
    {

LABEL_12:

      v18 = v21;
      sub_1000A0944();
      v17 = 0;
      return sub_10001B350(v18, v17, 1, v20);
    }

    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v16)
    {
      goto LABEL_12;
    }

    result = sub_100032960(v6, &type metadata accessor for SavedLocation);
    ++v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_10073A39C(uint64_t a1, uint64_t a2)
{
  v1321 = a2;
  v1329 = a1;
  v4 = type metadata accessor for Location.Identifier();
  v5 = sub_100003E5C(v4, &v1332);
  v1144 = v6;
  __chkstk_darwin(v5);
  sub_1000038E4();
  sub_100003918(v7);
  v8 = type metadata accessor for WeatherMapOverlayKind();
  v9 = sub_100003E5C(v8, &v1278);
  v1247 = v10;
  __chkstk_darwin(v9);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v11);
  sub_10000E70C();
  sub_100003918(v12);
  v13 = type metadata accessor for WeatherCondition();
  v14 = sub_100003E5C(v13, &v1271);
  v1245 = v15;
  __chkstk_darwin(v14);
  sub_1000038E4();
  sub_100003918(v16);
  v1311 = type metadata accessor for SavedLocation();
  sub_1000037E8();
  __chkstk_darwin(v17);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v18);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v19);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v20);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v21);
  sub_10000E70C();
  sub_100003918(v22);
  type metadata accessor for Logger();
  sub_1000037C4();
  v1312 = v24;
  v1313 = v23;
  __chkstk_darwin(v23);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v25);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v26);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v27);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v28);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v29);
  sub_10000E70C();
  v31 = sub_100003918(v30);
  active = type metadata accessor for LocationViewerActiveLocationState(v31);
  v33 = sub_100003810(active);
  __chkstk_darwin(v33);
  sub_1000038E4();
  sub_100003990(v34);
  v35 = sub_10022C350(&qword_100CA6890, &qword_100A31680);
  v36 = sub_100003810(v35);
  __chkstk_darwin(v36);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v37);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v38);
  sub_10000E70C();
  sub_100003990(v39);
  v40 = sub_10022C350(&qword_100CA65D8, &unk_100A3D9D0);
  v41 = sub_100003810(v40);
  __chkstk_darwin(v41);
  sub_100003918(&v1118 - v42);
  v43 = type metadata accessor for Location();
  v44 = sub_100003E5C(v43, &v1331);
  v1274 = v45;
  __chkstk_darwin(v44);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v46);
  sub_10000E70C();
  sub_100003918(v47);
  v48 = type metadata accessor for DetailCondition();
  v49 = sub_100003E5C(v48, v1279);
  v1275 = v50;
  __chkstk_darwin(v49);
  sub_1000038E4();
  v52 = sub_100003918(v51);
  v1327 = type metadata accessor for TimeState(v52);
  sub_1000037E8();
  __chkstk_darwin(v53);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v54);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v55);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v56);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v57);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v58);
  sub_10000E70C();
  v60 = sub_100003918(v59);
  v1326 = type metadata accessor for NotificationsOptInState(v60);
  sub_1000037E8();
  __chkstk_darwin(v61);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v62);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v63);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v64);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v65);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v66);
  sub_10000E70C();
  v68 = sub_100003918(v67);
  v1325 = type metadata accessor for NotificationsState(v68);
  sub_1000037E8();
  __chkstk_darwin(v69);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v70);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v71);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v72);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v73);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v74);
  sub_10000E70C();
  v76 = sub_100003918(v75);
  v1324 = type metadata accessor for LocationsState(v76);
  sub_1000037E8();
  __chkstk_darwin(v77);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v78);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v79);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v80);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v81);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v82);
  sub_10000E70C();
  v84 = sub_100003918(v83);
  v1323 = type metadata accessor for EnvironmentState(v84);
  sub_1000037E8();
  __chkstk_darwin(v85);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v86);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v87);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v88);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v89);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v90);
  sub_10000E70C();
  v92 = sub_100003918(v91);
  v1322 = type metadata accessor for AppConfigurationState(v92);
  sub_1000037E8();
  __chkstk_darwin(v93);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v94);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v95);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v96);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v97);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v98);
  sub_10000E70C();
  v100 = sub_100003918(v99);
  v1317 = type metadata accessor for ModalViewState(v100);
  sub_1000037E8();
  __chkstk_darwin(v101);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v102);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v103);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v104);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v105);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v106);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v107);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v108);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v109);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v110);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v111);
  sub_100003878();
  v1315 = v112;
  __chkstk_darwin(v113);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v114);
  sub_10000E70C();
  sub_100003990(v115);
  v116 = sub_10022C350(&qword_100CA65E8, &unk_100A31410);
  v117 = sub_100003810(v116);
  __chkstk_darwin(v117);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v118);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v119);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v120);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v121);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v122);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v123);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v124);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v125);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v126);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v127);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v128);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v129);
  sub_10000E70C();
  v131 = sub_100003918(v130);
  v1320 = type metadata accessor for WeatherMapPresentationState(v131);
  sub_1000037E8();
  __chkstk_darwin(v132);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v133);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v134);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v135);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v136);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v137);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v138);
  sub_10000E70C();
  v140 = sub_100003918(v139);
  v1328 = type metadata accessor for DisplayMetrics(v140);
  sub_1000037E8();
  __chkstk_darwin(v141);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v142);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v143);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v144);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v145);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v146);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v147);
  sub_10000E70C();
  v149 = sub_100003918(v148);
  v1316 = type metadata accessor for ViewState.SecondaryViewState(v149);
  sub_1000037E8();
  __chkstk_darwin(v150);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v151);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v152);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v153);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v154);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v155);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v156);
  sub_10000E70C();
  sub_100003990(v157);
  v158 = sub_10022C350(&qword_100CA65F0, &unk_100A5C3F0);
  v159 = sub_100003810(v158);
  __chkstk_darwin(v159);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v160);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v161);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v162);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v163);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v164);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v165);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v166);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v167);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v168);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v169);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v170);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v171);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v172);
  sub_10000E70C();
  sub_100003990(v173);
  v174 = sub_10022C350(&qword_100CA65F8, &dword_100A31420);
  v175 = sub_100003810(v174);
  __chkstk_darwin(v175);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v176);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v177);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v178);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v179);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v180);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v181);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v182);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v183);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v184);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v185);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v186);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v187);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v188);
  sub_10000E70C();
  sub_100003990(v189);
  v190 = sub_10022C350(&qword_100CA6600, &unk_100A5C400);
  v191 = sub_100003810(v190);
  __chkstk_darwin(v191);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v192);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v193);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v194);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v195);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v196);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v197);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v198);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v199);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v200);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v201);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v202);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v203);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v204);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v205);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v206);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v207);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v208);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v209);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v210);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v211);
  sub_10000E70C();
  sub_100003990(v212);
  v213 = sub_10022C350(&qword_100CA6608, &unk_100A31430);
  v214 = sub_100003810(v213);
  __chkstk_darwin(v214);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v215);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v216);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v217);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v218);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v219);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v220);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v221);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v222);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v223);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v224);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v225);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v226);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v227);
  sub_10000E70C();
  v229 = sub_100003918(v228);
  v1318 = type metadata accessor for ViewState(v229);
  sub_1000037E8();
  __chkstk_darwin(v230);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v231);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v232);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v233);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v234);
  sub_100003878();
  v1314 = v235;
  __chkstk_darwin(v236);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v237);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v238);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v239);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v240);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v241);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v242);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v243);
  sub_10000E70C();
  sub_100003990(v244);
  v245 = sub_10022C350(&qword_100CA6610, &unk_100A32610);
  v246 = sub_100003810(v245);
  __chkstk_darwin(v246);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v247);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v248);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v249);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v250);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v251);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v252);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v253);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v254);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v255);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v256);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v257);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v258);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v259);
  sub_10000E70C();
  sub_100003990(v260);
  v261 = sub_10022C350(&qword_100CA6618, &unk_100A31440);
  v262 = sub_100003810(v261);
  __chkstk_darwin(v262);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v263);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v264);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v265);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v266);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v267);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v268);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v269);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v270);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v271);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v272);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v273);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v274);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v275);
  sub_10000E70C();
  sub_100003990(v276);
  v277 = sub_10022C350(&qword_100CA6620, &unk_100A32620);
  v278 = sub_100003810(v277);
  __chkstk_darwin(v278);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v279);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v280);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v281);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v282);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v283);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v284);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v285);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v286);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v287);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v288);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v289);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v290);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v291);
  sub_10000E70C();
  sub_100003990(v292);
  v293 = sub_10022C350(&qword_100CA6628, &unk_100A31450);
  v294 = sub_100003810(v293);
  __chkstk_darwin(v294);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v295);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v296);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v297);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v298);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v299);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v300);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v301);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v302);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v303);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v304);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v305);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v306);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v307);
  sub_10000E70C();
  sub_100003990(v308);
  v309 = sub_10022C350(&qword_100CA6630, &unk_100A32630);
  v310 = sub_100003810(v309);
  __chkstk_darwin(v310);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v311);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v312);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v313);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v314);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v315);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v316);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v317);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v318);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v319);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v320);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v321);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v322);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v323);
  sub_10000E70C();
  sub_100003990(v324);
  v325 = sub_10022C350(&qword_100CA6638, &unk_100A31460);
  v326 = sub_100003810(v325);
  __chkstk_darwin(v326);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v327);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v328);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v329);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v330);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v331);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v332);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v333);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v334);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v335);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v336);
  sub_100017D24();
  __chkstk_darwin(v337);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v338);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v339);
  sub_10000E70C();
  sub_100003990(v340);
  v341 = sub_10022C350(&qword_100CA6640, qword_100A32640);
  v342 = sub_100003810(v341);
  __chkstk_darwin(v342);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v343);
  v345 = &v1118 - v344;
  __chkstk_darwin(v346);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v347);
  v349 = (&v1118 - v348);
  __chkstk_darwin(v350);
  sub_1001994D0();
  __chkstk_darwin(v351);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v352);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v353);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v354);
  v356 = (&v1118 - v355);
  __chkstk_darwin(v357);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v358);
  v360 = &v1118 - v359;
  __chkstk_darwin(v361);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v362);
  v364 = &v1118 - v363;
  __chkstk_darwin(v365);
  v366 = sub_10002C820();
  type metadata accessor for PerformanceTestAction(v366);
  sub_1000037E8();
  __chkstk_darwin(v367);
  v369 = (&v1118 - ((v368 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1007441CC();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v498 = *v369;
      v499 = v1319;
      v349 = *(v1319 + 48);
      sub_1000C82BC((v1319 + 16));
      v500 = *(dispatch thunk of SavedLocationsManagerType.savedLocations.getter() + 16);

      if (v498 < v500)
      {
        v501 = *(v499 + 40);
        sub_1000C82BC((v499 + 16));
        dispatch thunk of SavedLocationsManagerType.savedLocations.getter();
        v502 = sub_100003940();
        sub_1006AC3CC(v502, v503);

        v504 = sub_100003BCC(v1213);
        sub_10001B350(v504, v505, v506, v1322);
        v507 = sub_100003BCC(v1215);
        sub_10001B350(v507, v508, v509, v1323);
        v510 = sub_100003BCC(v1218);
        sub_10001B350(v510, v511, v512, v1324);
        v513 = sub_100003BCC(v1220);
        sub_10001B350(v513, v514, v515, v1325);
        v516 = sub_100003BCC(&v1223);
        sub_10001B350(v516, v517, v518, v1326);
        v519 = sub_100003BCC(&v1228);
        sub_10001B350(v519, v520, v521, v1327);
        sub_100008DDC();
        sub_10003805C(v522);
        sub_1000519E0();
        sub_1007441CC();
        sub_1000184C0();
        SavedLocation.identifier.getter();
        v523 = sub_10000FEF4();
        v526 = sub_1000D3CF4(v523, v524, v525, v1308);
        v527 = type metadata accessor for LocationViewerViewState._Storage(v526);
        sub_100003B6C(v527);
        v528 = sub_100071DE8();
        v529 = sub_1000B7BD8(v528, &v1236);
        sub_1000C8630(v529);
        v530 = sub_10012CDB0(v360);
        v531 = v1225;
        sub_100003934();
        sub_10001B350(v532, v533, v534, v530);
        v535 = sub_100003BCC(&v1286);
        sub_10001B350(v535, v536, v537, v1328);
        v538 = sub_100003BCC(v1288);
        sub_10001B350(v538, v539, v540, v1320);
        v541 = *v356;
        sub_1000131DC();
        sub_100095588();
        sub_100005404(v499);
        if (v746)
        {
          v894 = v1318;
          sub_100074EFC();
          sub_1007441CC();
          sub_1000437F4(v499);
          v895 = v1187;
          if (v501 != 1)
          {
            sub_1000180EC(v499, &qword_100CA6608, &unk_100A31430);
          }
        }

        else
        {
          sub_100006694();
          sub_1000A0944();

          v894 = v1318;
          v895 = v1187;
        }

        v896 = *(v1278 + v894[6]);
        sub_100032590();
        sub_100095588();
        sub_100003A40(v531);
        if (v746)
        {
          sub_100095588();
          sub_100003A40(v531);
          if (!v746)
          {
            sub_1000180EC(v531, &qword_100CA6600, &unk_100A5C400);
          }
        }

        else
        {
          sub_100028A84();
          sub_100032590();
          sub_1000A0944();
          sub_10000E7B0();
          sub_10001B350(v940, v941, v942, v530);
        }

        sub_100032590();
        sub_100095588();
        v943 = sub_1000175DC();
        v944 = v1328;
        sub_1000113D0(v943, v945);
        if (v746)
        {
          sub_100019E38();
          sub_100087FF4(v946);
          sub_1007441CC();
          sub_100003A40(v531);
          if (!v746)
          {
            sub_1000180EC(v531, &qword_100CA65F8, &dword_100A31420);
          }
        }

        else
        {
          sub_100010A04();
          sub_1000A0944();
        }

        sub_1000113EC();
        sub_100095588();
        sub_10000394C(v944);
        if (v746)
        {
          sub_1000049BC();
          sub_100087FF4(v947);
          sub_1007441CC();
          sub_10000394C(v944);
          v948 = v1225;
          if (!v746)
          {
            sub_1000180EC(v944, &qword_100CA65F0, &unk_100A5C3F0);
          }
        }

        else
        {
          sub_10001CC28();
          sub_1000A0944();
          v948 = v1225;
        }

        v949 = v1278;
        v950 = *(v1278 + v894[11]);
        v951 = v1168;
        *v1168 = v541;
        sub_100006694();
        sub_1000A0944();
        *(v951 + v894[6]) = v896;
        *(v951 + v894[7]) = 1;
        sub_100051BBC();
        sub_100010A04();
        sub_1000A0944();
        sub_10001CC28();
        sub_1000A0944();
        *(v951 + v894[11]) = v950;
        sub_1000180EC(v1272, &qword_100CA65F0, &unk_100A5C3F0);
        sub_1000180EC(v1270, &qword_100CA65F8, &dword_100A31420);
        sub_1000180EC(v948, &qword_100CA6600, &unk_100A5C400);
        sub_1000180EC(v1216, &qword_100CA6608, &unk_100A31430);
        sub_1000230E0();
        sub_100032960(v949, v952);
        v953 = sub_100007FB4();
        sub_10001B350(v953, v954, v955, v894);
        sub_100003934();
        sub_10001B350(v956, v957, v958, v1317);
        sub_1000E5A2C();
        v959 = v1192;
        v960 = v1194;
        v961 = v1196;
        v962 = v1199;
        v963 = v1204;
        v964 = v1209;
        v646 = sub_1000D2C20(0, 3u, v1192, v1194, v1196, v1199, v1204, v1209, v951, v895, v1120, v1121, v1122, v1123, v1124, v1125, v1126, v1127, v1128);
        sub_1000180EC(v895, &qword_100CA65E8, &unk_100A31410);
        sub_1000180EC(v951, &qword_100CA6610, &unk_100A32610);
        sub_1000180EC(v964, &qword_100CA6618, &unk_100A31440);
        sub_1000180EC(v963, &qword_100CA6620, &unk_100A32620);
        sub_1000180EC(v962, &qword_100CA6628, &unk_100A31450);
        sub_1000180EC(v961, &qword_100CA6630, &unk_100A32630);
        sub_1000180EC(v960, &qword_100CA6638, &unk_100A31460);
        sub_1000180EC(v959, &qword_100CA6640, qword_100A32640);
        sub_100014D94();
        v893 = &v1276;
        goto LABEL_250;
      }

      sub_100020250();
      static Logger.automation.getter();
      v586 = Logger.logObject.getter();
      v754 = static os_log_type_t.error.getter();
      if (!sub_10000C79C(v754))
      {
        goto LABEL_135;
      }

      v755 = sub_10000389C();
      sub_100025054(v755);
      v591 = "Failed to locate location due to index out of boundary";
      goto LABEL_134;
    case 2u:
      v420 = v1274;
      v421 = v1240;
      v422 = v1306;
      (*(v1274 + 32))(v1240, v369, v1306);
      sub_100003934();
      sub_10001B350(v423, v424, v425, v1322);
      v426 = sub_100003BCC(&v1291);
      sub_10001B350(v426, v427, v428, v1323);
      v429 = sub_100003BCC(&v1294);
      sub_10001B350(v429, v430, v431, v1324);
      v432 = sub_100003BCC(&v1297);
      sub_10001B350(v432, v433, v434, v1325);
      v435 = sub_100003BCC(&v1302);
      sub_10001B350(v435, v436, v437, v1326);
      v438 = sub_100003BCC(&v1307);
      sub_10001B350(v438, v439, v440, v1327);
      sub_100008DDC();
      sub_1000E1404(v441);
      sub_100021424();
      sub_1007441CC();
      v442 = v1307;
      Location.identifier.getter();
      v444 = *(v420 + 8);
      v443 = v420 + 8;
      v444(v421, v422);
      sub_10000E7B0();
      v448 = sub_1000D3CF4(v445, v446, v447, v1308);
      v449 = type metadata accessor for LocationViewerViewState._Storage(v448);
      sub_100003B6C(v449);
      v450 = sub_10003DDB8(v442, 0, 0, 3, 0, 0);
      v451 = v1205;
      *v1205 = v450;
      sub_1000C8630(v451);
      v452 = sub_10012CDB0(v451);
      v453 = sub_100003BCC(&v1303);
      sub_10001B350(v453, v454, v455, v452);
      v456 = v1267;
      sub_100003934();
      sub_10001B350(v457, v458, v459, v1328);
      sub_100003934();
      sub_10001B350(v460, v461, v462, v1320);
      v463 = *v349;
      sub_100037814();
      sub_100051BBC();
      sub_100005404(&OBJC_IVAR____TtCV7Weather9MainState8_Storage_view);
      if (v746)
      {
        v647 = v1318;
        sub_100074EFC();
        sub_1007441CC();
        sub_1000437F4(&OBJC_IVAR____TtCV7Weather9MainState8_Storage_view);
        v648 = v1232;
        v649 = v1213[0];
        if (v443 != 1)
        {
          sub_1000180EC(&OBJC_IVAR____TtCV7Weather9MainState8_Storage_view, &qword_100CA6608, &unk_100A31430);
        }
      }

      else
      {
        sub_100006694();
        sub_1000A0944();

        v647 = v1318;
        v648 = v1232;
        v649 = v1213[0];
      }

      sub_100192424(*(v647 + 24));
      sub_1000453E0(&v1303);
      sub_100051BBC();
      sub_100003A40(v649);
      if (v746)
      {
        sub_100095588();
        sub_100003A40(v649);
        if (!v746)
        {
          sub_1000180EC(v649, &qword_100CA6600, &unk_100A5C400);
        }
      }

      else
      {
        sub_100028A84();
        sub_1000519E0();
        sub_1000A0944();
        v456 = v1267;
        sub_10000E7B0();
        sub_10001B350(v650, v651, v652, v452);
      }

      sub_1000519E0();
      sub_100051BBC();
      v653 = sub_100007FC4();
      sub_1000113D0(v653, v654);
      if (v746)
      {
        sub_100019E38();
        v655 = v1310;
        sub_1007441CC();
        sub_100003A40(v456);
        if (!v746)
        {
          sub_1000180EC(v456, &qword_100CA65F8, &dword_100A31420);
        }
      }

      else
      {
        sub_100010A04();
        sub_1000A0944();
        v655 = v1310;
      }

      sub_100051BBC();
      v656 = sub_100016298();
      sub_1000113D0(v656, v657);
      if (v746)
      {
        sub_1000049BC();
        sub_1000131DC();
        sub_1007441CC();
        sub_100003A40(v648);
        v658 = v1200;
        if (!v746)
        {
          sub_1000180EC(v648, &qword_100CA65F0, &unk_100A5C3F0);
        }
      }

      else
      {
        sub_10001CC28();
        sub_1000131DC();
        sub_1000A0944();
        v658 = v1200;
      }

      v659 = *(v655 + *(v647 + 44));
      sub_1000230E0();
      sub_100032960(v655, v660);
      v661 = v1228;
      *v1228 = v463;
      sub_100006694();
      sub_1000A0944();
      *(v661 + *(v647 + 24)) = v1321;
      sub_10009265C();
      sub_100051BBC();
      sub_100010A04();
      sub_1000A0944();
      sub_10001CC28();
      sub_1000A0944();
      *(v661 + *(v647 + 44)) = v659;
      sub_10000E7B0();
      sub_10001B350(v662, v663, v664, v647);
      v665 = sub_100021088(&v1259);
      sub_10001B350(v665, v666, v667, v1317);
      sub_1000317A8();
      sub_10003778C();
      sub_1007441CC();
      sub_1000113EC();
      sub_100051BBC();
      sub_10000554C(v659);
      if (v746)
      {
        sub_1000180EC(v659, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_1000520B0();
        sub_100032960(v443, v668);
        sub_10001F668();
        sub_1000FD16C();
      }

      v669 = v1322;
      v670 = v1212;
      v646 = v1195;
      sub_10001F668();
      sub_1000A0944();
      v671 = *(v360 + 2);
      LODWORD(v1322) = v360[24];
      sub_10003778C();
      sub_100051BBC();
      sub_100003A40(v443);
      v1328 = v671;
      if (v746)
      {
        sub_100037D24();
        sub_1007441CC();
        v672 = sub_1000131C4();
        v674 = sub_100024D10(v672, v673, v669);
        v675 = v443;
        v676 = v674;

        v677 = v1208;
        if (v676 != 1)
        {
          sub_1000180EC(v675, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_10000ED74();
        sub_1000A0944();

        v677 = v1208;
      }

      sub_1000453E0(&v1291);
      sub_100051BBC();
      v678 = sub_1000201BC();
      sub_1000113D0(v678, v679);
      if (v746)
      {
        sub_10002014C(&v360[OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment]);
        sub_10002CA4C();
        sub_1007441CC();
        sub_100003A40(v646);
        v680 = v1230;
        if (!v746)
        {
          sub_1000180EC(v646, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_100020AD4();
        sub_1000A0944();
        v680 = v1230;
      }

      sub_100051BBC();
      sub_10000554C(v658);
      if (v746)
      {
        sub_10000CE80();
        sub_1007441CC();
        sub_10000554C(v658);
        v681 = v1221;
        if (!v746)
        {
          sub_1000180EC(v658, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_100024A2C();
        sub_1000A0944();
        v681 = v1221;
      }

      sub_1000131E8(&v1297);
      sub_100051BBC();
      sub_100003A40(v677);
      if (v746)
      {
        sub_10003C7C0();
        sub_1007441CC();
        sub_100003A40(v677);
        if (!v746)
        {
          sub_1000180EC(v677, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_100017D0C();
        sub_1000A0944();
      }

      sub_100030224(&v1302);
      sub_100051BBC();
      sub_1000083BC(v670);
      if (v746)
      {
        sub_100069948();
        sub_1007441CC();
        sub_1000083BC(v670);
        v682 = v1327;
        if (!v746)
        {
          sub_1000180EC(v670, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_100013B94();
        sub_1000A0944();
        v682 = v1327;
      }

      sub_1000C893C(&v1307);
      sub_100051BBC();
      v683 = sub_10000C834();
      sub_1000038B4(v683, v684, v682);
      if (v746)
      {
        sub_10004EA04();
        sub_1007441CC();
        v685 = sub_10000C834();
        sub_1000038B4(v685, v686, v682);
        if (!v746)
        {
          sub_1000180EC(v681, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_100016E44();
        sub_1000A0944();
      }

      sub_100051BBC();
      sub_10000E7EC(v680);
      if (v746)
      {
        sub_100008DDC();
        sub_10004526C();
        sub_10000E7EC(v680);
        if (!v746)
        {
          sub_1000180EC(v680, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_100049BB4();
        sub_100040C24();
      }

      sub_10001F668();
      sub_100040CF8();
      sub_100042750();
      sub_100037880();
      v687 = type metadata accessor for MainState._Storage(0);
      sub_100003B6C(v687);
      v688 = sub_100021664();
      v690 = v1322;
      v691 = v1293;
      v692 = v1296;
      v693 = v1299;
      v694 = v1302;
      v695 = v1304[0];
      goto LABEL_295;
    case 3u:
      v464 = *v369;
      v465 = sub_10022C350(&unk_100CD8210, &unk_100A9E5D0);
      v466 = *(v369 + *(v465 + 64));
      v467 = v1247;
      v468 = v1258;
      v469 = v1259;
      (*(v1247 + 32))(v1258, v369 + *(v465 + 48), v1259);
      v470 = v1319;
      sub_1000C82BC((v1319 + 16));
      v471 = *(dispatch thunk of SavedLocationsManagerType.savedLocations.getter() + 16);

      if (v464 < v471)
      {
        LODWORD(v1328) = v466;
        v472 = *(v470 + 40);
        sub_1000C82BC((v470 + 16));
        v473 = dispatch thunk of SavedLocationsManagerType.savedLocations.getter();
        v474 = v1191;
        sub_1006AC3CC(v464, v473);

        sub_1000184C0();
        static Logger.automation.getter();
        sub_100020338();
        sub_10003778C();
        sub_1007441CC();
        (*(v467 + 16))(v1186, v468, v469);
        v475 = Logger.logObject.getter();
        v476 = static os_log_type_t.default.getter();
        v1327 = v475;
        if (os_log_type_enabled(v475, v476))
        {
          v477 = swift_slowAlloc();
          v478 = swift_slowAlloc();
          v1330 = v478;
          *v477 = 136315906;
          sub_1000184C0();
          SavedLocation.identifier.getter();
          Location.Identifier.name.getter();
          v480 = v479;
          sub_10000E73C();
          v481(v470, v1308);
          v482 = sub_100040E24();
          v484 = sub_100078694(v482, v480, v483);
          v469 = v1259;

          *(v477 + 4) = v484;
          sub_100014D94();
          sub_100032960(v472, v485);
          *(v477 + 12) = 2048;
          *(v477 + 14) = v464;
          *(v477 + 22) = 2080;
          sub_100744174();
          v486 = dispatch thunk of CustomStringConvertible.description.getter();
          v475 = v487;
          v488 = sub_100078694(v486, v487, &v1330);

          *(v477 + 24) = v488;
          v489 = sub_100040EE8();
          (v475)(v489);
          *(v477 + 32) = 1024;
          v490 = v1328;
          *(v477 + 34) = v1328;
          v491 = v1327;
          _os_log_impl(&_mh_execute_header, v1327, v476, "Navigation to map. location=%s, index=%ld, overlayKind=%s, fullscreen=%{BOOL}d", v477, 0x26u);
          swift_arrayDestroy();
          v492 = v478;
          v468 = v1258;
          sub_100003884(v492);
          v493 = v477;
          v474 = v1191;
          sub_100003884(v493);

          sub_100041038();
          v494(v1190);
        }

        else
        {
          sub_100014D94();
          sub_100032960(v472, v848);
          v849 = sub_100040EE8();
          (v475)(v849);

          sub_100041038();
          v850(v470);
          v490 = v1328;
        }

        v646 = sub_100741854(v474, v468, v490, v1329);
        sub_100014D94();
        sub_100032960(v474, v851);
        (v475)(v468, v469);
        return v646;
      }

      sub_100020250();
      static Logger.automation.getter();
      v696 = Logger.logObject.getter();
      v697 = static os_log_type_t.error.getter();
      v698 = sub_10000C79C(v697);
      v646 = v1329;
      if (v698)
      {
        v699 = sub_10000389C();
        sub_100025054(v699);
        sub_1000133FC(&_mh_execute_header, v700, v701, "Failed to locate location due to index out of boundary");
        sub_100007E54();
      }

      sub_100041038();
      v702(v464);
      (*(v467 + 8))(v468, v469);
      goto LABEL_137;
    case 4u:
      v379 = *(v1245 + 32);
      v380 = v1244;
      v381 = v1246[0];
      v379(v1244, v369, v1246[0]);
      sub_100003934();
      sub_10001B350(v382, v383, v384, v1322);
      v385 = sub_100003BCC(&v1290);
      sub_10001B350(v385, v386, v387, v1323);
      v388 = sub_100003BCC(&v1293);
      sub_10001B350(v388, v389, v390, v1324);
      v391 = sub_100003BCC(&v1296);
      sub_10001B350(v391, v392, v393, v1325);
      v394 = sub_100003BCC(&v1300);
      sub_10001B350(v394, v395, v396, v1326);
      v397 = sub_100003BCC(&v1305);
      sub_10001B350(v397, v398, v399, v1327);
      sub_100008DDC();
      v1319 = v400;
      v401 = v1314;
      sub_1007441CC();
      v379(v1201, v380, v381);
      v402 = v1316;
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      v406 = sub_1000D3CF4(v403, v404, v405, v402);
      v407 = type metadata accessor for SearchViewState(v406);
      v408 = sub_100003BCC(&v1301);
      sub_10001B350(v408, v409, v410, v407);
      v411 = sub_100003BCC(&v1306);
      sub_10001B350(v411, v412, v413, v1328);
      sub_100021D50(&v1243);
      sub_100003934();
      sub_10001B350(v414, v415, v416, v1320);
      v417 = *v401;
      sub_100020FE8();
      sub_100051BBC();
      sub_100003BFC(v379);
      if (v746)
      {
        v593 = v1318;
        sub_100074EFC();
        sub_1007441CC();
        v418 = sub_10000C834();
        v402 = sub_100024D10(v418, v419, v402);
        v592 = v417;

        v594 = v1242;
        v595 = v1229;
        if (v402 != 1)
        {
          sub_1000180EC(v379, &qword_100CA6608, &unk_100A31430);
        }
      }

      else
      {
        sub_100006694();
        sub_1000A0944();
        v592 = v417;

        v593 = v1318;
        v594 = v1242;
        v595 = v1229;
      }

      LODWORD(v1321) = *(v1314 + v593[6]);
      sub_1000131DC();
      sub_100051BBC();
      sub_100005404(v402);
      if (v746)
      {
        sub_100095588();
        sub_100005404(v402);
        if (!v746)
        {
          sub_1000180EC(v402, &qword_100CA6600, &unk_100A5C400);
        }
      }

      else
      {
        sub_100028A84();
        sub_1000131DC();
        sub_1000A0944();
        sub_10000E7B0();
        sub_10001B350(v596, v597, v598, v407);
      }

      sub_1000131DC();
      sub_100051BBC();
      v599 = sub_1000162A4();
      sub_10001627C(v599, v600);
      if (v746)
      {
        sub_100019E38();
        sub_1007441CC();
        sub_100005404(v402);
        if (!v746)
        {
          sub_1000180EC(v402, &qword_100CA65F8, &dword_100A31420);
        }
      }

      else
      {
        sub_100010A04();
        sub_1000A0944();
      }

      sub_100051BBC();
      sub_10001627C(v595, 1);
      if (v746)
      {
        sub_1000049BC();
        v601 = v1314;
        sub_100037814();
        sub_1007441CC();
        sub_100005404(v595);
        if (!v746)
        {
          sub_1000180EC(v595, &qword_100CA65F0, &unk_100A5C3F0);
        }
      }

      else
      {
        sub_10001CC28();
        sub_100037814();
        sub_1000A0944();
        v601 = v1314;
      }

      v602 = *(v601 + v593[11]);
      sub_1000230E0();
      sub_100032960(v601, v603);
      v604 = v1223;
      *v1223 = v592;
      sub_100006694();
      sub_1000A0944();
      *(v604 + v593[6]) = v1321;
      *(v604 + v593[7]) = 1;
      sub_100051BBC();
      sub_100010A04();
      sub_1000A0944();
      sub_10001CC28();
      sub_1000A0944();
      *(v604 + v593[11]) = v602;
      v605 = sub_100007FB4();
      sub_10001B350(v605, v606, v607, v593);
      v608 = v1239[2];
      sub_100003934();
      sub_10001B350(v609, v610, v611, v1317);
      sub_1000317A8();
      v612 = v1329;
      sub_1007441CC();
      sub_10003778C();
      sub_100051BBC();
      sub_10000554C(v608);
      if (v746)
      {
        sub_1000180EC(v608, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_1000520B0();
        sub_100032960(v594, v613);
        sub_10001F668();
        sub_1000A0944();
      }

      v614 = v1198;
      sub_10001F668();
      sub_1000A0944();
      v615 = *(v612 + 16);
      LODWORD(v1325) = *(v612 + 24);
      sub_1000B0C38();
      sub_100051BBC();
      v616 = sub_100016298();
      v617 = v1322;
      sub_1000113D0(v616, v618);
      v1328 = v615;
      if (v746)
      {
        sub_100037D24();
        sub_1007441CC();
        v619 = sub_100016298();
        v621 = sub_100024D10(v619, v620, v617);

        v622 = v1206;
        if (v621 != 1)
        {
          sub_1000180EC(v349, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_10000ED74();
        sub_1000A0944();

        v622 = v1206;
      }

      sub_100021424();
      sub_100051BBC();
      v623 = sub_100016298();
      sub_10001627C(v623, v624);
      if (v746)
      {
        sub_10002014C(v612 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment);
        sub_10002CA4C();
        sub_1007441CC();
        sub_100005404(v349);
        v626 = v1227;
        v627 = v1217;
        v625 = v349;
        v628 = v1211;
        if (!v746)
        {
          sub_1000180EC(v625, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_100020AD4();
        sub_1000A0944();
        v626 = v1227;
        v627 = v1217;
        v628 = v1211;
      }

      sub_100051BBC();
      v629 = sub_1000175DC();
      sub_100036E54(v629, v630);
      if (v746)
      {
        sub_10000CE80();
        sub_1007441CC();
        sub_100003BFC(v614);
        if (!v746)
        {
          sub_1000180EC(v614, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_100024A2C();
        sub_1000A0944();
      }

      sub_1000E31B8(&v1296);
      sub_100051BBC();
      sub_10000554C(v622);
      if (v746)
      {
        sub_10003C7C0();
        sub_1007441CC();
        sub_10000554C(v622);
        if (!v746)
        {
          sub_1000180EC(v622, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_100017D0C();
        sub_1000A0944();
      }

      sub_100052378(&v1300);
      sub_100051BBC();
      v631 = sub_100016298();
      sub_1000038B4(v631, v632, v1326);
      if (v746)
      {
        sub_100069948();
        sub_1007441CC();
        sub_10000554C(v628);
        if (!v746)
        {
          sub_1000180EC(v628, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_100013B94();
        sub_1000A0944();
      }

      sub_1000436AC(&v1305);
      sub_100051BBC();
      sub_10000C814(v627);
      if (v746)
      {
        sub_10004EA04();
        sub_1007441CC();
        sub_10000C814(v627);
        if (!v746)
        {
          sub_1000180EC(v627, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_100016E44();
        sub_1000A0944();
      }

      sub_100051BBC();
      sub_1000083BC(v626);
      if (v746)
      {
        sub_100008DDC();
        sub_1007441CC();
        sub_1000083BC(v626);
        if (!v746)
        {
          sub_1000180EC(v626, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_100049BB4();
        sub_1000A0944();
      }

      sub_10001F668();
      v633 = v1315;
      sub_1000A0944();
      v634 = (v612 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
      v635 = v612;
      v637 = *(v612 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
      v636 = v634[1];
      v639 = v634[2];
      v638 = v634[3];
      v640 = *(v635 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
      v642 = *(v635 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
      v641 = *(v635 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
      v643 = *(v635 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
      v644 = type metadata accessor for MainState._Storage(0);
      sub_100003B6C(v644);
      LOBYTE(v1116) = v640;
      sub_10003E038(v1328, v1325, v1291, v1294, v1297, v1300, v1303, v1304[1], v1285, v633, v637, v636, v639, v638, v1116, v642, v641, v643, v1118, v1119, v1120, v1121, v1122, v1123, v1124, v1125, v1126, v1127, v1128, v1129, v1130, v1131, v1132, v1133, v1134);
      v646 = v645;

      goto LABEL_296;
    case 5u:
      sub_100003934();
      sub_10001B350(v542, v543, v544, v1322);
      v545 = sub_100003BCC(v1289);
      sub_10001B350(v545, v546, v547, v1323);
      v548 = sub_100003BCC(&v1292);
      sub_10001B350(v548, v549, v550, v1324);
      v551 = sub_100003BCC(&v1295);
      sub_10001B350(v551, v552, v553, v1325);
      v554 = sub_100003BCC(&v1299);
      sub_10001B350(v554, v555, v556, v1326);
      v557 = sub_100003BCC(v1304);
      sub_10001B350(v557, v558, v559, v1327);
      sub_100008DDC();
      v1314 = v560;
      sub_10003805C(v560);
      sub_1000131DC();
      sub_1007441CC();
      type metadata accessor for ListViewState._Storage();
      v561 = swift_allocObject();
      sub_10000E7B0();
      v565 = sub_100042DA8(v562, v563, v564, 0, 0, 0, 0xE000000000000000, 0, 0, 0, 0, 0, 1, 0);
      v566 = sub_100021088(&v1221);
      v567 = v1316;
      v570 = sub_1000D3CF4(v566, v568, v569, v1316);
      v571 = type metadata accessor for SearchViewState(v570);
      v572 = sub_100003BCC(&v1298);
      sub_10001B350(v572, v573, v574, v571);
      sub_100021D50(v1234);
      sub_100003934();
      sub_10001B350(v575, v576, v577, v1328);
      v578 = v1224[1];
      sub_100003934();
      sub_10001B350(v579, v580, v581, v1320);
      sub_1000113EC();
      sub_100051BBC();
      sub_10000394C(v561);
      v1321 = v565;
      if (v746)
      {
        v757 = v1318;
        sub_100074EFC();
        sub_1007441CC();
        v567 = sub_100024D10(v561, 1, v567);

        v758 = v1237;
        if (v567 != 1)
        {
          sub_1000180EC(v561, &qword_100CA6608, &unk_100A31430);
        }
      }

      else
      {
        sub_100006694();
        sub_1000A0944();

        v757 = v1318;
        v758 = v1237;
      }

      LODWORD(v1319) = *(v1309 + v757[6]);
      sub_100021424();
      sub_100051BBC();
      sub_100005404(v567);
      v759 = v1329;
      if (v746)
      {
        sub_100095588();
        sub_100005404(v567);
        if (!v746)
        {
          sub_1000180EC(v567, &qword_100CA6600, &unk_100A5C400);
        }
      }

      else
      {
        sub_100028A84();
        sub_100021424();
        sub_1000A0944();
        sub_10000E7B0();
        sub_10001B350(v760, v761, v762, v571);
      }

      sub_100037814();
      sub_100051BBC();
      v763 = sub_1000201BC();
      sub_10001627C(v763, v764);
      v765 = v758;
      if (v746)
      {
        sub_100019E38();
        v766 = v1309;
        sub_1007441CC();
        sub_100005404(&OBJC_IVAR____TtCV7Weather9MainState8_Storage_view);
        v767 = v759;
        if (!v746)
        {
          sub_1000180EC(&OBJC_IVAR____TtCV7Weather9MainState8_Storage_view, &qword_100CA65F8, &dword_100A31420);
        }
      }

      else
      {
        sub_100010A04();
        sub_1000A0944();
        v766 = v1309;
        v767 = v759;
      }

      sub_1000325C0();
      sub_100051BBC();
      sub_10001627C(v578, 1);
      if (v746)
      {
        sub_1000049BC();
        sub_1007441CC();
        sub_100005404(v578);
        v768 = v1193;
        if (!v746)
        {
          sub_1000180EC(v578, &qword_100CA65F0, &unk_100A5C3F0);
        }
      }

      else
      {
        sub_10001CC28();
        sub_1000A0944();
        v768 = v1193;
      }

      v769 = *(v766 + v757[11]);
      sub_1000230E0();
      sub_100032960(v766, v770);
      v771 = v1222;
      *v1222 = v1321;
      sub_100006694();
      sub_1000A0944();
      *(v771 + v757[6]) = v1319;
      *(v771 + v757[7]) = 0;
      sub_100051BBC();
      sub_100010A04();
      sub_1000A0944();
      sub_10001CC28();
      sub_1000A0944();

      *(v771 + v757[11]) = v769;
      v772 = sub_100007FB4();
      sub_10001B350(v772, v773, v774, v757);
      v775 = v1239[0];
      sub_100003934();
      sub_10001B350(v776, v777, v778, v1317);
      sub_1000317A8();
      sub_1000131DC();
      sub_1007441CC();
      sub_10003778C();
      sub_100051BBC();
      sub_100003A40(v775);
      if (v746)
      {
        sub_1000180EC(v775, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_1000520B0();
        sub_100032960(v765, v779);
        sub_10001F668();
        sub_1000A0944();
      }

      v780 = v1213[1];
      sub_10001F668();
      sub_1000A0944();
      v781 = *(v767 + 16);
      LODWORD(v1325) = *(v767 + 24);
      sub_100051BBC();
      v782 = sub_1000175DC();
      v783 = v1322;
      sub_1000038B4(v782, v784, v1322);
      if (v746)
      {
        sub_100037D24();
        sub_1007441CC();
        v785 = sub_1000175DC();
        v787 = sub_100024D10(v785, v786, v783);

        if (v787 != 1)
        {
          sub_1000180EC(v364, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_10000ED74();
        sub_1000A0944();
      }

      v1328 = v781;
      sub_1000453E0(v1289);
      sub_100051BBC();
      sub_10000394C(v768);
      if (v746)
      {
        sub_10002014C(v767 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment);
        sub_10002CA4C();
        sub_1007441CC();
        sub_10000394C(v768);
        v788 = v1210;
        v789 = v1203;
        v790 = v1197;
        if (!v746)
        {
          sub_1000180EC(v768, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_100020AD4();
        sub_1000A0944();
        v788 = v1210;
        v789 = v1203;
        v790 = v1197;
      }

      sub_100030224(&v1292);
      sub_100051BBC();
      sub_10000E7EC(v790);
      if (v746)
      {
        sub_10000CE80();
        sub_1007441CC();
        sub_10000E7EC(v790);
        if (!v746)
        {
          sub_1000180EC(v790, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_100024A2C();
        sub_1000A0944();
      }

      sub_1000C893C(&v1295);
      sub_100051BBC();
      sub_100005404(v789);
      if (v746)
      {
        sub_10003C7C0();
        sub_1007441CC();
        sub_100005404(v789);
        v791 = v1224[0];
        if (!v746)
        {
          sub_1000180EC(v789, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_100017D0C();
        sub_1000A0944();
        v791 = v1224[0];
      }

      sub_100052378(&v1299);
      sub_100051BBC();
      v792 = sub_100016298();
      sub_1000038B4(v792, v793, v1326);
      if (v746)
      {
        sub_100069948();
        sub_1007441CC();
        sub_10000554C(v788);
        v794 = v1233;
        if (!v746)
        {
          sub_1000180EC(v788, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_100013B94();
        sub_1000A0944();
        v794 = v1233;
      }

      sub_1000C8B14(v1304);
      sub_100051BBC();
      sub_100003BFC(v780);
      if (v746)
      {
        sub_10004EA04();
        sub_1007441CC();
        sub_100003BFC(v780);
        if (!v746)
        {
          sub_1000180EC(v780, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_100016E44();
        sub_1000A0944();
      }

      sub_100051BBC();
      sub_10000C814(v791);
      if (v746)
      {
        sub_100008DDC();
        sub_1007441CC();
        sub_10000C814(v791);
        v795 = v794;
        if (!v746)
        {
          sub_1000180EC(v791, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_100049BB4();
        sub_1000A0944();
        v795 = v794;
      }

      sub_10001F668();
      v796 = v1315;
      sub_1000A0944();
      v797 = (v767 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
      v798 = v767;
      v800 = *(v767 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
      v799 = v797[1];
      v802 = v797[2];
      v801 = v797[3];
      v646 = *(v798 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
      v804 = *(v798 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
      v803 = *(v798 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
      v805 = *(v798 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
      v806 = type metadata accessor for MainState._Storage(0);
      sub_100003B6C(v806);
      LOBYTE(v1117) = v646;
      sub_100040DE8(v1328, v1325, v1290, v1292, v1295, v1298, v1301, v807, v795, v796, v800, v799, v802, v801, v1117, v804, v803, v805, v1118, v1119, v1120, v1121, v1122, v1123, v1124, v1125, v1126, v1127, v1128, v1129, v1130, v1131, v1132, v1133, v1134);
      sub_1000B9194();

      goto LABEL_296;
    case 6u:
      sub_1000184C0();
      v582 = v1319;
      sub_10073A0E8(v583);
      v584 = sub_10000C834();
      sub_1000038B4(v584, v585, v1311);
      if (v746)
      {
        goto LABEL_30;
      }

      sub_100087204();
      sub_1000113EC();
      sub_1000A0944();
      sub_100003934();
      sub_10001B350(v808, v809, v810, v1322);
      v811 = sub_100003BCC(v1214);
      sub_10001B350(v811, v812, v813, v1323);
      v814 = sub_100003BCC(v1219);
      sub_10001B350(v814, v815, v816, v1324);
      v817 = sub_100003BCC(v1224);
      sub_10001B350(v817, v818, v819, v1325);
      v820 = sub_100003BCC(&v1230);
      sub_10001B350(v820, v821, v822, v1326);
      v823 = sub_100003BCC(&v1235);
      sub_10001B350(v823, v824, v825, v1327);
      sub_100008DDC();
      sub_1000E1404(v826);
      sub_100021424();
      sub_1007441CC();
      sub_1000184C0();
      SavedLocation.identifier.getter();
      sub_100014D94();
      sub_100032960(v582, v827);
      v828 = sub_10000FEF4();
      v831 = sub_1000D3CF4(v828, v829, v830, v1308);
      v832 = type metadata accessor for LocationViewerViewState._Storage(v831);
      sub_100003B6C(v832);
      v833 = sub_100071DE8();
      v834 = v1164;
      *v1164 = v833;
      sub_1000C8630(v834);
      v835 = sub_10012CDB0(v834);
      v836 = sub_100003BCC(v1231);
      sub_10001B350(v836, v837, v838, v835);
      v839 = sub_100003BCC(v1238);
      sub_10001B350(v839, v840, v841, v1328);
      v842 = sub_100003BCC(v1246);
      sub_10001B350(v842, v843, v844, v1320);
      v845 = *v349;
      sub_100032590();
      sub_100051BBC();
      sub_100005404(v364);
      if (v846)
      {
        v965 = v1318;
        sub_100074EFC();
        sub_1007441CC();
        sub_1000437F4(v364);
        v847 = v364;
        v966 = v1317;
        v967 = v1176;
        v968 = v1170;
        if (v3 != 1)
        {
          sub_1000180EC(v847, &qword_100CA6608, &unk_100A31430);
        }
      }

      else
      {
        sub_100006694();
        sub_1000A0944();

        v966 = v1317;
        v965 = v1318;
        v967 = v1176;
        v968 = v1170;
      }

      sub_100192424(v965[6]);
      sub_1000131E8(v1231);
      sub_100051BBC();
      sub_100003A40(v968);
      if (v746)
      {
        sub_100095588();
        sub_100003A40(v968);
        if (!v746)
        {
          sub_1000180EC(v968, &qword_100CA6600, &unk_100A5C400);
        }
      }

      else
      {
        sub_100028A84();
        sub_1000325C0();
        sub_1000A0944();
        v969 = sub_100007FB4();
        sub_10001B350(v969, v970, v971, v835);
      }

      sub_100052378(v1238);
      sub_100051BBC();
      v972 = sub_100016298();
      v973 = v1328;
      sub_1000113D0(v972, v974);
      if (v746)
      {
        sub_100019E38();
        v975 = v1262;
        sub_1007441CC();
        sub_100003A40(v967);
        if (!v746)
        {
          sub_1000180EC(v967, &qword_100CA65F8, &dword_100A31420);
        }
      }

      else
      {
        sub_100010A04();
        sub_1000A0944();
        v975 = v1262;
      }

      sub_1000113EC();
      sub_100051BBC();
      sub_10000556C(v973);
      if (v746)
      {
        sub_1000049BC();
        sub_1007441CC();
        sub_10000556C(v973);
        if (!v746)
        {
          sub_1000180EC(v973, &qword_100CA65F0, &unk_100A5C3F0);
        }
      }

      else
      {
        sub_10001CC28();
        sub_1000B0C38();
        sub_1000A0944();
      }

      v976 = *(v975 + v965[11]);
      sub_1000230E0();
      sub_100032960(v975, v977);
      v978 = v1226;
      *v1226 = v845;
      sub_100006694();
      sub_1000A0944();
      *(v978 + v965[6]) = v1321;
      *(v978 + v965[7]) = 1;
      sub_100051BBC();
      sub_100010A04();
      sub_1000A0944();
      sub_10001CC28();
      sub_1000A0944();
      *(v978 + v965[11]) = v976;
      sub_10000E7B0();
      sub_10001B350(v979, v980, v981, v965);
      v982 = sub_100021088(v1202);
      sub_10001B350(v982, v983, v984, v966);
      sub_1000317A8();
      sub_100020FE8();
      sub_1007441CC();
      sub_1000113EC();
      sub_100051BBC();
      sub_10000E7EC(v976);
      if (v746)
      {
        sub_1000180EC(v976, &qword_100CA65E8, &unk_100A31410);
      }

      else
      {
        sub_1000520B0();
        sub_100032960(v845, v985);
        sub_10001F668();
        sub_1000A0944();
      }

      v986 = v1322;
      v987 = v1169;
      v988 = v1165;
      v989 = v1161;
      sub_10001F668();
      sub_1000A0944();
      v990 = *(v360 + 2);
      LODWORD(v1322) = v360[24];
      sub_1000519E0();
      sub_100051BBC();
      sub_100003A40(v356);
      v1328 = v990;
      if (v746)
      {
        sub_100037D24();
        sub_1007441CC();
        v991 = sub_100007FC4();
        v993 = sub_100024D10(v991, v992, v986);

        v994 = v1174;
        if (v993 != 1)
        {
          sub_1000180EC(v356, &qword_100CA6640, qword_100A32640);
        }
      }

      else
      {
        sub_10000ED74();
        sub_1000A0944();

        v994 = v1174;
      }

      sub_1000453E0(v1214);
      sub_100051BBC();
      v995 = sub_1000201BC();
      v996 = v1323;
      sub_1000038B4(v995, v997, v1323);
      if (v746)
      {
        sub_10002014C(&v360[OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment]);
        sub_10002CA4C();
        sub_1007441CC();
        sub_1000083BC(v989);
        if (!v746)
        {
          sub_1000180EC(v989, &qword_100CA6638, &unk_100A31460);
        }
      }

      else
      {
        sub_100020AD4();
        sub_1000A0944();
      }

      sub_1000519E0();
      sub_100051BBC();
      v998 = sub_100007FC4();
      v646 = v1324;
      sub_1000038B4(v998, v999, v1324);
      if (v746)
      {
        sub_10000CE80();
        sub_1007441CC();
        sub_10000556C(v996);
        if (!v746)
        {
          sub_1000180EC(v996, &qword_100CA6630, &unk_100A32630);
        }
      }

      else
      {
        sub_100024A2C();
        sub_1000A0944();
      }

      sub_1000131E8(v1224);
      sub_100051BBC();
      sub_100005404(v988);
      if (v746)
      {
        sub_10003C7C0();
        sub_1007441CC();
        sub_100005404(v988);
        v1000 = v1179;
        if (!v746)
        {
          sub_1000180EC(v988, &qword_100CA6628, &unk_100A31450);
        }
      }

      else
      {
        sub_100017D0C();
        sub_1000A0944();
        v1000 = v1179;
      }

      sub_100052378(&v1230);
      sub_100051BBC();
      sub_10000E7EC(v987);
      if (v746)
      {
        sub_100069948();
        sub_1007441CC();
        sub_10000E7EC(v987);
        if (!v746)
        {
          sub_1000180EC(v987, &qword_100CA6620, &unk_100A32620);
        }
      }

      else
      {
        sub_100013B94();
        sub_1000A0944();
      }

      sub_1000C893C(&v1235);
      sub_100051BBC();
      sub_100003A40(v994);
      if (v746)
      {
        sub_10004EA04();
        sub_1007441CC();
        sub_100003A40(v994);
        if (!v746)
        {
          sub_1000180EC(v994, &qword_100CA6618, &unk_100A31440);
        }
      }

      else
      {
        sub_100016E44();
        sub_1000A0944();
      }

      sub_1000436AC(&v1242);
      sub_100051BBC();
      sub_100003BFC(v1000);
      if (v746)
      {
        sub_100008DDC();
        sub_10004526C();
        sub_100003BFC(v1000);
        if (!v746)
        {
          sub_1000180EC(v1000, &qword_100CA6610, &unk_100A32610);
        }
      }

      else
      {
        sub_100049BB4();
        sub_100040C24();
      }

      sub_10001F668();
      sub_100040CF8();
      sub_100042750();
      sub_100037880();
      v1001 = type metadata accessor for MainState._Storage(0);
      sub_100003B6C(v1001);
      v688 = sub_100021664();
      v690 = v1322;
      v691 = v1248;
      v692 = v1250;
      v693 = v1252;
      v694 = v1254;
      v695 = v1256;
LABEL_295:
      sub_100040DE8(v688, v690, v691, v692, v693, v694, v695, v689, v1118, v1119, v1120, v1121, v1122, v1123, v1124, v1125, v1126, v1127, v1128, *(&v1128 + 1), v1129, v1130, v1131, v1132, v1133, v1134, v1135, v1136, v1137, v1138, v1139, v1140, v1141, v1142, v1143);
      sub_1000B9194();

LABEL_296:

      return v646;
    case 7u:
      sub_1000184C0();
      sub_10073A0E8(v495);
      v496 = sub_10000C834();
      sub_1000038B4(v496, v497, v1311);
      if (!v746)
      {
        sub_100087204();
        sub_1000113EC();
        sub_1000A0944();
        v703 = sub_100003BCC(v1280);
        sub_10001B350(v703, v704, v705, v1322);
        v706 = sub_100003BCC(v1281);
        sub_10001B350(v706, v707, v708, v1323);
        v709 = sub_100003BCC(v1282);
        sub_10001B350(v709, v710, v711, v1324);
        v712 = sub_100003BCC(v1283);
        sub_10001B350(v712, v713, v714, v1325);
        v715 = sub_100003BCC(&v1284);
        sub_10001B350(v715, v716, v717, v1326);
        v718 = sub_100003BCC(&v1285);
        sub_10001B350(v718, v719, v720, v1327);
        sub_100008DDC();
        sub_1000E1404(v721);
        sub_100021424();
        sub_1007441CC();
        sub_1000184C0();
        SavedLocation.identifier.getter();
        v722 = sub_10000FEF4();
        v725 = sub_1000D3CF4(v722, v723, v724, v1308);
        v726 = type metadata accessor for LocationViewerViewState._Storage(v725);
        sub_100003B6C(v726);
        v727 = sub_100071DE8();
        v728 = v1207;
        *v1207 = v727;
        sub_1000C8630(v728);
        v729 = sub_10012CDB0(v728);
        sub_100003934();
        sub_10001B350(v730, v731, v732, v729);
        v733 = sub_100003BCC(v1239);
        sub_10001B350(v733, v734, v735, v1328);
        sub_100003934();
        sub_10001B350(v736, v737, v738, v1320);
        v739 = *v349;
        sub_1000325C0();
        sub_100095588();
        sub_100005404(v345);
        if (v740)
        {
          v852 = v1318;
          sub_100074EFC();
          sub_1007441CC();
          sub_1000437F4(v345);
          v853 = v1177;
          v741 = v345;
          v854 = v1172;
          if (v3 != 1)
          {
            sub_1000180EC(v741, &qword_100CA6608, &unk_100A31430);
          }
        }

        else
        {
          sub_100006694();
          sub_1000A0944();

          v852 = v1318;
          v853 = v1177;
          v854 = v1172;
        }

        sub_100192424(v852[6]);
        sub_1000180EC(v1207, &qword_100CA6608, &unk_100A31430);
        sub_100051BBC();
        sub_100003A40(v854);
        if (v746)
        {
          sub_100095588();
          sub_100003A40(v854);
          if (!v746)
          {
            sub_1000180EC(v854, &qword_100CA6600, &unk_100A5C400);
          }
        }

        else
        {
          sub_100028A84();
          sub_1000325C0();
          sub_1000A0944();
          v855 = sub_100007FB4();
          sub_10001B350(v855, v856, v857, v729);
        }

        sub_100052378(v1239);
        sub_100051BBC();
        v858 = sub_100016298();
        v859 = v1328;
        sub_1000113D0(v858, v860);
        if (v746)
        {
          sub_100019E38();
          v861 = v1263;
          sub_1007441CC();
          sub_100003A40(v853);
          if (!v746)
          {
            sub_1000180EC(v853, &qword_100CA65F8, &dword_100A31420);
          }
        }

        else
        {
          sub_100010A04();
          sub_1000A0944();
          v861 = v1263;
        }

        sub_1000113EC();
        sub_100051BBC();
        sub_10000556C(v859);
        if (v746)
        {
          sub_1000049BC();
          sub_1007441CC();
          sub_10000556C(v859);
          v646 = v1160;
          if (!v746)
          {
            sub_1000180EC(v859, &qword_100CA65F0, &unk_100A5C3F0);
          }
        }

        else
        {
          sub_10001CC28();
          sub_1000B0C38();
          sub_1000A0944();
          v646 = v1160;
        }

        v862 = *(v861 + v852[11]);
        sub_1000230E0();
        sub_100032960(v861, v863);
        v864 = v1271;
        *v1271 = v739;
        sub_100006694();
        sub_1000A0944();
        *(v864 + v852[6]) = v1321;
        *(v864 + v852[7]) = 1;
        sub_100051BBC();
        sub_100010A04();
        sub_1000A0944();
        sub_10001CC28();
        sub_1000A0944();
        *(v864 + v852[11]) = v862;
        sub_10000E7B0();
        sub_10001B350(v865, v866, v867, v852);
        v868 = sub_100021088(&v1272);
        sub_10001B350(v868, v869, v870, v1317);
        sub_1000317A8();
        sub_10003778C();
        sub_1007441CC();
        sub_1000113EC();
        sub_100095588();
        sub_10000554C(v862);
        if (v746)
        {
          sub_1000180EC(v862, &qword_100CA65E8, &unk_100A31410);
        }

        else
        {
          sub_1000520B0();
          sub_100032960(v3, v871);
          sub_10001F668();
          sub_1000FD16C();
        }

        v872 = v1322;
        v873 = v1175;
        v874 = v1171;
        v875 = v1166;
        v876 = v1163;
        sub_10001F668();
        sub_1000A0944();
        v877 = *(v360 + 2);
        LODWORD(v1322) = v360[24];
        sub_1000453E0(v1280);
        sub_100095588();
        sub_100003A40(v646);
        v1328 = v877;
        if (v746)
        {
          sub_100037D24();
          sub_1007441CC();
          v878 = sub_1000201BC();
          v880 = sub_100024D10(v878, v879, v872);

          v746 = v880 == 1;
          v881 = v1162;
          if (!v746)
          {
            sub_1000180EC(v646, &qword_100CA6640, qword_100A32640);
          }
        }

        else
        {
          sub_10000ED74();
          sub_1000A0944();

          v881 = v1162;
        }

        sub_1000436AC(v1281);
        sub_100095588();
        v882 = sub_1000131C4();
        sub_1000113D0(v882, v883);
        if (v746)
        {
          v646 = v881;
          sub_10002014C(&v360[OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment]);
          sub_10002CA4C();
          sub_1007441CC();
          sub_100003A40(v881);
          v884 = v1181;
          if (!v746)
          {
            sub_1000180EC(v646, &qword_100CA6638, &unk_100A31460);
          }
        }

        else
        {
          sub_100020AD4();
          sub_1000A0944();
          v884 = v1181;
        }

        sub_1000131E8(v1282);
        sub_100095588();
        sub_1000083BC(v876);
        if (v746)
        {
          sub_10000CE80();
          sub_1007441CC();
          sub_1000083BC(v876);
          if (!v746)
          {
            sub_1000180EC(v876, &qword_100CA6630, &unk_100A32630);
          }
        }

        else
        {
          sub_100024A2C();
          sub_1000A0944();
        }

        sub_100030224(v1283);
        sub_100095588();
        sub_100003A40(v875);
        if (v746)
        {
          sub_10003C7C0();
          sub_1007441CC();
          sub_100003A40(v875);
          if (!v746)
          {
            sub_1000180EC(v875, &qword_100CA6628, &unk_100A31450);
          }
        }

        else
        {
          sub_100017D0C();
          sub_1000A0944();
        }

        sub_100052378(&v1284);
        sub_100095588();
        v885 = sub_100016298();
        sub_100036E54(v885, v886);
        if (v746)
        {
          sub_100069948();
          sub_1007441CC();
          sub_100003BFC(v874);
          if (!v746)
          {
            sub_1000180EC(v874, &qword_100CA6620, &unk_100A32620);
          }
        }

        else
        {
          sub_100013B94();
          sub_1000A0944();
        }

        sub_1000C893C(&v1285);
        sub_100095588();
        v887 = sub_10000C834();
        sub_1000038B4(v887, v888, v1327);
        if (v746)
        {
          sub_10004EA04();
          sub_1007441CC();
          sub_10000394C(v873);
          if (!v746)
          {
            sub_1000180EC(v873, &qword_100CA6618, &unk_100A31440);
          }
        }

        else
        {
          sub_100016E44();
          sub_1000A0944();
        }

        sub_1000436AC(&v1287);
        sub_100095588();
        sub_10000E7EC(v884);
        if (v746)
        {
          sub_100008DDC();
          sub_10004526C();
          sub_10000E7EC(v884);
          if (!v746)
          {
            sub_1000180EC(v884, &qword_100CA6610, &unk_100A32610);
          }
        }

        else
        {
          sub_100049BB4();
          sub_100040C24();
        }

        sub_10001F668();
        sub_100040CF8();
        sub_100042750();
        sub_100037880();
        v889 = type metadata accessor for MainState._Storage(0);
        sub_100003B6C(v889);
        v890 = sub_100021664();
        sub_100040DE8(v890, v1322, v1249, v1251, v1253, v1255, v1257, v891, v1118, v1119, v1120, v1121, v1122, v1123, v1124, v1125, v1126, v1127, v1128, *(&v1128 + 1), v1129, v1130, v1131, v1132, v1133, v1134, v1135, v1136, v1137, v1138, v1139, v1140, v1141, v1142, v1143);
        sub_1000B9194();

        sub_1000180EC(v1246[1], &qword_100CA65E8, &unk_100A31410);
        sub_1000180EC(v1271, &qword_100CA6610, &unk_100A32610);
        sub_1000180EC(v1269, &qword_100CA6618, &unk_100A31440);
        sub_1000180EC(v1268, &qword_100CA6620, &unk_100A32620);
        sub_1000180EC(v1266, &qword_100CA6628, &unk_100A31450);
        sub_1000180EC(v1265, &qword_100CA6630, &unk_100A32630);
        sub_1000180EC(v1264, &qword_100CA6638, &unk_100A31460);
        sub_1000180EC(v1261, &qword_100CA6640, qword_100A32640);
        sub_100014D94();
        v893 = &v1277;
LABEL_250:
        sub_100032960(*(v893 - 32), v892);
        return v646;
      }

LABEL_30:
      sub_1000180EC(v2, &qword_100CA6890, &qword_100A31680);
      sub_100020250();
      static Logger.automation.getter();
      v586 = Logger.logObject.getter();
      v587 = static os_log_type_t.error.getter();
      if (sub_10000C79C(v587))
      {
        v588 = sub_10000389C();
        sub_100025054(v588);
        v591 = "Failed to find new york location";
LABEL_134:
        sub_1000133FC(&_mh_execute_header, v589, v590, v591);
        sub_100007E54();
      }

LABEL_135:

      sub_100041038();
      v756(v349);
      goto LABEL_136;
    default:
      sub_100020250();
      v371 = v1273;
      v372 = v1260;
      (*(v370 + 32))(v1273, v369, v1260);
      v373 = v1241;
      sub_10073A0E8(v1241);
      v374 = sub_1000162A4();
      sub_1000038B4(v374, v375, v1311);
      if (v746)
      {
        sub_1000180EC(v373, &qword_100CA6890, &qword_100A31680);
        v2 = v1243;
        sub_100003934();
        sub_10001B350(v376, v377, v378, v1306);
      }

      else
      {
        sub_1000184C0();
        SavedLocation.location.getter();
        sub_100014D94();
        sub_100032960(v373, v742);
        v743 = sub_10000C834();
        v744 = v1306;
        sub_100036E54(v743, v745);
        if (!v746)
        {
          v897 = v1274;
          v898 = v1188;
          (*(v1274 + 32))(v1188, v2, v744);
          v899 = objc_opt_self();
          v900 = [v899 currentDevice];
          v901 = [v900 userInterfaceIdiom];

          if (v901)
          {
            v902 = sub_100003BCC(&v1177);
            sub_10001B350(v902, v903, v904, v1322);
            v905 = sub_100003BCC(v1178);
            sub_10001B350(v905, v906, v907, v1323);
            v908 = sub_100003BCC(&v1179);
            sub_10001B350(v908, v909, v910, v1324);
            v911 = sub_100003BCC(v1180);
            sub_10001B350(v911, v912, v913, v1325);
            v914 = sub_100003BCC(&v1181);
            sub_10001B350(v914, v915, v916, v1326);
            v917 = sub_100003BCC(v1182);
            sub_10001B350(v917, v918, v919, v1327);
            sub_100008DDC();
            sub_10003805C(v920);
            sub_1000131DC();
            sub_1007441CC();
            sub_1000184C0();
            Location.identifier.getter();
            v921 = sub_10000FEF4();
            v924 = sub_1000D3CF4(v921, v922, v923, v1308);
            v925 = type metadata accessor for LocationViewerViewState._Storage(v924);
            sub_100003B6C(v925);
            v926 = sub_100071DE8();
            v927 = sub_1000B7BD8(v926, v1167);
            sub_1000C8630(v927);
            v928 = sub_10012CDB0(v360);
            v929 = sub_100003BCC(v1183);
            sub_10001B350(v929, v930, v931, v928);
            v932 = sub_100003BCC(v1184);
            sub_10001B350(v932, v933, v934, v1328);
            v935 = sub_100003BCC(v1185);
            v936 = v1320;
            sub_10001B350(v935, v937, v938, v1320);
            v939 = *v744;
            sub_100032590();
            sub_100095588();
            sub_100005404(v897);
            if (v746)
            {
              v1041 = v1318;
              sub_100074EFC();
              sub_1000325C0();
              sub_1007441CC();
              sub_1000437F4(v897);
              if (v3 != 1)
              {
                sub_1000180EC(v897, &qword_100CA6608, &unk_100A31430);
              }
            }

            else
            {
              sub_100006694();
              sub_1000325C0();
              sub_1000A0944();

              v1041 = v1318;
            }

            LODWORD(v1327) = *(v744 + v1041[6]);
            v1042 = [v899 currentDevice];
            v1043 = [v1042 userInterfaceIdiom];

            if (v1043 && *(v744 + v1041[9] + 8) == 2)
            {
              v1044 = 1;
            }

            else
            {
              v1044 = *(v744 + v1041[7]);
            }

            LODWORD(v1326) = v1044;
            v1045 = v1129;
            sub_1000436AC(v1183);
            sub_100095588();
            sub_100003A40(v1045);
            v1046 = v1130;
            if (v746)
            {
              sub_100095588();
              sub_100003A40(v1045);
              if (!v746)
              {
                sub_1000180EC(v1045, &qword_100CA6600, &unk_100A5C400);
              }
            }

            else
            {
              sub_100028A84();
              sub_1000131DC();
              sub_1000A0944();
              v744 = v1141;
              v360 = v1142;
              sub_10000E7B0();
              sub_10001B350(v1047, v1048, v1049, v928);
            }

            sub_100052378(v1184);
            sub_100095588();
            v1050 = sub_100016298();
            v1051 = v1328;
            sub_1000113D0(v1050, v1052);
            if (v746)
            {
              sub_100019E38();
              sub_1007441CC();
              sub_100003A40(v1046);
              if (!v746)
              {
                sub_1000180EC(v1046, &qword_100CA65F8, &dword_100A31420);
              }
            }

            else
            {
              sub_100010A04();
              sub_1000A0944();
            }

            sub_1000113EC();
            sub_100095588();
            sub_10000556C(v1051);
            if (v746)
            {
              sub_1000049BC();
              sub_10003778C();
              sub_1007441CC();
              sub_1000038B4(v1051, 1, v936);
              if (!v746)
              {
                sub_1000180EC(v1051, &qword_100CA65F0, &unk_100A5C3F0);
              }
            }

            else
            {
              sub_10001CC28();
              sub_100037814();
              sub_1000A0944();
            }

            v1053 = *(v744 + v1041[11]);
            v1054 = v744;
            v1055 = *(&v1128 + 1);
            **(&v1128 + 1) = v939;
            sub_100006694();
            sub_1000A0944();
            *(v1055 + v1041[6]) = v1327;
            *(v1055 + v1041[7]) = v1326;
            sub_100051BBC();
            sub_100010A04();
            sub_1000A0944();
            sub_10001CC28();
            sub_1000A0944();
            *(v1055 + v1041[11]) = v1053;
            sub_1000180EC(v1159, &qword_100CA65F0, &unk_100A5C3F0);
            sub_1000180EC(v1158, &qword_100CA65F8, &dword_100A31420);
            v1056 = sub_1000C893C(v1183);
            sub_1000180EC(v1056, v1057, &unk_100A5C400);
            sub_1000180EC(v360, &qword_100CA6608, &unk_100A31430);
            sub_1000230E0();
            sub_100032960(v1054, v1058);
            sub_10000E7B0();
            sub_10001B350(v1059, v1060, v1061, v1041);
            v1062 = v1187;
            (*(v1275 + 16))(v1187, v1273, v1260);
            v1063 = type metadata accessor for ConditionDetailViewState(0);
            v1064 = v1274;
            (*(v1274 + 16))(v1062 + v1063[5], v1188, v1306);
            type metadata accessor for Date();
            sub_100003934();
            sub_10001B350(v1065, v1066, v1067, v1068);
            type metadata accessor for DetailChartSelection(0);
            sub_100003934();
            sub_10001B350(v1069, v1070, v1071, v1072);
            v1073 = v1062 + v1063[7];
            *v1073 = 0u;
            *(v1073 + 16) = 0u;
            *(v1073 + 32) = 1;
            *(v1062 + v1063[9]) = 0;
            type metadata accessor for ModalViewState.LocationDetailModal(0);
            swift_storeEnumTagMultiPayload();
            v1074 = v1317;
            swift_storeEnumTagMultiPayload();
            v1075 = sub_100007FB4();
            sub_10001B350(v1075, v1076, v1077, v1074);
            sub_1000E5A2C();
            v1078 = v1152;
            v1079 = v1153;
            v1080 = v1154;
            v1081 = v1155;
            v1082 = v1156;
            v1083 = v1157;
            v646 = sub_1000D2C20(0, 3u, v1152, v1153, v1154, v1155, v1156, v1157, v1055, v1062, v1120, v1121, v1122, v1123, v1124, v1125, v1126, v1127, v1128);
            sub_1000180EC(v1062, &qword_100CA65E8, &unk_100A31410);
            sub_1000180EC(v1055, &qword_100CA6610, &unk_100A32610);
            sub_1000180EC(v1083, &qword_100CA6618, &unk_100A31440);
            sub_1000180EC(v1082, &qword_100CA6620, &unk_100A32620);
            sub_1000180EC(v1081, &qword_100CA6628, &unk_100A31450);
            sub_1000180EC(v1080, &qword_100CA6630, &unk_100A32630);
            sub_1000180EC(v1079, &qword_100CA6638, &unk_100A31460);
            sub_1000180EC(v1078, &qword_100CA6640, qword_100A32640);
            (*(v1064 + 8))(v1188, v1306);
          }

          else
          {
            v1003 = sub_100003BCC(&v1170);
            sub_10001B350(v1003, v1004, v1005, v1322);
            v1006 = sub_100003BCC(&v1171);
            sub_10001B350(v1006, v1007, v1008, v1323);
            v1009 = sub_100003BCC(&v1172);
            sub_10001B350(v1009, v1010, v1011, v1324);
            v1012 = sub_100003BCC(v1173);
            sub_10001B350(v1012, v1013, v1014, v1325);
            v1015 = sub_100003BCC(&v1174);
            sub_10001B350(v1015, v1016, v1017, v1326);
            v1018 = sub_100003BCC(&v1175);
            sub_10001B350(v1018, v1019, v1020, v1327);
            v1021 = sub_100003BCC(&v1176);
            sub_10001B350(v1021, v1022, v1023, v1318);
            v1024 = v1135;
            (*(v1275 + 16))(v1135, v1273, v372);
            v1025 = type metadata accessor for ConditionDetailViewState(0);
            (*(v897 + 16))(v1024 + v1025[5], v898, v744);
            type metadata accessor for Date();
            sub_100003934();
            sub_10001B350(v1026, v1027, v1028, v1029);
            v1030 = v1025[8];
            type metadata accessor for DetailChartSelection(0);
            sub_100003934();
            sub_10001B350(v1031, v1032, v1033, v1034);
            v1035 = v1024 + v1025[7];
            *v1035 = 0u;
            *(v1035 + 16) = 0u;
            *(v1035 + 32) = 1;
            *(v1024 + v1025[9]) = 0;
            type metadata accessor for ModalViewState.LocationDetailModal(0);
            swift_storeEnumTagMultiPayload();
            v1036 = v1317;
            swift_storeEnumTagMultiPayload();
            sub_10000E7B0();
            sub_10001B350(v1037, v1038, v1039, v1036);
            sub_1000317A8();
            sub_10003805C(v1040);
            sub_100021424();
            sub_1007441CC();
            sub_1000113EC();
            sub_100095588();
            sub_10000554C(v1024);
            if (v746)
            {
              sub_1000180EC(v1024, &qword_100CA65E8, &unk_100A31410);
            }

            else
            {
              sub_1000520B0();
              sub_100032960(v1030, v1084);
              sub_10001F668();
              sub_1000B0C38();
              sub_1000A0944();
            }

            v1085 = v1122;
            v1086 = v1119;
            sub_10001F668();
            sub_1000A0944();
            v1087 = *(v1329 + 16);
            LODWORD(v1321) = *(v1329 + 24);
            sub_1000E31B8(&v1170);
            sub_100095588();
            v1088 = sub_1000182B8();
            v1089 = v1322;
            sub_1000113D0(v1088, v1090);
            if (v746)
            {
              sub_100037D24();
              sub_1007441CC();
              v1091 = sub_1000182B8();
              v1093 = sub_100024D10(v1091, v1092, v1089);

              if (v1093 != 1)
              {
                sub_1000180EC(v360, &qword_100CA6640, qword_100A32640);
              }
            }

            else
            {
              sub_10000ED74();
              sub_1000A0944();
            }

            sub_1000436AC(&v1171);
            sub_100095588();
            v1094 = sub_1000131C4();
            sub_1000113D0(v1094, v1095);
            if (v746)
            {
              sub_10002014C(v1329 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment);
              sub_10002CA4C();
              sub_1007441CC();
              sub_100003A40(v3);
              v1096 = v1123;
              v1097 = v1120;
              if (!v746)
              {
                sub_1000180EC(v3, &qword_100CA6638, &unk_100A31460);
              }
            }

            else
            {
              sub_100020AD4();
              sub_1000A0944();
              v1096 = v1123;
              v1097 = v1120;
            }

            sub_1000131E8(&v1172);
            sub_100095588();
            sub_1000113D0(v1086, 1);
            if (v746)
            {
              sub_10000CE80();
              sub_10003805C(v1098);
              sub_1007441CC();
              sub_100003A40(v1086);
              v1099 = v1121;
              if (!v746)
              {
                sub_1000180EC(v1086, &qword_100CA6630, &unk_100A32630);
              }
            }

            else
            {
              sub_100024A2C();
              sub_1000A0944();
              v1099 = v1121;
            }

            sub_1000E31B8(v1173);
            sub_100095588();
            sub_100003A40(v1097);
            if (v746)
            {
              sub_10003C7C0();
              sub_10003805C(v1100);
              sub_1007441CC();
              sub_100003A40(v1097);
              v1101 = v1326;
              if (!v746)
              {
                sub_1000180EC(v1097, &qword_100CA6628, &unk_100A31450);
              }
            }

            else
            {
              sub_100017D0C();
              sub_1000A0944();
              v1101 = v1326;
            }

            sub_1000436AC(&v1174);
            sub_100095588();
            v1102 = sub_1000131C4();
            sub_1000038B4(v1102, v1103, v1101);
            if (v746)
            {
              sub_100069948();
              sub_10003805C(v1104);
              sub_1007441CC();
              v1105 = sub_1000131C4();
              sub_1000038B4(v1105, v1106, v1101);
              if (!v746)
              {
                sub_1000180EC(v1099, &qword_100CA6620, &unk_100A32620);
              }
            }

            else
            {
              sub_100013B94();
              sub_1000A0944();
            }

            sub_1000C893C(&v1175);
            sub_100095588();
            sub_100003A40(v1085);
            if (v746)
            {
              sub_10004EA04();
              sub_10003805C(v1107);
              sub_1007441CC();
              sub_100003A40(v1085);
              if (!v746)
              {
                sub_1000180EC(v1085, &qword_100CA6618, &unk_100A31440);
              }
            }

            else
            {
              sub_100016E44();
              sub_1000A0944();
            }

            sub_100030224(&v1176);
            sub_100095588();
            v1108 = sub_1000162A4();
            sub_1000113D0(v1108, v1109);
            v1328 = v1087;
            if (v746)
            {
              sub_100008DDC();
              v1110 = v1329;
              sub_1007441CC();
              sub_100003A40(v1096);
              if (!v746)
              {
                sub_1000180EC(v1096, &qword_100CA6610, &unk_100A32610);
              }
            }

            else
            {
              sub_100049BB4();
              sub_1000A0944();
              v1110 = v1329;
            }

            sub_10001F668();
            sub_1000A0944();
            v646 = *(v1110 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
            v1111 = type metadata accessor for MainState._Storage(0);
            sub_100003B6C(v1111);
            v1112 = sub_100021664();
            sub_100040DE8(v1112, v1321, v1136, v1137, *(&v1137 + 1), v1138, v1139, v1113, v1118, v1119, v1120, v1121, v1122, v1123, v1124, v1125, v1126, v1127, v1128, *(&v1128 + 1), v1129, v1130, v1131, v1132, v1133, v1134, v1135, v1136, v1137, v1138, v1139, v1140, v1141, v1142, v1143);
            sub_1000B9194();

            sub_1000180EC(v1135, &qword_100CA65E8, &unk_100A31410);
            sub_1000180EC(v1151, &qword_100CA6610, &unk_100A32610);
            sub_1000180EC(v1150, &qword_100CA6618, &unk_100A31440);
            sub_1000180EC(v1149, &qword_100CA6620, &unk_100A32620);
            sub_1000180EC(v1148, &qword_100CA6628, &unk_100A31450);
            sub_1000180EC(v1147, &qword_100CA6630, &unk_100A32630);
            sub_1000180EC(v1146, &qword_100CA6638, &unk_100A31460);
            sub_1000180EC(v1145, &qword_100CA6640, qword_100A32640);
            sub_10000E73C();
            v1114(v1188, v1306);
          }

          sub_10000E73C();
          v1115(v1273, v1260);
          return v646;
        }
      }

      sub_1000180EC(v2, &qword_100CA65D8, &unk_100A3D9D0);
      v747 = v1189;
      static Logger.automation.getter();
      v748 = Logger.logObject.getter();
      v749 = static os_log_type_t.error.getter();
      if (sub_10000C79C(v749))
      {
        v750 = sub_10000389C();
        sub_100025054(v750);
        sub_1000133FC(&_mh_execute_header, v751, v752, "Failed to find New York location");
        sub_100007E54();
      }

      sub_100041038();
      v753(v747);
      v349[1](v371, v372);
LABEL_136:
      v646 = v1329;
LABEL_137:

      return v646;
  }
}

uint64_t sub_100741854(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v477 = a3;
  v491 = a2;
  v492 = a1;
  v498 = type metadata accessor for TimeState(0);
  sub_1000037E8();
  __chkstk_darwin(v8);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v9);
  sub_10000E70C();
  v490 = v10;
  v11 = sub_1000038CC();
  v497 = type metadata accessor for NotificationsOptInState(v11);
  sub_1000037E8();
  __chkstk_darwin(v12);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v13);
  sub_10000E70C();
  v489 = v14;
  v15 = sub_1000038CC();
  v496 = type metadata accessor for NotificationsState(v15);
  sub_1000037E8();
  __chkstk_darwin(v16);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v17);
  sub_10000E70C();
  v488 = v18;
  v19 = sub_1000038CC();
  v495 = type metadata accessor for LocationsState(v19);
  sub_1000037E8();
  __chkstk_darwin(v20);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v21);
  sub_10000E70C();
  v487 = v22;
  v23 = sub_1000038CC();
  v494 = type metadata accessor for EnvironmentState(v23);
  sub_1000037E8();
  __chkstk_darwin(v24);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v25);
  sub_10000E70C();
  v486 = v26;
  v27 = sub_1000038CC();
  v493 = type metadata accessor for AppConfigurationState(v27);
  sub_1000037E8();
  __chkstk_darwin(v28);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v29);
  sub_10000E70C();
  v485 = v30;
  v31 = sub_1000038CC();
  v472 = type metadata accessor for ModalViewState(v31);
  sub_1000037E8();
  __chkstk_darwin(v32);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v33);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v34);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v35);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v36);
  sub_10000E70C();
  v484 = v37;
  v38 = sub_10022C350(&qword_100CA65E8, &unk_100A31410);
  v39 = sub_100003810(v38);
  __chkstk_darwin(v39);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v40);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v41);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v42);
  sub_10000E70C();
  v44 = sub_100003918(v43);
  v471 = type metadata accessor for ViewState.SecondaryViewState(v44);
  sub_1000037E8();
  __chkstk_darwin(v45);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v46);
  sub_10000E70C();
  sub_100003990(v47);
  v48 = sub_10022C350(&qword_100CA65F0, &unk_100A5C3F0);
  v49 = sub_100003810(v48);
  __chkstk_darwin(v49);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v50);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v51);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v52);
  sub_10000E70C();
  sub_100003990(v53);
  v54 = sub_10022C350(&qword_100CA65F8, &dword_100A31420);
  v55 = sub_100003810(v54);
  __chkstk_darwin(v55);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v56);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v57);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v58);
  sub_10000E70C();
  sub_100003990(v59);
  v60 = sub_10022C350(&qword_100CA6600, &unk_100A5C400);
  v61 = sub_100003810(v60);
  __chkstk_darwin(v61);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v62);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v63);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v64);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v65);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v66);
  sub_10000E70C();
  v68 = sub_100003918(v67);
  active = type metadata accessor for LocationViewerActiveLocationState(v68);
  v70 = sub_100003810(active);
  __chkstk_darwin(v70);
  sub_1000038E4();
  sub_100003990(v71);
  v72 = sub_10022C350(&qword_100CA6608, &unk_100A31430);
  v73 = sub_100003810(v72);
  __chkstk_darwin(v73);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v74);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v75);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v76);
  sub_10000E70C();
  v78 = sub_100003918(v77);
  v79 = type metadata accessor for ViewState(v78);
  sub_1000037E8();
  __chkstk_darwin(v80);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v81);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v82);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v83);
  sub_10000E70C();
  v499 = v84;
  v85 = sub_10022C350(&qword_100CA6610, &unk_100A32610);
  v86 = sub_100003810(v85);
  __chkstk_darwin(v86);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v87);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v88);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v89);
  sub_10000E70C();
  v483 = v90;
  v91 = sub_10022C350(&qword_100CA6618, &unk_100A31440);
  v92 = sub_100003810(v91);
  __chkstk_darwin(v92);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v93);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v94);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v95);
  sub_10000E70C();
  v482 = v96;
  v97 = sub_10022C350(&qword_100CA6620, &unk_100A32620);
  v98 = sub_100003810(v97);
  __chkstk_darwin(v98);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v99);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v100);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v101);
  sub_10000E70C();
  sub_100003990(v102);
  v103 = sub_10022C350(&qword_100CA6628, &unk_100A31450);
  v104 = sub_100003810(v103);
  __chkstk_darwin(v104);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v105);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v106);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v107);
  sub_10000E70C();
  sub_100003990(v108);
  v109 = sub_10022C350(&qword_100CA6630, &unk_100A32630);
  v110 = sub_100003810(v109);
  __chkstk_darwin(v110);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v111);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v112);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v113);
  sub_10000E70C();
  sub_100003990(v114);
  v115 = sub_10022C350(&qword_100CA6638, &unk_100A31460);
  v116 = sub_100003810(v115);
  __chkstk_darwin(v116);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v117);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v118);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v119);
  sub_10000E70C();
  sub_100003990(v120);
  v121 = sub_10022C350(&qword_100CA6640, qword_100A32640);
  v122 = sub_100003810(v121);
  __chkstk_darwin(v122);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v123);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v124);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v125);
  sub_10000E70C();
  sub_100003918(v126);
  v127 = type metadata accessor for Location.Identifier();
  v128 = sub_100003E5C(v127, &v493);
  v450 = v129;
  __chkstk_darwin(v128);
  sub_1000038E4();
  sub_100003918(v130);
  v131 = type metadata accessor for WeatherMapOverlayKind();
  sub_1000037C4();
  v133 = v132;
  __chkstk_darwin(v134);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v135);
  sub_10000E70C();
  sub_100003918(v136);
  v137 = type metadata accessor for SavedLocation();
  v138 = sub_100003810(v137);
  __chkstk_darwin(v138);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v139);
  sub_10000E70C();
  sub_100003918(v140);
  v141 = type metadata accessor for Logger();
  v142 = sub_100003E5C(v141, &v492);
  v469 = v143;
  __chkstk_darwin(v142);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v144);
  sub_10000E70C();
  sub_100003990(v145);
  v146 = sub_10022C350(&qword_100CA6698, &unk_100A314B0);
  v147 = sub_100003810(v146);
  __chkstk_darwin(v147);
  v149 = v417 - v148;
  v150 = sub_10022C350(&qword_100CA5CF8, &unk_100A302F0);
  v151 = sub_100003810(v150);
  __chkstk_darwin(v151);
  v153 = v417 - v152;
  v479 = type metadata accessor for DisplayMetrics(0);
  sub_1000037E8();
  __chkstk_darwin(v154);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v155);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v156);
  sub_100017D24();
  __chkstk_darwin(v157);
  v158 = sub_10002C820();
  v476 = type metadata accessor for WeatherMapPresentationState(v158);
  sub_1000037E8();
  __chkstk_darwin(v159);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v160);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v161);
  sub_1001994D0();
  __chkstk_darwin(v162);
  v164 = v417 - v163;
  v474 = a4;
  v165 = a4 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_view;
  sub_1000049BC();
  sub_1007441CC();
  sub_1000336E4(v4);
  v468 = v133;
  v167 = *(v133 + 16);
  v166 = v133 + 16;
  v466 = v167;
  v167(v153, v491, v131);
  v168 = sub_100007FB4();
  v467 = v131;
  v171 = sub_1000D3CF4(v168, v169, v170, v131);
  type metadata accessor for WeatherMapTrackingState(v171);
  sub_100003934();
  sub_10001B350(v172, v173, v174, v175);
  if (v477)
  {
    v176 = 3;
  }

  else
  {
    v176 = 5;
  }

  v475 = v164;
  sub_1000B0430(v176, v4, v153, v149, v164);
  sub_1000180EC(v149, &qword_100CA6698, &unk_100A314B0);
  sub_1000180EC(v153, &qword_100CA5CF8, &unk_100A302F0);
  sub_100025390();
  sub_100032960(v4, v177);
  sub_1000AF640();
  sub_100032960(v5, v178);
  v473 = v79;
  sub_100019E38();
  v478 = v165;
  sub_1007441CC();
  if (qword_100CA24D0 != -1)
  {
    swift_once();
  }

  v179 = &unk_100A2F000;
  v180 = v467;
  if (byte_100D90788 != 1 || *(v6 + 8) == 1 || (v149 = *(v479 + 36), (DynamicTypeSize.isAccessibilitySize.getter() & 1) != 0))
  {
    sub_100025390();
    sub_100032960(v6, v181);
LABEL_10:
    v182 = v452;
    static Logger.automation.getter();
    sub_100020338();
    sub_100032590();
    sub_1007441CC();
    sub_100021D50(&v474);
    sub_100744224();
    v183();
    v184 = v182;
    v185 = Logger.logObject.getter();
    v186 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v185, v186))
    {
      v179 = v180;
      v180 = swift_slowAlloc();
      v491 = swift_slowAlloc();
      v500 = v491;
      *v180 = 136315650;
      sub_100020250();
      SavedLocation.identifier.getter();
      Location.Identifier.name.getter();
      v188 = v187;
      sub_10000E73C();
      v189 = v166;
      v190 = v470;
      v191(v189, v470);
      sub_100014D94();
      sub_100032960(v149, v192);
      v193 = sub_100040E24();
      v195 = sub_100078694(v193, v188, v194);

      *(v180 + 4) = v195;
      *(v180 + 12) = 2080;
      sub_100744174();
      dispatch thunk of CustomStringConvertible.description.getter();
      v153 = v196;
      sub_10000E73C();
      v197(v164, v179);
      v198 = sub_100040E24();
      v184 = sub_100078694(v198, v153, v199);

      *(v180 + 14) = v184;
      *(v180 + 22) = 1024;
      *(v180 + 24) = v477 & 1;
      _os_log_impl(&_mh_execute_header, v185, v186, "Create new MainState for displaying map in compact mode. location=%s, overlayKind=%s, fullscreen=%{BOOL}d", v180, 0x1Cu);
      v186 = v491;
      swift_arrayDestroy();
      sub_100003884(v186);
      sub_100003884(v180);

      v200 = sub_1000D3F80();
      v201(v200);
      sub_10008876C();
    }

    else
    {

      sub_10000E73C();
      v202(v164, v180);
      sub_100014D94();
      sub_100032960(v149, v203);
      v204 = sub_1000D3F80();
      v205(v204);
      sub_10008876C();
      v190 = v470;
    }

    v206 = sub_100003BCC(&v502);
    sub_10001B350(v206, v207, v208, v209);
    v210 = sub_100003BCC(&v503);
    sub_10001B350(v210, v211, v212, v494);
    v213 = sub_100003BCC(&v505);
    sub_10001B350(v213, v214, v215, v185);
    v216 = sub_100003BCC(&v507);
    sub_10001B350(v216, v217, v218, v184);
    v219 = sub_100003BCC(&v508);
    sub_10001B350(v219, v220, v221, v186);
    sub_100003934();
    sub_10001B350(v222, v223, v224, v498);
    sub_100008DDC();
    v225 = v499;
    sub_1007441CC();
    sub_1000184C0();
    SavedLocation.identifier.getter();
    v226 = sub_10000FEF4();
    v229 = sub_1000D3CF4(v226, v227, v228, v190);
    v230 = type metadata accessor for LocationViewerViewState._Storage(v229);
    sub_100003B6C(v230);
    v231 = sub_100071DE8();
    sub_1000B7BD8(v231, &v478);
    sub_10003778C();
    swift_storeEnumTagMultiPayload();
    v232 = sub_10012CDB0(v179);
    sub_100021D50(v480);
    sub_100003934();
    sub_10001B350(v233, v234, v235, v232);
    v236 = sub_100003BCC(&v504);
    sub_10001B350(v236, v237, v238, v180);
    sub_10001CC28();
    sub_100020FE8();
    sub_1000A0944();
    v239 = sub_10000FEF4();
    sub_10001B350(v239, v240, v241, v476);
    v242 = *v225;
    v243 = v453;
    sub_100051BBC();
    sub_100005404(v243);
    v244 = v473;
    if (v245)
    {
      sub_100074EFC();
      sub_1007441CC();
      sub_1000437F4(v243);
      if (v185 != 1)
      {
        sub_1000180EC(v243, &qword_100CA6608, &unk_100A31430);
      }
    }

    else
    {
      sub_100006694();
      sub_1000A0944();
    }

    v246 = *(v499 + *(v244 + 24));
    sub_100037814();
    sub_100051BBC();
    sub_100003A40(v164);
    if (v245)
    {
      sub_100095588();
      sub_100003A40(v164);
      if (!v245)
      {
        sub_1000180EC(v164, &qword_100CA6600, &unk_100A5C400);
      }
    }

    else
    {
      sub_100028A84();
      sub_1000131DC();
      sub_1000A0944();
      sub_10000E7B0();
      sub_10001B350(v247, v248, v249, v232);
    }

    v250 = v456;
    sub_100051BBC();
    sub_100003BFC(v250);
    v251 = v458;
    if (v245)
    {
      sub_100019E38();
      sub_10003805C(v252);
      sub_1007441CC();
      sub_100003BFC(v250);
      v253 = v455;
      if (!v245)
      {
        sub_1000180EC(v250, &qword_100CA65F8, &dword_100A31420);
      }
    }

    else
    {
      sub_100010A04();
      sub_1000A0944();
      v253 = v455;
    }

    sub_1000C8B14(&v506);
    sub_100051BBC();
    sub_10000394C(v251);
    if (v245)
    {
      sub_1000049BC();
      v254 = v499;
      sub_1007441CC();
      sub_10000394C(v251);
      if (!v245)
      {
        sub_1000180EC(v251, &qword_100CA65F0, &unk_100A5C3F0);
      }
    }

    else
    {
      sub_10001CC28();
      sub_1000A0944();
      v254 = v499;
    }

    v255 = *(v254 + *(v244 + 44));
    sub_1000230E0();
    sub_100032960(v254, v256);
    v257 = v483;
    *v483 = v242;
    sub_100006694();
    sub_1000A0944();
    *(v257 + *(v244 + 24)) = v246;
    sub_10009265C();
    sub_100051BBC();
    sub_100010A04();
    sub_1000A0944();
    sub_10001CC28();
    sub_1000A0944();
    *(v257 + *(v244 + 44)) = v255;
    sub_10000E7B0();
    v261 = sub_1000D3CF4(v258, v259, v260, v244);
    type metadata accessor for ModalViewState.MapViewModal(v261);
    v262 = sub_100021088(v481);
    sub_10001B350(v262, v263, v264, v265);
    sub_100020FE8();
    swift_storeEnumTagMultiPayload();
    sub_10000E7B0();
    sub_10001B350(v266, v267, v268, v242);
    sub_1000317A8();
    sub_10003778C();
    sub_1007441CC();
    sub_1000113EC();
    sub_100051BBC();
    sub_10000554C(v255);
    if (v245)
    {
      sub_1000180EC(v255, &qword_100CA65E8, &unk_100A31410);
    }

    else
    {
      sub_1000520B0();
      sub_100032960(v246, v269);
      sub_10001F668();
      sub_1000FD16C();
    }

    v270 = v493;
    v271 = v463;
    v272 = v461;
    v273 = v454;
    v274 = v495;
    sub_10001F668();
    sub_1000A0944();
    v275 = *(v153 + 2);
    LODWORD(v499) = v153[24];
    sub_1000E31B8(&v502);
    sub_100051BBC();
    sub_100003A40(v273);
    if (v245)
    {
      sub_100037D24();
      sub_1007441CC();
      v276 = sub_1000182B8();
      v278 = sub_100024D10(v276, v277, v270);

      if (v278 != 1)
      {
        sub_1000180EC(v273, &qword_100CA6640, qword_100A32640);
      }
    }

    else
    {
      sub_10000ED74();
      sub_1000A0944();
    }

    sub_100030224(&v503);
    sub_100051BBC();
    v279 = sub_1000162A4();
    sub_1000038B4(v279, v280, v494);
    v493 = v275;
    if (v245)
    {
      sub_10002014C(&v153[OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment]);
      sub_10002CA4C();
      sub_1007441CC();
      sub_10000C814(v253);
      v281 = v464;
      if (!v245)
      {
        sub_1000180EC(v253, &qword_100CA6638, &unk_100A31460);
      }
    }

    else
    {
      sub_100020AD4();
      sub_1000A0944();
      v281 = v464;
    }

    sub_100037814();
    sub_100051BBC();
    sub_1000083BC(v275);
    if (v245)
    {
      sub_10000CE80();
      sub_1007441CC();
      sub_1000083BC(v275);
      if (!v245)
      {
        sub_1000180EC(v275, &qword_100CA6630, &unk_100A32630);
      }
    }

    else
    {
      sub_100024A2C();
      sub_1000A0944();
    }

    sub_1000519E0();
    sub_100051BBC();
    v282 = sub_100007FC4();
    sub_100036E54(v282, v283);
    if (v245)
    {
      sub_10003C7C0();
      sub_1007441CC();
      sub_100003BFC(v274);
      if (!v245)
      {
        sub_1000180EC(v274, &qword_100CA6628, &unk_100A31450);
      }
    }

    else
    {
      sub_100017D0C();
      sub_1000A0944();
    }

    sub_100052378(&v508);
    sub_100051BBC();
    sub_10000C814(v272);
    if (v245)
    {
      sub_100069948();
      sub_1007441CC();
      sub_10000C814(v272);
      if (!v245)
      {
        sub_1000180EC(v272, &qword_100CA6620, &unk_100A32620);
      }
    }

    else
    {
      sub_100013B94();
      sub_1000A0944();
    }

    sub_100051BBC();
    v284 = sub_10000C834();
    sub_1000038B4(v284, v285, v498);
    if (v245)
    {
      sub_10004EA04();
      sub_1007441CC();
      sub_10000394C(v271);
      if (!v245)
      {
        sub_1000180EC(v271, &qword_100CA6618, &unk_100A31440);
      }
    }

    else
    {
      sub_100016E44();
      sub_1000A0944();
    }

    sub_100051BBC();
    sub_10000E7EC(v281);
    if (v245)
    {
      sub_100008DDC();
      sub_1000C8B14(v501);
      sub_1007441CC();
      sub_10000E7EC(v281);
      if (!v245)
      {
        sub_1000180EC(v281, &qword_100CA6610, &unk_100A32610);
      }
    }

    else
    {
      sub_100049BB4();
      sub_100040C24();
    }

    sub_10001F668();
    sub_1000113EC();
    sub_1000A0944();
    v286 = type metadata accessor for MainState._Storage(0);
    sub_100003B6C(v286);
    v287 = sub_100044E68();
    v289 = v485;
    v290 = v486;
    v291 = v487;
    v292 = v488;
    v293 = v489;
    v294 = v490;
    goto LABEL_61;
  }

  if (byte_100D90788 == 1 && (DynamicTypeSize.isAccessibilitySize.getter() & 1) == 0 && sub_10029C3DC(*v6) && *(v6 + 17) == 1)
  {
    sub_100025390();
    sub_100032960(v6, v298);
  }

  else
  {
    v299 = sub_1004B5750();
    sub_100025390();
    sub_100032960(v6, v300);
    if ((v299 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  static Logger.automation.getter();
  sub_100020338();
  sub_100037814();
  sub_1007441CC();
  v301 = v434;
  sub_100744224();
  v302();
  v303 = Logger.logObject.getter();
  v304 = v180;
  v305 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v303, v305))
  {
    v306 = swift_slowAlloc();
    v307 = swift_slowAlloc();
    v500 = v307;
    *v306 = 136315650;
    v308 = v449;
    SavedLocation.identifier.getter();
    Location.Identifier.name.getter();
    v310 = v309;
    sub_10000E73C();
    v311 = v308;
    v312 = v470;
    v313(v311, v470);
    sub_100014D94();
    sub_100032960(v164, v314);
    v315 = sub_100040E24();
    v317 = sub_100078694(v315, v310, v316);

    *(v306 + 4) = v317;
    *(v306 + 12) = 2082;
    sub_100744174();
    v318 = v434;
    dispatch thunk of CustomStringConvertible.description.getter();
    v320 = v319;
    sub_10000E73C();
    v321(v318, v304);
    v322 = sub_100040E24();
    v324 = sub_100078694(v322, v320, v323);

    *(v306 + 14) = v324;
    *(v306 + 22) = 1026;
    *(v306 + 24) = v477 & 1;
    _os_log_impl(&_mh_execute_header, v303, v305, "Create new MainState for displaying map in regular/unspecified mode. location=%s, overlayKind=%{public}s, fullscreen=%{BOOL,public}d", v306, 0x1Cu);
    swift_arrayDestroy();
    sub_100003884(v307);
    sub_100007E54();

    v325 = sub_1000D3F80();
    v326(v325);
    v328 = v497;
    v327 = v498;
    v329 = v496;
    v330 = v312;
    v331 = v474;
  }

  else
  {

    sub_10000E73C();
    v332(v301, v304);
    sub_100014D94();
    sub_100032960(v164, v333);
    v334 = sub_1000D3F80();
    v335(v334);
    v331 = v474;
    v328 = v497;
    v327 = v498;
    v329 = v496;
    v330 = v470;
  }

  v336 = v473;
  v337 = v471;
  v338 = sub_100003BCC(v457);
  sub_10001B350(v338, v339, v340, v341);
  v342 = sub_100003BCC(v459);
  sub_10001B350(v342, v343, v344, v494);
  v345 = sub_100003BCC(&v461);
  sub_10001B350(v345, v346, v347, v495);
  v348 = sub_100003BCC(v462);
  sub_10001B350(v348, v349, v350, v329);
  v351 = sub_100003BCC(&v463);
  sub_10001B350(v351, v352, v353, v328);
  v354 = sub_100003BCC(&v464);
  sub_10001B350(v354, v355, v356, v327);
  sub_100008DDC();
  sub_100021424();
  sub_1007441CC();
  sub_1000184C0();
  SavedLocation.identifier.getter();
  v357 = sub_10000FEF4();
  v360 = sub_1000D3CF4(v357, v358, v359, v330);
  v361 = type metadata accessor for LocationViewerViewState._Storage(v360);
  sub_100003B6C(v361);
  v362 = sub_100071DE8();
  v363 = v436;
  *v436 = v362;
  swift_storeEnumTagMultiPayload();
  v364 = sub_10012CDB0(v363);
  v365 = sub_100003BCC(&v458);
  sub_10001B350(v365, v366, v367, v364);
  v368 = sub_100003BCC(v460);
  sub_10001B350(v368, v369, v370, v479);
  sub_1000049BC();
  sub_1000E31B8(&v500);
  sub_1007441CC();
  sub_10000E7B0();
  sub_10001B350(v371, v372, v373, v476);
  v374 = *v304;
  sub_1000131DC();
  sub_100095588();
  sub_100005404(v363);
  if (v245)
  {
    sub_100074EFC();
    sub_1007441CC();
    sub_1000437F4(v363);
    if (v337 != 1)
    {
      sub_1000180EC(v363, &qword_100CA6608, &unk_100A31430);
    }
  }

  else
  {
    sub_100006694();
    sub_1000A0944();
  }

  v375 = *(v304 + v336[6]);
  v376 = [objc_opt_self() currentDevice];
  v377 = [v376 userInterfaceIdiom];

  sub_1000180EC(v436, &qword_100CA6608, &unk_100A31430);
  sub_1000AF640();
  sub_100032960(v475, v378);
  if (v377 && *(v304 + v336[9] + 8) == 2)
  {
    v379 = 1;
  }

  else
  {
    v379 = *(v304 + v336[7]);
  }

  sub_1000519E0();
  sub_100051BBC();
  sub_100003A40(v377);
  if (v245)
  {
    sub_100095588();
    sub_100003A40(v377);
    if (!v245)
    {
      sub_1000180EC(v377, &qword_100CA6600, &unk_100A5C400);
    }
  }

  else
  {
    sub_100028A84();
    sub_1000A0944();
    sub_10000E7B0();
    sub_10001B350(v380, v381, v382, v364);
  }

  sub_100021424();
  sub_100051BBC();
  v383 = sub_100016298();
  sub_1000038B4(v383, v384, v479);
  v385 = v425;
  if (v245)
  {
    sub_100019E38();
    sub_100087FF4(v386);
    sub_1007441CC();
    sub_1000083BC(v304);
    if (!v245)
    {
      sub_1000180EC(v304, &qword_100CA65F8, &dword_100A31420);
    }
  }

  else
  {
    sub_100010A04();
    sub_1000A0944();
  }

  sub_100051BBC();
  sub_1000038B4(v385, 1, v476);
  if (v245)
  {
    sub_1000049BC();
    sub_100087FF4(v387);
    sub_1007441CC();
    sub_10000C814(v385);
    v388 = v420;
    if (!v245)
    {
      sub_1000180EC(v385, &qword_100CA65F0, &unk_100A5C3F0);
    }
  }

  else
  {
    sub_10001CC28();
    sub_1000A0944();
    v388 = v420;
  }

  v389 = *(v448 + v336[11]);
  sub_1000230E0();
  sub_100032960(v390, v391);
  v392 = v441;
  *v441 = v374;
  sub_100006694();
  sub_1000A0944();
  *(v392 + v336[6]) = v375;
  *(v392 + v336[7]) = v379;
  sub_100051BBC();
  sub_100010A04();
  sub_1000A0944();
  sub_10001CC28();
  sub_1000A0944();
  *(v392 + v336[11]) = v389;
  sub_10000E7B0();
  sub_10001B350(v393, v394, v395, v336);
  v396 = sub_100021088(v451);
  sub_10001B350(v396, v397, v398, v472);
  sub_1000317A8();
  sub_10003778C();
  sub_1007441CC();
  sub_1000113EC();
  sub_100051BBC();
  sub_10000554C(v389);
  if (v245)
  {
    sub_1000180EC(v389, &qword_100CA65E8, &unk_100A31410);
  }

  else
  {
    sub_1000520B0();
    sub_100032960(v379, v399);
    sub_10001F668();
    sub_1000FD16C();
  }

  v400 = v493;
  v401 = v431;
  v402 = v428;
  v403 = v426;
  v404 = v418;
  sub_10001F668();
  sub_1000A0944();
  v405 = *(v331 + 16);
  LODWORD(v499) = *(v331 + 24);
  sub_100051BBC();
  sub_100003A40(v404);
  v493 = v405;
  if (v245)
  {
    sub_100037D24();
    sub_1007441CC();
    v406 = sub_1000175DC();
    v408 = sub_100024D10(v406, v407, v400);

    if (v408 != 1)
    {
      sub_1000180EC(v404, &qword_100CA6640, qword_100A32640);
    }
  }

  else
  {
    sub_10000ED74();
    sub_1000A0944();
  }

  sub_100052378(v459);
  sub_100051BBC();
  v409 = sub_100016298();
  sub_1000113D0(v409, v410);
  if (v245)
  {
    sub_10002014C(v331 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment);
    sub_10002CA4C();
    sub_1007441CC();
    sub_100003A40(v388);
    v411 = v432;
    if (!v245)
    {
      sub_1000180EC(v388, &qword_100CA6638, &unk_100A31460);
    }
  }

  else
  {
    sub_100020AD4();
    sub_1000A0944();
    v411 = v432;
  }

  sub_100032590();
  sub_100051BBC();
  v412 = sub_1000175DC();
  sub_1000113D0(v412, v413);
  if (v245)
  {
    sub_10000CE80();
    sub_1007441CC();
    sub_100003A40(v404);
    if (!v245)
    {
      sub_1000180EC(v404, &qword_100CA6630, &unk_100A32630);
    }
  }

  else
  {
    sub_100024A2C();
    sub_1000A0944();
  }

  sub_1000E31B8(v462);
  sub_100051BBC();
  v414 = sub_1000182B8();
  sub_1000038B4(v414, v415, v496);
  if (v245)
  {
    sub_10003C7C0();
    sub_1007441CC();
    sub_10000E7EC(v403);
    if (!v245)
    {
      sub_1000180EC(v403, &qword_100CA6628, &unk_100A31450);
    }
  }

  else
  {
    sub_100017D0C();
    sub_1000A0944();
  }

  sub_100030224(&v463);
  sub_100051BBC();
  sub_1000083BC(v402);
  if (v245)
  {
    sub_100069948();
    sub_1007441CC();
    sub_1000083BC(v402);
    if (!v245)
    {
      sub_1000180EC(v402, &qword_100CA6620, &unk_100A32620);
    }
  }

  else
  {
    sub_100013B94();
    sub_1000A0944();
  }

  sub_1000C893C(&v464);
  sub_100051BBC();
  sub_10000394C(v401);
  if (v245)
  {
    sub_10004EA04();
    sub_1007441CC();
    sub_10000394C(v401);
    if (!v245)
    {
      sub_1000180EC(v401, &qword_100CA6618, &unk_100A31440);
    }
  }

  else
  {
    sub_100016E44();
    sub_1000A0944();
  }

  sub_1000436AC(v465);
  sub_100051BBC();
  sub_10000556C(v411);
  if (v245)
  {
    sub_100008DDC();
    sub_1000C8B14(v501);
    sub_1007441CC();
    sub_10000556C(v411);
    if (!v245)
    {
      sub_1000180EC(v411, &qword_100CA6610, &unk_100A32610);
    }
  }

  else
  {
    sub_100049BB4();
    sub_100040C24();
  }

  sub_10001F668();
  sub_1000113EC();
  sub_1000A0944();
  v416 = type metadata accessor for MainState._Storage(0);
  sub_100003B6C(v416);
  v287 = sub_100044E68();
  v289 = v442;
  v290 = v443;
  v291 = v444;
  v292 = v445;
  v293 = v446;
  v294 = v447;
LABEL_61:
  sub_10003E038(v287, v288, v289, v290, v291, v292, v293, v294, v417[0], v417[1], v417[2], v417[3], v418, v419, v420, v421, v422, v423, v424, v425, v426, v427, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v439, v440);
  v296 = v295;

  return v296;
}

unint64_t sub_100744174()
{
  result = qword_100CCD150;
  if (!qword_100CCD150)
  {
    v3 = type metadata accessor for WeatherMapOverlayKind();
    result = swift_getWitnessTable(&protocol conformance descriptor for WeatherMapOverlayKind, v3, v0, v1);
    atomic_store(result, &qword_100CCD150);
  }

  return result;
}

uint64_t sub_1007441CC()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

void sub_100744238(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for ReportWeatherView(0);
  sub_100035B30(v1 + 24, a1 + v3[6]);
  *a1 = swift_getKeyPath();
  sub_10022C350(&qword_100CA54B0, &qword_100A2F8A0);
  swift_storeEnumTagMultiPayload();
  v4 = (a1 + v3[5]);

  sub_10022C350(&qword_100CA4968, qword_100A31CE0);
  sub_100744400();
  *v4 = ObservedObject.init(wrappedValue:)();
  v4[1] = v5;
  v6 = a1 + v3[7];
  State.init(wrappedValue:)();
  *v6 = v12;
  *(v6 + 1) = v13;
  v7 = (a1 + v3[8]);
  v8 = [objc_opt_self() mainBundle];
  v14._object = 0x8000000100ADCE90;
  v9._countAndFlagsBits = 0x612074726F706552;
  v9._object = 0xEF6575737349206ELL;
  v10._object = 0x8000000100ADCE60;
  v14._countAndFlagsBits = 0xD00000000000002BLL;
  v10._countAndFlagsBits = 0xD000000000000020;
  v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v8, v9, v14);

  *v7 = v11;
}

unint64_t sub_100744400()
{
  result = qword_100CA4970;
  if (!qword_100CA4970)
  {
    v3 = sub_10022E824(&qword_100CA4968, qword_100A31CE0);
    result = swift_getWitnessTable(asc_100AA1480, v3, v0, v1);
    atomic_store(result, &qword_100CA4970);
  }

  return result;
}

void sub_100744464()
{
  sub_10000E8AC();
  sub_1000049D4();
  v6 = sub_10022C350(&qword_100CA3588, &unk_100A4F350);
  sub_100003810(v6);
  sub_100003828();
  __chkstk_darwin(v7);
  sub_100014DAC();
  type metadata accessor for LocationOfInterest();
  sub_1000037C4();
  __chkstk_darwin(v8);
  sub_100003848();
  sub_10000386C();
  __chkstk_darwin(v9);
  sub_100008DF4(v10, v11, v12, v13, v14, v15, v16, v17, v29);
  while (v3 != v5)
  {
    v18 = type metadata accessor for LocationModel();
    sub_100003AE8(v18);
    v20 = sub_1000520C8(v1 + ((*(v19 + 80) + 32) & ~*(v19 + 80)));
    v2(v20);
    if (v0)
    {
      sub_1000317C0();
      break;
    }

    sub_100074F14();
    if (v21)
    {
      sub_1000180EC(v4, &qword_100CA3588, &unk_100A4F350);
      ++v5;
    }

    else
    {
      v22 = sub_100028A9C();
      (unk_100A4F350)(v22);
      v23 = sub_100069960();
      (unk_100A4F350)(v23);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000066AC();
        sub_100032BC8();
      }

      sub_100013BAC();
      if (v25)
      {
        sub_100049BCC();
        sub_100032BC8();
      }

      ++v5;
      sub_100020AEC();
      sub_10001CC40();
      v27 = sub_10004EA1C(v26);
      v28(v27);
    }
  }

  sub_1000230F8();
  sub_10000C8F4();
}

void sub_100744690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000E8AC();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = sub_10022C350(&qword_100CD3D58, &qword_100A7EC00);
  sub_100003810(v31);
  sub_100003828();
  __chkstk_darwin(v32);
  v34 = &v51 - v33;
  v35 = type metadata accessor for ComparisonCapsuleViewModel.Row(0);
  sub_1000037C4();
  v55 = v36;
  __chkstk_darwin(v37);
  v39 = &v51 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41.n128_f64[0] = __chkstk_darwin(v40);
  v52 = &v51 - v42;
  v43 = _swiftEmptyArrayStorage;
  v56 = v28;
  v53 = v44;
  v54 = v39;
  while (1)
  {
    a10 = v26;
    v30(&a10, v41);
    if (v20)
    {
      break;
    }

    if (sub_100024D10(v34, 1, v35) == 1)
    {
      sub_1000180EC(v34, &qword_100CD3D58, &qword_100A7EC00);
    }

    else
    {
      v45 = v52;
      sub_1001B36B0(v34, v52, type metadata accessor for ComparisonCapsuleViewModel.Row);
      sub_1001B36B0(v45, v39, type metadata accessor for ComparisonCapsuleViewModel.Row);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1000066AC();
        sub_10069DFF4();
        v43 = v49;
      }

      v46 = v43[2];
      if (v46 >= v43[3] >> 1)
      {
        sub_10069DFF4();
        v43 = v50;
      }

      v43[2] = v46 + 1;
      v47 = v43 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v46;
      v39 = v54;
      sub_1001B36B0(v54, v47, type metadata accessor for ComparisonCapsuleViewModel.Row);
      v35 = v53;
    }

    if (v24 == v26)
    {
      goto LABEL_15;
    }

    if (__OFADD__(v26++, 1))
    {
      __break(1u);
      return;
    }
  }

LABEL_15:
  sub_10000C8F4();
}

void sub_100744920()
{
  sub_10000E8AC();
  sub_1000049D4();
  v6 = sub_10022C350(&qword_100CD60B0, &qword_100A7EC08);
  sub_100003810(v6);
  sub_100003828();
  __chkstk_darwin(v7);
  sub_100014DAC();
  type metadata accessor for HourTemperatureStatistics();
  sub_1000037C4();
  __chkstk_darwin(v8);
  sub_100003848();
  sub_10000386C();
  __chkstk_darwin(v9);
  sub_100008DF4(v10, v11, v12, v13, v14, v15, v16, v17, v29);
  while (v3 != v5)
  {
    v18 = type metadata accessor for HourWeather();
    sub_100003AE8(v18);
    v20 = sub_1000520C8(v1 + ((*(v19 + 80) + 32) & ~*(v19 + 80)));
    v2(v20);
    if (v0)
    {
      sub_1000317C0();
      break;
    }

    sub_100074F14();
    if (v21)
    {
      sub_1000180EC(v4, &qword_100CD60B0, &qword_100A7EC08);
      ++v5;
    }

    else
    {
      v22 = sub_100028A9C();
      (qword_100A7EC08)(v22);
      v23 = sub_100069960();
      (qword_100A7EC08)(v23);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000066AC();
        sub_10069E5CC();
      }

      sub_100013BAC();
      if (v25)
      {
        sub_100049BCC();
        sub_10069E5CC();
      }

      ++v5;
      sub_100020AEC();
      sub_10001CC40();
      v27 = sub_10004EA1C(v26);
      v28(v27);
    }
  }

  sub_1000230F8();
  sub_10000C8F4();
}

void *sub_100744B4C(void (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = sub_10022C350(&qword_100CBB118, &qword_100A50A20);
  __chkstk_darwin(v6 - 8);
  v8 = &v26 - v7;
  v9 = type metadata accessor for DayPickerViewModel.CalendarDayViewModel(0);
  v28 = *(v9 - 8);
  __chkstk_darwin(v9);
  v29 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v27 = &v26 - v12;
  v13 = 0;
  v14 = *(a3 + 16);
  v30 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v14 == v13)
    {
      return v30;
    }

    v15 = *(type metadata accessor for DayWeather() - 8);
    a1(a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v13);
    if (v3)
    {
      break;
    }

    if (sub_100024D10(v8, 1, v9) == 1)
    {
      sub_1000180EC(v8, &qword_100CBB118, &qword_100A50A20);
      ++v13;
    }

    else
    {
      v26 = type metadata accessor for DayPickerViewModel.CalendarDayViewModel;
      v16 = v27;
      sub_1001B36B0(v8, v27, type metadata accessor for DayPickerViewModel.CalendarDayViewModel);
      sub_1001B36B0(v16, v29, v26);
      v17 = v30;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10069F1E4();
        v17 = v22;
      }

      v18 = v17;
      v19 = v17[2];
      v30 = v18;
      v20 = (v19 + 1);
      if (v19 >= v18[3] >> 1)
      {
        v26 = (v19 + 1);
        sub_10069F1E4();
        v20 = v26;
        v30 = v23;
      }

      ++v13;
      v21 = v30;
      v30[2] = v20;
      sub_1001B36B0(v29, v21 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v19, type metadata accessor for DayPickerViewModel.CalendarDayViewModel);
    }
  }

  v24 = v30;

  return v24;
}

void *sub_100744E68(void (*a1)(uint64_t *__return_ptr, void *, __n128), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 40);
  v7 = _swiftEmptyArrayStorage;
  if (v5)
  {
    while (1)
    {
      v8 = *v6;
      v16[0] = *(v6 - 1);
      v16[1] = v8;

      (a1)(&v14, v16);
      if (v3)
      {
        break;
      }

      if ((v15 & 1) == 0)
      {
        v9 = v14;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1000066AC();
          sub_10069F590();
          v7 = v11;
        }

        v10 = v7[2];
        if (v10 >= v7[3] >> 1)
        {
          sub_10069F590();
          v7 = v12;
        }

        v7[2] = v10 + 1;
        v7[v10 + 4] = v9;
      }

      v6 += 2;
      if (!--v5)
      {
        return v7;
      }
    }
  }

  return v7;
}

void sub_100744F94()
{
  sub_10000E8AC();
  sub_1000049D4();
  v6 = sub_10022C350(&unk_100CE2F20, &unk_100A2D7D0);
  sub_100003810(v6);
  sub_100003828();
  __chkstk_darwin(v7);
  sub_100014DAC();
  type metadata accessor for LocationModel();
  sub_1000037C4();
  __chkstk_darwin(v8);
  sub_100003848();
  sub_10000386C();
  __chkstk_darwin(v9);
  sub_100008DF4(v10, v11, v12, v13, v14, v15, v16, v17, v29);
  while (v3 != v5)
  {
    v18 = type metadata accessor for SavedLocation();
    sub_100003AE8(v18);
    v20 = sub_1000520C8(v1 + ((*(v19 + 80) + 32) & ~*(v19 + 80)));
    v2(v20);
    if (v0)
    {
      sub_1000317C0();
      break;
    }

    sub_100074F14();
    if (v21)
    {
      sub_1000180EC(v4, &unk_100CE2F20, &unk_100A2D7D0);
      ++v5;
    }

    else
    {
      v22 = sub_100028A9C();
      (unk_100A2D7D0)(v22);
      v23 = sub_100069960();
      (unk_100A2D7D0)(v23);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000066AC();
        sub_10069F9DC();
      }

      sub_100013BAC();
      if (v25)
      {
        sub_100049BCC();
        sub_10069F9DC();
      }

      ++v5;
      sub_100020AEC();
      sub_10001CC40();
      v27 = sub_10004EA1C(v26);
      v28(v27);
    }
  }

  sub_1000230F8();
  sub_10000C8F4();
}

void sub_1007451C0()
{
  sub_10000E8AC();
  sub_1000049D4();
  v4 = sub_10022C350(&qword_100CA37B0, &unk_100A2D740);
  sub_100003810(v4);
  sub_100003828();
  __chkstk_darwin(v5);
  v6 = sub_100014DAC();
  type metadata accessor for LocationWeatherDataState(v6);
  sub_1000037C4();
  __chkstk_darwin(v7);
  sub_100003848();
  v34 = v8;
  sub_10000386C();
  __chkstk_darwin(v9);
  sub_100016E5C(v10, v11, v12, v13, v14, v15, v16, v17, v32);
  v18 = 0;
  v19 = *(v1 + 16);
  v35 = _swiftEmptyArrayStorage;
  while (v19 != v18)
  {
    v20 = type metadata accessor for Location.Identifier();
    sub_100003AE8(v20);
    v2(v1 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v22 + 72) * v18);
    if (v0)
    {
      sub_1000317C0();
      break;
    }

    sub_100074F14();
    if (v23)
    {
      sub_1000180EC(v3, &qword_100CA37B0, &unk_100A2D740);
      ++v18;
    }

    else
    {
      sub_1001B36B0(v3, v33, type metadata accessor for LocationWeatherDataState);
      sub_1001B36B0(v33, v34, type metadata accessor for LocationWeatherDataState);
      v24 = v35;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000066AC();
        sub_10069FAB4();
        v24 = v30;
      }

      sub_10000CE98();
      if (v26)
      {
        sub_100049BCC();
        sub_10069FAB4();
        v35 = v31;
      }

      ++v18;
      sub_100020AEC();
      sub_10001CC40();
      sub_1001B36B0(v29, v27 + v28 * v24, type metadata accessor for LocationWeatherDataState);
    }
  }

  sub_1000230F8();
  sub_10000C8F4();
}

void sub_100745424()
{
  sub_10000E8AC();
  v2 = v1;
  v4 = v3;
  v5 = sub_10022C350(&qword_100CD60B8, &unk_100A7EC10);
  sub_100003810(v5);
  sub_100003828();
  __chkstk_darwin(v6);
  v8 = v36 - v7;
  v9 = type metadata accessor for LocationViewCellContentDescriptor(0);
  sub_1000037C4();
  v39 = v10;
  __chkstk_darwin(v11);
  sub_100003848();
  v40 = v12;
  sub_10000386C();
  __chkstk_darwin(v13);
  sub_100016E5C(v14, v15, v16, v17, v18, v19, v20, v21, v36[0]);
  v22 = 0;
  v23 = *(v2 + 16);
  v24 = v2 + 32;
  v41 = _swiftEmptyArrayStorage;
  for (i = v2 + 32; ; v24 = i)
  {
    v25 = ~v22;
    v26 = v24 + 104 * v22;
    v27 = v23 - v22;
    if (!v27)
    {
      break;
    }

    while (1)
    {
      v4(v26);
      if (v0)
      {
        sub_1000317C0();
        goto LABEL_15;
      }

      if (sub_100024D10(v8, 1, v9) != 1)
      {
        break;
      }

      sub_1000180EC(v8, &qword_100CD60B8, &unk_100A7EC10);
      --v25;
      v26 += 104;
      if (!--v27)
      {
        goto LABEL_15;
      }
    }

    v28 = v38;
    sub_1001B36B0(v8, v38, type metadata accessor for LocationViewCellContentDescriptor);
    sub_1001B36B0(v28, v40, type metadata accessor for LocationViewCellContentDescriptor);
    v29 = v41;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1000066AC();
      sub_10069FED0();
      v29 = v34;
    }

    v30 = v29[2];
    if (v30 >= v29[3] >> 1)
    {
      v36[1] = v30 + 1;
      sub_10069FED0();
      v41 = v35;
    }

    else
    {
      v41 = v29;
    }

    v22 = -v25;
    sub_100020AEC();
    sub_10001CC40();
    sub_1001B36B0(v33, v31 + v32 * v30, type metadata accessor for LocationViewCellContentDescriptor);
  }

LABEL_15:
  sub_1000230F8();
  sub_10000C8F4();
}

void sub_100745690(void (*result)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = 0;
  v32 = a3;
  v6 = *(a3 + 16);
  v25 = _swiftEmptyArrayStorage;
  while (v6 != v5)
  {
    if (v5 >= v6)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return;
    }

    v7 = *(type metadata accessor for Location() - 8);
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_16;
    }

    result(&v27, v32 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v5);
    if (v4)
    {

      return;
    }

    v9 = v31;
    v11 = v27;
    v10 = v28;
    v13 = v29;
    v12 = v30;
    if (v28)
    {
      v14 = v25;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1000066AC();
        sub_1006A04E8(v20, v21, v22, v25);
        v14 = v23;
      }

      v15 = v14;
      v16 = v14[2];
      v25 = v15;
      v17 = v15[3];
      v18 = v16 + 1;
      if (v16 >= v17 >> 1)
      {
        sub_1006A04E8(v17 > 1, v16 + 1, 1, v25);
        v18 = v16 + 1;
        v25 = v24;
      }

      v25[2] = v18;
      v19 = &v25[5 * v16];
      v19[4] = v11;
      v19[5] = v10;
      v19[6] = v13;
      v19[7] = v12;
      *(v19 + 16) = v9;
      v5 = v8;
      v4 = 0;
    }

    else
    {
      sub_1001A6184(v27, 0);
      ++v5;
      v4 = 0;
    }
  }
}

BOOL sub_100745860(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = (a1)(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

void sub_1007459A0(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v5 = sub_100073CDC(a3);
  v6 = 0;
  while (1)
  {
    v7 = v6;
    if (v5 == v6)
    {
      break;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v8 = *(a3 + 8 * v6 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v12 = v8;
    v10 = a1(&v12);

    if (!v3)
    {
      v6 = v7 + 1;
      if ((v10 & 1) == 0)
      {
        continue;
      }
    }

    return;
  }
}

BOOL sub_100745AC4(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  do
  {
    v7 = v5;
    if (v5-- == 0)
    {
      break;
    }

    v12 = *v6;

    v9 = a1(&v12);
    if (v3)
    {

      return v7 != 0;
    }

    v10 = v9;

    ++v6;
  }

  while ((v10 & 1) == 0);
  return v7 != 0;
}

uint64_t sub_100745B78@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v63 = a2;
  v3 = sub_10022C350(&unk_100CB2CF0, &unk_100A2D7F0);
  sub_100003810(v3);
  sub_100003828();
  __chkstk_darwin(v4);
  v6 = &v57 - v5;
  v7 = type metadata accessor for Date();
  sub_1000037C4();
  __chkstk_darwin(v8);
  sub_100003848();
  v62 = v9;
  sub_10000386C();
  __chkstk_darwin(v10);
  v12 = &v57 - v11;
  __chkstk_darwin(v13);
  v65 = &v57 - v14;
  sub_10000386C();
  v16 = __chkstk_darwin(v15);
  v18 = &v57 - v17;
  v59 = v19;
  v20 = *(v19 + 16);
  v66 = v19 + 16;
  v61 = v20;
  (v20)(&v57 - v17, a1, v7, v16);
  v21 = type metadata accessor for DayPickerInput(0);
  v67 = *(a1 + v21[5]);
  if (qword_100CA2608 != -1)
  {
    swift_once();
  }

  v22 = qword_100CD6008;
  v23 = v21[7];
  isa = TimeZone._bridgeToObjectiveC()().super.isa;
  v60 = v22;
  [v22 setTimeZone:isa];

  if (qword_100CA2610 != -1)
  {
    swift_once();
  }

  v25 = qword_100CD6010;
  v64 = v23;
  v26 = TimeZone._bridgeToObjectiveC()().super.isa;
  v58 = v25;
  [v25 setTimeZone:v26];

  sub_1000D47CC(a1 + v21[6], v6);
  v27 = sub_100024D10(v6, 1, v7);
  v28 = v59;
  if (v27 == 1)
  {
    v29 = sub_1000180EC(v6, &unk_100CB2CF0, &unk_100A2D7F0);
  }

  else
  {
    v30 = *(v59 + 32);
    v31 = v30(v12, v6, v7);
    __chkstk_darwin(v31);
    *(&v57 - 2) = v12;
    if (sub_100032AA0(sub_100746620, (&v57 - 4), v67, &type metadata accessor for DayWeather))
    {
      v32 = v65;
      v33 = v30(v65, v12, v7);
      v35 = v61;
      v34 = v62;
      goto LABEL_13;
    }

    v29 = (*(v28 + 8))(v12, v7);
  }

  v32 = v65;
  __chkstk_darwin(v29);
  *(&v57 - 2) = v18;
  v36 = sub_100032AA0(sub_1007465E0, (&v57 - 4), v67, &type metadata accessor for DayWeather);
  v35 = v61;
  v34 = v62;
  if (v36)
  {
    v33 = (v61)(v32, v18, v7);
  }

  else
  {
    static WeatherClock.date.getter();
    Date.midnight(timeZone:)();
    v33 = (*(v28 + 8))(v34, v7);
  }

LABEL_13:
  __chkstk_darwin(v33);
  v37 = v60;
  *(&v57 - 4) = v18;
  *(&v57 - 3) = v37;
  *(&v57 - 2) = a1;
  v67 = sub_100744B4C(sub_100746600, (&v57 - 6), v67);
  v35(v34, v32, v7);
  v38 = Date._bridgeToObjectiveC()().super.isa;
  v39 = [v58 stringFromDate:v38];

  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v35;
  v42 = v34;
  v44 = v43;

  v45 = type metadata accessor for DayPickerViewModel(0);
  v46 = v45[8];
  type metadata accessor for TimeZone();
  sub_1000037E8();
  v48 = *(v47 + 16);
  v62 = v18;
  v49 = v63;
  v48(&v63[v46], a1 + v64);
  *v49 = v67;
  v41(&v49[v45[5]], v42, v7);
  v50 = &v49[v45[6]];
  *v50 = v40;
  v50[1] = v44;

  v51 = sub_1009CF8E0(v42, v40, v44);
  v53 = v52;

  v54 = *(v28 + 8);
  v54(v42, v7);
  v54(v65, v7);
  v55 = &v49[v45[7]];
  *v55 = v51;
  v55[1] = v53;
  sub_10001B350(v49, 0, 1, v45);
  return (v54)(v62, v7);
}

uint64_t sub_100746164()
{
  v0 = type metadata accessor for Date();
  sub_1000037C4();
  v2 = v1;
  __chkstk_darwin(v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  DayWeather.date.getter();
  v6 = static Date.== infix(_:_:)();
  (*(v2 + 8))(v5, v0);
  return v6 & 1;
}

uint64_t sub_100746244@<X0>(void *a2@<X2>, uint64_t a4@<X8>)
{
  v29 = a4;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  DayWeather.date.getter();
  v9 = static Date.== infix(_:_:)();
  v10 = *(v6 + 8);
  v10(v8, v5);
  if (v9)
  {
    v11 = 1;
  }

  else
  {
    DayWeather.date.getter();
    v12 = static Date.> infix(_:_:)();
    v10(v8, v5);
    if (v12)
    {
      v11 = 2;
    }

    else
    {
      v11 = 0;
    }
  }

  v28 = v11;
  DayWeather.date.getter();
  isa = Date._bridgeToObjectiveC()().super.isa;
  v10(v8, v5);
  v14 = [a2 stringFromDate:isa];

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v16;

  sub_1002B5AAC();
  DayWeather.date.getter();
  type metadata accessor for DayPickerInput(0);
  v17 = static NSNumberFormatter.dayDigits(from:timeZone:)();
  v19 = v18;
  v10(v8, v5);
  v20 = v29;
  DayWeather.date.getter();
  v21 = type metadata accessor for DayPickerViewModel.CalendarDayViewModel(0);
  v22 = (v20 + v21[5]);
  v23 = v27;
  *v22 = v15;
  v22[1] = v23;
  v24 = (v20 + v21[6]);
  *v24 = v17;
  v24[1] = v19;
  *(v20 + v21[7]) = v28;
  return sub_10001B350(v20, 0, 1, v21);
}

void sub_1007464A4()
{
  v0 = [objc_allocWithZone(NSDateFormatter) init];
  v1 = String._bridgeToObjectiveC()();
  [v0 setLocalizedDateFormatFromTemplate:v1];

  qword_100CD6008 = v0;
}

id sub_100746514()
{
  result = sub_100746534();
  qword_100CD6010 = result;
  return result;
}

id sub_100746534()
{
  v0 = [objc_allocWithZone(NSDateFormatter) init];
  v1 = String._bridgeToObjectiveC()();
  [v0 setLocalizedDateFormatFromTemplate:v1];

  [v0 setFormattingContext:2];
  return v0;
}

uint64_t sub_10074663C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  v4 = *(result + 16);
  if (v4)
  {
    v6 = *(result + 32);
    v5 = *(result + 40);
    v8 = *(result + 48);
    v7 = *(result + 56);
    v9 = *(result + 64);
    v10 = *(result + 72);
    v11 = *(result + 80);

    v12 = 1;
LABEL_3:
    v13 = 56 * v12;
    while (1)
    {
      if (v4 == v12)
      {

        v19 = v11 & 1;
        goto LABEL_10;
      }

      if (v12 >= *(v2 + 16))
      {
        break;
      }

      ++v12;
      v14 = v13 + 56;
      v15 = *(v2 + v13 + 64);
      v13 += 56;
      if (v9 < v15)
      {
        v16 = *(v2 + v14 - 16);
        v17 = *(v2 + v14);
        v21 = *(v2 + v14 - 8);
        v22 = *(v2 + v14 - 24);
        v18 = *(v2 + v14 + 16);
        v20 = *(v2 + v14 + 24);

        v5 = v16;
        v7 = v17;
        v8 = v21;
        v6 = v22;
        v9 = v15;
        v10 = v18;
        v11 = v20;
        goto LABEL_3;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = 0;
    v5 = 0;
    v8 = 0;
    v7 = 0;
    v10 = 0;
    v19 = 0;
    v9 = 0.0;
LABEL_10:
    *a2 = v2;
    *(a2 + 8) = v6;
    *(a2 + 16) = v5;
    *(a2 + 24) = v8;
    *(a2 + 32) = v7;
    *(a2 + 40) = v9;
    *(a2 + 48) = v10;
    *(a2 + 56) = v19;
  }

  return result;
}

BOOL sub_1007467B8(uint64_t a1, uint64_t a2)
{
  sub_1009EBD98(*a1, *a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v19 = *(a1 + 8);
  v5 = *(a1 + 40);
  v20 = *(a1 + 24);
  v21 = v5;
  v6 = *(a1 + 56);
  v22 = v6;
  v7 = *(a2 + 24);
  v16[0] = *(a2 + 8);
  v16[1] = v7;
  v17 = *(a2 + 40);
  v8 = *(a2 + 56);
  v18 = v8;
  v9 = v19;
  v10 = v16[0];
  if (!*(&v19 + 1))
  {
    if (!*(&v16[0] + 1))
    {
      v13 = v20;
      sub_1007469A0(&v19, v25);
      sub_1007469A0(v16, v25);
      sub_10001CC58(v9, 0, v13);
      return 1;
    }

    goto LABEL_7;
  }

  if (!*(&v16[0] + 1))
  {
LABEL_7:
    v11 = v20;
    sub_1007469A0(&v19, v25);
    sub_1007469A0(v16, v25);
    sub_10001CC58(v9, *(&v9 + 1), v11);
    sub_1004372D4(v10, *(&v10 + 1));
    return 0;
  }

  v25[0] = v16[0];
  v25[1] = v7;
  v25[2] = v17;
  v26 = v8 & 1;
  v23[0] = v19;
  v23[1] = v20;
  v23[2] = v21;
  v24 = v6 & 1;
  sub_1007469A0(&v19, v15);
  sub_1007469A0(v16, v15);
  v14 = sub_100746A5C(v23, v25);
  sub_1004372D4(v10, *(&v10 + 1));
  sub_1004372D4(v9, *(&v9 + 1));
  return (v14 & 1) != 0;
}

uint64_t sub_1007469A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CD60C0, &qword_100A7EC20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL sub_100746A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  if (a1 == a3 && a2 == a4)
  {
    return a5 == a6;
  }

  v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if (v9)
  {
    return a5 == a6;
  }

  return result;
}

uint64_t sub_100746A5C(double *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_16;
  }

  v5 = a1[4];
  v6 = *(a2 + 32);
  if (*(a1 + 2) == *(a2 + 16) && *(a1 + 3) == *(a2 + 24))
  {
    if (v5 != v6)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v9 = 0;
  if ((v8 & 1) != 0 && v5 == v6)
  {
LABEL_14:
    if (static Color.== infix(_:_:)())
    {
      v9 = *(a1 + 48) ^ *(a2 + 48) ^ 1;
      return v9 & 1;
    }

LABEL_16:
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_100746B3C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_100746B7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100746BE4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_100746C24(uint64_t result, int a2, int a3)
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

uint64_t sub_100746C80(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x746361706D6F63;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x72616C75676572;
    }

    else
    {
      v4 = 0x6669636570736E75;
    }

    if (v3 == 1)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xEB00000000646569;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v4 = 0x746361706D6F63;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x72616C75676572;
    }

    else
    {
      v2 = 0x6669636570736E75;
    }

    if (a2 == 1)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xEB00000000646569;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100074F38(v4, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_100746D80(uint64_t a1, uint64_t a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (v2 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100074F38(v2, v6, v5);
  }

  return v8 & 1;
}

uint64_t sub_100746DF8()
{
  sub_10001335C();
  v2 = 0xE700000000000000;
  v4 = v3;
  v5 = v1;
  switch(v4)
  {
    case 1:
      v2 = 0xE800000000000000;
      v5 = 0x7469617274726F70;
      break;
    case 2:
      v5 = sub_1000865F4(18);
      break;
    case 3:
      v5 = sub_1000BCF34();
      v2 = 0xED00007466654C65;
      break;
    case 4:
      v5 = sub_1000BCF34();
      v2 = 0xEE00746867695265;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(v0)
  {
    case 1:
      v6 = 0xE800000000000000;
      v1 = 0x7469617274726F70;
      break;
    case 2:
      sub_10002168C();
      v6 = v7 | 0x8000000000000000;
      break;
    case 3:
      sub_1000C8A58();
      v6 = 0xED00007466654C65;
      break;
    case 4:
      sub_1000C8A58();
      v6 = 0xEE00746867695265;
      break;
    default:
      break;
  }

  if (v5 == v1 && v2 == v6)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_100074F38(v5, v0, v1);
  }

  return v9 & 1;
}

uint64_t sub_100746F5C(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x7972616D697270;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = "mapPresentationState";
  v6 = 0x7972616D697270;
  v7 = "secondaryOverlay";
  switch(v4)
  {
    case 1:
      v6 = 0x7261646E6F636573;
      v3 = 0xE900000000000079;
      break;
    case 2:
      v6 = sub_10005273C();
      v8 = v7 - 32;
      goto LABEL_7;
    case 3:
      v6 = 0x6572726566657270;
      v3 = 0xE900000000000064;
      break;
    case 4:
      v3 = 0xE600000000000000;
      v6 = 0x686372616573;
      break;
    case 5:
      v6 = 0x4D79616C70736964;
      v3 = 0xEE00736369727465;
      break;
    case 6:
      v3 = 0x8000000100ABB220;
      v6 = 0xD000000000000014;
      break;
    case 7:
      v6 = sub_10005273C();
      v8 = (v9 - 32);
LABEL_7:
      v3 = v8 | 0x8000000000000000;
      break;
    default:
      break;
  }

  v10 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x7261646E6F636573;
      v10 = 0xE900000000000079;
      break;
    case 2:
      v2 = 0xD000000000000010;
      v11 = v7 - 32;
      goto LABEL_16;
    case 3:
      v2 = 0x6572726566657270;
      v10 = 0xE900000000000064;
      break;
    case 4:
      v10 = 0xE600000000000000;
      v2 = 0x686372616573;
      break;
    case 5:
      v2 = 0x4D79616C70736964;
      v10 = 0xEE00736369727465;
      break;
    case 6:
      v10 = (v5 - 32) | 0x8000000000000000;
      v2 = 0xD000000000000014;
      break;
    case 7:
      sub_10002168C();
LABEL_16:
      v10 = v11 | 0x8000000000000000;
      break;
    default:
      break;
  }

  if (v6 == v2 && v3 == v10)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_100074F38(v6, a2, v2);
  }

  return v13 & 1;
}

uint64_t sub_100747178(char a1)
{
  if (a1)
  {
    v1 = 0xE700000000000000;
  }

  else
  {
    v1 = 0xEE00726577656956;
  }

  sub_1000520D8();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_100074F38(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_100747214()
{
  sub_100042328();
  v3 = v0;
  if (v0)
  {
    if (v0 == 1)
    {
      v4 = 0x6E6F697461636F6CLL;
    }

    else
    {
      v4 = 0x74736554786676;
    }

    if (v3 == 1)
    {
      v5 = 0xEE00726577656956;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v4 = 1701869940;
  }

  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 0x6E6F697461636F6CLL;
    }

    else
    {
      v2 = 0x74736554786676;
    }

    if (v1 == 1)
    {
      v6 = 0xEE00726577656956;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100074F38(v4, v1, v2);
  }

  return v8 & 1;
}

uint64_t sub_100747314(char a1)
{
  if (a1)
  {
    v1 = 0xED000073746C7573;
  }

  else
  {
    v1 = 0xE400000000000000;
  }

  sub_1000520D8();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_100074F38(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_1007473A8()
{
  sub_1000520D8();
  if (v0 == v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1007475C4()
{
  sub_1000186F0();
  sub_100017D38();
  v3 = v2;
  v4 = v0;
  v5 = "authorizedWhenInUse";
  switch(v6)
  {
    case 1:
      v4 = 0x8000000100ABA3F0;
      v3 = 0xD000000000000013;
      break;
    case 2:
      v3 = sub_10005273C();
      v4 = (v7 - 32) | 0x8000000000000000;
      break;
    case 3:
      v3 = sub_1000B0ED0();
      break;
    case 4:
      v3 = 0x7463697274736572;
      v4 = 0xEA00000000006465;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      v0 = (v5 - 32) | 0x8000000000000000;
      v2 = 0xD000000000000013;
      break;
    case 2:
      sub_10002168C();
      v0 = v8 | 0x8000000000000000;
      break;
    case 3:
      sub_1000F0040();
      break;
    case 4:
      v2 = 0x7463697274736572;
      v0 = 0xEA00000000006465;
      break;
    default:
      break;
  }

  if (v3 == v2 && v4 == v0)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_100013BC0(v3, v1, v2);
  }

  return v10 & 1;
}

uint64_t sub_10074770C()
{
  v0 = 0xEA00000000007974;
  sub_1001707C0();
  v4 = v3;
  v5 = v2;
  v6 = 0xEA00000000007974;
  switch(v4)
  {
    case 1:
      v5 = sub_10002432C();
      break;
    case 2:
      v5 = 0x74617265706D6574;
      v6 = 0xEB00000000657275;
      break;
    case 3:
      v5 = sub_100008C94();
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      sub_100041B44();
      break;
    case 2:
      v2 = 0x74617265706D6574;
      v0 = 0xEB00000000657275;
      break;
    case 3:
      sub_1000715BC();
      break;
    default:
      break;
  }

  if (v5 == v2 && v6 == v0)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100013BC0(v5, v1, v2);
  }

  return v8 & 1;
}

uint64_t sub_100747818()
{
  v0 = 0xEE00726564616548;
  sub_100014514();
  if (v3)
  {
    sub_1000117C0();
    if (v5 == 1)
    {
      v9 = v6;
    }

    else
    {
      v9 = v8;
    }

    if (v5 == 1)
    {
      v10 = v7;
    }

    else
    {
      v10 = (v4 - 32) | 0x8000000000000000;
    }
  }

  else
  {
    v9 = v2;
    v10 = 0xEE00726564616548;
  }

  if (v1)
  {
    sub_1000117C0();
    v16 = (v15 - 32) | 0x8000000000000000;
    if (v11 == 1)
    {
      v2 = v12;
    }

    else
    {
      v2 = v14;
    }

    if (v11 == 1)
    {
      v0 = v13;
    }

    else
    {
      v0 = v16;
    }
  }

  if (v9 == v2 && v10 == v0)
  {
    v18 = 1;
  }

  else
  {
    v18 = sub_100013BC0(v9, v1, v2);
  }

  return v18 & 1;
}

uint64_t sub_1007478D4(char a1)
{
  v2 = 0xE400000000000000;
  switch(a1)
  {
    case 1:
      v2 = 0x8000000100ABA320;
      break;
    case 2:
      v3 = "locationServices";
      goto LABEL_7;
    case 3:
      v4 = 0x736E6F6974;
      goto LABEL_9;
    case 4:
      v2 = 0xE700000000000000;
      break;
    case 5:
      v3 = "";
LABEL_7:
      v2 = v3 | 0x8000000000000000;
      break;
    case 6:
      v4 = 0x7265746E65;
LABEL_9:
      v2 = v4 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      break;
    default:
      break;
  }

  sub_1000164E8();
  switch(v10)
  {
    case 1:
      v1 = (v9 - 32) | 0x8000000000000000;
      v7 = 0xD000000000000010;
      break;
    case 2:
      v7 = 0xD00000000000001ELL;
      v11 = v8 - 32;
      goto LABEL_16;
    case 3:
      v7 = 0x6163696669746F6ELL;
      v12 = 0x736E6F6974;
      goto LABEL_18;
    case 4:
      v1 = 0xE700000000000000;
      sub_1000B0CF4();
      break;
    case 5:
      sub_10002168C();
LABEL_16:
      v1 = v11 | 0x8000000000000000;
      break;
    case 6:
      v7 = 0x436C6F72746E6F63;
      v12 = 0x7265746E65;
LABEL_18:
      v1 = v12 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      break;
    default:
      break;
  }

  if (v5 == v7 && v2 == v1)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_100074F38(v5, v6, v7);
  }

  return v14 & 1;
}

uint64_t sub_100747AB4(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xEA0000000000736ELL;
  v3 = 0x6F697469646E6F63;
  v4 = 0xEA0000000000736ELL;
  v5 = a1;
  v6 = 0x6F697469646E6F63;
  switch(v5)
  {
    case 1:
      v4 = 0xE800000000000000;
      v6 = 0x79746964696D7568;
      break;
    case 2:
      v6 = sub_10002432C();
      break;
    case 3:
      v4 = 0xE800000000000000;
      v6 = 0x6572757373657270;
      break;
    case 4:
      v4 = 0xE300000000000000;
      v6 = 6911605;
      break;
    case 5:
      v6 = 0x696C696269736976;
      v4 = 0xEA00000000007974;
      break;
    case 6:
      v6 = sub_100008C94();
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xE800000000000000;
      v3 = 0x79746964696D7568;
      break;
    case 2:
      sub_100041B44();
      break;
    case 3:
      v2 = 0xE800000000000000;
      v3 = 0x6572757373657270;
      break;
    case 4:
      v2 = 0xE300000000000000;
      v3 = 6911605;
      break;
    case 5:
      v3 = 0x696C696269736976;
      v2 = 0xEA00000000007974;
      break;
    case 6:
      sub_1000715BC();
      break;
    default:
      break;
  }

  if (v6 == v3 && v4 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100013BC0(v6, a2, v3);
  }

  return v8 & 1;
}

uint64_t sub_100747C3C(char a1)
{
  if (a1)
  {
    v1 = 0xE600000000000000;
  }

  else
  {
    v1 = 0xEC0000006E6F6974;
  }

  sub_1000520D8();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_100074F38(v2, v3, v4);
  }

  return v9 & 1;
}

BOOL sub_100747D6C(char a1, char a2)
{
  v2 = 1024.0;
  if (a1)
  {
    v3 = 1024.0;
  }

  else
  {
    v3 = 0.0;
  }

  if ((a2 & 1) == 0)
  {
    v2 = 0.0;
  }

  return v3 == v2;
}

uint64_t sub_100747D94(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xEB0000000079654BLL;
  v3 = 0x7765695674736564;
  v4 = a1;
  v5 = 0x7765695674736564;
  v6 = 0xEB0000000079654BLL;
  switch(v4)
  {
    case 1:
      v5 = 0x656D614E79746963;
      v6 = 0xEB0000000079654BLL;
      break;
    case 2:
      v5 = sub_1000049E8();
      v6 = 0xEA00000000004449;
      break;
    case 3:
      v6 = 0xE300000000000000;
      v5 = 7627116;
      break;
    case 4:
      v6 = 0xE400000000000000;
      v5 = 1735290732;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x656D614E79746963;
      break;
    case 2:
      sub_100014514();
      v2 = 0xEA00000000004449;
      break;
    case 3:
      v2 = 0xE300000000000000;
      v3 = 7627116;
      break;
    case 4:
      v2 = 0xE400000000000000;
      v3 = 1735290732;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100013BC0(v5, a2, v3);
  }

  return v8 & 1;
}

uint64_t sub_100747F08(char a1)
{
  if (a1)
  {
    v1 = 0xE700000000000000;
  }

  else
  {
    v1 = 0xE300000000000000;
  }

  sub_1000520D8();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_100074F38(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_100747F90(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x6C62616C69617661;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0xD000000000000016;
    }

    else
    {
      v5 = 0x616C696176616E75;
    }

    if (v4 == 1)
    {
      v6 = 0x8000000100ABB050;
    }

    else
    {
      v6 = 0xEB00000000656C62;
    }
  }

  else
  {
    v5 = 0x6C62616C69617661;
    v6 = 0xE900000000000065;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0xD000000000000016;
    }

    else
    {
      v3 = 0x616C696176616E75;
    }

    if (a2 == 1)
    {
      v2 = 0x8000000100ABB050;
    }

    else
    {
      v2 = 0xEB00000000656C62;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100013BC0(v5, a2, v3);
  }

  return v8 & 1;
}

uint64_t sub_100748094(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xEA0000000000646ELL;
  v3 = 0x756F72676B636162;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x756F726765726F66;
    }

    else
    {
      v5 = 0x6E6968636E75616CLL;
    }

    if (v4 == 1)
    {
      v6 = 0xEA0000000000646ELL;
    }

    else
    {
      v6 = 0xE900000000000067;
    }
  }

  else
  {
    v5 = 0x756F72676B636162;
    v6 = 0xEA0000000000646ELL;
  }

  if (a2)
  {
    v3 = a2 == 1 ? 0x756F726765726F66 : 0x6E6968636E75616CLL;
    if (a2 != 1)
    {
      v2 = 0xE900000000000067;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100013BC0(v5, a2, v3);
  }

  return v8 & 1;
}

uint64_t sub_1007481AC(char a1)
{
  v2 = 0xE400000000000000;
  switch(a1)
  {
    case 1:
      v2 = 0xE800000000000000;
      break;
    case 2:
      v2 = 0xE500000000000000;
      break;
    case 3:
      v2 = 0xE700000000000000;
      break;
    default:
      break;
  }

  sub_1000164E8();
  switch(v6)
  {
    case 1:
      v1 = 0xE800000000000000;
      v5 = 0x72616C756C6C6563;
      break;
    case 2:
      v1 = 0xE500000000000000;
      v5 = 0x726568746FLL;
      break;
    case 3:
      v1 = 0xE700000000000000;
      sub_10001335C();
      break;
    default:
      break;
  }

  if (v3 == v5 && v2 == v1)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100074F38(v3, v4, v5);
  }

  return v8 & 1;
}

uint64_t sub_1007482F4(char a1)
{
  if (a1)
  {
    v1 = 0xE800000000000000;
  }

  else
  {
    v1 = 0xE600000000000000;
  }

  sub_1000520D8();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_100074F38(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_100748380(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x726F727265;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x726F727265;
  switch(v4)
  {
    case 1:
      v3 = 0xE700000000000000;
      v5 = 0x676E6964616F6CLL;
      break;
    case 2:
      v3 = 0xE700000000000000;
      v5 = 0x73746C75736572;
      break;
    case 3:
      v5 = 0x7779654B6F72657ALL;
      v3 = 0xEB0000000064726FLL;
      break;
    case 4:
      v5 = sub_1000865F4(17);
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE700000000000000;
      v2 = 0x676E6964616F6CLL;
      break;
    case 2:
      v6 = 0xE700000000000000;
      v2 = 0x73746C75736572;
      break;
    case 3:
      v2 = 0x7779654B6F72657ALL;
      v6 = 0xEB0000000064726FLL;
      break;
    case 4:
      sub_10002168C();
      v6 = v7 | 0x8000000000000000;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_100074F38(v5, a2, v2);
  }

  return v9 & 1;
}

uint64_t sub_1007484F0()
{
  sub_100042328();
  v1 = 0xE400000000000000;
  switch(v2)
  {
    case 1:
      v1 = 0xE500000000000000;
      break;
    case 2:
      sub_1000049E8();
      v1 = 0xE900000000000073;
      break;
    case 3:
      v1 = 0xE500000000000000;
      break;
    default:
      break;
  }

  sub_1000164E8();
  switch(v6)
  {
    case 1:
      v0 = 0xE500000000000000;
      v5 = 0x726F727265;
      break;
    case 2:
      sub_100014514();
      v0 = 0xE900000000000073;
      break;
    case 3:
      v0 = 0xE500000000000000;
      v5 = 0x7972657571;
      break;
    default:
      break;
  }

  if (v3 == v5 && v1 == v0)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100074F38(v3, v4, v5);
  }

  return v8 & 1;
}

uint64_t sub_100748604()
{
  sub_100014514();
  v2 = 0xE800000000000000;
  v4 = v3;
  v5 = v1;
  v6 = "predictedLocation";
  switch(v4)
  {
    case 1:
      v5 = 0xD000000000000011;
      v2 = 0x8000000100ABAFD0;
      break;
    case 2:
      v2 = 0x8000000100ABB010;
      v5 = 0xD000000000000012;
      break;
    case 3:
      v5 = sub_1000305D0();
      break;
    case 4:
      v5 = sub_100049BDC();
      break;
    default:
      break;
  }

  v7 = 0xE800000000000000;
  switch(v0)
  {
    case 1:
      v1 = 0xD000000000000011;
      v7 = (v6 - 32) | 0x8000000000000000;
      break;
    case 2:
      sub_100087E3C();
      v1 = v8 + 1;
      break;
    case 3:
      sub_1000253A8();
      break;
    case 4:
      sub_10004EA30();
      break;
    default:
      break;
  }

  if (v5 == v1 && v2 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_100074F38(v5, v0, v1);
  }

  return v10 & 1;
}

uint64_t sub_100748728()
{
  sub_100042328();
  v1 = 0xE400000000000000;
  switch(v2)
  {
    case 1:
      v1 = 0xE800000000000000;
      sub_1000049E8();
      break;
    case 2:
      v1 = 0x8000000100ABAFD0;
      break;
    case 3:
      sub_1000305D0();
      break;
    case 4:
      sub_100049BDC();
      break;
    case 6:
      v1 = 0x8000000100ABB010;
      break;
    case 7:
      v1 = 0x8000000100ABB030;
      break;
    default:
      break;
  }

  sub_1000164E8();
  switch(v7)
  {
    case 1:
      v0 = 0xE800000000000000;
      sub_100014514();
      break;
    case 2:
      v5 = 0xD000000000000011;
      v0 = (v6 - 32) | 0x8000000000000000;
      break;
    case 3:
      sub_1000253A8();
      break;
    case 4:
      sub_10004EA30();
      break;
    case 5:
      v5 = 1701667182;
      break;
    case 6:
      sub_100087E3C();
      v5 = v9 + 1;
      break;
    case 7:
      sub_100087E3C();
      v5 = v8 | 2;
      break;
    default:
      break;
  }

  if (v3 == v5 && v1 == v0)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_100074F38(v3, v4, v5);
  }

  return v11 & 1;
}

uint64_t sub_10074890C(char a1, char a2)
{
  if (a1)
  {
    v2 = 0xEF77656976657250;
  }

  else
  {
    v2 = 0xEE00726577656956;
  }

  if (a2)
  {
    v3 = 0xEF77656976657250;
  }

  else
  {
    v3 = 0xEE00726577656956;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    sub_1000049E8();
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v4 & 1;
}

uint64_t sub_1007489A0(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x656C746974;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x656C746974;
  switch(v4)
  {
    case 1:
      v3 = 0xE800000000000000;
      v5 = 0x656C746974627573;
      break;
    case 2:
      v5 = 0x5474756F6C6C6163;
      v3 = 0xEC000000656C7469;
      break;
    case 3:
      v5 = sub_1000865F4(20);
      break;
    case 4:
      v3 = 0xE800000000000000;
      v5 = sub_1000049E8();
      break;
    case 5:
      v5 = sub_100049BDC();
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE800000000000000;
      v2 = 0x656C746974627573;
      break;
    case 2:
      v2 = 0x5474756F6C6C6163;
      v6 = 0xEC000000656C7469;
      break;
    case 3:
      sub_10002168C();
      v6 = v7 | 0x8000000000000000;
      break;
    case 4:
      v6 = 0xE800000000000000;
      sub_100014514();
      break;
    case 5:
      sub_10004EA30();
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_100074F38(v5, a2, v2);
  }

  return v9 & 1;
}

uint64_t sub_100748B08()
{
  sub_1000A7D0C();
  switch(v2)
  {
    case 1:
      sub_1000049E8();
      v0 = 0xEF77656976657250;
      break;
    case 2:
      v0 = 0x8000000100ABB0C0;
      break;
    case 3:
      v3 = "ilyForecast";
      goto LABEL_7;
    case 4:
      v0 = 0xED00007265687461;
      break;
    case 5:
      v0 = 0xE300000000000000;
      break;
    case 6:
      sub_1000049E8();
      v0 = 0xEE006C6961746544;
      break;
    case 7:
      v3 = "iew";
LABEL_7:
      v0 = v3 | 0x8000000000000000;
      break;
    default:
      break;
  }

  sub_1000164E8();
  switch(v9)
  {
    case 1:
      sub_100014514();
      v1 = 0xEF77656976657250;
      break;
    case 2:
      v1 = (v8 - 32) | 0x8000000000000000;
      v6 = 0xD000000000000014;
      break;
    case 3:
      v6 = 0xD000000000000012;
      v10 = v7 - 32;
      goto LABEL_16;
    case 4:
      v6 = 0x655774726F706572;
      v1 = 0xED00007265687461;
      break;
    case 5:
      v1 = 0xE300000000000000;
      v6 = 7364973;
      break;
    case 6:
      sub_100014514();
      v1 = 0xEE006C6961746544;
      break;
    case 7:
      sub_10002168C();
LABEL_16:
      v1 = v10 | 0x8000000000000000;
      break;
    default:
      break;
  }

  if (v4 == v6 && v0 == v1)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_100074F38(v4, v5, v6);
  }

  return v12 & 1;
}

uint64_t sub_100748D14(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xD00000000000002ALL;
  v3 = "annerScrollTrailingPinnedMap";
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0xD00000000000001FLL;
    }

    else
    {
      v5 = 0xD00000000000001ELL;
    }

    if (v4 == 1)
    {
      v6 = "r.shortcut.currentLocation";
    }

    else
    {
      v6 = "com.apple.weather.shortcut.city";
    }
  }

  else
  {
    v5 = 0xD00000000000002ALL;
    v6 = "annerScrollTrailingPinnedMap";
  }

  if (a2)
  {
    v3 = "r.shortcut.currentLocation";
    v2 = a2 == 1 ? 0xD00000000000001FLL : 0xD00000000000001ELL;
    if (a2 != 1)
    {
      v3 = "com.apple.weather.shortcut.city";
    }
  }

  if (v5 == v2 && (v6 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100074F38(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_100748DDC(char a1)
{
  if (a1)
  {
    v1 = 0xE700000000000000;
  }

  else
  {
    v1 = 0xE900000000000065;
  }

  sub_1000520D8();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_100074F38(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_100748E70(char a1)
{
  if (a1)
  {
    v1 = 0xE900000000000065;
  }

  else
  {
    v1 = 0xE400000000000000;
  }

  sub_1000520D8();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_100074F38(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_100748F14(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = a3(a1);
  v7 = v6;
  v8 = a3(a2);
  if (v5 == v8 && v7 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_100074F38(v5, v9, v8);
  }

  return v11 & 1;
}

uint64_t sub_100748F98(char a1)
{
  if (a1)
  {
    v1 = 0xEA00000000003432;
  }

  else
  {
    v1 = 0xE800000000000000;
  }

  sub_1000520D8();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_100074F38(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_10074902C(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xED00007473616365;
  v3 = 0x726F46796C696164;
  v4 = a1;
  v5 = 0x726F46796C696164;
  v6 = 0xED00007473616365;
  switch(v4)
  {
    case 1:
      v5 = 0x696C617551726961;
      v6 = 0xEA00000000007974;
      break;
    case 2:
      v6 = 0xE300000000000000;
      v5 = 7364973;
      break;
    case 3:
      v6 = 0xE700000000000000;
      v5 = 0x70614D646E6977;
      break;
    case 4:
      v6 = 0xE700000000000000;
      v5 = 0x7865646E497675;
      break;
    case 5:
      v5 = sub_100008C94();
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      sub_1001707C0();
      v2 = 0xEA00000000007974;
      break;
    case 2:
      v2 = 0xE300000000000000;
      v3 = 7364973;
      break;
    case 3:
      v2 = 0xE700000000000000;
      v3 = 0x70614D646E6977;
      break;
    case 4:
      v2 = 0xE700000000000000;
      v3 = 0x7865646E497675;
      break;
    case 5:
      sub_1000715BC();
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100013BC0(v5, a2, v3);
  }

  return v8 & 1;
}

uint64_t sub_1007491A4()
{
  sub_1000B0CF4();
  v3 = v0;
  if (v0)
  {
    if (v0 == 1)
    {
      v4 = 0xD000000000000011;
    }

    else
    {
      v4 = 0x6974736974617473;
    }

    if (v3 == 1)
    {
      v5 = 0x8000000100ABAE70;
    }

    else
    {
      v5 = 0xEA00000000007363;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v4 = v2;
  }

  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 0xD000000000000011;
    }

    else
    {
      v2 = 0x6974736974617473;
    }

    if (v1 == 1)
    {
      v6 = 0x8000000100ABAE70;
    }

    else
    {
      v6 = 0xEA00000000007363;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100074F38(v4, v1, v2);
  }

  return v8 & 1;
}

uint64_t sub_100749290()
{
  sub_1000520D8();
  if (v0 == v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_10074930C()
{
  sub_100042328();
  v4 = v0;
  if (v0)
  {
    if (v0 == 1)
    {
      v5 = v3 + 8;
    }

    else
    {
      v5 = v3;
    }

    if (v4 == 1)
    {
      v6 = 0x8000000100ABA970;
    }

    else
    {
      v6 = 0x8000000100ABA990;
    }
  }

  else
  {
    v6 = 0xE400000000000000;
    v5 = 1701869940;
  }

  if (v1)
  {
    if (v1 == 1)
    {
      v2 = v3 + 8;
    }

    else
    {
      v2 = v3;
    }

    if (v1 == 1)
    {
      v7 = 0x8000000100ABA970;
    }

    else
    {
      v7 = 0x8000000100ABA990;
    }
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v5 == v2 && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_100074F38(v5, v1, v2);
  }

  return v9 & 1;
}

uint64_t sub_1007493E4()
{
  sub_1000A7D0C();
  switch(v2)
  {
    case 1:
      sub_100088498();
      goto LABEL_5;
    case 2:
      sub_100030074();
      v0 = 0xEA00000000006E69;
      break;
    case 3:
LABEL_5:
      v0 = 0xE90000000000006ELL;
      break;
    case 4:
      sub_100088498();
      goto LABEL_9;
    case 5:
      sub_100030074();
      v0 = 0xEB00000000746565;
      break;
    case 6:
LABEL_9:
      v0 = 0xEA00000000007465;
      break;
    case 7:
      sub_100088498();
      goto LABEL_7;
    case 8:
      sub_100030074();
      v0 = 0xEA0000000000776FLL;
      break;
    case 9:
LABEL_7:
      v0 = 0xE900000000000077;
      break;
    default:
      break;
  }

  sub_1000164E8();
  switch(v6)
  {
    case 1:
      sub_100052438();
      v8 = v7 & 0xFFFF0000FFFFFFFFLL | 0x527400000000;
      goto LABEL_17;
    case 2:
      sub_100031F28();
      v5 = v12 & 0xFFFFFFFFFFFFLL | 0x6152000000000000;
      v1 = 0xEA00000000006E69;
      break;
    case 3:
      v8 = 0x527976616568;
LABEL_17:
      v5 = v8 & 0xFFFFFFFFFFFFLL | 0x6961000000000000;
      v1 = 0xE90000000000006ELL;
      break;
    case 4:
      sub_100052438();
      v10 = v9 & 0xFFFF0000FFFFFFFFLL | 0x537400000000;
      goto LABEL_22;
    case 5:
      sub_100031F28();
      v5 = v14 & 0xFFFFFFFFFFFFLL | 0x6C53000000000000;
      v1 = 0xEB00000000746565;
      break;
    case 6:
      v10 = 0x537976616568;
LABEL_22:
      v5 = v10 & 0xFFFFFFFFFFFFLL | 0x656C000000000000;
      v1 = 0xEA00000000007465;
      break;
    case 7:
      sub_100052438();
      v11 = v13 & 0xFFFF0000FFFFFFFFLL | 0x537400000000;
      goto LABEL_19;
    case 8:
      sub_100031F28();
      v5 = v15 & 0xFFFFFFFFFFFFLL | 0x6E53000000000000;
      v1 = 0xEA0000000000776FLL;
      break;
    case 9:
      v11 = 0x537976616568;
LABEL_19:
      v5 = v11 & 0xFFFFFFFFFFFFLL | 0x6F6E000000000000;
      v1 = 0xE900000000000077;
      break;
    default:
      break;
  }

  if (v3 == v5 && v0 == v1)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_100074F38(v3, v4, v5);
  }

  return v17 & 1;
}

uint64_t sub_100749614(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x72656D726177;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x616365726F467361;
    }

    else
    {
      v4 = 0x7265646C6F63;
    }

    if (v3 == 1)
    {
      v5 = 0xEA00000000007473;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v4 = 0x72656D726177;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x616365726F467361;
    }

    else
    {
      v2 = 0x7265646C6F63;
    }

    if (a2 == 1)
    {
      v6 = 0xEA00000000007473;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100074F38(v4, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_100749700(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xEA00000000007473;
  v3 = 0xD000000000000010;
  v4 = 0x616365726F467361;
  v5 = "lessThanForecast";
  v6 = "moreThanForecast";
  v7 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v8 = 0x616365726F467361;
    }

    else
    {
      v8 = 0xD000000000000010;
    }

    if (v7 == 1)
    {
      v9 = 0xEA00000000007473;
    }

    else
    {
      v9 = 0x8000000100ABAD80;
    }
  }

  else
  {
    v9 = 0x8000000100ABAD60;
    v8 = sub_10005273C();
  }

  if (a2)
  {
    v10 = (v5 - 32) | 0x8000000000000000;
    if (a2 == 1)
    {
      v3 = v4;
      v11 = v2;
    }

    else
    {
      v11 = v10;
    }
  }

  else
  {
    v11 = (v6 - 32) | 0x8000000000000000;
  }

  if (v8 == v3 && v9 == v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_100074F38(v8, a2, v3);
  }

  return v13 & 1;
}

uint64_t sub_1007497D8(unsigned __int8 a1, uint64_t a2)
{
  v2 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 0x616365726F467361;
    }

    else
    {
      v3 = 0xD000000000000011;
    }

    if (v2 == 1)
    {
      v4 = 0xEA00000000007473;
    }

    else
    {
      v4 = 0x8000000100ABADC0;
    }
  }

  else
  {
    v4 = 0x8000000100ABADA0;
    v3 = 0xD000000000000012;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v5 = 0x616365726F467361;
    }

    else
    {
      v5 = 0xD000000000000011;
    }

    if (a2 == 1)
    {
      v6 = 0xEA00000000007473;
    }

    else
    {
      v6 = 0x8000000100ABADC0;
    }
  }

  else
  {
    v6 = 0x8000000100ABADA0;
    v5 = 0xD000000000000012;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100074F38(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_1007498B4(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x746E617361656C70;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = 0x746E617361656C70;
  switch(v4)
  {
    case 1:
      v5 = 0x617361656C706E75;
      v3 = 0xEA0000000000746ELL;
      break;
    case 2:
      v3 = 0xE300000000000000;
      v5 = 7630696;
      break;
    case 3:
      v3 = 0xE600000000000000;
      v5 = 0x796C6C696863;
      break;
    case 4:
      v3 = 0xE500000000000000;
      v6 = 1734833517;
      goto LABEL_9;
    case 5:
      v3 = 0xE300000000000000;
      v5 = 7959140;
      break;
    case 6:
      v3 = 0xE500000000000000;
      v6 = 1684957559;
LABEL_9:
      v5 = v6 & 0xFFFF0000FFFFFFFFLL | 0x7900000000;
      break;
    case 7:
      v3 = 0xE400000000000000;
      v5 = 1835819363;
      break;
    default:
      break;
  }

  v7 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x617361656C706E75;
      v7 = 0xEA0000000000746ELL;
      break;
    case 2:
      v7 = 0xE300000000000000;
      v2 = 7630696;
      break;
    case 3:
      v7 = 0xE600000000000000;
      v2 = 0x796C6C696863;
      break;
    case 4:
      v7 = 0xE500000000000000;
      v8 = 1734833517;
      goto LABEL_18;
    case 5:
      v7 = 0xE300000000000000;
      v2 = 7959140;
      break;
    case 6:
      v7 = 0xE500000000000000;
      v8 = 1684957559;
LABEL_18:
      v2 = v8 & 0xFFFF0000FFFFFFFFLL | 0x7900000000;
      break;
    case 7:
      v7 = 0xE400000000000000;
      v2 = 1835819363;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_100074F38(v5, a2, v2);
  }

  return v10 & 1;
}

uint64_t sub_100749A6C(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x73776F626E696172;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = 0x73776F626E696172;
  switch(v4)
  {
    case 1:
      v5 = sub_100088498() | 0x6E696E7400000000;
      v3 = 0xE900000000000067;
      break;
    case 2:
      v3 = 0xE400000000000000;
      v5 = 1818845544;
      break;
    case 3:
      v3 = 0xE500000000000000;
      v5 = 0x656B6F6D73;
      break;
    case 4:
      v3 = 0xE300000000000000;
      v5 = 6778726;
      break;
    case 5:
      v3 = 0xE400000000000000;
      v5 = 1702519144;
      break;
    default:
      break;
  }

  v6 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      sub_100052438();
      v2 = v7 | 0x6E696E7400000000;
      v6 = 0xE900000000000067;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v2 = 1818845544;
      break;
    case 3:
      v6 = 0xE500000000000000;
      v2 = 0x656B6F6D73;
      break;
    case 4:
      v6 = 0xE300000000000000;
      v2 = 6778726;
      break;
    case 5:
      v6 = 0xE400000000000000;
      v2 = 1702519144;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_100074F38(v5, a2, v2);
  }

  return v9 & 1;
}

uint64_t sub_100749BD4()
{
  sub_1000A7D0C();
  switch(v2)
  {
    case 1:
      v0 = 0xE600000000000000;
      break;
    case 2:
      v0 = 0xE600000000000000;
      break;
    case 3:
      v0 = 0xE500000000000000;
      break;
    default:
      break;
  }

  sub_1000164E8();
  switch(v6)
  {
    case 1:
      v1 = 0xE600000000000000;
      v7 = 1953653104;
      goto LABEL_9;
    case 2:
      v1 = 0xE600000000000000;
      v7 = 1953722221;
LABEL_9:
      v5 = v7 & 0xFFFF0000FFFFFFFFLL | 0x796C00000000;
      break;
    case 3:
      v1 = 0xE500000000000000;
      v5 = 0x796C6C7566;
      break;
    default:
      break;
  }

  if (v3 == v5 && v0 == v1)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_100074F38(v3, v4, v5);
  }

  return v9 & 1;
}

uint64_t sub_100749CE4(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x6C6C616D5378;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x6C6C616D5378;
  switch(v4)
  {
    case 1:
      v3 = 0xE500000000000000;
      v5 = 0x6C6C616D73;
      break;
    case 2:
      v5 = sub_100030074();
      break;
    case 3:
      v3 = 0xE500000000000000;
      v5 = 0x656772616CLL;
      break;
    case 4:
      v5 = 0x656772614C78;
      break;
    case 5:
      v3 = 0xE700000000000000;
      v5 = 0x656772614C7878;
      break;
    case 6:
      v3 = 0xE800000000000000;
      v5 = 0x656772614C787878;
      break;
    case 7:
      v5 = sub_100008E18();
      v6 = 0xE600317900000000;
      goto LABEL_13;
    case 8:
      v5 = sub_100008E18();
      v6 = 0xE600327900000000;
      goto LABEL_13;
    case 9:
      v5 = sub_100008E18();
      v6 = 0xE600337900000000;
      goto LABEL_13;
    case 10:
      v5 = sub_100008E18();
      v6 = 0xE600347900000000;
      goto LABEL_13;
    case 11:
      v5 = sub_100008E18();
      v6 = 0xE600357900000000;
LABEL_13:
      v3 = v6 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      break;
    default:
      break;
  }

  v7 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v7 = 0xE500000000000000;
      v2 = 0x6C6C616D73;
      break;
    case 2:
      sub_100031F28();
      break;
    case 3:
      v7 = 0xE500000000000000;
      v2 = 0x656772616CLL;
      break;
    case 4:
      v2 = 0x656772614C78;
      break;
    case 5:
      v7 = 0xE700000000000000;
      v2 = 0x656772614C7878;
      break;
    case 6:
      v7 = 0xE800000000000000;
      v2 = 0x656772614C787878;
      break;
    case 7:
      sub_1000066BC();
      v8 = 0xE600317900000000;
      goto LABEL_26;
    case 8:
      sub_1000066BC();
      v8 = 0xE600327900000000;
      goto LABEL_26;
    case 9:
      sub_1000066BC();
      v8 = 0xE600337900000000;
      goto LABEL_26;
    case 10:
      sub_1000066BC();
      v8 = 0xE600347900000000;
      goto LABEL_26;
    case 11:
      sub_1000066BC();
      v8 = 0xE600357900000000;
LABEL_26:
      v7 = v8 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_100074F38(v5, a2, v2);
  }

  return v10 & 1;
}

uint64_t sub_100749EF0(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x746C7561666564;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x746C7561666564;
  switch(v4)
  {
    case 1:
      v3 = 0xE500000000000000;
      v5 = 0x7261656C63;
      break;
    case 2:
      v3 = 0xE600000000000000;
      v5 = 0x7964756F6C63;
      break;
    case 3:
      v5 = 0x6C43796C74736F6DLL;
      v6 = 2036626799;
      goto LABEL_7;
    case 4:
      v3 = 0xE400000000000000;
      v5 = 1852399986;
      break;
    case 5:
      v5 = 0x537265646E756874;
      v6 = 1836216180;
LABEL_7:
      v3 = v6 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    case 6:
      v5 = 0x7453657265766573;
      v3 = 0xEB000000006D726FLL;
      break;
    default:
      break;
  }

  v7 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v7 = 0xE500000000000000;
      v2 = 0x7261656C63;
      break;
    case 2:
      v7 = 0xE600000000000000;
      v2 = 0x7964756F6C63;
      break;
    case 3:
      v2 = 0x6C43796C74736F6DLL;
      v8 = 2036626799;
      goto LABEL_15;
    case 4:
      v7 = 0xE400000000000000;
      v2 = 1852399986;
      break;
    case 5:
      v2 = 0x537265646E756874;
      v8 = 1836216180;
LABEL_15:
      v7 = v8 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
      break;
    case 6:
      v2 = 0x7453657265766573;
      v7 = 0xEB000000006D726FLL;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_100074F38(v5, a2, v2);
  }

  return v10 & 1;
}

uint64_t sub_10074A0C8(char a1, char a2)
{
  v2 = Location.Identifier.Kind.rawValue.getter();
  v4 = v3;
  v5 = Location.Identifier.Kind.rawValue.getter();
  if (v2 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100074F38(v2, v6, v5);
  }

  return v8 & 1;
}

uint64_t sub_10074A18C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10022C350(&qword_100CA3538, &qword_100A2D560);
  v10 = sub_100003810(v9);
  __chkstk_darwin(v10);
  v12 = v25 - v11;
  sub_100386B2C(a3, v25 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = sub_100024D10(v12, 1, v13);

  if (v14 == 1)
  {
    sub_100386B9C(v12);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10074A40C(uint64_t a1, uint64_t a2)
{
  switch(a1)
  {
    case 1:
      result = sub_10074B098(a1, a2);
      break;
    case 2:
      result = sub_10074B1A0(a1, a2);
      break;
    case 3:
      result = sub_10074B2A8(a1, a2);
      break;
    case 4:
      result = sub_10074B3B0(a1, a2);
      break;
    case 5:
      result = sub_10074B4B8(a1, a2);
      break;
    default:
      result = sub_1001CB898(a1, a2);
      break;
  }

  return result;
}

uint64_t sub_10074A448(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_10001F680();
  v5 = sub_10014986C(v3, v4, asc_100A7EE60);
  sub_100023108(v5, v6);

  return *(v2 + 32);
}

uint64_t sub_10074A4C8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_10001F680();
  v5 = sub_10014986C(v3, v4, asc_100A7EE60);
  sub_100023108(v5, v6);

  return *(v2 + 33);
}

uint64_t sub_10074A548(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_10001F680();
  v5 = sub_10014986C(v3, v4, asc_100A7EE60);
  sub_100023108(v5, v6);

  return *(v2 + 34);
}

uint64_t sub_10074A5C8(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v4 = 2 * a1 + 2;
  if (a2)
  {
    if (v4 == a3)
    {
      return static Alignment.bottomTrailing.getter();
    }
  }

  else if (v4 != a3)
  {
    return static Alignment.bottomLeading.getter();
  }

  return static Alignment.bottom.getter();
}

uint64_t sub_10074A5F0(char a1)
{
  v2 = sub_10022C350(&qword_100CA3538, &qword_100A2D560);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  v5 = v34 - v4;
  if (qword_100CA27B0 != -1)
  {
    sub_10000F960(&qword_100CA27B0);
  }

  v6 = type metadata accessor for Logger();
  sub_10000703C(v6, qword_100D90D68);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (sub_1000D3F9C(v8))
  {
    *sub_10000389C() = 0;
    sub_10012CDE4(&_mh_execute_header, v9, v8, "TipCoordinator initializing");
    sub_10000FC14();
  }

  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  if (qword_100CA2478 != -1)
  {
    swift_once();
  }

  SettingReader.read<A>(_:)();

  v10 = v35;
  static SettingReader.shared.getter();
  if (qword_100CA2470 != -1)
  {
    swift_once();
  }

  SettingReader.read<A>(_:)();

  if ((v35 | v10))
  {
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (sub_1000D3F9C(v12))
    {
      v13 = sub_10000389C();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Resetting Tips datastore", v13, 2u);
      sub_100003884(v13);
    }

    static Tips.resetDatastore()();
    if (v10)
    {
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      if (sub_1000D3F9C(v15))
      {
        v16 = sub_10000389C();
        *v16 = 0;
        sub_1000C8F38(&_mh_execute_header, v17, v18, "Setting resetDatastoreOnNextLaunchEnabled back to false");
        sub_100003884(v16);
      }

      type metadata accessor for Settings.TappableModulesTipStore();
      swift_initStaticObject();
      v35 = 0;
      sub_10014986C(&qword_100CCF308, type metadata accessor for Settings.TappableModulesTipStore, protocol conformance descriptor for Settings.TappableModulesTipStore);
      Updatable.save<A>(setting:value:)();
    }
  }

  if (qword_100CA2490 != -1)
  {
    swift_once();
  }

  if (dispatch thunk of SettingGroup.isEnabled.getter())
  {
    static Tips.hideAllTipsForTesting()();
  }

  if (a1)
  {
    static Tips.resetDatastore()();
    sub_10022C350(&qword_100CD6200, &qword_100A7EE90);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_100A3C3F0;
    v20 = sub_10047A8F0();
    *(v19 + 32) = &unk_100C59068;
    *(v19 + 40) = v20;
    v21 = sub_10047A944();
    *(v19 + 48) = &unk_100C590E0;
    *(v19 + 56) = v21;
    v22 = sub_10047A89C();
    *(v19 + 64) = &unk_100C59048;
    *(v19 + 72) = v22;
    v23 = sub_10047A848();
    *(v19 + 80) = &unk_100C59028;
    *(v19 + 88) = v23;
    v24 = sub_10047A7A0();
    *(v19 + 96) = &unk_100C58F80;
    *(v19 + 104) = v24;
    v25 = sub_10047A7F4();
    *(v19 + 112) = &unk_100C59000;
    *(v19 + 120) = v25;
    static Tips.hideTipsForTesting(_:)();
  }

  if (dispatch thunk of SettingGroup.isEnabled.getter())
  {
    static SettingReader.shared.getter();
    if (qword_100CA2410 != -1)
    {
      swift_once();
    }

    SettingReader.read<A>(_:)();

    sub_100020350();
    if (!v26)
    {
      static SettingReader.shared.getter();
      if (qword_100CA2418 != -1)
      {
        swift_once();
      }

      SettingReader.read<A>(_:)();

      sub_100020350();
      if (v26)
      {
        sub_10022C350(&qword_100CD6200, &qword_100A7EE90);
        sub_10003716C();
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_100A2C3F0;
        v28 = sub_10047A944();
        *(v27 + 32) = &unk_100C590E0;
        goto LABEL_49;
      }

      static SettingReader.shared.getter();
      if (qword_100CA2420 != -1)
      {
        swift_once();
      }

      SettingReader.read<A>(_:)();

      sub_100020350();
      if (v26)
      {
        sub_10022C350(&qword_100CD6200, &qword_100A7EE90);
        sub_10003716C();
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_100A2C3F0;
        v28 = sub_10047A89C();
        v29 = &unk_100C59048;
      }

      else
      {
        static SettingReader.shared.getter();
        if (qword_100CA2428 != -1)
        {
          swift_once();
        }

        SettingReader.read<A>(_:)();

        sub_100020350();
        if (v26)
        {
          sub_10022C350(&qword_100CD6200, &qword_100A7EE90);
          sub_10003716C();
          v27 = swift_allocObject();
          *(v27 + 16) = xmmword_100A2C3F0;
          v28 = sub_10047A848();
          v29 = &unk_100C59028;
        }

        else
        {
          static SettingReader.shared.getter();
          if (qword_100CA2438 != -1)
          {
            swift_once();
          }

          SettingReader.read<A>(_:)();

          sub_100020350();
          if (!v26)
          {
            static SettingReader.shared.getter();
            if (qword_100CA2430 != -1)
            {
              swift_once();
            }

            SettingReader.read<A>(_:)();

            sub_100020350();
            if (!v26)
            {
              goto LABEL_50;
            }

            sub_10022C350(&qword_100CD6200, &qword_100A7EE90);
            sub_10003716C();
            v27 = swift_allocObject();
            *(v27 + 16) = xmmword_100A2C3F0;
            v28 = sub_10047A7F4();
            *(v27 + 32) = &unk_100C59000;
LABEL_49:
            *(v27 + 40) = v28;
            static Tips.showTipsForTesting(_:)();

            goto LABEL_50;
          }

          sub_10022C350(&qword_100CD6200, &qword_100A7EE90);
          sub_10003716C();
          v27 = swift_allocObject();
          *(v27 + 16) = xmmword_100A2C3F0;
          v28 = sub_10047A7A0();
          v29 = &unk_100C58F80;
        }
      }

      *(v27 + 32) = v29;
      goto LABEL_49;
    }

    sub_10022C350(&qword_100CD6200, &qword_100A7EE90);
    sub_10003716C();
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_100A2C3F0;
    v28 = sub_10047A8F0();
    *(v27 + 32) = &unk_100C59068;
    goto LABEL_49;
  }

LABEL_50:
  static SettingReader.shared.getter();
  if (qword_100CA2480 != -1)
  {
    swift_once();
  }

  SettingReader.read<A>(_:)();

  v30 = v35;
  static TaskPriority.high.getter();
  v31 = type metadata accessor for TaskPriority();
  sub_10001B350(v5, 0, 1, v31);
  sub_10003716C();
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = v30;
  *(v32 + 40) = v34[1];

  sub_10074A18C(0, 0, v5, &unk_100A7EE88, v32);

  return sub_100386B9C(v5);
}

uint64_t sub_10074AF40(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = a2;

  return sub_1001854C0();
}

uint64_t sub_10074AFB0(char a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  v9 = v3;
  v10 = a1;
  sub_100186210(KeyPath, a3, &v8);
}

uint64_t sub_10074B010(uint64_t result, uint64_t a2)
{
  if (*(v2 + 35) == (result & 1))
  {
    *(v2 + 35) = result & 1;
  }

  else
  {
    swift_getKeyPath();
    sub_100028AB8();
    __chkstk_darwin(v3);
    sub_100010A1C();
    sub_1000D42E4(v4, v5, v6);
  }

  return result;
}

uint64_t sub_10074B098(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_10001F680();
  v5 = sub_10014986C(v3, v4, asc_100A7EE60);
  sub_100023108(v5, v6);

  return *(v2 + 36);
}

uint64_t sub_10074B118(uint64_t result, uint64_t a2)
{
  if (*(v2 + 36) == (result & 1))
  {
    *(v2 + 36) = result & 1;
  }

  else
  {
    swift_getKeyPath();
    sub_100028AB8();
    __chkstk_darwin(v3);
    sub_100010A1C();
    sub_1000D42E4(v4, v5, v6);
  }

  return result;
}

uint64_t sub_10074B1A0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_10001F680();
  v5 = sub_10014986C(v3, v4, asc_100A7EE60);
  sub_100023108(v5, v6);

  return *(v2 + 37);
}

uint64_t sub_10074B220(uint64_t result, uint64_t a2)
{
  if (*(v2 + 37) == (result & 1))
  {
    *(v2 + 37) = result & 1;
  }

  else
  {
    swift_getKeyPath();
    sub_100028AB8();
    __chkstk_darwin(v3);
    sub_100010A1C();
    sub_1000D42E4(v4, v5, v6);
  }

  return result;
}

uint64_t sub_10074B2A8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_10001F680();
  v5 = sub_10014986C(v3, v4, asc_100A7EE60);
  sub_100023108(v5, v6);

  return *(v2 + 38);
}

uint64_t sub_10074B328(uint64_t result, uint64_t a2)
{
  if (*(v2 + 38) == (result & 1))
  {
    *(v2 + 38) = result & 1;
  }

  else
  {
    swift_getKeyPath();
    sub_100028AB8();
    __chkstk_darwin(v3);
    sub_100010A1C();
    sub_1000D42E4(v4, v5, v6);
  }

  return result;
}

uint64_t sub_10074B3B0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_10001F680();
  v5 = sub_10014986C(v3, v4, asc_100A7EE60);
  sub_100023108(v5, v6);

  return *(v2 + 39);
}

uint64_t sub_10074B430(uint64_t result, uint64_t a2)
{
  if (*(v2 + 39) == (result & 1))
  {
    *(v2 + 39) = result & 1;
  }

  else
  {
    swift_getKeyPath();
    sub_100028AB8();
    __chkstk_darwin(v3);
    sub_100010A1C();
    sub_1000D42E4(v4, v5, v6);
  }

  return result;
}

uint64_t sub_10074B4B8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_10001F680();
  v5 = sub_10014986C(v3, v4, asc_100A7EE60);
  sub_100023108(v5, v6);

  return *(v2 + 40);
}

uint64_t sub_10074B538(uint64_t result, uint64_t a2)
{
  if (*(v2 + 40) == (result & 1))
  {
    *(v2 + 40) = result & 1;
  }

  else
  {
    swift_getKeyPath();
    sub_100028AB8();
    __chkstk_darwin(v3);
    sub_100010A1C();
    sub_1000D42E4(v4, v5, v6);
  }

  return result;
}

void sub_10074B5C0()
{
  if (qword_100CA27B0 != -1)
  {
LABEL_16:
    sub_10000F960(&qword_100CA27B0);
  }

  v0 = type metadata accessor for Logger();
  sub_10000703C(v0, qword_100D90D68);

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = sub_100018264();
    v4 = sub_1000205BC();
    v23[0] = v4;
    *v3 = 136315138;
    sub_1001947EC(v4, v5);
    sub_10022C350(&qword_100CD6210, &qword_100A7EEE0);
    v6 = String.init<A>(describing:)();
    v8 = sub_100078694(v6, v7, v23);

    *(v3 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v1, v2, "Picking tip, tipQueue=%s", v3, 0xCu);
    sub_100006F14(v4);
    sub_100003884(v4);
    sub_100003884(v3);
  }

  sub_1001947EC(v9, v10);
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *(v11 + 16);
    while (1)
    {
      if (v14 == v13)
      {

        return;
      }

      if (v13 >= *(v12 + 16))
      {
        __break(1u);
        goto LABEL_16;
      }

      v15 = *(v12 + v13 + 32);
      LOBYTE(v23[0]) = *(v12 + v13 + 32);
      if (sub_10074C684(v23))
      {
        break;
      }

      ++v13;
    }

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = sub_100018264();
      v19 = sub_1000205BC();
      v23[0] = v19;
      *v18 = 136315138;
      v20 = String.init<A>(describing:)();
      v22 = sub_100078694(v20, v21, v23);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v16, v17, "first tip from priority queue =%s", v18, 0xCu);
      sub_100006F14(v19);
      sub_10000FC14();
      sub_100003884(v18);
    }

    sub_1008C1D54(v15);
  }
}

void sub_10074B838(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 41) == (a1 & 1))
  {
    *(v2 + 41) = a1 & 1;
    sub_100194940(a1, a2);
  }

  else
  {
    swift_getKeyPath();
    sub_100028AB8();
    __chkstk_darwin(v3);
    sub_100010A1C();
    sub_1000D42E4(v4, v5, v6);
  }
}

uint64_t sub_10074B8F0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 40) = a5;
  *(v5 + 145) = a4;
  v6 = type metadata accessor for ContinuousClock();
  *(v5 + 48) = v6;
  *(v5 + 56) = *(v6 - 8);
  *(v5 + 64) = swift_task_alloc();
  v7 = type metadata accessor for Tips.ConfigurationOption.DatastoreLocation();
  *(v5 + 72) = v7;
  *(v5 + 80) = *(v7 - 8);
  *(v5 + 88) = swift_task_alloc();
  v8 = type metadata accessor for Tips.ConfigurationOption.DisplayFrequency();
  *(v5 + 96) = v8;
  *(v5 + 104) = *(v8 - 8);
  *(v5 + 112) = swift_task_alloc();

  return _swift_task_switch(sub_10074BA6C, 0, 0);
}

uint64_t sub_10074BA6C()
{
  if (qword_100CA27B0 != -1)
  {
    sub_10000F960(&qword_100CA27B0);
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 120) = sub_10000703C(v1, qword_100D90D68);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (sub_1000D3F9C(v3))
  {
    *sub_10000389C() = 0;
    sub_10012CDE4(&_mh_execute_header, v4, v3, "Configuring tips");
    sub_10000FC14();
  }

  v5 = *(v0 + 145);

  sub_10022C350(&qword_100CD6208, &qword_100A7EEA8);
  type metadata accessor for Tips.ConfigurationOption();
  *(swift_allocObject() + 16) = xmmword_100A2D320;
  if (v5 == 1)
  {
    static Tips.ConfigurationOption.DisplayFrequency.immediate.getter();
  }

  else
  {
    static Tips.ConfigurationOption.DisplayFrequency.daily.getter();
  }

  v6 = *(v0 + 104);
  v7 = *(v0 + 112);
  v9 = *(v0 + 88);
  v8 = *(v0 + 96);
  v11 = *(v0 + 72);
  v10 = *(v0 + 80);
  static Tips.ConfigurationOption.displayFrequency(_:)();
  (*(v6 + 8))(v7, v8);
  static Tips.ConfigurationOption.DatastoreLocation.applicationDefault.getter();
  static Tips.ConfigurationOption.datastoreLocation(_:)();
  (*(v10 + 8))(v9, v11);
  static Tips.configure(_:)();

  sub_10074C190(0);
  sub_10074C190(1);
  sub_10074C190(2);
  sub_10074C190(3);
  sub_10074C190(4);
  sub_10074C190(5);
  if (qword_100CA20D0 != -1)
  {
    swift_once();
  }

  v12 = sub_10022C350(&qword_100CA35A0, &unk_100A2FA90);
  sub_10000703C(v12, qword_100D8FE28);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.getter();
  swift_endAccess();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (sub_1000D3F9C(v14))
  {
    v15 = sub_10000389C();
    *v15 = 0;
    sub_10000FA14(&_mh_execute_header, v16, v17, "Started observing tip statuses");
    sub_100003884(v15);
  }

  static Clock<>.continuous.getter();
  v18 = swift_task_alloc();
  *(v0 + 128) = v18;
  *v18 = v0;
  v18[1] = sub_10074BEAC;
  sub_10000E700();

  return sub_10074D6D0();
}