uint64_t sub_10020DE68()
{
  v1 = *(*v0 + 48);
  *(*v0 + 960) = v1;
  if (v1)
  {
    v2 = sub_100212094;
  }

  else
  {
    v2 = sub_10020DFA4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10020DFA4()
{
  v1 = *(v0 + 952);
  v2 = *(v0 + 416);
  v3 = *(v0 + 424);

  v597 = *(v0 + 144);
  v595 = *(v0 + 152);

  *(v0 + 975) = 1;
  v4 = type metadata accessor for PDF417ParsedData();
  v5 = *(v4 - 8);
  v529 = *(v5 + 56);
  v529(v3, 1, 1, v4);
  sub_10000BBC4(v3, v2, &qword_10083D6A0, &unk_1006DB700);
  v6 = *(v5 + 48);
  v7 = v6(v2, 1, v4);
  v8 = *(v0 + 416);
  if (v7 == 1)
  {
    sub_10000BE18(*(v0 + 416), &qword_10083D6A0, &unk_1006DB700);
    v584 = 0;
    v591 = 0;
  }

  else
  {
    v9 = PDF417ParsedData.firstName.getter();
    v584 = v10;
    v591 = v9;
    (*(v5 + 8))(v8, v4);
  }

  v11 = *(v0 + 408);
  sub_10000BBC4(*(v0 + 424), v11, &qword_10083D6A0, &unk_1006DB700);
  v12 = v6(v11, 1, v4);
  v13 = *(v0 + 408);
  if (v12 == 1)
  {
    sub_10000BE18(*(v0 + 408), &qword_10083D6A0, &unk_1006DB700);
    v576 = 0;
    v577 = 0;
  }

  else
  {
    v14 = PDF417ParsedData.middleName.getter();
    v576 = v15;
    v577 = v14;
    (*(v5 + 8))(v13, v4);
  }

  v16 = *(v0 + 400);
  sub_10000BBC4(*(v0 + 424), v16, &qword_10083D6A0, &unk_1006DB700);
  v17 = v6(v16, 1, v4);
  v18 = *(v0 + 400);
  if (v17 == 1)
  {
    sub_10000BE18(*(v0 + 400), &qword_10083D6A0, &unk_1006DB700);
    v574 = 0;
    v575 = 0;
  }

  else
  {
    v19 = PDF417ParsedData.lastName.getter();
    v574 = v20;
    v575 = v19;
    (*(v5 + 8))(v18, v4);
  }

  v21 = *(v0 + 392);
  sub_10000BBC4(*(v0 + 424), v21, &qword_10083D6A0, &unk_1006DB700);
  v22 = v6(v21, 1, v4);
  v23 = *(v0 + 392);
  if (v22 == 1)
  {
    sub_10000BE18(*(v0 + 392), &qword_10083D6A0, &unk_1006DB700);
    v573 = 0;
    v572 = 0;
  }

  else
  {
    v573 = PDF417ParsedData.street1.getter();
    v572 = v24;
    (*(v5 + 8))(v23, v4);
  }

  v25 = *(v0 + 384);
  sub_10000BBC4(*(v0 + 424), v25, &qword_10083D6A0, &unk_1006DB700);
  v26 = v6(v25, 1, v4);
  v27 = *(v0 + 384);
  if (v26 == 1)
  {
    sub_10000BE18(*(v0 + 384), &qword_10083D6A0, &unk_1006DB700);
    v564 = 0;
    v571 = 0;
  }

  else
  {
    v28 = PDF417ParsedData.street2.getter();
    v564 = v29;
    v571 = v28;
    (*(v5 + 8))(v27, v4);
  }

  v30 = *(v0 + 376);
  sub_10000BBC4(*(v0 + 424), v30, &qword_10083D6A0, &unk_1006DB700);
  v31 = v6(v30, 1, v4);
  v32 = *(v0 + 376);
  if (v31 == 1)
  {
    sub_10000BE18(*(v0 + 376), &qword_10083D6A0, &unk_1006DB700);
    v552 = 0;
    v558 = 0;
  }

  else
  {
    v33 = PDF417ParsedData.city.getter();
    v552 = v34;
    v558 = v33;
    (*(v5 + 8))(v32, v4);
  }

  v35 = *(v0 + 368);
  sub_10000BBC4(*(v0 + 424), v35, &qword_10083D6A0, &unk_1006DB700);
  v36 = v6(v35, 1, v4);
  v37 = *(v0 + 368);
  if (v36 == 1)
  {
    sub_10000BE18(*(v0 + 368), &qword_10083D6A0, &unk_1006DB700);
    v539 = 0;
    v545 = 0;
  }

  else
  {
    v38 = PDF417ParsedData.state.getter();
    v539 = v39;
    v545 = v38;
    (*(v5 + 8))(v37, v4);
  }

  v40 = *(v0 + 360);
  sub_10000BBC4(*(v0 + 424), v40, &qword_10083D6A0, &unk_1006DB700);
  v41 = v6(v40, 1, v4);
  v42 = *(v0 + 360);
  if (v41 == 1)
  {
    sub_10000BE18(*(v0 + 360), &qword_10083D6A0, &unk_1006DB700);
    v532 = 0;
    v533 = 0;
  }

  else
  {
    v43 = PDF417ParsedData.postalCode.getter();
    v532 = v44;
    v533 = v43;
    (*(v5 + 8))(v42, v4);
  }

  v45 = *(v0 + 352);
  sub_10000BBC4(*(v0 + 424), v45, &qword_10083D6A0, &unk_1006DB700);
  v46 = v6(v45, 1, v4);
  v47 = *(v0 + 352);
  if (v46 == 1)
  {
    sub_10000BE18(*(v0 + 352), &qword_10083D6A0, &unk_1006DB700);
    v531 = 0;
    v48 = 0;
  }

  else
  {
    v531 = PDF417ParsedData.country.getter();
    v48 = v49;
    (*(v5 + 8))(v47, v4);
  }

  v50 = *(v0 + 344);
  sub_10000BBC4(*(v0 + 424), v50, &qword_10083D6A0, &unk_1006DB700);
  v51 = v6(v50, 1, v4);
  v52 = *(v0 + 344);
  if (v51 == 1)
  {
    sub_10000BE18(v52, &qword_10083D6A0, &unk_1006DB700);
    v53 = 0;
    v54 = 0;
  }

  else
  {
    v53 = PDF417ParsedData.dob.getter();
    v54 = v55;
    (*(v5 + 8))(v52, v4);
  }

  v56 = *(v0 + 336);
  sub_10000BBC4(*(v0 + 424), v56, &qword_10083D6A0, &unk_1006DB700);
  v596 = v6;
  v57 = v6(v56, 1, v4);
  v58 = *(v0 + 424);
  v59 = *(v0 + 336);
  v530 = v4;
  if (v57 == 1)
  {
    sub_10000BE18(v58, &qword_10083D6A0, &unk_1006DB700);
    sub_10000BE18(v59, &qword_10083D6A0, &unk_1006DB700);
    v60 = 0;
    v61 = 0;
  }

  else
  {
    v62 = v4;
    v60 = PDF417ParsedData.issuer.getter();
    v61 = v63;
    sub_10000BE18(v58, &qword_10083D6A0, &unk_1006DB700);
    (*(v5 + 8))(v59, v62);
  }

  v64 = *(v0 + 936);
  v66 = *(v64 + 2);
  v65 = *(v64 + 3);
  v67 = v66 + 1;
  if (v66 >= v65 >> 1)
  {
LABEL_285:
    v64 = sub_1003C5D2C((v65 > 1), v67, 1, v64);
  }

  v68 = *(v0 + 983);
  *(v64 + 2) = v67;
  v69 = &v64[336 * v66];
  v69[32] = 6;
  *(v69 + 40) = 0u;
  *(v69 + 56) = 0u;
  *(v69 + 72) = 0u;
  *(v69 + 88) = 0u;
  *(v69 + 104) = 0u;
  *(v69 + 15) = 0;
  *(v69 + 16) = v591;
  *(v69 + 17) = v584;
  *(v69 + 18) = v577;
  *(v69 + 19) = v576;
  *(v69 + 20) = v575;
  *(v69 + 21) = v574;
  *(v69 + 22) = v573;
  *(v69 + 23) = v572;
  *(v69 + 24) = v571;
  *(v69 + 25) = v564;
  *(v69 + 26) = v558;
  *(v69 + 27) = v552;
  *(v69 + 28) = v545;
  *(v69 + 29) = v539;
  *(v69 + 30) = v533;
  *(v69 + 31) = v532;
  *(v69 + 32) = v531;
  *(v69 + 33) = v48;
  *(v69 + 34) = v53;
  *(v69 + 35) = v54;
  *(v69 + 36) = v60;
  *(v69 + 37) = v61;
  *(v69 + 20) = 0u;
  *(v69 + 21) = 0u;
  *(v69 + 19) = 0u;
  *(v69 + 44) = v597;
  *(v69 + 45) = v595;
  v70 = v0 + 144;
  sub_1001FE434(v68, (v0 + 975));
  v71 = *(v0 + 912);
  v72 = *(v0 + 928) + 1;
  if (v72 == v71)
  {
    v73 = v64;
LABEL_37:

    v74 = *(v0 + 8);

    return v74(v73);
  }

  v571 = (v0 + 968);
  v576 = (v0 + 984);
  v575 = (v0 + 992);
  v573 = (v0 + 976);
  v574 = (v0 + 1000);
  v76 = *(v0 + 920);
  v77 = (v5 + 8);
  v572 = 3;
  v78 = v596;
  v73 = v64;
  v595 = v77;
LABEL_41:
  v597 = v76;
  while (1)
  {
    while (1)
    {
      *(v0 + 936) = v73;
      *(v0 + 928) = v72;
      *(v0 + 920) = v76;
      v79 = *(*(v0 + 200) + v72 + 32);
      if (v79 > 4)
      {
        break;
      }

      if (*(*(v0 + 200) + v72 + 32))
      {
        if (v79 == 1)
        {
          v94 = *(v0 + 328);
          sub_10000BBC4(*(v0 + 208), v94, &qword_10083D6A8, &qword_1006DB710);
          v95 = type metadata accessor for PDF417Data();
          v96 = *(v95 - 8);
          v97 = (*(v96 + 48))(v94, 1, v95);
          v98 = *(v0 + 328);
          if (v97 == 1)
          {
            sub_10000BE18(*(v0 + 328), &qword_10083D6A8, &qword_1006DB710);
            v586 = 0;
            v593 = 0;
          }

          else
          {
            v226 = PDF417Data.rawData.getter();
            v586 = v227;
            v593 = v226;
            (*(v96 + 8))(v98, v95);
          }

          v228 = *(v0 + 808);
          v229 = *(v0 + 800);
          v529(v228, 1, 1, v530);
          sub_10000BBC4(v228, v229, &qword_10083D6A0, &unk_1006DB700);
          v230 = v78(v229, 1, v530);
          v231 = *(v0 + 800);
          if (v230 == 1)
          {
            sub_10000BE18(*(v0 + 800), &qword_10083D6A0, &unk_1006DB700);
            v581 = 0;
            v568 = 0;
          }

          else
          {
            v581 = PDF417ParsedData.firstName.getter();
            v568 = v232;
            (*v77)(v231, v530);
          }

          v233 = *(v0 + 792);
          sub_10000BBC4(*(v0 + 808), v233, &qword_10083D6A0, &unk_1006DB700);
          v234 = v78(v233, 1, v530);
          v235 = *(v0 + 792);
          if (v234 == 1)
          {
            sub_10000BE18(*(v0 + 792), &qword_10083D6A0, &unk_1006DB700);
            v555 = 0;
            v561 = 0;
          }

          else
          {
            v236 = PDF417ParsedData.middleName.getter();
            v555 = v237;
            v561 = v236;
            (*v77)(v235, v530);
          }

          v238 = *(v0 + 784);
          sub_10000BBC4(*(v0 + 808), v238, &qword_10083D6A0, &unk_1006DB700);
          v239 = v78(v238, 1, v530);
          v240 = *(v0 + 784);
          if (v239 == 1)
          {
            sub_10000BE18(*(v0 + 784), &qword_10083D6A0, &unk_1006DB700);
            v542 = 0;
            v548 = 0;
          }

          else
          {
            v241 = PDF417ParsedData.lastName.getter();
            v542 = v242;
            v548 = v241;
            (*v77)(v240, v530);
          }

          v243 = *(v0 + 776);
          sub_10000BBC4(*(v0 + 808), v243, &qword_10083D6A0, &unk_1006DB700);
          v244 = v78(v243, 1, v530);
          v245 = *(v0 + 776);
          if (v244 == 1)
          {
            sub_10000BE18(*(v0 + 776), &qword_10083D6A0, &unk_1006DB700);
            v532 = 0;
            v536 = 0;
          }

          else
          {
            v246 = PDF417ParsedData.street1.getter();
            v532 = v247;
            v536 = v246;
            (*v77)(v245, v530);
          }

          v248 = *(v0 + 768);
          sub_10000BBC4(*(v0 + 808), v248, &qword_10083D6A0, &unk_1006DB700);
          v249 = v78(v248, 1, v530);
          v250 = *(v0 + 768);
          if (v249 == 1)
          {
            sub_10000BE18(*(v0 + 768), &qword_10083D6A0, &unk_1006DB700);
            v531 = 0;
            v526 = 0;
          }

          else
          {
            v531 = PDF417ParsedData.street2.getter();
            v526 = v251;
            (*v77)(v250, v530);
          }

          v252 = *(v0 + 760);
          sub_10000BBC4(*(v0 + 808), v252, &qword_10083D6A0, &unk_1006DB700);
          v253 = v78(v252, 1, v530);
          v254 = *(v0 + 760);
          if (v253 == 1)
          {
            sub_10000BE18(*(v0 + 760), &qword_10083D6A0, &unk_1006DB700);
            v516 = 0;
            v521 = 0;
          }

          else
          {
            v255 = PDF417ParsedData.city.getter();
            v516 = v256;
            v521 = v255;
            (*v77)(v254, v530);
          }

          v257 = *(v0 + 752);
          sub_10000BBC4(*(v0 + 808), v257, &qword_10083D6A0, &unk_1006DB700);
          v258 = v78(v257, 1, v530);
          v259 = *(v0 + 752);
          if (v258 == 1)
          {
            sub_10000BE18(*(v0 + 752), &qword_10083D6A0, &unk_1006DB700);
            v506 = 0;
            v511 = 0;
          }

          else
          {
            v260 = PDF417ParsedData.state.getter();
            v506 = v261;
            v511 = v260;
            (*v77)(v259, v530);
          }

          v262 = *(v0 + 744);
          sub_10000BBC4(*(v0 + 808), v262, &qword_10083D6A0, &unk_1006DB700);
          v263 = v78(v262, 1, v530);
          v264 = *(v0 + 744);
          if (v263 == 1)
          {
            sub_10000BE18(*(v0 + 744), &qword_10083D6A0, &unk_1006DB700);
            v496 = 0;
            v501 = 0;
          }

          else
          {
            v265 = PDF417ParsedData.postalCode.getter();
            v496 = v266;
            v501 = v265;
            (*v77)(v264, v530);
          }

          v267 = *(v0 + 736);
          sub_10000BBC4(*(v0 + 808), v267, &qword_10083D6A0, &unk_1006DB700);
          v268 = v78(v267, 1, v530);
          v269 = *(v0 + 736);
          if (v268 == 1)
          {
            sub_10000BE18(*(v0 + 736), &qword_10083D6A0, &unk_1006DB700);
            v486 = 0;
            v491 = 0;
          }

          else
          {
            v270 = PDF417ParsedData.country.getter();
            v486 = v271;
            v491 = v270;
            (*v77)(v269, v530);
          }

          v272 = *(v0 + 728);
          sub_10000BBC4(*(v0 + 808), v272, &qword_10083D6A0, &unk_1006DB700);
          v273 = v596(v272, 1, v530);
          v274 = *(v0 + 728);
          v275 = v73;
          if (v273 == 1)
          {
            sub_10000BE18(*(v0 + 728), &qword_10083D6A0, &unk_1006DB700);
            v483 = 0;
            v276 = 0;
          }

          else
          {
            v483 = PDF417ParsedData.dob.getter();
            v276 = v277;
            (*v595)(v274, v530);
          }

          v278 = *(v0 + 720);
          sub_10000BBC4(*(v0 + 808), v278, &qword_10083D6A0, &unk_1006DB700);
          v279 = v596(v278, 1, v530);
          v280 = *(v0 + 808);
          v281 = *(v0 + 720);
          if (v279 == 1)
          {
            sub_10000BE18(*(v0 + 808), &qword_10083D6A0, &unk_1006DB700);
            sub_10000BE18(v281, &qword_10083D6A0, &unk_1006DB700);
            v282 = 0;
            v283 = 0;
          }

          else
          {
            v282 = PDF417ParsedData.issuer.getter();
            v283 = v284;
            sub_10000BE18(v280, &qword_10083D6A0, &unk_1006DB700);
            (*v595)(v281, v530);
          }

          v73 = v275;
          v286 = *(v275 + 2);
          v285 = *(v275 + 3);
          v76 = v597;
          if (v286 >= v285 >> 1)
          {
            v350 = sub_1003C5D2C((v285 > 1), v286 + 1, 1, v275);
            v76 = v597;
            v73 = v350;
          }

          *(v73 + 2) = v286 + 1;
          v223 = &v73[336 * v286];
          v223[32] = 0;
          v287 = *v575;
          *(v223 + 9) = *(v0 + 995);
          *(v223 + 33) = v287;
          *(v223 + 5) = v593;
          *(v223 + 6) = v586;
          v225 = 0uLL;
          *(v223 + 56) = 0u;
          *(v223 + 72) = 0u;
          *(v223 + 88) = 0u;
          *(v223 + 104) = 0u;
          *(v223 + 15) = 0;
          *(v223 + 16) = v581;
          *(v223 + 17) = v568;
          *(v223 + 18) = v561;
          *(v223 + 19) = v555;
          *(v223 + 20) = v548;
          *(v223 + 21) = v542;
          *(v223 + 22) = v536;
          *(v223 + 23) = v532;
          *(v223 + 24) = v531;
          *(v223 + 25) = v526;
          *(v223 + 26) = v521;
          *(v223 + 27) = v516;
          *(v223 + 28) = v511;
          *(v223 + 29) = v506;
          *(v223 + 30) = v501;
          *(v223 + 31) = v496;
          *(v223 + 32) = v491;
          *(v223 + 33) = v486;
          *(v223 + 34) = v483;
          *(v223 + 35) = v276;
          *(v223 + 36) = v282;
          *(v223 + 37) = v283;
        }

        else
        {
          if (v79 != 2)
          {
            goto LABEL_42;
          }

          v83 = *(v0 + 320);
          sub_10000BBC4(*(v0 + 208), v83, &qword_10083D6A8, &qword_1006DB710);
          v84 = type metadata accessor for PDF417Data();
          v85 = *(v84 - 8);
          v86 = (*(v85 + 48))(v83, 1, v84);
          v87 = *(v0 + 712);
          if (v86 == 1)
          {
            sub_10000BE18(*(v0 + 320), &qword_10083D6A8, &qword_1006DB710);
            v88 = v530;
            v529(v87, 1, 1, v530);
          }

          else
          {
            v163 = *(v0 + 320);
            PDF417Data.parsedData.getter();
            (*(v85 + 8))(v163, v84);
            v88 = v530;
          }

          v164 = *(v0 + 704);
          sub_10000BBC4(*(v0 + 712), v164, &qword_10083D6A0, &unk_1006DB700);
          v165 = v78(v164, 1, v88);
          v166 = *(v0 + 704);
          if (v165 == 1)
          {
            sub_10000BE18(*(v0 + 704), &qword_10083D6A0, &unk_1006DB700);
            v588 = 0;
            v594 = 0;
          }

          else
          {
            v167 = PDF417ParsedData.firstName.getter();
            v588 = v168;
            v594 = v167;
            (*v77)(v166, v88);
          }

          v169 = *(v0 + 696);
          sub_10000BBC4(*(v0 + 712), v169, &qword_10083D6A0, &unk_1006DB700);
          v170 = v78(v169, 1, v88);
          v171 = *(v0 + 696);
          if (v170 == 1)
          {
            sub_10000BE18(*(v0 + 696), &qword_10083D6A0, &unk_1006DB700);
            v580 = 0;
            v567 = 0;
          }

          else
          {
            v580 = PDF417ParsedData.middleName.getter();
            v567 = v172;
            (*v77)(v171, v88);
          }

          v173 = *(v0 + 688);
          sub_10000BBC4(*(v0 + 712), v173, &qword_10083D6A0, &unk_1006DB700);
          v174 = v78(v173, 1, v88);
          v175 = *(v0 + 688);
          if (v174 == 1)
          {
            sub_10000BE18(*(v0 + 688), &qword_10083D6A0, &unk_1006DB700);
            v554 = 0;
            v560 = 0;
          }

          else
          {
            v176 = PDF417ParsedData.lastName.getter();
            v554 = v177;
            v560 = v176;
            (*v77)(v175, v88);
          }

          v178 = *(v0 + 680);
          sub_10000BBC4(*(v0 + 712), v178, &qword_10083D6A0, &unk_1006DB700);
          v179 = v78(v178, 1, v88);
          v180 = *(v0 + 680);
          if (v179 == 1)
          {
            sub_10000BE18(*(v0 + 680), &qword_10083D6A0, &unk_1006DB700);
            v541 = 0;
            v547 = 0;
          }

          else
          {
            v181 = PDF417ParsedData.street1.getter();
            v541 = v182;
            v547 = v181;
            (*v77)(v180, v88);
          }

          v183 = *(v0 + 672);
          sub_10000BBC4(*(v0 + 712), v183, &qword_10083D6A0, &unk_1006DB700);
          v184 = v78(v183, 1, v88);
          v185 = *(v0 + 672);
          if (v184 == 1)
          {
            sub_10000BE18(*(v0 + 672), &qword_10083D6A0, &unk_1006DB700);
            v532 = 0;
            v535 = 0;
          }

          else
          {
            v186 = PDF417ParsedData.street2.getter();
            v532 = v187;
            v535 = v186;
            (*v77)(v185, v88);
          }

          v188 = *(v0 + 664);
          sub_10000BBC4(*(v0 + 712), v188, &qword_10083D6A0, &unk_1006DB700);
          v189 = v78(v188, 1, v88);
          v190 = *(v0 + 664);
          if (v189 == 1)
          {
            sub_10000BE18(*(v0 + 664), &qword_10083D6A0, &unk_1006DB700);
            v531 = 0;
            v525 = 0;
          }

          else
          {
            v531 = PDF417ParsedData.city.getter();
            v525 = v191;
            (*v77)(v190, v88);
          }

          v192 = *(v0 + 656);
          sub_10000BBC4(*(v0 + 712), v192, &qword_10083D6A0, &unk_1006DB700);
          v193 = v78(v192, 1, v88);
          v194 = *(v0 + 656);
          if (v193 == 1)
          {
            sub_10000BE18(*(v0 + 656), &qword_10083D6A0, &unk_1006DB700);
            v515 = 0;
            v520 = 0;
          }

          else
          {
            v195 = PDF417ParsedData.state.getter();
            v515 = v196;
            v520 = v195;
            (*v77)(v194, v88);
          }

          v197 = *(v0 + 648);
          sub_10000BBC4(*(v0 + 712), v197, &qword_10083D6A0, &unk_1006DB700);
          v198 = v78(v197, 1, v88);
          v199 = *(v0 + 648);
          if (v198 == 1)
          {
            sub_10000BE18(*(v0 + 648), &qword_10083D6A0, &unk_1006DB700);
            v505 = 0;
            v510 = 0;
          }

          else
          {
            v200 = PDF417ParsedData.postalCode.getter();
            v505 = v201;
            v510 = v200;
            (*v77)(v199, v88);
          }

          v202 = *(v0 + 640);
          sub_10000BBC4(*(v0 + 712), v202, &qword_10083D6A0, &unk_1006DB700);
          v203 = v78(v202, 1, v88);
          v204 = *(v0 + 640);
          if (v203 == 1)
          {
            sub_10000BE18(*(v0 + 640), &qword_10083D6A0, &unk_1006DB700);
            v495 = 0;
            v500 = 0;
          }

          else
          {
            v205 = PDF417ParsedData.country.getter();
            v495 = v206;
            v500 = v205;
            (*v77)(v204, v88);
          }

          v207 = *(v0 + 632);
          sub_10000BBC4(*(v0 + 712), v207, &qword_10083D6A0, &unk_1006DB700);
          v208 = v78(v207, 1, v88);
          v209 = *(v0 + 632);
          v210 = v73;
          if (v208 == 1)
          {
            sub_10000BE18(*(v0 + 632), &qword_10083D6A0, &unk_1006DB700);
            v490 = 0;
            v211 = 0;
          }

          else
          {
            v490 = PDF417ParsedData.dob.getter();
            v211 = v212;
            (*v595)(v209, v88);
          }

          v213 = *(v0 + 624);
          sub_10000BBC4(*(v0 + 712), v213, &qword_10083D6A0, &unk_1006DB700);
          v214 = v596(v213, 1, v88);
          v215 = *(v0 + 712);
          v216 = *(v0 + 624);
          if (v214 == 1)
          {
            sub_10000BE18(*(v0 + 712), &qword_10083D6A0, &unk_1006DB700);
            sub_10000BE18(v216, &qword_10083D6A0, &unk_1006DB700);
            v217 = 0;
            v218 = 0;
          }

          else
          {
            v219 = v88;
            v217 = PDF417ParsedData.issuer.getter();
            v218 = v220;
            sub_10000BE18(v215, &qword_10083D6A0, &unk_1006DB700);
            (*v595)(v216, v219);
          }

          v73 = v210;
          v222 = *(v210 + 2);
          v221 = *(v210 + 3);
          v76 = v597;
          if (v222 >= v221 >> 1)
          {
            v349 = sub_1003C5D2C((v221 > 1), v222 + 1, 1, v210);
            v76 = v597;
            v73 = v349;
          }

          *(v73 + 2) = v222 + 1;
          v223 = &v73[336 * v222];
          v223[32] = 0;
          v224 = *v576;
          *(v223 + 9) = *(v0 + 987);
          *(v223 + 33) = v224;
          v225 = 0uLL;
          *(v223 + 40) = 0u;
          *(v223 + 56) = 0u;
          *(v223 + 72) = 0u;
          *(v223 + 88) = 0u;
          *(v223 + 104) = 0u;
          *(v223 + 15) = 0;
          *(v223 + 16) = v594;
          *(v223 + 17) = v588;
          *(v223 + 18) = v580;
          *(v223 + 19) = v567;
          *(v223 + 20) = v560;
          *(v223 + 21) = v554;
          *(v223 + 22) = v547;
          *(v223 + 23) = v541;
          *(v223 + 24) = v535;
          *(v223 + 25) = v532;
          *(v223 + 26) = v531;
          *(v223 + 27) = v525;
          *(v223 + 28) = v520;
          *(v223 + 29) = v515;
          *(v223 + 30) = v510;
          *(v223 + 31) = v505;
          *(v223 + 32) = v500;
          *(v223 + 33) = v495;
          *(v223 + 34) = v490;
          *(v223 + 35) = v211;
          *(v223 + 36) = v217;
          *(v223 + 37) = v218;
        }

        *(v223 + 21) = v225;
        *(v223 + 22) = v225;
        *(v223 + 19) = v225;
        *(v223 + 20) = v225;
        v77 = v595;
      }

      else
      {
        v592 = v73;
        v89 = *(v0 + 904);
        v90 = *(v0 + 896);
        v91 = *(v0 + 224);
        v529(v89, 1, 1, v530);
        OS_dispatch_group.wait()();
        v585 = v91[14];

        OS_dispatch_group.wait()();
        v565 = v91[10];
        v578 = v91[11];

        OS_dispatch_group.wait()();
        v553 = v91[15];
        v559 = v91[16];

        OS_dispatch_group.wait()();
        v540 = v91[17];
        v546 = v91[18];

        OS_dispatch_group.wait()();
        v92 = v91[13];
        v532 = v91[12];
        sub_10000BBC4(v89, v90, &qword_10083D6A0, &unk_1006DB700);
        LODWORD(v90) = v78(v90, 1, v530);
        v534 = v92;

        v93 = *(v0 + 896);
        if (v90 == 1)
        {
          sub_10000BE18(*(v0 + 896), &qword_10083D6A0, &unk_1006DB700);
          v531 = 0;
          v524 = 0;
        }

        else
        {
          v531 = PDF417ParsedData.firstName.getter();
          v524 = v104;
          (*v595)(v93, v530);
        }

        v105 = *(v0 + 888);
        sub_10000BBC4(*(v0 + 904), v105, &qword_10083D6A0, &unk_1006DB700);
        v106 = v78(v105, 1, v530);
        v107 = *(v0 + 888);
        if (v106 == 1)
        {
          sub_10000BE18(*(v0 + 888), &qword_10083D6A0, &unk_1006DB700);
          v514 = 0;
          v519 = 0;
          v108 = v595;
        }

        else
        {
          v109 = PDF417ParsedData.middleName.getter();
          v514 = v110;
          v519 = v109;
          v108 = v595;
          (*v595)(v107, v530);
        }

        v111 = *(v0 + 880);
        sub_10000BBC4(*(v0 + 904), v111, &qword_10083D6A0, &unk_1006DB700);
        v112 = v78(v111, 1, v530);
        v113 = *(v0 + 880);
        if (v112 == 1)
        {
          sub_10000BE18(*(v0 + 880), &qword_10083D6A0, &unk_1006DB700);
          v504 = 0;
          v509 = 0;
        }

        else
        {
          v114 = PDF417ParsedData.lastName.getter();
          v504 = v115;
          v509 = v114;
          (*v108)(v113, v530);
        }

        v116 = *(v0 + 872);
        sub_10000BBC4(*(v0 + 904), v116, &qword_10083D6A0, &unk_1006DB700);
        v117 = v78(v116, 1, v530);
        v118 = *(v0 + 872);
        if (v117 == 1)
        {
          sub_10000BE18(*(v0 + 872), &qword_10083D6A0, &unk_1006DB700);
          v494 = 0;
          v499 = 0;
        }

        else
        {
          v119 = PDF417ParsedData.street1.getter();
          v494 = v120;
          v499 = v119;
          (*v108)(v118, v530);
        }

        v121 = *(v0 + 864);
        sub_10000BBC4(*(v0 + 904), v121, &qword_10083D6A0, &unk_1006DB700);
        v122 = v78(v121, 1, v530);
        v123 = *(v0 + 864);
        if (v122 == 1)
        {
          sub_10000BE18(*(v0 + 864), &qword_10083D6A0, &unk_1006DB700);
          v485 = 0;
          v489 = 0;
        }

        else
        {
          v124 = PDF417ParsedData.street2.getter();
          v485 = v125;
          v489 = v124;
          (*v108)(v123, v530);
        }

        v126 = *(v0 + 856);
        sub_10000BBC4(*(v0 + 904), v126, &qword_10083D6A0, &unk_1006DB700);
        v127 = v78(v126, 1, v530);
        v128 = *(v0 + 856);
        if (v127 == 1)
        {
          sub_10000BE18(*(v0 + 856), &qword_10083D6A0, &unk_1006DB700);
          v480 = 0;
          v482 = 0;
        }

        else
        {
          v129 = PDF417ParsedData.city.getter();
          v480 = v130;
          v482 = v129;
          (*v108)(v128, v530);
        }

        v131 = *(v0 + 848);
        sub_10000BBC4(*(v0 + 904), v131, &qword_10083D6A0, &unk_1006DB700);
        v132 = v78(v131, 1, v530);
        v133 = *(v0 + 848);
        if (v132 == 1)
        {
          sub_10000BE18(*(v0 + 848), &qword_10083D6A0, &unk_1006DB700);
          v478 = 0;
          v479 = 0;
        }

        else
        {
          v134 = PDF417ParsedData.state.getter();
          v478 = v135;
          v479 = v134;
          (*v108)(v133, v530);
        }

        v136 = *(v0 + 840);
        sub_10000BBC4(*(v0 + 904), v136, &qword_10083D6A0, &unk_1006DB700);
        v137 = v78(v136, 1, v530);
        v138 = *(v0 + 840);
        if (v137 == 1)
        {
          sub_10000BE18(*(v0 + 840), &qword_10083D6A0, &unk_1006DB700);
          v476 = 0;
          v477 = 0;
        }

        else
        {
          v139 = PDF417ParsedData.postalCode.getter();
          v476 = v140;
          v477 = v139;
          (*v108)(v138, v530);
        }

        v141 = *(v0 + 832);
        sub_10000BBC4(*(v0 + 904), v141, &qword_10083D6A0, &unk_1006DB700);
        v142 = v78(v141, 1, v530);
        v143 = *(v0 + 832);
        if (v142 == 1)
        {
          sub_10000BE18(*(v0 + 832), &qword_10083D6A0, &unk_1006DB700);
          v474 = 0;
          v475 = 0;
        }

        else
        {
          v144 = PDF417ParsedData.country.getter();
          v474 = v145;
          v475 = v144;
          (*v108)(v143, v530);
        }

        v146 = *(v0 + 824);
        sub_10000BBC4(*(v0 + 904), v146, &qword_10083D6A0, &unk_1006DB700);
        v147 = v596(v146, 1, v530);
        v148 = *(v0 + 824);
        if (v147 == 1)
        {
          sub_10000BE18(*(v0 + 824), &qword_10083D6A0, &unk_1006DB700);
          v149 = 0;
          v150 = 0;
        }

        else
        {
          v149 = PDF417ParsedData.dob.getter();
          v150 = v151;
          (*v595)(v148, v530);
        }

        v152 = *(v0 + 816);
        sub_10000BBC4(*(v0 + 904), v152, &qword_10083D6A0, &unk_1006DB700);
        v153 = v596(v152, 1, v530);
        v154 = *(v0 + 904);
        v155 = *(v0 + 816);
        if (v153 == 1)
        {
          sub_10000BE18(*(v0 + 904), &qword_10083D6A0, &unk_1006DB700);
          sub_10000BE18(v155, &qword_10083D6A0, &unk_1006DB700);
          v156 = 0;
          v157 = 0;
        }

        else
        {
          v156 = PDF417ParsedData.issuer.getter();
          v157 = v158;
          sub_10000BE18(v154, &qword_10083D6A0, &unk_1006DB700);
          (*v595)(v155, v530);
        }

        v160 = *(v73 + 2);
        v159 = *(v73 + 3);
        v76 = v597;
        if (v160 >= v159 >> 1)
        {
          v348 = sub_1003C5D2C((v159 > 1), v160 + 1, 1, v73);
          v76 = v597;
          v592 = v348;
        }

        v73 = v592;
        *(v592 + 2) = v160 + 1;
        v161 = &v592[336 * v160];
        v161[32] = 2;
        v162 = *v574;
        *(v161 + 9) = *(v0 + 1003);
        *(v161 + 33) = v162;
        *(v161 + 6) = 0;
        *(v161 + 7) = v585;
        *(v161 + 5) = 0;
        *(v161 + 8) = v565;
        *(v161 + 9) = v578;
        *(v161 + 10) = v553;
        *(v161 + 11) = v559;
        *(v161 + 12) = v540;
        *(v161 + 13) = v546;
        *(v161 + 14) = v532;
        *(v161 + 15) = v534;
        *(v161 + 16) = v531;
        *(v161 + 17) = v524;
        *(v161 + 18) = v519;
        *(v161 + 19) = v514;
        *(v161 + 20) = v509;
        *(v161 + 21) = v504;
        *(v161 + 22) = v499;
        *(v161 + 23) = v494;
        *(v161 + 24) = v489;
        *(v161 + 25) = v485;
        *(v161 + 26) = v482;
        *(v161 + 27) = v480;
        *(v161 + 28) = v479;
        *(v161 + 29) = v478;
        *(v161 + 30) = v477;
        *(v161 + 31) = v476;
        *(v161 + 32) = v475;
        *(v161 + 33) = v474;
        *(v161 + 34) = v149;
        *(v161 + 35) = v150;
        *(v161 + 36) = v156;
        *(v161 + 37) = v157;
        *(v161 + 21) = 0u;
        *(v161 + 22) = 0u;
        *(v161 + 19) = 0u;
        *(v161 + 20) = 0u;
        v77 = v595;
      }

LABEL_205:
      v71 = *(v0 + 912);
      v72 = *(v0 + 928) + 1;
      v70 = v0 + 144;
      v78 = v596;
      if (v72 == v71)
      {
        goto LABEL_37;
      }
    }

    if (v79 != 6)
    {
      break;
    }

    v80 = [objc_opt_self() standardUserDefaults];
    v81._countAndFlagsBits = static SharedInternalDefaultsKeys.skipNFC.getter();
    v82 = NSUserDefaults.internalBool(forKey:)(v81);

    if (!v82)
    {
      v351 = *(*(*(v0 + 232) + 120) + OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_passportNFC);
      if (!v351)
      {
        v466 = *(v0 + 304);
        v465 = *(v0 + 312);
        v467 = *(v0 + 296);

        (*(v466 + 104))(v465, enum case for DIPError.Code.passportFailedToGetNFCData(_:), v467);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
LABEL_279:
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
LABEL_274:

        v461 = *(v0 + 8);

        return v461();
      }

      v591 = v73;
      v589 = *(v0 + 1016);
      v569 = *(v0 + 1012);
      v352 = *(v0 + 1008);
      v353 = *(v0 + 288);
      v550 = *(v0 + 280);
      v582 = *(v0 + 272);
      v354 = *(v0 + 248);
      v355 = *(v0 + 256);
      sub_100007224(&qword_100833B78, &unk_1006D9F00);
      v60 = swift_allocObject();
      *(v60 + 16) = xmmword_1006BFF90;
      v356 = *(v355 + 104);
      v356(v353, v352, v354);

      v357 = PassportFields.rawValue.getter();
      v359 = v358;
      v558 = v351;
      v360 = *(v355 + 8);
      v5 = v355 + 8;
      v360(v353, v354);
      *(v60 + 32) = v357;
      v552 = v60 + 32;
      *(v60 + 40) = v359;
      v356(v550, v569, v354);
      v48 = v356;
      v361 = PassportFields.rawValue.getter();
      v363 = v362;
      v360(v550, v354);
      *(v60 + 48) = v361;
      *(v60 + 56) = v363;
      v356(v582, v589, v354);
      v364 = PassportFields.rawValue.getter();
      v366 = v365;
      v533 = v360;
      v539 = v5;
      v360(v582, v354);
      *(v60 + 64) = v364;
      *(v60 + 72) = v366;
      v64 = v351;
      v67 = sub_100209CC4(v351, v60);
      v545 = v597;

      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v61 = v67 + 64;
      v367 = -1 << *(v67 + 32);
      if (-v367 < 64)
      {
        v368 = ~(-1 << -v367);
      }

      else
      {
        v368 = -1;
      }

      v66 = v368 & *(v67 + 64);
      v53 = (63 - v367) >> 6;
      v584 = v67;

      v54 = 0;
      v564 = _swiftEmptyArrayStorage;
      v577 = v67 + 64;
LABEL_212:
      v65 = v54;
      if (!v66)
      {
        goto LABEL_214;
      }

      do
      {
        v54 = v65;
LABEL_217:
        v369 = *(v0 + 256);
        v597 = *(v0 + 248);
        v48 = *(v0 + 240);
        v370 = __clz(__rbit64(v66));
        v66 &= v66 - 1;
        v371 = (v54 << 10) | (16 * v370);
        v372 = (*(v584 + 48) + v371);
        v5 = *v372;
        v64 = v372[1];
        v373 = (*(v584 + 56) + v371);
        v374 = *v373;
        v60 = v373[1];
        swift_bridgeObjectRetain_n();

        PassportFields.init(rawValue:)();
        v375 = *(v369 + 48);
        v67 = v369 + 48;
        if (v375(v48, 1, v597) != 1)
        {
          v597 = v374;
          v376 = *(v0 + 264);
          v377 = *(v0 + 248);
          (*(*(v0 + 256) + 32))(v376, *(v0 + 240), v377);
          v67 = PassportFields.assessorFieldName.getter();
          v558 = v378;
          v533(v376, v377);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v564 = sub_1003C5D08(0, v564[2] + 1, 1, v564);
          }

          v5 = v374;
          v61 = v577;
          v48 = v564[2];
          v379 = v564[3];
          v64 = (v48 + 1);
          if (v48 >= v379 >> 1)
          {
            v564 = sub_1003C5D08((v379 > 1), v48 + 1, 1, v564);
          }

          v564[2] = v64;
          v380 = &v564[4 * v48];
          v380[4] = v67;
          v380[5] = v558;
          v380[6] = v597;
          v380[7] = v60;
          goto LABEL_212;
        }

        sub_10000BE18(*(v0 + 240), &qword_10083DC38, &unk_1006DB790);

        v65 = v54;
        v61 = v577;
      }

      while (v66);
      while (1)
      {
LABEL_214:
        v54 = v65 + 1;
        if (__OFADD__(v65, 1))
        {
          __break(1u);
          goto LABEL_285;
        }

        if (v54 >= v53)
        {
          break;
        }

        v66 = *(v61 + 8 * v54);
        ++v65;
        if (v66)
        {
          goto LABEL_217;
        }
      }

      if (v564[2])
      {
        sub_100007224(&qword_100849420, &qword_1006DA510);
        v381 = static _DictionaryStorage.allocate(capacity:)();
      }

      else
      {
        v381 = &_swiftEmptyDictionarySingleton;
      }

      *(v0 + 176) = v381;

      sub_100208004(v382, 1, (v0 + 176));
      if (v545)
      {

        return _swift_unexpectedError(v545, "Swift/Dictionary.swift", 22, 1, 490);
      }

      v383 = objc_opt_self();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      *(v0 + 184) = 0;
      v385 = [v383 dataWithJSONObject:isa options:0 error:v0 + 184];

      v386 = *(v0 + 184);
      if (!v385)
      {
        v469 = *(v0 + 304);
        v468 = *(v0 + 312);
        v470 = *(v0 + 296);
        v471 = v386;

        v472 = _convertNSErrorToError(_:)();

        swift_willThrow();
        _StringGuts.grow(_:)(32);
        *(v0 + 160) = 0;
        *(v0 + 168) = 0xE000000000000000;
        v473._countAndFlagsBits = 0xD00000000000001ELL;
        v473._object = 0x8000000100706D40;
        String.append(_:)(v473);
        *(v0 + 192) = v472;
        sub_100007224(&qword_100833B90, &qword_1006D95C0);
        _print_unlocked<A, B>(_:_:)();
        (*(v469 + 104))(v468, enum case for DIPError.Code.passportFailedToGetIDVServerData(_:), v470);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();

        goto LABEL_274;
      }

      v387 = *(v0 + 520);
      v388 = *(v0 + 512);
      v389 = v386;
      v390 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v392 = v391;

      v590 = v392;
      v393 = Data.base64EncodedString(options:)(0);
      v529(v387, 1, 1, v530);
      sub_10000BBC4(v387, v388, &qword_10083D6A0, &unk_1006DB700);
      v394 = v596(v388, 1, v530);
      v395 = *(v0 + 512);
      if (v394 == 1)
      {
        sub_10000BE18(*(v0 + 512), &qword_10083D6A0, &unk_1006DB700);
        v583 = 0;
        v570 = 0;
      }

      else
      {
        v583 = PDF417ParsedData.firstName.getter();
        v570 = v396;
        (*v595)(v395, v530);
      }

      v397 = *(v0 + 504);
      sub_10000BBC4(*(v0 + 520), v397, &qword_10083D6A0, &unk_1006DB700);
      v398 = v596(v397, 1, v530);
      v399 = *(v0 + 504);
      if (v398 == 1)
      {
        sub_10000BE18(*(v0 + 504), &qword_10083D6A0, &unk_1006DB700);
        v557 = 0;
        v563 = 0;
      }

      else
      {
        v400 = PDF417ParsedData.middleName.getter();
        v557 = v401;
        v563 = v400;
        (*v595)(v399, v530);
      }

      v402 = *(v0 + 496);
      sub_10000BBC4(*(v0 + 520), v402, &qword_10083D6A0, &unk_1006DB700);
      v403 = v596(v402, 1, v530);
      v404 = *(v0 + 496);
      if (v403 == 1)
      {
        sub_10000BE18(*(v0 + 496), &qword_10083D6A0, &unk_1006DB700);
        v544 = 0;
        v551 = 0;
      }

      else
      {
        v405 = PDF417ParsedData.lastName.getter();
        v544 = v406;
        v551 = v405;
        (*v595)(v404, v530);
      }

      v407 = *(v0 + 488);
      sub_10000BBC4(*(v0 + 520), v407, &qword_10083D6A0, &unk_1006DB700);
      v408 = v596(v407, 1, v530);
      v409 = *(v0 + 488);
      if (v408 == 1)
      {
        sub_10000BE18(*(v0 + 488), &qword_10083D6A0, &unk_1006DB700);
        v532 = 0;
        v538 = 0;
      }

      else
      {
        v410 = PDF417ParsedData.street1.getter();
        v532 = v411;
        v538 = v410;
        (*v595)(v409, v530);
      }

      v412 = *(v0 + 480);
      sub_10000BBC4(*(v0 + 520), v412, &qword_10083D6A0, &unk_1006DB700);
      v413 = v596(v412, 1, v530);
      v414 = *(v0 + 480);
      if (v413 == 1)
      {
        sub_10000BE18(*(v0 + 480), &qword_10083D6A0, &unk_1006DB700);
        v531 = 0;
        v528 = 0;
      }

      else
      {
        v531 = PDF417ParsedData.street2.getter();
        v528 = v415;
        (*v595)(v414, v530);
      }

      v416 = *(v0 + 472);
      sub_10000BBC4(*(v0 + 520), v416, &qword_10083D6A0, &unk_1006DB700);
      v417 = v596(v416, 1, v530);
      v418 = *(v0 + 472);
      if (v417 == 1)
      {
        sub_10000BE18(*(v0 + 472), &qword_10083D6A0, &unk_1006DB700);
        v518 = 0;
        v523 = 0;
      }

      else
      {
        v419 = PDF417ParsedData.city.getter();
        v518 = v420;
        v523 = v419;
        (*v595)(v418, v530);
      }

      v421 = *(v0 + 464);
      sub_10000BBC4(*(v0 + 520), v421, &qword_10083D6A0, &unk_1006DB700);
      v422 = v596(v421, 1, v530);
      v423 = *(v0 + 464);
      if (v422 == 1)
      {
        sub_10000BE18(*(v0 + 464), &qword_10083D6A0, &unk_1006DB700);
        v508 = 0;
        v513 = 0;
      }

      else
      {
        v424 = PDF417ParsedData.state.getter();
        v508 = v425;
        v513 = v424;
        (*v595)(v423, v530);
      }

      v426 = *(v0 + 456);
      sub_10000BBC4(*(v0 + 520), v426, &qword_10083D6A0, &unk_1006DB700);
      v427 = v596(v426, 1, v530);
      v428 = *(v0 + 456);
      if (v427 == 1)
      {
        sub_10000BE18(*(v0 + 456), &qword_10083D6A0, &unk_1006DB700);
        v498 = 0;
        v503 = 0;
      }

      else
      {
        v429 = PDF417ParsedData.postalCode.getter();
        v498 = v430;
        v503 = v429;
        (*v595)(v428, v530);
      }

      v431 = *(v0 + 448);
      sub_10000BBC4(*(v0 + 520), v431, &qword_10083D6A0, &unk_1006DB700);
      v432 = v596(v431, 1, v530);
      v433 = *(v0 + 448);
      if (v432 == 1)
      {
        sub_10000BE18(*(v0 + 448), &qword_10083D6A0, &unk_1006DB700);
        v488 = 0;
        v493 = 0;
      }

      else
      {
        v434 = PDF417ParsedData.country.getter();
        v488 = v435;
        v493 = v434;
        (*v595)(v433, v530);
      }

      v436 = *(v0 + 440);
      sub_10000BBC4(*(v0 + 520), v436, &qword_10083D6A0, &unk_1006DB700);
      v437 = v596(v436, 1, v530);
      v438 = *(v0 + 440);
      if (v437 == 1)
      {
        sub_10000BE18(*(v0 + 440), &qword_10083D6A0, &unk_1006DB700);
        v481 = 0;
        v484 = 0;
      }

      else
      {
        v439 = PDF417ParsedData.dob.getter();
        v481 = v440;
        v484 = v439;
        (*v595)(v438, v530);
      }

      v441 = *(v0 + 432);
      sub_10000BBC4(*(v0 + 520), v441, &qword_10083D6A0, &unk_1006DB700);
      v442 = v596(v441, 1, v530);
      v443 = *(v0 + 520);
      v444 = *(v0 + 432);
      if (v442 == 1)
      {
        sub_10000BE18(*(v0 + 520), &qword_10083D6A0, &unk_1006DB700);
        sub_10000BE18(v444, &qword_10083D6A0, &unk_1006DB700);
        v445 = 0;
        v446 = 0;
      }

      else
      {
        v445 = PDF417ParsedData.issuer.getter();
        v446 = v447;
        sub_10000BE18(v443, &qword_10083D6A0, &unk_1006DB700);
        (*v595)(v444, v530);
      }

      v73 = v591;
      v449 = *(v591 + 16);
      v448 = *(v591 + 24);
      if (v449 >= v448 >> 1)
      {
        v73 = sub_1003C5D2C((v448 > 1), v449 + 1, 1, v591);
      }

      sub_10000B90C(v390, v590);
      v76 = 0;
      *(v73 + 2) = v449 + 1;
      v450 = &v73[336 * v449];
      v450[32] = 5;
      v451 = *v571;
      *(v450 + 9) = *(v0 + 971);
      *(v450 + 33) = v451;
      *(v450 + 40) = 0u;
      *(v450 + 56) = 0u;
      *(v450 + 72) = 0u;
      *(v450 + 88) = 0u;
      *(v450 + 104) = 0u;
      *(v450 + 15) = 0;
      *(v450 + 16) = v583;
      *(v450 + 17) = v570;
      *(v450 + 18) = v563;
      *(v450 + 19) = v557;
      *(v450 + 20) = v551;
      *(v450 + 21) = v544;
      *(v450 + 22) = v538;
      *(v450 + 23) = v532;
      *(v450 + 24) = v531;
      *(v450 + 25) = v528;
      *(v450 + 26) = v523;
      *(v450 + 27) = v518;
      *(v450 + 28) = v513;
      *(v450 + 29) = v508;
      *(v450 + 30) = v503;
      *(v450 + 31) = v498;
      *(v450 + 32) = v493;
      *(v450 + 33) = v488;
      *(v450 + 34) = v484;
      *(v450 + 35) = v481;
      *(v450 + 36) = v445;
      *(v450 + 37) = v446;
      *(v450 + 19) = 0u;
      *(v450 + 20) = 0u;
      *(v450 + 21) = v393;
      *(v450 + 44) = 0;
      *(v450 + 45) = 0;
      v72 = *(v0 + 928) + 1;
      v71 = *(v0 + 912);
      v70 = v0 + 144;
      v78 = v596;
      v77 = v595;
      if (v72 == v71)
      {
        goto LABEL_37;
      }

      goto LABEL_41;
    }

    v72 = *(v0 + 928);
    v71 = *(v0 + 912);
    v76 = v597;
LABEL_42:
    if (++v72 == v71)
    {
      goto LABEL_37;
    }
  }

  if (v79 == 5)
  {
    v99 = (*(*(v0 + 232) + 120) + OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_passportMRZ);
    v100 = v99[1];
    if (!v100)
    {
      v463 = *(v0 + 304);
      v462 = *(v0 + 312);
      v464 = *(v0 + 296);

      (*(v463 + 104))(v462, enum case for DIPError.Code.passportFailedToGetIDVServerData(_:), v464);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      goto LABEL_279;
    }

    v587 = *v99;
    v101 = *(v0 + 616);
    v102 = *(v0 + 608);
    v529(v101, 1, 1, v530);
    sub_10000BBC4(v101, v102, &qword_10083D6A0, &unk_1006DB700);
    LODWORD(v102) = v78(v102, 1, v530);

    v103 = *(v0 + 608);
    if (v102 == 1)
    {
      sub_10000BE18(*(v0 + 608), &qword_10083D6A0, &unk_1006DB700);
      v579 = 0;
      v566 = 0;
    }

    else
    {
      v579 = PDF417ParsedData.firstName.getter();
      v566 = v288;
      (*v595)(v103, v530);
    }

    v289 = *(v0 + 600);
    sub_10000BBC4(*(v0 + 616), v289, &qword_10083D6A0, &unk_1006DB700);
    v290 = v78(v289, 1, v530);
    v291 = *(v0 + 600);
    if (v290 == 1)
    {
      sub_10000BE18(*(v0 + 600), &qword_10083D6A0, &unk_1006DB700);
      v556 = 0;
      v562 = 0;
      v292 = v595;
    }

    else
    {
      v293 = PDF417ParsedData.middleName.getter();
      v556 = v294;
      v562 = v293;
      v292 = v595;
      (*v595)(v291, v530);
    }

    v295 = *(v0 + 592);
    sub_10000BBC4(*(v0 + 616), v295, &qword_10083D6A0, &unk_1006DB700);
    v296 = v78(v295, 1, v530);
    v297 = *(v0 + 592);
    if (v296 == 1)
    {
      sub_10000BE18(*(v0 + 592), &qword_10083D6A0, &unk_1006DB700);
      v543 = 0;
      v549 = 0;
    }

    else
    {
      v298 = PDF417ParsedData.lastName.getter();
      v543 = v299;
      v549 = v298;
      (*v292)(v297, v530);
    }

    v300 = *(v0 + 584);
    sub_10000BBC4(*(v0 + 616), v300, &qword_10083D6A0, &unk_1006DB700);
    v301 = v78(v300, 1, v530);
    v302 = *(v0 + 584);
    if (v301 == 1)
    {
      sub_10000BE18(*(v0 + 584), &qword_10083D6A0, &unk_1006DB700);
      v532 = 0;
      v537 = 0;
    }

    else
    {
      v303 = PDF417ParsedData.street1.getter();
      v532 = v304;
      v537 = v303;
      (*v292)(v302, v530);
    }

    v305 = *(v0 + 576);
    sub_10000BBC4(*(v0 + 616), v305, &qword_10083D6A0, &unk_1006DB700);
    v306 = v78(v305, 1, v530);
    v307 = *(v0 + 576);
    if (v306 == 1)
    {
      sub_10000BE18(*(v0 + 576), &qword_10083D6A0, &unk_1006DB700);
      v531 = 0;
      v527 = 0;
    }

    else
    {
      v531 = PDF417ParsedData.street2.getter();
      v527 = v308;
      (*v292)(v307, v530);
    }

    v309 = *(v0 + 568);
    sub_10000BBC4(*(v0 + 616), v309, &qword_10083D6A0, &unk_1006DB700);
    v310 = v78(v309, 1, v530);
    v311 = *(v0 + 568);
    if (v310 == 1)
    {
      sub_10000BE18(*(v0 + 568), &qword_10083D6A0, &unk_1006DB700);
      v517 = 0;
      v522 = 0;
    }

    else
    {
      v312 = PDF417ParsedData.city.getter();
      v517 = v313;
      v522 = v312;
      (*v292)(v311, v530);
    }

    v314 = *(v0 + 560);
    sub_10000BBC4(*(v0 + 616), v314, &qword_10083D6A0, &unk_1006DB700);
    v315 = v78(v314, 1, v530);
    v316 = *(v0 + 560);
    if (v315 == 1)
    {
      sub_10000BE18(*(v0 + 560), &qword_10083D6A0, &unk_1006DB700);
      v507 = 0;
      v512 = 0;
    }

    else
    {
      v317 = PDF417ParsedData.state.getter();
      v507 = v318;
      v512 = v317;
      (*v292)(v316, v530);
    }

    v319 = *(v0 + 552);
    sub_10000BBC4(*(v0 + 616), v319, &qword_10083D6A0, &unk_1006DB700);
    v320 = v78(v319, 1, v530);
    v321 = *(v0 + 552);
    if (v320 == 1)
    {
      sub_10000BE18(*(v0 + 552), &qword_10083D6A0, &unk_1006DB700);
      v497 = 0;
      v502 = 0;
    }

    else
    {
      v322 = PDF417ParsedData.postalCode.getter();
      v497 = v323;
      v502 = v322;
      (*v292)(v321, v530);
    }

    v324 = *(v0 + 544);
    sub_10000BBC4(*(v0 + 616), v324, &qword_10083D6A0, &unk_1006DB700);
    v325 = v78(v324, 1, v530);
    v326 = *(v0 + 544);
    if (v325 == 1)
    {
      sub_10000BE18(*(v0 + 544), &qword_10083D6A0, &unk_1006DB700);
      v487 = 0;
      v492 = 0;
    }

    else
    {
      v327 = PDF417ParsedData.country.getter();
      v487 = v328;
      v492 = v327;
      (*v292)(v326, v530);
    }

    v329 = *(v0 + 536);
    sub_10000BBC4(*(v0 + 616), v329, &qword_10083D6A0, &unk_1006DB700);
    v330 = v78(v329, 1, v530);
    v331 = *(v0 + 536);
    v332 = v73;
    if (v330 == 1)
    {
      sub_10000BE18(*(v0 + 536), &qword_10083D6A0, &unk_1006DB700);
      v333 = 0;
      v334 = 0;
    }

    else
    {
      v333 = PDF417ParsedData.dob.getter();
      v334 = v335;
      (*v595)(v331, v530);
    }

    v336 = *(v0 + 528);
    sub_10000BBC4(*(v0 + 616), v336, &qword_10083D6A0, &unk_1006DB700);
    v337 = v596(v336, 1, v530);
    v338 = *(v0 + 616);
    v339 = *(v0 + 528);
    if (v337 == 1)
    {
      sub_10000BE18(*(v0 + 616), &qword_10083D6A0, &unk_1006DB700);
      sub_10000BE18(v339, &qword_10083D6A0, &unk_1006DB700);
      v340 = 0;
      v341 = 0;
    }

    else
    {
      v340 = PDF417ParsedData.issuer.getter();
      v341 = v342;
      sub_10000BE18(v338, &qword_10083D6A0, &unk_1006DB700);
      (*v595)(v339, v530);
    }

    v344 = *(v332 + 2);
    v343 = *(v332 + 3);
    v345 = v332;
    if (v344 >= v343 >> 1)
    {
      v345 = sub_1003C5D2C((v343 > 1), v344 + 1, 1, v332);
    }

    v77 = v595;
    *(v345 + 2) = v344 + 1;
    v346 = &v345[336 * v344];
    v73 = v345;
    v346[32] = 0;
    v347 = *v573;
    *(v346 + 9) = *(v0 + 979);
    *(v346 + 33) = v347;
    *(v346 + 40) = 0u;
    *(v346 + 56) = 0u;
    *(v346 + 72) = 0u;
    *(v346 + 88) = 0u;
    *(v346 + 104) = 0u;
    *(v346 + 15) = 0;
    *(v346 + 16) = v579;
    *(v346 + 17) = v566;
    *(v346 + 18) = v562;
    *(v346 + 19) = v556;
    *(v346 + 20) = v549;
    *(v346 + 21) = v543;
    *(v346 + 22) = v537;
    *(v346 + 23) = v532;
    *(v346 + 24) = v531;
    *(v346 + 25) = v527;
    *(v346 + 26) = v522;
    *(v346 + 27) = v517;
    *(v346 + 28) = v512;
    *(v346 + 29) = v507;
    *(v346 + 30) = v502;
    *(v346 + 31) = v497;
    *(v346 + 32) = v492;
    *(v346 + 33) = v487;
    *(v346 + 34) = v333;
    *(v346 + 35) = v334;
    *(v346 + 36) = v340;
    *(v346 + 37) = v341;
    *(v346 + 38) = 0;
    *(v346 + 39) = 0;
    *(v346 + 40) = v587;
    *(v346 + 41) = v100;
    *(v346 + 21) = 0u;
    *(v346 + 22) = 0u;
    v76 = v597;
    goto LABEL_205;
  }

  if (v79 != 7)
  {
    goto LABEL_42;
  }

  *(v0 + 975) = 0;
  IdentityProofingConfiguration.piiTokenIdentifier.getter();
  if (!v452)
  {
    v458 = *(v0 + 304);
    v457 = *(v0 + 312);
    v459 = *(v0 + 296);
    v460 = *(v0 + 983);

    (*(v458 + 104))(v457, enum case for DIPError.Code.piiTokenIdentifierDoesntExist(_:), v459);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_1001FE434(v460, (v70 + 831));
    goto LABEL_274;
  }

  if (qword_100832C20 != -1)
  {
    swift_once();
  }

  v453 = *(qword_100882228 + 16);
  *(v0 + 944) = v453;
  v454 = v453;
  v455 = String._bridgeToObjectiveC()();
  *(v0 + 952) = v455;

  *(v0 + 16) = v0;
  *(v0 + 56) = v70;
  *(v0 + 24) = sub_10020DE68;
  v456 = swift_continuation_init();
  *(v0 + 136) = sub_100007224(&unk_100845DF0, &unk_1006BFA20);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_100672A4C;
  *(v0 + 104) = &unk_10080AB88;
  *(v0 + 112) = v456;
  [v454 retrievePIITokenFromSyncableKeyStoreForIdentifier:v455 completion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_100212094(uint64_t a1)
{
  v2 = *(v1 + 952);
  v3 = *(v1 + 944);
  v4 = *(v1 + 983);
  swift_willThrow();

  swift_willThrow();
  sub_1001FE434(v4, (v1 + 975));

  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_100212598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v9 + 496) = a8;
  *(v9 + 504) = v8;
  *(v9 + 1480) = a7;
  *(v9 + 480) = a5;
  *(v9 + 488) = a6;
  *(v9 + 464) = a2;
  *(v9 + 472) = a4;
  *(v9 + 456) = a1;
  v10 = type metadata accessor for DIPError();
  *(v9 + 512) = v10;
  *(v9 + 520) = *(v10 - 8);
  *(v9 + 528) = swift_task_alloc();
  *(v9 + 536) = type metadata accessor for ProofingData(0);
  *(v9 + 544) = swift_task_alloc();
  *(v9 + 552) = swift_task_alloc();
  *(v9 + 560) = swift_task_alloc();
  *(v9 + 568) = swift_task_alloc();
  *(v9 + 576) = swift_task_alloc();
  v11 = sub_100007224(&qword_100833688, &qword_1006BF6D0);
  *(v9 + 584) = v11;
  *(v9 + 592) = *(v11 - 8);
  *(v9 + 600) = swift_task_alloc();
  *(v9 + 608) = swift_task_alloc();
  *(v9 + 616) = swift_task_alloc();
  *(v9 + 624) = swift_task_alloc();
  sub_100007224(&qword_100833690, &qword_1006BF6D8);
  *(v9 + 632) = swift_task_alloc();
  *(v9 + 640) = swift_task_alloc();
  *(v9 + 648) = swift_task_alloc();
  *(v9 + 656) = swift_task_alloc();
  *(v9 + 664) = swift_task_alloc();
  *(v9 + 672) = swift_task_alloc();
  *(v9 + 680) = swift_task_alloc();
  *(v9 + 688) = swift_task_alloc();
  sub_100007224(&qword_100833698, &qword_1006BF6E0);
  *(v9 + 696) = swift_task_alloc();
  *(v9 + 704) = swift_task_alloc();
  *(v9 + 712) = swift_task_alloc();
  *(v9 + 720) = swift_task_alloc();
  v12 = sub_100007224(&qword_100833680, &qword_1006C4A20);
  *(v9 + 728) = v12;
  *(v9 + 736) = *(v12 - 8);
  *(v9 + 744) = swift_task_alloc();
  *(v9 + 752) = swift_task_alloc();
  *(v9 + 760) = swift_task_alloc();
  *(v9 + 768) = swift_task_alloc();
  *(v9 + 776) = swift_task_alloc();
  *(v9 + 784) = swift_task_alloc();
  *(v9 + 792) = swift_task_alloc();
  *(v9 + 800) = swift_task_alloc();
  *(v9 + 808) = swift_task_alloc();
  *(v9 + 816) = swift_task_alloc();
  *(v9 + 824) = swift_task_alloc();
  sub_100007224(&qword_1008399F0, &unk_1006DA210);
  *(v9 + 832) = swift_task_alloc();
  *(v9 + 840) = swift_task_alloc();
  *(v9 + 848) = swift_task_alloc();
  v13 = type metadata accessor for RecipientEncryptionCertificate();
  *(v9 + 856) = v13;
  *(v9 + 864) = *(v13 - 8);
  *(v9 + 872) = swift_task_alloc();
  *(v9 + 880) = swift_task_alloc();
  *(v9 + 888) = swift_task_alloc();
  *(v9 + 896) = swift_task_alloc();
  v14 = type metadata accessor for EncryptedMessageEntity();
  *(v9 + 904) = v14;
  *(v9 + 912) = *(v14 - 8);
  *(v9 + 920) = swift_task_alloc();
  *(v9 + 928) = swift_task_alloc();
  *(v9 + 936) = swift_task_alloc();
  *(v9 + 944) = swift_task_alloc();
  *(v9 + 952) = swift_task_alloc();
  *(v9 + 960) = swift_task_alloc();
  *(v9 + 968) = swift_task_alloc();
  *(v9 + 976) = swift_task_alloc();
  *(v9 + 984) = swift_task_alloc();
  *(v9 + 992) = swift_task_alloc();
  *(v9 + 1000) = swift_task_alloc();
  sub_100007224(&qword_10083DC28, &qword_1006DB778);
  *(v9 + 1008) = swift_task_alloc();
  *(v9 + 1016) = swift_task_alloc();
  v15 = type metadata accessor for DIPError.Code();
  *(v9 + 1024) = v15;
  *(v9 + 1032) = *(v15 - 8);
  *(v9 + 1040) = swift_task_alloc();
  v16 = type metadata accessor for AEADKey();
  *(v9 + 1048) = v16;
  *(v9 + 1056) = *(v16 - 8);
  *(v9 + 1064) = swift_task_alloc();
  *(v9 + 1072) = swift_task_alloc();
  *(v9 + 1080) = swift_task_alloc();
  *(v9 + 1088) = swift_task_alloc();
  *(v9 + 1096) = swift_task_alloc();
  *(v9 + 1104) = swift_task_alloc();
  *(v9 + 1112) = swift_task_alloc();
  *(v9 + 1120) = swift_task_alloc();
  v17 = type metadata accessor for Logger();
  *(v9 + 1128) = v17;
  *(v9 + 1136) = *(v17 - 8);
  *(v9 + 1144) = swift_task_alloc();
  *(v9 + 1152) = swift_task_alloc();
  *(v9 + 1160) = swift_task_alloc();
  *(v9 + 1168) = swift_task_alloc();
  *(v9 + 1176) = swift_task_alloc();
  *(v9 + 1184) = swift_task_alloc();
  *(v9 + 1192) = swift_task_alloc();
  *(v9 + 1200) = swift_task_alloc();
  *(v9 + 1208) = swift_task_alloc();
  *(v9 + 1216) = swift_task_alloc();
  *(v9 + 1224) = swift_task_alloc();
  *(v9 + 1232) = swift_task_alloc();
  *(v9 + 1240) = swift_task_alloc();
  *(v9 + 1248) = swift_task_alloc();
  *(v9 + 1256) = swift_task_alloc();
  *(v9 + 1264) = swift_task_alloc();
  *(v9 + 1272) = swift_task_alloc();
  *(v9 + 1280) = swift_task_alloc();
  *(v9 + 1288) = swift_task_alloc();
  *(v9 + 1296) = swift_task_alloc();
  v18 = sub_100007224(&qword_1008335C0, &qword_1006DA7B0);
  *(v9 + 1304) = v18;
  *(v9 + 1312) = *(v18 - 8);
  *(v9 + 1320) = swift_task_alloc();
  *(v9 + 1328) = swift_task_alloc();
  *(v9 + 1336) = swift_task_alloc();

  return _swift_task_switch(sub_100212DD0, 0, 0);
}

void sub_100212DD0()
{
  v224 = v0;
  v1 = v0;
  v184 = v0[164];
  v196 = v0[163];
  v2 = v0[142];
  v3 = v0[132];
  v188 = v1[63];
  v4 = *(v188 + 120);
  v5 = OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_cloudKitUploadAssets;
  swift_beginAccess();
  v6 = *(v4 + v5);
  v7 = v6 + 64;
  v8 = -1;
  v9 = -1 << *(v6 + 32);
  if (-v9 < 64)
  {
    v8 = ~(-1 << -v9);
  }

  v10 = v8 & *(v6 + 64);
  v11 = (63 - v9) >> 6;
  v197 = (v3 + 8);
  v187 = (v2 + 8);
  v186 = (v3 + 32);

  v12 = 0;
  v13 = _swiftEmptyArrayStorage;
  v14 = &_swiftEmptyDictionarySingleton;
  v15 = &_swiftEmptyDictionarySingleton;
  v16 = _swiftEmptyArrayStorage;
  v208 = v1;
  v182 = v11;
  v183 = v6 + 64;
  v185 = v6;
  while (1)
  {
    v1[171] = v14;
    v1[170] = v15;
    v1[169] = v13;
    v1[168] = v16;
    if (!v10)
    {
      break;
    }

    v217 = v14;
    v202 = v15;
    v220 = v16;
    v213 = v13;
LABEL_10:
    v18 = __clz(__rbit64(v10)) | (v12 << 6);
    v19 = (*(v6 + 48) + 16 * v18);
    v20 = *(*(v6 + 56) + 8 * v18);
    v21 = *(*(v188 + 120) + 16);
    v22 = *(v20 + 48);
    v219 = v19[1];
    if (v22 == 5)
    {
      v166 = v1[130];
      v167 = v1[129];
      v168 = v1[128];

      (*(v167 + 104))(v166, enum case for DIPError.Code.missingCloudKitAssets(_:), v168);
      sub_1000402AC(_swiftEmptyArrayStorage);
      sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      goto LABEL_101;
    }

    v198 = *v19;
    swift_beginAccess();
    v23 = v21[3];
    v24 = *(v23 + 16);

    if (!v24)
    {
      goto LABEL_98;
    }

    v25 = sub_10003B6E4(v22);
    if ((v26 & 1) == 0)
    {

LABEL_98:

      v169 = v1[130];
      v170 = v1[129];
      v171 = v1[128];

      (*(v170 + 104))(v169, enum case for DIPError.Code.missingCloudKitAssets(_:), v171);
      sub_1000402AC(_swiftEmptyArrayStorage);
      sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      goto LABEL_102;
    }

    v27 = (*(v23 + 56) + 16 * v25);
    v28 = v27[1];
    v214 = *v27;

    swift_beginAccess();
    v29 = v21[4];
    if (!*(v29 + 16))
    {
      goto LABEL_100;
    }

    v30 = sub_10003B6E4(v22);
    if ((v31 & 1) == 0)
    {

LABEL_100:
      v172 = v1[130];
      v173 = v1[129];
      v174 = v1[128];

      (*(v173 + 104))(v172, enum case for DIPError.Code.missingCloudKitAssets(_:), v174);
      sub_1000402AC(_swiftEmptyArrayStorage);
      sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
LABEL_101:
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
LABEL_102:
      swift_willThrow();

      goto LABEL_115;
    }

    v209 = *(*(v29 + 56) + 8 * v30);

    swift_beginAccess();
    v32 = v21[2];
    if (!*(v32 + 16))
    {
      goto LABEL_104;
    }

    v33 = sub_10003B6E4(v22);
    if ((v34 & 1) == 0)
    {

LABEL_104:

      v222 = 0;
      v223 = 0xE000000000000000;
      _StringGuts.grow(_:)(37);

      v222 = 0xD000000000000023;
      v223 = 0x8000000100706A70;
      if (v22 <= 1)
      {
        if (v22)
        {
          v176 = 0xEE006B636142746ELL;
        }

        else
        {
          v176 = 0xEF746E6F7246746ELL;
        }

        v175 = 0x656D75636F446469;
      }

      else if (v22 == 2)
      {
        v176 = 0xE600000000000000;
        v175 = 0x6569666C6573;
      }

      else if (v22 == 3)
      {
        v175 = 0x7373656E6576696CLL;
        v176 = 0xED00006F65646956;
      }

      else
      {
        v175 = 0x7261696C69787561;
        v176 = 0xEE006F6564695679;
      }

      v177 = v1[130];
      v178 = v1[129];
      v179 = v1[128];
      v180 = v176;
      String.append(_:)(*&v175);

      (*(v178 + 104))(v177, enum case for DIPError.Code.missingCloudKitAssets(_:), v179);
      sub_1000402AC(_swiftEmptyArrayStorage);
      sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      v1 = v208;
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

LABEL_115:

      v181 = v1[1];

      v181();
      return;
    }

    sub_10000BBC4(*(v32 + 56) + *(v184 + 72) * v33, v1[167], &qword_1008335C0, &qword_1006DA7B0);

    defaultLogger()();

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();

    v203 = v28;
    v207 = v20;
    if (os_log_type_enabled(v35, v36))
    {
      v37 = v20;
      v38 = swift_slowAlloc();
      v222 = swift_slowAlloc();
      *v38 = 136315906;
      v40 = *(v37 + 16);
      v39 = *(v37 + 24);

      v41 = sub_100141FE4(v40, v39, &v222);

      *(v38 + 4) = v41;
      *(v38 + 12) = 2080;
      v42 = 0x7373656E6576696CLL;
      if (v22 != 3)
      {
        v42 = 0x7261696C69787561;
      }

      v43 = 0xED00006F65646956;
      if (v22 != 3)
      {
        v43 = 0xEE006F6564695679;
      }

      if (v22 == 2)
      {
        v42 = 0x6569666C6573;
        v43 = 0xE600000000000000;
      }

      v44 = 0xEF746E6F7246746ELL;
      if (v22)
      {
        v44 = 0xEE006B636142746ELL;
      }

      if (v22 <= 1)
      {
        v45 = 0x656D75636F446469;
      }

      else
      {
        v45 = v42;
      }

      if (v22 <= 1)
      {
        v46 = v44;
      }

      else
      {
        v46 = v43;
      }

      v47 = v208[162];
      v192 = v208[141];
      v48 = sub_100141FE4(v45, v46, &v222);
      v1 = v208;

      *(v38 + 14) = v48;
      *(v38 + 22) = 2048;
      *(v38 + 24) = v209;
      *(v38 + 32) = 2080;
      *(v38 + 34) = sub_100141FE4(v214, v203, &v222);
      _os_log_impl(&_mh_execute_header, v35, v36, "Upload data info: record ID = %s, type: %s, size: %ld, contentHash: %s", v38, 0x2Au);
      swift_arrayDestroy();

      (*v187)(v47, v192);
      v20 = v207;
    }

    else
    {
      v49 = v1[162];
      v50 = v1[141];

      (*v187)(v49, v50);
    }

    v52 = *(v20 + 16);
    v51 = *(v20 + 24);

    if (shouldIncludeUnencryptedData()())
    {
      v53 = 0;
      v54 = 0xE000000000000000;
    }

    else
    {
      v55 = v1[167];
      v56 = v1[166];
      v57 = v208[131];
      sub_10000BBC4(v55, v56, &qword_1008335C0, &qword_1006DA7B0);
      v58 = *(v196 + 48);
      v59 = sub_100007224(&unk_100833638, &unk_1006BF6C0);
      v53 = SealedMessage.keyID.getter();
      v54 = v60;
      (*(*(v59 - 8) + 8))(v56, v59);
      v61 = v57;
      v1 = v208;
      (*v197)(v56 + v58, v61);
    }

    v1[2] = v53;
    v1[3] = v54;
    v1[4] = v198;
    v1[5] = v219;
    v1[6] = v52;
    v1[7] = v51;
    v1[8] = v209;
    v1[9] = v214;
    v1[10] = v203;
    if (v198 == 0xD000000000000011 && 0x80000001006FAE50 == v219 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v198 == 0xD000000000000014 && 0x80000001006FAE30 == v219 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v62 = v220;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v62 = sub_1003C4EB4(0, *(v220 + 2) + 1, 1, v220);
      }

      v64 = *(v62 + 2);
      v63 = *(v62 + 3);
      if (v64 >= v63 >> 1)
      {
        v62 = sub_1003C4EB4((v63 > 1), v64 + 1, 1, v62);
      }

      v65 = v1[167];
      v66 = v1[166];
      v193 = v1[165];
      v199 = v1[140];
      v204 = v1[131];
      *(v62 + 2) = v64 + 1;
      v221 = v62;
      v67 = &v62[72 * v64];
      *(v67 + 2) = *(v1 + 1);
      v68 = *(v1 + 2);
      v69 = *(v1 + 3);
      v70 = *(v1 + 4);
      *(v67 + 12) = v1[10];
      *(v67 + 4) = v69;
      *(v67 + 5) = v70;
      *(v67 + 3) = v68;
      sub_10000BBC4(v65, v66, &qword_1008335C0, &qword_1006DA7B0);
      v215 = *(v196 + 48);
      v71 = sub_100007224(&unk_100833638, &unk_1006BF6C0);
      v189 = SealedMessage.keyID.getter();
      v73 = v72;
      v210 = *(*(v71 - 8) + 8);
      v210(v66, v71);
      sub_10000BBC4(v65, v193, &qword_1008335C0, &qword_1006DA7B0);
      (*v186)(v199, v193 + *(v196 + 48), v204);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v222 = v217;
      sub_10016C4A0(v199, v189, v73, isUniquelyReferenced_nonNull_native);

      sub_10000BE18(v65, &qword_1008335C0, &qword_1006DA7B0);
      v14 = v222;
      v210(v193, v71);
      v15 = v202;
    }

    else
    {
      v75 = v220;
      v76 = v217;
      if (v198 == 0x6569666C6573 && v219 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v77 = *(v188 + 120);
        v78 = OBJC_IVAR____TtC8coreidvd36IdentityProofingProducedAssetManager_cloudKitUploadAssets;
        swift_beginAccess();
        v79 = *(*(v77 + v78) + 16);

        if (v79)
        {

          sub_10003ADCC(0xD000000000000011, 0x80000001006FAE50);
          v81 = v80;

          if (v81)
          {
            sub_1000AFA70((v1 + 2), (v1 + 11));
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v75 = sub_1003C4EB4(0, *(v220 + 2) + 1, 1, v220);
            }

            v83 = *(v75 + 2);
            v82 = *(v75 + 3);
            if (v83 >= v82 >> 1)
            {
              v75 = sub_1003C4EB4((v82 > 1), v83 + 1, 1, v75);
            }

            v84 = v1[167];
            v85 = v1[166];
            v216 = v1[165];
            v205 = v1[140];
            v200 = v1[131];
            *(v75 + 2) = v83 + 1;
            v86 = &v75[72 * v83];
            *(v86 + 2) = *(v1 + 1);
            v87 = *(v1 + 2);
            v88 = *(v1 + 3);
            v89 = *(v1 + 4);
            *(v86 + 12) = v1[10];
            *(v86 + 4) = v88;
            *(v86 + 5) = v89;
            *(v86 + 3) = v87;
            sub_10000BBC4(v84, v85, &qword_1008335C0, &qword_1006DA7B0);
            v211 = *(v196 + 48);
            v90 = sub_100007224(&unk_100833638, &unk_1006BF6C0);
            v190 = SealedMessage.keyID.getter();
            v92 = v91;
            v194 = *(*(v90 - 8) + 8);
            v194(v85, v90);
            sub_10000BBC4(v84, v216, &qword_1008335C0, &qword_1006DA7B0);
            (*v186)(v205, v216 + *(v196 + 48), v200);
            v93 = swift_isUniquelyReferenced_nonNull_native();
            v222 = v217;
            sub_10016C4A0(v205, v190, v92, v93);

            v76 = v222;
            v94 = v90;
            v1 = v208;
            v194(v216, v94);
            (*v197)(v85 + v211, v200);
          }
        }
      }

      else
      {
      }

      v95 = v213;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v95 = sub_1003C4EB4(0, *(v213 + 2) + 1, 1, v213);
      }

      v97 = *(v95 + 2);
      v96 = *(v95 + 3);
      v221 = v75;
      v218 = v76;
      if (v97 >= v96 >> 1)
      {
        v95 = sub_1003C4EB4((v96 > 1), v97 + 1, 1, v95);
      }

      v98 = v1[167];
      v99 = v1[166];
      v195 = v1[165];
      v201 = v1[140];
      v206 = v1[131];
      *(v95 + 2) = v97 + 1;
      v213 = v95;
      v100 = &v95[72 * v97];
      *(v100 + 2) = *(v1 + 1);
      v101 = *(v1 + 2);
      v102 = *(v1 + 3);
      v103 = *(v1 + 4);
      *(v100 + 12) = v1[10];
      *(v100 + 4) = v102;
      *(v100 + 5) = v103;
      *(v100 + 3) = v101;
      sub_10000BBC4(v98, v99, &qword_1008335C0, &qword_1006DA7B0);
      v215 = *(v196 + 48);
      v104 = sub_100007224(&unk_100833638, &unk_1006BF6C0);
      v191 = SealedMessage.keyID.getter();
      v106 = v105;
      v212 = *(*(v104 - 8) + 8);
      v212(v99, v104);
      sub_10000BBC4(v98, v195, &qword_1008335C0, &qword_1006DA7B0);
      (*v186)(v201, v195 + *(v196 + 48), v206);
      v107 = swift_isUniquelyReferenced_nonNull_native();
      v222 = v202;
      sub_10016C4A0(v201, v191, v106, v107);

      sub_10000BE18(v98, &qword_1008335C0, &qword_1006DA7B0);
      v15 = v222;
      v212(v195, v104);
      v14 = v218;
    }

    v10 &= v10 - 1;
    (*v197)(v1[166] + v215, v1[131]);
    v6 = v185;
    v13 = v213;
    v11 = v182;
    v7 = v183;
    v16 = v221;
  }

  while (1)
  {
    v17 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      return;
    }

    if (v17 >= v11)
    {
      break;
    }

    v10 = *(v7 + 8 * v17);
    ++v12;
    if (v10)
    {
      v217 = v14;
      v202 = v15;
      v220 = v16;
      v213 = v13;
      v12 = v17;
      goto LABEL_10;
    }
  }

  defaultLogger()();
  v108 = Logger.logObject.getter();
  v109 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v108, v109))
  {
    v110 = *(v1 + 1480);
    v111 = swift_slowAlloc();
    v112 = swift_slowAlloc();
    v222 = v112;
    *v111 = 136315138;
    v113 = 0xE400000000000000;
    v114 = 1280070982;
    v115 = 0xEA00000000004543;
    v116 = 0x495645445F444441;
    v117 = 0x80000001007063E0;
    v118 = 0xD000000000000010;
    if (v110 != 3)
    {
      v118 = 0x5353454E4556494CLL;
      v117 = 0xEF5055504554535FLL;
    }

    if (v110 != 2)
    {
      v116 = v118;
      v115 = v117;
    }

    if (v110)
    {
      v114 = 0x4C414954524150;
      v113 = 0xE700000000000000;
    }

    if (v110 <= 1)
    {
      v119 = v114;
    }

    else
    {
      v119 = v116;
    }

    if (v110 <= 1)
    {
      v120 = v113;
    }

    else
    {
      v120 = v115;
    }

    v121 = v208[161];
    v122 = v208[141];
    v123 = sub_100141FE4(v119, v120, &v222);

    *(v111 + 4) = v123;
    _os_log_impl(&_mh_execute_header, v108, v109, "Getting expected proofingRequestType for: %s", v111, 0xCu);
    sub_10000BB78(v112);

    v124 = *v187;
    v125 = v121;
    v1 = v208;
    (*v187)(v125, v122);
  }

  else
  {
    v126 = v1[161];
    v127 = v1[141];

    v124 = *v187;
    (*v187)(v126, v127);
  }

  v1[172] = v124;
  v128 = *(v1 + 1480);
  v129 = IdentityProofingConfiguration.documentType.getter();
  v130 = sub_10058C1A8(v128, v129);
  v131 = v130;
  v1[173] = v130;
  v132 = *(v130 + 32);
  *(v1 + 1481) = v132;
  v133 = -1;
  v134 = -1 << v132;
  v135 = *(v130 + 64);
  if (-v134 < 64)
  {
    v133 = ~(-1 << -v134);
  }

  v1[174] = OBJC_IVAR____TtC8coreidvd30IdentityProofingRequestManager_livenessManualReviewEncryptedMessage;
  *(v1 + 364) = enum case for EncryptedMessageEntity.idvServer(_:);
  *(v1 + 365) = enum case for EncryptedMessageEntity.assessor(_:);
  *(v1 + 366) = enum case for EncryptedMessageEntity.issuer(_:);
  *(v1 + 367) = enum case for EncryptedMessageEntity.livenessReview(_:);
  *(v1 + 368) = enum case for EncryptedMessageEntity.device(_:);
  *(v1 + 369) = enum case for DIPError.Code.keyMaterialFailureForLivenessManualReview(_:);
  v1[175] = _swiftEmptyArrayStorage;
  v136 = v133 & v135;
  if (v136)
  {
    v137 = 0;
LABEL_87:
    v140 = v1[126];
    v141 = v1[125];
    v142 = v1[114];
    v143 = v1[113];
    v144 = v1;
    v145 = (v136 - 1) & v136;
    v146 = __clz(__rbit64(v136)) | (v137 << 6);
    (*(v142 + 16))(v141, *(v130 + 48) + *(v142 + 72) * v146, v143);
    v147 = *(*(v131 + 56) + 8 * v146);
    v148 = sub_100007224(&qword_10083DC30, &qword_1006DB780);
    v149 = *(v148 + 48);
    (*(v142 + 32))(v140, v141, v143);
    *(v140 + v149) = v147;
    (*(*(v148 - 8) + 56))(v140, 0, 1, v148);

    v139 = v137;
  }

  else
  {
    v138 = 0;
    v139 = ((63 - v134) >> 6) - 1;
    while (v139 != v138)
    {
      v137 = v138 + 1;
      v136 = *(v130 + 72 + 8 * v138++);
      if (v136)
      {
        goto LABEL_87;
      }
    }

    v164 = v1[126];
    v165 = sub_100007224(&qword_10083DC30, &qword_1006DB780);
    (*(*(v165 - 8) + 56))(v164, 1, 1, v165);
    v144 = v1;
    v145 = 0;
  }

  v144[177] = v139;
  v144[176] = v145;
  v150 = v144[127];
  sub_1000B1FC8(v144[126], v150, &qword_10083DC28, &qword_1006DB778);
  v151 = sub_100007224(&qword_10083DC30, &qword_1006DB780);
  if ((*(*(v151 - 8) + 48))(v150, 1, v151) == 1)
  {

    v152._countAndFlagsBits = 0xD000000000000025;
    v153._countAndFlagsBits = 0x6531313038336265;
    v152._object = 0x8000000100706AA0;
    v153._object = 0xE800000000000000;
    logMilestone(tag:description:)(v153, v152);

    v154 = v144[1];
    v155 = v144[175];

    v154(v155);
  }

  else
  {
    v156 = v144[124];
    v157 = v144[114];
    v158 = *(v144[127] + *(v151 + 48));
    v144[178] = v158;
    (*(v157 + 32))(v156);
    v159 = swift_task_alloc();
    v144[179] = v159;
    *v159 = v144;
    v159[1] = sub_100215100;
    v160 = v144[60];
    v161 = v144[57];
    v162 = v144[58];
    v163 = *(v144 + 1480);

    sub_100209E84(v158, v161, v162, v160, v163);
  }
}

