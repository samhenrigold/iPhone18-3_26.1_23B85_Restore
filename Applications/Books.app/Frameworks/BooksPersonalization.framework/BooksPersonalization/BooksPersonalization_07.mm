uint64_t Configuration.ScorersConfiguration.BookHistoryScorerConfiguration.DeclinedConfiguration.encode(to:)(void *a1)
{
  v4 = sub_2B0C(&qword_229BC8, &qword_1BCED8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v10 - v6;
  v8 = v1[1];
  v10[2] = v1[2];
  v10[3] = v8;
  v10[1] = v1[3];
  sub_2698(a1, a1[3]);
  sub_718CC();
  sub_1B5884();
  v16 = 0;
  sub_1B5514();
  if (!v2)
  {
    v15 = 1;
    sub_1B5534();
    v14 = 2;
    sub_1B5534();
    v13 = 3;
    sub_1B5534();
    v12 = 4;
    sub_1B5514();
    v11 = 5;
    sub_1B5534();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t Configuration.ScorersConfiguration.BookHistoryScorerConfiguration.RecommendationMethodology.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x6168637275706F63;
  }
}

unint64_t sub_6A5C0(char a1)
{
  result = 0x64656E696C636564;
  switch(a1)
  {
    case 1:
    case 21:
      result = 0xD000000000000015;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
    case 6:
    case 32:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0x6573616863727570;
      break;
    case 8:
    case 24:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0xD000000000000020;
      break;
    case 10:
      result = 0xD000000000000022;
      break;
    case 11:
    case 27:
      result = 0xD000000000000018;
      break;
    case 12:
      result = 0xD00000000000001ALL;
      break;
    case 13:
      result = 0xD000000000000029;
      break;
    case 14:
      result = 0xD00000000000002DLL;
      break;
    case 15:
      result = 0x6465776569766572;
      break;
    case 16:
    case 19:
    case 30:
      result = 0xD000000000000010;
      break;
    case 17:
      result = 0x5764656C706D6173;
      break;
    case 18:
      result = 0x4864656C706D6173;
      break;
    case 20:
      result = 0xD000000000000012;
      break;
    case 22:
      v3 = 5;
      goto LABEL_23;
    case 23:
    case 35:
      result = 0xD000000000000016;
      break;
    case 25:
      result = 0xD00000000000001DLL;
      break;
    case 26:
      result = 0xD000000000000012;
      break;
    case 28:
      result = 0xD00000000000002ELL;
      break;
    case 29:
      result = 0xD000000000000024;
      break;
    case 31:
    case 33:
      result = 0xD000000000000023;
      break;
    case 34:
    case 36:
      v3 = 9;
LABEL_23:
      result = v3 | 0xD000000000000012;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

uint64_t sub_6AA2C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v3 = 0x6168637275706F63;
  }

  if (v2)
  {
    v4 = 0xEA00000000006573;
  }

  else
  {
    v4 = 0x80000000001D49B0;
  }

  if (*a2)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0x6168637275706F63;
  }

  if (*a2)
  {
    v6 = 0x80000000001D49B0;
  }

  else
  {
    v6 = 0xEA00000000006573;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1B5604();
  }

  return v8 & 1;
}

