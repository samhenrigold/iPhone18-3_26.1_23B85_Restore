uint64_t sub_1003A16B8(uint64_t a1)
{
  sub_1001F1160(&qword_100ADF8E8, &qword_10081FB40);
  sub_1003A202C();
  return sub_10079DFC4();
}

uint64_t sub_1003A1754@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for GetSampleActionItem(0);
  sub_1003A2170(&qword_100AD1EE0, type metadata accessor for GetSampleActionItem, &unk_10081FA48);
  sub_100797094();
  sub_100206ECC();
  result = sub_10079D5D4();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1003A1800@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for GetSampleActionItem(0);
  sub_1003A2170(&qword_100AD1EE0, type metadata accessor for GetSampleActionItem, &unk_10081FA48);
  result = sub_100797084();
  if (result)
  {
    result = sub_10079DF04();
  }

  *a1 = result;
  return result;
}

uint64_t sub_1003A18E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1001F1160(&qword_100ADF890, &qword_10081FAE0);
  a2[3] = v5;
  a2[4] = sub_1003A1E4C();
  v6 = sub_1002256EC(a2);
  sub_1001F1160(&qword_100ADF8C0, &qword_10081FAF8);
  sub_1001F1160(&qword_100ADF8C8, &qword_10081FB00);
  sub_100005920(&qword_100ADF8D0, &qword_100ADF8C0, &qword_10081FAF8, &protocol conformance descriptor for Label<A, B>);
  sub_1003A1F30();
  sub_10079D534();
  KeyPath = swift_getKeyPath();
  sub_100009864(v2 + *(a1 + 36), v10);
  v8 = (v6 + *(v5 + 36));
  sub_1003A1FAC(v10, (v8 + 1));
  *v8 = KeyPath;
  return sub_100007840(v10, &qword_100ADF8E0, &qword_10081FB38);
}

uint64_t sub_1003A1A64()
{
  sub_1007A26F4();
  *(v0 + 16) = sub_1007A26E4();
  v2 = sub_1007A2694();

  return _swift_task_switch(sub_1003A1AF8, v2, v1);
}

uint64_t sub_1003A1AF8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003A1B58@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_100009864(a1, a6);
  sub_100009864(a2, a6 + 40);
  sub_100009864(a4, a6 + 88);
  v12 = (a6 + *(a5 + 36));
  v12[3] = sub_1007978D4();
  v12[4] = sub_1003A2170(&qword_100ADF888, &type metadata accessor for ContextActionItemCoverProvider, &protocol conformance descriptor for ContextActionItemCoverProvider);
  sub_1002256EC(v12);
  sub_1007978C4();
  sub_1000074E0(a4);
  sub_1000074E0(a2);
  sub_1000074E0(a1);
  v13 = *(a5 + 32);
  v14 = enum case for ContextActionType.getSample(_:);
  v15 = sub_100797144();
  result = (*(*(v15 - 8) + 104))(a6 + v13, v14, v15);
  *(a6 + 80) = a3;
  return result;
}

uint64_t sub_1003A1C88(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1002C4C90;

  return AsyncContextActionItem.asyncSubMenu.getter(a1, a2);
}

uint64_t sub_1003A1D54@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = *(a6 + 32);
  v15 = enum case for ContextActionType.getSample(_:);
  v16 = sub_100797144();
  (*(*(v16 - 8) + 104))(a7 + v14, v15, v16);
  sub_1000077C0(a1, a7);
  sub_1000077C0(a2, a7 + 40);
  *(a7 + 80) = a3;
  sub_1000077C0(a4, a7 + 88);
  v17 = a7 + *(a6 + 36);

  return sub_1000077C0(a5, v17);
}

unint64_t sub_1003A1E4C()
{
  result = qword_100ADF898;
  if (!qword_100ADF898)
  {
    sub_1001F1234(&qword_100ADF890, &qword_10081FAE0);
    sub_100005920(&qword_100ADF8A0, &qword_100ADF8A8, &qword_10081FAE8, &protocol conformance descriptor for Menu<A, B>);
    sub_100005920(&qword_100ADF8B0, &qword_100ADF8B8, &qword_10081FAF0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADF898);
  }

  return result;
}

unint64_t sub_1003A1F30()
{
  result = qword_100ADF8D8;
  if (!qword_100ADF8D8)
  {
    sub_1001F1234(&qword_100ADF8C8, &qword_10081FB00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADF8D8);
  }

  return result;
}

uint64_t sub_1003A1FAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100ADF8E0, &qword_10081FB38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1003A202C()
{
  result = qword_100ADF8F0;
  if (!qword_100ADF8F0)
  {
    sub_1001F1234(&qword_100ADF8E8, &qword_10081FB40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADF8F0);
  }

  return result;
}

uint64_t sub_1003A20A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003A2110(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003A2170(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1003A21B8()
{
  v0 = sub_100796044();
  sub_100009A38(v0, qword_100B23258);
  v1 = sub_100008B98(v0, qword_100B23258);
  v2 = enum case for ShortcutTileColor.tangerine(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_1003A2244@<X0>(uint64_t a1@<X8>)
{
  if (qword_100AD14C8 != -1)
  {
    swift_once();
  }

  v2 = sub_100796044();
  v3 = sub_100008B98(v2, qword_100B23258);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1003A22FC()
{
  v169 = sub_1001F1160(&qword_100ADF910, &qword_10081FBF0);
  __chkstk_darwin(v169);
  v179 = &v153 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v178 = &v153 - v2;
  __chkstk_darwin(v3);
  v177 = &v153 - v4;
  __chkstk_darwin(v5);
  v176 = &v153 - v6;
  __chkstk_darwin(v7);
  v175 = &v153 - v8;
  __chkstk_darwin(v9);
  v174 = &v153 - v10;
  __chkstk_darwin(v11);
  v173 = &v153 - v12;
  __chkstk_darwin(v13);
  v172 = &v153 - v14;
  __chkstk_darwin(v15);
  v171 = &v153 - v16;
  __chkstk_darwin(v17);
  v170 = &v153 - v18;
  __chkstk_darwin(v19);
  v168 = &v153 - v20;
  __chkstk_darwin(v21);
  v167 = &v153 - v22;
  v192 = sub_1007967F4();
  v196 = *(v192 - 8);
  __chkstk_darwin(v192);
  v190 = (&v153 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v189 = sub_100796CF4();
  v195 = *(v189 - 8);
  __chkstk_darwin(v189);
  v188 = &v153 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v186 = &v153 - v26;
  v187 = sub_1007A21D4();
  v200 = *(v187 - 8);
  __chkstk_darwin(v187);
  v184 = &v153 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v183 = &v153 - v29;
  v30 = sub_100796814();
  __chkstk_darwin(v30 - 8);
  v185 = &v153 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = sub_100795B94();
  v206 = *(v202 - 8);
  __chkstk_darwin(v202);
  v199 = &v153 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1001F1160(&qword_100ADF918, &qword_10081FBF8);
  __chkstk_darwin(v33);
  v164 = &v153 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v163 = (&v153 - v36);
  __chkstk_darwin(v37);
  v162 = &v153 - v38;
  __chkstk_darwin(v39);
  v160 = &v153 - v40;
  __chkstk_darwin(v41);
  v159 = &v153 - v42;
  __chkstk_darwin(v43);
  v158 = (&v153 - v44);
  __chkstk_darwin(v45);
  v157 = (&v153 - v46);
  __chkstk_darwin(v47);
  v156 = &v153 - v48;
  __chkstk_darwin(v49);
  v155 = &v153 - v50;
  __chkstk_darwin(v51);
  v165 = (&v153 - v52);
  __chkstk_darwin(v53);
  v154 = &v153 - v54;
  __chkstk_darwin(v55);
  v191 = sub_100795C74();
  v194 = *(v191 - 8);
  __chkstk_darwin(v191);
  v182 = &v153 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(v217, 0, sizeof(v217));
  *&v211 = sub_100213FC4(0, v217);
  *(&v211 + 1) = v57;
  *&v212 = v58;
  sub_1001F1160(&qword_100ADF920, &qword_10081FC00);
  v59 = *(sub_1001F1160(&qword_100ADF928, &qword_10081FC08) - 8);
  v60 = *(v59 + 72);
  v61 = (*(v59 + 80) + 32) & ~*(v59 + 80);
  v62 = swift_allocObject();
  v166 = v62;
  *(v62 + 16) = xmmword_10081FB80;
  v63 = v62 + v61;
  sub_100214EF0();
  v180 = 0xD000000000000011;
  sub_100795AE4();
  v201 = 0xD000000000000014;
  sub_100795AE4();
  v181 = 0xD000000000000010;
  sub_100795AE4();
  v161 = 0xD000000000000013;
  sub_100795AE4();
  sub_100795AE4();
  v198 = 0xD000000000000018;
  sub_100795AE4();
  v193 = 0xD000000000000015;
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  v197 = v63;
  sub_100795AE4();
  sub_100795AE4();
  v153 = v63 + 12 * v60;
  sub_100795B14();
  v218._object = 0x80000001008CF6D0;
  v218._countAndFlagsBits = 0xD000000000000015;
  sub_100795B04(v218);
  v203 = enum case for AppShortcutPhraseToken.applicationName(_:);
  v64 = v206;
  v65 = *(v206 + 104);
  v205 = v206 + 104;
  v207 = v65;
  v66 = v199;
  v67 = v202;
  v65(v199);
  sub_100795AF4();
  v68 = *(v64 + 8);
  v206 = v64 + 8;
  v68(v66, v67);
  v219._countAndFlagsBits = 0;
  v219._object = 0xE000000000000000;
  sub_100795B04(v219);
  sub_100795B24();
  v69 = v197;
  v153 = v197 + 13 * v60;
  sub_100795B14();
  v220._object = 0x80000001008CF6F0;
  v220._countAndFlagsBits = v198;
  sub_100795B04(v220);
  v70 = v203;
  v71 = v202;
  v207(v66, v203, v202);
  sub_100795AF4();
  v68(v66, v71);
  v204 = v68;
  v221._countAndFlagsBits = 0;
  v221._object = 0xE000000000000000;
  sub_100795B04(v221);
  sub_100795B24();
  v154 = (v69 + 14 * v60);
  sub_100795B14();
  v222._object = 0x80000001008CF710;
  v222._countAndFlagsBits = v201;
  sub_100795B04(v222);
  v72 = v70;
  v73 = v207;
  v207(v66, v72, v71);
  sub_100795AF4();
  v68(v66, v71);
  v223._countAndFlagsBits = 0;
  v223._object = 0xE000000000000000;
  sub_100795B04(v223);
  sub_100795B24();
  v154 = (16 * v60);
  v153 = 15 * v60;
  v74 = v60;
  sub_100795B14();
  v224._countAndFlagsBits = 0xD000000000000017;
  v165 = 0xD000000000000017;
  v224._object = 0x80000001008CF730;
  sub_100795B04(v224);
  v73(v66, v203, v71);
  sub_100795AF4();
  v75 = v204;
  v204(v66, v71);
  v225._countAndFlagsBits = 0;
  v225._object = 0xE000000000000000;
  sub_100795B04(v225);
  sub_100795B24();
  sub_100795B14();
  v226._object = 0x80000001008CF750;
  v226._countAndFlagsBits = 0xD000000000000019;
  sub_100795B04(v226);
  v76 = v203;
  v207(v66, v203, v71);
  sub_100795AF4();
  v75(v66, v71);
  v227._countAndFlagsBits = 0;
  v227._object = 0xE000000000000000;
  sub_100795B04(v227);
  v77 = v154;
  sub_100795B24();
  v156 = &v77[v60];
  sub_100795B14();
  v228._countAndFlagsBits = 0xD00000000000001CLL;
  v228._object = 0x80000001008CF770;
  sub_100795B04(v228);
  v78 = v76;
  v79 = v76;
  v80 = v202;
  v207(v66, v79, v202);
  sub_100795AF4();
  v75(v66, v80);
  v229._countAndFlagsBits = 0;
  v229._object = 0xE000000000000000;
  sub_100795B04(v229);
  v81 = v197;
  sub_100795B24();
  v157 = (v81 + 18 * v74);
  sub_100795B14();
  v230._object = 0x80000001008CF790;
  v230._countAndFlagsBits = 0xD000000000000019;
  sub_100795B04(v230);
  v207(v66, v78, v80);
  sub_100795AF4();
  v204(v66, v80);
  v231._countAndFlagsBits = 0;
  v231._object = 0xE000000000000000;
  sub_100795B04(v231);
  sub_100795B24();
  v158 = (v81 + 19 * v74);
  sub_100795B14();
  v232._object = 0x80000001008CF7B0;
  v232._countAndFlagsBits = v198;
  sub_100795B04(v232);
  v82 = v202;
  v207(v66, v78, v202);
  sub_100795AF4();
  v204(v66, v82);
  v233._countAndFlagsBits = 0;
  v233._object = 0xE000000000000000;
  sub_100795B04(v233);
  sub_100795B24();
  v159 = (v81 + 20 * v74);
  sub_100795B14();
  v234._countAndFlagsBits = 0xD00000000000001DLL;
  v234._object = 0x80000001008CF7D0;
  sub_100795B04(v234);
  v83 = v203;
  v84 = v82;
  v85 = v82;
  v86 = v207;
  v207(v66, v203, v85);
  sub_100795AF4();
  v204(v66, v84);
  v235._countAndFlagsBits = 0;
  v235._object = 0xE000000000000000;
  sub_100795B04(v235);
  sub_100795B24();
  v160 = (v81 + 21 * v74);
  sub_100795B14();
  v236._countAndFlagsBits = 0xD000000000000027;
  v236._object = 0x80000001008CF7F0;
  sub_100795B04(v236);
  v87 = v83;
  v88 = v202;
  v86(v66, v87, v202);
  sub_100795AF4();
  v204(v66, v88);
  v237._countAndFlagsBits = 0;
  v237._object = 0xE000000000000000;
  sub_100795B04(v237);
  sub_100795B24();
  v162 = (v81 + 22 * v74);
  sub_100795B14();
  v238._countAndFlagsBits = 0xD00000000000001DLL;
  v238._object = 0x80000001008CF820;
  sub_100795B04(v238);
  v89 = v202;
  v207(v66, v203, v202);
  sub_100795AF4();
  v90 = v204;
  v204(v66, v89);
  v239._countAndFlagsBits = 0;
  v239._object = 0xE000000000000000;
  sub_100795B04(v239);
  sub_100795B24();
  v163 = (v81 + 23 * v74);
  sub_100795B14();
  v240._object = 0x80000001008CF840;
  v240._countAndFlagsBits = v181;
  sub_100795B04(v240);
  v91 = v202;
  v207(v66, v203, v202);
  sub_100795AF4();
  v90(v66, v91);
  v241._countAndFlagsBits = 0;
  v241._object = 0xE000000000000000;
  sub_100795B04(v241);
  sub_100795B24();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  v155 = 0xD000000000000016;
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  v92 = v183;
  sub_1007A2154();
  v93 = v186;
  sub_100796C94();
  v94 = *(v200 + 16);
  v164 = (v200 + 16);
  v165 = v94;
  v95 = v187;
  v94(v184, v92, v187);
  v96 = v195;
  v97 = *(v195 + 16);
  v162 = (v195 + 16);
  v163 = v97;
  v98 = v189;
  v97(v188, v93, v189);
  v161 = type metadata accessor for BundleFinder();
  v99 = v190;
  *v190 = v161;
  LODWORD(v159) = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v100 = *(v196 + 104);
  v196 += 104;
  v160 = v100;
  (v100)(v99);
  sub_100796834();
  v101 = *(v96 + 8);
  v195 = v96 + 8;
  v158 = v101;
  v101(v93, v98);
  v102 = *(v200 + 8);
  v200 += 8;
  v157 = v102;
  v102(v92, v95);
  v103 = v182;
  sub_100795C64();
  v181 = sub_100795B44();
  v104 = *(v194 + 8);
  v194 += 8;
  v166 = v104;
  v104(v103, v191);
  v216 = 0;
  v214 = 0u;
  v215 = 0u;
  v213 = 0u;
  v212 = 0u;
  v211 = 0u;
  v208 = sub_1006FD2E4(0, &v211);
  v209 = v105;
  v210 = v106;
  sub_1001F1160(&qword_100ADF930, &qword_10081FC10);
  v107 = *(sub_1001F1160(&qword_100ADF938, &qword_10081FC18) - 8);
  v108 = *(v107 + 72);
  v109 = (*(v107 + 80) + 32) & ~*(v107 + 80);
  v110 = swift_allocObject();
  v156 = v110;
  *(v110 + 16) = xmmword_10081FB90;
  v111 = v110 + v109;
  v201 = v111;
  sub_1003A5654();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  sub_100795AE4();
  v198 = v111 + 12 * v108;
  sub_100795B14();
  v242._countAndFlagsBits = 0xD00000000000001ALL;
  v242._object = 0x80000001008D0400;
  sub_100795B04(v242);
  v112 = v199;
  v113 = v203;
  v114 = v202;
  v115 = v207;
  v207(v199, v203, v202);
  sub_100795AF4();
  v204(v112, v114);
  v243._countAndFlagsBits = 0;
  v243._object = 0xE000000000000000;
  sub_100795B04(v243);
  sub_100795B24();
  v198 = v201 + 13 * v108;
  sub_100795B14();
  v244._countAndFlagsBits = 0xD00000000000001DLL;
  v244._object = 0x80000001008D0420;
  sub_100795B04(v244);
  v116 = v199;
  v115(v199, v113, v114);
  sub_100795AF4();
  v117 = v204;
  v204(v116, v114);
  v245._countAndFlagsBits = 0;
  v245._object = 0xE000000000000000;
  sub_100795B04(v245);
  sub_100795B24();
  v198 = v201 + 14 * v108;
  sub_100795B14();
  v246._object = 0x80000001008D0440;
  v246._countAndFlagsBits = 0xD000000000000019;
  sub_100795B04(v246);
  v118 = v203;
  v207(v116, v203, v114);
  sub_100795AF4();
  v117(v116, v114);
  v247._countAndFlagsBits = 0;
  v247._object = 0xE000000000000000;
  sub_100795B04(v247);
  sub_100795B24();
  v197 = v108;
  v198 = 16 * v108;
  sub_100795B14();
  v248._countAndFlagsBits = 0xD00000000000001CLL;
  v248._object = 0x80000001008D0460;
  sub_100795B04(v248);
  v119 = v207;
  v207(v116, v118, v114);
  sub_100795AF4();
  v120 = v204;
  v204(v116, v114);
  v249._countAndFlagsBits = 0;
  v249._object = 0xE000000000000000;
  sub_100795B04(v249);
  sub_100795B24();
  sub_100795B14();
  v250._countAndFlagsBits = 0xD00000000000001ELL;
  v250._object = 0x80000001008D0480;
  sub_100795B04(v250);
  v121 = v202;
  v119(v116, v203, v202);
  sub_100795AF4();
  v120(v116, v121);
  v251._countAndFlagsBits = 0;
  v251._object = 0xE000000000000000;
  sub_100795B04(v251);
  v122 = v198;
  sub_100795B24();
  v198 = v122 + v197;
  sub_100795B14();
  v252._countAndFlagsBits = 0xD000000000000021;
  v252._object = 0x80000001008D04A0;
  sub_100795B04(v252);
  v123 = v203;
  v124 = v121;
  v207(v116, v203, v121);
  v125 = v116;
  sub_100795AF4();
  v120(v116, v121);
  v253._countAndFlagsBits = 0;
  v253._object = 0xE000000000000000;
  sub_100795B04(v253);
  v126 = v201;
  sub_100795B24();
  v127 = v197;
  v198 = v126 + 18 * v197;
  sub_100795B14();
  v254._countAndFlagsBits = 0xD00000000000001ELL;
  v254._object = 0x80000001008D04D0;
  sub_100795B04(v254);
  v207(v125, v123, v121);
  sub_100795AF4();
  v204(v125, v121);
  v255._countAndFlagsBits = 0;
  v255._object = 0xE000000000000000;
  sub_100795B04(v255);
  sub_100795B24();
  v128 = v201;
  v198 = v201 + 19 * v127;
  sub_100795B14();
  v256._countAndFlagsBits = 0xD00000000000001DLL;
  v256._object = 0x80000001008D04F0;
  sub_100795B04(v256);
  v129 = v207;
  v207(v125, v203, v124);
  sub_100795AF4();
  v130 = v204;
  v204(v125, v124);
  v257._countAndFlagsBits = 0;
  v257._object = 0xE000000000000000;
  sub_100795B04(v257);
  sub_100795B24();
  v198 = v128 + 20 * v127;
  sub_100795B14();
  v258._countAndFlagsBits = 0xD000000000000022;
  v258._object = 0x80000001008D0510;
  sub_100795B04(v258);
  v131 = v199;
  v132 = v203;
  v129(v199, v203, v124);
  sub_100795AF4();
  v130(v131, v124);
  v259._countAndFlagsBits = 0;
  v259._object = 0xE000000000000000;
  sub_100795B04(v259);
  sub_100795B24();
  v133 = v201;
  v134 = v197;
  v198 = v201 + 21 * v197;
  sub_100795B14();
  v260._countAndFlagsBits = 0xD000000000000031;
  v260._object = 0x80000001008D0540;
  sub_100795B04(v260);
  v135 = v132;
  v136 = v202;
  v137 = v207;
  v207(v131, v135, v202);
  sub_100795AF4();
  v138 = v136;
  v139 = v204;
  v204(v131, v138);
  v261._countAndFlagsBits = 0;
  v261._object = 0xE000000000000000;
  sub_100795B04(v261);
  sub_100795B24();
  v198 = v133 + 22 * v134;
  sub_100795B14();
  v262._countAndFlagsBits = 0xD000000000000027;
  v262._object = 0x80000001008D0580;
  sub_100795B04(v262);
  v140 = v203;
  v141 = v202;
  v137(v131, v203, v202);
  sub_100795AF4();
  v139(v131, v141);
  v263._countAndFlagsBits = 0;
  v263._object = 0xE000000000000000;
  sub_100795B04(v263);
  sub_100795B24();
  sub_100795B14();
  v264._object = 0x80000001008D05B0;
  v264._countAndFlagsBits = v193;
  sub_100795B04(v264);
  v207(v131, v140, v141);
  sub_100795AF4();
  v204(v131, v141);
  v265._countAndFlagsBits = 0;
  v265._object = 0xE000000000000000;
  sub_100795B04(v265);
  sub_100795B24();
  v142 = v183;
  sub_1007A2154();
  v143 = v186;
  sub_100796C94();
  v144 = v187;
  v165(v184, v142, v187);
  v145 = v143;
  v146 = v189;
  v163(v188, v143, v189);
  v147 = v190;
  *v190 = v161;
  (v160)(v147, v159, v192);
  sub_100796834();
  v158(v145, v146);
  v157(v142, v144);
  v148 = v182;
  sub_100795C64();
  v149 = sub_100795B44();
  v166(v148, v191);
  sub_1001F1160(&qword_100ADF948, &unk_10081FC20);
  v150 = swift_allocObject();
  *(v150 + 16) = xmmword_10080EFF0;
  *(v150 + 32) = v181;
  *(v150 + 40) = v149;
  v151 = sub_100795B34();

  return v151;
}

unint64_t sub_1003A5654()
{
  result = qword_100ADF940;
  if (!qword_100ADF940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADF940);
  }

  return result;
}

uint64_t sub_1003A56A8(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  if (result < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = sub_1007A23C4();
  if (v1)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  return sub_1007A2344();
}

void sub_1003A5754()
{
  v1 = v0;
  v2 = sub_1001F1160(&unk_100ADFA90, &qword_100833C20);
  v15 = *(v2 - 8);
  v16 = v2;
  __chkstk_darwin(v2);
  v4 = &v14 - v3;
  v5 = sub_1007A2E74();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v0 + OBJC_IVAR____TtC5Books18SidebarDataManager_selectedItemReceiver);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1001F1160(&unk_100AECA30, &unk_1008130F0);
  v14 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_100005920(&unk_100ADE5A0, &unk_100AECA30, &unk_1008130F0, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_10079BB04();

  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  v9 = [objc_opt_self() defaultCenter];
  sub_1007A2E84();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005B5C();
  sub_10079BB04();

  (*(v6 + 8))(v8, v5);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  v17 = *(v1 + OBJC_IVAR____TtC5Books18SidebarDataManager_standardItemsReceiver);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1001F1160(&unk_100ADFAA0, &qword_100813118);
  sub_100005920(&qword_100AD6A68, &unk_100ADFAA0, &qword_100813118, v14);
  sub_10079BB04();

  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  if (qword_100AD1700 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v14 = sub_1001F1160(&qword_100ADFAB0, &qword_10081FCC0);
  sub_10079B974();
  swift_endAccess();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100005920(&qword_100ADFAB8, &unk_100ADFA90, &qword_100833C20, &protocol conformance descriptor for Published<A>.Publisher);
  v10 = v16;
  sub_10079BB04();

  v11 = *(v15 + 8);
  v11(v4, v10);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  swift_beginAccess();
  sub_10079B974();
  swift_endAccess();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10079BB04();

  v11(v4, v10);
  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();

  v12 = [objc_opt_self() sharedProvider];
  [v12 addObserver:v1 accountTypes:1];

  sub_10079AE34();
  v13 = sub_10079AE04();
  sub_10079ADE4();
}

void sub_1003A5DC4(void **a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (v2)
    {
      v5 = v2;

      if (([v5 isSearch] & 1) == 0 && !objc_msgSend(v5, "isDefaultCollection"))
      {
        [v5 isCustomCollection];
      }

      sub_10079B8C4();
    }
  }
}

double sub_1003A5EE8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_100796584();
    if (v5)
    {
      v6 = v5;
      *&v14 = 0x6554686372616573;
      *(&v14 + 1) = 0xEA00000000007478;
      sub_1007A36B4();
      if (*(v6 + 16))
      {
        v7 = sub_10000E2A4(&v12);
        if (v8)
        {
          sub_100007484(*(v6 + 56) + 32 * v7, &v14);
          sub_10002899C(&v12);

          if (*(&v15 + 1))
          {
            v9 = swift_dynamicCast();
            v10 = v12;
            if (v9)
            {
              v11 = v13;
            }

            else
            {
              v10 = 0;
              v11 = 0;
            }

            goto LABEL_12;
          }

LABEL_11:
          sub_100007840(&v14, &unk_100AD5B40, &unk_100811300);
          v10 = 0;
          v11 = 0;
LABEL_12:
          v12 = v10;
          v13 = v11;
          sub_10079B8C4();

          return result;
        }
      }

      sub_10002899C(&v12);
    }

    v14 = 0u;
    v15 = 0u;
    goto LABEL_11;
  }

  return result;
}

void sub_1003A6054(unint64_t *a1, uint64_t a2)
{
  v3 = sub_1001F1160(&qword_100ADFAC0, &qword_10081FCC8);
  __chkstk_darwin(v3 - 8);
  v4 = sub_1001F1160(&qword_100ADFAC8, &unk_10081FCD0);
  __chkstk_darwin(v4 - 8);
  v6 = &v109 - v5;
  v7 = sub_100796DC4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v109 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v110 = Strong;
  v130 = v11;

  if (_UISolariumEnabled())
  {
    sub_1003A7498(v11);
    sub_100796DB4();
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_100007840(v6, &qword_100ADFAC8, &unk_10081FCD0);
    }

    else
    {
      (*(v8 + 32))(v10, v6, v7);
      sub_1001F1160(&qword_100AEB180, &unk_100813120);
      sub_100005920(&qword_100ADFB00, &qword_100AEB180, &unk_100813120, &protocol conformance descriptor for [A]);
      sub_1007A2104();
      (*(v8 + 8))(v10, v7);
    }
  }

  v14 = v130;
  if (v130 >> 62)
  {
LABEL_153:
    v107 = v14;
    v15 = sub_1007A38D4();
    v14 = v107;
    if (v15)
    {
      goto LABEL_8;
    }

LABEL_154:
    v17 = _swiftEmptyArrayStorage;
LABEL_155:

    *&v126 = v17;
    sub_1001F1160(&qword_100ADFAE8, &unk_10081FCE0);
    sub_100005920(&unk_100ADFAF0, &qword_100ADFAE8, &unk_10081FCE0, &protocol conformance descriptor for [A]);
    if (sub_1007A28A4())
    {
      v108 = v110;
      *&v126 = v17;
      sub_10079B8C4();
    }

    else
    {
    }

    return;
  }

  v15 = *((v130 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
    goto LABEL_154;
  }

LABEL_8:
  v16 = 0;
  v115 = v14 & 0xFFFFFFFFFFFFFF8;
  v116 = v14 & 0xC000000000000001;
  v17 = _swiftEmptyArrayStorage;
  *&v13 = 136315138;
  v111 = v13;
  v113 = v15;
  v114 = v14;
  while (1)
  {
    if (v116)
    {
      v14 = sub_1007A3784();
    }

    else
    {
      if (v16 >= *(v115 + 16))
      {
        goto LABEL_151;
      }

      v14 = *(v14 + 8 * v16 + 32);
    }

    v18 = v14;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
      goto LABEL_153;
    }

    v19 = [v14 isSearch];
    v120 = v16 + 1;
    if (v19)
    {
      break;
    }

    v30 = [v18 isDefaultCollection];
    v31 = &v18[OBJC_IVAR___BKRootBarItem_identifier];
    v29 = *&v18[OBJC_IVAR___BKRootBarItem_identifier + 8];
    v119 = *&v18[OBJC_IVAR___BKRootBarItem_identifier];

    if ((v30 & 1) == 0)
    {
      RootBarItem.title.getter(v150);
      v27 = v152;
      v118 = v151;

      sub_100007840(v150, &qword_100ADFAD0, &unk_100818CE0);
      v38 = *&v18[OBJC_IVAR___BKRootBarItem_iconNameOverride + 8];
      if (v38)
      {
        v39 = *&v18[OBJC_IVAR___BKRootBarItem_iconNameOverride];
        swift_bridgeObjectRetain_n();

        v40 = 0uLL;
        v35 = v39;
        v36 = v38;
        goto LABEL_22;
      }

      v51 = *v31;
      v52 = v31[1];
      v53 = *&v18[OBJC_IVAR___BKRootBarItem_countryCode + 8];
      if (v53 && (*&v18[OBJC_IVAR___BKRootBarItem_countryCode] == 28778 ? (v54 = v53 == 0xE200000000000000) : (v54 = 0), (v54 || (sub_1007A3AB4() & 1) != 0) && (v51 == 0x7972617262696CLL ? (v55 = v52 == 0xE700000000000000) : (v55 = 0), v55 || (sub_1007A3AB4() & 1) != 0)))
      {
        if (qword_100AD16F8 != -1)
        {
          swift_once();
        }

        v126 = xmmword_100AE5618;
        v127 = *&qword_100AE5628;
        v128 = xmmword_100AE5638;
        v129 = unk_100AE5648;
        v38 = *(&xmmword_100AE5618 + 1);
        v39 = xmmword_100AE5618;
        v36 = unk_100AE5630;
        v35 = qword_100AE5628;
        v117 = unk_100AE5648;
        v112 = xmmword_100AE5638;
        sub_1003A8518(&v126, &v122);
LABEL_139:

        v41 = v117;
        v40 = v112;
      }

      else
      {
        *&v117 = v17;
        *&v126 = v51;
        *(&v126 + 1) = v52;
        *&v122 = 0x3A6D6F74737563;
        *(&v122 + 1) = 0xE700000000000000;
        sub_1003A84C4();
        sub_100367368();
        if (sub_1007A20A4())
        {
          *&v126 = v51;
          *(&v126 + 1) = v52;

          v75 = sub_1007A23A4();
          if (v75)
          {
            if (v75 < 0)
            {
              goto LABEL_161;
            }

            sub_1007A23C4();
            v17 = v117;
            if (v76)
            {
              goto LABEL_164;
            }

            sub_1007A2344();
          }

          else
          {
            v17 = v117;
          }

          v101 = 14;
        }

        else
        {
          if (qword_100AD1688 != -1)
          {
            swift_once();
          }

          v91 = sub_10079ACE4();
          sub_100008B98(v91, qword_100AE4D38);

          v92 = sub_10079ACC4();
          v93 = sub_1007A29A4();

          if (os_log_type_enabled(v92, v93))
          {
            v94 = swift_slowAlloc();
            LODWORD(v112) = v93;
            v95 = v94;
            v96 = v92;
            v97 = swift_slowAlloc();
            *&v126 = v97;
            *v95 = v111;
            *(v95 + 4) = sub_1000070F4(v51, v52, &v126);
            _os_log_impl(&_mh_execute_header, v96, v112, "Can't extract collectionID from identifier: %s", v95, 0xCu);
            sub_1000074E0(v97);
          }

          else
          {
          }

          v17 = v117;

          v101 = _s5Books20RootBarItemsProviderC8ItemKindO8rawValueAESgSS_tcfC_0(v51, v52);
          if (v101 == 16)
          {
            v101 = 15;
          }
        }

        sub_10047F800(v101, &v153);
        v38 = v154;
        if (v154)
        {
          v117 = v158;
          v112 = v157;
          v35 = v155;
          v36 = v156;
          v39 = v153;
          goto LABEL_139;
        }

        v39 = 0;
        v35 = 0;
        v40 = 0uLL;
        v38 = 0xE000000000000000;
        v36 = 0xE000000000000000;
LABEL_22:
        v41 = 0uLL;
      }

      *&v126 = v39;
      *(&v126 + 1) = v38;
      *&v127 = v35;
      *(&v127 + 1) = v36;
      v128 = v40;
      v129 = v41;

      v99 = &v126;
LABEL_141:
      sub_100007840(v99, &qword_100ADFAD0, &unk_100818CE0);
      v102 = 1;
      goto LABEL_142;
    }

    RootBarItem.title.getter(v143);
    v27 = v143[3];
    v118 = v143[2];

    sub_100007840(v143, &qword_100ADFAD0, &unk_100818CE0);
    v32 = *&v18[OBJC_IVAR___BKRootBarItem_iconNameOverride + 8];
    if (v32)
    {
      v33 = *&v18[OBJC_IVAR___BKRootBarItem_iconNameOverride];
      swift_bridgeObjectRetain_n();

      v34 = 0uLL;
      v35 = v33;
      v36 = v32;
    }

    else
    {
      v46 = *v31;
      v47 = v31[1];
      v48 = *&v18[OBJC_IVAR___BKRootBarItem_countryCode + 8];
      if (v48)
      {
        v49 = *&v18[OBJC_IVAR___BKRootBarItem_countryCode] == 28778 && v48 == 0xE200000000000000;
        if (v49 || (sub_1007A3AB4() & 1) != 0)
        {
          v50 = v46 == 0x7972617262696CLL && v47 == 0xE700000000000000;
          if (v50 || (sub_1007A3AB4() & 1) != 0)
          {
            if (qword_100AD16F8 != -1)
            {
              swift_once();
            }

            v126 = xmmword_100AE5618;
            v127 = *&qword_100AE5628;
            v128 = xmmword_100AE5638;
            v129 = unk_100AE5648;
            v32 = *(&xmmword_100AE5618 + 1);
            v33 = xmmword_100AE5618;
            v36 = unk_100AE5630;
            v35 = qword_100AE5628;
            v117 = unk_100AE5648;
            v112 = xmmword_100AE5638;
            sub_1003A8518(&v126, &v122);
            goto LABEL_132;
          }
        }
      }

      *&v117 = v17;
      *&v126 = v46;
      *(&v126 + 1) = v47;
      *&v122 = 0x3A6D6F74737563;
      *(&v122 + 1) = 0xE700000000000000;
      sub_1003A84C4();
      sub_100367368();
      if (sub_1007A20A4())
      {
        *&v126 = v46;
        *(&v126 + 1) = v47;

        v73 = sub_1007A23A4();
        if (v73)
        {
          if (v73 < 0)
          {
            goto LABEL_160;
          }

          sub_1007A23C4();
          v17 = v117;
          if (v74)
          {
            goto LABEL_165;
          }

          sub_1007A2344();
        }

        else
        {
          v17 = v117;
        }

        v100 = 14;
      }

      else
      {
        if (qword_100AD1688 != -1)
        {
          swift_once();
        }

        v84 = sub_10079ACE4();
        sub_100008B98(v84, qword_100AE4D38);

        v85 = sub_10079ACC4();
        v86 = sub_1007A29A4();

        if (os_log_type_enabled(v85, v86))
        {
          v87 = swift_slowAlloc();
          LODWORD(v112) = v86;
          v88 = v87;
          v89 = v85;
          v90 = swift_slowAlloc();
          *&v126 = v90;
          *v88 = v111;
          *(v88 + 4) = sub_1000070F4(v46, v47, &v126);
          _os_log_impl(&_mh_execute_header, v89, v112, "Can't extract collectionID from identifier: %s", v88, 0xCu);
          sub_1000074E0(v90);
        }

        else
        {
        }

        v17 = v117;

        v100 = _s5Books20RootBarItemsProviderC8ItemKindO8rawValueAESgSS_tcfC_0(v46, v47);
        if (v100 == 16)
        {
          v100 = 15;
        }
      }

      sub_10047F800(v100, &v144);
      v32 = v145;
      if (v145)
      {
        v117 = v149;
        v112 = v148;
        v36 = v147;
        v35 = v146;
        v33 = v144;
LABEL_132:

        v37 = v117;
        v34 = v112;
        goto LABEL_133;
      }

      v33 = 0;
      v35 = 0;
      v34 = 0uLL;
      v32 = 0xE000000000000000;
      v36 = 0xE000000000000000;
    }

    v37 = 0uLL;
LABEL_133:
    *&v126 = v33;
    *(&v126 + 1) = v32;
    *&v127 = v35;
    *(&v127 + 1) = v36;
    v128 = v34;
    v129 = v37;

    sub_100007840(&v126, &qword_100ADFAD0, &unk_100818CE0);
    v102 = 2;
LABEL_142:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_10066B518(0, *(v17 + 2) + 1, 1, v17);
    }

    v104 = *(v17 + 2);
    v103 = *(v17 + 3);
    if (v104 >= v103 >> 1)
    {
      v17 = sub_10066B518((v103 > 1), v104 + 1, 1, v17);
    }

    *(v17 + 2) = v104 + 1;
    v105 = &v17[56 * v104];
    v106 = v118;
    *(v105 + 4) = v119;
    *(v105 + 5) = v29;
    v105[48] = v102;
    *(v105 + 7) = v106;
    *(v105 + 8) = v27;
    *(v105 + 9) = v35;
    *(v105 + 10) = v36;
    ++v16;
    v14 = v114;
    if (v120 == v113)
    {
      goto LABEL_155;
    }
  }

  *&v117 = v17;
  v20 = &v18[OBJC_IVAR___BKRootBarItem_identifier];
  v22 = *&v18[OBJC_IVAR___BKRootBarItem_identifier];
  v21 = *&v18[OBJC_IVAR___BKRootBarItem_identifier + 8];
  v23 = *&v18[OBJC_IVAR___BKRootBarItem_titleOverride + 8];
  v119 = v22;
  if (v23)
  {
    v24 = *&v18[OBJC_IVAR___BKRootBarItem_titleOverride];
    swift_bridgeObjectRetain_n();

    v25 = 0uLL;
    v26 = v24;
    v27 = v23;
    v28 = 0uLL;
    v29 = v21;
    v17 = v117;
  }

  else
  {
    *&v126 = v22;
    *(&v126 + 1) = v21;
    *&v122 = 0x3A6D6F74737563;
    *(&v122 + 1) = 0xE700000000000000;
    sub_1003A84C4();
    sub_100367368();

    if (sub_1007A20A4())
    {
      *&v126 = v22;
      *(&v126 + 1) = v21;

      v42 = sub_1007A23A4();
      v43 = v21;
      v14 = v21;
      v17 = v117;
      if (v42)
      {
        if (v42 < 0)
        {
          goto LABEL_152;
        }

        sub_1007A23C4();
        if (v44)
        {
          goto LABEL_162;
        }

        sub_1007A2344();
      }

      v45 = 14;
      v29 = v43;
    }

    else
    {
      v56 = v22;
      if (qword_100AD1688 != -1)
      {
        swift_once();
      }

      v57 = sub_10079ACE4();
      sub_100008B98(v57, qword_100AE4D38);
      v29 = v21;

      v58 = sub_10079ACC4();
      v59 = sub_1007A29A4();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        *&v126 = v61;
        *v60 = v111;
        *(v60 + 4) = sub_1000070F4(v56, v29, &v126);
        _os_log_impl(&_mh_execute_header, v58, v59, "Can't extract collectionID from identifier: %s", v60, 0xCu);
        sub_1000074E0(v61);
      }

      v17 = v117;

      v45 = _s5Books20RootBarItemsProviderC8ItemKindO8rawValueAESgSS_tcfC_0(v56, v29);
      if (v45 == 16)
      {
        v45 = 15;
      }
    }

    sub_10047E894(v45, &v131);
    v23 = v132;
    if (v132)
    {
      v25 = v135;
      v28 = v136;
      v26 = v133;
      v27 = v134;
      v24 = v131;
    }

    else
    {
      v24 = 0;
      v26 = 0;
      v25 = 0uLL;
      v23 = 0xE000000000000000;
      v27 = 0xE000000000000000;
      v28 = 0uLL;
    }
  }

  *&v126 = v24;
  *(&v126 + 1) = v23;
  v118 = v26;
  *&v127 = v26;
  *(&v127 + 1) = v27;
  v128 = v25;
  v129 = v28;

  sub_100007840(&v126, &qword_100ADFAD0, &unk_100818CE0);
  v36 = *&v18[OBJC_IVAR___BKRootBarItem_iconNameOverride + 8];
  if (v36)
  {
    v35 = *&v18[OBJC_IVAR___BKRootBarItem_iconNameOverride];
    swift_bridgeObjectRetain_n();

    v62 = 0uLL;
    v63 = v36;
    v64 = v35;
    goto LABEL_68;
  }

  v66 = *v20;
  v67 = v20[1];
  v68 = *&v18[OBJC_IVAR___BKRootBarItem_countryCode + 8];
  if (v68)
  {
    v69 = *&v18[OBJC_IVAR___BKRootBarItem_countryCode] == 28778 && v68 == 0xE200000000000000;
    if (v69 || (sub_1007A3AB4() & 1) != 0)
    {
      v70 = v66 == 0x7972617262696CLL && v67 == 0xE700000000000000;
      if (v70 || (sub_1007A3AB4() & 1) != 0)
      {
        if (qword_100AD16F8 != -1)
        {
          swift_once();
        }

        v122 = xmmword_100AE5618;
        v123 = *&qword_100AE5628;
        v124 = xmmword_100AE5638;
        v125 = unk_100AE5648;
        v63 = *(&xmmword_100AE5618 + 1);
        v64 = xmmword_100AE5618;
        v36 = unk_100AE5630;
        v35 = qword_100AE5628;
        v117 = unk_100AE5648;
        v112 = xmmword_100AE5638;
        sub_1003A8518(&v122, v121);
LABEL_117:

        v65 = v117;
        v62 = v112;
        goto LABEL_118;
      }
    }
  }

  *&v122 = v66;
  *(&v122 + 1) = v67;
  v121[0] = 0x3A6D6F74737563;
  v121[1] = 0xE700000000000000;
  sub_1003A84C4();
  sub_100367368();
  if ((sub_1007A20A4() & 1) == 0)
  {
    if (qword_100AD1688 != -1)
    {
      swift_once();
    }

    v77 = sub_10079ACE4();
    sub_100008B98(v77, qword_100AE4D38);

    v78 = sub_10079ACC4();
    v79 = sub_1007A29A4();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = v78;
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      LODWORD(v112) = v79;
      v83 = v82;
      *&v122 = v82;
      *v81 = v111;
      *(v81 + 4) = sub_1000070F4(v66, v67, &v122);
      _os_log_impl(&_mh_execute_header, v80, v112, "Can't extract collectionID from identifier: %s", v81, 0xCu);
      sub_1000074E0(v83);
    }

    else
    {
    }

    v17 = v117;

    v98 = _s5Books20RootBarItemsProviderC8ItemKindO8rawValueAESgSS_tcfC_0(v66, v67);
    if (v98 == 16)
    {
      v98 = 15;
    }

    goto LABEL_115;
  }

  *&v122 = v66;
  *(&v122 + 1) = v67;

  v71 = sub_1007A23A4();
  if (!v71)
  {
    goto LABEL_114;
  }

  if ((v71 & 0x8000000000000000) == 0)
  {
    sub_1007A23C4();
    if (v72)
    {
      goto LABEL_163;
    }

    sub_1007A2344();
LABEL_114:
    v17 = v117;

    v98 = 14;
LABEL_115:
    sub_10047F800(v98, &v137);
    v63 = v138;
    if (v138)
    {
      v117 = v142;
      v112 = v141;
      v35 = v139;
      v36 = v140;
      v64 = v137;
      goto LABEL_117;
    }

    v35 = 0;
    v64 = 0;
    v62 = 0uLL;
    v36 = 0xE000000000000000;
    v63 = 0xE000000000000000;
LABEL_68:
    v65 = 0uLL;
LABEL_118:
    *&v122 = v64;
    *(&v122 + 1) = v63;
    *&v123 = v35;
    *(&v123 + 1) = v36;
    v124 = v62;
    v125 = v65;

    v99 = &v122;
    goto LABEL_141;
  }

  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
}