uint64_t sub_100215100(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1440) = a1;
  *(v3 + 1448) = v1;

  if (v1)
  {

    v4 = sub_100219F90;
  }

  else
  {
    v4 = sub_10021526C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10021526C()
{
  v575 = v0;
  v3 = v0;
  v4 = *(v0 + 1456);
  rawValue = v3[123]._rawValue;
  v6 = v3[114]._rawValue;
  v7 = v3[113]._rawValue;
  v8 = (v6 + 16);
  v9 = *(v6 + 2);
  v9(rawValue, v3[124]._rawValue, v7);
  v10 = (*(v6 + 11))(rawValue, v7);
  v573 = v3;
  if (v10 == v4)
  {
    v563 = v9;
    v11 = v3[178]._rawValue;
    v12 = v11 + 32;
    v13 = *(v11 + 2);
    while (1)
    {
      if (!v13)
      {
        v39 = v3;

        goto LABEL_18;
      }

      if (*v12 == 3)
      {
        break;
      }

      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      ++v12;
      --v13;
      if (v14)
      {
        v39 = v3;
        goto LABEL_17;
      }
    }

    v39 = v3;

LABEL_17:
    v40 = v39[168]._rawValue;

    if (!v40[2])
    {
      v105 = v3[130]._rawValue;
      v106 = v3[129]._rawValue;
      v107 = v3[128]._rawValue;
      v558 = v3[124]._rawValue;
      v108 = v3[114]._rawValue;
      v545 = v3[113]._rawValue;

      v106[13](v105, enum case for DIPError.Code.uploadedDataForLivenessDoesntExist(_:), v107);
      sub_1000402AC(_swiftEmptyArrayStorage);
      sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      v108[1](v558, v545);
      goto LABEL_80;
    }

LABEL_18:
    v41 = v39[108]._rawValue;
    v42 = v39[107]._rawValue;
    v43 = v39[105]._rawValue;
    sub_10000BA08(v39[59]._rawValue, *(v39[59]._rawValue + 3));
    sub_1000FF420(v43);
    if (v41[6](v43, 1, v42) == 1)
    {
      v44 = v3[130]._rawValue;
      v45 = v3[129]._rawValue;
      v46 = v3[128]._rawValue;
      v553 = v3[124]._rawValue;
      v47 = v3[114]._rawValue;
      v542 = v3[113]._rawValue;
      v48 = v3[105]._rawValue;

      sub_10000BE18(v48, &qword_1008399F0, &unk_1006DA210);
      v45[13](v44, enum case for DIPError.Code.unableToPrepareEncryptedDataForLiveness(_:), v46);
      sub_1000402AC(_swiftEmptyArrayStorage);
      sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      v47[1](v553, v542);
      goto LABEL_80;
    }

    (*(v39[108]._rawValue + 4))(v39[111]._rawValue, v39[105]._rawValue, v39[107]._rawValue);
    defaultLogger()();
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "adding upload data for liveness", v51, 2u);
    }

    v554 = v3[182]._rawValue;
    v52 = v3[172]._rawValue;
    v53 = v3[157]._rawValue;
    v54 = v3[141]._rawValue;
    v55 = v3[132]._rawValue;
    v533 = v3[131]._rawValue;
    v56 = v3[120]._rawValue;
    v57 = v3[114]._rawValue;
    v58 = v3[113]._rawValue;
    v521 = v3[89]._rawValue;
    v526 = v3[84]._rawValue;
    v59 = v3[74]._rawValue;
    v515 = *(v573 + 584);

    v52(v53, v54);
    v509 = *(v57 + 13);
    v511 = (v57 + 104);
    v509(v56, v554, v58);
    v555 = RecipientEncryptionCertificate.keyAgreement.getter();
    v60 = v515;
    v516 = v59[7];
    v516(v521, 1, 1, v60);
    v61 = v526;
    v527 = v55[7];
    v527(v61, 1, 1, v533);
    defaultLogger()();
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&_mh_execute_header, v62, v63, "encrypt idv data with aead", v64, 2u);
    }

    v65 = v573;
    v543 = *(v573 + 1448);
    v66 = *(v573 + 1440);
    v67 = *(v573 + 1376);
    v68 = *(v573 + 1248);
    v69 = *(v573 + 1128);
    v70 = *(v573 + 488);

    v67(v68, v69);
    sub_10000BA08(v70, v70[3]);
    *(v573 + 440) = v66;
    sub_100007224(&qword_1008336B0, &qword_1006BF6E8);
    sub_10000BC80(&qword_1008336B8, sub_10000BC2C, &protocol conformance descriptor for <A> [A]);
    sub_10000BC80(&qword_1008336C8, sub_10000BCF8, &protocol conformance descriptor for <A> [A]);
    dispatch thunk of HPKESuite.sealMessageAEAD<A>(message:)();
    if (v543)
    {
      sub_10000BE18(*(v573 + 672), &qword_100833690, &qword_1006BF6D8);
      v241 = *(v573 + 992);
      v242 = *(v573 + 960);
      v243 = *(v573 + 912);
      v244 = *(v573 + 904);
      v245 = *(v573 + 888);
      v246 = *(v573 + 864);
      v247 = *(v573 + 856);
      sub_10000BE18(*(v573 + 712), &qword_100833698, &qword_1006BF6E0);

      v248 = *(v243 + 8);
      v249 = v242;
      v3 = v573;
      v248(v249, v244);
      (*(v246 + 8))(v245, v247);
      v248(v241, v244);

      goto LABEL_68;
    }

    v498 = *(v573 + 1472);
    v490 = *(v573 + 1344);
    v479 = *(v573 + 1096);
    v109 = *(v573 + 1056);
    v110 = *(v573 + 1048);
    v494 = *(v573 + 968);
    v481 = *(v573 + 904);
    v483 = *(v573 + 960);
    v111 = *(v573 + 712);
    v112 = *(v573 + 672);
    v113 = *(v573 + 608);
    v114 = *(v573 + 592);
    v505 = v114;
    v115 = *(v573 + 584);
    v485 = *(v573 + 568);
    v488 = *(v573 + 1000);
    v116 = *(v573 + 560);
    v117 = *(v573 + 536);
    sub_10000BE18(v112, &qword_100833690, &qword_1006BF6D8);
    sub_10000BE18(v111, &qword_100833698, &qword_1006BF6E0);
    (*(v114 + 32))(v111, v113, v115);
    v516(v111, 0, 1, v115);
    v514 = *(v109 + 32);
    v514(v112, v479, v110);
    v527(v112, 0, 1, v110);
    sub_10000BBC4(v111, v116, &qword_100833698, &qword_1006BF6E0);
    *(v116 + *(v117 + 20)) = v490;
    v118 = v563;
    v563(v488, v483, v481);
    sub_10021E958(v116, v485, type metadata accessor for ProofingData);
    v509(v494, v498, v481);
    sub_10021E908(&qword_1008336A0, type metadata accessor for ProofingData, &unk_1006C83E8);
    sub_10021E908(&qword_1008336A8, type metadata accessor for ProofingData, &unk_1006C83C0);

    HPKEEncryptedMessageWithKeyWrap.init(sender:recipient:messages:)();
    if (!(*(v505 + 6))(v111, 1, v115))
    {
      v119 = *(v573 + 1056);
      v120 = *(v573 + 1048);
      v121 = *(v573 + 672);
      v122 = *(v573 + 664);
      v123 = *(v573 + 616);
      v124 = *(v573 + 592);
      v125 = *(v573 + 584);
      (*(v124 + 16))(v123, *(v573 + 712), v125);
      SealedMessage.keyID.getter();
      (*(v124 + 8))(v123, v125);
      sub_10000BBC4(v121, v122, &qword_100833690, &qword_1006BF6D8);
      if ((*(v119 + 48))(v122, 1, v120) == 1)
      {
        v126 = *(v573 + 664);

        sub_10000BE18(v126, &qword_100833690, &qword_1006BF6D8);
        v65 = v573;
      }

      else
      {
        v514(*(v573 + 1088), *(v573 + 664), *(v573 + 1048));
        defaultLogger()();
        v212 = Logger.logObject.getter();
        v213 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v212, v213))
        {
          v214 = swift_slowAlloc();
          *v214 = 0;
          _os_log_impl(&_mh_execute_header, v212, v213, "add idv data encryption key", v214, 2u);
        }

        v215 = *(v573 + 1376);
        v216 = *(v573 + 1240);
        v217 = *(v573 + 1128);
        v218 = *(v573 + 1088);
        v219 = *(v573 + 1056);
        v220 = *(v573 + 1048);

        v215(v216, v217);
        v65 = v573;
        HPKEEncryptedMessageWithKeyWrap.addMessageEncryptionKey(keyID:key:)();

        (*(v219 + 8))(v218, v220);
      }

      v118 = v563;
    }

    v221 = v65[120]._rawValue;
    v222 = v65[119]._rawValue;
    v223 = v65[113]._rawValue;
    defaultLogger()();
    v118(v222, v221, v223);
    v224 = Logger.logObject.getter();
    v225 = static os_log_type_t.debug.getter();
    v226 = os_log_type_enabled(v224, v225);
    v227 = v65[172]._rawValue;
    v228 = v65[154]._rawValue;
    v229 = v65[141]._rawValue;
    v230 = v65[119]._rawValue;
    v231 = v65[114]._rawValue;
    v232 = v65[113]._rawValue;
    if (v226)
    {
      v547 = v65[172]._rawValue;
      v233 = swift_slowAlloc();
      v537 = v228;
      v234 = swift_slowAlloc();
      v574[0] = v234;
      *v233 = 136315138;
      v235 = EncryptedMessageEntity.rawValue.getter();
      v237 = v236;
      v571 = v231[1];
      v571(v230, v232);
      v238 = v235;
      v65 = v573;
      v239 = sub_100141FE4(v238, v237, v574);

      *(v233 + 4) = v239;
      _os_log_impl(&_mh_execute_header, v224, v225, "add uploaded data encryption keys to encryptedIDVData for %s", v233, 0xCu);
      sub_10000BB78(v234);

      v547(v537, v229);
    }

    else
    {

      v571 = v231[1];
      v571(v230, v232);
      v227(v228, v229);
    }

    v240 = v555;
    HPKEEncryptedMessageWithKeyWrap.addMessageEncryptionKeys(keys:)(v65[171]);
    HPKEEncryptedMessageWithKeyWrap.sealKeys(to:encryptor:)();
    v525 = v65[180]._rawValue;
    v548 = v65[120]._rawValue;
    v250 = v65[114]._rawValue;
    v251 = v65[113]._rawValue;
    v252 = v65[100]._rawValue;
    v253 = v65[99]._rawValue;
    v520 = v65[98]._rawValue;
    v254 = v65[92]._rawValue;
    v255 = v65[91]._rawValue;
    v256 = *(v573 + 712);
    v257 = *(v573 + 672);
    sub_10021EA28(*(v573 + 560), type metadata accessor for ProofingData);
    sub_10000BE18(v257, &qword_100833690, &qword_1006BF6D8);
    v550 = v254[4];
    (v550)(v252, v253, v255);
    v258 = v573;
    sub_10000BE18(v256, &qword_100833698, &qword_1006BF6E0);
    v259 = v548;
    v540 = v250 + 8;
    v571(v259, v251);

    (v254[2])(v520, v252, v255);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v261 = *(v573 + 1400);
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_70;
    }

    goto LABEL_158;
  }

  if (v10 == HIDWORD(v3[182]._rawValue))
  {
    v15 = v3[108]._rawValue;
    v16 = v3[107]._rawValue;
    v17 = v3[106]._rawValue;
    v18 = v3[59]._rawValue;

    sub_10000BA08(v18, v18[3]);
    sub_1000FEE80(v17);
    if (v15[6](v17, 1, v16) == 1)
    {
      v19 = v3[130]._rawValue;
      v20 = v3[129]._rawValue;
      v21 = v3[128]._rawValue;
      v551 = v3[124]._rawValue;
      v22 = v3[114]._rawValue;
      v541 = v3[113]._rawValue;
      v23 = v3[106]._rawValue;

      sub_10000BE18(v23, &qword_1008399F0, &unk_1006DA210);
      v20[13](v19, enum case for DIPError.Code.unableToPrepareEncryptedDataForLiveness(_:), v21);
      sub_1000402AC(_swiftEmptyArrayStorage);
      sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();

      v22[1](v551, v541);
LABEL_80:

      v282 = v3[1]._rawValue;

      return v282();
    }

    v565 = v9;
    (*(v3[108]._rawValue + 4))(v3[112]._rawValue, v3[106]._rawValue, v3[107]._rawValue);
    defaultLogger()();
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&_mh_execute_header, v71, v72, "encrypting idv data for assessor", v73, 2u);
    }

    rawValue_high = HIDWORD(v3[182]._rawValue);
    v74 = v3[172]._rawValue;
    v75 = v3[160]._rawValue;
    v76 = v3[141]._rawValue;
    v77 = v3[132]._rawValue;
    v534 = v3[131]._rawValue;
    v78 = v3[122]._rawValue;
    v79 = v3[114]._rawValue;
    v80 = v3[113]._rawValue;
    v522 = v3[90]._rawValue;
    v528 = v3[86]._rawValue;
    v81 = v3[74]._rawValue;
    v517 = *(v573 + 584);

    v74(v75, v76);
    v509 = *(v79 + 13);
    v511 = (v79 + 104);
    v509(v78, rawValue_high, v80);
    v557 = RecipientEncryptionCertificate.keyAgreement.getter();
    v82 = v517;
    v518 = v81[7];
    v518(v522, 1, 1, v82);
    v83 = v528;
    v529 = v77[7];
    v529(v83, 1, 1, v534);
    defaultLogger()();
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&_mh_execute_header, v84, v85, "encrypt idv data with aead", v86, 2u);
    }

    v3 = v573;
    v544 = *(v573 + 1448);
    v87 = *(v573 + 1440);
    v88 = *(v573 + 1376);
    v89 = *(v573 + 1272);
    v90 = *(v573 + 1128);
    v91 = *(v573 + 488);

    v88(v89, v90);
    sub_10000BA08(v91, v91[3]);
    *(v573 + 448) = v87;
    sub_100007224(&qword_1008336B0, &qword_1006BF6E8);
    sub_10000BC80(&qword_1008336B8, sub_10000BC2C, &protocol conformance descriptor for <A> [A]);
    sub_10000BC80(&qword_1008336C8, sub_10000BCF8, &protocol conformance descriptor for <A> [A]);
    dispatch thunk of HPKESuite.sealMessageAEAD<A>(message:)();
    if (v544)
    {
      v92 = *(v573 + 992);
      v93 = *(v573 + 976);
      v94 = *(v573 + 912);
      v95 = *(v573 + 904);
      v96 = *(v573 + 896);
      v97 = *(v573 + 864);
      v98 = *(v573 + 856);
      v99 = *(v573 + 688);

      sub_10000BE18(v99, &qword_100833690, &qword_1006BF6D8);
      v100 = *(v94 + 8);
      v100(v93, v95);
      (*(v97 + 8))(v96, v98);
      v100(v92, v95);

      sub_10000BE18(*(v573 + 720), &qword_100833698, &qword_1006BF6E0);

LABEL_79:

      goto LABEL_80;
    }

    v506 = *(v573 + 1472);
    v486 = *(v573 + 1112);
    v142 = *(v573 + 1056);
    v143 = *(v573 + 1048);
    v495 = *(v573 + 1000);
    v499 = *(v573 + 976);
    v502 = *(v573 + 968);
    v144 = *(v573 + 904);
    v145 = *(v573 + 720);
    v146 = *(v573 + 688);
    v147 = *(v573 + 624);
    v148 = *(v573 + 592);
    v149 = *(v573 + 584);
    v150 = *(v573 + 576);
    v151 = *(v573 + 536);
    v491 = *(v573 + 568);
    sub_10000BE18(v146, &qword_100833690, &qword_1006BF6D8);
    sub_10000BE18(v145, &qword_100833698, &qword_1006BF6E0);
    (*(v148 + 32))(v145, v147, v149);
    v518(v145, 0, 1, v149);
    v523 = *(v142 + 32);
    v523(v146, v486, v143);
    v529(v146, 0, 1, v143);
    sub_10000BBC4(v145, v150, &qword_100833698, &qword_1006BF6E0);
    *(v150 + *(v151 + 20)) = 0;
    v565(v495, v499, v144);
    v152 = v150;
    v153 = v573;
    sub_10021E958(v152, v491, type metadata accessor for ProofingData);
    v509(v502, v506, v144);
    sub_10021E908(&qword_1008336A0, type metadata accessor for ProofingData, &unk_1006C83E8);
    sub_10021E908(&qword_1008336A8, type metadata accessor for ProofingData, &unk_1006C83C0);
    HPKEEncryptedMessageWithKeyWrap.init(sender:recipient:messages:)();
    v154 = (*(v148 + 48))(v145, 1, v149);
    v155 = v557;
    if (!v154)
    {
      v156 = *(v573 + 1056);
      v157 = *(v573 + 1048);
      v158 = *(v573 + 688);
      v159 = *(v573 + 680);
      v160 = *(v573 + 616);
      v161 = *(v573 + 592);
      v162 = *(v573 + 584);
      (*(v161 + 16))(v160, *(v573 + 720), v162);
      SealedMessage.keyID.getter();
      (*(v161 + 8))(v160, v162);
      sub_10000BBC4(v158, v159, &qword_100833690, &qword_1006BF6D8);
      if ((*(v156 + 48))(v159, 1, v157) == 1)
      {
        v163 = *(v573 + 680);

        sub_10000BE18(v163, &qword_100833690, &qword_1006BF6D8);
      }

      else
      {
        v523(*(v573 + 1104), *(v573 + 680), *(v573 + 1048));
        defaultLogger()();
        v271 = Logger.logObject.getter();
        v272 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v271, v272))
        {
          v273 = swift_slowAlloc();
          *v273 = 0;
          _os_log_impl(&_mh_execute_header, v271, v272, "add idv data encryption key", v273, 2u);
        }

        v274 = *(v573 + 1376);
        v275 = *(v573 + 1264);
        v276 = *(v573 + 1128);
        v277 = *(v573 + 1104);
        v278 = *(v573 + 1056);
        v279 = *(v573 + 1048);

        v274(v275, v276);
        v153 = v573;
        HPKEEncryptedMessageWithKeyWrap.addMessageEncryptionKey(keyID:key:)();

        (*(v278 + 8))(v277, v279);
        v155 = v557;
      }
    }

    HPKEEncryptedMessageWithKeyWrap.sealKeys(to:encryptor:)();
    v280 = v155;
    v281 = v153[92];
    v567 = v153[91];
    v284 = v153[122];
    v285 = v153[114];
    v286 = v153[113];
    v287 = v153[103];
    v288 = v153[102];
    v520 = v153[101];
    v525 = v153[175];
    v514 = v153[90];
    v289 = *(v573 + 688);
    v290 = *(v573 + 576);

    sub_10021EA28(v290, type metadata accessor for ProofingData);
    sub_10000BE18(v289, &qword_100833690, &qword_1006BF6D8);
    v291 = *(v285 + 8);
    (v291)(v284, v286);
    v292 = *(v281 + 32);
    v292(v287, v288, v567);
    sub_10000BE18(v514, &qword_100833698, &qword_1006BF6E0);
    (*(v281 + 16))(v520, v287, v567);
    v293 = swift_isUniquelyReferenced_nonNull_native();
    v261 = *(v573 + 1400);
    v550 = v281 + 32;
    if ((v293 & 1) == 0)
    {
      v261 = sub_1003C5E58(0, v261[2].isa + 1, 1, v261);
    }

    isa = v261[2].isa;
    v294 = v261[3].isa;
    v532 = v291;
    v540 = v292;
    if (isa >= v294 >> 1)
    {
      v261 = sub_1003C5E58((v294 > 1), isa + 1, 1, v261);
    }

    v127 = *(v573 + 992);
    v129 = *(v573 + 904);
    v131 = *(v573 + 896);
    v295 = *(v573 + 864);
    v296 = *(v573 + 856);
    v1 = *(v573 + 808);
    v297 = *(v573 + 736);
    v2 = *(v573 + 728);
    v298 = *(v297 + 8);
    v297 += 8;
    v298(*(v573 + 824), v2);
    (*(v295 + 8))(v131, v296);
    (v532)(v127, v129);
    v261[2].isa = (isa + 1);
    v299 = v261 + ((*(v297 + 72) + 32) & ~*(v297 + 72));
    v300 = *(v297 + 64);
    v3 = v573;
    (v540)(&v299[v300 * isa], v1, v2);
    goto LABEL_134;
  }

  if (v10 == LODWORD(v3[183]._rawValue))
  {
    v564 = v9;

    defaultLogger()();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "encrypting mrz data for issuer", v26, 2u);
    }

    v552 = v3[183]._rawValue;
    v27 = v3[172]._rawValue;
    v28 = v3[153]._rawValue;
    v29 = v3[141]._rawValue;
    v30 = v3[118]._rawValue;
    v31 = v3[114]._rawValue;
    v32 = v3[113]._rawValue;
    v33 = v3[59]._rawValue;

    v27(v28, v29);
    v34 = v31[13];
    v34(v30, v552, v32);
    v35 = sub_10000BA08(v33, v33[3]);
    v36 = (v35 + *(type metadata accessor for Workflow(0) + 84));
    if (v36[1])
    {
      v37 = *v36;
      v38 = v36[1];
    }

    else
    {
      v38 = 0xE700000000000000;
      v37 = 0x746C7561666564;
    }

    v135 = v3[181]._rawValue;
    v136 = v3[110]._rawValue;

    sub_1000FFA4C(v37, v38, v136);
    if (v135)
    {
      v137 = v3[124]._rawValue;
      v138 = v3[118]._rawValue;
      v139 = v3[114]._rawValue;
      v140 = v3[113]._rawValue;

      v141 = v139[1];
      v141(v138, v140);
      v141(v137, v140);

LABEL_68:

      goto LABEL_79;
    }

    v530 = v34;
    v535 = v3[131]._rawValue;
    v164 = v3[110]._rawValue;
    v165 = v3[108]._rawValue;
    v166 = v3[107]._rawValue;
    v167 = v3[88]._rawValue;
    v168 = v3[82]._rawValue;
    v169 = v3[74]._rawValue;
    v170 = v3[73]._rawValue;
    v171 = v3[132]._rawValue;

    v546 = RecipientEncryptionCertificate.keyAgreement.getter();
    v165[1](v164, v166);
    v512 = v169[7];
    v512(v167, 1, 1, v170);
    v514 = v171[7];
    (v514)(v168, 1, 1, v535);
    defaultLogger()();
    v172 = Logger.logObject.getter();
    v173 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v172, v173))
    {
      v174 = swift_slowAlloc();
      *v174 = 0;
      _os_log_impl(&_mh_execute_header, v172, v173, "encrypt idv data with aead", v174, 2u);
    }

    v175 = *(v573 + 1440);
    v176 = *(v573 + 1376);
    v177 = *(v573 + 1216);
    v178 = *(v573 + 1128);
    v179 = *(v573 + 488);

    v176(v177, v178);
    sub_10000BA08(v179, v179[3]);
    *(v573 + 432) = v175;
    sub_100007224(&qword_1008336B0, &qword_1006BF6E8);
    sub_10000BC80(&qword_1008336B8, sub_10000BC2C, &protocol conformance descriptor for <A> [A]);
    sub_10000BC80(&qword_1008336C8, sub_10000BCF8, &protocol conformance descriptor for <A> [A]);
    dispatch thunk of HPKESuite.sealMessageAEAD<A>(message:)();
    v503 = *(v573 + 1472);
    v492 = *(v573 + 1352);
    v480 = *(v573 + 1080);
    v194 = *(v573 + 1056);
    v195 = *(v573 + 1048);
    v482 = *(v573 + 904);
    v484 = *(v573 + 944);
    v509 = *(v573 + 768);
    v196 = *(v573 + 704);
    v197 = *(v573 + 656);
    v198 = *(v573 + 600);
    v496 = *(v573 + 592);
    v500 = *(v573 + 968);
    v199 = *(v573 + 584);
    v487 = *(v573 + 568);
    v489 = *(v573 + 1000);
    v200 = *(v573 + 552);
    v536 = *(v573 + 536);
    sub_10000BE18(v197, &qword_100833690, &qword_1006BF6D8);
    sub_10000BE18(v196, &qword_100833698, &qword_1006BF6E0);
    (*(v496 + 32))(v196, v198, v199);
    v512(v196, 0, 1, v199);
    v520 = (v194 + 32);
    v511 = *(v194 + 32);
    v511(v197, v480, v195);
    (v514)(v197, 0, 1, v195);
    sub_10000BBC4(v196, v200, &qword_100833698, &qword_1006BF6E0);
    *(v200 + *(v536 + 20)) = v492;
    v201 = v564;
    v564(v489, v484, v482);
    sub_10021E958(v200, v487, type metadata accessor for ProofingData);
    v530(v500, v503, v482);
    sub_10021E908(&qword_1008336A0, type metadata accessor for ProofingData, &unk_1006C83E8);
    sub_10021E908(&qword_1008336A8, type metadata accessor for ProofingData, &unk_1006C83C0);

    HPKEEncryptedMessageWithKeyWrap.init(sender:recipient:messages:)();
    v202 = (*(v496 + 48))(v196, 1, v199);
    v203 = v573;
    if (!v202)
    {
      v204 = *(v573 + 1056);
      v205 = *(v573 + 1048);
      v206 = *(v573 + 656);
      v207 = *(v573 + 648);
      v208 = *(v573 + 616);
      v209 = *(v573 + 592);
      v210 = *(v573 + 584);
      (*(v209 + 16))(v208, *(v573 + 704), v210);
      SealedMessage.keyID.getter();
      (*(v209 + 8))(v208, v210);
      sub_10000BBC4(v206, v207, &qword_100833690, &qword_1006BF6D8);
      if ((*(v204 + 48))(v207, 1, v205) == 1)
      {
        v211 = *(v573 + 648);

        sub_10000BE18(v211, &qword_100833690, &qword_1006BF6D8);
        v203 = v573;
      }

      else
      {
        v511(*(v573 + 1072), *(v573 + 648), *(v573 + 1048));
        defaultLogger()();
        v326 = Logger.logObject.getter();
        v327 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v326, v327))
        {
          v328 = swift_slowAlloc();
          *v328 = 0;
          _os_log_impl(&_mh_execute_header, v326, v327, "add idv data encryption key", v328, 2u);
        }

        v329 = *(v573 + 1376);
        v330 = *(v573 + 1208);
        v331 = *(v573 + 1128);
        v332 = *(v573 + 1072);
        v333 = *(v573 + 1056);
        v334 = *(v573 + 1048);

        v329(v330, v331);
        v203 = v573;
        HPKEEncryptedMessageWithKeyWrap.addMessageEncryptionKey(keyID:key:)();

        (*(v333 + 8))(v332, v334);
      }

      v201 = v564;
    }

    v335 = v203[118]._rawValue;
    v336 = v203[117]._rawValue;
    v337 = v203[113]._rawValue;
    defaultLogger()();
    v201(v336, v335, v337);
    v338 = Logger.logObject.getter();
    v339 = static os_log_type_t.debug.getter();
    v340 = os_log_type_enabled(v338, v339);
    v341 = v203[172]._rawValue;
    v342 = v203[150]._rawValue;
    v343 = v203[141]._rawValue;
    v344 = v203[117]._rawValue;
    v345 = v203[114]._rawValue;
    v346 = v203[113]._rawValue;
    if (v340)
    {
      v559 = v203[172]._rawValue;
      v347 = swift_slowAlloc();
      v538 = v342;
      v348 = swift_slowAlloc();
      v574[0] = v348;
      *v347 = 136315138;
      v349 = EncryptedMessageEntity.rawValue.getter();
      v351 = v350;
      v572 = v345[1];
      v572(v344, v346);
      v352 = v349;
      v203 = v573;
      v353 = sub_100141FE4(v352, v351, v574);

      *(v347 + 4) = v353;
      _os_log_impl(&_mh_execute_header, v338, v339, "add uploaded data encryption keys to encryptedIDVData for %s", v347, 0xCu);
      sub_10000BB78(v348);

      v559(v538, v343);
    }

    else
    {

      v572 = v345[1];
      v572(v344, v346);
      v341(v342, v343);
    }

    v354 = v546;
    HPKEEncryptedMessageWithKeyWrap.addMessageEncryptionKeys(keys:)(v203[170]);
    HPKEEncryptedMessageWithKeyWrap.sealKeys(to:encryptor:)();
    v532 = v203[180]._rawValue;
    v540 = v203[175]._rawValue;
    v560 = v203[118]._rawValue;
    v355 = v203[114]._rawValue;
    v356 = v203[113]._rawValue;
    v357 = v203[97]._rawValue;
    v358 = v203[96]._rawValue;
    v525 = v203[95]._rawValue;
    v359 = v203[92]._rawValue;
    v360 = v203[91]._rawValue;
    v361 = *(v573 + 704);
    v362 = *(v573 + 656);
    sub_10021EA28(*(v573 + 552), type metadata accessor for ProofingData);
    sub_10000BE18(v362, &qword_100833690, &qword_1006BF6D8);
    v1 = v359 + 4;
    v568 = v359[4].isa;
    v568(v357, v358, v360);
    v363 = v361;
    v3 = v573;
    sub_10000BE18(v363, &qword_100833698, &qword_1006BF6E0);
    v364 = v560;
    v550 = v355 + 8;
    v572(v364, v356);

    (v359[2].isa)(v525, v357, v360);
    v365 = swift_isUniquelyReferenced_nonNull_native();
    v261 = *(v573 + 1400);
    if ((v365 & 1) == 0)
    {
      v261 = sub_1003C5E58(0, v261[2].isa + 1, 1, *(v573 + 1400));
    }

    isa = v261[2].isa;
    v366 = v261[3].isa;
    if (isa >= v366 >> 1)
    {
      v261 = sub_1003C5E58((v366 > 1), isa + 1, 1, v261);
    }

    v127 = *(v573 + 992);
    v129 = *(v573 + 904);
    v131 = *(v573 + 760);
    v367 = *(v573 + 736);
    v368 = *(v573 + 728);
    v369 = *(v367 + 8);
    v2 = v367 + 8;
    v369(*(v573 + 776), v368);
    v572(v127, v129);
    v261[2].isa = (isa + 1);
    v568(v261 + ((*(v2 + 72) + 32) & ~*(v2 + 72)) + *(v2 + 64) * isa, v131, v368);