Swift::Int sub_6AADC()
{
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_6AB68(uint64_t a1)
{
  sub_1B4884();
}

Swift::Int sub_6ABE0(uint64_t a1)
{
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

void sub_6AC74(unint64_t *a1@<X8>)
{
  v2 = 0x80000000001D49B0;
  v3 = 0x6168637275706F63;
  if (*v1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v2 = 0xEA00000000006573;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_6AD6C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_6A5C0(*a1);
  v5 = v4;
  if (v3 == sub_6A5C0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1B5604();
  }

  return v8 & 1;
}

Swift::Int sub_6ADF4()
{
  v1 = *v0;
  sub_1B57F4();
  sub_6A5C0(v1);
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_6AE58(uint64_t a1)
{
  sub_6A5C0(*v1);
  sub_1B4884();
}

Swift::Int sub_6AEAC(uint64_t a1)
{
  v2 = *v1;
  sub_1B57F4();
  sub_6A5C0(v2);
  sub_1B4884();

  return sub_1B5844();
}

unint64_t sub_6AF0C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_75810(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_6AF3C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_6A5C0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_6AF70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_75810(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_6AFA4(uint64_t a1)
{
  v2 = sub_71920();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_6AFE0(uint64_t a1)
{
  v2 = sub_71920();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Configuration.ScorersConfiguration.BookHistoryScorerConfiguration.init(bookReadingHistoryConfiguration:sampledReadingHistoryConfiguration:declinedConfiguration:moreLikeThisWeight:moreLikeThisHalfLife:lessLikeThisWeight:lessLikeThisHalfLife:purchasedWeight:purchasedHalfLife:downloadedViaFamilySharingWeight:downloadedViaFamilySharingHalfLife:acquiredExternallyWeight:acquiredExternallyHalfLife:acquiredExternallyUnknownFinishedInterval:storeBookUnknownFinishedIntervalSincePurchase:reviewedWeight:reviewedHalfLife:sampledWeight:sampledHalfLife:wantToReadWeight:wantToReadHalfLife:productPageViewWeight:productPageViewHalfLife:diversificationPenalty:bookAffinityLimit:bookCandidateLimitPerSeedBook:bookCandidateLimit:supplementalRequestLimit:preEventCollectionAddedToWantToReadDateSpacing:preEventCollectionSampledDateSpacing:bookHistoryLimit:syntheticConditionalScoreMultiplier:conditionalScoreBias:allowCandidatesWithProductPageViews:allowCandidatesInWantToRead:allowSampledCandidates:recommendationMethodologies:)@<X0>(uint64_t a1@<X0>, int8x16_t *a2@<X1>, uint64_t a3@<X2>, double a4@<X3>, char a5@<W4>, double a6@<X5>, char a7@<W6>, double a8@<X7>, uint64_t a9@<X8>, char a10, double a11, char a12, double a13, char a14, double a15, char a16, double a17, char a18, double a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, double a25, char a26, double a27, char a28, double a29, char a30, double a31, char a32, double a33, char a34, double a35, char a36, double a37, char a38, double a39, char a40, double a41, char a42, double a43, char a44, double a45, char a46, uint64_t a47, char a48, uint64_t a49, char a50, uint64_t a51, char a52, uint64_t a53, char a54, double a55, char a56, double a57, char a58, uint64_t a59, char a60, double a61, char a62, double a63)
{
  if ((*(a1 + 32) & 1) == 0)
  {
    v70 = *a1;
    v69 = *(a1 + 16);
    if (!*(a3 + 48))
    {
      goto LABEL_3;
    }

LABEL_5:
    v74 = xmmword_1BCD40;
    v75 = 1.5;
    v72 = 180;
    v71 = 7;
    v73 = 0xBFB999999999999ALL;
    goto LABEL_6;
  }

  v69 = xmmword_1BCD20;
  v70 = xmmword_1BCD30;
  if (*(a3 + 48))
  {
    goto LABEL_5;
  }

LABEL_3:
  v71 = *(a3 + 24);
  v72 = *(a3 + 40);
  v73 = *a3;
  v74 = *(a3 + 8);
  v75 = *(a3 + 32);
LABEL_6:
  v76 = 0.9;
  if ((a5 & 1) == 0 && a4 >= -1.0)
  {
    if (a4 > 1.0)
    {
      v76 = 0.9;
    }

    else
    {
      v76 = a4;
    }
  }

  if ((a7 & 1) != 0 || (v77 = *&a6, a6 < 0.0))
  {
    v77 = 0x4153C68000000000;
  }

  v78 = -0.9;
  if ((a10 & 1) == 0 && a8 >= -1.0)
  {
    if (a8 > 1.0)
    {
      v78 = -0.9;
    }

    else
    {
      v78 = a8;
    }
  }

  if ((a12 & 1) != 0 || (v79 = a11, a11 < 0.0))
  {
    v79 = 5184000.0;
  }

  v80 = 0.5;
  if ((a14 & 1) == 0 && a13 >= -1.0)
  {
    if (a13 > 1.0)
    {
      v80 = 0.5;
    }

    else
    {
      v80 = a13;
    }
  }

  if ((a16 & 1) != 0 || (v81 = a15, a15 < 0.0))
  {
    v81 = 49766400.0;
  }

  v82 = 0.5;
  if ((a18 & 1) == 0 && a17 >= -1.0)
  {
    if (a17 > 1.0)
    {
      v82 = 0.5;
    }

    else
    {
      v82 = a17;
    }
  }

  if ((a20 & 1) != 0 || (v83 = a19, a19 < 0.0))
  {
    v83 = 49766400.0;
  }

  v84 = 0.5;
  if ((a18 & 1) == 0 && a17 >= -1.0)
  {
    if (a17 > 1.0)
    {
      v84 = 0.5;
    }

    else
    {
      v84 = a17;
    }
  }

  if ((a20 & 1) != 0 || (v85 = a19, a19 < 0.0))
  {
    v85 = 49766400.0;
  }

  v86 = 1.0;
  if ((a30 & 1) == 0 && a29 >= -1.0)
  {
    v86 = fmin(a29, 1.0);
  }

  if ((a32 & 1) != 0 || (v87 = a31, a31 < 0.0))
  {
    v87 = 94953600.0;
  }

  v88 = 0.4;
  if ((a34 & 1) == 0 && a33 >= -1.0)
  {
    if (a33 > 1.0)
    {
      v88 = 0.4;
    }

    else
    {
      v88 = a33;
    }
  }

  if ((a36 & 1) != 0 || (v89 = a35, a35 < 0.0))
  {
    v89 = 5184000.0;
  }

  v90 = 0.4;
  if ((a38 & 1) == 0 && a37 >= -1.0)
  {
    if (a37 > 1.0)
    {
      v90 = 0.4;
    }

    else
    {
      v90 = a37;
    }
  }

  if ((a40 & 1) != 0 || (v91 = a39, a39 < 0.0))
  {
    v91 = 5184000.0;
  }

  v92 = 0.1;
  if ((a42 & 1) == 0 && a41 >= -1.0)
  {
    if (a41 > 1.0)
    {
      v92 = 0.1;
    }

    else
    {
      v92 = a41;
    }
  }

  if ((a44 & 1) != 0 || (v93 = a43, a43 < 0.0))
  {
    v93 = 2592000.0;
  }

  v94 = 0.8;
  if ((a46 & 1) == 0 && a45 >= 0.0)
  {
    if (a45 > 1.0)
    {
      v94 = 0.8;
    }

    else
    {
      v94 = a45;
    }
  }

  v95 = 1.0;
  v96 = 1.0;
  if ((a56 & 1) == 0 && a55 >= 0.0)
  {
    v96 = a55;
  }

  if ((a58 & 1) == 0 && a57 >= 0.0)
  {
    v95 = a57;
  }

  v97 = 1.5;
  if ((a62 & 1) == 0 && a61 > 0.0)
  {
    v97 = a61;
  }

  v98 = a27;
  v99 = a25;
  v100 = 0.0;
  result = a68;
  if ((a64 & 1) == 0 && a63 >= 0.0)
  {
    if (a63 > 1.0)
    {
      v100 = 0.0;
    }

    else
    {
      v100 = a63;
    }
  }

  v102 = a66;
  v103 = a65;
  v104 = a60;
  v105 = a59;
  v106 = a54;
  v107 = a53;
  v108 = a52;
  v109 = a50;
  v110 = a49;
  v111 = a48;
  v112 = a47;
  v113 = a28;
  v115 = *a2;
  v114 = a2[1];
  v116 = a2[2].u8[0];
  if (!a68)
  {
    v137 = v72;
    v156 = v70;
    v157 = v69;
    v155 = v74;
    v150 = v75;
    v154 = v73;
    v139 = v97;
    v140 = v96;
    v117 = v76;
    v148 = v77;
    v149 = v87;
    v136 = *a2;
    v118 = v78;
    v152 = v79;
    v153 = v82;
    v141 = v95;
    v142 = v94;
    v119 = v80;
    v146 = v81;
    v147 = v89;
    v143 = v93;
    v144 = v92;
    v120 = v83;
    v121 = v84;
    v151 = v86;
    v122 = v85;
    v123 = v88;
    v138 = v100;
    v124 = v90;
    v145 = v91;
    v135 = a2[1];
    result = sub_40E48(&off_211D88);
    v114 = v135;
    v105 = a59;
    v112 = a47;
    v107 = a53;
    v110 = a49;
    v111 = a48;
    v113 = a28;
    v98 = a27;
    v106 = a54;
    v109 = a50;
    v99 = a25;
    v102 = a66;
    v103 = a65;
    v104 = a60;
    v108 = a52;
    v90 = v124;
    v100 = v138;
    v81 = v146;
    v89 = v147;
    v88 = v123;
    v77 = v148;
    v87 = v149;
    v85 = v122;
    v86 = v151;
    v79 = v152;
    v84 = v121;
    v94 = v142;
    v93 = v143;
    v82 = v153;
    v83 = v120;
    v92 = v144;
    v91 = v145;
    v80 = v119;
    v96 = v140;
    v95 = v141;
    v78 = v118;
    v115 = v136;
    v76 = v117;
    v97 = v139;
    v73 = v154;
    v75 = v150;
    v74 = v155;
    v70 = v156;
    v69 = v157;
    v72 = v137;
  }

  v125 = vdup_n_s32(v116);
  v126.i64[0] = v125.u32[0];
  v126.i64[1] = v125.u32[1];
  v127 = vcltzq_s64(vshlq_n_s64(v126, 0x3FuLL));
  *a9 = v70;
  *(a9 + 16) = v69;
  *(a9 + 32) = vbslq_s8(v127, xmmword_1BCD30, v115);
  *(a9 + 48) = vbslq_s8(v127, xmmword_1BCD50, v114);
  *(a9 + 64) = v73;
  *(a9 + 72) = v74;
  *(a9 + 96) = v75;
  *(a9 + 112) = v76;
  *(a9 + 120) = v77;
  *(a9 + 128) = v78;
  *(a9 + 136) = v79;
  *(a9 + 144) = v80;
  *(a9 + 152) = v81;
  *(a9 + 160) = v82;
  v128 = 1000;
  if (!(v104 & 1 | (v105 < 0)))
  {
    v128 = v105;
  }

  v129 = 500;
  if (!(v108 & 1 | (a51 < 0)))
  {
    v129 = a51;
  }

  if (v106 & 1 | (v107 < 0))
  {
    v130 = 1;
  }

  else
  {
    v130 = v107;
  }

  v131 = 10;
  if (!(v109 & 1 | (v110 < 0)))
  {
    v131 = v110;
  }

  v132 = 20;
  *(a9 + 168) = v83;
  *(a9 + 176) = v84;
  if (!(v111 & 1 | (v112 < 0)))
  {
    v132 = v112;
  }

  v133 = v98;
  if (v113)
  {
    v133 = 1209600.0;
  }

  v134 = v99;
  if (a26)
  {
    v134 = 157680000.0;
  }

  *(a9 + 184) = v85;
  *(a9 + 192) = v134;
  *(a9 + 200) = v133;
  *(a9 + 208) = v86;
  *(a9 + 216) = v87;
  *(a9 + 224) = v88;
  *(a9 + 232) = v89;
  *(a9 + 240) = v90;
  *(a9 + 248) = v91;
  *(a9 + 256) = v92;
  *(a9 + 264) = v93;
  *(a9 + 272) = v94;
  *(a9 + 312) = v96;
  *(a9 + 320) = v95;
  *(a9 + 344) = v97;
  *(a9 + 352) = v100;
  *(a9 + 88) = v71;
  *(a9 + 104) = v72;
  *(a9 + 280) = v132;
  *(a9 + 288) = v131;
  *(a9 + 296) = v129;
  *(a9 + 304) = v130;
  *(a9 + 328) = result;
  *(a9 + 336) = v128;
  *(a9 + 360) = (v103 == 2) | v103 & 1;
  *(a9 + 361) = (v102 == 2) | v102 & 1;
  *(a9 + 362) = (a67 == 2) | a67 & 1;
  return result;
}

uint64_t Configuration.ScorersConfiguration.BookHistoryScorerConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2B0C(&qword_229BD0, &qword_1BCEE0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v109 - v7;
  sub_2698(a1, a1[3]);
  sub_71920();
  sub_1B5864();
  if (!v2)
  {
    LOBYTE(v190) = 0;
    sub_71974();
    sub_1B5374();
    v10 = v200;
    v9 = v201;
    v12 = v202;
    v11 = v203;
    v13 = v204;
    LOBYTE(v190) = 1;
    sub_1B5374();
    v187 = v198;
    v188 = v197;
    v14 = v199;
    LOBYTE(v205) = 2;
    sub_719C8();
    sub_1B5374();
    LODWORD(v184) = v13;
    LODWORD(v186) = v14;
    v15 = v190;
    v183 = v191;
    v182 = v192;
    v185 = v193;
    v16 = v194;
    v17 = v195;
    v18 = v196;
    LOBYTE(v205) = 3;
    v19 = COERCE_DOUBLE(sub_1B5344());
    LODWORD(v178) = v18;
    LODWORD(v179) = v20;
    v180 = v19;
    v181 = v17;
    LOBYTE(v205) = 4;
    *&v21 = COERCE_DOUBLE(sub_1B5344());
    LODWORD(v17) = v22;
    v23 = *&v21;
    LOBYTE(v205) = 5;
    v24 = COERCE_DOUBLE(sub_1B5344());
    LODWORD(v176) = LODWORD(v17);
    v26 = v25;
    v177 = v24;
    LOBYTE(v205) = 6;
    v27 = COERCE_DOUBLE(sub_1B5344());
    LODWORD(v174) = v28;
    v175 = v27;
    LOBYTE(v205) = 7;
    v29 = COERCE_DOUBLE(sub_1B5344());
    LODWORD(v170) = v30;
    v172 = v29;
    LOBYTE(v205) = 8;
    v173 = COERCE_DOUBLE(sub_1B5344());
    LODWORD(v171) = v31;
    LOBYTE(v205) = 9;
    v169 = COERCE_DOUBLE(sub_1B5344());
    LODWORD(v168) = v32;
    LOBYTE(v205) = 10;
    v167 = COERCE_DOUBLE(sub_1B5344());
    v166 = v33;
    LOBYTE(v205) = 11;
    sub_1B5344();
    LOBYTE(v205) = 12;
    sub_1B5344();
    LOBYTE(v205) = 13;
    *&v165 = COERCE_DOUBLE(sub_1B5344());
    v164 = v34;
    LOBYTE(v205) = 14;
    *&v163 = COERCE_DOUBLE(sub_1B5344());
    v162 = v35;
    LOBYTE(v205) = 15;
    v161 = COERCE_DOUBLE(sub_1B5344());
    v160 = v36;
    LOBYTE(v205) = 16;
    v159 = COERCE_DOUBLE(sub_1B5344());
    v158 = v37;
    LOBYTE(v205) = 17;
    v157 = COERCE_DOUBLE(sub_1B5344());
    v156 = v38;
    LOBYTE(v205) = 18;
    v155 = COERCE_DOUBLE(sub_1B5344());
    v154 = v39;
    LOBYTE(v205) = 19;
    v153 = COERCE_DOUBLE(sub_1B5344());
    v152 = v40;
    LOBYTE(v205) = 20;
    v151 = COERCE_DOUBLE(sub_1B5344());
    v150 = v41;
    LOBYTE(v205) = 21;
    v149 = COERCE_DOUBLE(sub_1B5344());
    v148 = v42;
    LOBYTE(v205) = 22;
    v147 = COERCE_DOUBLE(sub_1B5344());
    v146 = v43;
    LOBYTE(v205) = 23;
    v145 = COERCE_DOUBLE(sub_1B5344());
    v144 = v44;
    LOBYTE(v205) = 24;
    v143 = sub_1B5364();
    v142 = v45;
    LOBYTE(v205) = 25;
    v141 = sub_1B5364();
    v140 = v46;
    LOBYTE(v205) = 26;
    v139 = sub_1B5364();
    v138 = v47;
    LOBYTE(v205) = 27;
    *&v137 = COERCE_DOUBLE(sub_1B5364());
    v136 = v48;
    LOBYTE(v205) = 28;
    v135 = COERCE_DOUBLE(sub_1B5344());
    v134 = v49;
    LOBYTE(v205) = 29;
    v133 = COERCE_DOUBLE(sub_1B5344());
    v132 = v50;
    LOBYTE(v205) = 30;
    *&v131 = COERCE_DOUBLE(sub_1B5364());
    v130 = v51;
    LOBYTE(v205) = 31;
    v129 = COERCE_DOUBLE(sub_1B5344());
    v128 = v52;
    LOBYTE(v205) = 32;
    v127 = COERCE_DOUBLE(sub_1B5344());
    v126 = v53;
    LOBYTE(v205) = 33;
    v125 = sub_1B5334();
    LOBYTE(v205) = 34;
    v124 = sub_1B5334();
    LOBYTE(v205) = 35;
    v123 = sub_1B5334();
    sub_2B0C(&qword_229BF0, &qword_1BCEE8);
    v189 = 36;
    sub_71A1C();
    sub_1B5374();
    if (v205)
    {
      v55 = v205;
    }

    else
    {
      v55 = &off_211DB0;
    }

    v120 = sub_40E48(v55);

    v56 = 0.3;
    if (!LODWORD(v184))
    {
      v56 = v10;
    }

    v119 = v56;
    v57 = 0.9;
    v121 = 0x3FECCCCCCCCCCCCDLL;
    if (!LODWORD(v184))
    {
      v57 = v9;
    }

    v118 = v57;
    v58 = 0.1;
    v122 = 0x3FB999999999999ALL;
    if (!LODWORD(v184))
    {
      v58 = v12;
    }

    v117 = v58;
    v59 = 49766400.0;
    if (!LODWORD(v184))
    {
      v59 = v11;
    }

    v116 = v59;
    if (v186)
    {
      v60 = -1;
    }

    else
    {
      v60 = 0;
    }

    v61 = -0.1;
    if (!LODWORD(v178))
    {
      v61 = v15;
    }

    v115 = v61;
    v62 = 10;
    if (!LODWORD(v178))
    {
      v62 = *&v183;
    }

    v114 = v62;
    v63 = *&v182;
    if (LODWORD(v178))
    {
      v63 = 1;
    }

    v113 = v63;
    v64 = 7;
    if (!LODWORD(v178))
    {
      v64 = *&v185;
    }

    v112 = v64;
    v65 = 1.5;
    if (!LODWORD(v178))
    {
      v65 = v16;
    }

    v111 = v65;
    v66 = 180;
    if (!LODWORD(v178))
    {
      v66 = *&v181;
    }

    v110 = v66;
    if ((LOBYTE(v179) & 1) == 0)
    {
      v67 = v180;
      if (v180 >= -1.0)
      {
        if (v180 > 1.0)
        {
          v67 = 0.9;
        }

        v121 = *&v67;
      }
    }

    if ((LOBYTE(v176) & 1) != 0 || (v186 = *&v23, v23 < 0.0))
    {
      v186 = 0x4153C68000000000;
    }

    v180 = -0.9;
    if ((v26 & 1) == 0)
    {
      v68 = v177;
      if (v177 >= -1.0)
      {
        if (v177 > 1.0)
        {
          v68 = -0.9;
        }

        v180 = v68;
      }
    }

    if ((v174 & 1) != 0 || (v185 = v175, v175 < 0.0))
    {
      v185 = 5184000.0;
    }

    v179 = 0.5;
    if ((v170 & 1) == 0)
    {
      v69 = v172;
      if (v172 >= -1.0)
      {
        if (v172 > 1.0)
        {
          v69 = 0.5;
        }

        v179 = v69;
      }
    }

    if ((v171 & 1) != 0 || (v184 = v173, v173 < 0.0))
    {
      v184 = 49766400.0;
    }

    v178 = 0.5;
    if ((v168 & 1) == 0)
    {
      v70 = v169;
      if (v169 >= -1.0)
      {
        if (v169 > 1.0)
        {
          v70 = 0.5;
        }

        v178 = v70;
      }
    }

    if ((v166 & 1) != 0 || (v183 = v167, v167 < 0.0))
    {
      v183 = 49766400.0;
    }

    v177 = 0.5;
    if ((v168 & 1) == 0)
    {
      v71 = v169;
      if (v169 >= -1.0)
      {
        if (v169 > 1.0)
        {
          v71 = 0.5;
        }

        v177 = v71;
      }
    }

    if ((v166 & 1) != 0 || (v182 = v167, v167 < 0.0))
    {
      v182 = 49766400.0;
    }

    v72 = *&v165;
    if (v164)
    {
      v72 = 157680000.0;
    }

    v173 = v72;
    v73 = *&v163;
    if (v162)
    {
      v73 = 1209600.0;
    }

    v172 = v73;
    v176 = 1.0;
    if ((v160 & 1) == 0 && v161 >= -1.0)
    {
      v176 = fmin(v161, 1.0);
    }

    if ((v158 & 1) != 0 || (v181 = v159, v159 < 0.0))
    {
      v181 = 94953600.0;
    }

    v175 = 0.4;
    if ((v156 & 1) == 0)
    {
      v74 = v157;
      if (v157 >= -1.0)
      {
        if (v157 > 1.0)
        {
          v74 = 0.4;
        }

        v175 = v74;
      }
    }

    if ((v154 & 1) != 0 || (v75 = v155, v155 < 0.0))
    {
      v75 = 5184000.0;
    }

    v174 = 0x3FD999999999999ALL;
    if ((v152 & 1) == 0)
    {
      v76 = v153;
      if (v153 >= -1.0)
      {
        if (v153 > 1.0)
        {
          v76 = 0.4;
        }

        v174 = *&v76;
      }
    }

    if ((v150 & 1) != 0 || (v77 = v151, v151 < 0.0))
    {
      v77 = 5184000.0;
    }

    if ((v148 & 1) == 0)
    {
      v78 = v149;
      if (v149 >= -1.0)
      {
        if (v149 > 1.0)
        {
          v78 = 0.1;
        }

        v122 = *&v78;
      }
    }

    if ((v146 & 1) != 0 || (v79 = v147, v147 < 0.0))
    {
      v79 = 2592000.0;
    }

    v80 = 0.8;
    if ((v144 & 1) == 0 && v145 >= 0.0)
    {
      if (v145 > 1.0)
      {
        v80 = 0.8;
      }

      else
      {
        v80 = v145;
      }
    }

    v81 = 20;
    if (!(v142 & 1 | (v143 < 0)))
    {
      v81 = v143;
    }

    v171 = v81;
    v82 = 10;
    if (!(v140 & 1 | (v141 < 0)))
    {
      v82 = v141;
    }

    v170 = v82;
    if (v136 & 1 | (v137 < 0))
    {
      *&v83 = 1;
    }

    else
    {
      v83 = *&v137;
    }

    v169 = v83;
    v84 = 500;
    if (!(v138 & 1 | (v139 < 0)))
    {
      v84 = v139;
    }

    v168 = v84;
    v85 = 1.0;
    v86 = 1.0;
    if ((v134 & 1) == 0)
    {
      v86 = v135;
      if (v135 < 0.0)
      {
        v86 = 1.0;
      }
    }

    if ((v132 & 1) == 0)
    {
      v85 = v133;
      if (v133 < 0.0)
      {
        v85 = 1.0;
      }
    }

    v87 = vdupq_n_s64(v60);
    *&v88 = 1000;
    if (!(v130 & 1 | (v131 < 0)))
    {
      v88 = *&v131;
    }

    v167 = v88;
    v89 = 1.5;
    if ((v128 & 1) == 0)
    {
      v89 = v129;
      if (v129 <= 0.0)
      {
        v89 = 1.5;
      }
    }

    v187 = vbslq_s8(v87, xmmword_1BCD50, v187);
    v90 = vbslq_s8(v87, xmmword_1BCD30, v188);
    v188 = v90;
    v91 = 0.0;
    if ((v126 & 1) == 0)
    {
      v90.n128_f64[0] = v127;
      if (v127 >= 0.0)
      {
        if (v127 > 1.0)
        {
          v91 = 0.0;
        }

        else
        {
          v91 = v127;
        }
      }
    }

    v92 = (v125 == 2) | v125 & 1;
    v93 = (v124 == 2) | v124 & 1;
    v94 = (v123 == 2) | v123 & 1;
    (*(v6 + 8))(v8, v5, v90);
    v95 = v118;
    *a2 = v119;
    *(a2 + 8) = v95;
    v96 = v116;
    *(a2 + 16) = v117;
    *(a2 + 24) = v96;
    v97 = v187;
    *(a2 + 32) = v188;
    *(a2 + 48) = v97;
    *(a2 + 64) = v115;
    v98 = v113;
    *(a2 + 72) = v114;
    *(a2 + 80) = v98;
    *(a2 + 88) = v112;
    *(a2 + 96) = v111;
    *(a2 + 104) = v110;
    v99 = v186;
    *(a2 + 112) = v121;
    *(a2 + 120) = v99;
    v100 = v185;
    *(a2 + 128) = v180;
    *(a2 + 136) = v100;
    v101 = v184;
    *(a2 + 144) = v179;
    *(a2 + 152) = v101;
    v102 = v183;
    *(a2 + 160) = v178;
    *(a2 + 168) = v102;
    v103 = v182;
    *(a2 + 176) = v177;
    *(a2 + 184) = v103;
    v104 = v172;
    *(a2 + 192) = v173;
    *(a2 + 200) = v104;
    v105 = v181;
    *(a2 + 208) = v176;
    *(a2 + 216) = v105;
    *(a2 + 224) = v175;
    *(a2 + 232) = v75;
    *(a2 + 240) = v174;
    *(a2 + 248) = v77;
    *(a2 + 256) = v122;
    *(a2 + 264) = v79;
    *(a2 + 272) = v80;
    v106 = v170;
    *(a2 + 280) = v171;
    *(a2 + 288) = v106;
    v107 = v169;
    *(a2 + 296) = v168;
    *(a2 + 304) = v107;
    *(a2 + 312) = v86;
    *(a2 + 320) = v85;
    v108 = v167;
    *(a2 + 328) = v120;
    *(a2 + 336) = v108;
    *(a2 + 344) = v89;
    *(a2 + 352) = v91;
    *(a2 + 360) = v92;
    *(a2 + 361) = v93;
    *(a2 + 362) = v94;
  }

  return sub_2BF8(a1);
}

uint64_t Configuration.ScorersConfiguration.BookHistoryScorerConfiguration.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_2B0C(&qword_229C08, &qword_1BCEF0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v29 - v6;
  v8 = v2[2];
  v67 = v2[3];
  v68 = v8;
  v64 = *(v2 + 8);
  v9 = *(v2 + 9);
  v65 = *(v2 + 10);
  v66 = v9;
  v62 = *(v2 + 11);
  v63 = *(v2 + 12);
  v61 = *(v2 + 13);
  *&v8 = *(v2 + 15);
  v60 = *(v2 + 14);
  v59 = v8;
  *&v8 = *(v2 + 17);
  v58 = *(v2 + 16);
  v57 = v8;
  *&v8 = *(v2 + 19);
  v56 = *(v2 + 18);
  v55 = v8;
  *&v8 = *(v2 + 21);
  v54 = *(v2 + 20);
  v53 = v8;
  *&v8 = *(v2 + 23);
  v52 = *(v2 + 22);
  v51 = v8;
  *&v8 = *(v2 + 25);
  v50 = *(v2 + 24);
  v49 = v8;
  *&v8 = *(v2 + 27);
  v48 = *(v2 + 26);
  v47 = v8;
  *&v8 = *(v2 + 29);
  v39 = *(v2 + 28);
  v40 = v8;
  v10 = *(v2 + 31);
  v41 = *(v2 + 30);
  v12 = *(v2 + 32);
  v11 = *(v2 + 33);
  v13 = *(v2 + 34);
  v14 = *(v2 + 36);
  v38 = *(v2 + 35);
  v42 = v14;
  v15 = *(v2 + 38);
  v43 = *(v2 + 37);
  v44 = v15;
  v17 = *(v2 + 39);
  v16 = *(v2 + 40);
  v18 = *(v2 + 42);
  v46 = *(v2 + 41);
  v45 = v18;
  v20 = *(v2 + 43);
  v19 = *(v2 + 44);
  v74 = *(v2 + 360);
  v21 = *(v2 + 361);
  v22 = *(v2 + 362);
  sub_2698(a1, a1[3]);
  sub_71920();
  v23 = v4;
  sub_1B5884();
  v24 = *v2;
  v71 = v2[1];
  v70 = v24;
  v75 = 0;
  sub_71AF4();
  v25 = v69;
  sub_1B5544();
  if (v25)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v27 = v65;
  v28 = v66;
  v30 = v10;
  v31 = v12;
  v32 = v11;
  v33 = v13;
  v34 = v17;
  v35 = v16;
  v36 = v20;
  v37 = v19;
  v29[1] = v21;
  LODWORD(v69) = v22;
  v71 = v67;
  v70 = v68;
  v75 = 1;
  sub_1B5544();
  *&v70 = v64;
  *(&v70 + 1) = v28;
  *&v71 = v27;
  *(&v71 + 1) = v62;
  v72 = v63;
  v73 = v61;
  v75 = 2;
  sub_71B48();
  sub_1B5544();
  LOBYTE(v70) = 3;
  sub_1B5514();
  LOBYTE(v70) = 4;
  sub_1B5514();
  LOBYTE(v70) = 5;
  sub_1B5514();
  LOBYTE(v70) = 6;
  sub_1B5514();
  LOBYTE(v70) = 7;
  sub_1B5514();
  LOBYTE(v70) = 8;
  sub_1B5514();
  LOBYTE(v70) = 9;
  sub_1B5514();
  LOBYTE(v70) = 10;
  sub_1B5514();
  LOBYTE(v70) = 11;
  sub_1B5514();
  LOBYTE(v70) = 12;
  sub_1B5514();
  LOBYTE(v70) = 13;
  sub_1B5514();
  LOBYTE(v70) = 14;
  sub_1B5514();
  LOBYTE(v70) = 15;
  sub_1B5514();
  LOBYTE(v70) = 16;
  sub_1B5514();
  LOBYTE(v70) = 17;
  sub_1B5514();
  LOBYTE(v70) = 18;
  sub_1B5514();
  LOBYTE(v70) = 19;
  sub_1B5514();
  LOBYTE(v70) = 20;
  sub_1B5514();
  LOBYTE(v70) = 21;
  sub_1B5514();
  LOBYTE(v70) = 22;
  sub_1B5514();
  LOBYTE(v70) = 23;
  sub_1B5514();
  LOBYTE(v70) = 24;
  sub_1B5534();
  LOBYTE(v70) = 25;
  sub_1B5534();
  LOBYTE(v70) = 26;
  sub_1B5534();
  LOBYTE(v70) = 27;
  sub_1B5534();
  LOBYTE(v70) = 28;
  sub_1B5514();
  LOBYTE(v70) = 29;
  sub_1B5514();
  LOBYTE(v70) = 30;
  sub_1B5534();
  LOBYTE(v70) = 31;
  sub_1B5514();
  LOBYTE(v70) = 32;
  sub_1B5514();
  LOBYTE(v70) = 33;
  sub_1B5504();
  LOBYTE(v70) = 34;
  sub_1B5504();
  LOBYTE(v70) = 35;
  sub_1B5504();
  *&v70 = v46;
  v75 = 36;
  sub_2B0C(&qword_229C20, &qword_1BCEF8);
  sub_71B9C();
  sub_1B5544();
  return (*(v5 + 8))(v7, v23);
}

BooksPersonalization::Configuration::ScorersConfiguration::Scorer_optional __swiftcall Configuration.ScorersConfiguration.Scorer.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_211DD8;
  v8._object = object;
  v5 = sub_1B52E4(v4, v8);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t Scorer.rawValue.getter()
{
  v1 = 0x797469746E656469;
  if (*v0 != 1)
  {
    v1 = 1768055156;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_6D4EC(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x797469746E656469;
  v3 = *a1;
  v4 = 0xE800000000000000;
  v5 = 1768055156;
  if (v3 == 1)
  {
    v5 = 0x797469746E656469;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0xD000000000000013;
  }

  if (v3)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x80000000001D45F0;
  }

  v8 = 0xE800000000000000;
  if (*a2 != 1)
  {
    v2 = 1768055156;
    v8 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xD000000000000013;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0x80000000001D45F0;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B5604();
  }

  return v11 & 1;
}

Swift::Int sub_6D5D8()
{
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_6D678(uint64_t a1)
{
  sub_1B4884();
}

Swift::Int sub_6D704(uint64_t a1)
{
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

void sub_6D7AC(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x797469746E656469;
  if (v2 != 1)
  {
    v4 = 1768055156;
    v3 = 0xE400000000000000;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000013;
  }

  if (v5)
  {
    v3 = 0x80000000001D45F0;
  }

  *a1 = v6;
  a1[1] = v3;
}

Swift::Int sub_6D8B8()
{
  sub_1B57F4();
  sub_1B4884();
  return sub_1B5844();
}

Swift::Int sub_6D934(uint64_t a1)
{
  sub_1B57F4();
  sub_1B4884();
  return sub_1B5844();
}

uint64_t sub_6D98C@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_211E40;
  v7._object = v3;
  v5 = sub_1B52E4(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_6DA24@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_211E78;
  v8._object = a2;
  v6 = sub_1B52E4(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_6DA7C(uint64_t a1)
{
  v2 = sub_71CC4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_6DAB8(uint64_t a1)
{
  v2 = sub_71CC4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Configuration.ScorersConfiguration.bookHistoryScorerConfiguration.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, 0x16BuLL);
  memcpy(a1, v1, 0x16BuLL);
  return sub_71C74(__dst, v4);
}

double Configuration.ScorersConfiguration.init(bookHistoryScorerConfiguration:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 40);
  v8 = *(a1 + 48);
  v7 = *(a1 + 56);
  v9 = *(a1 + 64);
  v11 = *(a1 + 72);
  v10 = *(a1 + 80);
  v12 = *(a1 + 88);
  v13 = *(a1 + 96);
  v14 = *(a1 + 104);
  v15 = *(a1 + 112);
  v16 = *(a1 + 120);
  v17 = *(a1 + 128);
  v18 = *(a1 + 136);
  v19 = *(a1 + 144);
  v20 = *(a1 + 152);
  v21 = *(a1 + 160);
  v22 = *(a1 + 168);
  v23 = *(a1 + 176);
  v24 = *(a1 + 184);
  v26 = *(a1 + 192);
  v25 = *(a1 + 200);
  v27 = *(a1 + 208);
  v28 = *(a1 + 216);
  v29 = *(a1 + 224);
  v30 = *(a1 + 232);
  v31 = *(a1 + 240);
  v32 = *(a1 + 248);
  v34 = *(a1 + 256);
  v33 = *(a1 + 264);
  v35 = *(a1 + 272);
  v36 = *(a1 + 280);
  v37 = *(a1 + 288);
  v38 = *(a1 + 296);
  v39 = *(a1 + 304);
  v40 = *(a1 + 328);
  v41 = *(a1 + 336);
  v42 = *(a1 + 360);
  v43 = *(a1 + 361);
  v44 = *(a1 + 362);
  v97 = *(a1 + 32);
  v98 = *a1;
  v115[0] = *a1;
  v115[1] = v3;
  v84 = v4;
  v115[2] = v4;
  v115[3] = v5;
  v115[4] = v97;
  v115[5] = v6;
  v95 = v8;
  v96 = v6;
  v115[6] = v8;
  v115[7] = v7;
  v99 = v9;
  v115[8] = v9;
  v100 = v11;
  v101 = v12;
  v115[9] = v11;
  v115[10] = v10;
  v111 = v10;
  v115[11] = v12;
  v109 = v13;
  v110 = v19;
  *&v115[12] = v13;
  v102 = v14;
  v115[13] = v14;
  v93 = v16;
  v94 = v15;
  v115[14] = v15;
  v115[15] = v16;
  v103 = v17;
  v104 = v26;
  v115[16] = v17;
  v115[17] = v18;
  v91 = v20;
  v92 = v18;
  *&v115[18] = v19;
  v115[19] = v20;
  v89 = v22;
  v90 = v21;
  *&v115[20] = v21;
  v115[21] = v22;
  v87 = v24;
  v88 = v23;
  *&v115[22] = v23;
  v115[23] = v24;
  v115[24] = v26;
  v115[25] = v25;
  v105 = v25;
  v106 = v29;
  v113 = v33;
  v114 = v27;
  *&v115[26] = v27;
  v115[27] = v28;
  v107 = v28;
  v108 = v35;
  v115[28] = v29;
  v115[29] = v30;
  v85 = v31;
  v86 = v30;
  v115[30] = v31;
  v115[31] = v32;
  v45 = v32;
  v46 = v34;
  v115[32] = v34;
  v115[33] = v33;
  v115[34] = v35;
  v47 = v36;
  v115[35] = v36;
  v115[36] = v37;
  v48 = v38;
  v115[37] = v38;
  v115[38] = v39;
  v50 = *(a1 + 312);
  v49 = *(a1 + 320);
  *&v115[39] = v50;
  *&v115[40] = v49;
  v51 = v40;
  v115[41] = v40;
  v52 = v41;
  v115[42] = v41;
  v54 = *(a1 + 344);
  v53 = *(a1 + 352);
  *&v115[43] = v54;
  v112 = v53;
  *&v115[44] = v53;
  v116 = v42;
  v117 = v43;
  v118 = v44;
  if (sub_71CAC(v115) == 1)
  {
    v51 = sub_40E48(&off_211EB0);
    v55 = 1;
    v112 = 0.0;
    v52 = 1000;
    v48 = 500;
    v114 = 1.0;
    v47 = 20;
    v56 = 0.5;
    v113 = 0x4143C68000000000;
    v57 = 1.5;
    v58 = 0x3FE999999999999ALL;
    v59 = 0x4196A38200000000;
    v60 = 0x3FD999999999999ALL;
    v61 = 0x4132750000000000;
    v62 = 0x41A2CC0300000000;
    v63 = 0xBFECCCCCCCCCCCCDLL;
    v64 = 180;
    v65 = 7;
    v66 = 10;
    v67 = 0xBFB999999999999ALL;
    v7 = 0x4153C68000000000;
    v5 = 0x4187BB0000000000;
    v68 = 0x3FB999999999999ALL;
    v3 = 0x3FECCCCCCCCCCCCDLL;
    v69 = 0x3FD3333333333333;
    v70 = 0x3FD3333333333333;
    v71 = 0x3FECCCCCCCCCCCCDLL;
    v72 = 0x3FB999999999999ALL;
    v73 = 0x3FECCCCCCCCCCCCDLL;
    v74 = 0x4153C68000000000;
    v75 = 0x4153C68000000000;
    v76 = 0x4187BB0000000000;
    v77 = 0.5;
    v78 = 0x4187BB0000000000;
    v79 = 0.5;
    v80 = 0x4187BB0000000000;
    v81 = 0x4153C68000000000;
    v82 = 0x3FD999999999999ALL;
    v37 = 10;
    v39 = 1;
    v50 = 1.0;
    v49 = 1.0;
    v42 = 1;
    v43 = 1;
    v44 = 1;
    v45 = 0x4153C68000000000;
    v54 = 1.5;
    v46 = 0x3FB999999999999ALL;
  }

  else
  {
    v55 = v111;
    v57 = v109;
    v56 = v110;
    v59 = v107;
    v58 = v108;
    v61 = v105;
    v60 = v106;
    v63 = v103;
    v62 = v104;
    v65 = v101;
    v64 = v102;
    v66 = v100;
    v69 = v98;
    v67 = v99;
    v71 = v96;
    v70 = v97;
    v73 = v94;
    v72 = v95;
    v75 = v92;
    v74 = v93;
    v77 = v90;
    v76 = v91;
    v79 = v88;
    v78 = v89;
    v81 = v86;
    v80 = v87;
    v68 = v84;
    v82 = v85;
  }

  *a2 = v69;
  *(a2 + 8) = v3;
  *(a2 + 16) = v68;
  *(a2 + 24) = v5;
  *(a2 + 32) = v70;
  *(a2 + 40) = v71;
  *(a2 + 48) = v72;
  *(a2 + 56) = v7;
  *(a2 + 64) = v67;
  *(a2 + 72) = v66;
  *(a2 + 80) = v55;
  *(a2 + 88) = v65;
  *(a2 + 96) = v57;
  *(a2 + 104) = v64;
  *(a2 + 112) = v73;
  *(a2 + 120) = v74;
  *(a2 + 128) = v63;
  *(a2 + 136) = v75;
  *(a2 + 144) = v56;
  *(a2 + 152) = v76;
  *(a2 + 160) = v77;
  *(a2 + 168) = v78;
  *(a2 + 176) = v79;
  *(a2 + 184) = v80;
  *(a2 + 192) = v62;
  *(a2 + 200) = v61;
  *(a2 + 208) = v114;
  *(a2 + 216) = v59;
  *(a2 + 224) = v60;
  *(a2 + 232) = v81;
  *(a2 + 240) = v82;
  *(a2 + 248) = v45;
  result = v112;
  *(a2 + 256) = v46;
  *(a2 + 264) = v113;
  *(a2 + 272) = v58;
  *(a2 + 280) = v47;
  *(a2 + 288) = v37;
  *(a2 + 296) = v48;
  *(a2 + 304) = v39;
  *(a2 + 312) = v50;
  *(a2 + 320) = v49;
  *(a2 + 328) = v51;
  *(a2 + 336) = v52;
  *(a2 + 344) = v54;
  *(a2 + 352) = v112;
  *(a2 + 360) = v42;
  *(a2 + 361) = v43;
  *(a2 + 362) = v44;
  return result;
}

uint64_t Configuration.ScorersConfiguration.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v15 = a2;
  v4 = sub_2B0C(&qword_229C38, &qword_1BCF00);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12[-v6 - 8];
  sub_2698(a1, a1[3]);
  sub_71CC4();
  sub_1B5864();
  if (!v2)
  {
    v8 = v15;
    sub_71D18();
    sub_1B5374();
    memcpy(v12, v14, 0x16BuLL);
    v9 = Configuration.ScorersConfiguration.init(bookHistoryScorerConfiguration:)(v12, v13);
    (*(v5 + 8))(v7, v4, v9);
    memcpy(v8, v13, 0x16BuLL);
  }

  return sub_2BF8(a1);
}

uint64_t Configuration.ScorersConfiguration.encode(to:)(void *a1)
{
  v3 = sub_2B0C(&qword_229C50, &qword_1BCF08);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5 - 8];
  memcpy(v11, v1, 0x16BuLL);
  sub_2698(a1, a1[3]);
  sub_71C74(v11, v10);
  sub_71CC4();
  sub_1B5884();
  memcpy(v10, v11, 0x16BuLL);
  sub_71D6C();
  sub_1B5544();
  memcpy(v9, v10, 0x16BuLL);
  sub_71DC0(v9);
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_6E23C(char a1)
{
  result = 0x697463656C6C6F63;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000017;
      break;
    case 2:
      return result;
    case 3:
      result = 0x737265726F6373;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0xD00000000000001CLL;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
    case 8:
      result = 0x707954616964656DLL;
      break;
    case 9:
      result = 0x6B6F6F6265;
      break;
    case 10:
      result = 0x6F6F626F69647561;
      break;
    case 11:
      result = 0x756C43736B6F6F62;
      break;
    case 12:
      result = 0xD00000000000001ELL;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

uint64_t sub_6E46C(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1B5604();
  }

  return v12 & 1;
}

Swift::Int sub_6E518(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *v3;
  sub_1B57F4();
  a3(v5);
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_6E59C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  (a4)(*v4, a2, a3);
  sub_1B4884();
}

Swift::Int sub_6E60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *v4;
  sub_1B57F4();
  a4(v6);
  sub_1B4884();

  return sub_1B5844();
}

unint64_t sub_6E674@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_75864(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_6E6A4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_6E23C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_6E6EC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_75864(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_6E714(uint64_t a1)
{
  v2 = sub_71F54();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_6E750(uint64_t a1)
{
  v2 = sub_71F54();

  return CodingKey.debugDescription.getter(a1, v2);
}

BooksPersonalization::Configuration::MediaTypeMethod_optional __swiftcall Configuration.MediaTypeMethod.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_212048;
  v8._object = object;
  v5 = sub_1B52E4(v4, v8);

  v7 = 4;
  if (v5 < 4)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t MediaTypeMethod.rawValue.getter()
{
  v1 = 0x6F4A656C676E6973;
  v2 = 0x6F6A7369446C6C61;
  if (*v0 != 2)
  {
    v2 = 0x7473657265746E69;
  }

  if (*v0)
  {
    v1 = 0x746E696F4A6C6C61;
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

Swift::Int sub_6E880()
{
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

uint64_t sub_6E954(uint64_t a1)
{
  sub_1B4884();
}

Swift::Int sub_6EA14(uint64_t a1)
{
  sub_1B57F4();
  sub_1B4884();

  return sub_1B5844();
}

void sub_6EAF0(uint64_t *a1@<X8>)
{
  v2 = 0x6F4A656C676E6973;
  v3 = 0x6F6A7369446C6C61;
  v4 = 0xED00006465736142;
  if (*v1 == 2)
  {
    v4 = 0xEB00000000746E69;
  }

  else
  {
    v3 = 0x7473657265746E69;
  }

  v5 = 0xE800000000000000;
  if (*v1)
  {
    v2 = 0x746E696F4A6C6C61;
  }

  else
  {
    v5 = 0xEB00000000746E69;
  }

  if (*v1 <= 1u)
  {
    v6 = v2;
  }

  else
  {
    v6 = v3;
  }

  if (*v1 <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  *a1 = v6;
  a1[1] = v7;
}

double Configuration.genreRecommendationConfiguration.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  result = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = result;
  *(a1 + 24) = v4;
  return result;
}

uint64_t Configuration.collectionsConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v7[0] = *(v1 + 32);
  v7[1] = v2;
  v8 = *(v1 + 64);
  v3 = v8;
  v9 = *(v1 + 80);
  v4 = v9;
  *a1 = v7[0];
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  return sub_71DF0(v7, v6);
}

uint64_t Configuration.scorersConfiguration.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 88), 0x16BuLL);
  memcpy(a1, (v1 + 88), 0x16BuLL);
  return sub_71E28(__dst, v4);
}

uint64_t Configuration.mediaTypesRecommendationServiceConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 504);
  v3 = *(v1 + 512);
  *a1 = *(v1 + 488);
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
}

uint64_t Configuration.booksClusteringServiceConfiguration.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 600);
  v13 = *(v1 + 584);
  v2 = v13;
  v14[0] = v3;
  *(v14 + 9) = *(v1 + 609);
  v4 = *(v14 + 9);
  v5 = *(v1 + 536);
  v10[0] = *(v1 + 520);
  v10[1] = v5;
  v6 = *(v1 + 568);
  v11 = *(v1 + 552);
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  a1[1] = v5;
  a1[2] = v7;
  a1[3] = v6;
  a1[4] = v2;
  a1[5] = v3;
  *(a1 + 89) = v4;
  return sub_71E60(v10, &v9);
}

uint64_t Configuration.ebookConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 640);
  v3 = *(v1 + 641);
  *a1 = *(v1 + 632);
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
}

uint64_t Configuration.audiobookConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 656);
  v3 = *(v1 + 657);
  *a1 = *(v1 + 648);
  *(a1 + 8) = v2;
  *(a1 + 9) = v3;
}

double Configuration.personalizationMetadataServiceConfiguration.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 672);
  v3 = *(v1 + 680);
  *a1 = *(v1 + 664);
  *(a1 + 8) = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t Configuration.workServiceConfiguration.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 688), 0x1B0uLL);
  memcpy(a1, (v1 + 688), 0x1B0uLL);
  return sub_71E98(__dst, v4);
}

