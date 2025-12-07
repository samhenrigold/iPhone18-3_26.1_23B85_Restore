uint64_t sub_100CA16D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v95 = sub_100788890([a1 mostRecentRestorableToolType]);
  sub_1008B2170([a1 colorForToolType:0], v125);
  *(&v124[2] + 7) = v125[2];
  *(&v124[3] + 7) = v125[3];
  *(&v124[4] + 7) = v125[4];
  *(&v124[5] + 7) = v126;
  *(v124 + 7) = v125[0];
  *(&v124[1] + 7) = v125[1];
  [a1 opacityForToolType:0];
  *&v4 = v4;
  v94 = LODWORD(v4);
  v123 = 0;
  [a1 strokeWidthForToolType:0];
  *&v5 = v5;
  v93 = LODWORD(v5);
  v122 = 0;
  sub_1008B2170([a1 colorForToolType:1], v127);
  *&v121[35] = v127[2];
  *&v121[51] = v127[3];
  *&v121[67] = v127[4];
  *&v121[83] = v128;
  *&v121[3] = v127[0];
  *&v121[19] = v127[1];
  [a1 opacityForToolType:1];
  *&v6 = v6;
  v92 = LODWORD(v6);
  v120 = 0;
  [a1 strokeWidthForToolType:1];
  *&v7 = v7;
  v91 = LODWORD(v7);
  v119 = 0;
  sub_1008B2170([a1 colorForToolType:2], v129);
  *(&v118[2] + 3) = v129[2];
  *(&v118[3] + 3) = v129[3];
  *(&v118[4] + 3) = v129[4];
  *(&v118[5] + 3) = v130;
  *(v118 + 3) = v129[0];
  *(&v118[1] + 3) = v129[1];
  [a1 opacityForToolType:2];
  *&v8 = v8;
  v90 = LODWORD(v8);
  v117 = 0;
  [a1 strokeWidthForToolType:2];
  *&v9 = v9;
  v89 = LODWORD(v9);
  v116 = 0;
  sub_1008B2170([a1 colorForToolType:3], v131);
  *&v115[35] = v131[2];
  *&v115[51] = v131[3];
  *&v115[67] = v131[4];
  *&v115[83] = v132;
  *&v115[3] = v131[0];
  *&v115[19] = v131[1];
  [a1 opacityForToolType:3];
  *&v10 = v10;
  v88 = LODWORD(v10);
  v114 = 0;
  [a1 strokeWidthForToolType:3];
  *&v11 = v11;
  v87 = LODWORD(v11);
  v113 = 0;
  sub_1008B2170([a1 colorForToolType:4], v133);
  *(&v112[2] + 3) = v133[2];
  *(&v112[3] + 3) = v133[3];
  *(&v112[4] + 3) = v133[4];
  *(&v112[5] + 3) = v134;
  *(v112 + 3) = v133[0];
  *(&v112[1] + 3) = v133[1];
  [a1 opacityForToolType:4];
  *&v12 = v12;
  v86 = LODWORD(v12);
  v111 = 0;
  [a1 strokeWidthForToolType:4];
  *&v13 = v13;
  v85 = LODWORD(v13);
  v110 = 0;
  sub_1008B2170([a1 colorForToolType:5], v135);
  *&v109[35] = v135[2];
  *&v109[51] = v135[3];
  *&v109[67] = v135[4];
  *&v109[83] = v136;
  *&v109[3] = v135[0];
  *&v109[19] = v135[1];
  [a1 opacityForToolType:5];
  v15 = v14;
  v108 = 0;
  [a1 strokeWidthForToolType:5];
  v17 = v16;
  v107 = 0;
  sub_1008B2170([a1 colorForToolType:7], v137);
  *(&v106[2] + 3) = v137[2];
  *(&v106[3] + 3) = v137[3];
  *(&v106[4] + 3) = v137[4];
  *(&v106[5] + 3) = v138;
  *(v106 + 3) = v137[0];
  *(&v106[1] + 3) = v137[1];
  [a1 opacityForToolType:7];
  v19 = v18;
  v105 = 0;
  [a1 strokeWidthForToolType:7];
  v21 = v20;
  v104 = 0;
  sub_1008B2170([a1 colorForToolType:8], v139);
  *&v103[35] = v139[2];
  *&v103[51] = v139[3];
  *&v103[67] = v139[4];
  *&v103[83] = v140;
  *&v103[3] = v139[0];
  *&v103[19] = v139[1];
  [a1 opacityForToolType:8];
  v23 = v22;
  v102 = 0;
  [a1 strokeWidthForToolType:9];
  v25 = v24;
  v101 = 0;
  v84 = [a1 eraserToolErasesWholeObjects];
  v83 = [a1 currentLassoType] == 1;
  sub_1008B2170([a1 colorForToolType:6], v96);
  *&v100[39] = v96[2];
  *&v100[55] = v96[3];
  *&v100[71] = v96[4];
  *&v100[87] = v97;
  *&v100[7] = v96[0];
  *&v100[23] = v96[1];
  [a1 opacityForToolType:6];
  v27 = v26;
  v99 = 0;
  [a1 strokeWidthForToolType:6];
  v29 = v28;
  v98 = 0;
  [a1 azimuthForToolType:6];
  v30 = v124[3];
  *(a2 + 41) = v124[2];
  *(a2 + 57) = v30;
  *(a2 + 73) = v124[4];
  *(a2 + 88) = *(&v124[4] + 15);
  v31 = v124[1];
  *(a2 + 9) = v124[0];
  *&v32 = v32;
  v33 = v123;
  v34 = v122;
  v35 = v120;
  v36 = v119;
  v37 = v117;
  v38 = v116;
  v39 = v114;
  v40 = v113;
  v41 = v111;
  v42 = v110;
  v43 = v108;
  v44 = v107;
  v45 = v105;
  v46 = v104;
  v47 = v102;
  v48 = v101;
  v49 = v99;
  v50 = v98;
  *a2 = v95;
  *(a2 + 8) = 0;
  *(a2 + 25) = v31;
  *(a2 + 104) = v94;
  *(a2 + 108) = v33;
  *(a2 + 112) = v93;
  *(a2 + 116) = v34;
  v51 = *v121;
  *(a2 + 133) = *&v121[16];
  *(a2 + 117) = v51;
  *(a2 + 192) = *&v121[75];
  v52 = *&v121[48];
  *(a2 + 181) = *&v121[64];
  v53 = *&v121[32];
  *(a2 + 165) = v52;
  *(a2 + 149) = v53;
  *(a2 + 208) = v92;
  *(a2 + 212) = v35;
  *(a2 + 216) = v91;
  *(a2 + 220) = v36;
  v54 = v118[0];
  *(a2 + 237) = v118[1];
  *(a2 + 221) = v54;
  v55 = v118[2];
  v56 = v118[3];
  v57 = v118[4];
  *(a2 + 296) = *(&v118[4] + 11);
  *(a2 + 269) = v56;
  *(a2 + 285) = v57;
  *(a2 + 253) = v55;
  *(a2 + 312) = v90;
  *(a2 + 316) = v37;
  *(a2 + 320) = v89;
  *(a2 + 324) = v38;
  v58 = *&v115[16];
  *(a2 + 325) = *v115;
  *(a2 + 341) = v58;
  v59 = *&v115[32];
  v60 = *&v115[48];
  v61 = *&v115[64];
  *(a2 + 400) = *&v115[75];
  *(a2 + 373) = v60;
  *(a2 + 389) = v61;
  *(a2 + 357) = v59;
  *(a2 + 416) = v88;
  *(a2 + 420) = v39;
  *(a2 + 424) = v87;
  *(a2 + 428) = v40;
  result = a2 + 429;
  v63 = v112[1];
  *(a2 + 429) = v112[0];
  *(a2 + 445) = v63;
  v64 = v112[2];
  v65 = v112[3];
  v66 = v112[4];
  *(a2 + 504) = *(&v112[4] + 11);
  *(a2 + 477) = v65;
  *(a2 + 493) = v66;
  *(a2 + 461) = v64;
  *(a2 + 520) = v86;
  *(a2 + 524) = v41;
  *(a2 + 528) = v85;
  *(a2 + 532) = v42;
  v67 = *&v109[16];
  *(a2 + 533) = *v109;
  *(a2 + 549) = v67;
  v68 = *&v109[32];
  v69 = *&v109[48];
  v70 = *&v109[64];
  *(a2 + 608) = *&v109[75];
  *(a2 + 581) = v69;
  *(a2 + 597) = v70;
  *(a2 + 565) = v68;
  *(a2 + 624) = v15;
  *(a2 + 628) = v43;
  *(a2 + 632) = v17;
  *(a2 + 636) = v44;
  v71 = v106[1];
  *(a2 + 637) = v106[0];
  *(a2 + 653) = v71;
  v72 = v106[2];
  v73 = v106[3];
  v74 = v106[4];
  *(a2 + 712) = *(&v106[4] + 11);
  *(a2 + 685) = v73;
  *(a2 + 701) = v74;
  *(a2 + 669) = v72;
  *(a2 + 728) = v19;
  *(a2 + 732) = v45;
  *(a2 + 736) = v21;
  *(a2 + 740) = v46;
  v75 = *&v103[16];
  *(a2 + 741) = *v103;
  *(a2 + 757) = v75;
  v76 = *&v103[32];
  v77 = *&v103[48];
  v78 = *&v103[64];
  *(a2 + 816) = *&v103[75];
  *(a2 + 789) = v77;
  *(a2 + 805) = v78;
  *(a2 + 773) = v76;
  *(a2 + 832) = v23;
  *(a2 + 836) = v47;
  *(a2 + 840) = v25;
  *(a2 + 844) = v48;
  *(a2 + 845) = v84;
  *(a2 + 848) = v83;
  *(a2 + 856) = 0;
  v79 = *&v100[16];
  *(a2 + 857) = *v100;
  *(a2 + 873) = v79;
  v80 = *&v100[32];
  v81 = *&v100[48];
  v82 = *&v100[64];
  *(a2 + 936) = *&v100[79];
  *(a2 + 905) = v81;
  *(a2 + 921) = v82;
  *(a2 + 889) = v80;
  *(a2 + 952) = v27;
  *(a2 + 956) = v49;
  *(a2 + 960) = v29;
  *(a2 + 964) = v50;
  *(a2 + 968) = LODWORD(v32);
  *(a2 + 972) = 0;
  *(a2 + 976) = _swiftEmptyDictionarySingleton;
  return result;
}

uint64_t sub_100CA1EB4(uint64_t a1)
{
  if ((a1 + 1) > 0x1F)
  {
    return 32;
  }

  else
  {
    return byte_1014A9470[a1 + 1];
  }
}

uint64_t sub_100CA1ED8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001CLL && 0x80000001015975F0 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000101597610 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000101597630 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000101597650 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F546C69636E6570 && a2 == 0xEF726F6C6F436C6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000101597670 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000101597690 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6F546E6F79617263 && a2 == 0xEF726F6C6F436C6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001015976B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001015976D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6C6F6F546C6C6966 && a2 == 0xED0000726F6C6F43 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6C6F6F546C6C6966 && a2 == 0xEF7974696361704FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001015976F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000101597710 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x436C6F6F546E6570 && a2 == 0xEC000000726F6C6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x4F6C6F6F546E6570 && a2 == 0xEE00797469636170 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000101597730 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000101597750 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000101597770 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000101597790 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001015977B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001015977D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001015977F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x6F5472656B72616DLL && a2 == 0xEF726F6C6F436C6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000101597810 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000101597830 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000101597850 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0x6C6F6F5464656572 && a2 == 0xED0000726F6C6F43 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0x6C6F6F5464656572 && a2 == 0xEF7974696361704FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000101597870 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0x6C6F6F5464656572 && a2 == 0xEF6874756D697A41 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101557940 == a2)
  {

    return 31;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 31;
    }

    else
    {
      return 32;
    }
  }
}

void *sub_100CA28A4(uint64_t a1)
{
  __chkstk_darwin(a1);
  v3 = v2;
  v5 = v4;
  v288 = sub_1005B981C(&qword_101A19F88, &qword_1014A9298);
  v6 = *(v288 - 8);
  __chkstk_darwin(v288);
  v8 = &v16 - v7;
  sub_100020E58(v3, v3[3]);
  sub_100CA4948();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100005070(v3);
  }

  v59 = v5;
  v60 = v6;
  sub_1005B981C(&qword_101A19F90, &qword_1014A92A0);
  v61[0] = 0;
  sub_100B99DB0(&qword_101A19F98, &qword_101A19F90, &qword_1014A92A0, &protocol conformance descriptor for <> CRExtensible<A>);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v9 = v62;
  v10 = v63;
  v231 = 1;
  v11 = sub_1008B287C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v57 = v9;
  v58 = v11;
  v56 = v10;
  *(&v287[2] + 7) = v234;
  *(&v287[3] + 7) = v235;
  *(&v287[4] + 7) = v236;
  *(v287 + 7) = v232;
  *(&v287[5] + 7) = v237;
  *(&v287[1] + 7) = v233;
  LOBYTE(v62) = 2;
  v55 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v286 = BYTE4(v55) & 1;
  LOBYTE(v62) = 3;
  v54 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v283 = BYTE4(v54) & 1;
  v224 = 4;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *(&v277[2] + 3) = v227;
  *(&v277[3] + 3) = v228;
  *(&v277[4] + 3) = v229;
  *(&v277[5] + 3) = v230;
  *(v277 + 3) = v225;
  *(&v277[1] + 3) = v226;
  LOBYTE(v62) = 5;
  v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v276 = BYTE4(v12) & 1;
  LOBYTE(v62) = 6;
  v53 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v273 = BYTE4(v53) & 1;
  v217 = 7;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *(&v272[2] + 3) = v220;
  *(&v272[3] + 3) = v221;
  *(&v272[4] + 3) = v222;
  *(&v272[5] + 3) = v223;
  *(v272 + 3) = v218;
  *(&v272[1] + 3) = v219;
  LOBYTE(v62) = 8;
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v271 = BYTE4(v13) & 1;
  LOBYTE(v62) = 9;
  v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v268 = BYTE4(v14) & 1;
  v210 = 10;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *(&v252[2] + 3) = v213;
  *(&v252[3] + 3) = v214;
  *(&v252[4] + 3) = v215;
  *(&v252[5] + 3) = v216;
  *(v252 + 3) = v211;
  *(&v252[1] + 3) = v212;
  LOBYTE(v62) = 11;
  v52 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v251 = BYTE4(v52) & 1;
  LOBYTE(v62) = 12;
  v51 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v248 = BYTE4(v51) & 1;
  LOBYTE(v62) = 13;
  v50 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v203 = 14;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *(&v282[2] + 3) = v206;
  *(&v282[3] + 3) = v207;
  *(&v282[4] + 3) = v208;
  *(&v282[5] + 3) = v209;
  *(v282 + 3) = v204;
  *(&v282[1] + 3) = v205;
  LOBYTE(v62) = 15;
  v49 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v281 = BYTE4(v49) & 1;
  LOBYTE(v62) = 16;
  v48 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v278 = BYTE4(v48) & 1;
  v196 = 17;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *(&v267[2] + 3) = v199;
  *(&v267[3] + 3) = v200;
  *(&v267[4] + 3) = v201;
  *(&v267[5] + 3) = v202;
  *(v267 + 3) = v197;
  *(&v267[1] + 3) = v198;
  LOBYTE(v62) = 18;
  v47 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v266 = BYTE4(v47) & 1;
  LOBYTE(v62) = 19;
  v46 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v263 = BYTE4(v46) & 1;
  v189 = 20;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *(&v262[2] + 3) = v192;
  *(&v262[3] + 3) = v193;
  *(&v262[4] + 3) = v194;
  *(&v262[5] + 3) = v195;
  *(v262 + 3) = v190;
  *(&v262[1] + 3) = v191;
  LOBYTE(v62) = 21;
  v45 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v261 = BYTE4(v45) & 1;
  LOBYTE(v62) = 22;
  v44 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v258 = BYTE4(v44) & 1;
  v182 = 23;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *(&v257[2] + 3) = v185;
  *(&v257[3] + 3) = v186;
  *(&v257[4] + 3) = v187;
  *(&v257[5] + 3) = v188;
  *(v257 + 3) = v183;
  *(&v257[1] + 3) = v184;
  LOBYTE(v62) = 24;
  v43 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v256 = BYTE4(v43) & 1;
  LOBYTE(v62) = 25;
  v42 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v253 = BYTE4(v42) & 1;
  sub_1005B981C(&qword_101A19FA0, &unk_1014A92A8);
  v61[0] = 26;
  sub_100B99DB0(&qword_101A19FA8, &qword_101A19FA0, &unk_1014A92A8, &protocol conformance descriptor for <> CRExtensible<A>);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v41 = v62;
  v40 = v63;
  v175 = 27;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *(&v247[2] + 7) = v178;
  *(&v247[3] + 7) = v179;
  *(&v247[4] + 7) = v180;
  *(&v247[5] + 7) = v181;
  *(v247 + 7) = v176;
  *(&v247[1] + 7) = v177;
  LOBYTE(v62) = 28;
  v58 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v246 = BYTE4(v58) & 1;
  LOBYTE(v62) = 29;
  v39 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v243 = BYTE4(v39) & 1;
  LOBYTE(v62) = 30;
  v38 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v240 = BYTE4(v38) & 1;
  sub_1005B981C(&unk_101A0D960, &qword_10146E5F0);
  v173 = 31;
  sub_100600EA0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v60 + 8))(v8, v288);
  v31 = v174;
  *v61 = v57;
  v61[8] = v56;
  *&v61[41] = v287[2];
  *&v61[57] = v287[3];
  *&v61[73] = v287[4];
  *&v61[88] = *(&v287[4] + 15);
  *&v61[9] = v287[0];
  *&v61[25] = v287[1];
  *&v61[104] = v55;
  v30 = v286;
  v61[108] = v286;
  v61[111] = v285;
  *&v61[109] = v284;
  *&v61[112] = v54;
  v27 = v283;
  v61[116] = v283;
  *&v61[149] = v282[2];
  *&v61[165] = v282[3];
  *&v61[181] = v282[4];
  *&v61[192] = *(&v282[4] + 11);
  *&v61[117] = v282[0];
  *&v61[133] = v282[1];
  *&v61[208] = v49;
  v26 = v281;
  v61[212] = v281;
  v61[215] = v280;
  *&v61[213] = v279;
  *&v61[216] = v48;
  v25 = v278;
  v61[220] = v278;
  *&v61[296] = *(&v277[4] + 11);
  *&v61[269] = v277[3];
  *&v61[285] = v277[4];
  *&v61[237] = v277[1];
  *&v61[221] = v277[0];
  *&v61[253] = v277[2];
  v24 = v12;
  *&v61[312] = v12;
  v23 = v276;
  v61[316] = v276;
  *&v61[317] = v274;
  v61[319] = v275;
  *&v61[320] = v53;
  v22 = v273;
  v61[324] = v273;
  *&v61[325] = v272[0];
  *&v61[341] = v272[1];
  *&v61[373] = v272[3];
  *&v61[389] = v272[4];
  *&v61[357] = v272[2];
  *&v61[400] = *(&v272[4] + 11);
  v21 = v13;
  *&v61[416] = v13;
  v20 = v271;
  v61[420] = v271;
  *&v61[421] = v269;
  v61[423] = v270;
  v19 = v14;
  *&v61[424] = v14;
  v18 = v268;
  v61[428] = v268;
  *&v61[429] = v267[0];
  *&v61[445] = v267[1];
  *&v61[504] = *(&v267[4] + 11);
  *&v61[477] = v267[3];
  *&v61[493] = v267[4];
  *&v61[461] = v267[2];
  LODWORD(v14) = v47;
  *&v61[520] = v47;
  v17 = v266;
  v61[524] = v266;
  *&v61[525] = v264;
  v61[527] = v265;
  *&v61[528] = v46;
  LODWORD(v288) = v263;
  v61[532] = v263;
  *&v61[533] = v262[0];
  *&v61[549] = v262[1];
  *&v61[581] = v262[3];
  *&v61[597] = v262[4];
  *&v61[565] = v262[2];
  *&v61[608] = *(&v262[4] + 11);
  *&v61[624] = v45;
  LODWORD(v60) = v261;
  v61[628] = v261;
  *&v61[629] = v259;
  v61[631] = v260;
  *&v61[632] = v44;
  v37 = v258;
  v61[636] = v258;
  *&v61[637] = v257[0];
  *&v61[653] = v257[1];
  *&v61[712] = *(&v257[4] + 11);
  *&v61[685] = v257[3];
  *&v61[701] = v257[4];
  *&v61[669] = v257[2];
  *&v61[728] = v43;
  v36 = v256;
  v61[732] = v256;
  *&v61[733] = v254;
  v61[735] = v255;
  *&v61[736] = v42;
  v35 = v253;
  v61[740] = v253;
  *&v61[741] = v252[0];
  *&v61[757] = v252[1];
  *&v61[789] = v252[3];
  *&v61[805] = v252[4];
  *&v61[773] = v252[2];
  *&v61[816] = *(&v252[4] + 11);
  *&v61[832] = v52;
  v34 = v251;
  v61[836] = v251;
  *&v61[837] = v249;
  v61[839] = v250;
  *&v61[840] = v51;
  v33 = v248;
  v61[844] = v248;
  v61[845] = v50;
  *&v61[848] = v41;
  v61[856] = v40;
  *&v61[857] = v247[0];
  *&v61[873] = v247[1];
  *&v61[936] = *(&v247[4] + 15);
  *&v61[905] = v247[3];
  *&v61[921] = v247[4];
  *&v61[889] = v247[2];
  *&v61[952] = v58;
  *&v61[957] = v244;
  *&v61[965] = v241;
  v32 = v246;
  v61[956] = v246;
  v61[959] = v245;
  *&v61[960] = v39;
  *&v61[973] = v238;
  v29 = v243;
  v61[964] = v243;
  v61[967] = v242;
  *&v61[968] = v38;
  v61[975] = v239;
  v28 = v240;
  v61[972] = v240;
  *&v61[976] = v174;
  sub_100CA4BD4(v61, &v62);
  sub_100005070(v3);
  v62 = v57;
  v63 = v56;
  v69 = v55;
  v70 = v30;
  v73 = v54;
  v74 = v27;
  v80 = v49;
  v81 = v26;
  v84 = v48;
  v85 = v25;
  v91 = v24;
  v92 = v23;
  v95 = v53;
  v96 = v22;
  v102 = v21;
  v103 = v20;
  v106 = v19;
  v107 = v18;
  v113 = v14;
  v114 = v17;
  v66 = v287[2];
  v67 = v287[3];
  *v68 = v287[4];
  *&v68[15] = *(&v287[4] + 15);
  v64 = v287[0];
  v65 = v287[1];
  v71 = v284;
  v72 = v285;
  v77 = v282[2];
  v78 = v282[3];
  *v79 = v282[4];
  *&v79[11] = *(&v282[4] + 11);
  v75 = v282[0];
  v76 = v282[1];
  v83 = v280;
  v82 = v279;
  *&v90[11] = *(&v277[4] + 11);
  v89 = v277[3];
  *v90 = v277[4];
  v87 = v277[1];
  v86 = v277[0];
  v88 = v277[2];
  v93 = v274;
  v94 = v275;
  v97 = v272[0];
  v98 = v272[1];
  v100 = v272[3];
  *v101 = v272[4];
  v99 = v272[2];
  *&v101[11] = *(&v272[4] + 11);
  v104 = v269;
  v105 = v270;
  v108 = v267[0];
  v109 = v267[1];
  *&v112[11] = *(&v267[4] + 11);
  v111 = v267[3];
  *v112 = v267[4];
  v110 = v267[2];
  v115 = v264;
  v116 = v265;
  v117 = v46;
  v118 = v288;
  v119 = v262[0];
  v120 = v262[1];
  v122 = v262[3];
  *v123 = v262[4];
  v121 = v262[2];
  *&v123[11] = *(&v262[4] + 11);
  v124 = v45;
  v125 = v60;
  v126 = v259;
  v127 = v260;
  v128 = v44;
  v129 = v37;
  v130 = v257[0];
  v131 = v257[1];
  *&v134[11] = *(&v257[4] + 11);
  v133 = v257[3];
  *v134 = v257[4];
  v132 = v257[2];
  v135 = v43;
  v136 = v36;
  v137 = v254;
  v138 = v255;
  v139 = v42;
  v140 = v35;
  v141 = v252[0];
  v142 = v252[1];
  v144 = v252[3];
  *v145 = v252[4];
  v143 = v252[2];
  *&v145[11] = *(&v252[4] + 11);
  v146 = v52;
  v147 = v34;
  v148 = v249;
  v149 = v250;
  v150 = v51;
  v151 = v33;
  v152 = v50;
  v153 = v41;
  v154 = v40;
  v155 = v247[0];
  v156 = v247[1];
  *&v159[15] = *(&v247[4] + 15);
  v158 = v247[3];
  *v159 = v247[4];
  v157 = v247[2];
  v160 = v58;
  v161 = v32;
  v162 = v244;
  v163 = v245;
  v164 = v39;
  v165 = v29;
  v166 = v241;
  v167 = v242;
  v168 = v38;
  v169 = v28;
  v170 = v238;
  v171 = v239;
  v172 = v31;
  sub_100CA4548(&v62);
  return memcpy(v59, v61, 0x3D8uLL);
}

id sub_100CA40E4(uint64_t a1, unint64_t a2)
{
  sub_100024E98(a1, a2);
  sub_100CA44F4();
  CRValue.init(serializedData:)();
  memcpy(__dst, __src, 0x3D8uLL);
  return sub_100C9F750(__dst);
}

unint64_t sub_100CA44F4()
{
  result = qword_101A19F08;
  if (!qword_101A19F08)
  {
    result = swift_getWitnessTable("٪8", &type metadata for CRLFreehandDrawingToolkitUIStateData, v0, v1);
    atomic_store(result, &qword_101A19F08);
  }

  return result;
}

uint64_t sub_100CA4578(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100CA4598(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 984))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 976);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100CA45E0(uint64_t result, int a2, int a3)
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
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 984) = 1;
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
      *(result + 976) = (a2 - 1);
      return result;
    }

    *(result + 984) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100CA4734()
{
  result = qword_101A19F10;
  if (!qword_101A19F10)
  {
    result = swift_getWitnessTable(byte_1014A8F48, &type metadata for CRLFreehandDrawingToolkitUIStateData, v0, v1);
    atomic_store(result, &qword_101A19F10);
  }

  return result;
}

unint64_t sub_100CA4790()
{
  result = qword_101A19F18;
  if (!qword_101A19F18)
  {
    result = swift_getWitnessTable("٨8", &type metadata for CRLFreehandDrawingToolkitUIStateData, v0, v1);
    atomic_store(result, &qword_101A19F18);
  }

  return result;
}

unint64_t sub_100CA47E8()
{
  result = qword_101A19F20;
  if (!qword_101A19F20)
  {
    result = swift_getWitnessTable(byte_1014A9010, &type metadata for CRLFreehandDrawingToolkitUIStateData, v0, v1);
    atomic_store(result, &qword_101A19F20);
  }

  return result;
}

unint64_t sub_100CA4840()
{
  result = qword_101A19F28;
  if (!qword_101A19F28)
  {
    result = swift_getWitnessTable(byte_1014A90A8, &type metadata for CRLFreehandDrawingToolkitUIStateData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A19F28);
  }

  return result;
}