LABEL_134:
    while (1)
    {
      v133 = v3[177]._rawValue;
      v134 = v3[176]._rawValue;
      v3[175]._rawValue = v261;
      if (v134)
      {
        goto LABEL_41;
      }

LABEL_135:
      v436 = ((1 << BYTE1(v3[185]._rawValue)) + 63) >> 6;
      if (v436 <= v133 + 1)
      {
        v437 = v133 + 1;
      }

      else
      {
        v437 = ((1 << BYTE1(v3[185]._rawValue)) + 63) >> 6;
      }

      v425 = (v437 - 1);
      while (1)
      {
        v438 = v133 + 1;
        if (__OFADD__(v133, 1))
        {
          break;
        }

        if (v438 >= v436)
        {
          v462 = v3[126]._rawValue;
          v463 = sub_100007224(&qword_10083DC30, &qword_1006DB780);
          (*(*(v463 - 8) + 56))(v462, 1, 1, v463);
          v443 = 0;
          goto LABEL_144;
        }

        v129 = v3[173]._rawValue;
        v134 = *&v129[8 * v438 + 64];
        ++v133;
        if (v134)
        {
          v133 = v438;
          goto LABEL_143;
        }
      }

      __break(1u);
LABEL_155:
      v3 = v425;

      v525(v520, v514);
      v474 = *(v129 + 1);
      v129 += 8;
      v474(v511, v509);
      v475 = v127[1];
      ++v127;
      v475(v540, v532);
      (v2)(v133, v550);
LABEL_156:
      v476 = (v3[63]._rawValue + v3[174]._rawValue);
      v477 = *v476;
      v478 = v476[1];
      *v476 = isa;
      v476[1] = v131;
      sub_10000BD94(v477, v478);
LABEL_133:
      v261 = v3[175]._rawValue;
    }
  }

  if (v10 == HIDWORD(v3[183]._rawValue))
  {
    v101 = v3[181]._rawValue;
    v102 = v3[62]._rawValue;
    v103 = v3[58]._rawValue;

    v104 = sub_1001FE8EC(v103, v102);
    if (v101)
    {
      (*(v3[114]._rawValue + 1))(v3[124]._rawValue, v3[113]._rawValue);

      goto LABEL_80;
    }

    if (v104)
    {
      v566 = v9;
      v571 = v8;
      defaultLogger()();
      v180 = Logger.logObject.getter();
      v181 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v180, v181))
      {
        v182 = swift_slowAlloc();
        *v182 = 0;
        _os_log_impl(&_mh_execute_header, v180, v181, "Creating the key material for liveness manual review", v182, 2u);
      }

      v183 = v3[172]._rawValue;
      v184 = v3[149]._rawValue;
      v185 = v3[141]._rawValue;
      v186 = v3[108]._rawValue;
      v187 = v3[107]._rawValue;
      v188 = v3[104]._rawValue;
      v189 = v3[59]._rawValue;

      v183(v184, v185);
      sub_10000BA08(v189, v189[3]);
      sub_1000FF674(v188);
      if (v186[6](v188, 1, v187) == 1)
      {
        v190 = HIDWORD(v3[184]._rawValue);
        v191 = v3[130]._rawValue;
        v192 = v3[129]._rawValue;
        v193 = v3[128]._rawValue;
        sub_10000BE18(v3[104]._rawValue, &qword_1008399F0, &unk_1006DA210);
        v192[13](v191, v190, v193);
        sub_1000402AC(_swiftEmptyArrayStorage);
        sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
        v427 = HIDWORD(v3[184]._rawValue);
        v127 = v3[143]._rawValue;
        v532 = v3[141]._rawValue;
        v540 = v3[172]._rawValue;
        v428 = v3[130]._rawValue;
        v429 = v3[129]._rawValue;
        v430 = v3[128]._rawValue;
        v431 = v3[124]._rawValue;
        v432 = v3[114]._rawValue;
        v550 = *(v573 + 904);
        v570 = v431;
        v433 = *(v573 + 528);
        isa = "ta for liveness manual review";
        v434 = *(v573 + 520);
        v129 = "ID State unavailable";
        v1 = *(v573 + 512);
        v131 = 0x80000001007069A0;
        v429[13](v428, v427, v430);
        sub_1000402AC(_swiftEmptyArrayStorage);
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
        v2 = swift_allocError();
        (*(v434 + 16))(v435, v433, v1);
        defaultLogger()();
        DIPRecordError(_:message:log:)();

        (v540)(v127, v532);
        (*(v434 + 8))(v433, v1);
        (v432)[1](v570, v550);
        v3 = v573;

        goto LABEL_133;
      }

      (*(v3[108]._rawValue + 4))(v3[109]._rawValue, v3[104]._rawValue, v3[107]._rawValue);
      defaultLogger()();
      v261 = Logger.logObject.getter();
      v301 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v261, v301))
      {
        v302 = swift_slowAlloc();
        *v302 = 0;
        _os_log_impl(&_mh_execute_header, v261, v301, "idvLivenessManualReviewCertificate exists in the dynamic workflow to create key material for liveness manual review", v302, 2u);
      }

      v303 = v3[172]._rawValue;
      v304 = v3[168]._rawValue;
      v305 = v3[148]._rawValue;
      v306 = v3[141]._rawValue;

      v303(v305, v306);
      v307 = v304[2];
      if (!v307)
      {
        v309 = _swiftEmptyArrayStorage;
        goto LABEL_122;
      }

      v308 = 0;
      v258 = 0x6569666C6573;
      v540 = v307 - 1;
      v309 = _swiftEmptyArrayStorage;
      v550 = 32;