__n128 Configuration.init(genreRecommendationConfiguration:seedBasedRecommendationConfiguration:collectionsConfiguration:scorersConfiguration:profileGenreDenylistForGenres:profileGenreDenylistForBooks:indefiniteAuthorIDs:mediaTypeMethod:mediaTypesRecommendationServiceConfiguration:booksClusteringServiceConfiguration:ebookConfiguration:audiobookConfiguration:personalizationMetadataServiceConfiguration:workServiceConfiguration:)@<Q0>(void *__src@<X3>, uint64_t a2@<X0>, char *a3@<X1>, void *a4@<X2>, _UNKNOWN **a5@<X4>, _UNKNOWN **a6@<X5>, _UNKNOWN **a7@<X6>, unsigned __int8 *a8@<X7>, uint64_t a9@<X8>, int64x2_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, double *a14, uint64_t a15)
{
  if (*(a2 + 24) == 2)
  {
    v84 = 0;
    LOBYTE(v86) = 1;
    v16 = 0x3FE6666666666666;
    v88 = 1000;
    LOBYTE(v17) = 1;
  }

  else
  {
    v84 = *(a2 + 24);
    v16 = *(a2 + 16);
    v88 = *a2;
    v86 = *(a2 + 8);
    v17 = v86 >> 8;
  }

  v91 = v17;
  if (a4[6])
  {
    v87 = a4[3];
    v82 = a4[6];
    v83 = *a4 & 0xFFFFFFFFFFFFFF00;
    v77 = *a4;
    v80 = a4[1];
    v89 = a4[5];
    v90 = a4[1] & 0xFFFFFFFFFFFFFF00;
    v81 = a4[2] & 0xFFFFFFFFFFFFFF00;
    v79 = a4[2];
    v76 = a4[4] & 0xFFFFFFFFFFFFFF00;
    v78 = a4[4];
  }

  else
  {
    v89 = 0xD000000000000056;
    v90 = 0;
    v82 = 0x80000000001D59C0;
    v83 = 0x301030103010100;
    v81 = 256;
    v80 = 1;
    v79 = 3;
    v78 = 2;
    v87 = 50;
    v77 = 3;
    v76 = 256;
  }

  v94 = *(a11 + 32);
  v100 = *(a11 + 48);
  v101 = *(a11 + 40);
  v97 = *(a11 + 64);
  v98 = *(a11 + 72);
  v99 = *(a11 + 56);
  v95 = *a11;
  v96 = *(a11 + 96);
  v92 = *(a11 + 104);
  v106 = *(a12 + 8);
  v105 = *(a13 + 8);
  v73 = *a14;
  v74 = *a3;
  v75 = *a8;
  v18 = a10[1].i64[0];
  v19 = *(a11 + 8);
  v93 = *(a11 + 24);
  v102 = *(a11 + 80);
  v103 = *a10;
  v107 = *(a11 + 16);
  v108 = *a12;
  v109 = *a13;
  v110 = a10[1].u64[1];
  v20 = a14[1];
  v72 = *(a14 + 2);
  v104 = *a15;
  v21 = *(a15 + 16);
  v111 = *(a15 + 8);
  v112 = *(a15 + 32);
  v113 = *(a15 + 24);
  v114 = *(a15 + 40);
  v132 = *(a15 + 232);
  v131 = *(a15 + 240);
  v130 = *(a15 + 248);
  v129 = *(a15 + 256);
  v128 = *(a15 + 264);
  v127 = *(a15 + 272);
  v126 = *(a15 + 280);
  v124 = *(a15 + 296);
  v125 = *(a15 + 288);
  v122 = *(a15 + 312);
  v123 = *(a15 + 304);
  v120 = *(a15 + 328);
  v121 = *(a15 + 320);
  v118 = *(a15 + 344);
  v119 = *(a15 + 336);
  v115 = *(a15 + 352);
  v22 = *(a15 + 360);
  v23 = *(a15 + 368);
  v24 = *(a15 + 376);
  v25 = *(a15 + 384);
  v27 = *(a15 + 392);
  v26 = *(a15 + 400);
  v134 = *(a15 + 408);
  v133 = *(a15 + 416);
  v117 = *(a15 + 424);
  memcpy(__dst, __src, 0x16BuLL);
  if (sub_71CAC(__dst) == 1)
  {
    sub_71EF4(__srca);
    memcpy(v156, __srca, 0x16BuLL);
    Configuration.ScorersConfiguration.init(bookHistoryScorerConfiguration:)(v156, v157);
  }

  else
  {
    memcpy(v157, __src, 0x16BuLL);
  }

  if (a5)
  {
    v29 = a5;
  }

  else
  {
    v29 = &off_2120C8;
  }

  v30 = a6;
  v71 = v29;
  if (a6)
  {
    if (v110)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v30 = v29;

    if (v110)
    {
      goto LABEL_15;
    }
  }

  v110 = sub_130448(&off_212420);
  v103 = vdupq_n_s64(2uLL);
  v18 = 0x3FE999999999999ALL;
LABEL_15:
  v31 = v134;
  v32 = v133;
  v33 = v117;
  v34 = v118;
  v35 = v132;
  v36 = v131;
  v37 = v130;
  v38 = v129;
  v39 = v128;
  v40 = v127;
  v41 = v126;
  v43 = v124;
  v42 = v125;
  v45 = v122;
  v44 = v123;
  v47 = v120;
  v46 = v121;
  v48 = v119;
  if (v107)
  {
    if (v108)
    {
      goto LABEL_17;
    }

LABEL_22:
    if (qword_228298 != -1)
    {
      swift_once();
    }

    LOBYTE(v106) = word_260BD8;
    LOBYTE(v69) = HIBYTE(word_260BD8);
    v108 = qword_260BD0;

    v31 = v134;
    v32 = v133;
    v33 = v117;
    v34 = v118;
    v35 = v132;
    v36 = v131;
    v37 = v130;
    v38 = v129;
    v39 = v128;
    v40 = v127;
    v41 = v126;
    v43 = v124;
    v42 = v125;
    v45 = v122;
    v44 = v123;
    v47 = v120;
    v46 = v121;
    v48 = v119;
    if (v109)
    {
      goto LABEL_18;
    }

    goto LABEL_25;
  }

  v101 = sub_130530(&off_212590);
  v100 = sub_130530(&off_2125C0);
  v102 = xmmword_1BCD60;
  v49 = sub_13061C(&off_212610);
  v34 = v118;
  v48 = v119;
  v47 = v120;
  v46 = v121;
  v45 = v122;
  v44 = v123;
  v43 = v124;
  v42 = v125;
  v40 = v127;
  v39 = v128;
  v38 = v129;
  v37 = v130;
  v36 = v131;
  v35 = v132;
  v33 = v117;
  v32 = v133;
  v31 = v134;
  v99 = v49;
  v41 = v126;
  v94 = 0;
  v98 = &off_212678;
  v97 = &off_212650;
  v107 = _swiftEmptyArrayStorage;
  v92 = 1;
  v19 = 2.0;
  v96 = 10;
  v95 = 5;
  v93 = &off_212560;
  if (!v108)
  {
    goto LABEL_22;
  }

LABEL_17:
  v69 = (v106 >> 8) & 1;
  if (v109)
  {
LABEL_18:
    v68 = (v105 >> 8) & 1;
    goto LABEL_28;
  }

LABEL_25:
  if (qword_2282A0 != -1)
  {
    swift_once();
  }

  LOBYTE(v105) = word_260BE8;
  LOBYTE(v68) = HIBYTE(word_260BE8);
  v109 = qword_260BE0;

  v31 = v134;
  v32 = v133;
  v33 = v117;
  v34 = v118;
  v35 = v132;
  v36 = v131;
  v37 = v130;
  v38 = v129;
  v39 = v128;
  v40 = v127;
  v41 = v126;
  v43 = v124;
  v42 = v125;
  v45 = v122;
  v44 = v123;
  v47 = v120;
  v46 = v121;
  v48 = v119;
LABEL_28:
  *&__srca[224] = *(a15 + 224);
  *__srca = v104;
  *&__srca[8] = v111;
  *&__srca[16] = v21;
  *&__srca[24] = v113;
  *&__srca[32] = v112;
  *&__srca[40] = v114;
  v50 = *(a15 + 192);
  *&__srca[176] = *(a15 + 176);
  *&__srca[192] = v50;
  *&__srca[208] = *(a15 + 208);
  v51 = *(a15 + 128);
  *&__srca[112] = *(a15 + 112);
  *&__srca[128] = v51;
  v52 = *(a15 + 160);
  *&__srca[144] = *(a15 + 144);
  *&__srca[160] = v52;
  v53 = *(a15 + 64);
  *&__srca[48] = *(a15 + 48);
  *&__srca[64] = v53;
  v54 = *(a15 + 96);
  *&__srca[80] = *(a15 + 80);
  *&__srca[96] = v54;
  *&__srca[232] = v35;
  *&__srca[240] = v36;
  *&__srca[248] = v37;
  *&__srca[256] = v38;
  *&__srca[264] = v39;
  *&__srca[272] = v40;
  *&__srca[280] = v41;
  *&__srca[288] = v42;
  *&__srca[296] = v43;
  *&__srca[304] = v44;
  *&__srca[312] = v45;
  *&__srca[320] = v46;
  *&__srca[328] = v47;
  *&__srca[336] = v48;
  *&__srca[344] = v34;
  *&__srca[352] = v115;
  *&__srca[360] = v22;
  v148 = v23;
  v149 = v24;
  v150 = v25;
  v151 = v27;
  v152 = v26;
  v153 = v31;
  v154 = v32;
  v155 = v33;
  if (sub_24298(__srca) == 1)
  {
    sub_71F30(&v156[3]);
    v66 = 0;
    v67 = 0;
    v63 = 0;
    v64 = 0;
    v62 = 0;
    v65 = 0;
    v134 = 0;
    v133 = 0;
    v117 = 0;
    v118 = 0;
    v114 = 0;
    v115 = 0;
    v132 = 0;
    v131 = 0;
    v130 = 0;
    v129 = 0;
    v128 = 0;
    v127 = 0;
    v126 = 0;
    v124 = 0;
    v125 = 0;
    v122 = 0;
    v123 = 0;
    v120 = 0;
    v121 = 0;
    v119 = 0;
    v143 = v156[11];
    v144 = v156[12];
    v145 = v156[13];
    v146 = *&v156[14];
    v139 = v156[7];
    v140 = v156[8];
    v113 = 0x80000000001D5A20;
    v141 = v156[9];
    v142 = v156[10];
    v135 = v156[3];
    v136 = v156[4];
    v61 = 0xD000000000000023;
    v137 = v156[5];
    v138 = v156[6];
    v111 = 0xEB00000000444549;
    v55 = 0x4649434550534E55;
    v112 = _swiftEmptyArrayStorage;
    v56 = v82;
  }

  else
  {
    v143 = *(a15 + 176);
    v144 = *(a15 + 192);
    v145 = *(a15 + 208);
    v146 = *(a15 + 224);
    v139 = *(a15 + 112);
    v140 = *(a15 + 128);
    v141 = *(a15 + 144);
    v142 = *(a15 + 160);
    v135 = *(a15 + 48);
    v136 = *(a15 + 64);
    v137 = *(a15 + 80);
    v138 = *(a15 + 96);
    v56 = v82;
    v66 = v25;
    v67 = v22;
    v63 = v27;
    v64 = v23;
    v61 = v21;
    v62 = v24;
    v65 = v26;
    v55 = v104;
  }

  *a9 = v88;
  if (v73 == 2)
  {
    v57 = 500;
  }

  else
  {
    v57 = v72;
  }

  *(a9 + 8) = v86;
  *(a9 + 9) = v91;
  if (v73 == 2)
  {
    v20 = 86400.0;
  }

  *(a9 + 16) = v16;
  *(a9 + 24) = v84 & 1;
  *(a9 + 25) = v74 & 1;
  if (v75 == 4)
  {
    v58 = 1;
  }

  else
  {
    v58 = v75;
  }

  *(a9 + 32) = v83 | v77;
  *(a9 + 40) = v90 | v80;
  if (a7)
  {
    v59 = a7;
  }

  else
  {
    v59 = &off_2123E8;
  }

  *(a9 + 48) = v81 | v79;
  *(a9 + 56) = v87;
  *(a9 + 64) = v76 | v78;
  *(a9 + 72) = v89;
  *(a9 + 80) = v56;
  memcpy((a9 + 88), v157, 0x16BuLL);
  *(a9 + 456) = v71;
  *(a9 + 464) = v30;
  *(a9 + 472) = v59;
  *(a9 + 480) = v58;
  *(a9 + 512) = v110;
  *(a9 + 520) = v95;
  *(a9 + 536) = v107;
  *(a9 + 544) = v93;
  *(a9 + 552) = v94 & 1;
  *(a9 + 560) = v101;
  *(a9 + 568) = v100;
  *(a9 + 576) = v99;
  *(a9 + 584) = v97;
  *(a9 + 592) = v98;
  *(a9 + 616) = v96;
  *(a9 + 624) = v92 & 1;
  *(a9 + 632) = v108;
  *(a9 + 640) = v106 & 1;
  *(a9 + 641) = v69;
  *(a9 + 648) = v109;
  *(a9 + 656) = v105 & 1;
  *(a9 + 657) = v68;
  *(a9 + 664) = (v73 != 2) & v73;
  *(a9 + 680) = v57;
  *(a9 + 688) = v55;
  *(a9 + 696) = v111;
  *(a9 + 488) = v103;
  *(a9 + 504) = v18;
  *(a9 + 528) = v19;
  *(a9 + 600) = v102;
  *(a9 + 672) = v20;
  *(a9 + 704) = v61;
  *(a9 + 712) = v113;
  *(a9 + 720) = v112;
  *(a9 + 728) = v114;
  *(a9 + 864) = v143;
  *(a9 + 880) = v144;
  *(a9 + 896) = v145;
  *(a9 + 912) = v146;
  *(a9 + 800) = v139;
  *(a9 + 816) = v140;
  *(a9 + 832) = v141;
  *(a9 + 848) = v142;
  *(a9 + 736) = v135;
  *(a9 + 752) = v136;
  result = v137;
  *(a9 + 768) = v137;
  *(a9 + 784) = v138;
  *(a9 + 920) = v132;
  *(a9 + 928) = v131;
  *(a9 + 936) = v130;
  *(a9 + 944) = v129;
  *(a9 + 952) = v128;
  *(a9 + 960) = v127;
  *(a9 + 968) = v126;
  *(a9 + 976) = v125;
  *(a9 + 984) = v124;
  *(a9 + 992) = v123;
  *(a9 + 1000) = v122;
  *(a9 + 1008) = v121;
  *(a9 + 1016) = v120;
  *(a9 + 1024) = v119;
  *(a9 + 1032) = v118;
  *(a9 + 1040) = v115;
  *(a9 + 1048) = v67;
  *(a9 + 1056) = v64;
  *(a9 + 1064) = v62;
  *(a9 + 1072) = v66;
  *(a9 + 1080) = v63;
  *(a9 + 1088) = v65;
  *(a9 + 1096) = v134;
  *(a9 + 1104) = v133;
  *(a9 + 1112) = v117;
  return result;
}