unint64_t sub_100CA4898()
{
  result = qword_101A19F30;
  if (!qword_101A19F30)
  {
    result = swift_getWitnessTable(asc_1014A91C0, &type metadata for CRLFreehandDrawingToolkitUIStateData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A19F30);
  }

  return result;
}

unint64_t sub_100CA48F0()
{
  result = qword_101A19F38;
  if (!qword_101A19F38)
  {
    result = swift_getWitnessTable(byte_1014A9188, &type metadata for CRLFreehandDrawingToolkitUIStateData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A19F38);
  }

  return result;
}

unint64_t sub_100CA4948()
{
  result = qword_101A19F40;
  if (!qword_101A19F40)
  {
    result = swift_getWitnessTable(aY_84, &type metadata for CRLFreehandDrawingToolkitUIStateData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A19F40);
  }

  return result;
}

unint64_t sub_100CA49A0()
{
  result = qword_101A19F48;
  if (!qword_101A19F48)
  {
    result = swift_getWitnessTable(byte_1014A9158, &type metadata for CRLFreehandDrawingToolkitUIStateData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A19F48);
  }

  return result;
}

unint64_t sub_100CA49F8()
{
  result = qword_101A19F50;
  if (!qword_101A19F50)
  {
    result = swift_getWitnessTable(byte_1014A9130, &type metadata for CRLFreehandDrawingToolkitUIStateData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A19F50);
  }

  return result;
}

unint64_t sub_100CA4A50()
{
  result = qword_101A19F58;
  if (!qword_101A19F58)
  {
    v3 = sub_1005C4E5C(&qword_101A19F60, &qword_1014A9180);
    result = swift_getWitnessTable(&protocol conformance descriptor for [A], v3, v0, v1);
    atomic_store(result, &qword_101A19F58);
  }

  return result;
}

unint64_t sub_100CA4AB8()
{
  result = qword_101A19F68;
  if (!qword_101A19F68)
  {
    result = swift_getWitnessTable(byte_1014A9060, &type metadata for CRLFreehandDrawingToolkitUIStateData, v0, v1);
    atomic_store(result, &qword_101A19F68);
  }

  return result;
}

unint64_t sub_100CA4B10()
{
  result = qword_101A19F70;
  if (!qword_101A19F70)
  {
    result = swift_getWitnessTable("Ѫ8", &type metadata for CRLFreehandDrawingToolkitUIStateData, v0, v1);
    atomic_store(result, &qword_101A19F70);
  }

  return result;
}

uint64_t sub_100CA4B64(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_101A19F78, &qword_1014A9288);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100CA4C0C()
{
  result = qword_101A19FC8;
  if (!qword_101A19FC8)
  {
    result = swift_getWitnessTable(byte_1014A9210, &type metadata for CRLFreehandDrawingToolkitUIStateData, v0, v1);
    atomic_store(result, &qword_101A19FC8);
  }

  return result;
}

unint64_t sub_100CA4C60()
{
  result = qword_101A19FD0;
  if (!qword_101A19FD0)
  {
    result = swift_getWitnessTable(byte_1014A91E8, &type metadata for CRLFreehandDrawingToolkitUIStateData, v0, v1);
    atomic_store(result, &qword_101A19FD0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CRLFreehandDrawingToolkitUIStateData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE1)
  {
    goto LABEL_17;
  }

  if (a2 + 31 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 31) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 31;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 31;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 31;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x20;
  v8 = v6 - 32;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CRLFreehandDrawingToolkitUIStateData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 31 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 31) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE1)
  {
    v4 = 0;
  }

  if (a2 > 0xE0)
  {
    v5 = ((a2 - 225) >> 8) + 1;
    *result = a2 + 31;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 31;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100CA4E08()
{
  result = qword_101A19FD8;
  if (!qword_101A19FD8)
  {
    result = swift_getWitnessTable(byte_1014A9344, &type metadata for CRLFreehandDrawingToolkitUIStateData.CodingKeys, v0, v1);
    atomic_store(result, &qword_101A19FD8);
  }

  return result;
}

uint64_t sub_100CA4E5C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 57))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 56);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100CA4EBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2 + 2;
    }
  }

  return result;
}

void *sub_100CA4F20@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    if (*(v2 + 40))
    {
      v6 = 0.5;
    }

    else
    {
      v6 = *(v2 + 24);
    }

    if (*(v2 + 40))
    {
      v7 = 0.5;
    }

    else
    {
      v7 = *(v2 + 32);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      Strong = v5;
    }

    v9 = *(v2 + 56);
    v10 = *(v2 + 8);
    v11 = Strong;
    CATransform3DMakeScale(&v74, v10, v10, 1.0);
    v12 = v11;
    [v5 anchorPoint];
    v14 = v13;
    v16 = v15;
    [v5 bounds];
    v18 = sub_10011FFCC(v14, v16, v17);
    CATransform3DMakeTranslation(&v75, v18, v19, 1.0);
    if (v9)
    {
      v20 = *&CATransform3DIdentity.m33;
      *&v73.m31 = *&CATransform3DIdentity.m31;
      *&v73.m33 = v20;
      v21 = *&CATransform3DIdentity.m43;
      *&v73.m41 = *&CATransform3DIdentity.m41;
      *&v73.m43 = v21;
      v22 = *&CATransform3DIdentity.m13;
      *&v73.m11 = *&CATransform3DIdentity.m11;
      *&v73.m13 = v22;
      v23 = *&CATransform3DIdentity.m23;
      *&v73.m21 = *&CATransform3DIdentity.m21;
      *&v73.m23 = v23;
    }

    else
    {
      sub_100C005E0(v5, v12, &b);
      a = v75;
      CATransform3DConcat(&v73, &a, &b);
    }

    [v12 bounds];
    [v12 bounds];
    v25 = v24;
    [v12 bounds];
    [v12 bounds];
    [v12 bounds];
    [v12 bounds];
    v27 = -v25;
    if (v25 <= 0.001)
    {
      v27 = -0.001;
    }

    v28 = v6 * v27;
    v29 = -v26;
    if (v26 <= 0.001)
    {
      v29 = -0.001;
    }

    CATransform3DMakeTranslation(&v67, v28, v7 * v29, 1.0);
    a = v67;
    b = v74;
    CATransform3DConcat(&v68, &a, &b);
    a = v67;
    CATransform3DInvert(&b, &a);
    a = v68;
    CATransform3DConcat(&v70, &a, &b);
    a = v73;
    CATransform3DConcat(&v69, &a, &v70);
    a = v73;
    CATransform3DInvert(&b, &a);
    a = v69;
    CATransform3DConcat(&v70, &a, &b);
    CATransform3DGetAffineTransform(&a, &v70);
    CATransform3DMakeAffineTransform(&v70, &a);

    CATransform3DMakeScale(&b, *(v2 + 16), *(v2 + 16), 1.0);
    v30 = v12;
    [v5 anchorPoint];
    v32 = v31;
    v34 = v33;
    [v5 bounds];
    v36 = sub_10011FFCC(v32, v34, v35);
    CATransform3DMakeTranslation(&a, v36, v37, 1.0);
    if (v9)
    {
      v38 = *&CATransform3DIdentity.m33;
      *&v66.m31 = *&CATransform3DIdentity.m31;
      *&v66.m33 = v38;
      v39 = *&CATransform3DIdentity.m43;
      *&v66.m41 = *&CATransform3DIdentity.m41;
      *&v66.m43 = v39;
      v40 = *&CATransform3DIdentity.m13;
      *&v66.m11 = *&CATransform3DIdentity.m11;
      *&v66.m13 = v40;
      v41 = *&CATransform3DIdentity.m23;
      *&v66.m21 = *&CATransform3DIdentity.m21;
      *&v66.m23 = v41;
    }

    else
    {
      sub_100C005E0(v5, v30, &v64);
      v65 = a;
      CATransform3DConcat(&v66, &v65, &v64);
    }

    [v30 bounds];
    [v30 bounds];
    v43 = v42;
    [v30 bounds];
    [v30 bounds];
    [v30 bounds];
    [v30 bounds];
    v45 = -v43;
    if (v43 <= 0.001)
    {
      v45 = -0.001;
    }

    v46 = v6 * v45;
    v47 = -v44;
    if (v44 <= 0.001)
    {
      v47 = -0.001;
    }

    CATransform3DMakeTranslation(&v62, v46, v7 * v47, 1.0);
    v65 = v62;
    v64 = b;
    CATransform3DConcat(&v63, &v65, &v64);
    v65 = v62;
    CATransform3DInvert(&v64, &v65);
    v65 = v63;
    CATransform3DConcat(&v61, &v65, &v64);
    v65 = v66;
    CATransform3DConcat(&v64, &v65, &v61);
    v65 = v66;
    CATransform3DInvert(&v61, &v65);
    v65 = v64;
    CATransform3DConcat(&v60, &v65, &v61);
    CATransform3DGetAffineTransform(&v65, &v60);
    *&v61.m11 = *&v65.m11;
    *&v61.m13 = *&v65.m13;
    *&v61.m21 = *&v65.m21;
    CATransform3DMakeAffineTransform(&v65, &v61);

    type metadata accessor for CATransform3D(0);
    v49 = v48;
    v61.m14 = v48;
    v50 = swift_allocObject();
    *&v61.m11 = v50;
    v51 = *&v70.m33;
    v50[5] = *&v70.m31;
    v50[6] = v51;
    v52 = *&v70.m43;
    v50[7] = *&v70.m41;
    v50[8] = v52;
    v53 = *&v70.m13;
    v50[1] = *&v70.m11;
    v50[2] = v53;
    v54 = *&v70.m23;
    v50[3] = *&v70.m21;
    v50[4] = v54;
    v60.m14 = v49;
    v55 = swift_allocObject();
    *&v60.m11 = v55;
    v56 = *&v65.m33;
    v55[5] = *&v65.m31;
    v55[6] = v56;
    v57 = *&v65.m43;
    v55[7] = *&v65.m41;
    v55[8] = v57;
    v58 = *&v65.m13;
    v55[1] = *&v65.m11;
    v55[2] = v58;
    v59 = *&v65.m23;
    v55[3] = *&v65.m21;
    v55[4] = v59;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 64) = 26;

    *(a1 + 72) = 0x726F66736E617274;
    *(a1 + 80) = 0xE90000000000006DLL;
    sub_1006A430C(&v61, a1);
    return sub_1006A430C(&v60, a1 + 32);
  }

  else
  {
    *(a1 + 80) = 0;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  return result;
}

uint64_t sub_100CA572C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  result = swift_unknownObjectWeakLoadStrong();
  v9 = *(v1 + 56);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = result;
  *(a1 + 48) = v9;
  *(a1 + 256) = 74;
  return result;
}

unint64_t sub_100CA57A0(uint64_t a1)
{
  result = sub_100CA57C8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100CA57C8()
{
  result = qword_101A19FE0;
  if (!qword_101A19FE0)
  {
    result = swift_getWitnessTable("ݠ8", &type metadata for CRLLayerTransformByScaleFactorTransition, v0, v1);
    atomic_store(result, &qword_101A19FE0);
  }

  return result;
}

BOOL sub_100CA581C(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = swift_unknownObjectWeakLoadStrong();
  v6 = v5;
  if (Strong)
  {
    if (!v5)
    {
      goto LABEL_19;
    }

    sub_1009354E4();
    v7 = static NSObject.== infix(_:_:)();

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    goto LABEL_6;
  }

  if (*(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  if (*(a1 + 40))
  {
    if ((*(a2 + 40) & 1) == 0)
    {
      return 0;
    }

LABEL_15:
    Strong = swift_unknownObjectWeakLoadStrong();
    v9 = swift_unknownObjectWeakLoadStrong();
    v6 = v9;
    if (Strong)
    {
      if (v9)
      {
        sub_1009354E4();
        v10 = static NSObject.== infix(_:_:)();

        if ((v10 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_23;
      }

LABEL_19:

      return 0;
    }

    if (!v9)
    {
LABEL_23:
      v11 = *(a1 + 56);
      v12 = *(a2 + 56);
      if (v11 != 2)
      {
        return v12 != 2 && ((v12 ^ v11) & 1) == 0;
      }

      return v12 == 2;
    }

LABEL_6:

    return 0;
  }

  if (*(a2 + 40))
  {
    return 0;
  }

  result = 0;
  if (*(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32))
  {
    goto LABEL_15;
  }

  return result;
}

void sub_100CA598C(void *a1, uint64_t a2, unsigned int a3)
{
  v72 = a2;
  v4 = v3;
  v66 = a3;
  v6 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v67 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v65 - v7;
  v9 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v9);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v12 - 8);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v16 = [a1 getBoardItemForUUID:isa];

  if (!v16)
  {
    goto LABEL_31;
  }

  v68 = v6;
  type metadata accessor for CRLWPShapeItem(0);
  v17 = swift_dynamicCastClass();
  if (!v17)
  {
LABEL_30:

LABEL_31:
    v40 = objc_opt_self();
    v41 = [v40 _atomicIncrementAssertCount];
    v76 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v76, "Unable to retrieve board item", 29, 2u);
    StaticString.description.getter("commit(with:transaction:undoable:)", 34, 2);
    v42 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Commands/CRLWPRemoveHyperlinkCommand.swift", 102, 2);
    v43 = String._bridgeToObjectiveC()();

    v44 = [v43 lastPathComponent];

    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v46;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v48 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v41;
    v50 = sub_1005CF000();
    *(inited + 96) = v50;
    v51 = sub_1005CF04C();
    *(inited + 104) = v51;
    *(inited + 72) = v42;
    *(inited + 136) = &type metadata for String;
    v52 = sub_1000053B0();
    *(inited + 112) = v45;
    *(inited + 120) = v47;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v52;
    *(inited + 152) = 23;
    v53 = v76;
    *(inited + 216) = v50;
    *(inited + 224) = v51;
    *(inited + 192) = v53;
    v54 = v42;
    v55 = v53;
    v56 = static os_log_type_t.error.getter();
    sub_100005404(v48, &_mh_execute_header, v56, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

    v57 = static os_log_type_t.error.getter();
    sub_100005404(v48, &_mh_execute_header, v57, "Unable to retrieve board item", 29, 2, _swiftEmptyArrayStorage);

    sub_10063DF98(_swiftEmptyArrayStorage, "Unable to retrieve board item");
    type metadata accessor for __VaListBuilder();
    v58 = swift_allocObject();
    v58[2] = 8;
    v58[3] = 0;
    v58[4] = 0;
    v58[5] = 0;
    v59 = __VaListBuilder.va_list()();
    StaticString.description.getter("commit(with:transaction:undoable:)", 34, 2);
    v60 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Commands/CRLWPRemoveHyperlinkCommand.swift", 102, 2);
    v61 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Unable to retrieve board item", 29, 2);
    v62 = String._bridgeToObjectiveC()();

    [v40 handleFailureInFunction:v60 file:v61 lineNumber:23 isFatal:1 format:v62 args:v59];

    SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v63, v64);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v70 = v16;
  v71 = v17;
  v18 = *(v17 + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v18)
  {
    goto LABEL_28;
  }

  v19 = v4 + OBJC_IVAR____TtC8Freeform27CRLWPRemoveHyperlinkCommand_range;
  v20 = *(v4 + OBJC_IVAR____TtC8Freeform27CRLWPRemoveHyperlinkCommand_range);
  v16 = *(v19 + 8);
  v76 = v20;
  v77 = v16;
  if (__OFSUB__(v16, v20))
  {
    __break(1u);
    goto LABEL_25;
  }

  v69 = v18;
  if (v16 == v20)
  {
    v74 = 0;
    v75 = 0;

    v21 = v74;
    v22 = v75;
    v23 = NSNotFound.getter();
    v24 = v20;
    v25 = v73;
    v26 = v71;
    if (v21 != v23)
    {
      v24 = v21 + v22;
      if (__OFADD__(v21, v22))
      {
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
      }

      v20 = v21;
    }

    goto LABEL_17;
  }

  v27 = *&v18[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v27)
  {
    __break(1u);
    goto LABEL_30;
  }

  (*(*v27 + 896))();
  sub_1005E0A78(&v11[*(v9 + 20)], v14);
  v65 = v18;
  sub_1005E0ADC(v11, type metadata accessor for CRLWPShapeItemCRDTData);
  v28 = v67;
  v29 = v68;
  (*(v67 + 16))(v8, v14, v68);
  sub_1005E0ADC(v14, type metadata accessor for CRLWPStorageCRDTData);
  v30 = CRAttributedString.count.getter();
  (*(v28 + 8))(v8, v29);
  if (v30 >= (v20 & ~(v20 >> 63)))
  {
    v31 = v20 & ~(v20 >> 63);
  }

  else
  {
    v31 = v30;
  }

  v32 = v16 & ~(v16 >> 63);
  if (v32 < v31)
  {
    goto LABEL_26;
  }

  if (v30 >= v32)
  {
    v30 = (v16 & ~(v16 >> 63));
  }

  KeyPath = swift_getKeyPath();
  v34 = v65;
  sub_100A45F54(KeyPath, v34, v31, v30, v34, &v76);

  v20 = v76;
  v24 = v77;
  v25 = v73;
  v26 = v71;
LABEL_17:
  if (__OFSUB__(v24, v20))
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v24 - v20 < 1)
  {

    goto LABEL_22;
  }

  v35 = v70;
  sub_1012E0400(v26, &off_10188FE10);

  if (v25)
  {

LABEL_22:
    return;
  }

  v36 = swift_getKeyPath();
  v37 = v20;
  v38 = v69;
  sub_1008223B8(v36, v37, v24);

  v39 = v35;
  sub_1012CF6CC(v26, &off_10188FE10, v66);
}

uint64_t sub_100CA61D4()
{
  v1 = OBJC_IVAR____TtC8Freeform27CRLWPRemoveHyperlinkCommand_boardItemID;
  v2 = type metadata accessor for UUID();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id sub_100CA623C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLWPRemoveHyperlinkCommand(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLWPRemoveHyperlinkCommand(uint64_t a1)
{
  result = qword_101A1A010;
  if (!qword_101A1A010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100CA6334(uint64_t a1)
{
  result = type metadata accessor for UUID();
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

uint64_t sub_100CA6410(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 104);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100CA6458(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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
      *(result + 104) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100CA64C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100041E54(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100061AF0(v11);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
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

uint64_t sub_100CA6768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100041E54(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100061AF0(v11);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
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

      sub_1005B981C(&unk_1019F6B20, &qword_10146F8F0);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      return v22;
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

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_1005B981C(&unk_1019F6B20, &qword_10146F8F0);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100CA6A1C()
{
  v1[36] = v0;
  type metadata accessor for MainActor();
  v1[37] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[38] = v3;
  v1[39] = v2;

  return _swift_task_switch(sub_100CA6AB4, v3, v2);
}

uint64_t sub_100CA6AB4()
{
  v1 = [*(v0[36] + 104) canvas];
  v0[40] = v1;
  if (qword_1019F2098 != -1)
  {
    swift_once();
  }

  v2 = static OS_os_log.crlDefault;
  v0[41] = static OS_os_log.crlDefault;
  v0[42] = sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v4 = [v1 topLevelReps];
  v0[43] = sub_100006370(0, &qword_1019FB7A0, off_10182F798);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(inited + 56) = &type metadata for Int;
  *(inited + 64) = &protocol witness table for Int;
  *(inited + 32) = v6;
  v7 = static os_log_type_t.info.getter();
  sub_100005404(v2, &_mh_execute_header, v7, "CRLCanvasExporter.prepareForPrinting started for %ld topLevelReps", 65, 2, inited);
  swift_setDeallocating();
  sub_100005070((inited + 32));
  v8 = [v1 topLevelReps];
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v0[44] = v9;

  if (v9 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
    v0[45] = v10;
    if (v10)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[45] = v10;
    if (v10)
    {
LABEL_7:
      if (v10 >= 1)
      {
        v0[46] = 0;
        v11 = v0[44];
        if ((v11 & 0xC000000000000001) != 0)
        {
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v12 = *(v11 + 32);
        }

        v13 = v12;
        v0[47] = v12;
        v0[2] = v0;
        v0[3] = sub_100CA6F00;
        v14 = swift_continuation_init();
        v0[35] = sub_1005B981C(&qword_101A14AA0, &unk_10148DF50);
        v0[28] = _NSConcreteStackBlock;
        v0[29] = *"";
        v0[30] = sub_100675B28;
        v0[31] = &unk_10189F490;
        v0[32] = v14;
        [v13 prepareForPrintingWithCompletionHandler:v0 + 28];

        return _swift_continuation_await(v0 + 2);
      }

      __break(1u);
      goto LABEL_22;
    }
  }

  v15 = v0[40];

  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_10146C6B0;
  v16 = [v15 topLevelReps];
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v17 >> 62)
  {
LABEL_22:
    v18 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_18;
  }

  v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_18:
  v20 = v0[40];
  v19 = v0[41];

  *(v9 + 56) = &type metadata for Int;
  *(v9 + 64) = &protocol witness table for Int;
  *(v9 + 32) = v18;
  v21 = static os_log_type_t.info.getter();
  sub_100005404(v19, &_mh_execute_header, v21, "CRLCanvasExporter.prepareForPrinting completed for %ld topLevelReps", 67, 2, v9);

  swift_setDeallocating();
  sub_100005070((v9 + 32));
  v22 = v0[1];

  return v22();
}

uint64_t sub_100CA6F00()
{
  v1 = *(*v0 + 312);
  v2 = *(*v0 + 304);

  return _swift_task_switch(sub_100CA7008, v2, v1);
}

uint64_t sub_100CA7008()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 360);

  if (v1 + 1 == v2)
  {
    v3 = *(v0 + 320);

    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v5 = [v3 topLevelReps];
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v6 >> 62)
    {
      v7 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = *(v0 + 320);
    v8 = *(v0 + 328);

    *(inited + 56) = &type metadata for Int;
    *(inited + 64) = &protocol witness table for Int;
    *(inited + 32) = v7;
    v10 = static os_log_type_t.info.getter();
    sub_100005404(v8, &_mh_execute_header, v10, "CRLCanvasExporter.prepareForPrinting completed for %ld topLevelReps", 67, 2, inited);

    swift_setDeallocating();
    sub_100005070((inited + 32));
    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v13 = *(v0 + 368) + 1;
    *(v0 + 368) = v13;
    v14 = *(v0 + 352);
    if ((v14 & 0xC000000000000001) != 0)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v15 = *(v14 + 8 * v13 + 32);
    }

    v16 = v15;
    *(v0 + 376) = v15;
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_100CA6F00;
    v17 = swift_continuation_init();
    *(v0 + 280) = sub_1005B981C(&qword_101A14AA0, &unk_10148DF50);
    *(v0 + 224) = _NSConcreteStackBlock;
    *(v0 + 232) = *"";
    *(v0 + 240) = sub_100675B28;
    *(v0 + 248) = &unk_10189F490;
    *(v0 + 256) = v17;
    [v16 prepareForPrintingWithCompletionHandler:v0 + 224];

    return _swift_continuation_await(v0 + 16);
  }
}

uint64_t sub_100CA72A0(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v5 + 256) = a2;
  *(v5 + 264) = v4;
  *(v5 + 289) = a4;
  *(v5 + 288) = a3;
  *(v5 + 248) = a1;
  return _swift_task_switch(sub_100CA72CC, 0, 0);
}

uint64_t sub_100CA72CC()
{
  v39 = v0;
  v1._countAndFlagsBits = 6710384;
  v1._object = 0xE300000000000000;
  if (String.hasSuffix(_:)(v1))
  {
    v37 = objc_opt_self();
    v2 = [v37 _atomicIncrementAssertCount];
    v38 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v38, "The title should not already have pdf applied to it.", 52, 2u);
    StaticString.description.getter("exportAsPDFToTemporaryURL(title:forPrinting:scenesOnly:)", 56, 2);
    v3 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasExporter.swift", 87, 2);
    v4 = String._bridgeToObjectiveC()();

    v5 = [v4 lastPathComponent];

    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v9 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v2;
    v11 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v11;
    v12 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
    *(inited + 104) = v12;
    *(inited + 72) = v3;
    *(inited + 136) = &type metadata for String;
    v13 = sub_1000053B0();
    *(inited + 112) = v6;
    *(inited + 120) = v8;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v13;
    *(inited + 152) = 77;
    v14 = v38;
    *(inited + 216) = v11;
    *(inited + 224) = v12;
    *(inited + 192) = v14;
    v15 = v3;
    v16 = v14;
    v17 = static os_log_type_t.error.getter();
    sub_100005404(v9, &_mh_execute_header, v17, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v18 = static os_log_type_t.error.getter();
    sub_100005404(v9, &_mh_execute_header, v18, "The title should not already have pdf applied to it.", 52, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v19 = swift_allocObject();
    v19[2] = 8;
    v19[3] = 0;
    v19[4] = 0;
    v19[5] = 0;
    v20 = __VaListBuilder.va_list()();
    StaticString.description.getter("exportAsPDFToTemporaryURL(title:forPrinting:scenesOnly:)", 56, 2);
    v21 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLCanvas/CRLCanvasExporter.swift", 87, 2);
    v22 = String._bridgeToObjectiveC()();

    StaticString.description.getter("The title should not already have pdf applied to it.", 52, 2);
    v23 = String._bridgeToObjectiveC()();

    [v37 handleFailureInFunction:v21 file:v22 lineNumber:77 isFatal:0 format:v23 args:v20];
  }

  v24 = String._bridgeToObjectiveC()();
  v25 = String._bridgeToObjectiveC()();
  v26 = [v24 crl_filenameFromDisplayNameWithExtension:v25];

  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  type metadata accessor for CRLTemporaryFile(0);
  swift_allocObject();
  v30 = sub_1009A380C(v27, v29);
  *(v0 + 272) = v30;
  v31 = v30;
  v32 = OBJC_IVAR____TtC8Freeform16CRLTemporaryFile_url;
  v33 = swift_task_alloc();
  *(v0 + 280) = v33;
  *v33 = v0;
  v33[1] = sub_100CA7804;
  v34 = *(v0 + 289);
  v35 = *(v0 + 288);

  return sub_100CA7AF0(v31 + v32, v35, v34);
}

uint64_t sub_100CA7804()
{
  v1 = *v0;
  v5 = *v0;

  v2 = *(v5 + 8);
  v3 = *(v1 + 272);

  return v2(v3);
}

unint64_t sub_100CA7914(uint64_t a1)
{
  v3 = *(v1 + 104);
  result = [v3 setIsPrinting:1];
  if (*(v1 + 49))
  {
    v5 = *(v1 + 8);
    if (!v5)
    {
      return result;
    }

    result = *(v1 + 96);
    if ((v5 & 0xC000000000000001) == 0)
    {
      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (result < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v6 = *(v5 + 8 * result + 32) + OBJC_IVAR____TtC8Freeform12CRLSceneInfo_savedUnscaledRect;
        v7 = *v6;
        v8 = *(v6 + 8);
        v9 = *(v6 + 16);
        v10 = *(v6 + 24);
        if (*(v1 + 50))
        {
          goto LABEL_7;
        }

        goto LABEL_9;
      }

      __break(1u);
      return result;
    }

    v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v16 = *(v15 + OBJC_IVAR____TtC8Freeform12CRLSceneInfo_savedUnscaledRect);
    v17 = *(v15 + OBJC_IVAR____TtC8Freeform12CRLSceneInfo_savedUnscaledRect + 8);
    v9 = *(v15 + OBJC_IVAR____TtC8Freeform12CRLSceneInfo_savedUnscaledRect + 16);
    v10 = *(v15 + OBJC_IVAR____TtC8Freeform12CRLSceneInfo_savedUnscaledRect + 24);
    swift_unknownObjectRelease();
    v8 = v17;
    v7 = v16;
    if (*(v1 + 50))
    {
LABEL_7:
      if ((*(v1 + 88) & 1) == 0)
      {
        v7 = sub_100121F30(1, *(v1 + 72), *(v1 + 80), v7, v8, v9, v10);
        v9 = v11;
        v10 = v12;
      }
    }

LABEL_9:
    [v3 setUnscaledClipRect:{v7, v8, v9, v10}];
    v13 = 1.0;
    if ((*(v1 + 48) & 1) == 0)
    {
      v14 = *(v1 + 40) / v10;
      if (v14 >= *(v1 + 32) / v9)
      {
        v14 = *(v1 + 32) / v9;
      }

      v13 = floor(v14 * 100.0) / 100.0;
    }

    goto LABEL_14;
  }

  [v3 setUnscaledClipRect:{CGRectInfinite.origin.x, CGRectInfinite.origin.y, CGRectInfinite.size.width, CGRectInfinite.size.height}];
  v13 = *v1;
LABEL_14:
  [v3 setViewScale:v13];

  return [v3 drawPageInContext:a1 createPage:1 includeMargin:0];
}

uint64_t sub_100CA7AF0(uint64_t a1, char a2, char a3)
{
  *(v4 + 218) = a3;
  *(v4 + 217) = a2;
  *(v4 + 144) = a1;
  *(v4 + 152) = v3;
  v5 = type metadata accessor for URL();
  *(v4 + 160) = v5;
  v6 = *(v5 - 8);
  *(v4 + 168) = v6;
  *(v4 + 176) = *(v6 + 64);
  *(v4 + 184) = swift_task_alloc();
  sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  *(v4 + 192) = swift_task_alloc();

  return _swift_task_switch(sub_100CA7BF8, 0, 0);
}

uint64_t sub_100CA7BF8()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 168);
  v4 = *(v0 + 176);
  v5 = *(v0 + 152);
  v6 = *(v0 + 160);
  v7 = *(v0 + 218);
  v8 = *(v0 + 144);
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v1, 1, 1, v9);
  (*(v3 + 16))(v2, v8, v6);
  v10 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  (*(v3 + 32))(v11 + v10, v2, v6);
  v12 = v11 + ((v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  v13 = *v5;
  v14 = v5[1];
  v15 = v5[3];
  *(v12 + 32) = v5[2];
  *(v12 + 48) = v15;
  *v12 = v13;
  *(v12 + 16) = v14;
  v16 = v5[4];
  v17 = v5[5];
  v18 = v5[7];
  *(v12 + 96) = v5[6];
  *(v12 + 112) = v18;
  *(v12 + 64) = v16;
  *(v12 + 80) = v17;
  *(v12 + 128) = v7;
  sub_1008BE39C(v5, v0 + 16);
  v19 = sub_100CA64C8(0, 0, v1, &unk_1014A9628, v11);
  *(v0 + 200) = v19;
  sub_100061AF0(v1);
  v20 = swift_task_alloc();
  *(v0 + 208) = v20;
  *v20 = v0;
  v20[1] = sub_100CA7E00;

  return Task.result.getter(v0 + 216, v19, &type metadata for () + 8, &type metadata for Never, &protocol witness table for Never);
}

uint64_t sub_100CA7E00()
{

  return _swift_task_switch(sub_100CA7EFC, 0, 0);
}

uint64_t sub_100CA7EFC()
{
  v1 = *(v0 + 217);
  v2 = objc_opt_self();
  v3 = String._bridgeToObjectiveC()();
  if (v1)
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  _s8Freeform23CRLAnalyticsFeatureUsedC14featurePayload3forSDySSSo8NSObjectCGAA0bC4NameO_tFZ_0(v4);
  sub_100006370(0, &qword_1019F54D0, NSObject_ptr);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v2 sendEventInDomain:v3 lazily:1 eventPayload:isa];

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100CA803C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 304) = a6;
  *(v6 + 288) = a4;
  *(v6 + 296) = a5;
  return _swift_task_switch(sub_100CA8060, 0, 0);
}

uint64_t sub_100CA8060@<X0>(NSURL *a1@<X8>)
{
  URL._bridgeToObjectiveC()(a1);
  v4 = v3;
  v5 = CGPDFContextCreateWithURL(v3, 0, 0);

  if (!v5)
  {
    goto LABEL_36;
  }

  v6 = *(v1 + 304);
  v7 = v1[37];
  v8 = *(v7 + 112);
  v9 = v5;
  [v8 setCgContext:v9];
  sub_10050F4D4(v9, v8);
  v10 = *(v7 + 104);
  v1[20] = sub_100CA86EC;
  v1[21] = 0;
  v1[16] = _NSConcreteStackBlock;
  v1[17] = *"";
  v1[18] = sub_100CA89C4;
  v1[19] = &unk_10189F3F0;
  v11 = _Block_copy(v1 + 16);
  v12 = v10;

  [v12 setPostRenderAction:v11];
  _Block_release(v11);
  if (v6 == 1)
  {
    v13 = *(v1[37] + 8);
    if (!v13)
    {

      goto LABEL_36;
    }

    if (v13 >> 62)
    {
      v14 = _CocoaArrayWrapper.endIndex.getter();
      if (v14)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v14)
      {
LABEL_6:
        v51 = v8;
        if (v14 < 1)
        {
          __break(1u);
          swift_once();
          v40 = static OS_os_log.crlDefault;
          sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10146BDE0;
          swift_getErrorValue();
          v42 = Error.publicDescription.getter(v1[29], v1[30]);
          v44 = v43;
          *(inited + 56) = &type metadata for String;
          v45 = sub_1000053B0();
          *(inited + 64) = v45;
          *(inited + 32) = v42;
          *(inited + 40) = v44;
          swift_getErrorValue();
          v46 = Error.fullDescription.getter(v1[32]);
          *(inited + 96) = &type metadata for String;
          *(inited + 104) = v45;
          *(inited + 72) = v46;
          *(inited + 80) = v47;
          v48 = static os_log_type_t.error.getter();
          sub_100005404(v40, &_mh_execute_header, v48, "Error labeling PDF: %{public}@ <%@>", 35, 2, inited);

          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
          swift_arrayDestroy();
          goto LABEL_36;
        }

        v15 = 0;
        v16 = v1[37];
        v17 = *(v16 + 72);
        v18 = *(v16 + 80);
        v19 = *(v16 + 88);
        v54 = *(v16 + 120);
        v53 = v13 & 0xC000000000000001;
        v52 = OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer;
        v56 = v14;
        v57 = v13;
        v55 = v19;
        do
        {
          if (v53)
          {
            v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v20 = *(v13 + 8 * v15 + 32);
          }

          v21 = v20;
          v22 = *&v20[OBJC_IVAR____TtC8Freeform12CRLSceneInfo_savedUnscaledRect];
          v23 = *&v20[OBJC_IVAR____TtC8Freeform12CRLSceneInfo_savedUnscaledRect + 8];
          v24 = *&v20[OBJC_IVAR____TtC8Freeform12CRLSceneInfo_savedUnscaledRect + 16];
          v25 = *&v20[OBJC_IVAR____TtC8Freeform12CRLSceneInfo_savedUnscaledRect + 24];
          if ((v19 & 1) == 0)
          {
            v22 = sub_100121F30(1, v17, v18, *&v20[OBJC_IVAR____TtC8Freeform12CRLSceneInfo_savedUnscaledRect], *&v20[OBJC_IVAR____TtC8Freeform12CRLSceneInfo_savedUnscaledRect + 8], *&v20[OBJC_IVAR____TtC8Freeform12CRLSceneInfo_savedUnscaledRect + 16], *&v20[OBJC_IVAR____TtC8Freeform12CRLSceneInfo_savedUnscaledRect + 24]);
            v24 = v26;
            v25 = v27;
          }

          [v12 setUnscaledClipRect:{v22, v23, v24, v25, v51}];
          v28 = 1.0;
          if ((v19 & 1) == 0)
          {
            v29 = v17 / v24;
            if (v18 / v25 < v17 / v24)
            {
              v29 = v18 / v25;
            }

            v28 = floor(v29 * 100.0) / 100.0;
          }

          [v12 setViewScale:v28];
          v30 = v9;
          [v12 drawPageInContext:v9 createPage:1 includeMargin:0];
          v31 = [objc_allocWithZone(CRLCanvasImager) initWithBoard:v54];
          v32 = *(v54 + v52);
          v33 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
          v34 = *&v32[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems];
          v35 = v32;
          if (!v34)
          {
            sub_10096C7D4();
            v34 = *&v32[v33];
          }

          if (v34)
          {
            v36 = v34;
          }

          else
          {
            v36 = _swiftEmptyArrayStorage;
          }

          if (v36 >> 62)
          {
            sub_1005B981C(&qword_1019F5720, &unk_101474E20);
            _bridgeCocoaArray<A>(_:)();
          }

          else
          {
            dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
          }

          v9 = v30;
          ++v15;

          sub_1005B981C(&qword_1019F5720, &unk_101474E20);
          isa = Array._bridgeToObjectiveC()().super.isa;

          [v31 setInfos:isa];

          v1[26] = sub_100CA86EC;
          v1[27] = 0;
          v1[22] = _NSConcreteStackBlock;
          v1[23] = *"";
          v1[24] = sub_100CA89C4;
          v1[25] = &unk_10189F418;
          v38 = _Block_copy(v1 + 22);

          [v31 setPostRenderAction:v38];
          _Block_release(v38);

          v12 = v31;
          v13 = v57;
          v19 = v55;
        }

        while (v56 != v15);

        v8 = v51;
        goto LABEL_31;
      }
    }
  }

  else
  {

    [v12 drawPageInContext:v9 createPage:1 includeMargin:1];
  }

LABEL_31:
  CGPDFContextClose(v9);
  sub_10050F4D4(v9, 0);

  [v8 setCgContext:0];
  if (sub_100D34670())
  {
    sub_100EC5D30();
    if (v39 != 2 && (v39 & 1) != 0)
    {
      sub_1006C5568();
    }
  }

LABEL_36:
  v49 = v1[1];

  return v49();
}

void sub_100CA86EC(void *a1, void *a2)
{
  if (a1)
  {
    v24 = a1;
    ClipBoundingBox = CGContextGetClipBoundingBox(v24);
    x = ClipBoundingBox.origin.x;
    y = ClipBoundingBox.origin.y;
    width = ClipBoundingBox.size.width;
    height = ClipBoundingBox.size.height;
    v7 = [objc_allocWithZone(CRLPdfHyperlinkController) initWithTaggingRect:{CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height}];
    v8 = [a2 allReps];
    sub_100006370(0, &qword_1019FB7A0, off_10182F798);
    sub_10000FDE0(&qword_1019F5048, &qword_1019FB7A0, off_10182F798, &protocol conformance descriptor for NSObject);
    v9 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v9 & 0xC000000000000001) != 0)
    {
      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v9 = v26;
      v10 = v27;
      v11 = v28;
      v12 = v29;
      v13 = v30;
    }

    else
    {
      v12 = 0;
      v14 = -1 << *(v9 + 32);
      v10 = v9 + 56;
      v11 = ~v14;
      v15 = -v14;
      if (v15 < 64)
      {
        v16 = ~(-1 << v15);
      }

      else
      {
        v16 = -1;
      }

      v13 = v16 & *(v9 + 56);
    }

    v23 = v11;
    v17 = (v11 + 64) >> 6;
    if (v9 < 0)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v18 = v12;
      v19 = v13;
      v20 = v12;
      if (!v13)
      {
        break;
      }

LABEL_13:
      v21 = (v19 - 1) & v19;
      v22 = *(*(v9 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));
      if (!v22)
      {
LABEL_19:
        sub_100035F90(v9);
        [v7 crl_commitHyperlinksToPDF:v24 targetRect:{x, y, width, height}];

        return;
      }

      while (1)
      {
        [v7 addHyperlinksForRep:{v22, v23}];

        v12 = v20;
        v13 = v21;
        if ((v9 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_15:
        if (__CocoaSet.Iterator.next()())
        {
          swift_dynamicCast();
          v22 = v25;
          v20 = v12;
          v21 = v13;
          if (v25)
          {
            continue;
          }
        }

        goto LABEL_19;
      }
    }

    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v20 >= v17)
      {
        goto LABEL_19;
      }

      v19 = *(v10 + 8 * v20);
      ++v18;
      if (v19)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

void sub_100CA89C4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, v6);
}