LABEL_92:
      v310 = 72 * v308 + 32;
      v311 = v308;
      while (1)
      {
        v312 = *(v573 + 1344);
        if (v311 >= *(v312 + 16))
        {
          break;
        }

        v313 = v312 + v310;
        v314 = *(v313 + 16);
        v315 = *(v313 + 32);
        v316 = *(v313 + 48);
        *(v573 + 224) = *(v313 + 64);
        *(v573 + 192) = v315;
        *(v573 + 208) = v316;
        *(v573 + 176) = v314;
        *(v573 + 160) = *v313;
        v261 = *(v573 + 176);
        v317 = *(v573 + 184);
        if (v261 == 0xD000000000000011 && 0x80000001006FAE50 == v317 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v261 == 0x6569666C6573 && v317 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v3 = v573;
          sub_1000AFA70(v573 + 160, v573 + 232);
          v318 = swift_isUniquelyReferenced_nonNull_native();
          *(v573 + 424) = v309;
          if ((v318 & 1) == 0)
          {
            v261 = (v573 + 424);
            sub_100173020(0, v309[2] + 1, 1);
            v309 = *(v573 + 424);
          }

          v320 = v309[2];
          v319 = v309[3];
          if (v320 >= v319 >> 1)
          {
            v261 = (v573 + 424);
            sub_100173020((v319 > 1), v320 + 1, 1);
            v309 = *(v573 + 424);
          }

          v308 = v311 + 1;
          v309[2] = v320 + 1;
          v321 = &v309[9 * v320];
          *(v321 + 2) = *(v573 + 160);
          v322 = *(v573 + 176);
          v323 = *(v573 + 192);
          v324 = *(v573 + 208);
          v321[12] = *(v573 + 224);
          *(v321 + 4) = v323;
          *(v321 + 5) = v324;
          *(v321 + 3) = v322;
          if (v540 == v311)
          {
LABEL_122:
            v531 = v3[184]._rawValue;
            v370 = v3[132]._rawValue;
            v524 = v3[121]._rawValue;
            v497 = v3[116]._rawValue;
            v501 = v3[131]._rawValue;
            v371 = v3[114]._rawValue;
            v372 = v3[113]._rawValue;
            v373 = v3[87]._rawValue;
            v493 = v3[80]._rawValue;
            v374 = v3[74]._rawValue;
            v375 = v3[73]._rawValue;
            v510 = v3[71]._rawValue;
            v513 = v3[125]._rawValue;
            v376 = *(v573 + 544);
            v377 = *(v573 + 536);
            v507 = *(v371 + 13);
            v507();
            v561 = RecipientEncryptionCertificate.keyAgreement.getter();
            v519 = v373;
            v374[7](v373, 1, 1, v375);
            v370[7](v493, 1, 1, v501);
            sub_10000BBC4(v373, v376, &qword_100833698, &qword_1006BF6E0);
            *(v376 + *(v377 + 20)) = v309;
            v378 = v566;
            v566(v513, v497, v372);
            v379 = v376;
            v380 = v573;
            sub_10021E958(v379, v510, type metadata accessor for ProofingData);
            (v507)(v524, v531, v372);
            sub_10021E908(&qword_1008336A0, type metadata accessor for ProofingData, &unk_1006C83E8);
            sub_10021E908(&qword_1008336A8, type metadata accessor for ProofingData, &unk_1006C83C0);
            HPKEEncryptedMessageWithKeyWrap.init(sender:recipient:messages:)();
            if (!(v374[6])(v519, 1, v375))
            {
              v381 = *(v573 + 1056);
              v382 = *(v573 + 1048);
              v383 = *(v573 + 640);
              v384 = *(v573 + 632);
              v385 = *(v573 + 616);
              v386 = *(v573 + 592);
              v387 = *(v573 + 584);
              (*(v386 + 16))(v385, *(v573 + 696), v387);
              SealedMessage.keyID.getter();
              (*(v386 + 8))(v385, v387);
              sub_10000BBC4(v383, v384, &qword_100833690, &qword_1006BF6D8);
              if ((*(v381 + 48))(v384, 1, v382) == 1)
              {
                v388 = *(v573 + 632);

                sub_10000BE18(v388, &qword_100833690, &qword_1006BF6D8);
              }

              else
              {
                (*(*(v573 + 1056) + 32))(*(v573 + 1064), *(v573 + 632), *(v573 + 1048));
                defaultLogger()();
                v389 = Logger.logObject.getter();
                v390 = static os_log_type_t.debug.getter();
                if (os_log_type_enabled(v389, v390))
                {
                  v391 = swift_slowAlloc();
                  *v391 = 0;
                  _os_log_impl(&_mh_execute_header, v389, v390, "add idv data encryption key", v391, 2u);
                }

                v392 = *(v573 + 1376);
                v393 = *(v573 + 1176);
                v394 = *(v573 + 1128);
                v395 = *(v573 + 1064);
                v396 = *(v573 + 1056);
                v397 = *(v573 + 1048);

                v392(v393, v394);
                v380 = v573;
                HPKEEncryptedMessageWithKeyWrap.addMessageEncryptionKey(keyID:key:)();

                (*(v396 + 8))(v395, v397);
              }

              v378 = v566;
            }

            v398 = v380[116]._rawValue;
            v399 = v380[115]._rawValue;
            v400 = v380[113]._rawValue;
            defaultLogger()();
            v378(v399, v398, v400);
            v401 = Logger.logObject.getter();
            v402 = static os_log_type_t.debug.getter();
            v403 = os_log_type_enabled(v401, v402);
            v404 = v380[172]._rawValue;
            v405 = v380[146]._rawValue;
            v406 = v380[141]._rawValue;
            v407 = v380[115]._rawValue;
            v408 = v380[114]._rawValue;
            v409 = v380[113]._rawValue;
            if (v403)
            {
              v549 = v380[172]._rawValue;
              v410 = swift_slowAlloc();
              v539 = v405;
              v411 = swift_slowAlloc();
              v574[0] = v411;
              *v410 = 136315138;
              v412 = EncryptedMessageEntity.rawValue.getter();
              v414 = v413;
              v569 = v408[1];
              v569(v407, v409);
              v415 = v412;
              v380 = v573;
              v416 = sub_100141FE4(v415, v414, v574);

              *(v410 + 4) = v416;
              _os_log_impl(&_mh_execute_header, v401, v402, "add uploaded data encryption keys to encryptedIDVData for %s", v410, 0xCu);
              sub_10000BB78(v411);

              v549(v539, v406);
            }

            else
            {

              v569 = v408[1];
              v569(v407, v409);
              v404(v405, v406);
            }

            HPKEEncryptedMessageWithKeyWrap.addMessageEncryptionKeys(keys:)(v380[171]);
            HPKEEncryptedMessageWithKeyWrap.sealKeys(to:encryptor:)();
            v417 = v380[116]._rawValue;
            v418 = v380[113]._rawValue;
            v419 = v561;
            v420 = v380[94]._rawValue;
            v421 = v380[93]._rawValue;
            v422 = v380[92]._rawValue;
            v423 = v380[91]._rawValue;
            v562 = v380[87]._rawValue;
            v424 = v380[80]._rawValue;
            v425 = v380;
            v426 = v380[68]._rawValue;

            sub_10021EA28(v426, type metadata accessor for ProofingData);
            sub_10000BE18(v424, &qword_100833690, &qword_1006BF6D8);
            v2 = v569;
            v569(v417, v418);
            v422[4](v420, v421, v423);
            sub_10000BE18(v562, &qword_100833698, &qword_1006BF6E0);
            type metadata accessor for JSONEncoder();
            swift_allocObject();
            JSONEncoder.init()();
            sub_1000BA30C(&qword_100834E58, &qword_100833680, &qword_1006C4A20, &protocol conformance descriptor for HPKEEncryptedMessageWithKeyWrap<A>);
            isa = dispatch thunk of JSONEncoder.encode<A>(_:)();
            v131 = v464;

            defaultLogger()();
            sub_10000B8B8(isa, v131);
            v1 = Logger.logObject.getter();
            v465 = static os_log_type_t.debug.getter();
            sub_10000B90C(isa, v131);
            v508 = v465;
            v466 = os_log_type_enabled(v1, v465);
            v520 = v425[145]._rawValue;
            v525 = v425[172]._rawValue;
            v133 = v425[124]._rawValue;
            v540 = v425[109]._rawValue;
            v550 = v425[113]._rawValue;
            v127 = v425[108]._rawValue;
            v532 = v425[107]._rawValue;
            v511 = v425[94]._rawValue;
            v514 = v425[141]._rawValue;
            v129 = v425[92]._rawValue;
            v509 = v425[91]._rawValue;
            if (v466)
            {
              v504 = v425[124]._rawValue;
              v467 = swift_slowAlloc();
              v2 = swift_slowAlloc();
              v574[0] = v2;
              *v467 = 136315138;
              sub_10000B8B8(isa, v131);
              v468 = Data.description.getter();
              v470 = v469;
              sub_10000B90C(isa, v131);
              v471 = sub_100141FE4(v468, v470, v574);
              v3 = v573;

              *(v467 + 4) = v471;
              _os_log_impl(&_mh_execute_header, v1, v508, "The data count for manual review is %s", v467, 0xCu);
              sub_10000BB78(v2);

              v525(v520, v514);
              v472 = *(v129 + 1);
              v129 += 8;
              v472(v511, v509);
              v473 = v127[1];
              ++v127;
              v473(v540, v532);
              v569(v504, v550);
              goto LABEL_156;
            }

            goto LABEL_155;
          }

          goto LABEL_92;
        }

        ++v311;
        v310 += 72;
        if (v307 == v311)
        {
          v3 = v573;
          goto LABEL_122;
        }
      }

      __break(1u);
LABEL_158:
      v261 = sub_1003C5E58(0, v261[2].isa + 1, 1, v261);
LABEL_70:
      isa = v261[2].isa;
      v262 = v261[3].isa;
      v532 = (isa + 1);
      if (isa >= v262 >> 1)
      {
        v261 = sub_1003C5E58((v262 > 1), isa + 1, 1, v261);
      }

      v127 = *(v258 + 992);
      v129 = *(v258 + 904);
      v131 = *(v258 + 888);
      v263 = *(v573 + 864);
      v264 = *(v573 + 856);
      v1 = *(v573 + 784);
      v265 = *(v573 + 736);
      v2 = *(v573 + 728);
      (*(v265 + 8))(*(v573 + 800), v2);
      (*(v263 + 8))(v131, v264);
      v3 = v573;
      v571(v127, v129);
      v261[2].isa = v532;
      (v550)(v261 + ((*(v265 + 80) + 32) & ~*(v265 + 80)) + *(v265 + 72) * isa, v1, v2);
      goto LABEL_134;
    }

    defaultLogger()();
    v266 = Logger.logObject.getter();
    v267 = static os_log_type_t.info.getter();
    v268 = os_log_type_enabled(v266, v267);
    v2 = v3[172]._rawValue;
    v129 = v3[144]._rawValue;
    v1 = v3[142]._rawValue;
    v131 = v3[141]._rawValue;
    v269 = v3[124]._rawValue;
    v270 = v3[114]._rawValue;
    v127 = v3[113]._rawValue;
    if (v268)
    {
      v1 = swift_slowAlloc();
      LOWORD(v1->isa) = 0;
      _os_log_impl(&_mh_execute_header, v266, v267, "manual review is ONLY supported when active liveness exists", v1, 2u);
    }

    (v2)(v129, v131);
    v325 = v270[1];
    isa = (v270 + 1);
    v325(v269, v127);
  }

  else
  {
    v127 = v3[123]._rawValue;
    v128 = v3[114]._rawValue;
    v129 = v3[113]._rawValue;
    v132 = v128[1];
    isa = (v128 + 1);
    v131 = v132;
    v132(v3[124]._rawValue, v129);

    v132(v127, v129);
  }

  v133 = v3[177]._rawValue;
  v134 = v3[176]._rawValue;
  if (!v134)
  {
    goto LABEL_135;
  }

LABEL_41:
  v129 = v3[173]._rawValue;