uint64_t Configuration.init(from:)(uint64_t a1)
{
  v2 = __chkstk_darwin(a1);
  v4 = v3;
  v5 = sub_2B0C(&qword_229C60, &qword_1BCF10);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v63 - v7;
  v9 = v2[3];
  v248 = v2;
  sub_2698(v2, v9);
  sub_71F54();
  sub_1B5864();
  if (!v1)
  {
    v127 = v6;
    v126 = v4;
    LOBYTE(v165) = 0;
    sub_71FA8();
    sub_1B5374();
    v11 = v244;
    v10 = v245;
    v12 = v246;
    v13 = v247;
    LOBYTE(v165) = 1;
    sub_71FFC();
    sub_1B5374();
    v125 = v243;
    LOBYTE(v165) = 2;
    sub_72050();
    sub_1B5374();
    v124 = v13;
    v122 = v11;
    v123 = v10;
    v120 = v238;
    v121 = v239;
    v15 = v240;
    v14 = v241;
    v16 = v242;
    v236[367] = 3;
    sub_720A4();
    sub_1B5374();
    v118 = v15;
    v119 = v16;
    memcpy(v236, v237, 0x16BuLL);
    sub_2B0C(&qword_2292E8, &unk_1BC3A0);
    LOBYTE(v165) = 4;
    sub_61BC8(&qword_2298B8, &protocol witness table for UInt64, &protocol conformance descriptor for <A> [A]);
    sub_1B5374();
    v18 = v235;
    LOBYTE(v165) = 5;
    sub_1B5374();
    v117 = v18;
    v19 = v234;
    LOBYTE(v165) = 6;
    sub_1B5374();
    v20 = v233;
    LOBYTE(v165) = 7;
    sub_720F8();
    sub_1B5374();
    LODWORD(v116) = v232;
    LOBYTE(v165) = 8;
    sub_7214C();
    sub_1B5374();
    v111 = v228;
    v112 = v20;
    v110 = v229;
    v21 = v230;
    v113 = v231;
    v114 = v19;
    v221 = 11;
    sub_721A0();
    v115 = v5;
    sub_1B5374();
    v219 = v226;
    *v220 = v227[0];
    *&v220[9] = *(v227 + 9);
    v215 = v222;
    v216 = v223;
    v218 = v225;
    v217 = v224;
    LOBYTE(v165) = 9;
    sub_721F4();
    sub_1B5374();
    v22 = v213;
    v109 = v214;
    LOBYTE(v165) = 10;
    sub_1B5374();
    v23 = v211;
    v24 = v212;
    LOBYTE(v165) = 12;
    sub_72248();
    sub_1B5374();
    v107 = v208;
    v25 = v209;
    v108 = v210;
    v164 = 13;
    sub_7229C();
    sub_1B5374();
    v85 = v165;
    v103 = v166;
    v104 = v167;
    v102 = v169;
    v105 = v170;
    v106 = v168;
    v160 = v179;
    v161 = v180;
    v162 = v181;
    v163 = v182;
    v156 = v175;
    v157 = v176;
    v158 = v177;
    v159 = v178;
    v152 = v171;
    v153 = v172;
    v154 = v173;
    v155 = v174;
    if (v124 == 2)
    {
      v124 = 0;
      v123 = 1;
      v12 = 0x3FE6666666666666;
      v122 = 1000;
      v26 = 1;
    }

    else
    {
      v26 = v123 >> 8;
    }

    v75 = v26;
    if (!v119)
    {
      v119 = 0x80000000001D59C0;
      v121 = xmmword_1BCD70;
      v120 = xmmword_1BCD80;
      v14 = 0xD000000000000056;
      v118 = 258;
    }

    v91 = v184;
    v92 = v183;
    v89 = v186;
    v90 = v185;
    v87 = v188;
    v88 = v187;
    v86 = v189;
    v83 = v191;
    v84 = v190;
    v81 = v193;
    v82 = v192;
    v79 = v195;
    v80 = v194;
    v77 = v197;
    v78 = v196;
    v76 = v198;
    v100 = v200;
    v101 = v199;
    v98 = v202;
    v99 = v201;
    v96 = v204;
    v97 = v203;
    v94 = v206;
    v95 = v205;
    v93 = v207;
    memcpy(v151, v236, 0x16BuLL);
    if (sub_71CAC(v151) == 1)
    {
      sub_71EF4(v140);
      memcpy(v149, v140, 0x16BuLL);
      Configuration.ScorersConfiguration.init(bookHistoryScorerConfiguration:)(v149, v150);
    }

    else
    {
      memcpy(v150, v236, 0x16BuLL);
    }

    v27 = &off_2126A0;
    if (v117)
    {
      v27 = v117;
    }

    v117 = v27;
    if (!v114)
    {
    }

    v28 = &off_2129C0;
    if (v112)
    {
      v28 = v112;
    }

    v112 = v28;
    v29 = v116;
    if (v116 == 4)
    {
      v29 = 1;
    }

    v74 = v29;
    if (!v113)
    {
      v113 = sub_130448(&off_212B38);
      v21 = 0x3FE999999999999ALL;
      v111 = 2;
      v110 = 2;
    }

    v116 = v216;
    if (v216)
    {
      v30 = *(&v215 + 1);
      v67 = *(&v216 + 1);
      v68 = v215;
      v71 = v218;
      v72 = *(&v217 + 1);
      v69 = v219;
      v70 = *(&v218 + 1);
      v73 = *v220;
      v66 = *&v220[16];
      v31 = v220[24];
      HIDWORD(v64) = v217;
    }

    else
    {
      v72 = sub_130530(&off_212A28);
      v71 = sub_130530(&off_212A58);
      v73 = xmmword_1BCD60;
      v32 = sub_13061C(&off_212AA8);
      HIDWORD(v64) = 0;
      *(&v69 + 1) = &off_212B10;
      v70 = v32;
      *&v69 = &off_212AE8;
      v116 = _swiftEmptyArrayStorage;
      v31 = 1;
      v30 = 2.0;
      v66 = 10;
      v68 = 5;
      v67 = &off_2129F8;
    }

    if (v22)
    {
      v65 = (v109 >> 8) & 1;
    }

    else
    {
      if (qword_228298 != -1)
      {
        swift_once();
      }

      v22 = qword_260BD0;
      v109 = word_260BD8;
      v65 = HIBYTE(word_260BD8);
    }

    v63 = v125 & 1;
    v64 = __PAIR64__(HIDWORD(v64), v124 & 1) & 0x1FFFFFFFFLL;
    v125 = v31 & 1;
    v124 = v109 & 1;
    if (v23)
    {
      v109 = (v24 >> 8) & 1;
    }

    else
    {
      if (qword_2282A0 != -1)
      {
        swift_once();
      }

      LOBYTE(v24) = word_260BE8;
      v109 = HIBYTE(word_260BE8);
      v23 = qword_260BE0;
    }

    v33 = v107;
    LODWORD(v107) = (v107 != 2) & v107;
    *&v140[14] = v163;
    v34 = 500;
    if (v33 != 2)
    {
      v34 = v108;
    }

    v108 = v34;
    *&v140[0] = v85;
    *(&v140[0] + 1) = v103;
    v35 = v24 & 1;
    if (v33 == 2)
    {
      v25 = 86400.0;
    }

    *&v140[1] = v104;
    *(&v140[1] + 1) = v106;
    *&v140[2] = v102;
    *(&v140[2] + 1) = v105;
    v140[11] = v160;
    v140[12] = v161;
    v140[13] = v162;
    v140[7] = v156;
    v140[8] = v157;
    v140[9] = v158;
    v140[10] = v159;
    v140[3] = v152;
    v140[4] = v153;
    v140[5] = v154;
    v140[6] = v155;
    *(&v140[14] + 1) = v92;
    *&v140[15] = v91;
    *(&v140[15] + 1) = v90;
    *&v140[16] = v89;
    *(&v140[16] + 1) = v88;
    *&v140[17] = v87;
    *(&v140[17] + 1) = v86;
    *&v140[18] = v84;
    *(&v140[18] + 1) = v83;
    *&v140[19] = v82;
    *(&v140[19] + 1) = v81;
    *&v140[20] = v80;
    *(&v140[20] + 1) = v79;
    *&v140[21] = v78;
    *(&v140[21] + 1) = v77;
    *&v140[22] = v76;
    *(&v140[22] + 1) = v101;
    v141 = v100;
    v142 = v99;
    v143 = v98;
    v144 = v97;
    v145 = v96;
    v146 = v95;
    v147 = v94;
    v148 = v93;
    if (sub_24298(v140) == 1)
    {
      v36 = sub_71F30(v149);
      v106 = 0x80000000001D5A20;
      (*(v127 + 8))(v8, v115, v36);
      v100 = 0;
      v101 = 0;
      v98 = 0;
      v99 = 0;
      v96 = 0;
      v97 = 0;
      v94 = 0;
      v95 = 0;
      v92 = 0;
      v93 = 0;
      v105 = 0;
      v90 = 0;
      v91 = 0;
      v88 = 0;
      v89 = 0;
      v86 = 0;
      v87 = 0;
      v83 = 0;
      v84 = 0;
      v81 = 0;
      v82 = 0;
      v79 = 0;
      v80 = 0;
      v77 = 0;
      v78 = 0;
      v76 = 0;
      v136 = v149[8];
      v137 = v149[9];
      v138 = v149[10];
      v139 = *&v149[11];
      v132 = v149[4];
      v133 = v149[5];
      v134 = v149[6];
      v135 = v149[7];
      v128 = v149[0];
      v129 = v149[1];
      v104 = 0xD000000000000023;
      v130 = v149[2];
      v131 = v149[3];
      v103 = 0xEB00000000444549;
      v85 = 0x4649434550534E55;
      v102 = _swiftEmptyArrayStorage;
    }

    else
    {
      (*(v127 + 8))(v8, v115);
      v136 = v160;
      v137 = v161;
      v138 = v162;
      v139 = v163;
      v132 = v156;
      v133 = v157;
      v134 = v158;
      v135 = v159;
      v128 = v152;
      v129 = v153;
      v130 = v154;
      v131 = v155;
    }

    v37 = v126;
    v38 = v123;
    *v126 = v122;
    *(v37 + 8) = v38;
    *(v37 + 9) = v75;
    v37[2] = v12;
    v39 = v63;
    *(v37 + 24) = v64;
    *(v37 + 25) = v39;
    v40 = v121;
    *(v37 + 2) = v120;
    *(v37 + 3) = v40;
    v41 = v119;
    v37[8] = v118;
    v37[9] = v14;
    v37[10] = v41;
    memcpy(v37 + 11, v150, 0x16BuLL);
    v42 = v114;
    v37[57] = v117;
    v37[58] = v42;
    v37[59] = v112;
    *(v37 + 480) = v74;
    v43 = v110;
    v37[61] = v111;
    v37[62] = v43;
    v37[64] = v113;
    v37[65] = v68;
    v37[67] = v116;
    v37[68] = v67;
    *(v37 + 552) = BYTE4(v64);
    v44 = v71;
    v37[70] = v72;
    v37[71] = v44;
    v37[72] = v70;
    v45 = *(&v69 + 1);
    v37[73] = v69;
    v37[74] = v45;
    v37[77] = v66;
    *(v37 + 624) = v125;
    v37[79] = v22;
    *(v37 + 640) = v124;
    *(v37 + 641) = v65;
    v37[81] = v23;
    *(v37 + 656) = v35;
    *(v37 + 657) = v109;
    *(v37 + 664) = v107;
    v37[85] = v108;
    v37[86] = v85;
    *(v37 + 75) = v73;
    v37[63] = v21;
    *(v37 + 66) = v30;
    *(v37 + 84) = v25;
    v46 = v104;
    v37[87] = v103;
    v37[88] = v46;
    v37[89] = v106;
    v37[90] = v102;
    v37[91] = v105;
    v47 = v137;
    *(v37 + 54) = v136;
    *(v37 + 55) = v47;
    *(v37 + 56) = v138;
    v37[114] = v139;
    v48 = v133;
    *(v37 + 50) = v132;
    *(v37 + 51) = v48;
    v49 = v135;
    *(v37 + 52) = v134;
    *(v37 + 53) = v49;
    v50 = v129;
    *(v37 + 46) = v128;
    *(v37 + 47) = v50;
    v51 = v131;
    *(v37 + 48) = v130;
    *(v37 + 49) = v51;
    v52 = v91;
    v37[115] = v92;
    v37[116] = v52;
    v53 = v89;
    v37[117] = v90;
    v37[118] = v53;
    v54 = v87;
    v37[119] = v88;
    v37[120] = v54;
    v37[121] = v86;
    v55 = v83;
    v37[122] = v84;
    v37[123] = v55;
    v56 = v81;
    v37[124] = v82;
    v37[125] = v56;
    v57 = v79;
    v37[126] = v80;
    v37[127] = v57;
    v58 = v77;
    v37[128] = v78;
    v37[129] = v58;
    v37[130] = v76;
    v59 = v100;
    v37[131] = v101;
    v37[132] = v59;
    v60 = v98;
    v37[133] = v99;
    v37[134] = v60;
    v61 = v96;
    v37[135] = v97;
    v37[136] = v61;
    v62 = v94;
    v37[137] = v95;
    v37[138] = v62;
    v37[139] = v93;
  }

  return sub_2BF8(v248);
}

uint64_t Configuration.encode(to:)(void *a1)
{
  v3 = sub_2B0C(&qword_229CD0, &qword_1BCF28);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - v5;
  v41 = *v1;
  v7 = *(v1 + 4);
  v8 = v1[2];
  v39 = *(v1 + 24);
  v40 = v7;
  v38 = *(v1 + 25);
  v9 = *(v1 + 3);
  v63 = *(v1 + 2);
  v64 = v9;
  v65 = *(v1 + 4);
  v66 = v1[10];
  memcpy(v67, v1 + 11, 0x16BuLL);
  v10 = v1[57];
  v36 = v1[58];
  v37 = v10;
  v35 = v1[59];
  v34 = *(v1 + 480);
  v11 = v1[61];
  v32 = v1[62];
  v33 = v11;
  v12 = *(v1 + 69);
  v71 = *(v1 + 71);
  v13 = *(v1 + 75);
  v72 = *(v1 + 73);
  v73[0] = v13;
  *(v73 + 9) = *(v1 + 609);
  v14 = *(v1 + 67);
  v68 = *(v1 + 65);
  v69 = v14;
  v15 = v1[63];
  v16 = v1[64];
  v70 = v12;
  v30 = v1[79];
  v31 = v16;
  LODWORD(v16) = *(v1 + 640);
  v28 = *(v1 + 641);
  v29 = v16;
  v27 = v1[81];
  LODWORD(v16) = *(v1 + 656);
  v25 = *(v1 + 657);
  v26 = v16;
  v24 = *(v1 + 664);
  v17 = v1[84];
  v18 = v1[85];
  memcpy(v74, v1 + 86, 0x1B0uLL);
  sub_2698(a1, a1[3]);
  sub_71F54();
  v19 = v6;
  sub_1B5884();
  v44[0] = v41;
  LOWORD(v44[1]) = v40;
  v44[2] = v8;
  LOBYTE(v44[3]) = v39;
  v43[0] = 0;
  sub_722F0();
  v20 = v42;
  sub_1B5544();
  if (v20)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v21 = v37;
  v41 = v18;
  v42 = v4;
  LOBYTE(v44[0]) = v38;
  v43[0] = 1;
  sub_72344();
  sub_1B5544();
  v59 = v63;
  v60 = v64;
  v61 = v65;
  v62 = v66;
  v58 = 2;
  sub_71DF0(&v63, v44);
  sub_72398();
  sub_1B5544();
  v56[0] = v59;
  v56[1] = v60;
  v56[2] = v61;
  v57 = v62;
  sub_723EC(v56);
  memcpy(v55, v67, sizeof(v55));
  v54[367] = 3;
  sub_71E28(v67, v44);
  sub_7241C();
  sub_1B5544();
  memcpy(v54, v55, 0x16BuLL);
  sub_72470(v54);
  v44[0] = v21;
  v43[0] = 4;
  sub_2B0C(&qword_2292E8, &unk_1BC3A0);
  sub_61BC8(&qword_2298A8, &protocol witness table for UInt64, &protocol conformance descriptor for <A> [A]);
  sub_1B5544();
  v44[0] = v36;
  v43[0] = 5;
  sub_1B5544();
  v44[0] = v35;
  v43[0] = 6;
  sub_1B5544();
  LOBYTE(v44[0]) = v34;
  v43[0] = 7;
  sub_724A0();
  sub_1B5544();
  v44[0] = v33;
  v44[1] = v32;
  v44[2] = v15;
  v44[3] = v31;
  v43[0] = 8;
  sub_724F4();

  sub_1B5544();

  v44[0] = v30;
  LOBYTE(v44[1]) = v29;
  BYTE1(v44[1]) = v28;
  v43[0] = 9;
  sub_72548();

  sub_1B5544();

  v44[0] = v27;
  LOBYTE(v44[1]) = v26;
  BYTE1(v44[1]) = v25;
  v43[0] = 10;

  sub_1B5544();

  v52 = v72;
  v53[0] = v73[0];
  *(v53 + 9) = *(v73 + 9);
  v48 = v68;
  v49 = v69;
  v50 = v70;
  v51 = v71;
  v47 = 11;
  sub_71E60(&v68, v44);
  sub_7259C();
  sub_1B5544();
  v45[3] = v51;
  v45[4] = v52;
  *v46 = v53[0];
  *&v46[9] = *(v53 + 9);
  v45[0] = v48;
  v45[1] = v49;
  v45[2] = v50;
  sub_725F0(v45);
  LOBYTE(v44[0]) = v24;
  v44[1] = v17;
  v44[2] = v41;
  v43[0] = 12;
  sub_72620();
  sub_1B5544();
  memcpy(v44, v74, sizeof(v44));
  v43[439] = 13;
  sub_71E98(v74, v43);
  sub_72674();
  sub_1B5544();
  memcpy(v43, v44, 0x1B0uLL);
  sub_726C8(v43);
  return (*(v42 + 8))(v19, v3);
}

unint64_t sub_711C0()
{
  result = qword_229AA0;
  if (!qword_229AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229AA0);
  }

  return result;
}

uint64_t sub_71214(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1CC1C(&qword_229AA8, &qword_1BCE60);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_71280()
{
  result = qword_229AD0;
  if (!qword_229AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229AD0);
  }

  return result;
}

unint64_t sub_712D4()
{
  result = qword_229AD8;
  if (!qword_229AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229AD8);
  }

  return result;
}

unint64_t sub_71328()
{
  result = qword_229AF0;
  if (!qword_229AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229AF0);
  }

  return result;
}

uint64_t sub_7137C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1CC1C(&qword_229AF8, &qword_1BCE80);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_713EC()
{
  result = qword_229B10;
  if (!qword_229B10)
  {
    sub_1CC1C(&qword_229B08, &qword_1BCE88);
    sub_71328();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229B10);
  }

  return result;
}

unint64_t sub_71470()
{
  result = qword_229B20;
  if (!qword_229B20)
  {
    sub_1CC1C(&qword_229B18, &qword_1BCE90);
    sub_714F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229B20);
  }

  return result;
}

unint64_t sub_714F4()
{
  result = qword_229B28;
  if (!qword_229B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229B28);
  }

  return result;
}

unint64_t sub_71548()
{
  result = qword_229B38;
  if (!qword_229B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229B38);
  }

  return result;
}

uint64_t sub_7159C(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1CC1C(&qword_229AE0, &qword_1BCE78);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_71620()
{
  result = qword_229B48;
  if (!qword_229B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229B48);
  }

  return result;
}

unint64_t sub_71674()
{
  result = qword_229B58;
  if (!qword_229B58)
  {
    sub_1CC1C(&qword_229B08, &qword_1BCE88);
    sub_71620();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229B58);
  }

  return result;
}

unint64_t sub_716F8()
{
  result = qword_229B60;
  if (!qword_229B60)
  {
    sub_1CC1C(&qword_229B18, &qword_1BCE90);
    sub_7177C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229B60);
  }

  return result;
}

unint64_t sub_7177C()
{
  result = qword_229B68;
  if (!qword_229B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229B68);
  }

  return result;
}

unint64_t sub_717D0()
{
  result = qword_229B78;
  if (!qword_229B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229B78);
  }

  return result;
}

unint64_t sub_71824()
{
  result = qword_229B90;
  if (!qword_229B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229B90);
  }

  return result;
}

unint64_t sub_71878()
{
  result = qword_229BA8;
  if (!qword_229BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229BA8);
  }

  return result;
}

unint64_t sub_718CC()
{
  result = qword_229BC0;
  if (!qword_229BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229BC0);
  }

  return result;
}

unint64_t sub_71920()
{
  result = qword_229BD8;
  if (!qword_229BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229BD8);
  }

  return result;
}

unint64_t sub_71974()
{
  result = qword_229BE0;
  if (!qword_229BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229BE0);
  }

  return result;
}

unint64_t sub_719C8()
{
  result = qword_229BE8;
  if (!qword_229BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229BE8);
  }

  return result;
}

unint64_t sub_71A1C()
{
  result = qword_229BF8;
  if (!qword_229BF8)
  {
    sub_1CC1C(&qword_229BF0, &qword_1BCEE8);
    sub_71AA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229BF8);
  }

  return result;
}