uint64_t sub_100CA8A48(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *(v8 + 128);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002D3D4;

  return sub_100CA803C(a1, v6, v7, v1 + v5, v8, v9);
}

id sub_100CA8B78@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = objc_allocWithZone(CRLCanvasImager);
  v5 = a1;
  v6 = [v4 initWithBoard:v5];
  v7 = *&v5[OBJC_IVAR____TtC8Freeform8CRLBoard_rootContainer];

  v8 = OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems;
  v9 = *&v7[OBJC_IVAR____TtC8Freeform16CRLContainerItem__cachedOrderedItems];
  if (!v9)
  {
    sub_10096C7D4();
    v9 = *&v7[v8];
  }

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v10 >> 62)
  {
    sub_1005B981C(&qword_1019F5720, &unk_101474E20);
    _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  }

  sub_1005B981C(&qword_1019F5720, &unk_101474E20);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v6 setInfos:isa];

  result = [objc_allocWithZone(CRLPdfTagger) init];
  if (result)
  {
    *a2 = 0x3FF0000000000000;
    *(a2 + 8) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0;
    *(a2 + 48) = 1;
    *(a2 + 49) = 256;
    *(a2 + 56) = 0u;
    *(a2 + 72) = 0u;
    *(a2 + 88) = 1;
    *(a2 + 96) = 0;
    *(a2 + 104) = v6;
    *(a2 + 112) = result;
    *(a2 + 120) = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100CA8D54(uint64_t a1, char a2)
{
  *(v2 + 256) = a2;
  *(v2 + 184) = a1;
  *(v2 + 192) = type metadata accessor for CRLBoardCRDTData(0);
  *(v2 + 200) = swift_task_alloc();

  return _swift_task_switch(sub_100CA8DF0, a1, 0);
}

uint64_t sub_100CA8DF0()
{
  v1 = *(v0 + 184);
  type metadata accessor for CRLImmutableBoard(0);
  v2 = *(v1 + OBJC_IVAR____TtC8Freeform13CRLBoardActor_store);
  v3 = OBJC_IVAR____TtC8Freeform13CRLBoardActor_boardIdentifier;
  v4 = swift_task_alloc();
  *(v0 + 208) = v4;
  *v4 = v0;
  v4[1] = sub_100CA8EB8;

  return sub_100797820(v2, v1 + v3, 1);
}

uint64_t sub_100CA8EB8(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 216) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_100CA9008, 0, 0);
  }
}

uint64_t sub_100CA9008()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 216);
  sub_100CA8B78(v2, v0 + 16);
  v3 = *&v2[OBJC_IVAR____TtC8Freeform8CRLBoard_data];
  v4 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_1005E2B78(v3 + v4, v1);
  sub_1005B981C(&qword_101A1A020, &unk_10146C6C0);
  CRRegister.wrappedValue.getter();
  sub_1005E2BDC(v1);
  v5 = *(v0 + 168);
  v6 = *(v0 + 176);
  *(v0 + 224) = v6;
  v7 = swift_task_alloc();
  *(v0 + 232) = v7;
  *v7 = v0;
  v7[1] = sub_100CA9138;
  v8 = *(v0 + 256);

  return sub_100CA72A0(v5, v6, v8, 0);
}