LABEL_143:
  v439 = v3[126]._rawValue;
  v440 = v3[125]._rawValue;
  v441 = v3[114]._rawValue;
  v442 = v3[113]._rawValue;
  v443 = (v134 - 1) & v134;
  v444 = __clz(__rbit64(v134)) | (v133 << 6);
  v441[2](v440, *(v129 + 6) + v441[9] * v444, v442);
  v445 = *(*(v129 + 7) + 8 * v444);
  v446 = sub_100007224(&qword_10083DC30, &qword_1006DB780);
  v447 = *(v446 + 48);
  v441[4](v439, v440, v442);
  *&v439[v447] = v445;
  (*(*(v446 - 8) + 56))(v439, 0, 1, v446);

  v425 = v133;
LABEL_144:
  v3[177]._rawValue = v425;
  v3[176]._rawValue = v443;
  v448 = v3[127]._rawValue;
  sub_1000B1FC8(v3[126]._rawValue, v448, &qword_10083DC28, &qword_1006DB778);
  v449 = sub_100007224(&qword_10083DC30, &qword_1006DB780);
  if ((*(*(v449 - 8) + 48))(v448, 1, v449) == 1)
  {

    v450._countAndFlagsBits = 0xD000000000000025;
    v451._countAndFlagsBits = 0x6531313038336265;
    v450._object = 0x8000000100706AA0;
    v451._object = 0xE800000000000000;
    logMilestone(tag:description:)(v451, v450);

    v452 = v3[1]._rawValue;
    v453 = v3[175]._rawValue;

    return v452(v453);
  }

  else
  {
    v454 = v3[124]._rawValue;
    v455 = v3[114]._rawValue;
    v456 = *(v3[127]._rawValue + *(v449 + 48));
    v3[178]._rawValue = v456;
    v455[4](v454);
    v457 = swift_task_alloc();
    v3[179]._rawValue = v457;
    *v457 = v3;
    v457[1] = sub_100215100;
    v458 = v3[60]._rawValue;
    v459 = v3[57]._rawValue;
    v460 = v3[58]._rawValue;
    v461 = v3[185]._rawValue;

    return sub_100209E84(v456, v459, v460, v458, v461);
  }
}

uint64_t sub_100219F90()
{
  v1 = v0[124];
  v2 = v0[114];
  v3 = v0[113];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10021A4D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[24] = a2;
  v3[25] = a3;
  v3[23] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();

  return _swift_task_switch(sub_10021A5F8, 0, 0);
}

uint64_t sub_10021A5F8(uint64_t a1)
{
  v14 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[30];
  v5 = v1[31];
  v7 = v1[29];
  if (v4)
  {
    v9 = v1[23];
    v8 = v1[24];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v13 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100141FE4(v9, v8, &v13);
    _os_log_impl(&_mh_execute_header, v2, v3, "getKeySigningKey called for credential identifier : %s", v10, 0xCu);
    sub_10000BB78(v11);
  }

  (*(v6 + 8))(v5, v7);

  return _swift_task_switch(sub_10021A770, 0, 0);
}

uint64_t sub_10021A770()
{
  v1 = v0[25];
  v2 = String._bridgeToObjectiveC()();
  v0[32] = v2;
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_10021A8A8;
  v3 = swift_continuation_init();
  v0[17] = sub_100007224(&unk_10084A470, &unk_1006DD7D0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1004CF424;
  v0[13] = &unk_10080ABB0;
  v0[14] = v3;
  [v1 generateKeySigningKeyForCredential:v2 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10021A8A8(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  v5 = *(*v1 + 48);
  *(*v1 + 264) = v5;
  v6 = *(v2 + 256);
  if (v5)
  {
    swift_willThrow();

    return _swift_task_switch(sub_10021AA38, 0, 0);
  }

  else
  {
    v7 = *(v3 + 168);

    v8 = *(v4 + 8);

    return v8(v7);
  }
}

uint64_t sub_10021AA38()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  _StringGuts.grow(_:)(51);
  v4._object = 0x8000000100706850;
  v4._countAndFlagsBits = 0xD000000000000031;
  String.append(_:)(v4);
  swift_getErrorValue();
  v5._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v5);

  (*(v2 + 104))(v1, enum case for DIPError.Code.unableToGenerateAttestations(_:), v3);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v6 = v0[1];

  return v6();
}

uint64_t sub_10021AC40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v6[20] = a3;
  v6[21] = a4;
  v6[18] = a1;
  v6[19] = a2;
  v7 = type metadata accessor for Logger();
  v6[24] = v7;
  v6[25] = *(v7 - 8);
  v6[26] = swift_task_alloc();

  return _swift_task_switch(sub_10021AD08, 0, 0);
}

uint64_t sub_10021AD08(uint64_t a1)
{
  v15 = v1;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[25];
  v5 = v1[26];
  v7 = v1[24];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136446210;
    v10 = IdentityTarget.debugDescription.getter();
    v12 = sub_100141FE4(v10, v11, &v14);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v2, v3, "storePIIHash called for %{public}s", v8, 0xCu);
    sub_10000BB78(v9);
  }

  (*(v6 + 8))(v5, v7);

  return _swift_task_switch(sub_10021AE7C, 0, 0);
}

uint64_t sub_10021AE7C()
{
  v1 = v0[19];
  v2 = String._bridgeToObjectiveC()();
  v0[27] = v2;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v0[28] = isa;
  v0[2] = v0;
  v0[3] = sub_10021AFCC;
  v4 = swift_continuation_init();
  v0[17] = sub_100007224(&unk_100843590, &qword_1006D8B10);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100429100;
  v0[13] = &unk_10080AB60;
  v0[14] = v4;
  [v1 storePIIHashInSyncableKeyStoreForIdentifier:v2 data:isa keystoreType:0 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10021AFCC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *(*v1 + 216);
  if (*(*v1 + 48))
  {
    swift_willThrow();
  }

  v5 = *(v2 + 8);

  return v5();
}

uint64_t sub_10021B130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v4 = type metadata accessor for DIPError.Code();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();

  return _swift_task_switch(sub_10021B250, 0, 0);
}

uint64_t sub_10021B250(uint64_t a1)
{
  v17 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[13];
  v5 = v1[14];
  v7 = v1[12];
  if (v4)
  {
    v9 = v1[6];
    v8 = v1[7];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100141FE4(v9, v8, &v16);
    _os_log_impl(&_mh_execute_header, v2, v3, "getKeySigningKey called for credential identifier : %s", v10, 0xCu);
    sub_10000BB78(v11);
  }

  (*(v6 + 8))(v5, v7);
  v12 = swift_task_alloc();
  v1[15] = v12;
  *v12 = v1;
  v12[1] = sub_10021B400;
  v13 = v1[7];
  v14 = v1[6];

  return sub_10067C4E8(v14, v13);
}

uint64_t sub_10021B400(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 128) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_10021B560, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_10021B560()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  _StringGuts.grow(_:)(51);
  v4._object = 0x8000000100706850;
  v4._countAndFlagsBits = 0xD000000000000031;
  String.append(_:)(v4);
  swift_getErrorValue();
  v5._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v5);

  (*(v2 + 104))(v1, enum case for DIPError.Code.unableToGenerateAttestations(_:), v3);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10021E908(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v6 = v0[1];

  return v6();
}

