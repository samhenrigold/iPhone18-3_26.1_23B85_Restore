uint64_t sub_17C4C()
{
  v1 = (v0 + *(type metadata accessor for LegacyBalloonView(0) + 44));
  v2 = v1[1];
  if (v2 && (*v1 == 0xD000000000000019 ? (v3 = v2 == 0x800000000005C0F0) : (v3 = 0), v3 || (sub_57B8C() & 1) != 0))
  {
    v4 = sub_5643C();
    v5 = sub_5640C();
    v7 = v6;

    if (v5 == 0xD00000000000001DLL && 0x800000000005C030 == v7)
    {
      v9 = 1;
    }

    else
    {
      v9 = sub_57B8C();
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

void *sub_17D44()
{
  type metadata accessor for ResponseUIExtensionAvailabilityViewModel(0);
  swift_allocObject();
  return sub_22F1C("com.apple.askto.responseUI", 26, 2);
}

uint64_t sub_17D8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MessagesContext(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  v7 = type metadata accessor for LegacyBalloonView(0);
  v8 = v7[5];
  *(a2 + v8) = swift_getKeyPath();
  sub_2AFC(&qword_71D78, &qword_593B0);
  swift_storeEnumTagMultiPayload();
  v9 = v7[12];
  v23 = 0;
  sub_2AFC(&qword_71D80, &qword_593B8);
  sub_5707C();
  *(a2 + v9) = v24;
  v10 = a2 + v7[14];
  *v10 = sub_17D44;
  *(v10 + 8) = 0;
  *(v10 + 16) = 0;
  v11 = a2 + v7[15];
  LOBYTE(v23) = 0;
  sub_5707C();
  v12 = *(&v24 + 1);
  *v11 = v24;
  *(v11 + 8) = v12;
  v13 = *(a1 + 24);
  *(a2 + v7[6]) = sub_5763C();
  *(a2 + v7[7]) = sub_5764C();
  v14 = type metadata accessor for PayloadViewModel(0);
  sub_2E28(a1 + v14[7], a2 + v7[8], &qword_71B00, &unk_593C0);
  sub_2E28(a1 + v14[8], a2 + v7[9], &qword_71B00, &unk_593C0);
  v15 = v14[9];
  sub_21F14(a1 + v15, a2 + v7[10], type metadata accessor for MessagesContext);
  v16 = sub_5762C();
  v17 = (a2 + v7[11]);
  *v17 = v16;
  v17[1] = v18;
  sub_21F14(a1 + v15, v6, type metadata accessor for MessagesContext);
  type metadata accessor for ResponseTransmitter(0);
  swift_allocObject();
  sub_14F68(v6, v13);
  v19 = (a2 + v7[13]);
  sub_21ECC(&qword_71D88, type metadata accessor for ResponseTransmitter, &unk_590F0);
  *v19 = sub_5672C();
  v19[1] = v20;
  return sub_21F7C(a1, type metadata accessor for PayloadViewModel);
}

uint64_t sub_1804C@<X0>(uint64_t a1@<X8>)
{
  v99 = a1;
  v2 = type metadata accessor for LegacyBalloonView(0);
  v96 = *(v2 - 8);
  __chkstk_darwin(v2);
  v107 = v3;
  v97 = &v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_2AFC(&qword_71EA0, &qword_59438);
  __chkstk_darwin(v94);
  v92 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v90 = &v88 - v6;
  v7 = sub_5674C();
  v102 = *(v7 - 8);
  __chkstk_darwin(v7);
  v101 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v100 = (&v88 - v10);
  v93 = sub_2AFC(&qword_71EA8, &qword_59440);
  __chkstk_darwin(v93);
  v91 = &v88 - v11;
  v12 = sub_561AC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2AFC(&qword_71EB0, &qword_59448);
  __chkstk_darwin(v16);
  v18 = &v88 - v17;
  v19 = sub_2AFC(&qword_71EB8, &qword_59450);
  __chkstk_darwin(v19);
  v21 = &v88 - v20;
  v103 = sub_2AFC(&qword_71EC0, &qword_59458);
  __chkstk_darwin(v103);
  v95 = &v88 - v22;
  v104 = sub_2AFC(&qword_71EC8, &qword_59460);
  __chkstk_darwin(v104);
  v105 = &v88 - v23;
  *v18 = sub_56A2C();
  *(v18 + 1) = 0;
  v18[16] = 0;
  v24 = sub_2AFC(&qword_71ED0, &qword_59468);
  sub_18E20(v1, &v18[*(v24 + 44)]);
  v108 = 0x65757165526B7341;
  v109 = 0xEB000000003A7473;
  v106 = v2;
  v98 = v1;
  sub_5645C();
  sub_21ECC(&qword_71ED8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v113._countAndFlagsBits = sub_57B7C();
  sub_577DC(v113);

  v25 = v15;
  v26 = v100;
  (*(v13 + 8))(v25, v12);
  sub_3260(&qword_71EE0, &qword_71EB0, &qword_59448, &protocol conformance descriptor for VStack<A>);
  sub_56ECC();
  v27 = v101;

  sub_2E90(v18, &qword_71EB0, &qword_59448);
  v28 = sub_56CCC();
  sub_5668C();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = &v21[*(sub_2AFC(&qword_71EE8, &qword_59470) + 36)];
  *v37 = v28;
  *(v37 + 1) = v30;
  *(v37 + 2) = v32;
  *(v37 + 3) = v34;
  *(v37 + 4) = v36;
  v37[40] = 0;
  v38 = sub_56C9C();
  sub_5668C();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = &v21[*(sub_2AFC(&qword_71EF0, &qword_59478) + 36)];
  *v47 = v38;
  *(v47 + 1) = v40;
  *(v47 + 2) = v42;
  *(v47 + 3) = v44;
  *(v47 + 4) = v46;
  v47[40] = 0;
  v48 = sub_5678C();
  v49 = sub_56CAC();
  v88 = v19;
  v50 = *(v19 + 36);
  v89 = v21;
  v51 = &v21[v50];
  *v51 = v48;
  v51[8] = v49;
  v52 = v102;
  v53 = *(v102 + 13);
  v53(v26, enum case for DynamicTypeSize.small(_:), v7);
  v53(v27, enum case for DynamicTypeSize.accessibility3(_:), v7);
  sub_21ECC(&qword_71EF8, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = sub_576BC();
  if (result)
  {
    v55 = *(v52 + 4);
    v56 = v90;
    v57 = v7;
    v55(v90, v26, v7);
    v58 = v94;
    v55((v56 + *(v94 + 48)), v27, v7);
    v59 = v92;
    sub_2E28(v56, v92, &qword_71EA0, &qword_59438);
    v60 = *(v58 + 48);
    v61 = v91;
    v55(v91, v59, v57);
    v62 = *(v52 + 1);
    v62(v59 + v60, v57);
    sub_B0DC(v56, v59, &qword_71EA0, &qword_59438);
    v55((v61 + *(v93 + 36)), (v59 + *(v58 + 48)), v57);
    v62(v59, v57);
    sub_1F828();
    sub_3260(&qword_71F30, &qword_71EA8, &qword_59440, &protocol conformance descriptor for ClosedRange<A>);
    v63 = v95;
    v64 = v89;
    sub_56E8C();
    sub_2E90(v61, &qword_71EA8, &qword_59440);
    sub_2E90(v64, &qword_71EB8, &qword_59450);
    v65 = v97;
    v66 = v98;
    v102 = type metadata accessor for LegacyBalloonView;
    sub_21F14(v98, v97, type metadata accessor for LegacyBalloonView);
    v67 = (*(v96 + 80) + 16) & ~*(v96 + 80);
    v68 = swift_allocObject();
    sub_1FACC(v65, v68 + v67);
    v69 = (v63 + *(v103 + 36));
    *v69 = sub_1FB30;
    v69[1] = v68;
    v69[2] = 0;
    v69[3] = 0;
    type metadata accessor for ResponseUIExtensionAvailabilityViewModel(0);
    sub_21ECC(&qword_71E40, type metadata accessor for ResponseUIExtensionAvailabilityViewModel, &unk_59818);
    sub_566AC();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_5662C();

    sub_21F14(v66, v65, type metadata accessor for LegacyBalloonView);
    v70 = swift_allocObject();
    sub_1FACC(v65, v70 + v67);
    sub_1FBD0();
    v71 = v105;
    sub_56F3C();

    sub_2E90(v63, &qword_71EC0, &qword_59458);
    v72 = v106;
    v73 = v66;
    v100 = *(v66 + *(v106 + 52) + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_5662C();

    v74 = v108;
    LOBYTE(v56) = v109;
    v75 = v104;
    sub_2AFC(&unk_71C70, "jV");
    sub_5799C();
    sub_BCE4(v74, v56);
    v76 = v73;
    sub_21F14(v73, v65, v102);
    v77 = swift_allocObject();
    sub_1FACC(v65, v77 + v67);
    v78 = &v71[*(v75 + 56)];
    *v78 = sub_1FD00;
    v78[1] = v77;
    v107 = sub_569EC();
    v102 = v80;
    v103 = v79;
    LODWORD(v101) = v81;
    v82 = v76 + *(v72 + 60);
    v83 = *v82;
    v84 = *(v82 + 8);
    v111 = v83;
    v112 = v84;
    sub_2AFC(&qword_71F40, &unk_59520);
    sub_570AC();
    LODWORD(v106) = v110;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_5662C();

    v100 = &v88;
    v86 = v108;
    LOBYTE(v65) = v109;
    __chkstk_darwin(v85);
    sub_2AFC(&qword_71F48, &unk_5A730);
    sub_2AFC(&qword_71F50, &unk_59530);
    sub_3260(&qword_71F58, &qword_71EC8, &qword_59460, &protocol conformance descriptor for SubscriptionView<A, B>);
    sub_3260(&qword_71F60, &qword_71F48, &unk_5A730, &protocol conformance descriptor for Button<A>);
    v87 = v105;
    sub_56EEC();

    sub_BCE4(v86, v65);
    return sub_2E90(v87, &qword_71EC8, &qword_59460);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_18E20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v217 = a2;
  v207 = sub_2AFC(&qword_71F70, &qword_59560);
  __chkstk_darwin(v207);
  v202 = &v167[-v3];
  v184 = sub_2AFC(&qword_71F78, &qword_59568);
  __chkstk_darwin(v184);
  v185 = &v167[-v4];
  v194 = sub_2AFC(&qword_71F80, &qword_59570);
  __chkstk_darwin(v194);
  v186 = &v167[-v5];
  v192 = sub_2AFC(&qword_71F88, &qword_59578);
  __chkstk_darwin(v192);
  v193 = &v167[-v6];
  v208 = type metadata accessor for LegacyBalloonView(0);
  v188 = *(v208 - 8);
  __chkstk_darwin(v208);
  v189 = v7;
  v190 = &v167[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_561CC();
  __chkstk_darwin(v8 - 8);
  v187 = &v167[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_5773C();
  __chkstk_darwin(v10 - 8);
  v183 = &v167[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v182 = &v167[-v13];
  v201 = sub_2AFC(&qword_71F90, &qword_59580);
  __chkstk_darwin(v201);
  v191 = &v167[-v14];
  v198 = sub_2AFC(&qword_71F98, &qword_59588);
  __chkstk_darwin(v198);
  v199 = &v167[-v15];
  v203 = sub_2AFC(&qword_71FA0, &qword_59590);
  __chkstk_darwin(v203);
  v195 = &v167[-v16];
  v17 = sub_2AFC(&qword_71FA8, &qword_59598);
  __chkstk_darwin(v17 - 8);
  v200 = &v167[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v218 = &v167[-v20];
  v210 = sub_2AFC(&qword_71FB0, &qword_595A0);
  __chkstk_darwin(v210);
  v213 = &v167[-v21];
  v204 = sub_2AFC(&qword_71FB8, &qword_595A8);
  __chkstk_darwin(v204);
  v205 = &v167[-v22];
  v211 = sub_2AFC(&qword_71FC0, &qword_595B0);
  __chkstk_darwin(v211);
  v206 = &v167[-v23];
  v24 = sub_2AFC(&qword_71FC8, &qword_595B8);
  __chkstk_darwin(v24 - 8);
  v216 = &v167[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v26);
  v28 = &v167[-v27];
  v209 = sub_2AFC(&qword_71FD0, &qword_595C0);
  v29 = *(v209 - 8);
  __chkstk_darwin(v209);
  v31 = &v167[-v30];
  v32 = sub_5717C();
  v33 = *(v32 - 8);
  v196 = v32;
  v197 = v33;
  __chkstk_darwin(v32);
  v35 = &v167[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v36);
  v38 = &v167[-v37];
  v39 = sub_2AFC(&qword_71FD8, &qword_595C8);
  __chkstk_darwin(v39 - 8);
  v215 = &v167[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v41);
  v43 = &v167[-v42];
  v44 = sub_2AFC(&qword_71FE0, &qword_595D0);
  __chkstk_darwin(v44 - 8);
  v214 = &v167[-((v45 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v46);
  v48 = &v167[-v47];
  *v48 = sub_5696C();
  *(v48 + 1) = 0;
  v48[16] = 1;
  v49 = *(sub_2AFC(&qword_71FE8, &qword_595D8) + 44);
  v212 = v48;
  sub_1A9B4(a1, &v48[v49]);
  v50 = a1;
  v51 = sub_177F4();
  v219 = v43;
  v220 = v28;
  if ((v51 - 1) < 2)
  {
    goto LABEL_5;
  }

  if (v51)
  {
    sub_200A0(v51);
  }

  if (sub_17B14())
  {
LABEL_5:
    (*(v29 + 56))(v43, 1, 1, v209);
  }

  else
  {
    sub_571DC();
    sub_566EC();
    v176 = v239;
    v177 = v237;
    v174 = v242;
    v175 = v241;
    v226 = 1;
    v225 = v238;
    v224 = v240;
    sub_5716C();
    sub_571DC();
    sub_566EC();
    v173 = v243;
    v181 = v247;
    v179 = v245;
    v180 = v248;
    v230 = 1;
    LOBYTE(v228) = v244;
    v227 = v246;
    v52 = v226;
    v168 = v225;
    v169 = v224;
    v53 = v197;
    v54 = *(v197 + 16);
    v55 = v35;
    v56 = v38;
    v178 = v38;
    v57 = v35;
    v58 = v196;
    v54(v55, v56, v196);
    v223[0] = v234;
    *(v223 + 3) = *(&v234 + 3);
    v170 = v230;
    v171 = v228;
    v222[0] = v231;
    *(v222 + 3) = *(&v231 + 3);
    v172 = v227;
    v221[0] = v229[0];
    *(v221 + 3) = *(v229 + 3);
    *v31 = 0;
    v31[8] = v52;
    *(v31 + 2) = v177;
    v31[24] = v168;
    *(v31 + 4) = v176;
    v31[40] = v169;
    v59 = v174;
    *(v31 + 6) = v175;
    *(v31 + 7) = v59;
    v60 = sub_2AFC(&qword_72060, &qword_59608);
    v54(&v31[*(v60 + 48)], v57, v58);
    v61 = v219;
    v62 = &v31[*(v60 + 64)];
    *v62 = 0;
    v62[8] = v170;
    *(v62 + 9) = v223[0];
    *(v62 + 3) = *(v223 + 3);
    *(v62 + 2) = v173;
    v62[24] = v171;
    *(v62 + 25) = v222[0];
    *(v62 + 7) = *(v222 + 3);
    v63 = v178;
    *(v62 + 4) = v179;
    v62[40] = v172;
    *(v62 + 11) = *(v221 + 3);
    *(v62 + 41) = v221[0];
    v64 = v180;
    *(v62 + 6) = v181;
    *(v62 + 7) = v64;
    v65 = *(v53 + 8);
    v65(v63, v58);
    v65(v57, v58);
    sub_B0DC(v31, v61, &qword_71FD0, &qword_595C0);
    (*(v29 + 56))(v61, 0, 1, v209);
  }

  v66 = v50;
  v67 = sub_177F4();
  v68 = v218;
  if (!v67)
  {
    if (sub_17B14())
    {
      v78 = 0;
      v79 = 0;
      v80 = 0;
      v81 = 0;
    }

    else
    {
      type metadata accessor for Localization();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v103 = objc_opt_self();
      v104 = [v103 bundleForClass:ObjCClassFromMetadata];
      v165._countAndFlagsBits = 0x800000000005C5E0;
      v249._countAndFlagsBits = 0xD000000000000010;
      v249._object = 0x800000000005C5E0;
      v251.value._countAndFlagsBits = 0;
      v251.value._object = 0;
      v105.super.isa = v104;
      v253._countAndFlagsBits = 0;
      v253._object = 0xE000000000000000;
      v78 = sub_55EFC(v249, v251, v105, v253, 0xD000000000000010, v165);
      v79 = v106;

      v107 = [v103 bundleForClass:ObjCClassFromMetadata];
      v166._countAndFlagsBits = 0x800000000005C600;
      v250._countAndFlagsBits = 0xD000000000000013;
      v250._object = 0x800000000005C600;
      v252.value._countAndFlagsBits = 0;
      v252.value._object = 0;
      v108.super.isa = v107;
      v254._countAndFlagsBits = 0;
      v254._object = 0xE000000000000000;
      v80 = sub_55EFC(v250, v252, v108, v254, 0xD000000000000013, v166);
      v81 = v109;
    }

    v110 = v205;
    *v205 = v78;
    v110[1] = v79;
    v110[2] = v80;
    v110[3] = v81;
    v110[5] = 0;
    v110[6] = 0;
    v110[4] = 0;
    swift_storeEnumTagMultiPayload();
    sub_20660(v78, v79, v80, v81, 0, 0, 0);
    sub_2AFC(&qword_72010, &qword_595E8);
    sub_1FF90();
    sub_3260(&qword_72018, &qword_71F70, &qword_59560, &protocol conformance descriptor for TupleView<A>);
    v111 = v206;
    sub_56ABC();
    sub_2E28(v111, v213, &qword_71FC0, &qword_595B0);
    swift_storeEnumTagMultiPayload();
    sub_2AFC(&qword_71FF8, &qword_595E0);
    sub_1FED8();
    sub_20014();
    sub_56ABC();
    sub_206C4(v78, v79, v80, v81, 0, 0, 0);
    v112 = v111;
    v113 = &qword_71FC0;
    v114 = &qword_595B0;
    goto LABEL_50;
  }

  v69 = v67;
  if (v67 == 1)
  {
    sub_571DC();
    sub_566EC();
    v72 = v235;
    v73 = *v236;
    v196 = v234;
    v197 = *&v236[8];
    LOBYTE(v231) = 1;
    LOBYTE(v229[0]) = BYTE8(v234);
    v230 = BYTE8(v235);
    v74 = sub_17C4C();
    v209 = v72;
    if (v74)
    {
      v75 = sub_5697C();
      v76 = v195;
      *v195 = v75;
      *(v76 + 8) = 0x4014000000000000;
      *(v76 + 16) = 0;
      v77 = sub_2AFC(&qword_72030, &qword_595F8);
      sub_1BA3C(v50, &unk_6EA70, sub_20974, v76 + *(v77 + 44));
      sub_2E28(v76, v199, &qword_71FA0, &qword_59590);
      swift_storeEnumTagMultiPayload();
      sub_3260(&qword_72040, &qword_71FA0, &qword_59590, &protocol conformance descriptor for HStack<A>);
      sub_201BC();
      sub_56ABC();
      sub_2E90(v76, &qword_71FA0, &qword_59590);
LABEL_49:
      v147 = v231;
      v148 = v229[0];
      v149 = v230;
      v150 = v200;
      sub_2E28(v68, v200, &qword_71FA8, &qword_59598);
      v151 = v202;
      *v202 = 0;
      *(v151 + 8) = v147;
      *(v151 + 16) = v196;
      *(v151 + 24) = v148;
      *(v151 + 32) = v209;
      *(v151 + 40) = v149;
      v152 = v197;
      *(v151 + 48) = v73;
      *(v151 + 56) = v152;
      v153 = sub_2AFC(&qword_72058, &qword_59600);
      sub_2E28(v150, v151 + *(v153 + 48), &qword_71FA8, &qword_59598);
      sub_2E90(v150, &qword_71FA8, &qword_59598);
      sub_2E28(v151, v205, &qword_71F70, &qword_59560);
      swift_storeEnumTagMultiPayload();
      sub_2AFC(&qword_72010, &qword_595E8);
      sub_1FF90();
      v154 = v68;
      sub_3260(&qword_72018, &qword_71F70, &qword_59560, &protocol conformance descriptor for TupleView<A>);
      v155 = v206;
      sub_56ABC();
      sub_2E28(v155, v213, &qword_71FC0, &qword_595B0);
      swift_storeEnumTagMultiPayload();
      sub_2AFC(&qword_71FF8, &qword_595E0);
      sub_1FED8();
      sub_20014();
      sub_56ABC();
      sub_2E90(v155, &qword_71FC0, &qword_595B0);
      sub_2E90(v151, &qword_71F70, &qword_59560);
      v112 = v154;
      v113 = &qword_71FA8;
      v114 = &qword_59598;
LABEL_50:
      sub_2E90(v112, v113, v114);
      goto LABEL_51;
    }

    v88 = sub_563EC();
    v181 = v73;
    if (v89)
    {
      v90 = v89;
      v180 = v88;
      type metadata accessor for ResponseUIExtensionAvailabilityViewModel(0);
      sub_21ECC(&qword_71E40, type metadata accessor for ResponseUIExtensionAvailabilityViewModel, &unk_59818);
      sub_566AC();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_5662C();

      if (v228 == 1)
      {
        sub_576DC();
        sub_D820(0, &qword_717B0, NSBundle_ptr);
        if (!sub_5796C())
        {
          v91 = [objc_opt_self() mainBundle];
        }

        sub_561BC();
        v92 = sub_5779C();
        v94 = v93;
        v95 = v190;
        sub_21F14(v66, v190, type metadata accessor for LegacyBalloonView);
        v96 = (*(v188 + 80) + 16) & ~*(v188 + 80);
        v97 = (v189 + v96 + 7) & 0xFFFFFFFFFFFFFFF8;
        v98 = swift_allocObject();
        sub_1FACC(v95, v98 + v96);
        v99 = (v98 + v97);
        *v99 = v180;
        v99[1] = v90;
        v100 = v193;
        *v193 = v92;
        v100[1] = v94;
        v100[2] = sub_205D0;
        v100[3] = v98;
        swift_storeEnumTagMultiPayload();
        sub_200B0();
        sub_20104();
        v101 = v191;
        sub_56ABC();
        v68 = v218;
LABEL_48:
        sub_2E28(v101, v199, &qword_71F90, &qword_59580);
        swift_storeEnumTagMultiPayload();
        sub_3260(&qword_72040, &qword_71FA0, &qword_59590, &protocol conformance descriptor for HStack<A>);
        sub_201BC();
        sub_56ABC();
        sub_2E90(v101, &qword_71F90, &qword_59580);
        v73 = v181;
        goto LABEL_49;
      }
    }

    sub_563EC();
    v101 = v191;
    if (v134)
    {

      sub_576DC();
      sub_D820(0, &qword_717B0, NSBundle_ptr);
      if (!sub_5796C())
      {
        v135 = [objc_opt_self() mainBundle];
      }

      sub_561BC();
      v136 = sub_5779C();
      v138 = v137;
      v139 = v190;
      sub_21F14(v50, v190, type metadata accessor for LegacyBalloonView);
      v140 = (*(v188 + 80) + 16) & ~*(v188 + 80);
      v141 = swift_allocObject();
      sub_1FACC(v139, v141 + v140);
      v142 = v185;
      *v185 = v136;
      v142[1] = v138;
      v142[2] = sub_20248;
      v142[3] = v141;
      swift_storeEnumTagMultiPayload();
      sub_200B0();
      sub_3260(&qword_72040, &qword_71FA0, &qword_59590, &protocol conformance descriptor for HStack<A>);
      v143 = v186;
      sub_56ABC();
    }

    else
    {
      v144 = sub_5697C();
      v145 = v195;
      *v195 = v144;
      *(v145 + 8) = 0x4014000000000000;
      *(v145 + 16) = 0;
      v146 = sub_2AFC(&qword_72030, &qword_595F8);
      sub_1BA3C(v50, &unk_6EBB0, sub_22338, v145 + *(v146 + 44));
      sub_2E28(v145, v185, &qword_71FA0, &qword_59590);
      swift_storeEnumTagMultiPayload();
      sub_200B0();
      sub_3260(&qword_72040, &qword_71FA0, &qword_59590, &protocol conformance descriptor for HStack<A>);
      v143 = v186;
      sub_56ABC();
      sub_2E90(v145, &qword_71FA0, &qword_59590);
    }

    sub_2E28(v143, v193, &qword_71F80, &qword_59570);
    swift_storeEnumTagMultiPayload();
    sub_200B0();
    sub_20104();
    sub_56ABC();
    sub_2E90(v143, &qword_71F80, &qword_59570);
    goto LABEL_48;
  }

  if (v67 != 2)
  {
    v82 = v50 + *(v208 + 40);
    v83 = (v82 + *(type metadata accessor for MessagesContext(0) + 32));
    v84 = *v83;
    v85 = v83[1];
    if (v84 == sub_5722C() && v85 == v86)
    {
      v87 = 1;
    }

    else
    {
      v87 = sub_57B8C();
    }

    v115 = sub_13744(v87 & 1, 1);
    v117 = v116;
    v118 = sub_13E94(v87 & 1);
    v120 = v119;
    v121 = sub_5721C();
    v122 = sub_564CC();

    v123 = 0x800000000005C580;
    v124 = 0xD000000000000011;
    if (v122 != 2)
    {
      v124 = 0;
      v123 = 0;
    }

    if (v122 == 1)
    {
      v125 = 0xD000000000000015;
    }

    else
    {
      v125 = v124;
    }

    if (v122 == 1)
    {
      v126 = 0x800000000005C5A0;
    }

    else
    {
      v126 = v123;
    }

    v127 = sub_5721C();
    v128 = sub_564CC();

    switch(v128)
    {
      case 0:
        goto LABEL_38;
      case 2:
        v129 = sub_56F6C();
        break;
      case 1:
        v129 = sub_56FAC();
        break;
      default:
LABEL_38:
        v129 = sub_56F7C();
        break;
    }

    v230 = 0;
    *&v234 = v115;
    *(&v234 + 1) = v117;
    *&v235 = v118;
    *(&v235 + 1) = v120;
    *v236 = v125;
    *&v236[8] = v126;
    *&v236[16] = v129;
    v236[24] = 0;
    sub_1FE84();

    sub_56ABC();
    v130 = v232;
    v234 = v231;
    v235 = v232;
    v131 = v233[0];
    *v236 = v233[0];
    v132 = *(v233 + 9);
    *&v236[9] = *(v233 + 9);
    v218 = v120;
    v133 = v213;
    *v213 = v231;
    v133[1] = v130;
    v133[2] = v131;
    *(v133 + 41) = v132;
    swift_storeEnumTagMultiPayload();
    sub_2E28(&v234, v229, &qword_71FF8, &qword_595E0);
    sub_2AFC(&qword_71FF8, &qword_595E0);
    sub_1FED8();
    sub_20014();
    sub_56ABC();
    sub_200A0(v69);
    sub_2E90(&v234, &qword_71FF8, &qword_595E0);

    goto LABEL_51;
  }

  LOBYTE(v229[0]) = 1;
  BYTE8(v233[1]) = 1;
  sub_1FE84();
  sub_56ABC();
  v70 = v235;
  v71 = v213;
  *v213 = v234;
  v71[1] = v70;
  v71[2] = *v236;
  *(v71 + 41) = *&v236[9];
  swift_storeEnumTagMultiPayload();
  sub_2AFC(&qword_71FF8, &qword_595E0);
  sub_1FED8();
  sub_20014();
  sub_56ABC();
LABEL_51:
  v156 = v212;
  v157 = v214;
  sub_2E28(v212, v214, &qword_71FE0, &qword_595D0);
  v158 = v219;
  v159 = v215;
  sub_2E28(v219, v215, &qword_71FD8, &qword_595C8);
  v160 = v220;
  v161 = v216;
  sub_2E28(v220, v216, &qword_71FC8, &qword_595B8);
  v162 = v217;
  sub_2E28(v157, v217, &qword_71FE0, &qword_595D0);
  v163 = sub_2AFC(&qword_72028, &qword_595F0);
  sub_2E28(v159, v162 + *(v163 + 48), &qword_71FD8, &qword_595C8);
  sub_2E28(v161, v162 + *(v163 + 64), &qword_71FC8, &qword_595B8);
  sub_2E90(v160, &qword_71FC8, &qword_595B8);
  sub_2E90(v158, &qword_71FD8, &qword_595C8);
  sub_2E90(v156, &qword_71FE0, &qword_595D0);
  sub_2E90(v161, &qword_71FC8, &qword_595B8);
  sub_2E90(v159, &qword_71FD8, &qword_595C8);
  return sub_2E90(v157, &qword_71FE0, &qword_595D0);
}

uint64_t sub_1A9B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_2AFC(&qword_72100, &qword_59720);
  __chkstk_darwin(v3 - 8);
  v42 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v38 = (&v35 - v6);
  v39 = type metadata accessor for IconView(0);
  __chkstk_darwin(v39);
  v40 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v35 - v9;
  v11 = sub_572EC();
  v35 = *(v11 - 8);
  v36 = v11;
  __chkstk_darwin(v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2AFC(&qword_71B00, &unk_593C0);
  __chkstk_darwin(v14 - 8);
  v16 = &v35 - v15;
  v17 = sub_5756C();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v35 - v22;
  v24 = type metadata accessor for LegacyBalloonView(0);
  sub_2E28(a1 + *(v24 + 32), v16, &qword_71B00, &unk_593C0);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_2E90(v16, &qword_71B00, &unk_593C0);
    sub_176A8();
    sub_572CC();
    sub_5727C();
    (*(v35 + 8))(v13, v36);
    (*(v18 + 32))(v23, v20, v17);
  }

  else
  {
    v25 = *(v18 + 32);
    v25(v20, v16, v17);
    v25(v23, v20, v17);
  }

  v37 = v17;
  v26 = v39;
  (*(v18 + 16))(&v10[*(v39 + 20)], v23, v17);
  type metadata accessor for IconView.Kind(0);
  swift_storeEnumTagMultiPayload();
  sub_2E28(a1 + *(v24 + 36), &v10[*(v26 + 24)], &qword_71B00, &unk_593C0);
  *v10 = swift_getKeyPath();
  v10[8] = 0;
  v27 = sub_56A1C();
  v28 = v38;
  *v38 = v27;
  *(v28 + 8) = 0x4008000000000000;
  *(v28 + 16) = 0;
  v29 = sub_2AFC(&qword_72108, &qword_59728);
  sub_1AED4(v28 + *(v29 + 44));
  v30 = v40;
  sub_21F14(v10, v40, type metadata accessor for IconView);
  v31 = v42;
  sub_2E28(v28, v42, &qword_72100, &qword_59720);
  v32 = v41;
  sub_21F14(v30, v41, type metadata accessor for IconView);
  v33 = sub_2AFC(&qword_72110, &qword_59730);
  sub_2E28(v31, v32 + *(v33 + 48), &qword_72100, &qword_59720);
  sub_2E90(v28, &qword_72100, &qword_59720);
  sub_21F7C(v10, type metadata accessor for IconView);
  (*(v18 + 8))(v23, v37);
  sub_2E90(v31, &qword_72100, &qword_59720);
  return sub_21F7C(v30, type metadata accessor for IconView);
}

uint64_t sub_1AED4@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v1 = sub_2AFC(&qword_72118, &qword_59738);
  __chkstk_darwin(v1 - 8);
  v53 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v51 = &v44 - v4;
  v5 = sub_2AFC(&qword_72120, &qword_59740);
  __chkstk_darwin(v5 - 8);
  v50 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v54 = &v44 - v8;
  type metadata accessor for LegacyBalloonView(0);
  v9 = sub_5646C();
  if (!v10)
  {
    v9 = sub_5642C();
  }

  v11 = v9;
  v12 = v10;
  v13 = sub_5635C();
  if (!v14)
  {
    v13 = sub_5644C();
  }

  v48 = v14;
  v49 = v13;
  *&v70[0] = v11;
  *(&v70[0] + 1) = v12;
  v47 = sub_2B4C();
  v15 = sub_56E0C();
  v17 = v16;
  v19 = v18;
  sub_56CDC();
  sub_56CEC();

  v20 = sub_56DDC();
  v45 = v21;
  v46 = v20;
  v23 = v22;
  v25 = v24;

  sub_21FDC(v15, v17, v19 & 1);

  KeyPath = swift_getKeyPath();
  sub_571CC();
  sub_567CC();
  *&v72[55] = v75[3];
  *&v72[71] = v75[4];
  *&v72[87] = v75[5];
  *&v72[103] = v76;
  *&v72[7] = v75[0];
  *&v72[23] = v75[1];
  *&v72[39] = v75[2];
  *(&v69[4] + 1) = *&v72[64];
  *(&v69[5] + 1) = *&v72[80];
  *(&v69[6] + 1) = *&v72[96];
  *(v69 + 1) = *v72;
  *(&v69[1] + 1) = *&v72[16];
  *(&v69[2] + 1) = *&v72[32];
  v74 = v25 & 1;
  v73 = 0;
  *&v66 = v46;
  *(&v66 + 1) = v23;
  LOBYTE(v67) = v25 & 1;
  *(&v67 + 1) = v45;
  *&v68 = KeyPath;
  *(&v68 + 1) = 1;
  LOBYTE(v69[0]) = 0;
  *&v69[7] = *(&v76 + 1);
  *(&v69[3] + 1) = *&v72[48];
  sub_2AFC(&qword_72128, &qword_59778);
  sub_22050();
  sub_56ECC();
  v70[8] = v69[5];
  v70[9] = v69[6];
  v71 = *&v69[7];
  v70[4] = v69[1];
  v70[5] = v69[2];
  v70[6] = v69[3];
  v70[7] = v69[4];
  v70[0] = v66;
  v70[1] = v67;
  v70[2] = v68;
  v70[3] = v69[0];
  sub_2E90(v70, &qword_72128, &qword_59778);
  *&v66 = v49;
  *(&v66 + 1) = v48;
  v27 = sub_56E0C();
  v29 = v28;
  LOBYTE(KeyPath) = v30;
  sub_56D5C();
  v49 = sub_56DDC();
  v32 = v31;
  v34 = v33;
  v36 = v35;

  sub_21FDC(v27, v29, KeyPath & 1);

  sub_571CC();
  sub_567CC();
  v65 = v34 & 1;
  *&v55 = v49;
  *(&v55 + 1) = v32;
  LOBYTE(v56) = v34 & 1;
  *(&v56 + 1) = v36;
  v64 = 256;
  sub_2AFC(&qword_72138, &qword_59780);
  sub_220DC();
  v37 = v51;
  sub_56ECC();
  v69[3] = v61;
  v69[4] = v62;
  v69[5] = v63;
  LOWORD(v69[6]) = v64;
  v68 = v57;
  v69[0] = v58;
  v69[1] = v59;
  v69[2] = v60;
  v66 = v55;
  v67 = v56;
  sub_2E90(&v66, &qword_72138, &qword_59780);
  v38 = v54;
  v39 = v50;
  sub_2E28(v54, v50, &qword_72120, &qword_59740);
  v40 = v53;
  sub_2E28(v37, v53, &qword_72118, &qword_59738);
  v41 = v52;
  sub_2E28(v39, v52, &qword_72120, &qword_59740);
  v42 = sub_2AFC(&qword_72158, &unk_59790);
  sub_2E28(v40, v41 + *(v42 + 48), &qword_72118, &qword_59738);
  sub_2E90(v37, &qword_72118, &qword_59738);
  sub_2E90(v38, &qword_72120, &qword_59740);
  sub_2E90(v40, &qword_72118, &qword_59738);
  return sub_2E90(v39, &qword_72120, &qword_59740);
}

uint64_t sub_1B4FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LegacyBalloonView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2AFC(&qword_71820, &qword_59550);
  __chkstk_darwin(v10 - 8);
  v12 = &v20 - v11;
  v13 = sub_578CC();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_21F14(a1, v9, type metadata accessor for LegacyBalloonView);
  sub_578AC();

  v14 = sub_5789C();
  v15 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v16 = (v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  *(v17 + 24) = &protocol witness table for MainActor;
  sub_1FACC(v9, v17 + v15);
  v18 = (v17 + v16);
  *v18 = a2;
  v18[1] = a3;
  sub_31894(0, 0, v12, &unk_596E8, v17);
}

uint64_t sub_1B6F4()
{
  v0 = sub_2AFC(&qword_720F8, &unk_59710);
  __chkstk_darwin(v0 - 8);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v17 - v4;
  v6 = sub_560CC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LegacyBalloonView(0);
  sub_5634C();
  v10 = *(v7 + 48);
  if (v10(v2, 1, v6) == 1)
  {
    sub_560BC();
    if (v10(v2, 1, v6) != 1)
    {
      sub_2E90(v2, &qword_720F8, &unk_59710);
    }
  }

  else
  {
    (*(v7 + 32))(v5, v2, v6);
    (*(v7 + 56))(v5, 0, 1, v6);
  }

  if (v10(v5, 1, v6) == 1)
  {
    return sub_2E90(v5, &qword_720F8, &unk_59710);
  }

  (*(v7 + 32))(v9, v5, v6);
  v12 = [objc_opt_self() sharedApplication];
  sub_5609C(v13);
  v15 = v14;
  sub_B310(&_swiftEmptyArrayStorage);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_21ECC(&qword_71700, type metadata accessor for OpenExternalURLOptionsKey, &unk_588A4);
  isa = sub_5766C().super.isa;

  [v12 openURL:v15 options:isa completionHandler:0];

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1BA3C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v37[1] = a3;
  v38 = a4;
  v41 = a5;
  v6 = sub_2AFC(&qword_72068, &qword_59610);
  v39 = *(v6 - 8);
  v40 = v6;
  __chkstk_darwin(v6);
  v37[0] = v37 - v7;
  v8 = sub_2AFC(&qword_72070, &qword_59618);
  __chkstk_darwin(v8 - 8);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v37 - v12;
  v14 = sub_2AFC(&qword_72078, &qword_59620);
  __chkstk_darwin(v14);
  v16 = v37 - v15;
  v17 = sub_2AFC(&qword_72080, &qword_59628);
  __chkstk_darwin(v17 - 8);
  v19 = v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = v37 - v21;
  v42 = a1;
  sub_2AFC(&qword_72088, &qword_59630);
  sub_20730();
  sub_20784();
  sub_56D8C();
  type metadata accessor for LegacyBalloonView(0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_5662C();

  LOBYTE(a1) = v43;
  KeyPath = swift_getKeyPath();
  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  v25 = &v16[*(v14 + 36)];
  v26 = v38;
  *v25 = KeyPath;
  v25[1] = v26;
  v25[2] = v24;
  sub_2098C();
  sub_56ECC();
  sub_2E90(v16, &qword_72078, &qword_59620);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_5662C();

  if (v43 == 1)
  {
    v27 = v37[0];
    sub_566DC();
    v28 = v39;
    v29 = v27;
    v30 = v40;
    (*(v39 + 32))(v13, v29, v40);
    v31 = 0;
    v32 = v30;
    v33 = v28;
  }

  else
  {
    v31 = 1;
    v33 = v39;
    v32 = v40;
  }

  (*(v33 + 56))(v13, v31, 1, v32);
  sub_2E28(v22, v19, &qword_72080, &qword_59628);
  sub_2E28(v13, v10, &qword_72070, &qword_59618);
  v34 = v41;
  sub_2E28(v19, v41, &qword_72080, &qword_59628);
  v35 = sub_2AFC(&qword_720C8, &unk_596C0);
  sub_2E28(v10, v34 + *(v35 + 48), &qword_72070, &qword_59618);
  sub_2E90(v13, &qword_72070, &qword_59618);
  sub_2E90(v22, &qword_72080, &qword_59628);
  sub_2E90(v10, &qword_72070, &qword_59618);
  return sub_2E90(v19, &qword_72080, &qword_59628);
}

uint64_t sub_1BF00(uint64_t a1)
{
  v1 = sub_2AFC(&qword_71820, &qword_59550);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  type metadata accessor for LegacyBalloonView(0);
  type metadata accessor for ResponseUIExtensionAvailabilityViewModel(0);
  sub_21ECC(&qword_71E40, type metadata accessor for ResponseUIExtensionAvailabilityViewModel, &unk_59818);
  v4 = sub_566AC();
  v5 = sub_578CC();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  sub_578AC();

  v6 = sub_5789C();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = v4;
  sub_31894(0, 0, v3, &unk_59558, v7);
}

void sub_1C0A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for MessagesContext(0);
  __chkstk_darwin(v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LegacyBalloonView(0);
  sub_21F14(a3 + *(v7 + 40), v6, type metadata accessor for MessagesContext);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_21F7C(v6, type metadata accessor for MessagesContext);
  if (Strong)
  {
    [Strong requestResize];
  }
}

void sub_1C18C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessagesContext(0);
  __chkstk_darwin(v4);
  v6 = &v35[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *a1;
  LOBYTE(a1) = *(a1 + 8);
  v8 = type metadata accessor for LegacyBalloonView(0);
  v9 = (a2 + *(v8 + 40));
  v11 = *v9;
  v10 = v9[1];
  if (a1)
  {
    v12 = v8;
    if (qword_715B8 != -1)
    {
      swift_once();
    }

    v13 = sub_562FC();
    sub_B144(v13, qword_75758);
    swift_bridgeObjectRetain_n();
    sub_BCD8(v7, 1);
    v14 = sub_562DC();
    v15 = sub_5792C();

    sub_BCFC(v7, 1);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412546;
      if (v10)
      {
        sub_B8D8();
        swift_allocError();
        *v18 = v11;
        v18[1] = v10;
        v19 = _swift_stdlib_bridgeErrorToNSError();
        v20 = v19;
      }

      else
      {
        v19 = 0;
        v20 = 0;
      }

      *(v16 + 4) = v19;
      *v17 = v20;
      *(v16 + 12) = 2112;
      swift_errorRetain();
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 14) = v29;
      v17[1] = v29;
      _os_log_impl(&dword_0, v14, v15, "%@: Error sending response: %@", v16, 0x16u);
      sub_2AFC(&qword_71828, &qword_598B0);
      swift_arrayDestroy();
    }

    else
    {
    }

    v30 = (a2 + *(v12 + 60));
    v31 = *v30;
    v32 = *(v30 + 1);
    v35[16] = v31;
    v36 = v32;
    v35[15] = 1;
    sub_2AFC(&qword_71F40, &unk_59520);
    sub_5709C();
  }

  else
  {
    if (qword_715B8 != -1)
    {
      swift_once();
    }

    v21 = sub_562FC();
    sub_B144(v21, qword_75758);
    swift_bridgeObjectRetain_n();
    sub_BCD8(v7, 0);
    v22 = sub_562DC();
    v23 = sub_5794C();

    sub_BCFC(v7, 0);
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412546;
      if (v10)
      {
        sub_B8D8();
        swift_allocError();
        *v26 = v11;
        v26[1] = v10;
        v27 = _swift_stdlib_bridgeErrorToNSError();
        v28 = v27;
      }

      else
      {
        v27 = 0;
        v28 = 0;
      }

      *(v24 + 4) = v27;
      *(v24 + 12) = 2112;
      *(v24 + 14) = v7;
      *v25 = v28;
      v25[1] = v7;
      v33 = v7;
      _os_log_impl(&dword_0, v22, v23, "%@: Successfully sent response: %@", v24, 0x16u);
      sub_2AFC(&qword_71828, &qword_598B0);
      swift_arrayDestroy();
    }

    else
    {
    }

    sub_21F14(v9, v6, type metadata accessor for MessagesContext);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_21F7C(v6, type metadata accessor for MessagesContext);
    if (Strong)
    {
      [Strong requestResize];
    }
  }
}

uint64_t sub_1C60C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for LegacyBalloonView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = sub_2AFC(&qword_71F68, &unk_59540);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  sub_569EC();
  sub_5666C();
  v9 = sub_5667C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  sub_21F14(a2, &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LegacyBalloonView);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  sub_1FACC(&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  return sub_570FC();
}

uint64_t sub_1C7F8(uint64_t a1)
{
  type metadata accessor for LegacyBalloonView(0);
  sub_2AFC(&qword_71F40, &unk_59520);
  sub_5709C();
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_5663C();
}

uint64_t sub_1C8C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_569DC();
  __chkstk_darwin(v4 - 8);
  v5 = *a1;
  v6 = *(a1 + 8);
  if (os_variant_has_internal_ui() && (v6 & 1) != 0)
  {
    swift_errorRetain();
    sub_2AFC(&qword_71D30, &qword_5A740);
    swift_willThrowTypedImpl();
    swift_getErrorValue();
    v7 = sub_57BDC();
    v9 = v8;
    sub_BCFC(v5, 1);
  }

  else
  {
    v7 = 0;
    v9 = 0xE000000000000000;
  }

  sub_569CC();
  v17._object = 0x800000000005C540;
  v17._countAndFlagsBits = 0xD000000000000038;
  sub_569BC(v17);
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    v18._countAndFlagsBits = v7;
    v18._object = v9;
    sub_577DC(v18);

    v11._countAndFlagsBits = 32;
    v12 = 0xE100000000000000;
  }

  else
  {

    v11._countAndFlagsBits = 0;
    v12 = 0xE000000000000000;
  }

  v11._object = v12;
  sub_569AC(v11);

  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  sub_569BC(v19);
  sub_569FC();
  result = sub_56DEC();
  *a2 = result;
  *(a2 + 8) = v14;
  *(a2 + 16) = v15 & 1;
  *(a2 + 24) = v16;
  return result;
}

uint64_t sub_1CAB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  v7 = type metadata accessor for LegacyBalloonView(0);
  v6[11] = v7;
  v8 = *(v7 - 8);
  v6[12] = v8;
  v6[13] = *(v8 + 64);
  v6[14] = swift_task_alloc();
  sub_578AC();
  v6[15] = sub_5789C();
  v10 = sub_5788C();
  v6[16] = v10;
  v6[17] = v9;

  return _swift_task_switch(sub_1CBB8, v10, v9);
}

uint64_t sub_1CBB8()
{
  v1 = (v0[8] + *(v0[11] + 48));
  v3 = *v1;
  v2 = v1[1];
  v0[2] = v3;
  v0[3] = v2;
  v20 = v2;
  sub_2AFC(&qword_720E8, &qword_596F0);
  sub_5708C();
  v4 = v0[6];
  if (v4)
  {
    sub_D820(0, &qword_720F0, NSObject_ptr);
    v5 = sub_565DC();
    v6 = sub_5798C();

    if (v6)
    {
      v7 = v4;
      goto LABEL_6;
    }
  }

  v8 = v0[14];
  v19 = v3;
  v10 = v0[11];
  v9 = v0[12];
  v11 = v0[8];
  sub_565FC();
  v12 = *(v11 + *(v10 + 24));
  sub_21F14(v11, v8, type metadata accessor for LegacyBalloonView);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  sub_1FACC(v8, v14 + v13);

  v15 = v12;
  v16 = sub_565EC();
  v0[4] = v19;
  v0[5] = v20;
  v0[7] = v16;
  v7 = v16;
  sub_5709C();
LABEL_6:
  v0[18] = v7;
  v17 = swift_task_alloc();
  v0[19] = v17;
  *v17 = v0;
  v17[1] = sub_1CDF4;

  return sub_1DAD8(v7);
}

uint64_t sub_1CDF4()
{
  v1 = *v0;
  v2 = *(*v0 + 144);

  v3 = *(v1 + 136);
  v4 = *(v1 + 128);

  return _swift_task_switch(sub_1CF34, v4, v3);
}

uint64_t sub_1CF34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1CFA8(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacyBalloonView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2AFC(&qword_71820, &qword_59550);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - v9;
  v11 = sub_578CC();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_21F14(a2, v7, type metadata accessor for LegacyBalloonView);
  sub_578AC();
  v12 = a1;
  v13 = sub_5789C();
  v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v15 = (v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  *(v16 + 24) = &protocol witness table for MainActor;
  sub_1FACC(v7, v16 + v14);
  *(v16 + v15) = v12;
  sub_31894(0, 0, v10, &unk_59708, v16);
}

uint64_t sub_1D19C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_578AC();
  v5[4] = sub_5789C();
  v7 = sub_5788C();

  return _swift_task_switch(sub_1D234, v7, v6);
}

uint64_t sub_1D234()
{
  v1 = *(v0 + 24);

  sub_1D2A0(v1);
  v2 = *(v0 + 8);

  return v2();
}

void sub_1D2A0(void *a1)
{
  v69 = a1;
  v2 = sub_2AFC(&qword_71820, &qword_59550);
  __chkstk_darwin(v2 - 8);
  v63 = &v58 - v3;
  v68 = type metadata accessor for MessagesContext(0);
  __chkstk_darwin(v68);
  v67 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LegacyBalloonView(0);
  v60 = *(v5 - 8);
  __chkstk_darwin(v5);
  v61 = v6;
  v62 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v66 = &v58 - v8;
  v9 = sub_5733C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_5734C();
  v59 = *(v1 + *(v5 + 24));
  v13 = sub_5643C();
  (*(v10 + 104))(v12, enum case for ResponseJourney.Checkpoint.userDidInitiateMessagesTranscript(_:), v9);
  sub_21ECC(&qword_720E0, &type metadata accessor for ResponseJourney, &protocol conformance descriptor for ResponseJourney);
  sub_575BC();

  (*(v10 + 8))(v12, v9);
  v14 = v1;
  v15 = (v1 + *(v5 + 40));
  v16 = *v15;
  v17 = v15[1];
  v64 = v5;
  v65 = v16;
  if (qword_715C0 != -1)
  {
    swift_once();
  }

  v18 = sub_562FC();
  sub_B144(v18, qword_75770);
  v19 = v66;
  sub_21F14(v1, v66, type metadata accessor for LegacyBalloonView);

  v20 = v69;
  v21 = sub_562DC();
  v22 = sub_5794C();
  v69 = v20;

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412802;
    if (v17)
    {
      sub_B8D8();
      swift_allocError();
      *v25 = v65;
      v25[1] = v17;

      v26 = _swift_stdlib_bridgeErrorToNSError();
      v27 = v26;
    }

    else
    {
      v26 = 0;
      v27 = 0;
    }

    *(v23 + 4) = v26;
    *(v23 + 12) = 2112;
    v28 = v69;
    *(v23 + 14) = v69;
    *v24 = v27;
    v24[1] = v28;
    *(v23 + 22) = 2112;
    v29 = v19;
    v30 = *(v19 + *(v64 + 24));
    v31 = v28;
    v32 = v30;
    sub_21F7C(v29, type metadata accessor for LegacyBalloonView);
    *(v23 + 24) = v32;
    v24[2] = v32;
    _os_log_impl(&dword_0, v21, v22, "%@: User selected answer choice. answerChoice: %@, question: %@", v23, 0x20u);
    sub_2AFC(&qword_71828, &qword_598B0);
    swift_arrayDestroy();
  }

  else
  {

    sub_21F7C(v19, type metadata accessor for LegacyBalloonView);
  }

  v33 = v67;
  sub_21F14(v15, v67, type metadata accessor for MessagesContext);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_21F7C(v33, type metadata accessor for MessagesContext);
  if (Strong && (v35 = [Strong activeConversation], Strong, v35))
  {
    v36 = v59;
    v37 = [v35 senderAddress];
    sub_5778C();

    v38 = objc_allocWithZone(sub_5725C());
    v39 = v69;
    v40 = sub_5723C();
    v41 = sub_578CC();
    v42 = v63;
    (*(*(v41 - 8) + 56))(v63, 1, 1, v41);
    v43 = v62;
    sub_21F14(v14, v62, type metadata accessor for LegacyBalloonView);
    sub_578AC();
    v44 = v40;
    v45 = v35;
    v46 = sub_5789C();
    v47 = (*(v60 + 80) + 32) & ~*(v60 + 80);
    v48 = (v61 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
    v49 = swift_allocObject();
    *(v49 + 16) = v46;
    *(v49 + 24) = &protocol witness table for MainActor;
    sub_1FACC(v43, v49 + v47);
    *(v49 + v48) = v44;
    *(v49 + ((v48 + 15) & 0xFFFFFFFFFFFFFFF8)) = v45;
    sub_31894(0, 0, v42, &unk_596D8, v49);
  }

  else
  {
    swift_bridgeObjectRetain_n();
    v50 = v69;
    v44 = sub_562DC();
    v51 = sub_5792C();

    if (os_log_type_enabled(v44, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *v52 = 138412546;
      if (v17)
      {
        sub_B8D8();
        swift_allocError();
        *v54 = v65;
        v54[1] = v17;
        v55 = _swift_stdlib_bridgeErrorToNSError();
        v56 = v55;
      }

      else
      {
        v55 = 0;
        v56 = 0;
      }

      *(v52 + 4) = v55;
      *(v52 + 12) = 2112;
      *(v52 + 14) = v50;
      *v53 = v56;
      v53[1] = v50;
      v57 = v50;
      _os_log_impl(&dword_0, v44, v51, "%@: Could not send response because activeConversation was nil. answerChoice: %@", v52, 0x16u);
      sub_2AFC(&qword_71828, &qword_598B0);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

uint64_t sub_1DAD8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for LegacyBalloonView(0);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v2[6] = *(v4 + 64);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = type metadata accessor for MessagesContext(0);
  v2[10] = swift_task_alloc();
  sub_578AC();
  v2[11] = sub_5789C();
  v6 = sub_5788C();
  v2[12] = v6;
  v2[13] = v5;

  return _swift_task_switch(sub_1DC10, v6, v5);
}

uint64_t sub_1DC10()
{
  v1 = v0[10];
  v2 = v0[4];
  sub_21F14(v0[3] + *(v2 + 40), v1, type metadata accessor for MessagesContext);
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[14] = Strong;
  sub_21F7C(v1, type metadata accessor for MessagesContext);
  if (Strong)
  {
    v4 = v0[8];
    v5 = v0[5];
    sub_21F14(v0[3], v4, type metadata accessor for LegacyBalloonView);
    v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v7 = swift_allocObject();
    v0[15] = v7;
    sub_1FACC(v4, v7 + v6);
    v26 = (&async function pointer to dispatch thunk of HostResponseUIFlowCoordinator.showRemoteFlow(presentingViewController:onFlowEnd:) + async function pointer to dispatch thunk of HostResponseUIFlowCoordinator.showRemoteFlow(presentingViewController:onFlowEnd:));
    v8 = Strong;
    v9 = swift_task_alloc();
    v0[16] = v9;
    *v9 = v0;
    v9[1] = sub_1DFD4;

    return v26(v8, sub_21A48, v7);
  }

  else
  {

    if (qword_715C0 != -1)
    {
      swift_once();
    }

    v11 = v0[7];
    v12 = v0[3];
    v13 = sub_562FC();
    sub_B144(v13, qword_75770);
    sub_21F14(v12, v11, type metadata accessor for LegacyBalloonView);
    v14 = sub_562DC();
    v15 = sub_5792C();
    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[7];
    if (v16)
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      v20 = (v17 + *(v2 + 40));
      v21 = v20[1];
      v22 = v0[7];
      if (v21)
      {
        v23 = *v20;
        sub_B8D8();
        swift_allocError();
        *v24 = v23;
        v24[1] = v21;

        v21 = _swift_stdlib_bridgeErrorToNSError();
      }

      sub_21F7C(v22, type metadata accessor for LegacyBalloonView);
      *(v18 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&dword_0, v14, v15, "%@: Cannot present response UI flow - unable to get presenting view controller", v18, 0xCu);
      sub_2E90(v19, &qword_71828, &qword_598B0);
    }

    else
    {

      sub_21F7C(v17, type metadata accessor for LegacyBalloonView);
    }

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_1DFD4()
{
  v1 = *v0;
  v2 = *(*v0 + 112);

  v3 = *(v1 + 104);
  v4 = *(v1 + 96);

  return _swift_task_switch(sub_1E130, v4, v3);
}

uint64_t sub_1E130()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E1B4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for LegacyBalloonView(0);
  __chkstk_darwin(v4);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v30 - v8;
  if (a1)
  {
    swift_errorRetain();
    if (qword_715C0 != -1)
    {
      swift_once();
    }

    v10 = sub_562FC();
    sub_B144(v10, qword_75770);
    sub_21F14(v1, v9, type metadata accessor for LegacyBalloonView);
    swift_errorRetain();
    v11 = sub_562DC();
    v12 = sub_5792C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412546;
      v15 = &v9[*(v4 + 40)];
      v16 = *(v15 + 1);
      if (v16)
      {
        v30[0] = *v15;
        sub_B8D8();
        swift_allocError();
        *v17 = v30[0];
        v17[1] = v16;

        v16 = _swift_stdlib_bridgeErrorToNSError();
      }

      sub_21F7C(v9, type metadata accessor for LegacyBalloonView);
      *(v13 + 4) = v16;
      *v14 = v16;
      *(v13 + 12) = 2112;
      swift_errorRetain();
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 14) = v18;
      v14[1] = v18;
      _os_log_impl(&dword_0, v11, v12, "%@: Response UI flow ended with error: %@", v13, 0x16u);
      sub_2AFC(&qword_71828, &qword_598B0);
      swift_arrayDestroy();

      goto LABEL_17;
    }

    v28 = v9;
LABEL_16:
    sub_21F7C(v28, type metadata accessor for LegacyBalloonView);
    goto LABEL_17;
  }

  if (qword_715C0 != -1)
  {
    swift_once();
  }

  v19 = sub_562FC();
  sub_B144(v19, qword_75770);
  sub_21F14(v1, v6, type metadata accessor for LegacyBalloonView);
  v20 = sub_562DC();
  v21 = sub_5794C();
  if (!os_log_type_enabled(v20, v21))
  {

    v28 = v6;
    goto LABEL_16;
  }

  v22 = swift_slowAlloc();
  v23 = swift_slowAlloc();
  *v22 = 138412290;
  v24 = &v6[*(v4 + 40)];
  v25 = *(v24 + 1);
  if (v25)
  {
    v26 = *v24;
    sub_B8D8();
    swift_allocError();
    *v27 = v26;
    v27[1] = v25;

    v25 = _swift_stdlib_bridgeErrorToNSError();
  }

  sub_21F7C(v6, type metadata accessor for LegacyBalloonView);
  *(v22 + 4) = v25;
  *v23 = v25;
  _os_log_impl(&dword_0, v20, v21, "%@: Response UI flow completed successfully", v22, 0xCu);
  sub_2E90(v23, &qword_71828, &qword_598B0);

LABEL_17:
  v31 = *(v2 + *(v4 + 48));
  v30[1] = 0;
  sub_2AFC(&qword_720E8, &qword_596F0);
  return sub_5709C();
}

uint64_t sub_1E660(uint64_t a1)
{
  v2 = type metadata accessor for LegacyBalloonView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v8[1] = sub_5637C();
  sub_21F14(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LegacyBalloonView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1FACC(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  sub_2AFC(&qword_71B60, &qword_59020);
  sub_2AFC(&qword_71F48, &unk_5A730);
  sub_3260(&qword_720D0, &qword_71B60, &qword_59020, &protocol conformance descriptor for [A]);
  sub_3260(&qword_71F60, &qword_71F48, &unk_5A730, &protocol conformance descriptor for Button<A>);
  sub_21ECC(&qword_720D8, &type metadata accessor for ATAnswerChoice, &protocol conformance descriptor for ATAnswerChoice);
  return sub_5719C();
}

uint64_t sub_1E884(void **a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacyBalloonView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = sub_2AFC(&qword_71F68, &unk_59540);
  __chkstk_darwin(v7 - 8);
  v9 = &v19 - v8;
  v10 = *a1;
  sub_564CC();
  v11 = sub_564BC();
  if (v11 == sub_564BC())
  {
    sub_5665C();
    v12 = sub_5667C();
    (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  }

  else
  {
    v13 = sub_5667C();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  }

  sub_21F14(a2, &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LegacyBalloonView);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  v16 = sub_1FACC(&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  *(v15 + ((v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = v10;
  __chkstk_darwin(v16);
  *(&v19 - 2) = v10;
  v17 = v10;
  return sub_570CC();
}

uint64_t sub_1EAFC@<X0>(uint64_t a1@<X8>)
{
  sub_564EC();
  sub_2B4C();
  result = sub_56E0C();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1EB58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_578AC();
  v6[5] = sub_5789C();
  v8 = sub_5788C();
  v6[6] = v8;
  v6[7] = v7;

  return _swift_task_switch(sub_1EBF4, v8, v7);
}

uint64_t sub_1EBF4()
{
  v1 = v0[2];
  v2 = *(type metadata accessor for LegacyBalloonView(0) + 40);
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_1ECB0;
  v5 = v0[3];
  v4 = v0[4];

  return sub_14234(v5, v4, v1 + v2);
}

uint64_t sub_1ECB0()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return _swift_task_switch(sub_1EDD0, v3, v2);
}

uint64_t sub_1EDD0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t type metadata accessor for LegacyBalloonView(uint64_t a1)
{
  result = qword_71DF0;
  if (!qword_71DF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1EF70(uint64_t a1)
{
  v2 = sub_5675C();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_5688C();
}

uint64_t sub_1F050(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2AFC(&qword_71D90, &unk_5A610);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_3:
    v10 = *(v8 + 48);

    return v10(a1 + v9, a2, v7);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_2AFC(&qword_71B00, &unk_593C0);
    if (*(*(v13 - 8) + 84) == a2)
    {
      v7 = v13;
      v8 = *(v13 - 8);
      v9 = a3[8];
      goto LABEL_3;
    }

    v14 = type metadata accessor for MessagesContext(0);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[10];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_1F1EC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_2AFC(&qword_71D90, &unk_5A610);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[5];
LABEL_3:
    v12 = *(v10 + 56);

    return v12(a1 + v11, a2, a2, v9);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
    return result;
  }

  v13 = sub_2AFC(&qword_71B00, &unk_593C0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_3;
  }

  v14 = type metadata accessor for MessagesContext(0);
  v15 = *(*(v14 - 8) + 56);
  v16 = a1 + a4[10];

  return v15(v16, a2, a2, v14);
}

void sub_1F374(uint64_t a1)
{
  sub_1F7BC(319, &qword_71E00, &type metadata for CGFloat, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_1F5CC(319, &qword_71E08, &type metadata accessor for LayoutDirection, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_5647C();
      if (v3 <= 0x3F)
      {
        sub_1F5CC(319, &qword_71E10, &type metadata accessor for ATResponse, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_1F5CC(319, &qword_71E18, &type metadata accessor for Icon, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            type metadata accessor for MessagesContext(319);
            if (v6 <= 0x3F)
            {
              sub_1F7BC(319, &qword_71E20, &type metadata for String, &type metadata accessor for Optional);
              if (v7 <= 0x3F)
              {
                sub_1F630(319);
                if (v8 <= 0x3F)
                {
                  sub_1F694(319);
                  if (v9 <= 0x3F)
                  {
                    sub_1F728(319);
                    if (v10 <= 0x3F)
                    {
                      sub_1F7BC(319, &unk_71E48, &type metadata for Bool, &type metadata accessor for State);
                      if (v11 <= 0x3F)
                      {
                        swift_cvw_initStructMetadataWithLayoutString();
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1F5CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1F630(uint64_t a1)
{
  if (!qword_71E28)
  {
    sub_2C70(&qword_71D80, &qword_593B8);
    v1 = sub_570BC();
    if (!v2)
    {
      atomic_store(v1, &qword_71E28);
    }
  }
}

void sub_1F694(uint64_t a1)
{
  if (!qword_71E30)
  {
    type metadata accessor for ResponseTransmitter(255);
    sub_21ECC(&qword_71D88, type metadata accessor for ResponseTransmitter, &unk_590F0);
    v1 = sub_5673C();
    if (!v2)
    {
      atomic_store(v1, &qword_71E30);
    }
  }
}

void sub_1F728(uint64_t a1)
{
  if (!qword_71E38)
  {
    type metadata accessor for ResponseUIExtensionAvailabilityViewModel(255);
    sub_21ECC(&qword_71E40, type metadata accessor for ResponseUIExtensionAvailabilityViewModel, &unk_59818);
    v1 = sub_566BC();
    if (!v2)
    {
      atomic_store(v1, &qword_71E38);
    }
  }
}

void sub_1F7BC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1F828()
{
  result = qword_71F00;
  if (!qword_71F00)
  {
    sub_2C70(&qword_71EB8, &qword_59450);
    sub_1F8B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71F00);
  }

  return result;
}

unint64_t sub_1F8B4()
{
  result = qword_71F08;
  if (!qword_71F08)
  {
    sub_2C70(&qword_71EF0, &qword_59478);
    sub_1F940();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71F08);
  }

  return result;
}

unint64_t sub_1F940()
{
  result = qword_71F10;
  if (!qword_71F10)
  {
    sub_2C70(&qword_71EE8, &qword_59470);
    sub_1F9CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71F10);
  }

  return result;
}

unint64_t sub_1F9CC()
{
  result = qword_71F18;
  if (!qword_71F18)
  {
    sub_2C70(&qword_71F20, &qword_59480);
    sub_3260(&qword_71EE0, &qword_71EB0, &qword_59448, &protocol conformance descriptor for VStack<A>);
    sub_21ECC(&qword_71F28, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71F18);
  }

  return result;
}

uint64_t sub_1FAB8(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_1FACC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacyBalloonView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1FB50(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for LegacyBalloonView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1C0A8(a1, a2, v6);
}

unint64_t sub_1FBD0()
{
  result = qword_71F38;
  if (!qword_71F38)
  {
    sub_2C70(&qword_71EC0, &qword_59458);
    sub_2C70(&qword_71EB8, &qword_59450);
    sub_2C70(&qword_71EA8, &qword_59440);
    sub_1F828();
    sub_3260(&qword_71F30, &qword_71EA8, &qword_59440, &protocol conformance descriptor for ClosedRange<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71F38);
  }

  return result;
}

void sub_1FD00(uint64_t a1)
{
  v3 = *(type metadata accessor for LegacyBalloonView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1C18C(a1, v4);
}

uint64_t sub_1FD90()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1FDD0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22334;

  return sub_23548(a1, v4, v5, v6);
}

unint64_t sub_1FE84()
{
  result = qword_71FF0;
  if (!qword_71FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71FF0);
  }

  return result;
}

unint64_t sub_1FED8()
{
  result = qword_72000;
  if (!qword_72000)
  {
    sub_2C70(&qword_71FC0, &qword_595B0);
    sub_1FF90();
    sub_3260(&qword_72018, &qword_71F70, &qword_59560, &protocol conformance descriptor for TupleView<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72000);
  }

  return result;
}

unint64_t sub_1FF90()
{
  result = qword_72008;
  if (!qword_72008)
  {
    sub_2C70(&qword_72010, &qword_595E8);
    sub_1FE84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72008);
  }

  return result;
}

unint64_t sub_20014()
{
  result = qword_72020;
  if (!qword_72020)
  {
    sub_2C70(&qword_71FF8, &qword_595E0);
    sub_1FE84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72020);
  }

  return result;
}

void sub_200A0(id a1)
{
  if (a1 >= 3)
  {
  }
}

unint64_t sub_200B0()
{
  result = qword_72038;
  if (!qword_72038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72038);
  }

  return result;
}

unint64_t sub_20104()
{
  result = qword_72048;
  if (!qword_72048)
  {
    sub_2C70(&qword_71F80, &qword_59570);
    sub_200B0();
    sub_3260(&qword_72040, &qword_71FA0, &qword_59590, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72048);
  }

  return result;
}

unint64_t sub_201BC()
{
  result = qword_72050;
  if (!qword_72050)
  {
    sub_2C70(&qword_71F90, &qword_59580);
    sub_200B0();
    sub_20104();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72050);
  }

  return result;
}

uint64_t sub_20260(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for LegacyBalloonView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_202D4()
{
  v1 = type metadata accessor for LegacyBalloonView(0);
  v2 = *(*(v1 - 1) + 80);
  v17 = *(*(v1 - 1) + 64);
  v3 = (v2 + 16) & ~v2;
  v4 = v0 + v3;
  sub_1FAB8(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v1[5];
  sub_2AFC(&qword_71D78, &qword_593B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_5675C();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  else
  {
  }

  v7 = v1[8];
  v8 = sub_5756C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (!v10(v4 + v7, 1, v8))
  {
    (*(v9 + 8))(v4 + v7, v8);
  }

  v11 = v1[9];
  if (!v10(v4 + v11, 1, v8))
  {
    (*(v9 + 8))(v4 + v11, v8);
  }

  v12 = (v17 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = v4 + v1[10];

  v14 = *(type metadata accessor for MessagesContext(0) + 28);
  v15 = sub_561AC();
  (*(*(v15 - 8) + 8))(v13 + v14, v15);

  swift_unknownObjectWeakDestroy();

  sub_1FAC4(*(v4 + v1[14]), *(v4 + v1[14] + 8));

  return _swift_deallocObject(v0, v12 + 16, v2 | 7);
}

uint64_t sub_205D0()
{
  v1 = *(type metadata accessor for LegacyBalloonView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v4 = *v3;
  v5 = v3[1];

  return sub_1B4FC(v0 + v2, v4, v5);
}

void sub_20660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
  }
}

void sub_206C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
  }
}

unint64_t sub_20730()
{
  result = qword_72090;
  if (!qword_72090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72090);
  }

  return result;
}

unint64_t sub_20784()
{
  result = qword_72098;
  if (!qword_72098)
  {
    sub_2C70(&qword_72088, &qword_59630);
    sub_3260(&qword_71F60, &qword_71F48, &unk_5A730, &protocol conformance descriptor for Button<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72098);
  }

  return result;
}

uint64_t sub_2083C@<X0>(uint64_t a1@<X8>)
{
  result = sub_5692C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_208A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_5690C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_208D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_5690C();
  *a1 = result & 1;
  return result;
}

unint64_t sub_2098C()
{
  result = qword_720A0;
  if (!qword_720A0)
  {
    sub_2C70(&qword_72078, &qword_59620);
    sub_3260(&qword_720A8, &qword_720B0, &unk_596B0, &protocol conformance descriptor for Menu<A, B>);
    sub_3260(&qword_720B8, &qword_720C0, &qword_5A9B0, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_720A0);
  }

  return result;
}

uint64_t sub_20A70(void **a1)
{
  v3 = *(type metadata accessor for LegacyBalloonView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1E884(a1, v4);
}

uint64_t sub_20AF0()
{
  v1 = type metadata accessor for LegacyBalloonView(0);
  v2 = *(*(v1 - 1) + 80);
  v17 = *(*(v1 - 1) + 64);
  v3 = (v2 + 16) & ~v2;
  v4 = v0 + v3;
  sub_1FAB8(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v1[5];
  sub_2AFC(&qword_71D78, &qword_593B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_5675C();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  else
  {
  }

  v7 = v1[8];
  v8 = sub_5756C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (!v10(v4 + v7, 1, v8))
  {
    (*(v9 + 8))(v4 + v7, v8);
  }

  v11 = v1[9];
  if (!v10(v4 + v11, 1, v8))
  {
    (*(v9 + 8))(v4 + v11, v8);
  }

  v12 = (v17 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = v4 + v1[10];

  v14 = *(type metadata accessor for MessagesContext(0) + 28);
  v15 = sub_561AC();
  (*(*(v15 - 8) + 8))(v13 + v14, v15);

  swift_unknownObjectWeakDestroy();

  sub_1FAC4(*(v4 + v1[14]), *(v4 + v1[14] + 8));

  return _swift_deallocObject(v0, v12 + 8, v2 | 7);
}

uint64_t sub_20E78()
{
  v1 = type metadata accessor for LegacyBalloonView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v18 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v4 = v0 + v3;
  sub_1FAB8(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v1[5];
  sub_2AFC(&qword_71D78, &qword_593B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_5675C();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  else
  {
  }

  v7 = v1[8];
  v8 = sub_5756C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (!v10(v4 + v7, 1, v8))
  {
    (*(v9 + 8))(v4 + v7, v8);
  }

  v11 = v1[9];
  if (!v10(v4 + v11, 1, v8))
  {
    (*(v9 + 8))(v4 + v11, v8);
  }

  v12 = (v18 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = v4 + v1[10];

  v15 = *(type metadata accessor for MessagesContext(0) + 28);
  v16 = sub_561AC();
  (*(*(v16 - 8) + 8))(v14 + v15, v16);

  swift_unknownObjectWeakDestroy();

  sub_1FAC4(*(v4 + v1[14]), *(v4 + v1[14] + 8));

  return _swift_deallocObject(v0, v13 + 8, v2 | 7);
}

uint64_t sub_21188(uint64_t a1)
{
  v4 = *(type metadata accessor for LegacyBalloonView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22334;

  return sub_1EB58(a1, v7, v8, v1 + v5, v9, v10);
}

uint64_t sub_212C0()
{
  v1 = type metadata accessor for LegacyBalloonView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v16 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v4 = v0 + v3;
  sub_1FAB8(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v1[5];
  sub_2AFC(&qword_71D78, &qword_593B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_5675C();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  else
  {
  }

  v7 = v1[8];
  v8 = sub_5756C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (!v10(v4 + v7, 1, v8))
  {
    (*(v9 + 8))(v4 + v7, v8);
  }

  v11 = v1[9];
  if (!v10(v4 + v11, 1, v8))
  {
    (*(v9 + 8))(v4 + v11, v8);
  }

  v12 = v4 + v1[10];

  v13 = *(type metadata accessor for MessagesContext(0) + 28);
  v14 = sub_561AC();
  (*(*(v14 - 8) + 8))(v12 + v13, v14);

  swift_unknownObjectWeakDestroy();

  sub_1FAC4(*(v4 + v1[14]), *(v4 + v1[14] + 8));

  return _swift_deallocObject(v0, ((v16 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_215C4(uint64_t a1)
{
  v4 = *(type metadata accessor for LegacyBalloonView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_BBC4;

  return sub_1CAB8(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_216F4(void *a1)
{
  v3 = *(type metadata accessor for LegacyBalloonView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1CFA8(a1, v4);
}

uint64_t sub_21764()
{
  v1 = type metadata accessor for LegacyBalloonView(0);
  v2 = *(*(v1 - 1) + 80);
  v16 = *(*(v1 - 1) + 64);
  v3 = (v2 + 16) & ~v2;
  v4 = v0 + v3;
  sub_1FAB8(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v1[5];
  sub_2AFC(&qword_71D78, &qword_593B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_5675C();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  else
  {
  }

  v7 = v1[8];
  v8 = sub_5756C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (!v10(v4 + v7, 1, v8))
  {
    (*(v9 + 8))(v4 + v7, v8);
  }

  v11 = v1[9];
  if (!v10(v4 + v11, 1, v8))
  {
    (*(v9 + 8))(v4 + v11, v8);
  }

  v12 = v4 + v1[10];

  v13 = *(type metadata accessor for MessagesContext(0) + 28);
  v14 = sub_561AC();
  (*(*(v14 - 8) + 8))(v12 + v13, v14);

  swift_unknownObjectWeakDestroy();

  sub_1FAC4(*(v4 + v1[14]), *(v4 + v1[14] + 8));

  return _swift_deallocObject(v0, v3 + v16, v2 | 7);
}

uint64_t sub_21AAC()
{
  v1 = type metadata accessor for LegacyBalloonView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v17 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v4 = v0 + v3;
  sub_1FAB8(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v1[5];
  sub_2AFC(&qword_71D78, &qword_593B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_5675C();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  else
  {
  }

  v7 = v1[8];
  v8 = sub_5756C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (!v10(v4 + v7, 1, v8))
  {
    (*(v9 + 8))(v4 + v7, v8);
  }

  v11 = v1[9];
  if (!v10(v4 + v11, 1, v8))
  {
    (*(v9 + 8))(v4 + v11, v8);
  }

  v12 = (v17 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = v4 + v1[10];

  v14 = *(type metadata accessor for MessagesContext(0) + 28);
  v15 = sub_561AC();
  (*(*(v15 - 8) + 8))(v13 + v14, v15);

  swift_unknownObjectWeakDestroy();

  sub_1FAC4(*(v4 + v1[14]), *(v4 + v1[14] + 8));

  return _swift_deallocObject(v0, v12 + 8, v2 | 7);
}

uint64_t sub_21DAC(uint64_t a1)
{
  v4 = *(type metadata accessor for LegacyBalloonView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22334;

  return sub_1D19C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_21ECC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21F14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21F7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21FDC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_21FEC@<X0>(uint64_t a1@<X8>)
{
  result = sub_5692C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_22050()
{
  result = qword_72130;
  if (!qword_72130)
  {
    sub_2C70(&qword_72128, &qword_59778);
    sub_2D70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72130);
  }

  return result;
}

unint64_t sub_220DC()
{
  result = qword_72140;
  if (!qword_72140)
  {
    sub_2C70(&qword_72138, &qword_59780);
    sub_22168();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72140);
  }

  return result;
}

unint64_t sub_22168()
{
  result = qword_72148;
  if (!qword_72148)
  {
    sub_2C70(&qword_72150, &qword_59788);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72148);
  }

  return result;
}

uint64_t sub_221EC()
{
  sub_2C70(&qword_71EC8, &qword_59460);
  sub_2C70(&qword_71F48, &unk_5A730);
  sub_2C70(&qword_71F50, &unk_59530);
  sub_3260(&qword_71F58, &qword_71EC8, &qword_59460, &protocol conformance descriptor for SubscriptionView<A, B>);
  sub_3260(&qword_71F60, &qword_71F48, &unk_5A730, &protocol conformance descriptor for Button<A>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_22354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2AFC(&qword_71B00, &unk_593C0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for MessagesContext(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_22498(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = sub_2AFC(&qword_71B00, &unk_593C0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for MessagesContext(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for PayloadViewModel(uint64_t a1)
{
  result = qword_721B8;
  if (!qword_721B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22614(uint64_t a1)
{
  sub_227CC(319, &qword_721C8, sub_22730);
  if (v1 <= 0x3F)
  {
    sub_2277C();
    if (v2 <= 0x3F)
    {
      sub_5765C();
      if (v3 <= 0x3F)
      {
        sub_227CC(319, &qword_71E18, &type metadata accessor for Icon);
        if (v4 <= 0x3F)
        {
          type metadata accessor for MessagesContext(319);
          if (v5 <= 0x3F)
          {
            type metadata accessor for ManageContactsSetting(319);
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

unint64_t sub_22730()
{
  result = qword_721D0;
  if (!qword_721D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_721D0);
  }

  return result;
}

void sub_2277C()
{
  if (!qword_71E20)
  {
    v0 = sub_579AC();
    if (!v1)
    {
      atomic_store(v0, &qword_71E20);
    }
  }
}

void sub_227CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_579AC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_22820()
{
  v1 = type metadata accessor for BalloonView(0);
  __chkstk_darwin(v1);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2AFC(&qword_72218, &unk_597B8);
  __chkstk_darwin(v4);
  v6 = &v18 - v5;
  v7 = type metadata accessor for PayloadViewModel(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LegacyBalloonView(0);
  __chkstk_darwin(v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22B84(v13);
  sub_22DE0(v0, v9, type metadata accessor for PayloadViewModel);
  if (v14 == 1)
  {
    sub_33008(v9, v3);
    sub_22DE0(v3, v6, type metadata accessor for BalloonView);
    swift_storeEnumTagMultiPayload();
    sub_22D98(&qword_72220, type metadata accessor for LegacyBalloonView, &unk_593E4);
    sub_22D98(&qword_72228, type metadata accessor for BalloonView, &unk_5A634);
    sub_56ABC();
    v15 = type metadata accessor for BalloonView;
    v16 = v3;
  }

  else
  {
    sub_17D8C(v9, v12);
    sub_22DE0(v12, v6, type metadata accessor for LegacyBalloonView);
    swift_storeEnumTagMultiPayload();
    sub_22D98(&qword_72220, type metadata accessor for LegacyBalloonView, &unk_593E4);
    sub_22D98(&qword_72228, type metadata accessor for BalloonView, &unk_5A634);
    sub_56ABC();
    v15 = type metadata accessor for LegacyBalloonView;
    v16 = v12;
  }

  return sub_22E48(v16, v15);
}

uint64_t sub_22B84(uint64_t a1)
{
  v1 = sub_5762C();
  if (!v2)
  {
    goto LABEL_13;
  }

  if (v1 == 0xD000000000000019 && v2 == 0x800000000005C0F0)
  {

    goto LABEL_9;
  }

  v4 = sub_57B8C();

  if (v4)
  {
LABEL_9:
    v5 = sub_5763C();
    v6 = sub_5643C();

    v7 = sub_5640C();
    v9 = v8;

    if (v7 == 0xD00000000000001DLL && 0x800000000005C030 == v9)
    {

      return 0;
    }

    v11 = sub_57B8C();

    result = 0;
    if (v11)
    {
      return result;
    }
  }

LABEL_13:
  v12 = sub_5763C();
  v13 = sub_5643C();

  v14 = sub_5640C();
  v16 = v15;

  if (v14 == 0xD00000000000002DLL && 0x800000000005BFB0 == v16)
  {
    goto LABEL_20;
  }

  v18 = sub_57B8C();

  if (v18)
  {
    return 1;
  }

  v19 = sub_5763C();
  v20 = sub_5643C();

  v21 = sub_5640C();
  v23 = v22;

  if (v21 == 0xD00000000000001DLL && 0x800000000005C700 == v23)
  {
LABEL_20:

    return 1;
  }

  v24 = sub_57B8C();

  if (v24)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_22D98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22DE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22E48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22EA8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_5662C();

  return v1;
}

void *sub_22F1C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_2AFC(&qword_71820, &qword_59550);
  __chkstk_darwin(v9 - 8);
  v11 = &v22[-v10];
  v12 = sub_2AFC(&qword_71D10, &qword_59130);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22[-v14];
  v16 = OBJC_IVAR____TtC13AskToMessages40ResponseUIExtensionAvailabilityViewModel__isExtensionAvailable;
  v22[15] = 0;
  sub_5661C();
  (*(v13 + 32))(v4 + v16, v15, v12);
  v17 = v4 + OBJC_IVAR____TtC13AskToMessages40ResponseUIExtensionAvailabilityViewModel_extensionPointID;
  *v17 = a1;
  *(v17 + 1) = a2;
  v17[16] = a3;
  sub_562AC();
  swift_allocObject();
  *(v4 + OBJC_IVAR____TtC13AskToMessages40ResponseUIExtensionAvailabilityViewModel_monitor) = sub_5629C();
  v18 = sub_578CC();
  (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
  sub_578AC();

  v19 = sub_5789C();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = &protocol witness table for MainActor;
  *(v20 + 32) = a1;
  *(v20 + 40) = a2;
  *(v20 + 48) = a3;
  *(v20 + 56) = v4;
  *(v20 + 64) = v8;
  sub_31894(0, 0, v11, &unk_59858, v20);

  return v4;
}

uint64_t sub_23194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a7;
  v7[3] = sub_578AC();
  v7[4] = sub_5789C();
  v11 = swift_task_alloc();
  v7[5] = v11;
  *v11 = v7;
  v11[1] = sub_23274;

  return sub_24960(a4, a5, a6);
}

uint64_t sub_23274(char a1)
{
  *(*v1 + 57) = a1;

  return _swift_task_switch(sub_23374, 0, 0);
}

uint64_t sub_23374(uint64_t a1)
{
  *(v1 + 48) = sub_5789C();
  v3 = sub_5788C();

  return _swift_task_switch(sub_23400, v3, v2);
}

uint64_t sub_23400()
{
  v1 = *(v0 + 57);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 56) = v1;

  sub_5663C();
  v3 = sub_5788C();

  return _swift_task_switch(sub_234E8, v3, v2);
}

uint64_t sub_234E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_562BC();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  sub_578AC();
  v4[6] = sub_5789C();
  v7 = sub_5788C();
  v4[7] = v7;
  v4[8] = v6;

  return _swift_task_switch(sub_2363C, v7, v6);
}

uint64_t sub_2363C()
{
  sub_5623C();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_23888;
  v2 = *(v0 + 40);

  return AppExtensionPoint.Monitor.addAppExtensionPoint(_:)(v2);
}

uint64_t sub_23888()
{
  v2 = *v1;
  v2[10] = v0;

  if (v0)
  {
    v3 = v2[7];
    v4 = v2[8];

    return _swift_task_switch(sub_23BA0, v3, v4);
  }

  else
  {
    v5 = swift_task_alloc();
    v2[11] = v5;
    *v5 = v2;
    v5[1] = sub_239F4;
    v6 = v2[2];

    return sub_23D5C(v6);
  }
}

uint64_t sub_239F4()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_23B14, v3, v2);
}

uint64_t sub_23B14()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_23BA0()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];

  (*(v3 + 8))(v1, v2);
  if (qword_715E8 != -1)
  {
    swift_once();
  }

  v4 = sub_562FC();
  sub_B144(v4, qword_757E8);
  swift_errorRetain();
  v5 = sub_562DC();
  v6 = sub_5792C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_0, v5, v6, "ResponseUIExtensionAvailability: Error activating extension monitoring: %@", v7, 0xCu);
    sub_2516C(v8);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_23D5C(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_5627C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_23E1C, 0, 0);
}

uint64_t sub_23E1C()
{
  sub_561DC();
  sub_578AC();
  *(v0 + 48) = sub_5789C();
  v2 = sub_5788C();

  return _swift_task_switch(sub_23EE8, v2, v1);
}

uint64_t sub_23EE8()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);

  sub_241B4(v1, v2);

  return _swift_task_switch(sub_23F98, 0, 0);
}

uint64_t sub_23F98()
{
  (*(v0[4] + 8))(v0[5], v0[3]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24014(uint64_t a1)
{
  v2 = sub_2AFC(&qword_71820, &qword_59550);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  v5 = sub_578CC();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = a1;

  sub_31894(0, 0, v4, &unk_598D0, v6);
}

uint64_t sub_24120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_BBC4;

  return sub_23D5C(a4);
}

uint64_t sub_241B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_5627C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(sub_5626C() + 16);

  if (qword_715E8 != -1)
  {
    swift_once();
  }

  v8 = sub_562FC();
  sub_B144(v8, qword_757E8);
  (*(v5 + 16))(v7, a1, v4);
  v9 = sub_562DC();
  v10 = sub_5794C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v23[1] = a2;
    v12 = v11;
    *v11 = 134217984;
    v13 = *(sub_5626C() + 16);

    (*(v5 + 8))(v7, v4);
    *(v12 + 1) = v13;
    _os_log_impl(&dword_0, v9, v10, "ResponseUIExtensionAvailability: Continuous monitoring found %ld extension(s)", v12, 0xCu);
  }

  else
  {
    (*(v5 + 8))(v7, v4);
  }

  v14 = v24;
  if (v24)
  {

    v15 = sub_562DC();
    v16 = sub_5794C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v25 = v18;
      *v17 = 136315138;
      v19 = sub_57ADC();
      v21 = sub_293C0(v19, v20, &v25);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_0, v15, v16, "ResponseUIExtensionAvailability: ✅ Extensions found for extension point %s", v17, 0xCu);
      sub_13040(v18);

      v14 = v24;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_5662C();

  if ((v14 != 0) != v27)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v26 = v14 != 0;

    return sub_5663C();
  }

  return result;
}

uint64_t sub_2455C()
{
  v1 = OBJC_IVAR____TtC13AskToMessages40ResponseUIExtensionAvailabilityViewModel__isExtensionAvailable;
  v2 = sub_2AFC(&qword_71D10, &qword_59130);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ResponseUIExtensionAvailabilityViewModel(uint64_t a1)
{
  result = qword_72270;
  if (!qword_72270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24668(uint64_t a1)
{
  sub_171E0();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_24710@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ResponseUIExtensionAvailabilityViewModel(0);
  result = sub_5660C();
  *a1 = result;
  return result;
}

uint64_t sub_24750()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_24790(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 56);
  v9 = *(v1 + 48);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_BBC4;

  return sub_23194(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_2486C@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_5662C();

  *a2 = v4;
  return result;
}

uint64_t sub_248EC(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_5663C();
}

uint64_t sub_24960(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 104) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v4 = sub_562BC();
  *(v3 + 32) = v4;
  *(v3 + 40) = *(v4 - 8);
  *(v3 + 48) = swift_task_alloc();
  sub_578AC();
  *(v3 + 56) = sub_5789C();
  v6 = sub_5788C();
  *(v3 + 64) = v6;
  *(v3 + 72) = v5;

  return _swift_task_switch(sub_24A58, v6, v5);
}

uint64_t sub_24A58()
{
  sub_5623C();
  sub_562AC();
  swift_allocObject();
  v0[10] = sub_5629C();
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_24CAC;
  v2 = v0[6];

  return AppExtensionPoint.Monitor.addAppExtensionPoint(_:)(v2);
}

uint64_t sub_24CAC()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);
  if (v0)
  {
    v5 = sub_24F98;
  }

  else
  {
    v5 = sub_24DE8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_24DE8()
{

  v1 = *(sub_5625C() + 16);

  if (qword_715E8 != -1)
  {
    swift_once();
  }

  v2 = sub_562FC();
  sub_B144(v2, qword_757E8);

  v3 = sub_562DC();
  v4 = sub_5794C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    v6 = *(sub_5625C() + 16);

    *(v5 + 4) = v6;

    _os_log_impl(&dword_0, v3, v4, "ResponseUIExtensionAvailability: Initial check found %ld extension(s)", v5, 0xCu);
  }

  else
  {
  }

  (*(v0[5] + 8))(v0[6], v0[4]);

  v7 = v0[1];

  return v7(v1 != 0);
}

uint64_t sub_24F98()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[5];

  (*(v3 + 8))(v1, v2);
  if (qword_715E8 != -1)
  {
    swift_once();
  }

  v4 = sub_562FC();
  sub_B144(v4, qword_757E8);
  swift_errorRetain();
  v5 = sub_562DC();
  v6 = sub_5792C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_0, v5, v6, "ResponseUIExtensionAvailability: Initial check error: %@", v7, 0xCu);
    sub_2516C(v8);
  }

  else
  {
  }

  v10 = v0[1];

  return v10(0);
}

uint64_t sub_2516C(uint64_t a1)
{
  v2 = sub_2AFC(&qword_71828, &qword_598B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25248()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_25288(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22334;

  return sub_24120(a1, v4, v5, v6);
}

uint64_t type metadata accessor for ContentModel(uint64_t a1)
{
  result = qword_723B0;
  if (!qword_723B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25388(uint64_t a1)
{
  result = type metadata accessor for PayloadViewModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_253F4()
{
  v1 = sub_2AFC(&qword_723E8, &qword_5A3D0);
  __chkstk_darwin(v1 - 8);
  v3 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v34 - v5;
  __chkstk_darwin(v7);
  v9 = &v34 - v8;
  sub_55F6C();
  if (v10)
  {
    v11 = sub_5774C();

    [v0 setNamePrefix:v11];
  }

  sub_55F0C();
  if (v12)
  {
    v13 = sub_5774C();

    [v0 setGivenName:v13];
  }

  sub_55F4C();
  if (v14)
  {
    v15 = sub_5774C();

    [v0 setMiddleName:v15];
  }

  sub_55F2C();
  if (v16)
  {
    v17 = sub_5774C();

    [v0 setFamilyName:v17];
  }

  sub_55F8C();
  if (v18)
  {
    v19 = sub_5774C();

    [v0 setNameSuffix:v19];
  }

  sub_55FCC();
  if (v20)
  {
    v21 = sub_5774C();

    [v0 setNickname:v21];
  }

  v35 = v0;
  sub_55FAC();
  v22 = sub_5600C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 48);
  if (v24(v9, 1, v22) == 1)
  {
    sub_25824(v9);
  }

  else
  {
    sub_55F0C();
    v26 = v25;
    (*(v23 + 8))(v9, v22);
    if (v26)
    {
      v27 = sub_5774C();

      [v35 setPhoneticGivenName:v27];
    }
  }

  sub_55FAC();
  if (v24(v6, 1, v22) == 1)
  {
    sub_25824(v6);
  }

  else
  {
    sub_55F4C();
    v29 = v28;
    (*(v23 + 8))(v6, v22);
    if (v29)
    {
      v30 = sub_5774C();

      [v35 setPhoneticMiddleName:v30];
    }
  }

  sub_55FAC();
  if (v24(v3, 1, v22) == 1)
  {
    sub_25824(v3);
  }

  else
  {
    sub_55F2C();
    v32 = v31;
    (*(v23 + 8))(v3, v22);
    if (v32)
    {
      v33 = sub_5774C();

      [v35 setPhoneticFamilyName:v33];
    }
  }
}

uint64_t sub_25824(uint64_t a1)
{
  v2 = sub_2AFC(&qword_723E8, &qword_5A3D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2588C@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

id sub_259C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CNContactPickerViewControllerWrapper.Coordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_25A68(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_25AB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25B00()
{
  result = qword_72480;
  if (!qword_72480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72480);
  }

  return result;
}

id sub_25B54()
{
  v0 = [objc_allocWithZone(CNContactPickerViewController) init];
  sub_2AFC(&qword_72488, &unk_59A80);
  sub_56C6C();
  [v0 setDelegate:v2];

  return v0;
}

void *sub_25BD4@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = type metadata accessor for CNContactPickerViewControllerWrapper.Coordinator();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtCV13AskToMessages36CNContactPickerViewControllerWrapper11Coordinator_onContactSelected];
  *v7 = v4;
  *(v7 + 1) = v3;
  v9.receiver = v6;
  v9.super_class = v5;

  result = objc_msgSendSuper2(&v9, "init");
  *a1 = result;
  return result;
}

uint64_t sub_25C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25D3C();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_25CAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25D3C();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_25D10(uint64_t a1)
{
  sub_25D3C();
  sub_56C0C();
  __break(1u);
}

unint64_t sub_25D3C()
{
  result = qword_72490;
  if (!qword_72490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72490);
  }

  return result;
}

uint64_t sub_25D9C()
{
  v1 = v0;
  v2 = sub_2AFC(&qword_723E8, &qword_5A3D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - v3;
  v5 = sub_5600C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_55FFC();
  v9 = [v0 namePrefix];
  sub_5778C();

  sub_55F7C();
  v10 = [v1 nameSuffix];
  sub_5778C();

  sub_55F9C();
  v11 = [v1 nickname];
  sub_5778C();

  sub_55FDC();
  v12 = [v1 nickname];
  sub_5778C();

  sub_55FDC();
  v13 = [v1 givenName];
  sub_5778C();

  sub_55F1C();
  v14 = [v1 middleName];
  sub_5778C();

  sub_55F5C();
  v15 = [v1 familyName];
  sub_5778C();

  sub_55F3C();
  sub_55FFC();
  v16 = [v1 phoneticGivenName];
  sub_5778C();

  sub_55F1C();
  v17 = [v1 phoneticMiddleName];
  sub_5778C();

  sub_55F5C();
  v18 = [v1 phoneticFamilyName];
  sub_5778C();

  sub_55F3C();
  (*(v6 + 16))(v4, v8, v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  sub_55FBC();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_26174()
{
  v0 = sub_5736C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_5738C();
  sub_B17C(v4, qword_72500);
  sub_B144(v4, qword_72500);
  (*(v1 + 104))(v3, enum case for ContactFormatter.Style.shortName(_:), v0);
  return sub_5737C();
}

uint64_t sub_26278()
{
  v0 = 0x6E776F6E6B6E753CLL;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong activeConversation];
    if (v3 && (v4 = v3, v5 = [v3 selectedMessage], v4, v5) && (v6 = objc_msgSend(v5, "guid"), v5, v6))
    {
      v0 = sub_5778C();
    }

    else
    {
    }
  }

  return v0;
}

void sub_26354(void *a1)
{
  v2 = v1;
  if (qword_715D0 != -1)
  {
    swift_once();
  }

  v3 = sub_562FC();
  sub_B144(v3, qword_757A0);

  v4 = sub_562DC();
  v5 = sub_5794C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    *v6 = 136315394;
    v7 = sub_26278();
    v9 = sub_293C0(v7, v8, &v73);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_293C0(0xD00000000000002BLL, 0x800000000005C900, &v73);
    _os_log_impl(&dword_0, v4, v5, "%s: %s called", v6, 0x16u);
    swift_arrayDestroy();
  }

  v10 = *(v1 + 72);
  if (v10)
  {

    v11 = v10;
    v12 = sub_562DC();
    v13 = sub_5790C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v73 = v15;
      *v14 = 136315138;
      v16 = sub_26278();
      v18 = sub_293C0(v16, v17, &v73);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_0, v12, v13, "%s: Removing existing child view controller", v14, 0xCu);
      sub_13040(v15);
    }

    [v11 willMoveToParentViewController:0];
    v19 = [v11 view];
    if (!v19)
    {
      __break(1u);
      return;
    }

    v20 = v19;
    [v19 removeFromSuperview];

    [v11 removeFromParentViewController];
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    v72 = sub_562DC();
    v33 = sub_5792C();

    if (os_log_type_enabled(v72, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v73 = v35;
      *v34 = 136315138;
      v36 = sub_26278();
      v38 = sub_293C0(v36, v37, &v73);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_0, v72, v33, "%s: Missing parent view controller. Not adding new child view controller to view hierarchy.", v34, 0xCu);
      sub_13040(v35);

      v39 = v72;
LABEL_21:

      return;
    }

    v39 = v72;
LABEL_23:

    goto LABEL_21;
  }

  v70 = Strong;
  v22 = [Strong view];
  if (!v22)
  {
LABEL_19:

    v40 = sub_562DC();
    v41 = sub_5792C();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v73 = v43;
      *v42 = 136315138;
      v44 = sub_26278();
      v46 = sub_293C0(v44, v45, &v73);

      *(v42 + 4) = v46;
      _os_log_impl(&dword_0, v40, v41, "%s: Missing views. Not adding new child view controller to view hierarchy.", v42, 0xCu);
      sub_13040(v43);

      v39 = v70;
      goto LABEL_21;
    }

    v39 = v70;
    goto LABEL_23;
  }

  v23 = v22;
  v24 = [a1 view];
  if (!v24)
  {

    goto LABEL_19;
  }

  v25 = v24;
  [v70 addChildViewController:a1];
  v26 = objc_opt_self();
  v27 = [v26 clearColor];
  [v23 setBackgroundColor:v27];

  v28 = [v26 clearColor];
  [v25 setBackgroundColor:v28];

  [v25 setMinimumContentSizeCategory:UIContentSizeCategorySmall];
  [v25 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];
  [v23 addSubview:v25];
  [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
  v29 = [objc_opt_self() currentDevice];
  v30 = [v29 userInterfaceIdiom];

  if (v30 == &dword_0 + 1)
  {
    v31 = [v23 leadingAnchor];
    v32 = [v23 trailingAnchor];
  }

  else
  {
    v47 = [v23 safeAreaLayoutGuide];
    v48 = [v47 leadingAnchor];

    v31 = v48;
    v49 = [v23 safeAreaLayoutGuide];
    v32 = [v49 trailingAnchor];
  }

  v69 = objc_opt_self();
  sub_2AFC(&qword_717B8, &unk_58EF0);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_58C10;
  v51 = v32;
  v52 = [v25 leadingAnchor];
  v68 = v31;
  v53 = [v52 constraintEqualToAnchor:v31];

  *(v50 + 32) = v53;
  v54 = [v25 trailingAnchor];
  v55 = [v54 constraintEqualToAnchor:v51];

  *(v50 + 40) = v55;
  v56 = [v25 topAnchor];
  v57 = [v23 safeAreaLayoutGuide];
  v58 = [v57 topAnchor];

  v59 = [v56 constraintEqualToAnchor:v58];
  *(v50 + 48) = v59;
  v60 = [v25 bottomAnchor];
  v61 = [v23 safeAreaLayoutGuide];
  v62 = [v61 bottomAnchor];

  v63 = [v60 constraintEqualToAnchor:v62];
  *(v50 + 56) = v63;
  sub_274AC();
  isa = sub_5783C().super.isa;

  [v69 activateConstraints:isa];

  v65 = v70;
  [a1 didMoveToParentViewController:v65];

  v66 = *(v2 + 72);
  *(v2 + 72) = a1;

  v67 = a1;
}

void sub_26CC0(double a1, double a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    [Strong additionalSafeAreaInsets];
    top = v7;
    left = v9;
    bottom = v11;
    right = v13;
  }

  else
  {
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  v15 = top + bottom;
  v16 = [objc_opt_self() currentDevice];
  v17 = [v16 userInterfaceIdiom];

  v18 = left + right;
  v19 = 84.0;
  if (a2 > 84.0)
  {
    v19 = a2;
  }

  v20 = a1 - v18;
  if (a1 > 288.0)
  {
    v20 = 288.0 - v18;
  }

  v21 = 84.0;
  if (a2 > 84.0)
  {
    v21 = a2;
  }

  v22 = 288.0;
  if (a1 <= 288.0)
  {
    v22 = a1;
  }

  if (v17 == &dword_0 + 1)
  {
    v19 = v21;
    v23 = v22;
  }

  else
  {
    v23 = v20;
  }

  v24 = v19 - v15;
  v25 = *(v2 + 72);
  if (v25)
  {
    v26 = v25;
    v27 = [v26 view];
    if (v27)
    {
      v28 = v27;
      [v27 sizeThatFits:{v23, v24}];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_26E50(unint64_t a1)
{
  v2 = v1;
  v4 = sub_2AFC(&qword_725F0, &qword_59B18);
  __chkstk_darwin(v4 - 8);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v38 - v8;
  v10 = type metadata accessor for ContentModel(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_715D0 != -1)
  {
    swift_once();
  }

  v14 = sub_562FC();
  v15 = sub_B144(v14, qword_757A0);

  v41 = v15;
  v16 = sub_562DC();
  v17 = sub_5794C();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v39 = v11;
    v19 = v18;
    v20 = swift_slowAlloc();
    v40 = a1;
    v38 = v20;
    v43[0] = v20;
    *v19 = 136315394;
    v21 = sub_26278();
    v23 = v2;
    v24 = v9;
    v25 = v13;
    v26 = v10;
    v27 = v6;
    v28 = sub_293C0(v21, v22, v43);

    *(v19 + 4) = v28;
    v6 = v27;
    v10 = v26;
    v13 = v25;
    v9 = v24;
    v2 = v23;
    *(v19 + 12) = 2080;
    *(v19 + 14) = sub_293C0(0xD00000000000001CLL, 0x800000000005C930, v43);
    _os_log_impl(&dword_0, v16, v17, "%s: %s called", v19, 0x16u);
    swift_arrayDestroy();
    a1 = v40;

    v11 = v39;
  }

  v29 = OBJC_IVAR____TtC13AskToMessages16ContentContainer_currentContentModel;
  swift_beginAccess();
  sub_274F8(v2 + v29, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_27568(v9);

    v30 = sub_562DC();
    v31 = sub_5792C();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v42[0] = v33;
      *v32 = 136315138;
      v34 = sub_26278();
      v36 = sub_293C0(v34, v35, v42);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_0, v30, v31, "%s: Not changing presentation style because there was no content model.", v32, 0xCu);
      sub_13040(v33);
    }
  }

  else
  {
    sub_275D0(v9, v13);
    sub_27634(v13, v6);
    (*(v11 + 56))(v6, 0, 1, v10);
    swift_beginAccess();
    sub_27698(v6, v2 + v29);
    swift_endAccess();
    v37 = sub_D94C(v13, a1);
    sub_26354(v37);

    sub_27708(v13);
  }
}

uint64_t sub_272D4()
{
  sub_13040((v0 + 16));
  sub_27764(v0 + 56);

  sub_27568(v0 + OBJC_IVAR____TtC13AskToMessages16ContentContainer_currentContentModel);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ContentContainer(uint64_t a1)
{
  result = qword_72548;
  if (!qword_72548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_273A4(uint64_t a1)
{
  sub_27454(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_27454(uint64_t a1)
{
  if (!qword_72558)
  {
    type metadata accessor for ContentModel(255);
    v1 = sub_579AC();
    if (!v2)
    {
      atomic_store(v1, &qword_72558);
    }
  }
}

unint64_t sub_274AC()
{
  result = qword_71A00;
  if (!qword_71A00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_71A00);
  }

  return result;
}

uint64_t sub_274F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2AFC(&qword_725F0, &qword_59B18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27568(uint64_t a1)
{
  v2 = sub_2AFC(&qword_725F0, &qword_59B18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_275D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_27634(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27698(uint64_t a1, uint64_t a2)
{
  v4 = sub_2AFC(&qword_725F0, &qword_59B18);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_27708(uint64_t a1)
{
  v2 = type metadata accessor for ContentModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void ATPayload.newMessage(sessionId:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2AFC(&qword_720F8, &unk_59710);
  __chkstk_darwin(v4 - 8);
  v132 = &v118 - v5;
  v133 = sub_560CC();
  v135 = *(v133 - 8);
  __chkstk_darwin(v133);
  v126 = &v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2AFC(&qword_71B48, &qword_5A780);
  __chkstk_darwin(v7 - 8);
  v129 = &v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v118 - v10;
  __chkstk_darwin(v12);
  v14 = &v118 - v13;
  v15 = sub_561AC();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v124 = &v118 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v125 = &v118 - v19;
  __chkstk_darwin(v20);
  v22 = &v118 - v21;
  __chkstk_darwin(v23);
  v25 = &v118 - v24;
  v27 = v26;
  sub_2E28(a1, v14, &qword_71B48, &qword_5A780);
  v28 = *(v16 + 48);
  v29 = v28(v14, 1, v27);
  v130 = v16;
  v127 = v28;
  v128 = v16 + 48;
  if (v29 == 1)
  {
    sub_2E90(v14, &qword_71B48, &qword_5A780);
    v30 = sub_5763C();
    sub_5633C();

    v31 = v2;
    if (v28(v11, 1, v27) == 1)
    {
      sub_2E90(v11, &qword_71B48, &qword_5A780);
      if (qword_715D8 != -1)
      {
        swift_once();
      }

      v32 = sub_562FC();
      sub_B144(v32, qword_757B8);
      v33 = sub_562DC();
      v34 = sub_5792C();
      v35 = os_log_type_enabled(v33, v34);
      v36 = v135;
      if (v35)
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_0, v33, v34, "AskTo question ID was not a valid UUID. Will not breadcrumb.", v37, 2u);
      }

      v38 = [objc_allocWithZone(MSSession) init];
      goto LABEL_23;
    }

    (*(v130 + 32))(v22, v11, v27);
    v134[3] = &type metadata for AskToFeatures;
    v134[4] = sub_2948C();
    v42 = sub_5622C();
    sub_13040(v134);
    if ((v42 & 1) == 0)
    {
      v36 = v135;
      if (qword_715D8 != -1)
      {
        swift_once();
      }

      v65 = sub_562FC();
      sub_B144(v65, qword_757B8);
      v66 = sub_562DC();
      v67 = sub_5794C();
      v68 = os_log_type_enabled(v66, v67);
      v44 = v130;
      if (v68)
      {
        v69 = swift_slowAlloc();
        *v69 = 0;
        _os_log_impl(&dword_0, v66, v67, "AskTo breadcrumbing is not enabled", v69, 2u);
      }

      v70 = [objc_allocWithZone(MSSession) init];
      goto LABEL_22;
    }

    if (qword_715D8 != -1)
    {
      swift_once();
    }

    v43 = sub_562FC();
    sub_B144(v43, qword_757B8);
    v44 = v130;
    v45 = v125;
    (*(v130 + 16))(v125, v22, v27);
    v46 = v31;
    v47 = sub_562DC();
    v48 = sub_5794C();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v119 = v49;
      v122 = swift_slowAlloc();
      v134[0] = v122;
      *v49 = 136315394;
      v121 = v48;
      v50 = sub_5763C();
      v123 = v22;
      v51 = v124;
      sub_5645C();

      sub_294E0();
      v52 = sub_57B7C();
      v53 = v31;
      v55 = v54;
      v120 = v47;
      v56 = *(v44 + 8);
      v57 = v51;
      v22 = v123;
      v56(v57, v27);
      v58 = sub_293C0(v52, v55, v134);
      v31 = v53;

      v59 = v119;
      *(v119 + 1) = v58;
      *(v59 + 6) = 2080;
      v60 = sub_57B7C();
      v62 = v61;
      v56(v45, v27);
      v44 = v130;
      v63 = sub_293C0(v60, v62, v134);

      *(v59 + 14) = v63;
      v64 = v120;
      _os_log_impl(&dword_0, v120, v121, "Breadcrumbing question with system ID %s using content hash %s", v59, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v44 + 8))(v45, v27);
    }

    v36 = v135;
    v71 = objc_allocWithZone(MSSession);
    isa = sub_5616C().super.isa;
    v73 = [v71 initWithIdentifier:isa];

    v70 = v73;
    if (v73)
    {
LABEL_22:
      v74 = *(v44 + 8);
      v38 = v70;
      v74(v22, v27);
      goto LABEL_23;
    }

LABEL_48:
    __break(1u);
    return;
  }

  (*(v16 + 32))(v25, v14, v27);
  v39 = objc_allocWithZone(MSSession);
  v40 = sub_5616C().super.isa;
  v41 = [v39 initWithIdentifier:v40];

  if (!v41)
  {
    __break(1u);
    goto LABEL_48;
  }

  (*(v16 + 8))(v25, v27);
  v38 = v41;
  v31 = v2;
  v36 = v135;
LABEL_23:
  v75 = [objc_allocWithZone(MSMessage) initWithSession:v38];
  v135 = v38;

  [v75 setRequiresValidation:1];
  v76 = ATPayload.fallbackLinkPreview()();
  if (v76)
  {
    v77 = v76;
    v78 = [objc_allocWithZone(MSMessageRichLinkLayout) initWithLinkMetadata:v76];
    v79 = [objc_allocWithZone(MSMessageLiveLayout) initWithAlternateLayout:v78];
  }

  else
  {
    v77 = [objc_allocWithZone(MSMessageTemplateLayout) init];
    v80 = sub_5763C();
    sub_5642C();

    v81 = sub_5774C();

    [v77 setCaption:v81];

    v82 = sub_5763C();
    sub_5644C();

    v83 = sub_5774C();

    [v77 setSubcaption:v83];

    v79 = [objc_allocWithZone(MSMessageLiveLayout) initWithAlternateLayout:v77];
  }

  if ([v79 respondsToSelector:"setRequiredCapabilities:"])
  {
    v84.super.isa = sub_5783C().super.isa;
    [v79 setRequiredCapabilities:v84.super.isa];
  }

  else
  {
    if (qword_715D8 != -1)
    {
      swift_once();
    }

    v85 = sub_562FC();
    sub_B144(v85, qword_757B8);
    v84.super.isa = sub_562DC();
    v86 = sub_5792C();
    if (os_log_type_enabled(v84.super.isa, v86))
    {
      v87 = swift_slowAlloc();
      *v87 = 0;
      _os_log_impl(&dword_0, v84.super.isa, v86, "MSMessage does not respond to #selector(setter: MSMessage.requiredCapabilities)!", v87, 2u);
    }
  }

  [v75 setLayout:v79];
  v88 = sub_5763C();
  sub_563BC();
  v90 = v89;

  if (!v90)
  {
    v91 = sub_5763C();
    sub_5635C();
    v93 = v92;

    if (!v93)
    {
      v94 = sub_5763C();
      sub_5642C();
    }
  }

  v95 = sub_5774C();

  [v75 setSummaryText:v95];

  v97 = v131;
  v96 = v132;
  sub_575AC();
  v98 = v133;
  if (v97)
  {

    v36[7](v96, 1, 1, v98);
  }

  else if ((v36[6])(v96, 1, v133) != 1)
  {
    v114 = v126;
    (v36[4])(v126, v96, v98);
    sub_5609C(v115);
    v117 = v116;
    [v75 setURL:v116];

    (v36[1])(v114, v98);
    return;
  }

  v99 = v27;
  sub_2E90(v96, &qword_720F8, &unk_59710);
  if (qword_715D8 != -1)
  {
    swift_once();
  }

  v100 = sub_562FC();
  sub_B144(v100, qword_757B8);
  v101 = v31;
  v102 = sub_562DC();
  v103 = sub_5792C();

  if (os_log_type_enabled(v102, v103))
  {
    v104 = swift_slowAlloc();
    v134[0] = swift_slowAlloc();
    *v104 = 136315650;
    *(v104 + 4) = sub_293C0(0xD00000000000004DLL, 0x800000000005C950, v134);
    *(v104 + 12) = 2080;
    *(v104 + 14) = sub_293C0(0xD000000000000016, 0x800000000005C9A0, v134);
    *(v104 + 22) = 2080;
    v105 = sub_5763C();
    v106 = v129;
    sub_5633C();

    if (v127(v106, 1, v99) == 1)
    {
      sub_2E90(v106, &qword_71B48, &qword_5A780);
      v107 = 0xE500000000000000;
      v108 = 0x3E6C696E3CLL;
    }

    else
    {
      v109 = sub_5615C();
      v110 = v106;
      v111 = v109;
      v107 = v112;
      (*(v130 + 8))(v110, v99);
      v108 = v111;
    }

    v113 = sub_293C0(v108, v107, v134);

    *(v104 + 24) = v113;
    _os_log_impl(&dword_0, v102, v103, "%s.%s: Failed to create ATURL for payload: %s", v104, 0x20u);
    swift_arrayDestroy();
  }

  sub_2936C();
  swift_allocError();
  swift_willThrow();
}

LPLinkMetadata_optional __swiftcall ATPayload.fallbackLinkPreview()()
{
  v1 = v0;
  v2 = sub_2AFC(&qword_720F8, &unk_59710);
  __chkstk_darwin(v2 - 8);
  v4 = v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v51[0] = v51 - v6;
  __chkstk_darwin(v7);
  v9 = v51 - v8;
  v10 = sub_2AFC(&qword_71A10, &qword_5A5A0);
  __chkstk_darwin(v10 - 8);
  v12 = v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v51 - v14;
  v16 = sub_5763C();
  sub_5630C();

  v17 = sub_5636C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  if (v19(v15, 1, v17) == 1)
  {
    sub_2E90(v15, &qword_71A10, &qword_5A5A0);
  }

  else
  {
    v20 = (*(v18 + 88))(v15, v17);
    v51[1] = v1;
    v21 = enum case for ATQuestion.TopicMetadata.communication(_:);
    (*(v18 + 8))(v15, v17);
    if (v20 == v21)
    {
      v22 = [objc_allocWithZone(LPLinkMetadata) init];
      v23 = sub_5763C();
      sub_5642C();

      v24 = sub_5774C();

      [v22 setTitle:v24];

      sub_560BC();
      v25 = sub_560CC();
      v26 = *(v25 - 8);
      v28 = 0;
      if ((*(v26 + 48))(v9, 1, v25) != 1)
      {
        sub_5609C(v27);
        v28 = v29;
        (*(v26 + 8))(v9, v25);
      }

      goto LABEL_18;
    }
  }

  v30 = sub_5763C();
  sub_5630C();

  if (v19(v12, 1, v17) == 1)
  {
    sub_2E90(v12, &qword_71A10, &qword_5A5A0);
    v22 = 0;
    goto LABEL_20;
  }

  v32 = (*(v18 + 88))(v12, v17);
  v33 = enum case for ATQuestion.TopicMetadata.contentAgeRestrictionException(_:);
  (*(v18 + 8))(v12, v17);
  if (v32 != v33)
  {
    v22 = 0;
    goto LABEL_20;
  }

  v22 = [objc_allocWithZone(LPLinkMetadata) init];
  v34 = sub_5763C();
  sub_5642C();

  v35 = sub_5774C();

  [v22 setTitle:v35];

  v36 = sub_5763C();
  sub_5634C();

  v37 = sub_560CC();
  v38 = *(v37 - 8);
  v39 = *(v38 + 48);
  if (v39(v4, 1, v37) == 1)
  {
    v40 = v51[0];
    sub_560BC();
    if (v39(v4, 1, v37) != 1)
    {
      sub_2E90(v4, &qword_720F8, &unk_59710);
    }
  }

  else
  {
    v40 = v51[0];
    (*(v38 + 32))(v51[0], v4, v37);
    (*(v38 + 56))(v40, 0, 1, v37);
  }

  if (v39(v40, 1, v37) == 1)
  {
    v28 = 0;
  }

  else
  {
    sub_5609C(v41);
    v28 = v42;
    (*(v38 + 8))(v40, v37);
  }

LABEL_18:
  [v22 setURL:v28];

  v43 = sub_28F30();
  if (v31 >> 60 != 15)
  {
    v44 = v43;
    v45 = v31;
    v46 = objc_allocWithZone(LPImage);
    sub_29538(v44, v45);
    isa = sub_560EC().super.isa;
    v48 = sub_5774C();
    v49 = [v46 initWithData:isa MIMEType:v48];

    sub_12F8C(v44, v45);
    [v22 setImage:v49];

    sub_12F8C(v44, v45);
  }

LABEL_20:
  v50 = v22;
  result.is_nil = v31;
  result.value.super.isa = v50;
  return result;
}

id sub_28D48(id a1, SEL a2, id a3, id *a4)
{
  v6 = sub_561AC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_2AFC(&qword_71B48, &qword_5A780);
  __chkstk_darwin(v10 - 8);
  v12 = &v17[-v11];
  if (a3)
  {
    sub_5618C();
    (*(v7 + 32))(v12, v9, v6);
    (*(v7 + 56))(v12, 0, 1, v6);
  }

  else
  {
    (*(v7 + 56))(v12, 1, 1, v6);
  }

  v13 = a1;
  ATPayload.newMessage(sessionId:)(v12);
  v15 = v14;
  sub_2E90(v12, &qword_71B48, &qword_5A780);

  return v15;
}

uint64_t sub_28F30()
{
  v23 = sub_5756C();
  v0 = *(v23 - 8);
  __chkstk_darwin(v23);
  v22 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_2AFC(&qword_71B00, &unk_593C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v22 - v6;
  v8 = sub_572EC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v22 - v13;
  sub_572DC();
  v15 = sub_5763C();
  v16 = sub_5632C();

  if (v16)
  {
    sub_5728C();
  }

  else
  {
    sub_5729C();
  }

  v17 = v23;
  (*(v0 + 56))(v7, 0, 1, v23);
  (*(v9 + 16))(v11, v14, v8);
  sub_2E28(v7, v4, &qword_71B00, &unk_593C0);
  if ((*(v0 + 48))(v4, 1, v17) == 1)
  {
    v18 = 0;
  }

  else
  {
    v19 = v22;
    (*(v0 + 32))(v22, v4, v17);
    v18 = sub_572AC();
    (*(v0 + 8))(v19, v17);
  }

  sub_2E90(v7, &qword_71B00, &unk_593C0);
  v20 = *(v9 + 8);
  v20(v14, v8);
  v20(v11, v8);
  return v18;
}

id sub_29274(id a1, SEL a2)
{
  v2 = a1;
  v3 = ATPayload.fallbackLinkPreview()();

  return v3;
}

Swift::Int sub_292C0()
{
  sub_57C2C();
  sub_57C3C(0);
  return sub_57C4C();
}

Swift::Int sub_2932C(uint64_t a1)
{
  sub_57C2C();
  sub_57C3C(0);
  return sub_57C4C();
}

unint64_t sub_2936C()
{
  result = qword_725F8;
  if (!qword_725F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_725F8);
  }

  return result;
}

unint64_t sub_293C0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_296CC(v11, 0, 0, 1, a1, a2);
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
    sub_17458(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_13040(v11);
  return v7;
}

unint64_t sub_2948C()
{
  result = qword_72600;
  if (!qword_72600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72600);
  }

  return result;
}

unint64_t sub_294E0()
{
  result = qword_71ED8;
  if (!qword_71ED8)
  {
    sub_561AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71ED8);
  }

  return result;
}

uint64_t sub_29538(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t getEnumTagSinglePayload for PayloadError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for PayloadError(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_29678()
{
  result = qword_72608;
  if (!qword_72608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72608);
  }

  return result;
}

unint64_t sub_296CC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_297D8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_57B0C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_297D8(uint64_t a1, unint64_t a2)
{
  v3 = sub_29824(a1, a2);
  sub_29954(&off_6E388);
  return v3;
}

char *sub_29824(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_29A40(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_57B0C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_577EC();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_29A40(v10, 0);
        result = sub_57AAC();
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

uint64_t sub_29954(uint64_t result)
{
  v2 = *(result + 16);
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

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
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

  result = sub_29AB4(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_29A40(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_2AFC(&qword_72610, &qword_59BE8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_29AB4(char *result, int64_t a2, char a3, char *a4)
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
    sub_2AFC(&qword_72610, &qword_59BE8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_29BB4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_29BFC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_29C64@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_569DC();
  __chkstk_darwin(v3 - 8);
  __chkstk_darwin(v4);
  swift_errorRetain();
  sub_2AFC(&qword_71D30, &qword_5A740);
  sub_2AFC(&qword_72618, &qword_59C70);
  if (swift_dynamicCast())
  {
    sub_2A3C8(&v37, &v40);
    sub_17508(&v40, *(&v41 + 1));
    v5 = sub_55EAC();
    if (v6)
    {
      v7 = v5;
      v8 = v6;
      sub_569CC();
      v44._object = 0x800000000005CA00;
      v44._countAndFlagsBits = 0xD000000000000013;
      sub_569BC(v44);
      v45._countAndFlagsBits = v7;
      v45._object = v8;
      sub_569AC(v45);

      v46._countAndFlagsBits = 0;
      v46._object = 0xE000000000000000;
      sub_569BC(v46);
      sub_569FC();
      sub_B038();
      if (!sub_5796C())
      {
        v9 = [objc_opt_self() mainBundle];
      }

      v10 = sub_56DEC();
      v12 = v11;
      v14 = v13 & 1;
      sub_2A33C(v10, v11, v13 & 1);

      sub_56ABC();
      sub_2AFC(&qword_72628, &qword_59C80);
      sub_2A34C();
      sub_56ABC();
      sub_21FDC(v10, v12, v14);

      v36 = v38;
      v35 = v37;
      v15 = v39;
      v16 = BYTE1(v39);
      result = sub_13040(&v40);
      v18 = v35;
      v19 = v36;
      goto LABEL_18;
    }

    sub_13040(&v40);
  }

  else
  {
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    sub_2A2D4(&v37);
  }

  swift_getErrorValue();
  v20 = sub_57BDC();
  v22 = v21;

  v23 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v23 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (v23)
  {
    sub_569CC();
    v47._object = 0x800000000005CA00;
    v47._countAndFlagsBits = 0xD000000000000013;
    sub_569BC(v47);
    swift_getErrorValue();
    v48._countAndFlagsBits = sub_57BDC();
    sub_569AC(v48);

    v49._countAndFlagsBits = 0;
    v49._object = 0xE000000000000000;
    sub_569BC(v49);
    sub_569FC();
    sub_B038();
    if (!sub_5796C())
    {
      v24 = [objc_opt_self() mainBundle];
    }

    v25 = sub_56DEC();
    v27 = v26;
    *&v37 = v25;
    *(&v37 + 1) = v26;
    v29 = v28 & 1;
    *&v38 = v28 & 1;
    *(&v38 + 1) = v30;
    LOBYTE(v39) = 1;
    sub_2A33C(v25, v26, v28 & 1);

    sub_56ABC();
    v37 = v40;
    v38 = v41;
    LOWORD(v39) = v42;
    sub_2AFC(&qword_72628, &qword_59C80);
    sub_2A34C();
    sub_56ABC();
    sub_21FDC(v25, v27, v29);
  }

  else
  {
    sub_569EC();
    sub_B038();
    if (!sub_5796C())
    {
      v31 = [objc_opt_self() mainBundle];
    }

    *&v37 = sub_56DEC();
    *(&v37 + 1) = v32;
    *&v38 = v33 & 1;
    *(&v38 + 1) = v34;
    LOWORD(v39) = 256;
    sub_2AFC(&qword_72628, &qword_59C80);
    sub_2A34C();
    result = sub_56ABC();
  }

  v18 = v40;
  v19 = v41;
  v15 = v42;
  v16 = v43;
LABEL_18:
  *a2 = v18;
  *(a2 + 16) = v19;
  *(a2 + 32) = v15;
  *(a2 + 33) = v16;
  return result;
}

uint64_t sub_2A2D4(uint64_t a1)
{
  v2 = sub_2AFC(&qword_72620, &qword_59C78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2A33C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_2A34C()
{
  result = qword_72630;
  if (!qword_72630)
  {
    sub_2C70(&qword_72628, &qword_59C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72630);
  }

  return result;
}

uint64_t sub_2A3C8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_2A3E4()
{
  result = qword_72638;
  if (!qword_72638)
  {
    sub_2C70(qword_72640, &unk_59C88);
    sub_2A34C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72638);
  }

  return result;
}

void sub_2A478(uint64_t a1)
{
  sub_2A89C();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2A500(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((a1 + v6 + 9) & ~v6);
  }

  v8 = ((v6 + 9) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((a1 + v6 + 9) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void sub_2A660(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 9) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = &a1[v8 + 9] & ~v8;

  v18(v19);
}

void sub_2A89C()
{
  if (!qword_726C8[0])
  {
    v0 = sub_579AC();
    if (!v1)
    {
      atomic_store(v0, qword_726C8);
    }
  }
}

uint64_t sub_2A8F4(void *a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2A99C(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v5 = *(a3[2] - 8);
  v6 = *(v5 + 84);
  v7 = a3[4];
  v8 = *(a3[3] - 8);
  v9 = *(v8 + 84);
  if (v9 <= v6)
  {
    v10 = *(v5 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(v7 - 8);
  v12 = *(v8 + 80);
  v13 = *(*(a3[3] - 8) + 64);
  v14 = *(v11 + 80);
  if (*(v11 + 84) <= v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = *(v11 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v16 = *(*(a3[2] - 8) + 64) + v12;
  v17 = a2 - v15;
  if (a2 <= v15)
  {
    goto LABEL_31;
  }

  v18 = ((v13 + v14 + (v16 & ~v12)) & ~v14) + *(*(v7 - 8) + 64);
  v19 = 8 * v18;
  if (v18 <= 3)
  {
    v21 = ((v17 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v21))
    {
      v20 = *(a1 + v18);
      if (!v20)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v21 > 0xFF)
    {
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v21 < 2)
    {
LABEL_30:
      if (v15)
      {
LABEL_31:
        if (v6 == v15)
        {
          v25 = *(v5 + 48);

          return v25();
        }

        else
        {
          v27 = (a1 + v16) & ~v12;
          if (v9 == v15)
          {
            v28 = *(v8 + 48);
            v29 = *(v8 + 84);
            v30 = a3[3];
          }

          else
          {
            v28 = *(v11 + 48);
            v27 = (v27 + v13 + v14) & ~v14;
            v29 = *(v11 + 84);
            v30 = a3[4];
          }

          return v28(v27, v29, v30);
        }
      }

      return 0;
    }
  }

  v20 = *(a1 + v18);
  if (!*(a1 + v18))
  {
    goto LABEL_30;
  }

LABEL_17:
  v22 = (v20 - 1) << v19;
  if (v18 > 3)
  {
    v22 = 0;
  }

  if (v18)
  {
    if (v18 <= 3)
    {
      v23 = ((v13 + v14 + (v16 & ~v12)) & ~v14) + *(*(v7 - 8) + 64);
    }

    else
    {
      v23 = 4;
    }

    if (v23 > 2)
    {
      if (v23 == 3)
      {
        v24 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v24 = *a1;
      }
    }

    else if (v23 == 1)
    {
      v24 = *a1;
    }

    else
    {
      v24 = *a1;
    }
  }

  else
  {
    v24 = 0;
  }

  return v15 + (v24 | v22) + 1;
}

char *sub_2AC54(char *result, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(a4[2] - 8);
  v6 = *(v5 + 84);
  v7 = a4[3];
  v8 = a4[4];
  v9 = *(v7 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v6)
  {
    v11 = *(v5 + 84);
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v8 - 8);
  v13 = *(*(a4[2] - 8) + 64);
  v14 = *(v9 + 80);
  v15 = *(*(v7 - 8) + 64);
  v16 = *(v12 + 80);
  if (*(v12 + 84) <= v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = *(v12 + 84);
  }

  v18 = ((v15 + v16 + ((v13 + v14) & ~v14)) & ~v16) + *(*(v8 - 8) + 64);
  v19 = a3 >= v17;
  v20 = a3 - v17;
  if (v20 != 0 && v19)
  {
    if (v18 <= 3)
    {
      v25 = ((v20 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
      if (HIWORD(v25))
      {
        v21 = 4;
      }

      else
      {
        if (v25 < 0x100)
        {
          v26 = 1;
        }

        else
        {
          v26 = 2;
        }

        if (v25 >= 2)
        {
          v21 = v26;
        }

        else
        {
          v21 = 0;
        }
      }
    }

    else
    {
      v21 = 1;
    }
  }

  else
  {
    v21 = 0;
  }

  if (v17 < a2)
  {
    v22 = ~v17 + a2;
    if (v18 < 4)
    {
      v24 = (v22 >> (8 * v18)) + 1;
      if (v18)
      {
        v27 = v22 & ~(-1 << (8 * v18));
        v28 = result;
        bzero(result, v18);
        result = v28;
        if (v18 != 3)
        {
          if (v18 == 2)
          {
            *v28 = v27;
            if (v21 > 1)
            {
LABEL_53:
              if (v21 == 2)
              {
                *&result[v18] = v24;
              }

              else
              {
                *&result[v18] = v24;
              }

              return result;
            }
          }

          else
          {
            *v28 = v22;
            if (v21 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *v28 = v27;
        v28[2] = BYTE2(v27);
      }

      if (v21 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v23 = result;
      bzero(result, v18);
      result = v23;
      *v23 = v22;
      v24 = 1;
      if (v21 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v21)
    {
      result[v18] = v24;
    }

    return result;
  }

  if (v21 > 1)
  {
    if (v21 != 2)
    {
      *&result[v18] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_34;
    }

    *&result[v18] = 0;
  }

  else if (v21)
  {
    result[v18] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return result;
  }

LABEL_34:
  if (v6 == v17)
  {
    v29 = *(v5 + 56);

    return v29();
  }

  else
  {
    v30 = &result[v13 + v14] & ~v14;
    if (v10 == v17)
    {
      v31 = *(v9 + 56);

      return v31(v30);
    }

    else
    {
      v32 = *(v12 + 56);
      v33 = (v30 + v15 + v16) & ~v16;

      return v32(v33);
    }
  }
}

uint64_t sub_2B01C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_56AAC();
  v8 = __chkstk_darwin(v7);
  (*(*(a2 - 8) + 16))(&v11 - v9, a1, a2, v8);
  swift_storeEnumTagMultiPayload();
  return sub_56ABC();
}

uint64_t sub_2B114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_56AAC();
  v8 = __chkstk_darwin(v7);
  (*(*(a3 - 8) + 16))(&v11 - v9, a1, a3, v8);
  swift_storeEnumTagMultiPayload();
  return sub_56ABC();
}

uint64_t sub_2B20C@<X0>(uint64_t a1@<X0>, __int8 *a2@<X8>)
{
  v34 = a2;
  v33 = sub_5699C();
  v32 = *(v33 - 8);
  __chkstk_darwin(v33);
  v4 = &v27.i8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = *(a1 + 24);
  v5 = v27.i64[1];
  v28 = v27.i64[0];
  v6 = sub_571BC();
  v31 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v27.i8[-v7];
  sub_2C70(&qword_72750, &qword_59D88);
  v30 = sub_5676C();
  sub_2C70(&qword_72758, &qword_59D90);
  v9 = sub_5676C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27.i8[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __chkstk_darwin(v13);
  v16 = &v27.i8[-v15];
  v36 = *(a1 + 16);
  v14.i64[0] = v36;
  *&v17 = vdupq_laneq_s64(v27, 1).u64[0];
  v18 = *(a1 + 48);
  *(&v17 + 1) = *(a1 + 40);
  v43 = vzip1q_s64(v14, v27);
  v44 = v17;
  v19 = *(a1 + 56);
  v45 = v18;
  v46 = v19;
  v47 = v29;
  v37 = v27;
  v38 = *(&v17 + 1);
  v39 = v18;
  v40 = v19;
  v41 = v29;
  sub_2B8EC(sub_2C444, v42, sub_2C45C, v35, v28, v5, v18, v19);
  sub_5698C();
  v52 = &protocol witness table for EmptyView;
  v53 = v18;
  v54 = v19;
  WitnessTable = swift_getWitnessTable();
  sub_56EAC();
  (*(v32 + 8))(v4, v33);
  (*(v31 + 8))(v8, v6);
  v21 = sub_3260(&qword_72760, &qword_72750, &qword_59D88, &protocol conformance descriptor for _TraitWritingModifier<A>);
  v50 = WitnessTable;
  v51 = v21;
  v22 = swift_getWitnessTable();
  v23 = sub_3260(&qword_72768, &qword_72758, &qword_59D90, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  v48 = v22;
  v49 = v23;
  swift_getWitnessTable();
  v24 = *(v10 + 16);
  v24(v16, v12, v9);
  v25 = *(v10 + 8);
  v25(v12, v9);
  v24(v34, v16, v9);
  return (v25)(v16, v9);
}

uint64_t sub_2B6AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v6 = *(a2 - 8);
  __chkstk_darwin(a1);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = v9;
  v18[1] = v10;
  v18[2] = v11;
  v18[3] = v12;
  v18[4] = v13;
  v18[5] = v14;
  v15 = type metadata accessor for ATOnboardingSection(0, v18);
  v16 = *(v6 + 16);
  v16(v8, a1 + *(v15 + 68), a2);
  v16(a3, v8, a2);
  return (*(v6 + 8))(v8, a2);
}

uint64_t sub_2B7CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, char *a3@<X8>)
{
  v6 = *(a2 - 8);
  __chkstk_darwin(a1);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[0] = v9;
  v18[1] = v10;
  v18[2] = v11;
  v18[3] = v12;
  v18[4] = v13;
  v18[5] = v14;
  v15 = type metadata accessor for ATOnboardingSection(0, v18);
  v16 = *(v6 + 16);
  v16(v8, a1 + *(v15 + 72), a2);
  v16(a3, v8, a2);
  return (*(v6 + 8))(v8, a2);
}

uint64_t sub_2B8EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __chkstk_darwin(a1);
  v9(v8);
  return sub_571AC();
}

uint64_t sub_2B9C0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v42 = a2;
  v41 = sub_5653C();
  v40 = *(v41 - 8);
  __chkstk_darwin(v41);
  v39 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(a1 + 16);
  sub_5676C();
  sub_56ACC();
  v5 = sub_5700C();
  v36 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v33 - v6;
  sub_2C70(&qword_72770, &qword_59D98);
  v8 = sub_5676C();
  v38 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v33 - v9;
  sub_2C70(&qword_72778, &qword_59DA0);
  v11 = sub_5676C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v35 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v37 = &v33 - v15;
  v16 = *(a1 + 24);
  v43 = v4;
  v44 = v16;
  v45 = v34;
  v53 = v16;
  v54 = &protocol witness table for _FrameLayout;
  v34 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  WitnessTable = swift_getWitnessTable();
  v52 = v16;
  v17 = swift_getWitnessTable();
  sub_56FFC();
  v18 = [objc_opt_self() secondarySystemBackgroundColor];
  v55 = sub_56FEC();
  v50 = v17;
  v19 = swift_getWitnessTable();
  sub_56E9C();

  (*(v36 + 8))(v7, v5);
  v20 = v39;
  sub_5652C();
  sub_5651C();
  v22 = v21;
  v24 = v23;
  (*(v40 + 8))(v20, v41);
  v55 = v22;
  v56 = 0x4030000000000000;
  v57 = v24;
  v58 = 0x4030000000000000;
  v59 = 0;
  v25 = sub_3260(&qword_72780, &qword_72770, &qword_59D98, &protocol conformance descriptor for _TraitWritingModifier<A>);
  v48 = v19;
  v49 = v25;
  v26 = swift_getWitnessTable();
  v27 = v35;
  sub_56E5C();
  (*(v38 + 8))(v10, v8);
  v28 = sub_3260(&qword_72788, &qword_72778, &qword_59DA0, &protocol conformance descriptor for _TraitWritingModifier<A>);
  v46 = v26;
  v47 = v28;
  swift_getWitnessTable();
  v29 = *(v12 + 16);
  v30 = v37;
  v29(v37, v27, v11);
  v31 = *(v12 + 8);
  v31(v27, v11);
  v29(v42, v30, v11);
  return (v31)(v30, v11);
}

uint64_t sub_2BF7C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a4;
  v7 = sub_5676C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v36 = &v34 - v12;
  v13 = *(a2 - 8);
  __chkstk_darwin(v14);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v34 - v18;
  v20 = sub_56ACC();
  v37 = *(v20 - 8);
  v38 = v20;
  __chkstk_darwin(v20);
  v23 = &v34 - v22;
  if (a1[8] == 1)
  {
    v24 = type metadata accessor for ATOnboardingRow(0, a2, a3, v21);
    v25 = *(v13 + 16);
    v25(v19, &a1[*(v24 + 36)], a2);
    v25(v16, v19, a2);
    v46 = a3;
    v47 = &protocol witness table for _FrameLayout;
    WitnessTable = swift_getWitnessTable();
    sub_2B114(v16, v7, a2, WitnessTable, a3);
    v27 = *(v13 + 8);
    v27(v16, a2);
    v27(v19, a2);
  }

  else
  {
    type metadata accessor for ATOnboardingRow(0, a2, a3, v21);
    sub_571DC();
    sub_56F0C();
    v40 = a3;
    v41 = &protocol witness table for _FrameLayout;
    v35 = swift_getWitnessTable();
    v28 = *(v8 + 16);
    v29 = v36;
    v28(v36, v10, v7);
    v30 = *(v8 + 8);
    v30(v10, v7);
    v28(v10, v29, v7);
    sub_2B01C(v10, v7, a2, v35, a3);
    v30(v10, v7);
    v30(v29, v7);
  }

  v44 = a3;
  v45 = &protocol witness table for _FrameLayout;
  v42 = swift_getWitnessTable();
  v43 = a3;
  v31 = v38;
  swift_getWitnessTable();
  v32 = v37;
  (*(v37 + 16))(v39, v23, v31);
  return (*(v32 + 8))(v23, v31);
}

uint64_t sub_2C49C()
{
  sub_571BC();
  sub_2C70(&qword_72750, &qword_59D88);
  sub_5676C();
  sub_2C70(&qword_72758, &qword_59D90);
  sub_5676C();
  swift_getWitnessTable();
  sub_3260(&qword_72760, &qword_72750, &qword_59D88, &protocol conformance descriptor for _TraitWritingModifier<A>);
  swift_getWitnessTable();
  sub_3260(&qword_72768, &qword_72758, &qword_59D90, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  return swift_getWitnessTable();
}

uint64_t sub_2C61C(void *a1)
{
  sub_5676C();
  sub_56ACC();
  sub_5700C();
  sub_2C70(&qword_72770, &qword_59D98);
  sub_5676C();
  sub_2C70(&qword_72778, &qword_59DA0);
  sub_5676C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_3260(&qword_72780, &qword_72770, &qword_59D98, &protocol conformance descriptor for _TraitWritingModifier<A>);
  swift_getWitnessTable();
  sub_3260(&qword_72788, &qword_72778, &qword_59DA0, &protocol conformance descriptor for _TraitWritingModifier<A>);
  return swift_getWitnessTable();
}

__n128 sub_2C7F4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2C810(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_2C858(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2C8D0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = sub_2AFC(&qword_72118, &qword_59738);
  v59 = *(v3 - 8);
  __chkstk_darwin(v3);
  v56 = &v53 - v4;
  v5 = sub_2AFC(&qword_72798, &qword_59E50);
  __chkstk_darwin(v5 - 8);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v60 = &v53 - v9;
  v10 = sub_2AFC(&qword_727A0, &qword_59E58);
  __chkstk_darwin(v10 - 8);
  v12 = &v53 - v11;
  v13 = sub_2AFC(&qword_727A8, &qword_59E60);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v58 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v53 - v17;
  __chkstk_darwin(v19);
  v21 = &v53 - v20;
  *v12 = sub_5697C();
  *(v12 + 1) = 0x4010000000000000;
  v12[16] = 0;
  v22 = sub_2AFC(&qword_727B0, &qword_59E68);
  sub_2CF0C(a1, &v12[*(v22 + 44)]);
  sub_571CC();
  sub_567CC();
  sub_B0DC(v12, v18, &qword_727A0, &qword_59E58);
  v23 = &v18[*(v14 + 44)];
  v24 = v75[5];
  *(v23 + 4) = v75[4];
  *(v23 + 5) = v24;
  *(v23 + 6) = v75[6];
  v25 = v75[1];
  *v23 = v75[0];
  *(v23 + 1) = v25;
  v26 = v75[3];
  *(v23 + 2) = v75[2];
  *(v23 + 3) = v26;
  v57 = v21;
  sub_B0DC(v18, v21, &qword_727A8, &qword_59E60);
  v27 = a1[3];
  if (v27)
  {
    *&v72[0] = a1[2];
    *(&v72[0] + 1) = v27;
    sub_2B4C();

    v28 = sub_56E0C();
    v30 = v29;
    v32 = v31;
    sub_56D4C();
    v33 = sub_56DDC();
    v35 = v34;
    v54 = v3;
    v55 = v7;
    v37 = v36;

    sub_21FDC(v28, v30, v32 & 1);

    sub_56FDC();
    v38 = sub_56DAC();
    v40 = v39;
    v42 = v41;
    v44 = v43;

    sub_21FDC(v33, v35, v37 & 1);
    v7 = v55;

    sub_571CC();
    sub_567CC();
    v74 = v42 & 1;
    *&v62 = v38;
    *(&v62 + 1) = v40;
    LOBYTE(v63) = v42 & 1;
    *(&v63 + 1) = v44;
    v71 = 256;
    sub_2AFC(&qword_72138, &qword_59780);
    sub_220DC();
    v45 = v56;
    sub_56ECC();
    v72[6] = v68;
    v72[7] = v69;
    v72[8] = v70;
    v73 = v71;
    v72[2] = v64;
    v72[3] = v65;
    v72[4] = v66;
    v72[5] = v67;
    v72[0] = v62;
    v72[1] = v63;
    sub_2E90(v72, &qword_72138, &qword_59780);
    v46 = v45;
    v47 = v60;
    sub_B0DC(v46, v60, &qword_72118, &qword_59738);
    (*(v59 + 56))(v47, 0, 1, v54);
  }

  else
  {
    v47 = v60;
    (*(v59 + 56))(v60, 1, 1, v3);
  }

  v49 = v57;
  v48 = v58;
  sub_2E28(v57, v58, &qword_727A8, &qword_59E60);
  sub_2E28(v47, v7, &qword_72798, &qword_59E50);
  v50 = v61;
  sub_2E28(v48, v61, &qword_727A8, &qword_59E60);
  v51 = sub_2AFC(&qword_727B8, &qword_59E70);
  sub_2E28(v7, v50 + *(v51 + 48), &qword_72798, &qword_59E50);
  sub_2E90(v47, &qword_72798, &qword_59E50);
  sub_2E90(v49, &qword_727A8, &qword_59E60);
  sub_2E90(v7, &qword_72798, &qword_59E50);
  return sub_2E90(v48, &qword_727A8, &qword_59E60);
}

uint64_t sub_2CF0C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v61 = sub_2AFC(&qword_727C0, &qword_59E78);
  __chkstk_darwin(v61);
  v60 = (&v59 - v3);
  v67 = sub_2AFC(&qword_727C8, &qword_59E80);
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v63 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v62 = &v59 - v6;
  v7 = sub_2AFC(&qword_727D0, &qword_59E88);
  __chkstk_darwin(v7 - 8);
  v69 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v65 = &v59 - v10;
  v11 = sub_2AFC(&qword_727D8, &qword_59E90);
  __chkstk_darwin(v11 - 8);
  v68 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v59 - v14;
  v64 = a1;
  v16 = a1[1];
  *&v78[0] = *a1;
  *(&v78[0] + 1) = v16;
  sub_2B4C();

  v17 = sub_56E0C();
  v19 = v18;
  LOBYTE(a1) = v20;
  sub_56D5C();
  v21 = sub_56DDC();
  v23 = v22;
  v25 = v24;
  v27 = v26;

  sub_21FDC(v17, v19, a1 & 1);

  KeyPath = swift_getKeyPath();
  v29 = sub_56FCC();
  v30 = swift_getKeyPath();
  v77 = v25 & 1;
  v76 = 0;
  *&v71 = v21;
  *(&v71 + 1) = v23;
  v31 = v15;
  v32 = v64;
  LOBYTE(v72) = v25 & 1;
  *(&v72 + 1) = v27;
  *&v73 = KeyPath;
  *(&v73 + 1) = 1;
  LOBYTE(v74) = 0;
  *(&v74 + 1) = v30;
  v75 = v29;
  sub_2AFC(&qword_727E0, &qword_59EF8);
  sub_2D7C8();
  sub_56ECC();
  v78[2] = v73;
  v78[3] = v74;
  v79 = v75;
  v78[0] = v71;
  v78[1] = v72;
  sub_2E90(v78, &qword_727E0, &qword_59EF8);
  if (v32[5])
  {
    v33 = v66;
    v34 = v67;
    v35 = v65;

    v36 = sub_5702C();
    v37 = sub_2AFC(&qword_727F8, &qword_59F08);
    v38 = v60;
    v39 = (v60 + *(v37 + 36));
    v40 = *(sub_2AFC(&qword_71678, &qword_58970) + 28);
    v41 = enum case for Image.Scale.small(_:);
    v42 = sub_5704C();
    (*(*(v42 - 8) + 104))(v39 + v40, v41, v42);
    *v39 = swift_getKeyPath();
    *v38 = v36;
    v43 = sub_56D4C();
    v44 = swift_getKeyPath();
    v45 = (v38 + *(v61 + 36));
    *v45 = v44;
    v45[1] = v43;
    v46 = v32[6];
    if (!v46)
    {
      v46 = sub_56F7C();
    }

    v47 = swift_getKeyPath();
    v48 = v38;
    v49 = v63;
    sub_B0DC(v48, v63, &qword_727C0, &qword_59E78);
    v50 = v34;
    v51 = (v49 + *(v34 + 36));
    *v51 = v47;
    v51[1] = v46;
    v52 = v62;
    sub_B0DC(v49, v62, &qword_727C8, &qword_59E80);
    v53 = v35;
    sub_B0DC(v52, v35, &qword_727C8, &qword_59E80);
    (*(v33 + 56))(v35, 0, 1, v50);
  }

  else
  {
    v53 = v65;
    (*(v66 + 56))(v65, 1, 1, v67);
  }

  v54 = v68;
  sub_2E28(v31, v68, &qword_727D8, &qword_59E90);
  v55 = v69;
  sub_2E28(v53, v69, &qword_727D0, &qword_59E88);
  v56 = v70;
  sub_2E28(v54, v70, &qword_727D8, &qword_59E90);
  v57 = sub_2AFC(&qword_727F0, &qword_59F00);
  sub_2E28(v55, v56 + *(v57 + 48), &qword_727D0, &qword_59E88);
  sub_2E90(v53, &qword_727D0, &qword_59E88);
  sub_2E90(v31, &qword_727D8, &qword_59E90);
  sub_2E90(v55, &qword_727D0, &qword_59E88);
  return sub_2E90(v54, &qword_727D8, &qword_59E90);
}

uint64_t sub_2D5B4@<X0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v7[0] = *v2;
  v7[1] = v4;
  v7[2] = *(v2 + 32);
  v8 = *(v2 + 48);
  *a2 = sub_56A2C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v5 = sub_2AFC(&qword_72790, &qword_59E48);
  return sub_2C8D0(v7, a2 + *(v5 + 44));
}

uint64_t sub_2D648(uint64_t a1)
{
  v2 = sub_5704C();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_5680C();
}

uint64_t sub_2D718@<X0>(uint64_t *a1@<X8>)
{
  result = sub_5685C();
  *a1 = result;
  return result;
}

uint64_t sub_2D744@<X0>(uint64_t *a1@<X8>)
{
  result = sub_5685C();
  *a1 = result;
  return result;
}

unint64_t sub_2D7C8()
{
  result = qword_727E8;
  if (!qword_727E8)
  {
    sub_2C70(&qword_727E0, &qword_59EF8);
    sub_2D70();
    sub_3260(&qword_716E0, &qword_716E8, &qword_5B6C0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_727E8);
  }

  return result;
}

void sub_2D8F4(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a3;
  v52 = sub_5605C();
  v50 = *(v52 - 8);
  __chkstk_darwin(v52);
  v48 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_561CC();
  v6 = *(v51 - 8);
  __chkstk_darwin(v51);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v47 - v10;
  v49 = sub_5773C();
  v12 = *(v49 - 1);
  __chkstk_darwin(v49);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v47 - v16;
  v61 = sub_5606C();
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v53 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v62 = &v47 - v20;
  v56 = sub_2AFC(&qword_72918, &qword_5A1E8);
  v55 = *(v56 - 8);
  __chkstk_darwin(v56);
  v22 = &v47 - v21;
  v57 = a1;
  v58 = a2;
  v63 = a1;
  v64 = a2;
  sub_2AFC(&qword_72920, &qword_5A1F0);
  sub_3260(&qword_72928, &qword_72920, &qword_5A1F0, &unk_58EA0);
  v54 = v22;
  sub_5677C();
  sub_576DC();
  sub_B038();
  v23 = sub_5796C();
  if (!v23)
  {
    v23 = [objc_opt_self() mainBundle];
  }

  v24 = v23;
  sub_561BC();
  v25 = *(v12 + 16);
  v47 = v17;
  v26 = v49;
  v25(v14, v17, v49);
  v27 = v51;
  (*(v6 + 16))(v8, v11, v51);
  v28 = [v24 bundleURL];
  v29 = v48;
  sub_560AC();

  (*(v50 + 104))(v29, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v52);
  sub_5607C();

  (*(v6 + 8))(v11, v27);
  (*(v12 + 8))(v47, v26);
  v31 = v57;
  v30 = v58;
  v67 = v57;
  v68 = v58;
  sub_2AFC(&qword_72930, &qword_5A1F8);
  sub_570AC();
  v32 = v70;
  v33 = v71;
  v34 = v72;
  swift_getKeyPath();
  v70 = v32;
  v71 = v33;
  v72 = v34;
  sub_2AFC(&qword_72938, &qword_5A228);
  sub_5712C();

  v51 = v67;
  v50 = v68;
  LODWORD(v52) = v69;

  v65 = v31;
  v66 = v30;
  sub_5708C();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_5662C();

  v49 = &v47;
  v47 = v65;
  LODWORD(v48) = v66;
  v36 = __chkstk_darwin(v35);
  v65 = v37;
  LOBYTE(v66) = v38;
  v39 = v59;
  (*(v59 + 16))(v53, v62, v61, v36);
  v40 = sub_56DFC();
  v42 = v41;
  LOBYTE(v27) = v43;
  v58 = v44;
  sub_2AFC(&qword_71F48, &unk_5A730);
  sub_2AFC(&qword_71F50, &unk_59530);
  sub_3260(&qword_72940, &qword_72918, &qword_5A1E8, &protocol conformance descriptor for NavigationStack<A, B>);
  sub_3260(&qword_71F60, &qword_71F48, &unk_5A730, &protocol conformance descriptor for Button<A>);
  v45 = v56;
  v46 = v54;
  sub_56EFC();
  sub_21FDC(v40, v42, v27 & 1);

  (*(v39 + 8))(v62, v61);
  (*(v55 + 8))(v46, v45);
  sub_BCE4(v47, v48);
}

uint64_t sub_2E1AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2AFC(&qword_72930, &qword_5A1F8);
  sub_5708C();

  sub_5604C();
  v6 = sub_2AFC(&qword_72920, &qword_5A1F0);
  v7 = v6[9];
  sub_5708C();

  sub_5604C();
  v8 = sub_5606C();
  (*(*(v8 - 8) + 56))(a3 + v7, 0, 1, v8);
  sub_5708C();
  v9 = sub_300E8();

  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(a3 + v6[10]) = 0;
  *(a3 + v6[11]) = v9;
  v11 = (a3 + v6[12]);
  *v11 = sub_30478;
  v11[1] = v10;
}

uint64_t sub_2E360@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v45 = a2;
  v46 = a1;
  v47 = a3;
  v3 = sub_2AFC(&qword_71F68, &unk_59540);
  __chkstk_darwin(v3 - 8);
  v43 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v44 = &v38 - v6;
  v7 = sub_5605C();
  v39 = *(v7 - 8);
  v40 = v7;
  __chkstk_darwin(v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_561CC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v38 - v15;
  v17 = sub_5773C();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v38 - v22;
  v24 = sub_5606C();
  v41 = *(v24 - 8);
  v42 = v24;
  __chkstk_darwin(v24);
  v48 = &v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_576DC();
  sub_B038();
  v26 = sub_5796C();
  if (!v26)
  {
    v26 = [objc_opt_self() mainBundle];
  }

  v27 = v26;
  sub_561BC();
  (*(v18 + 16))(v20, v23, v17);
  (*(v11 + 16))(v13, v16, v10);
  v28 = [v27 bundleURL];
  v38 = v17;
  v29 = v10;
  v30 = v28;
  sub_560AC();

  (*(v39 + 104))(v9, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v40);
  sub_5607C();

  (*(v11 + 8))(v16, v29);
  (*(v18 + 8))(v23, v38);
  v31 = v44;
  sub_5666C();
  v32 = sub_5667C();
  (*(*(v32 - 8) + 56))(v31, 0, 1, v32);
  v33 = swift_allocObject();
  v34 = v45;
  *(v33 + 16) = v46;
  *(v33 + 24) = v34;
  v35 = sub_2E28(v31, v43, &qword_71F68, &unk_59540);
  __chkstk_darwin(v35);
  v36 = v48;
  *(&v38 - 2) = v48;

  sub_570CC();
  sub_2E90(v31, &qword_71F68, &unk_59540);
  return (*(v41 + 8))(v36, v42);
}

uint64_t sub_2E8D4(uint64_t a1, uint64_t a2)
{
  sub_2AFC(&qword_72930, &qword_5A1F8);
  sub_5708C();
  *(v3 + 104) = 0;

  sub_5708C();

  swift_getKeyPath();
  swift_getKeyPath();
  return sub_5663C();
}

uint64_t sub_2E9A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_569DC();
  __chkstk_darwin(v4 - 8);
  v5 = *a1;
  v6 = *(a1 + 8);
  if (os_variant_has_internal_ui() && (v6 & 1) != 0)
  {
    swift_errorRetain();
    sub_2AFC(&qword_71D30, &qword_5A740);
    swift_willThrowTypedImpl();
    swift_getErrorValue();
    v7 = sub_57BDC();
    v9 = v8;
    sub_BCFC(v5, 1);
  }

  else
  {
    v7 = 0;
    v9 = 0xE000000000000000;
  }

  sub_569CC();
  v17._object = 0x800000000005C540;
  v17._countAndFlagsBits = 0xD000000000000038;
  sub_569BC(v17);
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    v18._countAndFlagsBits = v7;
    v18._object = v9;
    sub_577DC(v18);

    v11._countAndFlagsBits = 32;
    v12 = 0xE100000000000000;
  }

  else
  {

    v11._countAndFlagsBits = 0;
    v12 = 0xE000000000000000;
  }

  v11._object = v12;
  sub_569AC(v11);

  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  sub_569BC(v19);
  sub_569FC();
  result = sub_56DEC();
  *a2 = result;
  *(a2 + 8) = v14;
  *(a2 + 16) = v15 & 1;
  *(a2 + 24) = v16;
  return result;
}

uint64_t sub_2EB9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a1;
  v48 = a2;
  v2 = sub_56B6C();
  v46 = *(v2 - 8);
  v47 = v2;
  __chkstk_darwin(v2);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_56B3C();
  v5 = *(v38 - 8);
  __chkstk_darwin(v38);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2AFC(&qword_72948, &qword_5A2F8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v34 - v10;
  v12 = sub_2AFC(&qword_72950, &qword_5A300);
  v13 = *(v12 - 8);
  v39 = v12;
  v40 = v13;
  __chkstk_darwin(v12);
  v15 = &v34 - v14;
  v42 = sub_2AFC(&qword_72958, &qword_5A308);
  v45 = *(v42 - 8);
  __chkstk_darwin(v42);
  v34 = &v34 - v16;
  v17 = sub_2AFC(&qword_72960, &qword_5A310);
  v18 = *(v17 - 8);
  v43 = v17;
  v44 = v18;
  __chkstk_darwin(v17);
  v35 = &v34 - v19;
  v41 = sub_2AFC(&qword_72968, &qword_5A318);
  __chkstk_darwin(v41);
  v36 = &v34 - v20;
  sub_2AFC(&qword_72970, &qword_5A320);
  sub_3260(&qword_72978, &qword_72970, &qword_5A320, &unk_59D38);
  sub_56D7C();
  sub_56B2C();
  v21 = sub_3260(&qword_72980, &qword_72948, &qword_5A2F8, &protocol conformance descriptor for List<A, B>);
  v22 = v38;
  sub_56F4C();
  (*(v5 + 8))(v7, v22);
  (*(v9 + 8))(v11, v8);
  sub_56C9C();
  sub_56B5C();
  v49 = v8;
  v50 = v22;
  v51 = v21;
  v52 = &protocol witness table for InsetGroupedListStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = v34;
  v25 = v39;
  sub_56E7C();
  v26 = v47;
  v27 = *(v46 + 8);
  v27(v4, v47);
  (*(v40 + 8))(v15, v25);
  sub_56CCC();
  sub_56B5C();
  v49 = v25;
  v50 = OpaqueTypeConformance2;
  v28 = swift_getOpaqueTypeConformance2();
  v29 = v35;
  v30 = v42;
  sub_56E7C();
  v27(v4, v26);
  (*(v45 + 8))(v24, v30);
  v49 = v30;
  v50 = v28;
  swift_getOpaqueTypeConformance2();
  v31 = v36;
  v32 = v43;
  sub_56EDC();
  (*(v44 + 8))(v29, v32);
  *(v31 + *(v41 + 36)) = 256;
  sub_3062C();
  sub_56EBC();
  return sub_307F8(v31);
}

uint64_t sub_2F1F4(uint64_t a1)
{

  sub_2AFC(&qword_72990, &qword_5A328);
  sub_2AFC(&qword_72998, &qword_5A330);
  sub_3260(&qword_729A0, &qword_72990, &qword_5A328, &protocol conformance descriptor for [A]);
  sub_30868();
  sub_30920();
  return sub_5719C();
}

uint64_t sub_2F2F4@<X0>(_OWORD *a1@<X0>, uint64_t a3@<X8>)
{
  v4 = a1[3];
  v19[2] = a1[2];
  v20[0] = v4;
  *(v20 + 9) = *(a1 + 57);
  v5 = a1[1];
  v19[0] = *a1;
  v19[1] = v5;
  v6 = a3 + *(sub_2AFC(&qword_729B8, &qword_5A338) + 36);
  *v6 = sub_5697C();
  *(v6 + 8) = 0x4030000000000000;
  *(v6 + 16) = 0;
  v7 = sub_2AFC(&qword_729C8, &qword_5A340);
  sub_2F3FC(v19, v6 + *(v7 + 44));
  *a3 = 0;
  *(a3 + 8) = 1;
  v8 = sub_56CCC();
  sub_5668C();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  result = sub_2AFC(&qword_72998, &qword_5A330);
  v18 = a3 + *(result + 36);
  *v18 = v8;
  *(v18 + 8) = v10;
  *(v18 + 16) = v12;
  *(v18 + 24) = v14;
  *(v18 + 32) = v16;
  *(v18 + 40) = 0;
  return result;
}

uint64_t sub_2F3FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = sub_2AFC(&qword_729D0, &qword_5A348);
  __chkstk_darwin(v3 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v23 - v7;
  v9 = sub_2AFC(&qword_729D8, &qword_5A350);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v23 - v14;
  sub_2F728(a1, &v23 - v14);
  sub_571DC();
  sub_566EC();
  v16 = &v15[*(v10 + 44)];
  v17 = v28;
  *v16 = v27;
  *(v16 + 1) = v17;
  *(v16 + 2) = v29;
  *v8 = sub_56A2C();
  *(v8 + 1) = 0;
  v8[16] = 1;
  sub_2AFC(&qword_729E0, &unk_5A358);
  v18 = sub_30974(a1);
  v19 = *(v18 + 16);
  v25 = 0;
  v26 = v19;
  swift_getKeyPath();
  *(swift_allocObject() + 16) = v18;
  sub_2AFC(&qword_729E8, &unk_5A380);
  sub_2AFC(&qword_72628, &qword_59C80);
  sub_30B78();
  sub_2A34C();
  sub_5718C();
  sub_2E28(v15, v12, &qword_729D8, &qword_5A350);
  sub_2E28(v8, v5, &qword_729D0, &qword_5A348);
  v20 = v24;
  sub_2E28(v12, v24, &qword_729D8, &qword_5A350);
  v21 = sub_2AFC(&qword_72A00, &qword_5A390);
  sub_2E28(v5, v20 + *(v21 + 48), &qword_729D0, &qword_5A348);
  sub_2E90(v8, &qword_729D0, &qword_5A348);
  sub_2E90(v15, &qword_729D8, &qword_5A350);
  sub_2E90(v5, &qword_729D0, &qword_5A348);
  return sub_2E90(v12, &qword_729D8, &qword_5A350);
}

uint64_t sub_2F728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = sub_5703C();
  v33 = *(v3 - 8);
  v34 = v3;
  __chkstk_darwin(v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_2AFC(&qword_72A10, &qword_5A3A0);
  __chkstk_darwin(v37);
  v7 = &v31 - v6;
  v35 = sub_2AFC(&qword_72A18, &qword_5A3A8);
  __chkstk_darwin(v35);
  v9 = &v31 - v8;
  v36 = sub_2AFC(&qword_72A20, &qword_5A3B0);
  __chkstk_darwin(v36);
  v11 = &v31 - v10;
  v12 = sub_55D9C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 56);
  v17 = *(a1 + 64);
  if (*(a1 + 72))
  {
    if (*(a1 + 72) == 1)
    {
      sub_30E78(*(a1 + 56), *(a1 + 64), 1);
      v18 = v16;
      sub_5701C();
      v19 = v33;
      v20 = v34;
      (*(v33 + 104))(v5, enum case for Image.ResizingMode.stretch(_:), v34);
      v21 = sub_5705C();
      v32 = v11;
      v22 = v21;

      (*(v19 + 8))(v5, v20);
      *v9 = v22;
      *(v9 + 1) = 0;
      v9[16] = 1;
      *(v9 + 17) = 1;
      v9[19] = 1;
      swift_storeEnumTagMultiPayload();

      sub_2AFC(&qword_72A40, &qword_5A3B8);
      sub_30CE4(v23);
      sub_30D3C();
      v24 = v32;
      sub_56ABC();
      sub_2E28(v24, v7, &qword_72A20, &qword_5A3B0);
      swift_storeEnumTagMultiPayload();
      sub_30C58();
      sub_56ABC();

      sub_30E98(v16, v17, 1);
      return sub_2E90(v24, &qword_72A20, &qword_5A3B0);
    }

    sub_55D8C();
    (*(v13 + 16))(v7, v15, v12);
    swift_storeEnumTagMultiPayload();
    sub_30C58();
    sub_30CE4(v30);
    sub_56ABC();
  }

  else
  {

    v26 = v11;
    v27 = sub_2FC88(v16, v17);
    sub_30E98(v16, v17, 0);
    v28 = v27;
    sub_55D7C();
    (*(v13 + 16))(v9, v15, v12);
    swift_storeEnumTagMultiPayload();
    sub_2AFC(&qword_72A40, &qword_5A3B8);
    sub_30CE4(v29);
    sub_30D3C();
    sub_56ABC();
    sub_2E28(v26, v7, &qword_72A20, &qword_5A3B0);
    swift_storeEnumTagMultiPayload();
    sub_30C58();
    sub_56ABC();

    sub_2E90(v26, &qword_72A20, &qword_5A3B0);
  }

  return (*(v13 + 8))(v15, v12);
}

id sub_2FC88(uint64_t a1, uint64_t a2)
{
  v2 = sub_2AFC(&qword_723E8, &qword_5A3D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v11[-v3];
  v5 = sub_5600C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = [objc_allocWithZone(CNMutableContact) init];

  sub_5601C();
  (*(v6 + 56))(v4, 0, 1, v5);
  (*(v6 + 32))(v8, v4, v5);
  sub_253F4();
  (*(v6 + 8))(v8, v5);
  return v9;
}

unint64_t *sub_2FEA4@<X0>(unint64_t *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *result;
  if (*result)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v4 < a2[2])
    {
      v20 = *&a2[2 * v4 + 4];
      sub_2B4C();

      v5 = sub_56E0C();
      v7 = v6;
      v9 = v8;
      sub_56CDC();
      v10 = sub_56DDC();
      v12 = v11;
      v14 = v13;

      sub_21FDC(v5, v7, v9 & 1);

      LODWORD(v20) = sub_56B8C();
      sub_56DBC();
      sub_21FDC(v10, v12, v14 & 1);

LABEL_7:
      result = sub_56ABC();
      *a3 = v20;
      *(a3 + 16) = v21;
      *(a3 + 32) = v22;
      return result;
    }

    __break(1u);
  }

  else if (a2[2])
  {
    v20 = *(a2 + 2);
    sub_2B4C();

    v15 = sub_56E0C();
    v17 = v16;
    v19 = v18;
    sub_56D6C();
    sub_56DDC();

    sub_21FDC(v15, v17, v19 & 1);

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_300E8()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 80);
  }

  else
  {
    sub_4944();
    v1 = v2;
    *(v0 + 80) = v2;
  }

  return v1;
}

void *sub_3014C()
{

  return v0;
}

uint64_t sub_3019C()
{
  sub_3014C();

  return swift_deallocClassInstance();
}

uint64_t sub_301F4(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 sub_30210(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_30234(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_3027C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_30308(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_3031C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_30364(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_303A8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_30438()
{

  return _swift_deallocObject(v0, 32, 7);
}

void *sub_30478@<X0>(void *a1@<X8>)
{
  sub_2AFC(&qword_72930, &qword_5A1F8);
  result = sub_5708C();
  *a1 = v3;
  return result;
}

uint64_t sub_304E0()
{
  sub_2C70(&qword_72918, &qword_5A1E8);
  sub_2C70(&qword_71F48, &unk_5A730);
  sub_2C70(&qword_71F50, &unk_59530);
  sub_3260(&qword_72940, &qword_72918, &qword_5A1E8, &protocol conformance descriptor for NavigationStack<A, B>);
  sub_3260(&qword_71F60, &qword_71F48, &unk_5A730, &protocol conformance descriptor for Button<A>);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_3062C()
{
  result = qword_72988;
  if (!qword_72988)
  {
    sub_2C70(&qword_72968, &qword_5A318);
    sub_2C70(&qword_72960, &qword_5A310);
    sub_2C70(&qword_72958, &qword_5A308);
    sub_2C70(&qword_72950, &qword_5A300);
    sub_2C70(&qword_72948, &qword_5A2F8);
    sub_56B3C();
    sub_3260(&qword_72980, &qword_72948, &qword_5A2F8, &protocol conformance descriptor for List<A, B>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72988);
  }

  return result;
}

uint64_t sub_307F8(uint64_t a1)
{
  v2 = sub_2AFC(&qword_72968, &qword_5A318);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_30868()
{
  result = qword_729A8;
  if (!qword_729A8)
  {
    sub_2C70(&qword_72998, &qword_5A330);
    sub_3260(&qword_729B0, &qword_729B8, &qword_5A338, &unk_59CE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_729A8);
  }

  return result;
}

unint64_t sub_30920()
{
  result = qword_729C0;
  if (!qword_729C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_729C0);
  }

  return result;
}

uint64_t sub_30974(void *a1)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v4 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v26 = v3;
  v27 = v5;
  v7 = a1[3];
  v6 = a1[4];
  v8 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v8 = v7 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v28 = v7;
  v29 = v9;
  v11 = a1[5];
  v10 = a1[6];
  v12 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v12 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
  }

  else
  {
    v11 = 0;
    result = 0;
  }

  v14 = 0;
  v30 = v11;
  v31 = result;
  v15 = &_swiftEmptyArrayStorage;
LABEL_17:
  if (v14 <= 3)
  {
    v16 = 3;
  }

  else
  {
    v16 = v14;
  }

  v17 = v16 + 1;
  v18 = 16 * v14 + 40;
  while (1)
  {
    if (v14 == 3)
    {
      sub_2AFC(&qword_72A08, &qword_5A398);
      swift_arrayDestroy();
      return v15;
    }

    if (v17 == ++v14)
    {
      break;
    }

    v19 = v18 + 16;
    v20 = *&v25[v18];
    v18 += 16;
    if (v20)
    {
      v21 = *&v25[v19 - 24];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_6AAC(0, *(v15 + 2) + 1, 1, v15);
        v15 = result;
      }

      v23 = *(v15 + 2);
      v22 = *(v15 + 3);
      if (v23 >= v22 >> 1)
      {
        result = sub_6AAC((v22 > 1), v23 + 1, 1, v15);
        v15 = result;
      }

      *(v15 + 2) = v23 + 1;
      v24 = &v15[16 * v23];
      *(v24 + 4) = v21;
      *(v24 + 5) = v20;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_30B38()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_30B78()
{
  result = qword_729F0;
  if (!qword_729F0)
  {
    sub_2C70(&qword_729E8, &unk_5A380);
    sub_30C04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_729F0);
  }

  return result;
}

unint64_t sub_30C04()
{
  result = qword_729F8;
  if (!qword_729F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_729F8);
  }

  return result;
}

unint64_t sub_30C58()
{
  result = qword_72A28;
  if (!qword_72A28)
  {
    sub_2C70(&qword_72A20, &qword_5A3B0);
    sub_30CE4(v1);
    sub_30D3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72A28);
  }

  return result;
}

unint64_t sub_30CE4(__n128 a1)
{
  result = qword_72A30;
  if (!qword_72A30)
  {
    sub_55D9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72A30);
  }

  return result;
}

unint64_t sub_30D3C()
{
  result = qword_72A38;
  if (!qword_72A38)
  {
    sub_2C70(&qword_72A40, &qword_5A3B8);
    sub_30DF4();
    sub_3260(&qword_72A58, &qword_72A60, &qword_5A3C8, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72A38);
  }

  return result;
}

unint64_t sub_30DF4()
{
  result = qword_72A48;
  if (!qword_72A48)
  {
    sub_2C70(&qword_72A50, &qword_5A3C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72A48);
  }

  return result;
}

id sub_30E78(id result, id a2, char a3)
{
  if (a3 == 1)
  {
    return result;
  }

  if (!a3)
  {
  }

  return result;
}

void sub_30E98(void *a1, id a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

uint64_t sub_30EB8()
{
  sub_2C70(&qword_72968, &qword_5A318);
  sub_3062C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_30F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_561AC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_3101C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_561AC();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for MessagesContext(uint64_t a1)
{
  result = qword_72AC0;
  if (!qword_72AC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_31128(uint64_t a1)
{
  sub_2277C();
  if (v1 <= 0x3F)
  {
    sub_561AC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_311D8()
{
  v0 = sub_2AFC(&qword_723E8, &qword_5A3D0);
  __chkstk_darwin(v0 - 8);
  v2 = &v33 - v1;
  v3 = sub_5600C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_573DC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_allocWithZone(CNMutableContact) init];
  v12 = sub_5747C();
  sub_573EC();

  v13 = (*(v8 + 88))(v10, v7);
  if (v13 == enum case for _CommunicationHandle.Kind.phoneNumber(_:))
  {
    v34 = v6;
    v14 = sub_5747C();
    sub_573FC();

    v15 = objc_allocWithZone(CNPhoneNumber);
    v16 = sub_5774C();

    v17 = [v15 initWithStringValue:v16];

    [objc_allocWithZone(CNLabeledValue) initWithLabel:0 value:v17];
    v18 = [v11 phoneNumbers];
    sub_2AFC(&qword_72B08, "Bq");
    v19 = sub_5784C();

    v36 = v19;
    sub_5782C();
    if (*(&dword_10 + (v36 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v36 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_5786C();
    }

    sub_5787C();
    isa = sub_5783C().super.isa;

    [v11 setPhoneNumbers:isa];

    v6 = v34;
  }

  else if (v13 == enum case for _CommunicationHandle.Kind.emailAddress(_:))
  {
    v21 = sub_5747C();
    sub_573FC();

    v22 = sub_5774C();

    [objc_allocWithZone(CNLabeledValue) initWithLabel:0 value:v22];

    v23 = [v11 emailAddresses];
    sub_2AFC(&qword_72B08, "Bq");
    v24 = sub_5784C();

    v36 = v24;
    sub_5782C();
    if (*(&dword_10 + (v36 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v36 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_5786C();
    }

    sub_5787C();
    v25 = sub_5783C().super.isa;

    [v11 setEmailAddresses:v25];
  }

  else if (v13 != enum case for _CommunicationHandle.Kind.custom(_:))
  {
    (*(v8 + 8))(v10, v7);
  }

  sub_5745C();
  if (v26)
  {

    sub_5601C();

    (*(v4 + 56))(v2, 0, 1, v3);
    (*(v4 + 32))(v6, v2, v3);
    sub_253F4();
    (*(v4 + 8))(v6, v3);
  }

  v27 = sub_5742C();
  if (v28 >> 60 != 15)
  {
    v29 = v27;
    v30 = v28;
    v31 = sub_560EC().super.isa;
    [v11 setImageData:v31];

    sub_12F8C(v29, v30);
  }

  [v11 copy];
  sub_579CC();

  swift_unknownObjectRelease();
  sub_22730();
  swift_dynamicCast();
  return v35;
}

uint64_t sub_31824()
{
  swift_getKeyPath();
  sub_32A94();
  sub_561FC();

  return *(v0 + 24);
}

uint64_t sub_31894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_2AFC(&qword_71820, &qword_59550);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_32AEC(a3, v25 - v10);
  v12 = sub_578CC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_32B5C(v11);
  }

  else
  {
    sub_578BC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_5788C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_577BC() + 32;
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

      sub_32B5C(a3);

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

  sub_32B5C(a3);
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

uint64_t sub_31B54@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_32A94();
  sub_561FC();

  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_31BF4(uint64_t result)
{
  if (*(v1 + 24) == (result & 1))
  {
    *(v1 + 24) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_32A94();
    sub_561EC();
  }

  return result;
}

uint64_t sub_31CD4()
{
  swift_getKeyPath();
  sub_32A94();
  sub_561FC();
}

uint64_t sub_31D48@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_32A94();
  sub_561FC();

  *a2 = *(v3 + 40);
}

uint64_t sub_31DC4(uint64_t a1)
{
  if (!*(v1 + 40))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_32A94();
    sub_561EC();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v3 = sub_578DC();

  if ((v3 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + 40) = a1;
}

uint64_t sub_31F1C()
{
  swift_getKeyPath();
  sub_32A94();
  sub_561FC();

  return *(v0 + 48);
}

uint64_t sub_31F8C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_32A94();
  sub_561FC();

  *a2 = *(v3 + 48);
  return result;
}

uint64_t sub_32004(uint64_t result)
{
  if (*(v1 + 48) == (result & 1))
  {
    *(v1 + 48) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_32A94();
    sub_561EC();
  }

  return result;
}

uint64_t sub_320E4(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_2AFC(&qword_71820, &qword_59550);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  *(v2 + 24) = 0;
  sub_5752C();
  swift_allocObject();
  *(v2 + 32) = sub_5751C();
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  sub_5620C();
  if (a2)
  {
    *(v2 + 16) = -1;
  }

  else
  {
    *(v2 + 16) = a1;
    v9 = sub_578CC();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v3;
    v10[5] = a1;

    v11 = sub_31894(0, 0, v8, &unk_5A4F8, v10);
    sub_31DC4(v11);
  }

  return v3;
}

uint64_t sub_32254()
{
  swift_getKeyPath();
  v1 = OBJC_IVAR____TtC13AskToMessages21ManageContactsSetting___observationRegistrar;
  sub_32A94();
  sub_561FC();

  if (*(v0 + 40))
  {

    sub_578EC();
  }

  v2 = sub_5621C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ManageContactsSetting(uint64_t a1)
{
  result = qword_72B40;
  if (!qword_72B40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_323C8(uint64_t a1)
{
  result = sub_5621C();
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

uint64_t sub_3248C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return _swift_task_switch(sub_324AC, 0, 0);
}

uint64_t sub_324AC()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_3254C;
  v2 = *(v0 + 48);

  return ATDaemonConnectionManager.canManageContacts(for:)(v2);
}

uint64_t sub_3254C(char a1)
{
  v3 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {
    v4 = sub_3280C;
  }

  else
  {
    v4 = sub_32664;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_32664()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 40);
  if (v1 == *(v2 + 24))
  {
    *(v2 + 24) = v1;
  }

  else
  {
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v3 + 24) = v1;
    *(v0 + 24) = v2;
    sub_32A94();
    sub_561EC();
  }

  v4 = *(v0 + 40);
  if (*(v4 + 48) == 1)
  {
    *(v4 + 48) = 1;
  }

  else
  {
    swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = v4;
    *(v5 + 24) = 1;
    *(v0 + 32) = v4;
    sub_32A94();
    sub_561EC();
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_3280C()
{
  v1 = v0[5];
  if (*(v1 + 24))
  {
    swift_getKeyPath();
    v2 = swift_task_alloc();
    *(v2 + 16) = v1;
    *(v2 + 24) = 0;
    v0[2] = v1;
    sub_32A94();
    sub_561EC();
  }

  else
  {

    *(v1 + 24) = 0;
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_32928()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_32968(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_BBC4;

  return sub_3248C(a1, v4, v5, v7, v6);
}

uint64_t sub_32A58()
{
  *(*(v0 + 16) + 40) = *(v0 + 24);
}

unint64_t sub_32A94()
{
  result = qword_71A58;
  if (!qword_71A58)
  {
    type metadata accessor for ManageContactsSetting(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71A58);
  }

  return result;
}

uint64_t sub_32AEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2AFC(&qword_71820, &qword_59550);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_32B5C(uint64_t a1)
{
  v2 = sub_2AFC(&qword_71820, &qword_59550);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_32BC4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_32CBC;

  return v6(a1);
}

uint64_t sub_32CBC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_32DB4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_32DEC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22334;

  return sub_32BC4(a1, v4);
}

uint64_t sub_32EA4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_BBC4;

  return sub_32BC4(a1, v4);
}

uint64_t sub_33008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2AFC(&qword_71A10, &qword_5A5A0);
  __chkstk_darwin(v4 - 8);
  v80 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v75 = (&v71 - v7);
  __chkstk_darwin(v8);
  v72 = &v71 - v9;
  v10 = type metadata accessor for MessagesContext(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  v13 = type metadata accessor for BalloonView(0);
  v14 = v13[5];
  *(a2 + v14) = swift_getKeyPath();
  sub_2AFC(&qword_71D78, &qword_593B0);
  swift_storeEnumTagMultiPayload();
  v15 = a2 + v13[17];
  v82 = 0;
  sub_5707C();
  v16 = v84;
  *v15 = v83;
  *(v15 + 8) = v16;
  v17 = a2 + v13[18];
  v82 = 0;
  sub_5707C();
  v18 = v84;
  *v17 = v83;
  *(v17 + 8) = v18;
  v19 = a2 + v13[19];
  v82 = 0;
  sub_5707C();
  v20 = v84;
  *v19 = v83;
  *(v19 + 8) = v20;
  v21 = *(a1 + 24);
  v22 = sub_5763C();
  *(a2 + v13[6]) = v22;
  v71 = v22;
  *(a2 + v13[7]) = sub_5764C();
  v23 = type metadata accessor for PayloadViewModel(0);
  sub_2E28(a1 + v23[7], a2 + v13[8], &qword_71B00, &unk_593C0);
  sub_2E28(a1 + v23[8], a2 + v13[9], &qword_71B00, &unk_593C0);
  v24 = a1 + v23[9];
  sub_43188(v24, a2 + v13[12], type metadata accessor for MessagesContext);
  v25 = sub_5762C();
  v26 = (a2 + v13[13]);
  *v26 = v25;
  v26[1] = v27;
  v28 = (a2 + v13[20]);
  *v28 = *(a1 + v23[10]);
  v28[1] = 0;
  v30 = *a1;
  v29 = *(a1 + 8);
  *(a2 + v13[10]) = *a1;
  v81 = a1;
  v31 = *(a1 + 16);
  v32 = (a2 + v13[11]);
  v77 = v29;
  *v32 = v29;
  v32[1] = v31;
  v74 = v24;
  v33 = v72;
  sub_43188(v24, v12, type metadata accessor for MessagesContext);
  type metadata accessor for ResponseTransmitter(0);
  swift_allocObject();
  v34 = v30;
  v76 = v31;
  swift_bridgeObjectRetain_n();
  v35 = v21;

  v36 = sub_14F68(v12, v35);
  v37 = (a2 + v13[15]);
  sub_431F0(&qword_71D88, type metadata accessor for ResponseTransmitter, &unk_590F0);

  v73 = v36;
  v38 = v71;
  *v37 = sub_5672C();
  v37[1] = v39;
  v78 = v13;
  v79 = a2;
  *(a2 + v13[14]) = v35;
  v40 = sub_5763C();
  sub_5630C();

  v41 = sub_5643C();
  v42 = sub_5640C();
  v44 = v43;

  if (v42 == 0xD00000000000002DLL && 0x800000000005BFB0 == v44)
  {
    v45 = v75;
LABEL_4:

    goto LABEL_6;
  }

  v46 = sub_57B8C();

  v45 = v75;
  if ((v46 & 1) == 0)
  {
    v50 = sub_5643C();
    v51 = sub_5640C();
    v53 = v52;

    if (v51 == 0xD00000000000001DLL && 0x800000000005C700 == v53)
    {
      goto LABEL_4;
    }

    v54 = sub_57B8C();

    if ((v54 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

LABEL_6:
  v47 = sub_5762C();
  if (!v48)
  {
LABEL_15:
    v49 = 0;
    goto LABEL_16;
  }

  if (v47 == 0xD000000000000013 && v48 == 0x800000000005BFE0)
  {
    v49 = 1;
  }

  else
  {
    v49 = sub_57B8C();
  }

LABEL_16:
  sub_2E28(v33, v45, &qword_71A10, &qword_5A5A0);
  v55 = sub_5636C();
  v56 = *(v55 - 8);
  if ((*(v56 + 48))(v45, 1, v55) == 1)
  {
    sub_2E90(v45, &qword_71A10, &qword_5A5A0);
  }

  else
  {
    v57 = (*(v56 + 88))(v45, v55);
    if (v57 == enum case for ATQuestion.TopicMetadata.communication(_:))
    {
      v58 = v57;
      (*(v56 + 96))(v45, v55);
      if (v49)
      {
        v71 = *v45;
        sub_2AFC(&qword_72BF0, &qword_5A608);
        v59 = sub_574CC();
        v60 = v33;
        v61 = *(v59 - 8);
        v62 = *(v61 + 72);
        v63 = (*(v61 + 80) + 32) & ~*(v61 + 80);
        v64 = swift_allocObject();
        *(v64 + 16) = xmmword_58B00;
        v65 = v64 + v63;
        LODWORD(v75) = v58;
        v66 = *(v61 + 104);
        v66(v65, enum case for ATCommunicationMetadata.Action.message(_:), v59);
        v66(v65 + v62, enum case for ATCommunicationMetadata.Action.call(_:), v59);
        v33 = v60;
        v67 = v71;
        sub_B438(v64);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        sub_574EC();

        sub_2E90(v60, &qword_71A10, &qword_5A5A0);
        *v60 = v67;
        (*(v56 + 104))(v60, v75, v55);
        (*(v56 + 56))(v60, 0, 1, v55);
      }

      else
      {
      }
    }

    else
    {
      (*(v56 + 8))(v45, v55);
    }
  }

  sub_575FC();
  sub_2E28(v33, v80, &qword_71A10, &qword_5A5A0);
  v68 = sub_5763C();
  sub_5642C();

  v69 = sub_5763C();
  sub_5644C();

  sub_5739C();

  sub_2E90(v33, &qword_71A10, &qword_5A5A0);
  return sub_43238(v81, type metadata accessor for PayloadViewModel);
}

uint64_t sub_338DC()
{
  v0 = sub_2AFC(&qword_72F28, &qword_5A8E0);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  sub_56D0C();
  v3 = sub_56CFC();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = sub_56D1C();
  result = sub_2E90(v2, &qword_72F28, &qword_5A8E0);
  qword_75810 = v4;
  return result;
}

uint64_t sub_339D0()
{
  result = sub_56CDC();
  qword_75818 = result;
  return result;
}

uint64_t sub_339F0()
{
  sub_56CDC();
  v0 = sub_56CEC();

  qword_75820 = v0;
  return result;
}