uint64_t sub_100CA9138(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 240) = v1;

  if (v1)
  {
    v5 = sub_100CA92E4;
  }

  else
  {

    *(v4 + 248) = a1;
    v5 = sub_100CA9268;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100CA9268()
{
  sub_1008BE3F8(v0 + 16);

  v1 = *(v0 + 8);
  v2 = *(v0 + 248);

  return v1(v2);
}

uint64_t sub_100CA92E4()
{
  v1 = *(v0 + 216);

  sub_1008BE3F8(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100CA935C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002D3D4;

  return sub_100677990(a1, v4);
}

void TSContentLanguage.Models.Color.RGBA.init(red:green:blue:alpha:colorSpace:)(char a1@<W0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v11 = a1 & 1;
  TSContentLanguage.Models.Color.RGBA.validate()();
  if (!v12)
  {
    *a2 = a3;
    *(a2 + 8) = a4;
    *(a2 + 16) = a5;
    *(a2 + 24) = a6;
    *(a2 + 32) = v11;
  }
}

uint64_t *TSContentLanguage.Models.Color.version.unsafeMutableAddressor()
{
  if (qword_1019F1FB8 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.Color.version;
}

__n128 TSContentLanguage.Models.Color.init(rgba:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 32);
  result = *a1;
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  *(a2 + 32) = v2 & 1;
  return result;
}

__n128 TSContentLanguage.Models.Color.init<A>(object:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int8x16_t *a3@<X8>)
{
  v6 = swift_dynamicCast();
  if (v6)
  {
    v7 = v15;
  }

  else
  {
    v7 = 2;
  }

  if (v6)
  {
    v8 = -1;
  }

  else
  {
    v8 = 0;
  }

  v9 = vdupq_n_s64(v8);
  v11 = vandq_s8(v14, v9);
  v12 = vandq_s8(v13, v9);
  (*(*(a2 - 8) + 8))(a1, a2);
  result = v12;
  *a3 = v12;
  a3[1] = v11;
  a3[2].i8[0] = v7;
  return result;
}

uint64_t sub_100CA9614(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6564695F65707974;
  v4 = 0xEF7265696669746ELL;
  if (v2 != 1)
  {
    v3 = 0x6E6F6973726576;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 1633838962;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0x6564695F65707974;
  v8 = 0xEF7265696669746ELL;
  if (*a2 != 1)
  {
    v7 = 0x6E6F6973726576;
    v8 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 1633838962;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_100CA9728()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100CA97D0(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100CA9864(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100CA9908@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100CAB1BC(*a1);
  *a2 = result;
  return result;
}

void sub_100CA9938(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xEF7265696669746ELL;
  v5 = 0x6564695F65707974;
  if (v2 != 1)
  {
    v5 = 0x6E6F6973726576;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1633838962;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_100CA999C()
{
  v1 = 0x6564695F65707974;
  if (*v0 != 1)
  {
    v1 = 0x6E6F6973726576;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1633838962;
  }
}

unint64_t sub_100CA99FC@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100CAB1BC(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100CA9A24(uint64_t a1)
{
  v2 = sub_100CAB670();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100CA9A60(uint64_t a1)
{
  v2 = sub_100CAB670();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *TSContentLanguage.Models.Color.init(from:)@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_100CAB208(a2, v5);
  if (!v2)
  {
    return sub_100810AD0(v5, a1);
  }

  return result;
}

uint64_t TSContentLanguage.Models.Color.encode(to:)(void *a1)
{
  sub_100810AD0(v1, v16);
  v4 = v17;
  v5 = sub_1005B981C(&qword_101A1A028, &qword_1014A96C0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  v9 = a1[3];
  v11 = v16[1];
  v12 = v16[0];
  sub_100020E58(a1, v9);
  sub_100CAB670();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = v12;
  v14 = v11;
  v15 = v4;
  v18 = 0;
  sub_100CAB6C4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  LOBYTE(v13) = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (qword_1019F1FB8 != -1)
  {
    swift_once();
  }

  *&v13 = static TSContentLanguage.Models.Color.version;
  v18 = 2;
  type metadata accessor for TSCLVersion();
  sub_100969804(&qword_101A00458, protocol conformance descriptor for TSCLVersion);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100CA9DC4(uint64_t a1, uint64_t a2)
{
  sub_100810AD0(a1, v4);
  sub_100810AD0(a2, v5);
  return _s8Freeform17TSContentLanguageO6ModelsO5ColorO21__derived_enum_equalsySbAG_AGtFZ_0(v4, v5) & 1;
}

uint64_t *TSContentLanguage.Models.Color.RGBA.version.unsafeMutableAddressor()
{
  if (qword_1019F1FC0 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.Color.RGBA.version;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TSContentLanguage.Models.Color.RGBA.validate()()
{
  v1 = *v0;
  if (*v0 < 0.0 || v1 > 1.0)
  {
    v18 = sub_1005B981C(&qword_101A02780, &qword_10147FA08);
    v19 = sub_10001A2F8(&qword_101A02788, &qword_101A02780, &qword_10147FA08, &protocol conformance descriptor for ClosedRange<A>);
    v17 = xmmword_101463BB0;
    sub_1005B981C(&qword_101A02790, &qword_1014CE6D0);
    sub_10001A2F8(&qword_101A02798, &qword_101A02790, &qword_1014CE6D0, protocol conformance descriptor for TSContentLanguage.Validation.Error.NumberOutOfRange<A>);
    v3 = swift_allocError();
    *(v4 + 40) = v1;
    sub_100050F74(&v17, v4);
    swift_willThrow();
    v5 = 0xE300000000000000;
    v6 = 6579570;
LABEL_25:
    sub_100810B2C();
    swift_allocError();
    *v16 = v6;
    v16[1] = v5;
    v16[2] = v3;
    swift_willThrow();
    return;
  }

  v7 = v0[1];
  if (v7 < 0.0 || v7 > 1.0)
  {
    v18 = sub_1005B981C(&qword_101A02780, &qword_10147FA08);
    v19 = sub_10001A2F8(&qword_101A02788, &qword_101A02780, &qword_10147FA08, &protocol conformance descriptor for ClosedRange<A>);
    v17 = xmmword_101463BB0;
    sub_1005B981C(&qword_101A02790, &qword_1014CE6D0);
    sub_10001A2F8(&qword_101A02798, &qword_101A02790, &qword_1014CE6D0, protocol conformance descriptor for TSContentLanguage.Validation.Error.NumberOutOfRange<A>);
    v3 = swift_allocError();
    *(v9 + 40) = v7;
    sub_100050F74(&v17, v9);
    swift_willThrow();
    v5 = 0xE500000000000000;
    v6 = 0x6E65657267;
    goto LABEL_25;
  }

  v10 = v0[2];
  if (v10 < 0.0 || v10 > 1.0)
  {
    v18 = sub_1005B981C(&qword_101A02780, &qword_10147FA08);
    v19 = sub_10001A2F8(&qword_101A02788, &qword_101A02780, &qword_10147FA08, &protocol conformance descriptor for ClosedRange<A>);
    v17 = xmmword_101463BB0;
    sub_1005B981C(&qword_101A02790, &qword_1014CE6D0);
    sub_10001A2F8(&qword_101A02798, &qword_101A02790, &qword_1014CE6D0, protocol conformance descriptor for TSContentLanguage.Validation.Error.NumberOutOfRange<A>);
    v3 = swift_allocError();
    *(v12 + 40) = v10;
    sub_100050F74(&v17, v12);
    swift_willThrow();
    v5 = 0xE400000000000000;
    v6 = 1702194274;
    goto LABEL_25;
  }

  v13 = v0[3];
  if (v13 < 0.0 || v13 > 1.0)
  {
    v18 = sub_1005B981C(&qword_101A02780, &qword_10147FA08);
    v19 = sub_10001A2F8(&qword_101A02788, &qword_101A02780, &qword_10147FA08, &protocol conformance descriptor for ClosedRange<A>);
    v17 = xmmword_101463BB0;
    sub_1005B981C(&qword_101A02790, &qword_1014CE6D0);
    sub_10001A2F8(&qword_101A02798, &qword_101A02790, &qword_1014CE6D0, protocol conformance descriptor for TSContentLanguage.Validation.Error.NumberOutOfRange<A>);
    v3 = swift_allocError();
    *(v15 + 40) = v13;
    sub_100050F74(&v17, v15);
    swift_willThrow();
    v5 = 0xE500000000000000;
    v6 = 0x6168706C61;
    goto LABEL_25;
  }
}

uint64_t sub_100CAA354(uint64_t a1)
{
  String.hash(into:)();
}

unint64_t sub_100CAA468@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100CAB718(*a1);
  *a2 = result;
  return result;
}

void sub_100CAA498(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 6579570;
  v5 = 0xEF7265696669746ELL;
  v6 = 0x6564695F65707974;
  if (v2 != 5)
  {
    v6 = 0x6E6F6973726576;
    v5 = 0xE700000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x6168706C61;
  if (v2 != 3)
  {
    v8 = 0x70735F726F6C6F63;
    v7 = 0xEB00000000656361;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x6E65657267;
  if (v2 != 1)
  {
    v10 = 1702194274;
    v9 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_100CAA574()
{
  v1 = *v0;
  v2 = 6579570;
  v3 = 0x6564695F65707974;
  if (v1 != 5)
  {
    v3 = 0x6E6F6973726576;
  }

  v4 = 0x6168706C61;
  if (v1 != 3)
  {
    v4 = 0x70735F726F6C6F63;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6E65657267;
  if (v1 != 1)
  {
    v5 = 1702194274;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100CAA64C@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100CAB718(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100CAA674(uint64_t a1)
{
  v2 = sub_100CAC9FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100CAA6B0(uint64_t a1)
{
  v2 = sub_100CAC9FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

double TSContentLanguage.Models.Color.RGBA.init(from:)@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100CAB764(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t TSContentLanguage.Models.Color.RGBA.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A1A040, &qword_1014A96C8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100CAC9FC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v10) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  LOBYTE(v10) = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v10) = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v10) = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v10) = *(v3 + 32);
  v11 = 4;
  sub_100CACA50();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  LOBYTE(v10) = 5;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (qword_1019F1FC0 != -1)
  {
    swift_once();
  }

  v10 = static TSContentLanguage.Models.Color.RGBA.version;
  v11 = 6;
  type metadata accessor for TSCLVersion();
  sub_100969804(&qword_101A00458, protocol conformance descriptor for TSCLVersion);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t TSContentLanguage.Models.Color.RGBA.isEquivalent(to:)(uint64_t a1)
{
  if (sub_1007C87EC(*v1, *a1) && sub_1007C87EC(*(v1 + 8), *(a1 + 8)) && sub_1007C87EC(*(v1 + 16), *(a1 + 16)) && sub_1007C87EC(*(v1 + 24), *(a1 + 24)))
  {
    v3 = *(a1 + 32);
    if (*(v1 + 32))
    {
      v4 = 1650946675;
    }

    else
    {
      v4 = 13168;
    }

    if (*(v1 + 32))
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE200000000000000;
    }

    if (v3)
    {
      v6 = 1650946675;
    }

    else
    {
      v6 = 13168;
    }

    if (v3)
    {
      v7 = 0xE400000000000000;
    }

    else
    {
      v7 = 0xE200000000000000;
    }

    if (v4 == v6 && v5 == v7)
    {
      v8 = 1;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_100CAAB40(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s8Freeform17TSContentLanguageO6ModelsO5ColorO4RGBAV23__derived_struct_equalsySbAI_AItFZ_0(v5, v7) & 1;
}

void *TSContentLanguage.Models.Color.RGBA.ColorSpace.version.unsafeMutableAddressor()
{
  if (qword_1019F1FC8 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.Color.RGBA.ColorSpace.version;
}

uint64_t TSContentLanguage.Models.Color.RGBA.ColorSpace.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1018768A8, v2);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t TSContentLanguage.Models.Color.RGBA.ColorSpace.rawValue.getter(char a1)
{
  if (a1)
  {
    return 1650946675;
  }

  else
  {
    return 13168;
  }
}

uint64_t sub_100CAACB0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1650946675;
  }

  else
  {
    v3 = 13168;
  }

  if (v2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1650946675;
  }

  else
  {
    v5 = 13168;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100CAAD44()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100CAADB4(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100CAAE10(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100CAAE7C@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1018768A8, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_100CAAEDC(uint64_t *a1@<X8>)
{
  v2 = 13168;
  if (*v1)
  {
    v2 = 1650946675;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t _s8Freeform17TSContentLanguageO6ModelsO5ColorO21__derived_enum_equalsySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_100810AD0(a2, v15);
  v3 = v16;
  v11 = v15[1];
  v12 = v15[0];
  sub_100810AD0(a1, v13);
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v13[0], v12), vceqq_f64(v13[1], v11)))) & 1) == 0)
  {
    return 0;
  }

  if (v14)
  {
    v5 = 1650946675;
  }

  else
  {
    v5 = 13168;
  }

  if (v14)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  if (v3)
  {
    v7 = 1650946675;
  }

  else
  {
    v7 = 13168;
  }

  if (v3)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE200000000000000;
  }

  if (v5 == v7 && v6 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t _s8Freeform17TSContentLanguageO6ModelsO5ColorO4RGBAV23__derived_struct_equalsySbAI_AItFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    v2 = *(a1 + 32) == 0;
    if (*(a1 + 32))
    {
      v3 = 1650946675;
    }

    else
    {
      v3 = 13168;
    }

    if (v2)
    {
      v4 = 0xE200000000000000;
    }

    else
    {
      v4 = 0xE400000000000000;
    }

    if (*(a2 + 32))
    {
      v5 = 1650946675;
    }

    else
    {
      v5 = 13168;
    }

    if (*(a2 + 32))
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE200000000000000;
    }

    if (v3 == v5 && v4 == v6)
    {
      v8 = 1;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

unint64_t sub_100CAB1BC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101876778, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100CAB208@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1005B981C(&qword_101A008A0, &qword_10147C860);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v21 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100CAB670();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    goto LABEL_12;
  }

  LOBYTE(v21[0]) = 1;
  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v10)
  {
    if (v9 == 0xD000000000000025 && v10 == 0x8000000101589AD0)
    {
    }

    else
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        sub_1007C8648();
        swift_allocError();
        v13[1] = 0;
        v13[2] = 0;
        *v13 = 0;
        swift_willThrow();
LABEL_11:
        (*(v6 + 8))(v8, v5);
LABEL_12:
        sub_100020E58(a1, a1[3]);
        dispatch thunk of Decoder.singleValueContainer()();
        sub_100020E58(v21, v21[3]);
        dispatch thunk of SingleValueDecodingContainer.decode(_:)();

        sub_100005070(v21);
LABEL_13:
        sub_1007C8648();
        swift_allocError();
        *v15 = xmmword_101478600;
        *(v15 + 16) = 0;
        swift_willThrow();
        return sub_100005070(a1);
      }
    }
  }

  type metadata accessor for TSCLVersion();
  v24 = 2;
  sub_100969804(&qword_101A00400, protocol conformance descriptor for TSCLVersion);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v16 = v21[0];
  if (v21[0])
  {
    if (qword_1019F1FB8 != -1)
    {
      swift_once();
    }

    if (*(static TSContentLanguage.Models.Color.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) < *&v16[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
    {
      sub_1007C8648();
      swift_allocError();
      *v17 = xmmword_101463530;
      *(v17 + 16) = 0;
      swift_willThrow();

      goto LABEL_11;
    }
  }

  sub_100020E58(a1, a1[3]);
  v18 = dispatch thunk of Decoder.userInfo.getter();
  sub_1007B84E4(0, v18, 0, v22);
  (*(v6 + 8))(v8, v5);

  v19 = v23;
  if (v23 == 2)
  {
    goto LABEL_13;
  }

  result = sub_100005070(a1);
  v20 = v22[1];
  *a2 = v22[0];
  *(a2 + 16) = v20;
  *(a2 + 32) = v19 & 1;
  return result;
}

unint64_t sub_100CAB670()
{
  result = qword_101A1A030;
  if (!qword_101A1A030)
  {
    result = swift_getWitnessTable(asc_1014A9C4C, &_s5ColorO9CodingKeyON, v0, v1);
    atomic_store(result, &qword_101A1A030);
  }

  return result;
}

unint64_t sub_100CAB6C4()
{
  result = qword_101A1A038;
  if (!qword_101A1A038)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TSContentLanguage.Models.Color.RGBA, &type metadata for TSContentLanguage.Models.Color.RGBA, v0, v1);
    atomic_store(result, &qword_101A1A038);
  }

  return result;
}

unint64_t sub_100CAB718(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1018767E0, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100CAB764@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v94 = a2;
  v3 = sub_1005B981C(&qword_101A003E8, &qword_101481A70);
  __chkstk_darwin(v3 - 8);
  v96 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v97 = &v90 - v6;
  __chkstk_darwin(v7);
  v98 = &v90 - v8;
  __chkstk_darwin(v9);
  v99 = &v90 - v10;
  __chkstk_darwin(v11);
  v100 = &v90 - v12;
  v13 = type metadata accessor for CodingUserInfoKey();
  v14 = *(v13 - 8);
  v101 = v13;
  v102 = v14;
  __chkstk_darwin(v13);
  v95 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v90 - v17;
  __chkstk_darwin(v19);
  v21 = &v90 - v20;
  __chkstk_darwin(v22);
  v24 = &v90 - v23;
  __chkstk_darwin(v25);
  v27 = &v90 - v26;
  v28 = sub_1005B981C(&qword_101A1A0C8, &unk_1014A9CA0);
  v103 = *(v28 - 8);
  __chkstk_darwin(v28);
  v30 = &v90 - v29;
  v31 = a1[3];
  v105 = a1;
  sub_100020E58(a1, v31);
  sub_100CAC9FC();
  v32 = v104;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v32)
  {
    v36 = v105;
    return sub_100005070(v36);
  }

  v104 = v27;
  v93 = v24;
  v92 = v21;
  v91 = v18;
  LOBYTE(v106) = 5;
  v33 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v35 = 0;
  v38 = v105;
  if (v34)
  {
    if (v33 == 0xD00000000000002ALL && v34 == 0x8000000101589B00)
    {
    }

    else
    {
      v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v40 & 1) == 0)
      {
        sub_1007C8648();
        swift_allocError();
        v41[1] = 0;
        v41[2] = 0;
        *v41 = 0;
        swift_willThrow();
LABEL_35:
        (*(v103 + 8))(v30, v28);
        v36 = v38;
        return sub_100005070(v36);
      }
    }
  }

  type metadata accessor for TSCLVersion();
  v110 = 6;
  sub_100969804(&qword_101A00400, protocol conformance descriptor for TSCLVersion);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v42 = v106;
  if (v106)
  {
    if (qword_1019F1FC0 != -1)
    {
      swift_once();
    }

    if (*(static TSContentLanguage.Models.Color.RGBA.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) < *&v42[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
    {
      sub_1007C8648();
      swift_allocError();
      *v43 = xmmword_101463530;
      *(v43 + 16) = 0;
      swift_willThrow();

      goto LABEL_35;
    }
  }

  sub_100020E58(v38, v38[3]);
  v44 = dispatch thunk of Decoder.userInfo.getter();
  v110 = 0;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (BYTE8(v106))
  {
    v45 = 0.0;
  }

  else
  {
    v45 = *&v106;
  }

  if (v45 >= 0.0 && v45 <= 1.0)
  {

    v46 = v102;
    goto LABEL_31;
  }

  v107 = sub_1005B981C(&qword_101A02780, &qword_10147FA08);
  v108 = sub_10001A2F8(&qword_101A02788, &qword_101A02780, &qword_10147FA08, &protocol conformance descriptor for ClosedRange<A>);
  v106 = xmmword_101463BB0;
  sub_1005B981C(&qword_101A02790, &qword_1014CE6D0);
  sub_10001A2F8(&qword_101A02798, &qword_101A02790, &qword_1014CE6D0, protocol conformance descriptor for TSContentLanguage.Validation.Error.NumberOutOfRange<A>);
  v47 = swift_allocError();
  *(v48 + 40) = v45;
  sub_100050F74(&v106, v48);
  swift_willThrow();
  sub_100810B2C();
  swift_allocError();
  *v49 = 6579570;
  v49[1] = 0xE300000000000000;
  v49[2] = v47;
  swift_willThrow();
  v90 = 0;
  v50 = v100;
  CodingUserInfoKey.init(rawValue:)();
  v51 = v101;
  v46 = v102;
  result = (*(v102 + 48))(v50, 1, v101);
  v52 = v104;
  if (result == 1)
  {
    __break(1u);
    goto LABEL_81;
  }

  (*(v46 + 32))(v104, v50, v51);
  if (!*(v44 + 16) || (v53 = sub_1007C8514(v52), (v54 & 1) == 0))
  {
    (*(v46 + 8))(v52, v51);
LABEL_34:
    swift_willThrow();

    goto LABEL_35;
  }

  sub_100064288(*(v44 + 56) + 32 * v53, &v106);
  (*(v46 + 8))(v52, v51);
  if (!swift_dynamicCast() || (v109 & 1) == 0)
  {
    goto LABEL_34;
  }

  v45 = 0.0;
  v35 = v90;
LABEL_31:
  sub_100020E58(v38, v38[3]);
  v104 = dispatch thunk of Decoder.userInfo.getter();
  v110 = 1;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (v35)
  {
LABEL_43:
    v60 = v99;
    CodingUserInfoKey.init(rawValue:)();
    v61 = v101;
    result = (*(v46 + 48))(v60, 1, v101);
    if (result != 1)
    {
      v62 = v93;
      (*(v46 + 32))(v93, v60, v61);
      if (*(v104 + 16) && (v63 = sub_1007C8514(v62), (v64 & 1) != 0))
      {
        sub_100064288(*(v104 + 56) + 32 * v63, &v106);
        (*(v46 + 8))(v62, v61);
        v65 = swift_dynamicCast();
        v56 = v103;
        if (v65 && (v109 & 1) != 0)
        {

          v55 = 0.0;
          goto LABEL_49;
        }
      }

      else
      {
        (*(v46 + 8))(v62, v61);
        v56 = v103;
      }

      swift_willThrow();

      (*(v56 + 8))(v30, v28);
LABEL_79:
      v36 = v38;
      return sub_100005070(v36);
    }

LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  if (BYTE8(v106))
  {
    v55 = 0.0;
  }

  else
  {
    v55 = *&v106;
  }

  if (v55 < 0.0 || v55 > 1.0)
  {
    v107 = sub_1005B981C(&qword_101A02780, &qword_10147FA08);
    v108 = sub_10001A2F8(&qword_101A02788, &qword_101A02780, &qword_10147FA08, &protocol conformance descriptor for ClosedRange<A>);
    v106 = xmmword_101463BB0;
    sub_1005B981C(&qword_101A02790, &qword_1014CE6D0);
    sub_10001A2F8(&qword_101A02798, &qword_101A02790, &qword_1014CE6D0, protocol conformance descriptor for TSContentLanguage.Validation.Error.NumberOutOfRange<A>);
    v57 = swift_allocError();
    *(v58 + 40) = v55;
    sub_100050F74(&v106, v58);
    swift_willThrow();
    sub_100810B2C();
    swift_allocError();
    *v59 = 0x6E65657267;
    v59[1] = 0xE500000000000000;
    v59[2] = v57;
    swift_willThrow();
    v46 = v102;
    goto LABEL_43;
  }

  v56 = v103;
LABEL_49:
  sub_100020E58(v38, v38[3]);
  v66 = dispatch thunk of Decoder.userInfo.getter();
  v110 = 2;
  v104 = v30;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (BYTE8(v106))
  {
    v67 = 0.0;
  }

  else
  {
    v67 = *&v106;
  }

  v68 = v97;
  if (v67 < 0.0 || v67 > 1.0)
  {
    v107 = sub_1005B981C(&qword_101A02780, &qword_10147FA08);
    v108 = sub_10001A2F8(&qword_101A02788, &qword_101A02780, &qword_10147FA08, &protocol conformance descriptor for ClosedRange<A>);
    v106 = xmmword_101463BB0;
    sub_1005B981C(&qword_101A02790, &qword_1014CE6D0);
    sub_10001A2F8(&qword_101A02798, &qword_101A02790, &qword_1014CE6D0, protocol conformance descriptor for TSContentLanguage.Validation.Error.NumberOutOfRange<A>);
    v69 = swift_allocError();
    *(v70 + 40) = v67;
    sub_100050F74(&v106, v70);
    swift_willThrow();
    sub_100810B2C();
    swift_allocError();
    *v71 = 1702194274;
    v71[1] = 0xE400000000000000;
    v71[2] = v69;
    swift_willThrow();
    v72 = v98;
    CodingUserInfoKey.init(rawValue:)();
    v74 = v101;
    v73 = v102;
    result = (*(v102 + 48))(v72, 1, v101);
    if (result != 1)
    {
      v75 = *(v73 + 32);
      v76 = v92;
      v75(v92, v72, v74);
      if (!*(v66 + 16) || (v77 = sub_1007C8514(v76), v76 = v92, (v78 & 1) == 0))
      {
LABEL_77:
        (*(v102 + 8))(v76, v74);
LABEL_78:
        swift_willThrow();

        (*(v56 + 8))(v104, v28);
        goto LABEL_79;
      }

      sub_100064288(*(v66 + 56) + 32 * v77, &v106);
      (*(v102 + 8))(v76, v74);
      if (!swift_dynamicCast() || (v109 & 1) == 0)
      {
        goto LABEL_78;
      }

      v67 = 0.0;
      v68 = v97;
      goto LABEL_64;
    }

LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

LABEL_64:
  sub_100020E58(v38, v38[3]);
  v79 = dispatch thunk of Decoder.userInfo.getter();
  v110 = 3;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (BYTE8(v106))
  {
    v80 = 1.0;
  }

  else
  {
    v80 = *&v106;
  }

  if (v80 >= 0.0 && v80 <= 1.0)
  {

LABEL_76:
    sub_100020E58(v38, v38[3]);
    dispatch thunk of Decoder.userInfo.getter();
    v110 = 4;
    sub_100CACEEC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();

    v88 = (v106 == 2) | v106;
    (*(v103 + 8))(v104, v28);
    result = sub_100005070(v105);
    v89 = v94;
    *v94 = v45;
    v89[1] = v55;
    v89[2] = v67;
    v89[3] = v80;
    *(v89 + 32) = v88 & 1;
    return result;
  }

  v107 = sub_1005B981C(&qword_101A02780, &qword_10147FA08);
  v108 = sub_10001A2F8(&qword_101A02788, &qword_101A02780, &qword_10147FA08, &protocol conformance descriptor for ClosedRange<A>);
  v106 = xmmword_101463BB0;
  sub_1005B981C(&qword_101A02790, &qword_1014CE6D0);
  sub_10001A2F8(&qword_101A02798, &qword_101A02790, &qword_1014CE6D0, protocol conformance descriptor for TSContentLanguage.Validation.Error.NumberOutOfRange<A>);
  v81 = swift_allocError();
  *(v82 + 40) = v80;
  sub_100050F74(&v106, v82);
  swift_willThrow();
  sub_100810B2C();
  swift_allocError();
  *v83 = 0x6168706C61;
  v83[1] = 0xE500000000000000;
  v83[2] = v81;
  swift_willThrow();
  CodingUserInfoKey.init(rawValue:)();
  v74 = v101;
  v84 = v102;
  result = (*(v102 + 48))(v68, 1, v101);
  if (result != 1)
  {
    v85 = *(v84 + 32);
    v76 = v91;
    v85(v91, v68, v74);
    if (*(v79 + 16))
    {
      v86 = sub_1007C8514(v76);
      v76 = v91;
      if (v87)
      {
        sub_100064288(*(v79 + 56) + 32 * v86, &v106);
        (*(v102 + 8))(v76, v74);
        if (swift_dynamicCast() && (v109 & 1) != 0)
        {

          v80 = 1.0;
          goto LABEL_76;
        }

        goto LABEL_78;
      }
    }

    goto LABEL_77;
  }

LABEL_83:
  __break(1u);
  __break(1u);
  return result;
}

unint64_t sub_100CAC9FC()
{
  result = qword_101A1A048;
  if (!qword_101A1A048)
  {
    result = swift_getWitnessTable(asc_1014A9BFC, &_s5ColorO4RGBAV9CodingKeyON, v0, v1);
    atomic_store(result, &qword_101A1A048);
  }

  return result;
}

unint64_t sub_100CACA50()
{
  result = qword_101A1A050;
  if (!qword_101A1A050)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TSContentLanguage.Models.Color.RGBA.ColorSpace, &type metadata for TSContentLanguage.Models.Color.RGBA.ColorSpace, v0, v1);
    atomic_store(result, &qword_101A1A050);
  }

  return result;
}

unint64_t sub_100CACAD0()
{
  result = qword_101A1A058;
  if (!qword_101A1A058)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TSContentLanguage.Models.Color, &type metadata for TSContentLanguage.Models.Color, v0, v1);
    atomic_store(result, &qword_101A1A058);
  }

  return result;
}

unint64_t sub_100CACB24()
{
  result = qword_101A1A060;
  if (!qword_101A1A060)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TSContentLanguage.Models.Color, &type metadata for TSContentLanguage.Models.Color, v0, v1);
    atomic_store(result, &qword_101A1A060);
  }

  return result;
}

unint64_t sub_100CACBB8()
{
  result = qword_101A1A068;
  if (!qword_101A1A068)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TSContentLanguage.Models.Color, &type metadata for TSContentLanguage.Models.Color, v0, v1);
    atomic_store(result, &qword_101A1A068);
  }

  return result;
}

unint64_t sub_100CACC0C(uint64_t a1)
{
  result = sub_100B10DC4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100CACC74()
{
  result = qword_101A1A070;
  if (!qword_101A1A070)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TSContentLanguage.Models.Color.RGBA, &type metadata for TSContentLanguage.Models.Color.RGBA, v0, v1);
    atomic_store(result, &qword_101A1A070);
  }

  return result;
}

unint64_t sub_100CACCCC()
{
  result = qword_101A1A078;
  if (!qword_101A1A078)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TSContentLanguage.Models.Color.RGBA.ColorSpace, &type metadata for TSContentLanguage.Models.Color.RGBA.ColorSpace, v0, v1);
    atomic_store(result, &qword_101A1A078);
  }

  return result;
}

uint64_t sub_100CACD4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100CACD88()
{
  result = qword_101A1A080;
  if (!qword_101A1A080)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TSContentLanguage.Models.Color.RGBA.ColorSpace, &type metadata for TSContentLanguage.Models.Color.RGBA.ColorSpace, v0, v1);
    atomic_store(result, &qword_101A1A080);
  }

  return result;
}

unint64_t sub_100CACDDC()
{
  result = qword_101A1A088;
  if (!qword_101A1A088)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TSContentLanguage.Models.Color.RGBA.ColorSpace, &type metadata for TSContentLanguage.Models.Color.RGBA.ColorSpace, v0, v1);
    atomic_store(result, &qword_101A1A088);
  }

  return result;
}

unint64_t sub_100CACE30(uint64_t a1)
{
  result = sub_100B10D70();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100CACE98(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[2] = (a4)(a1, a2, a3);
  a1[3] = a5();
  result = a6();
  a1[4] = result;
  return result;
}

unint64_t sub_100CACEEC()
{
  result = qword_101A1A090;
  if (!qword_101A1A090)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TSContentLanguage.Models.Color.RGBA.ColorSpace, &type metadata for TSContentLanguage.Models.Color.RGBA.ColorSpace, v0, v1);
    atomic_store(result, &qword_101A1A090);
  }

  return result;
}

uint64_t sub_100CACF50(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100CACF94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_100CAD020()
{
  result = qword_101A1A098;
  if (!qword_101A1A098)
  {
    result = swift_getWitnessTable(byte_1014A9AE4, &_s5ColorO9CodingKeyON, v0, v1);
    atomic_store(result, &qword_101A1A098);
  }

  return result;
}

unint64_t sub_100CAD078()
{
  result = qword_101A1A0A0;
  if (!qword_101A1A0A0)
  {
    result = swift_getWitnessTable(byte_1014A9BD4, &_s5ColorO4RGBAV9CodingKeyON, v0, v1);
    atomic_store(result, &qword_101A1A0A0);
  }

  return result;
}

unint64_t sub_100CAD0D0()
{
  result = qword_101A1A0A8;
  if (!qword_101A1A0A8)
  {
    result = swift_getWitnessTable(asc_1014A9B0C, &_s5ColorO4RGBAV9CodingKeyON, v0, v1);
    atomic_store(result, &qword_101A1A0A8);
  }

  return result;
}

unint64_t sub_100CAD128()
{
  result = qword_101A1A0B0;
  if (!qword_101A1A0B0)
  {
    result = swift_getWitnessTable(byte_1014A9B34, &_s5ColorO4RGBAV9CodingKeyON, v0, v1);
    atomic_store(result, &qword_101A1A0B0);
  }

  return result;
}

unint64_t sub_100CAD180()
{
  result = qword_101A1A0B8;
  if (!qword_101A1A0B8)
  {
    result = swift_getWitnessTable(byte_1014A9A1C, &_s5ColorO9CodingKeyON, v0, v1);
    atomic_store(result, &qword_101A1A0B8);
  }

  return result;
}

unint64_t sub_100CAD1D8()
{
  result = qword_101A1A0C0;
  if (!qword_101A1A0C0)
  {
    result = swift_getWitnessTable(byte_1014A9A44, &_s5ColorO9CodingKeyON, v0, v1);
    atomic_store(result, &qword_101A1A0C0);
  }

  return result;
}

id sub_100CAD238()
{
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10146CE00;
  *(v0 + 32) = sub_100CAD324();
  *(v0 + 40) = sub_100CAD40C();
  v1 = objc_allocWithZone(UIStackView);
  sub_100006370(0, &qword_1019F6D00, UIView_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v3 = [v1 initWithArrangedSubviews:isa];

  [v3 setAxis:1];
  [v3 setSpacing:8.0];
  return v3;
}

id sub_100CAD324()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = sub_1005D42AC(v4, v6);

  return v7;
}

id sub_100CAD40C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_1005B981C(&unk_1019F4CF0, &unk_10146CEF0);
  __chkstk_darwin(v2 - 8);
  v4 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v70 = &v65 - v6;
  v7 = String._bridgeToObjectiveC()();
  v8 = objc_opt_self();
  v9 = [v8 imageNamed:v7];

  v10 = _swiftEmptyArrayStorage;
  v69 = v4;
  if (v9)
  {
    v11 = String._bridgeToObjectiveC()();
    v12 = [v8 imageNamed:v11];

    if (v12)
    {
      v13 = String._bridgeToObjectiveC()();
      v14 = [v8 imageNamed:v13];

      if (v14)
      {
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_10146E8A0;
        *(v15 + 32) = v9;
        *(v15 + 40) = v12;
        *(v15 + 48) = v14;
        sub_1005B981C(&unk_1019F61D0, qword_10146E9A0);
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_10146C4D0;
        v17 = objc_opt_self();
        v67 = v9;
        v9 = v12;
        v66 = v14;
        v18 = [v17 mainBundle];
        v19 = String._bridgeToObjectiveC()();
        v20 = String._bridgeToObjectiveC()();
        v21 = [v18 localizedStringForKey:v19 value:v20 table:0];

        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = v23;

        *(v16 + 32) = v22;
        *(v16 + 40) = v24;
        v25 = [v17 mainBundle];
        v26 = String._bridgeToObjectiveC()();
        v27 = String._bridgeToObjectiveC()();
        v28 = [v25 localizedStringForKey:v26 value:v27 table:0];

        v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v31 = v30;

        *(v16 + 48) = v29;
        *(v16 + 56) = v31;
        v32 = [v17 mainBundle];
        v33 = String._bridgeToObjectiveC()();
        v34 = String._bridgeToObjectiveC()();
        v35 = [v32 localizedStringForKey:v33 value:v34 table:0];

        v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v38 = v37;

        v39 = v15;
        *(v16 + 64) = v36;
        v10 = _swiftEmptyArrayStorage;
        v40 = v16;
        *(v16 + 72) = v38;

        v12 = v67;
      }

      else
      {
        v39 = _swiftEmptyArrayStorage;
        v40 = _swiftEmptyArrayStorage;
      }

      v9 = v12;
    }

    else
    {
      v39 = _swiftEmptyArrayStorage;
      v40 = _swiftEmptyArrayStorage;
    }
  }

  else
  {
    v40 = _swiftEmptyArrayStorage;
    v39 = _swiftEmptyArrayStorage;
  }

  v41 = type metadata accessor for IndexSet();
  v42 = *(*(v41 - 8) + 56);
  v42(v70, 1, 1, v41);
  sub_10097B3F0();
  if ((v43 & 0xFF00) != 0x200 && (v43 & 0x100) == 0 && (v43 & 1) == 0)
  {
    v44 = v69;
    IndexSet.init(integer:)();
    v45 = v70;
    sub_100CAE2B0(v70);
    v42(v44, 0, 1, v41);
    sub_1005D9088(v44, v45);
  }

  v69 = swift_allocObject();
  *(v69 + 2) = v1;
  v72 = 1;
  v46 = (v39 >> 62);
  if (!(v39 >> 62))
  {
    v47 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v47)
    {
      goto LABEL_16;
    }

LABEL_33:
    v64 = v1;

    if (_swiftEmptyArrayStorage >> 62)
    {
LABEL_34:
      sub_100006370(0, &qword_1019F6D00, UIView_ptr);

      _bridgeCocoaArray<A>(_:)();

      goto LABEL_29;
    }

LABEL_28:

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100006370(0, &qword_1019F6D00, UIView_ptr);
LABEL_29:

    v56 = objc_allocWithZone(UIStackView);
    sub_100006370(0, &qword_1019F6D00, UIView_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v58 = [v56 initWithArrangedSubviews:isa];

    [v58 setAxis:0];
    [v58 setAlignment:0];
    [v58 setDistribution:1];
    [v58 setSpacing:1.0];
    v59 = v58;
    v60 = [v59 heightAnchor];
    v61 = [v60 constraintGreaterThanOrEqualToConstant:34.0];

    [v61 setActive:1];
    v62 = [v59 heightAnchor];

    v63 = [v62 constraintGreaterThanOrEqualToConstant:34.0];
    [v63 setActive:1];

    sub_1000505D0(v72);

    sub_100CAE2B0(v70);
    return v59;
  }

LABEL_32:
  v47 = _CocoaArrayWrapper.endIndex.getter();
  if (!v47)
  {
    goto LABEL_33;
  }

LABEL_16:
  v71 = v10;
  v1 = v1;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v47 & 0x8000000000000000) == 0)
  {
    v67 = (v39 & 0xFFFFFFFFFFFFFF8);
    if (v46)
    {
      v49 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v49 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v50 = 0;
    v46 = v39;
    v51 = v39 & 0xC000000000000001;
    v52 = v49 & ~(v49 >> 63);
    do
    {
      if (v52 == v50)
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      if (v51)
      {
        v53 = v46;
        v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v50 >= *(v67 + 2))
        {
          goto LABEL_31;
        }

        v53 = v46;
        v54 = v46[v50 + 4];
      }

      v55 = v54;
      v10 = (v50 + 1);
      v39 = sub_1005D2FA4(v50, v54, v53, v70, &v72, v1, 0, sub_100CAE2A8, v69, 0, v40, ObjectType);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v50 = v10;
    }

    while (v47 != v10);

    if (v71 >> 62)
    {
      goto LABEL_34;
    }

    goto LABEL_28;
  }

  __break(1u);
  return result;
}