uint64_t sub_10021B768(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *, __n128), uint64_t a3, char a4, void *a5)
{
  v63 = a5;
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v49 = v10;
  v50 = v6;
  while (v9)
  {
    v55 = a4;
    v19 = v11;
LABEL_12:
    v20 = __clz(__rbit64(v9)) | (v19 << 6);
    v21 = (*(a1 + 48) + 16 * v20);
    v22 = *v21;
    v23 = v21[1];
    v24 = (*(a1 + 56) + 32 * v20);
    v25 = *v24;
    v26 = v24[1];
    v27 = v24[2];
    v28 = v24[3];
    v62[0] = v22;
    v62[1] = v23;
    v62[2] = v25;
    v62[3] = v26;
    v62[4] = v27;
    v62[5] = v28;

    (a2)(&v56, v62);

    v30 = v56;
    v29 = v57;
    v31 = v58;
    v32 = v60;
    v53 = v61;
    v54 = v59;
    v33 = *v63;
    v35 = sub_10003ADCC(v56, v57);
    v36 = v33[2];
    v37 = (v34 & 1) == 0;
    v38 = v36 + v37;
    if (__OFADD__(v36, v37))
    {
      goto LABEL_23;
    }

    v39 = v34;
    if (v33[3] >= v38)
    {
      if ((v55 & 1) == 0)
      {
        sub_100171830();
      }
    }

    else
    {
      sub_10016A02C(v38, v55 & 1);
      v40 = sub_10003ADCC(v30, v29);
      if ((v39 & 1) != (v41 & 1))
      {
        goto LABEL_25;
      }

      v35 = v40;
    }

    v9 &= v9 - 1;
    v42 = *v63;
    if (v39)
    {
      v12 = 32 * v35;
      v13 = (v42[7] + 32 * v35);
      v15 = *v13;
      v14 = v13[1];
      v17 = v13[2];
      v16 = v13[3];

      v18 = (v42[7] + v12);
      *v18 = v15;
      v18[1] = v14;
      v18[2] = v17;
      v18[3] = v16;
    }

    else
    {
      v42[(v35 >> 6) + 8] |= 1 << v35;
      v43 = (v42[6] + 16 * v35);
      *v43 = v30;
      v43[1] = v29;
      v44 = (v42[7] + 32 * v35);
      *v44 = v31;
      v44[1] = v54;
      v44[2] = v32;
      v44[3] = v53;
      v45 = v42[2];
      v46 = __OFADD__(v45, 1);
      v47 = v45 + 1;
      if (v46)
      {
        goto LABEL_24;
      }

      v42[2] = v47;
    }

    a4 = 1;
    v11 = v19;
    v10 = v49;
    v6 = v50;
  }

  while (1)
  {
    v19 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v19 >= v10)
    {
    }

    v9 = *(v6 + 8 * v19);
    ++v11;
    if (v9)
    {
      v55 = a4;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10021BA50()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10021BA90(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_100041F04;

  return sub_100204F2C(a1, a2, v6, v7, v8);
}

uint64_t sub_10021BB54(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100041F04;

  return sub_10020840C(a1, a2, v6);
}

uint64_t sub_10021BC1C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10021BC84()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_10021BCBC@<D0>(_OWORD *a1@<X8>)
{
  (*(v1 + 16))(&v5);
  if (!v2)
  {
    result = *&v5;
    *a1 = v5;
  }

  return result;
}

uint64_t sub_10021BD00()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 128) & ~v3;
  v5 = (((((((((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8;
  v6 = (((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  v7 = *(v0 + v5 + 8);
  if (v7 >> 60 != 15)
  {
    sub_10000B90C(*(v0 + v5), v7);
  }

  v8 = *(v0 + v6 + 8);
  if (v8 >> 60 != 15)
  {
    sub_10000B90C(*(v0 + v6), v8);
  }

  return _swift_deallocObject(v0, v6 + 16, v3 | 7);
}

void sub_10021BEB4(uint64_t a1)
{
  v3 = *(type metadata accessor for Date() - 8);
  v4 = (*(v3 + 80) + 128) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 39) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v10 + 39) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  v14 = v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  sub_1002D7AF4(a1, v1[2], v1[3], v1[4], v1[5], v1[6], v1[7], v1[8], v1[9], v1[10], v1[11], v1[12], v1[13], v1[14], v1[15], v1 + v4, *(v1 + v5), *(v1 + v6), *(v1 + v7), *v14, *(v14 + 1), v14[16], *(v1 + v8), *(v1 + v9), *(v1 + v10), *(v1 + v11), *(v1 + v11 + 8), *(v1 + v11 + 16), *(v1 + v12), *(v1 + v12 + 8), *(v1 + v13), *(v1 + v13 + 8), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_10021C06C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_10021C0CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100041F04;

  return sub_1002020E4(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10021C1F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10021C210()
{

  return _swift_deallocObject(v0, 32, 7);
}

__n128 sub_10021C264@<Q0>(void *a1@<X0>, __n128 *a2@<X8>)
{
  (*(v2 + 16))(v8, *a1);
  if (!v3)
  {
    v6 = v8[1];
    v7 = v10;
    result = v9;
    a2->n128_u64[0] = v8[0];
    a2->n128_u64[1] = v6;
    a2[1] = result;
    a2[2].n128_u64[0] = v7;
  }

  return result;
}

uint64_t sub_10021C2BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v57 = a2;
  v58 = a3;
  v56 = a1;
  v3 = type metadata accessor for Logger();
  v60 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v59 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v8 = &v49 - v7;
  __chkstk_darwin(v6);
  v10 = &v49 - v9;
  v11 = sub_100007224(&unk_100849400, &unk_1006BFBB0);
  __chkstk_darwin(v11);
  v13 = &v49 - v12;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IdentityProofingDataContext();
  swift_allocObject();
  sub_10057E28C();
  v54 = v13;
  v51 = v17;
  v52 = v8;
  v50 = v10;
  v55 = v3;
  v19 = v18;
  v20 = swift_allocBox();
  v21 = v15;
  v22 = v20;
  v24 = v23;
  v53 = v21;
  (*(v21 + 56))(v23, 1, 1, v14);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 1;
  v26 = swift_allocObject();
  v27 = v57;
  v26[2] = v56;
  v26[3] = v19;
  v28 = v58;
  v26[4] = v27;
  v26[5] = v28;
  v26[6] = v22;
  v26[7] = v25;

  v29 = v25;

  sub_10057C18C(sub_10021F240, v26);
  v58 = v19;
  v59 = v22;

  swift_beginAccess();
  v30 = v54;
  sub_10000BBC4(v24, v54, &unk_100849400, &unk_1006BFBB0);
  v31 = v53;
  if ((*(v53 + 48))(v30, 1, v14) == 1)
  {
    sub_10000BE18(v30, &unk_100849400, &unk_1006BFBB0);
    v32 = v52;
    defaultLogger()();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    v35 = os_log_type_enabled(v33, v34);
    v36 = v55;
    v37 = v60;
    if (v35)
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "createdAtDate for proofing doesn't exist. This is not a fatal error and should not end the proofing process in a failure", v38, 2u);
    }

    else
    {
    }

    (*(v37 + 8))(v32, v36);
  }

  else
  {
    v39 = v51;
    (*(v31 + 32))(v51, v30, v14);
    swift_beginAccess();
    v40 = *(v25 + 24);
    v41 = v55;
    v42 = v60;
    if (v40)
    {
      v43 = v31;
      v44 = v50;
      defaultLogger()();
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&_mh_execute_header, v45, v46, "manualCheckInterval for proofing doesn't exist. This is not a fatal error and should not end the proofing process in a failure", v47, 2u);
      }

      (*(v42 + 8))(v44, v41);
      (*(v43 + 8))(v39, v14);
    }

    else
    {
      sub_1002FA39C(v39, *(v29 + 16));

      (*(v31 + 8))(v39, v14);
    }
  }
}

void *sub_10021C9B0(void (*a1)(void, void, void), void *a2, void *a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v228 = a4;
  v232 = a2;
  v226 = a1;
  v197 = type metadata accessor for ProofingData(0);
  v5 = __chkstk_darwin(v197);
  v196 = &v177 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v201 = &v177 - v7;
  v212 = type metadata accessor for AEADKey();
  v211 = *(v212 - 8);
  v8 = __chkstk_darwin(v212);
  v193 = &v177 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v206 = &v177 - v10;
  v214 = sub_100007224(&qword_100833688, &qword_1006BF6D0);
  v213 = *(v214 - 8);
  v11 = __chkstk_darwin(v214);
  v189 = &v177 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v208 = &v177 - v13;
  v14 = sub_100007224(&qword_100833690, &qword_1006BF6D8);
  v15 = __chkstk_darwin(v14 - 8);
  v190 = &v177 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v216 = &v177 - v17;
  v18 = sub_100007224(&qword_100833698, &qword_1006BF6E0);
  __chkstk_darwin(v18 - 8);
  v215 = &v177 - v19;
  v205 = type metadata accessor for RecipientEncryptionCertificate();
  v204 = *(v205 - 8);
  __chkstk_darwin(v205);
  v227 = (&v177 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = type metadata accessor for EncryptedMessageEntity();
  v230 = *(v21 - 8);
  v231 = v21;
  v22 = __chkstk_darwin(v21);
  v195 = &v177 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v194 = &v177 - v25;
  __chkstk_darwin(v24);
  v234 = &v177 - v26;
  v199 = sub_100007224(&qword_100833680, &qword_1006C4A20);
  v198 = *(v199 - 8);
  v27 = __chkstk_darwin(v199);
  v192 = &v177 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v200 = &v177 - v30;
  __chkstk_darwin(v29);
  v191 = &v177 - v31;
  v229 = type metadata accessor for Logger();
  v235 = *(v229 - 8);
  v32 = __chkstk_darwin(v229);
  v188 = &v177 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v210 = &v177 - v35;
  __chkstk_darwin(v34);
  v225 = &v177 - v36;
  v37 = sub_100007224(&qword_10083D6A0, &unk_1006DB700);
  v38 = __chkstk_darwin(v37 - 8);
  v221 = &v177 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v38);
  v224 = &v177 - v41;
  v42 = __chkstk_darwin(v40);
  v223 = &v177 - v43;
  v44 = __chkstk_darwin(v42);
  v222 = &v177 - v45;
  v46 = __chkstk_darwin(v44);
  v220 = &v177 - v47;
  v48 = __chkstk_darwin(v46);
  v219 = &v177 - v49;
  v50 = __chkstk_darwin(v48);
  v218 = &v177 - v51;
  v52 = __chkstk_darwin(v50);
  v54 = &v177 - v53;
  v55 = __chkstk_darwin(v52);
  v57 = &v177 - v56;
  v58 = __chkstk_darwin(v55);
  v60 = &v177 - v59;
  v61 = __chkstk_darwin(v58);
  v217 = &v177 - v62;
  __chkstk_darwin(v61);
  v64 = (&v177 - v63);
  v65 = type metadata accessor for HPKESuiteKwV1();
  v233 = *(v65 - 8);
  __chkstk_darwin(v65);
  v67 = &v177 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000BA08(a3, a3[3]);
  v68 = v236;
  dispatch thunk of IdentityKey.getIdentityPublicKeyData()();
  if (!v68)
  {
    v184 = v60;
    v185 = v57;
    v183 = v54;
    v209 = v65;
    HPKESuiteKwV1.init(pkISm:info:)();
    v69 = type metadata accessor for PDF417ParsedData();
    v70 = *(v69 - 8);
    (*(v70 + 56))(v64, 1, 1, v69);
    v202 = v64;
    v71 = v64;
    v72 = v217;
    sub_10000BBC4(v71, v217, &qword_10083D6A0, &unk_1006DB700);
    v236 = *(v70 + 48);
    v73 = v236(v72, 1, v69);
    v203 = v67;
    v207 = 0;
    if (v73 == 1)
    {
      sub_10000BE18(v72, &qword_10083D6A0, &unk_1006DB700);
      v187 = 0;
      v186 = 0;
    }

    else
    {
      v187 = PDF417ParsedData.firstName.getter();
      v186 = v74;
      (*(v70 + 8))(v72, v69);
    }

    v75 = v224;
    v76 = v70;
    v77 = v202;
    v78 = v184;
    sub_10000BBC4(v202, v184, &qword_10083D6A0, &unk_1006DB700);
    v79 = v236;
    v80 = v236(v78, 1, v69);
    v82 = v222;
    v81 = v223;
    if (v80 == 1)
    {
      sub_10000BE18(v78, &qword_10083D6A0, &unk_1006DB700);
      v224 = 0;
      v217 = 0;
    }

    else
    {
      v224 = PDF417ParsedData.middleName.getter();
      v217 = v83;
      (*(v76 + 8))(v78, v69);
    }

    v84 = v185;
    sub_10000BBC4(v77, v185, &qword_10083D6A0, &unk_1006DB700);
    if (v79(v84, 1, v69) == 1)
    {
      sub_10000BE18(v84, &qword_10083D6A0, &unk_1006DB700);
      v185 = 0;
      v184 = 0;
    }

    else
    {
      v185 = PDF417ParsedData.lastName.getter();
      v184 = v85;
      (*(v76 + 8))(v84, v69);
    }

    v86 = v183;
    sub_10000BBC4(v77, v183, &qword_10083D6A0, &unk_1006DB700);
    if (v79(v86, 1, v69) == 1)
    {
      sub_10000BE18(v86, &qword_10083D6A0, &unk_1006DB700);
      v183 = 0;
      v182 = 0;
    }

    else
    {
      v183 = PDF417ParsedData.street1.getter();
      v182 = v87;
      (*(v76 + 8))(v86, v69);
    }

    v88 = v218;
    sub_10000BBC4(v77, v218, &qword_10083D6A0, &unk_1006DB700);
    if (v79(v88, 1, v69) == 1)
    {
      sub_10000BE18(v88, &qword_10083D6A0, &unk_1006DB700);
      v218 = 0;
      v181 = 0;
    }

    else
    {
      v218 = PDF417ParsedData.street2.getter();
      v181 = v89;
      (*(v76 + 8))(v88, v69);
    }

    v90 = v219;
    sub_10000BBC4(v77, v219, &qword_10083D6A0, &unk_1006DB700);
    if (v79(v90, 1, v69) == 1)
    {
      sub_10000BE18(v90, &qword_10083D6A0, &unk_1006DB700);
      v219 = 0;
      v180 = 0;
    }

    else
    {
      v219 = PDF417ParsedData.city.getter();
      v180 = v91;
      (*(v76 + 8))(v90, v69);
    }

    v92 = v220;
    sub_10000BBC4(v77, v220, &qword_10083D6A0, &unk_1006DB700);
    if (v79(v92, 1, v69) == 1)
    {
      sub_10000BE18(v92, &qword_10083D6A0, &unk_1006DB700);
      v220 = 0;
      v179 = 0;
    }

    else
    {
      v220 = PDF417ParsedData.state.getter();
      v179 = v93;
      (*(v76 + 8))(v92, v69);
    }

    sub_10000BBC4(v77, v82, &qword_10083D6A0, &unk_1006DB700);
    if (v79(v82, 1, v69) == 1)
    {
      sub_10000BE18(v82, &qword_10083D6A0, &unk_1006DB700);
      v178 = 0;
      v177 = 0;
    }

    else
    {
      v178 = PDF417ParsedData.postalCode.getter();
      v177 = v94;
      (*(v76 + 8))(v82, v69);
    }

    sub_10000BBC4(v77, v81, &qword_10083D6A0, &unk_1006DB700);
    if (v79(v81, 1, v69) == 1)
    {
      sub_10000BE18(v81, &qword_10083D6A0, &unk_1006DB700);
      v222 = 0;
      v95 = 0;
    }

    else
    {
      v222 = PDF417ParsedData.country.getter();
      v95 = v96;
      (*(v76 + 8))(v81, v69);
    }

    sub_10000BBC4(v77, v75, &qword_10083D6A0, &unk_1006DB700);
    if (v236(v75, 1, v69) == 1)
    {
      v97 = v76;
      sub_10000BE18(v75, &qword_10083D6A0, &unk_1006DB700);
      v98 = 0;
      v99 = 0;
    }

    else
    {
      v98 = PDF417ParsedData.dob.getter();
      v99 = v100;
      v97 = v76;
      (*(v76 + 8))(v75, v69);
    }

    v101 = v202;
    v102 = v221;
    sub_10000BBC4(v202, v221, &qword_10083D6A0, &unk_1006DB700);
    if (v236(v102, 1, v69) == 1)
    {
      sub_10000BE18(v101, &qword_10083D6A0, &unk_1006DB700);
      sub_10000BE18(v102, &qword_10083D6A0, &unk_1006DB700);
      v103 = 0;
      v104 = 0;
    }

    else
    {
      v103 = PDF417ParsedData.issuer.getter();
      v104 = v105;
      sub_10000BE18(v101, &qword_10083D6A0, &unk_1006DB700);
      (*(v97 + 8))(v102, v69);
    }

    v106 = v230;

    v107 = sub_1003C5D2C(0, 1, 1, _swiftEmptyArrayStorage);
    v109 = *(v107 + 2);
    v108 = *(v107 + 3);
    if (v109 >= v108 >> 1)
    {
      v107 = sub_1003C5D2C((v108 > 1), v109 + 1, 1, v107);
    }

    *(v107 + 2) = v109 + 1;
    v110 = &v107[336 * v109];
    v110[32] = 4;
    *(v110 + 40) = 0u;
    *(v110 + 56) = 0u;
    *(v110 + 72) = 0u;
    *(v110 + 88) = 0u;
    *(v110 + 104) = 0u;
    v111 = v187;
    *(v110 + 15) = 0;
    *(v110 + 16) = v111;
    v112 = v224;
    *(v110 + 17) = v186;
    *(v110 + 18) = v112;
    v113 = v185;
    *(v110 + 19) = v217;
    *(v110 + 20) = v113;
    v114 = v183;
    *(v110 + 21) = v184;
    *(v110 + 22) = v114;
    v115 = v218;
    *(v110 + 23) = v182;
    *(v110 + 24) = v115;
    v116 = v219;
    *(v110 + 25) = v181;
    *(v110 + 26) = v116;
    v117 = v220;
    *(v110 + 27) = v180;
    *(v110 + 28) = v117;
    v118 = v178;
    *(v110 + 29) = v179;
    *(v110 + 30) = v118;
    v119 = v222;
    *(v110 + 31) = v177;
    *(v110 + 32) = v119;
    *(v110 + 33) = v95;
    *(v110 + 34) = v98;
    *(v110 + 35) = v99;
    *(v110 + 36) = v103;
    v120 = v226;
    *(v110 + 37) = v104;
    *(v110 + 38) = v120;
    *(v110 + 39) = v232;
    *(v110 + 21) = 0u;
    *(v110 + 22) = 0u;
    *(v110 + 20) = 0u;
    v121 = v225;
    defaultLogger()();
    v122 = Logger.logObject.getter();
    v123 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      *v124 = 0;
      _os_log_impl(&_mh_execute_header, v122, v123, "encrypting auth code for issuer", v124, 2u);
    }

    v125 = *(v235 + 8);
    v235 += 8;
    v125(v121, v229);
    v126 = v209;
    v237[3] = v209;
    v237[4] = &protocol witness table for HPKESuiteKwV1;
    v127 = sub_100032DBC(v237);
    (*(v233 + 16))(v127, v203, v126);
    v128 = v231;
    v236 = *(v106 + 104);
    v236(v234, enum case for EncryptedMessageEntity.issuer(_:), v231);
    v129 = sub_10000BA08(v228, *(v228 + 3));
    v130 = (v129 + *(type metadata accessor for Workflow(0) + 84));
    if (v130[1])
    {
      v131 = *v130;
      v64 = v130[1];
    }

    else
    {
      v64 = 0xE700000000000000;
      v131 = 0x746C7561666564;
    }

    v132 = v227;
    v133 = v131;
    v134 = v207;
    sub_1000FFA4C(v133, v64, v227);
    if (v134)
    {

      (*(v106 + 8))(v234, v128);
      (*(v233 + 8))(v203, v209);
LABEL_57:
      sub_10000BB78(v237);
      return v64;
    }

    v207 = 0;

    v232 = RecipientEncryptionCertificate.keyAgreement.getter();
    (*(v204 + 8))(v132, v205);
    v227 = *(v213 + 56);
    (v227)(v215, 1, 1, v214);
    v64 = (v211 + 56);
    v228 = *(v211 + 56);
    v228(v216, 1, 1, v212);
    v135 = v210;
    defaultLogger()();
    v136 = Logger.logObject.getter();
    v137 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v136, v137))
    {
      v138 = swift_slowAlloc();
      *v138 = 0;
      _os_log_impl(&_mh_execute_header, v136, v137, "encrypt idv data with aead", v138, 2u);
      v135 = v210;
    }

    v139 = v135;
    v140 = v125;
    v125(v139, v229);
    v237[7] = v107;
    sub_100007224(&qword_1008336B0, &qword_1006BF6E8);
    sub_10000BC80(&qword_1008336B8, sub_10000BC2C, &protocol conformance descriptor for <A> [A]);
    sub_10000BC80(&qword_1008336C8, sub_10000BCF8, &protocol conformance descriptor for <A> [A]);
    v141 = v206;
    v142 = v207;
    v143 = v209;
    dispatch thunk of HPKESuite.sealMessageAEAD<A>(message:)();
    if (v142)
    {

      sub_10000BE18(v216, &qword_100833690, &qword_1006BF6D8);
      (*(v230 + 8))(v234, v231);
      (*(v233 + 8))(v203, v143);

      v144 = v215;
LABEL_56:
      sub_10000BE18(v144, &qword_100833698, &qword_1006BF6E0);
      goto LABEL_57;
    }

    v225 = v140;
    v207 = 0;
    v145 = v216;
    sub_10000BE18(v216, &qword_100833690, &qword_1006BF6D8);
    v146 = v215;
    sub_10000BE18(v215, &qword_100833698, &qword_1006BF6E0);
    v147 = v214;
    (*(v213 + 32))(v146, v208, v214);
    (v227)(v146, 0, 1, v147);
    v148 = v212;
    v226 = *(v211 + 32);
    v227 = (v211 + 32);
    v226(v145, v141, v212);
    v228(v145, 0, 1, v148);
    v149 = v201;
    sub_10000BBC4(v146, v201, &qword_100833698, &qword_1006BF6E0);
    *(v149 + *(v197 + 20)) = 0;
    v150 = v231;
    (*(v230 + 16))(v194, v234, v231);
    sub_10021E958(v149, v196, type metadata accessor for ProofingData);
    v236(v195, enum case for EncryptedMessageEntity.device(_:), v150);
    v144 = v146;
    sub_10021E908(&qword_1008336A0, type metadata accessor for ProofingData, &unk_1006C83E8);
    sub_10021E908(&qword_1008336A8, type metadata accessor for ProofingData, &unk_1006C83C0);
    v151 = v200;
    v152 = v214;
    v153 = v213;
    HPKEEncryptedMessageWithKeyWrap.init(sender:recipient:messages:)();
    v154 = (*(v153 + 48))(v146, 1, v152);
    v155 = v199;
    if (!v154)
    {
      v156 = v226;
      v157 = v189;
      (*(v153 + 16))(v189, v144, v152);
      v236 = SealedMessage.keyID.getter();
      (*(v153 + 8))(v157, v152);
      v158 = v190;
      sub_10000BBC4(v216, v190, &qword_100833690, &qword_1006BF6D8);
      v159 = v212;
      if ((*(v211 + 48))(v158, 1, v212) == 1)
      {

        sub_10000BE18(v158, &qword_100833690, &qword_1006BF6D8);
        v151 = v200;
      }

      else
      {
        v156(v193, v158, v159);
        v160 = v188;
        defaultLogger()();
        v161 = Logger.logObject.getter();
        v162 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v161, v162))
        {
          v163 = swift_slowAlloc();
          *v163 = 0;
          _os_log_impl(&_mh_execute_header, v161, v162, "add idv data encryption key", v163, 2u);
          v155 = v199;
        }

        (v225)(v160, v229);
        v164 = v193;
        v151 = v200;
        HPKEEncryptedMessageWithKeyWrap.addMessageEncryptionKey(keyID:key:)();

        (*(v211 + 8))(v164, v212);
      }
    }

    v64 = v232;
    v165 = v207;
    HPKEEncryptedMessageWithKeyWrap.sealKeys(to:encryptor:)();
    v166 = v209;
    v167 = v233;
    if (v165)
    {

      (*(v198 + 8))(v151, v155);
      sub_10021EA28(v201, type metadata accessor for ProofingData);
      sub_10000BE18(v216, &qword_100833690, &qword_1006BF6D8);
      (*(v230 + 8))(v234, v231);
      (*(v167 + 8))(v203, v166);
      goto LABEL_56;
    }

    v207 = 0;

    sub_10021EA28(v201, type metadata accessor for ProofingData);
    sub_10000BE18(v216, &qword_100833690, &qword_1006BF6D8);
    (*(v230 + 8))(v234, v231);
    v169 = v198;
    v170 = *(v198 + 32);
    v171 = v191;
    v170(v191, v151, v155);
    v172 = v144;
    v173 = v171;
    sub_10000BE18(v172, &qword_100833698, &qword_1006BF6E0);
    sub_10000BB78(v237);
    v174 = v192;
    (*(v169 + 16))(v192, v171, v155);
    v64 = sub_1003C5E58(0, 1, 1, _swiftEmptyArrayStorage);
    v176 = v64[2];
    v175 = v64[3];
    if (v176 >= v175 >> 1)
    {
      v64 = sub_1003C5E58((v175 > 1), v176 + 1, 1, v64);
    }

    (*(v169 + 8))(v173, v155);
    (*(v233 + 8))(v203, v209);
    v64[2] = v176 + 1;
    v170(v64 + ((*(v169 + 80) + 32) & ~*(v169 + 80)) + *(v169 + 72) * v176, v174, v155);
  }

  return v64;
}

uint64_t sub_10021E68C()
{

  sub_10000BB78((v0 + 168));

  return _swift_deallocObject(v0, 208, 7);
}

uint64_t sub_10021E730()
{
  v1 = *(sub_100007224(&unk_100849400, &unk_1006BFBB0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 64) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_10021E860()
{
  v1 = *(sub_100007224(&unk_100849400, &unk_1006BFBB0) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0 + ((*(v1 + 80) + 64) & ~*(v1 + 80));

  sub_100581024(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_10021E8F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10021E908(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10021E958(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10021E9C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10021EA28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10021EA88()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10021EAE0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10021EB18()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10021EBF0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10021EC30(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100041F04;

  return sub_1001DDA24(a1, v4, v5, v6);
}

uint64_t sub_10021ED38()
{
  v1 = sub_100007224(&qword_10083DC00, &qword_1006DB6E0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  sub_10000BB78((v0 + v5));

  return _swift_deallocObject(v0, v5 + 40, v3 | 7);
}

uint64_t sub_10021EE1C(uint64_t a1)
{
  v4 = *(sub_100007224(&qword_10083DC00, &qword_1006DB6E0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100027B9C;

  return sub_1001DD0C0(a1, v7, v1 + v5, v1 + v6);
}

uint64_t sub_10021EF40()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10021EF88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100041F04;

  return sub_1001DA5F4(a1, v4, v5, v6, v7);
}

uint64_t sub_10021F050()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10021F0A0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100041F04;

  return sub_1001D9B4C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10021F190()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10021F1F0()
{

  return _swift_deallocObject(v0, 64, 7);
}

unint64_t sub_10021F2F0()
{
  result = qword_10083DC60;
  if (!qword_10083DC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083DC60);
  }

  return result;
}

unint64_t sub_10021F344(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1007FB778, v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10021F3E8(uint64_t a1)
{
  v43 = __chkstk_darwin(a1);
  v1 = type metadata accessor for ActionRequest(0);
  v2 = *(v1 - 8);
  v41 = v1;
  v42 = v2;
  __chkstk_darwin(v1);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PendingActionContext(0);
  v40 = *(v5 - 1);
  __chkstk_darwin(v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() standardUserDefaults];
  v13._countAndFlagsBits = static DaemonInternalDefaultsKeys.injectLivenessAssessments.getter();
  v14 = NSUserDefaults.internalBool(forKey:)(v13);

  if (v14)
  {
    defaultLogger()();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Internal setting for Inject Liveness Assessments is enabled", v18, 2u);
    }

    (*(v9 + 8))(v11, v8);
    v19 = v5[18];
    v20 = type metadata accessor for WorkflowRecommendationResponse(0);
    (*(*(v20 - 8) + 56))(&v7[v19], 1, 1, v20);
    v21 = v5[29];
    v22 = sub_100007224(&qword_100835A30, &unk_1006DB6C0);
    (*(*(v22 - 8) + 56))(&v7[v21], 1, 1, v22);
    sub_1000F09E4(v44);
    *(v7 + 3) = 0u;
    *(v7 + 4) = 0u;
    *(v7 + 1) = 0u;
    *(v7 + 2) = 0u;
    *v7 = 0u;
    v7[80] = 2;
    *(v7 + 88) = 0u;
    *(v7 + 104) = 0u;
    *(v7 + 15) = 2;
    *(v7 + 8) = 0u;
    *(v7 + 9) = 0u;
    *(v7 + 10) = 0u;
    *(v7 + 11) = 0u;
    *(v7 + 12) = 0u;
    *(v7 + 26) = 0;
    *(v7 + 27) = 1;
    *(v7 + 14) = 0u;
    *(v7 + 15) = 0u;
    *(v7 + 16) = 0u;
    *(v7 + 34) = 0;
    *(v7 + 35) = 1;
    *(v7 + 18) = 0u;
    *(v7 + 19) = 0u;
    v7[v5[19]] = 3;
    *&v7[v5[20]] = 0;
    v23 = &v7[v5[21]];
    *v23 = 5;
    v23[8] = 0;
    v24 = &v7[v5[22]];
    *v24 = 5;
    v24[8] = 0;
    v7[v5[23]] = 0;
    v25 = &v7[v5[24]];
    *v25 = 0;
    v25[8] = 1;
    v26 = &v7[v5[25]];
    *v26 = 0;
    v26[8] = 1;
    v27 = &v7[v5[26]];
    *(v27 + 2) = 0u;
    *(v27 + 3) = 0u;
    *v27 = 0u;
    *(v27 + 1) = 0u;
    v28 = &v7[v5[27]];
    *v28 = 3157560;
    *(v28 + 1) = 0xE300000000000000;
    *(v28 + 2) = 0x322E312E31;
    *(v28 + 3) = 0xE500000000000000;
    *(v28 + 4) = 0x302E302E32;
    *(v28 + 5) = 0xE500000000000000;
    *(v28 + 6) = 0;
    *(v28 + 7) = 0xE000000000000000;
    v29 = &v7[v5[28]];
    *v29 = 0;
    *(v29 + 1) = 0;
    memcpy(&v7[v5[30]], v44, 0x2181uLL);
    v7[v5[31]] = 2;
    v30 = &v7[v5[32]];
    *v30 = 0u;
    *(v30 + 1) = 0u;
    *&v7[v5[33]] = &off_1007F8580;
    v31 = &v7[v5[34]];
    *v31 = xmmword_1006DB920;
    *(v31 + 1) = xmmword_1006DB930;
    *(v31 + 4) = 0xE300000000000000;
    v32 = &v7[v5[35]];
    *v32 = xmmword_1006DB940;
    *(v32 + 1) = xmmword_1006DB950;
    *(v32 + 4) = 0xE300000000000000;
    v33 = v41;
    v34 = *(v41 + 20);
    sub_1002203D4(v7, &v4[v34]);
    (*(v40 + 56))(&v4[v34], 0, 1, v5);
    strcpy(v4, "SEND_TO_BIOME");
    *(v4 + 7) = -4864;
    v35 = &v4[*(v33 + 24)];
    *v35 = 0;
    *(v35 + 1) = 0;
    v36 = v43;
    v37 = *v43;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v37 = sub_1003C521C(0, v37[2] + 1, 1, v37);
    }

    v39 = v37[2];
    v38 = v37[3];
    if (v39 >= v38 >> 1)
    {
      v37 = sub_1003C521C((v38 > 1), v39 + 1, 1, v37);
    }

    sub_100220438(v7);
    v37[2] = v39 + 1;
    result = sub_100220494(v4, v37 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v39);
    *v36 = v37;
  }

  return result;
}

uint64_t sub_10021F9A4(uint64_t a1)
{
  v43 = __chkstk_darwin(a1);
  v1 = type metadata accessor for ActionRequest(0);
  v2 = *(v1 - 8);
  v41 = v1;
  v42 = v2;
  __chkstk_darwin(v1);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PendingActionContext(0);
  v40 = *(v5 - 1);
  __chkstk_darwin(v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() standardUserDefaults];
  v13._countAndFlagsBits = static DaemonInternalDefaultsKeys.injectPassiveLivenessStepUpAssessments.getter();
  v14 = NSUserDefaults.internalBool(forKey:)(v13);

  if (v14)
  {
    defaultLogger()();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Internal setting for Inject Passive Liveness step up Assessments is enabled", v18, 2u);
    }

    (*(v9 + 8))(v11, v8);
    v19 = v5[18];
    v20 = type metadata accessor for WorkflowRecommendationResponse(0);
    (*(*(v20 - 8) + 56))(&v7[v19], 1, 1, v20);
    v21 = v5[29];
    v22 = sub_100007224(&qword_100835A30, &unk_1006DB6C0);
    (*(*(v22 - 8) + 56))(&v7[v21], 1, 1, v22);
    sub_1000F09E4(v44);
    *(v7 + 3) = 0u;
    *(v7 + 4) = 0u;
    *(v7 + 1) = 0u;
    *(v7 + 2) = 0u;
    *v7 = 0u;
    v7[80] = 2;
    *(v7 + 88) = 0u;
    *(v7 + 104) = 0u;
    *(v7 + 15) = 2;
    *(v7 + 8) = 0u;
    *(v7 + 9) = 0u;
    *(v7 + 10) = 0u;
    *(v7 + 11) = 0u;
    *(v7 + 12) = 0u;
    *(v7 + 26) = 0;
    *(v7 + 27) = 1;
    *(v7 + 14) = 0u;
    *(v7 + 15) = 0u;
    *(v7 + 16) = 0u;
    *(v7 + 34) = 0;
    *(v7 + 35) = 1;
    *(v7 + 18) = 0u;
    *(v7 + 19) = 0u;
    v7[v5[19]] = 3;
    *&v7[v5[20]] = 0;
    v23 = &v7[v5[21]];
    *v23 = 5;
    v23[8] = 0;
    v24 = &v7[v5[22]];
    *v24 = 1;
    v24[8] = 0;
    v7[v5[23]] = 1;
    v25 = &v7[v5[24]];
    *v25 = 3;
    v25[8] = 0;
    v26 = &v7[v5[25]];
    *v26 = 3;
    v26[8] = 0;
    v27 = &v7[v5[26]];
    *v27 = 3157560;
    *(v27 + 1) = 0xE300000000000000;
    *(v27 + 2) = 0x312E312E31;
    *(v27 + 3) = 0xE500000000000000;
    *(v27 + 4) = 0x302E302E32;
    *(v27 + 5) = 0xE500000000000000;
    *(v27 + 6) = 0;
    *(v27 + 7) = 0xE000000000000000;
    v28 = &v7[v5[27]];
    *(v28 + 2) = 0u;
    *(v28 + 3) = 0u;
    *v28 = 0u;
    *(v28 + 1) = 0u;
    v29 = &v7[v5[28]];
    *v29 = 0;
    *(v29 + 1) = 0;
    memcpy(&v7[v5[30]], v44, 0x2181uLL);
    v7[v5[31]] = 2;
    v30 = &v7[v5[32]];
    *v30 = 0u;
    *(v30 + 1) = 0u;
    *&v7[v5[33]] = &off_1007F8610;
    v31 = &v7[v5[34]];
    *(v31 + 4) = 0;
    *v31 = 0u;
    *(v31 + 1) = 0u;
    v32 = &v7[v5[35]];
    *(v32 + 4) = 0;
    *v32 = 0u;
    *(v32 + 1) = 0u;
    v33 = v41;
    v34 = *(v41 + 20);
    sub_1002203D4(v7, &v4[v34]);
    (*(v40 + 56))(&v4[v34], 0, 1, v5);
    strcpy(v4, "SEND_TO_BIOME");
    *(v4 + 7) = -4864;
    v35 = &v4[*(v33 + 24)];
    *v35 = 0;
    *(v35 + 1) = 0;
    v36 = v43;
    v37 = *v43;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v37 = sub_1003C521C(0, v37[2] + 1, 1, v37);
    }

    v39 = v37[2];
    v38 = v37[3];
    if (v39 >= v38 >> 1)
    {
      v37 = sub_1003C521C((v38 > 1), v39 + 1, 1, v37);
    }

    sub_100220438(v7);
    v37[2] = v39 + 1;
    result = sub_100220494(v4, v37 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v39);
    *v36 = v37;
  }

  return result;
}

uint64_t sub_10021FF40(uint64_t a1)
{
  v36 = __chkstk_darwin(a1);
  v1 = type metadata accessor for ActionRequest(0);
  v37 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PendingActionContext(0);
  v35 = *(v4 - 1);
  __chkstk_darwin(v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_opt_self();
  v8 = [v7 standardUserDefaults];
  v9._countAndFlagsBits = static DaemonInternalDefaultsKeys.injectDeleteAccountKAKAction.getter();
  v10 = NSUserDefaults.internalBool(forKey:)(v9);

  if (v10)
  {
    v12 = v4[18];
    v13 = type metadata accessor for WorkflowRecommendationResponse(0);
    (*(*(v13 - 8) + 56))(&v6[v12], 1, 1, v13);
    v14 = [v7 standardUserDefaults];
    v15._countAndFlagsBits = static DaemonInternalDefaultsKeys.injectDeleteAccountKAKAction.getter();
    v16 = NSUserDefaults.internalString(forKey:)(v15);

    v17 = v4[29];
    v18 = sub_100007224(&qword_100835A30, &unk_1006DB6C0);
    (*(*(v18 - 8) + 56))(&v6[v17], 1, 1, v18);
    sub_1000F09E4(v38);
    *(v6 + 3) = 0u;
    *(v6 + 4) = 0u;
    *(v6 + 1) = 0u;
    *(v6 + 2) = 0u;
    *v6 = 0u;
    v6[80] = 2;
    *(v6 + 88) = 0u;
    *(v6 + 104) = 0u;
    *(v6 + 15) = 2;
    *(v6 + 8) = 0u;
    *(v6 + 9) = 0u;
    *(v6 + 10) = 0u;
    *(v6 + 11) = 0u;
    *(v6 + 12) = 0u;
    *(v6 + 26) = 0;
    *(v6 + 27) = 1;
    *(v6 + 14) = 0u;
    *(v6 + 15) = 0u;
    *(v6 + 16) = 0u;
    *(v6 + 34) = 0;
    *(v6 + 35) = 1;
    *(v6 + 18) = 0u;
    *(v6 + 19) = 0u;
    v6[v4[19]] = 3;
    *&v6[v4[20]] = 0;
    v19 = &v6[v4[21]];
    *v19 = 5;
    v19[8] = 0;
    v20 = &v6[v4[22]];
    *v20 = 5;
    v20[8] = 0;
    v6[v4[23]] = 2;
    v21 = &v6[v4[24]];
    *v21 = 0;
    v21[8] = 1;
    v22 = &v6[v4[25]];
    *v22 = 0;
    v22[8] = 1;
    v23 = &v6[v4[26]];
    *(v23 + 2) = 0u;
    *(v23 + 3) = 0u;
    *v23 = 0u;
    *(v23 + 1) = 0u;
    v24 = &v6[v4[27]];
    *(v24 + 2) = 0u;
    *(v24 + 3) = 0u;
    *v24 = 0u;
    *(v24 + 1) = 0u;
    *&v6[v4[28]] = v16;
    memcpy(&v6[v4[30]], v38, 0x2181uLL);
    v6[v4[31]] = 2;
    v25 = &v6[v4[32]];
    *v25 = 0u;
    *(v25 + 1) = 0u;
    *&v6[v4[33]] = 0;
    v26 = &v6[v4[34]];
    *(v26 + 4) = 0;
    *v26 = 0u;
    *(v26 + 1) = 0u;
    v27 = &v6[v4[35]];
    *(v27 + 4) = 0;
    *v27 = 0u;
    *(v27 + 1) = 0u;
    v28 = *(v1 + 20);
    sub_1002203D4(v6, &v3[v28]);
    (*(v35 + 56))(&v3[v28], 0, 1, v4);
    *v3 = 0xD000000000000011;
    *(v3 + 1) = 0x80000001006F8A20;
    v29 = &v3[*(v1 + 24)];
    *v29 = 0;
    *(v29 + 1) = 0;
    v30 = v36;
    v31 = *v36;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_1003C521C(0, v31[2] + 1, 1, v31);
    }

    v33 = v31[2];
    v32 = v31[3];
    if (v33 >= v32 >> 1)
    {
      v31 = sub_1003C521C((v32 > 1), v33 + 1, 1, v31);
    }

    sub_100220438(v6);
    v31[2] = v33 + 1;
    result = sub_100220494(v3, v31 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v33);
    *v30 = v31;
  }

  return result;
}

uint64_t sub_1002203D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PendingActionContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100220438(uint64_t a1)
{
  v2 = type metadata accessor for PendingActionContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100220494(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_1002204F8()
{
  type metadata accessor for IdentityPendingActionsRepository();
  swift_allocObject();
  result = sub_100220534();
  qword_100882300 = result;
  return result;
}

void *sub_100220534()
{
  sub_100007224(&qword_10083DD20, &qword_1006DB9A8);
  v1 = swift_allocObject();
  v1[1] = 0u;
  v1[2] = 0u;
  *(v1 + 44) = 0u;
  v0[2] = v1;
  sub_100007224(&qword_10083DD28, &qword_1006DB9B0);
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  *(v2 + 16) = &_swiftEmptyDictionarySingleton;
  v0[3] = v2;
  sub_100007224(&qword_10083DD30, &qword_1006DB9B8);
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 16) = 0;
  v0[4] = v3;
  sub_100007224(&qword_10083DD38, &unk_1006DB9C0);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = 0;
  v0[5] = v4;
  return v0;
}

double sub_10022064C(void *a1, uint64_t a2)
{

  *a1 = a2;

  return result;
}

uint64_t sub_1002206D8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10022074C(uint64_t a1)
{
  v2 = sub_100007224(&qword_10083D0A0, &qword_1006DAFC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002207B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_10083D0A0, &qword_1006DAFC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10022083C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[85] = v8;
  v9[84] = a8;
  v9[83] = a7;
  v9[82] = a6;
  v9[81] = a5;
  v9[80] = a4;
  v9[79] = a3;
  v9[78] = a2;
  v9[77] = a1;
  v10 = type metadata accessor for DeviceInformationProvider();
  v9[86] = v10;
  v9[87] = *(v10 - 8);
  v9[88] = swift_task_alloc();
  v11 = type metadata accessor for DIPKeyAlgorithm();
  v9[89] = v11;
  v9[90] = *(v11 - 8);
  v9[91] = swift_task_alloc();
  v12 = type metadata accessor for KeystoreKeyType();
  v9[92] = v12;
  v9[93] = *(v12 - 8);
  v9[94] = swift_task_alloc();
  v13 = sub_100007224(&qword_10083DE08, qword_1006DBA50);
  v9[95] = v13;
  v9[96] = *(v13 - 8);
  v9[97] = swift_task_alloc();
  v9[98] = swift_task_alloc();
  v14 = type metadata accessor for UUID();
  v9[99] = v14;
  v9[100] = *(v14 - 8);
  v9[101] = swift_task_alloc();
  v15 = type metadata accessor for Logger();
  v9[102] = v15;
  v9[103] = *(v15 - 8);
  v9[104] = swift_task_alloc();
  v9[105] = swift_task_alloc();
  v9[106] = swift_task_alloc();
  v16 = type metadata accessor for DIPError.Code();
  v9[107] = v16;
  v9[108] = *(v16 - 8);
  v9[109] = swift_task_alloc();

  return _swift_task_switch(sub_100220B74, 0, 0);
}

uint64_t sub_100220B74()
{
  v60 = v0;
  v1 = [objc_opt_self() standardUserDefaults];
  v2._countAndFlagsBits = static DaemonInternalDefaultsKeys.forceActionNotificationFailure.getter();
  v3 = NSUserDefaults.internalBool(forKey:)(v2);

  if (v3)
  {
    (*(*(v0 + 864) + 104))(*(v0 + 872), enum case for DIPError.Code.actionNotificationRequestFailure(_:), *(v0 + 856));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
LABEL_17:

    v53 = *(v0 + 8);

    return v53();
  }

  defaultLogger()();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 848);
  v8 = *(v0 + 824);
  v9 = *(v0 + 816);
  if (v6)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v59 = v11;
    *v10 = 136315138;
    v12 = IdentityDocumentType.description.getter();
    v14 = sub_100141FE4(v12, v13, &v59);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "makeActionNotificationRequest: the documentType being used is %s", v10, 0xCu);
    sub_10000BB78(v11);
  }

  (*(v8 + 8))(v7, v9);
  if (!*(v0 + 648))
  {
    (*(*(v0 + 864) + 104))(*(v0 + 872), enum case for DIPError.Code.workflowIdDoesNotExist(_:), *(v0 + 856));
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v32 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v33 = (*(*v32 + 80) + 32) & ~*(*v32 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1006BF520;
    v35 = (v34 + v33 + v32[14]);
    v36 = enum case for DIPError.PropertyKey.inoProviderID(_:);
    v37 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v37 - 8) + 104))(v34 + v33, v36, v37);
    v35[3] = &type metadata for String;
    v35[4] = &protocol witness table for String;
    *v35 = 0x61746E6567616DLL;
    v35[1] = 0xE700000000000000;
    sub_10003C9C0(v34);
    swift_setDeallocating();
    v38 = v36;
    sub_100224AFC(v34 + v33);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v55 = 0;
LABEL_12:
    v56 = *(v0 + 864);
    v57 = *(v0 + 872);
    v58 = *(v0 + 856);
    v54 = *(v0 + 672);
    v39 = *(v0 + 648);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v40 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
    v41 = *(*(v40 - 8) + 72);
    v42 = (*(*(v40 - 8) + 80) + 32) & ~*(*(v40 - 8) + 80);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_1006BF740;
    v44 = v43 + v42;
    v45 = type metadata accessor for DIPError.PropertyKey();
    v46 = *(*(v45 - 8) + 104);
    v46(v44, v38, v45);
    v47 = 0x61746E6567616DLL;
    if (v54 == 3)
    {
      v47 = 0x6E6F736D697263;
    }

    v48 = *(v40 + 48);
    v49 = (v44 + v48);
    v49[3] = &type metadata for String;
    v49[4] = &protocol witness table for String;
    *v49 = v47;
    v49[1] = 0xE700000000000000;
    v50 = v44 + v41;
    v51 = (v44 + v41 + v48);
    v46(v50, enum case for DIPError.PropertyKey.inoWorkflowID(_:), v45);
    v51[3] = &type metadata for String;
    v51[4] = &protocol witness table for String;
    v52 = 0xE000000000000000;
    if (v39)
    {
      v52 = v39;
    }

    *v51 = v55;
    v51[1] = v52;

    sub_10003C9C0(v43);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v56 + 104))(v57, enum case for DIPError.Code.internalError(_:), v58);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    swift_errorRetain();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    goto LABEL_17;
  }

  v15 = *(v0 + 664);
  if (!v15)
  {
    (*(*(v0 + 864) + 104))(*(v0 + 872), enum case for DIPError.Code.proofingSessionIDUnavailable(_:), *(v0 + 856));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v55 = *(v0 + 640);
    v38 = enum case for DIPError.PropertyKey.inoProviderID(_:);
    goto LABEL_12;
  }

  v16 = *(v0 + 808);
  v17 = *(v0 + 800);
  v18 = *(v0 + 792);
  v19 = *(v0 + 680);
  v20 = *(v0 + 656);
  type metadata accessor for IdentityProofingDatabaseProvider();
  v21 = swift_allocObject();
  v22 = type metadata accessor for IdentitySelfHealer();
  v23 = objc_allocWithZone(v22);
  v24 = &v23[OBJC_IVAR____TtC8coreidvd18IdentitySelfHealer_proofingSessionID];
  *v24 = v20;
  *(v24 + 1) = v15;
  *&v23[OBJC_IVAR____TtC8coreidvd18IdentitySelfHealer_databaseProvider] = v21;
  *(v0 + 600) = v23;
  *(v0 + 608) = v22;
  swift_bridgeObjectRetain_n();
  v25 = objc_msgSendSuper2((v0 + 600), "init");
  *(v0 + 880) = v25;
  v26 = *(v19 + 16);
  *(v19 + 16) = v25;
  v27 = v25;

  UUID.init()();
  UUID.uuidString.getter();
  *(v0 + 888) = v28;
  v29 = *(v17 + 8);
  *(v0 + 896) = v29;
  *(v0 + 904) = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v29(v16, v18);
  *(v0 + 912) = type metadata accessor for DIPAccountManager();
  static DIPAccountManager.sharedInstance.getter();
  v30 = swift_task_alloc();
  *(v0 + 920) = v30;
  *v30 = v0;
  v30[1] = sub_1002215C4;

  return sub_1005FB45C(v0 + 400, v25, &off_10080DB50, 0, 0);
}

uint64_t sub_1002215C4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 880);
  *(v2 + 928) = a1;

  sub_10000BB78((v2 + 400));

  return _swift_task_switch(sub_10022170C, 0, 0);
}

uint64_t sub_10022170C()
{
  v1 = v0[94];
  v2 = v0[93];
  v3 = v0[92];
  type metadata accessor for DIPKeystoreManager();
  v4 = swift_allocObject();
  v0[117] = v4;
  *(v4 + 16) = sub_10003D56C(_swiftEmptyArrayStorage);
  *(v4 + 24) = 2;
  sub_100007224(&qword_100839BC0, &qword_1006D49B0);
  v5 = type metadata accessor for HardwareAttestationType();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  v0[118] = v8;
  *(v8 + 16) = xmmword_1006BF520;
  (*(v6 + 104))(v8 + v7, enum case for HardwareAttestationType.SEP(_:), v5);
  (*(v2 + 104))(v1, enum case for KeystoreKeyType.temporary(_:), v3);
  v9 = swift_task_alloc();
  v0[119] = v9;
  *v9 = v0;
  v9[1] = sub_1002218E8;

  return sub_10003736C((v0 + 55), v8, 0, 0, 0xF000000000000000);
}

uint64_t sub_1002218E8()
{
  *(*v1 + 960) = v0;

  if (v0)
  {

    v2 = sub_100221F74;
  }

  else
  {
    v2 = sub_100221A34;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100221A34()
{
  v1 = *(v0 + 960);
  static DIPAccountManager.sharedInstance.getter();
  sub_10000BA08((v0 + 480), *(v0 + 504));
  v2 = dispatch thunk of DIPAccountManagerProtocol.primaryAppleAccountIdentifier()();
  *(v0 + 968) = v3;
  if (v1)
  {
    (*(*(v0 + 744) + 8))(*(v0 + 752), *(v0 + 736));

    sub_10000BB78((v0 + 480));
    sub_10000BB78((v0 + 440));

    v29 = *(v0 + 640);
    v30 = *(v0 + 864);
    v31 = *(v0 + 872);
    v32 = *(v0 + 856);
    v28 = *(v0 + 672);
    v4 = *(v0 + 648);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v5 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
    v6 = *(*(v5 - 8) + 72);
    v7 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1006BF740;
    v9 = v8 + v7;
    v10 = enum case for DIPError.PropertyKey.inoProviderID(_:);
    v11 = type metadata accessor for DIPError.PropertyKey();
    v12 = *(*(v11 - 8) + 104);
    (v12)(v9, v10, v11);
    if (v28 == 3)
    {
      v13 = 0x6E6F736D697263;
    }

    else
    {
      v13 = 0x61746E6567616DLL;
    }

    v14 = *(v5 + 48);
    v15 = (v9 + v14);
    v15[3] = &type metadata for String;
    v15[4] = &protocol witness table for String;
    *v15 = v13;
    v15[1] = 0xE700000000000000;
    v16 = (v9 + v6 + v14);
    v12();
    v16[3] = &type metadata for String;
    v16[4] = &protocol witness table for String;
    v17 = 0xE000000000000000;
    if (v4)
    {
      v17 = v4;
    }

    *v16 = v29;
    v16[1] = v17;

    sub_10003C9C0(v8);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v30 + 104))(v31, enum case for DIPError.Code.internalError(_:), v32);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    swift_errorRetain();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v18 = *(v0 + 8);

    return v18();
  }

  else
  {
    v20 = v2;
    v21 = v3;
    v22 = *(v0 + 728);
    v23 = *(v0 + 672);
    sub_10000BB78((v0 + 480));
    sub_10000BA08((v0 + 440), *(v0 + 464));
    sub_10061B2DC(v22);
    v24 = swift_task_alloc();
    *(v0 + 976) = v24;
    *v24 = v0;
    v24[1] = sub_100222354;
    if (v23 == 3)
    {
      v25 = 0x6E6F736D697263;
    }

    else
    {
      v25 = 0x61746E6567616DLL;
    }

    v26 = *(v0 + 752);
    v27 = *(v0 + 728);

    return DIPKeystoreProtocol.retrieveOrGenerateIdentityKey(name:userInfo:keyTypeToGenerate:algorithm:constraints:enableUAM:)(v0 + 520, v25, 0xE700000000000000, v20, v21, v26, v27, 0);
  }
}

uint64_t sub_100221F74()
{
  v1 = *(v0 + 752);
  v2 = *(v0 + 744);
  v3 = *(v0 + 736);

  (*(v2 + 8))(v1, v3);

  v21 = *(v0 + 640);
  v22 = *(v0 + 864);
  v23 = *(v0 + 872);
  v24 = *(v0 + 856);
  v20 = *(v0 + 672);
  v4 = *(v0 + 648);
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v5 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
  v6 = *(*(v5 - 8) + 72);
  v7 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1006BF740;
  v9 = v8 + v7;
  v10 = enum case for DIPError.PropertyKey.inoProviderID(_:);
  v11 = type metadata accessor for DIPError.PropertyKey();
  v12 = *(*(v11 - 8) + 104);
  (v12)(v9, v10, v11);
  v13 = 0x61746E6567616DLL;
  if (v20 == 3)
  {
    v13 = 0x6E6F736D697263;
  }

  v14 = *(v5 + 48);
  v15 = (v9 + v14);
  v15[3] = &type metadata for String;
  v15[4] = &protocol witness table for String;
  *v15 = v13;
  v15[1] = 0xE700000000000000;
  v16 = (v9 + v6 + v14);
  v12();
  v16[3] = &type metadata for String;
  v16[4] = &protocol witness table for String;
  v17 = 0xE000000000000000;
  if (v4)
  {
    v17 = v4;
  }

  *v16 = v21;
  v16[1] = v17;

  sub_10003C9C0(v8);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v22 + 104))(v23, enum case for DIPError.Code.internalError(_:), v24);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  swift_errorRetain();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_100222354()
{
  v2 = *v1;
  v2[123] = v0;

  (*(v2[90] + 8))(v2[91], v2[89]);

  if (v0)
  {

    v3 = sub_100222C88;
  }

  else
  {
    v3 = sub_100222514;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100222514()
{
  v1 = *(v0 + 984);
  sub_10000BA08((v0 + 520), *(v0 + 544));
  v2 = dispatch thunk of IdentityKey.attestation(_:)();
  if (v1)
  {
    (*(*(v0 + 744) + 8))(*(v0 + 752), *(v0 + 736));

    sub_10000BB78((v0 + 520));
    sub_10000BB78((v0 + 440));
LABEL_8:

    v50 = *(v0 + 640);
    v52 = *(v0 + 864);
    v54 = *(v0 + 872);
    v56 = *(v0 + 856);
    v48 = *(v0 + 672);
    v26 = *(v0 + 648);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v27 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
    v28 = *(*(v27 - 8) + 72);
    v29 = (*(*(v27 - 8) + 80) + 32) & ~*(*(v27 - 8) + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1006BF740;
    v31 = v30 + v29;
    v32 = enum case for DIPError.PropertyKey.inoProviderID(_:);
    v33 = type metadata accessor for DIPError.PropertyKey();
    v34 = *(*(v33 - 8) + 104);
    (v34)(v31, v32, v33);
    v35 = 0x61746E6567616DLL;
    if (v48 == 3)
    {
      v35 = 0x6E6F736D697263;
    }

    v36 = *(v27 + 48);
    v37 = (v31 + v36);
    v37[3] = &type metadata for String;
    v37[4] = &protocol witness table for String;
    *v37 = v35;
    v37[1] = 0xE700000000000000;
    v38 = (v31 + v28 + v36);
    v34();
    v38[3] = &type metadata for String;
    v38[4] = &protocol witness table for String;
    v39 = 0xE000000000000000;
    if (v26)
    {
      v39 = v26;
    }

    *v38 = v50;
    v38[1] = v39;

    sub_10003C9C0(v30);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v52 + 104))(v54, enum case for DIPError.Code.internalError(_:), v56);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    swift_errorRetain();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v40 = *(v0 + 8);

    return v40();
  }

  v3 = *(v0 + 928);
  v45 = *(v0 + 896);
  v4 = *(v0 + 808);
  v44 = *(v0 + 792);
  v5 = v2;
  v6 = *(v0 + 704);
  v51 = *(v0 + 696);
  v53 = *(v0 + 688);
  (*(*(v0 + 744) + 8))(*(v0 + 752), *(v0 + 736));
  swift_setDeallocating();

  swift_deallocClassInstance();
  sub_100020260(v0 + 520, v0 + 352);
  v55._rawValue = v5;
  *(v0 + 392) = v5;
  sub_10000BB78((v0 + 520));
  sub_10000BB78((v0 + 440));

  UUID.init()();
  v7 = UUID.uuidString.getter();
  v47 = v8;
  v49 = v7;
  v45(v4, v44);
  v9 = *(v3 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation + 8);
  v46 = *(v3 + OBJC_IVAR____TtC8coreidvd13DIPWebService_conversation);
  sub_100020260(*(v3 + OBJC_IVAR____TtC8coreidvd13DIPWebService_httpSession) + OBJC_IVAR____TtC8coreidvd14DIPHTTPSession_accountManager, v0 + 560);
  sub_10000BA08((v0 + 560), *(v0 + 584));

  v10 = dispatch thunk of DIPAccountManagerProtocol.appleAuthHeader(_:)();
  v12 = v11;
  sub_10000BB78((v0 + 560));
  DeviceInformationProvider.init()();
  v13 = DeviceInformationProvider.uniqueDeviceID.getter();
  v15 = v14;
  (*(v51 + 8))(v6, v53);
  if (qword_100832D18 != -1)
  {
    swift_once();
  }

  v16 = *(v0 + 664);
  v17 = *(v0 + 656);
  v19 = *(v0 + 624);
  v18 = *(v0 + 640);
  v20 = *(v0 + 616);
  v21 = xmmword_100882478;
  *(v0 + 216) = v46;
  *(v0 + 224) = v9;
  *(v0 + 232) = v49;
  *(v0 + 240) = v47;
  *(v0 + 248) = v10;
  *(v0 + 256) = v12;
  *(v0 + 264) = v13;
  *(v0 + 272) = v15;
  *(v0 + 280) = v21;
  *(v0 + 296) = v19;
  *(v0 + 312) = v18;
  *(v0 + 328) = v20;
  *(v0 + 336) = v17;
  *(v0 + 344) = v16;
  sub_1000A7FAC();
  sub_1000A8000();

  JWSSignedJSON.init(payload:)();
  JWSSignedJSON.setCertificateChain(_:)(v55);
  v22 = *(v0 + 776);
  if (v23)
  {
    v24 = *(v0 + 768);
    v25 = *(v0 + 760);

    (*(v24 + 8))(v22, v25);
    sub_1001B7154(v0 + 352);
    goto LABEL_8;
  }

  JWSSignedJSON.setKid(_:)();
  v42 = swift_task_alloc();
  *(v0 + 992) = v42;
  *v42 = v0;
  v42[1] = sub_100223070;
  v43 = *(v0 + 760);

  return JWSSignedJSON.sign(_:)(v0 + 352, v43);
}

uint64_t sub_100222C88()
{
  v1 = *(v0 + 752);
  v2 = *(v0 + 744);
  v3 = *(v0 + 736);

  (*(v2 + 8))(v1, v3);
  sub_10000BB78((v0 + 440));

  v21 = *(v0 + 640);
  v22 = *(v0 + 864);
  v23 = *(v0 + 872);
  v24 = *(v0 + 856);
  v20 = *(v0 + 672);
  v4 = *(v0 + 648);
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v5 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
  v6 = *(*(v5 - 8) + 72);
  v7 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1006BF740;
  v9 = v8 + v7;
  v10 = enum case for DIPError.PropertyKey.inoProviderID(_:);
  v11 = type metadata accessor for DIPError.PropertyKey();
  v12 = *(*(v11 - 8) + 104);
  (v12)(v9, v10, v11);
  v13 = 0x61746E6567616DLL;
  if (v20 == 3)
  {
    v13 = 0x6E6F736D697263;
  }

  v14 = *(v5 + 48);
  v15 = (v9 + v14);
  v15[3] = &type metadata for String;
  v15[4] = &protocol witness table for String;
  *v15 = v13;
  v15[1] = 0xE700000000000000;
  v16 = (v9 + v6 + v14);
  v12();
  v16[3] = &type metadata for String;
  v16[4] = &protocol witness table for String;
  v17 = 0xE000000000000000;
  if (v4)
  {
    v17 = v4;
  }

  *v16 = v21;
  v16[1] = v17;

  sub_10003C9C0(v8);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v22 + 104))(v23, enum case for DIPError.Code.internalError(_:), v24);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  swift_errorRetain();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_100223070()
{
  *(*v1 + 1000) = v0;

  if (v0)
  {

    v2 = sub_1002236FC;
  }

  else
  {
    v2 = sub_10022318C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10022318C()
{
  v1 = v0[125];
  v2 = v0[98];
  v3 = v0[97];
  v4 = v0[96];
  v5 = v0[95];
  v6 = v0[84];
  sub_1001B7154((v0 + 44));
  (*(v4 + 32))(v2, v3, v5);
  v7 = sub_10058BF20(v6);
  if (v1)
  {

    v8 = v0[116];
    v9 = v0[96];
    v33 = v0[95];
    v35 = v0[98];
    v37 = enum case for DIPError.Code.internalError(_:);
    (*(v0[108] + 104))(v0[109]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v9 + 8))(v35, v33);
    v31 = v0[80];
    v32 = v0[108];
    v34 = v0[109];
    v36 = v0[107];
    v30 = v0[84];
    v10 = v0[81];
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v11 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
    v12 = *(*(v11 - 8) + 72);
    v13 = (*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1006BF740;
    v15 = v14 + v13;
    v16 = enum case for DIPError.PropertyKey.inoProviderID(_:);
    v17 = type metadata accessor for DIPError.PropertyKey();
    v18 = *(*(v17 - 8) + 104);
    v18(v15, v16, v17);
    v19 = 0x61746E6567616DLL;
    if (v30 == 3)
    {
      v19 = 0x6E6F736D697263;
    }

    v20 = *(v11 + 48);
    v21 = (v15 + v20);
    v21[3] = &type metadata for String;
    v21[4] = &protocol witness table for String;
    *v21 = v19;
    v21[1] = 0xE700000000000000;
    v22 = v15 + v12;
    v23 = (v15 + v12 + v20);
    v18(v22, enum case for DIPError.PropertyKey.inoWorkflowID(_:), v17);
    v23[3] = &type metadata for String;
    v23[4] = &protocol witness table for String;
    v24 = 0xE000000000000000;
    if (v10)
    {
      v24 = v10;
    }

    *v23 = v31;
    v23[1] = v24;

    sub_10003C9C0(v14);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v32 + 104))(v34, v37, v36);
    swift_allocError();
    swift_errorRetain();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v25 = v0[1];

    return v25();
  }

  else
  {
    v27 = v7;
    v28 = swift_task_alloc();
    v0[126] = v28;
    *v28 = v0;
    v28[1] = sub_100223AD4;
    v29 = v0[98];

    return sub_1005E48D4(v29, v27);
  }
}