void sub_1003A7498(unint64_t a1)
{
  v3 = a1 >> 62;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_53:
    v32 = sub_1007A38D4();
    if (v32 < 0)
    {
      __break(1u);
    }

    v5 = v32;
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  v35 = a1 & 0xC000000000000001;
  v33 = (v4 + 32);
  v7 = _swiftEmptyArrayStorage;
  v34 = v4;
  while (1)
  {
    if (v3)
    {
      if (sub_1007A38D4() < v6)
      {
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      v8 = sub_1007A38D4();
    }

    else
    {
      v8 = *(v4 + 16);
      if (v8 < v6)
      {
        goto LABEL_45;
      }
    }

    if (v8 < v5)
    {
      goto LABEL_46;
    }

    if (!v35 || v6 == v5)
    {

      if (!v3)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v6 >= v5)
      {
        goto LABEL_51;
      }

      type metadata accessor for RootBarItem();

      v9 = v6;
      do
      {
        v10 = v9 + 1;
        sub_1007A3774(v9);
        v9 = v10;
      }

      while (v5 != v10);
      if (!v3)
      {
LABEL_16:
        v12 = (2 * v5) | 1;
        v11 = v33;
        goto LABEL_19;
      }
    }

    sub_1007A38E4();
    v11 = v13;
    v6 = v14;
    v12 = v15;
LABEL_19:
    v16 = sub_1003A8588(v11, v6, v12);
    if (v1)
    {
      break;
    }

    v18 = v16;
    v4 = v17;
    swift_unknownObjectRelease();
    if (v4)
    {
      goto LABEL_43;
    }

    if (v5 < v18)
    {
      goto LABEL_47;
    }

    if (v3)
    {
      v19 = sub_1007A38D4();
      v4 = v34;
    }

    else
    {
      v4 = v34;
      v19 = *(v34 + 16);
    }

    if (v19 < v18)
    {
      goto LABEL_48;
    }

    if (v18 < 0)
    {
      goto LABEL_49;
    }

    if (!v35 || v18 == v5)
    {
    }

    else
    {
      if (v18 >= v5)
      {
        goto LABEL_52;
      }

      type metadata accessor for RootBarItem();

      v20 = v18;
      do
      {
        v21 = v20 + 1;
        sub_1007A3774(v20);
        v20 = v21;
      }

      while (v5 != v21);
    }

    v22 = v4;
    v24 = (2 * v5) | 1;
    v23 = v33;
    v25 = v18;
    if (v3)
    {

      v22 = sub_1007A38E4();
    }

    sub_1003A83E4(v22, v23, v25, v24);
    v27 = v26;
    swift_unknownObjectRelease();
    v4 = v27 >> 1;
    if ((v27 >> 1) < v18)
    {
      goto LABEL_50;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_10066B274(0, *(v7 + 2) + 1, 1, v7);
    }

    v29 = *(v7 + 2);
    v28 = *(v7 + 3);
    if (v29 >= v28 >> 1)
    {
      v7 = sub_10066B274((v28 > 1), v29 + 1, 1, v7);
    }

    *(v7 + 2) = v29 + 1;
    v30 = &v7[16 * v29];
    *(v30 + 4) = v18;
    *(v30 + 5) = v4;
    v6 = v4 + 1;
    v31 = v4 >= v5;
    v4 = v34;
    if (v31)
    {
LABEL_43:
      sub_1007A3CF4();
      return;
    }
  }

  swift_unknownObjectRelease();
}

void sub_1003A77E0(unint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (v2 >> 62)
    {
      goto LABEL_24;
    }

    for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1007A38D4())
    {
      if (!i)
      {
LABEL_20:
        sub_10079B8C4();

        return;
      }

      sub_1003BD4E8(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        break;
      }

      v6 = 0;
      v7 = v2;
      v20 = v2 & 0xC000000000000001;
      v18 = v4;
      v19 = v2 & 0xFFFFFFFFFFFFFF8;
      v8 = v2;
      while (1)
      {
        v4 = (v6 + 1);
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if (v20)
        {
          v9 = sub_1007A3784();
        }

        else
        {
          if (v6 >= *(v19 + 16))
          {
            goto LABEL_23;
          }

          v9 = *(v7 + 8 * v6 + 32);
        }

        v10 = v9;
        v11 = [v9 collectionID];
        if (!v11)
        {
          goto LABEL_26;
        }

        v12 = v11;
        v13 = [v10 hidden];
        if (v13)
        {
          v14 = v13;
          v15 = [v13 BOOLValue];
        }

        else
        {
          v15 = 0;
        }

        v2 = _swiftEmptyArrayStorage[2];
        v16 = _swiftEmptyArrayStorage[3];
        if (v2 >= v16 >> 1)
        {
          sub_1003BD4E8((v16 > 1), v2 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v2 + 1;
        v17 = &_swiftEmptyArrayStorage[2 * v2];
        v17[4] = v12;
        *(v17 + 40) = v15;
        ++v6;
        v7 = v8;
        if (v4 == i)
        {
          v4 = v18;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      ;
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }
}

void sub_1003A79EC(unint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (v2 >> 62)
    {
      goto LABEL_22;
    }

    for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1007A38D4())
    {
      if (!i)
      {
LABEL_18:
        sub_10079B8C4();

        return;
      }

      sub_1003BD508(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        break;
      }

      v6 = 0;
      v7 = _swiftEmptyArrayStorage;
      v23 = v4;
      while (1)
      {
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        v25 = v7;
        if ((v2 & 0xC000000000000001) != 0)
        {
          v9 = sub_1007A3784();
        }

        else
        {
          if (v6 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v9 = *(v2 + 8 * v6 + 32);
        }

        v10 = v9;
        v11 = [v9 collectionID];
        if (!v11)
        {
          goto LABEL_24;
        }

        v12 = v11;
        v13 = sub_1007A2254();
        v15 = v14;

        v16 = [v10 title];
        if (!v16)
        {
          goto LABEL_25;
        }

        v17 = v16;
        v24 = sub_1007A2254();
        v19 = v18;

        v7 = v25;
        v21 = v25[2];
        v20 = v25[3];
        v4 = (v21 + 1);
        if (v21 >= v20 >> 1)
        {
          sub_1003BD508((v20 > 1), v21 + 1, 1);
          v7 = v25;
        }

        v7[2] = v4;
        v22 = &v7[4 * v21];
        v22[4] = v13;
        v22[5] = v15;
        v22[6] = v24;
        v22[7] = v19;
        ++v6;
        if (v8 == i)
        {
          v4 = v23;
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      ;
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }
}

id sub_1003A7C04()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = [objc_opt_self() sharedProvider];
  [v3 removeObserver:v1 accountTypes:1];

  sub_10079AE34();
  v4 = sub_10079AE04();
  v5 = v1;
  sub_10079ADF4();

  v7.receiver = v5;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, "dealloc");
}

double sub_1003A7EE8(void *a1, char a2)
{
  if (qword_100AD1700 == -1)
  {
    v3 = a2 & 1;
  }

  else
  {
    v5 = a1;
    swift_once();
    a1 = v5;
    v3 = a2 & 1;
  }

  return sub_10048A048(a1, v3);
}

double sub_1003A7F80(uint64_t a1, uint64_t a2)
{
  if (qword_100AD1700 != -1)
  {
    swift_once();
  }

  type metadata accessor for LibraryCollectionsService(0);
  sub_100488BFC(0, 0, a1, a2);

  return result;
}

double sub_1003A803C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_100AD1700 != -1)
  {
    swift_once();
  }

  sub_100017E74();
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  v8[5] = a2;

  sub_1007A2CD4();

  return result;
}

double sub_1003A8118(uint64_t a1, uint64_t a2)
{
  if (qword_100AD1700 != -1)
  {
    swift_once();
  }

  sub_100017E74();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_1007A2CD4();

  return result;
}

double sub_1003A8254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (qword_100AD1700 != -1)
  {
    swift_once();
  }

  sub_100017E74();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a2;
  v13[4] = a3;
  v13[5] = a1;

  sub_1007A2CD4();

  return result;
}