void sub_100CADCE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC8Freeform40CRLiOSMiniFormatterConnectionLineBuilder_lineDataProvider);
  sub_10097B3F0();
  if (v4 & 0xFF00) == 0x200 || (v4)
  {
    return;
  }

  v5 = v3;
  v6 = 0;
  if (!IndexSet.contains(_:)(0))
  {
    if (!IndexSet.contains(_:)(1))
    {
      v6 = IndexSet.contains(_:)(2);
      if (v6 == v5)
      {
        return;
      }

      goto LABEL_9;
    }

    v6 = 2;
  }

  if (v6 == v5)
  {
    return;
  }

LABEL_9:
  v7 = *(v2 + OBJC_IVAR____TtC8Freeform28CRLMiniFormatterDataProvider_editorController);
  if (sub_100006370(0, &qword_101A1CE20, off_10182F7C8))
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
  v11 = v10;
  if (!v10)
  {
    swift_unknownObjectRelease();
    v10 = 0;
  }

  [v10 setConnectionLineType:v6];
}

void *sub_100CADE50()
{
  v0 = sub_100911E34();
  if (v0)
  {
    sub_1006369C4(v0);
  }

  v1 = sub_10068AFC0();
  if (v1)
  {
    v2 = v1;
    if (v1 >> 62)
    {
      type metadata accessor for CRLBoardItem(0);
      v3 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for CRLBoardItem(0);
      v3 = v2;
    }

    sub_10063F990(v3);
  }

  return _swiftEmptySetSingleton;
}

uint64_t sub_100CADF38(uint64_t a1, uint64_t a2)
{
  sub_100064288(a2, v10);
  type metadata accessor for CRLConnectionLineItem(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_5;
  }

  v2 = v9;
  v3 = sub_10068AFC0();
  if (!v3)
  {

LABEL_5:
    v6 = sub_1005D518C();
    return v6 & 1;
  }

  v4 = v3;
  v10[0] = v9;
  __chkstk_darwin(v3);
  v8[2] = v10;
  v5 = sub_100C33540(sub_100CAE318, v8, v4);

  v6 = v5;
  return v6 & 1;
}

uint64_t sub_100CAE050(uint64_t a1, uint64_t a2)
{
  sub_100064288(a2, v10);
  type metadata accessor for CRLConnectionLineItem(0);
  if (!swift_dynamicCast())
  {
    goto LABEL_5;
  }

  v2 = v9;
  v3 = sub_10068AFC0();
  if (!v3)
  {

LABEL_5:
    v6 = sub_1005D518C();
    return v6 & 1;
  }

  v4 = v3;
  v10[0] = v9;
  __chkstk_darwin(v3);
  v8[2] = v10;
  v5 = sub_100C33540(sub_100CAE234, v8, v4);

  v6 = v5;
  return v6 & 1;
}

id sub_100CAE178(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CRLiOSMiniFormatterConnectionLineBuilder();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100CAE2B0(uint64_t a1)
{
  v2 = sub_1005B981C(&unk_1019F4CF0, &unk_10146CEF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TSContentLanguage.Models.Group.init(identifier:geometry:aspectRatioLocked:description:children:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *&v25 = a5;
  *(&v25 + 1) = a6;
  v13 = *a3;
  v14 = a3[1];
  v15 = a3[2];
  v16 = a3[3];
  v17 = a3[4];
  v18 = *(a3 + 20) | (*(a3 + 42) << 16);
  sub_100CAF4F0(a7);
  v45 = v9;
  if (v9)
  {
    v33 = a1;
    v34 = a2;
    v35 = v13;
    v36 = v14;
    v37 = v15;
    v38 = v16;
    v39 = v17;
    v40 = v18;
    v41 = BYTE2(v18);
    v42 = a4;
    v43 = v25;
    v44 = a7;
    return sub_1008127F4(&v33);
  }

  else
  {
    *&v27 = a1;
    *(&v27 + 1) = a2;
    *&v28 = v13;
    *(&v28 + 1) = v14;
    *&v29 = v15;
    *(&v29 + 1) = v16;
    *&v30 = v17;
    BYTE10(v30) = BYTE2(v18);
    WORD4(v30) = v18;
    BYTE11(v30) = a4;
    v31 = v25;
    v32 = a7;
    v33 = a1;
    v34 = a2;
    v35 = v13;
    v36 = v14;
    v37 = v15;
    v38 = v16;
    v39 = v17;
    v40 = v18;
    v41 = BYTE2(v18);
    v42 = a4;
    v43 = v25;
    v44 = a7;
    sub_100812848(&v27, v26);
    result = sub_1008127F4(&v33);
    v20 = v30;
    v21 = v31;
    *(a8 + 32) = v29;
    *(a8 + 48) = v20;
    *(a8 + 64) = v21;
    *(a8 + 80) = v32;
    v22 = v28;
    *a8 = v27;
    *(a8 + 16) = v22;
  }

  return result;
}

id sub_100CAE4B8()
{
  v0 = type metadata accessor for TSCLVersion();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_major] = 1;
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_minor] = 0;
  v3.receiver = v1;
  v3.super_class = v0;
  result = objc_msgSendSuper2(&v3, "init");
  static TSContentLanguage.Models.Group.version = result;
  return result;
}

uint64_t *TSContentLanguage.Models.Group.version.unsafeMutableAddressor()
{
  if (qword_1019F1FD0 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.Group.version;
}

id static TSContentLanguage.Models.Group.version.getter()
{
  if (qword_1019F1FD0 != -1)
  {
    swift_once();
  }

  v1 = static TSContentLanguage.Models.Group.version;

  return v1;
}

uint64_t TSContentLanguage.Models.Group.canvasObject.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 64);
  *(a1 + 80) = *(v1 + 80);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v3;
  type metadata accessor for TSContentLanguage.Models.CanvasObject(0);
  swift_storeEnumTagMultiPayload();
  return sub_100812848(v1, v5);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TSContentLanguage.Models.Group.validate()()
{
  v1 = *(v0 + 80);
  v7[3] = sub_1005B981C(&qword_101A1A100, ",g$");
  v7[4] = sub_10001A2F8(&qword_101A1A108, &qword_101A1A100, ",g$", &protocol conformance descriptor for PartialRangeFrom<A>);
  v7[0] = 1;
  v6[3] = sub_1005B981C(&qword_101A00880, &qword_10147C850);
  v6[4] = sub_10001A2F8(&qword_101A1A110, &qword_101A00880, &qword_10147C850, &protocol conformance descriptor for [A]);
  v6[0] = v1;
  if (*(v1 + 16))
  {

    sub_100005070(v6);
    sub_100005070(v7);
  }

  else
  {
    sub_100852F1C();
    v2 = swift_allocError();
    v4 = v3;
    sub_10000630C(v7, v3);
    sub_10000630C(v6, v4 + 40);
    swift_willThrow();

    sub_100005070(v6);
    sub_100005070(v7);
    sub_100810B2C();
    swift_allocError();
    *v5 = 0x6E6572646C696863;
    v5[1] = 0xE800000000000000;
    v5[2] = v2;
    swift_willThrow();
  }
}

uint64_t sub_100CAE7F8(uint64_t a1)
{
  String.hash(into:)();
}

unint64_t sub_100CAE92C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100CAF68C(*a1);
  *a2 = result;
  return result;
}

void sub_100CAE95C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007265;
  v4 = 0x696669746E656469;
  v5 = 0xEF7265696669746ELL;
  v6 = 0x6564695F65707974;
  if (v2 != 5)
  {
    v6 = 0x6E6F6973726576;
    v5 = 0xE700000000000000;
  }

  v7 = 0xEB000000006E6F69;
  v8 = 0x7470697263736564;
  if (v2 != 3)
  {
    v8 = 0x6E6572646C696863;
    v7 = 0xE800000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x797274656D6F6567;
  if (v2 != 1)
  {
    v10 = 0xD000000000000013;
    v9 = 0x8000000101551A00;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_100CAEA58()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x6564695F65707974;
  if (v1 != 5)
  {
    v3 = 0x6E6F6973726576;
  }

  v4 = 0x7470697263736564;
  if (v1 != 3)
  {
    v4 = 0x6E6572646C696863;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x797274656D6F6567;
  if (v1 != 1)
  {
    v5 = 0xD000000000000013;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100CAEB50@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100CAF68C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100CAEB78(uint64_t a1)
{
  v2 = sub_100CB00EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100CAEBB4(uint64_t a1)
{
  v2 = sub_100CB00EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

double TSContentLanguage.Models.Group.init(from:)@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100CAF6D8(a2, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_100CAEC4C(uint64_t *a1)
{
  v1 = *a1;
  v8[3] = sub_1005B981C(&qword_101A1A100, ",g$");
  v8[4] = sub_10001A2F8(&qword_101A1A108, &qword_101A1A100, ",g$", &protocol conformance descriptor for PartialRangeFrom<A>);
  v8[0] = 1;
  v7[3] = sub_1005B981C(&qword_101A00880, &qword_10147C850);
  v7[4] = sub_10001A2F8(&qword_101A1A110, &qword_101A00880, &qword_10147C850, &protocol conformance descriptor for [A]);
  v7[0] = v1;
  if (*(v1 + 16))
  {

    sub_100005070(v7);
    return sub_100005070(v8);
  }

  else
  {
    sub_100852F1C();
    v3 = swift_allocError();
    v5 = v4;
    sub_10000630C(v8, v4);
    sub_10000630C(v7, v5 + 40);
    swift_willThrow();

    sub_100005070(v7);
    sub_100005070(v8);
    sub_100810B2C();
    swift_allocError();
    *v6 = 0x6E6572646C696863;
    v6[1] = 0xE800000000000000;
    v6[2] = v3;
    return swift_willThrow();
  }
}

uint64_t TSContentLanguage.Models.Group.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1005B981C(&qword_101A1A118, ".g$");
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_100020E58(a1, a1[3]);
  sub_100CB00EC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v9 = *(v3 + 32);
    v13 = *(v3 + 16);
    v14[0] = v9;
    *(v14 + 11) = *(v3 + 43);
    v12 = 1;
    sub_1007C869C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v13) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v13) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    *&v13 = *(v3 + 80);
    v12 = 4;
    sub_1005B981C(&qword_101A00880, &qword_10147C850);
    sub_100CB0140();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v13) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    if (qword_1019F1FD0 != -1)
    {
      swift_once();
    }

    *&v13 = static TSContentLanguage.Models.Group.version;
    v12 = 6;
    type metadata accessor for TSCLVersion();
    sub_100CB044C(&qword_101A00458, type metadata accessor for TSCLVersion, protocol conformance descriptor for TSCLVersion);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

BOOL TSContentLanguage.Models.Group.isEquivalent(to:)(uint64_t a1)
{
  v3 = *(v1 + 56) | (*(v1 + 58) << 16);
  v4 = *(a1 + 56) | (*(a1 + 58) << 16);
  v5 = *(a1 + 56);
  if (*(v1 + 56) == 2)
  {
    if (v5 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v5 == 2)
    {
      return 0;
    }

    v8 = *(v1 + 24);
    v10 = *(v1 + 32);
    v9 = *(v1 + 40);
    v11 = *(v1 + 48);
    v12 = *(a1 + 24);
    v14 = *(a1 + 32);
    v13 = *(a1 + 40);
    v15 = *(a1 + 48);
    if (!sub_1007C87EC(*(v1 + 16), *(a1 + 16)) || !sub_1007C87EC(v8, v12) || !sub_1007C87EC(v10, v14) || !sub_1007C87EC(v9, v13) || !sub_1007C87EC(v11, v15) || ((v4 ^ v3) & 1) != 0 || ((v4 & 0x100) == 0) == (v3 & 0x100) >> 8 || ((v4 & 0x10000) == 0) == (v3 & 0x10000u) >> 16)
    {
      return 0;
    }
  }

  v6 = *(v1 + 59);
  v7 = *(a1 + 59);
  if (v6 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }
  }

  else if (v7 == 2 || ((v6 ^ v7) & 1) != 0)
  {
    return 0;
  }

  v16 = *(v1 + 72);
  v17 = *(a1 + 72);
  if (!v16)
  {
    if (!v17)
    {
      goto LABEL_23;
    }

    return 0;
  }

  if (!v17 || (*(v1 + 64) != *(a1 + 64) || v16 != v17) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

LABEL_23:
  v18 = *(v1 + 80);
  v19 = *(a1 + 80);

  return sub_100B5E6F8(v19, v18);
}

uint64_t sub_100CAF2C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return _s8Freeform17TSContentLanguageO6ModelsO5GroupV23__derived_struct_equalsySbAG_AGtFZ_0(v7, v9) & 1;
}

uint64_t _s8Freeform17TSContentLanguageO6ModelsO5GroupV23__derived_struct_equalsySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v9 = *(a1 + 56) | (*(a1 + 58) << 16);
  v10 = *(a2 + 56) | (*(a2 + 58) << 16);
  v11 = *(a2 + 56);
  if (*(a1 + 56) == 2)
  {
    if (v11 != 2)
    {
      return 0;
    }
  }

  else if (v11 == 2 || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 16), *(a2 + 16)), vceqq_f64(*(a1 + 32), *(a2 + 32))))) & 1) == 0 || *(a1 + 48) != *(a2 + 48) || ((v10 ^ v9) & 1) != 0 || ((((*(a2 + 56) & 0x100) == 0) ^ ((*(a1 + 56) & 0x100) >> 8)) & 1) == 0 || ((v10 & 0x10000) == 0) == (v9 & 0x10000u) >> 16)
  {
    return 0;
  }

  v12 = *(a1 + 59);
  v13 = *(a2 + 59);
  if (v12 == 2)
  {
    if (v13 != 2)
    {
      return 0;
    }
  }

  else if (v13 == 2 || ((v13 ^ v12) & 1) != 0)
  {
    return 0;
  }

  v14 = *(a1 + 72);
  v15 = *(a2 + 72);
  if (!v14)
  {
    if (!v15)
    {
      goto LABEL_29;
    }

    return 0;
  }

  if (!v15)
  {
    return 0;
  }

  if (*(a1 + 64) != *(a2 + 64) || v14 != v15)
  {
    v16 = a1;
    v17 = a2;
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
    a2 = v17;
    v19 = v18;
    a1 = v16;
    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_29:
  v20 = *(a1 + 80);
  v21 = *(a2 + 80);

  return sub_1006732CC(v20, v21);
}

uint64_t sub_100CAF4F0(uint64_t a1)
{
  v8[3] = sub_1005B981C(&qword_101A1A100, ",g$");
  v8[4] = sub_10001A2F8(&qword_101A1A108, &qword_101A1A100, ",g$", &protocol conformance descriptor for PartialRangeFrom<A>);
  v8[0] = 1;
  v7[3] = sub_1005B981C(&qword_101A00880, &qword_10147C850);
  v7[4] = sub_10001A2F8(&qword_101A1A110, &qword_101A00880, &qword_10147C850, &protocol conformance descriptor for [A]);
  v7[0] = a1;
  if (*(a1 + 16))
  {

    sub_100005070(v7);
    return sub_100005070(v8);
  }

  else
  {
    sub_100852F1C();
    v3 = swift_allocError();
    v5 = v4;
    sub_10000630C(v8, v4);
    sub_10000630C(v7, v5 + 40);
    swift_willThrow();

    sub_100005070(v7);
    sub_100005070(v8);
    sub_100810B2C();
    swift_allocError();
    *v6 = 0x6E6572646C696863;
    v6[1] = 0xE800000000000000;
    v6[2] = v3;
    return swift_willThrow();
  }
}

unint64_t sub_100CAF68C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1018768F8, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100CAF6D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = sub_1005B981C(&qword_101A003E8, &qword_101481A70);
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for CodingUserInfoKey();
  v51 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&qword_101A00888, &qword_10147C858);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v44 - v9;
  v11 = a1[3];
  v53 = a1;
  sub_100020E58(a1, v11);
  sub_100CB00EC();
  v12 = v52;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v12)
  {
    v15 = v53;
LABEL_4:
    sub_100005070(v15);
  }

  v49 = v6;
  v52 = v8;
  LOBYTE(v60) = 5;
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v17 = v53;
  if (v14)
  {
    if (v13 == 0xD000000000000025 && v14 == 0x8000000101589A00)
    {
    }

    else
    {
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v19 & 1) == 0)
      {
        sub_1007C8648();
        swift_allocError();
        v20[1] = 0;
        v20[2] = 0;
        *v20 = 0;
        swift_willThrow();
LABEL_14:
        (*(v52 + 8))(v10, v7);
        v15 = v17;
        goto LABEL_4;
      }
    }
  }

  type metadata accessor for TSCLVersion();
  LOBYTE(v54) = 6;
  sub_100CB044C(&qword_101A00400, type metadata accessor for TSCLVersion, protocol conformance descriptor for TSCLVersion);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v21 = v60;
  if (v60)
  {
    if (qword_1019F1FD0 != -1)
    {
      swift_once();
    }

    if (*(static TSContentLanguage.Models.Group.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) < *&v21[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
    {
      sub_1007C8648();
      swift_allocError();
      *v22 = xmmword_101463530;
      *(v22 + 16) = 0;
      swift_willThrow();

      goto LABEL_14;
    }
  }

  sub_100020E58(v17, v17[3]);
  v23 = dispatch thunk of Decoder.userInfo.getter();
  v24 = sub_1007B87CC(0, v23, 0, 0);
  v26 = v25;
  v47 = v24;

  v27 = v17[3];
  v48 = v17[4];
  sub_100020E58(v17, v27);
  dispatch thunk of Decoder.userInfo.getter();
  LOBYTE(v54) = 1;
  sub_1007C7E6C();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();

  v28 = v60;
  *(&v46 + 1) = v61;
  v51 = v62;
  v49 = v63;
  v48 = v64;
  v73 = v65 | (BYTE2(v65) << 16);
  sub_100020E58(v17, v17[3]);
  v29 = dispatch thunk of Decoder.userInfo.getter();
  v30 = sub_1007B87F4(2, v29, 0, 0);
  *&v46 = v28;
  v45 = v30;

  sub_100020E58(v17, v17[3]);
  v31 = dispatch thunk of Decoder.userInfo.getter();
  v32 = sub_1007B87CC(3, v31, 0, 0);
  v34 = v33;
  v44 = v32;

  sub_100020E58(v17, v17[3]);
  v35 = dispatch thunk of Decoder.userInfo.getter();
  v36 = sub_1007C09C0(4u, v35, sub_100CAEC4C, 0, 0);
  (*(v52 + 8))(v10, v7);

  *&v54 = v47;
  *(&v54 + 1) = v26;
  v37 = *(&v46 + 1);
  v55 = v46;
  *&v56 = v51;
  *(&v56 + 1) = v49;
  *&v57 = v48;
  LOWORD(v28) = v73;
  v38 = HIWORD(v73);
  BYTE10(v57) = BYTE2(v73);
  WORD4(v57) = v73;
  v39 = v45;
  BYTE11(v57) = v45;
  v40 = v44;
  *&v58 = v44;
  *(&v58 + 1) = v34;
  v59 = v36;
  sub_100812848(&v54, &v60);
  sub_100005070(v53);
  v60 = v47;
  v61 = v26;
  v62 = v46;
  v63 = v37;
  v64 = v51;
  v65 = v49;
  v66 = v48;
  v68 = v38;
  v67 = v28;
  v69 = v39;
  v70 = v40;
  v71 = v34;
  v72 = v36;
  result = sub_1008127F4(&v60);
  v41 = v57;
  v42 = v50;
  *(v50 + 32) = v56;
  *(v42 + 48) = v41;
  *(v42 + 64) = v58;
  *(v42 + 80) = v59;
  v43 = v55;
  *v42 = v54;
  *(v42 + 16) = v43;
  return result;
}

unint64_t sub_100CB00EC()
{
  result = qword_101A1A120;
  if (!qword_101A1A120)
  {
    result = swift_getWitnessTable(aY_85, &_s5GroupV9CodingKeyON, v0, v1);
    atomic_store(result, &qword_101A1A120);
  }

  return result;
}

unint64_t sub_100CB0140()
{
  result = qword_101A1A128;
  if (!qword_101A1A128)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_1005C4E5C(&qword_101A00880, &qword_10147C850);
    v4[0] = sub_100CB044C(&qword_101A114B8, type metadata accessor for TSContentLanguage.Models.CanvasObject, protocol conformance descriptor for TSContentLanguage.Models.CanvasObject);
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> [A], v3, v4);
    atomic_store(result, &qword_101A1A128);
  }

  return result;
}

unint64_t sub_100CB01F4(uint64_t a1)
{
  result = sub_100CB021C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100CB021C()
{
  result = qword_101A1A130;
  if (!qword_101A1A130)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TSContentLanguage.Models.Group, &type metadata for TSContentLanguage.Models.Group, v0, v1);
    atomic_store(result, &qword_101A1A130);
  }

  return result;
}

unint64_t sub_100CB0270(uint64_t a1)
{
  result = sub_100B10F68();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100CB0298(void *a1)
{
  a1[2] = sub_100B15D6C();
  a1[3] = sub_100B15E98();
  result = sub_100CB02D0();
  a1[4] = result;
  return result;
}

unint64_t sub_100CB02D0()
{
  result = qword_101A1A138;
  if (!qword_101A1A138)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TSContentLanguage.Models.Group, &type metadata for TSContentLanguage.Models.Group, v0, v1);
    atomic_store(result, &qword_101A1A138);
  }

  return result;
}

unint64_t sub_100CB0348()
{
  result = qword_101A1A140;
  if (!qword_101A1A140)
  {
    result = swift_getWitnessTable(byte_1014A9ED8, &_s5GroupV9CodingKeyON, v0, v1);
    atomic_store(result, &qword_101A1A140);
  }

  return result;
}

unint64_t sub_100CB03A0()
{
  result = qword_101A1A148;
  if (!qword_101A1A148)
  {
    result = swift_getWitnessTable(asc_1014A9E10, &_s5GroupV9CodingKeyON, v0, v1);
    atomic_store(result, &qword_101A1A148);
  }

  return result;
}

unint64_t sub_100CB03F8()
{
  result = qword_101A1A150;
  if (!qword_101A1A150)
  {
    result = swift_getWitnessTable(byte_1014A9E38, &_s5GroupV9CodingKeyON, v0, v1);
    atomic_store(result, &qword_101A1A150);
  }

  return result;
}

uint64_t sub_100CB044C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_100CB0494(uint64_t a1, unsigned __int8 a2)
{
  String.hash(into:)();
}

uint64_t sub_100CB05D0(uint64_t a1, unsigned __int8 a2)
{
  String.hash(into:)();
}

uint64_t sub_100CB0748(uint64_t a1, unsigned __int8 a2)
{
  String.hash(into:)();
}

uint64_t sub_100CB08A8(uint64_t a1, unsigned __int8 a2)
{
  String.hash(into:)();
}

uint64_t sub_100CB0A10(uint64_t a1, unsigned __int8 a2)
{
  String.hash(into:)();
}

uint64_t sub_100CB0B54(uint64_t a1, unsigned __int8 a2)
{
  String.hash(into:)();
}

uint64_t sub_100CB0C7C(uint64_t a1, unsigned __int8 a2)
{
  String.hash(into:)();
}

uint64_t sub_100CB0DE0(uint64_t a1, unsigned __int8 a2)
{
  String.hash(into:)();
}

uint64_t sub_100CB0F04(uint64_t a1, unsigned __int8 a2)
{
  String.hash(into:)();
}

uint64_t sub_100CB102C(uint64_t a1, unsigned __int8 a2)
{
  String.hash(into:)();
}

uint64_t sub_100CB112C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_100962394(a2, a3);
  String.hash(into:)();
}

unint64_t sub_100CB12DC(unint64_t a1, int64_t a2)
{
  if (a2 <= 3)
  {
    v8 = 0xD000000000000026;
    if (a2 != 3)
    {
      v8 = a1;
    }

    if (a2 == 2)
    {
      v8 = 0xD000000000000024;
    }

    v9 = 0xD000000000000023;
    if (a2 != 1)
    {
      v9 = a1;
    }

    if (!a2)
    {
      v9 = 0xD000000000000029;
    }

    if (a2 <= 1)
    {
      v7 = v9;
    }

    else
    {
      v7 = v8;
    }
  }

  else
  {
    v2 = 0xD000000000000023;
    v3 = 0xD000000000000024;
    if (a2 == 8)
    {
      v4 = 0xD000000000000024;
    }

    else
    {
      v4 = a1;
    }

    if (a2 != 7)
    {
      v3 = v4;
    }

    if (a2 != 6)
    {
      v2 = v3;
    }

    v5 = 0xD000000000000025;
    v6 = 0xD000000000000027;
    if (a2 != 5)
    {
      v6 = a1;
    }

    if (a2 != 4)
    {
      v5 = v6;
    }

    if (a2 <= 5)
    {
      v7 = v5;
    }

    else
    {
      v7 = v2;
    }
  }

  sub_100962394(a1, a2);
  return v7;
}

void *sub_100CB1808()
{
  result = sub_100CB1828();
  qword_101AD7A30 = result;
  return result;
}

void *sub_100CB1828()
{
  sub_1005B981C(&qword_101A1A1A0, &qword_1014AA120);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1014A04A0;
  *(inited + 32) = UIFontWeightUltraLight;
  *(inited + 40) = 0xD000000000000029;
  *(inited + 48) = 0x8000000101551FA0;
  *(inited + 56) = UIFontWeightThin;
  *(inited + 64) = 0xD000000000000023;
  *(inited + 72) = 0x8000000101551FD0;
  *(inited + 80) = UIFontWeightLight;
  *(inited + 88) = 0xD000000000000024;
  *(inited + 96) = 0x8000000101552000;
  *(inited + 104) = UIFontWeightRegular;
  *(inited + 112) = 0xD000000000000026;
  *(inited + 120) = 0x8000000101552030;
  *(inited + 128) = UIFontWeightMedium;
  *(inited + 136) = 0xD000000000000025;
  *(inited + 144) = 0x8000000101552060;
  *(inited + 152) = UIFontWeightSemibold;
  *(inited + 160) = 0xD000000000000027;
  *(inited + 168) = 0x8000000101552090;
  *(inited + 176) = UIFontWeightBold;
  *(inited + 184) = 0xD000000000000023;
  *(inited + 192) = 0x80000001015520C0;
  *(inited + 200) = UIFontWeightHeavy;
  *(inited + 208) = 0xD000000000000024;
  *(inited + 216) = 0x80000001015520F0;
  *(inited + 224) = UIFontWeightBlack;
  *(inited + 232) = 0xD000000000000024;
  *(inited + 240) = 0x8000000101552120;
  v1 = sub_100BD8F00(inited);
  swift_setDeallocating();
  sub_1005B981C(&qword_101A1A1A8, &qword_1014AA128);
  swift_arrayDestroy();
  return v1;
}

void *sub_100CB1A1C()
{
  result = sub_100CB1A3C();
  qword_101AD7A38 = result;
  return result;
}