uint64_t sub_1002236FC()
{
  (*(*(v0 + 768) + 8))(*(v0 + 776), *(v0 + 760));
  sub_1001B7154(v0 + 352);

  v18 = *(v0 + 640);
  v19 = *(v0 + 864);
  v20 = *(v0 + 872);
  v21 = *(v0 + 856);
  v17 = *(v0 + 672);
  v1 = *(v0 + 648);
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v2 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
  v3 = *(*(v2 - 8) + 72);
  v4 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1006BF740;
  v6 = v5 + v4;
  v7 = enum case for DIPError.PropertyKey.inoProviderID(_:);
  v8 = type metadata accessor for DIPError.PropertyKey();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = 0x61746E6567616DLL;
  if (v17 == 3)
  {
    v10 = 0x6E6F736D697263;
  }

  v11 = *(v2 + 48);
  v12 = (v6 + v11);
  v12[3] = &type metadata for String;
  v12[4] = &protocol witness table for String;
  *v12 = v10;
  v12[1] = 0xE700000000000000;
  v13 = (v6 + v3 + v11);
  v9();
  v13[3] = &type metadata for String;
  v13[4] = &protocol witness table for String;
  v14 = 0xE000000000000000;
  if (v1)
  {
    v14 = v1;
  }

  *v13 = v18;
  v13[1] = v14;

  sub_10003C9C0(v5);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v19 + 104))(v20, enum case for DIPError.Code.internalError(_:), v21);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  swift_errorRetain();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_100223AD4()
{
  *(*v1 + 1016) = v0;

  if (v0)
  {

    v2 = sub_100224258;
  }

  else
  {
    v2 = sub_100223BF0;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_100223BF0(uint64_t a1)
{
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Action Notification successfully acknowledged by the server", v4, 2u);
  }

  v5 = v1[105];
  v6 = v1[103];
  v7 = v1[102];

  v8 = *(v6 + 8);
  v1[128] = v8;
  v8(v5, v7);
  v9._countAndFlagsBits = 0x3536626261333430;
  v10._object = 0x8000000100707310;
  v9._object = 0xE800000000000000;
  v10._countAndFlagsBits = 0xD000000000000018;
  logMilestone(tag:description:)(v9, v10);
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v11 = v1[127];
  v12 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v12 + 54);
  sub_1000318FC(&v12[4], (v1 + 2));
  os_unfair_lock_unlock(v12 + 54);
  if (!v11)
  {
    v13 = v1[83];
    v14 = v1[82];
    v1[129] = v1[9];

    sub_100031918((v1 + 2));
    v15 = swift_allocObject();
    v1[130] = v15;
    *(v15 + 16) = v14;
    *(v15 + 24) = v13;
    v16 = swift_allocObject();
    v1[131] = v16;
    *(v16 + 16) = sub_100224B9C;
    *(v16 + 24) = v15;

    v17 = swift_task_alloc();
    v1[132] = v17;
    *v17 = v1;
    v17[1] = sub_100223E7C;

    AsyncCoreDataContainer.performWrite<A>(_:)(v17, sub_10017F710, v16, &type metadata for () + 8);
  }
}

uint64_t sub_100223E7C()
{
  *(*v1 + 1064) = v0;

  if (v0)
  {
    v2 = sub_1002240CC;
  }

  else
  {

    v2 = sub_100223FB0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100223FB0()
{
  (*(*(v0 + 768) + 8))(*(v0 + 784), *(v0 + 760));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002240CC()
{
  v1 = v0[128];
  v2 = v0[116];
  v3 = v0[104];
  v4 = v0[102];

  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v1(v3, v4);
  (*(v0[96] + 8))(v0[98], v0[95]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100224258()
{
  v1 = v0[116];
  v2 = v0[96];
  v23 = v0[95];
  v25 = v0[98];
  v27 = enum case for DIPError.Code.internalError(_:);
  (*(v0[108] + 104))(v0[109]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v2 + 8))(v25, v23);
  v21 = v0[80];
  v22 = v0[108];
  v24 = v0[109];
  v26 = v0[107];
  v20 = v0[84];
  v3 = v0[81];
  sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
  v4 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
  v5 = *(*(v4 - 8) + 72);
  v6 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1006BF740;
  v8 = v7 + v6;
  v9 = enum case for DIPError.PropertyKey.inoProviderID(_:);
  v10 = type metadata accessor for DIPError.PropertyKey();
  v11 = *(*(v10 - 8) + 104);
  v11(v8, v9, v10);
  v12 = 0x61746E6567616DLL;
  if (v20 == 3)
  {
    v12 = 0x6E6F736D697263;
  }

  v13 = *(v4 + 48);
  v14 = (v8 + v13);
  v14[3] = &type metadata for String;
  v14[4] = &protocol witness table for String;
  *v14 = v12;
  v14[1] = 0xE700000000000000;
  v15 = v8 + v5;
  v16 = (v8 + v5 + v13);
  v11(v15, enum case for DIPError.PropertyKey.inoWorkflowID(_:), v10);
  v16[3] = &type metadata for String;
  v16[4] = &protocol witness table for String;
  v17 = 0xE000000000000000;
  if (v3)
  {
    v17 = v3;
  }

  *v16 = v21;
  v16[1] = v17;

  sub_10003C9C0(v7);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  (*(v22 + 104))(v24, v27, v26);
  swift_allocError();
  swift_errorRetain();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v18 = v0[1];

  return v18();
}

unint64_t sub_1002246F0(unint64_t a1, uint64_t a2, void *a3)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 1);
  __chkstk_darwin(v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1005791C8(a2, a3);
  if (!v3)
  {
    v12 = result;
    if (result >> 62)
    {
      goto LABEL_16;
    }

    result = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = 0;
    while (result)
    {
      v22 = a1;
      v25 = (result - 1);
      if (result < 1)
      {
        __break(1u);
        return result;
      }

      v10 = 0;
      a1 = v12 & 0xC000000000000001;
      v24 = v27;
      if ((v12 & 0xC000000000000001) != 0)
      {
LABEL_6:
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_8;
      }

      while (1)
      {
        v13 = *(v12 + 8 * v10 + 32);
LABEL_8:
        v14 = v13;
        v15 = [v13 managedObjectContext];
        if (v15)
        {
          break;
        }

LABEL_12:
        if (v25 == v10)
        {

          return sub_1005783D4();
        }

        ++v10;
        if (a1)
        {
          goto LABEL_6;
        }
      }

      a3 = v15;
      v16 = swift_allocObject();
      *(v16 + 16) = v14;
      *(v16 + 24) = 1;
      v8 = swift_allocObject();
      *(v8 + 16) = sub_100224C28;
      *(v8 + 24) = v16;
      v27[2] = sub_10021E8E8;
      v28 = v8;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v27[0] = sub_10057E264;
      v27[1] = &unk_10080AE80;
      v17 = _Block_copy(aBlock);
      a2 = v28;
      v7 = v14;

      [a3 performBlockAndWait:v17];

      _Block_release(v17);
      LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

      if ((v17 & 1) == 0)
      {
        goto LABEL_12;
      }

      __break(1u);
LABEL_16:
      result = _CocoaArrayWrapper.endIndex.getter();
      v23 = 0;
    }

    defaultLogger()();

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      aBlock[0] = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_100141FE4(a2, a3, aBlock);
      _os_log_impl(&_mh_execute_header, v18, v19, "no proofing session exists with proofingSessionID: %s", v20, 0xCu);
      sub_10000BB78(v21);
    }

    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

uint64_t sub_100224AFC(uint64_t a1)
{
  v2 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100224B64()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100224BB8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100224BF0()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100224C44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100224C64()
{
  v0 = type metadata accessor for IdentityBMUserProofingStreamWrapper();
  v1 = swift_allocObject();
  v2 = [BiomeLibrary() WalletPaymentsCommerce];
  swift_unknownObjectRelease();
  v3 = [v2 UserProofing];
  swift_unknownObjectRelease();
  v4 = [v3 Result];
  swift_unknownObjectRelease();
  *(v1 + 16) = v4;
  v5 = objc_allocWithZone(IdentityProofingBiomeDataDeletionManager);

  v6 = [v5 init];
  v17[3] = v0;
  v17[4] = &off_10080D6B8;
  v17[0] = v1;
  type metadata accessor for IdentityProofingBiomeManager();
  v7 = swift_allocObject();
  v8 = sub_10001F370(v17, v0);
  __chkstk_darwin(v8);
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  v12 = *v10;
  v15 = v0;
  v16 = &off_10080D6B8;
  *&v14 = v12;
  *(v7 + 64) = 90;
  sub_10001F358(&v14, v7 + 16);
  *(v7 + 56) = v6;
  sub_10000BB78(v17);

  return v7;
}

unint64_t sub_100224E74(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x5F4F545F444E4553;
    v6 = 0x49505F45524F5453;
    if (a1 == 8)
    {
      v6 = 0xD000000000000011;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x544154535F544553;
    if (a1 != 5)
    {
      v7 = 0xD000000000000014;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x524F465F54494157;
    v2 = 0x5F45545543455845;
    v3 = 0x4145485F464C4553;
    if (a1 != 3)
    {
      v3 = 0x5F59414C50534944;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x4F495349564F5250;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_100225000(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_100224E74(*a1);
  v5 = v4;
  if (v3 == sub_100224E74(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100225088()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100224E74(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002250EC(uint64_t a1)
{
  sub_100224E74(*v1);
  String.hash(into:)();
}

Swift::Int sub_100225140(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_100224E74(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1002251A0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10025DC8C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1002251D0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100224E74(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1002251FC()
{

  return swift_deallocClassInstance();
}

Swift::Int sub_10022526C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100225344(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100225408(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1002254DC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100267450(*a1);
  *a2 = result;
  return result;
}

void sub_10022550C(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0x80000001006FA430;
  v5 = 0xD000000000000010;
  if (*v1 != 2)
  {
    v5 = 0x6974634172657375;
    v4 = 0xEA00000000006E6FLL;
  }

  if (*v1)
  {
    v3 = 0x756F72676B636162;
    v2 = 0xEA0000000000646ELL;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1002255A0()
{
  v0 = type metadata accessor for DispatchQoS.QoSClass();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for IdentityProofingActionNotificationFlow();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  sub_10001F8D4(0, &qword_100845BD0, OS_dispatch_queue_ptr);
  (*(v1 + 104))(v3, enum case for DispatchQoS.QoSClass.default(_:), v0);
  v6 = static OS_dispatch_queue.global(qos:)();
  (*(v1 + 8))(v3, v0);
  v18[3] = v4;
  v18[4] = &off_10080ADD0;
  v18[0] = v5;
  type metadata accessor for IdentityProofingCleanupProvider();
  v7 = swift_allocObject();
  v8 = sub_10001F370(v18, v4);
  __chkstk_darwin(v8);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  v12 = *v10;
  v16 = v4;
  v17 = &off_10080ADD0;
  *&v15 = v12;
  swift_unknownObjectWeakInit();
  if (qword_1008824A8)
  {
    v13 = *(qword_1008824A8 + 152);
  }

  else
  {
    v13 = 0;
  }

  swift_unknownObjectWeakAssign();

  sub_10001F358(&v15, v7 + 24);
  *(v7 + 64) = v6;
  sub_10000BB78(v18);
  return v7;
}

uint64_t sub_1002257FC()
{
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  v0 = [objc_allocWithZone(PKPaymentService) init];
  v16[3] = sub_10001F8D4(0, &unk_1008458A0, PKPaymentService_ptr);
  v16[4] = &off_10080C410;
  v16[0] = v0;
  type metadata accessor for IdentityProofingConfigProvider();
  v1 = swift_allocObject();
  type metadata accessor for IdentityProofingTextReplacementProvider();
  swift_allocObject();
  v2 = IdentityProofingTextReplacementProvider.init()();
  type metadata accessor for IdentityProofingDeviceMigrationManagerFactory();
  v3 = swift_allocObject();
  type metadata accessor for IdentityProofingWorkflowProvider();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  type metadata accessor for IdentityProofingUserNotificationProvider(0);
  v5 = swift_allocObject();
  *(v5 + 56) = 0u;
  *(v5 + 72) = 0u;
  *(v5 + 88) = 0;
  v6 = OBJC_IVAR____TtC8coreidvd40IdentityProofingUserNotificationProvider_staticWorkflow;
  v7 = type metadata accessor for IdentityProofingStaticWorkflow(0);
  (*(*(v7 - 8) + 56))(v5 + v6, 1, 1, v7);
  sub_100020260(v16, v5 + 16);
  sub_10000BBC4(v17, &v11, &unk_100845E80, &qword_1006DAD90);
  if (!v12)
  {
    if (qword_1008824A8 && (v8 = *(qword_1008824A8 + 152)) != 0)
    {
      *(&v14 + 1) = type metadata accessor for IdentityWatchSessionManagementListener(0);
      v15 = &off_10080C438;
      *&v13 = v8;
      v9 = v8;
      sub_10000BE18(v17, &unk_100845E80, &qword_1006DAD90);
      sub_10000BB78(v16);
      if (!v12)
      {
        goto LABEL_9;
      }
    }

    else
    {
      sub_10000BE18(v17, &unk_100845E80, &qword_1006DAD90);
      sub_10000BB78(v16);
      v15 = 0;
      v13 = 0u;
      v14 = 0u;
      if (!v12)
      {
        goto LABEL_9;
      }
    }

    sub_10000BE18(&v11, &unk_100845E80, &qword_1006DAD90);
    goto LABEL_9;
  }

  sub_10000BE18(v17, &unk_100845E80, &qword_1006DAD90);
  sub_10000BB78(v16);
  sub_10001F358(&v11, &v13);
LABEL_9:
  swift_beginAccess();
  sub_1000B2764(&v13, v5 + 56, &unk_100845E80, &qword_1006DAD90);
  swift_endAccess();
  *(v5 + 96) = v1;
  *(v5 + 104) = v2;
  *(v5 + 112) = v4;
  return v5;
}

void sub_100225AAC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v38 = a5;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v33 - v14;
  sub_10057BE48(a2, a3, a4);
  if (!v5)
  {
    v17 = v16;
    v34 = a2;
    v35 = v15;
    v36 = v10;
    v37 = 0;
    if (v16)
    {
      v18 = IdentityDocumentType.description.getter();
      sub_10057F5EC(v18, v19);

      v20 = v37;
      sub_10057BA64();
      if (v20)
      {
      }

      else
      {
        v26 = v35;
        defaultLogger()();
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v39 = v37;
          *v29 = 136315138;
          v30 = IdentityDocumentType.description.getter();
          v32 = sub_100141FE4(v30, v31, &v39);

          *(v29 + 4) = v32;
          _os_log_impl(&_mh_execute_header, v27, v28, "Successfully saved the documentSubType %s", v29, 0xCu);
          sub_10000BB78(v37);
        }

        (*(v36 + 8))(v26, v9);
      }
    }

    else
    {
      defaultLogger()();
      v21 = a3;

      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v39 = v25;
        *v24 = 136315138;
        *(v24 + 4) = sub_100141FE4(v34, v21, &v39);
        _os_log_impl(&_mh_execute_header, v22, v23, "unable to find proofing session. non fatal error %s", v24, 0xCu);
        sub_10000BB78(v25);
      }

      (*(v36 + 8))(v13, v9);
    }
  }
}

void sub_100225E10(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v123 = a4;
  v118 = a5;
  v127 = type metadata accessor for ProofingSession();
  v125 = *(v127 - 8);
  v8 = __chkstk_darwin(v127);
  v108 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v124 = &v102 - v11;
  v12 = __chkstk_darwin(v10);
  v126 = &v102 - v13;
  __chkstk_darwin(v12);
  v15 = &v102 - v14;
  v16 = type metadata accessor for Logger();
  v120 = *(v16 - 8);
  v17 = __chkstk_darwin(v16);
  v19 = &v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v102 - v20;
  v22 = sub_100007224(&unk_100849400, &unk_1006BFBB0);
  __chkstk_darwin(v22 - 8);
  v24 = &v102 - v23;
  v25 = a2;
  v26 = a2;
  v27 = a3;
  v28 = a3;
  v29 = a1;
  v30 = v122;
  v31 = sub_1005791C8(v26, v28);
  v116 = v30;
  if (v30)
  {
    return;
  }

  v33 = v120;
  v117 = v24;
  v115 = v21;
  v113 = v19;
  v121 = v16;
  v114 = v29;
  v106 = v25;
  v119 = v27;
  v102 = v15;
  v34 = v31;
  v103 = v31 >> 62;
  if (v31 >> 62)
  {
    goto LABEL_34;
  }

  v35 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v36 = v126;
  if (!v35)
  {
LABEL_35:
    if (v103)
    {
      v79 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v79 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v80 = v127;
    v81 = v108;
    if (v79)
    {
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_100173040(0, v79 & ~(v79 >> 63), 0);
      if (v79 < 0)
      {
        goto LABEL_67;
      }

      v82 = aBlock[0];
      v83 = v125;
      if ((v34 & 0xC000000000000001) != 0)
      {
        v84 = 0;
        v85 = v102;
        do
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          ProofingSession.init(_:)();
          aBlock[0] = v82;
          v87 = v82[2];
          v86 = v82[3];
          if (v87 >= v86 >> 1)
          {
            sub_100173040((v86 > 1), v87 + 1, 1);
            v83 = v125;
            v82 = aBlock[0];
          }

          ++v84;
          v82[2] = v87 + 1;
          (*(v83 + 32))(v82 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v87, v85, v127);
        }

        while (v79 != v84);

        v36 = v126;
        v80 = v127;
        v88 = v82[2];
        if (!v88)
        {
          goto LABEL_63;
        }
      }

      else
      {
        v98 = 32;
        do
        {
          v99 = *(v34 + v98);
          ProofingSession.init(_:)();
          aBlock[0] = v82;
          v101 = v82[2];
          v100 = v82[3];
          if (v101 >= v100 >> 1)
          {
            sub_100173040((v100 > 1), v101 + 1, 1);
            v83 = v125;
            v82 = aBlock[0];
          }

          v82[2] = v101 + 1;
          v80 = v127;
          (*(v83 + 32))(v82 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v101, v81, v127);
          v98 += 8;
          --v79;
        }

        while (v79);

        v36 = v126;
        v88 = v82[2];
        if (!v88)
        {
LABEL_63:
          v90 = _swiftEmptyArrayStorage;
LABEL_64:

          *v118 = v90;
          return;
        }
      }
    }

    else
    {

      v82 = _swiftEmptyArrayStorage;
      v83 = v125;
      v88 = _swiftEmptyArrayStorage[2];
      if (!v88)
      {
        goto LABEL_63;
      }
    }

    v89 = 0;
    v120 = (v83 + 8);
    v122 = (v83 + 32);
    v123 = v83 + 16;
    v90 = _swiftEmptyArrayStorage;
    v121 = v88;
    while (v89 < v82[2])
    {
      v91 = (*(v83 + 80) + 32) & ~*(v83 + 80);
      v92 = *(v83 + 72);
      (*(v83 + 16))(v36, v82 + v91 + v92 * v89, v80);
      v93 = ProofingSession.target.getter();
      if (v93 == IdentityTarget.rawValue.getter())
      {
        v94 = *v122;
        (*v122)(v124, v36, v80);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v90;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100173040(0, v90[2] + 1, 1);
          v90 = aBlock[0];
        }

        v83 = v125;
        v97 = v90[2];
        v96 = v90[3];
        if (v97 >= v96 >> 1)
        {
          sub_100173040((v96 > 1), v97 + 1, 1);
          v83 = v125;
          v90 = aBlock[0];
        }

        v90[2] = v97 + 1;
        v80 = v127;
        v94(v90 + v91 + v97 * v92);
        v36 = v126;
        v88 = v121;
      }

      else
      {
        (*v120)(v36, v80);
        v83 = v125;
      }

      if (v88 == ++v89)
      {
        goto LABEL_64;
      }
    }

    __break(1u);
LABEL_67:
    __break(1u);
  }

LABEL_4:
  v37 = 0;
  v112 = v34 & 0xC000000000000001;
  v111 = v34 & 0xFFFFFFFFFFFFFF8;
  v120 = v33 + 8;
  v109 = v129;
  v38 = &selRef_setSupportedEncoding_;
  *&v32 = 134217984;
  v107 = v32;
  *&v32 = 136315650;
  v104 = v32;
  v105 = v34;
  v110 = v35;
  while (!v112)
  {
    v39 = v117;
    if (v37 >= *(v111 + 16))
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      v35 = _CocoaArrayWrapper.endIndex.getter();
      v36 = v126;
      if (!v35)
      {
        goto LABEL_35;
      }

      goto LABEL_4;
    }

    v40 = *(v34 + 8 * v37 + 32);
    v41 = (v37 + 1);
    if (__OFADD__(v37, 1))
    {
      goto LABEL_29;
    }

LABEL_8:
    v122 = v41;
    v42 = [v40 v38[160]];
    if (v42 == IdentityProofingActionStatus.rawValue.getter())
    {
      goto LABEL_30;
    }

    v43 = [v40 v38[160]];
    if (v43 == IdentityProofingActionStatus.rawValue.getter())
    {
      goto LABEL_30;
    }

    v44 = [v40 provisioningAttemptDate];
    if (v44)
    {
      v45 = v44;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v46 = type metadata accessor for Date();
      (*(*(v46 - 8) + 56))(v39, 0, 1, v46);
      sub_10000BE18(v39, &unk_100849400, &unk_1006BFBB0);
      v47 = IdentityProofingActionStatus.rawValue.getter();
      v48 = v47 == IdentityProofingActionStatus.rawValue.getter();
      v49 = v115;
      v50 = v118;
      if (v48)
      {

        *v50 = _swiftEmptyArrayStorage;
        return;
      }
    }

    else
    {
      v51 = type metadata accessor for Date();
      (*(*(v51 - 8) + 56))(v39, 1, 1, v51);
      sub_10000BE18(v39, &unk_100849400, &unk_1006BFBB0);
      v49 = v115;
    }

    [v40 target];
    IdentityTarget.init(rawValue:)();
    if ((v52 & 1) == 0)
    {
      defaultLogger()();

      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        aBlock[0] = swift_slowAlloc();
        *v55 = v104;
        *(v55 + 4) = sub_100141FE4(v106, v119, aBlock);
        *(v55 + 12) = 2080;
        v56 = IdentityTarget.debugDescription.getter();
        v58 = sub_100141FE4(v56, v57, aBlock);

        *(v55 + 14) = v58;
        *(v55 + 22) = 2080;
        v59 = IdentityProofingActionStatus.debugDescription.getter();
        v61 = sub_100141FE4(v59, v60, aBlock);

        *(v55 + 24) = v61;
        _os_log_impl(&_mh_execute_header, v53, v54, "Storing the current proofing action status for proofingSessionID: %s and target: %s to: %s", v55, 0x20u);
        swift_arrayDestroy();
        v34 = v105;
      }

      (*v120)(v49, v121);
    }

    v62 = IdentityProofingActionStatus.rawValue.getter();
    v63 = [v40 managedObjectContext];
    if (v63)
    {
      v64 = v63;
      v33 = swift_allocObject();
      *(v33 + 2) = v40;
      *(v33 + 3) = v62;
      v33[32] = 0;
      v65 = swift_allocObject();
      *(v65 + 16) = sub_100267984;
      *(v65 + 24) = v33;
      v129[2] = sub_10021E8E8;
      v129[3] = v65;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v129[0] = sub_10057E264;
      v129[1] = &unk_10080B0C8;
      v66 = _Block_copy(aBlock);
      v67 = v40;

      [v64 performBlockAndWait:v66];

      _Block_release(v66);
      LOBYTE(v66) = swift_isEscapingClosureAtFileLocation();

      if (v66)
      {
        goto LABEL_33;
      }
    }

    v68 = v113;
    defaultLogger()();
    v69 = v40;
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = v107;
      v38 = &selRef_setSupportedEncoding_;
      *(v72 + 4) = [v69 proofingActionStatus];

      _os_log_impl(&_mh_execute_header, v70, v71, "the current proofingActionStatus is %lld", v72, 0xCu);

      v73 = v110;
    }

    else
    {

      v70 = v69;
      v73 = v110;
      v38 = &selRef_setSupportedEncoding_;
    }

    (*v120)(v68, v121);
    v74 = *(v114 + 16);
    aBlock[0] = 0;
    v75 = [v74 save:aBlock];
    v33 = aBlock[0];
    v36 = v126;
    if (!v75)
    {
      v77 = aBlock[0];

      v78 = _convertNSErrorToError(_:)();

      v116 = v78;
      swift_willThrow();

      return;
    }

    v76 = aBlock[0];

    ++v37;
    if (v122 == v73)
    {
      goto LABEL_35;
    }
  }

  v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  v39 = v117;
  v41 = (v37 + 1);
  if (!__OFADD__(v37, 1))
  {
    goto LABEL_8;
  }

LABEL_29:
  __break(1u);
LABEL_30:

  *v118 = _swiftEmptyArrayStorage;
}

uint64_t sub_100226AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_100226B1C, 0, 0);
}

uint64_t sub_100226B1C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  *(v0 + 40) = v2;
  if (v2)
  {
    v3 = *(type metadata accessor for ProofingSession() - 8);
    v4 = *(v3 + 80);
    *(v0 + 72) = v4;
    v5 = (v4 + 32) & ~v4;
    *(v0 + 48) = *(v3 + 72);
    *(v0 + 56) = 0;
    v6 = swift_task_alloc();
    *(v0 + 64) = v6;
    *v6 = v0;
    v6[1] = sub_100226C60;
    v7 = *(v0 + 32);

    return sub_100226E24(v1 + v5, v7);
  }

  else
  {
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_100226C60()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 56) + 1;
  v4 = *v0;

  if (v3 == v2)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v1 + 48);
    v8 = *(v1 + 56) + 1;
    *(v1 + 56) = v8;
    v9 = *(v1 + 16) + ((*(v1 + 72) + 32) & ~*(v1 + 72)) + v7 * v8;
    v10 = swift_task_alloc();
    *(v1 + 64) = v10;
    *v10 = v4;
    v10[1] = sub_100226C60;
    v11 = *(v1 + 32);

    return sub_100226E24(v9, v11);
  }
}

uint64_t sub_100226E24(uint64_t a1, uint64_t a2)
{
  v3[24] = a2;
  v3[25] = v2;
  v3[23] = a1;
  sub_100007224(&unk_100844540, &unk_1006BFBC0);
  v3[26] = swift_task_alloc();
  v4 = type metadata accessor for DIPError.Code();
  v3[27] = v4;
  v3[28] = *(v4 - 8);
  v3[29] = swift_task_alloc();
  sub_100007224(&unk_100845E90, &qword_1006E6440);
  v3[30] = swift_task_alloc();
  v5 = type metadata accessor for ProofingDisplayMessage();
  v3[31] = v5;
  v3[32] = *(v5 - 8);
  v3[33] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v3[34] = v6;
  v3[35] = *(v6 - 8);
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();

  return _swift_task_switch(sub_100227088, 0, 0);
}

uint64_t sub_100227088(uint64_t a1)
{
  v65 = v1;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "IdentityProofingPendingActionsFlow attempting to update proofing status on the watch", v4, 2u);
  }

  v5 = v1[46];
  v6 = v1[34];
  v7 = v1[35];

  v8 = *(v7 + 8);
  v1[47] = v8;
  v8(v5, v6);
  v1[48] = ProofingSession.state.getter();
  v1[49] = v9;
  if (!v9)
  {
    defaultLogger()();
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();
    v41 = os_log_type_enabled(v39, v40);
    v42 = v1[36];
    v43 = v1[34];
    if (!v41)
    {
      goto LABEL_32;
    }

    v44 = swift_slowAlloc();
    *v44 = 0;
    v45 = "IdentityProofingPendingActionsFlow unable to update status on watch: state is nil";
LABEL_31:
    _os_log_impl(&_mh_execute_header, v39, v40, v45, v44, 2u);

    goto LABEL_32;
  }

  v1[50] = ProofingSession.country.getter();
  v1[51] = v10;
  if (!v10)
  {

    defaultLogger()();
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();
    v46 = os_log_type_enabled(v39, v40);
    v42 = v1[37];
    v43 = v1[34];
    if (!v46)
    {
      goto LABEL_32;
    }

    v44 = swift_slowAlloc();
    *v44 = 0;
    v45 = "IdentityProofingPendingActionsFlow unable to update status on watch: country is nil";
    goto LABEL_31;
  }

  ProofingSession.documentType.getter();
  if (!v11)
  {

    defaultLogger()();
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();
    v47 = os_log_type_enabled(v39, v40);
    v42 = v1[38];
    v43 = v1[34];
    if (!v47)
    {
      goto LABEL_32;
    }

    v44 = swift_slowAlloc();
    *v44 = 0;
    v45 = "IdentityProofingPendingActionsFlow unable to update status on watch: documentType is nil";
    goto LABEL_31;
  }

  v12 = v1[25];
  v1[52] = IdentityDocumentType.init(documentTypeString:)();
  v13 = *(v12 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_watchListener);
  v1[53] = v13;
  if (!v13)
  {

    defaultLogger()();
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();
    v48 = os_log_type_enabled(v39, v40);
    v42 = v1[39];
    v43 = v1[34];
    if (v48)
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      v45 = "IdentityProofingPendingActionsFlow unable to update status on watch: listener is nil";
      goto LABEL_31;
    }

LABEL_32:

    v8(v42, v43);

    v49 = v1[1];

    return v49();
  }

  v14 = v13;
  v15 = ProofingSession.credentialIdentifier.getter();
  v1[54] = v16;
  v1[55] = v15;
  v17 = ProofingSession.productIdentifier.getter();
  v1[56] = v18;
  v1[57] = v17;
  v19 = IdentityProofingActionStatus.rawValue.getter();
  if (v19 != IdentityProofingActionStatus.rawValue.getter())
  {
LABEL_10:
    v1[61] = 0;
    defaultLogger()();

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v26 = v1[56];
      v25 = v1[57];
      v27 = v1[54];
      v28 = v1[51];
      v30 = v1[49];
      v29 = v1[50];
      v31 = v1[48];
      v62 = v1[43];
      v63 = v1[47];
      v61 = v1[34];
      if (!v26)
      {
        v25 = 0;
      }

      v60 = v25;
      if (v26)
      {
        v32 = v1[56];
      }

      else
      {
        v32 = 0xE000000000000000;
      }

      v59 = v32;
      if (v27)
      {
        v33 = v1[55];
      }

      else
      {
        v33 = 0;
      }

      if (v27)
      {
        v34 = v1[54];
      }

      else
      {
        v34 = 0xE000000000000000;
      }

      v57 = v34;
      v58 = v33;
      v35 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      *v35 = 136316418;
      *(v35 + 4) = sub_100141FE4(v31, v30, &v64);
      *(v35 + 12) = 2080;
      *(v35 + 14) = sub_100141FE4(v29, v28, &v64);
      *(v35 + 22) = 2080;
      v36 = IdentityDocumentType.description.getter();
      v38 = sub_100141FE4(v36, v37, &v64);

      *(v35 + 24) = v38;
      *(v35 + 32) = 2048;
      *(v35 + 34) = IdentityProofingActionStatus.rawValue.getter();
      *(v35 + 42) = 2080;
      *(v35 + 44) = sub_100141FE4(v58, v57, &v64);
      *(v35 + 52) = 2080;
      *(v35 + 54) = sub_100141FE4(v60, v59, &v64);
      _os_log_impl(&_mh_execute_header, v23, v24, "Updating Watch Config:\n    state: %s\n    country: %s\n    documentType %s\n    status: %lld\n    credentialIdentifier: %s\n    productIdentifier: %s", v35, 0x3Eu);
      swift_arrayDestroy();

      v63(v62, v61);
    }

    else
    {
      v51 = v1[47];
      v52 = v1[43];
      v53 = v1[34];

      v51(v52, v53);
    }

    v54 = swift_task_alloc();
    v1[62] = v54;
    *v54 = v1;
    v54[1] = sub_10022817C;

    return sub_1006738C8();
  }

  v20 = v1[31];
  v21 = v1[32];
  v22 = v1[30];
  ProofingSession.proofingErrorMessage.getter();
  if ((*(v21 + 48))(v22, 1, v20) == 1)
  {
    sub_10000BE18(v1[30], &unk_100845E90, &qword_1006E6440);
    goto LABEL_10;
  }

  (*(v1[32] + 32))(v1[33], v1[30], v1[31]);
  v55 = swift_task_alloc();
  v1[58] = v55;
  *v55 = v1;
  v55[1] = sub_100227854;
  v56 = v1[33];

  return sub_10026C5F0(v56);
}

uint64_t sub_100227854(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 472) = a1;
  *(v3 + 480) = v1;

  if (v1)
  {
    v4 = sub_100227D3C;
  }

  else
  {
    v4 = sub_100227968;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100227968(uint64_t a1)
{
  v41 = v1;
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[47];
  v6 = v1[45];
  v7 = v1[34];
  v9 = v1[32];
  v8 = v1[33];
  v10 = v1[31];
  if (v4)
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "IdentityProofingPendingActionsFlow mapped proofing error message to PKIdentityProofingDisplayMessage", v11, 2u);
  }

  v5(v6, v7);
  (*(v9 + 8))(v8, v10);
  v1[61] = v1[59];
  defaultLogger()();

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v15 = v1[56];
    v14 = v1[57];
    v16 = v1[54];
    v17 = v1[51];
    v19 = v1[49];
    v18 = v1[50];
    v20 = v1[48];
    v38 = v1[43];
    v39 = v1[47];
    v37 = v1[34];
    if (!v15)
    {
      v14 = 0;
    }

    v36 = v14;
    if (v15)
    {
      v21 = v1[56];
    }

    else
    {
      v21 = 0xE000000000000000;
    }

    v35 = v21;
    if (v16)
    {
      v22 = v1[55];
    }

    else
    {
      v22 = 0;
    }

    if (v16)
    {
      v23 = v1[54];
    }

    else
    {
      v23 = 0xE000000000000000;
    }

    v33 = v23;
    v34 = v22;
    v24 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    *v24 = 136316418;
    *(v24 + 4) = sub_100141FE4(v20, v19, &v40);
    *(v24 + 12) = 2080;
    *(v24 + 14) = sub_100141FE4(v18, v17, &v40);
    *(v24 + 22) = 2080;
    v25 = IdentityDocumentType.description.getter();
    v27 = sub_100141FE4(v25, v26, &v40);

    *(v24 + 24) = v27;
    *(v24 + 32) = 2048;
    *(v24 + 34) = IdentityProofingActionStatus.rawValue.getter();
    *(v24 + 42) = 2080;
    *(v24 + 44) = sub_100141FE4(v34, v33, &v40);
    *(v24 + 52) = 2080;
    *(v24 + 54) = sub_100141FE4(v36, v35, &v40);
    _os_log_impl(&_mh_execute_header, v12, v13, "Updating Watch Config:\n    state: %s\n    country: %s\n    documentType %s\n    status: %lld\n    credentialIdentifier: %s\n    productIdentifier: %s", v24, 0x3Eu);
    swift_arrayDestroy();

    v39(v38, v37);
  }

  else
  {
    v28 = v1[47];
    v29 = v1[43];
    v30 = v1[34];

    v28(v29, v30);
  }

  v31 = swift_task_alloc();
  v1[62] = v31;
  *v31 = v1;
  v31[1] = sub_10022817C;

  return sub_1006738C8();
}

uint64_t sub_100227D3C()
{
  v35 = v0;
  (*(*(v0 + 256) + 8))(*(v0 + 264), *(v0 + 248));
  defaultLogger()();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "IdentityProofingPendingActionsFlow failed to map proofing error message to PKIdentityProofingDisplayMessage; silently failing %@", v3, 0xCu);
    sub_10000BE18(v4, &unk_100833B50, &unk_1006D8FB0);
  }

  else
  {
  }

  (*(v0 + 376))(*(v0 + 352), *(v0 + 272));
  *(v0 + 488) = 0;
  defaultLogger()();

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = *(v0 + 448);
    v8 = *(v0 + 456);
    v10 = *(v0 + 432);
    v11 = *(v0 + 408);
    v13 = *(v0 + 392);
    v12 = *(v0 + 400);
    v14 = *(v0 + 384);
    v32 = *(v0 + 344);
    v33 = *(v0 + 376);
    v31 = *(v0 + 272);
    if (!v9)
    {
      v8 = 0;
    }

    v30 = v8;
    if (v9)
    {
      v15 = *(v0 + 448);
    }

    else
    {
      v15 = 0xE000000000000000;
    }

    v29 = v15;
    if (v10)
    {
      v16 = *(v0 + 440);
    }

    else
    {
      v16 = 0;
    }

    if (v10)
    {
      v17 = *(v0 + 432);
    }

    else
    {
      v17 = 0xE000000000000000;
    }

    v27 = v17;
    v28 = v16;
    v18 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v18 = 136316418;
    *(v18 + 4) = sub_100141FE4(v14, v13, &v34);
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_100141FE4(v12, v11, &v34);
    *(v18 + 22) = 2080;
    v19 = IdentityDocumentType.description.getter();
    v21 = sub_100141FE4(v19, v20, &v34);

    *(v18 + 24) = v21;
    *(v18 + 32) = 2048;
    *(v18 + 34) = IdentityProofingActionStatus.rawValue.getter();
    *(v18 + 42) = 2080;
    *(v18 + 44) = sub_100141FE4(v28, v27, &v34);
    *(v18 + 52) = 2080;
    *(v18 + 54) = sub_100141FE4(v30, v29, &v34);
    _os_log_impl(&_mh_execute_header, v6, v7, "Updating Watch Config:\n    state: %s\n    country: %s\n    documentType %s\n    status: %lld\n    credentialIdentifier: %s\n    productIdentifier: %s", v18, 0x3Eu);
    swift_arrayDestroy();

    v33(v32, v31);
  }

  else
  {
    v22 = *(v0 + 376);
    v23 = *(v0 + 344);
    v24 = *(v0 + 272);

    v22(v23, v24);
  }

  v25 = swift_task_alloc();
  *(v0 + 496) = v25;
  *v25 = v0;
  v25[1] = sub_10022817C;

  return sub_1006738C8();
}