unint64_t sub_71AA0()
{
  result = qword_229C00;
  if (!qword_229C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229C00);
  }

  return result;
}

unint64_t sub_71AF4()
{
  result = qword_229C10;
  if (!qword_229C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229C10);
  }

  return result;
}

unint64_t sub_71B48()
{
  result = qword_229C18;
  if (!qword_229C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229C18);
  }

  return result;
}

unint64_t sub_71B9C()
{
  result = qword_229C28;
  if (!qword_229C28)
  {
    sub_1CC1C(&qword_229C20, &qword_1BCEF8);
    sub_71C20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229C28);
  }

  return result;
}

unint64_t sub_71C20()
{
  result = qword_229C30;
  if (!qword_229C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229C30);
  }

  return result;
}

uint64_t sub_71CAC(uint64_t a1)
{
  v1 = *(a1 + 328);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_71CC4()
{
  result = qword_229C40;
  if (!qword_229C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229C40);
  }

  return result;
}

unint64_t sub_71D18()
{
  result = qword_229C48;
  if (!qword_229C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229C48);
  }

  return result;
}

unint64_t sub_71D6C()
{
  result = qword_229C58;
  if (!qword_229C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229C58);
  }

  return result;
}

double sub_71EF4(_OWORD *a1)
{
  result = 0.0;
  a1[20] = 0u;
  a1[21] = 0u;
  a1[18] = 0u;
  a1[19] = 0u;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  *(a1 + 347) = 0u;
  return result;
}

double sub_71F30(uint64_t a1)
{
  *(a1 + 176) = 0;
  result = 0.0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_71F54()
{
  result = qword_229C68;
  if (!qword_229C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229C68);
  }

  return result;
}

unint64_t sub_71FA8()
{
  result = qword_229C70;
  if (!qword_229C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229C70);
  }

  return result;
}

unint64_t sub_71FFC()
{
  result = qword_229C78;
  if (!qword_229C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229C78);
  }

  return result;
}

unint64_t sub_72050()
{
  result = qword_229C80;
  if (!qword_229C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229C80);
  }

  return result;
}

unint64_t sub_720A4()
{
  result = qword_229C88;
  if (!qword_229C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229C88);
  }

  return result;
}

unint64_t sub_720F8()
{
  result = qword_229C98;
  if (!qword_229C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229C98);
  }

  return result;
}

unint64_t sub_7214C()
{
  result = qword_229CA0;
  if (!qword_229CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229CA0);
  }

  return result;
}

unint64_t sub_721A0()
{
  result = qword_229CA8;
  if (!qword_229CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229CA8);
  }

  return result;
}

unint64_t sub_721F4()
{
  result = qword_229CB0;
  if (!qword_229CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229CB0);
  }

  return result;
}

unint64_t sub_72248()
{
  result = qword_229CC0;
  if (!qword_229CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229CC0);
  }

  return result;
}

unint64_t sub_7229C()
{
  result = qword_229CC8;
  if (!qword_229CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229CC8);
  }

  return result;
}

unint64_t sub_722F0()
{
  result = qword_229CD8;
  if (!qword_229CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229CD8);
  }

  return result;
}

unint64_t sub_72344()
{
  result = qword_229CE0;
  if (!qword_229CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229CE0);
  }

  return result;
}

unint64_t sub_72398()
{
  result = qword_229CE8;
  if (!qword_229CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229CE8);
  }

  return result;
}

unint64_t sub_7241C()
{
  result = qword_229CF0;
  if (!qword_229CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229CF0);
  }

  return result;
}

unint64_t sub_724A0()
{
  result = qword_229CF8;
  if (!qword_229CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229CF8);
  }

  return result;
}

unint64_t sub_724F4()
{
  result = qword_229D00;
  if (!qword_229D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229D00);
  }

  return result;
}

unint64_t sub_72548()
{
  result = qword_229D08;
  if (!qword_229D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229D08);
  }

  return result;
}

unint64_t sub_7259C()
{
  result = qword_229D10;
  if (!qword_229D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229D10);
  }

  return result;
}

unint64_t sub_72620()
{
  result = qword_229D18;
  if (!qword_229D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229D18);
  }

  return result;
}

unint64_t sub_72674()
{
  result = qword_229D20;
  if (!qword_229D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229D20);
  }

  return result;
}

unint64_t sub_72720()
{
  result = qword_229D28;
  if (!qword_229D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229D28);
  }

  return result;
}

unint64_t sub_72778()
{
  result = qword_229D30;
  if (!qword_229D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229D30);
  }

  return result;
}

unint64_t sub_727D0()
{
  result = qword_229D38;
  if (!qword_229D38)
  {
    sub_1CC1C(&qword_229D40, &qword_1BD160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229D38);
  }

  return result;
}

unint64_t sub_72838()
{
  result = qword_229D48;
  if (!qword_229D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229D48);
  }

  return result;
}

unint64_t sub_72890()
{
  result = qword_229D50;
  if (!qword_229D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229D50);
  }

  return result;
}

unint64_t sub_728E8()
{
  result = qword_229D58;
  if (!qword_229D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229D58);
  }

  return result;
}

unint64_t sub_72940()
{
  result = qword_229D60;
  if (!qword_229D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229D60);
  }

  return result;
}

unint64_t sub_72998()
{
  result = qword_229D68;
  if (!qword_229D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229D68);
  }

  return result;
}

unint64_t sub_729F0()
{
  result = qword_229D70;
  if (!qword_229D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229D70);
  }

  return result;
}

uint64_t sub_72A44(uint64_t a1)
{
  v1 = *(a1 + 168);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_72A5C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_72A74(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_72A94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 1120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_72ADC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 1112) = 0;
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
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
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
      *(result + 1120) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 1120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_72C54(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_72C68(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 10))
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

uint64_t sub_72CB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
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

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_72D00(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_72D54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_72DEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_72E34(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for Configuration.CollectionsConfiguration.MoreFromYourAuthorsConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 16))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 1);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Configuration.CollectionsConfiguration.MoreFromYourAuthorsConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_72FA0(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_73034(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_73114(uint64_t a1, __int128 *a2)
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

uint64_t sub_73140(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
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

uint64_t sub_73188(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for Configuration.PersonalizationMetadataServiceConfiguration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[24])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Configuration.PersonalizationMetadataServiceConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Series.Metadata(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_73368(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 363))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 328);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_733B4(uint64_t result, int a2, int a3)
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
    *(result + 362) = 0;
    *(result + 360) = 0;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 363) = 1;
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
      *(result + 328) = (a2 - 1);
      return result;
    }

    *(result + 363) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_73468(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_73488(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_734C4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_734E4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 48) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for Configuration.ScorersConfiguration.BookHistoryScorerConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDC)
  {
    goto LABEL_17;
  }

  if (a2 + 36 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 36) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 36;
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

      return (*a1 | (v4 << 8)) - 36;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 36;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x25;
  v8 = v6 - 37;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Configuration.ScorersConfiguration.BookHistoryScorerConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 36 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 36) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDC)
  {
    v4 = 0;
  }

  if (a2 > 0xDB)
  {
    v5 = ((a2 - 220) >> 8) + 1;
    *result = a2 + 36;
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
    *result = a2 + 36;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CollectionRecommendationRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CollectionRecommendationRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_73938()
{
  result = qword_229D78;
  if (!qword_229D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229D78);
  }

  return result;
}

unint64_t sub_73990()
{
  result = qword_229D80;
  if (!qword_229D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229D80);
  }

  return result;
}

unint64_t sub_739E8()
{
  result = qword_229D88;
  if (!qword_229D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229D88);
  }

  return result;
}

unint64_t sub_73A40()
{
  result = qword_229D90;
  if (!qword_229D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229D90);
  }

  return result;
}

unint64_t sub_73A98()
{
  result = qword_229D98;
  if (!qword_229D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229D98);
  }

  return result;
}

unint64_t sub_73AF0()
{
  result = qword_229DA0;
  if (!qword_229DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229DA0);
  }

  return result;
}

unint64_t sub_73B48()
{
  result = qword_229DA8;
  if (!qword_229DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229DA8);
  }

  return result;
}

unint64_t sub_73BA0()
{
  result = qword_229DB0;
  if (!qword_229DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229DB0);
  }

  return result;
}

unint64_t sub_73BF8()
{
  result = qword_229DB8;
  if (!qword_229DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229DB8);
  }

  return result;
}

unint64_t sub_73C50()
{
  result = qword_229DC0;
  if (!qword_229DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229DC0);
  }

  return result;
}

unint64_t sub_73CA8()
{
  result = qword_229DC8;
  if (!qword_229DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229DC8);
  }

  return result;
}

unint64_t sub_73D00()
{
  result = qword_229DD0;
  if (!qword_229DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229DD0);
  }

  return result;
}

unint64_t sub_73D58()
{
  result = qword_229DD8;
  if (!qword_229DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229DD8);
  }

  return result;
}

unint64_t sub_73DB0()
{
  result = qword_229DE0;
  if (!qword_229DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229DE0);
  }

  return result;
}

unint64_t sub_73E08()
{
  result = qword_229DE8;
  if (!qword_229DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229DE8);
  }

  return result;
}

unint64_t sub_73E60()
{
  result = qword_229DF0;
  if (!qword_229DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229DF0);
  }

  return result;
}

unint64_t sub_73EB8()
{
  result = qword_229DF8;
  if (!qword_229DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229DF8);
  }

  return result;
}

unint64_t sub_73F10()
{
  result = qword_229E00;
  if (!qword_229E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229E00);
  }

  return result;
}

unint64_t sub_73F68()
{
  result = qword_229E08;
  if (!qword_229E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229E08);
  }

  return result;
}

unint64_t sub_73FC0()
{
  result = qword_229E10;
  if (!qword_229E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229E10);
  }

  return result;
}

unint64_t sub_74018()
{
  result = qword_229E18;
  if (!qword_229E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229E18);
  }

  return result;
}

unint64_t sub_74070()
{
  result = qword_229E20;
  if (!qword_229E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229E20);
  }

  return result;
}

unint64_t sub_740C8()
{
  result = qword_229E28;
  if (!qword_229E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229E28);
  }

  return result;
}

unint64_t sub_74120()
{
  result = qword_229E30;
  if (!qword_229E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229E30);
  }

  return result;
}

unint64_t sub_74178()
{
  result = qword_229E38;
  if (!qword_229E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229E38);
  }

  return result;
}

unint64_t sub_741D0()
{
  result = qword_229E40;
  if (!qword_229E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229E40);
  }

  return result;
}

unint64_t sub_74228()
{
  result = qword_229E48;
  if (!qword_229E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229E48);
  }

  return result;
}

unint64_t sub_74280()
{
  result = qword_229E50;
  if (!qword_229E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229E50);
  }

  return result;
}

unint64_t sub_742D8()
{
  result = qword_229E58;
  if (!qword_229E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229E58);
  }

  return result;
}

unint64_t sub_74330()
{
  result = qword_229E60;
  if (!qword_229E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229E60);
  }

  return result;
}

unint64_t sub_74388()
{
  result = qword_229E68;
  if (!qword_229E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229E68);
  }

  return result;
}

unint64_t sub_743E0()
{
  result = qword_229E70;
  if (!qword_229E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229E70);
  }

  return result;
}

unint64_t sub_74438()
{
  result = qword_229E78;
  if (!qword_229E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229E78);
  }

  return result;
}

unint64_t sub_74490()
{
  result = qword_229E80;
  if (!qword_229E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229E80);
  }

  return result;
}

unint64_t sub_744E8()
{
  result = qword_229E88;
  if (!qword_229E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229E88);
  }

  return result;
}

unint64_t sub_74540()
{
  result = qword_229E90;
  if (!qword_229E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229E90);
  }

  return result;
}

unint64_t sub_74598()
{
  result = qword_229E98;
  if (!qword_229E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229E98);
  }

  return result;
}

unint64_t sub_745F0()
{
  result = qword_229EA0;
  if (!qword_229EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229EA0);
  }

  return result;
}

unint64_t sub_74648()
{
  result = qword_229EA8;
  if (!qword_229EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229EA8);
  }

  return result;
}

unint64_t sub_746A0()
{
  result = qword_229EB0;
  if (!qword_229EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229EB0);
  }

  return result;
}

unint64_t sub_746F8()
{
  result = qword_229EB8;
  if (!qword_229EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229EB8);
  }

  return result;
}

unint64_t sub_74750()
{
  result = qword_229EC0;
  if (!qword_229EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229EC0);
  }

  return result;
}

unint64_t sub_747A8()
{
  result = qword_229EC8;
  if (!qword_229EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229EC8);
  }

  return result;
}

unint64_t sub_74800()
{
  result = qword_229ED0;
  if (!qword_229ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229ED0);
  }

  return result;
}

unint64_t sub_74858()
{
  result = qword_229ED8;
  if (!qword_229ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229ED8);
  }

  return result;
}

unint64_t sub_748B0()
{
  result = qword_229EE0;
  if (!qword_229EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229EE0);
  }

  return result;
}

unint64_t sub_74908()
{
  result = qword_229EE8;
  if (!qword_229EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229EE8);
  }

  return result;
}

unint64_t sub_74960()
{
  result = qword_229EF0;
  if (!qword_229EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229EF0);
  }

  return result;
}

unint64_t sub_749B8()
{
  result = qword_229EF8;
  if (!qword_229EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229EF8);
  }

  return result;
}

unint64_t sub_74A10()
{
  result = qword_229F00;
  if (!qword_229F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229F00);
  }

  return result;
}

unint64_t sub_74A68()
{
  result = qword_229F08;
  if (!qword_229F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229F08);
  }

  return result;
}

unint64_t sub_74AC0()
{
  result = qword_229F10;
  if (!qword_229F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229F10);
  }

  return result;
}

unint64_t sub_74B18()
{
  result = qword_229F18;
  if (!qword_229F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229F18);
  }

  return result;
}

unint64_t sub_74B70()
{
  result = qword_229F20;
  if (!qword_229F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229F20);
  }

  return result;
}

unint64_t sub_74BC8()
{
  result = qword_229F28;
  if (!qword_229F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229F28);
  }

  return result;
}

unint64_t sub_74C20()
{
  result = qword_229F30;
  if (!qword_229F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229F30);
  }

  return result;
}

unint64_t sub_74C78()
{
  result = qword_229F38;
  if (!qword_229F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229F38);
  }

  return result;
}

unint64_t sub_74CD0()
{
  result = qword_229F40;
  if (!qword_229F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229F40);
  }

  return result;
}

unint64_t sub_74D28()
{
  result = qword_229F48;
  if (!qword_229F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229F48);
  }

  return result;
}

unint64_t sub_74D80()
{
  result = qword_229F50;
  if (!qword_229F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229F50);
  }

  return result;
}

unint64_t sub_74DD8()
{
  result = qword_229F58;
  if (!qword_229F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229F58);
  }

  return result;
}

unint64_t sub_74E30()
{
  result = qword_229F60;
  if (!qword_229F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229F60);
  }

  return result;
}

unint64_t sub_74E88()
{
  result = qword_229F68;
  if (!qword_229F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229F68);
  }

  return result;
}