id sub_1003A83E4(id result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = result;
  v7 = a4 >> 1;
  v8 = a3;
  if (a4 >> 1 != a3)
  {
    if (a3 <= v7)
    {
      v9 = a4 >> 1;
    }

    else
    {
      v9 = a3;
    }

    v8 = a3;
    while (1)
    {
      if (v9 == v8)
      {
        __break(1u);
        goto LABEL_16;
      }

      result = [*(a2 + 8 * v8) isSearch];
      if ((result & 1) == 0)
      {
        break;
      }

      if (v7 == ++v8)
      {
        v8 = v7;
        break;
      }
    }

    if (v8 >= a3)
    {
      goto LABEL_11;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_11:
  if (v7 < a3)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v7 < v8)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((v8 & 0x8000000000000000) == 0)
  {
    return v6;
  }

LABEL_19:
  __break(1u);
  return result;
}

unint64_t sub_1003A84C4()
{
  result = qword_100ADFAD8;
  if (!qword_100ADFAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADFAD8);
  }

  return result;
}

uint64_t sub_1003A8518(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100ADFAD0, &unk_100818CE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id *sub_1003A8588(id *result, uint64_t a2, unint64_t a3)
{
  v3 = a3 >> 1;
  if (a3 >> 1 == a2)
  {
    return 0;
  }

  else
  {
    v4 = a2;
    v5 = result;
    if (a2 <= v3)
    {
      v6 = a3 >> 1;
    }

    else
    {
      v6 = a2;
    }

    while (v6 != v4)
    {
      result = [v5[v4] isSearch];
      if (result)
      {
        return v4;
      }

      if (v3 == ++v4)
      {
        return 0;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1003A8628()
{

  return swift_deallocObject();
}

double sub_1003A8670(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1003BD0CC(0, v1, 0);
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v7 = _swiftEmptyArrayStorage[2];
      v6 = _swiftEmptyArrayStorage[3];

      if (v7 >= v6 >> 1)
      {
        sub_1003BD0CC((v6 > 1), v7 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v7 + 1;
      v8 = &_swiftEmptyArrayStorage[2 * v7];
      v8[4] = v5;
      v8[5] = v4;
      v3 += 4;
      --v1;
    }

    while (v1);
  }

  if (qword_100AD1700 != -1)
  {
    swift_once();
  }

  sub_100017E74();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = _swiftEmptyArrayStorage;

  sub_1007A2CD4();

  return result;
}

void sub_1003A891C(uint64_t a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for SleepButton();
  objc_msgSendSuper2(&v7, "layoutSubviews");
  [v1 bounds];
  v2 = [objc_opt_self() mainScreen];
  [v2 scale];

  v3 = [v1 titleLabel];
  if (v3)
  {
    v4 = v3;
    CGRectRoundedForScale();
    [v4 setFrame:?];
  }

  v5 = [v1 imageView];
  if (v5)
  {
    v6 = v5;
    CGRectCenterRectInRect();
    CGRectRoundedForScale();
    [v6 setFrame:?];
  }
}

uint64_t sub_1003A8B6C()
{
  v0 = sub_100796CF4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v20[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v20[-v5];
  v7 = sub_1007A21D4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v20[-v12];
  sub_1007A2154();
  sub_100796C94();
  (*(v8 + 16))(v10, v13, v7);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v1 + 16))(v3, v6, v0);
  v16 = sub_1007A22D4(v10, 0, 0, v15, v3, "Accessibility label for the audiobook sleep timer button", 56, 2);
  v18 = v17;
  (*(v1 + 8))(v6, v0);
  result = (*(v8 + 8))(v13, v7);
  qword_100ADFB08 = v16;
  unk_100ADFB10 = v18;
  return result;
}

id sub_1003A8E8C()
{
  if (*(v0 + OBJC_IVAR____TtC5Books11SleepButton_showsDuration) != 1)
  {
    return 0;
  }

  if (qword_100AD13F0 != -1)
  {
    swift_once();
  }

  result = [qword_100B22FF0 stringFromTimeInterval:round(*(v0 + OBJC_IVAR____TtC5Books11SleepButton_duration))];
  if (result)
  {
    v2 = result;
    v3 = sub_1007A2254();

    return v3;
  }

  return result;
}

id sub_1003A8F68(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_1007A2214();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_1003A8FE8()
{
  if (*(v0 + OBJC_IVAR____TtC5Books11SleepButton_showsDuration) == 1)
  {
    v1 = [v0 titleLabel];
    if (v1 && (v2 = v1, v3 = [v1 text], v2, v3))
    {
      v4 = sub_1007A2254();
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (qword_100AD14D0 != -1)
    {
      swift_once();
    }

    v4 = qword_100ADFB08;
  }

  return v4;
}

void sub_1003A91B0()
{
  if (v0[OBJC_IVAR____TtC5Books11SleepButton_showsDuration] == 1)
  {
    v1 = v0[OBJC_IVAR____TtC5Books11SleepButton_showsHours];
    v2 = objc_opt_self();
    v3 = 1800.0;
    if (v1)
    {
      v3 = 288000.0;
    }

    v4 = [v2 stringWithDuration:v3];
    v5 = [v0 titleLabel];
    if (v5 && (v6 = v5, v7 = [v5 attributedText], v6, v7))
    {
      v8 = [v7 attributesAtIndex:0 effectiveRange:0];

      type metadata accessor for Key(0);
      sub_100282B6C();
      sub_1007A2044();

      if (!v4)
      {
LABEL_7:

        v9 = 0.0;
LABEL_11:
        v11 = *&v0[OBJC_IVAR____TtC5Books11SleepButton_fixedHeight];
        v10 = v9 + v11 + *&v0[OBJC_IVAR____TtC5Books11SleepButton_internalPadding];
        goto LABEL_12;
      }
    }

    else
    {
      sub_1001ED420(_swiftEmptyArrayStorage);
      if (!v4)
      {
        goto LABEL_7;
      }
    }

    type metadata accessor for Key(0);
    sub_100282B6C();
    v12 = v4;
    isa = sub_1007A2024().super.isa;

    [v12 sizeWithAttributes:isa];
    v9 = v14;

    goto LABEL_11;
  }

  v10 = *&v0[OBJC_IVAR____TtC5Books11SleepButton_fixedHeight];
  v11 = v10;
LABEL_12:
  v15 = &v0[OBJC_IVAR____TtC5Books11SleepButton_calculatedSize];
  *v15 = v10;
  v15[1] = v11;
}

id sub_1003A947C(void *a1)
{
  *&v1[OBJC_IVAR____TtC5Books11SleepButton_fixedHeight] = 0;
  *&v1[OBJC_IVAR____TtC5Books11SleepButton_internalPadding] = 0;
  v3 = &v1[OBJC_IVAR____TtC5Books11SleepButton_calculatedSize];
  *v3 = 0;
  v3[1] = 0;
  *&v1[OBJC_IVAR____TtC5Books11SleepButton_duration] = 0;
  v4 = &v1[OBJC_IVAR____TtC5Books11SleepButton_imageSize];
  *v4 = 0;
  v4[1] = 0;
  v1[OBJC_IVAR____TtC5Books11SleepButton_showsDuration] = 0;
  v1[OBJC_IVAR____TtC5Books11SleepButton_showsHours] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for SleepButton();
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

void sub_1003A95A8()
{
  v55 = sub_100796CF4();
  v0 = *(v55 - 1);
  __chkstk_darwin(v55);
  v54 = v53 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v4 = v53 - v3;
  v5 = sub_1007A21D4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v53 - v10;
  v56 = [objc_allocWithZone(UIView) init];
  [v56 setTranslatesAutoresizingMaskIntoConstraints:0];
  v12 = [objc_allocWithZone(UILabel) init];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = [objc_opt_self() systemFontOfSize:20.0 weight:UIFontWeightSemibold];
  [v12 setFont:v13];

  v53[0] = objc_opt_self();
  v14 = [v53[0] bc_booksLabelColor];
  [v12 setTextColor:v14];

  [v12 setAdjustsFontForContentSizeCategory:1];
  sub_1007A2154();
  sub_100796C94();
  (*(v6 + 16))(v8, v11, v5);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v17 = v54;
  v18 = v55;
  (*(v0 + 16))(v54, v4, v55);
  sub_1007A22D4(v8, 0, 0, v16, v17, "Custom Sleep Timer", 18, 2);
  (*(v0 + 8))(v4, v18);
  (*(v6 + 8))(v11, v5);
  v19 = sub_1007A2214();

  [v12 setText:v19];

  [v12 setTextAlignment:4];
  [v12 sizeToFit];
  v20 = v56;
  [v56 addSubview:v12];
  v21 = objc_opt_self();
  v22 = sub_1007A2214();
  v23 = [v21 __systemImageNamedSwift:v22];

  v24 = [objc_allocWithZone(UIImageView) initWithImage:v23];
  v25 = [v12 font];
  if (v25)
  {
    v26 = v25;
    v27 = [objc_opt_self() configurationWithFont:v25];

    [v24 setPreferredSymbolConfiguration:v27];
    v28 = v24;
    [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
    v29 = [v53[0] bc_booksLabelColor];
    [v28 setTintColor:v29];

    [v20 addSubview:v28];
    v55 = objc_opt_self();
    sub_1001F1160(&unk_100AD8160, &unk_100813160);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_100815F70;
    v31 = [v20 leadingAnchor];
    v32 = [v28 leadingAnchor];
    v33 = [v31 constraintEqualToAnchor:v32 constant:-10.0];

    *(v30 + 32) = v33;
    v34 = [v20 heightAnchor];
    v35 = [v34 constraintEqualToConstant:56.0];

    *(v30 + 40) = v35;
    v36 = [v12 centerYAnchor];
    v37 = [v20 centerYAnchor];
    v38 = [v36 constraintEqualToAnchor:v37];

    *(v30 + 48) = v38;
    v39 = [v12 leadingAnchor];
    v40 = [v28 trailingAnchor];
    v41 = [v39 constraintEqualToAnchor:v40 constant:10.0];

    *(v30 + 56) = v41;
    v42 = [v12 trailingAnchor];

    v43 = [v20 layoutMarginsGuide];
    v44 = [v43 trailingAnchor];

    v45 = [v42 constraintEqualToAnchor:v44 constant:-10.0];
    *(v30 + 64) = v45;
    v46 = [v28 centerYAnchor];
    v47 = [v20 centerYAnchor];
    v48 = [v46 constraintEqualToAnchor:v47];

    *(v30 + 72) = v48;
    v49 = [v28 leadingAnchor];

    v50 = [v20 leadingAnchor];
    v51 = [v49 constraintEqualToAnchor:v50];

    *(v30 + 80) = v51;
    sub_10002267C();
    isa = sub_1007A25D4().super.isa;

    [v55 activateConstraints:isa];

    [v53[1] setView:v20];
  }

  else
  {
    __break(1u);
  }
}

void sub_1003A9FA0()
{
  v1 = *&v0[OBJC_IVAR____TtC5Books43AudiobookSleepTimerCustomDateViewController_datePicker];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v1 setDatePickerMode:3];
  v14 = [objc_allocWithZone(UIView) init];
  [v14 addSubview:v1];
  v2 = objc_opt_self();
  sub_1001F1160(&unk_100AD8160, &unk_100813160);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100811370;
  v4 = [v1 rightAnchor];
  v5 = [v14 rightAnchor];
  v6 = [v4 constraintEqualToAnchor:v5 constant:0.0];

  *(v3 + 32) = v6;
  v7 = [v1 leftAnchor];
  v8 = [v14 leftAnchor];
  v9 = [v7 constraintEqualToAnchor:v8 constant:0.0];

  *(v3 + 40) = v9;
  v10 = [v14 heightAnchor];
  v11 = [v1 heightAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v3 + 48) = v12;
  sub_10002267C();
  isa = sub_1007A25D4().super.isa;

  [v2 activateConstraints:isa];

  [v0 setView:v14];
}

id sub_1003AA3EC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1003AA458(double a1)
{
  v10 = 0;
  if (round(a1) > 0.0)
  {
    v3 = [objc_opt_self() stringWithDuration:0 explicitPositive:&v10 showsHours:a1];
    if (v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = sub_1007A2214();
LABEL_5:
  v4 = v3;
  [v1 setTitle:v3 forState:0];

  *&v1[OBJC_IVAR____TtC5Books11SleepButton_duration] = a1;
  v5 = a1 > 0.0;
  v6 = v1[OBJC_IVAR____TtC5Books11SleepButton_showsDuration];
  v1[OBJC_IVAR____TtC5Books11SleepButton_showsDuration] = v5;
  if (v5 != v6)
  {
    v7 = &v1[OBJC_IVAR____TtC5Books11SleepButton_calculatedSize];
    *v7 = 0;
    *(v7 + 1) = 0;
    v8 = [v1 superview];
    [v8 setNeedsLayout];
  }

  v1[OBJC_IVAR____TtC5Books11SleepButton_showsHours] = v10;
  v9 = &v1[OBJC_IVAR____TtC5Books11SleepButton_calculatedSize];
  *v9 = 0;
  *(v9 + 1) = 0;
}

uint64_t sub_1003AA5DC()
{
  sub_1003AA60C();
  result = sub_10079CB54();
  qword_100B23270 = result;
  return result;
}

unint64_t sub_1003AA60C()
{
  result = qword_100ADFBD0;
  if (!qword_100ADFBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADFBD0);
  }

  return result;
}

uint64_t sub_1003AA670()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1003AA6D4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_1003AA730(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1003AA7A4(void *a1, void *a2, void *a3, void *a4)
{
  if (a1)
  {
    if (!a3)
    {
      return 0;
    }

    v7 = a1;
    sub_1003AA874();
    v8 = a3;
    v9 = v7;
    LOBYTE(v7) = sub_1007A3184();

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a3)
  {
    return 0;
  }

  if (a2)
  {
    if (a4)
    {
      sub_1003AA874();
      v10 = a4;
      v11 = a2;
      v12 = sub_1007A3184();

      if (v12)
      {
        return 1;
      }
    }
  }

  else if (!a4)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1003AA874()
{
  result = qword_100AD7CB0;
  if (!qword_100AD7CB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AD7CB0);
  }

  return result;
}

void *sub_1003AA8C0()
{
  swift_getKeyPath();
  sub_1003AE6C0();
  sub_100797A14();

  return sub_10079B904();
}

uint64_t sub_1003AA93C@<X0>(double *a1@<X8>)
{
  v2 = v1;
  v74 = a1;
  v3 = sub_1001F1160(&qword_100AD8A78, &unk_100815DE0);
  __chkstk_darwin(v3 - 8);
  v5 = &v65 - v4;
  v72 = type metadata accessor for PageTurnViewModel.State(0);
  __chkstk_darwin(v72);
  v71 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v70 = &v65 - v8;
  __chkstk_darwin(v9);
  v73 = &v65 - v10;
  __chkstk_darwin(v11);
  v13 = &v65 - v12;
  v14 = _s5StateO4TurnVMa(0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v75 = v1;
  sub_1003AE6C0();
  sub_100797A14();

  v69 = *(v1 + 88);
  sub_10079B904();
  sub_1003AB0E8(v5);
  sub_1003AE79C(v13, type metadata accessor for PageTurnViewModel.State);
  if ((*(v15 + 48))(v5, 1, v14) == 1)
  {
    result = sub_100007840(v5, &qword_100AD8A78, &unk_100815DE0);
    _Q2 = 0uLL;
    v20 = 1.0;
    v21 = 0.0;
    v22 = 0.0;
    v23 = 0.0;
  }

  else
  {
    sub_1003AE734(v5, v17, _s5StateO4TurnVMa);
    v66 = v14;
    v24 = *(v14 + 24);
    v68 = v17;
    v25 = v17[v24];
    v26 = sub_1007A03D4();
    v27 = [objc_opt_self() currentTraitCollection];
    [v27 displayCornerRadius];
    v67 = v28;

    v29 = objc_opt_self();
    v30 = [v29 sharedApplication];
    v31 = [v30 userInterfaceLayoutDirection];

    v32 = 1.0;
    if (v31 == 1)
    {
      v32 = -1.0;
    }

    v33 = *(v2 + 16);
    if (*(v2 + 16))
    {
      v34 = -v32;
    }

    else
    {
      v34 = v32;
    }

    if (v26)
    {
      v35 = -0.5;
    }

    else
    {
      v35 = 0.5;
    }

    swift_getKeyPath();
    v75 = v2;
    sub_100797A14();

    if (*(v2 + 56) == 1)
    {
      if (v26)
      {
        v23 = 0.0;
      }

      else
      {
        v23 = 2.0;
      }

      if (v25)
      {
        swift_getKeyPath();
        v75 = v2;
        sub_100797A14();

        v36 = v73;
        sub_10079B904();
        v37 = sub_1003AD148();
        sub_1003AE79C(v36, type metadata accessor for PageTurnViewModel.State);
        v38 = [v29 sharedApplication];
        v39 = [v38 userInterfaceLayoutDirection];

        v40 = 1.0;
        v41 = -1.0;
        if (v39 != 1)
        {
          v41 = 1.0;
        }

        if (v33)
        {
          v41 = -v41;
        }

        v42 = -(v37 * v41);
        sub_1003AB370();
        v44 = (1.0 - v43) * v42;
      }

      else
      {
        v46 = [v29 sharedApplication];
        v47 = [v46 userInterfaceLayoutDirection];

        v40 = 1.0;
        v48 = -1.0;
        if (v47 != 1)
        {
          v48 = 1.0;
        }

        if (v33)
        {
          v49 = -v48;
        }

        else
        {
          v49 = v48;
        }

        swift_getKeyPath();
        v75 = v2;
        sub_100797A14();

        v36 = v73;
        sub_10079B904();
        v50 = sub_1003AD36C();
        sub_1003AE79C(v36, type metadata accessor for PageTurnViewModel.State);
        v51 = 220.0;
        if (v50)
        {
          v51 = 68.0;
        }

        v52 = v49 * v51;
        sub_1003AB370();
        v44 = v52 * (1.0 - v53);
      }
    }

    else
    {
      sub_1003AB370();
      v40 = v45;
      v23 = 2.0;
      v44 = 0.0;
      v36 = v73;
    }

    swift_getKeyPath();
    v75 = v2;
    sub_100797A14();

    v54 = v70;
    sub_10079B904();
    v55 = v54;
    v56 = v71;
    sub_1003AE734(v55, v71, type metadata accessor for PageTurnViewModel.State);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_1003AE79C(v56, type metadata accessor for PageTurnViewModel.State);
    v58 = v68;
    if (!EnumCaseMultiPayload || *&v68[*(v66 + 32)])
    {
      v40 = 0.0;
    }

    v22 = v35 * v34;
    swift_getKeyPath();
    v75 = v2;
    sub_100797A14();

    sub_10079B904();
    v59 = sub_1003AD588();
    sub_1003AE79C(v36, type metadata accessor for PageTurnViewModel.State);
    result = sub_1003AE79C(v58, _s5StateO4TurnVMa);
    v21 = 0.0;
    if ((v59 & 0xFE) != 2)
    {
      v21 = v44;
    }

    v20 = 1.0;
    if ((v59 & 0xFE) != 2)
    {
      v20 = v40;
    }

    __asm { FMOV            V2.2D, #1.0 }

    *&_Q2 = v67;
  }

  v64 = v74;
  *v74 = v21;
  v64[1] = v20;
  *(v64 + 1) = _Q2;
  v64[4] = v22;
  v64[5] = v23;
  return result;
}

uint64_t sub_1003AB078()
{
  swift_getKeyPath();
  sub_1003AE6C0();
  sub_100797A14();

  return *(v0 + 80);
}

uint64_t sub_1003AB0E8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PageTurnViewModel.State(0);
  __chkstk_darwin(v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001F1160(&qword_100ADFEC8, &qword_100820108);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  sub_1003AE80C(v2, v6, type metadata accessor for PageTurnViewModel.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1003AE734(v6, v9, type metadata accessor for PageTurnViewModel.State.Active);
      v11 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    sub_1003AE79C(v6, type metadata accessor for PageTurnViewModel.State);
  }

  v11 = 1;
LABEL_6:
  v12 = type metadata accessor for PageTurnViewModel.State.Active(0);
  v13 = *(v12 - 8);
  (*(v13 + 56))(v9, v11, 1, v12);
  if ((*(v13 + 48))(v9, 1, v12) == 1)
  {
    sub_100007840(v9, &qword_100ADFEC8, &qword_100820108);
    v14 = 1;
  }

  else
  {
    sub_1003AE80C(&v9[*(v12 + 24)], a1, _s5StateO4TurnVMa);
    sub_1003AE79C(v9, type metadata accessor for PageTurnViewModel.State.Active);
    v14 = 0;
  }

  v15 = _s5StateO4TurnVMa(0);
  return (*(*(v15 - 8) + 56))(a1, v14, 1, v15);
}

uint64_t sub_1003AB370()
{
  v1 = v0;
  v2 = sub_1001F1160(&qword_100AD8A78, &unk_100815DE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v5 = type metadata accessor for PageTurnViewModel.State(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v18 - v9;
  swift_getKeyPath();
  v19 = v0;
  sub_1003AE6C0();
  sub_100797A14();

  v11 = sub_10079FE94();
  v13 = v12;
  if (v11 == sub_10079FE94() && v13 == v14)
  {
  }

  else
  {
    v15 = sub_1007A3AB4();

    if ((v15 & 1) == 0)
    {
      swift_getKeyPath();
      v19 = v1;
      sub_100797A14();

      sub_10079B904();
      sub_1003AB0E8(v4);
      sub_1003AE79C(v10, type metadata accessor for PageTurnViewModel.State);
      v16 = _s5StateO4TurnVMa(0);
      (*(*(v16 - 8) + 48))(v4, 1, v16);
      sub_100007840(v4, &qword_100AD8A78, &unk_100815DE0);
    }
  }

  swift_getKeyPath();
  v19 = v1;
  sub_100797A14();

  sub_10079B904();
  sub_1003AD588();
  return sub_1003AE79C(v7, type metadata accessor for PageTurnViewModel.State);
}

uint64_t sub_1003AB6C0()
{
  swift_getKeyPath();
  sub_1003AE6C0();
  sub_100797A14();

  return *(v0 + 17);
}

uint64_t sub_1003AB730()
{
  v70 = _s5StateO4TurnVMa(0);
  v68 = *(v70 - 8);
  __chkstk_darwin(v70);
  v60 = &v58 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v62 = &v58 - v3;
  __chkstk_darwin(v4);
  v64 = &v58 - v5;
  v69 = type metadata accessor for PageTurnViewModel.State(0);
  __chkstk_darwin(v69);
  v63 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = (&v58 - v8);
  __chkstk_darwin(v10);
  v12 = &v58 - v11;
  v13 = sub_1001F1160(&qword_100AD8A78, &unk_100815DE0);
  __chkstk_darwin(v13 - 8);
  v61 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v65 = &v58 - v16;
  __chkstk_darwin(v17);
  v19 = &v58 - v18;
  __chkstk_darwin(v20);
  v22 = (&v58 - v21);
  swift_getKeyPath();
  v23 = OBJC_IVAR____TtC5Books17PageTurnViewModel___observationRegistrar;
  v71 = v0;
  sub_1003AE6C0();
  sub_100797A14();

  sub_10079B904();
  sub_1003AB0E8(v22);
  v67 = v12;
  sub_1003AE79C(v12, type metadata accessor for PageTurnViewModel.State);
  swift_getKeyPath();
  v71 = v0;
  v66 = v23;
  v24 = v0;
  sub_100797A14();

  sub_10079B904();
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1003AE79C(v9, type metadata accessor for PageTurnViewModel.State);
    sub_1000077D8(v22, v19, &qword_100AD8A78, &unk_100815DE0);
    v25 = v68;
    v26 = v70;
    if (v68[6](v19, 1, v70) == 1)
    {
      sub_100007840(v22, &qword_100AD8A78, &unk_100815DE0);
      sub_100007840(v19, &qword_100AD8A78, &unk_100815DE0);
      return 0;
    }

    v29 = v64;
    sub_1003AE734(v19, v64, _s5StateO4TurnVMa);
    v28 = *&v29[*(v26 + 20)];
    sub_1003AE79C(v29, _s5StateO4TurnVMa);
  }

  else
  {
    v28 = *v9;
    v26 = v70;
    v25 = v68;
  }

  v68 = v22;
  v30 = v65;
  sub_1000077D8(v22, v65, &qword_100AD8A78, &unk_100815DE0);
  v59 = *(v25 + 48);
  v31 = v59(v30, 1, v26);
  v32 = v67;
  v64 = v28;
  if (v31 == 1)
  {
    v33 = v28;
    sub_100007840(v30, &qword_100AD8A78, &unk_100815DE0);
    v34 = 0.0;
  }

  else
  {
    v35 = v62;
    sub_1003AE734(v30, v62, _s5StateO4TurnVMa);
    swift_getKeyPath();
    v71 = v24;
    v36 = v28;
    sub_100797A14();

    if (*(v24 + 56) == 1)
    {
      if (*(v35 + *(v70 + 24)))
      {
        v37 = [objc_opt_self() sharedApplication];
        v38 = [v37 userInterfaceLayoutDirection];

        v39 = 1.0;
        if (v38 == 1)
        {
          v39 = -1.0;
        }

        if (*(v24 + 16))
        {
          v40 = -v39;
        }

        else
        {
          v40 = v39;
        }

        swift_getKeyPath();
        v71 = v24;
        sub_100797A14();

        sub_10079B904();
        v41 = sub_1003AD36C();
        sub_1003AE79C(v32, type metadata accessor for PageTurnViewModel.State);
        v42 = 220.0;
        if (v41)
        {
          v42 = 68.0;
        }

        v43 = v40 * v42;
        sub_1003AB370();
        v45 = v44;
        sub_1003AE79C(v35, _s5StateO4TurnVMa);
        v34 = v43 * v45;
      }

      else
      {
        swift_getKeyPath();
        v71 = v24;
        sub_100797A14();

        sub_10079B904();
        v46 = sub_1003AD148();
        sub_1003AE79C(v32, type metadata accessor for PageTurnViewModel.State);
        v47 = [objc_opt_self() sharedApplication];
        v48 = [v47 userInterfaceLayoutDirection];

        v49 = 1.0;
        if (v48 == 1)
        {
          v49 = -1.0;
        }

        if (*(v24 + 16))
        {
          v49 = -v49;
        }

        v50 = -(v46 * v49);
        sub_1003AB370();
        v52 = v51;
        sub_1003AE79C(v35, _s5StateO4TurnVMa);
        v34 = v52 * v50;
      }
    }

    else
    {
      sub_1003AE79C(v35, _s5StateO4TurnVMa);
      v34 = 0.0;
    }

    v26 = v70;
  }

  swift_getKeyPath();
  v71 = v24;
  sub_100797A14();

  if (*(v24 + 56) == 1)
  {
    swift_getKeyPath();
    v71 = v24;
    sub_100797A14();

    v53 = v63;
    sub_10079B904();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_1003AE79C(v53, type metadata accessor for PageTurnViewModel.State);
    if (EnumCaseMultiPayload)
    {
      v55 = v61;
      sub_1000077D8(v68, v61, &qword_100AD8A78, &unk_100815DE0);
      if (v59(v55, 1, v26) == 1)
      {
        sub_100007840(v55, &qword_100AD8A78, &unk_100815DE0);
      }

      else
      {
        v56 = v60;
        sub_1003AE734(v55, v60, _s5StateO4TurnVMa);
        sub_1007A03D4();
        sub_1003AE79C(v56, _s5StateO4TurnVMa);
      }
    }
  }

  swift_getKeyPath();
  v71 = v24;
  sub_100797A14();

  sub_10079B904();
  v57 = sub_1003AD588();

  sub_1003AE79C(v32, type metadata accessor for PageTurnViewModel.State);
  sub_100007840(v68, &qword_100AD8A78, &unk_100815DE0);
  if ((v57 & 0xFE) == 2)
  {
    return 0;
  }

  else
  {
    return *&v34;
  }
}

uint64_t sub_1003AC0A8()
{
  swift_getKeyPath();
  sub_1003AE6C0();
  sub_100797A14();

  v1 = *(v0 + 64);

  return v1;
}

void sub_1003AC128()
{
  swift_getKeyPath();
  sub_1003AE6C0();
  sub_100797A14();

  v0 = sub_10079FE94();
  v2 = v1;
  if (v0 == sub_10079FE94() && v2 == v3)
  {
  }

  else
  {
    v5 = sub_1007A3AB4();

    if ((v5 & 1) == 0)
    {
      sub_1003AE058();
      v7 = v6;
      v8 = [objc_allocWithZone(CASpringAnimation) init];
      [v8 setMass:1.0];
      [v8 setStiffness:300.0];
      [v8 setDamping:35.0];
      [v8 setInitialVelocity:v7];
      [v8 settlingDuration];
    }
  }
}

double sub_1003AC2B0()
{
  swift_getKeyPath();
  sub_1003AE6C0();
  sub_100797A14();

  return *(v0 + 24);
}

void sub_1003AC324(char a1)
{
  if (*(v1 + 17) == (a1 & 1))
  {
    *(v1 + 17) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1003AE6C0();
    sub_100797A04();
  }
}

__n128 sub_1003AC40C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1003AE6C0();
  sub_100797A14();

  result = *(v3 + 24);
  v5 = *(v3 + 40);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

void sub_1003AC488(double *a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  a2.n128_f64[0] = *a1;
  a3.n128_f64[0] = a1[1];
  a4.n128_f64[0] = a1[2];
  a5.n128_f64[0] = a1[3];
  sub_1003AC4B4(a2, a3, a4, a5);
}

void sub_1003AC4B4(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  *&v5.f64[0] = a1.n128_u64[0];
  *&v5.f64[1] = a2.n128_u64[0];
  *&v6.f64[0] = a3.n128_u64[0];
  *&v6.f64[1] = a4.n128_u64[0];
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(v4 + 24), v5), vceqq_f64(*(v4 + 40), v6)))))
  {
    *(v4 + 24) = a1.n128_u64[0];
    *(v4 + 32) = a2.n128_u64[0];
    *(v4 + 40) = a3.n128_u64[0];
    *(v4 + 48) = a4.n128_u64[0];
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1003AE6C0();
    sub_100797A04();
  }
}

uint64_t sub_1003AC5D0()
{
  swift_getKeyPath();
  sub_1003AE6C0();
  sub_100797A14();

  return *(v0 + 56);
}

void sub_1003AC640(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1003AE6C0();
  sub_100797A14();

  *a2 = *(v3 + 56);
}

void sub_1003AC6B8(char a1)
{
  if (*(v1 + 56) == (a1 & 1))
  {
    *(v1 + 56) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1003AE6C0();
    sub_100797A04();
  }
}

double sub_1003AC798@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1003AE6C0();
  sub_100797A14();

  v4 = *(v3 + 72);
  *a2 = *(v3 + 64);
  a2[1] = v4;

  return result;
}

double sub_1003AC814(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1003AC854(v1, v2);
}

double sub_1003AC854(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64) == a1 && *(v2 + 72) == a2;
  if (v5 || (sub_1007A3AB4() & 1) != 0)
  {
    *(v2 + 64) = a1;
    *(v2 + 72) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1003AE6C0();
    sub_100797A04();
  }

  return result;
}

double sub_1003AC984()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1003AE6C0();
  sub_100797A14();

  v2 = sub_10079FE94();
  v4 = v3;
  if (v2 == sub_10079FE94() && v4 == v5)
  {

    v7 = 1;
    if (*(v1 + 56))
    {
      goto LABEL_6;
    }
  }

  else
  {
    v7 = sub_1007A3AB4();

    if ((v7 & 1) == *(v1 + 56))
    {
LABEL_6:
      *(v1 + 56) = v7 & 1;
      return result;
    }
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_100797A04();

  return result;
}

void sub_1003ACB1C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1003AE6C0();
  sub_100797A14();

  *a2 = *(v3 + 80);
}

double sub_1003ACBBC(uint64_t a1, __n128 a2)
{
  v3 = a1;
  v4 = sub_10079FE94();
  v6 = v5;
  if (v4 == sub_10079FE94() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_1007A3AB4();

    if ((v9 & 1) == 0)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_1003AE6C0();
      sub_100797A04();

      return result;
    }
  }

  *(v2 + 80) = v3;

  return sub_1003AC984();
}

void *sub_1003ACD4C()
{
  swift_getKeyPath();
  sub_1003AE6C0();
  sub_100797A14();

  return sub_10079B904();
}

uint64_t sub_1003ACDC8(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for PageTurnViewModel.State(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1003AE80C(a1, v6, type metadata accessor for PageTurnViewModel.State);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_1003AE6C0();
  sub_100797A04();

  return sub_1003AE79C(v6, type metadata accessor for PageTurnViewModel.State);
}

uint64_t sub_1003ACEE8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for PageTurnViewModel.State(0);
  __chkstk_darwin(v3 - 8);
  sub_1003AE80C(a2, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PageTurnViewModel.State);
  return sub_10079B914();
}

uint64_t sub_1003ACF98()
{
  v1 = *(v0 + *(type metadata accessor for PageTurnViewModel.State.Active(0) + 28));
  if (v1 <= 1)
  {
    if (v1)
    {
      v2 = 0xEE006E727554676ELL;
      goto LABEL_10;
    }

    v2 = 0xE90000000000006ELL;
    v3._countAndFlagsBits = 0x727554736465656ELL;
  }

  else if (v1 == 2)
  {
    v2 = 0xEA00000000007465;
    v3._countAndFlagsBits = 0x736552736465656ELL;
  }

  else
  {
    if (v1 == 3)
    {
      v2 = 0xEF7465736552676ELL;
LABEL_10:
      v3._countAndFlagsBits = 0x696D726F66726570;
      goto LABEL_11;
    }

    v2 = 0x80000001008D0A60;
    v3._countAndFlagsBits = 0xD000000000000012;
  }

LABEL_11:
  v3._object = v2;
  sub_1007A23D4(v3);

  v5._countAndFlagsBits = 62;
  v5._object = 0xE100000000000000;
  sub_1007A23D4(v5);
  return 0x3A6576697463413CLL;
}

uint64_t sub_1003AD0BC()
{
  v1 = 0x727554736465656ELL;
  v2 = 0x736552736465656ELL;
  if (*v0 != 2)
  {
    v2 = 0x696D726F66726570;
  }

  if (*v0)
  {
    v1 = 0x696D726F66726570;
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

double sub_1003AD148()
{
  v1 = v0;
  v2 = type metadata accessor for PageTurnViewModel.State(0);
  __chkstk_darwin(v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001F1160(&qword_100ADFEC8, &qword_100820108);
  __chkstk_darwin(v5 - 8);
  v7 = (&v14 - v6);
  sub_1003AE80C(v1, v4, type metadata accessor for PageTurnViewModel.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1003AE734(v4, v7, type metadata accessor for PageTurnViewModel.State.Active);
      v9 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    sub_1003AE79C(v4, type metadata accessor for PageTurnViewModel.State);
  }

  v9 = 1;
LABEL_6:
  v10 = type metadata accessor for PageTurnViewModel.State.Active(0);
  v11 = *(v10 - 8);
  (*(v11 + 56))(v7, v9, 1, v10);
  if ((*(v11 + 48))(v7, 1, v10) == 1)
  {
    sub_100007840(v7, &qword_100ADFEC8, &qword_100820108);
    return 0.0;
  }

  else
  {
    v12 = *v7;
    sub_1003AE79C(v7, type metadata accessor for PageTurnViewModel.State.Active);
  }

  return v12;
}

uint64_t sub_1003AD36C()
{
  v1 = v0;
  v2 = type metadata accessor for PageTurnViewModel.State(0);
  __chkstk_darwin(v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001F1160(&qword_100ADFEC8, &qword_100820108);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  sub_1003AE80C(v1, v4, type metadata accessor for PageTurnViewModel.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1003AE734(v4, v7, type metadata accessor for PageTurnViewModel.State.Active);
      v9 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    sub_1003AE79C(v4, type metadata accessor for PageTurnViewModel.State);
  }

  v9 = 1;
LABEL_6:
  v10 = type metadata accessor for PageTurnViewModel.State.Active(0);
  v11 = *(v10 - 8);
  (*(v11 + 56))(v7, v9, 1, v10);
  if ((*(v11 + 48))(v7, 1, v10) == 1)
  {
    sub_100007840(v7, &qword_100ADFEC8, &qword_100820108);
    return 0;
  }

  else
  {
    v12 = v7[8];
    sub_1003AE79C(v7, type metadata accessor for PageTurnViewModel.State.Active);
  }

  return v12;
}

uint64_t sub_1003AD588()
{
  v1 = v0;
  v2 = type metadata accessor for PageTurnViewModel.State(0);
  __chkstk_darwin(v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001F1160(&qword_100ADFEC8, &qword_100820108);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  sub_1003AE80C(v1, v4, type metadata accessor for PageTurnViewModel.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1003AE734(v4, v7, type metadata accessor for PageTurnViewModel.State.Active);
      v9 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    sub_1003AE79C(v4, type metadata accessor for PageTurnViewModel.State);
  }

  v9 = 1;
LABEL_6:
  v10 = type metadata accessor for PageTurnViewModel.State.Active(0);
  v11 = *(v10 - 8);
  (*(v11 + 56))(v7, v9, 1, v10);
  if ((*(v11 + 48))(v7, 1, v10) == 1)
  {
    sub_100007840(v7, &qword_100ADFEC8, &qword_100820108);
    return 4;
  }

  else
  {
    v12 = v7[*(v10 + 28)];
    sub_1003AE79C(v7, type metadata accessor for PageTurnViewModel.State.Active);
  }

  return v12;
}

uint64_t sub_1003AD7A8(char a1)
{
  v3 = type metadata accessor for PageTurnViewModel.State(0);
  __chkstk_darwin(v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001F1160(&qword_100ADFEC8, &qword_100820108);
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v18 - v10;
  sub_1003AE734(v1, v5, type metadata accessor for PageTurnViewModel.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1003AE734(v5, v11, type metadata accessor for PageTurnViewModel.State.Active);
      v13 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    sub_1003AE79C(v5, type metadata accessor for PageTurnViewModel.State);
  }

  v13 = 1;
LABEL_6:
  v14 = type metadata accessor for PageTurnViewModel.State.Active(0);
  v15 = *(v14 - 8);
  (*(v15 + 56))(v11, v13, 1, v14);
  v16 = *(v15 + 48);
  if (v16(v11, 1, v14))
  {
    sub_1000077D8(v11, v8, &qword_100ADFEC8, &qword_100820108);
    if (v16(v8, 1, v14) == 1)
    {
      sub_100007840(v8, &qword_100ADFEC8, &qword_100820108);
    }

    else
    {
      sub_1003AE734(v8, v1, type metadata accessor for PageTurnViewModel.State.Active);
    }

    swift_storeEnumTagMultiPayload();
    return sub_100007840(v11, &qword_100ADFEC8, &qword_100820108);
  }

  else
  {
    v11[*(v14 + 28)] = a1;
    if (v16(v11, 1, v14) == 1)
    {
      sub_100007840(v11, &qword_100ADFEC8, &qword_100820108);
    }

    else
    {
      sub_1003AE734(v11, v1, type metadata accessor for PageTurnViewModel.State.Active);
    }

    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_1003ADADC(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for PageTurnViewModel.State.Active(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003AE80C(v2, v8, type metadata accessor for PageTurnViewModel.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1003AE734(v8, v5, type metadata accessor for PageTurnViewModel.State.Active);
      v10 = sub_1003ACF98();
      sub_1003AE79C(v5, type metadata accessor for PageTurnViewModel.State.Active);
      return v10;
    }

    else
    {
      return 1701602409;
    }
  }

  else
  {
    sub_1003AE79C(v8, type metadata accessor for PageTurnViewModel.State);
    return 0x6E69726170657270;
  }
}

uint64_t sub_1003ADC60(char a1, char a2)
{
  v5 = type metadata accessor for PageTurnViewModel.State(0);
  __chkstk_darwin(v5);
  *(v2 + 56) = 1;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0xE000000000000000;
  swift_storeEnumTagMultiPayload();
  sub_1001F1160(&qword_100ADFED8, &qword_1008201E8);
  swift_allocObject();
  *(v2 + 88) = sub_10079B924();
  *(v2 + 96) = _swiftEmptyArrayStorage;
  _s5Books17REActionMenuStateC22__observationRegistrar33_32ABA65274D463EF405FFF160E47F6ACLL11Observation0nF0Vvpfi_0();
  *(v2 + 16) = a1 & 1;
  *(v2 + 80) = a2;
  *(v2 + 17) = 0;
  v6 = *&UIEdgeInsetsZero.bottom;
  *(v2 + 24) = *&UIEdgeInsetsZero.top;
  *(v2 + 40) = v6;
  sub_1003AC984();
  return v2;
}

uint64_t sub_1003ADD78(char a1)
{
  v3 = type metadata accessor for PageTurnViewModel.State(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v7[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  v10 = v1;
  sub_1003AE6C0();
  sub_100797A14();

  sub_10079B904();
  sub_1003AD7A8(a1);
  swift_getKeyPath();
  v8 = v1;
  v9 = v5;
  v10 = v1;
  sub_100797A04();

  return sub_1003AE79C(v5, type metadata accessor for PageTurnViewModel.State);
}

uint64_t sub_1003ADED0()
{
  v0 = sub_10079ACE4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100AD19B8 != -1)
  {
    swift_once();
  }

  v4 = qword_100B23750;
  sub_10079ACF4();
  v5 = sub_10079ACC4();
  v6 = sub_1007A2994();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Cancel reset animation", v7, 2u);
  }

  (*(v1 + 8))(v3, v0);
  return sub_1003ADD78(4);
}

uint64_t sub_1003AE058()
{
  v1 = sub_1001F1160(&qword_100AD8A78, &unk_100815DE0);
  __chkstk_darwin(v1 - 8);
  v3 = &v13 - v2;
  v4 = type metadata accessor for PageTurnViewModel.State(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s5StateO4TurnVMa(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v14 = v0;
  sub_1003AE6C0();
  sub_100797A14();

  sub_10079B904();
  sub_1003AB0E8(v3);
  sub_1003AE79C(v6, type metadata accessor for PageTurnViewModel.State);
  if ((*(v8 + 48))(v3, 1, v7) == 1)
  {
    return sub_100007840(v3, &qword_100AD8A78, &unk_100815DE0);
  }

  sub_1003AE734(v3, v10, _s5StateO4TurnVMa);
  sub_1003AB730();
  if (v12)
  {
  }

  return sub_1003AE79C(v10, _s5StateO4TurnVMa);
}

uint64_t sub_1003AE2E8()
{

  v1 = OBJC_IVAR____TtC5Books17PageTurnViewModel___observationRegistrar;
  v2 = sub_100797A54();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1003AE3C4(uint64_t a1, __n128 a2)
{
  result = sub_100797A54();
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

void sub_1003AE4BC(uint64_t a1)
{
  sub_1003AE530();
  if (v1 <= 0x3F)
  {
    type metadata accessor for PageTurnViewModel.State.Active(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1003AE530()
{
  if (!qword_100ADFDF8)
  {
    v0 = sub_10025D2FC();
    if (!v1)
    {
      atomic_store(v0, &qword_100ADFDF8);
    }
  }
}

void sub_1003AE5C0(uint64_t a1)
{
  _s5StateO4TurnVMa(319);
  if (v1 <= 0x3F)
  {
    sub_1003AE65C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1003AE65C()
{
  if (!qword_100ADFE90)
  {
    v0 = sub_1007A3454();
    if (!v1)
    {
      atomic_store(v0, &qword_100ADFE90);
    }
  }
}

unint64_t sub_1003AE6C0()
{
  result = qword_100AD9690;
  if (!qword_100AD9690)
  {
    type metadata accessor for PageTurnViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AD9690);
  }

  return result;
}

uint64_t sub_1003AE734(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003AE79C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003AE80C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1003AE8AC()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 64) = v0[3];
  *(v1 + 72) = v2;
}

BOOL sub_1003AE8EC(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v4 = type metadata accessor for PageTurnViewModel.State.Active(0);
  if (!sub_10028A630(a1 + *(v4 + 24), a2 + *(v4 + 24)))
  {
    return 0;
  }

  v5 = *(v4 + 28);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 != 4)
  {
    return v6 == v7;
  }

  return v7 == 4;
}

BOOL sub_1003AE994(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageTurnViewModel.State.Active(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v22 - v8;
  v10 = type metadata accessor for PageTurnViewModel.State(0);
  __chkstk_darwin(v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1001F1160(&qword_100ADFED0, &qword_100820190);
  __chkstk_darwin(v13 - 8);
  v15 = &v22 - v14;
  v17 = *(v16 + 56);
  sub_1003AE80C(a1, &v22 - v14, type metadata accessor for PageTurnViewModel.State);
  sub_1003AE80C(a2, &v15[v17], type metadata accessor for PageTurnViewModel.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1003AE79C(&v15[v17], type metadata accessor for PageTurnViewModel.State);
      v20 = v15;
LABEL_9:
      sub_1003AE79C(v20, type metadata accessor for PageTurnViewModel.State);
      return 1;
    }

LABEL_11:
    sub_100007840(v15, &qword_100ADFED0, &qword_100820190);
    return 0;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v20 = v15;
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  sub_1003AE80C(v15, v12, type metadata accessor for PageTurnViewModel.State);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1003AE79C(v12, type metadata accessor for PageTurnViewModel.State.Active);
    goto LABEL_11;
  }

  sub_1003AE734(v12, v9, type metadata accessor for PageTurnViewModel.State.Active);
  sub_1003AE734(&v15[v17], v6, type metadata accessor for PageTurnViewModel.State.Active);
  v19 = sub_1003AE8EC(v9, v6);
  sub_1003AE79C(v6, type metadata accessor for PageTurnViewModel.State.Active);
  sub_1003AE79C(v9, type metadata accessor for PageTurnViewModel.State.Active);
  sub_1003AE79C(v15, type metadata accessor for PageTurnViewModel.State);
  return v19;
}

__n128 sub_1003AECAC()
{
  v1 = *(v0 + 16);
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *(v1 + 24) = result;
  *(v1 + 40) = v3;
  return result;
}

void sub_1003AED3C(uint64_t a1)
{
  sub_1003AEDA8(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1003AEDA8(uint64_t a1)
{
  if (!qword_100ADFF50)
  {
    type metadata accessor for HistoryModel.Entry(255);
    v1 = sub_1007A3454();
    if (!v2)
    {
      atomic_store(v1, &qword_100ADFF50);
    }
  }
}

uint64_t sub_1003AEE48(uint64_t a1)
{
  result = sub_100796C04();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1003AEEC4(uint64_t *a1, void *a2, uint64_t a3, __n128 a4)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1007A3AB4() & 1) == 0)
  {
    return 0;
  }

  return sub_100796BD4();
}

BOOL sub_1003AEF4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HistoryModel.Entry(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v36 = (&v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v9 = (&v35 - v8);
  v10 = sub_1001F1160(&qword_100ADFEE0, &qword_1008201F0);
  __chkstk_darwin(v10 - 8);
  v37 = (&v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v14 = (&v35 - v13);
  v15 = sub_1001F1160(&qword_100AE0010, &qword_100820268);
  __chkstk_darwin(v15);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v35 - v19;
  v22 = *(v21 + 48);
  sub_1003AF3FC(a1, &v35 - v19);
  v38 = a2;
  sub_1003AF3FC(a2, &v20[v22]);
  v23 = *(v5 + 48);
  if (v23(v20, 1, v4) != 1)
  {
    sub_1003AF3FC(v20, v14);
    if (v23(&v20[v22], 1, v4) != 1)
    {
      sub_1003AF4C8(&v20[v22], v9);
      v27 = *v14 == *v9 && v14[1] == v9[1];
      if (v27 || (sub_1007A3AB4() & 1) != 0)
      {
        v28 = sub_100796BD4();
        sub_1003AF46C(v9);
        sub_1003AF46C(v14);
        sub_100007840(v20, &qword_100ADFEE0, &qword_1008201F0);
        if ((v28 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_14;
      }

      sub_1003AF46C(v9);
      sub_1003AF46C(v14);
      v24 = &qword_100ADFEE0;
      v25 = &qword_1008201F0;
LABEL_7:
      v26 = v20;
LABEL_21:
      sub_100007840(v26, v24, v25);
      return 0;
    }

    sub_1003AF46C(v14);
LABEL_6:
    v24 = &qword_100AE0010;
    v25 = &qword_100820268;
    goto LABEL_7;
  }

  if (v23(&v20[v22], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_100007840(v20, &qword_100ADFEE0, &qword_1008201F0);
LABEL_14:
  v29 = *(type metadata accessor for HistoryModel(0) + 20);
  v30 = *(v15 + 48);
  sub_1003AF3FC(a1 + v29, v17);
  sub_1003AF3FC(v38 + v29, &v17[v30]);
  if (v23(v17, 1, v4) == 1)
  {
    if (v23(&v17[v30], 1, v4) == 1)
    {
      sub_100007840(v17, &qword_100ADFEE0, &qword_1008201F0);
      return 1;
    }

    goto LABEL_19;
  }

  v32 = v37;
  sub_1003AF3FC(v17, v37);
  if (v23(&v17[v30], 1, v4) == 1)
  {
    sub_1003AF46C(v32);
LABEL_19:
    v24 = &qword_100AE0010;
    v25 = &qword_100820268;
LABEL_20:
    v26 = v17;
    goto LABEL_21;
  }

  v33 = v36;
  sub_1003AF4C8(&v17[v30], v36);
  if ((*v32 != *v33 || v32[1] != v33[1]) && (sub_1007A3AB4() & 1) == 0)
  {
    sub_1003AF46C(v33);
    sub_1003AF46C(v32);
    v24 = &qword_100ADFEE0;
    v25 = &qword_1008201F0;
    goto LABEL_20;
  }

  v34 = sub_100796BD4();
  sub_1003AF46C(v33);
  sub_1003AF46C(v32);
  sub_100007840(v17, &qword_100ADFEE0, &qword_1008201F0);
  return (v34 & 1) != 0;
}

uint64_t sub_1003AF3FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100ADFEE0, &qword_1008201F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003AF46C(uint64_t a1)
{
  v2 = type metadata accessor for HistoryModel.Entry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003AF4C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HistoryModel.Entry(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1003AF5B0(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  v8 = a1;
  if (a5)
  {
    sub_1007A2254();
    v9 = sub_1007A2214();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v8;
  v12.super_class = a6(a1);
  v10 = objc_msgSendSuper2(&v12, "initWithStyle:reuseIdentifier:", a4, v9);

  return v10;
}

id sub_1003AF660(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void *, uint64_t))
{
  v8.receiver = a1;
  v8.super_class = a4(a1, a2);
  v5 = a3;
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", v5);

  if (v6)
  {
  }

  return v6;
}

void sub_1003AF810()
{
  v26.receiver = v0;
  v26.super_class = type metadata accessor for AnalyticsDebugViewController();
  objc_msgSendSuper2(&v26, "viewDidLoad");
  v1 = [v0 navigationItem];
  v2 = sub_1007A2214();
  [v1 setTitle:v2];

  sub_1001F1160(&unk_100AE00A0, qword_100820388);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100812CF0;
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  *(v3 + 32) = xmmword_100820270;
  *(v3 + 48) = sub_1003B0810;
  *(v3 + 56) = v4;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  *(v3 + 80) = xmmword_100820280;
  *(v3 + 96) = sub_1003B0818;
  *(v3 + 104) = v5;
  *(v3 + 112) = "jitterLowBoundTextFieldChangeWithTextField:";
  *(v3 + 120) = 1;
  v6 = swift_allocObject();
  *(v6 + 16) = v0;
  *(v3 + 128) = 0xD000000000000011;
  *(v3 + 136) = 0x80000001008D0C10;
  *(v3 + 144) = sub_1003B081C;
  *(v3 + 152) = v6;
  *(v3 + 160) = "jitterUpperBoundTextFieldChangeWithTextField:";
  *(v3 + 168) = 1;
  v7 = OBJC_IVAR___BKAnalyticsDebugViewController_analyticsDatas;
  *&v0[OBJC_IVAR___BKAnalyticsDebugViewController_analyticsDatas] = v3;
  v23 = v0;

  v8 = *(*&v0[v7] + 16);
  v24 = *&v0[v7];

  v22 = v8;
  if (v8)
  {
    v9 = 0;
    v10 = (v24 + 72);
    while (v9 < *(v24 + 16))
    {
      v11 = *(v10 - 5);
      v12 = *(v10 - 4);
      v13 = *(v10 - 3);
      v14 = *(v10 - 2);
      if (*v10)
      {
        type metadata accessor for AnalyticsDebugTextViewCell();
      }

      else
      {
        type metadata accessor for AnalyticsDebugSwitchCell();
      }

      v15 = [v23 tableView];
      if (!v15)
      {
        goto LABEL_11;
      }

      v16 = v14;
      v17 = v13;
      v18 = v12;
      v19 = v11;
      v20 = v15;
      ++v9;
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v21 = sub_1007A2214();

      [v20 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v21];

      sub_1003B048C(v19, v18, v17, v16);
      v10 += 48;
      if (v22 == v9)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
LABEL_9:
  }
}

void sub_1003AFB80(uint64_t a1, _BYTE *a2)
{
  v3 = a2[OBJC_IVAR___BKAnalyticsDebugViewController_analyticsJitterEnabled];
  a2[OBJC_IVAR___BKAnalyticsDebugViewController_analyticsJitterEnabled] = (v3 & 1) == 0;
  if (v3)
  {
    sub_100798304();
    sub_100798344();
  }

  sub_100798324();
  v4 = [a2 tableView];
  if (v4)
  {
    v5 = v4;
    [v4 reloadData];
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1003AFD60(void *a1)
{
  v2 = v1;
  result = sub_100796E34();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v5 = *(v1 + OBJC_IVAR___BKAnalyticsDebugViewController_analyticsDatas);
  if (result >= *(v5 + 16))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v6 = v5 + 48 * result;
  v7 = *(v6 + 40);
  v9 = *(v6 + 48);
  v8 = *(v6 + 56);
  v10 = *(v6 + 64);
  v11 = *(v6 + 72);
  v32 = *(v6 + 32);
  sub_1003B0448(v32, v7, v9, v8);
  v12 = sub_1007A2214();

  isa = sub_100796DF4().super.isa;
  v14 = [a1 dequeueReusableCellWithIdentifier:v12 forIndexPath:isa];

  if (v11 == 1)
  {
    v15 = objc_allocWithZone(UITextField);

    v16 = [v15 initWithFrame:{0.0, 0.0, 50.0, 20.0}];
    [v16 addTarget:v2 action:v10 forControlEvents:0x20000];
    aBlock[0] = v9([v16 setKeyboardType:4]);
    sub_1007A3A74();
    v17 = sub_1007A2214();

    [v16 setText:v17];

    v18 = objc_opt_self();
    v19 = v16;
    v20 = [v18 lightGrayColor];
    [v19 setBackgroundColor:v20];

    v21 = [v14 textLabel];
    if (v21)
    {
      v22 = v21;
      v23 = v32;
      v24 = sub_1007A2214();
      [v22 setText:v24];
    }

    else
    {
      v23 = v32;
    }
  }

  else
  {

    v25 = sub_100798314();
    v26 = objc_allocWithZone(type metadata accessor for DebugBoolDefaultSwitch());
    aBlock[4] = v9;
    aBlock[5] = v8;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10021B6B0;
    aBlock[3] = &unk_100A18F60;
    v27 = _Block_copy(aBlock);
    swift_retain_n();

    v28 = [v26 initWithInitialValue:v25 & 1 synchronize:v27 action:0];

    _Block_release(v27);
    v29 = [v14 textLabel];
    v23 = v32;
    if (v29)
    {
      v30 = v29;
      v31 = sub_1007A2214();
      [v30 setText:v31];
    }

    v19 = v28;
  }

  [v14 setAccessoryView:v19];
  sub_1003B048C(v23, v7, v9, v8);

  return v14;
}

id sub_1003B031C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1003B0394(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1003B03DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

double sub_1003B0448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return result;
}

double sub_1003B048C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return result;
}

void sub_1003B04C8(void *a1, void (*a2)(uint64_t))
{
  v3 = [a1 text];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1007A2254();
    v7 = v6;

    v9 = HIBYTE(v7) & 0xF;
    v10 = v5 & 0xFFFFFFFFFFFFLL;
    if ((v7 & 0x2000000000000000) != 0)
    {
      v11 = HIBYTE(v7) & 0xF;
    }

    else
    {
      v11 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      if ((v7 & 0x1000000000000000) != 0)
      {
        v35 = 0;
        v14 = sub_10063DF1C(v5, v7, 10, v8);
        v32 = v33;
LABEL_64:

        if ((v32 & 1) == 0)
        {
          a2(v14);
        }

        return;
      }

      if ((v7 & 0x2000000000000000) != 0)
      {
        v34[0] = v5;
        v34[1] = v7 & 0xFFFFFFFFFFFFFFLL;
        if (v5 == 43)
        {
          if (v9)
          {
            if (--v9)
            {
              v14 = 0;
              v24 = v34 + 1;
              while (1)
              {
                v25 = *v24 - 48;
                if (v25 > 9)
                {
                  break;
                }

                v26 = 10 * v14;
                if ((v14 * 10) >> 64 != (10 * v14) >> 63)
                {
                  break;
                }

                v14 = v26 + v25;
                if (__OFADD__(v26, v25))
                {
                  break;
                }

                ++v24;
                if (!--v9)
                {
                  goto LABEL_63;
                }
              }
            }

            goto LABEL_62;
          }

LABEL_75:
          __break(1u);
          return;
        }

        if (v5 != 45)
        {
          if (v9)
          {
            v14 = 0;
            v29 = v34;
            while (1)
            {
              v30 = *v29 - 48;
              if (v30 > 9)
              {
                break;
              }

              v31 = 10 * v14;
              if ((v14 * 10) >> 64 != (10 * v14) >> 63)
              {
                break;
              }

              v14 = v31 + v30;
              if (__OFADD__(v31, v30))
              {
                break;
              }

              ++v29;
              if (!--v9)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_62;
        }

        if (v9)
        {
          if (--v9)
          {
            v14 = 0;
            v18 = v34 + 1;
            while (1)
            {
              v19 = *v18 - 48;
              if (v19 > 9)
              {
                break;
              }

              v20 = 10 * v14;
              if ((v14 * 10) >> 64 != (10 * v14) >> 63)
              {
                break;
              }

              v14 = v20 - v19;
              if (__OFSUB__(v20, v19))
              {
                break;
              }

              ++v18;
              if (!--v9)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_62;
        }
      }

      else
      {
        if ((v5 & 0x1000000000000000) != 0)
        {
          v12 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v12 = sub_1007A37B4();
        }

        v13 = *v12;
        if (v13 == 43)
        {
          if (v10 >= 1)
          {
            v9 = v10 - 1;
            if (v10 != 1)
            {
              v14 = 0;
              if (v12)
              {
                v21 = v12 + 1;
                while (1)
                {
                  v22 = *v21 - 48;
                  if (v22 > 9)
                  {
                    goto LABEL_62;
                  }

                  v23 = 10 * v14;
                  if ((v14 * 10) >> 64 != (10 * v14) >> 63)
                  {
                    goto LABEL_62;
                  }

                  v14 = v23 + v22;
                  if (__OFADD__(v23, v22))
                  {
                    goto LABEL_62;
                  }

                  ++v21;
                  if (!--v9)
                  {
                    goto LABEL_63;
                  }
                }
              }

              goto LABEL_54;
            }

            goto LABEL_62;
          }

          goto LABEL_74;
        }

        if (v13 != 45)
        {
          if (v10)
          {
            v14 = 0;
            if (v12)
            {
              while (1)
              {
                v27 = *v12 - 48;
                if (v27 > 9)
                {
                  goto LABEL_62;
                }

                v28 = 10 * v14;
                if ((v14 * 10) >> 64 != (10 * v14) >> 63)
                {
                  goto LABEL_62;
                }

                v14 = v28 + v27;
                if (__OFADD__(v28, v27))
                {
                  goto LABEL_62;
                }

                ++v12;
                if (!--v10)
                {
                  goto LABEL_54;
                }
              }
            }

            goto LABEL_54;
          }

LABEL_62:
          v14 = 0;
          LOBYTE(v9) = 1;
          goto LABEL_63;
        }

        if (v10 >= 1)
        {
          v9 = v10 - 1;
          if (v10 != 1)
          {
            v14 = 0;
            if (v12)
            {
              v15 = v12 + 1;
              while (1)
              {
                v16 = *v15 - 48;
                if (v16 > 9)
                {
                  goto LABEL_62;
                }

                v17 = 10 * v14;
                if ((v14 * 10) >> 64 != (10 * v14) >> 63)
                {
                  goto LABEL_62;
                }

                v14 = v17 - v16;
                if (__OFSUB__(v17, v16))
                {
                  goto LABEL_62;
                }

                ++v15;
                if (!--v9)
                {
                  goto LABEL_63;
                }
              }
            }

LABEL_54:
            LOBYTE(v9) = 0;
LABEL_63:
            v35 = v9;
            v32 = v9;
            goto LABEL_64;
          }

          goto LABEL_62;
        }

        __break(1u);
      }

      __break(1u);
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }
  }
}

uint64_t sub_1003B0820()
{
  v0 = sub_1001F1160(&unk_100AD9108, &qword_100820550);
  sub_100009A38(v0, qword_100AE00B0);
  sub_100008B98(v0, qword_100AE00B0);
  v1 = [objc_opt_self() standardUserDefaults];
  return sub_100798F14();
}

id sub_1003B08D0()
{
  v45 = sub_1001F1160(&unk_100AD9108, &qword_100820550);
  v48 = *(v45 - 8);
  __chkstk_darwin(v45);
  v46 = &v45 - v1;
  v54 = _swiftEmptyArrayStorage;
  sub_1001F1160(&unk_100AE01E0, &qword_100820558);
  v2 = swift_allocObject();
  v47 = xmmword_10080B690;
  *(v2 + 16) = xmmword_10080B690;
  *(v2 + 32) = UIActivityTypeOpenInIBooks;
  v3 = UIActivityTypeOpenInIBooks;
  v4 = sub_1007A2214();
  v5 = sub_10066B640(1, 2, 1, v2);
  v5[2] = 2;
  v5[5] = v4;
  v6 = *(v0 + 24);
  v55 = *(v0 + 8);
  v56 = v6;
  v57 = *(v0 + 40);
  v7 = *(v0 + 64);
  v58 = *(v0 + 56);
  v8 = *v0;
  v9 = type metadata accessor for QuoteSharingSocialNetworkActivity();
  v10 = objc_allocWithZone(v9);
  v10[OBJC_IVAR____TtC5BooksP33_2C2BED1571008C9518B7996B9F10173C33QuoteSharingSocialNetworkActivity_socialNetwork] = 1;
  *&v10[OBJC_IVAR____TtC5BooksP33_2C2BED1571008C9518B7996B9F10173C33QuoteSharingSocialNetworkActivity_backgroundImage] = v7;
  *&v10[OBJC_IVAR____TtC5BooksP33_2C2BED1571008C9518B7996B9F10173C33QuoteSharingSocialNetworkActivity_stickerImage] = v8;
  v53.receiver = v10;
  v53.super_class = v9;
  v11 = v8;
  v12 = v7;
  v13 = v11;
  v14 = v12;
  v15 = v13;
  v16 = v14;
  v17 = objc_msgSendSuper2(&v53, "init");
  sub_1007A25C4();
  if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1007A2614();
  }

  sub_1007A2644();

  v18 = v5[2];
  v19 = v5[3];
  v20 = UIActivityTypePostToFacebook;
  if (v18 >= v19 >> 1)
  {
    v43 = v19 > 1;
    v44 = v20;
    v5 = sub_10066B640(v43, v18 + 1, 1, v5);
    v20 = v44;
  }

  v5[2] = v18 + 1;
  v5[v18 + 4] = v20;
  v21 = objc_allocWithZone(v9);
  v21[OBJC_IVAR____TtC5BooksP33_2C2BED1571008C9518B7996B9F10173C33QuoteSharingSocialNetworkActivity_socialNetwork] = 0;
  *&v21[OBJC_IVAR____TtC5BooksP33_2C2BED1571008C9518B7996B9F10173C33QuoteSharingSocialNetworkActivity_backgroundImage] = v16;
  *&v21[OBJC_IVAR____TtC5BooksP33_2C2BED1571008C9518B7996B9F10173C33QuoteSharingSocialNetworkActivity_stickerImage] = v15;
  v52.receiver = v21;
  v52.super_class = v9;
  v22 = objc_msgSendSuper2(&v52, "init");
  sub_1007A25C4();
  if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1007A2614();
  }

  sub_1007A2644();

  v23 = sub_1007A2214();
  v25 = v5[2];
  v24 = v5[3];
  v26 = v23;
  if (v25 >= v24 >> 1)
  {
    v5 = sub_10066B640((v24 > 1), v25 + 1, 1, v5);
  }

  v5[2] = v25 + 1;
  v5[v25 + 4] = v26;
  v27 = objc_allocWithZone(v9);
  v27[OBJC_IVAR____TtC5BooksP33_2C2BED1571008C9518B7996B9F10173C33QuoteSharingSocialNetworkActivity_socialNetwork] = 2;
  *&v27[OBJC_IVAR____TtC5BooksP33_2C2BED1571008C9518B7996B9F10173C33QuoteSharingSocialNetworkActivity_backgroundImage] = v16;
  *&v27[OBJC_IVAR____TtC5BooksP33_2C2BED1571008C9518B7996B9F10173C33QuoteSharingSocialNetworkActivity_stickerImage] = v15;
  v51.receiver = v27;
  v51.super_class = v9;
  v28 = objc_msgSendSuper2(&v51, "init");
  sub_1007A25C4();
  if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1007A2614();
  }

  sub_1007A2644();

  sub_1001F1160(&qword_100AD7FB0, &unk_100820560);
  v29 = swift_allocObject();
  *(v29 + 16) = v47;
  v59 = v57;
  v60 = v56;
  v30 = type metadata accessor for QuoteSharingActivityItem();
  v31 = objc_allocWithZone(v30);
  *&v31[OBJC_IVAR____TtC5BooksP33_2C2BED1571008C9518B7996B9F10173C24QuoteSharingActivityItem_name] = v60;
  *&v31[OBJC_IVAR____TtC5BooksP33_2C2BED1571008C9518B7996B9F10173C24QuoteSharingActivityItem_author] = v59;
  *&v31[OBJC_IVAR____TtC5BooksP33_2C2BED1571008C9518B7996B9F10173C24QuoteSharingActivityItem_image] = v15;
  sub_1002BB1A4(&v60, v50);
  sub_1002BB1A4(&v59, v50);
  v49.receiver = v31;
  v49.super_class = v30;
  v32 = objc_msgSendSuper2(&v49, "init");
  *(v29 + 56) = v30;
  *(v29 + 32) = v32;
  if (qword_100AD14E0 != -1)
  {
    swift_once();
  }

  v33 = v45;
  v34 = sub_100008B98(v45, qword_100AE00B0);
  v35 = v48;
  v36 = v46;
  (*(v48 + 16))(v46, v34, v33);
  sub_100798EE4();
  (*(v35 + 8))(v36, v33);
  if ((v50[0] & 1) == 0)
  {
  }

  v37 = objc_allocWithZone(UIActivityViewController);
  isa = sub_1007A25D4().super.isa;

  sub_1003B1FB4();
  v39 = sub_1007A25D4().super.isa;

  v40 = [v37 initWithActivityItems:isa applicationActivities:v39];

  type metadata accessor for ActivityType(0);
  v41 = sub_1007A25D4().super.isa;

  [v40 setExcludedActivityTypes:v41];

  return v40;
}

uint64_t sub_1003B0F6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1003B1F60();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1003B0FD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1003B1F60();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1003B1034(uint64_t a1)
{
  sub_1003B1F60();
  sub_10079D194();
  __break(1u);
}

id sub_1003B14D4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1003B1618()
{
  v1 = v0;
  v2 = sub_1007969B4();
  v44 = *(v2 - 8);
  v45 = v2;
  __chkstk_darwin(v2);
  v43 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100796BB4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC5BooksP33_2C2BED1571008C9518B7996B9F10173C33QuoteSharingSocialNetworkActivity_socialNetwork;
  v9 = sub_1003B52D0(*(v0 + OBJC_IVAR____TtC5BooksP33_2C2BED1571008C9518B7996B9F10173C33QuoteSharingSocialNetworkActivity_socialNetwork));
  v10 = UIImagePNGRepresentation(*(v1 + OBJC_IVAR____TtC5BooksP33_2C2BED1571008C9518B7996B9F10173C33QuoteSharingSocialNetworkActivity_stickerImage));
  v46 = v8;
  if (v10)
  {
    v11 = v10;
    v12 = sub_1007969D4();
    v14 = v13;

    v15 = "ativekit.stickerImage";
    v16 = 0xD000000000000025;
    if (*(v1 + v8) == 1)
    {
      v16 = 0xD000000000000028;
    }

    else
    {
      v15 = "redSticker.backgroundImage";
    }

    if (*(v1 + v8))
    {
      v17 = v16;
    }

    else
    {
      v17 = 0xD000000000000027;
    }

    if (*(v1 + v8))
    {
      v18 = v15;
    }

    else
    {
      v18 = "aredSticker.stickerImage";
    }

    v51 = &type metadata for Data;
    v49 = v12;
    v50 = v14;
    sub_1000076D4(&v49, v48);
    sub_1003B1DE4(v12, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = v9;
    sub_1002F4B78(v48, v17, v18 | 0x8000000000000000, isUniquelyReferenced_nonNull_native);
    sub_10000ADCC(v12, v14);

    v8 = v46;
    v9 = v47;
  }

  v20 = UIImagePNGRepresentation(*(v1 + OBJC_IVAR____TtC5BooksP33_2C2BED1571008C9518B7996B9F10173C33QuoteSharingSocialNetworkActivity_backgroundImage));
  if (v20)
  {
    v21 = v20;
    v22 = sub_1007969D4();
    v24 = v23;

    v25 = "ativekit.backgroundImage";
    v26 = 0xD00000000000002BLL;
    if (*(v1 + v8) != 1)
    {
      v26 = 0xD000000000000028;
      v25 = "ngSocialNetworkActivity";
    }

    if (*(v1 + v8))
    {
      v27 = v26;
    }

    else
    {
      v27 = 0xD00000000000002ALL;
    }

    if (*(v1 + v8))
    {
      v28 = v25;
    }

    else
    {
      v28 = "aredSticker.backgroundImage";
    }

    v51 = &type metadata for Data;
    v49 = v22;
    v50 = v24;
    sub_1000076D4(&v49, v48);
    sub_1003B1DE4(v22, v24);
    v29 = swift_isUniquelyReferenced_nonNull_native();
    v47 = v9;
    sub_1002F4B78(v48, v27, v28 | 0x8000000000000000, v29);
    sub_10000ADCC(v22, v24);

    v9 = v47;
  }

  v30 = [objc_opt_self() generalPasteboard];
  sub_1001F1160(&unk_100AE01A8, &unk_1008203F0);
  v31 = swift_allocObject();
  v42 = xmmword_10080B690;
  *(v31 + 16) = xmmword_10080B690;
  *(v31 + 32) = v9;
  sub_1001F1160(&qword_100AD6710, &unk_10080B890);
  isa = sub_1007A25D4().super.isa;

  sub_1001F1160(&qword_100AE01B8, &unk_100820400);
  inited = swift_initStackObject();
  *(inited + 16) = v42;
  *(inited + 32) = UIPasteboardOptionExpirationDate;
  v34 = UIPasteboardOptionExpirationDate;
  sub_100796BA4();
  *(inited + 64) = v4;
  sub_1002256EC((inited + 40));
  sub_100796AE4();
  (*(v5 + 8))(v7, v4);
  sub_1001EDEC4(inited);
  swift_setDeallocating();
  sub_1003B1D34(inited + 32);
  _s3__C10OptionsKeyVMa_0(0);
  sub_1003B1D9C(&qword_100AD3FF8, _s3__C10OptionsKeyVMa_0, &unk_10080E260);
  v35 = sub_1007A2024().super.isa;

  [v30 setItems:isa options:v35];

  v36 = [objc_opt_self() sharedApplication];
  v37 = v43;
  sub_1003B501C(*(v1 + v46), v43);
  sub_100796944(v38);
  v40 = v39;
  (*(v44 + 8))(v37, v45);
  sub_1001ED2F8(_swiftEmptyArrayStorage);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_1003B1D9C(&qword_100AE01C0, type metadata accessor for OpenExternalURLOptionsKey, &unk_10080E21C);
  v41 = sub_1007A2024().super.isa;

  [v36 openURL:v40 options:v41 completionHandler:0];
}

id sub_1003B1BE8()
{
  v1 = [objc_allocWithZone(LPLinkMetadata) init];
  v2 = [objc_allocWithZone(NSItemProvider) initWithObject:*(v0 + OBJC_IVAR____TtC5BooksP33_2C2BED1571008C9518B7996B9F10173C24QuoteSharingActivityItem_image)];
  v3 = [objc_allocWithZone(LPiTunesMediaBookMetadata) init];
  v4 = sub_1007A2214();
  [v3 setName:v4];

  v5 = sub_1007A2214();
  [v3 setAuthor:v5];

  v6 = [objc_allocWithZone(LPImage) initWithItemProvider:v2 properties:0 placeholderImage:0];
  [v3 setArtwork:v6];

  [v1 setSpecialization:v3];
  return v1;
}

uint64_t sub_1003B1D34(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AD3880, &unk_10080CC60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003B1D9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1003B1DE4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

__n128 sub_1003B1E38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1003B1E5C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1003B1EA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1003B1F0C()
{
  result = qword_100AE01C8;
  if (!qword_100AE01C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE01C8);
  }

  return result;
}

unint64_t sub_1003B1F60()
{
  result = qword_100AE01D0;
  if (!qword_100AE01D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE01D0);
  }

  return result;
}

unint64_t sub_1003B1FB4()
{
  result = qword_100AE01F0;
  if (!qword_100AE01F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AE01F0);
  }

  return result;
}

Swift::Int LocationControllingError.hashValue.getter(char a1)
{
  sub_1007A3C04();
  sub_1007A3C14(a1 & 1);
  return sub_1007A3C44();
}

unint64_t sub_1003B2090()
{
  result = qword_100AE0200;
  if (!qword_100AE0200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE0200);
  }

  return result;
}

unint64_t sub_1003B20E8()
{
  result = qword_100AE0208;
  if (!qword_100AE0208)
  {
    sub_1001F1234(&qword_100AE0210, &qword_1008205D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE0208);
  }

  return result;
}

__n128 sub_1003B216C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1003B2198(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
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

uint64_t sub_1003B21E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1003B2268@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_1001F1160(&qword_100AE0218, &qword_100820708);
  __chkstk_darwin(v3 - 8);
  v5 = (&v11 - v4);
  *v5 = sub_10079E474();
  v5[1] = v6;
  v7 = sub_1001F1160(&qword_100AE0220, &unk_100820710);
  sub_1003B23E0(v1, (v5 + *(v7 + 44)));
  v12 = *v1;
  LOBYTE(v13) = *(v1 + 16);
  sub_1001F1160(&qword_100AE0228, &qword_100820920);
  sub_10079E1C4();
  v12 = *v1;
  LOBYTE(v13) = *(v1 + 16);
  sub_10079E1C4();
  sub_10079E474();
  sub_10079BE54();
  sub_1003B3C5C(v5, a1);
  v8 = (a1 + *(sub_1001F1160(&qword_100AE0230, &qword_100820720) + 36));
  v9 = v13;
  *v8 = v12;
  v8[1] = v9;
  result = *&v14;
  v8[2] = v14;
  return result;
}

double sub_1003B23E0@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1001F1160(&qword_100AE0238, &qword_100820728);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = (&v27 - v9);
  v11 = sub_10079DF34();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 80);
  sub_10079DF04();
  (*(v12 + 104))(v14, enum case for Image.ResizingMode.stretch(_:), v11);
  v16 = sub_10079DF94();

  (*(v12 + 8))(v14, v11);
  *v10 = sub_10079E474();
  v10[1] = v17;
  v18 = sub_1001F1160(&qword_100AE0240, &qword_100820730);
  sub_1003B2664(a1, (v10 + *(v18 + 44)));
  v19 = sub_10079D294();
  sub_10079BBA4();
  v20 = v10 + *(v5 + 44);
  *v20 = v19;
  *(v20 + 1) = v21;
  *(v20 + 2) = v22;
  *(v20 + 3) = v23;
  *(v20 + 4) = v24;
  v20[40] = 0;
  sub_1000077D8(v10, v7, &qword_100AE0238, &qword_100820728);
  *a2 = v16;
  v25 = sub_1001F1160(&qword_100AE0248, &qword_100820738);
  sub_1000077D8(v7, a2 + *(v25 + 48), &qword_100AE0238, &qword_100820728);

  sub_100007840(v10, &qword_100AE0238, &qword_100820728);
  sub_100007840(v7, &qword_100AE0238, &qword_100820728);

  return result;
}

uint64_t sub_1003B2664@<X0>(__int128 *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_1001F1160(&qword_100AE0250, &qword_100820740);
  __chkstk_darwin(v4 - 8);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v19[-v8];
  v10 = sub_10079CB24();
  v20 = 1;
  sub_1003B2924(&v31);
  v23 = *&v32[16];
  v24 = *&v32[32];
  v25 = *&v32[48];
  v26 = v32[64];
  v21 = v31;
  v22 = *v32;
  v28 = v32[64];
  v27[2] = *&v32[16];
  v27[3] = *&v32[32];
  v27[4] = *&v32[48];
  v27[0] = v31;
  v27[1] = *v32;
  sub_1000077D8(&v21, v29, &qword_100AE0258, &qword_100820748);
  sub_100007840(v27, &qword_100AE0258, &qword_100820748);
  *&v19[39] = v23;
  *&v19[55] = v24;
  *&v19[71] = v25;
  v19[87] = v26;
  *&v19[7] = v21;
  *&v19[23] = v22;
  v11 = v20;
  *v9 = sub_10079CB34();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v12 = sub_1001F1160(&qword_100AE0260, &qword_100820750);
  sub_1003B2C8C(a1, &v9[*(v12 + 44)]);
  sub_1000077D8(v9, v6, &qword_100AE0250, &qword_100820740);
  v29[0] = v10;
  v29[1] = 0;
  LOBYTE(v30[0]) = v11;
  *(v30 + 1) = *v19;
  *(&v30[1] + 1) = *&v19[16];
  *(&v30[5] + 1) = *&v19[80];
  *(&v30[4] + 1) = *&v19[64];
  *(&v30[3] + 1) = *&v19[48];
  *(&v30[2] + 1) = *&v19[32];
  v13 = v30[0];
  *a2 = v10;
  a2[1] = v13;
  v14 = v30[1];
  v15 = v30[2];
  *(a2 + 89) = *(&v30[4] + 9);
  v16 = v30[4];
  a2[4] = v30[3];
  a2[5] = v16;
  a2[2] = v14;
  a2[3] = v15;
  v17 = sub_1001F1160(&qword_100AE0268, &qword_100820758);
  sub_1000077D8(v6, a2 + *(v17 + 48), &qword_100AE0250, &qword_100820740);
  sub_1000077D8(v29, &v31, &qword_100AE0270, &qword_100820760);
  sub_100007840(v9, &qword_100AE0250, &qword_100820740);
  sub_100007840(v6, &qword_100AE0250, &qword_100820740);
  *&v32[33] = *&v19[32];
  *&v32[49] = *&v19[48];
  v33 = *&v19[64];
  *&v32[1] = *v19;
  v31 = v10;
  v32[0] = v11;
  v34 = *&v19[80];
  *&v32[17] = *&v19[16];
  return sub_100007840(&v31, &qword_100AE0270, &qword_100820760);
}

double sub_1003B2924@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_10079C8F4();
  sub_1003B29F8(&v11);
  v4 = v11;
  v5 = v12;
  v6 = v13;
  v7 = v14;
  v8 = v15;
  v9 = v16;
  LOBYTE(v11) = 1;
  v18 = v12;
  v17 = v15;
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  *(a2 + 48) = v7;
  *(a2 + 56) = v8;
  *(a2 + 64) = v9;
  *(a2 + 72) = 0;
  *(a2 + 80) = 1;
  sub_1001F1894(v6, v7, v8);

  sub_10020B430(v6, v7, v8);

  return result;
}

double sub_1003B29F8@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1001F1160(&unk_100AD1FC0, &unk_10080B850);
  __chkstk_darwin(v2 - 8);
  v4 = v22 - v3;
  v5 = sub_10079D4D4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[2] = 0x736B6F6F42BFA3EFLL;
  v22[3] = 0xA800000000000000;
  sub_100206ECC();
  v9 = sub_10079D5D4();
  v11 = v10;
  v13 = v12;
  (*(v6 + 104))(v8, enum case for Font.TextStyle.title3(_:), v5);
  v14 = sub_10079D3A4();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_10079D3D4();
  sub_10079D434();
  sub_100007840(v4, &unk_100AD1FC0, &unk_10080B850);
  (*(v6 + 8))(v8, v5);
  v15 = sub_10079D5A4();
  v17 = v16;
  LOBYTE(v4) = v18;
  v20 = v19;

  sub_10020B430(v9, v11, v13 & 1);

  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v15;
  *(a1 + 24) = v17;
  *(a1 + 32) = v4 & 1;
  *(a1 + 40) = v20;
  sub_1001F1894(v15, v17, v4 & 1);

  sub_10020B430(v15, v17, v4 & 1);

  return result;
}

uint64_t sub_1003B2C8C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001F1160(&qword_100AE0278, &qword_100820768);
  __chkstk_darwin(v4 - 8);
  v6 = &v47[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v47[-v8];
  v10 = sub_1001F1160(&qword_100AE0280, &qword_100820770);
  __chkstk_darwin(v10 - 8);
  v57 = &v47[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v47[-v13];
  v15 = sub_1001F1160(&qword_100AE0288, &qword_100820778);
  __chkstk_darwin(v15 - 8);
  v59 = &v47[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v19 = &v47[-v18];
  *v19 = sub_10079C8F4();
  *(v19 + 1) = 0;
  v19[16] = 1;
  v58 = v19;
  v20 = sub_1001F1160(&qword_100AE0290, &qword_100820780);
  sub_1003B324C(&v19[*(v20 + 44)]);
  v21 = *(a1 + 4);
  *&v66 = *(a1 + 3);
  *(&v66 + 1) = v21;
  sub_100206ECC();

  v56 = sub_10079D5D4();
  v55 = v22;
  v24 = v23;
  v54 = v25;
  v66 = *a1;
  v67 = *(a1 + 16);
  sub_1001F1160(&qword_100AE0228, &qword_100820920);
  sub_10079E1F4();
  v52 = *(&v61 + 1);
  v53 = v61;
  v51 = v62;
  v60 = sub_1003B58EC(*(a1 + 104));
  v27 = v26;
  v28 = v24 & 1;
  LOBYTE(v66) = v24 & 1;
  v48 = v24 & 1;
  v66 = *a1;
  v67 = *(a1 + 16);
  sub_10079E1C4();
  v29 = 0x4044000000000000;
  if (v61)
  {
    v29 = 0x4034000000000000;
  }

  v50 = v29;
  *v14 = sub_10079C8F4();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v30 = &v14[*(sub_1001F1160(&qword_100AE0298, &qword_100820788) + 44)];
  v49 = v14;
  *v9 = sub_10079C8F4();
  *(v9 + 1) = 0x402E000000000000;
  v9[16] = 0;
  v31 = sub_1001F1160(&qword_100AE02A0, &qword_100820790);
  sub_1003B3544(a1, &v9[*(v31 + 44)]);
  sub_1000077D8(v9, v6, &qword_100AE0278, &qword_100820768);
  sub_1000077D8(v6, v30, &qword_100AE0278, &qword_100820768);
  v32 = v30 + *(sub_1001F1160(&qword_100AE02A8, &qword_100820798) + 48);
  *v32 = 0;
  *(v32 + 8) = 1;
  sub_100007840(v9, &qword_100AE0278, &qword_100820768);
  sub_100007840(v6, &qword_100AE0278, &qword_100820768);
  v33 = v59;
  sub_1000077D8(v58, v59, &qword_100AE0288, &qword_100820778);
  v34 = v57;
  sub_1000077D8(v14, v57, &qword_100AE0280, &qword_100820770);
  *a2 = 0;
  *(a2 + 8) = 1;
  v35 = sub_1001F1160(&qword_100AE02B0, &qword_1008207A0);
  sub_1000077D8(v33, a2 + v35[12], &qword_100AE0288, &qword_100820778);
  v36 = a2 + v35[16];
  v37 = v56;
  v38 = v55;
  *&v61 = v56;
  *(&v61 + 1) = v55;
  LOBYTE(v62) = v28;
  v39 = v54;
  v40 = v53;
  *(&v62 + 1) = v54;
  *&v63 = v53;
  v41 = v52;
  *(&v63 + 1) = v52;
  v42 = v51;
  LOBYTE(v64) = v51;
  *(&v64 + 1) = v60;
  v65 = v27;
  v43 = v64;
  *(v36 + 32) = v63;
  *(v36 + 48) = v43;
  v44 = v62;
  *v36 = v61;
  *(v36 + 16) = v44;
  *(v36 + 64) = v65;
  v45 = a2 + v35[20];
  *v45 = v50;
  *(v45 + 8) = 0;
  sub_1000077D8(v34, a2 + v35[24], &qword_100AE0280, &qword_100820770);
  sub_1000077D8(&v61, &v66, &qword_100AE02B8, &qword_1008207A8);
  sub_100007840(v49, &qword_100AE0280, &qword_100820770);
  sub_100007840(v58, &qword_100AE0288, &qword_100820778);
  sub_100007840(v34, &qword_100AE0280, &qword_100820770);
  *&v66 = v37;
  *(&v66 + 1) = v38;
  v67 = v48;
  v68 = v39;
  v69 = v40;
  v70 = v41;
  v71 = v42;
  v72 = v60;
  v73 = v27;
  sub_100007840(&v66, &qword_100AE02B8, &qword_1008207A8);
  return sub_100007840(v59, &qword_100AE0288, &qword_100820778);
}

uint64_t sub_1003B324C@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v1 = sub_1001F1160(&unk_100AD1FC0, &unk_10080B850);
  __chkstk_darwin(v1 - 8);
  v3 = &v23 - v2;
  v4 = sub_1001F1160(&qword_100AE02F0, &qword_100820810);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = (&v23 - v9);
  v11 = sub_10079DF24();
  sub_10079D3B4();
  v12 = sub_10079D3A4();
  (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
  v13 = sub_10079D424();
  sub_100007840(v3, &unk_100AD1FC0, &unk_10080B850);
  KeyPath = swift_getKeyPath();
  v15 = (v10 + *(sub_1001F1160(&qword_100AD1CD8, &unk_10080B710) + 36));
  v16 = *(sub_1001F1160(&qword_100AEE3C0, &qword_1008173A0) + 28);
  v17 = enum case for Image.Scale.large(_:);
  v18 = sub_10079DF84();
  (*(*(v18 - 8) + 104))(v15 + v16, v17, v18);
  *v15 = swift_getKeyPath();
  *v10 = v11;
  v10[1] = KeyPath;
  v10[2] = v13;
  _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  v19 = sub_10079DE24();

  *(v10 + *(v5 + 44)) = v19;
  sub_1000077D8(v10, v7, &qword_100AE02F0, &qword_100820810);
  v20 = v24;
  sub_1000077D8(v7, v24, &qword_100AE02F0, &qword_100820810);
  v21 = v20 + *(sub_1001F1160(&qword_100AE02F8, &qword_100820848) + 48);
  *v21 = 0;
  *(v21 + 8) = 1;
  sub_100007840(v10, &qword_100AE02F0, &qword_100820810);
  return sub_100007840(v7, &qword_100AE02F0, &qword_100820810);
}

uint64_t sub_1003B3544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a1;
  v45 = a2;
  v3 = sub_10079DF34();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10079B744();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v41 - v12;
  v43 = sub_1001F1160(&qword_100AE02C0, &qword_1008207B0) - 8;
  __chkstk_darwin(v43);
  v46 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = (&v41 - v16);
  v42 = *(a1 + 72);
  sub_10079DF04();
  sub_10079B734();
  (*(v4 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v3);
  v41 = sub_10079DF94();
  (*(v4 + 8))(v6, v3);
  (*(v8 + 16))(v10, v13, v7);
  sub_1001F1160(&qword_100AE02C8, &qword_1008207B8);
  sub_1003B3CCC(v18);
  sub_10079B784();

  (*(v8 + 8))(v13, v7);
  v19 = v42;
  *v17 = v41;
  [v19 size];
  v22 = v20 / v21;
  v23 = v17 + *(sub_1001F1160(&qword_100AE02D8, &qword_1008207C0) + 36);
  *v23 = v22;
  *(v23 + 4) = 0;
  sub_10079E484();
  sub_10079BE54();
  v24 = (v17 + *(v43 + 44));
  v25 = *&v47[11];
  *v24 = *&v47[9];
  v24[1] = v25;
  v24[2] = *&v47[13];
  v26 = sub_10079CB34();
  LOBYTE(v52[0]) = 1;
  sub_1003B3A3C(v48);
  *(v47 + 7) = v48[0];
  *(&v47[2] + 7) = v48[1];
  *(&v47[4] + 7) = v48[2];
  *(&v47[6] + 7) = v48[3];
  LOBYTE(v6) = v52[0];
  v27 = sub_10079D354();
  KeyPath = swift_getKeyPath();
  v29 = v46;
  sub_1000077D8(v17, v46, &qword_100AE02C0, &qword_1008207B0);
  v30 = v29;
  v31 = v45;
  sub_1000077D8(v30, v45, &qword_100AE02C0, &qword_1008207B0);
  v32 = sub_1001F1160(&qword_100AE02E0, &qword_1008207F8);
  v33 = v31 + *(v32 + 48);
  v49[0] = v26;
  v49[1] = 0;
  LOBYTE(v50[0]) = v6;
  *(v50 + 1) = *v47;
  *(&v50[1] + 1) = *&v47[2];
  *(&v50[3] + 1) = *&v47[6];
  *(&v50[2] + 1) = *&v47[4];
  *&v50[4] = *(&v47[7] + 7);
  *(&v50[4] + 1) = KeyPath;
  v51 = v27;
  v34 = v50[0];
  *v33 = v26;
  *(v33 + 16) = v34;
  v35 = v50[1];
  v36 = v50[2];
  v37 = v50[3];
  v38 = v50[4];
  *(v33 + 96) = v27;
  *(v33 + 64) = v37;
  *(v33 + 80) = v38;
  *(v33 + 32) = v35;
  *(v33 + 48) = v36;
  v39 = v31 + *(v32 + 64);
  *v39 = 0;
  *(v39 + 8) = 1;
  sub_1000077D8(v49, v52, &qword_100AE02E8, &unk_100820800);
  sub_100007840(v17, &qword_100AE02C0, &qword_1008207B0);
  v55 = *&v47[2];
  v56 = *&v47[4];
  *v57 = *&v47[6];
  v52[0] = v26;
  v52[1] = 0;
  v53 = v6;
  v54 = *v47;
  *&v57[15] = *(&v47[7] + 7);
  v58 = KeyPath;
  v59 = v27;
  sub_100007840(v52, &qword_100AE02E8, &unk_100820800);
  return sub_100007840(v46, &qword_100AE02C0, &qword_1008207B0);
}

double sub_1003B3A3C@<D0>(uint64_t a2@<X8>)
{
  sub_100206ECC();

  v3 = sub_10079D5D4();
  v5 = v4;
  v7 = v6;
  sub_10079D3B4();
  v26 = sub_10079D544();
  v27 = v8;
  v10 = v9;
  v25 = v11;
  sub_10020B430(v3, v5, v7 & 1);

  v12 = sub_10079D5D4();
  v14 = v13;
  v16 = v15;
  sub_10079D3F4();
  v17 = sub_10079D544();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_10020B430(v12, v14, v16 & 1);

  *a2 = v26;
  *(a2 + 8) = v10;
  *(a2 + 16) = v25 & 1;
  *(a2 + 24) = v27;
  *(a2 + 32) = v17;
  *(a2 + 40) = v19;
  *(a2 + 48) = v21 & 1;
  *(a2 + 56) = v23;
  sub_1001F1894(v26, v10, v25 & 1);

  sub_1001F1894(v17, v19, v21 & 1);

  sub_10020B430(v17, v19, v21 & 1);

  sub_10020B430(v26, v10, v25 & 1);

  return result;
}

uint64_t sub_1003B3C5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AE0218, &qword_100820708);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1003B3CCC(double a1)
{
  result = qword_100AE02D0;
  if (!qword_100AE02D0)
  {
    sub_10079B744();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE02D0);
  }

  return result;
}

unint64_t sub_1003B3D24()
{
  result = qword_100AE0300;
  if (!qword_100AE0300)
  {
    sub_1001F1234(&qword_100AE0230, &qword_100820720);
    sub_1003B3DB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE0300);
  }

  return result;
}

unint64_t sub_1003B3DB0()
{
  result = qword_100AE0308;
  if (!qword_100AE0308)
  {
    sub_1001F1234(&qword_100AE0218, &qword_100820708);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE0308);
  }

  return result;
}

uint64_t property wrapper backing initializer of QuoteSharingSegmentedControl.defaultImageWidth(double a1)
{
  v2 = sub_10079D4D4();
  v3 = __chkstk_darwin(v2);
  *&v7[1] = a1;
  (*(v5 + 104))(v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Font.TextStyle.body(_:), v3);
  sub_100247DCC();
  return sub_10079BDD4();
}

uint64_t QuoteSharingSegmentedControl.body.getter@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_10079C8F4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = sub_1001F1160(&qword_100AE0310, &qword_100820850);
  sub_1003B3F7C(v2, (a2 + *(v4 + 44)));
  v5 = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  result = sub_1001F1160(&qword_100AE0318, &qword_100820858);
  *(a2 + *(result + 36)) = v5;
  return result;
}

uint64_t sub_1003B3F7C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v33 = a2;
  v3 = type metadata accessor for QuoteSharingSegmentedControl(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v29[1] = v5;
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001F1160(&qword_100AE03D8, &qword_1008208F0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v32 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v31 = v29 - v11;
  __chkstk_darwin(v12);
  v30 = v29 - v13;
  __chkstk_darwin(v14);
  v16 = v29 - v15;
  v17 = sub_10079E504();
  sub_1003B4B40(a1, v6);
  v18 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  sub_1003B4BA4(v6, v19 + v18);
  v35 = a1;

  sub_1001F1160(&qword_100AE03E0, &qword_1008208F8);
  v29[0] = sub_1003B4C28();
  sub_10079E054();
  sub_1003B4B40(a1, v6);
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  sub_1003B4BA4(v6, v20 + v18);
  v34 = a1;

  v21 = v30;
  sub_10079E054();
  v22 = *(v8 + 16);
  v23 = v31;
  v22(v31, v16, v7);
  v24 = v32;
  v22(v32, v21, v7);
  v25 = v33;
  v22(v33, v23, v7);
  v26 = sub_1001F1160(&qword_100AE0410, &qword_100820910);
  v22(&v25[*(v26 + 48)], v24, v7);

  v27 = *(v8 + 8);
  v27(v21, v7);
  v27(v16, v7);
  v27(v24, v7);
  return (v27)(v23, v7);
}

uint64_t sub_1003B438C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = sub_10079DF24();
  type metadata accessor for QuoteSharingSegmentedControl(0);
  sub_1001F1160(&qword_100AD6BC0, &unk_100825980);
  sub_10079BDF4();
  sub_10079BDF4();
  sub_10079E474();
  sub_10079BE54();
  v4 = sub_10079E474();
  v6 = v5;
  v7 = a2 + *(sub_1001F1160(&qword_100AE03E0, &qword_1008208F8) + 36);
  sub_1003B46E8(a1, 0, v7);
  result = sub_1001F1160(&qword_100AE0408, &qword_100820908);
  v9 = (v7 + *(result + 36));
  *v9 = v4;
  v9[1] = v6;
  *a2 = v10;
  *(a2 + 8) = v11;
  *(a2 + 16) = v12;
  *(a2 + 24) = v13;
  *(a2 + 32) = v14;
  *(a2 + 40) = v15;
  *(a2 + 48) = v16;
  return result;
}

uint64_t sub_1003B4570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = sub_10079DF24();
  type metadata accessor for QuoteSharingSegmentedControl(0);
  sub_1001F1160(&qword_100AD6BC0, &unk_100825980);
  sub_10079BDF4();
  sub_10079BDF4();
  sub_10079E474();
  sub_10079BE54();
  v4 = sub_10079E474();
  v6 = v5;
  v7 = a2 + *(sub_1001F1160(&qword_100AE03E0, &qword_1008208F8) + 36);
  sub_1003B46E8(a1, 1, v7);
  result = sub_1001F1160(&qword_100AE0408, &qword_100820908);
  v9 = (v7 + *(result + 36));
  *v9 = v4;
  v9[1] = v6;
  *a2 = v10;
  *(a2 + 8) = v11;
  *(a2 + 16) = v12;
  *(a2 + 24) = v13;
  *(a2 + 32) = v14;
  *(a2 + 40) = v15;
  *(a2 + 48) = v16;
  return result;
}

uint64_t sub_1003B46E8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_1001F1160(&qword_100AE0418, &qword_100820918);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22[-v8];
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v23 = *(a1 + 8);
  v24 = v10;
  v25 = v11;
  sub_1001F1160(&qword_100AE0228, &qword_100820920);
  sub_10079E1C4();
  v12 = 1;
  if (v22[7] == (a2 & 1))
  {
    v13 = _s5Books11ChromeStyleC20_themeSecondaryLabel33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI5ColorVGvpfi_0();
    v14 = *(sub_1001F1160(&qword_100AE0420, &qword_100820928) + 36);
    v15 = enum case for BlendMode.plusLighter(_:);
    v16 = sub_10079E534();
    (*(*(v16 - 8) + 104))(&v9[v14], v15, v16);
    *v9 = v13;
    *(v9 + 4) = 256;
    *(v9 + 2) = 0x3FC999999999999ALL;
    v17 = sub_10079E594();
    LODWORD(v13) = sub_10079D034();
    sub_10079E634();
    v18 = &v9[*(v6 + 36)];
    *v18 = 0x6948656C63726963;
    *(v18 + 1) = 0xEF746867696C6867;
    *(v18 + 2) = v17;
    *(v18 + 6) = v13;
    *(v18 + 4) = v19;
    *(v18 + 5) = v20;
    v18[48] = 1;
    sub_1003B4F18(v9, a3);
    v12 = 0;
  }

  return (*(v7 + 56))(a3, v12, 1, v6);
}

uint64_t type metadata accessor for QuoteSharingSegmentedControl(uint64_t a1)
{
  result = qword_100AE0378;
  if (!qword_100AE0378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003B4978(uint64_t a1)
{
  sub_1003B4A0C();
  if (v1 <= 0x3F)
  {
    sub_100247D70(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1003B4A0C()
{
  if (!qword_100AE0388)
  {
    v0 = sub_10079E224();
    if (!v1)
    {
      atomic_store(v0, &qword_100AE0388);
    }
  }
}

unint64_t sub_1003B4A5C()
{
  result = qword_100AE03C0;
  if (!qword_100AE03C0)
  {
    sub_1001F1234(&qword_100AE0318, &qword_100820858);
    sub_100005920(&qword_100AE03C8, &qword_100AE03D0, &unk_1008208E0, &protocol conformance descriptor for HStack<A>);
    sub_100005920(&qword_100ADC1E0, &qword_100AF4490, &unk_100820E30, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE03C0);
  }

  return result;
}

uint64_t sub_1003B4B40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QuoteSharingSegmentedControl(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003B4BA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QuoteSharingSegmentedControl(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1003B4C28()
{
  result = qword_100AE03E8;
  if (!qword_100AE03E8)
  {
    sub_1001F1234(&qword_100AE03E0, &qword_1008208F8);
    sub_1003B4CE0();
    sub_100005920(&qword_100AE0400, &qword_100AE0408, &qword_100820908, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE03E8);
  }

  return result;
}

unint64_t sub_1003B4CE0()
{
  result = qword_100AE03F0;
  if (!qword_100AE03F0)
  {
    sub_1001F1234(&qword_100AE03F8, &qword_100820900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE03F0);
  }

  return result;
}

uint64_t sub_1003B4D64()
{
  v1 = (type metadata accessor for QuoteSharingSegmentedControl(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  v3 = v1[8];
  v4 = sub_1001F1160(&qword_100AD6BC0, &unk_100825980);
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_1003B4F18(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AE0418, &qword_100820918);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t QuoteSharingSocialNetwork.rawValue.getter(char a1)
{
  result = 0xD000000000000020;
  if (a1 == 1)
  {
    return 0xD000000000000021;
  }

  return result;
}

uint64_t sub_1003B501C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_1001F1160(&unk_100AD5AC0, &unk_100811090);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v20 - v8;
  __chkstk_darwin(v10);
  v12 = &v20 - v11;
  if (!a1)
  {
    sub_1007969A4();
    v16 = sub_1007969B4();
    v17 = *(v16 - 8);
    result = (*(v17 + 48))(v12, 1, v16);
    if (result != 1)
    {
      return (*(v17 + 32))(a2, v12, v16);
    }

    goto LABEL_11;
  }

  if (a1 == 1)
  {
    sub_1007969A4();
    v13 = sub_1007969B4();
    v14 = *(v13 - 8);
    result = (*(v14 + 48))(v9, 1, v13);
    if (result != 1)
    {
      return (*(v14 + 32))(a2, v9, v13);
    }

    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1007969A4();
  v18 = sub_1007969B4();
  v19 = *(v18 - 8);
  result = (*(v19 + 48))(v6, 1, v18);
  if (result == 1)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  return (*(v19 + 32))(a2, v6, v18);
}

unint64_t sub_1003B52D0(char a1)
{
  if (!a1)
  {
    sub_1001F1160(&unk_100ADE550, &unk_100812DA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10080B690;
    *(inited + 32) = 0xD000000000000020;
    v3 = inited + 32;
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = 0x80000001008D1100;
    *(inited + 48) = 0x3534313332323036;
    *(inited + 56) = 0xEF30303938313939;
LABEL_8:
    v4 = sub_100019158(inited);
    swift_setDeallocating();
    sub_1003B5884(v3);
    return v4;
  }

  if (a1 != 1)
  {
    sub_1001F1160(&unk_100ADE550, &unk_100812DA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10080B690;
    *(inited + 32) = 0xD000000000000021;
    v3 = inited + 32;
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = 0x80000001008D10A0;
    *(inited + 48) = 0xD000000000000024;
    *(inited + 56) = 0x80000001008D10D0;
    goto LABEL_8;
  }

  return sub_100019158(_swiftEmptyArrayStorage);
}

uint64_t sub_1003B5460(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = ".FacebookStories";
  if (v2 == 1)
  {
    v5 = 0xD000000000000021;
  }

  else
  {
    v5 = 0xD000000000000020;
  }

  if (v2 == 1)
  {
    v6 = ".FacebookStories";
  }

  else
  {
    v6 = ".InstagramStories";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000020;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "ished";
  }

  v9 = v8 | 0x8000000000000000;
  if (v3 == 1)
  {
    v10 = 0xD000000000000021;
  }

  else
  {
    v10 = 0xD000000000000020;
  }

  if (v3 != 1)
  {
    v4 = ".InstagramStories";
  }

  if (*a2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0xD000000000000020;
  }

  if (*a2)
  {
    v12 = v4;
  }

  else
  {
    v12 = "ished";
  }

  if (v7 == v11 && v9 == (v12 | 0x8000000000000000))
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1007A3AB4();
  }

  return v13 & 1;
}

Swift::Int sub_1003B5530()
{
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();

  return sub_1007A3C44();
}

double sub_1003B55C4(uint64_t a1)
{
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();

  return result;
}

Swift::Int sub_1003B5644(uint64_t a1)
{
  sub_1007A3C04();
  _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0();

  return sub_1007A3C44();
}

unint64_t sub_1003B56D4@<X0>(Swift::String *a1@<X0>, Books::QuoteSharingSocialNetwork_optional *a2@<X8>)
{
  result = _s5Books25QuoteSharingSocialNetworkO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

void sub_1003B5704(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000020;
  v3 = *v1;
  v4 = ".FacebookStories";
  if (v3 == 1)
  {
    v5 = 0xD000000000000021;
  }

  else
  {
    v5 = 0xD000000000000020;
  }

  if (v3 != 1)
  {
    v4 = ".InstagramStories";
  }

  if (*v1)
  {
    v2 = v5;
    v6 = v4;
  }

  else
  {
    v6 = "ished";
  }

  *a1 = v2;
  a1[1] = v6 | 0x8000000000000000;
}

unint64_t _s5Books25QuoteSharingSocialNetworkO8rawValueACSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100A0CE30;
  v6._object = a2;
  v4 = sub_1007A3964(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1003B57B8()
{
  result = qword_100AE0428;
  if (!qword_100AE0428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE0428);
  }

  return result;
}

unint64_t sub_1003B5810()
{
  result = qword_100AE0430;
  if (!qword_100AE0430)
  {
    sub_1001F1234(&qword_100AE0438, &qword_1008209D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE0430);
  }

  return result;
}

uint64_t sub_1003B5884(uint64_t a1)
{
  v2 = sub_1001F1160(&unk_100ADD560, &unk_10080CDC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003B58EC(unsigned __int8 a1)
{
  v2 = sub_10079D484();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001F1160(&unk_100AD1FC0, &unk_10080B850);
  __chkstk_darwin(v6 - 8);
  v8 = &v25 - v7;
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      sub_10079D3F4();
      v15 = enum case for Font.Design.monospaced(_:);
      v16 = sub_10079D3A4();
      v17 = *(v16 - 8);
      (*(v17 + 104))(v8, v15, v16);
      (*(v17 + 56))(v8, 0, 1, v16);
      sub_10079D424();
      sub_1003B5F54(v8);
      (*(v3 + 104))(v5, enum case for Font.Leading.tight(_:), v2);
      v10 = sub_10079D4A4();

      (*(v3 + 8))(v5, v2);
      return v10;
    }

    if (a1 != 4)
    {
      sub_10079D3C4();
      v21 = enum case for Font.Design.serif (_:);
      v22 = sub_10079D3A4();
      v23 = *(v22 - 8);
      (*(v23 + 104))(v8, v21, v22);
      (*(v23 + 56))(v8, 0, 1, v22);
      sub_10079D424();
      sub_1003B5F54(v8);
      (*(v3 + 104))(v5, enum case for Font.Leading.tight(_:), v2);
      sub_10079D4A4();

      (*(v3 + 8))(v5, v2);
      v10 = sub_10079D414();

      return v10;
    }

    sub_10079D3E4();
    v11 = enum case for Font.Design.serif (_:);
    v12 = sub_10079D3A4();
    v13 = *(v12 - 8);
    (*(v13 + 104))(v8, v11, v12);
    (*(v13 + 56))(v8, 0, 1, v12);
LABEL_11:
    sub_10079D424();
    sub_1003B5F54(v8);
    (*(v3 + 104))(v5, enum case for Font.Leading.tight(_:), v2);
    v10 = sub_10079D4A4();

    (*(v3 + 8))(v5, v2);
    return v10;
  }

  if (!a1)
  {
    sub_10079D3B4();
    v14 = sub_10079D3A4();
    (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
    goto LABEL_11;
  }

  if (a1 != 1)
  {
    sub_10079D3D4();
    v18 = enum case for Font.Design.rounded(_:);
    v19 = sub_10079D3A4();
    v20 = *(v19 - 8);
    (*(v20 + 104))(v8, v18, v19);
    (*(v20 + 56))(v8, 0, 1, v19);
    goto LABEL_11;
  }

  v9 = [objc_opt_self() systemFontOfSize:56.0 weight:UIFontWeightBold width:UIFontWidthCompressed];
  sub_10079D4F4();
  (*(v3 + 104))(v5, enum case for Font.Leading.tight(_:), v2);
  v10 = sub_10079D4A4();

  (*(v3 + 8))(v5, v2);
  return v10;
}

uint64_t sub_1003B5F54(uint64_t a1)
{
  v2 = sub_1001F1160(&unk_100AD1FC0, &unk_10080B850);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003B5FBC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1003B6004(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1003B60C4()
{
  result = qword_100AE0450;
  if (!qword_100AE0450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE0450);
  }

  return result;
}

uint64_t sub_1003B6134@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  KeyPath = swift_getKeyPath();
  v8 = sub_1001F1160(&qword_100AE0458, &qword_100820BE0);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  v9 = (a2 + *(sub_1001F1160(&qword_100AE0460, &qword_100820BE8) + 36));
  *v9 = KeyPath;
  v9[1] = v5;
  v10 = swift_getKeyPath();
  v11 = a2 + *(sub_1001F1160(&qword_100AE0468, &qword_100820C20) + 36);
  *v11 = v10;
  *(v11 + 8) = 0;
  v12 = swift_getKeyPath();
  v13 = (a2 + *(sub_1001F1160(&qword_100AE0470, &qword_100820C58) + 36));
  *v13 = v12;
  v13[1] = v6;

  LOBYTE(v12) = sub_10079D2A4();
  sub_10079BBA4();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  result = sub_1001F1160(&qword_100AE0478, &qword_100820C60);
  v23 = a2 + *(result + 36);
  *v23 = v12;
  *(v23 + 8) = v15;
  *(v23 + 16) = v17;
  *(v23 + 24) = v19;
  *(v23 + 32) = v21;
  *(v23 + 40) = 0;
  return result;
}

unint64_t sub_1003B62BC()
{
  result = qword_100AE0480;
  if (!qword_100AE0480)
  {
    sub_1001F1234(&qword_100AE0478, &qword_100820C60);
    sub_1003B6348();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE0480);
  }

  return result;
}

unint64_t sub_1003B6348()
{
  result = qword_100AE0488;
  if (!qword_100AE0488)
  {
    sub_1001F1234(&qword_100AE0470, &qword_100820C58);
    sub_1003B6400();
    sub_100005920(&qword_100AE04A8, &qword_100AE04B0, &unk_100820CB0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE0488);
  }

  return result;
}

unint64_t sub_1003B6400()
{
  result = qword_100AE0490;
  if (!qword_100AE0490)
  {
    sub_1001F1234(&qword_100AE0468, &qword_100820C20);
    sub_1003B64B8();
    sub_100005920(&qword_100ADC1B8, &qword_100ADC1C0, &qword_10081B400, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE0490);
  }

  return result;
}

unint64_t sub_1003B64B8()
{
  result = qword_100AE0498;
  if (!qword_100AE0498)
  {
    sub_1001F1234(&qword_100AE0460, &qword_100820BE8);
    sub_100005920(&qword_100AE04A0, &qword_100AE0458, &qword_100820BE0, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100005920(&unk_100AD1CF0, &qword_100ADBDA0, &unk_10080B720, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE0498);
  }

  return result;
}

uint64_t type metadata accessor for QuoteSharingView(uint64_t a1)
{
  result = qword_100AE0510;
  if (!qword_100AE0510)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003B6610(uint64_t a1)
{
  sub_1003B66FC(319);
  if (v1 <= 0x3F)
  {
    sub_10024BB84(319, &qword_100AE3F00, &type metadata for Bool);
    if (v2 <= 0x3F)
    {
      sub_10024BB84(319, &qword_100AE0528, &type metadata for QuoteSharingCardShape);
      if (v3 <= 0x3F)
      {
        sub_10024BB84(319, &unk_100AE0530, &type metadata for Int);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1003B66FC(uint64_t a1)
{
  if (!qword_100AE0520)
  {
    sub_1001F1234(qword_100AF6430, &qword_100844C30);
    v1 = sub_10079BCD4();
    if (!v2)
    {
      atomic_store(v1, &qword_100AE0520);
    }
  }
}

uint64_t sub_1003B677C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = sub_10079C874();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001F1160(&qword_100AE0588, &unk_100820D88);
  __chkstk_darwin(v7);
  v9 = (&v19 - v8);
  v10 = sub_1001F1160(&qword_100AE0578, &qword_100820D78);
  v20 = *(v10 - 8);
  v21 = v10;
  __chkstk_darwin(v10);
  v12 = &v19 - v11;
  *v9 = sub_10079E474();
  v9[1] = v13;
  v14 = sub_1001F1160(&qword_100AE05B0, &qword_100820DA8);
  v15 = sub_1003B6A9C(a1, v9 + *(v14 + 44));
  (*(v4 + 104))(v6, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v3, v15);
  v16 = sub_100005920(&qword_100AE0590, &qword_100AE0588, &unk_100820D88, &protocol conformance descriptor for ZStack<A>);
  sub_10079DA94();
  (*(v4 + 8))(v6, v3);
  sub_100007840(v9, &qword_100AE0588, &unk_100820D88);
  v23 = a1;
  sub_1001F1160(&qword_100AE0580, &qword_100820D80);
  v24 = v7;
  v25 = v16;
  swift_getOpaqueTypeConformance2();
  sub_100005920(&qword_100AE0598, &qword_100AE0580, &qword_100820D80, &protocol conformance descriptor for TupleToolbarContent<A>);
  v17 = v21;
  sub_10079DBF4();
  return (*(v20 + 8))(v12, v17);
}

double sub_1003B6A9C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001F1160(&qword_100AE05D0, &qword_100820DC8);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v20 - v8;
  v10 = sub_10079DF34();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + *(type metadata accessor for QuoteSharingView(0) + 32) + 56);
  sub_10079DF04();
  (*(v11 + 104))(v13, enum case for Image.ResizingMode.stretch(_:), v10);
  v15 = sub_10079DF94();

  (*(v11 + 8))(v13, v10);
  v16 = sub_10079C2C4();
  LOBYTE(v13) = sub_10079D294();
  *v9 = sub_10079CB24();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v17 = sub_1001F1160(&qword_100AE05D8, &qword_100820DD0);
  sub_1003B6D1C(a1, &v9[*(v17 + 44)]);
  sub_1000077D8(v9, v6, &qword_100AE05D0, &qword_100820DC8);
  *a2 = v15;
  *(a2 + 8) = v16;
  *(a2 + 16) = v13;
  v18 = sub_1001F1160(&qword_100AE05E0, &qword_100820DD8);
  sub_1000077D8(v6, a2 + *(v18 + 48), &qword_100AE05D0, &qword_100820DC8);

  sub_100007840(v9, &qword_100AE05D0, &qword_100820DC8);
  sub_100007840(v6, &qword_100AE05D0, &qword_100820DC8);

  return result;
}

uint64_t sub_1003B6D1C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v71 = a2;
  v70 = sub_10079D4D4();
  v68 = *(v70 - 8);
  __chkstk_darwin(v70);
  v67 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for QuoteSharingSegmentedControl(0) - 8;
  __chkstk_darwin(v66);
  v69 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v65 = (&v53 - v6);
  v7 = type metadata accessor for QuoteSharingView(0);
  v8 = (v7 - 8);
  v61 = *(v7 - 8);
  v60 = *(v61 + 64);
  __chkstk_darwin(v7);
  v58 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10079C354();
  __chkstk_darwin(v10 - 8);
  v55 = sub_10079C374();
  v56 = *(v55 - 8);
  __chkstk_darwin(v55);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1001F1160(&qword_100AE05E8, &qword_100820DE0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v53 - v15;
  v57 = sub_1001F1160(&qword_100AE05F0, &qword_100820DE8);
  v59 = *(v57 - 8);
  __chkstk_darwin(v57);
  v54 = &v53 - v17;
  v18 = sub_1001F1160(&qword_100AE05F8, &qword_100820DF0);
  v63 = *(v18 - 8);
  v64 = v18;
  __chkstk_darwin(v18);
  v62 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v72 = &v53 - v21;
  v77 = *(a1 + v8[9]);
  sub_1001F1160(&qword_100AE0600, &qword_100820DF8);
  sub_10079E014();
  v73 = a1;
  sub_1001F1160(&qword_100AE0608, &qword_100820E00);
  sub_1003B8F0C();
  sub_10079E2E4();
  sub_10079C344();
  sub_10079C364();
  v22 = sub_100005920(&qword_100AE0660, &qword_100AE05E8, &qword_100820DE0, &protocol conformance descriptor for TabView<A, B>);
  v23 = v55;
  sub_10079D624();
  v24 = v23;
  (*(v56 + 8))(v12, v23);
  (*(v14 + 8))(v16, v13);
  v25 = v8[7];
  v53 = a1;
  v26 = (a1 + v25);
  v27 = *v26;
  v28 = *(v26 + 1);
  LOBYTE(v77) = v27;
  *(&v77 + 1) = v28;
  sub_1001F1160(&qword_100ADB850, &qword_100814020);
  sub_10079E014();
  v29 = v58;
  sub_1003B955C(a1, v58, type metadata accessor for QuoteSharingView);
  v30 = (*(v61 + 80) + 16) & ~*(v61 + 80);
  v31 = swift_allocObject();
  sub_1003B8CA0(v29, v31 + v30);
  sub_1001F1160(&qword_100AE0668, &qword_100820E40);
  *&v74 = v13;
  *(&v74 + 1) = v24;
  v75 = v22;
  v76 = &protocol witness table for PageTabViewStyle;
  swift_getOpaqueTypeConformance2();
  sub_1003B9394();
  v32 = v72;
  v33 = v57;
  v34 = v54;
  sub_10079DB34();

  (*(v59 + 8))(v34, v33);
  v35 = v53 + v8[8];
  v36 = *v35;
  v37 = *(v35 + 8);
  LOBYTE(v77) = v36;
  *(&v77 + 1) = v37;
  sub_1001F1160(&qword_100AE0698, &qword_100820E58);
  sub_10079E014();
  v38 = v74;
  v39 = v75;
  v40 = v65;
  *v65 = 0;
  *(v40 + 8) = v38;
  *(v40 + 24) = v39;
  *&v74 = 0x4046000000000000;
  (*(v68 + 104))(v67, enum case for Font.TextStyle.body(_:), v70);
  sub_100247DCC();
  sub_10079BDD4();
  v41 = v63;
  v42 = *(v63 + 16);
  v43 = v62;
  v44 = v32;
  v45 = v64;
  v42(v62, v44, v64);
  v46 = v69;
  sub_1003B955C(v40, v69, type metadata accessor for QuoteSharingSegmentedControl);
  v47 = v71;
  *v71 = 0;
  *(v47 + 8) = 1;
  v48 = v47;
  v49 = sub_1001F1160(&qword_100AE06A0, &qword_100820E60);
  v42(&v48[v49[12]], v43, v45);
  v50 = &v48[v49[16]];
  *v50 = 0;
  v50[8] = 1;
  sub_1003B955C(v46, &v48[v49[20]], type metadata accessor for QuoteSharingSegmentedControl);
  sub_1003B95C4(v40);
  v51 = *(v41 + 8);
  v51(v72, v45);
  sub_1003B95C4(v46);
  return (v51)(v43, v45);
}

uint64_t sub_1003B75F4(uint64_t a1)
{
  v2 = type metadata accessor for QuoteSharingView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v16 = xmmword_100820CC0;
  swift_getKeyPath();
  sub_1003B955C(a1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for QuoteSharingView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1003B8CA0(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  sub_1001F1160(&qword_100AD71E8, &qword_100813FA0);
  sub_1001F1160(&qword_100AE06B8, &qword_100820E78);
  sub_100258384();
  v7 = sub_1001F1234(&qword_100AE0618, &qword_100820E08);
  v8 = sub_1001F1234(&qword_100AD1D90, &qword_100820E10);
  v9 = sub_1003B9024();
  v12 = v8;
  v13 = &type metadata for Int;
  v14 = v9;
  v15 = &protocol witness table for Int;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v12 = v7;
  v13 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  return sub_10079E264();
}

void *sub_1003B781C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v59 = a2;
  v58 = sub_10079C0E4();
  v6 = *(v58 - 8);
  __chkstk_darwin(v58);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1001F1160(&qword_100AD1D90, &qword_100820E10);
  __chkstk_darwin(v56);
  v10 = &v50 - v9;
  v11 = sub_1001F1160(&qword_100AE0618, &qword_100820E08);
  v57 = *(v11 - 8);
  __chkstk_darwin(v11);
  v55 = &v50 - v12;
  v13 = type metadata accessor for QuoteSharingView(0);
  v14 = (v3 + *(v13 + 24));
  v15 = *v14;
  v16 = *(v14 + 1);
  LOBYTE(v60) = v15;
  v61 = v16;
  sub_1001F1160(&qword_100AE0698, &qword_100820E58);
  result = sub_10079E014();
  v18 = v64;
  v19 = v65;
  v20 = (v3 + *(v13 + 32));
  v21 = v20[3];
  v66 = v20[2];
  v67 = v21;
  v68 = v20[4];
  v22 = v20[1];
  v64 = *v20;
  v65 = v22;
  if (a1 > 5)
  {
    __break(1u);
  }

  else
  {
    v50 = v18;
    v52 = v8;
    v53 = a1;
    v51 = *(&off_100A0CEC0 + a1 + 32);
    v23 = *v20;
    *&v69[23] = v20[1];
    v24 = v20[3];
    *&v69[39] = v20[2];
    *&v69[55] = v24;
    *&v69[71] = v20[4];
    *&v69[7] = v23;
    sub_1003B9620(&v64, &v60);
    v25 = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
    v26 = *(sub_1001F1160(&qword_100AE0640, &qword_100820E20) + 36);
    v54 = v11;
    v27 = &v10[v26];
    v28 = *(sub_10079C3D4() + 20);
    v29 = enum case for RoundedCornerStyle.continuous(_:);
    v30 = sub_10079C9E4();
    (*(*(v30 - 8) + 104))(&v27[v28], v29, v30);
    __asm { FMOV            V0.2D, #20.0 }

    *v27 = _Q0;
    *&v27[*(sub_1001F1160(&qword_100AD97F8, &qword_100816BF0) + 36)] = 256;
    v36 = *&v69[48];
    *(v10 + 49) = *&v69[32];
    *(v10 + 65) = v36;
    *(v10 + 81) = *&v69[64];
    v37 = *&v69[16];
    *(v10 + 17) = *v69;
    *v10 = v50;
    *(v10 + 1) = *(&v18 + 1);
    v10[16] = v19;
    *(v10 + 12) = *&v69[79];
    *(v10 + 33) = v37;
    v10[104] = v51;
    *(v10 + 105) = v70[0];
    *(v10 + 27) = *(v70 + 3);
    *(v10 + 14) = v25;
    _s5Books11ChromeStyleC14_pageTextColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
    v38 = sub_10079DE24();

    v39 = &v10[*(sub_1001F1160(&qword_100AE0630, &qword_100820E18) + 36)];
    *v39 = v38;
    *(v39 + 8) = xmmword_100820CD0;
    *(v39 + 3) = 0x4024000000000000;
    sub_10079E634();
    v41 = v55;
    v40 = v56;
    v42 = &v10[*(v56 + 36)];
    *v42 = a3;
    *(v42 + 1) = a3;
    *(v42 + 2) = v43;
    *(v42 + 3) = v44;
    sub_1003B96D0(v10, v41);
    v45 = v41 + *(sub_1001F1160(&qword_100AD1D98, &unk_10080B780) + 36);
    v46 = v52;
    *v45 = v53;
    *(v45 + 8) = 1;
    v47 = v58;
    (*(v6 + 104))(v46, enum case for DynamicTypeSize.medium(_:), v58);
    v48 = sub_1003B9024();
    v60 = v40;
    v61 = &type metadata for Int;
    v62 = v48;
    v63 = &protocol witness table for Int;
    swift_getOpaqueTypeConformance2();
    v49 = v54;
    sub_10079D7D4();
    (*(v6 + 8))(v46, v47);
    return (*(v57 + 8))(v41, v49);
  }

  return result;
}

uint64_t sub_1003B7CE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001F1160(&qword_100AE06A8, &qword_100820E68);
  __chkstk_darwin(v4);
  v6 = v36 - v5;
  v7 = sub_1001F1160(&qword_100AE0690, &qword_100820E50);
  __chkstk_darwin(v7);
  v9 = v36 - v8;
  v10 = sub_1003B81B8();
  if (v10)
  {
    v11 = v10;
    v39 = v7;
    v12 = (a1 + *(type metadata accessor for QuoteSharingView(0) + 32));
    v13 = v12[1];
    v14 = v12[2];
    v15 = v12[4];
    v42 = v12[3];
    v43 = v15;
    v16 = *v12;
    v17 = *v12;
    v41[1] = v12[1];
    v41[2] = v14;
    *&v40[24] = v13;
    *&v40[40] = v14;
    *&v40[56] = v42;
    *&v40[72] = v12[4];
    v41[0] = v16;
    *&v40[8] = v17;
    *v40 = v11;
    sub_1001F1160(&qword_100AE06B0, &qword_100820E70);
    sub_10079C9C4();
    v38 = a2;
    v18 = swift_allocObject();
    v36[1] = v4;
    v19 = v18;
    *(v18 + 16) = xmmword_10080EFF0;
    v37 = v11;
    sub_1003B9620(v41, v44);
    sub_10079C9B4();
    sub_10079C9A4();
    sub_1001F2948(v19);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_1003B1F0C();
    sub_10079D984();

    v44[2] = *&v40[32];
    v44[3] = *&v40[48];
    v44[4] = *&v40[64];
    v45 = *&v40[80];
    v44[0] = *v40;
    v44[1] = *&v40[16];
    sub_1003B967C(v44);
    v20 = sub_10079C2C4();
    v21 = sub_10079D294();
    v22 = &v9[*(v39 + 36)];
    *v22 = v20;
    v22[8] = v21;
    sub_1000077D8(v9, v6, &qword_100AE0690, &qword_100820E50);
    swift_storeEnumTagMultiPayload();
    sub_1003B94A4();
    v23 = v38;
    sub_10079CCA4();

    sub_100007840(v9, &qword_100AE0690, &qword_100820E50);
    v24 = sub_1001F1160(&qword_100AE0680, &qword_100820E48);
    return (*(*(v24 - 8) + 56))(v23, 0, 1, v24);
  }

  else if (sub_100798F24())
  {
    sub_10079DD64();
    v26 = sub_10079D564();
    v28 = v27;
    v30 = v29;
    v32 = v31;

    *v6 = v26;
    *(v6 + 1) = v28;
    v6[16] = v30 & 1;
    *(v6 + 3) = v32;
    swift_storeEnumTagMultiPayload();
    sub_1003B94A4();
    sub_10079CCA4();
    v33 = sub_1001F1160(&qword_100AE0680, &qword_100820E48);
    return (*(*(v33 - 8) + 56))(a2, 0, 1, v33);
  }

  else
  {
    v34 = sub_1001F1160(&qword_100AE0680, &qword_100820E48);
    v35 = *(*(v34 - 8) + 56);

    return v35(a2, 1, 1, v34);
  }
}

uint64_t sub_1003B81B8()
{
  v1 = sub_1001F1160(&qword_100AE06B8, &qword_100820E78);
  __chkstk_darwin(v1 - 8);
  v3 = v7 - v2;
  v8 = *(v0 + *(type metadata accessor for QuoteSharingView(0) + 28));
  sub_1001F1160(&qword_100AE0600, &qword_100820DF8);
  sub_10079DFF4();
  sub_1003B781C(v7[1], v3, 0.9);
  sub_1001F1160(&qword_100AE06C0, qword_100820E80);
  swift_allocObject();
  sub_10079BF04();
  v4 = [objc_opt_self() mainScreen];
  [v4 scale];

  sub_10079BEF4();
  v5 = sub_10079BEE4();

  return v5;
}

uint64_t sub_1003B830C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = sub_1001F1160(&qword_100AE05B8, &qword_100820DB0);
  __chkstk_darwin(v3);
  v32 = v26 - v4;
  v33 = sub_1001F1160(&qword_100AE05C0, &qword_100820DB8);
  v31 = *(v33 - 8);
  __chkstk_darwin(v33);
  v6 = v26 - v5;
  v27 = v26 - v5;
  v7 = sub_10079CDD4();
  __chkstk_darwin(v7 - 8);
  v30 = sub_1001F1160(&qword_100AE05C8, &qword_100820DC0);
  v8 = *(v30 - 8);
  __chkstk_darwin(v30);
  v28 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v26 - v11;
  sub_10079CD84();
  v36 = a1;
  sub_1001F1160(&qword_100ADB860, &qword_100835800);
  sub_100005920(&qword_100AEE360, &qword_100ADB860, &qword_100835800, &protocol conformance descriptor for Button<A>);
  v29 = v12;
  sub_10079BD14();
  sub_10079CDC4();
  sub_10079BD14();
  sub_10079CD94();
  v35 = a1;
  sub_10079BD14();
  v26[1] = v3;
  v13 = *(v3 + 48);
  v14 = *(v3 + 64);
  v15 = v8;
  v16 = *(v8 + 16);
  v17 = v32;
  v18 = v12;
  v19 = v30;
  v16(v32, v18, v30);
  v20 = v31;
  v21 = v6;
  v22 = v33;
  (*(v31 + 16))(&v17[v13], v21, v33);
  v23 = v28;
  v16(&v17[v14], v28, v19);
  sub_10079CB84();
  v24 = *(v15 + 8);
  v24(v23, v19);
  (*(v20 + 8))(v27, v22);
  return (v24)(v29, v19);
}

uint64_t sub_1003B86EC()
{
  v0 = sub_10079C3B4();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1001F1160(qword_100AF6430, &qword_100844C30);
  __chkstk_darwin(v1);
  v3 = &v5 - v2;
  sub_1005A2820(&v5 - v2);
  sub_10079E1C4();
  sub_10079C3A4();
  sub_10079E1D4();
  return sub_1003B8E9C(v3);
}

uint64_t sub_1003B87E8@<X0>(uint64_t a1@<X8>)
{
  sub_10079D3B4();
  result = sub_10079D544();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_1003B8850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for QuoteSharingView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v12[0] = a2;
  v12[1] = 0xE400000000000000;
  sub_1003B955C(a1, v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for QuoteSharingView);
  v9 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v10 = swift_allocObject();
  sub_1003B8CA0(v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  sub_100206ECC();
  return sub_10079E084();
}

double sub_1003B8988(uint64_t a1)
{
  type metadata accessor for QuoteSharingView(0);
  sub_1001F1160(&qword_100ADB850, &qword_100814020);
  sub_10079E004();
  return result;
}

uint64_t sub_1003B89FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13 = a2;
  v14 = *(a1 - 8);
  v3 = *(v14 + 64);
  __chkstk_darwin(a1 - 8);
  v15 = v2;
  v12[1] = sub_1001F1160(&qword_100AE0570, &qword_100820D70);
  v4 = sub_1001F1234(&qword_100AE0578, &qword_100820D78);
  v5 = sub_1001F1234(&qword_100AE0580, &qword_100820D80);
  sub_1001F1234(&qword_100AE0588, &unk_100820D88);
  sub_100005920(&qword_100AE0590, &qword_100AE0588, &unk_100820D88, &protocol conformance descriptor for ZStack<A>);
  v16 = v4;
  v17 = v5;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v19 = sub_100005920(&qword_100AE0598, &qword_100AE0580, &qword_100820D80, &protocol conformance descriptor for TupleToolbarContent<A>);
  swift_getOpaqueTypeConformance2();
  v6 = v13;
  sub_10079C2B4();
  sub_1003B955C(v2, v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for QuoteSharingView);
  v7 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v8 = swift_allocObject();
  sub_1003B8CA0(v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  v9 = (v6 + *(sub_1001F1160(&qword_100AE05A0, &qword_100820D98) + 36));
  *v9 = 0;
  v9[1] = 0;
  v9[2] = sub_1003B8D04;
  v9[3] = v8;
  v10 = _s5Books11ChromeStyleC20_pageBackgroundColor33_5E35E2CA450906E5027671B98D3F72C77Combine9PublishedVy7SwiftUI0F0VGvpfi_0();
  result = sub_1001F1160(&qword_100AE05A8, &qword_100820DA0);
  *(v6 + *(result + 36)) = v10;
  return result;
}

uint64_t sub_1003B8CA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QuoteSharingView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003B8E28(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for QuoteSharingView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1003B8E9C(uint64_t a1)
{
  v2 = sub_1001F1160(qword_100AF6430, &qword_100844C30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1003B8F0C()
{
  result = qword_100AE0610;
  if (!qword_100AE0610)
  {
    sub_1001F1234(&qword_100AE0608, &qword_100820E00);
    sub_1001F1234(&qword_100AE0618, &qword_100820E08);
    sub_1001F1234(&qword_100AD1D90, &qword_100820E10);
    sub_1003B9024();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE0610);
  }

  return result;
}

unint64_t sub_1003B9024()
{
  result = qword_100AE0620;
  if (!qword_100AE0620)
  {
    sub_1001F1234(&qword_100AD1D90, &qword_100820E10);
    sub_1003B90B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE0620);
  }

  return result;
}

unint64_t sub_1003B90B0()
{
  result = qword_100AE0628;
  if (!qword_100AE0628)
  {
    sub_1001F1234(&qword_100AE0630, &qword_100820E18);
    sub_1003B913C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE0628);
  }

  return result;
}

unint64_t sub_1003B913C()
{
  result = qword_100AE0638;
  if (!qword_100AE0638)
  {
    sub_1001F1234(&qword_100AE0640, &qword_100820E20);
    sub_1003B9220(&qword_100AE0648, &qword_100AE0650, &qword_100820E28, sub_1003B92D0);
    sub_100005920(&unk_100AF6660, &qword_100AD97F8, &qword_100816BF0, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE0638);
  }

  return result;
}

uint64_t sub_1003B9220(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1001F1234(a2, a3);
    a4();
    sub_100005920(&qword_100ADC1E0, &qword_100AF4490, &unk_100820E30, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1003B92D0()
{
  result = qword_100AE0658;
  if (!qword_100AE0658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE0658);
  }

  return result;
}

uint64_t sub_1003B9324@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for QuoteSharingView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1003B7CE4(v4, a1);
}

unint64_t sub_1003B9394()
{
  result = qword_100AE0670;
  if (!qword_100AE0670)
  {
    sub_1001F1234(&qword_100AE0668, &qword_100820E40);
    sub_1003B9418();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE0670);
  }

  return result;
}

unint64_t sub_1003B9418()
{
  result = qword_100AE0678;
  if (!qword_100AE0678)
  {
    sub_1001F1234(&qword_100AE0680, &qword_100820E48);
    sub_1003B94A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE0678);
  }

  return result;
}

unint64_t sub_1003B94A4()
{
  result = qword_100AE0688;
  if (!qword_100AE0688)
  {
    sub_1001F1234(&qword_100AE0690, &qword_100820E50);
    sub_1003B1F0C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE0688);
  }

  return result;
}

uint64_t sub_1003B955C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003B95C4(uint64_t a1)
{
  v2 = type metadata accessor for QuoteSharingSegmentedControl(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003B96D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AD1D90, &qword_100820E10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003B9740()
{
  v1 = type metadata accessor for QuoteSharingView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  sub_1001F1160(&qword_100AD61C8, &qword_1008127F0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v4 = *(sub_1001F1160(qword_100AF6430, &qword_100844C30) + 32);
    v5 = sub_10079C3B4();
    (*(*(v5 - 8) + 8))(v2 + v4, v5);
  }

  v6 = v2 + *(v1 + 32);

  return swift_deallocObject();
}

unint64_t sub_1003B9960()
{
  result = qword_100AE06D0;
  if (!qword_100AE06D0)
  {
    sub_1001F1234(&qword_100AE05A0, &qword_100820D98);
    sub_100005920(&qword_100AE06D8, &qword_100AE06E0, &qword_100820EB8, &protocol conformance descriptor for NavigationStack<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE06D0);
  }

  return result;
}

__n128 sub_1003B9A18(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1003B9A34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1003B9A7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1003B9AE0()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AE06E8);
  sub_100008B98(v0, qword_100AE06E8);
  sub_10001389C();
  return sub_1007A33F4();
}

uint64_t sub_1003B9B54(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AE0700, &qword_100820F28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003B9BE0()
{
  _s5Books18PropertyValueActorV9ActorTypeCMa_0();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_100AE0708 = v0;
  return result;
}

double sub_1003B9C20@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1001F1160(&qword_100AE0898, &unk_10082BDE0);
  __chkstk_darwin(v2 - 8);
  v25[10] = v25 - v3;
  v4 = sub_1001F1160(&qword_100AE08A0, &unk_100821030);
  __chkstk_darwin(v4 - 8);
  v25[9] = v25 - v5;
  v6 = sub_1001F1160(&qword_100AE08A8, &unk_10082BDF0);
  __chkstk_darwin(v6 - 8);
  v25[8] = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v25[7] = v25 - v9;
  v10 = sub_1001F1160(&qword_100AE08B0, &unk_100821040);
  __chkstk_darwin(v10 - 8);
  v25[6] = v25 - v11;
  v12 = sub_1001F1160(&qword_100AE08B8, &unk_10082BE00);
  __chkstk_darwin(v12 - 8);
  v25[5] = v25 - v13;
  v14 = sub_1001F1160(&qword_100AE08C0, &unk_100821050);
  __chkstk_darwin(v14 - 8);
  v25[4] = v25 - v15;
  v16 = sub_1001F1160(&qword_100AE08C8, &unk_10082BE10);
  __chkstk_darwin(v16 - 8);
  v17 = sub_1001F1160(&qword_100AE08D0, &unk_100821060);
  __chkstk_darwin(v17 - 8);
  v18 = sub_1001F1160(&qword_100AE08D8, &unk_10082BE20);
  __chkstk_darwin(v18 - 8);
  v19 = sub_1001F1160(&qword_100AE08E0, &qword_100821070);
  __chkstk_darwin(v19 - 8);
  v20 = sub_100799BE4();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = v25 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10079E764();
  sub_100799BD4();
  sub_100796C54();
  sub_100799FB4();
  sub_1003BB37C(&qword_100AE08E8, &type metadata accessor for Configuration, &protocol conformance descriptor for Configuration);
  v25[11] = a1;
  sub_100799BC4();
  (*(v21 + 8))(v23, v20);

  return result;
}

uint64_t sub_1003BA4F4(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  sub_1001F1160(&qword_100AE0890, &unk_100821020);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  if (qword_100AD14F0 != -1)
  {
    swift_once();
  }

  v3 = qword_100AE0708;

  return _swift_task_switch(sub_1003BA5D0, v3, 0);
}

uint64_t sub_1003BA5D0()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = OBJC_IVAR____TtC5Books35PersonalizationConfigurationService_cachedConfiguration;
  swift_beginAccess();
  sub_1003BB234(v2 + v3, v1);
  v4 = sub_100799FB4();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v1, 1, v4) == 1)
  {
    v6 = v0[10];
    v7 = v0[8];
    sub_1003BB2A4(v0[11]);
    v8 = sub_1003B9C20(v7);
    (*(v5 + 16))(v6, v7, v4, v8);
    (*(v5 + 56))(v6, 0, 1, v4);
    swift_beginAccess();
    sub_1003BB30C(v6, v2 + v3);
    swift_endAccess();
  }

  else
  {
    (*(v5 + 32))(v0[8], v0[11], v4);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1003BA77C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  sub_1001F1160(&qword_100AE0890, &unk_100821020);
  v4[9] = swift_task_alloc();
  v5 = sub_100799FB4();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  if (qword_100AD14F0 != -1)
  {
    swift_once();
  }

  v6 = qword_100AE0708;

  return _swift_task_switch(sub_1003BA8A8, v6, 0);
}

uint64_t sub_1003BA8A8()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  v5 = v0[8];
  v6 = sub_1003B9C20(v1);
  (*(v2 + 16))(v3, v1, v4, v6);
  (*(v2 + 56))(v3, 0, 1, v4);
  v7 = OBJC_IVAR____TtC5Books35PersonalizationConfigurationService_cachedConfiguration;
  swift_beginAccess();
  sub_1003BB30C(v3, v5 + v7);
  swift_endAccess();
  v8 = OBJC_IVAR____TtC5Books35PersonalizationConfigurationService_onChangeBlocks;
  swift_beginAccess();
  v9 = *(v5 + v8);
  v10 = swift_task_alloc();
  *(v10 + 16) = v1;

  sub_1006D1688(sub_1003BB57C, v10, v9);

  (*(v2 + 8))(v1, v4);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1003BAC7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  if (qword_100AD14F0 != -1)
  {
    swift_once();
  }

  v7 = qword_100AE0708;

  return _swift_task_switch(sub_1003BAD18, v7, 0);
}

uint64_t sub_1003BAD18()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = OBJC_IVAR____TtC5Books35PersonalizationConfigurationService_onChangeBlocks;
  swift_beginAccess();
  v6 = *(v3 + v5);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + v5) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_10066B668(0, v6[2] + 1, 1, v6);
    *(v3 + v5) = v6;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = sub_10066B668((v8 > 1), v9 + 1, 1, v6);
  }

  v6[2] = v9 + 1;
  v10 = &v6[2 * v9];
  v10[4] = sub_1003BB20C;
  v10[5] = v4;
  *(v3 + v5) = v6;
  swift_endAccess();
  v11 = v0[1];

  return v11();
}

uint64_t sub_1003BAE58()
{
  sub_1003BB2A4(v0 + OBJC_IVAR____TtC5Books35PersonalizationConfigurationService_cachedConfiguration);

  return swift_deallocClassInstance();
}

uint64_t sub_1003BAF00(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002812C;

  return sub_1003BA4F4(a1);
}

double sub_1003BAF9C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1001F1160(&qword_100AD67D0, &qword_100814660);
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - v6;
  v8 = *v2;
  v9 = sub_1007A2744();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = qword_100AD14F0;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = qword_100AE0708;
  v12 = sub_1003BB37C(&qword_100AE0888, _s5Books18PropertyValueActorV9ActorTypeCMa_0, &unk_100820FD8);
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = v12;
  v13[4] = v8;
  v13[5] = a1;
  v13[6] = a2;

  sub_1003457A0(0, 0, v7, &unk_100821010, v13);

  return result;
}

uint64_t sub_1003BB144(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002812C;

  return sub_1003BAC7C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1003BB234(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AE0890, &unk_100821020);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003BB2A4(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AE0890, &unk_100821020);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003BB30C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AE0890, &unk_100821020);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003BB37C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1003BB3C4(void *a1)
{
  v3 = OBJC_IVAR____TtC5Books35PersonalizationConfigurationService_cachedConfiguration;
  v4 = sub_100799FB4();
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  *(v1 + OBJC_IVAR____TtC5Books35PersonalizationConfigurationService_onChangeBlocks) = _swiftEmptyArrayStorage;
  *(v1 + 16) = a1;
  v5 = objc_opt_self();
  v6 = a1;
  v7 = [v5 defaultCenter];

  v8 = sub_1007A2E44();
  [v7 addObserver:v1 selector:"onConfigurationChange:" name:v8 object:*(v1 + 16)];

  return v1;
}

uint64_t sub_1003BB4C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100009A34;

  return sub_1003BA77C(a1, v4, v5, v6);
}

uint64_t sub_1003BB5B4()
{
  v0 = sub_1007A17D4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v10 - v5;
  sub_1007A1274();
  (*(v1 + 104))(v3, enum case for DocumentPaginationDirection.rightToLeft(_:), v0);
  sub_1003BB760();
  sub_1007A2574();
  sub_1007A2574();
  if (v10[2] == v10[0] && v10[3] == v10[1])
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1007A3AB4();
  }

  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);

  return v7 & 1;
}

unint64_t sub_1003BB760()
{
  result = qword_100AE08F0;
  if (!qword_100AE08F0)
  {
    sub_1007A17D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE08F0);
  }

  return result;
}

uint64_t sub_1003BB7E4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  if (a1[2])
  {
    if ((a2[2] & 1) == 0)
    {
      return 0;
    }
  }

  else if (a2[2])
  {
    return 0;
  }

  if (v3 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1007A3AB4();
  }
}

double sub_1003BB854@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001F1160(&unk_100AD1FC0, &unk_10080B850);
  __chkstk_darwin(v4 - 8);
  v6 = &v26 - v5;
  v7 = sub_10079D4D4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001F1160(&qword_100AD8DD8, &qword_1008162B0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v26 - v13;
  v16 = *(a1 + 24);
  v15 = *(a1 + 32);
  if (*(a1 + 40))
  {
    (*(v8 + 104))(v10, enum case for Font.TextStyle.body(_:), v7, v12);
    v17 = sub_10079D3A4();
    (*(*(v17 - 8) + 56))(v6, 1, 1, v17);

    sub_10079D434();
    sub_100007840(v6, &unk_100AD1FC0, &unk_10080B850);
    (*(v8 + 8))(v10, v7);
    v18 = sub_10079D384();

    v26 = v16;
    v27 = v15;
    v28 = v18;
    v29 = 1;
    sub_100324680();
  }

  else
  {

    sub_10079DFA4();
    v19 = enum case for Image.TemplateRenderingMode.template(_:);
    v20 = sub_10079DF74();
    v21 = *(v20 - 8);
    (*(v21 + 104))(v14, v19, v20);
    (*(v21 + 56))(v14, 0, 1, v20);
    v22 = sub_10079DF44();

    sub_100007840(v14, &qword_100AD8DD8, &qword_1008162B0);
    v26 = v22;
    sub_100324680();
    v27 = 0;
    v28 = 0;
    v29 = 0;
  }

  sub_10079CCA4();
  result = *&v30;
  v24 = v31;
  v25 = v32;
  *a2 = v30;
  *(a2 + 16) = v24;
  *(a2 + 24) = v25;
  return result;
}

void sub_1003BBBC0(uint64_t *a2@<X8>)
{
  v4 = v2[1];
  v21 = *v2;
  v22 = v4;
  v5 = v2[3];
  v23 = v2[2];
  v24 = v5;
  v7 = *(&v21 + 1);
  v6 = v22;
  v8 = sub_10079CFE4();
  v25 = *(&v24 + 1);
  *a2 = swift_getKeyPath();
  sub_1001F1160(&unk_100ADB730, &qword_1008121A0);
  swift_storeEnumTagMultiPayload();
  v9 = sub_1001F1160(&qword_100AE08F8, &qword_100821238);
  v10 = (a2 + v9[9]);
  sub_1003BBD30(&v25, &v18);
  type metadata accessor for ChromeStyle(0);
  sub_1002B3600();
  *v10 = sub_10079C484();
  v10[1] = v11;
  v12 = a2 + v9[10];
  sub_1003BB854(&v21, &v18);
  v17 = v18;
  v13 = v19;
  v14 = v20;
  v15 = v24;
  KeyPath = swift_getKeyPath();
  *v12 = v17;
  *(v12 + 2) = v13;
  v12[24] = v14;
  *(v12 + 4) = KeyPath;
  *(v12 + 5) = v15;
  *(a2 + v9[11]) = v7;
  *(a2 + v9[12]) = v6;
  *(a2 + v9[13]) = v8 & 1;
  *(a2 + v9[14]) = 0;
  *(a2 + v9[15]) = v25;
}

uint64_t sub_1003BBD30(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AE0900, &qword_1008386D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1003BBDA0()
{
  result = qword_100AE0908;
  if (!qword_100AE0908)
  {
    sub_1001F1234(&qword_100AE08F8, &qword_100821238);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE0908);
  }

  return result;
}

void *sub_1003BBE04(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1007A38D4();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v17 = _swiftEmptyArrayStorage;
  result = sub_1003BD10C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = sub_1007A3784();
        v17 = v3;
        v8 = v3[2];
        v7 = v3[3];
        if (v8 >= v7 >> 1)
        {
          sub_1003BD10C((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = type metadata accessor for ContextAssetInfo();
        v16 = sub_1003BF7D4();
        *&v14 = v6;
        v3[2] = v8 + 1;
        sub_1001FF7E0(&v14, &v3[5 * v8 + 4]);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v11 = v3[2];
        v12 = v3[3];
        v13 = v10;
        if (v11 >= v12 >> 1)
        {
          sub_1003BD10C((v12 > 1), v11 + 1, 1);
          v3 = v17;
        }

        v15 = type metadata accessor for ContextAssetInfo();
        v16 = sub_1003BF7D4();
        *&v14 = v13;
        v3[2] = v11 + 1;
        sub_1001FF7E0(&v14, &v3[5 * v11 + 4]);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

char *sub_1003BBFB4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1007A38D4();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = _swiftEmptyArrayStorage;
  result = sub_1003BD488(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_1007A3784();
        sub_1003AA874();
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_1003BD488((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_1000076D4(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_1003AA874();
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_1003BD488((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_1000076D4(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

char *sub_1003BC194(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1007A38D4();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v12 = _swiftEmptyArrayStorage;
  result = sub_1003BD488(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v12;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_1007A3784();
        sub_1007A1614();
        swift_dynamicCast();
        v12 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_1003BD488((v6 > 1), v7 + 1, 1);
          v3 = v12;
        }

        v3[2] = v7 + 1;
        sub_1000076D4(v11, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = a1 + 32;
      sub_1007A1614();
      do
      {

        swift_dynamicCast();
        v12 = v3;
        v10 = v3[2];
        v9 = v3[3];
        if (v10 >= v9 >> 1)
        {
          sub_1003BD488((v9 > 1), v10 + 1, 1);
          v3 = v12;
        }

        v3[2] = v10 + 1;
        sub_1000076D4(v11, &v3[4 * v10 + 4]);
        v8 += 8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_1003BC374(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = _swiftEmptyArrayStorage;
    sub_1003BD488(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_1003BD488((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      v2[2] = v6 + 1;
      sub_1000076D4(v8, &v2[4 * v6 + 4]);
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

char *sub_1003BC474(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1007A38D4();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v12 = _swiftEmptyArrayStorage;
  result = sub_1003BD488(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v12;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_1007A3784();
        swift_dynamicCast();
        v12 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_1003BD488((v6 > 1), v7 + 1, 1);
          v3 = v12;
        }

        v3[2] = v7 + 1;
        sub_1000076D4(v11, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = a1 + 32;
      do
      {
        swift_unknownObjectRetain();
        swift_dynamicCast();
        v12 = v3;
        v10 = v3[2];
        v9 = v3[3];
        if (v10 >= v9 >> 1)
        {
          sub_1003BD488((v9 > 1), v10 + 1, 1);
          v3 = v12;
        }

        v3[2] = v10 + 1;
        sub_1000076D4(v11, &v3[4 * v10 + 4]);
        v8 += 8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_1003BC650(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_1003BD540(0, v3, 0);
    v7 = a1 + 32;
    do
    {

      sub_1001F1160(a2, a3);
      sub_1001F1160(&unk_100AEF1B0, &qword_10081EB10);
      swift_dynamicCast();
      v9 = _swiftEmptyArrayStorage[2];
      v8 = _swiftEmptyArrayStorage[3];
      if (v9 >= v8 >> 1)
      {
        sub_1003BD540((v8 > 1), v9 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v9 + 1;
      _swiftEmptyArrayStorage[v9 + 4] = v11;
      v7 += 8;
      --v3;
    }

    while (v3);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1003BC778(unint64_t a1)
{
  if (a1 >> 62)
  {

    sub_1001F1160(&qword_100AD5A50, &unk_1008214A0);
    v1 = sub_1007A38C4();
  }

  else
  {
    v1 = a1;

    sub_1007A3AD4();
  }

  return v1;
}

uint64_t sub_1003BC894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1007A26F4();
  v5[4] = sub_1007A26E4();
  v7 = sub_1007A2694();

  return _swift_task_switch(sub_1003BC92C, v7, v6);
}

uint64_t sub_1003BC92C()
{

  sub_100797864();
  sub_100797884();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003BC9BC()
{
  v0[3] = *(v0[2] + OBJC_IVAR____TtC5Books23BKSharedWithYouProvider_sharedWithYouController);
  sub_1007A26F4();
  v0[4] = sub_1007A26E4();
  v2 = sub_1007A2694();

  return _swift_task_switch(sub_1003BCA64, v2, v1);
}

uint64_t sub_1003BCA64()
{

  sub_100797884();
  v1 = *(v0 + 8);

  return v1();
}

void BKSharedWithYouProvider.update(_:)()
{
  v1 = v0;
  v50 = sub_1007969B4();
  v2 = *(v50 - 8);
  __chkstk_darwin(v50);
  v49 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100797824();
  if (v4)
  {
    v5 = *(v4 + 16);
    if (v5)
    {
      v46 = v0;
      v61 = _swiftEmptyArrayStorage;
      v6 = v4;
      sub_1003BD580(0, v5, 0);
      v7 = v61;
      v8 = sub_1001F1160(&unk_100ADACE0, &unk_10080CDD0);
      v47 = (v2 + 8);
      v48 = v8;
      v45 = v6;
      v9 = (v6 + 48);
      while (1)
      {
        v51 = v7;
        v52 = v5;
        v10 = *(v9 - 2);
        v11 = *(v9 - 1);
        v12 = *v9;
        v53 = 0x696669746E656469;
        v54 = 0xEA00000000007265;
        v55 = v10;
        v56 = v11;
        v57 = 0x656372756F736572;
        v58 = 0xEB000000004C5255;
        swift_bridgeObjectRetain_n();
        v13 = v12;
        v14 = [v13 URL];
        v15 = v49;
        sub_100796974();

        v16 = sub_100796914();
        v18 = v17;
        (*v47)(v15, v50);
        v59 = v16;
        v60 = v18;
        v19 = sub_1007A3924();

        v20 = v53;
        v21 = v54;
        v22 = v55;
        v23 = v56;

        v24 = sub_10000E53C(v20, v21);
        if (v25)
        {
          break;
        }

        *(v19 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v24;
        v26 = (v19[6] + 16 * v24);
        *v26 = v20;
        v26[1] = v21;
        v27 = (v19[7] + 16 * v24);
        *v27 = v22;
        v27[1] = v23;
        v28 = v19[2];
        v29 = __OFADD__(v28, 1);
        v30 = v28 + 1;
        if (v29)
        {
          goto LABEL_16;
        }

        v19[2] = v30;
        v31 = v57;
        v32 = v58;
        v33 = v59;
        v34 = v60;

        v35 = sub_10000E53C(v31, v32);
        if (v36)
        {
          break;
        }

        *(v19 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v35;
        v37 = (v19[6] + 16 * v35);
        *v37 = v31;
        v37[1] = v32;
        v38 = (v19[7] + 16 * v35);
        *v38 = v33;
        v38[1] = v34;
        v39 = v19[2];
        v29 = __OFADD__(v39, 1);
        v40 = v39 + 1;
        if (v29)
        {
          goto LABEL_16;
        }

        v19[2] = v40;

        sub_1001F1160(&unk_100AE0920, &unk_100817F60);
        swift_arrayDestroy();

        v7 = v51;
        v61 = v51;
        v42 = v51[2];
        v41 = v51[3];
        if (v42 >= v41 >> 1)
        {
          sub_1003BD580((v41 > 1), v42 + 1, 1);
          v7 = v61;
        }

        v7[2] = v42 + 1;
        v7[v42 + 4] = v19;
        v9 += 3;
        v5 = v52 - 1;
        if (v52 == 1)
        {

          v1 = v46;
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
    }

    else
    {

      v7 = _swiftEmptyArrayStorage;
LABEL_13:
      v43 = *(v1 + OBJC_IVAR____TtC5Books23BKSharedWithYouProvider_dynamicArray);
      sub_1003BC650(v7, &unk_100AE0B70, &unk_100831210);

      sub_1001F1160(&unk_100AEF1B0, &qword_10081EB10);
      isa = sub_1007A25D4().super.isa;

      [v43 updateArray:isa];
    }
  }
}

char *sub_1003BD094(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1003BECF4(a1, a2, a3, *v3, &qword_100AE0990, &qword_1008212B0, &type metadata for ExperimentIDEntry);
  *v3 = result;
  return result;
}

char *sub_1003BD0CC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1003BDA88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1003BD0EC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1003BDB94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1003BD10C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1003BF090(a1, a2, a3, *v3, &unk_100AE0960, &unk_100821298, &qword_100AD4B48, qword_10080ED60);
  *v3 = result;
  return result;
}

void *sub_1003BD14C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1003BF5D4(a1, a2, a3, *v3, &qword_100AE0998, &qword_1008212B8, &type metadata accessor for ScoredBook);
  *v3 = result;
  return result;
}

char *sub_1003BD190(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1003BDCDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1003BD1B0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1003BDDE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1003BD1D0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1003BEE00(a1, a2, a3, *v3, &unk_100AEDDC0, &qword_100812CC8);
  *v3 = result;
  return result;
}

char *sub_1003BD200(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1003BDF00(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1003BD220(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1003BF5D4(a1, a2, a3, *v3, &qword_100AE0B88, &unk_100821490, &type metadata accessor for LibraryBookInfo);
  *v3 = result;
  return result;
}

void *sub_1003BD264(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1003BF5D4(a1, a2, a3, *v3, &qword_100AE0B80, &qword_100821488, &type metadata accessor for LibraryAudiobookInfo);
  *v3 = result;
  return result;
}

void *sub_1003BD2A8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1003BE698(a1, a2, a3, *v3, &unk_100AE09C0, &unk_1008212E0, &qword_100ADBE20, &qword_10081A800);
  *v3 = result;
  return result;
}

void *sub_1003BD2E8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1003BE698(a1, a2, a3, *v3, &unk_100AE09D0, &unk_1008212F0, &qword_100ADBE40, &qword_10081A828);
  *v3 = result;
  return result;
}

void *sub_1003BD328(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1003BE698(a1, a2, a3, *v3, &qword_100AE0A10, &qword_100821330, &qword_100ADBE80, &qword_10081A858);
  *v3 = result;
  return result;
}

char *sub_1003BD368(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1003BDFF4(a1, a2, a3, *v3, &qword_100AE0A08, &qword_100821328);
  *v3 = result;
  return result;
}

void *sub_1003BD398(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1003BE698(a1, a2, a3, *v3, &qword_100AE09F8, &qword_100821318, &qword_100AE0A00, &qword_100821320);
  *v3 = result;
  return result;
}

void *sub_1003BD3D8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1003BE698(a1, a2, a3, *v3, &unk_100AE09E0, &unk_100821300, &qword_100ADBE58, &qword_10081A838);
  *v3 = result;
  return result;
}

char *sub_1003BD418(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1003BDFF4(a1, a2, a3, *v3, &qword_100AE09F0, &qword_100821310);
  *v3 = result;
  return result;
}

void *sub_1003BD448(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1003BF300(a1, a2, a3, *v3, &qword_100AE0AD0, &unk_100821400, &qword_100AE0AD8, &qword_100832900);
  *v3 = result;
  return result;
}

char *sub_1003BD488(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1003BE0E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1003BD4A8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1003BE1F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1003BD4C8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1003BE2E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1003BD4E8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1003BE418(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1003BD508(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1003BECF4(a1, a2, a3, *v3, &qword_100AE09A0, &qword_1008212C0, &type metadata for Sidebar.DataModel.UserCollection);
  *v3 = result;
  return result;
}

void *sub_1003BD540(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1003BF300(a1, a2, a3, *v3, &qword_100AE0A20, &qword_100821340, &unk_100AEF1B0, &qword_10081EB10);
  *v3 = result;
  return result;
}

void *sub_1003BD580(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1003BF300(a1, a2, a3, *v3, &qword_100ADA238, &unk_100817F50, &unk_100AE0B70, &unk_100831210);
  *v3 = result;
  return result;
}

void *sub_1003BD5C0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1003BF090(a1, a2, a3, *v3, &qword_100AE0B60, &qword_100821478, &qword_100AE0B68, &qword_100821480);
  *v3 = result;
  return result;
}

void *sub_1003BD600(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1003BF090(a1, a2, a3, *v3, &qword_100AE0B10, &qword_100821440, &qword_100AE0B18, &qword_100821448);
  *v3 = result;
  return result;
}

void *sub_1003BD640(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1003BF5D4(a1, a2, a3, *v3, &unk_100AE0AB0, &unk_1008213D0, &type metadata accessor for ScoredGenre);
  *v3 = result;
  return result;
}

void *sub_1003BD684(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1003BE524(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1003BD6A4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1003BF5D4(a1, a2, a3, *v3, &qword_100AE0A38, &qword_100821358, &type metadata accessor for ContinuousClock.Instant);
  *v3 = result;
  return result;
}

void *sub_1003BD6E8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1003BF090(a1, a2, a3, *v3, &qword_100AE0B50, &qword_100821468, &qword_100AE0B58, &qword_100821470);
  *v3 = result;
  return result;
}

char *sub_1003BD728(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1003BEAC4(a1, a2, a3, *v3, &qword_100AE0A88, &qword_1008213A8, &type metadata for SidebarViewModel.ItemModel);
  *v3 = result;
  return result;
}

char *sub_1003BD760(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1003BE880(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1003BD780(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1003BE990(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}