uint64_t sub_10022817C(uint64_t a1)
{
  *(*v1 + 504) = a1;

  return _swift_task_switch(sub_10022827C, 0, 0);
}

uint64_t sub_10022827C(uint64_t a1)
{
  v50 = v1;
  if (v1[63])
  {
    defaultLogger()();

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v5 = v1[50];
      v4 = v1[51];
      v7 = v1[48];
      v6 = v1[49];
      v45 = v1[42];
      v47 = v1[47];
      v42 = v1[34];
      v8 = swift_slowAlloc();
      v49[0] = swift_slowAlloc();
      *v8 = 136315394;
      *(v8 + 4) = sub_100141FE4(v7, v6, v49);
      *(v8 + 12) = 2080;
      *(v8 + 14) = sub_100141FE4(v5, v4, v49);
      _os_log_impl(&_mh_execute_header, v2, v3, "IdentityWatchSessionManagementListener saving initial watch proofing session for state: '%s', country: '%s'", v8, 0x16u);
      swift_arrayDestroy();

      v47(v45, v42);
    }

    else
    {
      v16 = v1[47];
      v17 = v1[42];
      v18 = v1[34];

      v16(v17, v18);
    }

    v19 = v1[52];
    if (v19 > 3)
    {
      v20 = 0;
    }

    else
    {
      v20 = qword_1006DBE60[v19];
    }

    v1[64] = v20;
    v21 = v1[61];
    if (v21)
    {
      v22 = v1[51];
      v23 = v1[49];
      sub_10026C540(v1[53] + OBJC_IVAR____TtC8coreidvd38IdentityWatchSessionManagementListener_localizationHelper, (v1 + 18));
      v24 = v21;
      v25 = swift_task_alloc();
      v1[65] = v25;
      *v25 = v1;
      v25[1] = sub_100228A5C;
      v26 = v1[50];
      v27 = v1[48];

      return sub_10059DF4C(v24, v27, v23, v26, v22);
    }

    else
    {
      v1[68] = 0;
      v28 = v1[26];
      v29 = v1[24];
      String.lowercased()();
      String.lowercased()();
      v48 = sub_10058D658(v29);
      v30 = type metadata accessor for URL();
      v31 = *(v30 - 8);
      (*(v31 + 56))(v28, 1, 1, v30);
      v43 = v1[26];
      v46 = String._bridgeToObjectiveC()();

      v32 = String._bridgeToObjectiveC()();

      v33 = String._bridgeToObjectiveC()();
      v34 = String._bridgeToObjectiveC()();
      v35 = String._bridgeToObjectiveC()();
      v37 = 0;
      if ((*(v31 + 48))(v43, 1, v30) != 1)
      {
        v38 = v1[26];
        URL._bridgeToObjectiveC()(v36);
        v37 = v39;
        (*(v31 + 8))(v38, v30);
      }

      v44 = v1[63];
      v40 = [objc_allocWithZone(PKIdentityProofingConfiguration) initWithState:v46 country:v32 target:2 credentialIdentifier:v33 status:v48 productIdentifier:v34 accountKeyIdentifier:v35 idType:v1[64] learnMoreURL:v37 proofingErrorMessage:0];
      v1[69] = v40;

      v1[2] = v1;
      v1[3] = sub_10022907C;
      v41 = swift_continuation_init();
      v1[17] = sub_100007224(&unk_100843590, &qword_1006D8B10);
      v1[10] = _NSConcreteStackBlock;
      v1[11] = 1107296256;
      v1[12] = sub_100429100;
      v1[13] = &unk_10080B730;
      v1[14] = v41;
      [v44 updateProofingConfiguration:v40 completion:v1 + 10];

      return _swift_continuation_await(v1 + 2);
    }
  }

  else
  {
    (*(v1[28] + 104))(v1[29], enum case for DIPError.Code.unableToEstablishSessionWithWatch(_:), v1[27]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v9 = v1[61];
    v10 = v1[53];
    v11 = v1[47];
    v12 = v1[40];
    v13 = v1[34];

    defaultLogger()();
    DIPRecordError(_:message:log:)();

    v11(v12, v13);

    v14 = v1[1];

    return v14();
  }
}

uint64_t sub_100228A5C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 528) = v1;

  if (v1)
  {
    sub_10026C59C(v4 + 144);
    v5 = sub_100228EBC;
  }

  else
  {
    *(v4 + 536) = a1;
    sub_10026C59C(v4 + 144);
    v5 = sub_100228B94;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100228B94()
{
  v1 = *(v0 + 536);

  *(v0 + 544) = v1;
  v2 = *(v0 + 208);
  v3 = *(v0 + 192);
  String.lowercased()();
  String.lowercased()();
  v21 = sub_10058D658(v3);
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  (*(v5 + 56))(v2, 1, 1, v4);
  if (v1)
  {
    v20 = sub_10058D9B4();
  }

  else
  {
    v20 = 0;
  }

  v6 = *(v0 + 208);
  v19 = String._bridgeToObjectiveC()();

  v7 = String._bridgeToObjectiveC()();

  v8 = String._bridgeToObjectiveC()();
  v9 = String._bridgeToObjectiveC()();
  v10 = String._bridgeToObjectiveC()();
  v12 = 0;
  if ((*(v5 + 48))(v6, 1, v4) != 1)
  {
    v13 = *(v0 + 208);
    URL._bridgeToObjectiveC()(v11);
    v12 = v14;
    (*(v5 + 8))(v13, v4);
  }

  v18 = *(v0 + 504);
  v15 = [objc_allocWithZone(PKIdentityProofingConfiguration) initWithState:v19 country:v7 target:2 credentialIdentifier:v8 status:v21 productIdentifier:v9 accountKeyIdentifier:v10 idType:*(v0 + 512) learnMoreURL:v12 proofingErrorMessage:v20];
  *(v0 + 552) = v15;

  *(v0 + 16) = v0;
  *(v0 + 24) = sub_10022907C;
  v16 = swift_continuation_init();
  *(v0 + 136) = sub_100007224(&unk_100843590, &qword_1006D8B10);
  *(v0 + 112) = v16;
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_100429100;
  *(v0 + 104) = &unk_10080B730;
  [v18 updateProofingConfiguration:v15 completion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_100228EBC()
{
  v1 = *(v0 + 504);

  v2 = *(v0 + 488);
  v3 = *(v0 + 424);
  v4 = *(v0 + 376);
  v5 = *(v0 + 320);
  v6 = *(v0 + 272);

  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v4(v5, v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10022907C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 560) = v1;
  if (v1)
  {
    v2 = sub_1002294BC;
  }

  else
  {
    v2 = sub_10022918C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10022918C()
{
  v20 = v0;

  defaultLogger()();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  v3 = os_log_type_enabled(v1, v2);
  v18 = *(v0 + 544);
  v4 = *(v0 + 504);
  v5 = *(v0 + 392);
  if (v3)
  {
    v6 = *(v0 + 384);
    v16 = *(v0 + 328);
    v15 = *(v0 + 272);
    v17 = *(v0 + 376);
    v7 = *(v0 + 552);
    v8 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v8 = 136315394;
    *(v8 + 4) = sub_100141FE4(v6, v5, &v19);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_100141FE4(v6, v5, &v19);
    _os_log_impl(&_mh_execute_header, v1, v2, "IdentityWatchSessionManagementListener saved watch proofing session for state: '%s', country: '%s'", v8, 0x16u);
    swift_arrayDestroy();

    v17(v16, v15);
  }

  else
  {
    v9 = *(v0 + 376);
    v10 = *(v0 + 328);
    v11 = *(v0 + 272);

    v9(v10, v11);
  }

  v12 = *(v0 + 488);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1002294BC(uint64_t a1)
{
  v2 = v1[69];
  v3 = v1[68];
  v4 = v1[63];
  swift_willThrow();

  v5 = v1[61];
  v6 = v1[53];
  v7 = v1[47];
  v8 = v1[40];
  v9 = v1[34];

  defaultLogger()();
  DIPRecordError(_:message:log:)();

  v7(v8, v9);

  v10 = v1[1];

  return v10();
}

uint64_t sub_100229698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[166] = v6;
  v7[165] = a6;
  v7[164] = a5;
  v7[163] = a4;
  v7[162] = a3;
  v7[161] = a2;
  v7[160] = a1;
  v8 = type metadata accessor for DIPError();
  v7[167] = v8;
  v7[168] = *(v8 - 8);
  v7[169] = swift_task_alloc();
  v9 = type metadata accessor for DIPError.Code();
  v7[170] = v9;
  v7[171] = *(v9 - 8);
  v7[172] = swift_task_alloc();
  sub_100007224(&unk_100840960, &qword_1006DBCB0);
  v7[173] = swift_task_alloc();
  v7[174] = swift_task_alloc();
  v7[175] = swift_task_alloc();
  v7[176] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v7[177] = v10;
  v7[178] = *(v10 - 8);
  v7[179] = swift_task_alloc();
  v7[180] = swift_task_alloc();
  v7[181] = swift_task_alloc();
  v7[182] = swift_task_alloc();
  v7[183] = swift_task_alloc();

  return _swift_task_switch(sub_1002298B4, 0, 0);
}

uint64_t sub_1002298B4(uint64_t a1)
{
  v22 = v1;
  defaultLogger()();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[183];
  v6 = v1[178];
  v7 = v1[177];
  if (v4)
  {
    v8 = v1[162];
    v9 = v1[161];
    v20 = v1[183];
    v10 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_100141FE4(v9, v8, &v21);
    *(v10 + 12) = 2080;
    v11 = IdentityTarget.debugDescription.getter();
    v13 = sub_100141FE4(v11, v12, &v21);

    *(v10 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v2, v3, "Start provisioning called for proofingSessionID: %s and target: %s", v10, 0x16u);
    swift_arrayDestroy();

    v14 = *(v6 + 8);
    v14(v20, v7);
  }

  else
  {

    v14 = *(v6 + 8);
    v14(v5, v7);
  }

  v1[184] = v14;
  v15 = swift_task_alloc();
  v1[185] = v15;
  *v15 = v1;
  v15[1] = sub_100229ACC;
  v16 = v1[162];
  v17 = v1[161];
  v18 = v1[160];

  return sub_10022BC50(v17, v16, v18);
}

uint64_t sub_100229ACC()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return _swift_task_switch(sub_100229CB8, 0, 0);
  }
}

uint64_t sub_100229CB8()
{
  v143 = v0;
  v1 = *(v0 + 1408);
  sub_10000BBC4(*(v0 + 1280), v1, &unk_100840960, &qword_1006DBCB0);
  v2 = type metadata accessor for PendingActionContext(0);
  v3 = *(*(v2 - 8) + 48);
  v4 = v3(v1, 1, v2);
  v5 = *(v0 + 1408);
  if (v4 == 1)
  {
    sub_10000BE18(*(v0 + 1408), &unk_100840960, &qword_1006DBCB0);
LABEL_6:
    v138 = *(*(v0 + 1368) + 104);
    v138(*(v0 + 1376), enum case for DIPError.Code.provisioningCredentialIdentifierUnavailable(_:), *(v0 + 1360));
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
LABEL_12:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v16 = *(v0 + 1376);
    v131 = *(v0 + 1360);
    v17 = *(v0 + 1320);
    v18 = *(v0 + 1312);
    swift_willThrow();
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v19 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v20 = (*(*v19 + 80) + 32) & ~*(*v19 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1006BF520;
    v22 = v21 + v20;
    v23 = (v22 + v19[14]);
    v24 = enum case for DIPError.PropertyKey.inoProviderID(_:);
    v25 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v25 - 8) + 104))(v22, v24, v25);
    v23[3] = &type metadata for String;
    v23[4] = &protocol witness table for String;
    *v23 = v18;
    v23[1] = v17;

    sub_10003C9C0(v21);
    swift_setDeallocating();
    sub_10000BE18(v22, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    v138(v16, enum case for DIPError.Code.internalError(_:), v131);
    swift_errorRetain();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v139 = *(v0 + 1472);
    v26 = *(v0 + 1432);
    v27 = *(v0 + 1416);
    v28 = *(v0 + 1352);
    v29 = *(v0 + 1344);
    v30 = *(v0 + 1336);
    type metadata accessor for DaemonAnalytics();
    static DaemonAnalytics.sendIdentityProvisioningAttemptedEvent(workflowID:trigger:target:wasSuccessful:)();

    sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    (*(v29 + 16))(v31, v28, v30);
    defaultLogger()();
    DIPRecordError(_:message:log:)();

    v139(v26, v27);
    (*(v29 + 8))(v28, v30);

    v32 = *(v0 + 8);

    return v32();
  }

  v7 = *v5;
  v6 = v5[1];

  sub_100267A1C(v5, type metadata accessor for PendingActionContext);
  if (!v6)
  {
    goto LABEL_6;
  }

  v8 = *(v0 + 1400);
  sub_10000BBC4(*(v0 + 1280), v8, &unk_100840960, &qword_1006DBCB0);
  v9 = v3(v8, 1, v2);
  v10 = *(v0 + 1400);
  if (v9 == 1)
  {

    sub_10000BE18(v10, &unk_100840960, &qword_1006DBCB0);
LABEL_11:
    v138 = *(*(v0 + 1368) + 104);
    v138(*(v0 + 1376), enum case for DIPError.Code.targetInstanceIdentifierUnavailable(_:), *(v0 + 1360));
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    goto LABEL_12;
  }

  v12 = *(v10 + 16);
  v11 = *(v10 + 24);

  sub_100267A1C(v10, type metadata accessor for PendingActionContext);
  if (!v11)
  {

    goto LABEL_11;
  }

  v13 = *(v0 + 1392);
  sub_10000BBC4(*(v0 + 1280), v13, &unk_100840960, &qword_1006DBCB0);
  v14 = v3(v13, 1, v2);
  v15 = *(v0 + 1392);
  if (v14 == 1)
  {

    sub_10000BE18(v15, &unk_100840960, &qword_1006DBCB0);
LABEL_20:
    v138 = *(*(v0 + 1368) + 104);
    v138(*(v0 + 1376), enum case for DIPError.Code.parterSchemeIdentifierUnavailable(_:), *(v0 + 1360));
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    goto LABEL_12;
  }

  v140 = v6;
  v137 = v11;
  v35 = *(v15 + 32);
  v34 = *(v15 + 40);

  sub_100267A1C(v15, type metadata accessor for PendingActionContext);
  if (!v34)
  {

    goto LABEL_20;
  }

  v136 = v7;
  *(v0 + 1128) = v7;
  *(v0 + 1136) = v140;
  v135 = v12;
  *(v0 + 1144) = v12;
  *(v0 + 1152) = v137;
  v134 = v35;
  *(v0 + 1160) = v35;
  *(v0 + 1168) = v34;

  v36 = IdentityTarget.rawValue.getter();
  v37 = IdentityTarget.rawValue.getter();
  v38 = *(v0 + 1296);
  v39 = *(v0 + 1288);
  if (v36 == v37)
  {
    sub_100265210(*(v0 + 1288), *(v0 + 1296), 1, (v0 + 1128), *(v0 + 1312), *(v0 + 1320), (v0 + 248));
    v40 = *(v0 + 296);
    *(v0 + 600) = *(v0 + 280);
    *(v0 + 616) = v40;
    *(v0 + 632) = *(v0 + 312);
    v41 = *(v0 + 264);
    *(v0 + 568) = *(v0 + 248);
    *(v0 + 584) = v41;

    v42 = *(v0 + 256);
    if (v42 == 1)
    {

LABEL_37:
      v69 = *(v0 + 1376);
      v70 = *(v0 + 1368);
      v71 = *(v0 + 1360);
      v72 = *(v0 + 1296);
      v73 = *(v0 + 1288);
      v141 = 0;
      v142 = 0xE000000000000000;
      _StringGuts.grow(_:)(52);
      v74._countAndFlagsBits = 0xD000000000000032;
      v74._object = 0x8000000100707EF0;
      String.append(_:)(v74);
      v75._countAndFlagsBits = v73;
      v75._object = v72;
      String.append(_:)(v75);
      v138 = *(v70 + 104);
      v138(v69, enum case for DIPError.Code.proofingSessionDoesntExist(_:), v71);
      sub_1000402AC(_swiftEmptyArrayStorage);
      sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
      swift_allocError();
      goto LABEL_12;
    }

    v127 = (v0 + 568);
    v128 = *(v0 + 248);
    *(v0 + 648) = v128;
    *(v0 + 656) = v42;
    v53 = *(v0 + 280);
    *(v0 + 664) = *(v0 + 264);
    *(v0 + 680) = v53;
    v54 = *(v0 + 312);
    *(v0 + 696) = *(v0 + 296);
    *(v0 + 712) = v54;
    v55 = *(v0 + 672);
    *(v0 + 1488) = *(v0 + 696);
    *(v0 + 1496) = *(v0 + 704);
    v56 = *(v0 + 712);
    v133 = v42;
    v57 = *(v0 + 720);
    sub_10000BBC4(v0 + 648, v0 + 728, &qword_10083E3F0, &qword_1006DBD38);
    v130 = v56;
    v132 = v57;
    sub_10000BD94(v56, v57);

    if (v133)
    {
      sub_10000BBC4(v0 + 648, v0 + 808, &qword_10083E3F0, &qword_1006DBD38);
      sub_10000BD94(v56, v57);

      if (v55)
      {
        v126 = v0 + 248;
        v58 = *(v0 + 1328);

        v59 = *(v58 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_deviceInfo);
        v60 = sub_100592810();
        v129 = v0;
        if (v61 == 1)
        {
          sub_1005946FC();
        }

        else
        {
          sub_10003477C(v60, v61);
        }

        v76 = sub_100592810();
        v78 = v77;

        if (v78 < 2)
        {
          sub_10003477C(v76, v78);
          v76 = 0;
          v78 = 0xE000000000000000;
        }

        v79 = (v0 + 888);
        v80 = *(v0 + 1384);
        sub_10000BBC4(*(v0 + 1280), v80, &unk_100840960, &qword_1006DBCB0);
        v81 = v3(v80, 1, v2);
        v82 = *(v0 + 1384);
        if (v81 == 1)
        {

          sub_10000BE18(v82, &unk_100840960, &qword_1006DBCB0);
        }

        else
        {
          v83 = *(v82 + *(v2 + 80));

          sub_100267A1C(v82, type metadata accessor for PendingActionContext);
          if (v83)
          {
            if (*(v83 + 16))
            {
              v84 = sub_10003ADCC(v76, v78);
              v86 = v85;

              if (v86)
              {
                v87 = (*(v83 + 56) + 24 * v84);
                v89 = *v87;
                v88 = v87[1];
                v90 = v87[2];
                sub_10000B8B8(v88, v90);

                v125 = v89;
                v91 = v89;
LABEL_51:
                *(v129 + 1520) = v90;
                v92 = v88;
                *(v129 + 1512) = v88;
                v124 = v91;
                *(v129 + 1504) = v91;
                defaultLogger()();
                v93 = v127[3];
                v79[2] = v127[2];
                v79[3] = v93;
                v79[4] = v127[4];
                v94 = v127[1];
                *v79 = *v127;
                v79[1] = v94;
                sub_10000BBC4(v79, v129 + 968, &qword_10083E3F0, &qword_1006DBD38);
                v95 = Logger.logObject.getter();
                v96 = static os_log_type_t.debug.getter();
                if (os_log_type_enabled(v95, v96))
                {
                  v97 = swift_slowAlloc();
                  *v97 = 67109120;
                  *(v97 + 4) = v132 >> 60 != 15;
                  v98 = v126;
                  sub_10000BE18(v126, &qword_10083E3F8, &unk_1006DBD40);
                  _os_log_impl(&_mh_execute_header, v95, v96, "supplementalProvisioningData for phone exists ->%{BOOL}d", v97, 8u);
                }

                else
                {
                  v98 = v126;
                  sub_10000BE18(v126, &qword_10083E3F8, &unk_1006DBD40);
                }

                v99 = *(v129 + 1472);
                v100 = *(v129 + 1456);
                v101 = *(v129 + 1424);
                v102 = *(v129 + 1416);

                *(v129 + 1528) = (v101 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
                v99(v100, v102);
                if (v90 >> 60 == 15)
                {
                  v103 = 0;
                }

                else
                {
                  v103 = v92;
                }

                if (v90 >> 60 == 15)
                {
                  v104 = 0xF000000000000000;
                }

                else
                {
                  v104 = v90;
                }

                sub_10000BBC4(v98, v129 + 1048, &qword_10083E3F8, &unk_1006DBD40);
                sub_10026C2AC(v124, v92, v90);

                if (qword_100832C20 != -1)
                {
                  swift_once();
                }

                v105 = *(v129 + 1328);
                v106 = *(qword_100882228 + 16);
                *(v129 + 152) = sub_10001F8D4(0, &qword_10083E400, DCCredentialStore_ptr);
                *(v129 + 160) = &off_10080D7B0;
                *(v129 + 128) = v106;
                *(v129 + 16) = v128;
                *(v129 + 24) = v133;
                *(v129 + 32) = v136;
                *(v129 + 40) = v140;
                *(v129 + 48) = v134;
                *(v129 + 56) = v34;
                *(v129 + 64) = v135;
                *(v129 + 72) = v137;
                *(v129 + 80) = v125;
                *(v129 + 88) = 0;
                *(v129 + 96) = v103;
                *(v129 + 104) = v104;
                *(v129 + 112) = v130;
                *(v129 + 120) = v132;
                v107 = OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_paymentService;
                swift_beginAccess();
                sub_10000BBC4(v105 + v107, v129 + 1176, &unk_100833B60, &qword_1006BF9E0);
                *(v129 + 1240) = &type metadata for IdentityPhoneProvisioningProvider;
                *(v129 + 1248) = &off_10080C800;
                v108 = swift_allocObject();
                *(v129 + 1216) = v108;
                sub_10026C350(v129 + 16, v108 + 16);
                v109 = v129;
                if (*(v105 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_trigger) > 1u)
                {
                  if (*(v105 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_trigger) == 2)
                  {
                    v111 = 0x80000001006FA430;
                    v110 = 0xD000000000000010;
                  }

                  else
                  {
                    v110 = 0x6974634172657375;
                    v111 = 0xEA00000000006E6FLL;
                  }
                }

                else if (*(v105 + OBJC_IVAR____TtC8coreidvd34IdentityProofingPendingActionsFlow_trigger))
                {
                  v111 = 0xEA0000000000646ELL;
                  v110 = 0x756F72676B636162;
                }

                else
                {
                  v110 = 0x6E776F6E6B6E75;
                  v111 = 0xE700000000000000;
                }

                type metadata accessor for IdentityProvisioningManager();
                swift_allocObject();
                v112 = v106;
                *(v129 + 1536) = sub_1002EA490(v129 + 1176, v129 + 1216, v110, v111);
                defaultLogger()();

                v113 = Logger.logObject.getter();
                v114 = static os_log_type_t.default.getter();

                v115 = os_log_type_enabled(v113, v114);
                v116 = *(v129 + 1472);
                v117 = *(v129 + 1448);
                v118 = *(v129 + 1416);
                if (v115)
                {
                  v119 = *(v129 + 1296);
                  v120 = *(v129 + 1288);
                  v121 = swift_slowAlloc();
                  v122 = swift_slowAlloc();
                  v141 = v122;
                  *v121 = 136446210;
                  *(v121 + 4) = sub_100141FE4(v120, v119, &v141);
                  _os_log_impl(&_mh_execute_header, v113, v114, "IdentityProofingPendingActionsFlow - Trying to provision phone with proofingSessionID: %{public}s", v121, 0xCu);
                  sub_10000BB78(v122);
                  v109 = v129;
                }

                v116(v117, v118);
                v123 = swift_task_alloc();
                *(v109 + 1544) = v123;
                *v123 = v109;
                v123[1] = sub_10022B374;

                return sub_1002EA818();
              }
            }

            else
            {
            }
          }
        }

        v91 = 0;
        v88 = 0;
        v90 = 0xF000000000000000;
        v125 = 1;
        goto LABEL_51;
      }
    }

    else
    {
    }

    sub_10000BE18(v0 + 248, &qword_10083E3F8, &unk_1006DBD40);
    goto LABEL_37;
  }

  v43 = *(v0 + 1320);
  v44 = *(v0 + 1312);

  sub_100265210(v39, v38, 2, (v0 + 1128), v44, v43, (v0 + 168));

  v45 = *(v0 + 168);
  v46 = *(v0 + 176);
  *(v0 + 1576) = v46;
  if (v46 == 1)
  {
LABEL_34:
    v62 = *(v0 + 1376);
    v63 = *(v0 + 1368);
    v64 = *(v0 + 1360);
    v65 = *(v0 + 1296);
    v66 = *(v0 + 1288);
    v141 = 0;
    v142 = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    v67._countAndFlagsBits = 0xD000000000000032;
    v67._object = 0x8000000100707EB0;
    String.append(_:)(v67);
    v68._countAndFlagsBits = v66;
    v68._object = v65;
    String.append(_:)(v68);
    v138 = *(v63 + 104);
    v138(v62, enum case for DIPError.Code.proofingSessionDoesntExist(_:), v64);
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError, &protocol conformance descriptor for DIPError);
    swift_allocError();
    goto LABEL_12;
  }

  *(v0 + 328) = v45;
  *(v0 + 336) = v46;
  v47 = *(v0 + 200);
  *(v0 + 344) = *(v0 + 184);
  *(v0 + 360) = v47;
  v48 = *(v0 + 232);
  *(v0 + 376) = *(v0 + 216);
  *(v0 + 392) = v48;
  v49 = *(v0 + 352);
  v50 = *(v0 + 392);
  v51 = *(v0 + 400);
  sub_10000BBC4(v0 + 328, v0 + 408, &qword_10083E3F0, &qword_1006DBD38);
  sub_10000BD94(v50, v51);

  if (!v46)
  {
LABEL_33:
    sub_10000BE18(v0 + 168, &qword_10083E3F8, &unk_1006DBD40);
    goto LABEL_34;
  }

  sub_10000BBC4(v0 + 328, v0 + 488, &qword_10083E3F0, &qword_1006DBD38);
  sub_10000BD94(v50, v51);

  if (!v49)
  {

    goto LABEL_33;
  }

  *(v0 + 1584) = sub_1002F87D0();
  v52 = swift_task_alloc();
  *(v0 + 1592) = v52;
  *v52 = v0;
  v52[1] = sub_10022BA18;

  return sub_1002F5264(v45, v46);
}