uint64_t sub_74EDC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73444965726E6567 && a2 == 0xE800000000000000;
  if (v4 || (sub_1B5604() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000000001D5A50 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000000001D5A70 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B5604();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_75004(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_211210;
  v6._object = a2;
  v4 = sub_1B52E4(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_75050(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
  if (v4 || (sub_1B5604() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265726F63736572 && a2 == 0xE800000000000000 || (sub_1B5604() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000000001D5A90 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B5604();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_7516C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_211390;
  v6._object = a2;
  v4 = sub_1B52E4(v3, v6);

  if (v4 >= 8)
  {
    return 8;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_751B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000025 && 0x80000000001D5AD0 == a2;
  if (v4 || (sub_1B5604() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000021 && 0x80000000001D5B00 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000000001D5B30 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000000001D5B50 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B5604();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_75320(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_2115B0;
  v6._object = a2;
  v4 = sub_1B52E4(v3, v6);

  if (v4 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_7536C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64656C62616E65 && a2 == 0xE700000000000000;
  if (v4 || (sub_1B5604() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000020 && 0x80000000001D5B70 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000000001D5BA0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B5604();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_75490(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000000001D5BC0 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000000001D5BE0 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x616552796C6C7566 && a2 == 0xEE0074736F6F4264 || (sub_1B5604() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6566694C666C6168 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v5 = sub_1B5604();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_7560C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64656E696C636564 && a2 == 0xEE00746867696557;
  if (v4 || (sub_1B5604() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000021 && 0x80000000001D5C00 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000000001D5C30 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000000001D5C50 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000023 && 0x80000000001D5C70 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x80000000001D5CA0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1B5604();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_75810(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B5754();

  if (v2 >= 0x25)
  {
    return 37;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_75864(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_211ED8;
  v6._object = a2;
  v4 = sub_1B52E4(v3, v6);

  if (v4 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_758B0()
{
  result = qword_229F70;
  if (!qword_229F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229F70);
  }

  return result;
}

unint64_t sub_75904()
{
  result = qword_229F78;
  if (!qword_229F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229F78);
  }

  return result;
}

unint64_t sub_75958()
{
  result = qword_229F80;
  if (!qword_229F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229F80);
  }

  return result;
}

unint64_t sub_759AC()
{
  result = qword_229F88;
  if (!qword_229F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229F88);
  }

  return result;
}

unint64_t sub_75A00()
{
  result = qword_229F90;
  if (!qword_229F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229F90);
  }

  return result;
}

unint64_t sub_75A54()
{
  result = qword_229F98;
  if (!qword_229F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229F98);
  }

  return result;
}

unint64_t sub_75AA8()
{
  result = qword_229FA0;
  if (!qword_229FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229FA0);
  }

  return result;
}

void *sub_75B5C(unint64_t a1, unint64_t a2)
{
  v4 = a2 >> 62;
  v31 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    return _swiftEmptyArrayStorage;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = _swiftEmptyArrayStorage;
  if (v5)
  {
    v46 = _swiftEmptyArrayStorage;
    v32 = a2 >> 62;
    sub_3747C(0, v5 & ~(v5 >> 63), 0);
    v9 = v32;
    if (v32)
    {
      if (v32 == 2)
      {
        v10 = *(a1 + 16);
      }

      else
      {
        v10 = a1;
      }
    }

    else
    {
      v10 = 0;
    }

    v33 = v10;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v11 = 0;
    v8 = v46;
    v30 = &v34 + v10;
    do
    {
      if (v11 >= v5)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
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
      }

      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_41;
      }

      v13 = v33 + v11;
      if (v9 == 2)
      {
        if (v13 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v13 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v18 = sub_1B3D84();
        if (!v18)
        {
          goto LABEL_51;
        }

        v15 = v18;
        v19 = sub_1B3DA4();
        v17 = v13 - v19;
        if (__OFSUB__(v13, v19))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v9 != 1)
        {
          if (v13 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v34 = a1;
          v35 = BYTE2(a1);
          v36 = BYTE3(a1);
          v37 = v31;
          v38 = BYTE5(a1);
          v39 = BYTE6(a1);
          v40 = HIBYTE(a1);
          v41 = a2;
          v42 = BYTE2(a2);
          v43 = BYTE3(a2);
          v44 = BYTE4(a2);
          v45 = BYTE5(a2);
          v20 = v30[v11];
          goto LABEL_36;
        }

        if (v13 < a1 || v13 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v14 = sub_1B3D84();
        if (!v14)
        {
          goto LABEL_50;
        }

        v15 = v14;
        v16 = sub_1B3DA4();
        v17 = v13 - v16;
        if (__OFSUB__(v13, v16))
        {
          goto LABEL_46;
        }
      }

      v20 = *(v15 + v17);
      v9 = v32;
LABEL_36:
      sub_2B0C(&qword_22A048, &unk_1BFC60);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1BCA80;
      *(v21 + 56) = &type metadata for UInt8;
      *(v21 + 64) = &protocol witness table for UInt8;
      *(v21 + 32) = v20;
      v22 = sub_1B47F4();
      v46 = v8;
      v25 = v8[2];
      v24 = v8[3];
      if (v25 >= v24 >> 1)
      {
        v29 = v22;
        v27 = v23;
        sub_3747C((v24 > 1), v25 + 1, 1);
        v9 = v32;
        v23 = v27;
        v22 = v29;
        v8 = v46;
      }

      v8[2] = v25 + 1;
      v26 = &v8[2 * v25];
      v26[4] = v22;
      v26[5] = v23;
      ++v11;
    }

    while (v12 != v5);
  }

  return v8;
}

uint64_t sub_75ED8()
{
  sub_768DC();
  result = sub_1B4E94();
  qword_260BF0 = result;
  return result;
}

uint64_t sub_75F44(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = sub_1B4B34();
  *(v7 + 16) = 32;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  v42 = v7;
  sub_4161C(a1, a2);
  sub_764A4(a1, a2, a1, a2, &v42);
  v8 = sub_76774(v42 + 32, *(v42 + 2));
  v10 = v9;
  if (qword_2282A8 != -1)
  {
    swift_once();
  }

  v11 = qword_260BF0;
  v40 = sub_1B4D84();
  sub_2B0C(&qword_22A048, &unk_1BFC60);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1BCA80;
  v44 = sub_75B5C(v8, v10);
  sub_2B0C(&qword_228590, &qword_1B6590);
  sub_76824();
  v13 = sub_1B4764();
  v15 = v14;

  *(v12 + 56) = &type metadata for String;
  v16 = sub_76888();
  *(v12 + 64) = v16;
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  v17 = v11;
  sub_1B4614("Generated SHA256 from data, SHA256=%@", 37, 2, &dword_0, v11, v40, v12);

  v18 = v4[5];
  v19 = v4[6];
  sub_2698(v4 + 2, v18);
  v20 = (*(v19 + 8))(v8, v10, v18, v19);
  if (v3)
  {
    sub_41670(v8, v10);

    v22 = sub_1B4D94();
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1BCA80;
    v42 = 0;
    v43 = 0xE000000000000000;
    v44 = v3;
    sub_2B0C(&qword_229560, &unk_1BFC70);
    sub_1B51F4();
    v24 = v42;
    v25 = v43;
    *(v23 + 56) = &type metadata for String;
    *(v23 + 64) = v16;
    *(v23 + 32) = v24;
    *(v23 + 40) = v25;
    sub_1B4614("Failed to sign our data, error=%{public}@", 41, 2, &dword_0, v17, v22, v23);

    swift_willThrow();
  }

  else
  {
    v39 = v8;
    v41 = v10;
    v26 = v20;
    v27 = v21;
    v38 = sub_1B4D84();
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1BCA80;
    v44 = sub_75B5C(v26, v27);
    v29 = sub_1B4764();
    v31 = v30;

    *(v28 + 56) = &type metadata for String;
    *(v28 + 64) = v16;
    *(v28 + 32) = v29;
    *(v28 + 40) = v31;
    sub_1B4614("Generated signature from SHA256, signature=%@", 45, 2, &dword_0, v17, v38, v28);

    v32 = v27;
    v22 = sub_1B3F84(0);
    v34 = v33;
    v35 = sub_1B4D84();
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1BCA80;
    *(v36 + 56) = &type metadata for String;
    *(v36 + 64) = v16;
    *(v36 + 32) = v22;
    *(v36 + 40) = v34;

    sub_1B4614("Generated base64 from signature, base64=%@", 42, 2, &dword_0, v17, v35, v36);

    sub_41670(v26, v32);
    sub_41670(v39, v41);
  }

  return v22;
}

unsigned __int8 *sub_763A8(unsigned __int8 *result, uint64_t a2, uint64_t a3, unint64_t a4, char **a5)
{
  v6 = result;
  v7 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_13;
    }

    v10 = *(a3 + 16);
    v9 = *(a3 + 24);
    v8 = v9 - v10;
    if (!__OFSUB__(v9, v10))
    {
      goto LABEL_10;
    }

    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a3), a3))
    {
      goto LABEL_18;
    }

    v8 = HIDWORD(a3) - a3;
LABEL_10:
    if ((v8 & 0x8000000000000000) == 0)
    {
      if (!HIDWORD(v8))
      {
        goto LABEL_14;
      }

      __break(1u);
LABEL_13:
      LODWORD(v8) = 0;
      goto LABEL_14;
    }

    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    goto LABEL_8;
  }

  LODWORD(v8) = BYTE6(a4);
LABEL_14:
  v11 = *a5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a5 = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_335A8(0, *(v11 + 2), 0, v11);
  }

  *a5 = v11;
  return CC_SHA256(v6, v8, v11 + 32);
}

uint64_t sub_764A4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, char **a5)
{
  v5 = a4;
  v6 = a3;
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v25[0] = a1;
      LOWORD(v25[1]) = a2;
      BYTE2(v25[1]) = BYTE2(a2);
      BYTE3(v25[1]) = BYTE3(a2);
      BYTE4(v25[1]) = BYTE4(a2);
      BYTE5(v25[1]) = BYTE5(a2);
      v8 = v25 + BYTE6(a2);
      v9 = v25;
      goto LABEL_24;
    }

    v19 = a1;
    v20 = (a1 >> 32) - a1;
    if (a1 >> 32 >= a1)
    {
      v10 = a5;
      v13 = sub_1B3D84();
      if (!v13)
      {
        goto LABEL_16;
      }

      v21 = sub_1B3DA4();
      if (!__OFSUB__(v19, v21))
      {
        v13 += v19 - v21;
LABEL_16:
        v22 = sub_1B3D94();
        if (v22 >= v20)
        {
          v18 = v20;
        }

        else
        {
          v18 = v22;
        }

        goto LABEL_19;
      }

LABEL_28:
      __break(1u);
    }

    __break(1u);
    goto LABEL_26;
  }

  if (v7 != 2)
  {
    memset(v25, 0, 14);
    v9 = v25;
    v8 = v25;
    goto LABEL_24;
  }

  v10 = a5;
  v12 = *(a1 + 16);
  v11 = *(a1 + 24);
  v13 = sub_1B3D84();
  if (v13)
  {
    v14 = sub_1B3DA4();
    if (__OFSUB__(v12, v14))
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v13 += v12 - v14;
  }

  v15 = __OFSUB__(v11, v12);
  v16 = v11 - v12;
  if (v15)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v17 = sub_1B3D94();
  if (v17 >= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

LABEL_19:
  v23 = (v18 + v13);
  if (v13)
  {
    v8 = v23;
  }

  else
  {
    v8 = 0;
  }

  v9 = v13;
  a3 = v6;
  a4 = v5;
  a5 = v10;
LABEL_24:
  sub_763A8(v9, v8, a3, a4, a5);
  return sub_41670(v6, v5);
}

uint64_t sub_766BC(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

unint64_t sub_76774(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_766BC(a1, &a1[a2]);
  }

  sub_1B3DB4();
  swift_allocObject();
  sub_1B3D74();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_1B3F64();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

unint64_t sub_76824()
{
  result = qword_229000;
  if (!qword_229000)
  {
    sub_1CC1C(&qword_228590, &qword_1B6590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_229000);
  }

  return result;
}

unint64_t sub_76888()
{
  result = qword_22A050;
  if (!qword_22A050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A050);
  }

  return result;
}

unint64_t sub_768DC()
{
  result = qword_22A058;
  if (!qword_22A058)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_22A058);
  }

  return result;
}

uint64_t sub_76928@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2698(a1, a1[3]);
  v3 = type metadata accessor for DelegatingMediaTypesRecommendationService(0);
  result = sub_1B4254();
  if (result)
  {
    a2[3] = v3;
    a2[4] = &off_21F270;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_7699C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_228FE8, &qword_1CEBF0);
  result = sub_1B4264();
  if (v7)
  {
    v4 = type metadata accessor for SingleJointMediaTypeRecommendationService();
    v5 = swift_allocObject();
    result = sub_264B8(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &off_220E30;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_76A48()
{
  type metadata accessor for DelegatingMediaTypesRecommendationService(0);
  v0 = swift_allocObject();
  *(v0 + 16) = _swiftEmptyDictionarySingleton;
  sub_2B0C(&qword_22A118, &qword_1BFD00);
  sub_1B4834();
  sub_1B4634();
  return v0;
}

uint64_t sub_76B1C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  sub_2B0C(&qword_22A108, &qword_1BFCF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BFC80;
  *(inited + 32) = 0;
  *(inited + 40) = sub_9EABC(a1);
  *(inited + 48) = 1;
  *(inited + 56) = sub_9EABC(a2);
  v7 = sub_130644(inited);
  swift_setDeallocating();
  sub_2B0C(&qword_22A110, &qword_1BFCF8);
  swift_arrayDestroy();
  v8 = type metadata accessor for HardcodedMediaTypesRecommendationService();
  result = swift_allocObject();
  *(result + 16) = v7;
  a3[3] = v8;
  a3[4] = &off_21A998;
  *a3 = result;
  return result;
}

void *sub_76C14@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2698(a1, a1[3]);
  sub_2B0C(&qword_22A100, &qword_1D1440);
  result = sub_1B4264();
  if (v7)
  {
    v4 = type metadata accessor for InterestBasedMediaTypesRecommendationService();
    v5 = swift_allocObject();
    result = sub_264B8(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &off_21C740;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_76CC0(uint64_t a1, void *a2)
{
  sub_2B0C(&qword_22A0F8, &unk_1BFCE0);
  v4 = 0;
  while (1)
  {
    v7 = *(&off_212D18 + v4++ + 32);
    sub_2698(a2, a2[3]);
    sub_1B4244();

    if (!v23)
    {
      break;
    }

    sub_264B8(&v22, v24);
    swift_beginAccess();
    sub_404C4(v24, &v22);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(a1 + 16);
    v10 = sub_3A8DC(v7);
    v12 = v9[2];
    v13 = (v11 & 1) == 0;
    v14 = __OFADD__(v12, v13);
    v15 = v12 + v13;
    if (v14)
    {
      __break(1u);
LABEL_17:
      __break(1u);
      break;
    }

    v16 = v11;
    if (v9[3] < v15)
    {
      sub_17EDE8(v15, isUniquelyReferenced_nonNull_native);
      v10 = sub_3A8DC(v7);
      if ((v16 & 1) != (v17 & 1))
      {
        goto LABEL_19;
      }

LABEL_10:
      v18 = v9;
      if (v16)
      {
        goto LABEL_2;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v21 = v10;
    sub_185F1C();
    v10 = v21;
    v18 = v9;
    if (v16)
    {
LABEL_2:
      v5 = (v18[7] + 40 * v10);
      sub_2BF8(v5);
      sub_264B8(&v22, v5);
      goto LABEL_3;
    }

LABEL_11:
    v18[(v10 >> 6) + 8] |= 1 << v10;
    *(v18[6] + v10) = v7;
    sub_264B8(&v22, v18[7] + 40 * v10);
    v19 = v18[2];
    v14 = __OFADD__(v19, 1);
    v20 = v19 + 1;
    if (v14)
    {
      goto LABEL_17;
    }

    v18[2] = v20;
LABEL_3:
    *(a1 + 16) = v18;
    swift_endAccess();
    result = sub_2BF8(v24);
    if (v4 == 4)
    {
      return result;
    }
  }

  __break(1u);
LABEL_19:
  result = sub_1B5784();
  __break(1u);
  return result;
}

uint64_t sub_76F94(uint64_t a1)
{
  v2 = sub_1B4274();
  v25 = *(v2 - 8);
  v26 = v2;
  __chkstk_darwin(v2);
  v24 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1B4344();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B4284();
  v8 = sub_2B0C(&qword_22A0F8, &unk_1BFCE0);
  sub_1B4304();

  v9 = enum case for Scope.singleton(_:);
  v10 = *(v5 + 104);
  v10(v7, enum case for Scope.singleton(_:), v4);
  v27 = v10;
  sub_1B4214();

  v21 = *(v5 + 8);
  v21(v7, v4);
  sub_1B4284();
  v22 = v8;
  sub_1B4304();

  v10(v7, v9, v4);
  sub_1B4214();

  v11 = v21;
  v21(v7, v4);
  v20 = a1;
  sub_1B4284();
  v23 = type metadata accessor for DelegatingMediaTypesRecommendationService(0);
  sub_1B42F4();

  v19 = v9;
  v12 = v27;
  v27(v7, v9, v4);
  sub_1B4214();

  v11(v7, v4);
  sub_1B4294();
  sub_1B4304();

  v12(v7, v9, v4);
  sub_1B4214();

  v11(v7, v4);
  sub_1B4294();
  sub_1B4304();

  v13 = v19;
  v27(v7, v19, v4);
  sub_1B4214();

  v11(v7, v4);
  sub_1B4294();
  sub_1B4304();

  v27(v7, v13, v4);
  sub_1B4214();

  v11(v7, v4);
  sub_1B42A4();
  sub_2698(v28, v28[3]);
  v15 = v24;
  v14 = v25;
  v16 = v26;
  (*(v25 + 104))(v24, enum case for CallbackScope.any(_:), v26);
  sub_1B4314();
  (*(v14 + 8))(v15, v16);
  return sub_2BF8(v28);
}

void *Array.split(maxSubsequenceSize:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v17[7] = 0;
    v18 = sub_1B4B54();
    v19 = a1;
    __chkstk_darwin(v18);
    v17[2] = a3;
    v17[3] = a1;
    v17[4] = a2;
    v6 = sub_2B0C(&qword_22A120, &qword_1BFD08);
    v7 = sub_1B4F54();
    v8 = sub_77780();
    return sub_15767C(sub_7775C, v17, v6, v7, &type metadata for Never, v8, &protocol witness table for Never, v9);
  }

  else
  {
    sub_1B4F54();
    sub_1B55A4();
    swift_allocObject();
    v11 = sub_1B4AF4();
    v13 = v12;
    *v12 = sub_1B4F44();
    v13[1] = v14;
    v13[2] = v15;
    v13[3] = v16;
    sub_1B4B94();
    return v11;
  }
}

uint64_t *sub_776D4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t **a5@<X8>)
{
  v5 = *result;
  v6 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    result = sub_1B4B54();
    if (result >= v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = result;
    }

    if (v8 >= v5)
    {
      result = sub_1B4BB4();
      *a5 = result;
      a5[1] = v9;
      a5[2] = v10;
      a5[3] = v11;
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_77780()
{
  result = qword_22A128;
  if (!qword_22A128)
  {
    sub_1CC1C(&qword_22A120, &qword_1BFD08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22A128);
  }

  return result;
}

uint64_t Array.compactMapped<A>(by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1B4B94();
  sub_1B4664();
  sub_1B4724();
  swift_getWitnessTable();
  sub_1B49F4();
  return v7;
}

unint64_t sub_778D0(uint64_t *a1, char *a2, void (*a3)(char *), unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v47 = a4;
  v48 = a7;
  v45 = a1;
  v46 = a5;
  v43 = *(a5 - 8);
  __chkstk_darwin(a1);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B4EA4();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v40 - v15;
  v17 = *(a6 - 8);
  v18 = __chkstk_darwin(v14);
  v42 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v40 - v20;
  v44 = a2;
  a3(a2);
  if ((*(v17 + 48))(v16, 1, a6) == 1)
  {
    return (*(v13 + 8))(v16, v12);
  }

  v41 = v17;
  (*(v17 + 32))(v21, v16, a6);
  v23 = swift_allocObject();
  v24 = v46;
  v23[2] = v46;
  v23[3] = a6;
  v25 = v48;
  v23[4] = v48;
  v26 = *(v43 + 2);
  v43 = v11;
  v26(v11, v44, v24);
  v27 = swift_allocObject();
  v27[2] = v24;
  v27[3] = a6;
  v27[4] = v25;
  v27[5] = sub_7A01C;
  v27[6] = v23;
  v28 = v45;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v28;
  v30 = v49;
  v44 = v21;
  result = sub_15B790(v21, a6, v25);
  v47 = result;
  v32 = *(v30 + 16);
  v33 = (v31 & 1) == 0;
  v34 = v32 + v33;
  if (__OFADD__(v32, v33))
  {
    __break(1u);
  }

  else
  {
    v35 = v31;
    sub_1B4B94();
    sub_1B5224();
    v36 = sub_1B5204(isUniquelyReferenced_nonNull_native, v34);
    v37 = v49;
    if (v36)
    {
      v47 = sub_15B790(v44, a6, v48);
      if ((v35 & 1) != (v38 & 1))
      {
        sub_1B5784();
        __break(1u);
      }
    }

    *v28 = v37;
    v39 = v44;
    if ((v35 & 1) == 0)
    {
      v49 = (v27[5])(v43);
      (*(v41 + 16))(v42, v39, a6);
      sub_1B5214();
    }

    sub_1B4B64();
    (*(v41 + 8))(v39, a6);
  }

  return result;
}

uint64_t Array.compactMapAsync<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return _swift_task_switch(sub_77D2C, 0, 0);
}

uint64_t sub_77D2C()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  swift_getTupleTypeMetadata2();
  v4 = sub_1B4EA4();
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  v6 = *(v0 + 24);
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  *(v5 + 32) = v3;
  *(v5 + 40) = v6;
  v7 = sub_1B4B94();
  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  *v8 = v0;
  v8[1] = sub_77E6C;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 16, v4, v7, 0, 0, &unk_1BFD20, v5, v4);
}

uint64_t sub_77E6C()
{

  return _swift_task_switch(sub_77F84, 0, 0);
}

uint64_t sub_77FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[16] = a6;
  v7[17] = a7;
  v7[14] = a4;
  v7[15] = a5;
  v7[12] = a2;
  v7[13] = a3;
  v7[11] = a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7[18] = TupleTypeMetadata2;
  v7[19] = *(TupleTypeMetadata2 - 8);
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();
  v10 = sub_1B4EA4();
  v7[23] = v10;
  v7[24] = *(v10 - 8);
  v7[25] = swift_task_alloc();
  v11 = *(a6 - 8);
  v7[26] = v11;
  v7[27] = *(v11 + 64);
  v7[28] = swift_task_alloc();
  sub_2B0C(&qword_2296C0, &qword_1C3800);
  v7[29] = swift_task_alloc();
  sub_1B4EA4();
  v7[30] = swift_task_alloc();
  v12 = sub_1B4C24();
  v7[31] = v12;
  v7[32] = *(v12 - 8);
  v7[33] = swift_task_alloc();
  v7[34] = swift_getTupleTypeMetadata2();
  v13 = sub_1B4EA4();
  v7[35] = v13;
  v7[36] = *(v13 - 8);
  v7[37] = swift_task_alloc();
  v7[38] = swift_task_alloc();

  return _swift_task_switch(sub_782C4, 0, 0);
}

uint64_t sub_782C4()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 272);
  v4 = *(v0 + 208);
  v3 = *(v0 + 216);
  *(v0 + 48) = *(v0 + 104);
  sub_1B4B94();
  swift_getWitnessTable();
  sub_1B49D4();
  *(v0 + 56) = *(v0 + 40);
  sub_1B5274();
  sub_1B5244();
  v24 = v4;
  v25 = v2;
  v26 = v2 - 8;
  v27 = (v1 + 32);
  v23 = v3 + 7;
  sub_1B5264();
  while (1)
  {
    v6 = *(v0 + 296);
    v5 = *(v0 + 304);
    v8 = *(v0 + 272);
    v7 = *(v0 + 280);
    sub_1B5254();
    (*v27)(v5, v6, v7);
    if ((*(*v26 + 48))(v5, 1, v8) == 1)
    {
      break;
    }

    v9 = *(v0 + 304);
    v11 = *(v0 + 224);
    v10 = *(v0 + 232);
    v12 = *(v0 + 120);
    v28 = *(v0 + 112);
    v29 = v10;
    v30 = *v9;
    v13 = *(v25 + 48);
    v14 = sub_1B4C54();
    v31 = *(v0 + 128);
    (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
    v15 = *(v24 + 32);
    v15(v11, &v9[v13], v31);
    v16 = (*(v24 + 80) + 64) & ~*(v24 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = 0;
    *(v17 + 24) = 0;
    *(v17 + 32) = v31;
    *(v17 + 48) = v28;
    *(v17 + 56) = v12;
    v15((v17 + v16), v11, v31);
    *(v17 + ((v23 + v16) & 0xFFFFFFFFFFFFFFF8)) = v30;
    v18 = sub_1B4C34();

    sub_790C0(v29, &unk_1BFD30, v17, v18);
    sub_79E34(v29);
  }

  *(v0 + 64) = sub_1B4674();
  sub_1B4C04();
  v19 = swift_task_alloc();
  *(v0 + 312) = v19;
  *v19 = v0;
  v19[1] = sub_78630;
  v20 = *(v0 + 240);
  v21 = *(v0 + 248);

  return TaskGroup.Iterator.next(isolation:)(v20, 0, 0, v21);
}

uint64_t sub_78630()
{

  return _swift_task_switch(sub_7872C, 0, 0);
}

uint64_t sub_7872C()
{
  v1 = v0[30];
  v2 = v0[23];
  v3 = v0[24];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[17];
    v5 = v0[16];
    v28 = v0[11];
    (*(v0[32] + 8))();
    v0[9] = v0[8];
    v6 = swift_task_alloc();
    *(v6 + 16) = v5;
    *(v6 + 24) = v4;
    v7 = sub_1B4B94();

    swift_getWitnessTable();
    v8 = sub_1B4A04();

    v0[10] = v8;
    v9 = swift_task_alloc();
    *(v9 + 16) = v5;
    *(v9 + 24) = v4;
    WitnessTable = swift_getWitnessTable();
    v12 = sub_FDC10(sub_79C00, v9, v7, v4, &type metadata for Never, WitnessTable, &protocol witness table for Never, v11);

    *v28 = v12;

    v13 = v0[1];

    return v13();
  }

  else
  {
    v15 = v0[25];
    v16 = v0[18];
    v17 = v0[19];
    (*(v3 + 32))(v15, v1, v2);
    if ((*(v17 + 48))(v15, 1, v16) != 1)
    {
      v19 = v0[21];
      v18 = v0[22];
      v21 = v0[19];
      v20 = v0[20];
      v23 = v0[17];
      v22 = v0[18];
      (*(v21 + 32))(v18, v0[25], v22);
      (*(v21 + 16))(v19, v18, v22);
      v24 = *(v22 + 48);
      *v20 = *v19;
      (*(*(v23 - 8) + 32))(&v20[v24], &v19[v24], v23);
      sub_1B4B94();
      sub_1B4B64();
      (*(v21 + 8))(v18, v22);
    }

    v25 = swift_task_alloc();
    v0[39] = v25;
    *v25 = v0;
    v25[1] = sub_78630;
    v26 = v0[30];
    v27 = v0[31];

    return TaskGroup.Iterator.next(isolation:)(v26, 0, 0, v27);
  }
}

uint64_t sub_78B24(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a7;
  v7[4] = v16;
  v7[2] = a1;
  v10 = sub_1B4EA4();
  v7[5] = v10;
  v7[6] = *(v10 - 8);
  v11 = swift_task_alloc();
  v7[7] = v11;
  v7[8] = *(v16 - 8);
  v7[9] = swift_task_alloc();
  v14 = (a4 + *a4);
  v12 = swift_task_alloc();
  v7[10] = v12;
  *v12 = v7;
  v12[1] = sub_78CF4;

  return v14(v11, a6);
}

uint64_t sub_78CF4()
{

  if (v0)
  {

    v1 = sub_78FC4;
  }

  else
  {
    v1 = sub_78E0C;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_78E0C()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[4];
  v4 = (*(v2 + 48))(v1, 1, v3);
  v5 = v0[2];
  if (v4 == 1)
  {
    (*(v0[6] + 8))(v1, v0[5]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    (*(*(TupleTypeMetadata2 - 8) + 56))(v5, 1, 1, TupleTypeMetadata2);
  }

  else
  {
    v7 = v0[9];
    v8 = v0[3];
    v9 = *(v2 + 32);
    v9(v7, v1, v3);
    v10 = swift_getTupleTypeMetadata2();
    v11 = *(v10 + 48);
    *v5 = v8;
    v9(&v5[v11], v7, v3);
    (*(*(v10 - 8) + 56))(v5, 0, 1, v10);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_78FC4()
{
  (*(v0[8] + 56))(v0[7], 1, 1, v0[4]);
  v1 = v0[2];
  (*(v0[6] + 8))(v0[7], v0[5]);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  (*(*(TupleTypeMetadata2 - 8) + 56))(v1, 1, 1, TupleTypeMetadata2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_790C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_2B0C(&qword_2296C0, &qword_1C3800);
  __chkstk_darwin(v10 - 8);
  v12 = v22 - v11;
  sub_79E9C(a1, v22 - v11);
  v13 = sub_1B4C54();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_79E34(v12);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v15 = sub_1B4BC4();
      v17 = v16;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1B4C44();
    (*(v14 + 8))(v12, v13);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
  v17 = 0;
LABEL_6:
  v18 = *v5;
  v19 = swift_allocObject();
  v19[2] = *(a4 + 16);
  v19[3] = a2;
  v19[4] = a3;
  v20 = (v17 | v15);
  if (v17 | v15)
  {
    v23[0] = 0;
    v23[1] = 0;
    v20 = v23;
    v23[2] = v15;
    v23[3] = v17;
  }

  v22[1] = 1;
  v22[2] = v20;
  v22[3] = v18;
  swift_task_create();
}

uint64_t sub_792C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  __chkstk_darwin(TupleTypeMetadata2);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1, TupleTypeMetadata2);
  return (*(*(a2 - 8) + 32))(a3, &v8[*(TupleTypeMetadata2 + 48)], a2);
}

uint64_t Array.permutations()(uint64_t a1, uint64_t a2)
{
  sub_1B4B94();
  sub_1B55A4();
  swift_allocObject();

  v2 = sub_1B4AF4();
  v4 = v3;

  swift_getWitnessTable();
  *v4 = sub_1B4BA4();
  sub_1B4B94();
  v5 = v2;
  v14 = v2;
  result = sub_1B4B54();
  if (result < 0)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  if (result)
  {
    v7 = result;
    v8 = sub_1B4B34();
    v8[2] = v7;
    bzero(v8 + 4, 8 * v7);
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  result = sub_1B4B54();
  if (result >= 1)
  {
    v9 = 0;
    v10 = v8 + 4;
    while (v9 < v8[2])
    {
      if (v10[v9] >= v9)
      {
        v10[v9++] = 0;
      }

      else
      {
        swift_getWitnessTable();
        sub_1B4774();

        sub_1B4BA4();
        result = sub_1B4B64();
        if (v9 >= v8[2])
        {
          goto LABEL_18;
        }

        v11 = v10[v9];
        v12 = __OFADD__(v11, 1);
        v13 = v11 + 1;
        if (v12)
        {
          goto LABEL_19;
        }

        v10[v9] = v13;
        v9 = 0;
      }

      result = sub_1B4B54();
      if (v9 >= result)
      {

        return v14;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  return v5;
}

uint64_t Array.truncate(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_1B4B54() <= a1)
  {
  }

  else
  {
    sub_1B4B94();
    swift_getWitnessTable();
    sub_1B4A24();
    swift_getWitnessTable();
    sub_1B4D34();
    sub_1B4F54();
    swift_getWitnessTable();
    return sub_1B4BA4();
  }

  return a2;
}

uint64_t Array.conform(repeating:inLength:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = Array.truncate(_:)(a2, a3, a4);
  result = sub_1B4B54();
  if (result == a2)
  {
    return v7;
  }

  if (__OFSUB__(a2, result))
  {
    __break(1u);
  }

  else
  {
    sub_79AE8(a1, a2 - result, a4);
    v9 = sub_1B4B14();

    return v9;
  }

  return result;
}

uint64_t sub_797FC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_798F4;

  return v6(a1);
}

uint64_t sub_798F4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_79A10(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_7A038;

  return sub_77FA0(a1, a2, v8, v9, v10, v6, v7);
}

uint64_t sub_79AE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4B24();
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    if (a2)
    {
      v9 = v7;
      v10 = *(a3 - 8);
      v11 = *(v10 + 16);
      v11(v7, a1, a3);
      v12 = a2 - 1;
      if (v12)
      {
        v13 = *(v10 + 72);
        v14 = v9 + v13;
        do
        {
          v11(v14, a1, a3);
          v14 += v13;
          --v12;
        }

        while (v12);
      }
    }

    sub_1B4B94();
    return v8;
  }

  return result;
}

uint64_t sub_79C20()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_79CF0(uint64_t a1)
{
  v3 = (*(*(v1[4] - 8) + 80) + 64) & ~*(*(v1[4] - 8) + 80);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[6];
  v7 = v1[7];
  v8 = *(v1 + ((*(*(v1[4] - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_226C;

  return sub_78B24(a1, v4, v5, v6, v7, v1 + v3, v8);
}

uint64_t sub_79E34(uint64_t a1)
{
  v2 = sub_2B0C(&qword_2296C0, &qword_1C3800);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_79E9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B0C(&qword_2296C0, &qword_1C3800);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_79F0C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_79F44(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226C;

  return sub_797FC(a1, v4);
}

uint64_t Event.isSample.getter()
{
  v1 = type metadata accessor for Event(0);
  __chkstk_darwin(v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7A1B4(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 4 || EnumCaseMultiPayload == 1)
  {

    v5 = sub_2B0C(&qword_22A130, &unk_1BFD50);
    v6 = *(v5 + 48);
    v7 = v3[*(v5 + 64)];
    v8 = sub_1B40C4();
    (*(*(v8 - 8) + 8))(&v3[v6], v8);
  }

  else
  {
    sub_7A218(v3);
    return 2;
  }

  return v7;
}

uint64_t type metadata accessor for Event(uint64_t a1)
{
  result = qword_22A1F0;
  if (!qword_22A1F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_7A1B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Event(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_7A218(uint64_t a1)
{
  v2 = type metadata accessor for Event(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Event.endProgress.getter()
{
  v1 = type metadata accessor for Event(0);
  __chkstk_darwin(v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7A1B4(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 4 || EnumCaseMultiPayload == 1)
  {

    v5 = sub_2B0C(&qword_22A130, &unk_1BFD50);
    v6 = *(v5 + 48);
    v7 = *&v3[*(v5 + 80)];
    v8 = sub_1B40C4();
    (*(*(v8 - 8) + 8))(&v3[v6], v8);
  }

  else
  {
    sub_7A218(v3);
    return 0;
  }

  return v7;
}

uint64_t Event.rating.getter()
{
  v1 = type metadata accessor for Event(0);
  __chkstk_darwin(v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7A1B4(v0, v3);
  if (swift_getEnumCaseMultiPayload() == 10)
  {

    v5 = sub_2B0C(&qword_22A138, &qword_1C59F0);
    v6 = *(v5 + 48);
    v4 = *&v3[*(v5 + 64)];
    v7 = sub_1B40C4();
    (*(*(v7 - 8) + 8))(&v3[v6], v7);
  }

  else
  {
    sub_7A218(v3);
    return 0;
  }

  return v4;
}

uint64_t Event.assetID.getter()
{
  v1 = type metadata accessor for Event(0);
  __chkstk_darwin(v1);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7A1B4(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = *v3;
  v6 = sub_1B40C4();
  v7 = *(*(v6 - 8) + 8);
  v8 = v6;
  switch(EnumCaseMultiPayload)
  {
    case 1:
    case 4:
      v9 = &qword_22A130;
      v10 = &unk_1BFD50;
      break;
    case 2:
    case 3:
      v9 = &qword_22A150;
      v10 = &qword_1BFD70;
      break;
    case 8:
      v9 = &qword_22A148;
      v10 = &qword_1BFD68;
      break;
    case 10:
      v9 = &qword_22A138;
      v10 = &qword_1C59F0;
      break;
    default:
      v9 = &qword_22A140;
      v10 = &qword_1BFD60;
      break;
  }

  v11 = sub_2B0C(v9, v10);
  v7(&v3[*(v11 + 48)], v8);
  return v5;
}

uint64_t Event.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Event(0);
  __chkstk_darwin(v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7A1B4(v2, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  v8 = sub_1B40C4();
  v9 = *(*(v8 - 8) + 32);
  v10 = v8;
  switch(EnumCaseMultiPayload)
  {
    case 1:
    case 4:
      v11 = &qword_22A130;
      v12 = &unk_1BFD50;
      break;
    case 2:
    case 3:
      v11 = &qword_22A150;
      v12 = &qword_1BFD70;
      break;
    case 8:
      v11 = &qword_22A148;
      v12 = &qword_1BFD68;
      break;
    case 10:
      v11 = &qword_22A138;
      v12 = &qword_1C59F0;
      break;
    default:
      v11 = &qword_22A140;
      v12 = &qword_1BFD60;
      break;
  }

  v13 = sub_2B0C(v11, v12);
  return v9(a1, &v6[*(v13 + 48)], v10);
}

unint64_t Event.eventType.getter()
{
  v1 = type metadata accessor for Event(0);
  __chkstk_darwin(v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7A1B4(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  switch(EnumCaseMultiPayload)
  {
    case 1:
      v6 = 0xD000000000000012;
      v5 = &v3[*(sub_2B0C(&qword_22A130, &unk_1BFD50) + 48)];
      break;
    case 2:
      v5 = &v3[*(sub_2B0C(&qword_22A150, &qword_1BFD70) + 48)];
      v6 = 0x72706D496B6F6F62;
      break;
    case 3:
      v5 = &v3[*(sub_2B0C(&qword_22A150, &qword_1BFD70) + 48)];
      v6 = 0xD000000000000019;
      break;
    case 4:
      v5 = &v3[*(sub_2B0C(&qword_22A130, &unk_1BFD50) + 48)];
      v6 = 0x527361576B6F6F62;
      break;
    case 5:
      v5 = &v3[*(sub_2B0C(&qword_22A140, &qword_1BFD60) + 48)];
      v6 = 0x64616F6C6E776F64;
      break;
    case 6:
      v5 = &v3[*(sub_2B0C(&qword_22A140, &qword_1BFD60) + 48)];
      v6 = 0x746963696C707865;
      break;
    case 7:
      v5 = &v3[*(sub_2B0C(&qword_22A140, &qword_1BFD60) + 48)];
      v6 = 0x6B6F6F4265646968;
      break;
    case 8:
      v5 = &v3[*(sub_2B0C(&qword_22A148, &qword_1BFD68) + 48)];
      v6 = 0x694673416B72616DLL;
      break;
    case 9:
      v6 = 0xD000000000000012;
      v5 = &v3[*(sub_2B0C(&qword_22A140, &qword_1BFD60) + 48)];
      break;
    case 10:
      v5 = &v3[*(sub_2B0C(&qword_22A138, &qword_1C59F0) + 48)];
      v6 = 0x676E69746172;
      break;
    case 11:
      v5 = &v3[*(sub_2B0C(&qword_22A140, &qword_1BFD60) + 48)];
      v6 = 0xD000000000000014;
      break;
    case 12:
      v5 = &v3[*(sub_2B0C(&qword_22A140, &qword_1BFD60) + 48)];
      v6 = 0x615365766F6D6572;
      break;
    case 13:
      v5 = &v3[*(sub_2B0C(&qword_22A140, &qword_1BFD60) + 48)];
      v6 = 0x4C74736567677573;
      break;
    case 14:
      v5 = &v3[*(sub_2B0C(&qword_22A140, &qword_1BFD60) + 48)];
      v6 = 0x4D74736567677573;
      break;
    case 15:
      v5 = &v3[*(sub_2B0C(&qword_22A140, &qword_1BFD60) + 48)];
      v6 = 0x6572616873;
      break;
    case 16:
      v5 = &v3[*(sub_2B0C(&qword_22A140, &qword_1BFD60) + 48)];
      v6 = 0x657461726E75;
      break;
    default:
      v5 = &v3[*(sub_2B0C(&qword_22A140, &qword_1BFD60) + 48)];
      v6 = 0x6E61576F54646461;
      break;
  }

  v7 = sub_1B40C4();
  (*(*(v7 - 8) + 8))(v5, v7);
  return v6;
}

uint64_t Event.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v63 = a1;
  v64 = sub_1B40C4();
  v62 = *(v64 - 8);
  v3 = __chkstk_darwin(v64);
  v5 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v61 - v7;
  v9 = __chkstk_darwin(v6);
  v11 = &v61 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v61 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v61 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v61 - v19;
  __chkstk_darwin(v18);
  v22 = &v61 - v21;
  v23 = type metadata accessor for Event(0);
  __chkstk_darwin(v23);
  v25 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7A1B4(v2, v25);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v47 = sub_2B0C(&qword_22A130, &unk_1BFD50);
      v48 = v25[v47[16]];
      v49 = *&v25[v47[20]];
      v27 = v62;
      v28 = v64;
      (*(v62 + 32))(v20, &v25[v47[12]], v64);
      sub_1B5804(1uLL);
      sub_1B4884();

      sub_7D97C(&qword_229268, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      sub_1B4754();
      sub_1B5814(v48);
      v50 = 0.0;
      if (v49 != 0.0)
      {
        v50 = v49;
      }

      sub_1B5834(*&v50);
      v17 = v20;
      return (*(v27 + 8))(v17, v28);
    case 2u:
      v39 = sub_2B0C(&qword_22A150, &qword_1BFD70);
      v40 = v25[*(v39 + 64)];
      v27 = v62;
      v28 = v64;
      (*(v62 + 32))(v17, &v25[*(v39 + 48)], v64);
      sub_1B5804(2uLL);
      sub_1B4884();

      sub_7D97C(&qword_229268, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      sub_1B4754();
      if (v40 == 2)
      {
        v41 = 0;
      }

      else
      {
        sub_1B5814(1u);
        v41 = v40 & 1;
      }

      sub_1B5814(v41);
      return (*(v27 + 8))(v17, v28);
    case 3u:
      v43 = sub_2B0C(&qword_22A150, &qword_1BFD70);
      v44 = v25[*(v43 + 64)];
      v27 = v62;
      v28 = v64;
      (*(v62 + 32))(v14, &v25[*(v43 + 48)], v64);
      sub_1B5804(3uLL);
      sub_1B4884();

      sub_7D97C(&qword_229268, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      sub_1B4754();
      if (v44 == 2)
      {
        v45 = 0;
      }

      else
      {
        sub_1B5814(1u);
        v45 = v44 & 1;
      }

      sub_1B5814(v45);
      v17 = v14;
      return (*(v27 + 8))(v17, v28);
    case 4u:
      v33 = sub_2B0C(&qword_22A130, &unk_1BFD50);
      v34 = v25[v33[16]];
      v35 = *&v25[v33[20]];
      v27 = v62;
      v28 = v64;
      (*(v62 + 32))(v11, &v25[v33[12]], v64);
      sub_1B5804(4uLL);
      sub_1B4884();

      sub_7D97C(&qword_229268, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      sub_1B4754();
      sub_1B5814(v34);
      v36 = 0.0;
      if (v35 != 0.0)
      {
        v36 = v35;
      }

      sub_1B5834(*&v36);
      v17 = v11;
      return (*(v27 + 8))(v17, v28);
    case 5u:
      v51 = sub_2B0C(&qword_22A140, &qword_1BFD60);
      v27 = v62;
      v28 = v64;
      (*(v62 + 32))(v22, &v25[*(v51 + 48)], v64);
      v29 = 5;
      goto LABEL_23;
    case 6u:
      v53 = sub_2B0C(&qword_22A140, &qword_1BFD60);
      v27 = v62;
      v28 = v64;
      (*(v62 + 32))(v22, &v25[*(v53 + 48)], v64);
      v29 = 6;
      goto LABEL_23;
    case 7u:
      v46 = sub_2B0C(&qword_22A140, &qword_1BFD60);
      v27 = v62;
      v28 = v64;
      (*(v62 + 32))(v22, &v25[*(v46 + 48)], v64);
      v29 = 7;
      goto LABEL_23;
    case 8u:
      v59 = sub_2B0C(&qword_22A148, &qword_1BFD68);
      v60 = v25[*(v59 + 64)];
      v27 = v62;
      (*(v62 + 32))(v8, &v25[*(v59 + 48)], v64);
      sub_1B5804(8uLL);
      sub_1B4884();

      sub_7D97C(&qword_229268, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      sub_1B4754();
      if (v60 == 2)
      {
        sub_1B5814(0);
      }

      else
      {
        sub_1B5814(1u);
        sub_1B5804(v60 & 1);
      }

      v17 = v8;
      v28 = v64;
      return (*(v27 + 8))(v17, v28);
    case 9u:
      v38 = sub_2B0C(&qword_22A140, &qword_1BFD60);
      v27 = v62;
      v28 = v64;
      (*(v62 + 32))(v22, &v25[*(v38 + 48)], v64);
      v29 = 9;
      goto LABEL_23;
    case 0xAu:
      v55 = sub_2B0C(&qword_22A138, &qword_1C59F0);
      v56 = *&v25[*(v55 + 64)];
      v57 = v62;
      v28 = v64;
      (*(v62 + 32))(v5, &v25[*(v55 + 48)], v64);
      sub_1B5804(0xAuLL);
      sub_1B4884();

      sub_7D97C(&qword_229268, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      sub_1B4754();
      v58 = 0.0;
      if (v56 != 0.0)
      {
        v58 = v56;
      }

      sub_1B5834(*&v58);
      v17 = v5;
      v27 = v57;
      return (*(v27 + 8))(v17, v28);
    case 0xBu:
      v32 = sub_2B0C(&qword_22A140, &qword_1BFD60);
      v27 = v62;
      v28 = v64;
      (*(v62 + 32))(v22, &v25[*(v32 + 48)], v64);
      v29 = 11;
      goto LABEL_23;
    case 0xCu:
      v37 = sub_2B0C(&qword_22A140, &qword_1BFD60);
      v27 = v62;
      v28 = v64;
      (*(v62 + 32))(v22, &v25[*(v37 + 48)], v64);
      v29 = 12;
      goto LABEL_23;
    case 0xDu:
      v52 = sub_2B0C(&qword_22A140, &qword_1BFD60);
      v27 = v62;
      v28 = v64;
      (*(v62 + 32))(v22, &v25[*(v52 + 48)], v64);
      v29 = 13;
      goto LABEL_23;
    case 0xEu:
      v31 = sub_2B0C(&qword_22A140, &qword_1BFD60);
      v27 = v62;
      v28 = v64;
      (*(v62 + 32))(v22, &v25[*(v31 + 48)], v64);
      v29 = 14;
      goto LABEL_23;
    case 0xFu:
      v42 = sub_2B0C(&qword_22A140, &qword_1BFD60);
      v27 = v62;
      v28 = v64;
      (*(v62 + 32))(v22, &v25[*(v42 + 48)], v64);
      v29 = 15;
      goto LABEL_23;
    case 0x10u:
      v30 = sub_2B0C(&qword_22A140, &qword_1BFD60);
      v27 = v62;
      v28 = v64;
      (*(v62 + 32))(v22, &v25[*(v30 + 48)], v64);
      v29 = 16;
      goto LABEL_23;
    default:
      v26 = sub_2B0C(&qword_22A140, &qword_1BFD60);
      v27 = v62;
      v28 = v64;
      (*(v62 + 32))(v22, &v25[*(v26 + 48)], v64);
      v29 = 0;
LABEL_23:
      sub_1B5804(v29);
      sub_1B4884();

      sub_7D97C(&qword_229268, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      sub_1B4754();
      v17 = v22;
      return (*(v27 + 8))(v17, v28);
  }
}

Swift::Int Event.hashValue.getter()
{
  sub_1B57F4();
  Event.hash(into:)(v1);
  return sub_1B5844();
}

Swift::Int sub_7B8E0(uint64_t a1)
{
  sub_1B57F4();
  Event.hash(into:)(v2);
  return sub_1B5844();
}

uint64_t _s20BooksPersonalization5EventO2eeoiySbAC_ACtFZ_0(uint64_t a1, void *a2)
{
  v426 = a1;
  v427 = a2;
  v2 = sub_1B40C4();
  v3 = *(v2 - 8);
  v428 = v2;
  v429 = v3;
  v4 = __chkstk_darwin(v2);
  v398 = &v382 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v425 = &v382 - v7;
  v8 = __chkstk_darwin(v6);
  v397 = &v382 - v9;
  v10 = __chkstk_darwin(v8);
  v424 = &v382 - v11;
  v12 = __chkstk_darwin(v10);
  v396 = &v382 - v13;
  v14 = __chkstk_darwin(v12);
  v423 = &v382 - v15;
  v16 = __chkstk_darwin(v14);
  v395 = &v382 - v17;
  v18 = __chkstk_darwin(v16);
  v422 = &v382 - v19;
  v20 = __chkstk_darwin(v18);
  v394 = &v382 - v21;
  v22 = __chkstk_darwin(v20);
  v421 = &v382 - v23;
  v24 = __chkstk_darwin(v22);
  v393 = &v382 - v25;
  v26 = __chkstk_darwin(v24);
  v420 = &v382 - v27;
  v28 = __chkstk_darwin(v26);
  v392 = &v382 - v29;
  v30 = __chkstk_darwin(v28);
  v419 = &v382 - v31;
  v32 = __chkstk_darwin(v30);
  v391 = &v382 - v33;
  v34 = __chkstk_darwin(v32);
  v418 = &v382 - v35;
  v36 = __chkstk_darwin(v34);
  v390 = &v382 - v37;
  v38 = __chkstk_darwin(v36);
  v417 = &v382 - v39;
  v40 = __chkstk_darwin(v38);
  v389 = &v382 - v41;
  v42 = __chkstk_darwin(v40);
  v416 = &v382 - v43;
  v44 = __chkstk_darwin(v42);
  v388 = &v382 - v45;
  v46 = __chkstk_darwin(v44);
  v415 = &v382 - v47;
  v48 = __chkstk_darwin(v46);
  v387 = &v382 - v49;
  v50 = __chkstk_darwin(v48);
  v414 = &v382 - v51;
  v52 = __chkstk_darwin(v50);
  v386 = &v382 - v53;
  v54 = __chkstk_darwin(v52);
  v413 = &v382 - v55;
  v56 = __chkstk_darwin(v54);
  v385 = &v382 - v57;
  v58 = __chkstk_darwin(v56);
  v412 = &v382 - v59;
  v60 = __chkstk_darwin(v58);
  v384 = &v382 - v61;
  v62 = __chkstk_darwin(v60);
  v411 = &v382 - v63;
  v64 = __chkstk_darwin(v62);
  v383 = &v382 - v65;
  v66 = __chkstk_darwin(v64);
  v410 = &v382 - v67;
  v68 = __chkstk_darwin(v66);
  v382 = &v382 - v69;
  __chkstk_darwin(v68);
  v399 = &v382 - v70;
  v71 = type metadata accessor for Event(0);
  v72 = __chkstk_darwin(v71);
  v409 = (&v382 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74 = __chkstk_darwin(v72);
  v408 = (&v382 - v75);
  v76 = __chkstk_darwin(v74);
  v407 = (&v382 - v77);
  v78 = __chkstk_darwin(v76);
  v406 = (&v382 - v79);
  v80 = __chkstk_darwin(v78);
  v405 = (&v382 - v81);
  v82 = __chkstk_darwin(v80);
  v404 = (&v382 - v83);
  v84 = __chkstk_darwin(v82);
  v403 = (&v382 - v85);
  v86 = __chkstk_darwin(v84);
  v402 = (&v382 - v87);
  v88 = __chkstk_darwin(v86);
  v401 = (&v382 - v89);
  v90 = __chkstk_darwin(v88);
  v400 = (&v382 - v91);
  v92 = __chkstk_darwin(v90);
  v94 = (&v382 - v93);
  v95 = __chkstk_darwin(v92);
  v97 = (&v382 - v96);
  v98 = __chkstk_darwin(v95);
  v100 = (&v382 - v99);
  v101 = __chkstk_darwin(v98);
  v103 = (&v382 - v102);
  v104 = __chkstk_darwin(v101);
  v106 = (&v382 - v105);
  v107 = __chkstk_darwin(v104);
  v109 = (&v382 - v108);
  __chkstk_darwin(v107);
  v111 = (&v382 - v110);
  v112 = sub_2B0C(&qword_22A260, &unk_1C0010);
  v113 = __chkstk_darwin(v112 - 8);
  v115 = &v382 - v114;
  v116 = &v382 + *(v113 + 56) - v114;
  sub_7A1B4(v426, &v382 - v114);
  v117 = v427;
  v427 = v116;
  sub_7A1B4(v117, v116);
  v430 = v115;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v254 = v430;
      sub_7A1B4(v430, v109);
      v255 = v109[1];
      v426 = *v109;
      v256 = sub_2B0C(&qword_22A130, &unk_1BFD50);
      v257 = v256[12];
      v258 = v109 + v257;
      v259 = v256[16];
      v260 = *(v109 + v259);
      v261 = v256[20];
      v172 = *(v109 + v261);
      v262 = v427;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v319 = v428;
        v320 = v429;
        v118 = v254;
        v122 = v109 + v257;
        goto LABEL_67;
      }

      LODWORD(v425) = v260;
      LODWORD(v424) = *(v262 + v259);
      v264 = *v262;
      v263 = v262[1];
      v176 = *(v262 + v261);
      v265 = v255;
      v179 = v428;
      v178 = v429;
      v266 = v262;
      v267 = *(v429 + 32);
      v267(v410, v258, v428);
      v268 = v266 + v257;
      v183 = v383;
      v267(v383, v268, v179);
      if (v426 == v264 && v265 == v263)
      {

LABEL_97:
        v184 = v410;
        goto LABEL_98;
      }

      v345 = sub_1B5604();

      if (v345)
      {
        goto LABEL_97;
      }

      v369 = *(v178 + 8);
      v369(v183, v179);
      v373 = &v431;
      goto LABEL_135;
    case 2u:
      v118 = v430;
      sub_7A1B4(v430, v106);
      v205 = *v106;
      v206 = v106[1];
      v207 = sub_2B0C(&qword_22A150, &qword_1BFD70);
      v208 = *(v207 + 48);
      v122 = v106 + v208;
      v209 = *(v207 + 64);
      v210 = *(v106 + v209);
      v211 = v427;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_66;
      }

      LODWORD(v426) = v210;
      v213 = *v211;
      v212 = v211[1];
      LODWORD(v425) = *(v211 + v209);
      v214 = v206;
      v179 = v428;
      v215 = v429;
      v216 = v211;
      v217 = *(v429 + 32);
      v217(v411, v106 + v208, v428);
      v218 = v216 + v208;
      v219 = v384;
      v217(v384, v218, v179);
      if (v205 == v213 && v214 == v212)
      {

LABEL_89:
        v243 = v411;
        goto LABEL_115;
      }

      v341 = sub_1B5604();

      if (v341)
      {
        goto LABEL_89;
      }

      v369 = *(v215 + 8);
      v369(v219, v179);
      v373 = &v432;
LABEL_135:
      v370 = *(v373 - 32);
      goto LABEL_141;
    case 3u:
      v118 = v430;
      sub_7A1B4(v430, v103);
      v230 = *v103;
      v231 = v103[1];
      v232 = sub_2B0C(&qword_22A150, &qword_1BFD70);
      v233 = *(v232 + 48);
      v122 = v103 + v233;
      v234 = *(v232 + 64);
      v235 = *(v103 + v234);
      v236 = v427;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_66;
      }

      LODWORD(v426) = v235;
      v238 = *v236;
      v237 = v236[1];
      LODWORD(v425) = *(v236 + v234);
      v239 = v231;
      v179 = v428;
      v215 = v429;
      v240 = v236;
      v241 = *(v429 + 32);
      v241(v412, v103 + v233, v428);
      v242 = v240 + v233;
      v219 = v385;
      v241(v385, v242, v179);
      if (v230 == v238 && v239 == v237)
      {

        v243 = v412;
        goto LABEL_115;
      }

      v343 = sub_1B5604();

      if (v343)
      {
        v243 = v412;
        goto LABEL_115;
      }

      v369 = *(v215 + 8);
      v369(v219, v179);
      v370 = v412;
      goto LABEL_141;
    case 4u:
      v164 = v430;
      sub_7A1B4(v430, v100);
      v165 = v100[1];
      v426 = *v100;
      v166 = sub_2B0C(&qword_22A130, &unk_1BFD50);
      v167 = v166[12];
      v168 = v100 + v167;
      v169 = v166[16];
      v170 = *(v100 + v169);
      v171 = v166[20];
      v172 = *(v100 + v171);
      v173 = v427;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        v319 = v428;
        v320 = v429;
        v118 = v164;
        v122 = v100 + v167;
        goto LABEL_67;
      }

      LODWORD(v425) = v170;
      LODWORD(v424) = *(v173 + v169);
      v175 = *v173;
      v174 = v173[1];
      v176 = *(v173 + v171);
      v177 = v165;
      v179 = v428;
      v178 = v429;
      v180 = v173;
      v181 = *(v429 + 32);
      v181(v413, v168, v428);
      v182 = v180 + v167;
      v183 = v386;
      v181(v386, v182, v179);
      if (v426 == v175 && v177 == v174)
      {

        v184 = v413;
      }

      else
      {
        v338 = sub_1B5604();

        if ((v338 & 1) == 0)
        {
          v369 = *(v178 + 8);
          v369(v183, v179);
          v370 = v413;
          goto LABEL_141;
        }

        v184 = v413;
      }

LABEL_98:
      v346 = sub_1B4074();
      v347 = *(v178 + 8);
      v347(v183, v179);
      v347(v184, v179);
      if ((v346 & 1) == 0)
      {
        goto LABEL_143;
      }

      v348 = v430;
      if (v425 == v424)
      {
        v349 = v172 == v176;
        sub_7A218(v430);
        return v349 & 1;
      }

      goto LABEL_144;
    case 5u:
      v118 = v430;
      sub_7A1B4(v430, v97);
      v270 = *v97;
      v269 = v97[1];
      v271 = *(sub_2B0C(&qword_22A140, &qword_1BFD60) + 48);
      v122 = v97 + v271;
      v272 = v427;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        v319 = v428;
        v320 = v429;
        goto LABEL_67;
      }

      v273 = v272[1];
      v426 = *v272;
      v275 = v428;
      v274 = v429;
      v276 = *(v429 + 32);
      v276(v414, v122, v428);
      v277 = v272 + v271;
      v278 = v387;
      v276(v387, v277, v275);
      if (v270 == v426 && v269 == v273)
      {

LABEL_102:
        v351 = v414;
        v349 = sub_1B4074();
        v352 = *(v274 + 8);
        v352(v278, v275);
        v352(v351, v275);
        goto LABEL_107;
      }

      v350 = sub_1B5604();

      if (v350)
      {
        goto LABEL_102;
      }

      v376 = *(v274 + 8);
      v376(v278, v275);
      v376(v414, v275);
      goto LABEL_143;
    case 6u:
      sub_7A1B4(v430, v94);
      v289 = *v94;
      v290 = v94[1];
      v291 = *(sub_2B0C(&qword_22A140, &qword_1BFD60) + 48);
      v122 = v94 + v291;
      v292 = v427;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_72;
      }

      v294 = *v292;
      v293 = v292[1];
      v295 = v429;
      v296 = *(v429 + 32);
      v297 = v122;
      v298 = v428;
      v296(v415, v297, v428);
      v299 = v292 + v291;
      v300 = v388;
      v296(v388, v299, v298);
      if (v289 == v294 && v290 == v293)
      {

LABEL_109:
        v356 = v415;
        v349 = sub_1B4074();
        v357 = *(v295 + 8);
        v357(v300, v298);
        v357(v356, v298);
        goto LABEL_107;
      }

      v355 = sub_1B5604();

      if (v355)
      {
        goto LABEL_109;
      }

      v378 = *(v295 + 8);
      v378(v300, v298);
      v378(v415, v298);
      goto LABEL_143;
    case 7u:
      v118 = v430;
      v244 = v400;
      sub_7A1B4(v430, v400);
      v245 = *v244;
      v246 = v244[1];
      v247 = *(sub_2B0C(&qword_22A140, &qword_1BFD60) + 48);
      v122 = v244 + v247;
      v248 = v427;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_66;
      }

      v250 = *v248;
      v249 = v248[1];
      v138 = v429;
      v251 = *(v429 + 32);
      v252 = v122;
      v128 = v428;
      v251(v416, v252, v428);
      v253 = v248 + v247;
      v142 = v389;
      v251(v389, v253, v128);
      if (v245 == v250 && v246 == v249)
      {

LABEL_95:
        v143 = v416;
        goto LABEL_105;
      }

      v344 = sub_1B5604();

      if (v344)
      {
        goto LABEL_95;
      }

      v375 = *(v138 + 8);
      v375(v142, v128);
      v375(v416, v128);
      goto LABEL_143;
    case 8u:
      v321 = v401;
      sub_7A1B4(v430, v401);
      v322 = *v321;
      v323 = v321[1];
      v324 = sub_2B0C(&qword_22A148, &qword_1BFD68);
      v325 = *(v324 + 48);
      v122 = v321 + v325;
      v326 = *(v324 + 64);
      v327 = *(v321 + v326);
      v328 = v427;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
LABEL_72:
        v319 = v428;
        v320 = v429;
        v118 = v430;
        goto LABEL_67;
      }

      LODWORD(v426) = v327;
      v329 = v122;
      v331 = *v328;
      v330 = v328[1];
      LODWORD(v425) = *(v328 + v326);
      v332 = v323;
      v179 = v428;
      v215 = v429;
      v333 = *(v429 + 32);
      v333(v417, v329, v428);
      v334 = v328 + v325;
      v219 = v390;
      v333(v390, v334, v179);
      if (v322 == v331 && v332 == v330)
      {
      }

      else
      {
        v362 = sub_1B5604();

        if ((v362 & 1) == 0)
        {
          v369 = *(v215 + 8);
          v369(v219, v179);
          v370 = v417;
LABEL_141:
          v369(v370, v179);
          goto LABEL_143;
        }
      }

      v243 = v417;
LABEL_115:
      v363 = sub_1B4074();
      v364 = *(v215 + 8);
      v364(v219, v179);
      v364(v243, v179);
      if ((v363 & 1) == 0)
      {
        goto LABEL_143;
      }

      v348 = v430;
      if (v426 == 2)
      {
        if (v425 != 2)
        {
          goto LABEL_144;
        }

        goto LABEL_121;
      }

      if (v425 != 2 && ((v425 ^ v426) & 1) == 0)
      {
LABEL_121:
        sub_7A218(v430);
        v349 = 1;
        return v349 & 1;
      }

      goto LABEL_144;
    case 9u:
      v118 = v430;
      v195 = v402;
      sub_7A1B4(v430, v402);
      v196 = *v195;
      v197 = v195[1];
      v198 = *(sub_2B0C(&qword_22A140, &qword_1BFD60) + 48);
      v122 = v195 + v198;
      v199 = v427;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_66;
      }

      v201 = *v199;
      v200 = v199[1];
      v138 = v429;
      v202 = *(v429 + 32);
      v203 = v122;
      v128 = v428;
      v202(v418, v203, v428);
      v204 = v199 + v198;
      v142 = v391;
      v202(v391, v204, v128);
      if (v196 == v201 && v197 == v200)
      {

        v143 = v418;
        goto LABEL_105;
      }

      v340 = sub_1B5604();

      if (v340)
      {
        v143 = v418;
        goto LABEL_105;
      }

      v372 = *(v138 + 8);
      v372(v142, v128);
      v372(v418, v128);
      goto LABEL_143;
    case 0xAu:
      v118 = v430;
      v301 = v403;
      sub_7A1B4(v430, v403);
      v302 = *v301;
      v303 = v301[1];
      v304 = sub_2B0C(&qword_22A138, &qword_1C59F0);
      v305 = *(v304 + 48);
      v122 = v301 + v305;
      v306 = *(v304 + 64);
      v307 = *(v301 + v306);
      v308 = v427;
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_66;
      }

      v309 = v301 + v305;
      v311 = *v308;
      v310 = v308[1];
      v312 = *(v308 + v306);
      v313 = v428;
      v314 = v429;
      v315 = v302;
      v316 = *(v429 + 32);
      v316(v419, v309, v428);
      v317 = v308 + v305;
      v318 = v392;
      v316(v392, v317, v313);
      if (v315 == v311 && v303 == v310)
      {
      }

      else
      {
        v358 = sub_1B5604();

        if ((v358 & 1) == 0)
        {
          v379 = *(v314 + 8);
          v379(v318, v313);
          v379(v419, v313);
          goto LABEL_143;
        }
      }

      v359 = v419;
      v360 = sub_1B4074();
      v361 = *(v314 + 8);
      v361(v318, v313);
      v361(v359, v313);
      if ((v360 & 1) == 0)
      {
        goto LABEL_143;
      }

      v349 = v307 == v312;
      goto LABEL_107;
    case 0xBu:
      v118 = v430;
      v154 = v404;
      sub_7A1B4(v430, v404);
      v155 = *v154;
      v156 = v154[1];
      v157 = *(sub_2B0C(&qword_22A140, &qword_1BFD60) + 48);
      v122 = v154 + v157;
      v158 = v427;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_66;
      }

      v160 = *v158;
      v159 = v158[1];
      v138 = v429;
      v161 = *(v429 + 32);
      v162 = v122;
      v128 = v428;
      v161(v420, v162, v428);
      v163 = v158 + v157;
      v142 = v393;
      v161(v393, v163, v128);
      if (v155 == v160 && v156 == v159)
      {

        v143 = v420;
        goto LABEL_105;
      }

      v337 = sub_1B5604();

      if (v337)
      {
        v143 = v420;
        goto LABEL_105;
      }

      v368 = *(v138 + 8);
      v368(v142, v128);
      v368(v420, v128);
      goto LABEL_143;
    case 0xCu:
      v118 = v430;
      v185 = v405;
      sub_7A1B4(v430, v405);
      v186 = *v185;
      v187 = v185[1];
      v188 = *(sub_2B0C(&qword_22A140, &qword_1BFD60) + 48);
      v122 = v185 + v188;
      v189 = v427;
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_66;
      }

      v191 = *v189;
      v190 = v189[1];
      v138 = v429;
      v192 = *(v429 + 32);
      v193 = v122;
      v128 = v428;
      v192(v421, v193, v428);
      v194 = v189 + v188;
      v142 = v394;
      v192(v394, v194, v128);
      if (v186 == v191 && v187 == v190)
      {

        v143 = v421;
        goto LABEL_105;
      }

      v339 = sub_1B5604();

      if (v339)
      {
        v143 = v421;
        goto LABEL_105;
      }

      v371 = *(v138 + 8);
      v371(v142, v128);
      v371(v421, v128);
      goto LABEL_143;
    case 0xDu:
      v118 = v430;
      v279 = v406;
      sub_7A1B4(v430, v406);
      v280 = *v279;
      v281 = v279[1];
      v282 = *(sub_2B0C(&qword_22A140, &qword_1BFD60) + 48);
      v122 = v279 + v282;
      v283 = v427;
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_66;
      }

      v285 = *v283;
      v284 = v283[1];
      v138 = v429;
      v286 = *(v429 + 32);
      v287 = v122;
      v128 = v428;
      v286(v422, v287, v428);
      v288 = v283 + v282;
      v142 = v395;
      v286(v395, v288, v128);
      if (v280 == v285 && v281 == v284)
      {

LABEL_104:
        v143 = v422;
        goto LABEL_105;
      }

      v353 = sub_1B5604();

      if (v353)
      {
        goto LABEL_104;
      }

      v377 = *(v138 + 8);
      v377(v142, v128);
      v377(v422, v128);
      goto LABEL_143;
    case 0xEu:
      v118 = v430;
      v144 = v407;
      sub_7A1B4(v430, v407);
      v145 = *v144;
      v146 = v144[1];
      v147 = *(sub_2B0C(&qword_22A140, &qword_1BFD60) + 48);
      v122 = v144 + v147;
      v148 = v427;
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        goto LABEL_66;
      }

      v150 = *v148;
      v149 = v148[1];
      v138 = v429;
      v151 = *(v429 + 32);
      v152 = v122;
      v128 = v428;
      v151(v423, v152, v428);
      v153 = v148 + v147;
      v142 = v396;
      v151(v396, v153, v128);
      if (v145 == v150 && v146 == v149)
      {

        v143 = v423;
        goto LABEL_105;
      }

      v336 = sub_1B5604();

      if (v336)
      {
        v143 = v423;
        goto LABEL_105;
      }

      v367 = *(v138 + 8);
      v367(v142, v128);
      v367(v423, v128);
      goto LABEL_143;
    case 0xFu:
      v118 = v430;
      v220 = v408;
      sub_7A1B4(v430, v408);
      v221 = *v220;
      v222 = v220[1];
      v223 = *(sub_2B0C(&qword_22A140, &qword_1BFD60) + 48);
      v122 = v220 + v223;
      v224 = v427;
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        goto LABEL_66;
      }

      v226 = *v224;
      v225 = v224[1];
      v138 = v429;
      v227 = *(v429 + 32);
      v228 = v122;
      v128 = v428;
      v227(v424, v228, v428);
      v229 = v224 + v223;
      v142 = v397;
      v227(v397, v229, v128);
      if (v221 == v226 && v222 == v225)
      {

        v143 = v424;
        goto LABEL_105;
      }

      v342 = sub_1B5604();

      if (v342)
      {
        v143 = v424;
        goto LABEL_105;
      }

      v374 = *(v138 + 8);
      v374(v142, v128);
      v374(v424, v128);
      goto LABEL_143;
    case 0x10u:
      v118 = v430;
      v131 = v409;
      sub_7A1B4(v430, v409);
      v132 = *v131;
      v133 = v131[1];
      v134 = *(sub_2B0C(&qword_22A140, &qword_1BFD60) + 48);
      v122 = v131 + v134;
      v135 = v427;
      if (swift_getEnumCaseMultiPayload() != 16)
      {
        goto LABEL_66;
      }

      v137 = *v135;
      v136 = v135[1];
      v138 = v429;
      v139 = *(v429 + 32);
      v140 = v122;
      v128 = v428;
      v139(v425, v140, v428);
      v141 = v135 + v134;
      v142 = v398;
      v139(v398, v141, v128);
      if (v132 == v137 && v133 == v136)
      {

        v143 = v425;
LABEL_105:
        v349 = sub_1B4074();
        v354 = *(v138 + 8);
        v354(v142, v128);
        goto LABEL_106;
      }

      v335 = sub_1B5604();

      if (v335)
      {
        v143 = v425;
        goto LABEL_105;
      }

      v366 = *(v138 + 8);
      v366(v142, v128);
      v366(v425, v128);
LABEL_143:
      v348 = v430;
LABEL_144:
      sub_7A218(v348);
LABEL_145:
      v349 = 0;
      return v349 & 1;
    default:
      v118 = v430;
      sub_7A1B4(v430, v111);
      v119 = *v111;
      v120 = v111[1];
      v121 = *(sub_2B0C(&qword_22A140, &qword_1BFD60) + 48);
      v122 = v111 + v121;
      v123 = v427;
      if (swift_getEnumCaseMultiPayload())
      {
LABEL_66:
        v319 = v428;
        v320 = v429;
LABEL_67:
        (*(v320 + 8))(v122, v319);

        sub_7E61C(v118);
        goto LABEL_145;
      }

      v125 = *v123;
      v124 = v123[1];
      v126 = v429;
      v127 = *(v429 + 32);
      v128 = v428;
      v127(v399, v111 + v121, v428);
      v129 = v123 + v121;
      v130 = v382;
      v127(v382, v129, v128);
      if (v119 == v125 && v120 == v124)
      {
      }

      else
      {
        v365 = sub_1B5604();

        if ((v365 & 1) == 0)
        {
          v380 = *(v126 + 8);
          v380(v130, v128);
          v380(v399, v128);
          goto LABEL_143;
        }
      }

      v143 = v399;
      v349 = sub_1B4074();
      v354 = *(v126 + 8);
      v354(v130, v128);
LABEL_106:
      v354(v143, v128);
LABEL_107:
      sub_7A218(v430);
      return v349 & 1;
  }
}