void *sub_100CB1A3C()
{
  if (qword_1019F1FD8 == -1)
  {
    goto LABEL_2;
  }

LABEL_25:
  swift_once();
LABEL_2:
  v0 = qword_101AD7A30;
  v1 = qword_101AD7A30 + 64;
  v2 = 1 << *(qword_101AD7A30 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(qword_101AD7A30 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  if (v4)
  {
LABEL_7:
    v8 = v6;
    goto LABEL_11;
  }

  while (1)
  {
    v8 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v8 >= v5)
    {
      break;
    }

    v4 = *(v1 + 8 * v8);
    ++v6;
    if (v4)
    {
LABEL_11:
      v9 = __clz(__rbit64(v4)) | (v8 << 6);
      v10 = *(*(v0 + 48) + 8 * v9);
      v11 = (*(v0 + 56) + 16 * v9);
      v13 = *v11;
      v12 = v11[1];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = sub_10000BE7C(v13, v12);
      v17 = _swiftEmptyDictionarySingleton[2];
      v18 = (v16 & 1) == 0;
      v19 = __OFADD__(v17, v18);
      v20 = v17 + v18;
      if (v19)
      {
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v21 = v16;
      if (_swiftEmptyDictionarySingleton[3] >= v20)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v26 = v15;
          sub_100AAB6B8();
          v15 = v26;
        }
      }

      else
      {
        sub_100A958DC(v20, isUniquelyReferenced_nonNull_native);
        v15 = sub_10000BE7C(v13, v12);
        if ((v21 & 1) != (v22 & 1))
        {
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }
      }

      v4 &= v4 - 1;
      if (v21)
      {
        v7 = v15;

        *(_swiftEmptyDictionarySingleton[7] + 8 * v7) = v10;
        v6 = v8;
        if (v4)
        {
          goto LABEL_7;
        }
      }

      else
      {
        _swiftEmptyDictionarySingleton[(v15 >> 6) + 8] |= 1 << v15;
        v23 = (_swiftEmptyDictionarySingleton[6] + 16 * v15);
        *v23 = v13;
        v23[1] = v12;
        *(_swiftEmptyDictionarySingleton[7] + 8 * v15) = v10;
        v24 = _swiftEmptyDictionarySingleton[2];
        v19 = __OFADD__(v24, 1);
        v25 = v24 + 1;
        if (v19)
        {
          goto LABEL_24;
        }

        _swiftEmptyDictionarySingleton[2] = v25;
        v6 = v8;
        if (v4)
        {
          goto LABEL_7;
        }
      }
    }
  }

  return _swiftEmptyDictionarySingleton;
}

id sub_100CB1CC4(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CRLWPSystemFontNames();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100CB1D20@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100CB23B4(*a1, a1[1]);
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_100CB1D50@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100CB12DC(*v1, *(v1 + 8));
  *a1 = result;
  a1[1] = v4;
  return result;
}

double sub_100CB1D7C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  dispatch thunk of CREncoder.valueContainer()();
  if (a3 <= 3)
  {
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        if (v3)
        {
          return result;
        }
      }

      else if (v3)
      {
        return result;
      }

      goto LABEL_30;
    }

    if (!a3)
    {
      if (v3)
      {
        return result;
      }

      goto LABEL_30;
    }

    if (a3 == 1)
    {
      if (v3)
      {
        return result;
      }

      goto LABEL_30;
    }

LABEL_29:
    if (v3)
    {
      return result;
    }

    goto LABEL_30;
  }

  if (a3 <= 5)
  {
    if (a3 == 4)
    {
      if (v3)
      {
        return result;
      }
    }

    else if (v3)
    {
      return result;
    }

    goto LABEL_30;
  }

  if (a3 == 6)
  {
    if (v3)
    {
      return result;
    }

    goto LABEL_30;
  }

  if (a3 == 7)
  {
    if (v3)
    {
      return result;
    }

    goto LABEL_30;
  }

  if (a3 != 8)
  {
    goto LABEL_29;
  }

  if (v3)
  {
    return result;
  }

LABEL_30:
  dispatch thunk of CREncoder.CRValueContainer.encode(_:)();

  return result;
}

Swift::Int sub_100CB1F7C()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  sub_100CB112C(v4, v1, v2);
  return Hasher._finalize()();
}

Swift::Int sub_100CB1FD0(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  sub_100CB112C(v5, v2, v3);
  return Hasher._finalize()();
}

uint64_t sub_100CB20C8@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_100962394(v2, v3);
}

uint64_t sub_100CB20D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100CB2648();
  v7 = sub_100CB2308();

  return CRValue<>.observableDifference(from:with:)(a1, a2, a3, v6, v7);
}

uint64_t sub_100CB2158@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, __n128 a3@<Q0>)
{
  result = sub_100CB2744(a2, a3);
  if (!v3)
  {
    *a1 = result;
    a1[1] = v6;
  }

  return result;
}

uint64_t sub_100CB21A0(uint64_t a1)
{
  v2 = sub_100CB2648();
  v3 = sub_1007A9874();

  return CRValue<>.minEncodingVersion.getter(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100CB2258(uint64_t a1, uint64_t a2)
{
  v4 = sub_1007A9874();

  return RawRepresentable<>.isDefaultState.getter(a1, a2, v4, &protocol witness table for String);
}

unint64_t sub_100CB22B0()
{
  result = qword_101A1A180;
  if (!qword_101A1A180)
  {
    result = swift_getWitnessTable(byte_1014A9F68, &type metadata for CRLWPFontName, v0, v1);
    atomic_store(result, &qword_101A1A180);
  }

  return result;
}

unint64_t sub_100CB2308()
{
  result = qword_101A1A188;
  if (!qword_101A1A188)
  {
    result = swift_getWitnessTable(byte_1014A9FC0, &type metadata for CRLWPFontName, v0, v1);
    atomic_store(result, &qword_101A1A188);
  }

  return result;
}

unint64_t sub_100CB2360()
{
  result = qword_101A1A190;
  if (!qword_101A1A190)
  {
    result = swift_getWitnessTable(byte_1014A9FE8, &type metadata for CRLWPFontName, v0, v1);
    atomic_store(result, &qword_101A1A190);
  }

  return result;
}

uint64_t sub_100CB23B4(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 == 0xD000000000000029 && 0x8000000101551FA0 == a2;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v3 == 0xD000000000000023 && 0x8000000101551FD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v3 == 0xD000000000000024 && 0x8000000101552000 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v3 == 0xD000000000000026 && 0x8000000101552030 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v3 == 0xD000000000000025 && 0x8000000101552060 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v3 == 0xD000000000000027 && 0x8000000101552090 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v3 == 0xD000000000000023 && 0x80000001015520C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v3 == 0xD000000000000024 && 0x80000001015520F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v3 == 0xD000000000000024 && 0x8000000101552120 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  return v3;
}

unint64_t sub_100CB2648()
{
  result = qword_101A1A198;
  if (!qword_101A1A198)
  {
    result = swift_getWitnessTable(aA_78, &type metadata for CRLWPFontName, v0, v1);
    atomic_store(result, &qword_101A1A198);
  }

  return result;
}

uint64_t sub_100CB269C(double a1)
{
  if (qword_1019F1FD8 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = qword_101AD7A30;
  if (!*(qword_101AD7A30 + 16))
  {
    return 0xD000000000000026;
  }

  v2 = sub_1007C90C4(a1);
  if ((v3 & 1) == 0)
  {
    return 0xD000000000000026;
  }

  v4 = *(*(v1 + 56) + 16 * v2);

  return v4;
}

uint64_t sub_100CB2744(uint64_t a1, __n128 a2)
{
  dispatch thunk of CRDecoder.valueContainer()();
  if (v2)
  {
  }

  else
  {
    a1 = dispatch thunk of CRDecoder.CRValueContainer.decode(_:)();
    v5 = v4;

    if ((a1 != 0xD000000000000011 || 0x8000000101597D40 != v5) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (a1 != 0x546D65747379732ELL || v5 != 0xEB000000006E6968) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (a1 != 0x4C6D65747379732ELL || v5 != 0xEC00000074686769) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (a1 != 0x526D65747379732ELL || v5 != 0xEE0072616C756765) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (a1 != 0x4D6D65747379732ELL || v5 != 0xED00006D75696465) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (a1 != 0x536D65747379732ELL || v5 != 0xEF646C6F62696D65) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (a1 != 0x426D65747379732ELL || v5 != 0xEB00000000646C6FLL) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (a1 != 0x486D65747379732ELL || v5 != 0xEC00000079766165) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      if (a1 == 0x426D65747379732ELL && v5 == 0xEC0000006B63616CLL)
      {
      }

      else
      {
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v7 & 1) == 0)
        {
          return a1;
        }
      }

      return 0;
    }

    return 0;
  }

  return a1;
}

uint64_t sub_100CB2B1C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF6 && *(a1 + 16))
  {
    return (*a1 + 2147483639);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 8;
  if (v4 >= 0xA)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100CB2B74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF7)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483639;
    if (a3 >= 0x7FFFFFF7)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF7)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 8;
    }
  }

  return result;
}

uint64_t sub_100CB2BD4(uint64_t a1, char a2)
{
  *(v3 + 296) = a2;
  *(v3 + 200) = a1;
  *(v3 + 208) = v2;
  v4 = type metadata accessor for UUID();
  *(v3 + 216) = v4;
  *(v3 + 224) = *(v4 - 8);
  *(v3 + 232) = swift_task_alloc();
  *(v3 + 240) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v3 + 248) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 256) = v6;
  *(v3 + 264) = v5;

  return _swift_task_switch(sub_100CB2CD8, v6, v5);
}

uint64_t sub_100CB2CD8()
{
  if (qword_1019F2288 != -1)
  {
    swift_once();
  }

  v27 = *(v0 + 240);
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  v3 = *(v0 + 200);
  v4 = *(v0 + 208);
  v5 = static OS_os_log.realTimeSync;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v4 + 32);
  *(v0 + 184) = Strong;
  *(v0 + 192) = v8;
  sub_1005B981C(&qword_101A1A778, &qword_1014AA550);
  v9 = String.init<A>(describing:)();
  v11 = v10;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v9;
  *(inited + 40) = v11;
  v12 = static os_log_type_t.default.getter();
  sub_100005404(v5, &_mh_execute_header, v12, "leaveGroupSession() with delegate %@", 36, 2, inited);
  swift_setDeallocating();
  sub_100005070((inited + 32));
  v13 = *(v2 + 16);
  v13(v27, v3 + OBJC_IVAR____TtC8Freeform20CRLBoardGroupSession_sessionID, v1);
  swift_beginAccess();
  if (*(*(v4 + 40) + 16))
  {
    v14 = *(v0 + 240);

    sub_10003E994(v14);
    if (v15)
    {
      v16 = *(v0 + 232);
      v17 = *(v0 + 240);
      v18 = *(v0 + 216);

      v13(v16, v17, v18);
      swift_beginAccess();
      sub_100BC2478(0, v16);
      swift_endAccess();
      v13(v16, v17, v18);
      swift_beginAccess();
      sub_100BC2478(0, v16);
      swift_endAccess();
      v13(v16, v17, v18);
      swift_beginAccess();
      sub_100BC4368(0, v16);
      swift_endAccess();
      v19 = swift_unknownObjectWeakLoadStrong();
      *(v0 + 272) = v19;
      if (v19)
      {
        v20 = v19;
        v21 = swift_task_alloc();
        *(v0 + 280) = v21;
        *v21 = v0;
        v21[1] = sub_100CB3108;
        v22 = *(v0 + 200);

        return sub_100CC0280(v22, v20);
      }

      else
      {
        v25 = swift_task_alloc();
        *(v0 + 288) = v25;
        *v25 = v0;
        v25[1] = sub_100CB326C;
        v26 = *(v0 + 296);

        return sub_100B52CEC(v26);
      }
    }
  }

  (*(*(v0 + 224) + 8))(*(v0 + 240), *(v0 + 216));

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_100CB3108()
{
  v1 = *v0;
  v2 = *v0;

  swift_unknownObjectRelease();
  v3 = swift_task_alloc();
  *(v1 + 288) = v3;
  *v3 = v2;
  v3[1] = sub_100CB326C;
  v4 = *(v1 + 296);

  return sub_100B52CEC(v4);
}

uint64_t sub_100CB326C()
{
  v1 = *v0;

  v2 = *(v1 + 264);
  v3 = *(v1 + 256);

  return _swift_task_switch(sub_100CB338C, v3, v2);
}

uint64_t sub_100CB338C()
{
  v1 = v0[25];
  v2 = v0[26];

  (*(*v2 + 336))(v1);
  (*(v0[28] + 8))(v0[30], v0[27]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100CB344C(uint64_t a1)
{
  v2[24] = a1;
  v2[25] = v1;
  v3 = type metadata accessor for UUID();
  v2[26] = v3;
  v2[27] = *(v3 - 8);
  v2[28] = swift_task_alloc();
  type metadata accessor for CRLGloballyScopedBoardIdentifier(0);
  v2[29] = swift_task_alloc();
  v4 = sub_1005B981C(&qword_101A1A6F8, &qword_1014AA4D0);
  v2[30] = v4;
  v2[31] = *(v4 - 8);
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = type metadata accessor for MainActor();
  v2[35] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[36] = v6;
  v2[37] = v5;

  return _swift_task_switch(sub_100CB35E4, v6, v5);
}

uint64_t sub_100CB35E4()
{
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v3 = *(v0 + 240);
  v4 = *(v0 + 248);
  GroupSession.state.getter();
  (*(v4 + 104))(v2, enum case for GroupSession.State.joined<A>(_:), v3);
  sub_10001A2F8(&qword_101A1A788, &qword_101A1A6F8, &qword_1014AA4D0, &protocol conformance descriptor for GroupSession<A>.State);
  v5 = dispatch thunk of static Equatable.== infix(_:_:)();
  v6 = *(v4 + 8);
  v6(v2, v3);
  v6(v1, v3);
  if (v5)
  {

    if (qword_1019F2288 != -1)
    {
      swift_once();
    }

    v7 = static OS_os_log.realTimeSync;
    v8 = static os_log_type_t.default.getter();
    sub_100005404(v7, &_mh_execute_header, v8, "CRLGroupSessionManager: we should not be attempting group session if the state is already .joined", 97, 2, _swiftEmptyArrayStorage);

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v9 = (*(**(v0 + 200) + 296))(*(v0 + 192));
    *(v0 + 304) = v9;
    v12 = qword_1019F2288;
    v13 = v9;

    if (v12 != -1)
    {
      swift_once();
    }

    v14 = *(v0 + 232);
    v34 = *(v0 + 224);
    v15 = *(v0 + 208);
    v16 = *(v0 + 216);
    v35 = static OS_os_log.realTimeSync;
    *(v0 + 312) = static OS_os_log.realTimeSync;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    *(v0 + 152) = type metadata accessor for CRLOpportunisticGroupActivity(0);
    *(v0 + 160) = sub_10003ADF4(&qword_101A1A6E8, type metadata accessor for CRLOpportunisticGroupActivity, asc_1014AA468);
    GroupSession.activity.getter();
    sub_100020E58((v0 + 128), *(v0 + 152));
    sub_100CB6748(v14);
    v36 = UUID.uuidString.getter();
    v37 = v18;

    v19._countAndFlagsBits = 58;
    v19._object = 0xE100000000000000;
    String.append(_:)(v19);

    v20 = (v14 + *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20));
    v21 = *v20;
    v22 = v20[1];

    v23._countAndFlagsBits = v21;
    v23._object = v22;
    String.append(_:)(v23);

    sub_100CC2E10(v14, type metadata accessor for CRLGloballyScopedBoardIdentifier);
    *(inited + 56) = &type metadata for String;
    v24 = sub_1000053B0();
    *(inited + 64) = v24;
    *(inited + 32) = v36;
    *(inited + 40) = v37;
    v25 = OBJC_IVAR____TtC8Freeform20CRLBoardGroupSession_sessionID;
    *(v0 + 320) = OBJC_IVAR____TtC8Freeform20CRLBoardGroupSession_sessionID;
    v26 = *(v16 + 16);
    *(v0 + 328) = v26;
    *(v0 + 336) = (v16 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v26(v34, v13 + v25, v15);

    v27 = UUID.uuidString.getter();
    v29 = v28;
    v30 = *(v16 + 8);
    *(v0 + 344) = v30;
    *(v0 + 352) = (v16 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v30(v34, v15);
    *(inited + 96) = &type metadata for String;
    *(inited + 104) = v24;
    *(inited + 72) = v27;
    *(inited + 80) = v29;
    sub_100005070((v0 + 128));
    v31 = static os_log_type_t.default.getter();
    sub_100005404(v35, &_mh_execute_header, v31, "CRLGroupSessionManager: received board %@ from group session with ID: %@.", 73, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    *(v0 + 360) = static MainActor.shared.getter();
    v33 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100CB3B70, v33, v32);
  }
}

uint64_t sub_100CB3B70()
{

  v1 = *(v0 + 288);
  v2 = *(v0 + 296);

  return _swift_task_switch(sub_100CB3BD4, v1, v2);
}

uint64_t sub_100CB3BD4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[46] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[47] = v2;
    *v2 = v0;
    v2[1] = sub_100CB3E9C;
    v3 = v0[38];
    v4 = v0[25];

    return sub_1010D5A44(v4, &off_10187DAA0, v3);
  }

  else
  {
    v17 = v0[43];
    v6 = v0[41];
    v7 = v0[39];
    v8 = v0[40];
    v9 = v0[38];
    v10 = v0[28];
    v11 = v0[25];
    v12 = v0[26];
    sub_100CB4E60(v9);
    v13 = static os_log_type_t.default.getter();
    sub_100005404(v7, &_mh_execute_header, v13, "CRLGroupSessionManager: Calling out to group session to join.", 61, 2, _swiftEmptyArrayStorage);
    sub_100CB57AC();
    v6(v10, v9 + v8, v12);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = v11[5];
    v11[5] = 0x8000000000000000;
    sub_100AA045C(v9, v10, isUniquelyReferenced_nonNull_native);
    v17(v10, v12);
    v11[5] = v19;
    swift_endAccess();
    v18 = (*(*v11 + 312) + **(*v11 + 312));
    v15 = swift_task_alloc();
    v0[49] = v15;
    *v15 = v0;
    v15[1] = sub_100CB4054;
    v16 = v0[38];

    return v18(v16);
  }
}

uint64_t sub_100CB3E9C()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 384) = v0;

  swift_unknownObjectRelease();
  if (v0)
  {
    v4 = swift_task_alloc();
    v2[50] = v4;
    *v4 = v3;
    v4[1] = sub_100CB4434;
    v5 = v2[38];

    return sub_100CB45F8(v5, v0);
  }

  else
  {
    v7 = v2[36];
    v8 = v2[37];

    return _swift_task_switch(sub_100CB420C, v7, v8);
  }
}

uint64_t sub_100CB4054()
{
  v1 = *v0;

  v2 = *(v1 + 296);
  v3 = *(v1 + 288);

  return _swift_task_switch(sub_100CB4174, v3, v2);
}

uint64_t sub_100CB4174()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100CB420C()
{
  v13 = v0[43];
  v1 = v0[41];
  v2 = v0[39];
  v3 = v0[40];
  v4 = v0[38];
  v5 = v0[28];
  v6 = v0[25];
  v7 = v0[26];
  sub_100CB4E60(v4);
  v8 = static os_log_type_t.default.getter();
  sub_100005404(v2, &_mh_execute_header, v8, "CRLGroupSessionManager: Calling out to group session to join.", 61, 2, _swiftEmptyArrayStorage);
  sub_100CB57AC();
  v1(v5, v4 + v3, v7);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = v6[5];
  v6[5] = 0x8000000000000000;
  sub_100AA045C(v4, v5, isUniquelyReferenced_nonNull_native);
  v13(v5, v7);
  v6[5] = v15;
  swift_endAccess();
  v14 = (*(*v6 + 312) + **(*v6 + 312));
  v10 = swift_task_alloc();
  v0[49] = v10;
  *v10 = v0;
  v10[1] = sub_100CB4054;
  v11 = v0[38];

  return v14(v11);
}

uint64_t sub_100CB4434()
{
  v1 = *v0;

  v2 = *(v1 + 296);
  v3 = *(v1 + 288);

  return _swift_task_switch(sub_100CB4554, v3, v2);
}

uint64_t sub_100CB4554()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100CB45F8(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = type metadata accessor for MainActor();
  v3[17] = static MainActor.shared.getter();
  v7 = (*(*v2 + 320) + **(*v2 + 320));
  v5 = swift_task_alloc();
  v3[18] = v5;
  *v5 = v3;
  v5[1] = sub_100CB4750;

  return v7(a1);
}

uint64_t sub_100CB4750()
{
  v1 = *v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v1 + 152) = v3;
  *(v1 + 160) = v2;

  return _swift_task_switch(sub_100CB4894, v3, v2);
}

uint64_t sub_100CB4894(uint64_t a1)
{
  *(v1 + 168) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100CB4920, v3, v2);
}

uint64_t sub_100CB4920()
{

  v1 = *(v0 + 152);
  v2 = *(v0 + 160);

  return _swift_task_switch(sub_100CB4984, v1, v2);
}

uint64_t sub_100CB4984()
{

  if (qword_1019F2288 != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.realTimeSync;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  swift_getErrorValue();
  v3 = Error.localizedDescription.getter();
  v5 = v4;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v3;
  *(inited + 40) = v5;
  v6 = static os_log_type_t.error.getter();
  sub_100005404(v1, &_mh_execute_header, v6, "CRLGroupSessionManager: could not associate group session. Error: %@", 68, 2, inited);
  swift_setDeallocating();
  sub_100005070((inited + 32));
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100CB4AE0(uint64_t a1, char a2)
{
  *(v3 + 96) = a2;
  *(v3 + 40) = a1;
  *(v3 + 48) = v2;
  type metadata accessor for MainActor();
  *(v3 + 56) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 64) = v5;
  *(v3 + 72) = v4;

  return _swift_task_switch(sub_100CB4B7C, v5, v4);
}

uint64_t sub_100CB4B7C()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  v2 = *(v1 + 40);
  if (*(v2 + 16))
  {
    v3 = *(v0 + 40);

    v4 = sub_10003E994(v3);
    if (v5)
    {
      v6 = *(*(v2 + 56) + 8 * v4);
      *(v0 + 80) = v6;

      v7 = swift_task_alloc();
      *(v0 + 88) = v7;
      *v7 = v0;
      v7[1] = sub_100CB4CD4;
      v8 = *(v0 + 96);

      return sub_100CB2BD4(v6, v8);
    }
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100CB4CD4()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_100CB4DF4, v3, v2);
}

uint64_t sub_100CB4DF4()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_100CB4E60(uint64_t a1)
{
  v2 = v1;
  swift_allocObject();
  swift_weakInit();

  sub_1005B981C(&qword_101A1A790, &unk_1014AA5A0);
  sub_10001A2F8(&qword_101A1A798, &qword_101A1A790, &unk_1014AA5A0, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  v4 = Publisher<>.sink(receiveValue:)();

  v5 = OBJC_IVAR____TtC8Freeform20CRLBoardGroupSession_sessionID;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v1 + 48);
  *(v1 + 48) = 0x8000000000000000;
  sub_100A9BD0C(v4, a1 + v5, isUniquelyReferenced_nonNull_native);
  *(v1 + 48) = v12;
  swift_endAccess();
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a1;

  sub_1005B981C(&qword_101A1A7A0, &qword_1014B6210);
  sub_10001A2F8(&qword_101A1A7A8, &qword_101A1A7A0, &qword_1014B6210, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  v9 = Publisher<>.sink(receiveValue:)();

  swift_beginAccess();

  v10 = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v2 + 56);
  *(v2 + 56) = 0x8000000000000000;
  sub_100A9BD0C(v9, a1 + v5, v10);
  *(v2 + 56) = v13;
  swift_endAccess();

  return result;
}

double sub_100CB5100(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v3 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v26 - v4;
  v6 = sub_1005B981C(&qword_101A1A740, &unk_1014B6200);
  v7 = v6 - 8;
  v28 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - v8;
  sub_10000BE14(a1, &v26 - v8, &qword_101A1A740, &unk_1014B6200);
  v10 = v9[*(v7 + 56)];
  v11 = type metadata accessor for UUID();
  v12 = *(*(v11 - 8) + 8);
  v12(v9, v11);
  if (v10 == 1)
  {
    v27 = v5;
    if (qword_1019F2288 != -1)
    {
      swift_once();
    }

    v14 = static OS_os_log.realTimeSync;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    sub_10000BE14(a1, v9, &qword_101A1A740, &unk_1014B6200);
    v16 = UUID.uuidString.getter();
    v26 = a1;
    v18 = v17;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v16;
    *(inited + 40) = v18;
    v12(v9, v11);
    v19 = static os_log_type_t.default.getter();
    sub_100005404(v14, &_mh_execute_header, v19, "CRLGroupSessionManager: Group session invalidated. Cleaning up session with ID: %@.", 83, 2, inited);
    swift_setDeallocating();
    sub_100005070((inited + 32));
    v20 = type metadata accessor for TaskPriority();
    v21 = v27;
    (*(*(v20 - 8) + 56))(v27, 1, 1, v20);
    v22 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    sub_10000BE14(v26, v9, &qword_101A1A740, &unk_1014B6200);
    type metadata accessor for MainActor();

    v23 = static MainActor.shared.getter();
    v24 = (*(v28 + 80) + 40) & ~*(v28 + 80);
    v25 = swift_allocObject();
    v25[2] = v23;
    v25[3] = &protocol witness table for MainActor;
    v25[4] = v22;
    sub_100CC2E70(v9, v25 + v24);

    sub_100641C1C(0, 0, v21, &unk_1014AA640, v25);
  }

  return result;
}

double sub_100CB54D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v5 - 8);
  v7 = &v20 - v6;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (qword_1019F2288 != -1)
    {
      swift_once();
    }

    v11 = static OS_os_log.realTimeSync;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    v13 = UUID.uuidString.getter();
    v15 = v14;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v13;
    *(inited + 40) = v15;
    *(inited + 96) = sub_1005B981C(&qword_101A1A7B0, &qword_1014AA5B0);
    *(inited + 104) = sub_10001A2F8(&qword_101A1A7B8, &qword_101A1A7B0, &qword_1014AA5B0, &protocol conformance descriptor for Set<A>);
    *(inited + 72) = a1;

    v16 = static os_log_type_t.default.getter();
    sub_100005404(v11, &_mh_execute_header, v16, "CRLGroupSessionManager: Group session active participants updated. ID: %{public}@. ActiveParticipants: %@", 105, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v17 = type metadata accessor for TaskPriority();
    (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
    type metadata accessor for MainActor();

    v18 = static MainActor.shared.getter();
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = &protocol witness table for MainActor;
    v19[4] = v10;
    v19[5] = a1;
    v19[6] = a3;
    sub_100641C1C(0, 0, v7, &unk_1014AA5C0, v19);
  }

  return result;
}

uint64_t sub_100CB57AC()
{
  v1 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v1 - 8);
  v3 = &v18 - v2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1019F2288 != -1)
  {
    swift_once();
  }

  v8 = static OS_os_log.realTimeSync;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v10 = *(v0 + qword_101AD8560);
  GroupSession.id.getter();
  v11 = UUID.uuidString.getter();
  v13 = v12;
  (*(v5 + 8))(v7, v4);
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v11;
  *(inited + 40) = v13;
  v14 = static os_log_type_t.default.getter();
  sub_100005404(v8, &_mh_execute_header, v14, "CRLBoardShareSession: joining group session with ID: %@.", 56, 2, inited);
  swift_setDeallocating();
  sub_100005070((inited + 32));
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v10;

  sub_100CA64C8(0, 0, v3, &unk_1014AA598, v16);

  return sub_10000CAAC(v3, &qword_1019FB750, &qword_10146F1B0);
}

double sub_100CB5A68()
{
  v1 = sub_1005B981C(&qword_101A1A700, &qword_1014AA4D8);
  v2 = *(v1 - 8);
  v58 = v1;
  v59 = v2;
  __chkstk_darwin(v1);
  v56 = v41 - v3;
  v4 = sub_1005B981C(&qword_101A1A708, &unk_1014AA4E0);
  v5 = *(v4 - 8);
  v60 = v4;
  v61 = v5;
  __chkstk_darwin(v4);
  v57 = v41 - v6;
  v7 = sub_1005B981C(&unk_1019FB7E0, &unk_101474E60);
  __chkstk_darwin(v7 - 8);
  v9 = v41 - v8;
  v51 = sub_1005B981C(&qword_101A1A710, &qword_1014AA4F0);
  v53 = *(v51 - 8);
  __chkstk_darwin(v51);
  v11 = v41 - v10;
  v54 = sub_1005B981C(&qword_101A1A718, &qword_1014AA4F8);
  v55 = *(v54 - 8);
  __chkstk_darwin(v54);
  v42 = v41 - v12;
  v62 = type metadata accessor for UUID();
  v47 = *(v62 - 8);
  v13 = *(v47 + 64);
  __chkstk_darwin(v62);
  v45 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v65 = v41 - v15;
  v16 = swift_allocObject();
  v63 = v16;
  *(v16 + 16) = 0;
  v17 = (v16 + 16);
  v18 = *(v0 + qword_101AD8560);
  GroupSession.id.getter();
  v52 = v18;
  GroupSession.activity.getter();
  v43 = *(v66[0] + OBJC_IVAR____TtC8Freeform29CRLOpportunisticGroupActivity_isMeToMe);

  GroupSession.activity.getter();

  GroupSession.$state.getter();
  v41[1] = sub_100006370(0, &qword_1019F2D90, OS_dispatch_queue_ptr);
  v19 = static OS_dispatch_queue.main.getter();
  v66[0] = v19;
  v49 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v20 = *(v49 - 8);
  v48 = *(v20 + 56);
  v50 = v20 + 56;
  v41[0] = v9;
  v48(v9, 1, 1, v49);
  v46 = &protocol conformance descriptor for Published<A>.Publisher;
  sub_10001A2F8(&qword_101A1A720, &qword_101A1A710, &qword_1014AA4F0, &protocol conformance descriptor for Published<A>.Publisher);
  v44 = sub_10000FDE0(&qword_1019FB828, &qword_1019F2D90, OS_dispatch_queue_ptr, &protocol conformance descriptor for OS_dispatch_queue);
  v21 = v42;
  v22 = v51;
  Publisher.receive<A>(on:options:)();
  sub_10000CAAC(v9, &unk_1019FB7E0, &unk_101474E60);

  (*(v53 + 8))(v11, v22);
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = v47;
  v25 = v45;
  v26 = v62;
  (*(v47 + 16))(v45, v65, v62);
  v27 = (*(v24 + 80) + 25) & ~*(v24 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v23;
  *(v28 + 24) = 1;
  (*(v24 + 32))(v28 + v27, v25, v26);
  *(v28 + v27 + v13) = v43;
  *(v28 + ((v27 + v13) & 0xFFFFFFFFFFFFFFF8) + 8) = v63;
  sub_10001A2F8(&qword_101A1A728, &qword_101A1A718, &qword_1014AA4F8, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

  v29 = v54;
  v30 = Publisher<>.sink(receiveValue:)();

  (*(v55 + 8))(v21, v29);
  swift_beginAccess();
  *v17 = v30;

  v31 = v56;
  GroupSession.$activeParticipants.getter();
  v32 = static OS_dispatch_queue.main.getter();
  v66[0] = v32;
  v33 = v41[0];
  v48(v41[0], 1, 1, v49);
  sub_10001A2F8(&qword_101A1A730, &qword_101A1A700, &qword_1014AA4D8, v46);
  v35 = v57;
  v34 = v58;
  Publisher.receive<A>(on:options:)();
  sub_10000CAAC(v33, &unk_1019FB7E0, &unk_101474E60);

  (*(v59 + 8))(v31, v34);
  swift_allocObject();
  v36 = v64;
  swift_weakInit();
  sub_10001A2F8(&qword_101A1A738, &qword_101A1A708, &unk_1014AA4E0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v37 = v60;
  v38 = Publisher<>.sink(receiveValue:)();

  (*(v61 + 8))(v35, v37);
  v66[3] = type metadata accessor for AnyCancellable();
  v66[4] = &protocol witness table for AnyCancellable;
  v66[0] = v38;
  (*(v24 + 8))(v65, v62);
  v39 = qword_101A218A0;
  swift_beginAccess();
  sub_10002C638(v66, v36 + v39, &unk_101A08DE0, &unk_1014870D0);
  swift_endAccess();

  return result;
}

uint64_t sub_100CB6330(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for GroupActivityMetadata.ActivityType();
  __chkstk_darwin(v6 - 8);
  v36 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for GroupActivityMetadata();
  v37 = *(v8 - 8);
  v38 = v8;
  __chkstk_darwin(v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + OBJC_IVAR____TtC8Freeform29CRLOpportunisticGroupActivity_isMeToMe) = a2;
  if (qword_1019F2288 != -1)
  {
    swift_once();
  }

  v11 = static OS_os_log.realTimeSync;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  v39 = 0;
  v40 = 0xE000000000000000;
  _StringGuts.grow(_:)(34);

  v39 = 0xD00000000000001FLL;
  v40 = 0x8000000101598010;
  if (a2)
  {
    v13 = 0x5D654D6F54654D5BLL;
  }

  else
  {
    v13 = 0x5D6465726168535BLL;
  }

  v14 = 0xE800000000000000;
  String.append(_:)(*&v13);

  v15._countAndFlagsBits = 58;
  v15._object = 0xE100000000000000;
  String.append(_:)(v15);
  v16 = v39;
  v17 = v40;
  *(inited + 56) = &type metadata for String;
  v18 = sub_1000053B0();
  *(inited + 64) = v18;
  *(inited + 32) = v16;
  *(inited + 40) = v17;
  v19 = UUID.uuidString.getter();
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v18;
  *(inited + 72) = v19;
  *(inited + 80) = v20;
  v21 = static os_log_type_t.default.getter();
  sub_100005404(v11, &_mh_execute_header, v21, "[Automation] %@ Created new opportunistic group activity with activity ID: %{public}@", 85, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v39 = UUID.uuidString.getter();
  v40 = v22;

  v23._countAndFlagsBits = 58;
  v23._object = 0xE100000000000000;
  String.append(_:)(v23);

  v24 = v39;
  v25 = v40;
  v26 = (a1 + *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20));
  v27 = *v26;
  v28 = v26[1];
  v39 = v24;
  v40 = v25;

  v29._countAndFlagsBits = v27;
  v29._object = v28;
  String.append(_:)(v29);

  v30 = v40;
  *(v3 + 16) = v39;
  *(v3 + 24) = v30;
  v31 = [objc_opt_self() mainBundle];
  v32 = String._bridgeToObjectiveC()();
  v33 = String._bridgeToObjectiveC()();
  v34 = [v31 localizedStringForKey:v32 value:v33 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  GroupActivityMetadata.init()();
  static GroupActivityMetadata.ActivityType.generic.getter();
  GroupActivityMetadata.type.setter();
  GroupActivityMetadata.title.setter();
  sub_100CC2E10(a1, type metadata accessor for CRLGloballyScopedBoardIdentifier);
  (*(v37 + 32))(v3 + OBJC_IVAR____TtC8Freeform29CRLOpportunisticGroupActivity_metadata, v10, v38);
  return v3;
}

uint64_t sub_100CB6748@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v2 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v2 - 8);
  v25[2] = v25 - v3;
  v27 = type metadata accessor for UUID();
  v4 = *(v27 - 8);
  __chkstk_darwin(v27);
  v25[1] = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  __chkstk_darwin(v7);
  v9 = v25 - v8;
  v25[0] = type metadata accessor for CRLBoardIdentifierStorage(0);
  __chkstk_darwin(v25[0]);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v25 - v13;
  v15 = type metadata accessor for CRLGloballyScopedBoardIdentifier(0);
  __chkstk_darwin(v15 - 8);
  v17 = v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v1 + 16);
  v18 = *(v1 + 24);

  v20 = sub_10084CD4C(v9, v19, v18);
  v22 = v21;

  (*(v4 + 32))(v11, v9, v27);
  v23 = &v11[*(v25[0] + 20)];
  *v23 = v20;
  v23[1] = v22;
  sub_100025600(v11, v14, type metadata accessor for CRLBoardIdentifierStorage);
  sub_100025600(v14, v17, type metadata accessor for CRLBoardIdentifierStorage);
  return sub_100025600(v17, v26, type metadata accessor for CRLGloballyScopedBoardIdentifier);
}

uint64_t sub_100CB6AE4()
{
  v1 = 0x617461646174656DLL;
  if (*v0 != 1)
  {
    v1 = 0x654D6F54654D7369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_100CB6B34@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100CC2A40(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100CB6B5C(uint64_t a1)
{
  v2 = sub_100CBD64C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100CB6B98(uint64_t a1)
{
  v2 = sub_100CBD64C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100CB6BD4()
{

  v1 = OBJC_IVAR____TtC8Freeform29CRLOpportunisticGroupActivity_metadata;
  v2 = type metadata accessor for GroupActivityMetadata();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_100CB6C78(void *a1)
{
  v3 = v1;
  v5 = type metadata accessor for GroupActivityMetadata();
  v15 = *(v5 - 8);
  v16 = v5;
  __chkstk_darwin(v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1005B981C(&qword_101A1A7C0, &qword_1014AA658);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - v10;
  sub_100020E58(a1, a1[3]);
  sub_100CBD64C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = 0;

  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    (*(v9 + 8))(v11, v8);
  }

  else
  {

    v14 = v15;
    v13 = v16;
    (*(v15 + 16))(v7, v3 + OBJC_IVAR____TtC8Freeform29CRLOpportunisticGroupActivity_metadata, v16);
    v18 = 1;
    sub_10003ADF4(&qword_101A1A7C8, &type metadata accessor for GroupActivityMetadata, &protocol conformance descriptor for GroupActivityMetadata);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v14 + 8))(v7, v13);
    v17 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    return (*(v9 + 8))(v11, v8);
  }
}

void *sub_100CB6F60(void *a1)
{
  v3 = v1;
  v5 = type metadata accessor for GroupActivityMetadata();
  v16 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1005B981C(&qword_101A1A6D0, &qword_1014AA4C8);
  v8 = *(v17 - 8);
  __chkstk_darwin(v17);
  v10 = &v15 - v9;
  v11 = a1[3];
  v18 = a1;
  sub_100020E58(a1, v11);
  sub_100CBD64C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    type metadata accessor for CRLOpportunisticGroupActivity(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v21 = 0;
    *(v3 + 16) = KeyedDecodingContainer.decode(_:forKey:)();
    *(v3 + 24) = v12;
    v20 = 1;
    sub_10003ADF4(&qword_101A1A6E0, &type metadata accessor for GroupActivityMetadata, &protocol conformance descriptor for GroupActivityMetadata);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v16 + 32))(v3 + OBJC_IVAR____TtC8Freeform29CRLOpportunisticGroupActivity_metadata, v7, v5);
    v19 = 2;
    v14 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v8 + 8))(v10, v17);
    *(v3 + OBJC_IVAR____TtC8Freeform29CRLOpportunisticGroupActivity_isMeToMe) = v14 & 1;
  }

  sub_100005070(v18);
  return v3;
}

uint64_t sub_100CB72F8(uint64_t a1)
{
  v4 = *v1;
  v5 = OBJC_IVAR____TtC8Freeform29CRLOpportunisticGroupActivity_metadata;
  v6 = type metadata accessor for GroupActivityMetadata();
  (*(*(v6 - 8) + 16))(a1, v4 + v5, v6);
  v7 = *(v2 + 8);

  return v7();
}

void *sub_100CB73AC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for CRLOpportunisticGroupActivity(0);
  v5 = swift_allocObject();
  result = sub_100CB6F60(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_100CB742C(uint64_t a1, uint64_t a2)
{
  dispatch thunk of GroupSessionProvider.activity.getter();
  v2 = *(v4 + OBJC_IVAR____TtC8Freeform29CRLOpportunisticGroupActivity_isMeToMe);

  return v2;
}

uint64_t sub_100CB7478(uint64_t a1)
{
  result = sub_10001A2F8(&qword_101A1A1B0, &qword_101A1A1B8, &qword_1014AA1C0, &protocol conformance descriptor for CKShareGroupSessionProvider<A>);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100CB74D0(uint64_t a1)
{
  result = sub_10001A2F8(&qword_101A1A1C0, &qword_101A1A1C8, &qword_1014AA1F0, &protocol conformance descriptor for PersonalGroupSessionProvider<A>);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100CB752C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v44 = a4;
  v45 = a3;
  v9 = type metadata accessor for CRLGloballyScopedBoardIdentifier(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v42 - v13;
  __chkstk_darwin(v15);
  v17 = &v42 - v16;
  *(v6 + OBJC_IVAR____TtC8Freeform36CRLBoardOpportunisticActivityWrapper_session) = 0;
  *(v6 + OBJC_IVAR____TtC8Freeform36CRLBoardOpportunisticActivityWrapper_sessionConfiguring + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + OBJC_IVAR____TtC8Freeform36CRLBoardOpportunisticActivityWrapper_sessionObserverTask) = 0;
  v18 = OBJC_IVAR____TtC8Freeform36CRLBoardOpportunisticActivityWrapper_globallyScopedBoardIdentifier;
  v46 = a1;
  sub_100CC2DA8(a1, v6 + OBJC_IVAR____TtC8Freeform36CRLBoardOpportunisticActivityWrapper_globallyScopedBoardIdentifier, type metadata accessor for CRLGloballyScopedBoardIdentifier);
  if (!a2)
  {
    if (qword_1019F2288 != -1)
    {
      swift_once();
    }

    v29 = static OS_os_log.realTimeSync;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = 0xD000000000000028;
    *(inited + 40) = 0x8000000101598910;
    v31 = static os_log_type_t.default.getter();
    sub_100005404(v29, &_mh_execute_header, v31, "[Automation] %@ Initialize CRLOpportunisticMeToMeGroupSessionProvider", 69, 2, inited);
    swift_setDeallocating();
    sub_100005070((inited + 32));
    sub_1005B981C(&qword_101A1A1C8, &qword_1014AA1F0);
    v32 = v46;
    sub_100CC2DA8(v46, v14, type metadata accessor for CRLGloballyScopedBoardIdentifier);
    sub_100CC2DA8(v14, v11, type metadata accessor for CRLGloballyScopedBoardIdentifier);
    type metadata accessor for CRLOpportunisticGroupActivity(0);
    v33 = swift_allocObject();
    sub_100CB6330(v11, 1);
    v47 = v33;

    v34 = dispatch thunk of PersonalGroupSessionProvider.__allocating_init(id:activity:)();
    sub_100CC2E10(v32, type metadata accessor for CRLGloballyScopedBoardIdentifier);
    sub_100CC2E10(v14, type metadata accessor for CRLGloballyScopedBoardIdentifier);
    v35 = &unk_101A1A768;
    v36 = &unk_1014AA1F8;
    v37 = &qword_101A1A1C8;
    v38 = &qword_1014AA1F0;
    goto LABEL_12;
  }

  v43 = v5;
  v19 = qword_1019F2288;
  v20 = a2;
  if (v19 != -1)
  {
    swift_once();
  }

  v21 = static OS_os_log.realTimeSync;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_10146C6B0;
  *(v22 + 56) = &type metadata for String;
  *(v22 + 64) = sub_1000053B0();
  *(v22 + 32) = 0xD000000000000028;
  *(v22 + 40) = 0x8000000101598990;
  v23 = static os_log_type_t.default.getter();
  sub_100005404(v21, &_mh_execute_header, v23, "[Automation] %@ Initialize CRLOpportunisticCKShareGroupSessionProvider", 70, 2, v22);
  swift_setDeallocating();
  sub_100005070((v22 + 32));
  sub_1005B981C(&qword_101A1A1B8, &qword_1014AA1C0);
  sub_100CC2DA8(v46, v17, type metadata accessor for CRLGloballyScopedBoardIdentifier);
  sub_100CC2DA8(v17, v14, type metadata accessor for CRLGloballyScopedBoardIdentifier);
  type metadata accessor for CRLOpportunisticGroupActivity(0);
  v24 = swift_allocObject();
  sub_100CB6330(v14, 0);
  v47 = v24;
  v25 = qword_1019F1588;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = qword_101AD6518;
  v27 = v43;
  v28 = dispatch thunk of CKShareGroupSessionProvider.__allocating_init(id:activity:share:container:)();
  if (!v27)
  {
    v34 = v28;

    sub_100CC2E10(v46, type metadata accessor for CRLGloballyScopedBoardIdentifier);
    sub_100CC2E10(v17, type metadata accessor for CRLGloballyScopedBoardIdentifier);
    v35 = &unk_101A1A770;
    v37 = &qword_101A1A1B8;
    v38 = &qword_1014AA1C0;
    v36 = &unk_1014AA1C8;
LABEL_12:
    v39 = sub_10001A2F8(v35, v37, v38, v36);
    v40 = (v6 + OBJC_IVAR____TtC8Freeform36CRLBoardOpportunisticActivityWrapper_groupSessionProvider);
    *v40 = v34;
    v40[1] = v39;
    *(v6 + OBJC_IVAR____TtC8Freeform36CRLBoardOpportunisticActivityWrapper_sessionConfiguring + 8) = v44;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    return v6;
  }

  swift_unknownObjectRelease();
  sub_100CC2E10(v46, type metadata accessor for CRLGloballyScopedBoardIdentifier);
  sub_100CC2E10(v17, type metadata accessor for CRLGloballyScopedBoardIdentifier);
  sub_100CC2E10(v6 + v18, type metadata accessor for CRLGloballyScopedBoardIdentifier);

  sub_1000C1024(v6 + OBJC_IVAR____TtC8Freeform36CRLBoardOpportunisticActivityWrapper_sessionConfiguring);

  type metadata accessor for CRLBoardOpportunisticActivityWrapper(0);
  swift_deallocPartialClassInstance();
  return v6;
}

double sub_100CB7B88()
{
  v1 = v0;
  v2 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  v5 = OBJC_IVAR____TtC8Freeform36CRLBoardOpportunisticActivityWrapper_sessionObserverTask;
  if (*(v0 + OBJC_IVAR____TtC8Freeform36CRLBoardOpportunisticActivityWrapper_sessionObserverTask))
  {

    Task.cancel()();
  }

  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for MainActor();

  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v7;

  *(v1 + v5) = sub_10064191C(0, 0, v4, &unk_1014AA570, v9);

  return result;
}

uint64_t sub_100CB7D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[49] = a4;
  type metadata accessor for MainActor();
  v4[50] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[51] = v6;
  v4[52] = v5;

  return _swift_task_switch(sub_100CB7DC8, v6, v5);
}

uint64_t sub_100CB7DC8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[53] = Strong;
  if (Strong)
  {
    v2 = Strong;
    if (qword_1019F2288 != -1)
    {
      swift_once();
    }

    v3 = static OS_os_log.realTimeSync;
    v0[54] = static OS_os_log.realTimeSync;
    v0[55] = sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    v5 = (v2 + OBJC_IVAR____TtC8Freeform36CRLBoardOpportunisticActivityWrapper_groupSessionProvider);
    v6 = *(v2 + OBJC_IVAR____TtC8Freeform36CRLBoardOpportunisticActivityWrapper_groupSessionProvider + 8);
    ObjectType = swift_getObjectType();
    LOBYTE(v6) = (*(v6 + 16))(ObjectType, v6);
    _StringGuts.grow(_:)(34);

    if (v6)
    {
      v8 = 0x5D654D6F54654D5BLL;
    }

    else
    {
      v8 = 0x5D6465726168535BLL;
    }

    v9 = 0xE800000000000000;
    String.append(_:)(*&v8);

    v10._countAndFlagsBits = 58;
    v10._object = 0xE100000000000000;
    String.append(_:)(v10);
    *(inited + 56) = &type metadata for String;
    v11 = sub_1000053B0();
    v0[56] = v11;
    *(inited + 64) = v11;
    *(inited + 32) = 0xD00000000000001FLL;
    *(inited + 40) = 0x8000000101598010;
    v12 = v5[1];
    v13 = swift_getObjectType();
    v14 = (*(v12 + 24))(v13, v12);
    *(inited + 96) = &type metadata for String;
    *(inited + 104) = v11;
    *(inited + 72) = v14;
    *(inited + 80) = v15;
    v16 = static os_log_type_t.default.getter();
    sub_100005404(v3, &_mh_execute_header, v16, "[Automation] %@ begin waiting on session for activity %@", 56, 2, inited);
    swift_setDeallocating();
    v0[57] = sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v0[58] = *v5;
    v17 = sub_1005B981C(&qword_101A1A1C8, &qword_1014AA1F0);
    if (swift_dynamicCastClass())
    {
      v18 = swift_unknownObjectWeakLoadStrong();
      v0[59] = v18;
      if (v18)
      {
        type metadata accessor for CRLOpportunisticGroupSessionManager(0);
        v19 = swift_dynamicCastClass();
        v0[60] = v19;
        if (v19)
        {
          swift_unknownObjectRetain();
          v20 = swift_task_alloc();
          v0[61] = v20;
          v21 = sub_10001A2F8(&qword_101A1A1C0, &qword_101A1A1C8, &qword_1014AA1F0, &protocol conformance descriptor for PersonalGroupSessionProvider<A>);
          *v20 = v0;
          v22 = sub_100CB829C;
LABEL_17:
          v20[1] = v22;

          return GroupSessionProvider.session.getter(v17, v21);
        }

        swift_unknownObjectRelease();
      }
    }

    v0[64] = *v5;
    v17 = sub_1005B981C(&qword_101A1A1B8, &qword_1014AA1C0);
    if (swift_dynamicCastClass())
    {
      v23 = swift_unknownObjectWeakLoadStrong();
      v0[65] = v23;
      if (v23)
      {
        type metadata accessor for CRLOpportunisticGroupSessionManager(0);
        v24 = swift_dynamicCastClass();
        v0[66] = v24;
        if (v24)
        {
          swift_unknownObjectRetain();
          v20 = swift_task_alloc();
          v0[67] = v20;
          v21 = sub_10001A2F8(&qword_101A1A1B0, &qword_101A1A1B8, &qword_1014AA1C0, &protocol conformance descriptor for CKShareGroupSessionProvider<A>);
          *v20 = v0;
          v22 = sub_100CB876C;
          goto LABEL_17;
        }

        swift_unknownObjectRelease();
      }
    }
  }

  v25 = v0[1];

  return v25();
}

uint64_t sub_100CB829C(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 496) = a1;

  v3 = *(v2 + 416);
  v4 = *(v2 + 408);

  return _swift_task_switch(sub_100CB83C4, v4, v3);
}

uint64_t sub_100CB83C4()
{
  v1 = v0[62];
  if (v1)
  {
    v2 = v0[56];
    v3 = v0[54];
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = v2;
    *(inited + 32) = 0xD000000000000028;
    *(inited + 40) = 0x8000000101598910;
    v0[48] = v1;

    sub_1005B981C(&qword_101A1A780, &qword_1014AA578);
    v5 = String.init<A>(reflecting:)();
    *(inited + 96) = &type metadata for String;
    *(inited + 104) = v2;
    *(inited + 72) = v5;
    *(inited + 80) = v6;
    v7 = static os_log_type_t.default.getter();
    sub_100005404(v3, &_mh_execute_header, v7, "[Automation] %@ observed new group session: %@", 46, 2, inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    v8 = swift_task_alloc();
    v0[63] = v8;
    *v8 = v0;
    v8[1] = sub_100CB85B8;

    return sub_100CB344C(v1);
  }

  else
  {
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_100CB85B8()
{
  v1 = *v0;

  v2 = *(v1 + 416);
  v3 = *(v1 + 408);

  return _swift_task_switch(sub_100CB86D8, v3, v2);
}

uint64_t sub_100CB86D8()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100CB876C(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 544) = a1;

  v3 = *(v2 + 416);
  v4 = *(v2 + 408);

  return _swift_task_switch(sub_100CB8894, v4, v3);
}

uint64_t sub_100CB8894()
{
  v1 = v0[68];
  if (v1)
  {
    v2 = v0[56];
    v3 = v0[54];
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146BDE0;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = v2;
    *(inited + 32) = 0xD000000000000028;
    *(inited + 40) = 0x8000000101598990;
    v0[47] = v1;

    sub_1005B981C(&qword_101A1A780, &qword_1014AA578);
    v5 = String.init<A>(reflecting:)();
    *(inited + 96) = &type metadata for String;
    *(inited + 104) = v2;
    *(inited + 72) = v5;
    *(inited + 80) = v6;
    v7 = static os_log_type_t.default.getter();
    sub_100005404(v3, &_mh_execute_header, v7, "[Automation] %@ observed new group session: %@", 46, 2, inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    v8 = swift_task_alloc();
    v0[69] = v8;
    *v8 = v0;
    v8[1] = sub_100CB8A8C;

    return sub_100CB344C(v1);
  }

  else
  {
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_100CB8A8C()
{
  v1 = *v0;

  v2 = *(v1 + 416);
  v3 = *(v1 + 408);

  return _swift_task_switch(sub_100CB8BAC, v3, v2);
}

uint64_t sub_100CB8BAC()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100CB8C44()
{
  if (*(v0 + OBJC_IVAR____TtC8Freeform36CRLBoardOpportunisticActivityWrapper_sessionObserverTask))
  {

    Task.cancel()();
  }

  sub_100CC2E10(v0 + OBJC_IVAR____TtC8Freeform36CRLBoardOpportunisticActivityWrapper_globallyScopedBoardIdentifier, type metadata accessor for CRLGloballyScopedBoardIdentifier);
  swift_unknownObjectRelease();

  sub_1000C1024(v0 + OBJC_IVAR____TtC8Freeform36CRLBoardOpportunisticActivityWrapper_sessionConfiguring);

  return swift_deallocClassInstance();
}

uint64_t sub_100CB8D6C(uint64_t a1)
{
  result = type metadata accessor for CRLBoardIdentifierStorage(319);
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

uint64_t sub_100CB8E3C()
{
  if (qword_1019F2288 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 128);
  v15 = static OS_os_log.realTimeSync;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  v3 = *(v1 + OBJC_IVAR____TtC8Freeform36CRLBoardOpportunisticActivityWrapper_groupSessionProvider + 8);
  ObjectType = swift_getObjectType();
  v4 = (*(v3 + 16))(ObjectType, v3);
  _StringGuts.grow(_:)(34);

  if (v4)
  {
    v5 = 0x5D654D6F54654D5BLL;
  }

  else
  {
    v5 = 0x5D6465726168535BLL;
  }

  v6 = 0xE800000000000000;
  String.append(_:)(*&v5);

  v7._countAndFlagsBits = 58;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  *(inited + 56) = &type metadata for String;
  v8 = sub_1000053B0();
  *(inited + 64) = v8;
  *(inited + 32) = 0xD00000000000001FLL;
  *(inited + 40) = 0x8000000101598010;
  v9 = UUID.uuidString.getter();
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v8;
  *(inited + 72) = v9;
  *(inited + 80) = v10;
  v11 = static os_log_type_t.default.getter();
  sub_100005404(v15, &_mh_execute_header, v11, "[Automation] %@ groupSessionProvider.join() called for %{public}@", 65, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v12 = swift_task_alloc();
  *(v0 + 136) = v12;
  v13 = *(v3 + 8);
  *v12 = v0;
  v12[1] = sub_100CC3178;

  return GroupSessionProvider.join()(ObjectType, v13);
}

uint64_t sub_100CB90E0()
{
  if (qword_1019F2288 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 128);
  v15 = static OS_os_log.realTimeSync;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  v3 = *(v1 + OBJC_IVAR____TtC8Freeform36CRLBoardOpportunisticActivityWrapper_groupSessionProvider + 8);
  ObjectType = swift_getObjectType();
  v4 = (*(v3 + 16))(ObjectType, v3);
  _StringGuts.grow(_:)(34);

  if (v4)
  {
    v5 = 0x5D654D6F54654D5BLL;
  }

  else
  {
    v5 = 0x5D6465726168535BLL;
  }

  v6 = 0xE800000000000000;
  String.append(_:)(*&v5);

  v7._countAndFlagsBits = 58;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  *(inited + 56) = &type metadata for String;
  v8 = sub_1000053B0();
  *(inited + 64) = v8;
  *(inited + 32) = 0xD00000000000001FLL;
  *(inited + 40) = 0x8000000101598010;
  v9 = UUID.uuidString.getter();
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v8;
  *(inited + 72) = v9;
  *(inited + 80) = v10;
  v11 = static os_log_type_t.default.getter();
  sub_100005404(v15, &_mh_execute_header, v11, "[Automation] %@ groupSessionProvider.leave() called for %{public}@", 66, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v12 = swift_task_alloc();
  *(v0 + 136) = v12;
  v13 = *(v3 + 8);
  *v12 = v0;
  v12[1] = sub_100CB9364;

  return GroupSessionProvider.leave()(ObjectType, v13);
}

uint64_t sub_100CB9364()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100CB9458(uint64_t a1, char a2)
{
  swift_beginAccess();
  v5 = *(*(v2 + 64) + 16);
  if (v5)
  {

    sub_1007C8484(a1);
    if (v6)
    {

      sub_1005B981C(&qword_101A1A1C8, &qword_1014AA1F0);
      v7 = swift_dynamicCastClass() != 0;

      LOBYTE(v5) = v7 ^ a2;
    }

    else
    {

      LOBYTE(v5) = 0;
    }
  }

  return v5 & 1;
}

uint64_t sub_100CB952C(uint64_t a1, char a2)
{
  *(v3 + 696) = v2;
  *(v3 + 832) = a2;
  *(v3 + 688) = a1;
  type metadata accessor for CRLGloballyScopedBoardIdentifier(0);
  *(v3 + 704) = swift_task_alloc();
  *(v3 + 712) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v3 + 720) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 728) = v5;
  *(v3 + 736) = v4;

  return _swift_task_switch(sub_100CB9608, v5, v4);
}

uint64_t sub_100CB9608()
{
  v2 = *(v0 + 696);
  swift_beginAccess();
  if (*(*(v2 + 88) + 16))
  {
    v3 = *(v0 + 688);

    sub_1007C8484(v3);
    v5 = v4;

    if (v5)
    {
      if (qword_1019F2288 != -1)
      {
        swift_once();
      }

      v6 = static OS_os_log.realTimeSync;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146BDE0;
      v8 = *(v2 + 88);
      if (*(v8 + 16))
      {
        v5 = inited;
        v9 = *(v0 + 688);

        v10 = sub_1007C8484(v9);
        v12 = v11;

        if (v12)
        {
          v13 = *(*(v8 + 56) + v10);

          _StringGuts.grow(_:)(34);

          if (v13)
          {
            v14 = 0x5D654D6F54654D5BLL;
          }

          else
          {
            v14 = 0x5D6465726168535BLL;
          }

          v15 = 0xE800000000000000;
          String.append(_:)(*&v14);

          v16._countAndFlagsBits = 58;
          v16._object = 0xE100000000000000;
          String.append(_:)(v16);
          *(v5 + 56) = &type metadata for String;
          v17 = sub_1000053B0();
          *(v5 + 64) = v17;
          *(v5 + 32) = 0xD00000000000001FLL;
          *(v5 + 40) = 0x8000000101598010;
          v18 = UUID.uuidString.getter();
          *(v5 + 96) = &type metadata for String;
          *(v5 + 104) = v17;
          *(v5 + 72) = v18;
          *(v5 + 80) = v19;
          v20 = static os_log_type_t.default.getter();
          sub_100005404(v6, &_mh_execute_header, v20, "[Automation] %@ leavingOpportunisticActivity exists for %{public}@, don't need to call leave again.", 99, 2, v5);
          swift_setDeallocating();
          sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
          swift_arrayDestroy();
LABEL_25:

          v51 = *(v0 + 8);

          return v51();
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_38;
    }
  }

  v21 = *(v0 + 696);
  swift_beginAccess();
  v22 = *(v21 + 64);
  if (!*(v22 + 16))
  {
LABEL_22:

    if (qword_1019F2288 != -1)
    {
      swift_once();
    }

    v45 = static OS_os_log.realTimeSync;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    v46 = swift_initStackObject();
    *(v46 + 16) = xmmword_10146C6B0;
    v47 = UUID.uuidString.getter();
    v49 = v48;
    *(v46 + 56) = &type metadata for String;
    *(v46 + 64) = sub_1000053B0();
    *(v46 + 32) = v47;
    *(v46 + 40) = v49;
    v50 = static os_log_type_t.default.getter();
    sub_100005404(v45, &_mh_execute_header, v50, "Missing opportunisticActivityWrappers for %{public}@, unexpected.", 65, 2, v46);
    swift_setDeallocating();
    sub_100005070((v46 + 32));
    goto LABEL_25;
  }

  v23 = *(v0 + 688);

  v24 = sub_1007C8484(v23);
  if ((v25 & 1) == 0)
  {

    goto LABEL_22;
  }

  v26 = *(v0 + 712);
  v27 = *(v0 + 688);
  v28 = *(*(v22 + 56) + 8 * v24);
  *(v0 + 744) = v28;

  sub_100CC2DA8(v27, v26, type metadata accessor for CRLGloballyScopedBoardIdentifier);
  *(v0 + 752) = OBJC_IVAR____TtC8Freeform36CRLBoardOpportunisticActivityWrapper_groupSessionProvider;
  *(v0 + 760) = sub_1005B981C(&qword_101A1A1C8, &qword_1014AA1F0);
  v29 = swift_dynamicCastClass() != 0;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v63 = *(v2 + 88);
  *(v2 + 88) = 0x8000000000000000;
  sub_100AA06A0(v29, v26, isUniquelyReferenced_nonNull_native);
  sub_100CC2E10(v26, type metadata accessor for CRLGloballyScopedBoardIdentifier);
  *(v2 + 88) = v63;
  swift_endAccess();
  v5 = *(v28 + OBJC_IVAR____TtC8Freeform36CRLBoardOpportunisticActivityWrapper_session);
  *(v0 + 768) = v5;
  if (v5)
  {
    v1 = 0x5D654D6F54654D5BLL;
    v31 = qword_1019F2288;

    if (v31 == -1)
    {
LABEL_15:
      v32 = static OS_os_log.realTimeSync;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v33 = swift_initStackObject();
      *(v33 + 16) = xmmword_10146BDE0;
      v34 = swift_dynamicCastClass();
      _StringGuts.grow(_:)(34);

      if (v34)
      {
        v35 = v1;
      }

      else
      {
        v35 = 0x5D6465726168535BLL;
      }

      v36 = 0xE800000000000000;
      String.append(_:)(*&v35);

      v37._countAndFlagsBits = 58;
      v37._object = 0xE100000000000000;
      String.append(_:)(v37);
      *(v33 + 56) = &type metadata for String;
      v38 = sub_1000053B0();
      *(v33 + 64) = v38;
      *(v33 + 32) = 0xD00000000000001FLL;
      *(v33 + 40) = 0x8000000101598010;
      v39 = UUID.uuidString.getter();
      *(v33 + 96) = &type metadata for String;
      *(v33 + 104) = v38;
      *(v33 + 72) = v39;
      *(v33 + 80) = v40;
      v41 = static os_log_type_t.default.getter();
      sub_100005404(v32, &_mh_execute_header, v41, "[Automation] %@ call leaveGroupSession() for %{public}@", 55, 2, v33);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v42 = swift_task_alloc();
      *(v0 + 776) = v42;
      *v42 = v0;
      v42[1] = sub_100CB9F10;
      v43 = *(v0 + 832);

      return sub_100CB2BD4(v5, v43);
    }

LABEL_38:
    swift_once();
    goto LABEL_15;
  }

  if (qword_1019F2288 != -1)
  {
    swift_once();
  }

  v52 = static OS_os_log.realTimeSync;
  *(v0 + 784) = static OS_os_log.realTimeSync;
  *(v0 + 792) = sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v53 = swift_initStackObject();
  *(v53 + 16) = xmmword_10146BDE0;
  v54 = swift_dynamicCastClass();
  _StringGuts.grow(_:)(34);

  if (v54)
  {
    v55 = 0x5D654D6F54654D5BLL;
  }

  else
  {
    v55 = 0x5D6465726168535BLL;
  }

  v56 = 0xE800000000000000;
  String.append(_:)(*&v55);

  v57._countAndFlagsBits = 58;
  v57._object = 0xE100000000000000;
  String.append(_:)(v57);
  *(v53 + 56) = &type metadata for String;
  v58 = sub_1000053B0();
  *(v0 + 800) = v58;
  *(v53 + 64) = v58;
  *(v53 + 32) = 0xD00000000000001FLL;
  *(v53 + 40) = 0x8000000101598010;
  v59 = UUID.uuidString.getter();
  *(v53 + 96) = &type metadata for String;
  *(v53 + 104) = v58;
  *(v53 + 72) = v59;
  *(v53 + 80) = v60;
  v61 = static os_log_type_t.default.getter();
  sub_100005404(v52, &_mh_execute_header, v61, "[Automation] %@ calling activityWrapper.leave() for %{public}@", 62, 2, v53);
  swift_setDeallocating();
  *(v0 + 808) = sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v62 = swift_task_alloc();
  *(v0 + 816) = v62;
  *v62 = v0;
  v62[1] = sub_100CBA294;

  return sub_100CB90C0();
}

uint64_t sub_100CB9F10()
{
  v1 = *v0;

  v2 = *(v1 + 736);
  v3 = *(v1 + 728);

  return _swift_task_switch(sub_100CBA030, v3, v2);
}

uint64_t sub_100CBA030()
{

  if (qword_1019F2288 != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.realTimeSync;
  v0[98] = static OS_os_log.realTimeSync;
  v0[99] = sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  v3 = swift_dynamicCastClass();
  _StringGuts.grow(_:)(34);

  if (v3)
  {
    v4 = 0x5D654D6F54654D5BLL;
  }

  else
  {
    v4 = 0x5D6465726168535BLL;
  }

  v5 = 0xE800000000000000;
  String.append(_:)(*&v4);

  v6._countAndFlagsBits = 58;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  *(inited + 56) = &type metadata for String;
  v7 = sub_1000053B0();
  v0[100] = v7;
  *(inited + 64) = v7;
  *(inited + 32) = 0xD00000000000001FLL;
  *(inited + 40) = 0x8000000101598010;
  v8 = UUID.uuidString.getter();
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v7;
  *(inited + 72) = v8;
  *(inited + 80) = v9;
  v10 = static os_log_type_t.default.getter();
  sub_100005404(v1, &_mh_execute_header, v10, "[Automation] %@ calling activityWrapper.leave() for %{public}@", 62, 2, inited);
  swift_setDeallocating();
  v0[101] = sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v11 = swift_task_alloc();
  v0[102] = v11;
  *v11 = v0;
  v11[1] = sub_100CBA294;

  return sub_100CB90C0();
}

uint64_t sub_100CBA294()
{
  v2 = *v1;
  *(*v1 + 824) = v0;

  v3 = *(v2 + 736);
  v4 = *(v2 + 728);
  if (v0)
  {
    v5 = sub_100CBA550;
  }

  else
  {
    v5 = sub_100CBA3D0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100CBA3D0()
{

  v1 = *(v0[87] + 64);
  if (*(v1 + 16))
  {
    v2 = v0[86];

    v3 = sub_1007C8484(v2);
    if (v4)
    {
      v5 = v0[93];
      v6 = *(*(v1 + 56) + 8 * v3);

      if (v6 == v5)
      {
        v7 = v0[88];
        sub_100CC2DA8(v0[86], v7, type metadata accessor for CRLGloballyScopedBoardIdentifier);
        swift_beginAccess();
        sub_100BC44E0(0, v7);
        swift_endAccess();
      }
    }

    else
    {
    }
  }

  v8 = v0[88];
  sub_100CC2DA8(v0[86], v8, type metadata accessor for CRLGloballyScopedBoardIdentifier);
  swift_beginAccess();
  sub_100BC4394(2, v8);
  swift_endAccess();

  v9 = v0[1];

  return v9();
}

uint64_t sub_100CBA550()
{
  v1 = v0[100];
  v2 = v0[98];

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  v4 = swift_dynamicCastClass();
  _StringGuts.grow(_:)(34);

  if (v4)
  {
    v5 = 0x5D654D6F54654D5BLL;
  }

  else
  {
    v5 = 0x5D6465726168535BLL;
  }

  v6 = 0xE800000000000000;
  String.append(_:)(*&v5);

  v7._countAndFlagsBits = 58;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = v1;
  *(inited + 32) = 0xD00000000000001FLL;
  *(inited + 40) = 0x8000000101598010;
  swift_getErrorValue();
  v8 = Error.publicDescription.getter(v0[77], v0[78]);
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v1;
  *(inited + 72) = v8;
  *(inited + 80) = v9;
  v10 = static os_log_type_t.default.getter();
  sub_100005404(v2, &_mh_execute_header, v10, "[Automation] %@ Caught error in activityWrapper.leave() call %{public}@", 71, 2, inited);

  swift_setDeallocating();
  swift_arrayDestroy();
  v11 = *(v0[87] + 64);
  if (*(v11 + 16))
  {
    v12 = v0[86];

    v13 = sub_1007C8484(v12);
    if (v14)
    {
      v15 = v0[93];
      v16 = *(*(v11 + 56) + 8 * v13);

      if (v16 == v15)
      {
        v17 = v0[88];
        sub_100CC2DA8(v0[86], v17, type metadata accessor for CRLGloballyScopedBoardIdentifier);
        swift_beginAccess();
        sub_100BC44E0(0, v17);
        swift_endAccess();
      }
    }

    else
    {
    }
  }

  v18 = v0[88];
  sub_100CC2DA8(v0[86], v18, type metadata accessor for CRLGloballyScopedBoardIdentifier);
  swift_beginAccess();
  sub_100BC4394(2, v18);
  swift_endAccess();

  v19 = v0[1];

  return v19();
}

uint64_t sub_100CBA84C(uint64_t a1, uint64_t a2)
{
  v3[125] = v2;
  v3[124] = a2;
  v3[123] = a1;
  type metadata accessor for CRLGloballyScopedBoardIdentifier(0);
  v3[126] = swift_task_alloc();
  v3[127] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[128] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[129] = v5;
  v3[130] = v4;

  return _swift_task_switch(sub_100CBA928, v5, v4);
}

uint64_t sub_100CBA928()
{
  v104 = v0;
  v1 = v0[125];
  v2 = v0[124];
  swift_beginAccess();
  v3 = *(v1 + 80);
  if (*(v3 + 16))
  {
    v4 = v0[123];

    v5 = sub_1007C8484(v4);
    if (v6)
    {
      v7 = *(*(v3 + 56) + v5);

      if ((((v2 == 0) ^ v7) & 1) == 0)
      {

        if (qword_1019F2288 != -1)
        {
          swift_once();
        }

        v8 = static OS_os_log.realTimeSync;
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_10146BDE0;
        _StringGuts.grow(_:)(34);

        v102 = 0xD00000000000001FLL;
        v103 = 0x8000000101598010;
        if (v2)
        {
          v10 = 0x5D6465726168535BLL;
        }

        else
        {
          v10 = 0x5D654D6F54654D5BLL;
        }

        v11 = 0xE800000000000000;
        String.append(_:)(*&v10);

        v12._countAndFlagsBits = 58;
        v12._object = 0xE100000000000000;
        String.append(_:)(v12);
        v13 = v102;
        v14 = v103;
        *(v9 + 56) = &type metadata for String;
        v15 = sub_1000053B0();
        *(v9 + 64) = v15;
        *(v9 + 32) = v13;
        *(v9 + 40) = v14;
        v16 = UUID.uuidString.getter();
        *(v9 + 96) = &type metadata for String;
        *(v9 + 104) = v15;
        *(v9 + 72) = v16;
        *(v9 + 80) = v17;
        v18 = static os_log_type_t.default.getter();
        sub_100005404(v8, &_mh_execute_header, v18, "[Automation] %@ startingOpportunisticActivity exists for %{public}@, wait for current start to finish.", 102, 2, v9);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
        swift_arrayDestroy();
LABEL_16:
        swift_deallocClassInstance();

        v28 = v0[1];

        return v28();
      }
    }

    else
    {
    }
  }

  v19 = v0[125];
  swift_beginAccess();
  if (*(*(v19 + 88) + 16))
  {
    v20 = v0[123];

    sub_1007C8484(v20);
    if (v21)
    {

      if (qword_1019F2288 != -1)
      {
        swift_once();
      }

      v22 = static OS_os_log.realTimeSync;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_10146C6B0;
      v24 = UUID.uuidString.getter();
      v26 = v25;
      *(v23 + 56) = &type metadata for String;
      *(v23 + 64) = sub_1000053B0();
      *(v23 + 32) = v24;
      *(v23 + 40) = v26;
      v27 = static os_log_type_t.default.getter();
      sub_100005404(v22, &_mh_execute_header, v27, "[Automation][CRLOpportunisticGroupSession]: leavingOpportunisticActivity exists for %{public}@, wait for leave to finish first.", 127, 2, v23);
      swift_setDeallocating();
      sub_100005070((v23 + 32));
      goto LABEL_16;
    }
  }

  v30 = v0[125];
  v31 = v0[123];
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v102 = *(v1 + 80);
  *(v1 + 80) = 0x8000000000000000;
  sub_100AA06A0(v2 == 0, v31, isUniquelyReferenced_nonNull_native);
  *(v1 + 80) = v102;
  swift_endAccess();
  swift_beginAccess();
  if (*(*(v30 + 64) + 16))
  {
    v33 = v0[123];

    sub_1007C8484(v33);
    if (v34)
    {
      v101 = v2;

      sub_1005B981C(&qword_101A1A1C8, &qword_1014AA1F0);
      if ((v2 == 0) != (swift_dynamicCastClass() == 0))
      {
        if (*(*(v30 + 64) + 16))
        {
          v35 = v0[123];

          sub_1007C8484(v35);
          LOBYTE(v35) = v36;

          if (v35)
          {
            v99 = objc_opt_self();
            v37 = [v99 _atomicIncrementAssertCount];
            v102 = [objc_allocWithZone(NSString) init];
            sub_100604538(_swiftEmptyArrayStorage, &v102, "[Automation][CRLOpportunisticGroupSession]: Attempting to instantiate opportunistic activity that is still connected.", 117, 2u);
            StaticString.description.getter("startOpportunisticGroupActivity(globallyScopedBoardIdentifier:ckShare:)", 71, 2);
            v97 = String._bridgeToObjectiveC()();

            StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Sync/RealTime/CRLOpportunisticGroupSessionManager.swift", 109, 2);
            v38 = String._bridgeToObjectiveC()();

            v39 = [v38 lastPathComponent];

            v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v41 = v40;

            if (qword_1019F20A0 != -1)
            {
              swift_once();
            }

            v42 = static OS_os_log.crlAssert;
            sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_10146CA70;
            *(inited + 56) = &type metadata for Int32;
            *(inited + 64) = &protocol witness table for Int32;
            *(inited + 32) = v37;
            v44 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
            *(inited + 96) = v44;
            v45 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
            *(inited + 104) = v45;
            *(inited + 72) = v97;
            *(inited + 136) = &type metadata for String;
            v46 = sub_1000053B0();
            *(inited + 112) = v95;
            *(inited + 120) = v41;
            *(inited + 176) = &type metadata for UInt;
            *(inited + 184) = &protocol witness table for UInt;
            *(inited + 144) = v46;
            *(inited + 152) = 271;
            v47 = v102;
            *(inited + 216) = v44;
            *(inited + 224) = v45;
            *(inited + 192) = v47;
            v48 = v97;
            v49 = v47;
            v50 = static os_log_type_t.error.getter();
            sub_100005404(v42, &_mh_execute_header, v50, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
            swift_setDeallocating();
            sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
            swift_arrayDestroy();
            v51 = static os_log_type_t.error.getter();
            sub_100005404(v42, &_mh_execute_header, v51, "[Automation][CRLOpportunisticGroupSession]: Attempting to instantiate opportunistic activity that is still connected.", 117, 2, _swiftEmptyArrayStorage);

            type metadata accessor for __VaListBuilder();
            v52 = swift_allocObject();
            v52[2] = 8;
            v52[3] = 0;
            v52[4] = 0;
            v52[5] = 0;
            v53 = __VaListBuilder.va_list()();
            StaticString.description.getter("startOpportunisticGroupActivity(globallyScopedBoardIdentifier:ckShare:)", 71, 2);
            v54 = String._bridgeToObjectiveC()();

            StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Sync/RealTime/CRLOpportunisticGroupSessionManager.swift", 109, 2);
            v55 = String._bridgeToObjectiveC()();

            StaticString.description.getter("[Automation][CRLOpportunisticGroupSession]: Attempting to instantiate opportunistic activity that is still connected.", 117, 2);
            v56 = String._bridgeToObjectiveC()();

            [v99 handleFailureInFunction:v54 file:v55 lineNumber:271 isFatal:0 format:v56 args:v53];
          }
        }

        v2 = v101;
      }

      else
      {
        if (qword_1019F2288 != -1)
        {
          swift_once();
        }

        v100 = static OS_os_log.realTimeSync;
        sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
        v57 = swift_initStackObject();
        *(v57 + 16) = xmmword_10146BDE0;
        v102 = 0;
        v103 = 0xE000000000000000;
        v58 = swift_dynamicCastClass();
        v59 = v58 == 0;
        if (v58)
        {
          v60 = 1702195828;
        }

        else
        {
          v60 = 0x65736C6166;
        }

        if (v59)
        {
          v61 = 0xE500000000000000;
        }

        else
        {
          v61 = 0xE400000000000000;
        }

        v62 = v61;
        String.append(_:)(*&v60);

        v63 = v102;
        v64 = v103;
        *(v57 + 56) = &type metadata for String;
        v65 = sub_1000053B0();
        *(v57 + 64) = v65;
        *(v57 + 32) = v63;
        *(v57 + 40) = v64;
        if (v101)
        {
          v66 = 0x65736C6166;
        }

        else
        {
          v66 = 1702195828;
        }

        if (v101)
        {
          v67 = 0xE500000000000000;
        }

        else
        {
          v67 = 0xE400000000000000;
        }

        v102 = 0;
        v103 = 0xE000000000000000;
        v68 = v67;
        String.append(_:)(*&v66);

        *(v57 + 96) = &type metadata for String;
        *(v57 + 104) = v65;
        v2 = v101;
        *(v57 + 72) = 0;
        *(v57 + 80) = 0xE000000000000000;
        v69 = static os_log_type_t.default.getter();
        sub_100005404(v100, &_mh_execute_header, v69, "[Automation][CRLOpportunisticGroupSession]: Switching from isMeToMe: %{public}@ to isMeToMe: %{public}@", 103, 2, v57);

        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
        swift_arrayDestroy();
      }
    }

    else
    {
    }
  }

  if (qword_1019F2288 != -1)
  {
    swift_once();
  }

  v98 = v0[125];
  v94 = v0[127];
  v96 = v0[124];
  v70 = v0[123];
  v71 = static OS_os_log.realTimeSync;
  v0[131] = static OS_os_log.realTimeSync;
  v0[132] = sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v72 = swift_initStackObject();
  *(v72 + 16) = xmmword_10146BDE0;
  v102 = 0;
  v103 = 0xE000000000000000;
  _StringGuts.grow(_:)(34);

  v102 = 0xD00000000000001FLL;
  v103 = 0x8000000101598010;
  if (v2)
  {
    v73 = 0x5D6465726168535BLL;
  }

  else
  {
    v73 = 0x5D654D6F54654D5BLL;
  }

  v93 = v73;
  v74 = 0xE800000000000000;
  String.append(_:)(*&v73);

  v75._countAndFlagsBits = 58;
  v75._object = 0xE100000000000000;
  String.append(_:)(v75);
  v76 = v102;
  v77 = v103;
  *(v72 + 56) = &type metadata for String;
  v78 = sub_1000053B0();
  v0[133] = v78;
  *(v72 + 64) = v78;
  *(v72 + 32) = v76;
  *(v72 + 40) = v77;
  v79 = UUID.uuidString.getter();
  *(v72 + 96) = &type metadata for String;
  *(v72 + 104) = v78;
  *(v72 + 72) = v79;
  *(v72 + 80) = v80;
  v81 = static os_log_type_t.default.getter();
  sub_100005404(v71, &_mh_execute_header, v81, "[Automation] %@ startOpportunisticGroupActivity() for %{public}@", 64, 2, v72);
  swift_setDeallocating();
  v0[134] = sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  sub_100CC2DA8(v70, v94, type metadata accessor for CRLGloballyScopedBoardIdentifier);
  v82 = sub_10003ADF4(&qword_101A1A760, type metadata accessor for CRLOpportunisticGroupSessionManager, byte_10146EF78);
  type metadata accessor for CRLBoardOpportunisticActivityWrapper(0);
  v0[135] = swift_allocObject();
  v83 = v96;

  sub_100CB752C(v94, v96, v98, v82);
  sub_100CB7B88();
  v84 = swift_initStackObject();
  *(v84 + 16) = xmmword_10146BDE0;
  v102 = 0;
  v103 = 0xE000000000000000;
  _StringGuts.grow(_:)(34);

  v102 = 0xD00000000000001FLL;
  v103 = 0x8000000101598010;
  v85._countAndFlagsBits = v93;
  v85._object = 0xE800000000000000;
  String.append(_:)(v85);

  v86._countAndFlagsBits = 58;
  v86._object = 0xE100000000000000;
  String.append(_:)(v86);
  v87 = v102;
  v88 = v103;
  *(v84 + 56) = &type metadata for String;
  *(v84 + 64) = v78;
  *(v84 + 32) = v87;
  *(v84 + 40) = v88;
  v89 = UUID.uuidString.getter();
  *(v84 + 96) = &type metadata for String;
  *(v84 + 104) = v78;
  *(v84 + 72) = v89;
  *(v84 + 80) = v90;
  v91 = static os_log_type_t.default.getter();
  sub_100005404(v71, &_mh_execute_header, v91, "[Automation] %@ will call activityWrapper.start() for %{public}@", 64, 2, v84);
  swift_setDeallocating();
  swift_arrayDestroy();
  v92 = swift_task_alloc();
  v0[136] = v92;
  *v92 = v0;
  v92[1] = sub_100CBB8C4;

  return sub_100CB8E1C();
}